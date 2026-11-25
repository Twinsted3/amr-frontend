TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).Start(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:50	0xe2eec0		493b6610		CMPQ SP, 0x10(R14)							
  taskservice.go:50	0xe2eec4		0f86a1000000		JBE 0xe2ef6b								
  taskservice.go:50	0xe2eeca		55			PUSHQ BP								
  taskservice.go:50	0xe2eecb		4889e5			MOVQ SP, BP								
  taskservice.go:50	0xe2eece		4883ec38		SUBQ $__major_os_version__+50(SB), SP					
  taskservice.go:57	0xe2eed2		4889442448		MOVQ AX, 0x48(SP)							
  taskservice.go:51	0xe2eed7		488b4850		MOVQ 0x50(AX), CX							
  taskservice.go:51	0xe2eedb		4889c8			MOVQ CX, AX								
  taskservice.go:51	0xe2eede		6690			NOPW									
  taskservice.go:51	0xe2eee0		e81b8f0000		CALL CAS-Backend/pkg/diapdu.SetGlobalDynamicTraffic(SB)			
  taskservice.go:53	0xe2eee5		488b442448		MOVQ 0x48(SP), AX							
  taskservice.go:53	0xe2eeea		e8f1000000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).loadPendingTasks(SB)	
  taskservice.go:55	0xe2eeef		488d05ca232800		LEAQ runtime.types+836288(SB), AX					
  taskservice.go:55	0xe2eef6		e8a5285eff		CALL runtime.newobject(SB)						
  taskservice.go:55	0xe2eefb		488d0d7e000000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).Start.gowrap1(SB), CX	
  taskservice.go:55	0xe2ef02		488908			MOVQ CX, 0(AX)								
  taskservice.go:55	0xe2ef05		833d44ec720200		CMPL runtime.writeBarrier(SB), $0x0					
  taskservice.go:55	0xe2ef0c		7507			JNE 0xe2ef15								
  taskservice.go:55	0xe2ef0e		488b4c2448		MOVQ 0x48(SP), CX							
  taskservice.go:55	0xe2ef13		eb0d			JMP 0xe2ef22								
  taskservice.go:55	0xe2ef15		e8069564ff		CALL runtime.gcWriteBarrier1(SB)					
  taskservice.go:55	0xe2ef1a		488b4c2448		MOVQ 0x48(SP), CX							
  taskservice.go:55	0xe2ef1f		49890b			MOVQ CX, 0(R11)								
  taskservice.go:55	0xe2ef22		48894808		MOVQ CX, 0x8(AX)							
  taskservice.go:55	0xe2ef26		e8158661ff		CALL runtime.newproc(SB)						
  taskservice.go:56	0xe2ef2b		488d0dee392100		LEAQ runtime.types+383264(SB), CX					
  taskservice.go:56	0xe2ef32		48894c2428		MOVQ CX, 0x28(SP)							
  taskservice.go:56	0xe2ef37		488d0d028f0302		LEAQ CAS-Backend/pkg/diapdu..stmp_22(SB), CX				
  taskservice.go:56	0xe2ef3e		48894c2430		MOVQ CX, 0x30(SP)							
  print.go:314		0xe2ef43		488b1d36316e02		MOVQ os.Stdout(SB), BX							
  print.go:314		0xe2ef4a		488d058fcb0302		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314		0xe2ef51		488d4c2428		LEAQ 0x28(SP), CX							
  print.go:314		0xe2ef56		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314		0xe2ef5b		4889fe			MOVQ DI, SI								
  print.go:314		0xe2ef5e		6690			NOPW									
  print.go:314		0xe2ef60		e8fb086fff		CALL fmt.Fprintln(SB)							
  taskservice.go:57	0xe2ef65		4883c438		ADDQ $__major_os_version__+50(SB), SP					
  taskservice.go:57	0xe2ef69		5d			POPQ BP									
  taskservice.go:57	0xe2ef6a		c3			RET									
  taskservice.go:50	0xe2ef6b		4889442408		MOVQ AX, 0x8(SP)							
  taskservice.go:50	0xe2ef70		e86b7564ff		CALL runtime.morestack_noctxt.abi0(SB)					
  taskservice.go:50	0xe2ef75		488b442408		MOVQ 0x8(SP), AX							
  taskservice.go:50	0xe2ef7a		e941ffffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).Start(SB)			
  :-1			0xe2ef7f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).Start.gowrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:55	0xe2ef80		493b6610		CMPQ SP, 0x10(R14)						
  taskservice.go:55	0xe2ef84		7625			JBE 0xe2efab							
  taskservice.go:55	0xe2ef86		55			PUSHQ BP							
  taskservice.go:55	0xe2ef87		4889e5			MOVQ SP, BP							
  taskservice.go:55	0xe2ef8a		4883ec08		SUBQ $__major_os_version__+2(SB), SP				
  taskservice.go:55	0xe2ef8e		4d8b6620		MOVQ 0x20(R14), R12						
  taskservice.go:55	0xe2ef92		4d85e4			TESTQ R12, R12							
  taskservice.go:55	0xe2ef95		751b			JNE 0xe2efb2							
  taskservice.go:55	0xe2ef97		488b4208		MOVQ 0x8(DX), AX						
  taskservice.go:55	0xe2ef9b		0f1f440000		NOPL 0(AX)(AX*1)						
  taskservice.go:55	0xe2efa0		e89b170000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).scheduleLoop(SB)	
  taskservice.go:55	0xe2efa5		4883c408		ADDQ $__major_os_version__+2(SB), SP				
  taskservice.go:55	0xe2efa9		5d			POPQ BP								
  taskservice.go:55	0xe2efaa		c3			RET								
  taskservice.go:55	0xe2efab		e8b07464ff		CALL runtime.morestack.abi0(SB)					
  taskservice.go:55	0xe2efb0		ebce			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).Start.gowrap1(SB)	
  taskservice.go:55	0xe2efb2		4c8d6c2418		LEAQ 0x18(SP), R13						
  taskservice.go:55	0xe2efb7		4d392c24		CMPQ 0(R12), R13						
  taskservice.go:55	0xe2efbb		75da			JNE 0xe2ef97							
  taskservice.go:55	0xe2efbd		49892424		MOVQ SP, 0(R12)							
  taskservice.go:55	0xe2efc1		ebd4			JMP 0xe2ef97							
  :-1			0xe2efc3		cc			INT $__subsystem__(SB)						
  :-1			0xe2efc4		cc			INT $__subsystem__(SB)						
  :-1			0xe2efc5		cc			INT $__subsystem__(SB)						
  :-1			0xe2efc6		cc			INT $__subsystem__(SB)						
  :-1			0xe2efc7		cc			INT $__subsystem__(SB)						
  :-1			0xe2efc8		cc			INT $__subsystem__(SB)						
  :-1			0xe2efc9		cc			INT $__subsystem__(SB)						
  :-1			0xe2efca		cc			INT $__subsystem__(SB)						
  :-1			0xe2efcb		cc			INT $__subsystem__(SB)						
  :-1			0xe2efcc		cc			INT $__subsystem__(SB)						
  :-1			0xe2efcd		cc			INT $__subsystem__(SB)						
  :-1			0xe2efce		cc			INT $__subsystem__(SB)						
  :-1			0xe2efcf		cc			INT $__subsystem__(SB)						
  :-1			0xe2efd0		cc			INT $__subsystem__(SB)						
  :-1			0xe2efd1		cc			INT $__subsystem__(SB)						
  :-1			0xe2efd2		cc			INT $__subsystem__(SB)						
  :-1			0xe2efd3		cc			INT $__subsystem__(SB)						
  :-1			0xe2efd4		cc			INT $__subsystem__(SB)						
  :-1			0xe2efd5		cc			INT $__subsystem__(SB)						
  :-1			0xe2efd6		cc			INT $__subsystem__(SB)						
  :-1			0xe2efd7		cc			INT $__subsystem__(SB)						
  :-1			0xe2efd8		cc			INT $__subsystem__(SB)						
  :-1			0xe2efd9		cc			INT $__subsystem__(SB)						
  :-1			0xe2efda		cc			INT $__subsystem__(SB)						
  :-1			0xe2efdb		cc			INT $__subsystem__(SB)						
  :-1			0xe2efdc		cc			INT $__subsystem__(SB)						
  :-1			0xe2efdd		cc			INT $__subsystem__(SB)						
  :-1			0xe2efde		cc			INT $__subsystem__(SB)						
  :-1			0xe2efdf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).loadPendingTasks(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:63	0xe2efe0		4c8da42400feffff	LEAQ 0xfffffe00(SP), R12							
  taskservice.go:63	0xe2efe8		4d3b6610		CMPQ R12, 0x10(R14)								
  taskservice.go:63	0xe2efec		0f86e8030000		JBE 0xe2f3da									
  taskservice.go:63	0xe2eff2		55			PUSHQ BP									
  taskservice.go:63	0xe2eff3		4889e5			MOVQ SP, BP									
  taskservice.go:63	0xe2eff6		4881ec78020000		SUBQ $__file_alignment__+120(SB), SP						
  taskservice.go:66	0xe2effd		4889842488020000	MOVQ AX, 0x288(SP)								
  taskservice.go:65	0xe2f005		e836aeb6ff		CALL CAS-Backend/biz/dao.GetAllTasks(SB)					
  taskservice.go:66	0xe2f00a		4885ff			TESTQ DI, DI									
  taskservice.go:66	0xe2f00d		0f85db000000		JNE 0xe2f0ee									
  taskservice.go:65	0xe2f013		4889842428020000	MOVQ AX, 0x228(SP)								
  taskservice.go:65	0xe2f01b		48899c2408010000	MOVQ BX, 0x108(SP)								
  taskservice.go:71	0xe2f023		440f11bc2440020000	MOVUPS X15, 0x240(SP)								
  taskservice.go:71	0xe2f02c		4889d8			MOVQ BX, AX									
  taskservice.go:71	0xe2f02f		e86cb063ff		CALL runtime.convT64(SB)							
  taskservice.go:71	0xe2f034		488d0d253b2100		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:71	0xe2f03b		48898c2440020000	MOVQ CX, 0x240(SP)								
  taskservice.go:71	0xe2f043		4889842448020000	MOVQ AX, 0x248(SP)								
  print.go:233		0xe2f04b		488b1d2e306e02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe2f052		488d0587ca0302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe2f059		bf23000000		MOVL $__major_os_version__+29(SB), DI						
  print.go:233		0xe2f05e		488db42440020000	LEAQ 0x240(SP), SI								
  print.go:233		0xe2f066		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe2f06c		4d89c1			MOVQ R8, R9									
  print.go:233		0xe2f06f		488d0d9c193600		LEAQ go:string.*+165130(SB), CX							
  print.go:233		0xe2f076		e8a5016fff		CALL fmt.Fprintf(SB)								
  diaodu.go:108		0xe2f07b		90			NOPL										
  type.go:17		0xe2f07c		8b0d7ee27202		MOVL CAS-Backend/pkg/diapdu.graphReady(SB), CX					
  type.go:17		0xe2f082		85c9			TESTL CX, CX									
  taskservice.go:79	0xe2f084		7436			JE 0xe2f0bc									
  taskservice.go:83	0xe2f086		e87548ffff		CALL CAS-Backend/pkg/diapdu.GetGraph(SB)					
  taskservice.go:84	0xe2f08b		4885c0			TESTQ AX, AX									
  taskservice.go:84	0xe2f08e		7423			JE 0xe2f0b3									
  taskservice.go:83	0xe2f090		4889842420020000	MOVQ AX, 0x220(SP)								
  taskservice.go:90	0xe2f098		488b8c2428020000	MOVQ 0x228(SP), CX								
  taskservice.go:90	0xe2f0a0		488b9c2408010000	MOVQ 0x108(SP), BX								
  taskservice.go:90	0xe2f0a8		31d2			XORL DX, DX									
  taskservice.go:90	0xe2f0aa		31f6			XORL SI, SI									
  taskservice.go:90	0xe2f0ac		31ff			XORL DI, DI									
  taskservice.go:90	0xe2f0ae		e9a3000000		JMP 0xe2f156									
  taskservice.go:85	0xe2f0b3		4881c478020000		ADDQ $__file_alignment__+120(SB), SP						
  taskservice.go:85	0xe2f0ba		5d			POPQ BP										
  taskservice.go:85	0xe2f0bb		c3			RET										
  print.go:233		0xe2f0bc		488b1dbd2f6e02		MOVQ os.Stdout(SB), BX								
  taskservice.go:80	0xe2f0c3		90			NOPL										
  print.go:233		0xe2f0c4		488d0515ca0302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe2f0cb		488d0d09d83600		LEAQ go:string.*+213971(SB), CX							
  print.go:233		0xe2f0d2		bf31000000		MOVL $__major_os_version__+43(SB), DI						
  print.go:233		0xe2f0d7		31f6			XORL SI, SI									
  print.go:233		0xe2f0d9		4531c0			XORL R8, R8									
  print.go:233		0xe2f0dc		4d89c1			MOVQ R8, R9									
  print.go:233		0xe2f0df		90			NOPL										
  print.go:233		0xe2f0e0		e83b016fff		CALL fmt.Fprintf(SB)								
  taskservice.go:81	0xe2f0e5		4881c478020000		ADDQ $__file_alignment__+120(SB), SP						
  taskservice.go:81	0xe2f0ec		5d			POPQ BP										
  taskservice.go:81	0xe2f0ed		c3			RET										
  taskservice.go:67	0xe2f0ee		440f11bc2450020000	MOVUPS X15, 0x250(SP)								
  taskservice.go:67	0xe2f0f7		7404			JE 0xe2f0fd									
  taskservice.go:67	0xe2f0f9		488b7f08		MOVQ 0x8(DI), DI								
  taskservice.go:67	0xe2f0fd		4889bc2450020000	MOVQ DI, 0x250(SP)								
  taskservice.go:67	0xe2f105		4889b42458020000	MOVQ SI, 0x258(SP)								
  print.go:233		0xe2f10d		488b1d6c2f6e02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe2f114		488d05c5c90302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe2f11b		488d0d98b23500		LEAQ go:string.*+138930(SB), CX							
  print.go:233		0xe2f122		bf1d000000		MOVL $__major_os_version__+23(SB), DI						
  print.go:233		0xe2f127		488db42450020000	LEAQ 0x250(SP), SI								
  print.go:233		0xe2f12f		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe2f135		4d89c1			MOVQ R8, R9									
  print.go:233		0xe2f138		e8e3006fff		CALL fmt.Fprintf(SB)								
  taskservice.go:68	0xe2f13d		4881c478020000		ADDQ $__file_alignment__+120(SB), SP						
  taskservice.go:68	0xe2f144		5d			POPQ BP										
  taskservice.go:68	0xe2f145		c3			RET										
  taskservice.go:90	0xe2f146		4881c1f0000000		ADDQ $.file+163(SB), CX								
  taskservice.go:90	0xe2f14d		48ffcb			DECQ BX										
  taskservice.go:95	0xe2f150		4c89ce			MOVQ R9, SI									
  taskservice.go:95	0xe2f153		4c89c7			MOVQ R8, DI									
  taskservice.go:95	0xe2f156		4889942400010000	MOVQ DX, 0x100(SP)								
  taskservice.go:95	0xe2f15e		4889bc24f8000000	MOVQ DI, 0xf8(SP)								
  taskservice.go:95	0xe2f166		4889b42410020000	MOVQ SI, 0x210(SP)								
  taskservice.go:90	0xe2f16e		4885db			TESTQ BX, BX									
  taskservice.go:90	0xe2f171		0f8e14010000		JLE 0xe2f28b									
  taskservice.go:90	0xe2f177		48899c2410010000	MOVQ BX, 0x110(SP)								
  taskservice.go:90	0xe2f17f		48898c2470020000	MOVQ CX, 0x270(SP)								
  taskservice.go:95	0xe2f187		4989f8			MOVQ DI, R8									
  taskservice.go:90	0xe2f18a		488dbc2420010000	LEAQ 0x120(SP), DI								
  taskservice.go:95	0xe2f192		4989f1			MOVQ SI, R9									
  taskservice.go:90	0xe2f195		4889ce			MOVQ CX, SI									
  taskservice.go:90	0xe2f198		0f1f840000000000	NOPL 0(AX)(AX*1)								
  taskservice.go:90	0xe2f1a0		48896c24f0		MOVQ BP, -0x10(SP)								
  taskservice.go:90	0xe2f1a5		488d6c24f0		LEAQ -0x10(SP), BP								
  taskservice.go:90	0xe2f1aa		e81f9c64ff		CALL 0x478dce									
  taskservice.go:90	0xe2f1af		488b6d00		MOVQ 0(BP), BP									
  taskservice.go:91	0xe2f1b3		4c8b942450010000	MOVQ 0x150(SP), R10								
  taskservice.go:91	0xe2f1bb		0f1f440000		NOPL 0(AX)(AX*1)								
  diaodu2.go:72		0xe2f1c0		4d85d2			TESTQ R10, R10									
  diaodu2.go:72		0xe2f1c3		740a			JE 0xe2f1cf									
  diaodu2.go:72		0xe2f1c5		4983fa01		CMPQ R10, $__minor_os_version__(SB)						
  taskservice.go:91	0xe2f1c9		0f8577ffffff		JNE 0xe2f146									
  taskservice.go:94	0xe2f1cf		4889e7			MOVQ SP, DI									
  taskservice.go:94	0xe2f1d2		488db42420010000	LEAQ 0x120(SP), SI								
  taskservice.go:94	0xe2f1da		660f1f440000		NOPW 0(AX)(AX*1)								
  taskservice.go:94	0xe2f1e0		48896c24f0		MOVQ BP, -0x10(SP)								
  taskservice.go:94	0xe2f1e5		488d6c24f0		LEAQ -0x10(SP), BP								
  taskservice.go:94	0xe2f1ea		e8df9b64ff		CALL 0x478dce									
  taskservice.go:94	0xe2f1ef		488b6d00		MOVQ 0(BP), BP									
  taskservice.go:94	0xe2f1f3		e888070000		CALL CAS-Backend/pkg/diapdu.convertDaoTaskToTask1(SB)				
  taskservice.go:95	0xe2f1f8		488b9c24f8000000	MOVQ 0xf8(SP), BX								
  taskservice.go:95	0xe2f200		48ffc3			INCQ BX										
  taskservice.go:95	0xe2f203		488b8c2400010000	MOVQ 0x100(SP), CX								
  taskservice.go:95	0xe2f20b		4839d9			CMPQ CX, BX									
  taskservice.go:95	0xe2f20e		720a			JB 0xe2f21a									
  taskservice.go:95	0xe2f210		488b942410020000	MOVQ 0x210(SP), DX								
  taskservice.go:95	0xe2f218		eb2c			JMP 0xe2f246									
  taskservice.go:94	0xe2f21a		4889842418010000	MOVQ AX, 0x118(SP)								
  taskservice.go:95	0xe2f222		488b842410020000	MOVQ 0x210(SP), AX								
  taskservice.go:95	0xe2f22a		bf01000000		MOVL $__minor_os_version__(SB), DI						
  taskservice.go:95	0xe2f22f		488d356a4e1f00		LEAQ runtime.types+258208(SB), SI						
  taskservice.go:95	0xe2f236		e8052a64ff		CALL runtime.growslice(SB)							
  taskservice.go:95	0xe2f23b		4889c2			MOVQ AX, DX									
  taskservice.go:95	0xe2f23e		488b842418010000	MOVQ 0x118(SP), AX								
  taskservice.go:95	0xe2f246		833d03e9720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:95	0xe2f24d		7411			JE 0xe2f260									
  taskservice.go:95	0xe2f24f		e8ec9164ff		CALL runtime.gcWriteBarrier2(SB)						
  taskservice.go:95	0xe2f254		498903			MOVQ AX, 0(R11)									
  taskservice.go:95	0xe2f257		4c8b44daf8		MOVQ -0x8(DX)(BX*8), R8								
  taskservice.go:95	0xe2f25c		4d894308		MOVQ R8, 0x8(R11)								
  taskservice.go:95	0xe2f260		488944daf8		MOVQ AX, -0x8(DX)(BX*8)								
  taskservice.go:94	0xe2f265		488b842420020000	MOVQ 0x220(SP), AX								
  taskservice.go:95	0xe2f26d		4989d8			MOVQ BX, R8									
  taskservice.go:95	0xe2f270		4989d1			MOVQ DX, R9									
  taskservice.go:90	0xe2f273		488b9c2410010000	MOVQ 0x110(SP), BX								
  taskservice.go:95	0xe2f27b		4889ca			MOVQ CX, DX									
  taskservice.go:90	0xe2f27e		488b8c2470020000	MOVQ 0x270(SP), CX								
  taskservice.go:95	0xe2f286		e9bbfeffff		JMP 0xe2f146									
  taskservice.go:98	0xe2f28b		440f11bc2430020000	MOVUPS X15, 0x230(SP)								
  taskservice.go:98	0xe2f294		4889f8			MOVQ DI, AX									
  taskservice.go:98	0xe2f297		e804ae63ff		CALL runtime.convT64(SB)							
  taskservice.go:98	0xe2f29c		488d0dbd382100		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:98	0xe2f2a3		48898c2430020000	MOVQ CX, 0x230(SP)								
  taskservice.go:98	0xe2f2ab		4889842438020000	MOVQ AX, 0x238(SP)								
  print.go:233		0xe2f2b3		488b1dc62d6e02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe2f2ba		488d051fc80302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe2f2c1		488d0de2f33600		LEAQ go:string.*+221602(SB), CX							
  print.go:233		0xe2f2c8		bf34000000		MOVL $__major_os_version__+46(SB), DI						
  print.go:233		0xe2f2cd		488db42430020000	LEAQ 0x230(SP), SI								
  print.go:233		0xe2f2d5		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe2f2db		4d89c1			MOVQ R8, R9									
  print.go:233		0xe2f2de		6690			NOPW										
  print.go:233		0xe2f2e0		e83bff6eff		CALL fmt.Fprintf(SB)								
  taskservice.go:100	0xe2f2e5		488b8c2488020000	MOVQ 0x288(SP), CX								
  taskservice.go:100	0xe2f2ed		488d5120		LEAQ 0x20(CX), DX								
  taskservice.go:100	0xe2f2f1		4889942418020000	MOVQ DX, 0x218(SP)								
  taskservice.go:100	0xe2f2f9		31c0			XORL AX, AX									
  taskservice.go:100	0xe2f2fb		bb01000000		MOVL $__minor_os_version__(SB), BX						
  taskservice.go:100	0xe2f300		f00fb15920		LOCK CMPXCHGL BX, 0x20(CX)							
  taskservice.go:100	0xe2f305		0f94c3			SETE BL										
  mutex.go:85		0xe2f308		84db			TESTL BL, BL									
  mutex.go:85		0xe2f30a		7518			JNE 0xe2f324									
  mutex.go:92		0xe2f30c		4889d0			MOVQ DX, AX									
  mutex.go:92		0xe2f30f		e80c8765ff		CALL sync.(*Mutex).lockSlow(SB)							
  taskservice.go:101	0xe2f314		488b8c2488020000	MOVQ 0x288(SP), CX								
  mutex.go:225		0xe2f31c		488b942418020000	MOVQ 0x218(SP), DX								
  taskservice.go:101	0xe2f324		488b9c24f8000000	MOVQ 0xf8(SP), BX								
  taskservice.go:101	0xe2f32c		48895910		MOVQ BX, 0x10(CX)								
  taskservice.go:101	0xe2f330		488bb42400010000	MOVQ 0x100(SP), SI								
  taskservice.go:101	0xe2f338		48897118		MOVQ SI, 0x18(CX)								
  taskservice.go:101	0xe2f33c		833d0de8720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:101	0xe2f343		750a			JNE 0xe2f34f									
  taskservice.go:101	0xe2f345		488b842410020000	MOVQ 0x210(SP), AX								
  taskservice.go:101	0xe2f34d		eb18			JMP 0xe2f367									
  taskservice.go:101	0xe2f34f		e8ec9064ff		CALL runtime.gcWriteBarrier2(SB)						
  taskservice.go:101	0xe2f354		488b842410020000	MOVQ 0x210(SP), AX								
  taskservice.go:101	0xe2f35c		498903			MOVQ AX, 0(R11)									
  taskservice.go:101	0xe2f35f		488b7908		MOVQ 0x8(CX), DI								
  taskservice.go:101	0xe2f363		49897b08		MOVQ DI, 0x8(R11)								
  taskservice.go:101	0xe2f367		48894108		MOVQ AX, 0x8(CX)								
  taskservice.go:103	0xe2f36b		4889f1			MOVQ SI, CX									
  taskservice.go:103	0xe2f36e		e84dae63ff		CALL runtime.convTslice(SB)							
  taskservice.go:103	0xe2f373		488d1586000000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).loadPendingTasks.func1(SB), DX	
  taskservice.go:103	0xe2f37a		4889942460020000	MOVQ DX, 0x260(SP)								
  taskservice.go:103	0xe2f382		488b942488020000	MOVQ 0x288(SP), DX								
  taskservice.go:103	0xe2f38a		4889942468020000	MOVQ DX, 0x268(SP)								
  taskservice.go:103	0xe2f392		4889c3			MOVQ AX, BX									
  taskservice.go:103	0xe2f395		488d8c2460020000	LEAQ 0x260(SP), CX								
  taskservice.go:103	0xe2f39d		488d057c5c2000		LEAQ runtime.types+327712(SB), AX						
  taskservice.go:103	0xe2f3a4		e8372570ff		CALL sort.Slice(SB)								
  taskservice.go:106	0xe2f3a9		90			NOPL										
  mutex.go:221		0xe2f3aa		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221		0xe2f3af		488b942488020000	MOVQ 0x288(SP), DX								
  mutex.go:221		0xe2f3b7		f00fc15a20		LOCK XADDL BX, 0x20(DX)								
  mutex.go:221		0xe2f3bc		ffcb			DECL BX										
  mutex.go:221		0xe2f3be		6690			NOPW										
  mutex.go:222		0xe2f3c0		85db			TESTL BX, BX									
  mutex.go:222		0xe2f3c2		740d			JE 0xe2f3d1									
  mutex.go:225		0xe2f3c4		488b842418020000	MOVQ 0x218(SP), AX								
  mutex.go:225		0xe2f3cc		e82f8965ff		CALL sync.(*Mutex).unlockSlow(SB)						
  taskservice.go:107	0xe2f3d1		4881c478020000		ADDQ $__file_alignment__+120(SB), SP						
  taskservice.go:107	0xe2f3d8		5d			POPQ BP										
  taskservice.go:107	0xe2f3d9		c3			RET										
  taskservice.go:63	0xe2f3da		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:63	0xe2f3df		90			NOPL										
  taskservice.go:63	0xe2f3e0		e8fb7064ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:63	0xe2f3e5		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:63	0xe2f3ea		e9f1fbffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).loadPendingTasks(SB)		
  :-1			0xe2f3ef		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3f0		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3f1		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3f2		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3f3		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3f4		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3f5		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3f6		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3f7		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3f8		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3f9		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3fa		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3fb		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3fc		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3fd		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3fe		cc			INT $__subsystem__(SB)								
  :-1			0xe2f3ff		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).loadPendingTasks.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:103	0xe2f400		55			PUSHQ BP				
  taskservice.go:103	0xe2f401		4889e5			MOVQ SP, BP				
  taskservice.go:103	0xe2f404		4883ec10		SUBQ $__major_os_version__+10(SB), SP	
  taskservice.go:103	0xe2f408		488b5208		MOVQ 0x8(DX), DX			
  taskservice.go:104	0xe2f40c		488b4a10		MOVQ 0x10(DX), CX			
  taskservice.go:104	0xe2f410		4839c8			CMPQ AX, CX				
  taskservice.go:104	0xe2f413		7330			JAE 0xe2f445				
  taskservice.go:104	0xe2f415		488b5208		MOVQ 0x8(DX), DX			
  taskservice.go:104	0xe2f419		488b34c2		MOVQ 0(DX)(AX*8), SI			
  taskservice.go:104	0xe2f41d		0f1f00			NOPL 0(AX)				
  taskservice.go:104	0xe2f420		4839cb			CMPQ BX, CX				
  taskservice.go:104	0xe2f423		7315			JAE 0xe2f43a				
  taskservice.go:104	0xe2f425		488b4e18		MOVQ 0x18(SI), CX			
  taskservice.go:104	0xe2f429		488b14da		MOVQ 0(DX)(BX*8), DX			
  taskservice.go:104	0xe2f42d		48394a18		CMPQ 0x18(DX), CX			
  taskservice.go:104	0xe2f431		0f9cc0			SETL AL					
  taskservice.go:104	0xe2f434		4883c410		ADDQ $__major_os_version__+10(SB), SP	
  taskservice.go:104	0xe2f438		5d			POPQ BP					
  taskservice.go:104	0xe2f439		c3			RET					
  taskservice.go:104	0xe2f43a		4889d8			MOVQ BX, AX				
  taskservice.go:104	0xe2f43d		0f1f00			NOPL 0(AX)				
  taskservice.go:104	0xe2f440		e89b9364ff		CALL runtime.panicIndex(SB)		
  taskservice.go:104	0xe2f445		e8969364ff		CALL runtime.panicIndex(SB)		
  taskservice.go:104	0xe2f44a		90			NOPL					
  :-1			0xe2f44b		cc			INT $__subsystem__(SB)			
  :-1			0xe2f44c		cc			INT $__subsystem__(SB)			
  :-1			0xe2f44d		cc			INT $__subsystem__(SB)			
  :-1			0xe2f44e		cc			INT $__subsystem__(SB)			
  :-1			0xe2f44f		cc			INT $__subsystem__(SB)			
  :-1			0xe2f450		cc			INT $__subsystem__(SB)			
  :-1			0xe2f451		cc			INT $__subsystem__(SB)			
  :-1			0xe2f452		cc			INT $__subsystem__(SB)			
  :-1			0xe2f453		cc			INT $__subsystem__(SB)			
  :-1			0xe2f454		cc			INT $__subsystem__(SB)			
  :-1			0xe2f455		cc			INT $__subsystem__(SB)			
  :-1			0xe2f456		cc			INT $__subsystem__(SB)			
  :-1			0xe2f457		cc			INT $__subsystem__(SB)			
  :-1			0xe2f458		cc			INT $__subsystem__(SB)			
  :-1			0xe2f459		cc			INT $__subsystem__(SB)			
  :-1			0xe2f45a		cc			INT $__subsystem__(SB)			
  :-1			0xe2f45b		cc			INT $__subsystem__(SB)			
  :-1			0xe2f45c		cc			INT $__subsystem__(SB)			
  :-1			0xe2f45d		cc			INT $__subsystem__(SB)			
  :-1			0xe2f45e		cc			INT $__subsystem__(SB)			
  :-1			0xe2f45f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:118	0xe2f460		4c8d6424d8		LEAQ -0x28(SP), R12								
  taskservice.go:118	0xe2f465		4d3b6610		CMPQ R12, 0x10(R14)								
  taskservice.go:118	0xe2f469		0f8665020000		JBE 0xe2f6d4									
  taskservice.go:118	0xe2f46f		55			PUSHQ BP									
  taskservice.go:118	0xe2f470		4889e5			MOVQ SP, BP									
  taskservice.go:118	0xe2f473		4881eca0000000		SUBQ $.file+83(SB), SP								
  taskservice.go:118	0xe2f47a		66440fd6bc2498000000	MOVQ X15, 0x98(SP)								
  taskservice.go:118	0xe2f484		c644244700		MOVB $0x0, 0x47(SP)								
  taskservice.go:119	0xe2f489		4885db			TESTQ BX, BX									
  taskservice.go:119	0xe2f48c		0f848a000000		JE 0xe2f51c									
  taskservice.go:119	0xe2f492		48898424b0000000	MOVQ AX, 0xb0(SP)								
  taskservice.go:119	0xe2f49a		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  taskservice.go:122	0xe2f4a2		4c8d4020		LEAQ 0x20(AX), R8								
  taskservice.go:119	0xe2f4a6		4889c1			MOVQ AX, CX									
  taskservice.go:122	0xe2f4a9		31c0			XORL AX, AX									
  taskservice.go:122	0xe2f4ab		41b901000000		MOVL $__minor_os_version__(SB), R9						
  taskservice.go:122	0xe2f4b1		f0440fb14920		LOCK CMPXCHGL R9, 0x20(CX)							
  taskservice.go:122	0xe2f4b7		410f94c1		SETE R9										
  taskservice.go:122	0xe2f4bb		0f1f440000		NOPL 0(AX)(AX*1)								
  mutex.go:85		0xe2f4c0		4584c9			TESTL R9, R9									
  mutex.go:85		0xe2f4c3		7522			JNE 0xe2f4e7									
  taskservice.go:122	0xe2f4c5		4c89442450		MOVQ R8, 0x50(SP)								
  mutex.go:92		0xe2f4ca		4c89c0			MOVQ R8, AX									
  mutex.go:92		0xe2f4cd		e84e8565ff		CALL sync.(*Mutex).lockSlow(SB)							
  taskservice.go:124	0xe2f4d2		488b8c24b0000000	MOVQ 0xb0(SP), CX								
  taskservice.go:124	0xe2f4da		488b9c24b8000000	MOVQ 0xb8(SP), BX								
  taskservice.go:123	0xe2f4e2		4c8b442450		MOVQ 0x50(SP), R8								
  taskservice.go:123	0xe2f4e7		4c8d0d72020000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask.deferwrap1(SB), R9	
  taskservice.go:123	0xe2f4ee		4c894c2478		MOVQ R9, 0x78(SP)								
  taskservice.go:123	0xe2f4f3		4c89842480000000	MOVQ R8, 0x80(SP)								
  taskservice.go:123	0xe2f4fb		4c8d442478		LEAQ 0x78(SP), R8								
  taskservice.go:123	0xe2f500		4c89842498000000	MOVQ R8, 0x98(SP)								
  taskservice.go:123	0xe2f508		c644244701		MOVB $__minor_os_version__(SB), 0x47(SP)					
  taskservice.go:124	0xe2f50d		488b4108		MOVQ 0x8(CX), AX								
  taskservice.go:124	0xe2f511		4c8b4110		MOVQ 0x10(CX), R8								
  taskservice.go:124	0xe2f515		4c8b0b			MOVQ 0(BX), R9									
  taskservice.go:124	0xe2f518		31d2			XORL DX, DX									
  taskservice.go:110	0xe2f51a		eb0c			JMP 0xe2f528									
  taskservice.go:120	0xe2f51c		4881c4a0000000		ADDQ $.file+83(SB), SP								
  taskservice.go:120	0xe2f523		5d			POPQ BP										
  taskservice.go:120	0xe2f524		c3			RET										
  taskservice.go:110	0xe2f525		48ffc2			INCQ DX										
  taskservice.go:110	0xe2f528		4c39c2			CMPQ DX, R8									
  taskservice.go:110	0xe2f52b		7d29			JGE 0xe2f556									
  taskservice.go:110	0xe2f52d		4c8b14d0		MOVQ 0(AX)(DX*8), R10								
  taskservice.go:111	0xe2f531		4d85d2			TESTQ R10, R10									
  taskservice.go:111	0xe2f534		74ef			JE 0xe2f525									
  taskservice.go:111	0xe2f536		4d390a			CMPQ 0(R10), R9									
  taskservice.go:111	0xe2f539		75ea			JNE 0xe2f525									
  taskservice.go:125	0xe2f53b		c644244700		MOVB $0x0, 0x47(SP)								
  taskservice.go:125	0xe2f540		488b942498000000	MOVQ 0x98(SP), DX								
  taskservice.go:125	0xe2f548		488b02			MOVQ 0(DX), AX									
  taskservice.go:125	0xe2f54b		ffd0			CALL AX										
  taskservice.go:125	0xe2f54d		4881c4a0000000		ADDQ $.file+83(SB), SP								
  taskservice.go:125	0xe2f554		5d			POPQ BP										
  taskservice.go:125	0xe2f555		c3			RET										
  taskservice.go:124	0xe2f556		488b5118		MOVQ 0x18(CX), DX								
  taskservice.go:127	0xe2f55a		49ffc0			INCQ R8										
  taskservice.go:127	0xe2f55d		0f1f00			NOPL 0(AX)									
  taskservice.go:127	0xe2f560		4c39c2			CMPQ DX, R8									
  taskservice.go:127	0xe2f563		734e			JAE 0xe2f5b3									
  taskservice.go:127	0xe2f565		4c89c3			MOVQ R8, BX									
  taskservice.go:127	0xe2f568		4889d1			MOVQ DX, CX									
  taskservice.go:127	0xe2f56b		bf01000000		MOVL $__minor_os_version__(SB), DI						
  taskservice.go:127	0xe2f570		488d35294b1f00		LEAQ runtime.types+258208(SB), SI						
  taskservice.go:127	0xe2f577		e8c42664ff		CALL runtime.growslice(SB)							
  taskservice.go:127	0xe2f57c		488b9424b0000000	MOVQ 0xb0(SP), DX								
  taskservice.go:127	0xe2f584		48894a18		MOVQ CX, 0x18(DX)								
  taskservice.go:127	0xe2f588		833dc1e5720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:127	0xe2f58f		7410			JE 0xe2f5a1									
  taskservice.go:127	0xe2f591		e8aa8e64ff		CALL runtime.gcWriteBarrier2(SB)						
  taskservice.go:127	0xe2f596		498903			MOVQ AX, 0(R11)									
  taskservice.go:127	0xe2f599		488b7208		MOVQ 0x8(DX), SI								
  taskservice.go:127	0xe2f59d		49897308		MOVQ SI, 0x8(R11)								
  taskservice.go:127	0xe2f5a1		48894208		MOVQ AX, 0x8(DX)								
  taskservice.go:127	0xe2f5a5		4889d1			MOVQ DX, CX									
  taskservice.go:127	0xe2f5a8		4989d8			MOVQ BX, R8									
  taskservice.go:127	0xe2f5ab		488b9c24b8000000	MOVQ 0xb8(SP), BX								
  taskservice.go:127	0xe2f5b3		4c894110		MOVQ R8, 0x10(CX)								
  taskservice.go:127	0xe2f5b7		833d92e5720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:127	0xe2f5be		6690			NOPW										
  taskservice.go:127	0xe2f5c0		7411			JE 0xe2f5d3									
  taskservice.go:127	0xe2f5c2		e8798e64ff		CALL runtime.gcWriteBarrier2(SB)						
  taskservice.go:127	0xe2f5c7		49891b			MOVQ BX, 0(R11)									
  taskservice.go:127	0xe2f5ca		4a8b54c0f8		MOVQ -0x8(AX)(R8*8), DX								
  taskservice.go:127	0xe2f5cf		49895308		MOVQ DX, 0x8(R11)								
  taskservice.go:127	0xe2f5d3		4a895cc0f8		MOVQ BX, -0x8(AX)(R8*8)								
  taskservice.go:128	0xe2f5d8		488b4108		MOVQ 0x8(CX), AX								
  taskservice.go:128	0xe2f5dc		488b5110		MOVQ 0x10(CX), DX								
  taskservice.go:128	0xe2f5e0		488b7118		MOVQ 0x18(CX), SI								
  taskservice.go:128	0xe2f5e4		4889d3			MOVQ DX, BX									
  taskservice.go:128	0xe2f5e7		4889f1			MOVQ SI, CX									
  taskservice.go:128	0xe2f5ea		e8d1ab63ff		CALL runtime.convTslice(SB)							
  taskservice.go:128	0xe2f5ef		488d150a010000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask.func1(SB), DX		
  taskservice.go:128	0xe2f5f6		4889942488000000	MOVQ DX, 0x88(SP)								
  taskservice.go:128	0xe2f5fe		488b9424b0000000	MOVQ 0xb0(SP), DX								
  taskservice.go:128	0xe2f606		4889942490000000	MOVQ DX, 0x90(SP)								
  taskservice.go:128	0xe2f60e		4889c3			MOVQ AX, BX									
  taskservice.go:128	0xe2f611		488d8c2488000000	LEAQ 0x88(SP), CX								
  taskservice.go:128	0xe2f619		488d05005a2000		LEAQ runtime.types+327712(SB), AX						
  taskservice.go:128	0xe2f620		e8bb2270ff		CALL sort.Slice(SB)								
  taskservice.go:131	0xe2f625		488b9424b0000000	MOVQ 0xb0(SP), DX								
  taskservice.go:131	0xe2f62d		488b5210		MOVQ 0x10(DX), DX								
  taskservice.go:131	0xe2f631		4889542448		MOVQ DX, 0x48(SP)								
  taskservice.go:131	0xe2f636		440f117c2458		MOVUPS X15, 0x58(SP)								
  taskservice.go:131	0xe2f63c		440f117c2468		MOVUPS X15, 0x68(SP)								
  taskservice.go:131	0xe2f642		488bb424b8000000	MOVQ 0xb8(SP), SI								
  taskservice.go:131	0xe2f64a		488b06			MOVQ 0(SI), AX									
  taskservice.go:131	0xe2f64d		e84eaa63ff		CALL runtime.convT64(SB)							
  taskservice.go:131	0xe2f652		488d1507352100		LEAQ runtime.types+383840(SB), DX						
  taskservice.go:131	0xe2f659		4889542458		MOVQ DX, 0x58(SP)								
  taskservice.go:131	0xe2f65e		4889442460		MOVQ AX, 0x60(SP)								
  taskservice.go:131	0xe2f663		488b442448		MOVQ 0x48(SP), AX								
  taskservice.go:131	0xe2f668		e833aa63ff		CALL runtime.convT64(SB)							
  taskservice.go:131	0xe2f66d		488d15ec342100		LEAQ runtime.types+383840(SB), DX						
  taskservice.go:131	0xe2f674		4889542468		MOVQ DX, 0x68(SP)								
  taskservice.go:131	0xe2f679		4889442470		MOVQ AX, 0x70(SP)								
  print.go:233		0xe2f67e		488b1dfb296e02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe2f685		488d0554c40302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe2f68c		488d0dc2793700		LEAQ go:string.*+256845(SB), CX							
  print.go:233		0xe2f693		bf47000000		MOVL $__major_os_version__+65(SB), DI						
  print.go:233		0xe2f698		488d742458		LEAQ 0x58(SP), SI								
  print.go:233		0xe2f69d		41b802000000		MOVL $__minor_os_version__+1(SB), R8						
  print.go:233		0xe2f6a3		4d89c1			MOVQ R8, R9									
  print.go:233		0xe2f6a6		e875fb6eff		CALL fmt.Fprintf(SB)								
  taskservice.go:132	0xe2f6ab		c644244700		MOVB $0x0, 0x47(SP)								
  taskservice.go:132	0xe2f6b0		488b942498000000	MOVQ 0x98(SP), DX								
  taskservice.go:132	0xe2f6b8		488b32			MOVQ 0(DX), SI									
  taskservice.go:132	0xe2f6bb		ffd6			CALL SI										
  taskservice.go:132	0xe2f6bd		4881c4a0000000		ADDQ $.file+83(SB), SP								
  taskservice.go:132	0xe2f6c4		5d			POPQ BP										
  taskservice.go:132	0xe2f6c5		c3			RET										
  taskservice.go:132	0xe2f6c6		e8b5a460ff		CALL runtime.deferreturn(SB)							
  taskservice.go:132	0xe2f6cb		4881c4a0000000		ADDQ $.file+83(SB), SP								
  taskservice.go:132	0xe2f6d2		5d			POPQ BP										
  taskservice.go:132	0xe2f6d3		c3			RET										
  taskservice.go:118	0xe2f6d4		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:118	0xe2f6d9		48895c2410		MOVQ BX, 0x10(SP)								
  taskservice.go:118	0xe2f6de		6690			NOPW										
  taskservice.go:118	0xe2f6e0		e8fb6d64ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:118	0xe2f6e5		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:118	0xe2f6ea		488b5c2410		MOVQ 0x10(SP), BX								
  taskservice.go:118	0xe2f6ef		e96cfdffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask(SB)			
  :-1			0xe2f6f4		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6f5		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6f6		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6f7		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6f8		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6f9		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6fa		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6fb		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6fc		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6fd		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6fe		cc			INT $__subsystem__(SB)								
  :-1			0xe2f6ff		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:128	0xe2f700		55			PUSHQ BP				
  taskservice.go:128	0xe2f701		4889e5			MOVQ SP, BP				
  taskservice.go:128	0xe2f704		4883ec10		SUBQ $__major_os_version__+10(SB), SP	
  taskservice.go:128	0xe2f708		488b5208		MOVQ 0x8(DX), DX			
  taskservice.go:129	0xe2f70c		488b4a10		MOVQ 0x10(DX), CX			
  taskservice.go:129	0xe2f710		4839c8			CMPQ AX, CX				
  taskservice.go:129	0xe2f713		7330			JAE 0xe2f745				
  taskservice.go:129	0xe2f715		488b5208		MOVQ 0x8(DX), DX			
  taskservice.go:129	0xe2f719		488b34c2		MOVQ 0(DX)(AX*8), SI			
  taskservice.go:129	0xe2f71d		0f1f00			NOPL 0(AX)				
  taskservice.go:129	0xe2f720		4839cb			CMPQ BX, CX				
  taskservice.go:129	0xe2f723		7315			JAE 0xe2f73a				
  taskservice.go:129	0xe2f725		488b4e18		MOVQ 0x18(SI), CX			
  taskservice.go:129	0xe2f729		488b14da		MOVQ 0(DX)(BX*8), DX			
  taskservice.go:129	0xe2f72d		48394a18		CMPQ 0x18(DX), CX			
  taskservice.go:129	0xe2f731		0f9cc0			SETL AL					
  taskservice.go:129	0xe2f734		4883c410		ADDQ $__major_os_version__+10(SB), SP	
  taskservice.go:129	0xe2f738		5d			POPQ BP					
  taskservice.go:129	0xe2f739		c3			RET					
  taskservice.go:129	0xe2f73a		4889d8			MOVQ BX, AX				
  taskservice.go:129	0xe2f73d		0f1f00			NOPL 0(AX)				
  taskservice.go:129	0xe2f740		e89b9064ff		CALL runtime.panicIndex(SB)		
  taskservice.go:129	0xe2f745		e8969064ff		CALL runtime.panicIndex(SB)		
  taskservice.go:129	0xe2f74a		90			NOPL					
  :-1			0xe2f74b		cc			INT $__subsystem__(SB)			
  :-1			0xe2f74c		cc			INT $__subsystem__(SB)			
  :-1			0xe2f74d		cc			INT $__subsystem__(SB)			
  :-1			0xe2f74e		cc			INT $__subsystem__(SB)			
  :-1			0xe2f74f		cc			INT $__subsystem__(SB)			
  :-1			0xe2f750		cc			INT $__subsystem__(SB)			
  :-1			0xe2f751		cc			INT $__subsystem__(SB)			
  :-1			0xe2f752		cc			INT $__subsystem__(SB)			
  :-1			0xe2f753		cc			INT $__subsystem__(SB)			
  :-1			0xe2f754		cc			INT $__subsystem__(SB)			
  :-1			0xe2f755		cc			INT $__subsystem__(SB)			
  :-1			0xe2f756		cc			INT $__subsystem__(SB)			
  :-1			0xe2f757		cc			INT $__subsystem__(SB)			
  :-1			0xe2f758		cc			INT $__subsystem__(SB)			
  :-1			0xe2f759		cc			INT $__subsystem__(SB)			
  :-1			0xe2f75a		cc			INT $__subsystem__(SB)			
  :-1			0xe2f75b		cc			INT $__subsystem__(SB)			
  :-1			0xe2f75c		cc			INT $__subsystem__(SB)			
  :-1			0xe2f75d		cc			INT $__subsystem__(SB)			
  :-1			0xe2f75e		cc			INT $__subsystem__(SB)			
  :-1			0xe2f75f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:123	0xe2f760		493b6610		CMPQ SP, 0x10(R14)							
  taskservice.go:123	0xe2f764		762f			JBE 0xe2f795								
  taskservice.go:123	0xe2f766		55			PUSHQ BP								
  taskservice.go:123	0xe2f767		4889e5			MOVQ SP, BP								
  taskservice.go:123	0xe2f76a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  taskservice.go:123	0xe2f76e		4d8b6620		MOVQ 0x20(R14), R12							
  taskservice.go:123	0xe2f772		4d85e4			TESTQ R12, R12								
  taskservice.go:123	0xe2f775		7525			JNE 0xe2f79c								
  taskservice.go:123	0xe2f777		488b4208		MOVQ 0x8(DX), AX							
  mutex.go:221		0xe2f77b		bbffffffff		MOVL $-0x1, BX								
  mutex.go:221		0xe2f780		f00fc118		LOCK XADDL BX, 0(AX)							
  mutex.go:221		0xe2f784		ffcb			DECL BX									
  mutex.go:222		0xe2f786		85db			TESTL BX, BX								
  mutex.go:222		0xe2f788		7405			JE 0xe2f78f								
  mutex.go:225		0xe2f78a		e8718565ff		CALL sync.(*Mutex).unlockSlow(SB)					
  taskservice.go:123	0xe2f78f		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  taskservice.go:123	0xe2f793		5d			POPQ BP									
  taskservice.go:123	0xe2f794		c3			RET									
  taskservice.go:123	0xe2f795		e8c66c64ff		CALL runtime.morestack.abi0(SB)						
  taskservice.go:123	0xe2f79a		ebc4			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask.deferwrap1(SB)	
  taskservice.go:123	0xe2f79c		4c8d6c2420		LEAQ 0x20(SP), R13							
  taskservice.go:123	0xe2f7a1		4d392c24		CMPQ 0(R12), R13							
  taskservice.go:123	0xe2f7a5		75d0			JNE 0xe2f777								
  taskservice.go:123	0xe2f7a7		49892424		MOVQ SP, 0(R12)								
  taskservice.go:123	0xe2f7ab		ebca			JMP 0xe2f777								
  :-1			0xe2f7ad		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7ae		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7af		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7b0		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7b1		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7b2		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7b3		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7b4		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7b5		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7b6		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7b7		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7b8		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7b9		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7ba		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7bb		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7bc		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7bd		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7be		cc			INT $__subsystem__(SB)							
  :-1			0xe2f7bf		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.EnqueuePendingTask(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:135	0xe2f7c0		4c8da42460ffffff	LEAQ 0xffffff60(SP), R12					
  taskservice.go:135	0xe2f7c8		4d3b6610		CMPQ R12, 0x10(R14)						
  taskservice.go:135	0xe2f7cc		0f869b010000		JBE 0xe2f96d							
  taskservice.go:135	0xe2f7d2		55			PUSHQ BP							
  taskservice.go:135	0xe2f7d3		4889e5			MOVQ SP, BP							
  taskservice.go:135	0xe2f7d6		4881ec18010000		SUBQ $.file+203(SB), SP						
  taskservice.go:136	0xe2f7dd		488b8c2458010000	MOVQ 0x158(SP), CX						
  diaodu2.go:72		0xe2f7e5		4885c9			TESTQ CX, CX							
  diaodu2.go:72		0xe2f7e8		740a			JE 0xe2f7f4							
  diaodu2.go:72		0xe2f7ea		4883f901		CMPQ CX, $__minor_os_version__(SB)				
  taskservice.go:136	0xe2f7ee		0f856e010000		JNE 0xe2f962							
  taskservice.go:139	0xe2f7f4		90			NOPL								
  mutex.go:85		0xe2f7f5		31c0			XORL AX, AX							
  mutex.go:85		0xe2f7f7		488d0dc2db7202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), CX		
  mutex.go:85		0xe2f7fe		ba01000000		MOVL $__minor_os_version__(SB), DX				
  mutex.go:85		0xe2f803		f00fb111		LOCK CMPXCHGL DX, 0(CX)						
  mutex.go:85		0xe2f807		0f94c2			SETE DL								
  mutex.go:85		0xe2f80a		84d2			TESTL DL, DL							
  mutex.go:85		0xe2f80c		7513			JNE 0xe2f821							
  mutex.go:92		0xe2f80e		488d05abdb7202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), AX		
  mutex.go:92		0xe2f815		e8068265ff		CALL sync.(*Mutex).lockSlow(SB)					
  mutex.go:85		0xe2f81a		488d0d9fdb7202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), CX		
  taskservice.go:140	0xe2f821		488b1530286e02		MOVQ CAS-Backend/pkg/diapdu.globalTaskScheduler(SB), DX		
  taskservice.go:140	0xe2f828		4889942400010000	MOVQ DX, 0x100(SP)						
  taskservice.go:142	0xe2f830		90			NOPL								
  taskservice.go:141	0xe2f831		0fb63570da7202		MOVZX CAS-Backend/pkg/diapdu.autoScheduleRunning(SB), SI	
  taskservice.go:141	0xe2f838		4084f6			TESTL SI, SI							
  mutex.go:221		0xe2f83b		bbffffffff		MOVL $-0x1, BX							
  mutex.go:221		0xe2f840		f00fc119		LOCK XADDL BX, 0(CX)						
  mutex.go:221		0xe2f844		ffcb			DECL BX								
  mutex.go:222		0xe2f846		85db			TESTL BX, BX							
  mutex.go:222		0xe2f848		7505			JNE 0xe2f84f							
  taskservice.go:141	0xe2f84a		4084f6			TESTL SI, SI							
  mutex.go:222		0xe2f84d		eb28			JMP 0xe2f877							
  taskservice.go:141	0xe2f84f		4088b424ff000000	MOVB SI, 0xff(SP)						
  mutex.go:225		0xe2f857		488d0562db7202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), AX		
  mutex.go:225		0xe2f85e		6690			NOPW								
  mutex.go:225		0xe2f860		e89b8465ff		CALL sync.(*Mutex).unlockSlow(SB)				
  taskservice.go:141	0xe2f865		0fb68c24ff000000	MOVZX 0xff(SP), CX						
  taskservice.go:141	0xe2f86d		84c9			TESTL CL, CL							
  taskservice.go:143	0xe2f86f		488b942400010000	MOVQ 0x100(SP), DX						
  taskservice.go:143	0xe2f877		0f84da000000		JE 0xe2f957							
  taskservice.go:143	0xe2f87d		0f1f00			NOPL 0(AX)							
  taskservice.go:143	0xe2f880		4885d2			TESTQ DX, DX							
  taskservice.go:143	0xe2f883		0f84ce000000		JE 0xe2f957							
  diaodu.go:108		0xe2f889		90			NOPL								
  type.go:17		0xe2f88a		8b0d70da7202		MOVL CAS-Backend/pkg/diapdu.graphReady(SB), CX			
  type.go:17		0xe2f890		85c9			TESTL CX, CX							
  taskservice.go:146	0xe2f892		745a			JE 0xe2f8ee							
  taskservice.go:150	0xe2f894		e86740ffff		CALL CAS-Backend/pkg/diapdu.GetGraph(SB)			
  taskservice.go:151	0xe2f899		4885c0			TESTQ AX, AX							
  taskservice.go:151	0xe2f89c		7445			JE 0xe2f8e3							
  taskservice.go:154	0xe2f89e		4889e7			MOVQ SP, DI							
  taskservice.go:154	0xe2f8a1		488db42428010000	LEAQ 0x128(SP), SI						
  taskservice.go:154	0xe2f8a9		48896c24f0		MOVQ BP, -0x10(SP)						
  taskservice.go:154	0xe2f8ae		488d6c24f0		LEAQ -0x10(SP), BP						
  taskservice.go:154	0xe2f8b3		e8169564ff		CALL 0x478dce							
  taskservice.go:154	0xe2f8b8		488b6d00		MOVQ 0(BP), BP							
  taskservice.go:154	0xe2f8bc		0f1f4000		NOPL 0(AX)							
  taskservice.go:154	0xe2f8c0		e8bb000000		CALL CAS-Backend/pkg/diapdu.convertDaoTaskToTask1(SB)		
  taskservice.go:155	0xe2f8c5		4889c3			MOVQ AX, BX							
  taskservice.go:155	0xe2f8c8		488b842400010000	MOVQ 0x100(SP), AX						
  taskservice.go:155	0xe2f8d0		e88bfbffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask(SB)	
  taskservice.go:156	0xe2f8d5		b801000000		MOVL $__minor_os_version__(SB), AX				
  taskservice.go:156	0xe2f8da		4881c418010000		ADDQ $.file+203(SB), SP						
  taskservice.go:156	0xe2f8e1		5d			POPQ BP								
  taskservice.go:156	0xe2f8e2		c3			RET								
  taskservice.go:152	0xe2f8e3		31c0			XORL AX, AX							
  taskservice.go:152	0xe2f8e5		4881c418010000		ADDQ $.file+203(SB), SP						
  taskservice.go:152	0xe2f8ec		5d			POPQ BP								
  taskservice.go:152	0xe2f8ed		c3			RET								
  taskservice.go:147	0xe2f8ee		440f11bc2408010000	MOVUPS X15, 0x108(SP)						
  taskservice.go:147	0xe2f8f7		488b842428010000	MOVQ 0x128(SP), AX						
  taskservice.go:147	0xe2f8ff		90			NOPL								
  taskservice.go:147	0xe2f900		e89ba763ff		CALL runtime.convT64(SB)					
  taskservice.go:147	0xe2f905		488d0d54322100		LEAQ runtime.types+383840(SB), CX				
  taskservice.go:147	0xe2f90c		48898c2408010000	MOVQ CX, 0x108(SP)						
  taskservice.go:147	0xe2f914		4889842410010000	MOVQ AX, 0x110(SP)						
  print.go:233		0xe2f91c		488b1d5d276e02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe2f923		488d05b6c10302		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe2f92a		488d0d51143700		LEAQ go:string.*+231546(SB), CX					
  print.go:233		0xe2f931		bf38000000		MOVL $__major_os_version__+50(SB), DI				
  print.go:233		0xe2f936		488db42408010000	LEAQ 0x108(SP), SI						
  print.go:233		0xe2f93e		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233		0xe2f944		4d89c1			MOVQ R8, R9							
  print.go:233		0xe2f947		e8d4f86eff		CALL fmt.Fprintf(SB)						
  taskservice.go:148	0xe2f94c		31c0			XORL AX, AX							
  taskservice.go:148	0xe2f94e		4881c418010000		ADDQ $.file+203(SB), SP						
  taskservice.go:148	0xe2f955		5d			POPQ BP								
  taskservice.go:148	0xe2f956		c3			RET								
  taskservice.go:144	0xe2f957		31c0			XORL AX, AX							
  taskservice.go:144	0xe2f959		4881c418010000		ADDQ $.file+203(SB), SP						
  taskservice.go:144	0xe2f960		5d			POPQ BP								
  taskservice.go:144	0xe2f961		c3			RET								
  taskservice.go:137	0xe2f962		31c0			XORL AX, AX							
  taskservice.go:137	0xe2f964		4881c418010000		ADDQ $.file+203(SB), SP						
  taskservice.go:137	0xe2f96b		5d			POPQ BP								
  taskservice.go:137	0xe2f96c		c3			RET								
  taskservice.go:135	0xe2f96d		e86e6b64ff		CALL runtime.morestack_noctxt.abi0(SB)				
  taskservice.go:135	0xe2f972		e949feffff		JMP CAS-Backend/pkg/diapdu.EnqueuePendingTask(SB)		
  :-1			0xe2f977		cc			INT $__subsystem__(SB)						
  :-1			0xe2f978		cc			INT $__subsystem__(SB)						
  :-1			0xe2f979		cc			INT $__subsystem__(SB)						
  :-1			0xe2f97a		cc			INT $__subsystem__(SB)						
  :-1			0xe2f97b		cc			INT $__subsystem__(SB)						
  :-1			0xe2f97c		cc			INT $__subsystem__(SB)						
  :-1			0xe2f97d		cc			INT $__subsystem__(SB)						
  :-1			0xe2f97e		cc			INT $__subsystem__(SB)						
  :-1			0xe2f97f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.convertDaoTaskToTask1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:160	0xe2f980		4c8da42458ffffff	LEAQ 0xffffff58(SP), R12					
  taskservice.go:160	0xe2f988		4d3b6610		CMPQ R12, 0x10(R14)						
  taskservice.go:160	0xe2f98c		0f866a030000		JBE 0xe2fcfc							
  taskservice.go:160	0xe2f992		55			PUSHQ BP							
  taskservice.go:160	0xe2f993		4889e5			MOVQ SP, BP							
  taskservice.go:160	0xe2f996		4881ec20010000		SUBQ $.file+211(SB), SP						
  taskservice.go:196	0xe2f99d		4889842420020000	MOVQ AX, 0x220(SP)						
  taskservice.go:160	0xe2f9a5		488d05f4c03000		LEAQ runtime.types+1403552(SB), AX				
  taskservice.go:160	0xe2f9ac		e8ef1d5eff		CALL runtime.newobject(SB)					
  taskservice.go:160	0xe2f9b1		4889842418010000	MOVQ AX, 0x118(SP)						
  taskservice.go:160	0xe2f9b9		833d90e1720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:160	0xe2f9c0		741f			JE 0xe2f9e1							
  taskservice.go:160	0xe2f9c2		4889c3			MOVQ AX, BX							
  taskservice.go:160	0xe2f9c5		488d8c2430010000	LEAQ 0x130(SP), CX						
  taskservice.go:160	0xe2f9cd		488d05ccc03000		LEAQ runtime.types+1403552(SB), AX				
  taskservice.go:160	0xe2f9d4		e847555eff		CALL runtime.wbMove(SB)						
  taskservice.go:160	0xe2f9d9		488b842418010000	MOVQ 0x118(SP), AX						
  taskservice.go:160	0xe2f9e1		4889c7			MOVQ AX, DI							
  taskservice.go:160	0xe2f9e4		488db42430010000	LEAQ 0x130(SP), SI						
  taskservice.go:160	0xe2f9ec		48896c24f0		MOVQ BP, -0x10(SP)						
  taskservice.go:160	0xe2f9f1		488d6c24f0		LEAQ -0x10(SP), BP						
  taskservice.go:160	0xe2f9f6		e8d39364ff		CALL 0x478dce							
  taskservice.go:160	0xe2f9fb		488b6d00		MOVQ 0(BP), BP							
  taskservice.go:164	0xe2f9ff		488b4828		MOVQ 0x28(AX), CX						
  taskservice.go:164	0xe2fa03		488b5020		MOVQ 0x20(AX), DX						
  taskservice.go:196	0xe2fa07		4883f903		CMPQ CX, $__subsystem__(SB)					
  taskservice.go:196	0xe2fa0b		7515			JNE 0xe2fa22							
  taskservice.go:196	0xe2fa0d		66813a6c6f		CMPW 0(DX), $.file+1693(SB)					
  taskservice.go:196	0xe2fa12		7540			JNE 0xe2fa54							
  taskservice.go:196	0xe2fa14		807a0277		CMPB 0x2(DX), $.file+42(SB)					
  taskservice.go:196	0xe2fa18		753a			JNE 0xe2fa54							
  taskservice.go:196	0xe2fa1a		b901000000		MOVL $__minor_os_version__(SB), CX				
  taskservice.go:196	0xe2fa1f		90			NOPL								
  taskservice.go:164	0xe2fa20		eb37			JMP 0xe2fa59							
  taskservice.go:192	0xe2fa22		4883f904		CMPQ CX, $__subsystem__+1(SB)					
  taskservice.go:192	0xe2fa26		750f			JNE 0xe2fa37							
  taskservice.go:192	0xe2fa28		813a68696768		CMPL 0(DX), $0x68676968						
  taskservice.go:192	0xe2fa2e		7524			JNE 0xe2fa54							
  taskservice.go:192	0xe2fa30		b903000000		MOVL $__subsystem__(SB), CX					
  taskservice.go:164	0xe2fa35		eb22			JMP 0xe2fa59							
  taskservice.go:194	0xe2fa37		4883f906		CMPQ CX, $__major_os_version__(SB)				
  taskservice.go:194	0xe2fa3b		7517			JNE 0xe2fa54							
  taskservice.go:194	0xe2fa3d		813a6d656469		CMPL 0(DX), $0x6964656d						
  taskservice.go:194	0xe2fa43		750f			JNE 0xe2fa54							
  taskservice.go:194	0xe2fa45		66817a04756d		CMPW 0x4(DX), $.file+1190(SB)					
  taskservice.go:194	0xe2fa4b		7507			JNE 0xe2fa54							
  taskservice.go:194	0xe2fa4d		b902000000		MOVL $__minor_os_version__+1(SB), CX				
  taskservice.go:164	0xe2fa52		eb05			JMP 0xe2fa59							
  taskservice.go:164	0xe2fa54		b902000000		MOVL $__minor_os_version__+1(SB), CX				
  taskservice.go:164	0xe2fa59		48898c2408010000	MOVQ CX, 0x108(SP)						
  taskservice.go:165	0xe2fa61		488b5030		MOVQ 0x30(AX), DX						
  taskservice.go:205	0xe2fa65		4883fa01		CMPQ DX, $__minor_os_version__(SB)				
  taskservice.go:208	0xe2fa69		7f17			JG 0xe2fa82							
  taskservice.go:206	0xe2fa6b		4885d2			TESTQ DX, DX							
  taskservice.go:206	0xe2fa6e		7504			JNE 0xe2fa74							
  taskservice.go:206	0xe2fa70		31d2			XORL DX, DX							
  taskservice.go:165	0xe2fa72		eb3b			JMP 0xe2faaf							
  taskservice.go:205	0xe2fa74		4883fa01		CMPQ DX, $__minor_os_version__(SB)				
  taskservice.go:208	0xe2fa78		7533			JNE 0xe2faad							
  taskservice.go:208	0xe2fa7a		ba01000000		MOVL $__minor_os_version__(SB), DX				
  taskservice.go:208	0xe2fa7f		90			NOPL								
  taskservice.go:165	0xe2fa80		eb2d			JMP 0xe2faaf							
  taskservice.go:210	0xe2fa82		4883fa02		CMPQ DX, $__minor_os_version__+1(SB)				
  taskservice.go:210	0xe2fa86		7507			JNE 0xe2fa8f							
  taskservice.go:210	0xe2fa88		ba02000000		MOVL $__minor_os_version__+1(SB), DX				
  taskservice.go:165	0xe2fa8d		eb20			JMP 0xe2faaf							
  taskservice.go:212	0xe2fa8f		4883fa04		CMPQ DX, $__subsystem__+1(SB)					
  taskservice.go:212	0xe2fa93		750b			JNE 0xe2faa0							
  taskservice.go:212	0xe2fa95		ba04000000		MOVL $__subsystem__+1(SB), DX					
  taskservice.go:165	0xe2fa9a		eb13			JMP 0xe2faaf							
  taskservice.go:165	0xe2fa9c		0f1f4000		NOPL 0(AX)							
  taskservice.go:214	0xe2faa0		4883fa05		CMPQ DX, $__subsystem__+2(SB)					
  taskservice.go:214	0xe2faa4		7507			JNE 0xe2faad							
  taskservice.go:214	0xe2faa6		ba05000000		MOVL $__subsystem__+2(SB), DX					
  taskservice.go:165	0xe2faab		eb02			JMP 0xe2faaf							
  taskservice.go:165	0xe2faad		31d2			XORL DX, DX							
  taskservice.go:165	0xe2faaf		4889942400010000	MOVQ DX, 0x100(SP)						
  taskservice.go:161	0xe2fab7		488d0582ca3000		LEAQ runtime.types+1406272(SB), AX				
  taskservice.go:161	0xe2fabe		6690			NOPW								
  taskservice.go:161	0xe2fac0		e8db1c5eff		CALL runtime.newobject(SB)					
  taskservice.go:162	0xe2fac5		488bb42418010000	MOVQ 0x118(SP), SI						
  taskservice.go:162	0xe2facd		488b0e			MOVQ 0(SI), CX							
  taskservice.go:162	0xe2fad0		488908			MOVQ CX, 0(AX)							
  taskservice.go:163	0xe2fad3		488b8ec8000000		MOVQ 0xc8(SI), CX						
  taskservice.go:163	0xe2fada		488b96c0000000		MOVQ 0xc0(SI), DX						
  taskservice.go:163	0xe2fae1		48894810		MOVQ CX, 0x10(AX)						
  taskservice.go:163	0xe2fae5		833d64e0720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:163	0xe2faec		7408			JE 0xe2faf6							
  taskservice.go:163	0xe2faee		e82d8964ff		CALL runtime.gcWriteBarrier1(SB)				
  taskservice.go:163	0xe2faf3		498913			MOVQ DX, 0(R11)							
  taskservice.go:163	0xe2faf6		48895008		MOVQ DX, 0x8(AX)						
  taskservice.go:164	0xe2fafa		488b8c2408010000	MOVQ 0x108(SP), CX						
  taskservice.go:164	0xe2fb02		48894818		MOVQ CX, 0x18(AX)						
  taskservice.go:165	0xe2fb06		488b8c2400010000	MOVQ 0x100(SP), CX						
  taskservice.go:165	0xe2fb0e		48894840		MOVQ CX, 0x40(AX)						
  taskservice.go:166	0xe2fb12		440f117848		MOVUPS X15, 0x48(AX)						
  taskservice.go:167	0xe2fb17		488b4e48		MOVQ 0x48(SI), CX						
  taskservice.go:167	0xe2fb1b		488b5650		MOVQ 0x50(SI), DX						
  taskservice.go:167	0xe2fb1f		4c8b4658		MOVQ 0x58(SI), R8						
  taskservice.go:167	0xe2fb23		48894858		MOVQ CX, 0x58(AX)						
  taskservice.go:167	0xe2fb27		48895060		MOVQ DX, 0x60(AX)						
  taskservice.go:168	0xe2fb2b		488d4e60		LEAQ 0x60(SI), CX						
  taskservice.go:167	0xe2fb2f		833d1ae0720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:167	0xe2fb36		740c			JE 0xe2fb44							
  taskservice.go:167	0xe2fb38		e8038964ff		CALL runtime.gcWriteBarrier2(SB)				
  taskservice.go:167	0xe2fb3d		4d8903			MOVQ R8, 0(R11)							
  taskservice.go:168	0xe2fb40		49894b08		MOVQ CX, 0x8(R11)						
  taskservice.go:167	0xe2fb44		4c894068		MOVQ R8, 0x68(AX)						
  taskservice.go:168	0xe2fb48		48894878		MOVQ CX, 0x78(AX)						
  taskservice.go:171	0xe2fb4c		488b8e98000000		MOVQ 0x98(SI), CX						
  taskservice.go:171	0xe2fb53		488b9690000000		MOVQ 0x90(SI), DX						
  taskservice.go:171	0xe2fb5a		488988a8000000		MOVQ CX, 0xa8(AX)						
  taskservice.go:171	0xe2fb61		833de8df720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:171	0xe2fb68		7408			JE 0xe2fb72							
  taskservice.go:171	0xe2fb6a		e8b18864ff		CALL runtime.gcWriteBarrier1(SB)				
  taskservice.go:171	0xe2fb6f		498913			MOVQ DX, 0(R11)							
  taskservice.go:171	0xe2fb72		488990a0000000		MOVQ DX, 0xa0(AX)						
  taskservice.go:172	0xe2fb79		488b8ea8000000		MOVQ 0xa8(SI), CX						
  taskservice.go:172	0xe2fb80		488b96a0000000		MOVQ 0xa0(SI), DX						
  taskservice.go:172	0xe2fb87		488988b8000000		MOVQ CX, 0xb8(AX)						
  taskservice.go:172	0xe2fb8e		833dbbdf720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:172	0xe2fb95		7408			JE 0xe2fb9f							
  taskservice.go:172	0xe2fb97		e8848864ff		CALL runtime.gcWriteBarrier1(SB)				
  taskservice.go:172	0xe2fb9c		498913			MOVQ DX, 0(R11)							
  taskservice.go:172	0xe2fb9f		488990b0000000		MOVQ DX, 0xb0(AX)						
  taskservice.go:173	0xe2fba6		488b8eb8000000		MOVQ 0xb8(SI), CX						
  taskservice.go:173	0xe2fbad		488b96b0000000		MOVQ 0xb0(SI), DX						
  taskservice.go:173	0xe2fbb4		488988c8000000		MOVQ CX, 0xc8(AX)						
  taskservice.go:173	0xe2fbbb		833d8edf720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:173	0xe2fbc2		7408			JE 0xe2fbcc							
  taskservice.go:173	0xe2fbc4		e8578864ff		CALL runtime.gcWriteBarrier1(SB)				
  taskservice.go:173	0xe2fbc9		498913			MOVQ DX, 0(R11)							
  taskservice.go:173	0xe2fbcc		488990c0000000		MOVQ DX, 0xc0(AX)						
  taskservice.go:174	0xe2fbd3		488b8ed8000000		MOVQ 0xd8(SI), CX						
  taskservice.go:174	0xe2fbda		488b96d0000000		MOVQ 0xd0(SI), DX						
  taskservice.go:174	0xe2fbe1		488988d8000000		MOVQ CX, 0xd8(AX)						
  taskservice.go:174	0xe2fbe8		833d61df720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:174	0xe2fbef		7408			JE 0xe2fbf9							
  taskservice.go:174	0xe2fbf1		e82a8864ff		CALL runtime.gcWriteBarrier1(SB)				
  taskservice.go:174	0xe2fbf6		498913			MOVQ DX, 0(R11)							
  taskservice.go:161	0xe2fbf9		4889842410010000	MOVQ AX, 0x110(SP)						
  taskservice.go:174	0xe2fc01		488990d0000000		MOVQ DX, 0xd0(AX)						
  taskservice.go:175	0xe2fc08		f20f1086e8000000	MOVSD_XMM 0xe8(SI), X0						
  taskservice.go:175	0xe2fc10		f20f1180f8000000	MOVSD_XMM X0, 0xf8(AX)						
  taskservice.go:176	0xe2fc18		488b9eb8000000		MOVQ 0xb8(SI), BX						
  taskservice.go:176	0xe2fc1f		90			NOPL								
  taskservice.go:176	0xe2fc20		4885db			TESTQ BX, BX							
  taskservice.go:176	0xe2fc23		7450			JE 0xe2fc75							
  taskservice.go:176	0xe2fc25		488b86b0000000		MOVQ 0xb0(SI), AX						
  taskservice.go:177	0xe2fc2c		e8af090000		CALL CAS-Backend/pkg/diapdu.parseWaypointStations(SB)		
  taskservice.go:177	0xe2fc31		488b942410010000	MOVQ 0x110(SP), DX						
  taskservice.go:177	0xe2fc39		48899ae8000000		MOVQ BX, 0xe8(DX)						
  taskservice.go:177	0xe2fc40		48898af0000000		MOVQ CX, 0xf0(DX)						
  taskservice.go:177	0xe2fc47		833d02df720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:177	0xe2fc4e		7413			JE 0xe2fc63							
  taskservice.go:177	0xe2fc50		e8eb8764ff		CALL runtime.gcWriteBarrier2(SB)				
  taskservice.go:177	0xe2fc55		498903			MOVQ AX, 0(R11)							
  taskservice.go:177	0xe2fc58		488b8ae0000000		MOVQ 0xe0(DX), CX						
  taskservice.go:177	0xe2fc5f		49894b08		MOVQ CX, 0x8(R11)						
  taskservice.go:177	0xe2fc63		488982e0000000		MOVQ AX, 0xe0(DX)						
  taskservice.go:180	0xe2fc6a		4889d0			MOVQ DX, AX							
  taskservice.go:180	0xe2fc6d		488bb42418010000	MOVQ 0x118(SP), SI						
  taskservice.go:180	0xe2fc75		4889e7			MOVQ SP, DI							
  taskservice.go:180	0xe2fc78		0f1f840000000000	NOPL 0(AX)(AX*1)						
  taskservice.go:180	0xe2fc80		48896c24f0		MOVQ BP, -0x10(SP)						
  taskservice.go:180	0xe2fc85		488d6c24f0		LEAQ -0x10(SP), BP						
  taskservice.go:180	0xe2fc8a		e83f9164ff		CALL 0x478dce							
  taskservice.go:180	0xe2fc8f		488b6d00		MOVQ 0(BP), BP							
  taskservice.go:180	0xe2fc93		488b9c2420020000	MOVQ 0x220(SP), BX						
  taskservice.go:180	0xe2fc9b		0f1f440000		NOPL 0(AX)(AX*1)						
  taskservice.go:180	0xe2fca0		e87b000000		CALL CAS-Backend/pkg/diapdu.applyTaskLocationsFromDAO(SB)	
  taskservice.go:182	0xe2fca5		488b8c2418010000	MOVQ 0x118(SP), CX						
  taskservice.go:182	0xe2fcad		488b9188000000		MOVQ 0x88(CX), DX						
  taskservice.go:182	0xe2fcb4		4885d2			TESTQ DX, DX							
  taskservice.go:182	0xe2fcb7		7432			JE 0xe2fceb							
  taskservice.go:182	0xe2fcb9		488b8980000000		MOVQ 0x80(CX), CX						
  taskservice.go:183	0xe2fcc0		488b842410010000	MOVQ 0x110(SP), AX						
  taskservice.go:183	0xe2fcc8		48895050		MOVQ DX, 0x50(AX)						
  taskservice.go:183	0xe2fccc		833d7dde720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:183	0xe2fcd3		7410			JE 0xe2fce5							
  taskservice.go:183	0xe2fcd5		e8668764ff		CALL runtime.gcWriteBarrier2(SB)				
  taskservice.go:183	0xe2fcda		49890b			MOVQ CX, 0(R11)							
  taskservice.go:183	0xe2fcdd		488b5048		MOVQ 0x48(AX), DX						
  taskservice.go:183	0xe2fce1		49895308		MOVQ DX, 0x8(R11)						
  taskservice.go:183	0xe2fce5		48894848		MOVQ CX, 0x48(AX)						
  taskservice.go:183	0xe2fce9		eb08			JMP 0xe2fcf3							
  taskservice.go:186	0xe2fceb		488b842410010000	MOVQ 0x110(SP), AX						
  taskservice.go:186	0xe2fcf3		4881c420010000		ADDQ $.file+211(SB), SP						
  taskservice.go:186	0xe2fcfa		5d			POPQ BP								
  taskservice.go:186	0xe2fcfb		c3			RET								
  taskservice.go:160	0xe2fcfc		48898424f8000000	MOVQ AX, 0xf8(SP)						
  taskservice.go:160	0xe2fd04		e8d76764ff		CALL runtime.morestack_noctxt.abi0(SB)				
  taskservice.go:160	0xe2fd09		488b8424f8000000	MOVQ 0xf8(SP), AX						
  taskservice.go:160	0xe2fd11		e96afcffff		JMP CAS-Backend/pkg/diapdu.convertDaoTaskToTask1(SB)		
  :-1			0xe2fd16		cc			INT $__subsystem__(SB)						
  :-1			0xe2fd17		cc			INT $__subsystem__(SB)						
  :-1			0xe2fd18		cc			INT $__subsystem__(SB)						
  :-1			0xe2fd19		cc			INT $__subsystem__(SB)						
  :-1			0xe2fd1a		cc			INT $__subsystem__(SB)						
  :-1			0xe2fd1b		cc			INT $__subsystem__(SB)						
  :-1			0xe2fd1c		cc			INT $__subsystem__(SB)						
  :-1			0xe2fd1d		cc			INT $__subsystem__(SB)						
  :-1			0xe2fd1e		cc			INT $__subsystem__(SB)						
  :-1			0xe2fd1f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.applyTaskLocationsFromDAO(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:235	0xe2fd20		4c8da42420ffffff	LEAQ 0xffffff20(SP), R12					
  taskservice.go:235	0xe2fd28		4d3b6610		CMPQ R12, 0x10(R14)						
  taskservice.go:235	0xe2fd2c		0f864f040000		JBE 0xe30181							
  taskservice.go:235	0xe2fd32		55			PUSHQ BP							
  taskservice.go:235	0xe2fd33		4889e5			MOVQ SP, BP							
  taskservice.go:235	0xe2fd36		4881ec58010000		SUBQ $.file+267(SB), SP						
  taskservice.go:235	0xe2fd3d		0f1f00			NOPL 0(AX)							
  taskservice.go:236	0xe2fd40		4885c0			TESTQ AX, AX							
  taskservice.go:236	0xe2fd43		0f842f040000		JE 0xe30178							
  taskservice.go:236	0xe2fd49		4885db			TESTQ BX, BX							
  taskservice.go:236	0xe2fd4c		0f8426040000		JE 0xe30178							
  taskservice.go:236	0xe2fd52		4889842458020000	MOVQ AX, 0x258(SP)						
  taskservice.go:236	0xe2fd5a		48899c2460020000	MOVQ BX, 0x260(SP)						
  taskservice.go:239	0xe2fd62		488b9c2400020000	MOVQ 0x200(SP), BX						
  taskservice.go:239	0xe2fd6a		488b8424f8010000	MOVQ 0x1f8(SP), AX						
  taskservice.go:239	0xe2fd72		e8e9050000		CALL CAS-Backend/pkg/diapdu.parsePositionData(SB)		
  taskservice.go:239	0xe2fd77		488b1424		MOVQ 0(SP), DX							
  taskservice.go:239	0xe2fd7b		4889542430		MOVQ DX, 0x30(SP)						
  taskservice.go:239	0xe2fd80		4885d2			TESTQ DX, DX							
  taskservice.go:239	0xe2fd83		48898424f8000000	MOVQ AX, 0xf8(SP)						
  taskservice.go:239	0xe2fd8b		48899c2400010000	MOVQ BX, 0x100(SP)						
  taskservice.go:239	0xe2fd93		48898c2408010000	MOVQ CX, 0x108(SP)						
  taskservice.go:239	0xe2fd9b		4889bc2410010000	MOVQ DI, 0x110(SP)						
  taskservice.go:239	0xe2fda3		4889b42418010000	MOVQ SI, 0x118(SP)						
  taskservice.go:239	0xe2fdab		4c89842420010000	MOVQ R8, 0x120(SP)						
  taskservice.go:239	0xe2fdb3		f20f11842428010000	MOVSD_XMM X0, 0x128(SP)						
  taskservice.go:239	0xe2fdbc		4c898c2430010000	MOVQ R9, 0x130(SP)						
  taskservice.go:239	0xe2fdc4		4c89942438010000	MOVQ R10, 0x138(SP)						
  taskservice.go:239	0xe2fdcc		f20f118c2440010000	MOVSD_XMM X1, 0x140(SP)						
  taskservice.go:239	0xe2fdd5		f20f11942448010000	MOVSD_XMM X2, 0x148(SP)						
  taskservice.go:239	0xe2fdde		f20f119c2450010000	MOVSD_XMM X3, 0x150(SP)						
  taskservice.go:239	0xe2fde7		488d7c2438		LEAQ 0x38(SP), DI						
  taskservice.go:239	0xe2fdec		488db424f8000000	LEAQ 0xf8(SP), SI						
  taskservice.go:239	0xe2fdf4		660f1f840000000000	NOPW 0(AX)(AX*1)						
  taskservice.go:239	0xe2fdfd		0f1f00			NOPL 0(AX)							
  taskservice.go:239	0xe2fe00		48896c24f0		MOVQ BP, -0x10(SP)						
  taskservice.go:239	0xe2fe05		488d6c24f0		LEAQ -0x10(SP), BP						
  taskservice.go:239	0xe2fe0a		e83d9064ff		CALL 0x478e4c							
  taskservice.go:239	0xe2fe0f		488b6d00		MOVQ 0(BP), BP							
  taskservice.go:240	0xe2fe13		488b842408020000	MOVQ 0x208(SP), AX						
  taskservice.go:240	0xe2fe1b		488b9c2410020000	MOVQ 0x210(SP), BX						
  taskservice.go:240	0xe2fe23		e838050000		CALL CAS-Backend/pkg/diapdu.parsePositionData(SB)		
  taskservice.go:240	0xe2fe28		488b1424		MOVQ 0(SP), DX							
  taskservice.go:240	0xe2fe2c		4889542428		MOVQ DX, 0x28(SP)						
  taskservice.go:240	0xe2fe31		4885d2			TESTQ DX, DX							
  taskservice.go:240	0xe2fe34		48898424f8000000	MOVQ AX, 0xf8(SP)						
  taskservice.go:240	0xe2fe3c		48899c2400010000	MOVQ BX, 0x100(SP)						
  taskservice.go:240	0xe2fe44		48898c2408010000	MOVQ CX, 0x108(SP)						
  taskservice.go:240	0xe2fe4c		4889bc2410010000	MOVQ DI, 0x110(SP)						
  taskservice.go:240	0xe2fe54		4889b42418010000	MOVQ SI, 0x118(SP)						
  taskservice.go:240	0xe2fe5c		4c89842420010000	MOVQ R8, 0x120(SP)						
  taskservice.go:240	0xe2fe64		f20f11842428010000	MOVSD_XMM X0, 0x128(SP)						
  taskservice.go:240	0xe2fe6d		4c898c2430010000	MOVQ R9, 0x130(SP)						
  taskservice.go:240	0xe2fe75		4c89942438010000	MOVQ R10, 0x138(SP)						
  taskservice.go:240	0xe2fe7d		f20f118c2440010000	MOVSD_XMM X1, 0x140(SP)						
  taskservice.go:240	0xe2fe86		f20f11942448010000	MOVSD_XMM X2, 0x148(SP)						
  taskservice.go:240	0xe2fe8f		f20f119c2450010000	MOVSD_XMM X3, 0x150(SP)						
  taskservice.go:240	0xe2fe98		488dbc2498000000	LEAQ 0x98(SP), DI						
  taskservice.go:240	0xe2fea0		488db424f8000000	LEAQ 0xf8(SP), SI						
  taskservice.go:240	0xe2fea8		48896c24f0		MOVQ BP, -0x10(SP)						
  taskservice.go:240	0xe2fead		488d6c24f0		LEAQ -0x10(SP), BP						
  taskservice.go:240	0xe2feb2		e8958f64ff		CALL 0x478e4c							
  taskservice.go:240	0xe2feb7		488b6d00		MOVQ 0(BP), BP							
  taskservice.go:239	0xe2febb		488b4c2430		MOVQ 0x30(SP), CX						
  taskservice.go:239	0xe2fec0		4885c9			TESTQ CX, CX							
  taskservice.go:241	0xe2fec3		7407			JE 0xe2fecc							
  taskservice.go:241	0xe2fec5		b900000000		MOVL $0x0, CX							
  taskservice.go:241	0xe2feca		eb22			JMP 0xe2feee							
  taskservice.go:241	0xe2fecc		488b442448		MOVQ 0x48(SP), AX						
  taskservice.go:241	0xe2fed1		488b5c2450		MOVQ 0x50(SP), BX						
  taskservice.go:241	0xe2fed6		e8e52a6bff		CALL strings.TrimSpace(SB)					
  taskservice.go:241	0xe2fedb		4885db			TESTQ BX, BX							
  taskservice.go:241	0xe2fede		0f94c1			SETE CL								
  taskservice.go:239	0xe2fee1		488b542430		MOVQ 0x30(SP), DX						
  taskservice.go:239	0xe2fee6		4885d2			TESTQ DX, DX							
  taskservice.go:240	0xe2fee9		488b542428		MOVQ 0x28(SP), DX						
  taskservice.go:242	0xe2feee		7408			JE 0xe2fef8							
  taskservice.go:240	0xe2fef0		4885d2			TESTQ DX, DX							
  taskservice.go:242	0xe2fef3		e994000000		JMP 0xe2ff8c							
  taskservice.go:241	0xe2fef8		884c2427		MOVB CL, 0x27(SP)						
  taskservice.go:243	0xe2fefc		488b442438		MOVQ 0x38(SP), AX						
  taskservice.go:243	0xe2ff01		488b5c2440		MOVQ 0x40(SP), BX						
  taskservice.go:243	0xe2ff06		e8b52a6bff		CALL strings.TrimSpace(SB)					
  taskservice.go:243	0xe2ff0b		488b8c2458020000	MOVQ 0x258(SP), CX						
  taskservice.go:243	0xe2ff13		48899988000000		MOVQ BX, 0x88(CX)						
  taskservice.go:243	0xe2ff1a		833d2fdc720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:243	0xe2ff21		7413			JE 0xe2ff36							
  taskservice.go:243	0xe2ff23		e8188564ff		CALL runtime.gcWriteBarrier2(SB)				
  taskservice.go:243	0xe2ff28		498903			MOVQ AX, 0(R11)							
  taskservice.go:243	0xe2ff2b		488b9180000000		MOVQ 0x80(CX), DX						
  taskservice.go:243	0xe2ff32		49895308		MOVQ DX, 0x8(R11)						
  taskservice.go:243	0xe2ff36		48898180000000		MOVQ AX, 0x80(CX)						
  taskservice.go:243	0xe2ff3d		4889c2			MOVQ AX, DX							
  taskservice.go:244	0xe2ff40		488b842460020000	MOVQ 0x260(SP), AX						
  taskservice.go:243	0xe2ff48		4889de			MOVQ BX, SI							
  taskservice.go:244	0xe2ff4b		4889d3			MOVQ DX, BX							
  taskservice.go:244	0xe2ff4e		4889f1			MOVQ SI, CX							
  taskservice.go:244	0xe2ff51		e86a020000		CALL CAS-Backend/pkg/diapdu.locationForStationName(SB)		
  taskservice.go:244	0xe2ff56		4885c0			TESTQ AX, AX							
  taskservice.go:244	0xe2ff59		7412			JE 0xe2ff6d							
  taskservice.go:240	0xe2ff5b		488b4c2428		MOVQ 0x28(SP), CX						
  taskservice.go:240	0xe2ff60		4885c9			TESTQ CX, CX							
  taskservice.go:258	0xe2ff63		488b8c2458020000	MOVQ 0x258(SP), CX						
  taskservice.go:244	0xe2ff6b		eb1a			JMP 0xe2ff87							
  taskservice.go:245	0xe2ff6d		488b8c2458020000	MOVQ 0x258(SP), CX						
  taskservice.go:245	0xe2ff75		f20f114120		MOVSD_XMM X0, 0x20(CX)						
  taskservice.go:245	0xe2ff7a		f20f114928		MOVSD_XMM X1, 0x28(CX)						
  taskservice.go:240	0xe2ff7f		488b542428		MOVQ 0x28(SP), DX						
  taskservice.go:240	0xe2ff84		4885d2			TESTQ DX, DX							
  taskservice.go:241	0xe2ff87		0fb64c2427		MOVZX 0x27(SP), CX						
  taskservice.go:248	0xe2ff8c		740d			JE 0xe2ff9b							
  taskservice.go:258	0xe2ff8e		488b8c2458020000	MOVQ 0x258(SP), CX						
  taskservice.go:248	0xe2ff96		e9d3000000		JMP 0xe3006e							
  taskservice.go:241	0xe2ff9b		84c9			TESTL CL, CL							
  taskservice.go:249	0xe2ff9d		7449			JE 0xe2ffe8							
  taskservice.go:250	0xe2ff9f		488b8424a8000000	MOVQ 0xa8(SP), AX						
  taskservice.go:250	0xe2ffa7		488b9c24b0000000	MOVQ 0xb0(SP), BX						
  taskservice.go:250	0xe2ffaf		e80c2a6bff		CALL strings.TrimSpace(SB)					
  taskservice.go:250	0xe2ffb4		488b8c2458020000	MOVQ 0x258(SP), CX						
  taskservice.go:250	0xe2ffbc		48899998000000		MOVQ BX, 0x98(CX)						
  taskservice.go:250	0xe2ffc3		833d86db720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:250	0xe2ffca		7413			JE 0xe2ffdf							
  taskservice.go:250	0xe2ffcc		e86f8464ff		CALL runtime.gcWriteBarrier2(SB)				
  taskservice.go:250	0xe2ffd1		498903			MOVQ AX, 0(R11)							
  taskservice.go:250	0xe2ffd4		488b9190000000		MOVQ 0x90(CX), DX						
  taskservice.go:250	0xe2ffdb		49895308		MOVQ DX, 0x8(R11)						
  taskservice.go:250	0xe2ffdf		48898190000000		MOVQ AX, 0x90(CX)						
  taskservice.go:250	0xe2ffe6		eb47			JMP 0xe3002f							
  taskservice.go:252	0xe2ffe8		488b842498000000	MOVQ 0x98(SP), AX						
  taskservice.go:252	0xe2fff0		488b9c24a0000000	MOVQ 0xa0(SP), BX						
  taskservice.go:252	0xe2fff8		e8c3296bff		CALL strings.TrimSpace(SB)					
  taskservice.go:252	0xe2fffd		488b8c2458020000	MOVQ 0x258(SP), CX						
  taskservice.go:252	0xe30005		48899998000000		MOVQ BX, 0x98(CX)						
  taskservice.go:252	0xe3000c		833d3ddb720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:252	0xe30013		7413			JE 0xe30028							
  taskservice.go:252	0xe30015		e8268464ff		CALL runtime.gcWriteBarrier2(SB)				
  taskservice.go:252	0xe3001a		498903			MOVQ AX, 0(R11)							
  taskservice.go:252	0xe3001d		488b9190000000		MOVQ 0x90(CX), DX						
  taskservice.go:252	0xe30024		49895308		MOVQ DX, 0x8(R11)						
  taskservice.go:252	0xe30028		48898190000000		MOVQ AX, 0x90(CX)						
  taskservice.go:254	0xe3002f		488b9990000000		MOVQ 0x90(CX), BX						
  taskservice.go:254	0xe30036		488b9198000000		MOVQ 0x98(CX), DX						
  taskservice.go:254	0xe3003d		488b842460020000	MOVQ 0x260(SP), AX						
  taskservice.go:254	0xe30045		4889d1			MOVQ DX, CX							
  taskservice.go:254	0xe30048		e873010000		CALL CAS-Backend/pkg/diapdu.locationForStationName(SB)		
  taskservice.go:254	0xe3004d		4885c0			TESTQ AX, AX							
  taskservice.go:254	0xe30050		740a			JE 0xe3005c							
  taskservice.go:258	0xe30052		488b8c2458020000	MOVQ 0x258(SP), CX						
  taskservice.go:254	0xe3005a		eb12			JMP 0xe3006e							
  taskservice.go:255	0xe3005c		488b8c2458020000	MOVQ 0x258(SP), CX						
  taskservice.go:255	0xe30064		f20f114130		MOVSD_XMM X0, 0x30(CX)						
  taskservice.go:255	0xe30069		f20f114938		MOVSD_XMM X1, 0x38(CX)						
  taskservice.go:258	0xe3006e		4883b98800000000	CMPQ 0x88(CX), $0x0						
  taskservice.go:258	0xe30076		7579			JNE 0xe300f1							
  taskservice.go:258	0xe30078		f20f104120		MOVSD_XMM 0x20(CX), X0						
  taskservice.go:258	0xe3007d		0f57d2			XORPS X2, X2							
  taskservice.go:258	0xe30080		660f2ed0		UCOMISD X0, X2							
  taskservice.go:258	0xe30084		750f			JNE 0xe30095							
  taskservice.go:258	0xe30086		7a0d			JP 0xe30095							
  taskservice.go:258	0xe30088		f20f105928		MOVSD_XMM 0x28(CX), X3						
  taskservice.go:258	0xe3008d		660f2ed3		UCOMISD X3, X2							
  taskservice.go:258	0xe30091		7502			JNE 0xe30095							
  taskservice.go:258	0xe30093		7b5f			JNP 0xe300f4							
  taskservice.go:259	0xe30095		f20f104928		MOVSD_XMM 0x28(CX), X1						
  taskservice.go:259	0xe3009a		488b842460020000	MOVQ 0x260(SP), AX						
  taskservice.go:259	0xe300a2		e839640000		CALL CAS-Backend/pkg/diapdu.closestNodeTo(SB)			
  taskservice.go:259	0xe300a7		4885c0			TESTQ AX, AX							
  taskservice.go:259	0xe300aa		743b			JE 0xe300e7							
  taskservice.go:260	0xe300ac		488b4808		MOVQ 0x8(AX), CX						
  taskservice.go:260	0xe300b0		488b10			MOVQ 0(AX), DX							
  taskservice.go:260	0xe300b3		488b9c2458020000	MOVQ 0x258(SP), BX						
  taskservice.go:260	0xe300bb		48898b88000000		MOVQ CX, 0x88(BX)						
  taskservice.go:260	0xe300c2		833d87da720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:260	0xe300c9		7413			JE 0xe300de							
  taskservice.go:260	0xe300cb		e8708364ff		CALL runtime.gcWriteBarrier2(SB)				
  taskservice.go:260	0xe300d0		498913			MOVQ DX, 0(R11)							
  taskservice.go:260	0xe300d3		488b8b80000000		MOVQ 0x80(BX), CX						
  taskservice.go:260	0xe300da		49894b08		MOVQ CX, 0x8(R11)						
  taskservice.go:260	0xe300de		48899380000000		MOVQ DX, 0x80(BX)						
  taskservice.go:260	0xe300e5		eb10			JMP 0xe300f7							
  taskservice.go:263	0xe300e7		488b9c2458020000	MOVQ 0x258(SP), BX						
  taskservice.go:259	0xe300ef		eb06			JMP 0xe300f7							
  taskservice.go:259	0xe300f1		0f57d2			XORPS X2, X2							
  taskservice.go:263	0xe300f4		4889cb			MOVQ CX, BX							
  taskservice.go:263	0xe300f7		4883bb9800000000	CMPQ 0x98(BX), $0x0						
  taskservice.go:263	0xe300ff		90			NOPL								
  taskservice.go:263	0xe30100		756d			JNE 0xe3016f							
  taskservice.go:263	0xe30102		f20f104330		MOVSD_XMM 0x30(BX), X0						
  taskservice.go:263	0xe30107		0f57d2			XORPS X2, X2							
  taskservice.go:263	0xe3010a		660f2ed0		UCOMISD X0, X2							
  taskservice.go:263	0xe3010e		750f			JNE 0xe3011f							
  taskservice.go:263	0xe30110		7a0d			JP 0xe3011f							
  taskservice.go:263	0xe30112		f20f105b38		MOVSD_XMM 0x38(BX), X3						
  taskservice.go:263	0xe30117		660f2ed3		UCOMISD X3, X2							
  taskservice.go:263	0xe3011b		7502			JNE 0xe3011f							
  taskservice.go:263	0xe3011d		7b50			JNP 0xe3016f							
  taskservice.go:264	0xe3011f		f20f104b38		MOVSD_XMM 0x38(BX), X1						
  taskservice.go:264	0xe30124		488b842460020000	MOVQ 0x260(SP), AX						
  taskservice.go:264	0xe3012c		e8af630000		CALL CAS-Backend/pkg/diapdu.closestNodeTo(SB)			
  taskservice.go:264	0xe30131		4885c0			TESTQ AX, AX							
  taskservice.go:264	0xe30134		7439			JE 0xe3016f							
  taskservice.go:265	0xe30136		488b4808		MOVQ 0x8(AX), CX						
  taskservice.go:265	0xe3013a		488b00			MOVQ 0(AX), AX							
  taskservice.go:265	0xe3013d		488b942458020000	MOVQ 0x258(SP), DX						
  taskservice.go:265	0xe30145		48898a98000000		MOVQ CX, 0x98(DX)						
  taskservice.go:265	0xe3014c		833dfdd9720200		CMPL runtime.writeBarrier(SB), $0x0				
  taskservice.go:265	0xe30153		7413			JE 0xe30168							
  taskservice.go:265	0xe30155		e8e68264ff		CALL runtime.gcWriteBarrier2(SB)				
  taskservice.go:265	0xe3015a		498903			MOVQ AX, 0(R11)							
  taskservice.go:265	0xe3015d		488b8a90000000		MOVQ 0x90(DX), CX						
  taskservice.go:265	0xe30164		49894b08		MOVQ CX, 0x8(R11)						
  taskservice.go:265	0xe30168		48898290000000		MOVQ AX, 0x90(DX)						
  taskservice.go:268	0xe3016f		4881c458010000		ADDQ $.file+267(SB), SP						
  taskservice.go:268	0xe30176		5d			POPQ BP								
  taskservice.go:268	0xe30177		c3			RET								
  taskservice.go:237	0xe30178		4881c458010000		ADDQ $.file+267(SB), SP						
  taskservice.go:237	0xe3017f		5d			POPQ BP								
  taskservice.go:237	0xe30180		c3			RET								
  taskservice.go:235	0xe30181		48898424f8000000	MOVQ AX, 0xf8(SP)						
  taskservice.go:235	0xe30189		48899c2400010000	MOVQ BX, 0x100(SP)						
  taskservice.go:235	0xe30191		e84a6364ff		CALL runtime.morestack_noctxt.abi0(SB)				
  taskservice.go:235	0xe30196		488b8424f8000000	MOVQ 0xf8(SP), AX						
  taskservice.go:235	0xe3019e		488b9c2400010000	MOVQ 0x100(SP), BX						
  taskservice.go:235	0xe301a6		e975fbffff		JMP CAS-Backend/pkg/diapdu.applyTaskLocationsFromDAO(SB)	
  :-1			0xe301ab		cc			INT $__subsystem__(SB)						
  :-1			0xe301ac		cc			INT $__subsystem__(SB)						
  :-1			0xe301ad		cc			INT $__subsystem__(SB)						
  :-1			0xe301ae		cc			INT $__subsystem__(SB)						
  :-1			0xe301af		cc			INT $__subsystem__(SB)						
  :-1			0xe301b0		cc			INT $__subsystem__(SB)						
  :-1			0xe301b1		cc			INT $__subsystem__(SB)						
  :-1			0xe301b2		cc			INT $__subsystem__(SB)						
  :-1			0xe301b3		cc			INT $__subsystem__(SB)						
  :-1			0xe301b4		cc			INT $__subsystem__(SB)						
  :-1			0xe301b5		cc			INT $__subsystem__(SB)						
  :-1			0xe301b6		cc			INT $__subsystem__(SB)						
  :-1			0xe301b7		cc			INT $__subsystem__(SB)						
  :-1			0xe301b8		cc			INT $__subsystem__(SB)						
  :-1			0xe301b9		cc			INT $__subsystem__(SB)						
  :-1			0xe301ba		cc			INT $__subsystem__(SB)						
  :-1			0xe301bb		cc			INT $__subsystem__(SB)						
  :-1			0xe301bc		cc			INT $__subsystem__(SB)						
  :-1			0xe301bd		cc			INT $__subsystem__(SB)						
  :-1			0xe301be		cc			INT $__subsystem__(SB)						
  :-1			0xe301bf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.locationForStationName(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:270	0xe301c0		493b6610		CMPQ SP, 0x10(R14)					
  taskservice.go:270	0xe301c4		0f8657010000		JBE 0xe30321						
  taskservice.go:270	0xe301ca		55			PUSHQ BP						
  taskservice.go:270	0xe301cb		4889e5			MOVQ SP, BP						
  taskservice.go:270	0xe301ce		4883ec68		SUBQ $.file+27(SB), SP					
  taskservice.go:270	0xe301d2		48899c2480000000	MOVQ BX, 0x80(SP)					
  taskservice.go:273	0xe301da		4889442478		MOVQ AX, 0x78(SP)					
  taskservice.go:272	0xe301df		4889d8			MOVQ BX, AX						
  taskservice.go:272	0xe301e2		4889cb			MOVQ CX, BX						
  taskservice.go:272	0xe301e5		e8d6276bff		CALL strings.TrimSpace(SB)				
  taskservice.go:273	0xe301ea		4885db			TESTQ BX, BX						
  taskservice.go:273	0xe301ed		744d			JE 0xe3023c						
  taskservice.go:276	0xe301ef		488b542478		MOVQ 0x78(SP), DX					
  taskservice.go:276	0xe301f4		4885d2			TESTQ DX, DX						
  taskservice.go:276	0xe301f7		741f			JE 0xe30218						
  taskservice.go:272	0xe301f9		4889442460		MOVQ AX, 0x60(SP)					
  taskservice.go:272	0xe301fe		48895c2438		MOVQ BX, 0x38(SP)					
  taskservice.go:279	0xe30203		488b32			MOVQ 0(DX), SI						
  taskservice.go:279	0xe30206		4889742458		MOVQ SI, 0x58(SP)					
  taskservice.go:279	0xe3020b		488b5208		MOVQ 0x8(DX), DX					
  taskservice.go:279	0xe3020f		4889542430		MOVQ DX, 0x30(SP)					
  taskservice.go:279	0xe30214		31c9			XORL CX, CX						
  taskservice.go:279	0xe30216		eb4c			JMP 0xe30264						
  taskservice.go:277	0xe30218		488d0549a53400		LEAQ go:string.*+74336(SB), AX				
  taskservice.go:277	0xe3021f		bb0f000000		MOVL $__major_os_version__+9(SB), BX			
  taskservice.go:277	0xe30224		31c9			XORL CX, CX						
  taskservice.go:277	0xe30226		31ff			XORL DI, DI						
  taskservice.go:277	0xe30228		4889fe			MOVQ DI, SI						
  taskservice.go:277	0xe3022b		e890c16eff		CALL fmt.Errorf(SB)					
  taskservice.go:277	0xe30230		0f57c0			XORPS X0, X0						
  taskservice.go:277	0xe30233		0f10c8			MOVUPS X0, X1						
  taskservice.go:277	0xe30236		4883c468		ADDQ $.file+27(SB), SP					
  taskservice.go:277	0xe3023a		5d			POPQ BP							
  taskservice.go:277	0xe3023b		c3			RET							
  taskservice.go:274	0xe3023c		488d0516a53400		LEAQ go:string.*+74321(SB), AX				
  taskservice.go:274	0xe30243		bb0f000000		MOVL $__major_os_version__+9(SB), BX			
  taskservice.go:274	0xe30248		31c9			XORL CX, CX						
  taskservice.go:274	0xe3024a		31ff			XORL DI, DI						
  taskservice.go:274	0xe3024c		4889fe			MOVQ DI, SI						
  taskservice.go:274	0xe3024f		e86cc16eff		CALL fmt.Errorf(SB)					
  taskservice.go:274	0xe30254		0f57c0			XORPS X0, X0						
  taskservice.go:274	0xe30257		0f10c8			MOVUPS X0, X1						
  taskservice.go:274	0xe3025a		4883c468		ADDQ $.file+27(SB), SP					
  taskservice.go:274	0xe3025e		5d			POPQ BP							
  taskservice.go:274	0xe3025f		90			NOPL							
  taskservice.go:274	0xe30260		c3			RET							
  taskservice.go:279	0xe30261		48ffc1			INCQ CX							
  taskservice.go:279	0xe30264		4839d1			CMPQ CX, DX						
  taskservice.go:279	0xe30267		7d70			JGE 0xe302d9						
  taskservice.go:279	0xe30269		488b3cce		MOVQ 0(SI)(CX*8), DI					
  taskservice.go:280	0xe3026d		4885ff			TESTQ DI, DI						
  taskservice.go:280	0xe30270		74ef			JE 0xe30261						
  taskservice.go:280	0xe30272		4c8b4708		MOVQ 0x8(DI), R8					
  taskservice.go:280	0xe30276		4c39c3			CMPQ BX, R8						
  taskservice.go:280	0xe30279		7407			JE 0xe30282						
  taskservice.go:280	0xe3027b		4531c0			XORL R8, R8						
  taskservice.go:280	0xe3027e		6690			NOPW							
  taskservice.go:280	0xe30280		eb3e			JMP 0xe302c0						
  taskservice.go:279	0xe30282		48894c2428		MOVQ CX, 0x28(SP)					
  taskservice.go:279	0xe30287		48897c2440		MOVQ DI, 0x40(SP)					
  taskservice.go:280	0xe3028c		488b17			MOVQ 0(DI), DX						
  taskservice.go:280	0xe3028f		4889c3			MOVQ AX, BX						
  taskservice.go:280	0xe30292		4c89c1			MOVQ R8, CX						
  taskservice.go:280	0xe30295		4889d0			MOVQ DX, AX						
  taskservice.go:280	0xe30298		e8c32b5dff		CALL runtime.memequal(SB)				
  taskservice.go:279	0xe3029d		488b4c2428		MOVQ 0x28(SP), CX					
  taskservice.go:279	0xe302a2		488b542430		MOVQ 0x30(SP), DX					
  taskservice.go:280	0xe302a7		488b5c2438		MOVQ 0x38(SP), BX					
  taskservice.go:279	0xe302ac		488b742458		MOVQ 0x58(SP), SI					
  taskservice.go:281	0xe302b1		488b7c2440		MOVQ 0x40(SP), DI					
  taskservice.go:280	0xe302b6		4189c0			MOVL AX, R8						
  taskservice.go:286	0xe302b9		488b442460		MOVQ 0x60(SP), AX					
  taskservice.go:286	0xe302be		6690			NOPW							
  taskservice.go:280	0xe302c0		4584c0			TESTL R8, R8						
  taskservice.go:280	0xe302c3		749c			JE 0xe30261						
  taskservice.go:281	0xe302c5		f20f104710		MOVSD_XMM 0x10(DI), X0					
  taskservice.go:282	0xe302ca		f20f104f18		MOVSD_XMM 0x18(DI), X1					
  taskservice.go:283	0xe302cf		31c0			XORL AX, AX						
  taskservice.go:283	0xe302d1		31db			XORL BX, BX						
  taskservice.go:283	0xe302d3		4883c468		ADDQ $.file+27(SB), SP					
  taskservice.go:283	0xe302d7		5d			POPQ BP							
  taskservice.go:283	0xe302d8		c3			RET							
  taskservice.go:286	0xe302d9		440f117c2448		MOVUPS X15, 0x48(SP)					
  taskservice.go:286	0xe302df		90			NOPL							
  taskservice.go:286	0xe302e0		e83b9e63ff		CALL runtime.convTstring(SB)				
  taskservice.go:286	0xe302e5		488d0d34262100		LEAQ runtime.types+383264(SB), CX			
  taskservice.go:286	0xe302ec		48894c2448		MOVQ CX, 0x48(SP)					
  taskservice.go:286	0xe302f1		4889442450		MOVQ AX, 0x50(SP)					
  taskservice.go:286	0xe302f6		488d052d823600		LEAQ go:string.*+196642(SB), AX				
  taskservice.go:286	0xe302fd		bb2b000000		MOVL $__major_os_version__+37(SB), BX			
  taskservice.go:286	0xe30302		488d4c2448		LEAQ 0x48(SP), CX					
  taskservice.go:286	0xe30307		bf01000000		MOVL $__minor_os_version__(SB), DI			
  taskservice.go:286	0xe3030c		4889fe			MOVQ DI, SI						
  taskservice.go:286	0xe3030f		e8acc06eff		CALL fmt.Errorf(SB)					
  taskservice.go:286	0xe30314		0f57c0			XORPS X0, X0						
  taskservice.go:286	0xe30317		0f10c8			MOVUPS X0, X1						
  taskservice.go:286	0xe3031a		4883c468		ADDQ $.file+27(SB), SP					
  taskservice.go:286	0xe3031e		5d			POPQ BP							
  taskservice.go:286	0xe3031f		90			NOPL							
  taskservice.go:286	0xe30320		c3			RET							
  taskservice.go:270	0xe30321		4889442408		MOVQ AX, 0x8(SP)					
  taskservice.go:270	0xe30326		48895c2410		MOVQ BX, 0x10(SP)					
  taskservice.go:270	0xe3032b		48894c2418		MOVQ CX, 0x18(SP)					
  taskservice.go:270	0xe30330		e8ab6164ff		CALL runtime.morestack_noctxt.abi0(SB)			
  taskservice.go:270	0xe30335		488b442408		MOVQ 0x8(SP), AX					
  taskservice.go:270	0xe3033a		488b5c2410		MOVQ 0x10(SP), BX					
  taskservice.go:270	0xe3033f		488b4c2418		MOVQ 0x18(SP), CX					
  taskservice.go:270	0xe30344		e977feffff		JMP CAS-Backend/pkg/diapdu.locationForStationName(SB)	
  :-1			0xe30349		cc			INT $__subsystem__(SB)					
  :-1			0xe3034a		cc			INT $__subsystem__(SB)					
  :-1			0xe3034b		cc			INT $__subsystem__(SB)					
  :-1			0xe3034c		cc			INT $__subsystem__(SB)					
  :-1			0xe3034d		cc			INT $__subsystem__(SB)					
  :-1			0xe3034e		cc			INT $__subsystem__(SB)					
  :-1			0xe3034f		cc			INT $__subsystem__(SB)					
  :-1			0xe30350		cc			INT $__subsystem__(SB)					
  :-1			0xe30351		cc			INT $__subsystem__(SB)					
  :-1			0xe30352		cc			INT $__subsystem__(SB)					
  :-1			0xe30353		cc			INT $__subsystem__(SB)					
  :-1			0xe30354		cc			INT $__subsystem__(SB)					
  :-1			0xe30355		cc			INT $__subsystem__(SB)					
  :-1			0xe30356		cc			INT $__subsystem__(SB)					
  :-1			0xe30357		cc			INT $__subsystem__(SB)					
  :-1			0xe30358		cc			INT $__subsystem__(SB)					
  :-1			0xe30359		cc			INT $__subsystem__(SB)					
  :-1			0xe3035a		cc			INT $__subsystem__(SB)					
  :-1			0xe3035b		cc			INT $__subsystem__(SB)					
  :-1			0xe3035c		cc			INT $__subsystem__(SB)					
  :-1			0xe3035d		cc			INT $__subsystem__(SB)					
  :-1			0xe3035e		cc			INT $__subsystem__(SB)					
  :-1			0xe3035f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.parsePositionData(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:301	0xe30360		4c8d6424e8		LEAQ -0x18(SP), R12					
  taskservice.go:301	0xe30365		4d3b6610		CMPQ R12, 0x10(R14)					
  taskservice.go:301	0xe30369		0f864f020000		JBE 0xe305be						
  taskservice.go:301	0xe3036f		55			PUSHQ BP						
  taskservice.go:301	0xe30370		4889e5			MOVQ SP, BP						
  taskservice.go:301	0xe30373		4881ec90000000		SUBQ $.file+67(SB), SP					
  taskservice.go:303	0xe3037a		48898424b0000000	MOVQ AX, 0xb0(SP)					
  taskservice.go:303	0xe30382		48899c24b8000000	MOVQ BX, 0xb8(SP)					
  taskservice.go:301	0xe3038a		488d7c2428		LEAQ 0x28(SP), DI					
  taskservice.go:301	0xe3038f		488d7fe0		LEAQ -0x20(DI), DI					
  taskservice.go:301	0xe30393		660f1f840000000000	NOPW 0(AX)(AX*1)					
  taskservice.go:301	0xe3039c		0f1f4000		NOPL 0(AX)						
  taskservice.go:301	0xe303a0		48896c24f0		MOVQ BP, -0x10(SP)					
  taskservice.go:301	0xe303a5		488d6c24f0		LEAQ -0x10(SP), BP					
  taskservice.go:301	0xe303aa		e83c8764ff		CALL 0x478aeb						
  taskservice.go:301	0xe303af		488b6d00		MOVQ 0(BP), BP						
  taskservice.go:302	0xe303b3		488d0526d62e00		LEAQ runtime.types+1280480(SB), AX			
  taskservice.go:302	0xe303ba		e8e1135eff		CALL runtime.newobject(SB)				
  taskservice.go:302	0xe303bf		4889842488000000	MOVQ AX, 0x88(SP)					
  taskservice.go:303	0xe303c7		488b8c24b8000000	MOVQ 0xb8(SP), CX					
  taskservice.go:303	0xe303cf		4885c9			TESTQ CX, CX						
  taskservice.go:303	0xe303d2		0f8432010000		JE 0xe3050a						
  taskservice.go:306	0xe303d8		31c0			XORL AX, AX						
  taskservice.go:306	0xe303da		488b9c24b0000000	MOVQ 0xb0(SP), BX					
  taskservice.go:306	0xe303e2		e8595462ff		CALL runtime.stringtoslicebyte(SB)			
  taskservice.go:306	0xe303e7		488d3d323c1f00		LEAQ runtime.types+258080(SB), DI			
  taskservice.go:306	0xe303ee		488bb42488000000	MOVQ 0x88(SP), SI					
  taskservice.go:306	0xe303f6		e8e57073ff		CALL encoding/json.Unmarshal(SB)			
  taskservice.go:306	0xe303fb		0f1f440000		NOPL 0(AX)(AX*1)					
  taskservice.go:306	0xe30400		4885c0			TESTQ AX, AX						
  taskservice.go:306	0xe30403		0f848c000000		JE 0xe30495						
  taskservice.go:307	0xe30409		488d7c2428		LEAQ 0x28(SP), DI					
  taskservice.go:307	0xe3040e		488bb42488000000	MOVQ 0x88(SP), SI					
  taskservice.go:307	0xe30416		660f1f840000000000	NOPW 0(AX)(AX*1)					
  taskservice.go:307	0xe3041f		90			NOPL							
  taskservice.go:307	0xe30420		48896c24f0		MOVQ BP, -0x10(SP)					
  taskservice.go:307	0xe30425		488d6c24f0		LEAQ -0x10(SP), BP					
  taskservice.go:307	0xe3042a		e81d8a64ff		CALL 0x478e4c						
  taskservice.go:307	0xe3042f		488b6d00		MOVQ 0(BP), BP						
  taskservice.go:307	0xe30433		488b542428		MOVQ 0x28(SP), DX					
  taskservice.go:307	0xe30438		4c8b5c2430		MOVQ 0x30(SP), R11					
  taskservice.go:307	0xe3043d		488b4c2438		MOVQ 0x38(SP), CX					
  taskservice.go:307	0xe30442		488b7c2440		MOVQ 0x40(SP), DI					
  taskservice.go:307	0xe30447		488b742448		MOVQ 0x48(SP), SI					
  taskservice.go:307	0xe3044c		4c8b442450		MOVQ 0x50(SP), R8					
  taskservice.go:307	0xe30451		f20f10442458		MOVSD_XMM 0x58(SP), X0					
  taskservice.go:307	0xe30457		4c8b4c2460		MOVQ 0x60(SP), R9					
  taskservice.go:307	0xe3045c		4c8b542468		MOVQ 0x68(SP), R10					
  taskservice.go:307	0xe30461		f20f104c2470		MOVSD_XMM 0x70(SP), X1					
  taskservice.go:307	0xe30467		f20f10542478		MOVSD_XMM 0x78(SP), X2					
  taskservice.go:307	0xe3046d		f20f109c2480000000	MOVSD_XMM 0x80(SP), X3					
  taskservice.go:307	0xe30476		48898424a0000000	MOVQ AX, 0xa0(SP)					
  taskservice.go:307	0xe3047e		48899c24a8000000	MOVQ BX, 0xa8(SP)					
  taskservice.go:307	0xe30486		4889d0			MOVQ DX, AX						
  taskservice.go:307	0xe30489		4c89db			MOVQ R11, BX						
  taskservice.go:307	0xe3048c		4881c490000000		ADDQ $.file+67(SB), SP					
  taskservice.go:307	0xe30493		5d			POPQ BP							
  taskservice.go:307	0xe30494		c3			RET							
  taskservice.go:309	0xe30495		488d7c2428		LEAQ 0x28(SP), DI					
  taskservice.go:309	0xe3049a		488bb42488000000	MOVQ 0x88(SP), SI					
  taskservice.go:309	0xe304a2		48896c24f0		MOVQ BP, -0x10(SP)					
  taskservice.go:309	0xe304a7		488d6c24f0		LEAQ -0x10(SP), BP					
  taskservice.go:309	0xe304ac		e89b8964ff		CALL 0x478e4c						
  taskservice.go:309	0xe304b1		488b6d00		MOVQ 0(BP), BP						
  taskservice.go:309	0xe304b5		488b442428		MOVQ 0x28(SP), AX					
  taskservice.go:309	0xe304ba		488b5c2430		MOVQ 0x30(SP), BX					
  taskservice.go:309	0xe304bf		488b4c2438		MOVQ 0x38(SP), CX					
  taskservice.go:309	0xe304c4		488b7c2440		MOVQ 0x40(SP), DI					
  taskservice.go:309	0xe304c9		488b742448		MOVQ 0x48(SP), SI					
  taskservice.go:309	0xe304ce		4c8b442450		MOVQ 0x50(SP), R8					
  taskservice.go:309	0xe304d3		f20f10442458		MOVSD_XMM 0x58(SP), X0					
  taskservice.go:309	0xe304d9		4c8b4c2460		MOVQ 0x60(SP), R9					
  taskservice.go:309	0xe304de		4c8b542468		MOVQ 0x68(SP), R10					
  taskservice.go:309	0xe304e3		f20f104c2470		MOVSD_XMM 0x70(SP), X1					
  taskservice.go:309	0xe304e9		f20f10542478		MOVSD_XMM 0x78(SP), X2					
  taskservice.go:309	0xe304ef		f20f109c2480000000	MOVSD_XMM 0x80(SP), X3					
  taskservice.go:309	0xe304f8		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)					
  taskservice.go:309	0xe30501		4881c490000000		ADDQ $.file+67(SB), SP					
  taskservice.go:309	0xe30508		5d			POPQ BP							
  taskservice.go:309	0xe30509		c3			RET							
  taskservice.go:304	0xe3050a		488d057d0d3500		LEAQ go:string.*+101766(SB), AX				
  taskservice.go:304	0xe30511		bb15000000		MOVL $__major_os_version__+15(SB), BX			
  taskservice.go:304	0xe30516		31c9			XORL CX, CX						
  taskservice.go:304	0xe30518		31ff			XORL DI, DI						
  taskservice.go:304	0xe3051a		4889fe			MOVQ DI, SI						
  taskservice.go:304	0xe3051d		0f1f00			NOPL 0(AX)						
  taskservice.go:304	0xe30520		e89bbe6eff		CALL fmt.Errorf(SB)					
  taskservice.go:304	0xe30525		488d7c2428		LEAQ 0x28(SP), DI					
  taskservice.go:304	0xe3052a		488bb42488000000	MOVQ 0x88(SP), SI					
  taskservice.go:304	0xe30532		660f1f840000000000	NOPW 0(AX)(AX*1)					
  taskservice.go:304	0xe3053b		0f1f440000		NOPL 0(AX)(AX*1)					
  taskservice.go:304	0xe30540		48896c24f0		MOVQ BP, -0x10(SP)					
  taskservice.go:304	0xe30545		488d6c24f0		LEAQ -0x10(SP), BP					
  taskservice.go:304	0xe3054a		e8fd8864ff		CALL 0x478e4c						
  taskservice.go:304	0xe3054f		488b6d00		MOVQ 0(BP), BP						
  taskservice.go:304	0xe30553		488b542428		MOVQ 0x28(SP), DX					
  taskservice.go:304	0xe30558		4c8b442430		MOVQ 0x30(SP), R8					
  taskservice.go:304	0xe3055d		488b4c2438		MOVQ 0x38(SP), CX					
  taskservice.go:304	0xe30562		488b7c2440		MOVQ 0x40(SP), DI					
  taskservice.go:304	0xe30567		488b742448		MOVQ 0x48(SP), SI					
  taskservice.go:304	0xe3056c		4c8b4c2450		MOVQ 0x50(SP), R9					
  taskservice.go:304	0xe30571		f20f10442458		MOVSD_XMM 0x58(SP), X0					
  taskservice.go:304	0xe30577		4c8b542460		MOVQ 0x60(SP), R10					
  taskservice.go:304	0xe3057c		4c8b5c2468		MOVQ 0x68(SP), R11					
  taskservice.go:304	0xe30581		f20f104c2470		MOVSD_XMM 0x70(SP), X1					
  taskservice.go:304	0xe30587		f20f10542478		MOVSD_XMM 0x78(SP), X2					
  taskservice.go:304	0xe3058d		f20f109c2480000000	MOVSD_XMM 0x80(SP), X3					
  taskservice.go:304	0xe30596		48898424a0000000	MOVQ AX, 0xa0(SP)					
  taskservice.go:304	0xe3059e		48899c24a8000000	MOVQ BX, 0xa8(SP)					
  taskservice.go:304	0xe305a6		4889d0			MOVQ DX, AX						
  taskservice.go:304	0xe305a9		4c89c3			MOVQ R8, BX						
  taskservice.go:304	0xe305ac		4d89c8			MOVQ R9, R8						
  taskservice.go:304	0xe305af		4d89d1			MOVQ R10, R9						
  taskservice.go:304	0xe305b2		4d89da			MOVQ R11, R10						
  taskservice.go:304	0xe305b5		4881c490000000		ADDQ $.file+67(SB), SP					
  taskservice.go:304	0xe305bc		5d			POPQ BP							
  taskservice.go:304	0xe305bd		c3			RET							
  taskservice.go:301	0xe305be		4889442418		MOVQ AX, 0x18(SP)					
  taskservice.go:301	0xe305c3		48895c2420		MOVQ BX, 0x20(SP)					
  taskservice.go:301	0xe305c8		e8135f64ff		CALL runtime.morestack_noctxt.abi0(SB)			
  taskservice.go:301	0xe305cd		488b442418		MOVQ 0x18(SP), AX					
  taskservice.go:301	0xe305d2		488b5c2420		MOVQ 0x20(SP), BX					
  taskservice.go:301	0xe305d7		e984fdffff		JMP CAS-Backend/pkg/diapdu.parsePositionData(SB)	
  :-1			0xe305dc		cc			INT $__subsystem__(SB)					
  :-1			0xe305dd		cc			INT $__subsystem__(SB)					
  :-1			0xe305de		cc			INT $__subsystem__(SB)					
  :-1			0xe305df		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.parseWaypointStations(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:319	0xe305e0		493b6610		CMPQ SP, 0x10(R14)					
  taskservice.go:319	0xe305e4		0f8631010000		JBE 0xe3071b						
  taskservice.go:319	0xe305ea		55			PUSHQ BP						
  taskservice.go:319	0xe305eb		4889e5			MOVQ SP, BP						
  taskservice.go:319	0xe305ee		4883ec78		SUBQ $.file+43(SB), SP					
  taskservice.go:319	0xe305f2		4889842488000000	MOVQ AX, 0x88(SP)					
  taskservice.go:320	0xe305fa		4885db			TESTQ BX, BX						
  taskservice.go:320	0xe305fd		7423			JE 0xe30622						
  strings.go:306	0xe305ff		488d0db2460302		LEAQ runtime.gcbits.*+504(SB), CX			
  strings.go:306	0xe30606		bf01000000		MOVL $__minor_os_version__(SB), DI			
  strings.go:306	0xe3060b		31f6			XORL SI, SI						
  strings.go:306	0xe3060d		49c7c0ffffffff		MOVQ $-0x1, R8						
  strings.go:306	0xe30614		e887f86aff		CALL strings.genSplit(SB)				
  taskservice.go:324	0xe30619		31c9			XORL CX, CX						
  taskservice.go:324	0xe3061b		31d2			XORL DX, DX						
  taskservice.go:324	0xe3061d		31f6			XORL SI, SI						
  taskservice.go:324	0xe3061f		90			NOPL							
  taskservice.go:324	0xe30620		eb27			JMP 0xe30649						
  taskservice.go:321	0xe30622		31c0			XORL AX, AX						
  taskservice.go:321	0xe30624		31db			XORL BX, BX						
  taskservice.go:321	0xe30626		4889d9			MOVQ BX, CX						
  taskservice.go:321	0xe30629		4883c478		ADDQ $.file+43(SB), SP					
  taskservice.go:321	0xe3062d		5d			POPQ BP							
  taskservice.go:321	0xe3062e		c3			RET							
  taskservice.go:324	0xe3062f		488b442470		MOVQ 0x70(SP), AX					
  taskservice.go:324	0xe30634		4883c010		ADDQ $__major_os_version__+10(SB), AX			
  taskservice.go:324	0xe30638		488b5c2458		MOVQ 0x58(SP), BX					
  taskservice.go:324	0xe3063d		48ffcb			DECQ BX							
  taskservice.go:327	0xe30640		4889d7			MOVQ DX, DI						
  taskservice.go:327	0xe30643		4889f2			MOVQ SI, DX						
  taskservice.go:327	0xe30646		4889fe			MOVQ DI, SI						
  taskservice.go:324	0xe30649		4885db			TESTQ BX, BX						
  taskservice.go:324	0xe3064c		0f8ebd000000		JLE 0xe3070f						
  taskservice.go:324	0xe30652		48895c2458		MOVQ BX, 0x58(SP)					
  taskservice.go:327	0xe30657		4889542468		MOVQ DX, 0x68(SP)					
  taskservice.go:327	0xe3065c		4889742448		MOVQ SI, 0x48(SP)					
  taskservice.go:327	0xe30661		48894c2450		MOVQ CX, 0x50(SP)					
  taskservice.go:324	0xe30666		4889442470		MOVQ AX, 0x70(SP)					
  taskservice.go:324	0xe3066b		488b08			MOVQ 0(AX), CX						
  taskservice.go:324	0xe3066e		488b5808		MOVQ 0x8(AX), BX					
  taskservice.go:325	0xe30672		4889c8			MOVQ CX, AX						
  taskservice.go:325	0xe30675		e846236bff		CALL strings.TrimSpace(SB)				
  taskservice.go:326	0xe3067a		4885db			TESTQ BX, BX						
  taskservice.go:326	0xe3067d		747c			JE 0xe306fb						
  taskservice.go:327	0xe3067f		488b542448		MOVQ 0x48(SP), DX					
  taskservice.go:327	0xe30684		48ffc2			INCQ DX							
  taskservice.go:327	0xe30687		488b4c2450		MOVQ 0x50(SP), CX					
  taskservice.go:327	0xe3068c		4839d1			CMPQ CX, DX						
  taskservice.go:327	0xe3068f		7207			JB 0xe30698						
  taskservice.go:327	0xe30691		488b742468		MOVQ 0x68(SP), SI					
  taskservice.go:327	0xe30696		eb33			JMP 0xe306cb						
  taskservice.go:325	0xe30698		4889442460		MOVQ AX, 0x60(SP)					
  taskservice.go:325	0xe3069d		48895c2440		MOVQ BX, 0x40(SP)					
  taskservice.go:327	0xe306a2		488b442468		MOVQ 0x68(SP), AX					
  taskservice.go:327	0xe306a7		4889d3			MOVQ DX, BX						
  taskservice.go:327	0xe306aa		bf01000000		MOVL $__minor_os_version__(SB), DI			
  taskservice.go:327	0xe306af		488d356a222100		LEAQ runtime.types+383264(SB), SI			
  taskservice.go:327	0xe306b6		e8851564ff		CALL runtime.growslice(SB)				
  taskservice.go:327	0xe306bb		4889c6			MOVQ AX, SI						
  taskservice.go:327	0xe306be		4889da			MOVQ BX, DX						
  taskservice.go:327	0xe306c1		488b442460		MOVQ 0x60(SP), AX					
  taskservice.go:327	0xe306c6		488b5c2440		MOVQ 0x40(SP), BX					
  taskservice.go:327	0xe306cb		488d7aff		LEAQ -0x1(DX), DI					
  taskservice.go:327	0xe306cf		48c1e704		SHLQ $__subsystem__+1(SB), DI				
  taskservice.go:327	0xe306d3		48895c3e08		MOVQ BX, 0x8(SI)(DI*1)					
  taskservice.go:327	0xe306d8		833d71d4720200		CMPL runtime.writeBarrier(SB), $0x0			
  taskservice.go:327	0xe306df		90			NOPL							
  taskservice.go:327	0xe306e0		7410			JE 0xe306f2						
  taskservice.go:327	0xe306e2		e8597d64ff		CALL runtime.gcWriteBarrier2(SB)			
  taskservice.go:327	0xe306e7		498903			MOVQ AX, 0(R11)						
  taskservice.go:327	0xe306ea		4c8b043e		MOVQ 0(SI)(DI*1), R8					
  taskservice.go:327	0xe306ee		4d894308		MOVQ R8, 0x8(R11)					
  taskservice.go:327	0xe306f2		4889043e		MOVQ AX, 0(SI)(DI*1)					
  taskservice.go:327	0xe306f6		e934ffffff		JMP 0xe3062f						
  taskservice.go:327	0xe306fb		488b542448		MOVQ 0x48(SP), DX					
  taskservice.go:327	0xe30700		488b4c2450		MOVQ 0x50(SP), CX					
  taskservice.go:327	0xe30705		488b742468		MOVQ 0x68(SP), SI					
  taskservice.go:326	0xe3070a		e920ffffff		JMP 0xe3062f						
  taskservice.go:330	0xe3070f		4889d0			MOVQ DX, AX						
  taskservice.go:330	0xe30712		4889f3			MOVQ SI, BX						
  taskservice.go:330	0xe30715		4883c478		ADDQ $.file+43(SB), SP					
  taskservice.go:330	0xe30719		5d			POPQ BP							
  taskservice.go:330	0xe3071a		c3			RET							
  taskservice.go:319	0xe3071b		4889442408		MOVQ AX, 0x8(SP)					
  taskservice.go:319	0xe30720		48895c2410		MOVQ BX, 0x10(SP)					
  taskservice.go:319	0xe30725		e8b65d64ff		CALL runtime.morestack_noctxt.abi0(SB)			
  taskservice.go:319	0xe3072a		488b442408		MOVQ 0x8(SP), AX					
  taskservice.go:319	0xe3072f		488b5c2410		MOVQ 0x10(SP), BX					
  taskservice.go:319	0xe30734		e9a7feffff		JMP CAS-Backend/pkg/diapdu.parseWaypointStations(SB)	
  :-1			0xe30739		cc			INT $__subsystem__(SB)					
  :-1			0xe3073a		cc			INT $__subsystem__(SB)					
  :-1			0xe3073b		cc			INT $__subsystem__(SB)					
  :-1			0xe3073c		cc			INT $__subsystem__(SB)					
  :-1			0xe3073d		cc			INT $__subsystem__(SB)					
  :-1			0xe3073e		cc			INT $__subsystem__(SB)					
  :-1			0xe3073f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).scheduleLoop(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:348	0xe30740		4c8d6424f8		LEAQ -0x8(SP), R12								
  taskservice.go:348	0xe30745		4d3b6610		CMPQ R12, 0x10(R14)								
  taskservice.go:348	0xe30749		0f86dc000000		JBE 0xe3082b									
  taskservice.go:348	0xe3074f		55			PUSHQ BP									
  taskservice.go:348	0xe30750		4889e5			MOVQ SP, BP									
  taskservice.go:348	0xe30753		4883c480		ADDQ $-0x80, SP									
  taskservice.go:348	0xe30757		66440fd67c2478		MOVQ X15, 0x78(SP)								
  taskservice.go:352	0xe3075e		4889842490000000	MOVQ AX, 0x90(SP)								
  taskservice.go:348	0xe30766		c644243700		MOVB $0x0, 0x37(SP)								
  taskservice.go:349	0xe3076b		488b4830		MOVQ 0x30(AX), CX								
  taskservice.go:349	0xe3076f		4889c8			MOVQ CX, AX									
  taskservice.go:349	0xe30772		e8692567ff		CALL time.NewTicker(SB)								
  taskservice.go:349	0xe30777		4889442440		MOVQ AX, 0x40(SP)								
  taskservice.go:350	0xe3077c		488d0dbd000000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).scheduleLoop.deferwrap1(SB), CX	
  taskservice.go:350	0xe30783		48894c2468		MOVQ CX, 0x68(SP)								
  taskservice.go:350	0xe30788		4889442470		MOVQ AX, 0x70(SP)								
  taskservice.go:350	0xe3078d		488d4c2468		LEAQ 0x68(SP), CX								
  taskservice.go:350	0xe30792		48894c2478		MOVQ CX, 0x78(SP)								
  taskservice.go:350	0xe30797		c644243701		MOVB $__minor_os_version__(SB), 0x37(SP)					
  taskservice.go:352	0xe3079c		eb20			JMP 0xe307be									
  taskservice.go:357	0xe3079e		488b842490000000	MOVQ 0x90(SP), AX								
  taskservice.go:357	0xe307a6		e8750f0000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).processTasks(SB)			
  taskservice.go:358	0xe307ab		90			NOPL										
  taskservice.go:829	0xe307ac		488b842490000000	MOVQ 0x90(SP), AX								
  taskservice.go:829	0xe307b4		e8470d0000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).returnIdleVehiclesToDock(SB)	
  taskservice.go:356	0xe307b9		488b442440		MOVQ 0x40(SP), AX								
  taskservice.go:354	0xe307be		488b942490000000	MOVQ 0x90(SP), DX								
  taskservice.go:354	0xe307c6		4c8b4a28		MOVQ 0x28(DX), R9								
  taskservice.go:356	0xe307ca		4c8b10			MOVQ 0(AX), R10									
  taskservice.go:353	0xe307cd		440f117c2448		MOVUPS X15, 0x48(SP)								
  taskservice.go:353	0xe307d3		440f117c2458		MOVUPS X15, 0x58(SP)								
  taskservice.go:354	0xe307d9		4c894c2458		MOVQ R9, 0x58(SP)								
  taskservice.go:356	0xe307de		4c89542448		MOVQ R10, 0x48(SP)								
  taskservice.go:353	0xe307e3		488d5c2438		LEAQ 0x38(SP), BX								
  taskservice.go:353	0xe307e8		31c9			XORL CX, CX									
  taskservice.go:353	0xe307ea		31ff			XORL DI, DI									
  taskservice.go:353	0xe307ec		be02000000		MOVL $__minor_os_version__+1(SB), SI						
  taskservice.go:353	0xe307f1		41b801000000		MOVL $__minor_os_version__(SB), R8						
  taskservice.go:353	0xe307f7		488d442448		LEAQ 0x48(SP), AX								
  taskservice.go:353	0xe307fc		0f1f4000		NOPL 0(AX)									
  taskservice.go:353	0xe30800		e8fbdc61ff		CALL runtime.selectgo(SB)							
  taskservice.go:356	0xe30805		4885c0			TESTQ AX, AX									
  taskservice.go:356	0xe30808		7494			JE 0xe3079e									
  taskservice.go:355	0xe3080a		c644243700		MOVB $0x0, 0x37(SP)								
  taskservice.go:355	0xe3080f		488b542478		MOVQ 0x78(SP), DX								
  taskservice.go:355	0xe30814		488b02			MOVQ 0(DX), AX									
  taskservice.go:355	0xe30817		ffd0			CALL AX										
  taskservice.go:355	0xe30819		4883ec80		SUBQ $-0x80, SP									
  taskservice.go:355	0xe3081d		5d			POPQ BP										
  taskservice.go:355	0xe3081e		c3			RET										
  taskservice.go:355	0xe3081f		90			NOPL										
  taskservice.go:355	0xe30820		e85b9360ff		CALL runtime.deferreturn(SB)							
  taskservice.go:355	0xe30825		4883ec80		SUBQ $-0x80, SP									
  taskservice.go:355	0xe30829		5d			POPQ BP										
  taskservice.go:355	0xe3082a		c3			RET										
  taskservice.go:348	0xe3082b		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:348	0xe30830		e8ab5c64ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:348	0xe30835		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:348	0xe3083a		e901ffffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).scheduleLoop(SB)			
  :-1			0xe3083f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).scheduleLoop.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:350	0xe30840		493b6610		CMPQ SP, 0x10(R14)							
  taskservice.go:350	0xe30844		7627			JBE 0xe3086d								
  taskservice.go:350	0xe30846		55			PUSHQ BP								
  taskservice.go:350	0xe30847		4889e5			MOVQ SP, BP								
  taskservice.go:350	0xe3084a		4883ec08		SUBQ $__major_os_version__+2(SB), SP					
  taskservice.go:350	0xe3084e		4d8b6620		MOVQ 0x20(R14), R12							
  taskservice.go:350	0xe30852		4d85e4			TESTQ R12, R12								
  taskservice.go:350	0xe30855		751d			JNE 0xe30874								
  taskservice.go:350	0xe30857		488b4208		MOVQ 0x8(DX), AX							
  tick.go:53		0xe3085b		80780800		CMPB 0x8(AX), $0x0							
  tick.go:53		0xe3085f		90			NOPL									
  tick.go:53		0xe30860		7405			JE 0xe30867								
  tick.go:59		0xe30862		e8193b64ff		CALL time.stopTimer(SB)							
  taskservice.go:350	0xe30867		4883c408		ADDQ $__major_os_version__+2(SB), SP					
  taskservice.go:350	0xe3086b		5d			POPQ BP									
  taskservice.go:350	0xe3086c		c3			RET									
  taskservice.go:350	0xe3086d		e8ee5b64ff		CALL runtime.morestack.abi0(SB)						
  taskservice.go:350	0xe30872		ebcc			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).scheduleLoop.deferwrap1(SB)	
  taskservice.go:350	0xe30874		4c8d6c2418		LEAQ 0x18(SP), R13							
  taskservice.go:350	0xe30879		4d392c24		CMPQ 0(R12), R13							
  taskservice.go:350	0xe3087d		75d8			JNE 0xe30857								
  taskservice.go:350	0xe3087f		49892424		MOVQ SP, 0(R12)								
  taskservice.go:350	0xe30883		ebd2			JMP 0xe30857								
  :-1			0xe30885		cc			INT $__subsystem__(SB)							
  :-1			0xe30886		cc			INT $__subsystem__(SB)							
  :-1			0xe30887		cc			INT $__subsystem__(SB)							
  :-1			0xe30888		cc			INT $__subsystem__(SB)							
  :-1			0xe30889		cc			INT $__subsystem__(SB)							
  :-1			0xe3088a		cc			INT $__subsystem__(SB)							
  :-1			0xe3088b		cc			INT $__subsystem__(SB)							
  :-1			0xe3088c		cc			INT $__subsystem__(SB)							
  :-1			0xe3088d		cc			INT $__subsystem__(SB)							
  :-1			0xe3088e		cc			INT $__subsystem__(SB)							
  :-1			0xe3088f		cc			INT $__subsystem__(SB)							
  :-1			0xe30890		cc			INT $__subsystem__(SB)							
  :-1			0xe30891		cc			INT $__subsystem__(SB)							
  :-1			0xe30892		cc			INT $__subsystem__(SB)							
  :-1			0xe30893		cc			INT $__subsystem__(SB)							
  :-1			0xe30894		cc			INT $__subsystem__(SB)							
  :-1			0xe30895		cc			INT $__subsystem__(SB)							
  :-1			0xe30896		cc			INT $__subsystem__(SB)							
  :-1			0xe30897		cc			INT $__subsystem__(SB)							
  :-1			0xe30898		cc			INT $__subsystem__(SB)							
  :-1			0xe30899		cc			INT $__subsystem__(SB)							
  :-1			0xe3089a		cc			INT $__subsystem__(SB)							
  :-1			0xe3089b		cc			INT $__subsystem__(SB)							
  :-1			0xe3089c		cc			INT $__subsystem__(SB)							
  :-1			0xe3089d		cc			INT $__subsystem__(SB)							
  :-1			0xe3089e		cc			INT $__subsystem__(SB)							
  :-1			0xe3089f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).planTaskPath(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:364	0xe308a0		4c8d6424f0		LEAQ -0x10(SP), R12							
  taskservice.go:364	0xe308a5		4d3b6610		CMPQ R12, 0x10(R14)							
  taskservice.go:364	0xe308a9		0f86b0010000		JBE 0xe30a5f								
  taskservice.go:364	0xe308af		55			PUSHQ BP								
  taskservice.go:364	0xe308b0		4889e5			MOVQ SP, BP								
  taskservice.go:364	0xe308b3		4881ec88000000		SUBQ $.file+59(SB), SP							
  taskservice.go:366	0xe308ba		488b5040		MOVQ 0x40(AX), DX							
  taskservice.go:365	0xe308be		f20f104328		MOVSD_XMM 0x28(BX), X0							
  taskservice.go:365	0xe308c3		f20f104b30		MOVSD_XMM 0x30(BX), X1							
  taskservice.go:366	0xe308c8		4885d2			TESTQ DX, DX								
  taskservice.go:366	0xe308cb		0f8443010000		JE 0xe30a14								
  taskservice.go:366	0xe308d1		4889842498000000	MOVQ AX, 0x98(SP)							
  taskservice.go:366	0xe308d9		48899c24a0000000	MOVQ BX, 0xa0(SP)							
  taskservice.go:366	0xe308e1		48898c24a8000000	MOVQ CX, 0xa8(SP)							
  taskservice.go:365	0xe308e9		f20f11442458		MOVSD_XMM X0, 0x58(SP)							
  taskservice.go:365	0xe308ef		f20f114c2450		MOVSD_XMM X1, 0x50(SP)							
  taskservice.go:371	0xe308f5		4889d0			MOVQ DX, AX								
  taskservice.go:371	0xe308f8		e8e35b0000		CALL CAS-Backend/pkg/diapdu.closestNodeTo(SB)				
  taskservice.go:371	0xe308fd		0f1f00			NOPL 0(AX)								
  taskservice.go:371	0xe30900		4885c0			TESTQ AX, AX								
  taskservice.go:371	0xe30903		7409			JE 0xe3090e								
  taskservice.go:372	0xe30905		488b10			MOVQ 0(AX), DX								
  taskservice.go:372	0xe30908		4c8b4808		MOVQ 0x8(AX), R9							
  taskservice.go:372	0xe3090c		eb05			JMP 0xe30913								
  taskservice.go:372	0xe3090e		4531c9			XORL R9, R9								
  taskservice.go:372	0xe30911		31d2			XORL DX, DX								
  taskservice.go:374	0xe30913		4c8b9424a0000000	MOVQ 0xa0(SP), R10							
  taskservice.go:374	0xe3091b		498b32			MOVQ 0(R10), SI								
  taskservice.go:374	0xe3091e		4d8b4208		MOVQ 0x8(R10), R8							
  taskservice.go:374	0xe30922		488b842498000000	MOVQ 0x98(SP), AX							
  taskservice.go:374	0xe3092a		4889d3			MOVQ DX, BX								
  taskservice.go:374	0xe3092d		4c89c9			MOVQ R9, CX								
  taskservice.go:374	0xe30930		488bbc24a8000000	MOVQ 0xa8(SP), DI							
  taskservice.go:374	0xe30938		e863010000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).planStationTaskRoute(SB)	
  taskservice.go:374	0xe3093d		0f1f00			NOPL 0(AX)								
  taskservice.go:374	0xe30940		4084ff			TESTL DI, DI								
  taskservice.go:374	0xe30943		747c			JE 0xe309c1								
  taskservice.go:374	0xe30945		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)					
  taskservice.go:374	0xe30949		7c76			JL 0xe309c1								
  taskservice.go:374	0xe3094b		f20f11442470		MOVSD_XMM X0, 0x70(SP)							
  taskservice.go:374	0xe30951		48895c2460		MOVQ BX, 0x60(SP)							
  taskservice.go:374	0xe30956		4889842480000000	MOVQ AX, 0x80(SP)							
  taskservice.go:374	0xe3095e		48894c2468		MOVQ CX, 0x68(SP)							
  taskservice.go:375	0xe30963		488d0516bb2800		LEAQ runtime.types+881792(SB), AX					
  taskservice.go:375	0xe3096a		e8310e5eff		CALL runtime.newobject(SB)						
  taskservice.go:375	0xe3096f		488b4c2460		MOVQ 0x60(SP), CX							
  taskservice.go:375	0xe30974		48894808		MOVQ CX, 0x8(AX)							
  taskservice.go:375	0xe30978		488b4c2468		MOVQ 0x68(SP), CX							
  taskservice.go:375	0xe3097d		48894810		MOVQ CX, 0x10(AX)							
  taskservice.go:375	0xe30981		833dc8d1720200		CMPL runtime.writeBarrier(SB), $0x0					
  taskservice.go:375	0xe30988		750a			JNE 0xe30994								
  taskservice.go:375	0xe3098a		488b8c2480000000	MOVQ 0x80(SP), CX							
  taskservice.go:375	0xe30992		eb10			JMP 0xe309a4								
  taskservice.go:375	0xe30994		e8877a64ff		CALL runtime.gcWriteBarrier1(SB)					
  taskservice.go:375	0xe30999		488b8c2480000000	MOVQ 0x80(SP), CX							
  taskservice.go:375	0xe309a1		49890b			MOVQ CX, 0(R11)								
  taskservice.go:375	0xe309a4		488908			MOVQ CX, 0(AX)								
  taskservice.go:375	0xe309a7		f20f10442470		MOVSD_XMM 0x70(SP), X0							
  taskservice.go:375	0xe309ad		f20f114018		MOVSD_XMM X0, 0x18(AX)							
  taskservice.go:375	0xe309b2		bb01000000		MOVL $__minor_os_version__(SB), BX					
  taskservice.go:375	0xe309b7		4881c488000000		ADDQ $.file+59(SB), SP							
  taskservice.go:375	0xe309be		5d			POPQ BP									
  taskservice.go:375	0xe309bf		90			NOPL									
  taskservice.go:375	0xe309c0		c3			RET									
  taskservice.go:377	0xe309c1		488b942498000000	MOVQ 0x98(SP), DX							
  taskservice.go:377	0xe309c9		488b4240		MOVQ 0x40(DX), AX							
  taskservice.go:377	0xe309cd		488b9424a0000000	MOVQ 0xa0(SP), DX							
  taskservice.go:377	0xe309d5		488b0a			MOVQ 0(DX), CX								
  taskservice.go:377	0xe309d8		488b7a08		MOVQ 0x8(DX), DI							
  taskservice.go:377	0xe309dc		488b9424a8000000	MOVQ 0xa8(SP), DX							
  taskservice.go:377	0xe309e4		f20f105220		MOVSD_XMM 0x20(DX), X2							
  taskservice.go:377	0xe309e9		f20f105a28		MOVSD_XMM 0x28(DX), X3							
  taskservice.go:377	0xe309ee		f20f106230		MOVSD_XMM 0x30(DX), X4							
  taskservice.go:377	0xe309f3		f20f106a38		MOVSD_XMM 0x38(DX), X5							
  taskservice.go:377	0xe309f8		31db			XORL BX, BX								
  taskservice.go:377	0xe309fa		f20f10442458		MOVSD_XMM 0x58(SP), X0							
  taskservice.go:377	0xe30a00		f20f104c2450		MOVSD_XMM 0x50(SP), X1							
  taskservice.go:377	0xe30a06		e8956a0000		CALL CAS-Backend/pkg/diapdu.PlanTaskRoute(SB)				
  taskservice.go:377	0xe30a0b		4881c488000000		ADDQ $.file+59(SB), SP							
  taskservice.go:377	0xe30a12		5d			POPQ BP									
  taskservice.go:377	0xe30a13		c3			RET									
  taskservice.go:367	0xe30a14		f20f105120		MOVSD_XMM 0x20(CX), X2							
  taskservice.go:367	0xe30a19		f20f105928		MOVSD_XMM 0x28(CX), X3							
  taskservice.go:367	0xe30a1e		f20f106130		MOVSD_XMM 0x30(CX), X4							
  taskservice.go:367	0xe30a23		f20f106938		MOVSD_XMM 0x38(CX), X5							
  taskservice.go:367	0xe30a28		e893730000		CALL CAS-Backend/pkg/diapdu.StraightLineTaskDistance(SB)		
  taskservice.go:367	0xe30a2d		f20f11442478		MOVSD_XMM X0, 0x78(SP)							
  taskservice.go:368	0xe30a33		488d0546ba2800		LEAQ runtime.types+881792(SB), AX					
  taskservice.go:368	0xe30a3a		e8610d5eff		CALL runtime.newobject(SB)						
  taskservice.go:368	0xe30a3f		48c70000000000		MOVQ $0x0, 0(AX)							
  taskservice.go:368	0xe30a46		f20f10742478		MOVSD_XMM 0x78(SP), X6							
  taskservice.go:368	0xe30a4c		f20f117018		MOVSD_XMM X6, 0x18(AX)							
  taskservice.go:368	0xe30a51		bb01000000		MOVL $__minor_os_version__(SB), BX					
  taskservice.go:368	0xe30a56		4881c488000000		ADDQ $.file+59(SB), SP							
  taskservice.go:368	0xe30a5d		5d			POPQ BP									
  taskservice.go:368	0xe30a5e		c3			RET									
  taskservice.go:364	0xe30a5f		4889442408		MOVQ AX, 0x8(SP)							
  taskservice.go:364	0xe30a64		48895c2410		MOVQ BX, 0x10(SP)							
  taskservice.go:364	0xe30a69		48894c2418		MOVQ CX, 0x18(SP)							
  taskservice.go:364	0xe30a6e		e86d5a64ff		CALL runtime.morestack_noctxt.abi0(SB)					
  taskservice.go:364	0xe30a73		488b442408		MOVQ 0x8(SP), AX							
  taskservice.go:364	0xe30a78		488b5c2410		MOVQ 0x10(SP), BX							
  taskservice.go:364	0xe30a7d		488b4c2418		MOVQ 0x18(SP), CX							
  taskservice.go:364	0xe30a82		e919feffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).planTaskPath(SB)		
  :-1			0xe30a87		cc			INT $__subsystem__(SB)							
  :-1			0xe30a88		cc			INT $__subsystem__(SB)							
  :-1			0xe30a89		cc			INT $__subsystem__(SB)							
  :-1			0xe30a8a		cc			INT $__subsystem__(SB)							
  :-1			0xe30a8b		cc			INT $__subsystem__(SB)							
  :-1			0xe30a8c		cc			INT $__subsystem__(SB)							
  :-1			0xe30a8d		cc			INT $__subsystem__(SB)							
  :-1			0xe30a8e		cc			INT $__subsystem__(SB)							
  :-1			0xe30a8f		cc			INT $__subsystem__(SB)							
  :-1			0xe30a90		cc			INT $__subsystem__(SB)							
  :-1			0xe30a91		cc			INT $__subsystem__(SB)							
  :-1			0xe30a92		cc			INT $__subsystem__(SB)							
  :-1			0xe30a93		cc			INT $__subsystem__(SB)							
  :-1			0xe30a94		cc			INT $__subsystem__(SB)							
  :-1			0xe30a95		cc			INT $__subsystem__(SB)							
  :-1			0xe30a96		cc			INT $__subsystem__(SB)							
  :-1			0xe30a97		cc			INT $__subsystem__(SB)							
  :-1			0xe30a98		cc			INT $__subsystem__(SB)							
  :-1			0xe30a99		cc			INT $__subsystem__(SB)							
  :-1			0xe30a9a		cc			INT $__subsystem__(SB)							
  :-1			0xe30a9b		cc			INT $__subsystem__(SB)							
  :-1			0xe30a9c		cc			INT $__subsystem__(SB)							
  :-1			0xe30a9d		cc			INT $__subsystem__(SB)							
  :-1			0xe30a9e		cc			INT $__subsystem__(SB)							
  :-1			0xe30a9f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).planStationTaskRoute(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:380	0xe30aa0		4c8d6424b0			LEAQ -0x50(SP), R12							
  taskservice.go:380	0xe30aa5		4d3b6610			CMPQ R12, 0x10(R14)							
  taskservice.go:380	0xe30aa9		0f86c1080000			JBE 0xe31370								
  taskservice.go:380	0xe30aaf		55				PUSHQ BP								
  taskservice.go:380	0xe30ab0		4889e5				MOVQ SP, BP								
  taskservice.go:380	0xe30ab3		4881ecc8000000			SUBQ $.file+123(SB), SP							
  taskservice.go:380	0xe30aba		48899c24e0000000		MOVQ BX, 0xe0(SP)							
  taskservice.go:380	0xe30ac2		4889b424f8000000		MOVQ SI, 0xf8(SP)							
  taskservice.go:381	0xe30aca		4883784000			CMPQ 0x40(AX), $0x0							
  taskservice.go:381	0xe30acf		0f8486080000			JE 0xe3135b								
  taskservice.go:381	0xe30ad5		4885ff				TESTQ DI, DI								
  taskservice.go:381	0xe30ad8		0f847d080000			JE 0xe3135b								
  taskservice.go:384	0xe30ade		4c8b9788000000			MOVQ 0x88(DI), R10							
  taskservice.go:385	0xe30ae5		4c8b8f90000000			MOVQ 0x90(DI), R9							
  taskservice.go:386	0xe30aec		4d85d2				TESTQ R10, R10								
  taskservice.go:386	0xe30aef		740c				JE 0xe30afd								
  taskservice.go:385	0xe30af1		488b9798000000			MOVQ 0x98(DI), DX							
  taskservice.go:386	0xe30af8		4885d2				TESTQ DX, DX								
  taskservice.go:386	0xe30afb		7515				JNE 0xe30b12								
  taskservice.go:387	0xe30afd		31c0				XORL AX, AX								
  taskservice.go:387	0xe30aff		31db				XORL BX, BX								
  taskservice.go:387	0xe30b01		4889d9				MOVQ BX, CX								
  taskservice.go:387	0xe30b04		0f57c0				XORPS X0, X0								
  taskservice.go:387	0xe30b07		31ff				XORL DI, DI								
  taskservice.go:387	0xe30b09		4881c4c8000000			ADDQ $.file+123(SB), SP							
  taskservice.go:387	0xe30b10		5d				POPQ BP									
  taskservice.go:387	0xe30b11		c3				RET									
  taskservice.go:381	0xe30b12		48898424d8000000		MOVQ AX, 0xd8(SP)							
  taskservice.go:381	0xe30b1a		4889bc24f0000000		MOVQ DI, 0xf0(SP)							
  taskservice.go:385	0xe30b22		4889542460			MOVQ DX, 0x60(SP)							
  taskservice.go:385	0xe30b27		4c898c24b8000000		MOVQ R9, 0xb8(SP)							
  taskservice.go:384	0xe30b2f		4c89542458			MOVQ R10, 0x58(SP)							
  taskservice.go:381	0xe30b34		4c89842400010000		MOVQ R8, 0x100(SP)							
  taskservice.go:381	0xe30b3c		4889b424f8000000		MOVQ SI, 0xf8(SP)							
  taskservice.go:384	0xe30b44		4c8b9f80000000			MOVQ 0x80(DI), R11							
  taskservice.go:384	0xe30b4b		4c899c2498000000		MOVQ R11, 0x98(SP)							
  taskservice.go:389	0xe30b53		48c78424a000000000000000	MOVQ $0x0, 0xa0(SP)							
  taskservice.go:389	0xe30b5f		440f11bc24a8000000		MOVUPS X15, 0xa8(SP)							
  taskservice.go:390	0xe30b68		0f57c0				XORPS X0, X0								
  taskservice.go:390	0xe30b6b		f20f11442440			MOVSD_XMM X0, 0x40(SP)							
  taskservice.go:405	0xe30b71		4885c9				TESTQ CX, CX								
  taskservice.go:405	0xe30b74		747d				JE 0xe30bf3								
  taskservice.go:405	0xe30b76		4c39d1				CMPQ CX, R10								
  taskservice.go:405	0xe30b79		7408				JE 0xe30b83								
  taskservice.go:405	0xe30b7b		41bc01000000			MOVL $__minor_os_version__(SB), R12					
  taskservice.go:405	0xe30b81		eb73				JMP 0xe30bf6								
  taskservice.go:381	0xe30b83		48898c24e8000000		MOVQ CX, 0xe8(SP)							
  taskservice.go:381	0xe30b8b		48899c24e0000000		MOVQ BX, 0xe0(SP)							
  taskservice.go:405	0xe30b93		4889d8				MOVQ BX, AX								
  taskservice.go:405	0xe30b96		4c89db				MOVQ R11, BX								
  taskservice.go:405	0xe30b99		e8c2225dff			CALL runtime.memequal(SB)						
  taskservice.go:405	0xe30b9e		83f001				XORL $__minor_os_version__(SB), AX					
  taskservice.go:406	0xe30ba1		488b8c24e8000000		MOVQ 0xe8(SP), CX							
  taskservice.go:422	0xe30ba9		488b542460			MOVQ 0x60(SP), DX							
  taskservice.go:406	0xe30bae		488b9c24e0000000		MOVQ 0xe0(SP), BX							
  taskservice.go:422	0xe30bb6		488bb424f8000000		MOVQ 0xf8(SP), SI							
  taskservice.go:414	0xe30bbe		488bbc24f0000000		MOVQ 0xf0(SP), DI							
  taskservice.go:422	0xe30bc6		4c8b842400010000		MOVQ 0x100(SP), R8							
  taskservice.go:422	0xe30bce		4c8b8c24b8000000		MOVQ 0xb8(SP), R9							
  taskservice.go:422	0xe30bd6		4c8b542458			MOVQ 0x58(SP), R10							
  taskservice.go:422	0xe30bdb		4c8b9c2498000000		MOVQ 0x98(SP), R11							
  taskservice.go:422	0xe30be3		0f57c0				XORPS X0, X0								
  taskservice.go:405	0xe30be6		4189c4				MOVL AX, R12								
  taskservice.go:422	0xe30be9		488b8424d8000000		MOVQ 0xd8(SP), AX							
  taskservice.go:405	0xe30bf1		eb03				JMP 0xe30bf6								
  taskservice.go:405	0xe30bf3		4531e4				XORL R12, R12								
  taskservice.go:405	0xe30bf6		4584e4				TESTL R12, R12								
  taskservice.go:405	0xe30bf9		0f8464030000			JE 0xe30f63								
  taskservice.go:406	0xe30bff		488b5040			MOVQ 0x40(AX), DX							
  taskservice.go:406	0xe30c03		4c89c7				MOVQ R8, DI								
  taskservice.go:406	0xe30c06		4989c8				MOVQ CX, R8								
  taskservice.go:406	0xe30c09		4d89d9				MOVQ R11, R9								
  taskservice.go:406	0xe30c0c		4889f1				MOVQ SI, CX								
  taskservice.go:406	0xe30c0f		4889de				MOVQ BX, SI								
  taskservice.go:406	0xe30c12		31db				XORL BX, BX								
  taskservice.go:406	0xe30c14		4889d0				MOVQ DX, AX								
  taskservice.go:406	0xe30c17		e844590000			CALL CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB)			
  taskservice.go:406	0xe30c1c		0f1f4000			NOPL 0(AX)								
  taskservice.go:406	0xe30c20		4084ff				TESTL DI, DI								
  taskservice.go:407	0xe30c23		0f841d070000			JE 0xe31346								
  taskservice.go:392	0xe30c29		4883fb02			CMPQ BX, $__minor_os_version__+1(SB)					
  taskservice.go:392	0xe30c2d		0f8ced020000			JL 0xe30f20								
  taskservice.go:406	0xe30c33		f20f11442470			MOVSD_XMM X0, 0x70(SP)							
  taskservice.go:406	0xe30c39		4889842490000000		MOVQ AX, 0x90(SP)							
  taskservice.go:406	0xe30c41		48895c2450			MOVQ BX, 0x50(SP)							
  taskservice.go:395	0xe30c46		488b9424a8000000		MOVQ 0xa8(SP), DX							
  taskservice.go:395	0xe30c4e		4c8b8424a0000000		MOVQ 0xa0(SP), R8							
  taskservice.go:395	0xe30c56		4885d2				TESTQ DX, DX								
  taskservice.go:395	0xe30c59		0f85a6000000			JNE 0xe30d05								
  taskservice.go:395	0xe30c5f		488b8c24b0000000		MOVQ 0xb0(SP), CX							
  taskservice.go:396	0xe30c67		4839cb				CMPQ BX, CX								
  taskservice.go:396	0xe30c6a		7705				JA 0xe30c71								
  taskservice.go:406	0xe30c6c		4889da				MOVQ BX, DX								
  taskservice.go:396	0xe30c6f		eb24				JMP 0xe30c95								
  taskservice.go:396	0xe30c71		4c89c0				MOVQ R8, AX								
  taskservice.go:396	0xe30c74		4889df				MOVQ BX, DI								
  taskservice.go:396	0xe30c77		488d35a21c2100			LEAQ runtime.types+383264(SB), SI					
  taskservice.go:396	0xe30c7e		6690				NOPW									
  taskservice.go:396	0xe30c80		e8bb0f64ff			CALL runtime.growslice(SB)						
  taskservice.go:396	0xe30c85		488b542450			MOVQ 0x50(SP), DX							
  taskservice.go:396	0xe30c8a		4989c0				MOVQ AX, R8								
  taskservice.go:396	0xe30c8d		488b842490000000		MOVQ 0x90(SP), AX							
  taskservice.go:396	0xe30c95		48898c2480000000		MOVQ CX, 0x80(SP)							
  taskservice.go:396	0xe30c9d		48895c2478			MOVQ BX, 0x78(SP)							
  taskservice.go:396	0xe30ca2		4c898424c0000000		MOVQ R8, 0xc0(SP)							
  taskservice.go:396	0xe30caa		4889c7				MOVQ AX, DI								
  taskservice.go:396	0xe30cad		4889d6				MOVQ DX, SI								
  taskservice.go:396	0xe30cb0		488d05691c2100			LEAQ runtime.types+383264(SB), AX					
  taskservice.go:396	0xe30cb7		4889da				MOVQ BX, DX								
  taskservice.go:396	0xe30cba		4c89c3				MOVQ R8, BX								
  taskservice.go:396	0xe30cbd		4889d1				MOVQ DX, CX								
  taskservice.go:396	0xe30cc0		e87bd863ff			CALL runtime.typedslicecopy(SB)						
  taskservice.go:396	0xe30cc5		488b9424c0000000		MOVQ 0xc0(SP), DX							
  taskservice.go:396	0xe30ccd		48899424a0000000		MOVQ DX, 0xa0(SP)							
  taskservice.go:396	0xe30cd5		488b542478			MOVQ 0x78(SP), DX							
  taskservice.go:396	0xe30cda		48899424a8000000		MOVQ DX, 0xa8(SP)							
  taskservice.go:396	0xe30ce2		488b942480000000		MOVQ 0x80(SP), DX							
  taskservice.go:396	0xe30cea		48899424b0000000		MOVQ DX, 0xb0(SP)							
  taskservice.go:392	0xe30cf2		488b542450			MOVQ 0x50(SP), DX							
  taskservice.go:392	0xe30cf7		4883fa02			CMPQ DX, $__minor_os_version__+1(SB)					
  taskservice.go:392	0xe30cfb		0f1f440000			NOPL 0(AX)(AX*1)							
  taskservice.go:396	0xe30d00		e907020000			JMP 0xe30f0c								
  taskservice.go:397	0xe30d05		48ffca				DECQ DX									
  taskservice.go:397	0xe30d08		48c1e204			SHLQ $__subsystem__+1(SB), DX						
  taskservice.go:397	0xe30d0c		4a8b4c0208			MOVQ 0x8(DX)(R8*1), CX							
  taskservice.go:397	0xe30d11		4a8b1402			MOVQ 0(DX)(R8*1), DX							
  taskservice.go:397	0xe30d15		48394808			CMPQ 0x8(AX), CX							
  taskservice.go:397	0xe30d19		0f8519010000			JNE 0xe30e38								
  taskservice.go:397	0xe30d1f		488b18				MOVQ 0(AX), BX								
  taskservice.go:397	0xe30d22		4889d0				MOVQ DX, AX								
  taskservice.go:397	0xe30d25		e836215dff			CALL runtime.memequal(SB)						
  taskservice.go:397	0xe30d2a		84c0				TESTL AL, AL								
  taskservice.go:397	0xe30d2c		0f84f3000000			JE 0xe30e25								
  taskservice.go:398	0xe30d32		488b9424a8000000		MOVQ 0xa8(SP), DX							
  taskservice.go:398	0xe30d3a		488b7c2450			MOVQ 0x50(SP), DI							
  taskservice.go:398	0xe30d3f		488d1c3a			LEAQ 0(DX)(DI*1), BX							
  taskservice.go:398	0xe30d43		488d5bff			LEAQ -0x1(BX), BX							
  taskservice.go:398	0xe30d47		488b8c24b0000000		MOVQ 0xb0(SP), CX							
  taskservice.go:398	0xe30d4f		488b8424a0000000		MOVQ 0xa0(SP), AX							
  taskservice.go:398	0xe30d57		488d77ff			LEAQ -0x1(DI), SI							
  taskservice.go:398	0xe30d5b		0f1f440000			NOPL 0(AX)(AX*1)							
  taskservice.go:398	0xe30d60		4839d9				CMPQ CX, BX								
  taskservice.go:398	0xe30d63		732d				JAE 0xe30d92								
  taskservice.go:398	0xe30d65		4889b42480000000		MOVQ SI, 0x80(SP)							
  taskservice.go:398	0xe30d6d		4889542478			MOVQ DX, 0x78(SP)							
  taskservice.go:398	0xe30d72		4889f7				MOVQ SI, DI								
  taskservice.go:398	0xe30d75		488d35a41b2100			LEAQ runtime.types+383264(SB), SI					
  taskservice.go:398	0xe30d7c		0f1f4000			NOPL 0(AX)								
  taskservice.go:398	0xe30d80		e8bb0e64ff			CALL runtime.growslice(SB)						
  taskservice.go:398	0xe30d85		488b542478			MOVQ 0x78(SP), DX							
  taskservice.go:398	0xe30d8a		488bb42480000000		MOVQ 0x80(SP), SI							
  taskservice.go:398	0xe30d92		48898424c0000000		MOVQ AX, 0xc0(SP)							
  taskservice.go:398	0xe30d9a		48899c2480000000		MOVQ BX, 0x80(SP)							
  taskservice.go:398	0xe30da2		48894c2478			MOVQ CX, 0x78(SP)							
  taskservice.go:398	0xe30da7		4829d3				SUBQ DX, BX								
  taskservice.go:398	0xe30daa		4989d1				MOVQ DX, R9								
  taskservice.go:398	0xe30dad		4829ca				SUBQ CX, DX								
  taskservice.go:398	0xe30db0		49c1e104			SHLQ $__subsystem__+1(SB), R9						
  taskservice.go:398	0xe30db4		48c1fa3f			SARQ $__major_os_version__+57(SB), DX					
  taskservice.go:398	0xe30db8		4921d1				ANDQ DX, R9								
  taskservice.go:398	0xe30dbb		4a8d1408			LEAQ 0(AX)(R9*1), DX							
  taskservice.go:398	0xe30dbf		488bbc2490000000		MOVQ 0x90(SP), DI							
  taskservice.go:398	0xe30dc7		4883c710			ADDQ $__major_os_version__+10(SB), DI					
  taskservice.go:398	0xe30dcb		488d054e1b2100			LEAQ runtime.types+383264(SB), AX					
  taskservice.go:398	0xe30dd2		4989da				MOVQ BX, R10								
  taskservice.go:398	0xe30dd5		4889d3				MOVQ DX, BX								
  taskservice.go:398	0xe30dd8		4c89d1				MOVQ R10, CX								
  taskservice.go:398	0xe30ddb		0f1f440000			NOPL 0(AX)(AX*1)							
  taskservice.go:398	0xe30de0		e85bd763ff			CALL runtime.typedslicecopy(SB)						
  taskservice.go:398	0xe30de5		488b9424c0000000		MOVQ 0xc0(SP), DX							
  taskservice.go:398	0xe30ded		48899424a0000000		MOVQ DX, 0xa0(SP)							
  taskservice.go:398	0xe30df5		488b942480000000		MOVQ 0x80(SP), DX							
  taskservice.go:398	0xe30dfd		48899424a8000000		MOVQ DX, 0xa8(SP)							
  taskservice.go:398	0xe30e05		488b542478			MOVQ 0x78(SP), DX							
  taskservice.go:398	0xe30e0a		48899424b0000000		MOVQ DX, 0xb0(SP)							
  taskservice.go:392	0xe30e12		488b542450			MOVQ 0x50(SP), DX							
  taskservice.go:392	0xe30e17		4883fa02			CMPQ DX, $__minor_os_version__+1(SB)					
  taskservice.go:392	0xe30e1b		0f1f440000			NOPL 0(AX)(AX*1)							
  taskservice.go:398	0xe30e20		e9e7000000			JMP 0xe30f0c								
  taskservice.go:400	0xe30e25		488b842490000000		MOVQ 0x90(SP), AX							
  taskservice.go:400	0xe30e2d		488b5c2450			MOVQ 0x50(SP), BX							
  taskservice.go:402	0xe30e32		f20f10442470			MOVSD_XMM 0x70(SP), X0							
  taskservice.go:400	0xe30e38		488b9424a8000000		MOVQ 0xa8(SP), DX							
  taskservice.go:400	0xe30e40		4c8d0413			LEAQ 0(BX)(DX*1), R8							
  taskservice.go:400	0xe30e44		488b8c24b0000000		MOVQ 0xb0(SP), CX							
  taskservice.go:400	0xe30e4c		4c8b8c24a0000000		MOVQ 0xa0(SP), R9							
  taskservice.go:400	0xe30e54		4c39c1				CMPQ CX, R8								
  taskservice.go:400	0xe30e57		7338				JAE 0xe30e91								
  taskservice.go:400	0xe30e59		4889942480000000		MOVQ DX, 0x80(SP)							
  taskservice.go:400	0xe30e61		4c89c8				MOVQ R9, AX								
  taskservice.go:400	0xe30e64		4889df				MOVQ BX, DI								
  taskservice.go:400	0xe30e67		488d35b21a2100			LEAQ runtime.types+383264(SB), SI					
  taskservice.go:400	0xe30e6e		4c89c3				MOVQ R8, BX								
  taskservice.go:400	0xe30e71		e8ca0d64ff			CALL runtime.growslice(SB)						
  taskservice.go:400	0xe30e76		488b942480000000		MOVQ 0x80(SP), DX							
  taskservice.go:400	0xe30e7e		4989d8				MOVQ BX, R8								
  taskservice.go:400	0xe30e81		4989c1				MOVQ AX, R9								
  taskservice.go:400	0xe30e84		488b842490000000		MOVQ 0x90(SP), AX							
  taskservice.go:400	0xe30e8c		488b5c2450			MOVQ 0x50(SP), BX							
  taskservice.go:400	0xe30e91		48898c2480000000		MOVQ CX, 0x80(SP)							
  taskservice.go:400	0xe30e99		4c89442478			MOVQ R8, 0x78(SP)							
  taskservice.go:400	0xe30e9e		4c898c24c0000000		MOVQ R9, 0xc0(SP)							
  taskservice.go:400	0xe30ea6		4929d0				SUBQ DX, R8								
  taskservice.go:400	0xe30ea9		4989d3				MOVQ DX, R11								
  taskservice.go:400	0xe30eac		4829ca				SUBQ CX, DX								
  taskservice.go:400	0xe30eaf		49c1e304			SHLQ $__subsystem__+1(SB), R11						
  taskservice.go:400	0xe30eb3		48c1fa3f			SARQ $__major_os_version__+57(SB), DX					
  taskservice.go:400	0xe30eb7		4921d3				ANDQ DX, R11								
  taskservice.go:400	0xe30eba		4b8d1419			LEAQ 0(R9)(R11*1), DX							
  taskservice.go:400	0xe30ebe		4889c7				MOVQ AX, DI								
  taskservice.go:400	0xe30ec1		4889de				MOVQ BX, SI								
  taskservice.go:400	0xe30ec4		488d05551a2100			LEAQ runtime.types+383264(SB), AX					
  taskservice.go:400	0xe30ecb		4889d3				MOVQ DX, BX								
  taskservice.go:400	0xe30ece		4c89c1				MOVQ R8, CX								
  taskservice.go:400	0xe30ed1		e86ad663ff			CALL runtime.typedslicecopy(SB)						
  taskservice.go:400	0xe30ed6		488b9424c0000000		MOVQ 0xc0(SP), DX							
  taskservice.go:400	0xe30ede		48899424a0000000		MOVQ DX, 0xa0(SP)							
  taskservice.go:400	0xe30ee6		488b542478			MOVQ 0x78(SP), DX							
  taskservice.go:400	0xe30eeb		48899424a8000000		MOVQ DX, 0xa8(SP)							
  taskservice.go:400	0xe30ef3		488b942480000000		MOVQ 0x80(SP), DX							
  taskservice.go:400	0xe30efb		48899424b0000000		MOVQ DX, 0xb0(SP)							
  taskservice.go:392	0xe30f03		488b542450			MOVQ 0x50(SP), DX							
  taskservice.go:392	0xe30f08		4883fa02			CMPQ DX, $__minor_os_version__+1(SB)					
  taskservice.go:402	0xe30f0c		f20f104c2470			MOVSD_XMM 0x70(SP), X1							
  taskservice.go:402	0xe30f12		f20f584c2440			ADDSD 0x40(SP), X1							
  taskservice.go:402	0xe30f18		f20f114c2440			MOVSD_XMM X1, 0x40(SP)							
  taskservice.go:402	0xe30f1e		6690				NOPW									
  taskservice.go:407	0xe30f20		0f8c20040000			JL 0xe31346								
  taskservice.go:422	0xe30f26		488b8424d8000000		MOVQ 0xd8(SP), AX							
  taskservice.go:422	0xe30f2e		488b542460			MOVQ 0x60(SP), DX							
  taskservice.go:422	0xe30f33		488bb424f8000000		MOVQ 0xf8(SP), SI							
  taskservice.go:414	0xe30f3b		488bbc24f0000000		MOVQ 0xf0(SP), DI							
  taskservice.go:422	0xe30f43		4c8b842400010000		MOVQ 0x100(SP), R8							
  taskservice.go:422	0xe30f4b		4c8b8c24b8000000		MOVQ 0xb8(SP), R9							
  taskservice.go:422	0xe30f53		4c8b542458			MOVQ 0x58(SP), R10							
  taskservice.go:422	0xe30f58		4c8b9c2498000000		MOVQ 0x98(SP), R11							
  taskservice.go:422	0xe30f60		0f57c0				XORPS X0, X0								
  taskservice.go:414	0xe30f63		4c8ba7e8000000			MOVQ 0xe8(DI), R12							
  taskservice.go:414	0xe30f6a		4d85e4				TESTQ R12, R12								
  taskservice.go:414	0xe30f6d		747a				JE 0xe30fe9								
  taskservice.go:414	0xe30f6f		4c8b87e0000000			MOVQ 0xe0(DI), R8							
  taskservice.go:414	0xe30f76		4c8baff0000000			MOVQ 0xf0(DI), R13							
  taskservice.go:415	0xe30f7d		4c8b7840			MOVQ 0x40(AX), R15							
  taskservice.go:415	0xe30f81		4c89db				MOVQ R11, BX								
  taskservice.go:415	0xe30f84		4c89d1				MOVQ R10, CX								
  taskservice.go:415	0xe30f87		4c89cf				MOVQ R9, DI								
  taskservice.go:415	0xe30f8a		4889d6				MOVQ DX, SI								
  taskservice.go:415	0xe30f8d		4d89e1				MOVQ R12, R9								
  taskservice.go:415	0xe30f90		4d89ea				MOVQ R13, R10								
  taskservice.go:415	0xe30f93		4c89f8				MOVQ R15, AX								
  taskservice.go:415	0xe30f96		e865b6ffff			CALL CAS-Backend/pkg/diapdu.PlanStationPath(SB)				
  taskservice.go:415	0xe30f9b		0f1f440000			NOPL 0(AX)(AX*1)							
  taskservice.go:416	0xe30fa0		4885ff				TESTQ DI, DI								
  taskservice.go:416	0xe30fa3		7506				JNE 0xe30fab								
  taskservice.go:416	0xe30fa5		4883fb02			CMPQ BX, $__minor_os_version__+1(SB)					
  taskservice.go:416	0xe30fa9		7d16				JGE 0xe30fc1								
  taskservice.go:417	0xe30fab		31c0				XORL AX, AX								
  taskservice.go:417	0xe30fad		31db				XORL BX, BX								
  taskservice.go:417	0xe30faf		4889d9				MOVQ BX, CX								
  taskservice.go:417	0xe30fb2		0f57c0				XORPS X0, X0								
  taskservice.go:417	0xe30fb5		31ff				XORL DI, DI								
  taskservice.go:417	0xe30fb7		4881c4c8000000			ADDQ $.file+123(SB), SP							
  taskservice.go:417	0xe30fbe		5d				POPQ BP									
  taskservice.go:417	0xe30fbf		90				NOPL									
  taskservice.go:417	0xe30fc0		c3				RET									
  taskservice.go:419	0xe30fc1		488b9424d8000000		MOVQ 0xd8(SP), DX							
  taskservice.go:419	0xe30fc9		488b5240			MOVQ 0x40(DX), DX							
  taskservice.go:419	0xe30fcd		4889cf				MOVQ CX, DI								
  taskservice.go:419	0xe30fd0		4889d9				MOVQ BX, CX								
  taskservice.go:419	0xe30fd3		4889c3				MOVQ AX, BX								
  taskservice.go:419	0xe30fd6		4889d0				MOVQ DX, AX								
  taskservice.go:419	0xe30fd9		e8c2ddffff			CALL CAS-Backend/pkg/diapdu.graphPathDistance(SB)			
  taskservice.go:419	0xe30fde		bf01000000			MOVL $__minor_os_version__(SB), DI					
  taskservice.go:419	0xe30fe3		31db				XORL BX, BX								
  taskservice.go:419	0xe30fe5		31c0				XORL AX, AX								
  taskservice.go:420	0xe30fe7		eb1c				JMP 0xe31005								
  taskservice.go:422	0xe30fe9		488b4040			MOVQ 0x40(AX), AX							
  taskservice.go:422	0xe30fed		31db				XORL BX, BX								
  taskservice.go:422	0xe30fef		4889f1				MOVQ SI, CX								
  taskservice.go:422	0xe30ff2		4c89c7				MOVQ R8, DI								
  taskservice.go:422	0xe30ff5		4c89de				MOVQ R11, SI								
  taskservice.go:422	0xe30ff8		4d89d0				MOVQ R10, R8								
  taskservice.go:422	0xe30ffb		4989d2				MOVQ DX, R10								
  taskservice.go:422	0xe30ffe		6690				NOPW									
  taskservice.go:422	0xe31000		e85b550000			CALL CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB)			
  taskservice.go:424	0xe31005		4084ff				TESTL DI, DI								
  taskservice.go:424	0xe31008		0f8423030000			JE 0xe31331								
  taskservice.go:392	0xe3100e		4883fb02			CMPQ BX, $__minor_os_version__+1(SB)					
  taskservice.go:392	0xe31012		0f8ce8020000			JL 0xe31300								
  taskservice.go:424	0xe31018		48895c2448			MOVQ BX, 0x48(SP)							
  taskservice.go:424	0xe3101d		4889842488000000		MOVQ AX, 0x88(SP)							
  taskservice.go:424	0xe31025		f20f11442468			MOVSD_XMM X0, 0x68(SP)							
  taskservice.go:395	0xe3102b		488b9424a8000000		MOVQ 0xa8(SP), DX							
  taskservice.go:395	0xe31033		4c8b8424a0000000		MOVQ 0xa0(SP), R8							
  taskservice.go:395	0xe3103b		0f1f440000			NOPL 0(AX)(AX*1)							
  taskservice.go:395	0xe31040		4885d2				TESTQ DX, DX								
  taskservice.go:395	0xe31043		0f859f000000			JNE 0xe310e8								
  taskservice.go:395	0xe31049		488b8c24b0000000		MOVQ 0xb0(SP), CX							
  taskservice.go:396	0xe31051		4839cb				CMPQ BX, CX								
  taskservice.go:396	0xe31054		7705				JA 0xe3105b								
  taskservice.go:424	0xe31056		4889da				MOVQ BX, DX								
  taskservice.go:396	0xe31059		eb22				JMP 0xe3107d								
  taskservice.go:396	0xe3105b		4c89c0				MOVQ R8, AX								
  taskservice.go:396	0xe3105e		4889df				MOVQ BX, DI								
  taskservice.go:396	0xe31061		488d35b8182100			LEAQ runtime.types+383264(SB), SI					
  taskservice.go:396	0xe31068		e8d30b64ff			CALL runtime.growslice(SB)						
  taskservice.go:396	0xe3106d		488b542448			MOVQ 0x48(SP), DX							
  taskservice.go:396	0xe31072		4989c0				MOVQ AX, R8								
  taskservice.go:396	0xe31075		488b842488000000		MOVQ 0x88(SP), AX							
  taskservice.go:396	0xe3107d		4c898424c0000000		MOVQ R8, 0xc0(SP)							
  taskservice.go:396	0xe31085		48898c2480000000		MOVQ CX, 0x80(SP)							
  taskservice.go:396	0xe3108d		48895c2478			MOVQ BX, 0x78(SP)							
  taskservice.go:396	0xe31092		4889c7				MOVQ AX, DI								
  taskservice.go:396	0xe31095		4889d6				MOVQ DX, SI								
  taskservice.go:396	0xe31098		488d0581182100			LEAQ runtime.types+383264(SB), AX					
  taskservice.go:396	0xe3109f		4889da				MOVQ BX, DX								
  taskservice.go:396	0xe310a2		4c89c3				MOVQ R8, BX								
  taskservice.go:396	0xe310a5		4889d1				MOVQ DX, CX								
  taskservice.go:396	0xe310a8		e893d463ff			CALL runtime.typedslicecopy(SB)						
  taskservice.go:396	0xe310ad		488b9424c0000000		MOVQ 0xc0(SP), DX							
  taskservice.go:396	0xe310b5		48899424a0000000		MOVQ DX, 0xa0(SP)							
  taskservice.go:396	0xe310bd		488b542478			MOVQ 0x78(SP), DX							
  taskservice.go:396	0xe310c2		48899424a8000000		MOVQ DX, 0xa8(SP)							
  taskservice.go:396	0xe310ca		488b942480000000		MOVQ 0x80(SP), DX							
  taskservice.go:396	0xe310d2		48899424b0000000		MOVQ DX, 0xb0(SP)							
  taskservice.go:392	0xe310da		488b542448			MOVQ 0x48(SP), DX							
  taskservice.go:392	0xe310df		4883fa02			CMPQ DX, $__minor_os_version__+1(SB)					
  taskservice.go:396	0xe310e3		e904020000			JMP 0xe312ec								
  taskservice.go:397	0xe310e8		48ffca				DECQ DX									
  taskservice.go:397	0xe310eb		48c1e204			SHLQ $__subsystem__+1(SB), DX						
  taskservice.go:397	0xe310ef		4a8b4c0208			MOVQ 0x8(DX)(R8*1), CX							
  taskservice.go:397	0xe310f4		4a8b1402			MOVQ 0(DX)(R8*1), DX							
  taskservice.go:397	0xe310f8		0f1f840000000000		NOPL 0(AX)(AX*1)							
  taskservice.go:397	0xe31100		48394808			CMPQ 0x8(AX), CX							
  taskservice.go:397	0xe31104		0f850e010000			JNE 0xe31218								
  taskservice.go:397	0xe3110a		488b18				MOVQ 0(AX), BX								
  taskservice.go:397	0xe3110d		4889d0				MOVQ DX, AX								
  taskservice.go:397	0xe31110		e84b1d5dff			CALL runtime.memequal(SB)						
  taskservice.go:397	0xe31115		84c0				TESTL AL, AL								
  taskservice.go:397	0xe31117		0f84e8000000			JE 0xe31205								
  taskservice.go:398	0xe3111d		488b9424a8000000		MOVQ 0xa8(SP), DX							
  taskservice.go:398	0xe31125		488b7c2448			MOVQ 0x48(SP), DI							
  taskservice.go:398	0xe3112a		488d1c3a			LEAQ 0(DX)(DI*1), BX							
  taskservice.go:398	0xe3112e		488d5bff			LEAQ -0x1(BX), BX							
  taskservice.go:398	0xe31132		488b8c24b0000000		MOVQ 0xb0(SP), CX							
  taskservice.go:398	0xe3113a		488b8424a0000000		MOVQ 0xa0(SP), AX							
  taskservice.go:398	0xe31142		488d77ff			LEAQ -0x1(DI), SI							
  taskservice.go:398	0xe31146		4839d9				CMPQ CX, BX								
  taskservice.go:398	0xe31149		7329				JAE 0xe31174								
  taskservice.go:398	0xe3114b		4889b42480000000		MOVQ SI, 0x80(SP)							
  taskservice.go:398	0xe31153		4889542478			MOVQ DX, 0x78(SP)							
  taskservice.go:398	0xe31158		4889f7				MOVQ SI, DI								
  taskservice.go:398	0xe3115b		488d35be172100			LEAQ runtime.types+383264(SB), SI					
  taskservice.go:398	0xe31162		e8d90a64ff			CALL runtime.growslice(SB)						
  taskservice.go:398	0xe31167		488b542478			MOVQ 0x78(SP), DX							
  taskservice.go:398	0xe3116c		488bb42480000000		MOVQ 0x80(SP), SI							
  taskservice.go:398	0xe31174		48898c2480000000		MOVQ CX, 0x80(SP)							
  taskservice.go:398	0xe3117c		48895c2478			MOVQ BX, 0x78(SP)							
  taskservice.go:398	0xe31181		48898424c0000000		MOVQ AX, 0xc0(SP)							
  taskservice.go:398	0xe31189		4829d3				SUBQ DX, BX								
  taskservice.go:398	0xe3118c		4989d1				MOVQ DX, R9								
  taskservice.go:398	0xe3118f		4829ca				SUBQ CX, DX								
  taskservice.go:398	0xe31192		49c1e104			SHLQ $__subsystem__+1(SB), R9						
  taskservice.go:398	0xe31196		48c1fa3f			SARQ $__major_os_version__+57(SB), DX					
  taskservice.go:398	0xe3119a		4921d1				ANDQ DX, R9								
  taskservice.go:398	0xe3119d		4a8d1408			LEAQ 0(AX)(R9*1), DX							
  taskservice.go:398	0xe311a1		488bbc2488000000		MOVQ 0x88(SP), DI							
  taskservice.go:398	0xe311a9		4883c710			ADDQ $__major_os_version__+10(SB), DI					
  taskservice.go:398	0xe311ad		488d056c172100			LEAQ runtime.types+383264(SB), AX					
  taskservice.go:398	0xe311b4		4989da				MOVQ BX, R10								
  taskservice.go:398	0xe311b7		4889d3				MOVQ DX, BX								
  taskservice.go:398	0xe311ba		4c89d1				MOVQ R10, CX								
  taskservice.go:398	0xe311bd		0f1f00				NOPL 0(AX)								
  taskservice.go:398	0xe311c0		e87bd363ff			CALL runtime.typedslicecopy(SB)						
  taskservice.go:398	0xe311c5		488b9424c0000000		MOVQ 0xc0(SP), DX							
  taskservice.go:398	0xe311cd		48899424a0000000		MOVQ DX, 0xa0(SP)							
  taskservice.go:398	0xe311d5		488b542478			MOVQ 0x78(SP), DX							
  taskservice.go:398	0xe311da		48899424a8000000		MOVQ DX, 0xa8(SP)							
  taskservice.go:398	0xe311e2		488b942480000000		MOVQ 0x80(SP), DX							
  taskservice.go:398	0xe311ea		48899424b0000000		MOVQ DX, 0xb0(SP)							
  taskservice.go:392	0xe311f2		488b542448			MOVQ 0x48(SP), DX							
  taskservice.go:392	0xe311f7		4883fa02			CMPQ DX, $__minor_os_version__+1(SB)					
  taskservice.go:392	0xe311fb		0f1f440000			NOPL 0(AX)(AX*1)							
  taskservice.go:398	0xe31200		e9e7000000			JMP 0xe312ec								
  taskservice.go:400	0xe31205		488b842488000000		MOVQ 0x88(SP), AX							
  taskservice.go:400	0xe3120d		488b5c2448			MOVQ 0x48(SP), BX							
  taskservice.go:402	0xe31212		f20f10442468			MOVSD_XMM 0x68(SP), X0							
  taskservice.go:400	0xe31218		488b9424a8000000		MOVQ 0xa8(SP), DX							
  taskservice.go:400	0xe31220		4c8d0413			LEAQ 0(BX)(DX*1), R8							
  taskservice.go:400	0xe31224		488b8c24b0000000		MOVQ 0xb0(SP), CX							
  taskservice.go:400	0xe3122c		4c8b8c24a0000000		MOVQ 0xa0(SP), R9							
  taskservice.go:400	0xe31234		4c39c1				CMPQ CX, R8								
  taskservice.go:400	0xe31237		7338				JAE 0xe31271								
  taskservice.go:400	0xe31239		4889942480000000		MOVQ DX, 0x80(SP)							
  taskservice.go:400	0xe31241		4c89c8				MOVQ R9, AX								
  taskservice.go:400	0xe31244		4889df				MOVQ BX, DI								
  taskservice.go:400	0xe31247		488d35d2162100			LEAQ runtime.types+383264(SB), SI					
  taskservice.go:400	0xe3124e		4c89c3				MOVQ R8, BX								
  taskservice.go:400	0xe31251		e8ea0964ff			CALL runtime.growslice(SB)						
  taskservice.go:400	0xe31256		488b942480000000		MOVQ 0x80(SP), DX							
  taskservice.go:400	0xe3125e		4989d8				MOVQ BX, R8								
  taskservice.go:400	0xe31261		4989c1				MOVQ AX, R9								
  taskservice.go:400	0xe31264		488b842488000000		MOVQ 0x88(SP), AX							
  taskservice.go:400	0xe3126c		488b5c2448			MOVQ 0x48(SP), BX							
  taskservice.go:400	0xe31271		48898c2480000000		MOVQ CX, 0x80(SP)							
  taskservice.go:400	0xe31279		4c89442478			MOVQ R8, 0x78(SP)							
  taskservice.go:400	0xe3127e		4c898c24c0000000		MOVQ R9, 0xc0(SP)							
  taskservice.go:400	0xe31286		4989d2				MOVQ DX, R10								
  taskservice.go:400	0xe31289		4829ca				SUBQ CX, DX								
  taskservice.go:400	0xe3128c		4d29d0				SUBQ R10, R8								
  taskservice.go:400	0xe3128f		49c1e204			SHLQ $__subsystem__+1(SB), R10						
  taskservice.go:400	0xe31293		48c1fa3f			SARQ $__major_os_version__+57(SB), DX					
  taskservice.go:400	0xe31297		4921d2				ANDQ DX, R10								
  taskservice.go:400	0xe3129a		4b8d1411			LEAQ 0(R9)(R10*1), DX							
  taskservice.go:400	0xe3129e		4889c7				MOVQ AX, DI								
  taskservice.go:400	0xe312a1		4889de				MOVQ BX, SI								
  taskservice.go:400	0xe312a4		488d0575162100			LEAQ runtime.types+383264(SB), AX					
  taskservice.go:400	0xe312ab		4889d3				MOVQ DX, BX								
  taskservice.go:400	0xe312ae		4c89c1				MOVQ R8, CX								
  taskservice.go:400	0xe312b1		e88ad263ff			CALL runtime.typedslicecopy(SB)						
  taskservice.go:400	0xe312b6		488b9424c0000000		MOVQ 0xc0(SP), DX							
  taskservice.go:400	0xe312be		48899424a0000000		MOVQ DX, 0xa0(SP)							
  taskservice.go:400	0xe312c6		488b542478			MOVQ 0x78(SP), DX							
  taskservice.go:400	0xe312cb		48899424a8000000		MOVQ DX, 0xa8(SP)							
  taskservice.go:400	0xe312d3		488b942480000000		MOVQ 0x80(SP), DX							
  taskservice.go:400	0xe312db		48899424b0000000		MOVQ DX, 0xb0(SP)							
  taskservice.go:392	0xe312e3		488b542448			MOVQ 0x48(SP), DX							
  taskservice.go:392	0xe312e8		4883fa02			CMPQ DX, $__minor_os_version__+1(SB)					
  taskservice.go:402	0xe312ec		f20f104c2468			MOVSD_XMM 0x68(SP), X1							
  taskservice.go:402	0xe312f2		f20f584c2440			ADDSD 0x40(SP), X1							
  taskservice.go:402	0xe312f8		f20f114c2440			MOVSD_XMM X1, 0x40(SP)							
  taskservice.go:402	0xe312fe		6690				NOPW									
  taskservice.go:424	0xe31300		7c2f				JL 0xe31331								
  taskservice.go:427	0xe31302		f20f10442440			MOVSD_XMM 0x40(SP), X0							
  taskservice.go:427	0xe31308		488b9c24a8000000		MOVQ 0xa8(SP), BX							
  taskservice.go:427	0xe31310		488b8424a0000000		MOVQ 0xa0(SP), AX							
  taskservice.go:427	0xe31318		488b8c24b0000000		MOVQ 0xb0(SP), CX							
  taskservice.go:427	0xe31320		4883fb02			CMPQ BX, $__minor_os_version__+1(SB)					
  taskservice.go:427	0xe31324		400f9dc7			SETGE DI								
  taskservice.go:427	0xe31328		4881c4c8000000			ADDQ $.file+123(SB), SP							
  taskservice.go:427	0xe3132f		5d				POPQ BP									
  taskservice.go:427	0xe31330		c3				RET									
  taskservice.go:425	0xe31331		31c0				XORL AX, AX								
  taskservice.go:425	0xe31333		31db				XORL BX, BX								
  taskservice.go:425	0xe31335		4889d9				MOVQ BX, CX								
  taskservice.go:425	0xe31338		0f57c0				XORPS X0, X0								
  taskservice.go:425	0xe3133b		31ff				XORL DI, DI								
  taskservice.go:425	0xe3133d		4881c4c8000000			ADDQ $.file+123(SB), SP							
  taskservice.go:425	0xe31344		5d				POPQ BP									
  taskservice.go:425	0xe31345		c3				RET									
  taskservice.go:408	0xe31346		31c0				XORL AX, AX								
  taskservice.go:408	0xe31348		31db				XORL BX, BX								
  taskservice.go:408	0xe3134a		4889d9				MOVQ BX, CX								
  taskservice.go:408	0xe3134d		0f57c0				XORPS X0, X0								
  taskservice.go:408	0xe31350		31ff				XORL DI, DI								
  taskservice.go:408	0xe31352		4881c4c8000000			ADDQ $.file+123(SB), SP							
  taskservice.go:408	0xe31359		5d				POPQ BP									
  taskservice.go:408	0xe3135a		c3				RET									
  taskservice.go:382	0xe3135b		31c0				XORL AX, AX								
  taskservice.go:382	0xe3135d		31db				XORL BX, BX								
  taskservice.go:382	0xe3135f		4889d9				MOVQ BX, CX								
  taskservice.go:382	0xe31362		0f57c0				XORPS X0, X0								
  taskservice.go:382	0xe31365		31ff				XORL DI, DI								
  taskservice.go:382	0xe31367		4881c4c8000000			ADDQ $.file+123(SB), SP							
  taskservice.go:382	0xe3136e		5d				POPQ BP									
  taskservice.go:382	0xe3136f		c3				RET									
  taskservice.go:380	0xe31370		4889442408			MOVQ AX, 0x8(SP)							
  taskservice.go:380	0xe31375		48895c2410			MOVQ BX, 0x10(SP)							
  taskservice.go:380	0xe3137a		48894c2418			MOVQ CX, 0x18(SP)							
  taskservice.go:380	0xe3137f		48897c2420			MOVQ DI, 0x20(SP)							
  taskservice.go:380	0xe31384		4889742428			MOVQ SI, 0x28(SP)							
  taskservice.go:380	0xe31389		4c89442430			MOVQ R8, 0x30(SP)							
  taskservice.go:380	0xe3138e		e84d5164ff			CALL runtime.morestack_noctxt.abi0(SB)					
  taskservice.go:380	0xe31393		488b442408			MOVQ 0x8(SP), AX							
  taskservice.go:380	0xe31398		488b5c2410			MOVQ 0x10(SP), BX							
  taskservice.go:380	0xe3139d		488b4c2418			MOVQ 0x18(SP), CX							
  taskservice.go:380	0xe313a2		488b7c2420			MOVQ 0x20(SP), DI							
  taskservice.go:380	0xe313a7		488b742428			MOVQ 0x28(SP), SI							
  taskservice.go:380	0xe313ac		4c8b442430			MOVQ 0x30(SP), R8							
  taskservice.go:380	0xe313b1		e9eaf6ffff			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).planStationTaskRoute(SB)	
  :-1			0xe313b6		cc				INT $__subsystem__(SB)							
  :-1			0xe313b7		cc				INT $__subsystem__(SB)							
  :-1			0xe313b8		cc				INT $__subsystem__(SB)							
  :-1			0xe313b9		cc				INT $__subsystem__(SB)							
  :-1			0xe313ba		cc				INT $__subsystem__(SB)							
  :-1			0xe313bb		cc				INT $__subsystem__(SB)							
  :-1			0xe313bc		cc				INT $__subsystem__(SB)							
  :-1			0xe313bd		cc				INT $__subsystem__(SB)							
  :-1			0xe313be		cc				INT $__subsystem__(SB)							
  :-1			0xe313bf		cc				INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).hasPendingTasks(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:430	0xe313c0		493b6610		CMPQ SP, 0x10(R14)								
  taskservice.go:430	0xe313c4		0f86a6000000		JBE 0xe31470									
  taskservice.go:430	0xe313ca		55			PUSHQ BP									
  taskservice.go:430	0xe313cb		4889e5			MOVQ SP, BP									
  taskservice.go:430	0xe313ce		4883ec38		SUBQ $__major_os_version__+50(SB), SP						
  taskservice.go:430	0xe313d2		66440fd67c2430		MOVQ X15, 0x30(SP)								
  taskservice.go:430	0xe313d9		c644240f00		MOVB $0x0, 0xf(SP)								
  taskservice.go:430	0xe313de		c644240e00		MOVB $0x0, 0xe(SP)								
  taskservice.go:431	0xe313e3		488d4820		LEAQ 0x20(AX), CX								
  mutex.go:85		0xe313e7		4889c2			MOVQ AX, DX									
  taskservice.go:431	0xe313ea		31c0			XORL AX, AX									
  taskservice.go:431	0xe313ec		bb01000000		MOVL $__minor_os_version__(SB), BX						
  taskservice.go:431	0xe313f1		f00fb15a20		LOCK CMPXCHGL BX, 0x20(DX)							
  taskservice.go:431	0xe313f6		0f94c3			SETE BL										
  mutex.go:85		0xe313f9		84db			TESTL BL, BL									
  mutex.go:85		0xe313fb		751c			JNE 0xe31419									
  mutex.go:85		0xe313fd		4889542428		MOVQ DX, 0x28(SP)								
  taskservice.go:431	0xe31402		48894c2410		MOVQ CX, 0x10(SP)								
  mutex.go:92		0xe31407		4889c8			MOVQ CX, AX									
  mutex.go:92		0xe3140a		e8116665ff		CALL sync.(*Mutex).lockSlow(SB)							
  taskservice.go:432	0xe3140f		488b4c2410		MOVQ 0x10(SP), CX								
  taskservice.go:433	0xe31414		488b542428		MOVQ 0x28(SP), DX								
  taskservice.go:432	0xe31419		488d0580000000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).hasPendingTasks.deferwrap1(SB), AX	
  taskservice.go:432	0xe31420		4889442418		MOVQ AX, 0x18(SP)								
  taskservice.go:432	0xe31425		48894c2420		MOVQ CX, 0x20(SP)								
  taskservice.go:432	0xe3142a		488d442418		LEAQ 0x18(SP), AX								
  taskservice.go:432	0xe3142f		4889442430		MOVQ AX, 0x30(SP)								
  taskservice.go:432	0xe31434		c644240f01		MOVB $__minor_os_version__(SB), 0xf(SP)						
  taskservice.go:433	0xe31439		48837a1000		CMPQ 0x10(DX), $0x0								
  taskservice.go:433	0xe3143e		0f9544240e		SETNE 0xe(SP)									
  taskservice.go:433	0xe31443		c644240f00		MOVB $0x0, 0xf(SP)								
  taskservice.go:433	0xe31448		488b542430		MOVQ 0x30(SP), DX								
  taskservice.go:433	0xe3144d		488b02			MOVQ 0(DX), AX									
  taskservice.go:433	0xe31450		ffd0			CALL AX										
  taskservice.go:433	0xe31452		0fb644240e		MOVZX 0xe(SP), AX								
  taskservice.go:433	0xe31457		4883c438		ADDQ $__major_os_version__+50(SB), SP						
  taskservice.go:433	0xe3145b		5d			POPQ BP										
  taskservice.go:433	0xe3145c		c3			RET										
  taskservice.go:433	0xe3145d		0f1f00			NOPL 0(AX)									
  taskservice.go:433	0xe31460		e81b8760ff		CALL runtime.deferreturn(SB)							
  taskservice.go:433	0xe31465		0fb644240e		MOVZX 0xe(SP), AX								
  taskservice.go:433	0xe3146a		4883c438		ADDQ $__major_os_version__+50(SB), SP						
  taskservice.go:433	0xe3146e		5d			POPQ BP										
  taskservice.go:433	0xe3146f		c3			RET										
  taskservice.go:430	0xe31470		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:430	0xe31475		e8665064ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:430	0xe3147a		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:430	0xe3147f		90			NOPL										
  taskservice.go:430	0xe31480		e93bffffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).hasPendingTasks(SB)			
  :-1			0xe31485		cc			INT $__subsystem__(SB)								
  :-1			0xe31486		cc			INT $__subsystem__(SB)								
  :-1			0xe31487		cc			INT $__subsystem__(SB)								
  :-1			0xe31488		cc			INT $__subsystem__(SB)								
  :-1			0xe31489		cc			INT $__subsystem__(SB)								
  :-1			0xe3148a		cc			INT $__subsystem__(SB)								
  :-1			0xe3148b		cc			INT $__subsystem__(SB)								
  :-1			0xe3148c		cc			INT $__subsystem__(SB)								
  :-1			0xe3148d		cc			INT $__subsystem__(SB)								
  :-1			0xe3148e		cc			INT $__subsystem__(SB)								
  :-1			0xe3148f		cc			INT $__subsystem__(SB)								
  :-1			0xe31490		cc			INT $__subsystem__(SB)								
  :-1			0xe31491		cc			INT $__subsystem__(SB)								
  :-1			0xe31492		cc			INT $__subsystem__(SB)								
  :-1			0xe31493		cc			INT $__subsystem__(SB)								
  :-1			0xe31494		cc			INT $__subsystem__(SB)								
  :-1			0xe31495		cc			INT $__subsystem__(SB)								
  :-1			0xe31496		cc			INT $__subsystem__(SB)								
  :-1			0xe31497		cc			INT $__subsystem__(SB)								
  :-1			0xe31498		cc			INT $__subsystem__(SB)								
  :-1			0xe31499		cc			INT $__subsystem__(SB)								
  :-1			0xe3149a		cc			INT $__subsystem__(SB)								
  :-1			0xe3149b		cc			INT $__subsystem__(SB)								
  :-1			0xe3149c		cc			INT $__subsystem__(SB)								
  :-1			0xe3149d		cc			INT $__subsystem__(SB)								
  :-1			0xe3149e		cc			INT $__subsystem__(SB)								
  :-1			0xe3149f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).hasPendingTasks.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:432	0xe314a0		493b6610		CMPQ SP, 0x10(R14)								
  taskservice.go:432	0xe314a4		762f			JBE 0xe314d5									
  taskservice.go:432	0xe314a6		55			PUSHQ BP									
  taskservice.go:432	0xe314a7		4889e5			MOVQ SP, BP									
  taskservice.go:432	0xe314aa		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  taskservice.go:432	0xe314ae		4d8b6620		MOVQ 0x20(R14), R12								
  taskservice.go:432	0xe314b2		4d85e4			TESTQ R12, R12									
  taskservice.go:432	0xe314b5		7525			JNE 0xe314dc									
  taskservice.go:432	0xe314b7		488b4208		MOVQ 0x8(DX), AX								
  mutex.go:221		0xe314bb		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221		0xe314c0		f00fc118		LOCK XADDL BX, 0(AX)								
  mutex.go:221		0xe314c4		ffcb			DECL BX										
  mutex.go:222		0xe314c6		85db			TESTL BX, BX									
  mutex.go:222		0xe314c8		7405			JE 0xe314cf									
  mutex.go:225		0xe314ca		e8316865ff		CALL sync.(*Mutex).unlockSlow(SB)						
  taskservice.go:432	0xe314cf		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  taskservice.go:432	0xe314d3		5d			POPQ BP										
  taskservice.go:432	0xe314d4		c3			RET										
  taskservice.go:432	0xe314d5		e8864f64ff		CALL runtime.morestack.abi0(SB)							
  taskservice.go:432	0xe314da		ebc4			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).hasPendingTasks.deferwrap1(SB)	
  taskservice.go:432	0xe314dc		4c8d6c2420		LEAQ 0x20(SP), R13								
  taskservice.go:432	0xe314e1		4d392c24		CMPQ 0(R12), R13								
  taskservice.go:432	0xe314e5		75d0			JNE 0xe314b7									
  taskservice.go:432	0xe314e7		49892424		MOVQ SP, 0(R12)									
  taskservice.go:432	0xe314eb		ebca			JMP 0xe314b7									
  :-1			0xe314ed		cc			INT $__subsystem__(SB)								
  :-1			0xe314ee		cc			INT $__subsystem__(SB)								
  :-1			0xe314ef		cc			INT $__subsystem__(SB)								
  :-1			0xe314f0		cc			INT $__subsystem__(SB)								
  :-1			0xe314f1		cc			INT $__subsystem__(SB)								
  :-1			0xe314f2		cc			INT $__subsystem__(SB)								
  :-1			0xe314f3		cc			INT $__subsystem__(SB)								
  :-1			0xe314f4		cc			INT $__subsystem__(SB)								
  :-1			0xe314f5		cc			INT $__subsystem__(SB)								
  :-1			0xe314f6		cc			INT $__subsystem__(SB)								
  :-1			0xe314f7		cc			INT $__subsystem__(SB)								
  :-1			0xe314f8		cc			INT $__subsystem__(SB)								
  :-1			0xe314f9		cc			INT $__subsystem__(SB)								
  :-1			0xe314fa		cc			INT $__subsystem__(SB)								
  :-1			0xe314fb		cc			INT $__subsystem__(SB)								
  :-1			0xe314fc		cc			INT $__subsystem__(SB)								
  :-1			0xe314fd		cc			INT $__subsystem__(SB)								
  :-1			0xe314fe		cc			INT $__subsystem__(SB)								
  :-1			0xe314ff		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).returnIdleVehiclesToDock(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:437	0xe31500		4c8d6424f0		LEAQ -0x10(SP), R12								
  taskservice.go:437	0xe31505		4d3b6610		CMPQ R12, 0x10(R14)								
  taskservice.go:437	0xe31509		0f86ed010000		JBE 0xe316fc									
  taskservice.go:437	0xe3150f		55			PUSHQ BP									
  taskservice.go:437	0xe31510		4889e5			MOVQ SP, BP									
  taskservice.go:437	0xe31513		4881ec88000000		SUBQ $.file+59(SB), SP								
  taskservice.go:438	0xe3151a		4885c0			TESTQ AX, AX									
  taskservice.go:438	0xe3151d		744b			JE 0xe3156a									
  taskservice.go:438	0xe3151f		48833800		CMPQ 0(AX), $0x0								
  taskservice.go:438	0xe31523		7445			JE 0xe3156a									
  taskservice.go:438	0xe31525		4889842498000000	MOVQ AX, 0x98(SP)								
  taskservice.go:438	0xe3152d		e88efeffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).hasPendingTasks(SB)		
  taskservice.go:438	0xe31532		84c0			TESTL AL, AL									
  taskservice.go:438	0xe31534		7534			JNE 0xe3156a									
  taskservice.go:441	0xe31536		488b8c2498000000	MOVQ 0x98(SP), CX								
  taskservice.go:441	0xe3153e		488b01			MOVQ 0(CX), AX									
  taskservice.go:441	0xe31541		e8ba290100		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForklifts(SB)		
  taskservice.go:441	0xe31546		4889cf			MOVQ CX, DI									
  taskservice.go:441	0xe31549		4889d9			MOVQ BX, CX									
  taskservice.go:441	0xe3154c		4889c3			MOVQ AX, BX									
  taskservice.go:441	0xe3154f		488b842498000000	MOVQ 0x98(SP), AX								
  taskservice.go:441	0xe31557		e864120000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).getIdleForklifts(SB)		
  taskservice.go:441	0xe3155c		4889442460		MOVQ AX, 0x60(SP)								
  taskservice.go:441	0xe31561		48895c2448		MOVQ BX, 0x48(SP)								
  taskservice.go:441	0xe31566		31c9			XORL CX, CX									
  taskservice.go:441	0xe31568		eb0c			JMP 0xe31576									
  taskservice.go:439	0xe3156a		4881c488000000		ADDQ $.file+59(SB), SP								
  taskservice.go:439	0xe31571		5d			POPQ BP										
  taskservice.go:439	0xe31572		c3			RET										
  taskservice.go:441	0xe31573		48ffc1			INCQ CX										
  taskservice.go:441	0xe31576		4839cb			CMPQ BX, CX									
  taskservice.go:441	0xe31579		0f8e74010000		JLE 0xe316f3									
  taskservice.go:441	0xe3157f		488b14c8		MOVQ 0(AX)(CX*8), DX								
  taskservice.go:442	0xe31583		4885d2			TESTQ DX, DX									
  taskservice.go:442	0xe31586		74eb			JE 0xe31573									
  taskservice.go:441	0xe31588		48894c2440		MOVQ CX, 0x40(SP)								
  taskservice.go:441	0xe3158d		4889542458		MOVQ DX, 0x58(SP)								
  taskservice.go:445	0xe31592		488b02			MOVQ 0(DX), AX									
  taskservice.go:445	0xe31595		488b5a08		MOVQ 0x8(DX), BX								
  taskservice.go:445	0xe31599		488b4a38		MOVQ 0x38(DX), CX								
  taskservice.go:445	0xe3159d		488b7a40		MOVQ 0x40(DX), DI								
  taskservice.go:445	0xe315a1		e83aafffff		CALL CAS-Backend/pkg/diapdu.currentStationForVehicle(SB)			
  taskservice.go:446	0xe315a6		4885c9			TESTQ CX, CX									
  taskservice.go:446	0xe315a9		7415			JE 0xe315c0									
  taskservice.go:441	0xe315ab		488b442460		MOVQ 0x60(SP), AX								
  taskservice.go:441	0xe315b0		488b4c2440		MOVQ 0x40(SP), CX								
  taskservice.go:441	0xe315b5		488b5c2448		MOVQ 0x48(SP), BX								
  taskservice.go:447	0xe315ba		ebb7			JMP 0xe31573									
  taskservice.go:447	0xe315bc		0f1f4000		NOPL 0(AX)									
  taskservice.go:449	0xe315c0		e8fb136bff		CALL strings.TrimSpace(SB)							
  taskservice.go:449	0xe315c5		4889442450		MOVQ AX, 0x50(SP)								
  taskservice.go:449	0xe315ca		48895c2438		MOVQ BX, 0x38(SP)								
  taskservice.go:450	0xe315cf		488b4c2458		MOVQ 0x58(SP), CX								
  taskservice.go:450	0xe315d4		488b11			MOVQ 0(CX), DX									
  taskservice.go:450	0xe315d7		488b7108		MOVQ 0x8(CX), SI								
  taskservice.go:450	0xe315db		4889c7			MOVQ AX, DI									
  taskservice.go:450	0xe315de		488b842498000000	MOVQ 0x98(SP), AX								
  taskservice.go:449	0xe315e6		4989d8			MOVQ BX, R8									
  taskservice.go:450	0xe315e9		4889d3			MOVQ DX, BX									
  taskservice.go:450	0xe315ec		4889f1			MOVQ SI, CX									
  taskservice.go:450	0xe315ef		4c89c6			MOVQ R8, SI									
  taskservice.go:450	0xe315f2		e8094dffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).syncVehicleDockFromRuntime(SB)	
  dock.go:12		0xe315f7		488b4c2438		MOVQ 0x38(SP), CX								
  dock.go:12		0xe315fc		0f1f4000		NOPL 0(AX)									
  dock.go:12		0xe31600		4885c9			TESTQ CX, CX									
  dock.go:12		0xe31603		7420			JE 0xe31625									
  strings.go:462	0xe31605		90			NOPL										
  strings.go:17		0xe31606		4883f902		CMPQ CX, $__minor_os_version__+1(SB)						
  strings.go:17		0xe3160a		7c10			JL 0xe3161c									
  strings.go:17		0xe3160c		488b542450		MOVQ 0x50(SP), DX								
  strings.go:17		0xe31611		66813a5050		CMPW 0(DX), $__size_of_stack_commit__+16464(SB)					
  strings.go:17		0xe31616		400f94c6		SETE SI										
  strings.go:17		0xe3161a		eb10			JMP 0xe3162c									
  taskservice.go:454	0xe3161c		488b542450		MOVQ 0x50(SP), DX								
  taskservice.go:454	0xe31621		31f6			XORL SI, SI									
  strings.go:17		0xe31623		eb07			JMP 0xe3162c									
  taskservice.go:454	0xe31625		488b542450		MOVQ 0x50(SP), DX								
  taskservice.go:454	0xe3162a		31f6			XORL SI, SI									
  taskservice.go:451	0xe3162c		4084f6			TESTL SI, SI									
  taskservice.go:451	0xe3162f		7414			JE 0xe31645									
  taskservice.go:441	0xe31631		488b442460		MOVQ 0x60(SP), AX								
  taskservice.go:441	0xe31636		488b4c2440		MOVQ 0x40(SP), CX								
  taskservice.go:441	0xe3163b		488b5c2448		MOVQ 0x48(SP), BX								
  taskservice.go:452	0xe31640		e92effffff		JMP 0xe31573									
  taskservice.go:454	0xe31645		440f117c2468		MOVUPS X15, 0x68(SP)								
  taskservice.go:454	0xe3164b		440f117c2478		MOVUPS X15, 0x78(SP)								
  taskservice.go:454	0xe31651		488b4c2458		MOVQ 0x58(SP), CX								
  taskservice.go:454	0xe31656		488b01			MOVQ 0(CX), AX									
  taskservice.go:454	0xe31659		488b5908		MOVQ 0x8(CX), BX								
  taskservice.go:454	0xe3165d		0f1f00			NOPL 0(AX)									
  taskservice.go:454	0xe31660		e8bb8a63ff		CALL runtime.convTstring(SB)							
  taskservice.go:454	0xe31665		488d0db4122100		LEAQ runtime.types+383264(SB), CX						
  taskservice.go:454	0xe3166c		48894c2468		MOVQ CX, 0x68(SP)								
  taskservice.go:454	0xe31671		4889442470		MOVQ AX, 0x70(SP)								
  taskservice.go:454	0xe31676		488b442450		MOVQ 0x50(SP), AX								
  taskservice.go:454	0xe3167b		488b5c2438		MOVQ 0x38(SP), BX								
  taskservice.go:454	0xe31680		e89b8a63ff		CALL runtime.convTstring(SB)							
  taskservice.go:454	0xe31685		488d0d94122100		LEAQ runtime.types+383264(SB), CX						
  taskservice.go:454	0xe3168c		48894c2478		MOVQ CX, 0x78(SP)								
  taskservice.go:454	0xe31691		4889842480000000	MOVQ AX, 0x80(SP)								
  print.go:233		0xe31699		488b1de0096e02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe316a0		488d0539a40302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe316a7		bf3c000000		MOVL $__major_os_version__+54(SB), DI						
  print.go:233		0xe316ac		488d742468		LEAQ 0x68(SP), SI								
  print.go:233		0xe316b1		41b802000000		MOVL $__minor_os_version__+1(SB), R8						
  print.go:233		0xe316b7		4d89c1			MOVQ R8, R9									
  print.go:233		0xe316ba		488d0d7e173700		LEAQ go:string.*+239927(SB), CX							
  print.go:233		0xe316c1		e85adb6eff		CALL fmt.Fprintf(SB)								
  taskservice.go:455	0xe316c6		488b4c2458		MOVQ 0x58(SP), CX								
  taskservice.go:455	0xe316cb		488b19			MOVQ 0(CX), BX									
  taskservice.go:455	0xe316ce		488b4908		MOVQ 0x8(CX), CX								
  taskservice.go:455	0xe316d2		488b842498000000	MOVQ 0x98(SP), AX								
  taskservice.go:455	0xe316da		e8c1280000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).moveForkliftToNearestPPDock(SB)	
  taskservice.go:441	0xe316df		488b442460		MOVQ 0x60(SP), AX								
  taskservice.go:441	0xe316e4		488b4c2440		MOVQ 0x40(SP), CX								
  taskservice.go:441	0xe316e9		488b5c2448		MOVQ 0x48(SP), BX								
  taskservice.go:455	0xe316ee		e980feffff		JMP 0xe31573									
  taskservice.go:457	0xe316f3		4881c488000000		ADDQ $.file+59(SB), SP								
  taskservice.go:457	0xe316fa		5d			POPQ BP										
  taskservice.go:457	0xe316fb		c3			RET										
  taskservice.go:437	0xe316fc		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:437	0xe31701		e8da4d64ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:437	0xe31706		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:437	0xe3170b		e9f0fdffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).returnIdleVehiclesToDock(SB)	
  :-1			0xe31710		cc			INT $__subsystem__(SB)								
  :-1			0xe31711		cc			INT $__subsystem__(SB)								
  :-1			0xe31712		cc			INT $__subsystem__(SB)								
  :-1			0xe31713		cc			INT $__subsystem__(SB)								
  :-1			0xe31714		cc			INT $__subsystem__(SB)								
  :-1			0xe31715		cc			INT $__subsystem__(SB)								
  :-1			0xe31716		cc			INT $__subsystem__(SB)								
  :-1			0xe31717		cc			INT $__subsystem__(SB)								
  :-1			0xe31718		cc			INT $__subsystem__(SB)								
  :-1			0xe31719		cc			INT $__subsystem__(SB)								
  :-1			0xe3171a		cc			INT $__subsystem__(SB)								
  :-1			0xe3171b		cc			INT $__subsystem__(SB)								
  :-1			0xe3171c		cc			INT $__subsystem__(SB)								
  :-1			0xe3171d		cc			INT $__subsystem__(SB)								
  :-1			0xe3171e		cc			INT $__subsystem__(SB)								
  :-1			0xe3171f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).processTasks(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:459	0xe31720		4c8da424a8feffff	LEAQ 0xfffffea8(SP), R12							
  taskservice.go:459	0xe31728		4d3b6610		CMPQ R12, 0x10(R14)								
  taskservice.go:459	0xe3172c		0f86b30d0000		JBE 0xe324e5									
  taskservice.go:459	0xe31732		55			PUSHQ BP									
  taskservice.go:459	0xe31733		4889e5			MOVQ SP, BP									
  taskservice.go:459	0xe31736		4881ecd0010000		SUBQ $.file+387(SB), SP								
  taskservice.go:459	0xe3173d		66440fd6bc24c8010000	MOVQ X15, 0x1c8(SP)								
  mutex.go:85		0xe31747		48898424e0010000	MOVQ AX, 0x1e0(SP)								
  taskservice.go:459	0xe3174f		c644244700		MOVB $0x0, 0x47(SP)								
  taskservice.go:460	0xe31754		488d4820		LEAQ 0x20(AX), CX								
  taskservice.go:460	0xe31758		48898c24e8000000	MOVQ CX, 0xe8(SP)								
  mutex.go:85		0xe31760		4889c2			MOVQ AX, DX									
  taskservice.go:460	0xe31763		31c0			XORL AX, AX									
  taskservice.go:460	0xe31765		be01000000		MOVL $__minor_os_version__(SB), SI						
  taskservice.go:460	0xe3176a		f00fb17220		LOCK CMPXCHGL SI, 0x20(DX)							
  taskservice.go:460	0xe3176f		400f94c7		SETE DI										
  mutex.go:85		0xe31773		4084ff			TESTL DI, DI									
  mutex.go:85		0xe31776		7522			JNE 0xe3179a									
  mutex.go:92		0xe31778		4889c8			MOVQ CX, AX									
  mutex.go:92		0xe3177b		0f1f440000		NOPL 0(AX)(AX*1)								
  mutex.go:92		0xe31780		e89b6265ff		CALL sync.(*Mutex).lockSlow(SB)							
  mutex.go:225		0xe31785		488b8c24e8000000	MOVQ 0xe8(SP), CX								
  taskservice.go:461	0xe3178d		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:461	0xe31795		be01000000		MOVL $__minor_os_version__(SB), SI						
  taskservice.go:461	0xe3179a		48837a1000		CMPQ 0x10(DX), $0x0								
  taskservice.go:461	0xe3179f		90			NOPL										
  taskservice.go:461	0xe317a0		7532			JNE 0xe317d4									
  taskservice.go:462	0xe317a2		90			NOPL										
  mutex.go:221		0xe317a3		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221		0xe317a8		f00fc15a20		LOCK XADDL BX, 0x20(DX)								
  mutex.go:221		0xe317ad		ffcb			DECL BX										
  mutex.go:222		0xe317af		85db			TESTL BX, BX									
  mutex.go:222		0xe317b1		7410			JE 0xe317c3									
  mutex.go:225		0xe317b3		4889c8			MOVQ CX, AX									
  mutex.go:225		0xe317b6		e8456565ff		CALL sync.(*Mutex).unlockSlow(SB)						
  taskservice.go:463	0xe317bb		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:463	0xe317c3		4889d0			MOVQ DX, AX									
  taskservice.go:463	0xe317c6		e835fdffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).returnIdleVehiclesToDock(SB)	
  taskservice.go:464	0xe317cb		4881c4d0010000		ADDQ $.file+387(SB), SP								
  taskservice.go:464	0xe317d2		5d			POPQ BP										
  taskservice.go:464	0xe317d3		c3			RET										
  taskservice.go:466	0xe317d4		90			NOPL										
  mutex.go:221		0xe317d5		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221		0xe317da		f00fc15a20		LOCK XADDL BX, 0x20(DX)								
  mutex.go:221		0xe317df		ffcb			DECL BX										
  mutex.go:222		0xe317e1		85db			TESTL BX, BX									
  mutex.go:222		0xe317e3		7410			JE 0xe317f5									
  mutex.go:225		0xe317e5		4889c8			MOVQ CX, AX									
  mutex.go:225		0xe317e8		e8136565ff		CALL sync.(*Mutex).unlockSlow(SB)						
  taskservice.go:468	0xe317ed		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:468	0xe317f5		488b02			MOVQ 0(DX), AX									
  taskservice.go:468	0xe317f8		e803270100		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForklifts(SB)		
  taskservice.go:469	0xe317fd		4889cf			MOVQ CX, DI									
  taskservice.go:469	0xe31800		4889d9			MOVQ BX, CX									
  taskservice.go:469	0xe31803		4889c3			MOVQ AX, BX									
  taskservice.go:469	0xe31806		488b8424e0010000	MOVQ 0x1e0(SP), AX								
  taskservice.go:469	0xe3180e		e8ad0f0000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).getIdleForklifts(SB)		
  taskservice.go:471	0xe31813		4885db			TESTQ BX, BX									
  taskservice.go:471	0xe31816		7439			JE 0xe31851									
  taskservice.go:469	0xe31818		48894c2468		MOVQ CX, 0x68(SP)								
  taskservice.go:469	0xe3181d		48895c2460		MOVQ BX, 0x60(SP)								
  taskservice.go:469	0xe31822		48898424f0000000	MOVQ AX, 0xf0(SP)								
  taskservice.go:475	0xe3182a		488d05ef102100		LEAQ runtime.types+383264(SB), AX						
  taskservice.go:475	0xe31831		4889d9			MOVQ BX, CX									
  taskservice.go:475	0xe31834		31db			XORL BX, BX									
  taskservice.go:475	0xe31836		e8250364ff		CALL runtime.makeslice(SB)							
  taskservice.go:476	0xe3183b		488b9424f0000000	MOVQ 0xf0(SP), DX								
  taskservice.go:476	0xe31843		488b4c2460		MOVQ 0x60(SP), CX								
  taskservice.go:469	0xe31848		4889cb			MOVQ CX, BX									
  taskservice.go:469	0xe3184b		31f6			XORL SI, SI									
  taskservice.go:469	0xe3184d		31ff			XORL DI, DI									
  taskservice.go:476	0xe3184f		eb54			JMP 0xe318a5									
  taskservice.go:472	0xe31851		488d15c8102100		LEAQ runtime.types+383264(SB), DX						
  taskservice.go:472	0xe31858		4889942428010000	MOVQ DX, 0x128(SP)								
  taskservice.go:472	0xe31860		488d15e9650302		LEAQ CAS-Backend/pkg/diapdu..stmp_23(SB), DX					
  taskservice.go:472	0xe31867		4889942430010000	MOVQ DX, 0x130(SP)								
  print.go:314		0xe3186f		488b1d0a086e02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe31876		488d0563a20302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe3187d		488d8c2428010000	LEAQ 0x128(SP), CX								
  print.go:314		0xe31885		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe3188a		4889fe			MOVQ DI, SI									
  print.go:314		0xe3188d		e8cedf6eff		CALL fmt.Fprintln(SB)								
  taskservice.go:473	0xe31892		4881c4d0010000		ADDQ $.file+387(SB), SP								
  taskservice.go:473	0xe31899		5d			POPQ BP										
  taskservice.go:473	0xe3189a		c3			RET										
  taskservice.go:477	0xe3189b		4e891418		MOVQ R10, 0(AX)(R11*1)								
  taskservice.go:476	0xe3189f		48ffc6			INCQ SI										
  taskservice.go:479	0xe318a2		4c89cf			MOVQ R9, DI									
  taskservice.go:476	0xe318a5		4839f3			CMPQ BX, SI									
  taskservice.go:476	0xe318a8		0f8ea0000000		JLE 0xe3194e									
  taskservice.go:476	0xe318ae		4c8b04f2		MOVQ 0(DX)(SI*8), R8								
  taskservice.go:477	0xe318b2		4c8d4f01		LEAQ 0x1(DI), R9								
  taskservice.go:477	0xe318b6		4d8b10			MOVQ 0(R8), R10									
  taskservice.go:477	0xe318b9		4d8b4008		MOVQ 0x8(R8), R8								
  taskservice.go:477	0xe318bd		0f1f00			NOPL 0(AX)									
  taskservice.go:477	0xe318c0		4c39c9			CMPQ CX, R9									
  taskservice.go:477	0xe318c3		7354			JAE 0xe31919									
  taskservice.go:476	0xe318c5		4889b424c0000000	MOVQ SI, 0xc0(SP)								
  taskservice.go:477	0xe318cd		4c898424b8000000	MOVQ R8, 0xb8(SP)								
  taskservice.go:477	0xe318d5		4c89942450010000	MOVQ R10, 0x150(SP)								
  taskservice.go:477	0xe318dd		4c89cb			MOVQ R9, BX									
  taskservice.go:477	0xe318e0		bf01000000		MOVL $__minor_os_version__(SB), DI						
  taskservice.go:477	0xe318e5		488d3534102100		LEAQ runtime.types+383264(SB), SI						
  taskservice.go:477	0xe318ec		e84f0364ff		CALL runtime.growslice(SB)							
  taskservice.go:476	0xe318f1		488b9424f0000000	MOVQ 0xf0(SP), DX								
  taskservice.go:476	0xe318f9		488bb424c0000000	MOVQ 0xc0(SP), SI								
  taskservice.go:477	0xe31901		4c8b8424b8000000	MOVQ 0xb8(SP), R8								
  taskservice.go:477	0xe31909		4c8b942450010000	MOVQ 0x150(SP), R10								
  taskservice.go:477	0xe31911		4989d9			MOVQ BX, R9									
  taskservice.go:476	0xe31914		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:477	0xe31919		4d8d59ff		LEAQ -0x1(R9), R11								
  taskservice.go:477	0xe3191d		49c1e304		SHLQ $__subsystem__+1(SB), R11							
  taskservice.go:477	0xe31921		4e89441808		MOVQ R8, 0x8(AX)(R11*1)								
  taskservice.go:477	0xe31926		833d23c2720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:477	0xe3192d		0f8468ffffff		JE 0xe3189b									
  taskservice.go:477	0xe31933		4c89df			MOVQ R11, DI									
  taskservice.go:477	0xe31936		e8056b64ff		CALL runtime.gcWriteBarrier2(SB)						
  taskservice.go:477	0xe3193b		4d8913			MOVQ R10, 0(R11)								
  taskservice.go:477	0xe3193e		4c8b0438		MOVQ 0(AX)(DI*1), R8								
  taskservice.go:477	0xe31942		4d894308		MOVQ R8, 0x8(R11)								
  taskservice.go:477	0xe31946		4989fb			MOVQ DI, R11									
  taskservice.go:477	0xe31949		e94dffffff		JMP 0xe3189b									
  taskservice.go:479	0xe3194e		440f11bc2418010000	MOVUPS X15, 0x118(SP)								
  taskservice.go:479	0xe31957		4889fb			MOVQ DI, BX									
  taskservice.go:479	0xe3195a		e8618863ff		CALL runtime.convTslice(SB)							
  taskservice.go:479	0xe3195f		488d151a702000		LEAQ runtime.types+342400(SB), DX						
  taskservice.go:479	0xe31966		4889942418010000	MOVQ DX, 0x118(SP)								
  taskservice.go:479	0xe3196e		4889842420010000	MOVQ AX, 0x120(SP)								
  print.go:233		0xe31976		488b1d03076e02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe3197d		488d055ca10302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe31984		488d0d5e223600		LEAQ go:string.*+177889(SB), CX							
  print.go:233		0xe3198b		bf26000000		MOVL $__major_os_version__+32(SB), DI						
  print.go:233		0xe31990		488db42418010000	LEAQ 0x118(SP), SI								
  print.go:233		0xe31998		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe3199e		4d89c1			MOVQ R8, R9									
  print.go:233		0xe319a1		e87ad86eff		CALL fmt.Fprintf(SB)								
  taskservice.go:481	0xe319a6		90			NOPL										
  mutex.go:85		0xe319a7		31c0			XORL AX, AX									
  mutex.go:85		0xe319a9		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  mutex.go:85		0xe319b1		be01000000		MOVL $__minor_os_version__(SB), SI						
  mutex.go:85		0xe319b6		f00fb17220		LOCK CMPXCHGL SI, 0x20(DX)							
  mutex.go:85		0xe319bb		400f94c6		SETE SI										
  mutex.go:85		0xe319bf		90			NOPL										
  mutex.go:85		0xe319c0		4084f6			TESTL SI, SI									
  mutex.go:85		0xe319c3		7515			JNE 0xe319da									
  mutex.go:92		0xe319c5		488b8424e8000000	MOVQ 0xe8(SP), AX								
  mutex.go:92		0xe319cd		e84e6065ff		CALL sync.(*Mutex).lockSlow(SB)							
  taskservice.go:485	0xe319d2		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:482	0xe319da		4c8d051f0b0000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).processTasks.deferwrap1(SB), R8	
  taskservice.go:482	0xe319e1		4c89842408010000	MOVQ R8, 0x108(SP)								
  taskservice.go:482	0xe319e9		4c8b8424e8000000	MOVQ 0xe8(SP), R8								
  taskservice.go:482	0xe319f1		4c89842410010000	MOVQ R8, 0x110(SP)								
  taskservice.go:482	0xe319f9		4c8d842408010000	LEAQ 0x108(SP), R8								
  taskservice.go:482	0xe31a01		4c898424c8010000	MOVQ R8, 0x1c8(SP)								
  taskservice.go:482	0xe31a09		c644244701		MOVB $__minor_os_version__(SB), 0x47(SP)					
  taskservice.go:485	0xe31a0e		488b8424f0000000	MOVQ 0xf0(SP), AX								
  taskservice.go:485	0xe31a16		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:485	0xe31a1b		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:485	0xe31a20		4c8b4210		MOVQ 0x10(DX), R8								
  taskservice.go:485	0xe31a24		4d85c0			TESTQ R8, R8									
  taskservice.go:485	0xe31a27		0f8464010000		JE 0xe31b91									
  taskservice.go:485	0xe31a2d		4c8b4a08		MOVQ 0x8(DX), R9								
  taskservice.go:487	0xe31a31		4d8b11			MOVQ 0(R9), R10									
  taskservice.go:487	0xe31a34		4d8b5218		MOVQ 0x18(R10), R10								
  taskservice.go:487	0xe31a38		31f6			XORL SI, SI									
  taskservice.go:488	0xe31a3a		e970010000		JMP 0xe31baf									
  taskservice.go:487	0xe31a3f		4c89542448		MOVQ R10, 0x48(SP)								
  taskservice.go:487	0xe31a44		31ff			XORL DI, DI									
  taskservice.go:488	0xe31a46		e9f9010000		JMP 0xe31c44									
  taskservice.go:537	0xe31a4b		4531c0			XORL R8, R8									
  taskservice.go:537	0xe31a4e		4531c9			XORL R9, R9									
  taskservice.go:537	0xe31a51		4531db			XORL R11, R11									
  taskservice.go:537	0xe31a54		4531e4			XORL R12, R12									
  taskservice.go:537	0xe31a57		e98c050000		JMP 0xe31fe8									
  taskservice.go:545	0xe31a5c		4c8b4210		MOVQ 0x10(DX), R8								
  taskservice.go:545	0xe31a60		4c39c6			CMPQ SI, R8									
  taskservice.go:545	0xe31a63		0f8df5000000		JGE 0xe31b5e									
  taskservice.go:546	0xe31a69		0f87c8070000		JA 0xe32237									
  taskservice.go:545	0xe31a6f		4c8b6a08		MOVQ 0x8(DX), R13								
  taskservice.go:545	0xe31a73		4c8b7a18		MOVQ 0x18(DX), R15								
  taskservice.go:546	0xe31a77		4929f0			SUBQ SI, R8									
  taskservice.go:546	0xe31a7a		4f8d1403		LEAQ 0(R11)(R8*1), R10								
  taskservice.go:546	0xe31a7e		4c29fe			SUBQ R15, SI									
  taskservice.go:546	0xe31a81		4c8b7c2478		MOVQ 0x78(SP), R15								
  taskservice.go:546	0xe31a86		49c1e703		SHLQ $__subsystem__(SB), R15							
  taskservice.go:546	0xe31a8a		48c1fe3f		SARQ $__major_os_version__+57(SB), SI						
  taskservice.go:546	0xe31a8e		4921f7			ANDQ SI, R15									
  taskservice.go:546	0xe31a91		4d01fd			ADDQ R15, R13									
  taskservice.go:546	0xe31a94		4d39d1			CMPQ R9, R10									
  taskservice.go:546	0xe31a97		734a			JAE 0xe31ae3									
  taskservice.go:546	0xe31a99		4c898424c0000000	MOVQ R8, 0xc0(SP)								
  taskservice.go:546	0xe31aa1		4c89ac2448010000	MOVQ R13, 0x148(SP)								
  taskservice.go:546	0xe31aa9		4c89e0			MOVQ R12, AX									
  taskservice.go:546	0xe31aac		4c89d3			MOVQ R10, BX									
  taskservice.go:546	0xe31aaf		4c89c9			MOVQ R9, CX									
  taskservice.go:546	0xe31ab2		4c89c7			MOVQ R8, DI									
  taskservice.go:546	0xe31ab5		488d35e4251f00		LEAQ runtime.types+258208(SB), SI						
  taskservice.go:546	0xe31abc		0f1f4000		NOPL 0(AX)									
  taskservice.go:546	0xe31ac0		e87b0164ff		CALL runtime.growslice(SB)							
  taskservice.go:546	0xe31ac5		4c8b8424c0000000	MOVQ 0xc0(SP), R8								
  taskservice.go:546	0xe31acd		4c8b5c2450		MOVQ 0x50(SP), R11								
  taskservice.go:546	0xe31ad2		4c8bac2448010000	MOVQ 0x148(SP), R13								
  taskservice.go:546	0xe31ada		4989c9			MOVQ CX, R9									
  taskservice.go:546	0xe31add		4989da			MOVQ BX, R10									
  taskservice.go:546	0xe31ae0		4989c4			MOVQ AX, R12									
  taskservice.go:546	0xe31ae3		4c898c24c0000000	MOVQ R9, 0xc0(SP)								
  taskservice.go:546	0xe31aeb		4c89a42448010000	MOVQ R12, 0x148(SP)								
  taskservice.go:546	0xe31af3		4c89542450		MOVQ R10, 0x50(SP)								
  taskservice.go:546	0xe31af8		4c89da			MOVQ R11, DX									
  taskservice.go:546	0xe31afb		4d29cb			SUBQ R9, R11									
  taskservice.go:546	0xe31afe		4c89d1			MOVQ R10, CX									
  taskservice.go:546	0xe31b01		4829d1			SUBQ DX, CX									
  taskservice.go:546	0xe31b04		48c1e203		SHLQ $__subsystem__(SB), DX							
  taskservice.go:546	0xe31b08		49c1fb3f		SARQ $__major_os_version__+57(SB), R11						
  taskservice.go:546	0xe31b0c		4921d3			ANDQ DX, R11									
  taskservice.go:546	0xe31b0f		4b8d1c1c		LEAQ 0(R12)(R11*1), BX								
  taskservice.go:546	0xe31b13		488d0586251f00		LEAQ runtime.types+258208(SB), AX						
  taskservice.go:546	0xe31b1a		4c89ef			MOVQ R13, DI									
  taskservice.go:546	0xe31b1d		4c89c6			MOVQ R8, SI									
  taskservice.go:546	0xe31b20		e81bca63ff		CALL runtime.typedslicecopy(SB)							
  taskservice.go:493	0xe31b25		488b8424f0000000	MOVQ 0xf0(SP), AX								
  taskservice.go:493	0xe31b2d		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:548	0xe31b32		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:493	0xe31b3a		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:550	0xe31b3f		0fb67c2446		MOVZX 0x46(SP), DI								
  taskservice.go:551	0xe31b44		4c8b542448		MOVQ 0x48(SP), R10								
  taskservice.go:548	0xe31b49		4c8b5c2450		MOVQ 0x50(SP), R11								
  taskservice.go:548	0xe31b4e		4c8b8c24c0000000	MOVQ 0xc0(SP), R9								
  taskservice.go:548	0xe31b56		4c8ba42448010000	MOVQ 0x148(SP), R12								
  taskservice.go:548	0xe31b5e		4c895a10		MOVQ R11, 0x10(DX)								
  taskservice.go:548	0xe31b62		4c894a18		MOVQ R9, 0x18(DX)								
  taskservice.go:548	0xe31b66		833de3bf720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:548	0xe31b6d		7410			JE 0xe31b7f									
  taskservice.go:548	0xe31b6f		e8cc6864ff		CALL runtime.gcWriteBarrier2(SB)						
  taskservice.go:548	0xe31b74		4d8923			MOVQ R12, 0(R11)								
  taskservice.go:548	0xe31b77		4c8b4208		MOVQ 0x8(DX), R8								
  taskservice.go:548	0xe31b7b		4d894308		MOVQ R8, 0x8(R11)								
  taskservice.go:548	0xe31b7f		4c896208		MOVQ R12, 0x8(DX)								
  taskservice.go:550	0xe31b83		4084ff			TESTL DI, DI									
  taskservice.go:550	0xe31b86		0f8594feffff		JNE 0xe31a20									
  taskservice.go:550	0xe31b8c		e949060000		JMP 0xe321da									
  taskservice.go:555	0xe31b91		c644244700		MOVB $0x0, 0x47(SP)								
  taskservice.go:555	0xe31b96		488b9424c8010000	MOVQ 0x1c8(SP), DX								
  taskservice.go:555	0xe31b9e		488b02			MOVQ 0(DX), AX									
  taskservice.go:555	0xe31ba1		ffd0			CALL AX										
  taskservice.go:555	0xe31ba3		4881c4d0010000		ADDQ $.file+387(SB), SP								
  taskservice.go:555	0xe31baa		5d			POPQ BP										
  taskservice.go:555	0xe31bab		c3			RET										
  taskservice.go:489	0xe31bac		48ffc6			INCQ SI										
  taskservice.go:488	0xe31baf		4c39c6			CMPQ SI, R8									
  taskservice.go:488	0xe31bb2		0f8d87feffff		JGE 0xe31a3f									
  taskservice.go:488	0xe31bb8		4d8b1cf1		MOVQ 0(R9)(SI*8), R11								
  taskservice.go:488	0xe31bbc		0f1f4000		NOPL 0(AX)									
  taskservice.go:488	0xe31bc0		4d395318		CMPQ 0x18(R11), R10								
  taskservice.go:488	0xe31bc4		74e6			JE 0xe31bac									
  taskservice.go:488	0xe31bc6		e974feffff		JMP 0xe31a3f									
  taskservice.go:532	0xe31bcb		48898424f0000000	MOVQ AX, 0xf0(SP)								
  taskservice.go:532	0xe31bd3		48895c2460		MOVQ BX, 0x60(SP)								
  taskservice.go:532	0xe31bd8		48894c2468		MOVQ CX, 0x68(SP)								
  taskservice.go:532	0xe31bdd		4989d0			MOVQ DX, R8									
  taskservice.go:532	0xe31be0		4829ca			SUBQ CX, DX									
  taskservice.go:532	0xe31be3		4c29c3			SUBQ R8, BX									
  taskservice.go:532	0xe31be6		49c1e003		SHLQ $__subsystem__(SB), R8							
  taskservice.go:532	0xe31bea		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  taskservice.go:532	0xe31bee		4c21c2			ANDQ R8, DX									
  taskservice.go:532	0xe31bf1		4801c2			ADDQ AX, DX									
  taskservice.go:532	0xe31bf4		4889fe			MOVQ DI, SI									
  taskservice.go:532	0xe31bf7		4c89cf			MOVQ R9, DI									
  taskservice.go:532	0xe31bfa		488d059f231f00		LEAQ runtime.types+257952(SB), AX						
  taskservice.go:532	0xe31c01		4989d9			MOVQ BX, R9									
  taskservice.go:532	0xe31c04		4889d3			MOVQ DX, BX									
  taskservice.go:532	0xe31c07		4c89c9			MOVQ R9, CX									
  taskservice.go:532	0xe31c0a		e831c963ff		CALL runtime.typedslicecopy(SB)							
  taskservice.go:531	0xe31c0f		488b742478		MOVQ 0x78(SP), SI								
  taskservice.go:531	0xe31c14		48ffce			DECQ SI										
  taskservice.go:493	0xe31c17		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:493	0xe31c1f		4c8b442468		MOVQ 0x68(SP), R8								
  taskservice.go:493	0xe31c24		4c8b8c24f0000000	MOVQ 0xf0(SP), R9								
  taskservice.go:493	0xe31c2c		488b4c2460		MOVQ 0x60(SP), CX								
  taskservice.go:539	0xe31c31		4c8b542448		MOVQ 0x48(SP), R10								
  taskservice.go:493	0xe31c36		4889cb			MOVQ CX, BX									
  taskservice.go:493	0xe31c39		4c89c8			MOVQ R9, AX									
  taskservice.go:493	0xe31c3c		4c89c1			MOVQ R8, CX									
  taskservice.go:493	0xe31c3f		bf01000000		MOVL $__minor_os_version__(SB), DI						
  taskservice.go:493	0xe31c44		48895c2460		MOVQ BX, 0x60(SP)								
  taskservice.go:493	0xe31c49		48894c2468		MOVQ CX, 0x68(SP)								
  taskservice.go:550	0xe31c4e		40887c2446		MOVB DI, 0x46(SP)								
  taskservice.go:493	0xe31c53		48898424f0000000	MOVQ AX, 0xf0(SP)								
  taskservice.go:537	0xe31c5b		4889742478		MOVQ SI, 0x78(SP)								
  taskservice.go:493	0xe31c60		4885db			TESTQ BX, BX									
  taskservice.go:493	0xe31c63		0f84e2fdffff		JE 0xe31a4b									
  taskservice.go:493	0xe31c69		4531c0			XORL R8, R8									
  taskservice.go:493	0xe31c6c		49c7c1ffffffff		MOVQ $-0x1, R9									
  taskservice.go:493	0xe31c73		49c7c3ffffffff		MOVQ $-0x1, R11									
  taskservice.go:493	0xe31c7a		f20f10051e5c0302	MOVSD_XMM $f64.7fefffffffffffff(SB), X0						
  taskservice.go:493	0xe31c82		4531e4			XORL R12, R12									
  taskservice.go:498	0xe31c85		e9be050000		JMP 0xe32248									
  taskservice.go:516	0xe31c8a		4d85c9			TESTQ R9, R9									
  taskservice.go:516	0xe31c8d		0f8cb8fdffff		JL 0xe31a4b									
  taskservice.go:520	0xe31c93		4c8b4210		MOVQ 0x10(DX), R8								
  taskservice.go:520	0xe31c97		660f1f840000000000	NOPW 0(AX)(AX*1)								
  taskservice.go:520	0xe31ca0		4d39c1			CMPQ R9, R8									
  taskservice.go:520	0xe31ca3		0f830c070000		JAE 0xe323b5									
  taskservice.go:520	0xe31ca9		4c8b4208		MOVQ 0x8(DX), R8								
  taskservice.go:520	0xe31cad		4f8b04c8		MOVQ 0(R8)(R9*8), R8								
  taskservice.go:521	0xe31cb1		4939db			CMPQ R11, BX									
  taskservice.go:521	0xe31cb4		0f83f0060000		JAE 0xe323aa									
  taskservice.go:520	0xe31cba		4c898424c8000000	MOVQ R8, 0xc8(SP)								
  taskservice.go:521	0xe31cc2		4a8b0cd8		MOVQ 0(AX)(R11*8), CX								
  taskservice.go:521	0xe31cc6		48898c24f8000000	MOVQ CX, 0xf8(SP)								
  taskservice.go:522	0xe31cce		440f11bc2488010000	MOVUPS X15, 0x188(SP)								
  taskservice.go:522	0xe31cd7		440f11bc2498010000	MOVUPS X15, 0x198(SP)								
  taskservice.go:522	0xe31ce0		440f11bc24a8010000	MOVUPS X15, 0x1a8(SP)								
  taskservice.go:522	0xe31ce9		440f11bc24b8010000	MOVUPS X15, 0x1b8(SP)								
  taskservice.go:523	0xe31cf2		498b10			MOVQ 0(R8), DX									
  taskservice.go:523	0xe31cf5		4889d0			MOVQ DX, AX									
  taskservice.go:523	0xe31cf8		e8a38363ff		CALL runtime.convT64(SB)							
  taskservice.go:523	0xe31cfd		488d0d5c0e2100		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:523	0xe31d04		48898c2488010000	MOVQ CX, 0x188(SP)								
  taskservice.go:523	0xe31d0c		4889842490010000	MOVQ AX, 0x190(SP)								
  taskservice.go:523	0xe31d14		488b9424c8000000	MOVQ 0xc8(SP), DX								
  taskservice.go:523	0xe31d1c		488b4218		MOVQ 0x18(DX), AX								
  taskservice.go:523	0xe31d20		e87b8363ff		CALL runtime.convT64(SB)							
  taskservice.go:523	0xe31d25		488d0d340e2100		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:523	0xe31d2c		48898c2498010000	MOVQ CX, 0x198(SP)								
  taskservice.go:523	0xe31d34		48898424a0010000	MOVQ AX, 0x1a0(SP)								
  taskservice.go:523	0xe31d3c		488b9424f8000000	MOVQ 0xf8(SP), DX								
  taskservice.go:523	0xe31d44		488b4210		MOVQ 0x10(DX), AX								
  taskservice.go:523	0xe31d48		488b5a18		MOVQ 0x18(DX), BX								
  taskservice.go:523	0xe31d4c		e8cf8363ff		CALL runtime.convTstring(SB)							
  taskservice.go:523	0xe31d51		488d0dc80b2100		LEAQ runtime.types+383264(SB), CX						
  taskservice.go:523	0xe31d58		48898c24a8010000	MOVQ CX, 0x1a8(SP)								
  taskservice.go:523	0xe31d60		48898424b0010000	MOVQ AX, 0x1b0(SP)								
  taskservice.go:523	0xe31d68		488b9424f8000000	MOVQ 0xf8(SP), DX								
  taskservice.go:523	0xe31d70		488b02			MOVQ 0(DX), AX									
  taskservice.go:523	0xe31d73		488b5a08		MOVQ 0x8(DX), BX								
  taskservice.go:523	0xe31d77		e8a48363ff		CALL runtime.convTstring(SB)							
  taskservice.go:523	0xe31d7c		488d0d9d0b2100		LEAQ runtime.types+383264(SB), CX						
  taskservice.go:523	0xe31d83		48898c24b8010000	MOVQ CX, 0x1b8(SP)								
  taskservice.go:523	0xe31d8b		48898424c0010000	MOVQ AX, 0x1c0(SP)								
  print.go:233		0xe31d93		488b1de6026e02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe31d9a		488d053f9d0302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe31da1		bf40000000		MOVL $__major_os_version__+58(SB), DI						
  print.go:233		0xe31da6		488db42488010000	LEAQ 0x188(SP), SI								
  print.go:233		0xe31dae		41b804000000		MOVL $__subsystem__+1(SB), R8							
  print.go:233		0xe31db4		4d89c1			MOVQ R8, R9									
  print.go:233		0xe31db7		488d0d762e3700		LEAQ go:string.*+247596(SB), CX							
  print.go:233		0xe31dbe		6690			NOPW										
  print.go:233		0xe31dc0		e85bd46eff		CALL fmt.Fprintf(SB)								
  taskservice.go:525	0xe31dc5		488b8424e0010000	MOVQ 0x1e0(SP), AX								
  taskservice.go:525	0xe31dcd		488b9c24c8000000	MOVQ 0xc8(SP), BX								
  taskservice.go:525	0xe31dd5		488b8c24f8000000	MOVQ 0xf8(SP), CX								
  taskservice.go:525	0xe31ddd		f20f10842490000000	MOVSD_XMM 0x90(SP), X0								
  taskservice.go:525	0xe31de6		488bbc2400010000	MOVQ 0x100(SP), DI								
  taskservice.go:525	0xe31dee		e86d0b0000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).assignTask(SB)			
  taskservice.go:525	0xe31df3		4885c0			TESTQ AX, AX									
  taskservice.go:525	0xe31df6		0f8522050000		JNE 0xe3231e									
  taskservice.go:530	0xe31dfc		4c8b8424e0010000	MOVQ 0x1e0(SP), R8								
  taskservice.go:530	0xe31e04		498b5018		MOVQ 0x18(R8), DX								
  taskservice.go:530	0xe31e08		488b8c2480000000	MOVQ 0x80(SP), CX								
  taskservice.go:530	0xe31e10		4839d1			CMPQ CX, DX									
  taskservice.go:530	0xe31e13		0f878c050000		JA 0xe323a5									
  taskservice.go:530	0xe31e19		498b5810		MOVQ 0x10(R8), BX								
  taskservice.go:530	0xe31e1d		488d4101		LEAQ 0x1(CX), AX								
  taskservice.go:530	0xe31e21		4839c3			CMPQ BX, AX									
  taskservice.go:530	0xe31e24		0f8271050000		JB 0xe3239b									
  taskservice.go:530	0xe31e2a		4c8d4bff		LEAQ -0x1(BX), R9								
  taskservice.go:530	0xe31e2e		4d8b5008		MOVQ 0x8(R8), R10								
  taskservice.go:530	0xe31e32		4889df			MOVQ BX, DI									
  taskservice.go:530	0xe31e35		4829cf			SUBQ CX, DI									
  taskservice.go:530	0xe31e38		4989d3			MOVQ DX, R11									
  taskservice.go:530	0xe31e3b		4829ca			SUBQ CX, DX									
  taskservice.go:530	0xe31e3e		48ffca			DECQ DX										
  taskservice.go:530	0xe31e41		48f7da			NEGQ DX										
  taskservice.go:530	0xe31e44		48c1e003		SHLQ $__subsystem__(SB), AX							
  taskservice.go:530	0xe31e48		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  taskservice.go:530	0xe31e4c		4821d0			ANDQ DX, AX									
  taskservice.go:530	0xe31e4f		498d1402		LEAQ 0(R10)(AX*1), DX								
  taskservice.go:530	0xe31e53		488d77ff		LEAQ -0x1(DI), SI								
  taskservice.go:530	0xe31e57		4d39cb			CMPQ R11, R9									
  taskservice.go:530	0xe31e5a		7361			JAE 0xe31ebd									
  taskservice.go:530	0xe31e5c		4889b424c0000000	MOVQ SI, 0xc0(SP)								
  taskservice.go:530	0xe31e64		4889942448010000	MOVQ DX, 0x148(SP)								
  taskservice.go:530	0xe31e6c		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  taskservice.go:530	0xe31e74		4889bc24b0000000	MOVQ DI, 0xb0(SP)								
  taskservice.go:530	0xe31e7c		4c89d0			MOVQ R10, AX									
  taskservice.go:530	0xe31e7f		4c89cb			MOVQ R9, BX									
  taskservice.go:530	0xe31e82		4c89d9			MOVQ R11, CX									
  taskservice.go:530	0xe31e85		4889f7			MOVQ SI, DI									
  taskservice.go:530	0xe31e88		488d3511221f00		LEAQ runtime.types+258208(SB), SI						
  taskservice.go:530	0xe31e8f		e8acfd63ff		CALL runtime.growslice(SB)							
  taskservice.go:530	0xe31e94		488b942448010000	MOVQ 0x148(SP), DX								
  taskservice.go:530	0xe31e9c		488bb424c0000000	MOVQ 0xc0(SP), SI								
  taskservice.go:530	0xe31ea4		488bbc24b0000000	MOVQ 0xb0(SP), DI								
  taskservice.go:530	0xe31eac		4989c2			MOVQ AX, R10									
  taskservice.go:530	0xe31eaf		4989d9			MOVQ BX, R9									
  taskservice.go:530	0xe31eb2		4989cb			MOVQ CX, R11									
  taskservice.go:530	0xe31eb5		488b9c24b8000000	MOVQ 0xb8(SP), BX								
  taskservice.go:530	0xe31ebd		4c898c24c0000000	MOVQ R9, 0xc0(SP)								
  taskservice.go:530	0xe31ec5		4c89942448010000	MOVQ R10, 0x148(SP)								
  taskservice.go:530	0xe31ecd		4c899c24b8000000	MOVQ R11, 0xb8(SP)								
  taskservice.go:530	0xe31ed5		4829fb			SUBQ DI, BX									
  taskservice.go:530	0xe31ed8		4989d8			MOVQ BX, R8									
  taskservice.go:530	0xe31edb		4c29db			SUBQ R11, BX									
  taskservice.go:530	0xe31ede		4c89c9			MOVQ R9, CX									
  taskservice.go:530	0xe31ee1		4c29c1			SUBQ R8, CX									
  taskservice.go:530	0xe31ee4		49c1e003		SHLQ $__subsystem__(SB), R8							
  taskservice.go:530	0xe31ee8		48c1fb3f		SARQ $__major_os_version__+57(SB), BX						
  taskservice.go:530	0xe31eec		4921d8			ANDQ BX, R8									
  taskservice.go:530	0xe31eef		4b8d1c02		LEAQ 0(R10)(R8*1), BX								
  taskservice.go:530	0xe31ef3		488d05a6211f00		LEAQ runtime.types+258208(SB), AX						
  taskservice.go:530	0xe31efa		4889d7			MOVQ DX, DI									
  taskservice.go:530	0xe31efd		0f1f00			NOPL 0(AX)									
  taskservice.go:530	0xe31f00		e83bc663ff		CALL runtime.typedslicecopy(SB)							
  taskservice.go:530	0xe31f05		488b9424c0000000	MOVQ 0xc0(SP), DX								
  taskservice.go:530	0xe31f0d		4c8b8424e0010000	MOVQ 0x1e0(SP), R8								
  taskservice.go:530	0xe31f15		49895010		MOVQ DX, 0x10(R8)								
  taskservice.go:530	0xe31f19		488b9424b8000000	MOVQ 0xb8(SP), DX								
  taskservice.go:530	0xe31f21		49895018		MOVQ DX, 0x18(R8)								
  taskservice.go:532	0xe31f25		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:532	0xe31f2a		488b942488000000	MOVQ 0x88(SP), DX								
  taskservice.go:532	0xe31f32		4989c9			MOVQ CX, R9									
  taskservice.go:532	0xe31f35		4929d1			SUBQ DX, R9									
  taskservice.go:532	0xe31f38		49ffc9			DECQ R9										
  taskservice.go:532	0xe31f3b		49f7d9			NEGQ R9										
  taskservice.go:532	0xe31f3e		49c1f93f		SARQ $__major_os_version__+57(SB), R9						
  taskservice.go:532	0xe31f42		4c8d5201		LEAQ 0x1(DX), R10								
  taskservice.go:532	0xe31f46		49c1e203		SHLQ $__subsystem__(SB), R10							
  taskservice.go:532	0xe31f4a		4d21d1			ANDQ R10, R9									
  taskservice.go:532	0xe31f4d		488b7c2460		MOVQ 0x60(SP), DI								
  taskservice.go:532	0xe31f52		4889fe			MOVQ DI, SI									
  taskservice.go:532	0xe31f55		4829d6			SUBQ DX, SI									
  taskservice.go:532	0xe31f58		488b8424f0000000	MOVQ 0xf0(SP), AX								
  taskservice.go:532	0xe31f60		4901c1			ADDQ AX, R9									
  taskservice.go:530	0xe31f63		833de6bb720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:530	0xe31f6a		750a			JNE 0xe31f76									
  taskservice.go:530	0xe31f6c		4c8b942448010000	MOVQ 0x148(SP), R10								
  taskservice.go:530	0xe31f74		eb18			JMP 0xe31f8e									
  taskservice.go:530	0xe31f76		e8c56464ff		CALL runtime.gcWriteBarrier2(SB)						
  taskservice.go:530	0xe31f7b		4c8b942448010000	MOVQ 0x148(SP), R10								
  taskservice.go:530	0xe31f83		4d8913			MOVQ R10, 0(R11)								
  taskservice.go:530	0xe31f86		4d8b6008		MOVQ 0x8(R8), R12								
  taskservice.go:530	0xe31f8a		4d896308		MOVQ R12, 0x8(R11)								
  taskservice.go:530	0xe31f8e		4d895008		MOVQ R10, 0x8(R8)								
  taskservice.go:532	0xe31f92		488d5fff		LEAQ -0x1(DI), BX								
  taskservice.go:532	0xe31f96		488d7eff		LEAQ -0x1(SI), DI								
  taskservice.go:532	0xe31f9a		660f1f440000		NOPW 0(AX)(AX*1)								
  taskservice.go:532	0xe31fa0		4839d9			CMPQ CX, BX									
  taskservice.go:532	0xe31fa3		0f8322fcffff		JAE 0xe31bcb									
  taskservice.go:532	0xe31fa9		4889bc24c0000000	MOVQ DI, 0xc0(SP)								
  taskservice.go:532	0xe31fb1		4c898c2440010000	MOVQ R9, 0x140(SP)								
  taskservice.go:532	0xe31fb9		488d35e01f1f00		LEAQ runtime.types+257952(SB), SI						
  taskservice.go:532	0xe31fc0		e87bfc63ff		CALL runtime.growslice(SB)							
  taskservice.go:532	0xe31fc5		488b942488000000	MOVQ 0x88(SP), DX								
  taskservice.go:532	0xe31fcd		488bbc24c0000000	MOVQ 0xc0(SP), DI								
  taskservice.go:532	0xe31fd5		4c8b8c2440010000	MOVQ 0x140(SP), R9								
  taskservice.go:532	0xe31fdd		0f1f00			NOPL 0(AX)									
  taskservice.go:532	0xe31fe0		e9e6fbffff		JMP 0xe31bcb									
  taskservice.go:537	0xe31fe5		49ffc0			INCQ R8										
  taskservice.go:546	0xe31fe8		4c895c2450		MOVQ R11, 0x50(SP)								
  taskservice.go:537	0xe31fed		4c39c6			CMPQ SI, R8									
  taskservice.go:537	0xe31ff0		0f8e66faffff		JLE 0xe31a5c									
  taskservice.go:537	0xe31ff6		660f1f840000000000	NOPW 0(AX)(AX*1)								
  taskservice.go:537	0xe31fff		90			NOPL										
  taskservice.go:537	0xe32000		4c394210		CMPQ 0x10(DX), R8								
  taskservice.go:537	0xe32004		0f8e52faffff		JLE 0xe31a5c									
  taskservice.go:546	0xe3200a		4c894c2458		MOVQ R9, 0x58(SP)								
  taskservice.go:537	0xe3200f		4c89442470		MOVQ R8, 0x70(SP)								
  taskservice.go:546	0xe32014		4c89a424e0000000	MOVQ R12, 0xe0(SP)								
  taskservice.go:537	0xe3201c		4c8b6a08		MOVQ 0x8(DX), R13								
  taskservice.go:538	0xe32020		4f8b6cc500		MOVQ 0(R13)(R8*8), R13								
  taskservice.go:538	0xe32025		4c89ac24d8000000	MOVQ R13, 0xd8(SP)								
  taskservice.go:539	0xe3202d		4d85ed			TESTQ R13, R13									
  taskservice.go:539	0xe32030		7463			JE 0xe32095									
  taskservice.go:539	0xe32032		4d395518		CMPQ 0x18(R13), R10								
  taskservice.go:539	0xe32036		7405			JE 0xe3203d									
  taskservice.go:539	0xe32038		4531ff			XORL R15, R15									
  taskservice.go:539	0xe3203b		eb63			JMP 0xe320a0									
  taskservice.go:539	0xe3203d		4c89e8			MOVQ R13, AX									
  taskservice.go:539	0xe32040		e81b050000		CALL CAS-Backend/pkg/diapdu.taskDispatchReady(SB)				
  taskservice.go:539	0xe32045		83f001			XORL $__minor_os_version__(SB), AX						
  taskservice.go:493	0xe32048		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:537	0xe3204d		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:493	0xe32055		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:537	0xe3205a		488b742478		MOVQ 0x78(SP), SI								
  taskservice.go:550	0xe3205f		0fb67c2446		MOVZX 0x46(SP), DI								
  taskservice.go:537	0xe32064		4c8b442470		MOVQ 0x70(SP), R8								
  taskservice.go:543	0xe32069		4c8b4c2458		MOVQ 0x58(SP), R9								
  taskservice.go:539	0xe3206e		4c8b542448		MOVQ 0x48(SP), R10								
  taskservice.go:543	0xe32073		4c8b5c2450		MOVQ 0x50(SP), R11								
  taskservice.go:543	0xe32078		4c8ba424e0000000	MOVQ 0xe0(SP), R12								
  taskservice.go:543	0xe32080		4c8bac24d8000000	MOVQ 0xd8(SP), R13								
  taskservice.go:539	0xe32088		4189c7			MOVL AX, R15									
  taskservice.go:493	0xe3208b		488b8424f0000000	MOVQ 0xf0(SP), AX								
  taskservice.go:539	0xe32093		eb0b			JMP 0xe320a0									
  taskservice.go:539	0xe32095		4531ff			XORL R15, R15									
  taskservice.go:539	0xe32098		0f1f840000000000	NOPL 0(AX)(AX*1)								
  taskservice.go:539	0xe320a0		4584ff			TESTL R15, R15									
  taskservice.go:539	0xe320a3		0f8593000000		JNE 0xe3213c									
  taskservice.go:543	0xe320a9		49ffc3			INCQ R11									
  taskservice.go:543	0xe320ac		4d39d9			CMPQ R9, R11									
  taskservice.go:543	0xe320af		7359			JAE 0xe3210a									
  taskservice.go:543	0xe320b1		4c89e0			MOVQ R12, AX									
  taskservice.go:543	0xe320b4		4c89db			MOVQ R11, BX									
  taskservice.go:543	0xe320b7		4c89c9			MOVQ R9, CX									
  taskservice.go:543	0xe320ba		bf01000000		MOVL $__minor_os_version__(SB), DI						
  taskservice.go:543	0xe320bf		488d35da1f1f00		LEAQ runtime.types+258208(SB), SI						
  taskservice.go:543	0xe320c6		e875fb63ff		CALL runtime.growslice(SB)							
  taskservice.go:537	0xe320cb		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:537	0xe320d3		488b742478		MOVQ 0x78(SP), SI								
  taskservice.go:550	0xe320d8		0fb67c2446		MOVZX 0x46(SP), DI								
  taskservice.go:537	0xe320dd		4c8b442470		MOVQ 0x70(SP), R8								
  taskservice.go:539	0xe320e2		4c8b542448		MOVQ 0x48(SP), R10								
  taskservice.go:543	0xe320e7		4c8bac24d8000000	MOVQ 0xd8(SP), R13								
  taskservice.go:543	0xe320ef		4989db			MOVQ BX, R11									
  taskservice.go:543	0xe320f2		4989c4			MOVQ AX, R12									
  taskservice.go:543	0xe320f5		4989c9			MOVQ CX, R9									
  taskservice.go:493	0xe320f8		488b8424f0000000	MOVQ 0xf0(SP), AX								
  taskservice.go:493	0xe32100		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:493	0xe32105		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:543	0xe3210a		833d3fba720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:543	0xe32111		741f			JE 0xe32132									
  taskservice.go:543	0xe32113		4d89df			MOVQ R11, R15									
  taskservice.go:543	0xe32116		e8256364ff		CALL runtime.gcWriteBarrier2(SB)						
  taskservice.go:543	0xe3211b		4d892b			MOVQ R13, 0(R11)								
  taskservice.go:543	0xe3211e		4b8b44fcf8		MOVQ -0x8(R12)(R15*8), AX							
  taskservice.go:543	0xe32123		49894308		MOVQ AX, 0x8(R11)								
  taskservice.go:493	0xe32127		488b8424f0000000	MOVQ 0xf0(SP), AX								
  taskservice.go:543	0xe3212f		4d89fb			MOVQ R15, R11									
  taskservice.go:543	0xe32132		4f896cdcf8		MOVQ R13, -0x8(R12)(R11*8)							
  taskservice.go:543	0xe32137		e9a9feffff		JMP 0xe31fe5									
  taskservice.go:540	0xe3213c		440f11bc2468010000	MOVUPS X15, 0x168(SP)								
  taskservice.go:540	0xe32145		498b4500		MOVQ 0(R13), AX									
  taskservice.go:540	0xe32149		e8527f63ff		CALL runtime.convT64(SB)							
  taskservice.go:540	0xe3214e		488d0d0b0a2100		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:540	0xe32155		48898c2468010000	MOVQ CX, 0x168(SP)								
  taskservice.go:540	0xe3215d		4889842470010000	MOVQ AX, 0x170(SP)								
  print.go:233		0xe32165		488b1d14ff6d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe3216c		488d056d990302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe32173		bf60000000		MOVL $.file+19(SB), DI								
  print.go:233		0xe32178		488db42468010000	LEAQ 0x168(SP), SI								
  print.go:233		0xe32180		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe32186		4d89c1			MOVQ R8, R9									
  print.go:233		0xe32189		488d0da77f3700		LEAQ go:string.*+269359(SB), CX							
  print.go:233		0xe32190		e88bd06eff		CALL fmt.Fprintf(SB)								
  taskservice.go:493	0xe32195		488b8424f0000000	MOVQ 0xf0(SP), AX								
  taskservice.go:493	0xe3219d		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:537	0xe321a2		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:493	0xe321aa		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:537	0xe321af		488b742478		MOVQ 0x78(SP), SI								
  taskservice.go:550	0xe321b4		0fb67c2446		MOVZX 0x46(SP), DI								
  taskservice.go:537	0xe321b9		4c8b442470		MOVQ 0x70(SP), R8								
  taskservice.go:539	0xe321be		4c8b542448		MOVQ 0x48(SP), R10								
  taskservice.go:546	0xe321c3		4c8b5c2450		MOVQ 0x50(SP), R11								
  taskservice.go:546	0xe321c8		4c8b4c2458		MOVQ 0x58(SP), R9								
  taskservice.go:546	0xe321cd		4c8ba424e0000000	MOVQ 0xe0(SP), R12								
  taskservice.go:541	0xe321d5		e90bfeffff		JMP 0xe31fe5									
  taskservice.go:551	0xe321da		440f11bc2458010000	MOVUPS X15, 0x158(SP)								
  taskservice.go:551	0xe321e3		4c89d0			MOVQ R10, AX									
  taskservice.go:551	0xe321e6		e8b57e63ff		CALL runtime.convT64(SB)							
  taskservice.go:551	0xe321eb		488d0dee022100		LEAQ runtime.types+382176(SB), CX						
  taskservice.go:551	0xe321f2		48898c2458010000	MOVQ CX, 0x158(SP)								
  taskservice.go:551	0xe321fa		4889842460010000	MOVQ AX, 0x160(SP)								
  print.go:233		0xe32202		488b1d77fe6d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe32209		488d05d0980302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe32210		488d0da87d3700		LEAQ go:string.*+268983(SB), CX							
  print.go:233		0xe32217		bf5e000000		MOVL $.file+17(SB), DI								
  print.go:233		0xe3221c		488db42458010000	LEAQ 0x158(SP), SI								
  print.go:233		0xe32224		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe3222a		4d89c1			MOVQ R8, R9									
  print.go:233		0xe3222d		e8eecf6eff		CALL fmt.Fprintf(SB)								
  taskservice.go:552	0xe32232		e95af9ffff		JMP 0xe31b91									
  taskservice.go:546	0xe32237		4889f0			MOVQ SI, AX									
  taskservice.go:546	0xe3223a		4c89c1			MOVQ R8, CX									
  taskservice.go:546	0xe3223d		0f1f00			NOPL 0(AX)									
  taskservice.go:546	0xe32240		e85b6664ff		CALL runtime.panicSliceB(SB)							
  taskservice.go:498	0xe32245		49ffc0			INCQ R8										
  taskservice.go:525	0xe32248		4c89a42400010000	MOVQ R12, 0x100(SP)								
  taskservice.go:525	0xe32250		f20f11842490000000	MOVSD_XMM X0, 0x90(SP)								
  taskservice.go:521	0xe32259		4c899c2488000000	MOVQ R11, 0x88(SP)								
  taskservice.go:516	0xe32261		4c898c2480000000	MOVQ R9, 0x80(SP)								
  taskservice.go:498	0xe32269		4c39c6			CMPQ SI, R8									
  taskservice.go:498	0xe3226c		0f8e18faffff		JLE 0xe31c8a									
  taskservice.go:499	0xe32272		4c8b6a10		MOVQ 0x10(DX), R13								
  taskservice.go:499	0xe32276		4d39e8			CMPQ R8, R13									
  taskservice.go:499	0xe32279		0f834c020000		JAE 0xe324cb									
  taskservice.go:498	0xe3227f		4c898424c0000000	MOVQ R8, 0xc0(SP)								
  taskservice.go:499	0xe32287		4c8b6a08		MOVQ 0x8(DX), R13								
  taskservice.go:499	0xe3228b		4f8b6cc500		MOVQ 0(R13)(R8*8), R13								
  taskservice.go:499	0xe32290		4c89ac24d0000000	MOVQ R13, 0xd0(SP)								
  taskservice.go:500	0xe32298		4d85ed			TESTQ R13, R13									
  taskservice.go:500	0xe3229b		7508			JNE 0xe322a5									
  taskservice.go:500	0xe3229d		41bf01000000		MOVL $__minor_os_version__(SB), R15						
  taskservice.go:500	0xe322a3		eb68			JMP 0xe3230d									
  taskservice.go:500	0xe322a5		4c89e8			MOVQ R13, AX									
  taskservice.go:500	0xe322a8		e8b3020000		CALL CAS-Backend/pkg/diapdu.taskDispatchReady(SB)				
  taskservice.go:500	0xe322ad		83f001			XORL $__minor_os_version__(SB), AX						
  taskservice.go:493	0xe322b0		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:504	0xe322b5		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:503	0xe322bd		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:498	0xe322c2		488b742478		MOVQ 0x78(SP), SI								
  taskservice.go:550	0xe322c7		0fb67c2446		MOVZX 0x46(SP), DI								
  taskservice.go:498	0xe322cc		4c8b8424c0000000	MOVQ 0xc0(SP), R8								
  taskservice.go:516	0xe322d4		4c8b8c2480000000	MOVQ 0x80(SP), R9								
  taskservice.go:539	0xe322dc		4c8b542448		MOVQ 0x48(SP), R10								
  taskservice.go:521	0xe322e1		4c8b9c2488000000	MOVQ 0x88(SP), R11								
  taskservice.go:525	0xe322e9		4c8ba42400010000	MOVQ 0x100(SP), R12								
  taskservice.go:504	0xe322f1		4c8bac24d0000000	MOVQ 0xd0(SP), R13								
  taskservice.go:525	0xe322f9		f20f10842490000000	MOVSD_XMM 0x90(SP), X0								
  taskservice.go:500	0xe32302		4189c7			MOVL AX, R15									
  taskservice.go:503	0xe32305		488b8424f0000000	MOVQ 0xf0(SP), AX								
  taskservice.go:500	0xe3230d		4584ff			TESTL R15, R15									
  taskservice.go:500	0xe32310		0f852fffffff		JNE 0xe32245									
  taskservice.go:500	0xe32316		4531ff			XORL R15, R15									
  taskservice.go:503	0xe32319		e9f4000000		JMP 0xe32412									
  taskservice.go:526	0xe3231e		440f11bc2478010000	MOVUPS X15, 0x178(SP)								
  taskservice.go:526	0xe32327		7404			JE 0xe3232d									
  taskservice.go:526	0xe32329		488b4008		MOVQ 0x8(AX), AX								
  taskservice.go:526	0xe3232d		4889842478010000	MOVQ AX, 0x178(SP)								
  taskservice.go:526	0xe32335		48899c2480010000	MOVQ BX, 0x180(SP)								
  print.go:233		0xe3233d		488b1d3cfd6d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe32344		488d0595970302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe3234b		488d0dce123500		LEAQ go:string.*+110872(SB), CX							
  print.go:233		0xe32352		bf17000000		MOVL $__major_os_version__+17(SB), DI						
  print.go:233		0xe32357		488db42478010000	LEAQ 0x178(SP), SI								
  print.go:233		0xe3235f		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe32365		4d89c1			MOVQ R8, R9									
  print.go:233		0xe32368		e8b3ce6eff		CALL fmt.Fprintf(SB)								
  taskservice.go:493	0xe3236d		488b8424f0000000	MOVQ 0xf0(SP), AX								
  taskservice.go:493	0xe32375		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:537	0xe3237a		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:493	0xe32382		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:537	0xe32387		488b742478		MOVQ 0x78(SP), SI								
  taskservice.go:550	0xe3238c		0fb67c2446		MOVZX 0x46(SP), DI								
  taskservice.go:539	0xe32391		4c8b542448		MOVQ 0x48(SP), R10								
  taskservice.go:527	0xe32396		e9b0f6ffff		JMP 0xe31a4b									
  taskservice.go:530	0xe3239b		4889d9			MOVQ BX, CX									
  taskservice.go:530	0xe3239e		6690			NOPW										
  taskservice.go:530	0xe323a0		e8fb6464ff		CALL runtime.panicSliceB(SB)							
  taskservice.go:530	0xe323a5		e8b66464ff		CALL runtime.panicSliceAcap(SB)							
  taskservice.go:521	0xe323aa		4c89d8			MOVQ R11, AX									
  taskservice.go:521	0xe323ad		4889d9			MOVQ BX, CX									
  taskservice.go:521	0xe323b0		e82b6464ff		CALL runtime.panicIndex(SB)							
  taskservice.go:520	0xe323b5		4c89c8			MOVQ R9, AX									
  taskservice.go:520	0xe323b8		4c89c1			MOVQ R8, CX									
  taskservice.go:520	0xe323bb		0f1f440000		NOPL 0(AX)(AX*1)								
  taskservice.go:520	0xe323c0		e81b6464ff		CALL runtime.panicIndex(SB)							
  taskservice.go:503	0xe323c5		4c8bbc2488000000	MOVQ 0x88(SP), R15								
  taskservice.go:503	0xe323cd		49ffc7			INCQ R15									
  taskservice.go:503	0xe323d0		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:498	0xe323d5		488b742478		MOVQ 0x78(SP), SI								
  taskservice.go:550	0xe323da		0fb67c2446		MOVZX 0x46(SP), DI								
  taskservice.go:498	0xe323df		4c8b8424c0000000	MOVQ 0xc0(SP), R8								
  taskservice.go:539	0xe323e7		4c8b542448		MOVQ 0x48(SP), R10								
  taskservice.go:504	0xe323ec		4c8bac24d0000000	MOVQ 0xd0(SP), R13								
  taskservice.go:516	0xe323f4		4989c9			MOVQ CX, R9									
  taskservice.go:521	0xe323f7		4989d3			MOVQ DX, R11									
  taskservice.go:525	0xe323fa		4989c4			MOVQ AX, R12									
  taskservice.go:503	0xe323fd		488b8424f0000000	MOVQ 0xf0(SP), AX								
  taskservice.go:493	0xe32405		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:504	0xe3240a		488b9424e0010000	MOVQ 0x1e0(SP), DX								
  taskservice.go:503	0xe32412		4939df			CMPQ R15, BX									
  taskservice.go:503	0xe32415		0f8d2afeffff		JGE 0xe32245									
  taskservice.go:503	0xe3241b		4c89bc2488000000	MOVQ R15, 0x88(SP)								
  taskservice.go:525	0xe32423		4c89a42438010000	MOVQ R12, 0x138(SP)								
  taskservice.go:525	0xe3242b		f20f118424a8000000	MOVSD_XMM X0, 0xa8(SP)								
  taskservice.go:521	0xe32434		4c899c24a0000000	MOVQ R11, 0xa0(SP)								
  taskservice.go:516	0xe3243c		4c898c2498000000	MOVQ R9, 0x98(SP)								
  taskservice.go:503	0xe32444		4a8b1cf8		MOVQ 0(AX)(R15*8), BX								
  taskservice.go:504	0xe32448		4c89e9			MOVQ R13, CX									
  taskservice.go:504	0xe3244b		4889d0			MOVQ DX, AX									
  taskservice.go:504	0xe3244e		e84de4ffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).planTaskPath(SB)			
  taskservice.go:504	0xe32453		84db			TESTL BL, BL									
  taskservice.go:505	0xe32455		744e			JE 0xe324a5									
  taskservice.go:505	0xe32457		4885c0			TESTQ AX, AX									
  taskservice.go:505	0xe3245a		7449			JE 0xe324a5									
  taskservice.go:508	0xe3245c		f20f104018		MOVSD_XMM 0x18(AX), X0								
  taskservice.go:508	0xe32461		f20f108c24a8000000	MOVSD_XMM 0xa8(SP), X1								
  taskservice.go:508	0xe3246a		660f2ec8		UCOMISD X0, X1									
  taskservice.go:508	0xe3246e		7615			JBE 0xe32485									
  taskservice.go:516	0xe32470		488b8c24c0000000	MOVQ 0xc0(SP), CX								
  taskservice.go:521	0xe32478		488b942488000000	MOVQ 0x88(SP), DX								
  taskservice.go:511	0xe32480		e940ffffff		JMP 0xe323c5									
  taskservice.go:516	0xe32485		488b8c2498000000	MOVQ 0x98(SP), CX								
  taskservice.go:521	0xe3248d		488b9424a0000000	MOVQ 0xa0(SP), DX								
  taskservice.go:525	0xe32495		0f10c1			MOVUPS X1, X0									
  taskservice.go:525	0xe32498		488b842438010000	MOVQ 0x138(SP), AX								
  taskservice.go:508	0xe324a0		e920ffffff		JMP 0xe323c5									
  taskservice.go:516	0xe324a5		488b8c2498000000	MOVQ 0x98(SP), CX								
  taskservice.go:521	0xe324ad		488b9424a0000000	MOVQ 0xa0(SP), DX								
  taskservice.go:525	0xe324b5		f20f108424a8000000	MOVSD_XMM 0xa8(SP), X0								
  taskservice.go:525	0xe324be		488b842438010000	MOVQ 0x138(SP), AX								
  taskservice.go:506	0xe324c6		e9fafeffff		JMP 0xe323c5									
  taskservice.go:499	0xe324cb		4c89c0			MOVQ R8, AX									
  taskservice.go:499	0xe324ce		4c89e9			MOVQ R13, CX									
  taskservice.go:499	0xe324d1		e80a6364ff		CALL runtime.panicIndex(SB)							
  taskservice.go:499	0xe324d6		90			NOPL										
  taskservice.go:499	0xe324d7		e8a47660ff		CALL runtime.deferreturn(SB)							
  taskservice.go:499	0xe324dc		4881c4d0010000		ADDQ $.file+387(SB), SP								
  taskservice.go:499	0xe324e3		5d			POPQ BP										
  taskservice.go:499	0xe324e4		c3			RET										
  taskservice.go:459	0xe324e5		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:459	0xe324ea		e8f13f64ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:459	0xe324ef		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:459	0xe324f4		e927f2ffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).processTasks(SB)			
  :-1			0xe324f9		cc			INT $__subsystem__(SB)								
  :-1			0xe324fa		cc			INT $__subsystem__(SB)								
  :-1			0xe324fb		cc			INT $__subsystem__(SB)								
  :-1			0xe324fc		cc			INT $__subsystem__(SB)								
  :-1			0xe324fd		cc			INT $__subsystem__(SB)								
  :-1			0xe324fe		cc			INT $__subsystem__(SB)								
  :-1			0xe324ff		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).processTasks.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:482	0xe32500		493b6610		CMPQ SP, 0x10(R14)							
  taskservice.go:482	0xe32504		762f			JBE 0xe32535								
  taskservice.go:482	0xe32506		55			PUSHQ BP								
  taskservice.go:482	0xe32507		4889e5			MOVQ SP, BP								
  taskservice.go:482	0xe3250a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  taskservice.go:482	0xe3250e		4d8b6620		MOVQ 0x20(R14), R12							
  taskservice.go:482	0xe32512		4d85e4			TESTQ R12, R12								
  taskservice.go:482	0xe32515		7525			JNE 0xe3253c								
  taskservice.go:482	0xe32517		488b4208		MOVQ 0x8(DX), AX							
  mutex.go:221		0xe3251b		bbffffffff		MOVL $-0x1, BX								
  mutex.go:221		0xe32520		f00fc118		LOCK XADDL BX, 0(AX)							
  mutex.go:221		0xe32524		ffcb			DECL BX									
  mutex.go:222		0xe32526		85db			TESTL BX, BX								
  mutex.go:222		0xe32528		7405			JE 0xe3252f								
  mutex.go:225		0xe3252a		e8d15765ff		CALL sync.(*Mutex).unlockSlow(SB)					
  taskservice.go:482	0xe3252f		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  taskservice.go:482	0xe32533		5d			POPQ BP									
  taskservice.go:482	0xe32534		c3			RET									
  taskservice.go:482	0xe32535		e8263f64ff		CALL runtime.morestack.abi0(SB)						
  taskservice.go:482	0xe3253a		ebc4			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).processTasks.deferwrap1(SB)	
  taskservice.go:482	0xe3253c		4c8d6c2420		LEAQ 0x20(SP), R13							
  taskservice.go:482	0xe32541		4d392c24		CMPQ 0(R12), R13							
  taskservice.go:482	0xe32545		75d0			JNE 0xe32517								
  taskservice.go:482	0xe32547		49892424		MOVQ SP, 0(R12)								
  taskservice.go:482	0xe3254b		ebca			JMP 0xe32517								
  :-1			0xe3254d		cc			INT $__subsystem__(SB)							
  :-1			0xe3254e		cc			INT $__subsystem__(SB)							
  :-1			0xe3254f		cc			INT $__subsystem__(SB)							
  :-1			0xe32550		cc			INT $__subsystem__(SB)							
  :-1			0xe32551		cc			INT $__subsystem__(SB)							
  :-1			0xe32552		cc			INT $__subsystem__(SB)							
  :-1			0xe32553		cc			INT $__subsystem__(SB)							
  :-1			0xe32554		cc			INT $__subsystem__(SB)							
  :-1			0xe32555		cc			INT $__subsystem__(SB)							
  :-1			0xe32556		cc			INT $__subsystem__(SB)							
  :-1			0xe32557		cc			INT $__subsystem__(SB)							
  :-1			0xe32558		cc			INT $__subsystem__(SB)							
  :-1			0xe32559		cc			INT $__subsystem__(SB)							
  :-1			0xe3255a		cc			INT $__subsystem__(SB)							
  :-1			0xe3255b		cc			INT $__subsystem__(SB)							
  :-1			0xe3255c		cc			INT $__subsystem__(SB)							
  :-1			0xe3255d		cc			INT $__subsystem__(SB)							
  :-1			0xe3255e		cc			INT $__subsystem__(SB)							
  :-1			0xe3255f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.taskDispatchReady(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:557	0xe32560		4c8da424e0fcffff	LEAQ 0xfffffce0(SP), R12				
  taskservice.go:557	0xe32568		4d3b6610		CMPQ R12, 0x10(R14)					
  taskservice.go:557	0xe3256c		0f8634020000		JBE 0xe327a6						
  taskservice.go:557	0xe32572		55			PUSHQ BP						
  taskservice.go:557	0xe32573		4889e5			MOVQ SP, BP						
  taskservice.go:557	0xe32576		4881ec98030000		SUBQ $__file_alignment__+408(SB), SP			
  taskservice.go:557	0xe3257d		0f1f00			NOPL 0(AX)						
  taskservice.go:558	0xe32580		4885c0			TESTQ AX, AX						
  taskservice.go:558	0xe32583		0f8412020000		JE 0xe3279b						
  taskservice.go:558	0xe32589		48898424a8030000	MOVQ AX, 0x3a8(SP)					
  taskservice.go:561	0xe32591		488dbc24b8020000	LEAQ 0x2b8(SP), DI					
  taskservice.go:561	0xe32599		488d7fe0		LEAQ -0x20(DI), DI					
  taskservice.go:561	0xe3259d		0f1f00			NOPL 0(AX)						
  taskservice.go:561	0xe325a0		48896c24f0		MOVQ BP, -0x10(SP)					
  taskservice.go:561	0xe325a5		488d6c24f0		LEAQ -0x10(SP), BP					
  taskservice.go:561	0xe325aa		e80e6564ff		CALL 0x478abd						
  taskservice.go:561	0xe325af		488b6d00		MOVQ 0(BP), BP						
  taskservice.go:561	0xe325b3		488b88a0000000		MOVQ 0xa0(AX), CX					
  taskservice.go:561	0xe325ba		488b98a8000000		MOVQ 0xa8(AX), BX					
  taskservice.go:561	0xe325c1		4889c8			MOVQ CX, AX						
  taskservice.go:561	0xe325c4		e8d754ffff		CALL CAS-Backend/pkg/diapdu.ParseForkliftTaskJSON(SB)	
  taskservice.go:561	0xe325c9		48898424f0000000	MOVQ AX, 0xf0(SP)					
  taskservice.go:561	0xe325d1		488dbc24b8020000	LEAQ 0x2b8(SP), DI					
  taskservice.go:561	0xe325d9		4889e6			MOVQ SP, SI						
  taskservice.go:561	0xe325dc		0f1f4000		NOPL 0(AX)						
  taskservice.go:561	0xe325e0		48896c24f0		MOVQ BP, -0x10(SP)					
  taskservice.go:561	0xe325e5		488d6c24f0		LEAQ -0x10(SP), BP					
  taskservice.go:561	0xe325ea		e8ed6764ff		CALL 0x478ddc						
  taskservice.go:561	0xe325ef		488b6d00		MOVQ 0(BP), BP						
  taskservice.go:561	0xe325f3		488dbc24f8000000	LEAQ 0xf8(SP), DI					
  taskservice.go:561	0xe325fb		488db424b8020000	LEAQ 0x2b8(SP), SI					
  taskservice.go:561	0xe32603		48896c24f0		MOVQ BP, -0x10(SP)					
  taskservice.go:561	0xe32608		488d6c24f0		LEAQ -0x10(SP), BP					
  taskservice.go:561	0xe3260d		e8ca6764ff		CALL 0x478ddc						
  taskservice.go:561	0xe32612		488b6d00		MOVQ 0(BP), BP						
  taskservice.go:562	0xe32616		488dbc24b8020000	LEAQ 0x2b8(SP), DI					
  taskservice.go:562	0xe3261e		488d7fe0		LEAQ -0x20(DI), DI					
  taskservice.go:562	0xe32622		48896c24f0		MOVQ BP, -0x10(SP)					
  taskservice.go:562	0xe32627		488d6c24f0		LEAQ -0x10(SP), BP					
  taskservice.go:562	0xe3262c		e88c6464ff		CALL 0x478abd						
  taskservice.go:562	0xe32631		488b6d00		MOVQ 0(BP), BP						
  taskservice.go:562	0xe32635		488b8c24a8030000	MOVQ 0x3a8(SP), CX					
  taskservice.go:562	0xe3263d		488b91b0000000		MOVQ 0xb0(CX), DX					
  taskservice.go:562	0xe32644		488b99b8000000		MOVQ 0xb8(CX), BX					
  taskservice.go:562	0xe3264b		4889d0			MOVQ DX, AX						
  taskservice.go:562	0xe3264e		e84d54ffff		CALL CAS-Backend/pkg/diapdu.ParseForkliftTaskJSON(SB)	
  taskservice.go:562	0xe32653		488dbc24b8020000	LEAQ 0x2b8(SP), DI					
  taskservice.go:562	0xe3265b		4889e6			MOVQ SP, SI						
  taskservice.go:562	0xe3265e		6690			NOPW							
  taskservice.go:562	0xe32660		48896c24f0		MOVQ BP, -0x10(SP)					
  taskservice.go:562	0xe32665		488d6c24f0		LEAQ -0x10(SP), BP					
  taskservice.go:562	0xe3266a		e86d6764ff		CALL 0x478ddc						
  taskservice.go:562	0xe3266f		488b6d00		MOVQ 0(BP), BP						
  taskservice.go:562	0xe32673		488dbc24d8010000	LEAQ 0x1d8(SP), DI					
  taskservice.go:562	0xe3267b		488db424b8020000	LEAQ 0x2b8(SP), SI					
  taskservice.go:562	0xe32683		48896c24f0		MOVQ BP, -0x10(SP)					
  taskservice.go:562	0xe32688		488d6c24f0		LEAQ -0x10(SP), BP					
  taskservice.go:562	0xe3268d		e84a6764ff		CALL 0x478ddc						
  taskservice.go:562	0xe32692		488b6d00		MOVQ 0(BP), BP						
  taskservice.go:563	0xe32696		488b8c24f0000000	MOVQ 0xf0(SP), CX					
  taskservice.go:563	0xe3269e		6690			NOPW							
  taskservice.go:563	0xe326a0		4885c9			TESTQ CX, CX						
  taskservice.go:563	0xe326a3		7505			JNE 0xe326aa						
  taskservice.go:563	0xe326a5		4885c0			TESTQ AX, AX						
  taskservice.go:563	0xe326a8		740b			JE 0xe326b5						
  taskservice.go:564	0xe326aa		31c0			XORL AX, AX						
  taskservice.go:564	0xe326ac		4881c498030000		ADDQ $__file_alignment__+408(SB), SP			
  taskservice.go:564	0xe326b3		5d			POPQ BP							
  taskservice.go:564	0xe326b4		c3			RET							
  taskservice.go:566	0xe326b5		488b842408010000	MOVQ 0x108(SP), AX					
  taskservice.go:566	0xe326bd		488b9c2410010000	MOVQ 0x110(SP), BX					
  taskservice.go:566	0xe326c5		e8f6026bff		CALL strings.TrimSpace(SB)				
  taskservice.go:566	0xe326ca		4885db			TESTQ BX, BX						
  taskservice.go:566	0xe326cd		7547			JNE 0xe32716						
  taskservice.go:568	0xe326cf		488b8424f8000000	MOVQ 0xf8(SP), AX					
  taskservice.go:568	0xe326d7		488b9c2400010000	MOVQ 0x100(SP), BX					
  taskservice.go:568	0xe326df		90			NOPL							
  taskservice.go:568	0xe326e0		e8db026bff		CALL strings.TrimSpace(SB)				
  taskservice.go:568	0xe326e5		4885db			TESTQ BX, BX						
  taskservice.go:568	0xe326e8		7504			JNE 0xe326ee						
  taskservice.go:568	0xe326ea		31c9			XORL CX, CX						
  taskservice.go:568	0xe326ec		eb1d			JMP 0xe3270b						
  taskservice.go:568	0xe326ee		488b8424e8010000	MOVQ 0x1e8(SP), AX					
  taskservice.go:568	0xe326f6		488b9c24f0010000	MOVQ 0x1f0(SP), BX					
  taskservice.go:568	0xe326fe		6690			NOPW							
  taskservice.go:568	0xe32700		e8bb026bff		CALL strings.TrimSpace(SB)				
  taskservice.go:568	0xe32705		4885db			TESTQ BX, BX						
  taskservice.go:568	0xe32708		0f95c1			SETNE CL						
  taskservice.go:568	0xe3270b		89c8			MOVL CX, AX						
  taskservice.go:568	0xe3270d		4881c498030000		ADDQ $__file_alignment__+408(SB), SP			
  taskservice.go:568	0xe32714		5d			POPQ BP							
  taskservice.go:568	0xe32715		c3			RET							
  taskservice.go:571	0xe32716		488b8424f8000000	MOVQ 0xf8(SP), AX					
  taskservice.go:571	0xe3271e		488b9c2400010000	MOVQ 0x100(SP), BX					
  taskservice.go:571	0xe32726		e895026bff		CALL strings.TrimSpace(SB)				
  taskservice.go:571	0xe3272b		4885db			TESTQ BX, BX						
  taskservice.go:571	0xe3272e		7504			JNE 0xe32734						
  taskservice.go:571	0xe32730		31c9			XORL CX, CX						
  taskservice.go:571	0xe32732		eb1b			JMP 0xe3274f						
  taskservice.go:571	0xe32734		488b842408010000	MOVQ 0x108(SP), AX					
  taskservice.go:571	0xe3273c		488b9c2410010000	MOVQ 0x110(SP), BX					
  taskservice.go:571	0xe32744		e877026bff		CALL strings.TrimSpace(SB)				
  taskservice.go:571	0xe32749		4885db			TESTQ BX, BX						
  taskservice.go:571	0xe3274c		0f95c1			SETNE CL						
  taskservice.go:571	0xe3274f		84c9			TESTL CL, CL						
  taskservice.go:571	0xe32751		7504			JNE 0xe32757						
  taskservice.go:571	0xe32753		31c9			XORL CX, CX						
  taskservice.go:571	0xe32755		eb39			JMP 0xe32790						
  taskservice.go:572	0xe32757		488b8424d8010000	MOVQ 0x1d8(SP), AX					
  taskservice.go:572	0xe3275f		488b9c24e0010000	MOVQ 0x1e0(SP), BX					
  taskservice.go:572	0xe32767		e854026bff		CALL strings.TrimSpace(SB)				
  taskservice.go:572	0xe3276c		4885db			TESTQ BX, BX						
  taskservice.go:572	0xe3276f		7504			JNE 0xe32775						
  taskservice.go:572	0xe32771		31c9			XORL CX, CX						
  taskservice.go:572	0xe32773		eb1b			JMP 0xe32790						
  taskservice.go:572	0xe32775		488b8424e8010000	MOVQ 0x1e8(SP), AX					
  taskservice.go:572	0xe3277d		488b9c24f0010000	MOVQ 0x1f0(SP), BX					
  taskservice.go:572	0xe32785		e836026bff		CALL strings.TrimSpace(SB)				
  taskservice.go:572	0xe3278a		4885db			TESTQ BX, BX						
  taskservice.go:572	0xe3278d		0f95c1			SETNE CL						
  taskservice.go:571	0xe32790		89c8			MOVL CX, AX						
  taskservice.go:571	0xe32792		4881c498030000		ADDQ $__file_alignment__+408(SB), SP			
  taskservice.go:571	0xe32799		5d			POPQ BP							
  taskservice.go:571	0xe3279a		c3			RET							
  taskservice.go:559	0xe3279b		31c0			XORL AX, AX						
  taskservice.go:559	0xe3279d		4881c498030000		ADDQ $__file_alignment__+408(SB), SP			
  taskservice.go:559	0xe327a4		5d			POPQ BP							
  taskservice.go:559	0xe327a5		c3			RET							
  taskservice.go:557	0xe327a6		4889442408		MOVQ AX, 0x8(SP)					
  taskservice.go:557	0xe327ab		e8303d64ff		CALL runtime.morestack_noctxt.abi0(SB)			
  taskservice.go:557	0xe327b0		488b442408		MOVQ 0x8(SP), AX					
  taskservice.go:557	0xe327b5		e9a6fdffff		JMP CAS-Backend/pkg/diapdu.taskDispatchReady(SB)	
  :-1			0xe327ba		cc			INT $__subsystem__(SB)					
  :-1			0xe327bb		cc			INT $__subsystem__(SB)					
  :-1			0xe327bc		cc			INT $__subsystem__(SB)					
  :-1			0xe327bd		cc			INT $__subsystem__(SB)					
  :-1			0xe327be		cc			INT $__subsystem__(SB)					
  :-1			0xe327bf		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).getIdleForklifts(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:575	0xe327c0		493b6610		CMPQ SP, 0x10(R14)								
  taskservice.go:575	0xe327c4		0f864a010000		JBE 0xe32914									
  taskservice.go:575	0xe327ca		55			PUSHQ BP									
  taskservice.go:575	0xe327cb		4889e5			MOVQ SP, BP									
  taskservice.go:575	0xe327ce		4883ec68		SUBQ $.file+27(SB), SP								
  taskservice.go:577	0xe327d2		4889442478		MOVQ AX, 0x78(SP)								
  taskservice.go:577	0xe327d7		48899c2480000000	MOVQ BX, 0x80(SP)								
  taskservice.go:577	0xe327df		48898c2488000000	MOVQ CX, 0x88(SP)								
  taskservice.go:577	0xe327e7		31d2			XORL DX, DX									
  taskservice.go:577	0xe327e9		31f6			XORL SI, SI									
  taskservice.go:576	0xe327eb		488d3daeaa7202		LEAQ unicode..stmp_365(SB), DI							
  taskservice.go:576	0xe327f2		4531c0			XORL R8, R8									
  taskservice.go:577	0xe327f5		eb09			JMP 0xe32800									
  taskservice.go:577	0xe327f7		48ffc2			INCQ DX										
  taskservice.go:577	0xe327fa		660f1f440000		NOPW 0(AX)(AX*1)								
  taskservice.go:577	0xe32800		4839d1			CMPQ CX, DX									
  taskservice.go:577	0xe32803		0f8efc000000		JLE 0xe32905									
  taskservice.go:577	0xe32809		4889542450		MOVQ DX, 0x50(SP)								
  taskservice.go:577	0xe3280e		4c8b0cd3		MOVQ 0(BX)(DX*8), R9								
  taskservice.go:577	0xe32812		4c894c2460		MOVQ R9, 0x60(SP)								
  taskservice.go:578	0xe32817		4983792000		CMPQ 0x20(R9), $0x0								
  taskservice.go:578	0xe3281c		7569			JNE 0xe32887									
  taskservice.go:578	0xe3281e		4983795814		CMPQ 0x58(R9), $__major_os_version__+14(SB)					
  taskservice.go:578	0xe32823		7e5d			JLE 0xe32882									
  taskservice.go:578	0xe32825		4983795000		CMPQ 0x50(R9), $0x0								
  taskservice.go:578	0xe3282a		7405			JE 0xe32831									
  taskservice.go:578	0xe3282c		4531d2			XORL R10, R10									
  taskservice.go:578	0xe3282f		eb59			JMP 0xe3288a									
  taskservice.go:579	0xe32831		4889742448		MOVQ SI, 0x48(SP)								
  taskservice.go:579	0xe32836		4c89442440		MOVQ R8, 0x40(SP)								
  taskservice.go:579	0xe3283b		48897c2458		MOVQ DI, 0x58(SP)								
  taskservice.go:578	0xe32840		498b19			MOVQ 0(R9), BX									
  taskservice.go:578	0xe32843		498b4908		MOVQ 0x8(R9), CX								
  taskservice.go:578	0xe32847		e8b43bffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).isVehicleNavigatingToDock(SB)	
  taskservice.go:578	0xe3284c		83f001			XORL $__minor_os_version__(SB), AX						
  taskservice.go:577	0xe3284f		488b8c2488000000	MOVQ 0x88(SP), CX								
  taskservice.go:577	0xe32857		488b542450		MOVQ 0x50(SP), DX								
  taskservice.go:577	0xe3285c		488b9c2480000000	MOVQ 0x80(SP), BX								
  taskservice.go:579	0xe32864		488b742448		MOVQ 0x48(SP), SI								
  taskservice.go:579	0xe32869		488b7c2458		MOVQ 0x58(SP), DI								
  taskservice.go:579	0xe3286e		4c8b442440		MOVQ 0x40(SP), R8								
  taskservice.go:579	0xe32873		4c8b4c2460		MOVQ 0x60(SP), R9								
  taskservice.go:578	0xe32878		4189c2			MOVL AX, R10									
  taskservice.go:578	0xe3287b		488b442478		MOVQ 0x78(SP), AX								
  taskservice.go:578	0xe32880		eb08			JMP 0xe3288a									
  taskservice.go:578	0xe32882		4531d2			XORL R10, R10									
  taskservice.go:578	0xe32885		eb03			JMP 0xe3288a									
  taskservice.go:578	0xe32887		4531d2			XORL R10, R10									
  taskservice.go:578	0xe3288a		4584d2			TESTL R10, R10									
  taskservice.go:578	0xe3288d		0f8464ffffff		JE 0xe327f7									
  taskservice.go:579	0xe32893		49ffc0			INCQ R8										
  taskservice.go:579	0xe32896		4c39c6			CMPQ SI, R8									
  taskservice.go:579	0xe32899		7342			JAE 0xe328dd									
  taskservice.go:579	0xe3289b		4889f8			MOVQ DI, AX									
  taskservice.go:579	0xe3289e		4c89c3			MOVQ R8, BX									
  taskservice.go:579	0xe328a1		4889f1			MOVQ SI, CX									
  taskservice.go:579	0xe328a4		bf01000000		MOVL $__minor_os_version__(SB), DI						
  taskservice.go:579	0xe328a9		488d35f0161f00		LEAQ runtime.types+257952(SB), SI						
  taskservice.go:579	0xe328b0		e88bf363ff		CALL runtime.growslice(SB)							
  taskservice.go:577	0xe328b5		488b542450		MOVQ 0x50(SP), DX								
  taskservice.go:579	0xe328ba		4c8b4c2460		MOVQ 0x60(SP), R9								
  taskservice.go:579	0xe328bf		4989d8			MOVQ BX, R8									
  taskservice.go:579	0xe328c2		4889c7			MOVQ AX, DI									
  taskservice.go:579	0xe328c5		4889ce			MOVQ CX, SI									
  taskservice.go:578	0xe328c8		488b442478		MOVQ 0x78(SP), AX								
  taskservice.go:577	0xe328cd		488b8c2488000000	MOVQ 0x88(SP), CX								
  taskservice.go:577	0xe328d5		488b9c2480000000	MOVQ 0x80(SP), BX								
  taskservice.go:579	0xe328dd		833d6cb2720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:579	0xe328e4		7411			JE 0xe328f7									
  taskservice.go:579	0xe328e6		e8555b64ff		CALL runtime.gcWriteBarrier2(SB)						
  taskservice.go:579	0xe328eb		4d890b			MOVQ R9, 0(R11)									
  taskservice.go:579	0xe328ee		4e8b54c7f8		MOVQ -0x8(DI)(R8*8), R10							
  taskservice.go:579	0xe328f3		4d895308		MOVQ R10, 0x8(R11)								
  taskservice.go:579	0xe328f7		4e894cc7f8		MOVQ R9, -0x8(DI)(R8*8)								
  taskservice.go:579	0xe328fc		0f1f4000		NOPL 0(AX)									
  taskservice.go:579	0xe32900		e9f2feffff		JMP 0xe327f7									
  taskservice.go:582	0xe32905		4889f8			MOVQ DI, AX									
  taskservice.go:582	0xe32908		4c89c3			MOVQ R8, BX									
  taskservice.go:582	0xe3290b		4889f1			MOVQ SI, CX									
  taskservice.go:582	0xe3290e		4883c468		ADDQ $.file+27(SB), SP								
  taskservice.go:582	0xe32912		5d			POPQ BP										
  taskservice.go:582	0xe32913		c3			RET										
  taskservice.go:575	0xe32914		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:575	0xe32919		48895c2410		MOVQ BX, 0x10(SP)								
  taskservice.go:575	0xe3291e		48894c2418		MOVQ CX, 0x18(SP)								
  taskservice.go:575	0xe32923		48897c2420		MOVQ DI, 0x20(SP)								
  taskservice.go:575	0xe32928		e8b33b64ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:575	0xe3292d		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:575	0xe32932		488b5c2410		MOVQ 0x10(SP), BX								
  taskservice.go:575	0xe32937		488b4c2418		MOVQ 0x18(SP), CX								
  taskservice.go:575	0xe3293c		488b7c2420		MOVQ 0x20(SP), DI								
  taskservice.go:575	0xe32941		e97afeffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).getIdleForklifts(SB)		
  :-1			0xe32946		cc			INT $__subsystem__(SB)								
  :-1			0xe32947		cc			INT $__subsystem__(SB)								
  :-1			0xe32948		cc			INT $__subsystem__(SB)								
  :-1			0xe32949		cc			INT $__subsystem__(SB)								
  :-1			0xe3294a		cc			INT $__subsystem__(SB)								
  :-1			0xe3294b		cc			INT $__subsystem__(SB)								
  :-1			0xe3294c		cc			INT $__subsystem__(SB)								
  :-1			0xe3294d		cc			INT $__subsystem__(SB)								
  :-1			0xe3294e		cc			INT $__subsystem__(SB)								
  :-1			0xe3294f		cc			INT $__subsystem__(SB)								
  :-1			0xe32950		cc			INT $__subsystem__(SB)								
  :-1			0xe32951		cc			INT $__subsystem__(SB)								
  :-1			0xe32952		cc			INT $__subsystem__(SB)								
  :-1			0xe32953		cc			INT $__subsystem__(SB)								
  :-1			0xe32954		cc			INT $__subsystem__(SB)								
  :-1			0xe32955		cc			INT $__subsystem__(SB)								
  :-1			0xe32956		cc			INT $__subsystem__(SB)								
  :-1			0xe32957		cc			INT $__subsystem__(SB)								
  :-1			0xe32958		cc			INT $__subsystem__(SB)								
  :-1			0xe32959		cc			INT $__subsystem__(SB)								
  :-1			0xe3295a		cc			INT $__subsystem__(SB)								
  :-1			0xe3295b		cc			INT $__subsystem__(SB)								
  :-1			0xe3295c		cc			INT $__subsystem__(SB)								
  :-1			0xe3295d		cc			INT $__subsystem__(SB)								
  :-1			0xe3295e		cc			INT $__subsystem__(SB)								
  :-1			0xe3295f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).assignTask(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:624	0xe32960		493b6610		CMPQ SP, 0x10(R14)								
  taskservice.go:624	0xe32964		0f86e6010000		JBE 0xe32b50									
  taskservice.go:624	0xe3296a		55			PUSHQ BP									
  taskservice.go:624	0xe3296b		4889e5			MOVQ SP, BP									
  taskservice.go:624	0xe3296e		4883ec30		SUBQ $__major_os_version__+42(SB), SP						
  taskservice.go:633	0xe32972		4889442440		MOVQ AX, 0x40(SP)								
  taskservice.go:633	0xe32977		48895c2448		MOVQ BX, 0x48(SP)								
  taskservice.go:633	0xe3297c		48894c2450		MOVQ CX, 0x50(SP)								
  taskservice.go:633	0xe32981		f20f11442458		MOVSD_XMM X0, 0x58(SP)								
  taskservice.go:633	0xe32987		48897c2460		MOVQ DI, 0x60(SP)								
  taskservice.go:626	0xe3298c		4889cb			MOVQ CX, BX									
  taskservice.go:626	0xe3298f		e88c130000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).cancelDockNavigationForVehicle(SB)	
  taskservice.go:629	0xe32994		488b4c2448		MOVQ 0x48(SP), CX								
  taskservice.go:629	0xe32999		48c7414001000000	MOVQ $__minor_os_version__(SB), 0x40(CX)					
  taskservice.go:630	0xe329a1		488d0538d93100		LEAQ runtime.types+1487584(SB), AX						
  taskservice.go:630	0xe329a8		e8f3ed5dff		CALL runtime.newobject(SB)							
  taskservice.go:630	0xe329ad		4889442428		MOVQ AX, 0x28(SP)								
  taskservice.go:630	0xe329b2		e8e9b667ff		CALL time.Now(SB)								
  taskservice.go:630	0xe329b7		488b542428		MOVQ 0x28(SP), DX								
  taskservice.go:630	0xe329bc		488902			MOVQ AX, 0(DX)									
  taskservice.go:630	0xe329bf		48895a08		MOVQ BX, 0x8(DX)								
  taskservice.go:630	0xe329c3		833d86b1720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:630	0xe329ca		7507			JNE 0xe329d3									
  taskservice.go:631	0xe329cc		4c8b442448		MOVQ 0x48(SP), R8								
  taskservice.go:630	0xe329d1		eb21			JMP 0xe329f4									
  taskservice.go:630	0xe329d3		e8a85a64ff		CALL runtime.gcWriteBarrier4(SB)						
  taskservice.go:630	0xe329d8		49890b			MOVQ CX, 0(R11)									
  taskservice.go:630	0xe329db		4c8b4210		MOVQ 0x10(DX), R8								
  taskservice.go:630	0xe329df		4d894308		MOVQ R8, 0x8(R11)								
  taskservice.go:631	0xe329e3		49895310		MOVQ DX, 0x10(R11)								
  taskservice.go:631	0xe329e7		4c8b442448		MOVQ 0x48(SP), R8								
  taskservice.go:631	0xe329ec		4d8b4870		MOVQ 0x70(R8), R9								
  taskservice.go:631	0xe329f0		4d894b18		MOVQ R9, 0x18(R11)								
  taskservice.go:630	0xe329f4		48894a10		MOVQ CX, 0x10(DX)								
  taskservice.go:631	0xe329f8		49895070		MOVQ DX, 0x70(R8)								
  taskservice.go:633	0xe329fc		488b542450		MOVQ 0x50(SP), DX								
  taskservice.go:633	0xe32a01		4c8b4a08		MOVQ 0x8(DX), R9								
  taskservice.go:633	0xe32a05		4d85c9			TESTQ R9, R9									
  taskservice.go:633	0xe32a08		0f8424010000		JE 0xe32b32									
  taskservice.go:633	0xe32a0e		488b32			MOVQ 0(DX), SI									
  taskservice.go:636	0xe32a11		4d894850		MOVQ R9, 0x50(R8)								
  taskservice.go:636	0xe32a15		833d34b1720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:636	0xe32a1c		7412			JE 0xe32a30									
  taskservice.go:636	0xe32a1e		6690			NOPW										
  taskservice.go:636	0xe32a20		e81b5a64ff		CALL runtime.gcWriteBarrier2(SB)						
  taskservice.go:636	0xe32a25		498933			MOVQ SI, 0(R11)									
  taskservice.go:636	0xe32a28		4d8b4848		MOVQ 0x48(R8), R9								
  taskservice.go:636	0xe32a2c		4d894b08		MOVQ R9, 0x8(R11)								
  taskservice.go:636	0xe32a30		49897048		MOVQ SI, 0x48(R8)								
  taskservice.go:638	0xe32a34		488b742440		MOVQ 0x40(SP), SI								
  taskservice.go:638	0xe32a39		488b06			MOVQ 0(SI), AX									
  taskservice.go:638	0xe32a3c		0f1f4000		NOPL 0(AX)									
  taskservice.go:638	0xe32a40		4885c0			TESTQ AX, AX									
  taskservice.go:638	0xe32a43		7511			JNE 0xe32a56									
  taskservice.go:641	0xe32a45		48c7422001000000	MOVQ $__minor_os_version__(SB), 0x20(DX)					
  taskservice.go:642	0xe32a4d		4d8b08			MOVQ 0(R8), R9									
  taskservice.go:642	0xe32a50		4c894a50		MOVQ R9, 0x50(DX)								
  taskservice.go:642	0xe32a54		eb19			JMP 0xe32a6f									
  taskservice.go:639	0xe32a56		488b4a08		MOVQ 0x8(DX), CX								
  taskservice.go:639	0xe32a5a		488b1a			MOVQ 0(DX), BX									
  taskservice.go:639	0xe32a5d		498b38			MOVQ 0(R8), DI									
  taskservice.go:639	0xe32a60		e8bb260100		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).MarkVehicleOnTask(SB)		
  taskservice.go:645	0xe32a65		488b542450		MOVQ 0x50(SP), DX								
  taskservice.go:645	0xe32a6a		4c8b442448		MOVQ 0x48(SP), R8								
  taskservice.go:645	0xe32a6f		498b00			MOVQ 0(R8), AX									
  taskservice.go:645	0xe32a72		488b0a			MOVQ 0(DX), CX									
  taskservice.go:645	0xe32a75		488b7a08		MOVQ 0x8(DX), DI								
  taskservice.go:645	0xe32a79		bb01000000		MOVL $__minor_os_version__(SB), BX						
  taskservice.go:645	0xe32a7e		6690			NOPW										
  taskservice.go:645	0xe32a80		e8db6cb6ff		CALL CAS-Backend/biz/dao.UpdateTaskDispatch(SB)					
  taskservice.go:645	0xe32a85		84c0			TESTL AL, AL									
  taskservice.go:645	0xe32a87		0f8487000000		JE 0xe32b14									
  taskservice.go:649	0xe32a8d		488d05ac8b2d00		LEAQ runtime.types+1205824(SB), AX						
  taskservice.go:649	0xe32a94		e807ed5dff		CALL runtime.newobject(SB)							
  taskservice.go:649	0xe32a99		488d0d00010000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).assignTask.gowrap1(SB), CX		
  taskservice.go:649	0xe32aa0		488908			MOVQ CX, 0(AX)									
  taskservice.go:649	0xe32aa3		833da6b0720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:649	0xe32aaa		7516			JNE 0xe32ac2									
  taskservice.go:649	0xe32aac		488b4c2440		MOVQ 0x40(SP), CX								
  taskservice.go:649	0xe32ab1		488b542448		MOVQ 0x48(SP), DX								
  taskservice.go:649	0xe32ab6		488b5c2450		MOVQ 0x50(SP), BX								
  taskservice.go:649	0xe32abb		488b742460		MOVQ 0x60(SP), SI								
  taskservice.go:649	0xe32ac0		eb28			JMP 0xe32aea									
  taskservice.go:649	0xe32ac2		e8b95964ff		CALL runtime.gcWriteBarrier4(SB)						
  taskservice.go:649	0xe32ac7		488b4c2440		MOVQ 0x40(SP), CX								
  taskservice.go:649	0xe32acc		49890b			MOVQ CX, 0(R11)									
  taskservice.go:649	0xe32acf		488b542448		MOVQ 0x48(SP), DX								
  taskservice.go:649	0xe32ad4		49895308		MOVQ DX, 0x8(R11)								
  taskservice.go:649	0xe32ad8		488b5c2450		MOVQ 0x50(SP), BX								
  taskservice.go:649	0xe32add		49895b10		MOVQ BX, 0x10(R11)								
  taskservice.go:649	0xe32ae1		488b742460		MOVQ 0x60(SP), SI								
  taskservice.go:649	0xe32ae6		49897318		MOVQ SI, 0x18(R11)								
  taskservice.go:649	0xe32aea		48894808		MOVQ CX, 0x8(AX)								
  taskservice.go:649	0xe32aee		48895010		MOVQ DX, 0x10(AX)								
  taskservice.go:649	0xe32af2		48895818		MOVQ BX, 0x18(AX)								
  taskservice.go:649	0xe32af6		f20f10442458		MOVSD_XMM 0x58(SP), X0								
  taskservice.go:649	0xe32afc		f20f114020		MOVSD_XMM X0, 0x20(AX)								
  taskservice.go:649	0xe32b01		48897028		MOVQ SI, 0x28(AX)								
  taskservice.go:649	0xe32b05		e8364a61ff		CALL runtime.newproc(SB)							
  taskservice.go:651	0xe32b0a		31c0			XORL AX, AX									
  taskservice.go:651	0xe32b0c		31db			XORL BX, BX									
  taskservice.go:651	0xe32b0e		4883c430		ADDQ $__major_os_version__+42(SB), SP						
  taskservice.go:651	0xe32b12		5d			POPQ BP										
  taskservice.go:651	0xe32b13		c3			RET										
  taskservice.go:646	0xe32b14		488d056d4d3600		LEAQ go:string.*+193408(SB), AX							
  taskservice.go:646	0xe32b1b		bb2a000000		MOVL $__major_os_version__+36(SB), BX						
  taskservice.go:646	0xe32b20		31c9			XORL CX, CX									
  taskservice.go:646	0xe32b22		31ff			XORL DI, DI									
  taskservice.go:646	0xe32b24		4889fe			MOVQ DI, SI									
  taskservice.go:646	0xe32b27		e894986eff		CALL fmt.Errorf(SB)								
  taskservice.go:646	0xe32b2c		4883c430		ADDQ $__major_os_version__+42(SB), SP						
  taskservice.go:646	0xe32b30		5d			POPQ BP										
  taskservice.go:646	0xe32b31		c3			RET										
  taskservice.go:634	0xe32b32		488d0598fe3500		LEAQ go:string.*+173257(SB), AX							
  taskservice.go:634	0xe32b39		bb25000000		MOVL $__major_os_version__+31(SB), BX						
  taskservice.go:634	0xe32b3e		31c9			XORL CX, CX									
  taskservice.go:634	0xe32b40		31ff			XORL DI, DI									
  taskservice.go:634	0xe32b42		4889fe			MOVQ DI, SI									
  taskservice.go:634	0xe32b45		e876986eff		CALL fmt.Errorf(SB)								
  taskservice.go:634	0xe32b4a		4883c430		ADDQ $__major_os_version__+42(SB), SP						
  taskservice.go:634	0xe32b4e		5d			POPQ BP										
  taskservice.go:634	0xe32b4f		c3			RET										
  taskservice.go:624	0xe32b50		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:624	0xe32b55		48895c2410		MOVQ BX, 0x10(SP)								
  taskservice.go:624	0xe32b5a		48894c2418		MOVQ CX, 0x18(SP)								
  taskservice.go:624	0xe32b5f		f20f11442420		MOVSD_XMM X0, 0x20(SP)								
  taskservice.go:624	0xe32b65		48897c2428		MOVQ DI, 0x28(SP)								
  taskservice.go:624	0xe32b6a		e8713964ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:624	0xe32b6f		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:624	0xe32b74		488b5c2410		MOVQ 0x10(SP), BX								
  taskservice.go:624	0xe32b79		488b4c2418		MOVQ 0x18(SP), CX								
  taskservice.go:624	0xe32b7e		f20f10442420		MOVSD_XMM 0x20(SP), X0								
  taskservice.go:624	0xe32b84		488b7c2428		MOVQ 0x28(SP), DI								
  taskservice.go:624	0xe32b89		e9d2fdffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).assignTask(SB)			
  :-1			0xe32b8e		cc			INT $__subsystem__(SB)								
  :-1			0xe32b8f		cc			INT $__subsystem__(SB)								
  :-1			0xe32b90		cc			INT $__subsystem__(SB)								
  :-1			0xe32b91		cc			INT $__subsystem__(SB)								
  :-1			0xe32b92		cc			INT $__subsystem__(SB)								
  :-1			0xe32b93		cc			INT $__subsystem__(SB)								
  :-1			0xe32b94		cc			INT $__subsystem__(SB)								
  :-1			0xe32b95		cc			INT $__subsystem__(SB)								
  :-1			0xe32b96		cc			INT $__subsystem__(SB)								
  :-1			0xe32b97		cc			INT $__subsystem__(SB)								
  :-1			0xe32b98		cc			INT $__subsystem__(SB)								
  :-1			0xe32b99		cc			INT $__subsystem__(SB)								
  :-1			0xe32b9a		cc			INT $__subsystem__(SB)								
  :-1			0xe32b9b		cc			INT $__subsystem__(SB)								
  :-1			0xe32b9c		cc			INT $__subsystem__(SB)								
  :-1			0xe32b9d		cc			INT $__subsystem__(SB)								
  :-1			0xe32b9e		cc			INT $__subsystem__(SB)								
  :-1			0xe32b9f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).assignTask.gowrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:649	0xe32ba0		493b6610		CMPQ SP, 0x10(R14)							
  taskservice.go:649	0xe32ba4		7631			JBE 0xe32bd7								
  taskservice.go:649	0xe32ba6		55			PUSHQ BP								
  taskservice.go:649	0xe32ba7		4889e5			MOVQ SP, BP								
  taskservice.go:649	0xe32baa		4883ec28		SUBQ $__major_os_version__+34(SB), SP					
  taskservice.go:649	0xe32bae		4d8b6620		MOVQ 0x20(R14), R12							
  taskservice.go:649	0xe32bb2		4d85e4			TESTQ R12, R12								
  taskservice.go:649	0xe32bb5		7527			JNE 0xe32bde								
  taskservice.go:649	0xe32bb7		488b5a10		MOVQ 0x10(DX), BX							
  taskservice.go:649	0xe32bbb		488b4a18		MOVQ 0x18(DX), CX							
  taskservice.go:649	0xe32bbf		f20f104220		MOVSD_XMM 0x20(DX), X0							
  taskservice.go:649	0xe32bc4		488b7a28		MOVQ 0x28(DX), DI							
  taskservice.go:649	0xe32bc8		488b4208		MOVQ 0x8(DX), AX							
  taskservice.go:649	0xe32bcc		e82f000000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).executeTask(SB)		
  taskservice.go:649	0xe32bd1		4883c428		ADDQ $__major_os_version__+34(SB), SP					
  taskservice.go:649	0xe32bd5		5d			POPQ BP									
  taskservice.go:649	0xe32bd6		c3			RET									
  taskservice.go:649	0xe32bd7		e8843864ff		CALL runtime.morestack.abi0(SB)						
  taskservice.go:649	0xe32bdc		ebc2			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).assignTask.gowrap1(SB)	
  taskservice.go:649	0xe32bde		4c8d6c2438		LEAQ 0x38(SP), R13							
  taskservice.go:649	0xe32be3		4d392c24		CMPQ 0(R12), R13							
  taskservice.go:649	0xe32be7		75ce			JNE 0xe32bb7								
  taskservice.go:649	0xe32be9		49892424		MOVQ SP, 0(R12)								
  taskservice.go:649	0xe32bed		ebc8			JMP 0xe32bb7								
  :-1			0xe32bef		cc			INT $__subsystem__(SB)							
  :-1			0xe32bf0		cc			INT $__subsystem__(SB)							
  :-1			0xe32bf1		cc			INT $__subsystem__(SB)							
  :-1			0xe32bf2		cc			INT $__subsystem__(SB)							
  :-1			0xe32bf3		cc			INT $__subsystem__(SB)							
  :-1			0xe32bf4		cc			INT $__subsystem__(SB)							
  :-1			0xe32bf5		cc			INT $__subsystem__(SB)							
  :-1			0xe32bf6		cc			INT $__subsystem__(SB)							
  :-1			0xe32bf7		cc			INT $__subsystem__(SB)							
  :-1			0xe32bf8		cc			INT $__subsystem__(SB)							
  :-1			0xe32bf9		cc			INT $__subsystem__(SB)							
  :-1			0xe32bfa		cc			INT $__subsystem__(SB)							
  :-1			0xe32bfb		cc			INT $__subsystem__(SB)							
  :-1			0xe32bfc		cc			INT $__subsystem__(SB)							
  :-1			0xe32bfd		cc			INT $__subsystem__(SB)							
  :-1			0xe32bfe		cc			INT $__subsystem__(SB)							
  :-1			0xe32bff		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).executeTask(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:654	0xe32c00		4c8da42478fdffff	LEAQ 0xfffffd78(SP), R12							
  taskservice.go:654	0xe32c08		4d3b6610		CMPQ R12, 0x10(R14)								
  taskservice.go:654	0xe32c0c		0f86f40d0000		JBE 0xe33a06									
  taskservice.go:654	0xe32c12		55			PUSHQ BP									
  taskservice.go:654	0xe32c13		4889e5			MOVQ SP, BP									
  taskservice.go:654	0xe32c16		4881ec00030000		SUBQ $__file_alignment__+256(SB), SP						
  taskservice.go:654	0xe32c1d		66440fd6bc24f8020000	MOVQ X15, 0x2f8(SP)								
  taskservice.go:661	0xe32c27		4889842410030000	MOVQ AX, 0x310(SP)								
  taskservice.go:661	0xe32c2f		48899c2418030000	MOVQ BX, 0x318(SP)								
  taskservice.go:661	0xe32c37		48898c2420030000	MOVQ CX, 0x320(SP)								
  taskservice.go:654	0xe32c3f		c644246f00		MOVB $0x0, 0x6f(SP)								
  taskservice.go:655	0xe32c44		488d15150e0000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).executeTask.func1(SB), DX		
  taskservice.go:655	0xe32c4b		4889942478010000	MOVQ DX, 0x178(SP)								
  taskservice.go:655	0xe32c53		4889842480010000	MOVQ AX, 0x180(SP)								
  taskservice.go:655	0xe32c5b		48898c2488010000	MOVQ CX, 0x188(SP)								
  taskservice.go:655	0xe32c63		488d942478010000	LEAQ 0x178(SP), DX								
  taskservice.go:655	0xe32c6b		48899424f8020000	MOVQ DX, 0x2f8(SP)								
  taskservice.go:655	0xe32c73		c644246f01		MOVB $__minor_os_version__(SB), 0x6f(SP)					
  taskservice.go:661	0xe32c78		4883794000		CMPQ 0x40(CX), $0x0								
  taskservice.go:661	0xe32c7d		0f1f00			NOPL 0(AX)									
  taskservice.go:661	0xe32c80		0f84400b0000		JE 0xe337c6									
  taskservice.go:661	0xe32c86		f20f11842428030000	MOVSD_XMM X0, 0x328(SP)								
  taskservice.go:661	0xe32c8f		4889bc2430030000	MOVQ DI, 0x330(SP)								
  taskservice.go:667	0xe32c97		48c7434002000000	MOVQ $__minor_os_version__+1(SB), 0x40(BX)					
  taskservice.go:668	0xe32c9f		488b03			MOVQ 0(BX), AX									
  taskservice.go:668	0xe32ca2		bb02000000		MOVL $__minor_os_version__+1(SB), BX						
  taskservice.go:668	0xe32ca7		e89467b6ff		CALL CAS-Backend/biz/dao.UpdateTaskStatusByID(SB)				
  taskservice.go:670	0xe32cac		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:670	0xe32cb4		488b5908		MOVQ 0x8(CX), BX								
  taskservice.go:670	0xe32cb8		488b01			MOVQ 0(CX), AX									
  taskservice.go:670	0xe32cbb		488b5138		MOVQ 0x38(CX), DX								
  taskservice.go:670	0xe32cbf		488b7940		MOVQ 0x40(CX), DI								
  taskservice.go:670	0xe32cc3		4889d1			MOVQ DX, CX									
  taskservice.go:670	0xe32cc6		e81598ffff		CALL CAS-Backend/pkg/diapdu.currentStationForVehicle(SB)			
  taskservice.go:671	0xe32ccb		4885c9			TESTQ CX, CX									
  taskservice.go:671	0xe32cce		0f84e1000000		JE 0xe32db5									
  taskservice.go:670	0xe32cd4		4889bc24f0000000	MOVQ DI, 0xf0(SP)								
  taskservice.go:670	0xe32cdc		48898c24a0000000	MOVQ CX, 0xa0(SP)								
  taskservice.go:672	0xe32ce4		440f11bc2438010000	MOVUPS X15, 0x138(SP)								
  taskservice.go:672	0xe32ced		440f11bc2448010000	MOVUPS X15, 0x148(SP)								
  taskservice.go:672	0xe32cf6		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:672	0xe32cfe		488b01			MOVQ 0(CX), AX									
  taskservice.go:672	0xe32d01		488b5908		MOVQ 0x8(CX), BX								
  taskservice.go:672	0xe32d05		e8167463ff		CALL runtime.convTstring(SB)							
  taskservice.go:672	0xe32d0a		488d0d0ffc2000		LEAQ runtime.types+383264(SB), CX						
  taskservice.go:672	0xe32d11		48898c2438010000	MOVQ CX, 0x138(SP)								
  taskservice.go:672	0xe32d19		4889842440010000	MOVQ AX, 0x140(SP)								
  taskservice.go:671	0xe32d21		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  taskservice.go:671	0xe32d29		4885c9			TESTQ CX, CX									
  taskservice.go:672	0xe32d2c		7404			JE 0xe32d32									
  taskservice.go:672	0xe32d2e		488b4908		MOVQ 0x8(CX), CX								
  taskservice.go:672	0xe32d32		48898c2448010000	MOVQ CX, 0x148(SP)								
  taskservice.go:672	0xe32d3a		488b9424f0000000	MOVQ 0xf0(SP), DX								
  taskservice.go:672	0xe32d42		4889942450010000	MOVQ DX, 0x150(SP)								
  print.go:233		0xe32d4a		488b1d2ff36d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe32d51		488d05888d0302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe32d58		488d0d534b3600		LEAQ go:string.*+193450(SB), CX							
  print.go:233		0xe32d5f		bf2a000000		MOVL $__major_os_version__+36(SB), DI						
  print.go:233		0xe32d64		488db42438010000	LEAQ 0x138(SP), SI								
  print.go:233		0xe32d6c		41b802000000		MOVL $__minor_os_version__+1(SB), R8						
  print.go:233		0xe32d72		4d89c1			MOVQ R8, R9									
  print.go:233		0xe32d75		e8a6c46eff		CALL fmt.Fprintf(SB)								
  taskservice.go:673	0xe32d7a		488b842410030000	MOVQ 0x310(SP), AX								
  taskservice.go:673	0xe32d82		488b9c2418030000	MOVQ 0x318(SP), BX								
  taskservice.go:673	0xe32d8a		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:673	0xe32d92		31ff			XORL DI, DI									
  taskservice.go:673	0xe32d94		e8070d0000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).finishTaskExecution(SB)		
  taskservice.go:674	0xe32d99		c644246f00		MOVB $0x0, 0x6f(SP)								
  taskservice.go:674	0xe32d9e		488b9424f8020000	MOVQ 0x2f8(SP), DX								
  taskservice.go:674	0xe32da6		4c8b12			MOVQ 0(DX), R10									
  taskservice.go:674	0xe32da9		41ffd2			CALL R10									
  taskservice.go:674	0xe32dac		4881c400030000		ADDQ $__file_alignment__+256(SB), SP						
  taskservice.go:674	0xe32db3		5d			POPQ BP										
  taskservice.go:674	0xe32db4		c3			RET										
  taskservice.go:676	0xe32db5		e806fc6aff		CALL strings.TrimSpace(SB)							
  taskservice.go:677	0xe32dba		4885db			TESTQ BX, BX									
  taskservice.go:677	0xe32dbd		755c			JNE 0xe32e1b									
  taskservice.go:677	0xe32dbf		488b8c2410030000	MOVQ 0x310(SP), CX								
  taskservice.go:677	0xe32dc7		488b5140		MOVQ 0x40(CX), DX								
  taskservice.go:677	0xe32dcb		4885d2			TESTQ DX, DX									
  taskservice.go:677	0xe32dce		744b			JE 0xe32e1b									
  taskservice.go:676	0xe32dd0		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  taskservice.go:676	0xe32dd8		48898424f8000000	MOVQ AX, 0xf8(SP)								
  taskservice.go:678	0xe32de0		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:678	0xe32de8		f20f104128		MOVSD_XMM 0x28(CX), X0								
  taskservice.go:678	0xe32ded		f20f104930		MOVSD_XMM 0x30(CX), X1								
  taskservice.go:678	0xe32df2		4889d0			MOVQ DX, AX									
  taskservice.go:678	0xe32df5		e8e6360000		CALL CAS-Backend/pkg/diapdu.closestNodeTo(SB)					
  taskservice.go:678	0xe32dfa		4885c0			TESTQ AX, AX									
  taskservice.go:678	0xe32dfd		7409			JE 0xe32e08									
  taskservice.go:679	0xe32dff		488b08			MOVQ 0(AX), CX									
  taskservice.go:679	0xe32e02		488b5808		MOVQ 0x8(AX), BX								
  taskservice.go:679	0xe32e06		eb10			JMP 0xe32e18									
  taskservice.go:685	0xe32e08		488b9c24a8000000	MOVQ 0xa8(SP), BX								
  taskservice.go:685	0xe32e10		488b8c24f8000000	MOVQ 0xf8(SP), CX								
  taskservice.go:685	0xe32e18		4889c8			MOVQ CX, AX									
  taskservice.go:685	0xe32e1b		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  taskservice.go:685	0xe32e23		48898424f8000000	MOVQ AX, 0xf8(SP)								
  taskservice.go:683	0xe32e2b		e870b267ff		CALL time.Now(SB)								
  taskservice.go:683	0xe32e30		488d3d806b3400		LEAQ go:string.*+70831(SB), DI							
  taskservice.go:683	0xe32e37		be0e000000		MOVL $__major_os_version__+8(SB), SI						
  taskservice.go:683	0xe32e3c		0f1f4000		NOPL 0(AX)									
  taskservice.go:683	0xe32e40		e83b8566ff		CALL time.Time.Format(SB)							
  taskservice.go:690	0xe32e45		440f11bc24a0020000	MOVUPS X15, 0x2a0(SP)								
  taskservice.go:690	0xe32e4e		488dbc24a8020000	LEAQ 0x2a8(SP), DI								
  taskservice.go:690	0xe32e56		488d7fd0		LEAQ -0x30(DI), DI								
  taskservice.go:690	0xe32e5a		660f1f440000		NOPW 0(AX)(AX*1)								
  taskservice.go:690	0xe32e60		48896c24f0		MOVQ BP, -0x10(SP)								
  taskservice.go:690	0xe32e65		488d6c24f0		LEAQ -0x10(SP), BP								
  taskservice.go:690	0xe32e6a		e8815c64ff		CALL 0x478af0									
  taskservice.go:690	0xe32e6f		488b6d00		MOVQ 0(BP), BP									
  taskservice.go:685	0xe32e73		488b8c24f8000000	MOVQ 0xf8(SP), CX								
  taskservice.go:685	0xe32e7b		48898c24a0020000	MOVQ CX, 0x2a0(SP)								
  taskservice.go:685	0xe32e83		488b9424a8000000	MOVQ 0xa8(SP), DX								
  taskservice.go:685	0xe32e8b		48899424a8020000	MOVQ DX, 0x2a8(SP)								
  taskservice.go:686	0xe32e93		488bb42418030000	MOVQ 0x318(SP), SI								
  taskservice.go:686	0xe32e9b		488bbea0000000		MOVQ 0xa0(SI), DI								
  taskservice.go:686	0xe32ea2		4c8b86a8000000		MOVQ 0xa8(SI), R8								
  taskservice.go:686	0xe32ea9		4889bc24b0020000	MOVQ DI, 0x2b0(SP)								
  taskservice.go:686	0xe32eb1		4c898424b8020000	MOVQ R8, 0x2b8(SP)								
  taskservice.go:687	0xe32eb9		488bbeb0000000		MOVQ 0xb0(SI), DI								
  taskservice.go:687	0xe32ec0		4c8b86b8000000		MOVQ 0xb8(SI), R8								
  taskservice.go:687	0xe32ec7		4889bc24c0020000	MOVQ DI, 0x2c0(SP)								
  taskservice.go:687	0xe32ecf		4c898424c8020000	MOVQ R8, 0x2c8(SP)								
  taskservice.go:688	0xe32ed7		488bbec0000000		MOVQ 0xc0(SI), DI								
  taskservice.go:688	0xe32ede		4c8b86c8000000		MOVQ 0xc8(SI), R8								
  taskservice.go:688	0xe32ee5		4889bc24d0020000	MOVQ DI, 0x2d0(SP)								
  taskservice.go:688	0xe32eed		4c898424d8020000	MOVQ R8, 0x2d8(SP)								
  taskservice.go:689	0xe32ef5		488bbed0000000		MOVQ 0xd0(SI), DI								
  taskservice.go:689	0xe32efc		4c8b86d8000000		MOVQ 0xd8(SI), R8								
  taskservice.go:689	0xe32f03		4889bc24e0020000	MOVQ DI, 0x2e0(SP)								
  taskservice.go:689	0xe32f0b		4c898424e8020000	MOVQ R8, 0x2e8(SP)								
  taskservice.go:690	0xe32f13		f20f1086f8000000	MOVSD_XMM 0xf8(SI), X0								
  taskservice.go:690	0xe32f1b		f20f118424f0020000	MOVSD_XMM X0, 0x2f0(SP)								
  taskservice.go:684	0xe32f24		488bbc24a0020000	MOVQ 0x2a0(SP), DI								
  taskservice.go:684	0xe32f2c		48893c24		MOVQ DI, 0(SP)									
  taskservice.go:684	0xe32f30		488d7c2408		LEAQ 0x8(SP), DI								
  taskservice.go:684	0xe32f35		488db424a8020000	LEAQ 0x2a8(SP), SI								
  taskservice.go:684	0xe32f3d		0f1f00			NOPL 0(AX)									
  taskservice.go:684	0xe32f40		48896c24f0		MOVQ BP, -0x10(SP)								
  taskservice.go:684	0xe32f45		488d6c24f0		LEAQ -0x10(SP), BP								
  taskservice.go:684	0xe32f4a		e80b5f64ff		CALL 0x478e5a									
  taskservice.go:684	0xe32f4f		488b6d00		MOVQ 0(BP), BP									
  taskservice.go:684	0xe32f53		e8a85fffff		CALL CAS-Backend/pkg/diapdu.BuildExcNavigationTasks(SB)				
  taskservice.go:684	0xe32f58		48898424a0020000	MOVQ AX, 0x2a0(SP)								
  taskservice.go:684	0xe32f60		48899c24a8020000	MOVQ BX, 0x2a8(SP)								
  taskservice.go:684	0xe32f68		48898c24b0020000	MOVQ CX, 0x2b0(SP)								
  taskservice.go:684	0xe32f70		4889bc24b8020000	MOVQ DI, 0x2b8(SP)								
  taskservice.go:684	0xe32f78		4889b424c0020000	MOVQ SI, 0x2c0(SP)								
  taskservice.go:684	0xe32f80		4c898424c8020000	MOVQ R8, 0x2c8(SP)								
  taskservice.go:684	0xe32f88		44888c24d0020000	MOVB R9, 0x2d0(SP)								
  taskservice.go:684	0xe32f90		488b8424a0020000	MOVQ 0x2a0(SP), AX								
  taskservice.go:684	0xe32f98		4889842400010000	MOVQ AX, 0x100(SP)								
  taskservice.go:684	0xe32fa0		0f108424a8020000	MOVUPS 0x2a8(SP), X0								
  taskservice.go:684	0xe32fa8		0f11842408010000	MOVUPS X0, 0x108(SP)								
  taskservice.go:684	0xe32fb0		0f108424b8020000	MOVUPS 0x2b8(SP), X0								
  taskservice.go:684	0xe32fb8		0f11842418010000	MOVUPS X0, 0x118(SP)								
  taskservice.go:684	0xe32fc0		0f108424c8020000	MOVUPS 0x2c8(SP), X0								
  taskservice.go:684	0xe32fc8		0f11842428010000	MOVUPS X0, 0x128(SP)								
  taskservice.go:692	0xe32fd0		80bc243001000000	CMPB 0x130(SP), $0x0								
  taskservice.go:692	0xe32fd8		0f844e070000		JE 0xe3372c									
  taskservice.go:692	0xe32fde		488b942408010000	MOVQ 0x108(SP), DX								
  taskservice.go:692	0xe32fe6		4885d2			TESTQ DX, DX									
  taskservice.go:692	0xe32fe9		0f843d070000		JE 0xe3372c									
  taskservice.go:692	0xe32fef		48899424c0000000	MOVQ DX, 0xc0(SP)								
  taskservice.go:692	0xe32ff7		4c8b942400010000	MOVQ 0x100(SP), R10								
  taskservice.go:692	0xe32fff		4c89942498010000	MOVQ R10, 0x198(SP)								
  taskservice.go:692	0xe33007		4c8b9c2410010000	MOVQ 0x110(SP), R11								
  taskservice.go:692	0xe3300f		4c899c24b8000000	MOVQ R11, 0xb8(SP)								
  taskservice.go:700	0xe33017		4c8ba42420030000	MOVQ 0x320(SP), R12								
  taskservice.go:700	0xe3301f		498b3424		MOVQ 0(R12), SI									
  taskservice.go:700	0xe33023		4d8b442408		MOVQ 0x8(R12), R8								
  taskservice.go:699	0xe33028		4c8bac2418010000	MOVQ 0x118(SP), R13								
  taskservice.go:699	0xe33030		4c89ac24d0000000	MOVQ R13, 0xd0(SP)								
  taskservice.go:699	0xe33038		4c8bbc2420010000	MOVQ 0x120(SP), R15								
  taskservice.go:699	0xe33040		4c897c2470		MOVQ R15, 0x70(SP)								
  taskservice.go:699	0xe33045		488b842428010000	MOVQ 0x128(SP), AX								
  taskservice.go:699	0xe3304d		4889442478		MOVQ AX, 0x78(SP)								
  taskservice.go:700	0xe33052		4c891424		MOVQ R10, 0(SP)									
  taskservice.go:700	0xe33056		4889542408		MOVQ DX, 0x8(SP)								
  taskservice.go:700	0xe3305b		4c895c2410		MOVQ R11, 0x10(SP)								
  taskservice.go:700	0xe33060		488b9c24f8000000	MOVQ 0xf8(SP), BX								
  taskservice.go:700	0xe33068		488b8c24a8000000	MOVQ 0xa8(SP), CX								
  taskservice.go:700	0xe33070		488bbc2418030000	MOVQ 0x318(SP), DI								
  taskservice.go:700	0xe33078		4c8b8c2430030000	MOVQ 0x330(SP), R9								
  taskservice.go:700	0xe33080		488b842410030000	MOVQ 0x310(SP), AX								
  taskservice.go:700	0xe33088		e813b6ffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).resolveFullTrafficPath(SB)		
  taskservice.go:701	0xe3308d		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)						
  taskservice.go:701	0xe33091		0f8c23020000		JL 0xe332ba									
  taskservice.go:701	0xe33097		488b942410030000	MOVQ 0x310(SP), DX								
  taskservice.go:701	0xe3309f		4c8b5250		MOVQ 0x50(DX), R10								
  taskservice.go:701	0xe330a3		4d85d2			TESTQ R10, R10									
  taskservice.go:701	0xe330a6		0f8416020000		JE 0xe332c2									
  taskservice.go:700	0xe330ac		48898c2498000000	MOVQ CX, 0x98(SP)								
  taskservice.go:700	0xe330b4		48899c2490000000	MOVQ BX, 0x90(SP)								
  taskservice.go:700	0xe330bc		48898424e8000000	MOVQ AX, 0xe8(SP)								
  taskservice.go:702	0xe330c4		488b942420030000	MOVQ 0x320(SP), DX								
  taskservice.go:702	0xe330cc		4c8b5a08		MOVQ 0x8(DX), R11								
  taskservice.go:702	0xe330d0		4c8b22			MOVQ 0(DX), R12									
  taskservice.go:702	0xe330d3		4c8bac2418030000	MOVQ 0x318(SP), R13								
  taskservice.go:702	0xe330db		4d8b4d18		MOVQ 0x18(R13), R9								
  taskservice.go:702	0xe330df		4889c7			MOVQ AX, DI									
  taskservice.go:702	0xe330e2		4889de			MOVQ BX, SI									
  taskservice.go:702	0xe330e5		4989c8			MOVQ CX, R8									
  taskservice.go:702	0xe330e8		4c89d0			MOVQ R10, AX									
  taskservice.go:702	0xe330eb		4c89e3			MOVQ R12, BX									
  taskservice.go:702	0xe330ee		4c89d9			MOVQ R11, CX									
  taskservice.go:702	0xe330f1		e8ea4f0000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).RegisterRoute(SB)	
  taskservice.go:703	0xe330f6		488b942410030000	MOVQ 0x310(SP), DX								
  taskservice.go:703	0xe330fe		488b4250		MOVQ 0x50(DX), AX								
  taskservice.go:703	0xe33102		4c8b942420030000	MOVQ 0x320(SP), R10								
  taskservice.go:703	0xe3310a		498b1a			MOVQ 0(R10), BX									
  taskservice.go:703	0xe3310d		498b4a08		MOVQ 0x8(R10), CX								
  taskservice.go:703	0xe33111		4c8b9c2418030000	MOVQ 0x318(SP), R11								
  taskservice.go:703	0xe33119		498b3b			MOVQ 0(R11), DI									
  taskservice.go:703	0xe3311c		4d8b6318		MOVQ 0x18(R11), R12								
  taskservice.go:703	0xe33120		488bb424e8000000	MOVQ 0xe8(SP), SI								
  taskservice.go:703	0xe33128		4c8b842490000000	MOVQ 0x90(SP), R8								
  taskservice.go:703	0xe33130		4c8b8c2498000000	MOVQ 0x98(SP), R9								
  taskservice.go:703	0xe33138		4d89e2			MOVQ R12, R10									
  taskservice.go:703	0xe3313b		0f1f440000		NOPL 0(AX)(AX*1)								
  taskservice.go:703	0xe33140		e89b950000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).LogTaskAssignment(SB)	
  taskservice.go:705	0xe33145		488b8424e8000000	MOVQ 0xe8(SP), AX								
  taskservice.go:705	0xe3314d		488b9c2490000000	MOVQ 0x90(SP), BX								
  taskservice.go:705	0xe33155		488b8c2498000000	MOVQ 0x98(SP), CX								
  taskservice.go:705	0xe3315d		488d3de4583300		LEAQ go:string.*+1344(SB), DI							
  taskservice.go:705	0xe33164		be03000000		MOVL $__subsystem__(SB), SI							
  taskservice.go:705	0xe33169		e832d56aff		CALL strings.Join(SB)								
  taskservice.go:705	0xe3316e		4889842490010000	MOVQ AX, 0x190(SP)								
  taskservice.go:705	0xe33176		48899c24b0000000	MOVQ BX, 0xb0(SP)								
  taskservice.go:704	0xe3317e		488dbc2440020000	LEAQ 0x240(SP), DI								
  taskservice.go:704	0xe33186		488d7fd0		LEAQ -0x30(DI), DI								
  taskservice.go:704	0xe3318a		48896c24f0		MOVQ BP, -0x10(SP)								
  taskservice.go:704	0xe3318f		488d6c24f0		LEAQ -0x10(SP), BP								
  taskservice.go:704	0xe33194		e8575964ff		CALL 0x478af0									
  taskservice.go:704	0xe33199		488b6d00		MOVQ 0(BP), BP									
  taskservice.go:705	0xe3319d		488b942418030000	MOVQ 0x318(SP), DX								
  taskservice.go:705	0xe331a5		4c8b12			MOVQ 0(DX), R10									
  taskservice.go:705	0xe331a8		4c89d0			MOVQ R10, AX									
  taskservice.go:705	0xe331ab		e8f06e63ff		CALL runtime.convT64(SB)							
  taskservice.go:705	0xe331b0		488d15a9f92000		LEAQ runtime.types+383840(SB), DX						
  taskservice.go:705	0xe331b7		4889942440020000	MOVQ DX, 0x240(SP)								
  taskservice.go:705	0xe331bf		4889842448020000	MOVQ AX, 0x248(SP)								
  taskservice.go:705	0xe331c7		488b8424f8000000	MOVQ 0xf8(SP), AX								
  taskservice.go:705	0xe331cf		488b9c24a8000000	MOVQ 0xa8(SP), BX								
  taskservice.go:705	0xe331d7		e8446f63ff		CALL runtime.convTstring(SB)							
  taskservice.go:705	0xe331dc		488d153df72000		LEAQ runtime.types+383264(SB), DX						
  taskservice.go:705	0xe331e3		4889942450020000	MOVQ DX, 0x250(SP)								
  taskservice.go:705	0xe331eb		4889842458020000	MOVQ AX, 0x258(SP)								
  taskservice.go:705	0xe331f3		4c8b942418030000	MOVQ 0x318(SP), R10								
  taskservice.go:705	0xe331fb		498b8280000000		MOVQ 0x80(R10), AX								
  taskservice.go:705	0xe33202		498b9a88000000		MOVQ 0x88(R10), BX								
  taskservice.go:705	0xe33209		e8126f63ff		CALL runtime.convTstring(SB)							
  taskservice.go:705	0xe3320e		488d150bf72000		LEAQ runtime.types+383264(SB), DX						
  taskservice.go:705	0xe33215		4889942460020000	MOVQ DX, 0x260(SP)								
  taskservice.go:705	0xe3321d		4889842468020000	MOVQ AX, 0x268(SP)								
  taskservice.go:705	0xe33225		4c8b942418030000	MOVQ 0x318(SP), R10								
  taskservice.go:705	0xe3322d		498b8290000000		MOVQ 0x90(R10), AX								
  taskservice.go:705	0xe33234		498b9a98000000		MOVQ 0x98(R10), BX								
  taskservice.go:705	0xe3323b		0f1f440000		NOPL 0(AX)(AX*1)								
  taskservice.go:705	0xe33240		e8db6e63ff		CALL runtime.convTstring(SB)							
  taskservice.go:705	0xe33245		488d15d4f62000		LEAQ runtime.types+383264(SB), DX						
  taskservice.go:705	0xe3324c		4889942470020000	MOVQ DX, 0x270(SP)								
  taskservice.go:705	0xe33254		4889842478020000	MOVQ AX, 0x278(SP)								
  taskservice.go:705	0xe3325c		488b842490010000	MOVQ 0x190(SP), AX								
  taskservice.go:705	0xe33264		488b9c24b0000000	MOVQ 0xb0(SP), BX								
  taskservice.go:705	0xe3326c		e8af6e63ff		CALL runtime.convTstring(SB)							
  taskservice.go:705	0xe33271		488d15a8f62000		LEAQ runtime.types+383264(SB), DX						
  taskservice.go:705	0xe33278		4889942480020000	MOVQ DX, 0x280(SP)								
  taskservice.go:705	0xe33280		4889842488020000	MOVQ AX, 0x288(SP)								
  print.go:233		0xe33288		488b1df1ed6d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe3328f		488d054a880302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe33296		488d0dff3d3700		LEAQ go:string.*+256916(SB), CX							
  print.go:233		0xe3329d		bf47000000		MOVL $__major_os_version__+65(SB), DI						
  print.go:233		0xe332a2		488db42440020000	LEAQ 0x240(SP), SI								
  print.go:233		0xe332aa		41b805000000		MOVL $__subsystem__+2(SB), R8							
  print.go:233		0xe332b0		4d89c1			MOVQ R8, R9									
  print.go:233		0xe332b3		e868bf6eff		CALL fmt.Fprintf(SB)								
  taskservice.go:704	0xe332b8		eb08			JMP 0xe332c2									
  taskservice.go:736	0xe332ba		488b942410030000	MOVQ 0x310(SP), DX								
  taskservice.go:708	0xe332c2		488dbc24e0010000	LEAQ 0x1e0(SP), DI								
  taskservice.go:708	0xe332ca		488d7fe0		LEAQ -0x20(DI), DI								
  taskservice.go:708	0xe332ce		660f1f840000000000	NOPW 0(AX)(AX*1)								
  taskservice.go:708	0xe332d7		660f1f840000000000	NOPW 0(AX)(AX*1)								
  taskservice.go:708	0xe332e0		48896c24f0		MOVQ BP, -0x10(SP)								
  taskservice.go:708	0xe332e5		488d6c24f0		LEAQ -0x10(SP), BP								
  taskservice.go:708	0xe332ea		e8fc5764ff		CALL 0x478aeb									
  taskservice.go:708	0xe332ef		488b6d00		MOVQ 0(BP), BP									
  taskservice.go:709	0xe332f3		488b8c2418030000	MOVQ 0x318(SP), CX								
  taskservice.go:709	0xe332fb		488b01			MOVQ 0(CX), AX									
  taskservice.go:709	0xe332fe		6690			NOPW										
  taskservice.go:709	0xe33300		e89b6d63ff		CALL runtime.convT64(SB)							
  taskservice.go:709	0xe33305		488d0d54f82000		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:709	0xe3330c		48898c24e0010000	MOVQ CX, 0x1e0(SP)								
  taskservice.go:709	0xe33314		48898424e8010000	MOVQ AX, 0x1e8(SP)								
  taskservice.go:709	0xe3331c		488b942420030000	MOVQ 0x320(SP), DX								
  taskservice.go:709	0xe33324		488b02			MOVQ 0(DX), AX									
  taskservice.go:709	0xe33327		488b5a08		MOVQ 0x8(DX), BX								
  taskservice.go:709	0xe3332b		e8f06d63ff		CALL runtime.convTstring(SB)							
  taskservice.go:709	0xe33330		488d0de9f52000		LEAQ runtime.types+383264(SB), CX						
  taskservice.go:709	0xe33337		48898c24f0010000	MOVQ CX, 0x1f0(SP)								
  taskservice.go:709	0xe3333f		48898424f8010000	MOVQ AX, 0x1f8(SP)								
  taskservice.go:709	0xe33347		488b942420030000	MOVQ 0x320(SP), DX								
  taskservice.go:709	0xe3334f		488b4238		MOVQ 0x38(DX), AX								
  taskservice.go:709	0xe33353		488b5a40		MOVQ 0x40(DX), BX								
  taskservice.go:709	0xe33357		e8c46d63ff		CALL runtime.convTstring(SB)							
  taskservice.go:709	0xe3335c		488d0dbdf52000		LEAQ runtime.types+383264(SB), CX						
  taskservice.go:709	0xe33363		48898c2400020000	MOVQ CX, 0x200(SP)								
  taskservice.go:709	0xe3336b		4889842408020000	MOVQ AX, 0x208(SP)								
  taskservice.go:709	0xe33373		b8064b0000		MOVL $__size_of_stack_commit__+15110(SB), AX					
  taskservice.go:709	0xe33378		e8236d63ff		CALL runtime.convT64(SB)							
  taskservice.go:709	0xe3337d		488d0ddcf72000		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:709	0xe33384		48898c2410020000	MOVQ CX, 0x210(SP)								
  taskservice.go:709	0xe3338c		4889842418020000	MOVQ AX, 0x218(SP)								
  taskservice.go:709	0xe33394		488b8424c0000000	MOVQ 0xc0(SP), AX								
  taskservice.go:709	0xe3339c		0f1f4000		NOPL 0(AX)									
  taskservice.go:709	0xe333a0		e8fb6c63ff		CALL runtime.convT64(SB)							
  taskservice.go:709	0xe333a5		488d0db4f72000		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:709	0xe333ac		48898c2420020000	MOVQ CX, 0x220(SP)								
  taskservice.go:709	0xe333b4		4889842428020000	MOVQ AX, 0x228(SP)								
  taskservice.go:709	0xe333bc		488b8424d0000000	MOVQ 0xd0(SP), AX								
  taskservice.go:709	0xe333c4		488b5c2470		MOVQ 0x70(SP), BX								
  taskservice.go:709	0xe333c9		488b4c2478		MOVQ 0x78(SP), CX								
  taskservice.go:709	0xe333ce		e8ed6d63ff		CALL runtime.convTslice(SB)							
  taskservice.go:709	0xe333d3		488d0da6552000		LEAQ runtime.types+342400(SB), CX						
  taskservice.go:709	0xe333da		48898c2430020000	MOVQ CX, 0x230(SP)								
  taskservice.go:709	0xe333e2		4889842438020000	MOVQ AX, 0x238(SP)								
  print.go:233		0xe333ea		488b1d8fec6d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe333f1		488d05e8860302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe333f8		488d0d2a673700		LEAQ go:string.*+267809(SB), CX							
  print.go:233		0xe333ff		bf59000000		MOVL $.file+12(SB), DI								
  print.go:233		0xe33404		488db424e0010000	LEAQ 0x1e0(SP), SI								
  print.go:233		0xe3340c		41b806000000		MOVL $__major_os_version__(SB), R8						
  print.go:233		0xe33412		4d89c1			MOVQ R8, R9									
  print.go:233		0xe33415		e806be6eff		CALL fmt.Fprintf(SB)								
  taskservice.go:711	0xe3341a		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:711	0xe33422		488b4138		MOVQ 0x38(CX), AX								
  taskservice.go:711	0xe33426		488b5940		MOVQ 0x40(CX), BX								
  taskservice.go:711	0xe3342a		488bbc24c0000000	MOVQ 0xc0(SP), DI								
  taskservice.go:711	0xe33432		488bb424b8000000	MOVQ 0xb8(SP), SI								
  taskservice.go:711	0xe3343a		488b8c2498010000	MOVQ 0x198(SP), CX								
  taskservice.go:711	0xe33442		e81945ffff		CALL CAS-Backend/pkg/diapdu.sendDockNavigation(SB)				
  taskservice.go:711	0xe33447		48899c24a0000000	MOVQ BX, 0xa0(SP)								
  taskservice.go:711	0xe3344f		48898c24f0000000	MOVQ CX, 0xf0(SP)								
  taskservice.go:711	0xe33457		660f1f840000000000	NOPW 0(AX)(AX*1)								
  taskservice.go:712	0xe33460		4885db			TESTQ BX, BX									
  taskservice.go:712	0xe33463		0f85ee010000		JNE 0xe33657									
  taskservice.go:711	0xe33469		84c0			TESTL AL, AL									
  taskservice.go:712	0xe3346b		0f84e6010000		JE 0xe33657									
  taskservice.go:718	0xe33471		f20f10842428030000	MOVSD_XMM 0x328(SP), X0								
  taskservice.go:718	0xe3347a		f2480f2cd0		CVTTSD2SIQ X0, DX								
  taskservice.go:718	0xe3347f		4869d200ca9a3b		IMULQ $0x3b9aca00, DX, DX							
  taskservice.go:718	0xe33486		49bc00505c18a3010000	MOVQ $0x1a3185c5000, R12							
  taskservice.go:718	0xe33490		4c01e2			ADDQ R12, DX									
  taskservice.go:722	0xe33493		4c8ba42418030000	MOVQ 0x318(SP), R12								
  taskservice.go:722	0xe3349b		4d8bac24d8000000	MOVQ 0xd8(R12), R13								
  taskservice.go:722	0xe334a3		4d8bbc24d0000000	MOVQ 0xd0(R12), R15								
  taskservice.go:722	0xe334ab		4c89f8			MOVQ R15, AX									
  taskservice.go:719	0xe334ae		49bf0070c9b28b000000	MOVQ $0x8bb2c97000, R15								
  taskservice.go:719	0xe334b8		4939d7			CMPQ R15, DX									
  taskservice.go:730	0xe334bb		490f4fd7		CMOVG R15, DX									
  taskservice.go:730	0xe334bf		90			NOPL										
  taskservice.go:723	0xe334c0		4d85ed			TESTQ R13, R13									
  taskservice.go:719	0xe334c3		7512			JNE 0xe334d7									
  taskservice.go:724	0xe334c5		4d8bac2498000000	MOVQ 0x98(R12), R13								
  taskservice.go:724	0xe334cd		4d8bbc2490000000	MOVQ 0x90(R12), R15								
  taskservice.go:724	0xe334d5		eb03			JMP 0xe334da									
  taskservice.go:726	0xe334d7		4989c7			MOVQ AX, R15									
  taskservice.go:726	0xe334da		4d85ed			TESTQ R13, R13									
  taskservice.go:726	0xe334dd		752c			JNE 0xe3350b									
  taskservice.go:727	0xe334df		4c8ba424c0000000	MOVQ 0xc0(SP), R12								
  taskservice.go:727	0xe334e7		4d69e4e0000000		IMULQ $.file+147(SB), R12, R12							
  taskservice.go:730	0xe334ee		4889d1			MOVQ DX, CX									
  taskservice.go:727	0xe334f1		488b942498010000	MOVQ 0x198(SP), DX								
  taskservice.go:727	0xe334f9		4d8bbc1430ffffff	MOVQ 0xffffff30(R12)(DX*1), R15							
  taskservice.go:727	0xe33501		4d8bac1438ffffff	MOVQ 0xffffff38(R12)(DX*1), R13							
  taskservice.go:727	0xe33509		eb03			JMP 0xe3350e									
  taskservice.go:730	0xe3350b		4889d1			MOVQ DX, CX									
  taskservice.go:730	0xe3350e		4c89ac2488000000	MOVQ R13, 0x88(SP)								
  taskservice.go:730	0xe33516		4c89bc24e0000000	MOVQ R15, 0xe0(SP)								
  taskservice.go:730	0xe3351e		488b942420030000	MOVQ 0x320(SP), DX								
  taskservice.go:730	0xe33526		488b5a08		MOVQ 0x8(DX), BX								
  taskservice.go:730	0xe3352a		488b02			MOVQ 0(DX), AX									
  taskservice.go:730	0xe3352d		4c8b6238		MOVQ 0x38(DX), R12								
  taskservice.go:730	0xe33531		488b7a40		MOVQ 0x40(DX), DI								
  taskservice.go:730	0xe33535		48890c24		MOVQ CX, 0(SP)									
  taskservice.go:730	0xe33539		4c89e1			MOVQ R12, CX									
  taskservice.go:730	0xe3353c		488bb424d0000000	MOVQ 0xd0(SP), SI								
  taskservice.go:730	0xe33544		4c8b442470		MOVQ 0x70(SP), R8								
  taskservice.go:730	0xe33549		4c8b4c2478		MOVQ 0x78(SP), R9								
  taskservice.go:730	0xe3354e		4d89fa			MOVQ R15, R10									
  taskservice.go:730	0xe33551		4d89eb			MOVQ R13, R11									
  taskservice.go:730	0xe33554		e8879effff		CALL CAS-Backend/pkg/diapdu.waitNavTasksComplete(SB)				
  taskservice.go:730	0xe33559		84c0			TESTL AL, AL									
  taskservice.go:730	0xe3355b		7460			JE 0xe335bd									
  taskservice.go:736	0xe3355d		488b942410030000	MOVQ 0x310(SP), DX								
  taskservice.go:736	0xe33565		488b7240		MOVQ 0x40(DX), SI								
  taskservice.go:736	0xe33569		4885f6			TESTQ SI, SI									
  taskservice.go:736	0xe3356c		7426			JE 0xe33594									
  taskservice.go:737	0xe3356e		488b3e			MOVQ 0(SI), DI									
  taskservice.go:737	0xe33571		4889bc24d8000000	MOVQ DI, 0xd8(SP)								
  taskservice.go:737	0xe33579		488b7608		MOVQ 0x8(SI), SI								
  taskservice.go:737	0xe3357d		4889b42480000000	MOVQ SI, 0x80(SP)								
  diaodu.go:338		0xe33585		4c8b842488000000	MOVQ 0x88(SP), R8								
  diaodu.go:338		0xe3358d		31c0			XORL AX, AX									
  diaodu.go:338		0xe3358f		e991030000		JMP 0xe33925									
  taskservice.go:745	0xe33594		488b8c2418030000	MOVQ 0x318(SP), CX								
  taskservice.go:745	0xe3359c		f20f104130		MOVSD_XMM 0x30(CX), X0								
  taskservice.go:745	0xe335a1		488b9c2420030000	MOVQ 0x320(SP), BX								
  taskservice.go:745	0xe335a9		f20f114328		MOVSD_XMM X0, 0x28(BX)								
  taskservice.go:746	0xe335ae		f20f104138		MOVSD_XMM 0x38(CX), X0								
  taskservice.go:746	0xe335b3		f20f114330		MOVSD_XMM X0, 0x30(BX)								
  taskservice.go:746	0xe335b8		e9d0020000		JMP 0xe3388d									
  taskservice.go:731	0xe335bd		440f11bc24b0010000	MOVUPS X15, 0x1b0(SP)								
  taskservice.go:731	0xe335c6		488b8c2418030000	MOVQ 0x318(SP), CX								
  taskservice.go:731	0xe335ce		488b01			MOVQ 0(CX), AX									
  taskservice.go:731	0xe335d1		e8ca6a63ff		CALL runtime.convT64(SB)							
  taskservice.go:731	0xe335d6		488d0d83f52000		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:731	0xe335dd		48898c24b0010000	MOVQ CX, 0x1b0(SP)								
  taskservice.go:731	0xe335e5		48898424b8010000	MOVQ AX, 0x1b8(SP)								
  print.go:233		0xe335ed		488b1d8cea6d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe335f4		488d05e5840302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe335fb		488d0d0f7e3600		LEAQ go:string.*+208649(SB), CX							
  print.go:233		0xe33602		bf2f000000		MOVL $__major_os_version__+41(SB), DI						
  print.go:233		0xe33607		488db424b0010000	LEAQ 0x1b0(SP), SI								
  print.go:233		0xe3360f		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe33615		4d89c1			MOVQ R8, R9									
  print.go:233		0xe33618		e803bc6eff		CALL fmt.Fprintf(SB)								
  taskservice.go:732	0xe3361d		488b842410030000	MOVQ 0x310(SP), AX								
  taskservice.go:732	0xe33625		488b9c2418030000	MOVQ 0x318(SP), BX								
  taskservice.go:732	0xe3362d		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:732	0xe33635		31ff			XORL DI, DI									
  taskservice.go:732	0xe33637		e864040000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).finishTaskExecution(SB)		
  taskservice.go:733	0xe3363c		c644246f00		MOVB $0x0, 0x6f(SP)								
  taskservice.go:733	0xe33641		488b9424f8020000	MOVQ 0x2f8(SP), DX								
  taskservice.go:733	0xe33649		488b0a			MOVQ 0(DX), CX									
  taskservice.go:733	0xe3364c		ffd1			CALL CX										
  taskservice.go:733	0xe3364e		4881c400030000		ADDQ $__file_alignment__+256(SB), SP						
  taskservice.go:733	0xe33655		5d			POPQ BP										
  taskservice.go:733	0xe33656		c3			RET										
  taskservice.go:713	0xe33657		440f11bc24c0010000	MOVUPS X15, 0x1c0(SP)								
  taskservice.go:713	0xe33660		440f11bc24d0010000	MOVUPS X15, 0x1d0(SP)								
  taskservice.go:713	0xe33669		488b8c2418030000	MOVQ 0x318(SP), CX								
  taskservice.go:713	0xe33671		488b01			MOVQ 0(CX), AX									
  taskservice.go:713	0xe33674		e8276a63ff		CALL runtime.convT64(SB)							
  taskservice.go:713	0xe33679		488d0de0f42000		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:713	0xe33680		48898c24c0010000	MOVQ CX, 0x1c0(SP)								
  taskservice.go:713	0xe33688		48898424c8010000	MOVQ AX, 0x1c8(SP)								
  taskservice.go:712	0xe33690		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  taskservice.go:712	0xe33698		4885c9			TESTQ CX, CX									
  taskservice.go:713	0xe3369b		7406			JE 0xe336a3									
  taskservice.go:713	0xe3369d		488b5908		MOVQ 0x8(CX), BX								
  taskservice.go:713	0xe336a1		eb03			JMP 0xe336a6									
  taskservice.go:713	0xe336a3		4889cb			MOVQ CX, BX									
  taskservice.go:713	0xe336a6		48899c24d0010000	MOVQ BX, 0x1d0(SP)								
  taskservice.go:713	0xe336ae		488b9424f0000000	MOVQ 0xf0(SP), DX								
  taskservice.go:713	0xe336b6		48899424d8010000	MOVQ DX, 0x1d8(SP)								
  print.go:233		0xe336be		488b1dbbe96d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe336c5		488d0514840302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe336cc		488d0d09423600		LEAQ go:string.*+193492(SB), CX							
  print.go:233		0xe336d3		bf2a000000		MOVL $__major_os_version__+36(SB), DI						
  print.go:233		0xe336d8		488db424c0010000	LEAQ 0x1c0(SP), SI								
  print.go:233		0xe336e0		41b802000000		MOVL $__minor_os_version__+1(SB), R8						
  print.go:233		0xe336e6		4d89c1			MOVQ R8, R9									
  print.go:233		0xe336e9		e832bb6eff		CALL fmt.Fprintf(SB)								
  taskservice.go:714	0xe336ee		488b842410030000	MOVQ 0x310(SP), AX								
  taskservice.go:714	0xe336f6		488b9c2418030000	MOVQ 0x318(SP), BX								
  taskservice.go:714	0xe336fe		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:714	0xe33706		31ff			XORL DI, DI									
  taskservice.go:714	0xe33708		e893030000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).finishTaskExecution(SB)		
  taskservice.go:715	0xe3370d		c644246f00		MOVB $0x0, 0x6f(SP)								
  taskservice.go:715	0xe33712		488b9424f8020000	MOVQ 0x2f8(SP), DX								
  taskservice.go:715	0xe3371a		4c8b12			MOVQ 0(DX), R10									
  taskservice.go:715	0xe3371d		0f1f00			NOPL 0(AX)									
  taskservice.go:715	0xe33720		41ffd2			CALL R10									
  taskservice.go:715	0xe33723		4881c400030000		ADDQ $__file_alignment__+256(SB), SP						
  taskservice.go:715	0xe3372a		5d			POPQ BP										
  taskservice.go:715	0xe3372b		c3			RET										
  taskservice.go:693	0xe3372c		440f11bc2490020000	MOVUPS X15, 0x290(SP)								
  taskservice.go:693	0xe33735		488b8c2418030000	MOVQ 0x318(SP), CX								
  taskservice.go:693	0xe3373d		488b01			MOVQ 0(CX), AX									
  taskservice.go:693	0xe33740		e85b6963ff		CALL runtime.convT64(SB)							
  taskservice.go:693	0xe33745		488d0d14f42000		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:693	0xe3374c		48898c2490020000	MOVQ CX, 0x290(SP)								
  taskservice.go:693	0xe33754		4889842498020000	MOVQ AX, 0x298(SP)								
  print.go:233		0xe3375c		488b1d1de96d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe33763		488d0576830302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe3376a		488d0d994e3700		LEAQ go:string.*+262402(SB), CX							
  print.go:233		0xe33771		bf4e000000		MOVL $.file+1(SB), DI								
  print.go:233		0xe33776		488db42490020000	LEAQ 0x290(SP), SI								
  print.go:233		0xe3377e		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe33784		4d89c1			MOVQ R8, R9									
  print.go:233		0xe33787		e894ba6eff		CALL fmt.Fprintf(SB)								
  taskservice.go:694	0xe3378c		488b842410030000	MOVQ 0x310(SP), AX								
  taskservice.go:694	0xe33794		488b9c2418030000	MOVQ 0x318(SP), BX								
  taskservice.go:694	0xe3379c		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:694	0xe337a4		31ff			XORL DI, DI									
  taskservice.go:694	0xe337a6		e8f5020000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).finishTaskExecution(SB)		
  taskservice.go:695	0xe337ab		c644246f00		MOVB $0x0, 0x6f(SP)								
  taskservice.go:695	0xe337b0		488b9424f8020000	MOVQ 0x2f8(SP), DX								
  taskservice.go:695	0xe337b8		488b0a			MOVQ 0(DX), CX									
  taskservice.go:695	0xe337bb		ffd1			CALL CX										
  taskservice.go:695	0xe337bd		4881c400030000		ADDQ $__file_alignment__+256(SB), SP						
  taskservice.go:695	0xe337c4		5d			POPQ BP										
  taskservice.go:695	0xe337c5		c3			RET										
  taskservice.go:662	0xe337c6		440f11bc2458010000	MOVUPS X15, 0x158(SP)								
  taskservice.go:662	0xe337cf		440f11bc2468010000	MOVUPS X15, 0x168(SP)								
  taskservice.go:662	0xe337d8		488b01			MOVQ 0(CX), AX									
  taskservice.go:662	0xe337db		488b5908		MOVQ 0x8(CX), BX								
  taskservice.go:662	0xe337df		90			NOPL										
  taskservice.go:662	0xe337e0		e83b6963ff		CALL runtime.convTstring(SB)							
  taskservice.go:662	0xe337e5		488d0d34f12000		LEAQ runtime.types+383264(SB), CX						
  taskservice.go:662	0xe337ec		48898c2458010000	MOVQ CX, 0x158(SP)								
  taskservice.go:662	0xe337f4		4889842460010000	MOVQ AX, 0x160(SP)								
  taskservice.go:662	0xe337fc		488b8c2418030000	MOVQ 0x318(SP), CX								
  taskservice.go:662	0xe33804		488b01			MOVQ 0(CX), AX									
  taskservice.go:662	0xe33807		e8946863ff		CALL runtime.convT64(SB)							
  taskservice.go:662	0xe3380c		488d0d4df32000		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:662	0xe33813		48898c2468010000	MOVQ CX, 0x168(SP)								
  taskservice.go:662	0xe3381b		4889842470010000	MOVQ AX, 0x170(SP)								
  print.go:233		0xe33823		488b1d56e86d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe3382a		488d05af820302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe33831		488d0d14a63600		LEAQ go:string.*+219460(SB), CX							
  print.go:233		0xe33838		bf33000000		MOVL $__major_os_version__+45(SB), DI						
  print.go:233		0xe3383d		488db42458010000	LEAQ 0x158(SP), SI								
  print.go:233		0xe33845		41b802000000		MOVL $__minor_os_version__+1(SB), R8						
  print.go:233		0xe3384b		4d89c1			MOVQ R8, R9									
  print.go:233		0xe3384e		e8cdb96eff		CALL fmt.Fprintf(SB)								
  taskservice.go:663	0xe33853		488b842410030000	MOVQ 0x310(SP), AX								
  taskservice.go:663	0xe3385b		488b9c2418030000	MOVQ 0x318(SP), BX								
  taskservice.go:663	0xe33863		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:663	0xe3386b		31ff			XORL DI, DI									
  taskservice.go:663	0xe3386d		e82e020000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).finishTaskExecution(SB)		
  taskservice.go:664	0xe33872		c644246f00		MOVB $0x0, 0x6f(SP)								
  taskservice.go:664	0xe33877		488b9424f8020000	MOVQ 0x2f8(SP), DX								
  taskservice.go:664	0xe3387f		488b0a			MOVQ 0(DX), CX									
  taskservice.go:664	0xe33882		ffd1			CALL CX										
  taskservice.go:664	0xe33884		4881c400030000		ADDQ $__file_alignment__+256(SB), SP						
  taskservice.go:664	0xe3388b		5d			POPQ BP										
  taskservice.go:664	0xe3388c		c3			RET										
  taskservice.go:749	0xe3388d		440f11bc24a0010000	MOVUPS X15, 0x1a0(SP)								
  taskservice.go:749	0xe33896		488b01			MOVQ 0(CX), AX									
  taskservice.go:749	0xe33899		e8026863ff		CALL runtime.convT64(SB)							
  taskservice.go:749	0xe3389e		488d0dbbf22000		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:749	0xe338a5		48898c24a0010000	MOVQ CX, 0x1a0(SP)								
  taskservice.go:749	0xe338ad		48898424a8010000	MOVQ AX, 0x1a8(SP)								
  print.go:233		0xe338b5		488b1dc4e76d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe338bc		488d051d820302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe338c3		488d0d9ea03500		LEAQ go:string.*+152672(SB), CX							
  print.go:233		0xe338ca		bf20000000		MOVL $__major_os_version__+26(SB), DI						
  print.go:233		0xe338cf		488db424a0010000	LEAQ 0x1a0(SP), SI								
  print.go:233		0xe338d7		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe338dd		4d89c1			MOVQ R8, R9									
  print.go:233		0xe338e0		e83bb96eff		CALL fmt.Fprintf(SB)								
  taskservice.go:750	0xe338e5		488b842410030000	MOVQ 0x310(SP), AX								
  taskservice.go:750	0xe338ed		488b9c2418030000	MOVQ 0x318(SP), BX								
  taskservice.go:750	0xe338f5		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:750	0xe338fd		bf01000000		MOVL $__minor_os_version__(SB), DI						
  taskservice.go:750	0xe33902		e899010000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).finishTaskExecution(SB)		
  taskservice.go:751	0xe33907		c644246f00		MOVB $0x0, 0x6f(SP)								
  taskservice.go:751	0xe3390c		488b9424f8020000	MOVQ 0x2f8(SP), DX								
  taskservice.go:751	0xe33914		488b0a			MOVQ 0(DX), CX									
  taskservice.go:751	0xe33917		ffd1			CALL CX										
  taskservice.go:751	0xe33919		4881c400030000		ADDQ $__file_alignment__+256(SB), SP						
  taskservice.go:751	0xe33920		5d			POPQ BP										
  taskservice.go:751	0xe33921		c3			RET										
  diaodu.go:338		0xe33922		48ffc0			INCQ AX										
  diaodu.go:338		0xe33925		4839f0			CMPQ AX, SI									
  diaodu.go:338		0xe33928		7d6d			JGE 0xe33997									
  diaodu.go:338		0xe3392a		4c8b0cc7		MOVQ 0(DI)(AX*8), R9								
  diaodu.go:339		0xe3392e		498b4908		MOVQ 0x8(R9), CX								
  diaodu.go:339		0xe33932		4939c8			CMPQ R8, CX									
  diaodu.go:339		0xe33935		75eb			JNE 0xe33922									
  diaodu.go:338		0xe33937		48898424c0000000	MOVQ AX, 0xc0(SP)								
  diaodu.go:338		0xe3393f		4c898c24c8000000	MOVQ R9, 0xc8(SP)								
  diaodu.go:339		0xe33947		498b01			MOVQ 0(R9), AX									
  diaodu.go:339		0xe3394a		488b9c24e0000000	MOVQ 0xe0(SP), BX								
  diaodu.go:339		0xe33952		e809f55cff		CALL runtime.memequal(SB)							
  diaodu.go:339		0xe33957		84c0			TESTL AL, AL									
  diaodu.go:339		0xe33959		752a			JNE 0xe33985									
  diaodu.go:338		0xe3395b		488b8424c0000000	MOVQ 0xc0(SP), AX								
  taskservice.go:750	0xe33963		488b942410030000	MOVQ 0x310(SP), DX								
  diaodu.go:338		0xe3396b		488bb42480000000	MOVQ 0x80(SP), SI								
  diaodu.go:338		0xe33973		488bbc24d8000000	MOVQ 0xd8(SP), DI								
  diaodu.go:339		0xe3397b		4c8b842488000000	MOVQ 0x88(SP), R8								
  diaodu.go:339		0xe33983		eb9d			JMP 0xe33922									
  taskservice.go:750	0xe33985		488b942410030000	MOVQ 0x310(SP), DX								
  taskservice.go:737	0xe3398d		488b8424c8000000	MOVQ 0xc8(SP), AX								
  taskservice.go:737	0xe33995		eb02			JMP 0xe33999									
  taskservice.go:737	0xe33997		31c0			XORL AX, AX									
  taskservice.go:737	0xe33999		4885c0			TESTQ AX, AX									
  taskservice.go:737	0xe3399c		7431			JE 0xe339cf									
  taskservice.go:738	0xe3399e		f20f104010		MOVSD_XMM 0x10(AX), X0								
  taskservice.go:738	0xe339a3		488b8c2420030000	MOVQ 0x320(SP), CX								
  taskservice.go:738	0xe339ab		f20f114128		MOVSD_XMM X0, 0x28(CX)								
  taskservice.go:739	0xe339b0		f20f104018		MOVSD_XMM 0x18(AX), X0								
  taskservice.go:739	0xe339b5		f20f114130		MOVSD_XMM X0, 0x30(CX)								
  taskservice.go:749	0xe339ba		488b8c2418030000	MOVQ 0x318(SP), CX								
  taskservice.go:750	0xe339c2		488b9c2420030000	MOVQ 0x320(SP), BX								
  taskservice.go:739	0xe339ca		e9befeffff		JMP 0xe3388d									
  taskservice.go:741	0xe339cf		488b8c2418030000	MOVQ 0x318(SP), CX								
  taskservice.go:741	0xe339d7		f20f104130		MOVSD_XMM 0x30(CX), X0								
  taskservice.go:741	0xe339dc		488b9c2420030000	MOVQ 0x320(SP), BX								
  taskservice.go:741	0xe339e4		f20f114328		MOVSD_XMM X0, 0x28(BX)								
  taskservice.go:742	0xe339e9		f20f104138		MOVSD_XMM 0x38(CX), X0								
  taskservice.go:742	0xe339ee		f20f114330		MOVSD_XMM X0, 0x30(BX)								
  taskservice.go:742	0xe339f3		e995feffff		JMP 0xe3388d									
  taskservice.go:742	0xe339f8		e8836160ff		CALL runtime.deferreturn(SB)							
  taskservice.go:742	0xe339fd		4881c400030000		ADDQ $__file_alignment__+256(SB), SP						
  taskservice.go:742	0xe33a04		5d			POPQ BP										
  taskservice.go:742	0xe33a05		c3			RET										
  taskservice.go:654	0xe33a06		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:654	0xe33a0b		48895c2410		MOVQ BX, 0x10(SP)								
  taskservice.go:654	0xe33a10		48894c2418		MOVQ CX, 0x18(SP)								
  taskservice.go:654	0xe33a15		f20f11442420		MOVSD_XMM X0, 0x20(SP)								
  taskservice.go:654	0xe33a1b		48897c2428		MOVQ DI, 0x28(SP)								
  taskservice.go:654	0xe33a20		e8bb2a64ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:654	0xe33a25		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:654	0xe33a2a		488b5c2410		MOVQ 0x10(SP), BX								
  taskservice.go:654	0xe33a2f		488b4c2418		MOVQ 0x18(SP), CX								
  taskservice.go:654	0xe33a34		f20f10442420		MOVSD_XMM 0x20(SP), X0								
  taskservice.go:654	0xe33a3a		488b7c2428		MOVQ 0x28(SP), DI								
  taskservice.go:654	0xe33a3f		90			NOPL										
  taskservice.go:654	0xe33a40		e9bbf1ffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).executeTask(SB)			
  :-1			0xe33a45		cc			INT $__subsystem__(SB)								
  :-1			0xe33a46		cc			INT $__subsystem__(SB)								
  :-1			0xe33a47		cc			INT $__subsystem__(SB)								
  :-1			0xe33a48		cc			INT $__subsystem__(SB)								
  :-1			0xe33a49		cc			INT $__subsystem__(SB)								
  :-1			0xe33a4a		cc			INT $__subsystem__(SB)								
  :-1			0xe33a4b		cc			INT $__subsystem__(SB)								
  :-1			0xe33a4c		cc			INT $__subsystem__(SB)								
  :-1			0xe33a4d		cc			INT $__subsystem__(SB)								
  :-1			0xe33a4e		cc			INT $__subsystem__(SB)								
  :-1			0xe33a4f		cc			INT $__subsystem__(SB)								
  :-1			0xe33a50		cc			INT $__subsystem__(SB)								
  :-1			0xe33a51		cc			INT $__subsystem__(SB)								
  :-1			0xe33a52		cc			INT $__subsystem__(SB)								
  :-1			0xe33a53		cc			INT $__subsystem__(SB)								
  :-1			0xe33a54		cc			INT $__subsystem__(SB)								
  :-1			0xe33a55		cc			INT $__subsystem__(SB)								
  :-1			0xe33a56		cc			INT $__subsystem__(SB)								
  :-1			0xe33a57		cc			INT $__subsystem__(SB)								
  :-1			0xe33a58		cc			INT $__subsystem__(SB)								
  :-1			0xe33a59		cc			INT $__subsystem__(SB)								
  :-1			0xe33a5a		cc			INT $__subsystem__(SB)								
  :-1			0xe33a5b		cc			INT $__subsystem__(SB)								
  :-1			0xe33a5c		cc			INT $__subsystem__(SB)								
  :-1			0xe33a5d		cc			INT $__subsystem__(SB)								
  :-1			0xe33a5e		cc			INT $__subsystem__(SB)								
  :-1			0xe33a5f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).executeTask.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:655	0xe33a60		493b6610		CMPQ SP, 0x10(R14)								
  taskservice.go:655	0xe33a64		762b			JBE 0xe33a91									
  taskservice.go:655	0xe33a66		55			PUSHQ BP									
  taskservice.go:655	0xe33a67		4889e5			MOVQ SP, BP									
  taskservice.go:655	0xe33a6a		4883ec18		SUBQ $__major_os_version__+18(SB), SP						
  taskservice.go:655	0xe33a6e		488b7208		MOVQ 0x8(DX), SI								
  taskservice.go:656	0xe33a72		488b4650		MOVQ 0x50(SI), AX								
  taskservice.go:656	0xe33a76		4885c0			TESTQ AX, AX									
  taskservice.go:656	0xe33a79		7410			JE 0xe33a8b									
  taskservice.go:655	0xe33a7b		488b5210		MOVQ 0x10(DX), DX								
  taskservice.go:657	0xe33a7f		488b4a08		MOVQ 0x8(DX), CX								
  taskservice.go:657	0xe33a83		488b1a			MOVQ 0(DX), BX									
  taskservice.go:657	0xe33a86		e875490000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).UnregisterVehicle(SB)	
  taskservice.go:659	0xe33a8b		4883c418		ADDQ $__major_os_version__+18(SB), SP						
  taskservice.go:659	0xe33a8f		5d			POPQ BP										
  taskservice.go:659	0xe33a90		c3			RET										
  taskservice.go:655	0xe33a91		e8ca2964ff		CALL runtime.morestack.abi0(SB)							
  taskservice.go:655	0xe33a96		ebc8			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).executeTask.func1(SB)		
  :-1			0xe33a98		cc			INT $__subsystem__(SB)								
  :-1			0xe33a99		cc			INT $__subsystem__(SB)								
  :-1			0xe33a9a		cc			INT $__subsystem__(SB)								
  :-1			0xe33a9b		cc			INT $__subsystem__(SB)								
  :-1			0xe33a9c		cc			INT $__subsystem__(SB)								
  :-1			0xe33a9d		cc			INT $__subsystem__(SB)								
  :-1			0xe33a9e		cc			INT $__subsystem__(SB)								
  :-1			0xe33a9f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).finishTaskExecution(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:753	0xe33aa0		493b6610		CMPQ SP, 0x10(R14)							
  taskservice.go:753	0xe33aa4		0f8642020000		JBE 0xe33cec								
  taskservice.go:753	0xe33aaa		55			PUSHQ BP								
  taskservice.go:753	0xe33aab		4889e5			MOVQ SP, BP								
  taskservice.go:753	0xe33aae		4883ec70		SUBQ $.file+35(SB), SP							
  taskservice.go:756	0xe33ab2		4889842480000000	MOVQ AX, 0x80(SP)							
  taskservice.go:756	0xe33aba		48899c2488000000	MOVQ BX, 0x88(SP)							
  taskservice.go:756	0xe33ac2		48898c2490000000	MOVQ CX, 0x90(SP)							
  taskservice.go:756	0xe33aca		4088bc2498000000	MOVB DI, 0x98(SP)							
  taskservice.go:754	0xe33ad2		488d0507c83100		LEAQ runtime.types+1487584(SB), AX					
  taskservice.go:754	0xe33ad9		e8c2dc5dff		CALL runtime.newobject(SB)						
  taskservice.go:754	0xe33ade		4889442468		MOVQ AX, 0x68(SP)							
  taskservice.go:754	0xe33ae3		e8b8a567ff		CALL time.Now(SB)							
  taskservice.go:754	0xe33ae8		488b542468		MOVQ 0x68(SP), DX							
  taskservice.go:754	0xe33aed		488902			MOVQ AX, 0(DX)								
  taskservice.go:754	0xe33af0		48895a08		MOVQ BX, 0x8(DX)							
  taskservice.go:754	0xe33af4		833d55a0720200		CMPL runtime.writeBarrier(SB), $0x0					
  taskservice.go:754	0xe33afb		7413			JE 0xe33b10								
  taskservice.go:754	0xe33afd		0f1f00			NOPL 0(AX)								
  taskservice.go:754	0xe33b00		e83b4964ff		CALL runtime.gcWriteBarrier2(SB)					
  taskservice.go:754	0xe33b05		49890b			MOVQ CX, 0(R11)								
  taskservice.go:754	0xe33b08		488b5a10		MOVQ 0x10(DX), BX							
  taskservice.go:754	0xe33b0c		49895b08		MOVQ BX, 0x8(R11)							
  taskservice.go:754	0xe33b10		48894a10		MOVQ CX, 0x10(DX)							
  taskservice.go:756	0xe33b14		0fb68c2498000000	MOVZX 0x98(SP), CX							
  taskservice.go:756	0xe33b1c		0f1f4000		NOPL 0(AX)								
  taskservice.go:756	0xe33b20		84c9			TESTL CL, CL								
  taskservice.go:756	0xe33b22		0f8484000000		JE 0xe33bac								
  taskservice.go:757	0xe33b28		488b8c2488000000	MOVQ 0x88(SP), CX							
  taskservice.go:757	0xe33b30		48c7414004000000	MOVQ $__subsystem__+1(SB), 0x40(CX)					
  taskservice.go:758	0xe33b38		833d11a0720200		CMPL runtime.writeBarrier(SB), $0x0					
  taskservice.go:758	0xe33b3f		90			NOPL									
  taskservice.go:758	0xe33b40		7410			JE 0xe33b52								
  taskservice.go:758	0xe33b42		e8f94864ff		CALL runtime.gcWriteBarrier2(SB)					
  taskservice.go:758	0xe33b47		498913			MOVQ DX, 0(R11)								
  taskservice.go:758	0xe33b4a		488b5978		MOVQ 0x78(CX), BX							
  taskservice.go:758	0xe33b4e		49895b08		MOVQ BX, 0x8(R11)							
  taskservice.go:758	0xe33b52		48895178		MOVQ DX, 0x78(CX)							
  taskservice.go:760	0xe33b56		440f117c2458		MOVUPS X15, 0x58(SP)							
  taskservice.go:760	0xe33b5c		488b01			MOVQ 0(CX), AX								
  taskservice.go:760	0xe33b5f		90			NOPL									
  taskservice.go:760	0xe33b60		e83b6563ff		CALL runtime.convT64(SB)						
  taskservice.go:760	0xe33b65		488d0df4ef2000		LEAQ runtime.types+383840(SB), CX					
  taskservice.go:760	0xe33b6c		48894c2458		MOVQ CX, 0x58(SP)							
  taskservice.go:760	0xe33b71		4889442460		MOVQ AX, 0x60(SP)							
  print.go:233		0xe33b76		488b1d03e56d02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe33b7d		488d055c7f0302		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe33b84		bf14000000		MOVL $__major_os_version__+14(SB), DI					
  print.go:233		0xe33b89		488d742458		LEAQ 0x58(SP), SI							
  print.go:233		0xe33b8e		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe33b94		4d89c1			MOVQ R8, R9								
  print.go:233		0xe33b97		488d0d80c53400		LEAQ go:string.*+97302(SB), CX						
  print.go:233		0xe33b9e		6690			NOPW									
  print.go:233		0xe33ba0		e87bb66eff		CALL fmt.Fprintf(SB)							
  print.go:233		0xe33ba5		b804000000		MOVL $__subsystem__+1(SB), AX						
  taskservice.go:760	0xe33baa		eb7e			JMP 0xe33c2a								
  taskservice.go:762	0xe33bac		488b8c2488000000	MOVQ 0x88(SP), CX							
  taskservice.go:762	0xe33bb4		48c7414005000000	MOVQ $__subsystem__+2(SB), 0x40(CX)					
  taskservice.go:763	0xe33bbc		833d8d9f720200		CMPL runtime.writeBarrier(SB), $0x0					
  taskservice.go:763	0xe33bc3		7410			JE 0xe33bd5								
  taskservice.go:763	0xe33bc5		e8764864ff		CALL runtime.gcWriteBarrier2(SB)					
  taskservice.go:763	0xe33bca		498913			MOVQ DX, 0(R11)								
  taskservice.go:763	0xe33bcd		488b5978		MOVQ 0x78(CX), BX							
  taskservice.go:763	0xe33bd1		49895b08		MOVQ BX, 0x8(R11)							
  taskservice.go:763	0xe33bd5		48895178		MOVQ DX, 0x78(CX)							
  taskservice.go:765	0xe33bd9		440f117c2448		MOVUPS X15, 0x48(SP)							
  taskservice.go:765	0xe33bdf		488b01			MOVQ 0(CX), AX								
  taskservice.go:765	0xe33be2		e8b96463ff		CALL runtime.convT64(SB)						
  taskservice.go:765	0xe33be7		488d0d72ef2000		LEAQ runtime.types+383840(SB), CX					
  taskservice.go:765	0xe33bee		48894c2448		MOVQ CX, 0x48(SP)							
  taskservice.go:765	0xe33bf3		4889442450		MOVQ AX, 0x50(SP)							
  print.go:233		0xe33bf8		488b1d81e46d02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe33bff		488d05da7e0302		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe33c06		bf17000000		MOVL $__major_os_version__+17(SB), DI					
  print.go:233		0xe33c0b		488d742448		LEAQ 0x48(SP), SI							
  print.go:233		0xe33c10		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe33c16		4d89c1			MOVQ R8, R9								
  print.go:233		0xe33c19		488d0d17fa3400		LEAQ go:string.*+110895(SB), CX						
  print.go:233		0xe33c20		e8fbb56eff		CALL fmt.Fprintf(SB)							
  print.go:233		0xe33c25		b805000000		MOVL $__subsystem__+2(SB), AX						
  taskservice.go:767	0xe33c2a		488b542468		MOVQ 0x68(SP), DX							
  taskservice.go:767	0xe33c2f		488b0a			MOVQ 0(DX), CX								
  taskservice.go:767	0xe33c32		488b7a08		MOVQ 0x8(DX), DI							
  taskservice.go:767	0xe33c36		488b7210		MOVQ 0x10(DX), SI							
  taskservice.go:767	0xe33c3a		488b942488000000	MOVQ 0x88(SP), DX							
  taskservice.go:767	0xe33c42		4c8b02			MOVQ 0(DX), R8								
  taskservice.go:767	0xe33c45		4889c3			MOVQ AX, BX								
  taskservice.go:767	0xe33c48		4c89c0			MOVQ R8, AX								
  taskservice.go:767	0xe33c4b		e8f05db6ff		CALL CAS-Backend/biz/dao.UpdateTaskCompletion(SB)			
  taskservice.go:767	0xe33c50		84c0			TESTL AL, AL								
  taskservice.go:767	0xe33c52		7554			JNE 0xe33ca8								
  taskservice.go:768	0xe33c54		440f117c2438		MOVUPS X15, 0x38(SP)							
  taskservice.go:768	0xe33c5a		488b8c2488000000	MOVQ 0x88(SP), CX							
  taskservice.go:768	0xe33c62		488b01			MOVQ 0(CX), AX								
  taskservice.go:768	0xe33c65		e8366463ff		CALL runtime.convT64(SB)						
  taskservice.go:768	0xe33c6a		488d0defee2000		LEAQ runtime.types+383840(SB), CX					
  taskservice.go:768	0xe33c71		48894c2438		MOVQ CX, 0x38(SP)							
  taskservice.go:768	0xe33c76		4889442440		MOVQ AX, 0x40(SP)							
  print.go:233		0xe33c7b		488b1dfee36d02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe33c82		488d05577e0302		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe33c89		488d0d2ad13600		LEAQ go:string.*+231602(SB), CX						
  print.go:233		0xe33c90		bf38000000		MOVL $__major_os_version__+50(SB), DI					
  print.go:233		0xe33c95		488d742438		LEAQ 0x38(SP), SI							
  print.go:233		0xe33c9a		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe33ca0		4d89c1			MOVQ R8, R9								
  print.go:233		0xe33ca3		e878b56eff		CALL fmt.Fprintf(SB)							
  taskservice.go:771	0xe33ca8		488b942480000000	MOVQ 0x80(SP), DX							
  taskservice.go:771	0xe33cb0		488b02			MOVQ 0(DX), AX								
  taskservice.go:771	0xe33cb3		4885c0			TESTQ AX, AX								
  taskservice.go:771	0xe33cb6		751a			JNE 0xe33cd2								
  taskservice.go:774	0xe33cb8		488b842490000000	MOVQ 0x90(SP), AX							
  taskservice.go:774	0xe33cc0		48c7402000000000	MOVQ $0x0, 0x20(AX)							
  taskservice.go:775	0xe33cc8		48c7405000000000	MOVQ $0x0, 0x50(AX)							
  taskservice.go:775	0xe33cd0		eb14			JMP 0xe33ce6								
  taskservice.go:772	0xe33cd2		488b942490000000	MOVQ 0x90(SP), DX							
  taskservice.go:772	0xe33cda		488b4a08		MOVQ 0x8(DX), CX							
  taskservice.go:772	0xe33cde		488b1a			MOVQ 0(DX), BX								
  taskservice.go:772	0xe33ce1		e8ba150100		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).ClearVehicleTask(SB)	
  taskservice.go:779	0xe33ce6		4883c470		ADDQ $.file+35(SB), SP							
  taskservice.go:779	0xe33cea		5d			POPQ BP									
  taskservice.go:779	0xe33ceb		c3			RET									
  taskservice.go:753	0xe33cec		4889442408		MOVQ AX, 0x8(SP)							
  taskservice.go:753	0xe33cf1		48895c2410		MOVQ BX, 0x10(SP)							
  taskservice.go:753	0xe33cf6		48894c2418		MOVQ CX, 0x18(SP)							
  taskservice.go:753	0xe33cfb		40887c2420		MOVB DI, 0x20(SP)							
  taskservice.go:753	0xe33d00		e8db2764ff		CALL runtime.morestack_noctxt.abi0(SB)					
  taskservice.go:753	0xe33d05		488b442408		MOVQ 0x8(SP), AX							
  taskservice.go:753	0xe33d0a		488b5c2410		MOVQ 0x10(SP), BX							
  taskservice.go:753	0xe33d0f		488b4c2418		MOVQ 0x18(SP), CX							
  taskservice.go:753	0xe33d14		0fb67c2420		MOVZX 0x20(SP), DI							
  taskservice.go:753	0xe33d19		e982fdffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).finishTaskExecution(SB)	
  :-1			0xe33d1e		cc			INT $__subsystem__(SB)							
  :-1			0xe33d1f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).cancelDockNavigationForVehicle(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:782	0xe33d20		4c8d6424f0		LEAQ -0x10(SP), R12								
  taskservice.go:782	0xe33d25		4d3b6610		CMPQ R12, 0x10(R14)								
  taskservice.go:782	0xe33d29		0f8639020000		JBE 0xe33f68									
  taskservice.go:782	0xe33d2f		55			PUSHQ BP									
  taskservice.go:782	0xe33d30		4889e5			MOVQ SP, BP									
  taskservice.go:782	0xe33d33		4881ec88000000		SUBQ $.file+59(SB), SP								
  taskservice.go:782	0xe33d3a		660f1f440000		NOPW 0(AX)(AX*1)								
  taskservice.go:783	0xe33d40		4885c0			TESTQ AX, AX									
  taskservice.go:783	0xe33d43		0f8416020000		JE 0xe33f5f									
  taskservice.go:783	0xe33d49		4885db			TESTQ BX, BX									
  taskservice.go:783	0xe33d4c		0f840d020000		JE 0xe33f5f									
  taskservice.go:783	0xe33d52		488b4b08		MOVQ 0x8(BX), CX								
  taskservice.go:783	0xe33d56		4885c9			TESTQ CX, CX									
  taskservice.go:783	0xe33d59		0f8400020000		JE 0xe33f5f									
  taskservice.go:783	0xe33d5f		4889842498000000	MOVQ AX, 0x98(SP)								
  taskservice.go:783	0xe33d67		48899c24a0000000	MOVQ BX, 0xa0(SP)								
  taskservice.go:783	0xe33d6f		488b13			MOVQ 0(BX), DX									
  taskservice.go:786	0xe33d72		4889d3			MOVQ DX, BX									
  taskservice.go:786	0xe33d75		e8a62fffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).getDockCancel(SB)			
  taskservice.go:786	0xe33d7a		4885c0			TESTQ AX, AX									
  taskservice.go:786	0xe33d7d		7408			JE 0xe33d87									
  taskservice.go:787	0xe33d7f		488b08			MOVQ 0(AX), CX									
  taskservice.go:787	0xe33d82		4889c2			MOVQ AX, DX									
  taskservice.go:787	0xe33d85		ffd1			CALL CX										
  taskservice.go:789	0xe33d87		488b942498000000	MOVQ 0x98(SP), DX								
  taskservice.go:789	0xe33d8f		488d7258		LEAQ 0x58(DX), SI								
  taskservice.go:789	0xe33d93		4889742448		MOVQ SI, 0x48(SP)								
  mutex.go:85		0xe33d98		31c0			XORL AX, AX									
  mutex.go:85		0xe33d9a		41b801000000		MOVL $__minor_os_version__(SB), R8						
  mutex.go:85		0xe33da0		f0440fb14258		LOCK CMPXCHGL R8, 0x58(DX)							
  mutex.go:85		0xe33da6		410f94c0		SETE R8										
  mutex.go:85		0xe33daa		4584c0			TESTL R8, R8									
  mutex.go:85		0xe33dad		7510			JNE 0xe33dbf									
  mutex.go:92		0xe33daf		4889f0			MOVQ SI, AX									
  mutex.go:92		0xe33db2		e8693c65ff		CALL sync.(*Mutex).lockSlow(SB)							
  taskservice.go:790	0xe33db7		488b942498000000	MOVQ 0x98(SP), DX								
  taskservice.go:790	0xe33dbf		488b5a68		MOVQ 0x68(DX), BX								
  taskservice.go:790	0xe33dc3		488bb424a0000000	MOVQ 0xa0(SP), SI								
  taskservice.go:790	0xe33dcb		488b0e			MOVQ 0(SI), CX									
  taskservice.go:790	0xe33dce		488b7e08		MOVQ 0x8(SI), DI								
  taskservice.go:790	0xe33dd2		488d05e7992400		LEAQ runtime.types+624576(SB), AX						
  taskservice.go:790	0xe33dd9		e8629e63ff		CALL runtime.mapaccess2_faststr(SB)						
  taskservice.go:791	0xe33dde		90			NOPL										
  mutex.go:221		0xe33ddf		baffffffff		MOVL $-0x1, DX									
  mutex.go:221		0xe33de4		488b842498000000	MOVQ 0x98(SP), AX								
  mutex.go:221		0xe33dec		f00fc15058		LOCK XADDL DX, 0x58(AX)								
  mutex.go:221		0xe33df1		ffca			DECL DX										
  mutex.go:222		0xe33df3		85d2			TESTL DX, DX									
  mutex.go:222		0xe33df5		741d			JE 0xe33e14									
  taskservice.go:790	0xe33df7		885c243f		MOVB BL, 0x3f(SP)								
  mutex.go:225		0xe33dfb		488b442448		MOVQ 0x48(SP), AX								
  mutex.go:225		0xe33e00		89d3			MOVL DX, BX									
  mutex.go:225		0xe33e02		e8f93e65ff		CALL sync.(*Mutex).unlockSlow(SB)						
  taskservice.go:799	0xe33e07		488b842498000000	MOVQ 0x98(SP), AX								
  taskservice.go:790	0xe33e0f		0fb65c243f		MOVZX 0x3f(SP), BX								
  taskservice.go:790	0xe33e14		84db			TESTL BL, BL									
  taskservice.go:792	0xe33e16		0f8426010000		JE 0xe33f42									
  taskservice.go:792	0xe33e1c		488b9424a0000000	MOVQ 0xa0(SP), DX								
  taskservice.go:792	0xe33e24		488b5a40		MOVQ 0x40(DX), BX								
  taskservice.go:792	0xe33e28		4885db			TESTQ BX, BX									
  taskservice.go:792	0xe33e2b		0f8419010000		JE 0xe33f4a									
  taskservice.go:792	0xe33e31		488b4238		MOVQ 0x38(DX), AX								
  taskservice.go:793	0xe33e35		e8c63affff		CALL CAS-Backend/pkg/diapdu.sendCancelNavigation(SB)				
  taskservice.go:793	0xe33e3a		660f1f440000		NOPW 0(AX)(AX*1)								
  taskservice.go:793	0xe33e40		4885c0			TESTQ AX, AX									
  taskservice.go:793	0xe33e43		0f848f000000		JE 0xe33ed8									
  taskservice.go:793	0xe33e49		4889442440		MOVQ AX, 0x40(SP)								
  taskservice.go:793	0xe33e4e		48895c2450		MOVQ BX, 0x50(SP)								
  taskservice.go:794	0xe33e53		440f117c2468		MOVUPS X15, 0x68(SP)								
  taskservice.go:794	0xe33e59		440f117c2478		MOVUPS X15, 0x78(SP)								
  taskservice.go:794	0xe33e5f		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  taskservice.go:794	0xe33e67		488b01			MOVQ 0(CX), AX									
  taskservice.go:794	0xe33e6a		488b5908		MOVQ 0x8(CX), BX								
  taskservice.go:794	0xe33e6e		e8ad6263ff		CALL runtime.convTstring(SB)							
  taskservice.go:794	0xe33e73		488d0da6ea2000		LEAQ runtime.types+383264(SB), CX						
  taskservice.go:794	0xe33e7a		48894c2468		MOVQ CX, 0x68(SP)								
  taskservice.go:794	0xe33e7f		4889442470		MOVQ AX, 0x70(SP)								
  taskservice.go:793	0xe33e84		488b4c2440		MOVQ 0x40(SP), CX								
  taskservice.go:793	0xe33e89		4885c9			TESTQ CX, CX									
  taskservice.go:794	0xe33e8c		7406			JE 0xe33e94									
  taskservice.go:794	0xe33e8e		488b4108		MOVQ 0x8(CX), AX								
  taskservice.go:794	0xe33e92		eb03			JMP 0xe33e97									
  taskservice.go:794	0xe33e94		4889c8			MOVQ CX, AX									
  taskservice.go:794	0xe33e97		4889442478		MOVQ AX, 0x78(SP)								
  taskservice.go:794	0xe33e9c		488b542450		MOVQ 0x50(SP), DX								
  taskservice.go:794	0xe33ea1		4889942480000000	MOVQ DX, 0x80(SP)								
  print.go:233		0xe33ea9		488b1dd0e16d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe33eb0		488d05297c0302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe33eb7		488d0d97463600		LEAQ go:string.*+196685(SB), CX							
  print.go:233		0xe33ebe		bf2b000000		MOVL $__major_os_version__+37(SB), DI						
  print.go:233		0xe33ec3		488d742468		LEAQ 0x68(SP), SI								
  print.go:233		0xe33ec8		41b802000000		MOVL $__minor_os_version__+1(SB), R8						
  print.go:233		0xe33ece		4d89c1			MOVQ R8, R9									
  print.go:233		0xe33ed1		e84ab36eff		CALL fmt.Fprintf(SB)								
  taskservice.go:794	0xe33ed6		eb58			JMP 0xe33f30									
  taskservice.go:796	0xe33ed8		440f117c2458		MOVUPS X15, 0x58(SP)								
  taskservice.go:796	0xe33ede		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  taskservice.go:796	0xe33ee6		488b01			MOVQ 0(CX), AX									
  taskservice.go:796	0xe33ee9		488b5908		MOVQ 0x8(CX), BX								
  taskservice.go:796	0xe33eed		e82e6263ff		CALL runtime.convTstring(SB)							
  taskservice.go:796	0xe33ef2		488d0d27ea2000		LEAQ runtime.types+383264(SB), CX						
  taskservice.go:796	0xe33ef9		48894c2458		MOVQ CX, 0x58(SP)								
  taskservice.go:796	0xe33efe		4889442460		MOVQ AX, 0x60(SP)								
  print.go:233		0xe33f03		488b1d76e16d02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe33f0a		488d05cf7b0302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe33f11		488d0d679f3600		LEAQ go:string.*+219511(SB), CX							
  print.go:233		0xe33f18		bf33000000		MOVL $__major_os_version__+45(SB), DI						
  print.go:233		0xe33f1d		488d742458		LEAQ 0x58(SP), SI								
  print.go:233		0xe33f22		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe33f28		4d89c1			MOVQ R8, R9									
  print.go:233		0xe33f2b		e8f0b26eff		CALL fmt.Fprintf(SB)								
  taskservice.go:799	0xe33f30		488b842498000000	MOVQ 0x98(SP), AX								
  taskservice.go:799	0xe33f38		488b9424a0000000	MOVQ 0xa0(SP), DX								
  taskservice.go:799	0xe33f40		eb08			JMP 0xe33f4a									
  taskservice.go:799	0xe33f42		488b9424a0000000	MOVQ 0xa0(SP), DX								
  taskservice.go:799	0xe33f4a		488b1a			MOVQ 0(DX), BX									
  taskservice.go:799	0xe33f4d		488b4a08		MOVQ 0x8(DX), CX								
  taskservice.go:799	0xe33f51		e86a29ffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle(SB)		
  taskservice.go:800	0xe33f56		4881c488000000		ADDQ $.file+59(SB), SP								
  taskservice.go:800	0xe33f5d		5d			POPQ BP										
  taskservice.go:800	0xe33f5e		c3			RET										
  taskservice.go:784	0xe33f5f		4881c488000000		ADDQ $.file+59(SB), SP								
  taskservice.go:784	0xe33f66		5d			POPQ BP										
  taskservice.go:784	0xe33f67		c3			RET										
  taskservice.go:782	0xe33f68		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:782	0xe33f6d		48895c2410		MOVQ BX, 0x10(SP)								
  taskservice.go:782	0xe33f72		e8692564ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:782	0xe33f77		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:782	0xe33f7c		488b5c2410		MOVQ 0x10(SP), BX								
  taskservice.go:782	0xe33f81		e99afdffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).cancelDockNavigationForVehicle(SB)	
  :-1			0xe33f86		cc			INT $__subsystem__(SB)								
  :-1			0xe33f87		cc			INT $__subsystem__(SB)								
  :-1			0xe33f88		cc			INT $__subsystem__(SB)								
  :-1			0xe33f89		cc			INT $__subsystem__(SB)								
  :-1			0xe33f8a		cc			INT $__subsystem__(SB)								
  :-1			0xe33f8b		cc			INT $__subsystem__(SB)								
  :-1			0xe33f8c		cc			INT $__subsystem__(SB)								
  :-1			0xe33f8d		cc			INT $__subsystem__(SB)								
  :-1			0xe33f8e		cc			INT $__subsystem__(SB)								
  :-1			0xe33f8f		cc			INT $__subsystem__(SB)								
  :-1			0xe33f90		cc			INT $__subsystem__(SB)								
  :-1			0xe33f91		cc			INT $__subsystem__(SB)								
  :-1			0xe33f92		cc			INT $__subsystem__(SB)								
  :-1			0xe33f93		cc			INT $__subsystem__(SB)								
  :-1			0xe33f94		cc			INT $__subsystem__(SB)								
  :-1			0xe33f95		cc			INT $__subsystem__(SB)								
  :-1			0xe33f96		cc			INT $__subsystem__(SB)								
  :-1			0xe33f97		cc			INT $__subsystem__(SB)								
  :-1			0xe33f98		cc			INT $__subsystem__(SB)								
  :-1			0xe33f99		cc			INT $__subsystem__(SB)								
  :-1			0xe33f9a		cc			INT $__subsystem__(SB)								
  :-1			0xe33f9b		cc			INT $__subsystem__(SB)								
  :-1			0xe33f9c		cc			INT $__subsystem__(SB)								
  :-1			0xe33f9d		cc			INT $__subsystem__(SB)								
  :-1			0xe33f9e		cc			INT $__subsystem__(SB)								
  :-1			0xe33f9f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).moveForkliftToNearestPPDock(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:803	0xe33fa0		493b6610		CMPQ SP, 0x10(R14)										
  taskservice.go:803	0xe33fa4		0f866b010000		JBE 0xe34115											
  taskservice.go:803	0xe33faa		55			PUSHQ BP											
  taskservice.go:803	0xe33fab		4889e5			MOVQ SP, BP											
  taskservice.go:803	0xe33fae		4883ec50		SUBQ $.file+3(SB), SP										
  taskservice.go:803	0xe33fb2		48895c2468		MOVQ BX, 0x68(SP)										
  taskservice.go:803	0xe33fb7		660f1f840000000000	NOPW 0(AX)(AX*1)										
  taskservice.go:804	0xe33fc0		4885c0			TESTQ AX, AX											
  taskservice.go:804	0xe33fc3		0f8446010000		JE 0xe3410f											
  taskservice.go:804	0xe33fc9		4885c9			TESTQ CX, CX											
  taskservice.go:804	0xe33fcc		0f843d010000		JE 0xe3410f											
  taskservice.go:804	0xe33fd2		4883784000		CMPQ 0x40(AX), $0x0										
  taskservice.go:804	0xe33fd7		0f8432010000		JE 0xe3410f											
  taskservice.go:807	0xe33fdd		488b10			MOVQ 0(AX), DX											
  taskservice.go:807	0xe33fe0		4885d2			TESTQ DX, DX											
  taskservice.go:807	0xe33fe3		0f8420010000		JE 0xe34109											
  taskservice.go:804	0xe33fe9		4889442460		MOVQ AX, 0x60(SP)										
  taskservice.go:804	0xe33fee		48894c2470		MOVQ CX, 0x70(SP)										
  taskservice.go:804	0xe33ff3		48895c2468		MOVQ BX, 0x68(SP)										
  taskservice.go:810	0xe33ff8		4889d0			MOVQ DX, AX											
  taskservice.go:810	0xe33ffb		0f1f440000		NOPL 0(AX)(AX*1)										
  taskservice.go:810	0xe34000		e87bfd0000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift(SB)					
  taskservice.go:810	0xe34005		84db			TESTL BL, BL											
  taskservice.go:811	0xe34007		0f84f6000000		JE 0xe34103											
  taskservice.go:811	0xe3400d		4885c0			TESTQ AX, AX											
  taskservice.go:811	0xe34010		0f84ed000000		JE 0xe34103											
  taskservice.go:814	0xe34016		4883785000		CMPQ 0x50(AX), $0x0										
  taskservice.go:814	0xe3401b		0f1f440000		NOPL 0(AX)(AX*1)										
  taskservice.go:814	0xe34020		0f85d7000000		JNE 0xe340fd											
  taskservice.go:817	0xe34026		4883784000		CMPQ 0x40(AX), $0x0										
  taskservice.go:817	0xe3402b		7477			JE 0xe340a4											
  taskservice.go:810	0xe3402d		4889442438		MOVQ AX, 0x38(SP)										
  taskservice.go:821	0xe34032		488b442460		MOVQ 0x60(SP), AX										
  taskservice.go:821	0xe34037		488b5c2468		MOVQ 0x68(SP), BX										
  taskservice.go:821	0xe3403c		488b4c2470		MOVQ 0x70(SP), CX										
  taskservice.go:821	0xe34041		e8ba23ffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).isVehicleNavigatingToDock(SB)			
  taskservice.go:821	0xe34046		84c0			TESTL AL, AL											
  taskservice.go:821	0xe34048		7554			JNE 0xe3409e											
  taskservice.go:824	0xe3404a		488d05af9f2900		LEAQ runtime.types+954368(SB), AX								
  taskservice.go:824	0xe34051		e84ad75dff		CALL runtime.newobject(SB)									
  taskservice.go:824	0xe34056		488d0de3000000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).moveForkliftToNearestPPDock.gowrap1(SB), CX	
  taskservice.go:824	0xe3405d		488908			MOVQ CX, 0(AX)											
  taskservice.go:824	0xe34060		833de99a720200		CMPL runtime.writeBarrier(SB), $0x0								
  taskservice.go:824	0xe34067		750c			JNE 0xe34075											
  taskservice.go:824	0xe34069		488b4c2460		MOVQ 0x60(SP), CX										
  taskservice.go:824	0xe3406e		488b542438		MOVQ 0x38(SP), DX										
  taskservice.go:824	0xe34073		eb16			JMP 0xe3408b											
  taskservice.go:824	0xe34075		e8c64364ff		CALL runtime.gcWriteBarrier2(SB)								
  taskservice.go:824	0xe3407a		488b4c2460		MOVQ 0x60(SP), CX										
  taskservice.go:824	0xe3407f		49890b			MOVQ CX, 0(R11)											
  taskservice.go:824	0xe34082		488b542438		MOVQ 0x38(SP), DX										
  taskservice.go:824	0xe34087		49895308		MOVQ DX, 0x8(R11)										
  taskservice.go:824	0xe3408b		48894808		MOVQ CX, 0x8(AX)										
  taskservice.go:824	0xe3408f		48895010		MOVQ DX, 0x10(AX)										
  taskservice.go:824	0xe34093		e8a83461ff		CALL runtime.newproc(SB)									
  taskservice.go:825	0xe34098		4883c450		ADDQ $.file+3(SB), SP										
  taskservice.go:825	0xe3409c		5d			POPQ BP												
  taskservice.go:825	0xe3409d		c3			RET												
  taskservice.go:822	0xe3409e		4883c450		ADDQ $.file+3(SB), SP										
  taskservice.go:822	0xe340a2		5d			POPQ BP												
  taskservice.go:822	0xe340a3		c3			RET												
  taskservice.go:818	0xe340a4		440f117c2440		MOVUPS X15, 0x40(SP)										
  taskservice.go:818	0xe340aa		488b442468		MOVQ 0x68(SP), AX										
  taskservice.go:818	0xe340af		488b5c2470		MOVQ 0x70(SP), BX										
  taskservice.go:818	0xe340b4		e8676063ff		CALL runtime.convTstring(SB)									
  taskservice.go:818	0xe340b9		488d0d60e82000		LEAQ runtime.types+383264(SB), CX								
  taskservice.go:818	0xe340c0		48894c2440		MOVQ CX, 0x40(SP)										
  taskservice.go:818	0xe340c5		4889442448		MOVQ AX, 0x48(SP)										
  print.go:233		0xe340ca		488b1dafdf6d02		MOVQ os.Stdout(SB), BX										
  print.go:233		0xe340d1		488d05087a0302		LEAQ go:itab.*os.File,io.Writer(SB), AX								
  print.go:233		0xe340d8		488d0d29b03600		LEAQ go:string.*+224256(SB), CX									
  print.go:233		0xe340df		bf35000000		MOVL $__major_os_version__+47(SB), DI								
  print.go:233		0xe340e4		488d742440		LEAQ 0x40(SP), SI										
  print.go:233		0xe340e9		41b801000000		MOVL $__minor_os_version__(SB), R8								
  print.go:233		0xe340ef		4d89c1			MOVQ R8, R9											
  print.go:233		0xe340f2		e829b16eff		CALL fmt.Fprintf(SB)										
  taskservice.go:819	0xe340f7		4883c450		ADDQ $.file+3(SB), SP										
  taskservice.go:819	0xe340fb		5d			POPQ BP												
  taskservice.go:819	0xe340fc		c3			RET												
  taskservice.go:815	0xe340fd		4883c450		ADDQ $.file+3(SB), SP										
  taskservice.go:815	0xe34101		5d			POPQ BP												
  taskservice.go:815	0xe34102		c3			RET												
  taskservice.go:812	0xe34103		4883c450		ADDQ $.file+3(SB), SP										
  taskservice.go:812	0xe34107		5d			POPQ BP												
  taskservice.go:812	0xe34108		c3			RET												
  taskservice.go:808	0xe34109		4883c450		ADDQ $.file+3(SB), SP										
  taskservice.go:808	0xe3410d		5d			POPQ BP												
  taskservice.go:808	0xe3410e		c3			RET												
  taskservice.go:805	0xe3410f		4883c450		ADDQ $.file+3(SB), SP										
  taskservice.go:805	0xe34113		5d			POPQ BP												
  taskservice.go:805	0xe34114		c3			RET												
  taskservice.go:803	0xe34115		4889442408		MOVQ AX, 0x8(SP)										
  taskservice.go:803	0xe3411a		48895c2410		MOVQ BX, 0x10(SP)										
  taskservice.go:803	0xe3411f		48894c2418		MOVQ CX, 0x18(SP)										
  taskservice.go:803	0xe34124		e8b72364ff		CALL runtime.morestack_noctxt.abi0(SB)								
  taskservice.go:803	0xe34129		488b442408		MOVQ 0x8(SP), AX										
  taskservice.go:803	0xe3412e		488b5c2410		MOVQ 0x10(SP), BX										
  taskservice.go:803	0xe34133		488b4c2418		MOVQ 0x18(SP), CX										
  taskservice.go:803	0xe34138		e963feffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).moveForkliftToNearestPPDock(SB)			
  :-1			0xe3413d		cc			INT $__subsystem__(SB)										
  :-1			0xe3413e		cc			INT $__subsystem__(SB)										
  :-1			0xe3413f		cc			INT $__subsystem__(SB)										

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).moveForkliftToNearestPPDock.gowrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:824	0xe34140		493b6610		CMPQ SP, 0x10(R14)									
  taskservice.go:824	0xe34144		7625			JBE 0xe3416b										
  taskservice.go:824	0xe34146		55			PUSHQ BP										
  taskservice.go:824	0xe34147		4889e5			MOVQ SP, BP										
  taskservice.go:824	0xe3414a		4883ec10		SUBQ $__major_os_version__+10(SB), SP							
  taskservice.go:824	0xe3414e		4d8b6620		MOVQ 0x20(R14), R12									
  taskservice.go:824	0xe34152		4d85e4			TESTQ R12, R12										
  taskservice.go:824	0xe34155		751b			JNE 0xe34172										
  taskservice.go:824	0xe34157		488b5a10		MOVQ 0x10(DX), BX									
  taskservice.go:824	0xe3415b		488b4208		MOVQ 0x8(DX), AX									
  taskservice.go:824	0xe3415f		90			NOPL											
  taskservice.go:824	0xe34160		e83b000000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).runDockNavigation(SB)			
  taskservice.go:824	0xe34165		4883c410		ADDQ $__major_os_version__+10(SB), SP							
  taskservice.go:824	0xe34169		5d			POPQ BP											
  taskservice.go:824	0xe3416a		c3			RET											
  taskservice.go:824	0xe3416b		e8f02264ff		CALL runtime.morestack.abi0(SB)								
  taskservice.go:824	0xe34170		ebce			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).moveForkliftToNearestPPDock.gowrap1(SB)	
  taskservice.go:824	0xe34172		4c8d6c2420		LEAQ 0x20(SP), R13									
  taskservice.go:824	0xe34177		4d392c24		CMPQ 0(R12), R13									
  taskservice.go:824	0xe3417b		75da			JNE 0xe34157										
  taskservice.go:824	0xe3417d		49892424		MOVQ SP, 0(R12)										
  taskservice.go:824	0xe34181		ebd4			JMP 0xe34157										
  :-1			0xe34183		cc			INT $__subsystem__(SB)									
  :-1			0xe34184		cc			INT $__subsystem__(SB)									
  :-1			0xe34185		cc			INT $__subsystem__(SB)									
  :-1			0xe34186		cc			INT $__subsystem__(SB)									
  :-1			0xe34187		cc			INT $__subsystem__(SB)									
  :-1			0xe34188		cc			INT $__subsystem__(SB)									
  :-1			0xe34189		cc			INT $__subsystem__(SB)									
  :-1			0xe3418a		cc			INT $__subsystem__(SB)									
  :-1			0xe3418b		cc			INT $__subsystem__(SB)									
  :-1			0xe3418c		cc			INT $__subsystem__(SB)									
  :-1			0xe3418d		cc			INT $__subsystem__(SB)									
  :-1			0xe3418e		cc			INT $__subsystem__(SB)									
  :-1			0xe3418f		cc			INT $__subsystem__(SB)									
  :-1			0xe34190		cc			INT $__subsystem__(SB)									
  :-1			0xe34191		cc			INT $__subsystem__(SB)									
  :-1			0xe34192		cc			INT $__subsystem__(SB)									
  :-1			0xe34193		cc			INT $__subsystem__(SB)									
  :-1			0xe34194		cc			INT $__subsystem__(SB)									
  :-1			0xe34195		cc			INT $__subsystem__(SB)									
  :-1			0xe34196		cc			INT $__subsystem__(SB)									
  :-1			0xe34197		cc			INT $__subsystem__(SB)									
  :-1			0xe34198		cc			INT $__subsystem__(SB)									
  :-1			0xe34199		cc			INT $__subsystem__(SB)									
  :-1			0xe3419a		cc			INT $__subsystem__(SB)									
  :-1			0xe3419b		cc			INT $__subsystem__(SB)									
  :-1			0xe3419c		cc			INT $__subsystem__(SB)									
  :-1			0xe3419d		cc			INT $__subsystem__(SB)									
  :-1			0xe3419e		cc			INT $__subsystem__(SB)									
  :-1			0xe3419f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).runDockNavigation(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:832	0xe341a0		4c8da42478feffff	LEAQ 0xfffffe78(SP), R12								
  taskservice.go:832	0xe341a8		4d3b6610		CMPQ R12, 0x10(R14)									
  taskservice.go:832	0xe341ac		0f86b10a0000		JBE 0xe34c63										
  taskservice.go:832	0xe341b2		55			PUSHQ BP										
  taskservice.go:832	0xe341b3		4889e5			MOVQ SP, BP										
  taskservice.go:832	0xe341b6		4881ec00020000		SUBQ $__file_alignment__(SB), SP							
  taskservice.go:832	0xe341bd		66440fd6bc24f8010000	MOVQ X15, 0x1f8(SP)									
  taskservice.go:832	0xe341c7		c644244f00		MOVB $0x0, 0x4f(SP)									
  taskservice.go:832	0xe341cc		48899c2418020000	MOVQ BX, 0x218(SP)									
  taskservice.go:833	0xe341d4		4885db			TESTQ BX, BX										
  taskservice.go:833	0xe341d7		0f8461030000		JE 0xe3453e										
  taskservice.go:833	0xe341dd		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:833	0xe341e5		488b4a08		MOVQ 0x8(DX), CX									
  taskservice.go:833	0xe341e9		4885c9			TESTQ CX, CX										
  taskservice.go:833	0xe341ec		0f844c030000		JE 0xe3453e										
  taskservice.go:833	0xe341f2		4889842410020000	MOVQ AX, 0x210(SP)									
  taskservice.go:836	0xe341fa		488b30			MOVQ 0(AX), SI										
  taskservice.go:836	0xe341fd		0f1f00			NOPL 0(AX)										
  taskservice.go:836	0xe34200		4885f6			TESTQ SI, SI										
  taskservice.go:836	0xe34203		7424			JE 0xe34229										
  taskservice.go:833	0xe34205		488b1a			MOVQ 0(DX), BX										
  taskservice.go:837	0xe34208		4889f0			MOVQ SI, AX										
  taskservice.go:837	0xe3420b		e870fb0000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift(SB)				
  taskservice.go:837	0xe34210		84db			TESTL BL, BL										
  taskservice.go:837	0xe34212		740d			JE 0xe34221										
  taskservice.go:837	0xe34214		4885c0			TESTQ AX, AX										
  taskservice.go:837	0xe34217		7408			JE 0xe34221										
  taskservice.go:838	0xe34219		4889842418020000	MOVQ AX, 0x218(SP)									
  taskservice.go:841	0xe34221		488b842410020000	MOVQ 0x210(SP), AX									
  taskservice.go:841	0xe34229		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:841	0xe34231		488b1a			MOVQ 0(DX), BX										
  taskservice.go:841	0xe34234		488b4a08		MOVQ 0x8(DX), CX									
  taskservice.go:841	0xe34238		e8c321ffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).isVehicleNavigatingToDock(SB)		
  taskservice.go:841	0xe3423d		0f1f00			NOPL 0(AX)										
  taskservice.go:841	0xe34240		84c0			TESTL AL, AL										
  taskservice.go:841	0xe34242		0f85ed020000		JNE 0xe34535										
  taskservice.go:845	0xe34248		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:845	0xe34250		488b5a08		MOVQ 0x8(DX), BX									
  taskservice.go:845	0xe34254		488b02			MOVQ 0(DX), AX										
  taskservice.go:845	0xe34257		488b4a38		MOVQ 0x38(DX), CX									
  taskservice.go:845	0xe3425b		488b7a40		MOVQ 0x40(DX), DI									
  taskservice.go:845	0xe3425f		90			NOPL											
  taskservice.go:845	0xe34260		e87b82ffff		CALL CAS-Backend/pkg/diapdu.currentStationForVehicle(SB)				
  taskservice.go:846	0xe34265		4885c9			TESTQ CX, CX										
  taskservice.go:846	0xe34268		0f84b0000000		JE 0xe3431e										
  taskservice.go:845	0xe3426e		4889bc24b8000000	MOVQ DI, 0xb8(SP)									
  taskservice.go:845	0xe34276		48898c2488000000	MOVQ CX, 0x88(SP)									
  taskservice.go:847	0xe3427e		440f11bc24d8010000	MOVUPS X15, 0x1d8(SP)									
  taskservice.go:847	0xe34287		440f11bc24e8010000	MOVUPS X15, 0x1e8(SP)									
  taskservice.go:847	0xe34290		488b8c2418020000	MOVQ 0x218(SP), CX									
  taskservice.go:847	0xe34298		488b01			MOVQ 0(CX), AX										
  taskservice.go:847	0xe3429b		488b5908		MOVQ 0x8(CX), BX									
  taskservice.go:847	0xe3429f		90			NOPL											
  taskservice.go:847	0xe342a0		e87b5e63ff		CALL runtime.convTstring(SB)								
  taskservice.go:847	0xe342a5		488d0d74e62000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:847	0xe342ac		48898c24d8010000	MOVQ CX, 0x1d8(SP)									
  taskservice.go:847	0xe342b4		48898424e0010000	MOVQ AX, 0x1e0(SP)									
  taskservice.go:846	0xe342bc		488b8c2488000000	MOVQ 0x88(SP), CX									
  taskservice.go:846	0xe342c4		4885c9			TESTQ CX, CX										
  taskservice.go:847	0xe342c7		7404			JE 0xe342cd										
  taskservice.go:847	0xe342c9		488b4908		MOVQ 0x8(CX), CX									
  taskservice.go:847	0xe342cd		48898c24e8010000	MOVQ CX, 0x1e8(SP)									
  taskservice.go:847	0xe342d5		488b9424b8000000	MOVQ 0xb8(SP), DX									
  taskservice.go:847	0xe342dd		48899424f0010000	MOVQ DX, 0x1f0(SP)									
  print.go:233		0xe342e5		488b1d94dd6d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe342ec		488d05ed770302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe342f3		488d0d0c363600		LEAQ go:string.*+193534(SB), CX								
  print.go:233		0xe342fa		bf2a000000		MOVL $__major_os_version__+36(SB), DI							
  print.go:233		0xe342ff		488db424d8010000	LEAQ 0x1d8(SP), SI									
  print.go:233		0xe34307		41b802000000		MOVL $__minor_os_version__+1(SB), R8							
  print.go:233		0xe3430d		4d89c1			MOVQ R8, R9										
  print.go:233		0xe34310		e80baf6eff		CALL fmt.Fprintf(SB)									
  taskservice.go:848	0xe34315		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:848	0xe3431c		5d			POPQ BP											
  taskservice.go:848	0xe3431d		c3			RET											
  taskservice.go:845	0xe3431e		48895c2458		MOVQ BX, 0x58(SP)									
  taskservice.go:845	0xe34323		4889842498000000	MOVQ AX, 0x98(SP)									
  taskservice.go:851	0xe3432b		488b942410020000	MOVQ 0x210(SP), DX									
  taskservice.go:851	0xe34333		4c8b4240		MOVQ 0x40(DX), R8									
  taskservice.go:851	0xe34337		4c8b8c2418020000	MOVQ 0x218(SP), R9									
  taskservice.go:850	0xe3433f		f2410f104128		MOVSD_XMM 0x28(R9), X0									
  taskservice.go:850	0xe34345		f20f11842480000000	MOVSD_XMM X0, 0x80(SP)									
  taskservice.go:850	0xe3434e		f2410f104930		MOVSD_XMM 0x30(R9), X1									
  taskservice.go:850	0xe34354		f20f114c2478		MOVSD_XMM X1, 0x78(SP)									
  taskservice.go:851	0xe3435a		4d8b11			MOVQ 0(R9), R10										
  taskservice.go:851	0xe3435d		498b4908		MOVQ 0x8(R9), CX									
  taskservice.go:851	0xe34361		4889c7			MOVQ AX, DI										
  taskservice.go:851	0xe34364		4889de			MOVQ BX, SI										
  taskservice.go:851	0xe34367		4c89c0			MOVQ R8, AX										
  taskservice.go:851	0xe3436a		4c89d3			MOVQ R10, BX										
  taskservice.go:851	0xe3436d		e8ce0dffff		CALL CAS-Backend/pkg/diapdu.resolveDockStartStation(SB)					
  taskservice.go:852	0xe34372		4885db			TESTQ BX, BX										
  taskservice.go:852	0xe34375		0f841b010000		JE 0xe34496										
  taskservice.go:851	0xe3437b		48895c2460		MOVQ BX, 0x60(SP)									
  taskservice.go:851	0xe34380		48898424a0000000	MOVQ AX, 0xa0(SP)									
  taskservice.go:856	0xe34388		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:856	0xe34390		4c8b02			MOVQ 0(DX), R8										
  taskservice.go:856	0xe34393		488b4a08		MOVQ 0x8(DX), CX									
  taskservice.go:856	0xe34397		4889c7			MOVQ AX, DI										
  taskservice.go:856	0xe3439a		4889de			MOVQ BX, SI										
  taskservice.go:856	0xe3439d		488b842410020000	MOVQ 0x210(SP), AX									
  taskservice.go:856	0xe343a5		4c89c3			MOVQ R8, BX										
  taskservice.go:856	0xe343a8		e8531fffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).syncVehicleDockFromRuntime(SB)		
  dock.go:12		0xe343ad		90			NOPL											
  strings.go:17		0xe343ae		488b542460		MOVQ 0x60(SP), DX									
  strings.go:17		0xe343b3		4883fa02		CMPQ DX, $__minor_os_version__+1(SB)							
  strings.go:17		0xe343b7		7c13			JL 0xe343cc										
  strings.go:17		0xe343b9		488b8c24a0000000	MOVQ 0xa0(SP), CX									
  strings.go:17		0xe343c1		6681395050		CMPW 0(CX), $__size_of_stack_commit__+16464(SB)						
  strings.go:17		0xe343c6		400f94c6		SETE SI											
  strings.go:17		0xe343ca		eb0a			JMP 0xe343d6										
  taskservice.go:865	0xe343cc		488b8c24a0000000	MOVQ 0xa0(SP), CX									
  taskservice.go:865	0xe343d4		31f6			XORL SI, SI										
  strings.go:462	0xe343d6		4084f6			TESTL SI, SI										
  taskservice.go:857	0xe343d9		751c			JNE 0xe343f7										
  taskservice.go:862	0xe343db		488b842410020000	MOVQ 0x210(SP), AX									
  taskservice.go:862	0xe343e3		e8f818ffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).dockOccupancyIncludingLivePositions(SB)	
  taskservice.go:862	0xe343e8		48898424b0000000	MOVQ AX, 0xb0(SP)									
  taskservice.go:862	0xe343f0		31c9			XORL CX, CX										
  taskservice.go:864	0xe343f2		e96a010000		JMP 0xe34561										
  taskservice.go:858	0xe343f7		440f11bc2498010000	MOVUPS X15, 0x198(SP)									
  taskservice.go:858	0xe34400		440f11bc24a8010000	MOVUPS X15, 0x1a8(SP)									
  taskservice.go:858	0xe34409		488b8c2418020000	MOVQ 0x218(SP), CX									
  taskservice.go:858	0xe34411		488b01			MOVQ 0(CX), AX										
  taskservice.go:858	0xe34414		488b5908		MOVQ 0x8(CX), BX									
  taskservice.go:858	0xe34418		e8035d63ff		CALL runtime.convTstring(SB)								
  taskservice.go:858	0xe3441d		488d0dfce42000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:858	0xe34424		48898c2498010000	MOVQ CX, 0x198(SP)									
  taskservice.go:858	0xe3442c		48898424a0010000	MOVQ AX, 0x1a0(SP)									
  taskservice.go:858	0xe34434		488b8424a0000000	MOVQ 0xa0(SP), AX									
  taskservice.go:858	0xe3443c		488b5c2460		MOVQ 0x60(SP), BX									
  taskservice.go:858	0xe34441		e8da5c63ff		CALL runtime.convTstring(SB)								
  taskservice.go:858	0xe34446		488d0dd3e42000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:858	0xe3444d		48898c24a8010000	MOVQ CX, 0x1a8(SP)									
  taskservice.go:858	0xe34455		48898424b0010000	MOVQ AX, 0x1b0(SP)									
  print.go:233		0xe3445d		488b1d1cdc6d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe34464		488d0575760302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe3446b		488d0d9df73500		LEAQ go:string.*+177927(SB), CX								
  print.go:233		0xe34472		bf26000000		MOVL $__major_os_version__+32(SB), DI							
  print.go:233		0xe34477		488db42498010000	LEAQ 0x198(SP), SI									
  print.go:233		0xe3447f		41b802000000		MOVL $__minor_os_version__+1(SB), R8							
  print.go:233		0xe34485		4d89c1			MOVQ R8, R9										
  print.go:233		0xe34488		e893ad6eff		CALL fmt.Fprintf(SB)									
  taskservice.go:859	0xe3448d		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:859	0xe34494		5d			POPQ BP											
  taskservice.go:859	0xe34495		c3			RET											
  taskservice.go:853	0xe34496		440f11bc24b8010000	MOVUPS X15, 0x1b8(SP)									
  taskservice.go:853	0xe3449f		440f11bc24c8010000	MOVUPS X15, 0x1c8(SP)									
  taskservice.go:853	0xe344a8		488b8c2418020000	MOVQ 0x218(SP), CX									
  taskservice.go:853	0xe344b0		488b01			MOVQ 0(CX), AX										
  taskservice.go:853	0xe344b3		488b5908		MOVQ 0x8(CX), BX									
  taskservice.go:853	0xe344b7		e8645c63ff		CALL runtime.convTstring(SB)								
  taskservice.go:853	0xe344bc		488d0d5de42000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:853	0xe344c3		48898c24b8010000	MOVQ CX, 0x1b8(SP)									
  taskservice.go:853	0xe344cb		48898424c0010000	MOVQ AX, 0x1c0(SP)									
  taskservice.go:853	0xe344d3		488b842498000000	MOVQ 0x98(SP), AX									
  taskservice.go:853	0xe344db		488b5c2458		MOVQ 0x58(SP), BX									
  taskservice.go:853	0xe344e0		e83b5c63ff		CALL runtime.convTstring(SB)								
  taskservice.go:853	0xe344e5		488d0d34e42000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:853	0xe344ec		48898c24c8010000	MOVQ CX, 0x1c8(SP)									
  taskservice.go:853	0xe344f4		48898424d0010000	MOVQ AX, 0x1d0(SP)									
  print.go:233		0xe344fc		488b1d7ddb6d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe34503		488d05d6750302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe3450a		488d0d54443700		LEAQ go:string.*+263261(SB), CX								
  print.go:233		0xe34511		bf4f000000		MOVL $.file+2(SB), DI									
  print.go:233		0xe34516		488db424b8010000	LEAQ 0x1b8(SP), SI									
  print.go:233		0xe3451e		41b802000000		MOVL $__minor_os_version__+1(SB), R8							
  print.go:233		0xe34524		4d89c1			MOVQ R8, R9										
  print.go:233		0xe34527		e8f4ac6eff		CALL fmt.Fprintf(SB)									
  taskservice.go:854	0xe3452c		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:854	0xe34533		5d			POPQ BP											
  taskservice.go:854	0xe34534		c3			RET											
  taskservice.go:842	0xe34535		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:842	0xe3453c		5d			POPQ BP											
  taskservice.go:842	0xe3453d		c3			RET											
  taskservice.go:834	0xe3453e		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:834	0xe34545		5d			POPQ BP											
  taskservice.go:834	0xe34546		c3			RET											
  taskservice.go:872	0xe34547		488d152e2a3400		LEAQ go:string.*+60020(SB), DX								
  taskservice.go:872	0xe3454e		488910			MOVQ DX, 0(AX)										
  taskservice.go:864	0xe34551		488b4c2450		MOVQ 0x50(SP), CX									
  taskservice.go:864	0xe34556		48ffc1			INCQ CX											
  taskservice.go:865	0xe34559		488b8424b0000000	MOVQ 0xb0(SP), AX									
  taskservice.go:864	0xe34561		4883f910		CMPQ CX, $__major_os_version__+10(SB)							
  taskservice.go:864	0xe34565		0f8dd7000000		JGE 0xe34642										
  taskservice.go:864	0xe3456b		48894c2450		MOVQ CX, 0x50(SP)									
  taskservice.go:865	0xe34570		488b942410020000	MOVQ 0x210(SP), DX									
  taskservice.go:865	0xe34578		4c8b4a40		MOVQ 0x40(DX), R9									
  taskservice.go:865	0xe3457c		4c8b942418020000	MOVQ 0x218(SP), R10									
  taskservice.go:865	0xe34584		498b32			MOVQ 0(R10), SI										
  taskservice.go:865	0xe34587		4d8b4208		MOVQ 0x8(R10), R8									
  taskservice.go:865	0xe3458b		488b9c24a0000000	MOVQ 0xa0(SP), BX									
  taskservice.go:865	0xe34593		488b4c2460		MOVQ 0x60(SP), CX									
  taskservice.go:865	0xe34598		f20f10842480000000	MOVSD_XMM 0x80(SP), X0									
  taskservice.go:865	0xe345a1		f20f104c2478		MOVSD_XMM 0x78(SP), X1									
  taskservice.go:865	0xe345a7		4889c7			MOVQ AX, DI										
  taskservice.go:865	0xe345aa		4c89c8			MOVQ R9, AX										
  taskservice.go:865	0xe345ad		e8ce12ffff		CALL CAS-Backend/pkg/diapdu.NearestAvailablePPDock(SB)					
  taskservice.go:866	0xe345b2		4885c0			TESTQ AX, AX										
  taskservice.go:866	0xe345b5		0f8489000000		JE 0xe34644										
  taskservice.go:865	0xe345bb		48898424c0000000	MOVQ AX, 0xc0(SP)									
  taskservice.go:869	0xe345c3		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:869	0xe345cb		488b1a			MOVQ 0(DX), BX										
  taskservice.go:869	0xe345ce		488b4a08		MOVQ 0x8(DX), CX									
  taskservice.go:869	0xe345d2		488b38			MOVQ 0(AX), DI										
  taskservice.go:869	0xe345d5		488b7008		MOVQ 0x8(AX), SI									
  taskservice.go:869	0xe345d9		488b842410020000	MOVQ 0x210(SP), AX									
  taskservice.go:869	0xe345e1		e89a1fffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).tryReserveDock(SB)				
  taskservice.go:869	0xe345e6		84c0			TESTL AL, AL										
  taskservice.go:869	0xe345e8		754c			JNE 0xe34636										
  taskservice.go:872	0xe345ea		488b9424c0000000	MOVQ 0xc0(SP), DX									
  taskservice.go:872	0xe345f2		488b0a			MOVQ 0(DX), CX										
  taskservice.go:872	0xe345f5		488b7a08		MOVQ 0x8(DX), DI									
  taskservice.go:872	0xe345f9		488d0520952400		LEAQ runtime.types+625440(SB), AX							
  taskservice.go:872	0xe34600		488b9c24b0000000	MOVQ 0xb0(SP), BX									
  taskservice.go:872	0xe34608		e8139a63ff		CALL runtime.mapassign_faststr(SB)							
  taskservice.go:872	0xe3460d		48c740080b000000	MOVQ $__major_os_version__+5(SB), 0x8(AX)						
  taskservice.go:872	0xe34615		833d3495720200		CMPL runtime.writeBarrier(SB), $0x0							
  taskservice.go:872	0xe3461c		0f1f4000		NOPL 0(AX)										
  taskservice.go:872	0xe34620		0f8421ffffff		JE 0xe34547										
  taskservice.go:872	0xe34626		488b10			MOVQ 0(AX), DX										
  taskservice.go:872	0xe34629		e8f23d64ff		CALL runtime.gcWriteBarrier1(SB)							
  taskservice.go:872	0xe3462e		498913			MOVQ DX, 0(R11)										
  taskservice.go:872	0xe34631		e911ffffff		JMP 0xe34547										
  taskservice.go:875	0xe34636		488b8424c0000000	MOVQ 0xc0(SP), AX									
  taskservice.go:875	0xe3463e		6690			NOPW											
  taskservice.go:870	0xe34640		eb02			JMP 0xe34644										
  taskservice.go:870	0xe34642		31c0			XORL AX, AX										
  taskservice.go:875	0xe34644		4885c0			TESTQ AX, AX										
  taskservice.go:875	0xe34647		0f8464050000		JE 0xe34bb1										
  taskservice.go:875	0xe3464d		48898424c0000000	MOVQ AX, 0xc0(SP)									
  taskservice.go:880	0xe34655		488b942410020000	MOVQ 0x210(SP), DX									
  taskservice.go:880	0xe3465d		4c8b5240		MOVQ 0x40(DX), R10									
  taskservice.go:880	0xe34661		4c8b9c2418020000	MOVQ 0x218(SP), R11									
  taskservice.go:880	0xe34669		498b1b			MOVQ 0(R11), BX										
  taskservice.go:880	0xe3466c		498b4b08		MOVQ 0x8(R11), CX									
  taskservice.go:880	0xe34670		4c8b00			MOVQ 0(AX), R8										
  taskservice.go:880	0xe34673		4c8b4808		MOVQ 0x8(AX), R9									
  taskservice.go:880	0xe34677		488bbc24a0000000	MOVQ 0xa0(SP), DI									
  taskservice.go:880	0xe3467f		488b742460		MOVQ 0x60(SP), SI									
  taskservice.go:880	0xe34684		4c89d0			MOVQ R10, AX										
  taskservice.go:880	0xe34687		e8f40dffff		CALL CAS-Backend/pkg/diapdu.planDockPathNodes(SB)					
  taskservice.go:880	0xe3468c		4084ff			TESTL DI, DI										
  taskservice.go:881	0xe3468f		0f842c040000		JE 0xe34ac1										
  taskservice.go:881	0xe34695		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)							
  taskservice.go:881	0xe34699		0f8c22040000		JL 0xe34ac1										
  taskservice.go:880	0xe3469f		48894c2470		MOVQ CX, 0x70(SP)									
  taskservice.go:880	0xe346a4		48895c2468		MOVQ BX, 0x68(SP)									
  taskservice.go:880	0xe346a9		48898424a8000000	MOVQ AX, 0xa8(SP)									
  taskservice.go:887	0xe346b1		488d05c8e80302		LEAQ go:itab.context.backgroundCtx,context.Context(SB), AX				
  taskservice.go:887	0xe346b8		488d1de18b7202		LEAQ unicode..stmp_365(SB), BX								
  taskservice.go:887	0xe346bf		90			NOPL											
  taskservice.go:887	0xe346c0		e8dbeb7eff		CALL context.WithCancel(SB)								
  taskservice.go:887	0xe346c5		4889842490000000	MOVQ AX, 0x90(SP)									
  taskservice.go:887	0xe346cd		48899c24c8000000	MOVQ BX, 0xc8(SP)									
  taskservice.go:888	0xe346d5		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:888	0xe346dd		488b32			MOVQ 0(DX), SI										
  taskservice.go:888	0xe346e0		488b5208		MOVQ 0x8(DX), DX									
  taskservice.go:888	0xe346e4		bf01000000		MOVL $__minor_os_version__(SB), DI							
  taskservice.go:888	0xe346e9		488b842410020000	MOVQ 0x210(SP), AX									
  taskservice.go:888	0xe346f1		4889f3			MOVQ SI, BX										
  taskservice.go:887	0xe346f4		4989ca			MOVQ CX, R10										
  taskservice.go:888	0xe346f7		4889d1			MOVQ DX, CX										
  taskservice.go:888	0xe346fa		4c89d6			MOVQ R10, SI										
  taskservice.go:888	0xe346fd		0f1f00			NOPL 0(AX)										
  taskservice.go:888	0xe34700		e8db23ffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).setDockNavigating(SB)			
  taskservice.go:889	0xe34705		488d0d94050000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).runDockNavigation.func1(SB), CX		
  taskservice.go:889	0xe3470c		48898c2430010000	MOVQ CX, 0x130(SP)									
  taskservice.go:889	0xe34714		488b842410020000	MOVQ 0x210(SP), AX									
  taskservice.go:889	0xe3471c		4889842438010000	MOVQ AX, 0x138(SP)									
  taskservice.go:889	0xe34724		488d8c2418020000	LEAQ 0x218(SP), CX									
  taskservice.go:889	0xe3472c		48898c2440010000	MOVQ CX, 0x140(SP)									
  taskservice.go:889	0xe34734		488d8c2430010000	LEAQ 0x130(SP), CX									
  taskservice.go:889	0xe3473c		48898c24f8010000	MOVQ CX, 0x1f8(SP)									
  taskservice.go:889	0xe34744		c644244f01		MOVB $__minor_os_version__(SB), 0x4f(SP)						
  taskservice.go:893	0xe34749		488b08			MOVQ 0(AX), CX										
  taskservice.go:893	0xe3474c		4885c9			TESTQ CX, CX										
  taskservice.go:893	0xe3474f		7433			JE 0xe34784										
  taskservice.go:894	0xe34751		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:894	0xe34759		488b7208		MOVQ 0x8(DX), SI									
  taskservice.go:894	0xe3475d		488b1a			MOVQ 0(DX), BX										
  taskservice.go:894	0xe34760		4889c8			MOVQ CX, AX										
  taskservice.go:894	0xe34763		4889f1			MOVQ SI, CX										
  taskservice.go:894	0xe34766		e815f60000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift(SB)				
  taskservice.go:894	0xe3476b		84db			TESTL BL, BL										
  taskservice.go:894	0xe3476d		740d			JE 0xe3477c										
  taskservice.go:894	0xe3476f		4885c0			TESTQ AX, AX										
  taskservice.go:894	0xe34772		7408			JE 0xe3477c										
  taskservice.go:895	0xe34774		4889842418020000	MOVQ AX, 0x218(SP)									
  taskservice.go:899	0xe3477c		488b842410020000	MOVQ 0x210(SP), AX									
  taskservice.go:898	0xe34784		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:898	0xe3478c		48837a5000		CMPQ 0x50(DX), $0x0									
  taskservice.go:898	0xe34791		0f85fd020000		JNE 0xe34a94										
  taskservice.go:903	0xe34797		e8049967ff		CALL time.Now(SB)									
  time.go:1242		0xe3479c		90			NOPL											
  time.go:181		0xe3479d		480fbae03f		BTQ $__major_os_version__+57(SB), AX							
  time.go:181		0xe347a2		7315			JAE 0xe347b9										
  time.go:182		0xe347a4		48d1e0			SHLQ $__minor_os_version__(SB), AX							
  time.go:182		0xe347a7		48c1e81f		SHRQ $__major_os_version__+25(SB), AX							
  time.go:182		0xe347ab		48b9807fb1d70d000000	MOVQ $0xdd7b17f80, CX									
  time.go:182		0xe347b5		488d1c01		LEAQ 0(CX)(AX*1), BX									
  time.go:188		0xe347b9		48b900096e88f1ffffff	MOVQ $0xfffffff1886e0900, CX								
  time.go:188		0xe347c3		488d0419		LEAQ 0(CX)(BX*1), AX									
  taskservice.go:903	0xe347c7		bb0a000000		MOVL $__major_os_version__+4(SB), BX							
  taskservice.go:903	0xe347cc		e8efb06bff		CALL strconv.FormatInt(SB)								
  taskservice.go:903	0xe347d1		488b8c2418020000	MOVQ 0x218(SP), CX									
  taskservice.go:903	0xe347d9		488b39			MOVQ 0(CX), DI										
  taskservice.go:903	0xe347dc		488b7108		MOVQ 0x8(CX), SI									
  taskservice.go:903	0xe347e0		b905000000		MOVL $__subsystem__+2(SB), CX								
  taskservice.go:903	0xe347e5		4c8d051d3d3300		LEAQ go:string.*+1(SB), R8								
  taskservice.go:903	0xe347ec		41b901000000		MOVL $__minor_os_version__(SB), R9							
  taskservice.go:903	0xe347f2		4989c2			MOVQ AX, R10										
  taskservice.go:903	0xe347f5		4989db			MOVQ BX, R11										
  taskservice.go:903	0xe347f8		31c0			XORL AX, AX										
  taskservice.go:903	0xe347fa		488d1d245e3300		LEAQ go:string.*+8477(SB), BX								
  taskservice.go:903	0xe34801		e85a0d62ff		CALL runtime.concatstring4(SB)								
  taskservice.go:904	0xe34806		488b4c2470		MOVQ 0x70(SP), CX									
  taskservice.go:904	0xe3480b		4889c7			MOVQ AX, DI										
  taskservice.go:904	0xe3480e		4889de			MOVQ BX, SI										
  taskservice.go:904	0xe34811		488b8424a8000000	MOVQ 0xa8(SP), AX									
  taskservice.go:904	0xe34819		488b5c2468		MOVQ 0x68(SP), BX									
  taskservice.go:904	0xe3481e		6690			NOPW											
  taskservice.go:904	0xe34820		e8db2cffff		CALL CAS-Backend/pkg/diapdu.buildDockNavTasks(SB)					
  taskservice.go:905	0xe34825		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:905	0xe3482d		488b7238		MOVQ 0x38(DX), SI									
  taskservice.go:905	0xe34831		488b5240		MOVQ 0x40(DX), DX									
  taskservice.go:905	0xe34835		4889df			MOVQ BX, DI										
  taskservice.go:905	0xe34838		4889d3			MOVQ DX, BX										
  taskservice.go:904	0xe3483b		4889c2			MOVQ AX, DX										
  taskservice.go:905	0xe3483e		4889f0			MOVQ SI, AX										
  taskservice.go:904	0xe34841		4989c8			MOVQ CX, R8										
  taskservice.go:905	0xe34844		4889d1			MOVQ DX, CX										
  taskservice.go:905	0xe34847		4c89c6			MOVQ R8, SI										
  taskservice.go:905	0xe3484a		e81131ffff		CALL CAS-Backend/pkg/diapdu.sendDockNavigation(SB)					
  taskservice.go:905	0xe3484f		48899c2488000000	MOVQ BX, 0x88(SP)									
  taskservice.go:905	0xe34857		48898c24b8000000	MOVQ CX, 0xb8(SP)									
  taskservice.go:905	0xe3485f		90			NOPL											
  taskservice.go:906	0xe34860		4885db			TESTQ BX, BX										
  taskservice.go:906	0xe34863		7508			JNE 0xe3486d										
  taskservice.go:905	0xe34865		84c0			TESTL AL, AL										
  taskservice.go:906	0xe34867		0f8507010000		JNE 0xe34974										
  taskservice.go:907	0xe3486d		440f11bc2400010000	MOVUPS X15, 0x100(SP)									
  taskservice.go:907	0xe34876		440f11bc2410010000	MOVUPS X15, 0x110(SP)									
  taskservice.go:907	0xe3487f		440f11bc2420010000	MOVUPS X15, 0x120(SP)									
  taskservice.go:907	0xe34888		488b8c2418020000	MOVQ 0x218(SP), CX									
  taskservice.go:907	0xe34890		488b01			MOVQ 0(CX), AX										
  taskservice.go:907	0xe34893		488b5908		MOVQ 0x8(CX), BX									
  taskservice.go:907	0xe34897		e8845863ff		CALL runtime.convTstring(SB)								
  taskservice.go:907	0xe3489c		488d0d7de02000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:907	0xe348a3		48898c2400010000	MOVQ CX, 0x100(SP)									
  taskservice.go:907	0xe348ab		4889842408010000	MOVQ AX, 0x108(SP)									
  taskservice.go:907	0xe348b3		488b9424c0000000	MOVQ 0xc0(SP), DX									
  taskservice.go:907	0xe348bb		488b02			MOVQ 0(DX), AX										
  taskservice.go:907	0xe348be		488b5a08		MOVQ 0x8(DX), BX									
  taskservice.go:907	0xe348c2		e8595863ff		CALL runtime.convTstring(SB)								
  taskservice.go:907	0xe348c7		488d0d52e02000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:907	0xe348ce		48898c2410010000	MOVQ CX, 0x110(SP)									
  taskservice.go:907	0xe348d6		4889842418010000	MOVQ AX, 0x118(SP)									
  taskservice.go:906	0xe348de		488b8c2488000000	MOVQ 0x88(SP), CX									
  taskservice.go:906	0xe348e6		4885c9			TESTQ CX, CX										
  taskservice.go:907	0xe348e9		7406			JE 0xe348f1										
  taskservice.go:907	0xe348eb		488b5908		MOVQ 0x8(CX), BX									
  taskservice.go:907	0xe348ef		eb03			JMP 0xe348f4										
  taskservice.go:907	0xe348f1		4889cb			MOVQ CX, BX										
  taskservice.go:907	0xe348f4		48899c2420010000	MOVQ BX, 0x120(SP)									
  taskservice.go:907	0xe348fc		488b9424b8000000	MOVQ 0xb8(SP), DX									
  taskservice.go:907	0xe34904		4889942428010000	MOVQ DX, 0x128(SP)									
  print.go:233		0xe3490c		488b1d6dd76d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe34913		488d05c6710302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe3491a		488d0da3d03600		LEAQ go:string.*+234684(SB), CX								
  print.go:233		0xe34921		bf39000000		MOVL $__major_os_version__+51(SB), DI							
  print.go:233		0xe34926		488db42400010000	LEAQ 0x100(SP), SI									
  print.go:233		0xe3492e		41b803000000		MOVL $__subsystem__(SB), R8								
  print.go:233		0xe34934		4d89c1			MOVQ R8, R9										
  print.go:233		0xe34937		e8e4a86eff		CALL fmt.Fprintf(SB)									
  taskservice.go:908	0xe3493c		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:908	0xe34944		488b1a			MOVQ 0(DX), BX										
  taskservice.go:908	0xe34947		488b4a08		MOVQ 0x8(DX), CX									
  taskservice.go:908	0xe3494b		488b842410020000	MOVQ 0x210(SP), AX									
  taskservice.go:908	0xe34953		e8681fffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle(SB)			
  taskservice.go:909	0xe34958		c644244f00		MOVB $0x0, 0x4f(SP)									
  taskservice.go:909	0xe3495d		488b9424f8010000	MOVQ 0x1f8(SP), DX									
  taskservice.go:909	0xe34965		4c8b12			MOVQ 0(DX), R10										
  taskservice.go:909	0xe34968		41ffd2			CALL R10										
  taskservice.go:909	0xe3496b		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:909	0xe34972		5d			POPQ BP											
  taskservice.go:909	0xe34973		c3			RET											
  taskservice.go:911	0xe34974		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)									
  taskservice.go:911	0xe3497d		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)									
  taskservice.go:911	0xe34986		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)									
  taskservice.go:911	0xe3498f		488b8c2418020000	MOVQ 0x218(SP), CX									
  taskservice.go:911	0xe34997		488b01			MOVQ 0(CX), AX										
  taskservice.go:911	0xe3499a		488b5908		MOVQ 0x8(CX), BX									
  taskservice.go:911	0xe3499e		6690			NOPW											
  taskservice.go:911	0xe349a0		e87b5763ff		CALL runtime.convTstring(SB)								
  taskservice.go:911	0xe349a5		488d0d74df2000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:911	0xe349ac		48898c24d0000000	MOVQ CX, 0xd0(SP)									
  taskservice.go:911	0xe349b4		48898424d8000000	MOVQ AX, 0xd8(SP)									
  taskservice.go:911	0xe349bc		488b9424c0000000	MOVQ 0xc0(SP), DX									
  taskservice.go:911	0xe349c4		488b02			MOVQ 0(DX), AX										
  taskservice.go:911	0xe349c7		488b5a08		MOVQ 0x8(DX), BX									
  taskservice.go:911	0xe349cb		e8505763ff		CALL runtime.convTstring(SB)								
  taskservice.go:911	0xe349d0		488d0d49df2000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:911	0xe349d7		48898c24e0000000	MOVQ CX, 0xe0(SP)									
  taskservice.go:911	0xe349df		48898424e8000000	MOVQ AX, 0xe8(SP)									
  taskservice.go:911	0xe349e7		488b8424a8000000	MOVQ 0xa8(SP), AX									
  taskservice.go:911	0xe349ef		488b5c2468		MOVQ 0x68(SP), BX									
  taskservice.go:911	0xe349f4		488b4c2470		MOVQ 0x70(SP), CX									
  taskservice.go:911	0xe349f9		e8c25763ff		CALL runtime.convTslice(SB)								
  taskservice.go:911	0xe349fe		488d0d7b3f2000		LEAQ runtime.types+342400(SB), CX							
  taskservice.go:911	0xe34a05		48898c24f0000000	MOVQ CX, 0xf0(SP)									
  taskservice.go:911	0xe34a0d		48898424f8000000	MOVQ AX, 0xf8(SP)									
  print.go:233		0xe34a15		488b1d64d66d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe34a1c		488d05bd700302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe34a23		488d0dc8c33600		LEAQ go:string.*+231658(SB), CX								
  print.go:233		0xe34a2a		bf38000000		MOVL $__major_os_version__+50(SB), DI							
  print.go:233		0xe34a2f		488db424d0000000	LEAQ 0xd0(SP), SI									
  print.go:233		0xe34a37		41b803000000		MOVL $__subsystem__(SB), R8								
  print.go:233		0xe34a3d		4d89c1			MOVQ R8, R9										
  print.go:233		0xe34a40		e8dba76eff		CALL fmt.Fprintf(SB)									
  taskservice.go:913	0xe34a45		488bbc2418020000	MOVQ 0x218(SP), DI									
  taskservice.go:913	0xe34a4d		488b8c24c0000000	MOVQ 0xc0(SP), CX									
  taskservice.go:913	0xe34a55		488b31			MOVQ 0(CX), SI										
  taskservice.go:913	0xe34a58		4c8b4108		MOVQ 0x8(CX), R8									
  taskservice.go:913	0xe34a5c		488b842410020000	MOVQ 0x210(SP), AX									
  taskservice.go:913	0xe34a64		488b9c2490000000	MOVQ 0x90(SP), BX									
  taskservice.go:913	0xe34a6c		488b8c24c8000000	MOVQ 0xc8(SP), CX									
  taskservice.go:913	0xe34a74		e867020000		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).waitDockArrival(SB)			
  taskservice.go:914	0xe34a79		c644244f00		MOVB $0x0, 0x4f(SP)									
  taskservice.go:914	0xe34a7e		488b9424f8010000	MOVQ 0x1f8(SP), DX									
  taskservice.go:914	0xe34a86		488b0a			MOVQ 0(DX), CX										
  taskservice.go:914	0xe34a89		ffd1			CALL CX											
  taskservice.go:914	0xe34a8b		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:914	0xe34a92		5d			POPQ BP											
  taskservice.go:914	0xe34a93		c3			RET											
  taskservice.go:899	0xe34a94		488b4a08		MOVQ 0x8(DX), CX									
  taskservice.go:899	0xe34a98		488b1a			MOVQ 0(DX), BX										
  taskservice.go:899	0xe34a9b		0f1f440000		NOPL 0(AX)(AX*1)									
  taskservice.go:899	0xe34aa0		e81b1effff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle(SB)			
  taskservice.go:900	0xe34aa5		c644244f00		MOVB $0x0, 0x4f(SP)									
  taskservice.go:900	0xe34aaa		488b9424f8010000	MOVQ 0x1f8(SP), DX									
  taskservice.go:900	0xe34ab2		488b32			MOVQ 0(DX), SI										
  taskservice.go:900	0xe34ab5		ffd6			CALL SI											
  taskservice.go:900	0xe34ab7		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:900	0xe34abe		5d			POPQ BP											
  taskservice.go:900	0xe34abf		90			NOPL											
  taskservice.go:900	0xe34ac0		c3			RET											
  taskservice.go:882	0xe34ac1		440f11bc2448010000	MOVUPS X15, 0x148(SP)									
  taskservice.go:882	0xe34aca		440f11bc2458010000	MOVUPS X15, 0x158(SP)									
  taskservice.go:882	0xe34ad3		440f11bc2468010000	MOVUPS X15, 0x168(SP)									
  taskservice.go:882	0xe34adc		488b8c24c0000000	MOVQ 0xc0(SP), CX									
  taskservice.go:882	0xe34ae4		488b01			MOVQ 0(CX), AX										
  taskservice.go:882	0xe34ae7		488b5908		MOVQ 0x8(CX), BX									
  taskservice.go:882	0xe34aeb		e8305663ff		CALL runtime.convTstring(SB)								
  taskservice.go:882	0xe34af0		488d0d29de2000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:882	0xe34af7		48898c2448010000	MOVQ CX, 0x148(SP)									
  taskservice.go:882	0xe34aff		4889842450010000	MOVQ AX, 0x150(SP)									
  taskservice.go:882	0xe34b07		488b8424a0000000	MOVQ 0xa0(SP), AX									
  taskservice.go:882	0xe34b0f		488b5c2460		MOVQ 0x60(SP), BX									
  taskservice.go:882	0xe34b14		e8075663ff		CALL runtime.convTstring(SB)								
  taskservice.go:882	0xe34b19		488d0d00de2000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:882	0xe34b20		48898c2458010000	MOVQ CX, 0x158(SP)									
  taskservice.go:882	0xe34b28		4889842460010000	MOVQ AX, 0x160(SP)									
  taskservice.go:882	0xe34b30		488b842498000000	MOVQ 0x98(SP), AX									
  taskservice.go:882	0xe34b38		488b5c2458		MOVQ 0x58(SP), BX									
  taskservice.go:882	0xe34b3d		0f1f00			NOPL 0(AX)										
  taskservice.go:882	0xe34b40		e8db5563ff		CALL runtime.convTstring(SB)								
  taskservice.go:882	0xe34b45		488d0dd4dd2000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:882	0xe34b4c		48898c2468010000	MOVQ CX, 0x168(SP)									
  taskservice.go:882	0xe34b54		4889842470010000	MOVQ AX, 0x170(SP)									
  print.go:233		0xe34b5c		488b1d1dd56d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe34b63		488d05766f0302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe34b6a		488d0d72253700		LEAQ go:string.*+256987(SB), CX								
  print.go:233		0xe34b71		bf47000000		MOVL $__major_os_version__+65(SB), DI							
  print.go:233		0xe34b76		488db42448010000	LEAQ 0x148(SP), SI									
  print.go:233		0xe34b7e		41b803000000		MOVL $__subsystem__(SB), R8								
  print.go:233		0xe34b84		4d89c1			MOVQ R8, R9										
  print.go:233		0xe34b87		e894a66eff		CALL fmt.Fprintf(SB)									
  taskservice.go:883	0xe34b8c		488b8c2418020000	MOVQ 0x218(SP), CX									
  taskservice.go:883	0xe34b94		488b19			MOVQ 0(CX), BX										
  taskservice.go:883	0xe34b97		488b4908		MOVQ 0x8(CX), CX									
  taskservice.go:883	0xe34b9b		488b842410020000	MOVQ 0x210(SP), AX									
  taskservice.go:883	0xe34ba3		e8181dffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle(SB)			
  taskservice.go:884	0xe34ba8		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:884	0xe34baf		5d			POPQ BP											
  taskservice.go:884	0xe34bb0		c3			RET											
  taskservice.go:876	0xe34bb1		440f11bc2478010000	MOVUPS X15, 0x178(SP)									
  taskservice.go:876	0xe34bba		440f11bc2488010000	MOVUPS X15, 0x188(SP)									
  taskservice.go:876	0xe34bc3		488b8424a0000000	MOVQ 0xa0(SP), AX									
  taskservice.go:876	0xe34bcb		488b5c2460		MOVQ 0x60(SP), BX									
  taskservice.go:876	0xe34bd0		e84b5563ff		CALL runtime.convTstring(SB)								
  taskservice.go:876	0xe34bd5		488d0d44dd2000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:876	0xe34bdc		48898c2478010000	MOVQ CX, 0x178(SP)									
  taskservice.go:876	0xe34be4		4889842480010000	MOVQ AX, 0x180(SP)									
  taskservice.go:876	0xe34bec		488b942418020000	MOVQ 0x218(SP), DX									
  taskservice.go:876	0xe34bf4		488b02			MOVQ 0(DX), AX										
  taskservice.go:876	0xe34bf7		488b5a08		MOVQ 0x8(DX), BX									
  taskservice.go:876	0xe34bfb		0f1f440000		NOPL 0(AX)(AX*1)									
  taskservice.go:876	0xe34c00		e81b5563ff		CALL runtime.convTstring(SB)								
  taskservice.go:876	0xe34c05		488d0d14dd2000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:876	0xe34c0c		48898c2488010000	MOVQ CX, 0x188(SP)									
  taskservice.go:876	0xe34c14		4889842490010000	MOVQ AX, 0x190(SP)									
  print.go:233		0xe34c1c		488b1d5dd46d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe34c23		488d05b66e0302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe34c2a		488d0d71373700		LEAQ go:string.*+261786(SB), CX								
  print.go:233		0xe34c31		bf4d000000		MOVL $.file(SB), DI									
  print.go:233		0xe34c36		488db42478010000	LEAQ 0x178(SP), SI									
  print.go:233		0xe34c3e		41b802000000		MOVL $__minor_os_version__+1(SB), R8							
  print.go:233		0xe34c44		4d89c1			MOVQ R8, R9										
  print.go:233		0xe34c47		e8d4a56eff		CALL fmt.Fprintf(SB)									
  taskservice.go:877	0xe34c4c		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:877	0xe34c53		5d			POPQ BP											
  taskservice.go:877	0xe34c54		c3			RET											
  taskservice.go:877	0xe34c55		e8264f60ff		CALL runtime.deferreturn(SB)								
  taskservice.go:877	0xe34c5a		4881c400020000		ADDQ $__file_alignment__(SB), SP							
  taskservice.go:877	0xe34c61		5d			POPQ BP											
  taskservice.go:877	0xe34c62		c3			RET											
  taskservice.go:832	0xe34c63		4889442408		MOVQ AX, 0x8(SP)									
  taskservice.go:832	0xe34c68		48895c2410		MOVQ BX, 0x10(SP)									
  taskservice.go:832	0xe34c6d		e86e1864ff		CALL runtime.morestack_noctxt.abi0(SB)							
  taskservice.go:832	0xe34c72		488b442408		MOVQ 0x8(SP), AX									
  taskservice.go:832	0xe34c77		488b5c2410		MOVQ 0x10(SP), BX									
  taskservice.go:832	0xe34c7c		0f1f4000		NOPL 0(AX)										
  taskservice.go:832	0xe34c80		e91bf5ffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).runDockNavigation(SB)			
  :-1			0xe34c85		cc			INT $__subsystem__(SB)									
  :-1			0xe34c86		cc			INT $__subsystem__(SB)									
  :-1			0xe34c87		cc			INT $__subsystem__(SB)									
  :-1			0xe34c88		cc			INT $__subsystem__(SB)									
  :-1			0xe34c89		cc			INT $__subsystem__(SB)									
  :-1			0xe34c8a		cc			INT $__subsystem__(SB)									
  :-1			0xe34c8b		cc			INT $__subsystem__(SB)									
  :-1			0xe34c8c		cc			INT $__subsystem__(SB)									
  :-1			0xe34c8d		cc			INT $__subsystem__(SB)									
  :-1			0xe34c8e		cc			INT $__subsystem__(SB)									
  :-1			0xe34c8f		cc			INT $__subsystem__(SB)									
  :-1			0xe34c90		cc			INT $__subsystem__(SB)									
  :-1			0xe34c91		cc			INT $__subsystem__(SB)									
  :-1			0xe34c92		cc			INT $__subsystem__(SB)									
  :-1			0xe34c93		cc			INT $__subsystem__(SB)									
  :-1			0xe34c94		cc			INT $__subsystem__(SB)									
  :-1			0xe34c95		cc			INT $__subsystem__(SB)									
  :-1			0xe34c96		cc			INT $__subsystem__(SB)									
  :-1			0xe34c97		cc			INT $__subsystem__(SB)									
  :-1			0xe34c98		cc			INT $__subsystem__(SB)									
  :-1			0xe34c99		cc			INT $__subsystem__(SB)									
  :-1			0xe34c9a		cc			INT $__subsystem__(SB)									
  :-1			0xe34c9b		cc			INT $__subsystem__(SB)									
  :-1			0xe34c9c		cc			INT $__subsystem__(SB)									
  :-1			0xe34c9d		cc			INT $__subsystem__(SB)									
  :-1			0xe34c9e		cc			INT $__subsystem__(SB)									
  :-1			0xe34c9f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).runDockNavigation.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:889	0xe34ca0		493b6610		CMPQ SP, 0x10(R14)							
  taskservice.go:889	0xe34ca4		7629			JBE 0xe34ccf								
  taskservice.go:889	0xe34ca6		55			PUSHQ BP								
  taskservice.go:889	0xe34ca7		4889e5			MOVQ SP, BP								
  taskservice.go:889	0xe34caa		4883ec28		SUBQ $__major_os_version__+34(SB), SP					
  taskservice.go:889	0xe34cae		4c8b4210		MOVQ 0x10(DX), R8							
  taskservice.go:889	0xe34cb2		488b4208		MOVQ 0x8(DX), AX							
  taskservice.go:890	0xe34cb6		498b10			MOVQ 0(R8), DX								
  taskservice.go:890	0xe34cb9		488b1a			MOVQ 0(DX), BX								
  taskservice.go:890	0xe34cbc		488b4a08		MOVQ 0x8(DX), CX							
  taskservice.go:890	0xe34cc0		31ff			XORL DI, DI								
  taskservice.go:890	0xe34cc2		31f6			XORL SI, SI								
  taskservice.go:890	0xe34cc4		e8171effff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).setDockNavigating(SB)	
  taskservice.go:891	0xe34cc9		4883c428		ADDQ $__major_os_version__+34(SB), SP					
  taskservice.go:891	0xe34ccd		5d			POPQ BP									
  taskservice.go:891	0xe34cce		c3			RET									
  taskservice.go:889	0xe34ccf		e88c1764ff		CALL runtime.morestack.abi0(SB)						
  taskservice.go:889	0xe34cd4		ebca			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).runDockNavigation.func1(SB)	
  :-1			0xe34cd6		cc			INT $__subsystem__(SB)							
  :-1			0xe34cd7		cc			INT $__subsystem__(SB)							
  :-1			0xe34cd8		cc			INT $__subsystem__(SB)							
  :-1			0xe34cd9		cc			INT $__subsystem__(SB)							
  :-1			0xe34cda		cc			INT $__subsystem__(SB)							
  :-1			0xe34cdb		cc			INT $__subsystem__(SB)							
  :-1			0xe34cdc		cc			INT $__subsystem__(SB)							
  :-1			0xe34cdd		cc			INT $__subsystem__(SB)							
  :-1			0xe34cde		cc			INT $__subsystem__(SB)							
  :-1			0xe34cdf		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).waitDockArrival(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:916	0xe34ce0		4c8da42428ffffff	LEAQ 0xffffff28(SP), R12								
  taskservice.go:916	0xe34ce8		4d3b6610		CMPQ R12, 0x10(R14)									
  taskservice.go:916	0xe34cec		0f86dc060000		JBE 0xe353ce										
  taskservice.go:916	0xe34cf2		55			PUSHQ BP										
  taskservice.go:916	0xe34cf3		4889e5			MOVQ SP, BP										
  taskservice.go:916	0xe34cf6		4881ec50010000		SUBQ $.file+259(SB), SP									
  taskservice.go:916	0xe34cfd		66440fd6bc2448010000	MOVQ X15, 0x148(SP)									
  taskservice.go:921	0xe34d07		4889842460010000	MOVQ AX, 0x160(SP)									
  taskservice.go:921	0xe34d0f		4889bc2478010000	MOVQ DI, 0x178(SP)									
  taskservice.go:921	0xe34d17		48898c2470010000	MOVQ CX, 0x170(SP)									
  taskservice.go:921	0xe34d1f		48899c2468010000	MOVQ BX, 0x168(SP)									
  taskservice.go:921	0xe34d27		4c89842488010000	MOVQ R8, 0x188(SP)									
  taskservice.go:921	0xe34d2f		4889b42480010000	MOVQ SI, 0x180(SP)									
  taskservice.go:916	0xe34d37		c644243b00		MOVB $0x0, 0x3b(SP)									
  taskservice.go:917	0xe34d3c		b800943577		MOVL $0x77359400, AX									
  taskservice.go:917	0xe34d41		e89adf66ff		CALL time.NewTicker(SB)									
  taskservice.go:917	0xe34d46		4889442468		MOVQ AX, 0x68(SP)									
  taskservice.go:918	0xe34d4b		488d0dce060000		LEAQ CAS-Backend/pkg/diapdu.(*TaskScheduler).waitDockArrival.deferwrap1(SB), CX		
  taskservice.go:918	0xe34d52		48898c2430010000	MOVQ CX, 0x130(SP)									
  taskservice.go:918	0xe34d5a		4889842438010000	MOVQ AX, 0x138(SP)									
  taskservice.go:918	0xe34d62		488d8c2430010000	LEAQ 0x130(SP), CX									
  taskservice.go:918	0xe34d6a		48898c2448010000	MOVQ CX, 0x148(SP)									
  taskservice.go:918	0xe34d72		c644243b01		MOVB $__minor_os_version__(SB), 0x3b(SP)						
  taskservice.go:919	0xe34d77		90			NOPL											
  sleep.go:203		0xe34d78		48b8004071618c060000	MOVQ $0x68c61714000, AX									
  sleep.go:203		0xe34d82		e839da66ff		CALL time.NewTimer(SB)									
  sleep.go:203		0xe34d87		488b08			MOVQ 0(AX), CX										
  sleep.go:203		0xe34d8a		48894c2460		MOVQ CX, 0x60(SP)									
  taskservice.go:928	0xe34d8f		488b842478010000	MOVQ 0x178(SP), AX									
  taskservice.go:921	0xe34d97		eb08			JMP 0xe34da1										
  taskservice.go:928	0xe34d99		488b842440010000	MOVQ 0x140(SP), AX									
  taskservice.go:928	0xe34da1		4889842440010000	MOVQ AX, 0x140(SP)									
  taskservice.go:923	0xe34da9		488b8c2468010000	MOVQ 0x168(SP), CX									
  taskservice.go:923	0xe34db1		488b5120		MOVQ 0x20(CX), DX									
  taskservice.go:923	0xe34db5		488b842470010000	MOVQ 0x170(SP), AX									
  taskservice.go:923	0xe34dbd		ffd2			CALL DX											
  taskservice.go:930	0xe34dbf		488b4c2468		MOVQ 0x68(SP), CX									
  taskservice.go:930	0xe34dc4		488b11			MOVQ 0(CX), DX										
  taskservice.go:922	0xe34dc7		440f11bc2400010000	MOVUPS X15, 0x100(SP)									
  taskservice.go:922	0xe34dd0		440f11bc2410010000	MOVUPS X15, 0x110(SP)									
  taskservice.go:922	0xe34dd9		440f11bc2420010000	MOVUPS X15, 0x120(SP)									
  taskservice.go:923	0xe34de2		4889842420010000	MOVQ AX, 0x120(SP)									
  taskservice.go:927	0xe34dea		488b5c2460		MOVQ 0x60(SP), BX									
  taskservice.go:927	0xe34def		48899c2410010000	MOVQ BX, 0x110(SP)									
  taskservice.go:930	0xe34df7		4889942400010000	MOVQ DX, 0x100(SP)									
  taskservice.go:922	0xe34dff		488d842400010000	LEAQ 0x100(SP), AX									
  taskservice.go:922	0xe34e07		31ff			XORL DI, DI										
  taskservice.go:922	0xe34e09		be03000000		MOVL $__subsystem__(SB), SI								
  taskservice.go:922	0xe34e0e		41b801000000		MOVL $__minor_os_version__(SB), R8							
  taskservice.go:922	0xe34e14		488d5c243c		LEAQ 0x3c(SP), BX									
  taskservice.go:922	0xe34e19		31c9			XORL CX, CX										
  taskservice.go:922	0xe34e1b		0f1f440000		NOPL 0(AX)(AX*1)									
  taskservice.go:922	0xe34e20		e8db9661ff		CALL runtime.selectgo(SB)								
  taskservice.go:930	0xe34e25		4885c0			TESTQ AX, AX										
  taskservice.go:930	0xe34e28		0f859e030000		JNE 0xe351cc										
  taskservice.go:931	0xe34e2e		488bb42460010000	MOVQ 0x160(SP), SI									
  taskservice.go:931	0xe34e36		488b06			MOVQ 0(SI), AX										
  taskservice.go:931	0xe34e39		4885c0			TESTQ AX, AX										
  taskservice.go:931	0xe34e3c		750a			JNE 0xe34e48										
  taskservice.go:936	0xe34e3e		488b842440010000	MOVQ 0x140(SP), AX									
  taskservice.go:931	0xe34e46		eb31			JMP 0xe34e79										
  taskservice.go:932	0xe34e48		488b942440010000	MOVQ 0x140(SP), DX									
  taskservice.go:932	0xe34e50		488b4a08		MOVQ 0x8(DX), CX									
  taskservice.go:932	0xe34e54		488b1a			MOVQ 0(DX), BX										
  taskservice.go:932	0xe34e57		e824ef0000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift(SB)				
  taskservice.go:932	0xe34e5c		0f1f4000		NOPL 0(AX)										
  taskservice.go:932	0xe34e60		84db			TESTL BL, BL										
  taskservice.go:932	0xe34e62		7405			JE 0xe34e69										
  taskservice.go:932	0xe34e64		4885c0			TESTQ AX, AX										
  taskservice.go:932	0xe34e67		7508			JNE 0xe34e71										
  taskservice.go:936	0xe34e69		488b842440010000	MOVQ 0x140(SP), AX									
  taskservice.go:931	0xe34e71		488bb42460010000	MOVQ 0x160(SP), SI									
  taskservice.go:936	0xe34e79		4883785000		CMPQ 0x50(AX), $0x0									
  taskservice.go:936	0xe34e7e		6690			NOPW											
  taskservice.go:936	0xe34e80		0f852b030000		JNE 0xe351b1										
  taskservice.go:936	0xe34e86		4889842440010000	MOVQ AX, 0x140(SP)									
  taskservice.go:939	0xe34e8e		488b5808		MOVQ 0x8(AX), BX									
  taskservice.go:939	0xe34e92		488b10			MOVQ 0(AX), DX										
  taskservice.go:939	0xe34e95		488b4838		MOVQ 0x38(AX), CX									
  taskservice.go:939	0xe34e99		488b7840		MOVQ 0x40(AX), DI									
  taskservice.go:939	0xe34e9d		4889d0			MOVQ DX, AX										
  taskservice.go:939	0xe34ea0		e83b76ffff		CALL CAS-Backend/pkg/diapdu.currentStationForVehicle(SB)				
  taskservice.go:940	0xe34ea5		4885c9			TESTQ CX, CX										
  taskservice.go:940	0xe34ea8		740d			JE 0xe34eb7										
  taskservice.go:943	0xe34eaa		488b942488010000	MOVQ 0x188(SP), DX									
  taskservice.go:941	0xe34eb2		e9e2feffff		JMP 0xe34d99										
  taskservice.go:943	0xe34eb7		488b942488010000	MOVQ 0x188(SP), DX									
  taskservice.go:943	0xe34ebf		90			NOPL											
  taskservice.go:943	0xe34ec0		4839d3			CMPQ BX, DX										
  taskservice.go:943	0xe34ec3		0f85d0feffff		JNE 0xe34d99										
  taskservice.go:943	0xe34ec9		4889d9			MOVQ BX, CX										
  taskservice.go:943	0xe34ecc		488b9c2480010000	MOVQ 0x180(SP), BX									
  taskservice.go:943	0xe34ed4		e887df5cff		CALL runtime.memequal(SB)								
  taskservice.go:943	0xe34ed9		84c0			TESTL AL, AL										
  taskservice.go:943	0xe34edb		750d			JNE 0xe34eea										
  taskservice.go:943	0xe34edd		488b942488010000	MOVQ 0x188(SP), DX									
  taskservice.go:943	0xe34ee5		e9affeffff		JMP 0xe34d99										
  taskservice.go:944	0xe34eea		488b842460010000	MOVQ 0x160(SP), AX									
  taskservice.go:944	0xe34ef2		e8e90dffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).dockOccupancyIncludingLivePositions(SB)	
  taskservice.go:944	0xe34ef7		4889442470		MOVQ AX, 0x70(SP)									
  taskservice.go:944	0xe34efc		4889c3			MOVQ AX, BX										
  taskservice.go:944	0xe34eff		488b8c2480010000	MOVQ 0x180(SP), CX									
  taskservice.go:944	0xe34f07		488bbc2488010000	MOVQ 0x188(SP), DI									
  taskservice.go:944	0xe34f0f		488d050a8c2400		LEAQ runtime.types+625440(SB), AX							
  taskservice.go:944	0xe34f16		e825f45dff		CALL runtime.mapaccess1_faststr(SB)							
  taskservice.go:944	0xe34f1b		4883780800		CMPQ 0x8(AX), $0x0									
  taskservice.go:944	0xe34f20		750c			JNE 0xe34f2e										
  taskservice.go:950	0xe34f22		488b942440010000	MOVQ 0x140(SP), DX									
  taskservice.go:950	0xe34f2a		31c0			XORL AX, AX										
  taskservice.go:944	0xe34f2c		eb55			JMP 0xe34f83										
  taskservice.go:944	0xe34f2e		488d05eb8b2400		LEAQ runtime.types+625440(SB), AX							
  taskservice.go:944	0xe34f35		488b5c2470		MOVQ 0x70(SP), BX									
  taskservice.go:944	0xe34f3a		488b8c2480010000	MOVQ 0x180(SP), CX									
  taskservice.go:944	0xe34f42		488bbc2488010000	MOVQ 0x188(SP), DI									
  taskservice.go:944	0xe34f4a		e8f1f35dff		CALL runtime.mapaccess1_faststr(SB)							
  taskservice.go:944	0xe34f4f		488b4808		MOVQ 0x8(AX), CX									
  taskservice.go:944	0xe34f53		488b942440010000	MOVQ 0x140(SP), DX									
  taskservice.go:944	0xe34f5b		0f1f440000		NOPL 0(AX)(AX*1)									
  taskservice.go:944	0xe34f60		48394a08		CMPQ 0x8(DX), CX									
  taskservice.go:944	0xe34f64		7407			JE 0xe34f6d										
  taskservice.go:944	0xe34f66		b801000000		MOVL $__minor_os_version__(SB), AX							
  taskservice.go:944	0xe34f6b		eb16			JMP 0xe34f83										
  taskservice.go:944	0xe34f6d		488b00			MOVQ 0(AX), AX										
  taskservice.go:944	0xe34f70		488b1a			MOVQ 0(DX), BX										
  taskservice.go:944	0xe34f73		e8e8de5cff		CALL runtime.memequal(SB)								
  taskservice.go:944	0xe34f78		83f001			XORL $__minor_os_version__(SB), AX							
  taskservice.go:950	0xe34f7b		488b942440010000	MOVQ 0x140(SP), DX									
  taskservice.go:944	0xe34f83		84c0			TESTL AL, AL										
  taskservice.go:944	0xe34f85		0f85ec000000		JNE 0xe35077										
  taskservice.go:950	0xe34f8b		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)									
  taskservice.go:950	0xe34f94		440f11bc24c0000000	MOVUPS X15, 0xc0(SP)									
  taskservice.go:950	0xe34f9d		488b02			MOVQ 0(DX), AX										
  taskservice.go:950	0xe34fa0		488b5a08		MOVQ 0x8(DX), BX									
  taskservice.go:950	0xe34fa4		e8775163ff		CALL runtime.convTstring(SB)								
  taskservice.go:950	0xe34fa9		488d0d70d92000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:950	0xe34fb0		48898c24b0000000	MOVQ CX, 0xb0(SP)									
  taskservice.go:950	0xe34fb8		48898424b8000000	MOVQ AX, 0xb8(SP)									
  taskservice.go:950	0xe34fc0		488b842480010000	MOVQ 0x180(SP), AX									
  taskservice.go:950	0xe34fc8		488b9c2488010000	MOVQ 0x188(SP), BX									
  taskservice.go:950	0xe34fd0		e84b5163ff		CALL runtime.convTstring(SB)								
  taskservice.go:950	0xe34fd5		488d0d44d92000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:950	0xe34fdc		48898c24c0000000	MOVQ CX, 0xc0(SP)									
  taskservice.go:950	0xe34fe4		48898424c8000000	MOVQ AX, 0xc8(SP)									
  print.go:233		0xe34fec		488b1d8dd06d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe34ff3		488d05e66a0302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe34ffa		488d0d951a3600		LEAQ go:string.*+189838(SB), CX								
  print.go:233		0xe35001		bf29000000		MOVL $__major_os_version__+35(SB), DI							
  print.go:233		0xe35006		488db424b0000000	LEAQ 0xb0(SP), SI									
  print.go:233		0xe3500e		41b802000000		MOVL $__minor_os_version__+1(SB), R8							
  print.go:233		0xe35014		4d89c1			MOVQ R8, R9										
  print.go:233		0xe35017		e804a26eff		CALL fmt.Fprintf(SB)									
  taskservice.go:951	0xe3501c		488b8c2440010000	MOVQ 0x140(SP), CX									
  taskservice.go:951	0xe35024		488b19			MOVQ 0(CX), BX										
  taskservice.go:951	0xe35027		488b5108		MOVQ 0x8(CX), DX									
  taskservice.go:951	0xe3502b		488b842460010000	MOVQ 0x160(SP), AX									
  taskservice.go:951	0xe35033		488bbc2480010000	MOVQ 0x180(SP), DI									
  taskservice.go:951	0xe3503b		488bb42488010000	MOVQ 0x188(SP), SI									
  taskservice.go:951	0xe35043		4889d1			MOVQ DX, CX										
  taskservice.go:951	0xe35046		e8751effff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).claimDockIfParked(SB)			
  taskservice.go:952	0xe3504b		488b8c2460010000	MOVQ 0x160(SP), CX									
  taskservice.go:952	0xe35053		488b4940		MOVQ 0x40(CX), CX									
  taskservice.go:952	0xe35057		488b11			MOVQ 0(CX), DX										
  taskservice.go:952	0xe3505a		4889542478		MOVQ DX, 0x78(SP)									
  taskservice.go:952	0xe3505f		488b4908		MOVQ 0x8(CX), CX									
  taskservice.go:952	0xe35063		48894c2448		MOVQ CX, 0x48(SP)									
  diaodu.go:338		0xe35068		488bb42488010000	MOVQ 0x188(SP), SI									
  diaodu.go:338		0xe35070		31c0			XORL AX, AX										
  diaodu.go:338		0xe35072		e9b2020000		JMP 0xe35329										
  taskservice.go:945	0xe35077		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)									
  taskservice.go:945	0xe35080		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)									
  taskservice.go:945	0xe35089		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)									
  taskservice.go:945	0xe35092		488b02			MOVQ 0(DX), AX										
  taskservice.go:945	0xe35095		488b5a08		MOVQ 0x8(DX), BX									
  taskservice.go:945	0xe35099		e8825063ff		CALL runtime.convTstring(SB)								
  taskservice.go:945	0xe3509e		488d0d7bd82000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:945	0xe350a5		48898c24d0000000	MOVQ CX, 0xd0(SP)									
  taskservice.go:945	0xe350ad		48898424d8000000	MOVQ AX, 0xd8(SP)									
  taskservice.go:945	0xe350b5		488b842480010000	MOVQ 0x180(SP), AX									
  taskservice.go:945	0xe350bd		488b9c2488010000	MOVQ 0x188(SP), BX									
  taskservice.go:945	0xe350c5		e8565063ff		CALL runtime.convTstring(SB)								
  taskservice.go:945	0xe350ca		488d0d4fd82000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:945	0xe350d1		48898c24e0000000	MOVQ CX, 0xe0(SP)									
  taskservice.go:945	0xe350d9		48898424e8000000	MOVQ AX, 0xe8(SP)									
  taskservice.go:945	0xe350e1		488d05388a2400		LEAQ runtime.types+625440(SB), AX							
  taskservice.go:945	0xe350e8		488b5c2470		MOVQ 0x70(SP), BX									
  taskservice.go:945	0xe350ed		488bbc2488010000	MOVQ 0x188(SP), DI									
  taskservice.go:945	0xe350f5		488b8c2480010000	MOVQ 0x180(SP), CX									
  taskservice.go:945	0xe350fd		0f1f00			NOPL 0(AX)										
  taskservice.go:945	0xe35100		e83bf25dff		CALL runtime.mapaccess1_faststr(SB)							
  taskservice.go:945	0xe35105		488b08			MOVQ 0(AX), CX										
  taskservice.go:945	0xe35108		488b5808		MOVQ 0x8(AX), BX									
  taskservice.go:945	0xe3510c		4889c8			MOVQ CX, AX										
  taskservice.go:945	0xe3510f		e80c5063ff		CALL runtime.convTstring(SB)								
  taskservice.go:945	0xe35114		488d0d05d82000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:945	0xe3511b		48898c24f0000000	MOVQ CX, 0xf0(SP)									
  taskservice.go:945	0xe35123		48898424f8000000	MOVQ AX, 0xf8(SP)									
  print.go:233		0xe3512b		488b1d4ecf6d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe35132		488d05a7690302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe35139		488d0d121c3700		LEAQ go:string.*+256074(SB), CX								
  print.go:233		0xe35140		bf46000000		MOVL $__major_os_version__+64(SB), DI							
  print.go:233		0xe35145		488db424d0000000	LEAQ 0xd0(SP), SI									
  print.go:233		0xe3514d		41b803000000		MOVL $__subsystem__(SB), R8								
  print.go:233		0xe35153		4d89c1			MOVQ R8, R9										
  print.go:233		0xe35156		e8c5a06eff		CALL fmt.Fprintf(SB)									
  taskservice.go:946	0xe3515b		488b8c2440010000	MOVQ 0x140(SP), CX									
  taskservice.go:946	0xe35163		488b19			MOVQ 0(CX), BX										
  taskservice.go:946	0xe35166		488b5108		MOVQ 0x8(CX), DX									
  taskservice.go:946	0xe3516a		488b842460010000	MOVQ 0x160(SP), AX									
  taskservice.go:946	0xe35172		4889d1			MOVQ DX, CX										
  taskservice.go:946	0xe35175		e84617ffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle(SB)			
  taskservice.go:947	0xe3517a		488b8c2440010000	MOVQ 0x140(SP), CX									
  taskservice.go:947	0xe35182		488b19			MOVQ 0(CX), BX										
  taskservice.go:947	0xe35185		488b4908		MOVQ 0x8(CX), CX									
  taskservice.go:947	0xe35189		488b842460010000	MOVQ 0x160(SP), AX									
  taskservice.go:947	0xe35191		e80aeeffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).moveForkliftToNearestPPDock(SB)		
  taskservice.go:948	0xe35196		c644243b00		MOVB $0x0, 0x3b(SP)									
  taskservice.go:948	0xe3519b		488b942448010000	MOVQ 0x148(SP), DX									
  taskservice.go:948	0xe351a3		488b0a			MOVQ 0(DX), CX										
  taskservice.go:948	0xe351a6		ffd1			CALL CX											
  taskservice.go:948	0xe351a8		4881c450010000		ADDQ $.file+259(SB), SP									
  taskservice.go:948	0xe351af		5d			POPQ BP											
  taskservice.go:948	0xe351b0		c3			RET											
  taskservice.go:937	0xe351b1		c644243b00		MOVB $0x0, 0x3b(SP)									
  taskservice.go:937	0xe351b6		488b942448010000	MOVQ 0x148(SP), DX									
  taskservice.go:937	0xe351be		488b02			MOVQ 0(DX), AX										
  taskservice.go:937	0xe351c1		ffd0			CALL AX											
  taskservice.go:937	0xe351c3		4881c450010000		ADDQ $.file+259(SB), SP									
  taskservice.go:937	0xe351ca		5d			POPQ BP											
  taskservice.go:937	0xe351cb		c3			RET											
  taskservice.go:927	0xe351cc		4883f801		CMPQ AX, $__minor_os_version__(SB)							
  taskservice.go:927	0xe351d0		0f85b5000000		JNE 0xe3528b										
  taskservice.go:928	0xe351d6		440f11bc2490000000	MOVUPS X15, 0x90(SP)									
  taskservice.go:928	0xe351df		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)									
  taskservice.go:928	0xe351e8		488b8c2440010000	MOVQ 0x140(SP), CX									
  taskservice.go:928	0xe351f0		488b01			MOVQ 0(CX), AX										
  taskservice.go:928	0xe351f3		488b5908		MOVQ 0x8(CX), BX									
  taskservice.go:928	0xe351f7		e8244f63ff		CALL runtime.convTstring(SB)								
  taskservice.go:928	0xe351fc		488d0d1dd72000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:928	0xe35203		48898c2490000000	MOVQ CX, 0x90(SP)									
  taskservice.go:928	0xe3520b		4889842498000000	MOVQ AX, 0x98(SP)									
  taskservice.go:928	0xe35213		488b842480010000	MOVQ 0x180(SP), AX									
  taskservice.go:928	0xe3521b		488b9c2488010000	MOVQ 0x188(SP), BX									
  taskservice.go:928	0xe35223		e8f84e63ff		CALL runtime.convTstring(SB)								
  taskservice.go:928	0xe35228		488d0df1d62000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:928	0xe3522f		48898c24a0000000	MOVQ CX, 0xa0(SP)									
  taskservice.go:928	0xe35237		48898424a8000000	MOVQ AX, 0xa8(SP)									
  print.go:233		0xe3523f		488b1d3ace6d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe35246		488d0593680302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe3524d		488d0db6c83500		LEAQ go:string.*+169474(SB), CX								
  print.go:233		0xe35254		bf24000000		MOVL $__major_os_version__+30(SB), DI							
  print.go:233		0xe35259		488db42490000000	LEAQ 0x90(SP), SI									
  print.go:233		0xe35261		41b802000000		MOVL $__minor_os_version__+1(SB), R8							
  print.go:233		0xe35267		4d89c1			MOVQ R8, R9										
  print.go:233		0xe3526a		e8b19f6eff		CALL fmt.Fprintf(SB)									
  taskservice.go:929	0xe3526f		c644243b00		MOVB $0x0, 0x3b(SP)									
  taskservice.go:929	0xe35274		488b942448010000	MOVQ 0x148(SP), DX									
  taskservice.go:929	0xe3527c		488b0a			MOVQ 0(DX), CX										
  taskservice.go:929	0xe3527f		90			NOPL											
  taskservice.go:929	0xe35280		ffd1			CALL CX											
  taskservice.go:929	0xe35282		4881c450010000		ADDQ $.file+259(SB), SP									
  taskservice.go:929	0xe35289		5d			POPQ BP											
  taskservice.go:929	0xe3528a		c3			RET											
  taskservice.go:924	0xe3528b		440f11bc2480000000	MOVUPS X15, 0x80(SP)									
  taskservice.go:924	0xe35294		488b8c2440010000	MOVQ 0x140(SP), CX									
  taskservice.go:924	0xe3529c		488b01			MOVQ 0(CX), AX										
  taskservice.go:924	0xe3529f		488b5908		MOVQ 0x8(CX), BX									
  taskservice.go:924	0xe352a3		e8784e63ff		CALL runtime.convTstring(SB)								
  taskservice.go:924	0xe352a8		488d0d71d62000		LEAQ runtime.types+383264(SB), CX							
  taskservice.go:924	0xe352af		48898c2480000000	MOVQ CX, 0x80(SP)									
  taskservice.go:924	0xe352b7		4889842488000000	MOVQ AX, 0x88(SP)									
  print.go:233		0xe352bf		488b1dbacd6d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe352c6		488d0513680302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe352cd		488d0deb173600		LEAQ go:string.*+189879(SB), CX								
  print.go:233		0xe352d4		bf29000000		MOVL $__major_os_version__+35(SB), DI							
  print.go:233		0xe352d9		488db42480000000	LEAQ 0x80(SP), SI									
  print.go:233		0xe352e1		41b801000000		MOVL $__minor_os_version__(SB), R8							
  print.go:233		0xe352e7		4d89c1			MOVQ R8, R9										
  print.go:233		0xe352ea		e8319f6eff		CALL fmt.Fprintf(SB)									
  taskservice.go:925	0xe352ef		488b8c2440010000	MOVQ 0x140(SP), CX									
  taskservice.go:925	0xe352f7		488b19			MOVQ 0(CX), BX										
  taskservice.go:925	0xe352fa		488b4908		MOVQ 0x8(CX), CX									
  taskservice.go:925	0xe352fe		488b842460010000	MOVQ 0x160(SP), AX									
  taskservice.go:925	0xe35306		e8b515ffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).releaseDockForVehicle(SB)			
  taskservice.go:926	0xe3530b		c644243b00		MOVB $0x0, 0x3b(SP)									
  taskservice.go:926	0xe35310		488b942448010000	MOVQ 0x148(SP), DX									
  taskservice.go:926	0xe35318		488b0a			MOVQ 0(DX), CX										
  taskservice.go:926	0xe3531b		ffd1			CALL CX											
  taskservice.go:926	0xe3531d		4881c450010000		ADDQ $.file+259(SB), SP									
  taskservice.go:926	0xe35324		5d			POPQ BP											
  taskservice.go:926	0xe35325		c3			RET											
  diaodu.go:338		0xe35326		48ffc0			INCQ AX											
  diaodu.go:338		0xe35329		4839c8			CMPQ AX, CX										
  diaodu.go:338		0xe3532c		7d4e			JGE 0xe3537c										
  diaodu.go:338		0xe3532e		488b3cc2		MOVQ 0(DX)(AX*8), DI									
  diaodu.go:339		0xe35332		4c8b4708		MOVQ 0x8(DI), R8									
  diaodu.go:339		0xe35336		4c39c6			CMPQ SI, R8										
  diaodu.go:339		0xe35339		75eb			JNE 0xe35326										
  diaodu.go:338		0xe3533b		4889442450		MOVQ AX, 0x50(SP)									
  diaodu.go:338		0xe35340		48897c2458		MOVQ DI, 0x58(SP)									
  diaodu.go:339		0xe35345		488b07			MOVQ 0(DI), AX										
  diaodu.go:339		0xe35348		488b9c2480010000	MOVQ 0x180(SP), BX									
  diaodu.go:339		0xe35350		4c89c1			MOVQ R8, CX										
  diaodu.go:339		0xe35353		e808db5cff		CALL runtime.memequal(SB)								
  diaodu.go:339		0xe35358		84c0			TESTL AL, AL										
  diaodu.go:339		0xe3535a		7519			JNE 0xe35375										
  diaodu.go:338		0xe3535c		488b442450		MOVQ 0x50(SP), AX									
  diaodu.go:338		0xe35361		488b4c2448		MOVQ 0x48(SP), CX									
  diaodu.go:338		0xe35366		488b542478		MOVQ 0x78(SP), DX									
  diaodu.go:339		0xe3536b		488bb42488010000	MOVQ 0x188(SP), SI									
  diaodu.go:339		0xe35373		ebb1			JMP 0xe35326										
  taskservice.go:952	0xe35375		488b442458		MOVQ 0x58(SP), AX									
  taskservice.go:952	0xe3537a		eb04			JMP 0xe35380										
  taskservice.go:952	0xe3537c		31c0			XORL AX, AX										
  taskservice.go:952	0xe3537e		6690			NOPW											
  taskservice.go:952	0xe35380		4885c0			TESTQ AX, AX										
  taskservice.go:952	0xe35383		741c			JE 0xe353a1										
  taskservice.go:953	0xe35385		f20f104010		MOVSD_XMM 0x10(AX), X0									
  taskservice.go:953	0xe3538a		488b8c2440010000	MOVQ 0x140(SP), CX									
  taskservice.go:953	0xe35392		f20f114128		MOVSD_XMM X0, 0x28(CX)									
  taskservice.go:954	0xe35397		f20f104018		MOVSD_XMM 0x18(AX), X0									
  taskservice.go:954	0xe3539c		f20f114130		MOVSD_XMM X0, 0x30(CX)									
  taskservice.go:956	0xe353a1		c644243b00		MOVB $0x0, 0x3b(SP)									
  taskservice.go:956	0xe353a6		488b942448010000	MOVQ 0x148(SP), DX									
  taskservice.go:956	0xe353ae		488b02			MOVQ 0(DX), AX										
  taskservice.go:956	0xe353b1		ffd0			CALL AX											
  taskservice.go:956	0xe353b3		4881c450010000		ADDQ $.file+259(SB), SP									
  taskservice.go:956	0xe353ba		5d			POPQ BP											
  taskservice.go:956	0xe353bb		c3			RET											
  taskservice.go:956	0xe353bc		0f1f4000		NOPL 0(AX)										
  taskservice.go:956	0xe353c0		e8bb4760ff		CALL runtime.deferreturn(SB)								
  taskservice.go:956	0xe353c5		4881c450010000		ADDQ $.file+259(SB), SP									
  taskservice.go:956	0xe353cc		5d			POPQ BP											
  taskservice.go:956	0xe353cd		c3			RET											
  taskservice.go:916	0xe353ce		4889442408		MOVQ AX, 0x8(SP)									
  taskservice.go:916	0xe353d3		48895c2410		MOVQ BX, 0x10(SP)									
  taskservice.go:916	0xe353d8		48894c2418		MOVQ CX, 0x18(SP)									
  taskservice.go:916	0xe353dd		48897c2420		MOVQ DI, 0x20(SP)									
  taskservice.go:916	0xe353e2		4889742428		MOVQ SI, 0x28(SP)									
  taskservice.go:916	0xe353e7		4c89442430		MOVQ R8, 0x30(SP)									
  taskservice.go:916	0xe353ec		e8ef1064ff		CALL runtime.morestack_noctxt.abi0(SB)							
  taskservice.go:916	0xe353f1		488b442408		MOVQ 0x8(SP), AX									
  taskservice.go:916	0xe353f6		488b5c2410		MOVQ 0x10(SP), BX									
  taskservice.go:916	0xe353fb		488b4c2418		MOVQ 0x18(SP), CX									
  taskservice.go:916	0xe35400		488b7c2420		MOVQ 0x20(SP), DI									
  taskservice.go:916	0xe35405		488b742428		MOVQ 0x28(SP), SI									
  taskservice.go:916	0xe3540a		4c8b442430		MOVQ 0x30(SP), R8									
  taskservice.go:916	0xe3540f		e9ccf8ffff		JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).waitDockArrival(SB)				
  :-1			0xe35414		cc			INT $__subsystem__(SB)									
  :-1			0xe35415		cc			INT $__subsystem__(SB)									
  :-1			0xe35416		cc			INT $__subsystem__(SB)									
  :-1			0xe35417		cc			INT $__subsystem__(SB)									
  :-1			0xe35418		cc			INT $__subsystem__(SB)									
  :-1			0xe35419		cc			INT $__subsystem__(SB)									
  :-1			0xe3541a		cc			INT $__subsystem__(SB)									
  :-1			0xe3541b		cc			INT $__subsystem__(SB)									
  :-1			0xe3541c		cc			INT $__subsystem__(SB)									
  :-1			0xe3541d		cc			INT $__subsystem__(SB)									
  :-1			0xe3541e		cc			INT $__subsystem__(SB)									
  :-1			0xe3541f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TaskScheduler).waitDockArrival.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:918	0xe35420		493b6610		CMPQ SP, 0x10(R14)								
  taskservice.go:918	0xe35424		7627			JBE 0xe3544d									
  taskservice.go:918	0xe35426		55			PUSHQ BP									
  taskservice.go:918	0xe35427		4889e5			MOVQ SP, BP									
  taskservice.go:918	0xe3542a		4883ec08		SUBQ $__major_os_version__+2(SB), SP						
  taskservice.go:918	0xe3542e		4d8b6620		MOVQ 0x20(R14), R12								
  taskservice.go:918	0xe35432		4d85e4			TESTQ R12, R12									
  taskservice.go:918	0xe35435		751d			JNE 0xe35454									
  taskservice.go:918	0xe35437		488b4208		MOVQ 0x8(DX), AX								
  tick.go:53		0xe3543b		80780800		CMPB 0x8(AX), $0x0								
  tick.go:53		0xe3543f		90			NOPL										
  tick.go:53		0xe35440		7405			JE 0xe35447									
  tick.go:59		0xe35442		e839ef63ff		CALL time.stopTimer(SB)								
  taskservice.go:918	0xe35447		4883c408		ADDQ $__major_os_version__+2(SB), SP						
  taskservice.go:918	0xe3544b		5d			POPQ BP										
  taskservice.go:918	0xe3544c		c3			RET										
  taskservice.go:918	0xe3544d		e80e1064ff		CALL runtime.morestack.abi0(SB)							
  taskservice.go:918	0xe35452		ebcc			JMP CAS-Backend/pkg/diapdu.(*TaskScheduler).waitDockArrival.deferwrap1(SB)	
  taskservice.go:918	0xe35454		4c8d6c2418		LEAQ 0x18(SP), R13								
  taskservice.go:918	0xe35459		4d392c24		CMPQ 0(R12), R13								
  taskservice.go:918	0xe3545d		75d8			JNE 0xe35437									
  taskservice.go:918	0xe3545f		49892424		MOVQ SP, 0(R12)									
  taskservice.go:918	0xe35463		ebd2			JMP 0xe35437									
  :-1			0xe35465		cc			INT $__subsystem__(SB)								
  :-1			0xe35466		cc			INT $__subsystem__(SB)								
  :-1			0xe35467		cc			INT $__subsystem__(SB)								
  :-1			0xe35468		cc			INT $__subsystem__(SB)								
  :-1			0xe35469		cc			INT $__subsystem__(SB)								
  :-1			0xe3546a		cc			INT $__subsystem__(SB)								
  :-1			0xe3546b		cc			INT $__subsystem__(SB)								
  :-1			0xe3546c		cc			INT $__subsystem__(SB)								
  :-1			0xe3546d		cc			INT $__subsystem__(SB)								
  :-1			0xe3546e		cc			INT $__subsystem__(SB)								
  :-1			0xe3546f		cc			INT $__subsystem__(SB)								
  :-1			0xe35470		cc			INT $__subsystem__(SB)								
  :-1			0xe35471		cc			INT $__subsystem__(SB)								
  :-1			0xe35472		cc			INT $__subsystem__(SB)								
  :-1			0xe35473		cc			INT $__subsystem__(SB)								
  :-1			0xe35474		cc			INT $__subsystem__(SB)								
  :-1			0xe35475		cc			INT $__subsystem__(SB)								
  :-1			0xe35476		cc			INT $__subsystem__(SB)								
  :-1			0xe35477		cc			INT $__subsystem__(SB)								
  :-1			0xe35478		cc			INT $__subsystem__(SB)								
  :-1			0xe35479		cc			INT $__subsystem__(SB)								
  :-1			0xe3547a		cc			INT $__subsystem__(SB)								
  :-1			0xe3547b		cc			INT $__subsystem__(SB)								
  :-1			0xe3547c		cc			INT $__subsystem__(SB)								
  :-1			0xe3547d		cc			INT $__subsystem__(SB)								
  :-1			0xe3547e		cc			INT $__subsystem__(SB)								
  :-1			0xe3547f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.StartAutoTaskScheduler(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:1022		0xe35480		4c8da42478ffffff	LEAQ 0xffffff78(SP), R12							
  taskservice.go:1022		0xe35488		4d3b6610		CMPQ R12, 0x10(R14)								
  taskservice.go:1022		0xe3548c		0f862b060000		JBE 0xe35abd									
  taskservice.go:1022		0xe35492		55			PUSHQ BP									
  taskservice.go:1022		0xe35493		4889e5			MOVQ SP, BP									
  taskservice.go:1022		0xe35496		4881ec00010000		SUBQ $.file+179(SB), SP								
  taskservice.go:1022		0xe3549d		66440fd6bc24f8000000	MOVQ X15, 0xf8(SP)								
  mutex.go:85			0xe354a7		4889842410010000	MOVQ AX, 0x110(SP)								
  mutex.go:85			0xe354af		48899c2418010000	MOVQ BX, 0x118(SP)								
  taskservice.go:1022		0xe354b7		c644243f00		MOVB $0x0, 0x3f(SP)								
  taskservice.go:1022		0xe354bc		c644243e00		MOVB $0x0, 0x3e(SP)								
  taskservice.go:1022		0xe354c1		440f117c2460		MOVUPS X15, 0x60(SP)								
  taskservice.go:1023		0xe354c7		90			NOPL										
  mutex.go:85			0xe354c8		4889c1			MOVQ AX, CX									
  mutex.go:85			0xe354cb		31c0			XORL AX, AX									
  mutex.go:85			0xe354cd		4c8d05ec7e7202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), R8				
  mutex.go:85			0xe354d4		41b901000000		MOVL $__minor_os_version__(SB), R9						
  mutex.go:85			0xe354da		f0450fb108		LOCK CMPXCHGL R9, 0(R8)								
  mutex.go:85			0xe354df		410f94c0		SETE R8										
  mutex.go:85			0xe354e3		4584c0			TESTL R8, R8									
  mutex.go:85			0xe354e6		751c			JNE 0xe35504									
  mutex.go:92			0xe354e8		488d05d17e7202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), AX				
  mutex.go:92			0xe354ef		e82c2565ff		CALL sync.(*Mutex).lockSlow(SB)							
  vehservice.go:41		0xe354f4		488b8c2410010000	MOVQ 0x110(SP), CX								
  taskservice.go:40		0xe354fc		488b9c2418010000	MOVQ 0x118(SP), BX								
  taskservice.go:1024		0xe35504		4c8d05d5050000		LEAQ CAS-Backend/pkg/diapdu.StartAutoTaskScheduler.deferwrap1(SB), R8		
  taskservice.go:1024		0xe3550b		4c898424e8000000	MOVQ R8, 0xe8(SP)								
  taskservice.go:1024		0xe35513		4c8d05a67e7202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), R8				
  taskservice.go:1024		0xe3551a		4c898424f0000000	MOVQ R8, 0xf0(SP)								
  taskservice.go:1024		0xe35522		4c8d8424e8000000	LEAQ 0xe8(SP), R8								
  taskservice.go:1024		0xe3552a		4c898424f8000000	MOVQ R8, 0xf8(SP)								
  taskservice.go:1024		0xe35532		c644243f01		MOVB $__minor_os_version__(SB), 0x3f(SP)					
  taskservice.go:1025		0xe35537		803d6a7d720200		CMPB CAS-Backend/pkg/diapdu.autoScheduleRunning(SB), $0x0			
  taskservice.go:1025		0xe3553e		6690			NOPW										
  taskservice.go:1025		0xe35540		0f8521050000		JNE 0xe35a67									
  diaodu.go:108			0xe35546		90			NOPL										
  type.go:17			0xe35547		8b15b37d7202		MOVL CAS-Backend/pkg/diapdu.graphReady(SB), DX					
  type.go:17			0xe3554d		85d2			TESTL DX, DX									
  taskservice.go:1028		0xe3554f		0f84c0040000		JE 0xe35a15									
  taskservice.go:1031		0xe35555		e8a6e3feff		CALL CAS-Backend/pkg/diapdu.GetGraph(SB)					
  taskservice.go:1031		0xe3555a		660f1f440000		NOPW 0(AX)(AX*1)								
  taskservice.go:1032		0xe35560		4885c0			TESTQ AX, AX									
  taskservice.go:1032		0xe35563		0f845a040000		JE 0xe359c3									
  taskservice.go:1031		0xe35569		4889442450		MOVQ AX, 0x50(SP)								
  vehservice.go:43		0xe3556e		488d056bf72000		LEAQ runtime.types+392416(SB), AX						
  vehservice.go:43		0xe35575		31db			XORL BX, BX									
  vehservice.go:43		0xe35577		e8c4435dff		CALL runtime.makechan(SB)							
  vehservice.go:43		0xe3557c		48898424c0000000	MOVQ AX, 0xc0(SP)								
  vehservice.go:44		0xe35584		e8575a63ff		CALL runtime.makemap_small(SB)							
  vehservice.go:44		0xe35589		48898424b8000000	MOVQ AX, 0xb8(SP)								
  vehservice.go:45		0xe35591		e84a5a63ff		CALL runtime.makemap_small(SB)							
  vehservice.go:45		0xe35596		48898424b0000000	MOVQ AX, 0xb0(SP)								
  vehservice.go:40		0xe3559e		488d051b0e2e00		LEAQ runtime.types+1250240(SB), AX						
  vehservice.go:40		0xe355a5		e8f6c15dff		CALL runtime.newobject(SB)							
  vehservice.go:41		0xe355aa		488b8c2410010000	MOVQ 0x110(SP), CX								
  vehservice.go:41		0xe355b2		488908			MOVQ CX, 0(AX)									
  vehservice.go:42		0xe355b5		c6400801		MOVB $__minor_os_version__(SB), 0x8(AX)						
  vehservice.go:43		0xe355b9		833d9085720200		CMPL runtime.writeBarrier(SB), $0x0						
  vehservice.go:43		0xe355c0		751e			JNE 0xe355e0									
  vehservice.go:43		0xe355c2		488b8c24c0000000	MOVQ 0xc0(SP), CX								
  vehservice.go:44		0xe355ca		488b9424b8000000	MOVQ 0xb8(SP), DX								
  vehservice.go:45		0xe355d2		488b9c24b0000000	MOVQ 0xb0(SP), BX								
  vehservice.go:43		0xe355da		eb3b			JMP 0xe35617									
  vehservice.go:43		0xe355dc		0f1f4000		NOPL 0(AX)									
  vehservice.go:43		0xe355e0		e8bb2e64ff		CALL runtime.gcWriteBarrier5(SB)						
  vehservice.go:43		0xe355e5		488b8c24c0000000	MOVQ 0xc0(SP), CX								
  vehservice.go:43		0xe355ed		49890b			MOVQ CX, 0(R11)									
  vehservice.go:44		0xe355f0		488b9424b8000000	MOVQ 0xb8(SP), DX								
  vehservice.go:44		0xe355f8		49895308		MOVQ DX, 0x8(R11)								
  vehservice.go:45		0xe355fc		488b9c24b0000000	MOVQ 0xb0(SP), BX								
  vehservice.go:45		0xe35604		49895b10		MOVQ BX, 0x10(R11)								
  taskservice.go:1035		0xe35608		49894318		MOVQ AX, 0x18(R11)								
  taskservice.go:1035		0xe3560c		488b353dca6d02		MOVQ CAS-Backend/pkg/diapdu.globalForkliftUpdater(SB), SI			
  taskservice.go:1035		0xe35613		49897320		MOVQ SI, 0x20(R11)								
  vehservice.go:43		0xe35617		48894810		MOVQ CX, 0x10(AX)								
  vehservice.go:44		0xe3561b		48895030		MOVQ DX, 0x30(AX)								
  vehservice.go:45		0xe3561f		48895838		MOVQ BX, 0x38(AX)								
  vehservice.go:46		0xe35623		48c74040ffffffff	MOVQ $-0x1, 0x40(AX)								
  taskservice.go:1035		0xe3562b		4889051eca6d02		MOVQ AX, CAS-Backend/pkg/diapdu.globalForkliftUpdater(SB)			
  taskservice.go:1036		0xe35632		90			NOPL										
  vehservice.go:142		0xe35633		e888f30000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateForkliftStatus(SB)		
  taskservice.go:1037		0xe35638		488b0511ca6d02		MOVQ CAS-Backend/pkg/diapdu.globalForkliftUpdater(SB), AX			
  taskservice.go:1037		0xe3563f		90			NOPL										
  taskservice.go:1037		0xe35640		e8fbe40000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).Start(SB)			
  taskservice.go:1038		0xe35645		488b0d04ca6d02		MOVQ CAS-Backend/pkg/diapdu.globalForkliftUpdater(SB), CX			
  taskservice.go:1038		0xe3564c		48894c2458		MOVQ CX, 0x58(SP)								
  taskservice.go:39		0xe35651		488d0588f62000		LEAQ runtime.types+392416(SB), AX						
  taskservice.go:39		0xe35658		31db			XORL BX, BX									
  taskservice.go:39		0xe3565a		e8e1425dff		CALL runtime.makechan(SB)							
  taskservice.go:39		0xe3565f		48898424c0000000	MOVQ AX, 0xc0(SP)								
  traffic.go:30			0xe35667		e8745963ff		CALL runtime.makemap_small(SB)							
  traffic.go:30			0xe3566c		48898424a8000000	MOVQ AX, 0xa8(SP)								
  traffic.go:29			0xe35674		488d05656d2800		LEAQ runtime.types+881632(SB), AX						
  traffic.go:29			0xe3567b		0f1f440000		NOPL 0(AX)(AX*1)								
  traffic.go:29			0xe35680		e81bc15dff		CALL runtime.newobject(SB)							
  traffic.go:30			0xe35685		833dc484720200		CMPL runtime.writeBarrier(SB), $0x0						
  traffic.go:30			0xe3568c		750a			JNE 0xe35698									
  traffic.go:30			0xe3568e		488b8c24a8000000	MOVQ 0xa8(SP), CX								
  traffic.go:30			0xe35696		eb10			JMP 0xe356a8									
  traffic.go:30			0xe35698		e8832d64ff		CALL runtime.gcWriteBarrier1(SB)						
  traffic.go:30			0xe3569d		488b8c24a8000000	MOVQ 0xa8(SP), CX								
  traffic.go:30			0xe356a5		49890b			MOVQ CX, 0(R11)									
  traffic.go:29			0xe356a8		4889442448		MOVQ AX, 0x48(SP)								
  traffic.go:30			0xe356ad		48894818		MOVQ CX, 0x18(AX)								
  traffic_dynamic.go:128	0xe356b1		e82a5963ff		CALL runtime.makemap_small(SB)							
  traffic_dynamic.go:128	0xe356b6		48898424a0000000	MOVQ AX, 0xa0(SP)								
  traffic_dynamic.go:129	0xe356be		6690			NOPW										
  traffic_dynamic.go:129	0xe356c0		e81b5963ff		CALL runtime.makemap_small(SB)							
  traffic_dynamic.go:129	0xe356c5		4889842498000000	MOVQ AX, 0x98(SP)								
  traffic_dynamic.go:130	0xe356cd		e80e5963ff		CALL runtime.makemap_small(SB)							
  traffic_dynamic.go:130	0xe356d2		4889842490000000	MOVQ AX, 0x90(SP)								
  traffic_dynamic.go:131	0xe356da		e8015963ff		CALL runtime.makemap_small(SB)							
  traffic_dynamic.go:131	0xe356df		4889842488000000	MOVQ AX, 0x88(SP)								
  traffic_dynamic.go:132	0xe356e7		e8f45863ff		CALL runtime.makemap_small(SB)							
  traffic_dynamic.go:132	0xe356ec		48898424b0000000	MOVQ AX, 0xb0(SP)								
  traffic_dynamic.go:133	0xe356f4		e8e75863ff		CALL runtime.makemap_small(SB)							
  traffic_dynamic.go:133	0xe356f9		4889842480000000	MOVQ AX, 0x80(SP)								
  traffic_dynamic.go:134	0xe35701		e8da5863ff		CALL runtime.makemap_small(SB)							
  traffic_dynamic.go:134	0xe35706		4889442478		MOVQ AX, 0x78(SP)								
  traffic_dynamic.go:127	0xe3570b		488d054ec92e00		LEAQ runtime.types+1298528(SB), AX						
  traffic_dynamic.go:127	0xe35712		e889c05dff		CALL runtime.newobject(SB)							
  traffic_dynamic.go:128	0xe35717		833d3284720200		CMPL runtime.writeBarrier(SB), $0x0						
  traffic_dynamic.go:128	0xe3571e		6690			NOPW										
  traffic_dynamic.go:128	0xe35720		7537			JNE 0xe35759									
  traffic_dynamic.go:128	0xe35722		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  traffic_dynamic.go:129	0xe3572a		488b942498000000	MOVQ 0x98(SP), DX								
  traffic_dynamic.go:130	0xe35732		488b9c2490000000	MOVQ 0x90(SP), BX								
  traffic_dynamic.go:131	0xe3573a		488bb42488000000	MOVQ 0x88(SP), SI								
  traffic_dynamic.go:132	0xe35742		488bbc24b0000000	MOVQ 0xb0(SP), DI								
  traffic_dynamic.go:133	0xe3574a		4c8b842480000000	MOVQ 0x80(SP), R8								
  traffic_dynamic.go:134	0xe35752		4c8b4c2478		MOVQ 0x78(SP), R9								
  traffic_dynamic.go:128	0xe35757		eb55			JMP 0xe357ae									
  traffic_dynamic.go:128	0xe35759		e8822d64ff		CALL runtime.gcWriteBarrier7(SB)						
  traffic_dynamic.go:128	0xe3575e		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  traffic_dynamic.go:128	0xe35766		49890b			MOVQ CX, 0(R11)									
  traffic_dynamic.go:129	0xe35769		488b942498000000	MOVQ 0x98(SP), DX								
  traffic_dynamic.go:129	0xe35771		49895308		MOVQ DX, 0x8(R11)								
  traffic_dynamic.go:130	0xe35775		488b9c2490000000	MOVQ 0x90(SP), BX								
  traffic_dynamic.go:130	0xe3577d		49895b10		MOVQ BX, 0x10(R11)								
  traffic_dynamic.go:131	0xe35781		488bb42488000000	MOVQ 0x88(SP), SI								
  traffic_dynamic.go:131	0xe35789		49897318		MOVQ SI, 0x18(R11)								
  traffic_dynamic.go:132	0xe3578d		488bbc24b0000000	MOVQ 0xb0(SP), DI								
  traffic_dynamic.go:132	0xe35795		49897b20		MOVQ DI, 0x20(R11)								
  traffic_dynamic.go:133	0xe35799		4c8b842480000000	MOVQ 0x80(SP), R8								
  traffic_dynamic.go:133	0xe357a1		4d894328		MOVQ R8, 0x28(R11)								
  traffic_dynamic.go:134	0xe357a5		4c8b4c2478		MOVQ 0x78(SP), R9								
  traffic_dynamic.go:134	0xe357aa		4d894b30		MOVQ R9, 0x30(R11)								
  traffic_dynamic.go:127	0xe357ae		4889442440		MOVQ AX, 0x40(SP)								
  traffic_dynamic.go:128	0xe357b3		48894808		MOVQ CX, 0x8(AX)								
  traffic_dynamic.go:129	0xe357b7		48895010		MOVQ DX, 0x10(AX)								
  traffic_dynamic.go:130	0xe357bb		48895818		MOVQ BX, 0x18(AX)								
  traffic_dynamic.go:131	0xe357bf		48897020		MOVQ SI, 0x20(AX)								
  traffic_dynamic.go:132	0xe357c3		48897828		MOVQ DI, 0x28(AX)								
  traffic_dynamic.go:133	0xe357c7		4c894030		MOVQ R8, 0x30(AX)								
  traffic_dynamic.go:134	0xe357cb		4c894848		MOVQ R9, 0x48(AX)								
  taskservice.go:45		0xe357cf		e80c5863ff		CALL runtime.makemap_small(SB)							
  taskservice.go:45		0xe357d4		4889442478		MOVQ AX, 0x78(SP)								
  taskservice.go:46		0xe357d9		e8025863ff		CALL runtime.makemap_small(SB)							
  taskservice.go:46		0xe357de		4889442470		MOVQ AX, 0x70(SP)								
  taskservice.go:36		0xe357e3		488d05767b2f00		LEAQ runtime.types+1344352(SB), AX						
  taskservice.go:36		0xe357ea		e8b1bf5dff		CALL runtime.newobject(SB)							
  taskservice.go:37		0xe357ef		833d5a83720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:37		0xe357f6		7508			JNE 0xe35800									
  taskservice.go:37		0xe357f8		488b4c2458		MOVQ 0x58(SP), CX								
  taskservice.go:37		0xe357fd		eb0e			JMP 0xe3580d									
  taskservice.go:37		0xe357ff		90			NOPL										
  taskservice.go:37		0xe35800		e81b2c64ff		CALL runtime.gcWriteBarrier1(SB)						
  taskservice.go:37		0xe35805		488b4c2458		MOVQ 0x58(SP), CX								
  taskservice.go:37		0xe3580a		49890b			MOVQ CX, 0(R11)									
  taskservice.go:37		0xe3580d		488908			MOVQ CX, 0(AX)									
  taskservice.go:38		0xe35810		440f117810		MOVUPS X15, 0x10(AX)								
  taskservice.go:38		0xe35815		488d0d847a7202		LEAQ unicode..stmp_365(SB), CX							
  taskservice.go:38		0xe3581c		48894808		MOVQ CX, 0x8(AX)								
  taskservice.go:39		0xe35820		833d2983720200		CMPL runtime.writeBarrier(SB), $0x0						
  taskservice.go:39		0xe35827		7523			JNE 0xe3584c									
  taskservice.go:39		0xe35829		488b8c24c0000000	MOVQ 0xc0(SP), CX								
  taskservice.go:42		0xe35831		488b542450		MOVQ 0x50(SP), DX								
  taskservice.go:43		0xe35836		488b5c2448		MOVQ 0x48(SP), BX								
  taskservice.go:44		0xe3583b		488b742440		MOVQ 0x40(SP), SI								
  taskservice.go:45		0xe35840		488b7c2478		MOVQ 0x78(SP), DI								
  taskservice.go:46		0xe35845		4c8b442470		MOVQ 0x70(SP), R8								
  taskservice.go:39		0xe3584a		eb4c			JMP 0xe35898									
  taskservice.go:39		0xe3584c		e8af2c64ff		CALL runtime.gcWriteBarrier8(SB)						
  taskservice.go:39		0xe35851		488b8c24c0000000	MOVQ 0xc0(SP), CX								
  taskservice.go:39		0xe35859		49890b			MOVQ CX, 0(R11)									
  taskservice.go:42		0xe3585c		488b542450		MOVQ 0x50(SP), DX								
  taskservice.go:42		0xe35861		49895308		MOVQ DX, 0x8(R11)								
  taskservice.go:43		0xe35865		488b5c2448		MOVQ 0x48(SP), BX								
  taskservice.go:43		0xe3586a		49895b10		MOVQ BX, 0x10(R11)								
  taskservice.go:44		0xe3586e		488b742440		MOVQ 0x40(SP), SI								
  taskservice.go:44		0xe35873		49897318		MOVQ SI, 0x18(R11)								
  taskservice.go:45		0xe35877		488b7c2478		MOVQ 0x78(SP), DI								
  taskservice.go:45		0xe3587c		49897b20		MOVQ DI, 0x20(R11)								
  taskservice.go:46		0xe35880		4c8b442470		MOVQ 0x70(SP), R8								
  taskservice.go:46		0xe35885		4d894328		MOVQ R8, 0x28(R11)								
  taskservice.go:1038		0xe35889		49894330		MOVQ AX, 0x30(R11)								
  taskservice.go:1038		0xe3588d		4c8b0dc4c76d02		MOVQ CAS-Backend/pkg/diapdu.globalTaskScheduler(SB), R9				
  taskservice.go:1038		0xe35894		4d894b38		MOVQ R9, 0x38(R11)								
  taskservice.go:39		0xe35898		48894828		MOVQ CX, 0x28(AX)								
  taskservice.go:40		0xe3589c		488b8c2418010000	MOVQ 0x118(SP), CX								
  taskservice.go:40		0xe358a4		48894830		MOVQ CX, 0x30(AX)								
  taskservice.go:41		0xe358a8		48c7403803000000	MOVQ $__subsystem__(SB), 0x38(AX)						
  taskservice.go:42		0xe358b0		48895040		MOVQ DX, 0x40(AX)								
  taskservice.go:43		0xe358b4		48895848		MOVQ BX, 0x48(AX)								
  taskservice.go:44		0xe358b8		48897050		MOVQ SI, 0x50(AX)								
  taskservice.go:45		0xe358bc		48897860		MOVQ DI, 0x60(AX)								
  taskservice.go:46		0xe358c0		4c894068		MOVQ R8, 0x68(AX)								
  taskservice.go:1038		0xe358c4		4889058dc76d02		MOVQ AX, CAS-Backend/pkg/diapdu.globalTaskScheduler(SB)				
  taskservice.go:1039		0xe358cb		e8f095ffff		CALL CAS-Backend/pkg/diapdu.(*TaskScheduler).Start(SB)				
  taskservice.go:1040		0xe358d0		c605d179720201		MOVB $__minor_os_version__(SB), CAS-Backend/pkg/diapdu.autoScheduleRunning(SB)	
  taskservice.go:1041		0xe358d7		488b0572c76d02		MOVQ CAS-Backend/pkg/diapdu.globalForkliftUpdater(SB), AX			
  taskservice.go:1041		0xe358de		6690			NOPW										
  taskservice.go:1041		0xe358e0		e89bef0000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).OnlineCount(SB)			
  taskservice.go:1041		0xe358e5		4885c0			TESTQ AX, AX									
  taskservice.go:1041		0xe358e8		7543			JNE 0xe3592d									
  taskservice.go:1042		0xe358ea		488d152fd02000		LEAQ runtime.types+383264(SB), DX						
  taskservice.go:1042		0xe358f1		48899424d8000000	MOVQ DX, 0xd8(SP)								
  taskservice.go:1042		0xe358f9		488d1560250302		LEAQ CAS-Backend/pkg/diapdu..stmp_25(SB), DX					
  taskservice.go:1042		0xe35900		48899424e0000000	MOVQ DX, 0xe0(SP)								
  print.go:314			0xe35908		488b1d71c76d02		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe3590f		488d05ca610302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe35916		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  print.go:314			0xe3591e		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe35923		4889fe			MOVQ DI, SI									
  print.go:314			0xe35926		e8359f6eff		CALL fmt.Fprintln(SB)								
  taskservice.go:1046		0xe3592b		eb61			JMP 0xe3598e									
  taskservice.go:1044		0xe3592d		488b051cc76d02		MOVQ CAS-Backend/pkg/diapdu.globalForkliftUpdater(SB), AX			
  taskservice.go:1044		0xe35934		e847ef0000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).OnlineCount(SB)			
  taskservice.go:1044		0xe35939		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  taskservice.go:1044		0xe35942		e8594763ff		CALL runtime.convT64(SB)							
  taskservice.go:1044		0xe35947		488d0d12d22000		LEAQ runtime.types+383840(SB), CX						
  taskservice.go:1044		0xe3594e		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  taskservice.go:1044		0xe35956		48898424d0000000	MOVQ AX, 0xd0(SP)								
  print.go:233			0xe3595e		488b1d1bc76d02		MOVQ os.Stdout(SB), BX								
  print.go:233			0xe35965		488d0574610302		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233			0xe3596c		488d0d054a3700		LEAQ go:string.*+269936(SB), CX							
  print.go:233			0xe35973		bf62000000		MOVL $.file+21(SB), DI								
  print.go:233			0xe35978		488db424c8000000	LEAQ 0xc8(SP), SI								
  print.go:233			0xe35980		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233			0xe35986		4d89c1			MOVQ R8, R9									
  print.go:233			0xe35989		e892986eff		CALL fmt.Fprintf(SB)								
  taskservice.go:1046		0xe3598e		c644243e00		MOVB $0x0, 0x3e(SP)								
  taskservice.go:1046		0xe35993		440f117c2460		MOVUPS X15, 0x60(SP)								
  taskservice.go:1046		0xe35999		c644243f00		MOVB $0x0, 0x3f(SP)								
  taskservice.go:1046		0xe3599e		488b9424f8000000	MOVQ 0xf8(SP), DX								
  taskservice.go:1046		0xe359a6		488b02			MOVQ 0(DX), AX									
  taskservice.go:1046		0xe359a9		ffd0			CALL AX										
  taskservice.go:1046		0xe359ab		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:1046		0xe359b0		0fb644243e		MOVZX 0x3e(SP), AX								
  taskservice.go:1046		0xe359b5		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:1046		0xe359ba		4881c400010000		ADDQ $.file+179(SB), SP								
  taskservice.go:1046		0xe359c1		5d			POPQ BP										
  taskservice.go:1046		0xe359c2		c3			RET										
  taskservice.go:1033		0xe359c3		488d059e4d3400		LEAQ go:string.*+74336(SB), AX							
  taskservice.go:1033		0xe359ca		bb0f000000		MOVL $__major_os_version__+9(SB), BX						
  taskservice.go:1033		0xe359cf		31c9			XORL CX, CX									
  taskservice.go:1033		0xe359d1		31ff			XORL DI, DI									
  taskservice.go:1033		0xe359d3		4889fe			MOVQ DI, SI									
  taskservice.go:1033		0xe359d6		e8e5696eff		CALL fmt.Errorf(SB)								
  taskservice.go:1033		0xe359db		c644243e00		MOVB $0x0, 0x3e(SP)								
  taskservice.go:1033		0xe359e0		4889442460		MOVQ AX, 0x60(SP)								
  taskservice.go:1033		0xe359e5		48895c2468		MOVQ BX, 0x68(SP)								
  taskservice.go:1033		0xe359ea		c644243f00		MOVB $0x0, 0x3f(SP)								
  taskservice.go:1033		0xe359ef		488b9424f8000000	MOVQ 0xf8(SP), DX								
  taskservice.go:1033		0xe359f7		4c8b02			MOVQ 0(DX), R8									
  taskservice.go:1033		0xe359fa		41ffd0			CALL R8										
  taskservice.go:1033		0xe359fd		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:1033		0xe35a02		0fb644243e		MOVZX 0x3e(SP), AX								
  taskservice.go:1033		0xe35a07		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:1033		0xe35a0c		4881c400010000		ADDQ $.file+179(SB), SP								
  taskservice.go:1033		0xe35a13		5d			POPQ BP										
  taskservice.go:1033		0xe35a14		c3			RET										
  taskservice.go:1029		0xe35a15		488d05d4353700		LEAQ go:string.*+264936(SB), AX							
  taskservice.go:1029		0xe35a1c		bb52000000		MOVL $.file+5(SB), BX								
  taskservice.go:1029		0xe35a21		31c9			XORL CX, CX									
  taskservice.go:1029		0xe35a23		31ff			XORL DI, DI									
  taskservice.go:1029		0xe35a25		4889fe			MOVQ DI, SI									
  taskservice.go:1029		0xe35a28		e893696eff		CALL fmt.Errorf(SB)								
  taskservice.go:1029		0xe35a2d		c644243e00		MOVB $0x0, 0x3e(SP)								
  taskservice.go:1029		0xe35a32		4889442460		MOVQ AX, 0x60(SP)								
  taskservice.go:1029		0xe35a37		48895c2468		MOVQ BX, 0x68(SP)								
  taskservice.go:1029		0xe35a3c		c644243f00		MOVB $0x0, 0x3f(SP)								
  taskservice.go:1029		0xe35a41		488b9424f8000000	MOVQ 0xf8(SP), DX								
  taskservice.go:1029		0xe35a49		4c8b02			MOVQ 0(DX), R8									
  taskservice.go:1029		0xe35a4c		41ffd0			CALL R8										
  taskservice.go:1029		0xe35a4f		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:1029		0xe35a54		0fb644243e		MOVZX 0x3e(SP), AX								
  taskservice.go:1029		0xe35a59		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:1029		0xe35a5e		4881c400010000		ADDQ $.file+179(SB), SP								
  taskservice.go:1029		0xe35a65		5d			POPQ BP										
  taskservice.go:1029		0xe35a66		c3			RET										
  taskservice.go:1026		0xe35a67		c644243e01		MOVB $__minor_os_version__(SB), 0x3e(SP)					
  taskservice.go:1026		0xe35a6c		440f117c2460		MOVUPS X15, 0x60(SP)								
  taskservice.go:1026		0xe35a72		c644243f00		MOVB $0x0, 0x3f(SP)								
  taskservice.go:1026		0xe35a77		488b9424f8000000	MOVQ 0xf8(SP), DX								
  taskservice.go:1026		0xe35a7f		488b02			MOVQ 0(DX), AX									
  taskservice.go:1026		0xe35a82		ffd0			CALL AX										
  taskservice.go:1026		0xe35a84		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:1026		0xe35a89		0fb644243e		MOVZX 0x3e(SP), AX								
  taskservice.go:1026		0xe35a8e		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:1026		0xe35a93		4881c400010000		ADDQ $.file+179(SB), SP								
  taskservice.go:1026		0xe35a9a		5d			POPQ BP										
  taskservice.go:1026		0xe35a9b		c3			RET										
  taskservice.go:1026		0xe35a9c		0f1f4000		NOPL 0(AX)									
  taskservice.go:1026		0xe35aa0		e8db4060ff		CALL runtime.deferreturn(SB)							
  taskservice.go:1026		0xe35aa5		0fb644243e		MOVZX 0x3e(SP), AX								
  taskservice.go:1026		0xe35aaa		488b5c2460		MOVQ 0x60(SP), BX								
  taskservice.go:1026		0xe35aaf		488b4c2468		MOVQ 0x68(SP), CX								
  taskservice.go:1026		0xe35ab4		4881c400010000		ADDQ $.file+179(SB), SP								
  taskservice.go:1026		0xe35abb		5d			POPQ BP										
  taskservice.go:1026		0xe35abc		c3			RET										
  taskservice.go:1022		0xe35abd		4889442408		MOVQ AX, 0x8(SP)								
  taskservice.go:1022		0xe35ac2		48895c2410		MOVQ BX, 0x10(SP)								
  taskservice.go:1022		0xe35ac7		e8140a64ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:1022		0xe35acc		488b442408		MOVQ 0x8(SP), AX								
  taskservice.go:1022		0xe35ad1		488b5c2410		MOVQ 0x10(SP), BX								
  taskservice.go:1022		0xe35ad6		e9a5f9ffff		JMP CAS-Backend/pkg/diapdu.StartAutoTaskScheduler(SB)				
  :-1				0xe35adb		cc			INT $__subsystem__(SB)								
  :-1				0xe35adc		cc			INT $__subsystem__(SB)								
  :-1				0xe35add		cc			INT $__subsystem__(SB)								
  :-1				0xe35ade		cc			INT $__subsystem__(SB)								
  :-1				0xe35adf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.StartAutoTaskScheduler.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:1024	0xe35ae0		493b6610		CMPQ SP, 0x10(R14)							
  taskservice.go:1024	0xe35ae4		762f			JBE 0xe35b15								
  taskservice.go:1024	0xe35ae6		55			PUSHQ BP								
  taskservice.go:1024	0xe35ae7		4889e5			MOVQ SP, BP								
  taskservice.go:1024	0xe35aea		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  taskservice.go:1024	0xe35aee		4d8b6620		MOVQ 0x20(R14), R12							
  taskservice.go:1024	0xe35af2		4d85e4			TESTQ R12, R12								
  taskservice.go:1024	0xe35af5		7525			JNE 0xe35b1c								
  taskservice.go:1024	0xe35af7		488b4208		MOVQ 0x8(DX), AX							
  mutex.go:221		0xe35afb		bbffffffff		MOVL $-0x1, BX								
  mutex.go:221		0xe35b00		f00fc118		LOCK XADDL BX, 0(AX)							
  mutex.go:221		0xe35b04		ffcb			DECL BX									
  mutex.go:222		0xe35b06		85db			TESTL BX, BX								
  mutex.go:222		0xe35b08		7405			JE 0xe35b0f								
  mutex.go:225		0xe35b0a		e8f12165ff		CALL sync.(*Mutex).unlockSlow(SB)					
  taskservice.go:1024	0xe35b0f		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  taskservice.go:1024	0xe35b13		5d			POPQ BP									
  taskservice.go:1024	0xe35b14		c3			RET									
  taskservice.go:1024	0xe35b15		e8460964ff		CALL runtime.morestack.abi0(SB)						
  taskservice.go:1024	0xe35b1a		ebc4			JMP CAS-Backend/pkg/diapdu.StartAutoTaskScheduler.deferwrap1(SB)	
  taskservice.go:1024	0xe35b1c		4c8d6c2420		LEAQ 0x20(SP), R13							
  taskservice.go:1024	0xe35b21		4d392c24		CMPQ 0(R12), R13							
  taskservice.go:1024	0xe35b25		75d0			JNE 0xe35af7								
  taskservice.go:1024	0xe35b27		49892424		MOVQ SP, 0(R12)								
  taskservice.go:1024	0xe35b2b		ebca			JMP 0xe35af7								
  :-1			0xe35b2d		cc			INT $__subsystem__(SB)							
  :-1			0xe35b2e		cc			INT $__subsystem__(SB)							
  :-1			0xe35b2f		cc			INT $__subsystem__(SB)							
  :-1			0xe35b30		cc			INT $__subsystem__(SB)							
  :-1			0xe35b31		cc			INT $__subsystem__(SB)							
  :-1			0xe35b32		cc			INT $__subsystem__(SB)							
  :-1			0xe35b33		cc			INT $__subsystem__(SB)							
  :-1			0xe35b34		cc			INT $__subsystem__(SB)							
  :-1			0xe35b35		cc			INT $__subsystem__(SB)							
  :-1			0xe35b36		cc			INT $__subsystem__(SB)							
  :-1			0xe35b37		cc			INT $__subsystem__(SB)							
  :-1			0xe35b38		cc			INT $__subsystem__(SB)							
  :-1			0xe35b39		cc			INT $__subsystem__(SB)							
  :-1			0xe35b3a		cc			INT $__subsystem__(SB)							
  :-1			0xe35b3b		cc			INT $__subsystem__(SB)							
  :-1			0xe35b3c		cc			INT $__subsystem__(SB)							
  :-1			0xe35b3d		cc			INT $__subsystem__(SB)							
  :-1			0xe35b3e		cc			INT $__subsystem__(SB)							
  :-1			0xe35b3f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.StopAutoTaskScheduler(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:1050	0xe35b40		493b6610		CMPQ SP, 0x10(R14)							
  taskservice.go:1050	0xe35b44		0f86b0010000		JBE 0xe35cfa								
  taskservice.go:1050	0xe35b4a		55			PUSHQ BP								
  taskservice.go:1050	0xe35b4b		4889e5			MOVQ SP, BP								
  taskservice.go:1050	0xe35b4e		4883ec68		SUBQ $.file+27(SB), SP							
  taskservice.go:1050	0xe35b52		66440fd67c2460		MOVQ X15, 0x60(SP)							
  taskservice.go:1050	0xe35b59		c644242f00		MOVB $0x0, 0x2f(SP)							
  taskservice.go:1050	0xe35b5e		c644242e00		MOVB $0x0, 0x2e(SP)							
  taskservice.go:1050	0xe35b63		440f117c2430		MOVUPS X15, 0x30(SP)							
  taskservice.go:1051	0xe35b69		90			NOPL									
  mutex.go:85		0xe35b6a		31c0			XORL AX, AX								
  mutex.go:85		0xe35b6c		488d0d4d787202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), CX			
  mutex.go:85		0xe35b73		bb01000000		MOVL $__minor_os_version__(SB), BX					
  mutex.go:85		0xe35b78		f00fb119		LOCK CMPXCHGL BX, 0(CX)							
  mutex.go:85		0xe35b7c		0f94c1			SETE CL									
  mutex.go:85		0xe35b7f		90			NOPL									
  mutex.go:85		0xe35b80		84c9			TESTL CL, CL								
  mutex.go:85		0xe35b82		750c			JNE 0xe35b90								
  mutex.go:92		0xe35b84		488d0535787202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), AX			
  mutex.go:92		0xe35b8b		e8901e65ff		CALL sync.(*Mutex).lockSlow(SB)						
  taskservice.go:1052	0xe35b90		488d0d89010000		LEAQ CAS-Backend/pkg/diapdu.StopAutoTaskScheduler.deferwrap1(SB), CX	
  taskservice.go:1052	0xe35b97		48894c2450		MOVQ CX, 0x50(SP)							
  taskservice.go:1052	0xe35b9c		488d0d1d787202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), CX			
  taskservice.go:1052	0xe35ba3		48894c2458		MOVQ CX, 0x58(SP)							
  taskservice.go:1052	0xe35ba8		488d4c2450		LEAQ 0x50(SP), CX							
  taskservice.go:1052	0xe35bad		48894c2460		MOVQ CX, 0x60(SP)							
  taskservice.go:1052	0xe35bb2		c644242f01		MOVB $__minor_os_version__(SB), 0x2f(SP)				
  taskservice.go:1053	0xe35bb7		803dea76720200		CMPB CAS-Backend/pkg/diapdu.autoScheduleRunning(SB), $0x0		
  taskservice.go:1053	0xe35bbe		6690			NOPW									
  taskservice.go:1053	0xe35bc0		0f84e7000000		JE 0xe35cad								
  taskservice.go:1056	0xe35bc6		488b0d8bc46d02		MOVQ CAS-Backend/pkg/diapdu.globalTaskScheduler(SB), CX			
  taskservice.go:1056	0xe35bcd		4885c9			TESTQ CX, CX								
  taskservice.go:1056	0xe35bd0		742d			JE 0xe35bff								
  taskservice.go:60	0xe35bd2		488b4128		MOVQ 0x28(CX), AX							
  taskservice.go:1057	0xe35bd6		90			NOPL									
  taskservice.go:60	0xe35bd7		e8a4485dff		CALL runtime.closechan(SB)						
  taskservice.go:1058	0xe35bdc		833d6d7f720200		CMPL runtime.writeBarrier(SB), $0x0					
  taskservice.go:1058	0xe35be3		740f			JE 0xe35bf4								
  taskservice.go:1058	0xe35be5		488b0d6cc46d02		MOVQ CAS-Backend/pkg/diapdu.globalTaskScheduler(SB), CX			
  taskservice.go:1058	0xe35bec		e82f2864ff		CALL runtime.gcWriteBarrier1(SB)					
  taskservice.go:1058	0xe35bf1		49890b			MOVQ CX, 0(R11)								
  taskservice.go:1058	0xe35bf4		48c70559c46d0200000000	MOVQ $0x0, CAS-Backend/pkg/diapdu.globalTaskScheduler(SB)		
  taskservice.go:1060	0xe35bff		488b0d4ac46d02		MOVQ CAS-Backend/pkg/diapdu.globalForkliftUpdater(SB), CX		
  taskservice.go:1060	0xe35c06		4885c9			TESTQ CX, CX								
  taskservice.go:1060	0xe35c09		742d			JE 0xe35c38								
  vehservice.go:55	0xe35c0b		488b4110		MOVQ 0x10(CX), AX							
  taskservice.go:1061	0xe35c0f		90			NOPL									
  vehservice.go:55	0xe35c10		e86b485dff		CALL runtime.closechan(SB)						
  taskservice.go:1062	0xe35c15		833d347f720200		CMPL runtime.writeBarrier(SB), $0x0					
  taskservice.go:1062	0xe35c1c		740f			JE 0xe35c2d								
  taskservice.go:1062	0xe35c1e		488b0d2bc46d02		MOVQ CAS-Backend/pkg/diapdu.globalForkliftUpdater(SB), CX		
  taskservice.go:1062	0xe35c25		e8f62764ff		CALL runtime.gcWriteBarrier1(SB)					
  taskservice.go:1062	0xe35c2a		49890b			MOVQ CX, 0(R11)								
  taskservice.go:1062	0xe35c2d		48c70518c46d0200000000	MOVQ $0x0, CAS-Backend/pkg/diapdu.globalForkliftUpdater(SB)		
  taskservice.go:1064	0xe35c38		31c0			XORL AX, AX								
  taskservice.go:1064	0xe35c3a		e8c1210000		CALL CAS-Backend/pkg/diapdu.SetGlobalDynamicTraffic(SB)			
  taskservice.go:1065	0xe35c3f		c6056276720200		MOVB $0x0, CAS-Backend/pkg/diapdu.autoScheduleRunning(SB)		
  taskservice.go:1066	0xe35c46		488d0dd3cc2000		LEAQ runtime.types+383264(SB), CX					
  taskservice.go:1066	0xe35c4d		48894c2440		MOVQ CX, 0x40(SP)							
  taskservice.go:1066	0xe35c52		488d0d17220302		LEAQ CAS-Backend/pkg/diapdu..stmp_26(SB), CX				
  taskservice.go:1066	0xe35c59		48894c2448		MOVQ CX, 0x48(SP)							
  print.go:314		0xe35c5e		488b1d1bc46d02		MOVQ os.Stdout(SB), BX							
  print.go:314		0xe35c65		488d05745e0302		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314		0xe35c6c		488d4c2440		LEAQ 0x40(SP), CX							
  print.go:314		0xe35c71		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314		0xe35c76		4889fe			MOVQ DI, SI								
  print.go:314		0xe35c79		e8e29b6eff		CALL fmt.Fprintln(SB)							
  taskservice.go:1067	0xe35c7e		c644242e01		MOVB $__minor_os_version__(SB), 0x2e(SP)				
  taskservice.go:1067	0xe35c83		440f117c2430		MOVUPS X15, 0x30(SP)							
  taskservice.go:1067	0xe35c89		c644242f00		MOVB $0x0, 0x2f(SP)							
  taskservice.go:1067	0xe35c8e		488b542460		MOVQ 0x60(SP), DX							
  taskservice.go:1067	0xe35c93		488b0a			MOVQ 0(DX), CX								
  taskservice.go:1067	0xe35c96		ffd1			CALL CX									
  taskservice.go:1067	0xe35c98		488b5c2430		MOVQ 0x30(SP), BX							
  taskservice.go:1067	0xe35c9d		0fb644242e		MOVZX 0x2e(SP), AX							
  taskservice.go:1067	0xe35ca2		488b4c2438		MOVQ 0x38(SP), CX							
  taskservice.go:1067	0xe35ca7		4883c468		ADDQ $.file+27(SB), SP							
  taskservice.go:1067	0xe35cab		5d			POPQ BP									
  taskservice.go:1067	0xe35cac		c3			RET									
  taskservice.go:1054	0xe35cad		c644242e00		MOVB $0x0, 0x2e(SP)							
  taskservice.go:1054	0xe35cb2		440f117c2430		MOVUPS X15, 0x30(SP)							
  taskservice.go:1054	0xe35cb8		c644242f00		MOVB $0x0, 0x2f(SP)							
  taskservice.go:1054	0xe35cbd		488b542460		MOVQ 0x60(SP), DX							
  taskservice.go:1054	0xe35cc2		488b02			MOVQ 0(DX), AX								
  taskservice.go:1054	0xe35cc5		ffd0			CALL AX									
  taskservice.go:1054	0xe35cc7		488b5c2430		MOVQ 0x30(SP), BX							
  taskservice.go:1054	0xe35ccc		0fb644242e		MOVZX 0x2e(SP), AX							
  taskservice.go:1054	0xe35cd1		488b4c2438		MOVQ 0x38(SP), CX							
  taskservice.go:1054	0xe35cd6		4883c468		ADDQ $.file+27(SB), SP							
  taskservice.go:1054	0xe35cda		5d			POPQ BP									
  taskservice.go:1054	0xe35cdb		c3			RET									
  taskservice.go:1054	0xe35cdc		0f1f4000		NOPL 0(AX)								
  taskservice.go:1054	0xe35ce0		e89b3e60ff		CALL runtime.deferreturn(SB)						
  taskservice.go:1054	0xe35ce5		0fb644242e		MOVZX 0x2e(SP), AX							
  taskservice.go:1054	0xe35cea		488b5c2430		MOVQ 0x30(SP), BX							
  taskservice.go:1054	0xe35cef		488b4c2438		MOVQ 0x38(SP), CX							
  taskservice.go:1054	0xe35cf4		4883c468		ADDQ $.file+27(SB), SP							
  taskservice.go:1054	0xe35cf8		5d			POPQ BP									
  taskservice.go:1054	0xe35cf9		c3			RET									
  taskservice.go:1050	0xe35cfa		e8e10764ff		CALL runtime.morestack_noctxt.abi0(SB)					
  taskservice.go:1050	0xe35cff		90			NOPL									
  taskservice.go:1050	0xe35d00		e93bfeffff		JMP CAS-Backend/pkg/diapdu.StopAutoTaskScheduler(SB)			
  :-1			0xe35d05		cc			INT $__subsystem__(SB)							
  :-1			0xe35d06		cc			INT $__subsystem__(SB)							
  :-1			0xe35d07		cc			INT $__subsystem__(SB)							
  :-1			0xe35d08		cc			INT $__subsystem__(SB)							
  :-1			0xe35d09		cc			INT $__subsystem__(SB)							
  :-1			0xe35d0a		cc			INT $__subsystem__(SB)							
  :-1			0xe35d0b		cc			INT $__subsystem__(SB)							
  :-1			0xe35d0c		cc			INT $__subsystem__(SB)							
  :-1			0xe35d0d		cc			INT $__subsystem__(SB)							
  :-1			0xe35d0e		cc			INT $__subsystem__(SB)							
  :-1			0xe35d0f		cc			INT $__subsystem__(SB)							
  :-1			0xe35d10		cc			INT $__subsystem__(SB)							
  :-1			0xe35d11		cc			INT $__subsystem__(SB)							
  :-1			0xe35d12		cc			INT $__subsystem__(SB)							
  :-1			0xe35d13		cc			INT $__subsystem__(SB)							
  :-1			0xe35d14		cc			INT $__subsystem__(SB)							
  :-1			0xe35d15		cc			INT $__subsystem__(SB)							
  :-1			0xe35d16		cc			INT $__subsystem__(SB)							
  :-1			0xe35d17		cc			INT $__subsystem__(SB)							
  :-1			0xe35d18		cc			INT $__subsystem__(SB)							
  :-1			0xe35d19		cc			INT $__subsystem__(SB)							
  :-1			0xe35d1a		cc			INT $__subsystem__(SB)							
  :-1			0xe35d1b		cc			INT $__subsystem__(SB)							
  :-1			0xe35d1c		cc			INT $__subsystem__(SB)							
  :-1			0xe35d1d		cc			INT $__subsystem__(SB)							
  :-1			0xe35d1e		cc			INT $__subsystem__(SB)							
  :-1			0xe35d1f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.StopAutoTaskScheduler.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:1052	0xe35d20		493b6610		CMPQ SP, 0x10(R14)						
  taskservice.go:1052	0xe35d24		762f			JBE 0xe35d55							
  taskservice.go:1052	0xe35d26		55			PUSHQ BP							
  taskservice.go:1052	0xe35d27		4889e5			MOVQ SP, BP							
  taskservice.go:1052	0xe35d2a		4883ec10		SUBQ $__major_os_version__+10(SB), SP				
  taskservice.go:1052	0xe35d2e		4d8b6620		MOVQ 0x20(R14), R12						
  taskservice.go:1052	0xe35d32		4d85e4			TESTQ R12, R12							
  taskservice.go:1052	0xe35d35		7525			JNE 0xe35d5c							
  taskservice.go:1052	0xe35d37		488b4208		MOVQ 0x8(DX), AX						
  mutex.go:221		0xe35d3b		bbffffffff		MOVL $-0x1, BX							
  mutex.go:221		0xe35d40		f00fc118		LOCK XADDL BX, 0(AX)						
  mutex.go:221		0xe35d44		ffcb			DECL BX								
  mutex.go:222		0xe35d46		85db			TESTL BX, BX							
  mutex.go:222		0xe35d48		7405			JE 0xe35d4f							
  mutex.go:225		0xe35d4a		e8b11f65ff		CALL sync.(*Mutex).unlockSlow(SB)				
  taskservice.go:1052	0xe35d4f		4883c410		ADDQ $__major_os_version__+10(SB), SP				
  taskservice.go:1052	0xe35d53		5d			POPQ BP								
  taskservice.go:1052	0xe35d54		c3			RET								
  taskservice.go:1052	0xe35d55		e8060764ff		CALL runtime.morestack.abi0(SB)					
  taskservice.go:1052	0xe35d5a		ebc4			JMP CAS-Backend/pkg/diapdu.StopAutoTaskScheduler.deferwrap1(SB)	
  taskservice.go:1052	0xe35d5c		4c8d6c2420		LEAQ 0x20(SP), R13						
  taskservice.go:1052	0xe35d61		4d392c24		CMPQ 0(R12), R13						
  taskservice.go:1052	0xe35d65		75d0			JNE 0xe35d37							
  taskservice.go:1052	0xe35d67		49892424		MOVQ SP, 0(R12)							
  taskservice.go:1052	0xe35d6b		ebca			JMP 0xe35d37							
  :-1			0xe35d6d		cc			INT $__subsystem__(SB)						
  :-1			0xe35d6e		cc			INT $__subsystem__(SB)						
  :-1			0xe35d6f		cc			INT $__subsystem__(SB)						
  :-1			0xe35d70		cc			INT $__subsystem__(SB)						
  :-1			0xe35d71		cc			INT $__subsystem__(SB)						
  :-1			0xe35d72		cc			INT $__subsystem__(SB)						
  :-1			0xe35d73		cc			INT $__subsystem__(SB)						
  :-1			0xe35d74		cc			INT $__subsystem__(SB)						
  :-1			0xe35d75		cc			INT $__subsystem__(SB)						
  :-1			0xe35d76		cc			INT $__subsystem__(SB)						
  :-1			0xe35d77		cc			INT $__subsystem__(SB)						
  :-1			0xe35d78		cc			INT $__subsystem__(SB)						
  :-1			0xe35d79		cc			INT $__subsystem__(SB)						
  :-1			0xe35d7a		cc			INT $__subsystem__(SB)						
  :-1			0xe35d7b		cc			INT $__subsystem__(SB)						
  :-1			0xe35d7c		cc			INT $__subsystem__(SB)						
  :-1			0xe35d7d		cc			INT $__subsystem__(SB)						
  :-1			0xe35d7e		cc			INT $__subsystem__(SB)						
  :-1			0xe35d7f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:1071	0xe35d80		493b6610		CMPQ SP, 0x10(R14)								
  taskservice.go:1071	0xe35d84		0f869b000000		JBE 0xe35e25									
  taskservice.go:1071	0xe35d8a		55			PUSHQ BP									
  taskservice.go:1071	0xe35d8b		4889e5			MOVQ SP, BP									
  taskservice.go:1071	0xe35d8e		4883ec28		SUBQ $__major_os_version__+34(SB), SP						
  taskservice.go:1071	0xe35d92		66440fd67c2420		MOVQ X15, 0x20(SP)								
  taskservice.go:1071	0xe35d99		c644240f00		MOVB $0x0, 0xf(SP)								
  taskservice.go:1071	0xe35d9e		c644240e00		MOVB $0x0, 0xe(SP)								
  taskservice.go:1072	0xe35da3		90			NOPL										
  mutex.go:85		0xe35da4		31c0			XORL AX, AX									
  mutex.go:85		0xe35da6		488d0d13767202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), CX				
  mutex.go:85		0xe35dad		bb01000000		MOVL $__minor_os_version__(SB), BX						
  mutex.go:85		0xe35db2		f00fb119		LOCK CMPXCHGL BX, 0(CX)								
  mutex.go:85		0xe35db6		0f94c1			SETE CL										
  mutex.go:85		0xe35db9		84c9			TESTL CL, CL									
  mutex.go:85		0xe35dbb		750c			JNE 0xe35dc9									
  mutex.go:92		0xe35dbd		488d05fc757202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), AX				
  mutex.go:92		0xe35dc4		e8571c65ff		CALL sync.(*Mutex).lockSlow(SB)							
  taskservice.go:1073	0xe35dc9		488d0570000000		LEAQ CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning.deferwrap1(SB), AX	
  taskservice.go:1073	0xe35dd0		4889442410		MOVQ AX, 0x10(SP)								
  taskservice.go:1073	0xe35dd5		488d05e4757202		LEAQ CAS-Backend/pkg/diapdu.autoScheduleMu(SB), AX				
  taskservice.go:1073	0xe35ddc		4889442418		MOVQ AX, 0x18(SP)								
  taskservice.go:1073	0xe35de1		488d442410		LEAQ 0x10(SP), AX								
  taskservice.go:1073	0xe35de6		4889442420		MOVQ AX, 0x20(SP)								
  taskservice.go:1073	0xe35deb		c644240f01		MOVB $__minor_os_version__(SB), 0xf(SP)						
  taskservice.go:1074	0xe35df0		0fb605b1747202		MOVZX CAS-Backend/pkg/diapdu.autoScheduleRunning(SB), AX			
  taskservice.go:1074	0xe35df7		8844240e		MOVB AL, 0xe(SP)								
  taskservice.go:1074	0xe35dfb		c644240f00		MOVB $0x0, 0xf(SP)								
  taskservice.go:1074	0xe35e00		488b542420		MOVQ 0x20(SP), DX								
  taskservice.go:1074	0xe35e05		488b02			MOVQ 0(DX), AX									
  taskservice.go:1074	0xe35e08		ffd0			CALL AX										
  taskservice.go:1074	0xe35e0a		0fb644240e		MOVZX 0xe(SP), AX								
  taskservice.go:1074	0xe35e0f		4883c428		ADDQ $__major_os_version__+34(SB), SP						
  taskservice.go:1074	0xe35e13		5d			POPQ BP										
  taskservice.go:1074	0xe35e14		c3			RET										
  taskservice.go:1074	0xe35e15		e8663d60ff		CALL runtime.deferreturn(SB)							
  taskservice.go:1074	0xe35e1a		0fb644240e		MOVZX 0xe(SP), AX								
  taskservice.go:1074	0xe35e1f		4883c428		ADDQ $__major_os_version__+34(SB), SP						
  taskservice.go:1074	0xe35e23		5d			POPQ BP										
  taskservice.go:1074	0xe35e24		c3			RET										
  taskservice.go:1071	0xe35e25		e8b60664ff		CALL runtime.morestack_noctxt.abi0(SB)						
  taskservice.go:1071	0xe35e2a		e951ffffff		JMP CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning(SB)			
  :-1			0xe35e2f		cc			INT $__subsystem__(SB)								
  :-1			0xe35e30		cc			INT $__subsystem__(SB)								
  :-1			0xe35e31		cc			INT $__subsystem__(SB)								
  :-1			0xe35e32		cc			INT $__subsystem__(SB)								
  :-1			0xe35e33		cc			INT $__subsystem__(SB)								
  :-1			0xe35e34		cc			INT $__subsystem__(SB)								
  :-1			0xe35e35		cc			INT $__subsystem__(SB)								
  :-1			0xe35e36		cc			INT $__subsystem__(SB)								
  :-1			0xe35e37		cc			INT $__subsystem__(SB)								
  :-1			0xe35e38		cc			INT $__subsystem__(SB)								
  :-1			0xe35e39		cc			INT $__subsystem__(SB)								
  :-1			0xe35e3a		cc			INT $__subsystem__(SB)								
  :-1			0xe35e3b		cc			INT $__subsystem__(SB)								
  :-1			0xe35e3c		cc			INT $__subsystem__(SB)								
  :-1			0xe35e3d		cc			INT $__subsystem__(SB)								
  :-1			0xe35e3e		cc			INT $__subsystem__(SB)								
  :-1			0xe35e3f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/taskservice.go
  taskservice.go:1073	0xe35e40		493b6610		CMPQ SP, 0x10(R14)							
  taskservice.go:1073	0xe35e44		762f			JBE 0xe35e75								
  taskservice.go:1073	0xe35e46		55			PUSHQ BP								
  taskservice.go:1073	0xe35e47		4889e5			MOVQ SP, BP								
  taskservice.go:1073	0xe35e4a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  taskservice.go:1073	0xe35e4e		4d8b6620		MOVQ 0x20(R14), R12							
  taskservice.go:1073	0xe35e52		4d85e4			TESTQ R12, R12								
  taskservice.go:1073	0xe35e55		7525			JNE 0xe35e7c								
  taskservice.go:1073	0xe35e57		488b4208		MOVQ 0x8(DX), AX							
  mutex.go:221		0xe35e5b		bbffffffff		MOVL $-0x1, BX								
  mutex.go:221		0xe35e60		f00fc118		LOCK XADDL BX, 0(AX)							
  mutex.go:221		0xe35e64		ffcb			DECL BX									
  mutex.go:222		0xe35e66		85db			TESTL BX, BX								
  mutex.go:222		0xe35e68		7405			JE 0xe35e6f								
  mutex.go:225		0xe35e6a		e8911e65ff		CALL sync.(*Mutex).unlockSlow(SB)					
  taskservice.go:1073	0xe35e6f		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  taskservice.go:1073	0xe35e73		5d			POPQ BP									
  taskservice.go:1073	0xe35e74		c3			RET									
  taskservice.go:1073	0xe35e75		e8e60564ff		CALL runtime.morestack.abi0(SB)						
  taskservice.go:1073	0xe35e7a		ebc4			JMP CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning.deferwrap1(SB)	
  taskservice.go:1073	0xe35e7c		4c8d6c2420		LEAQ 0x20(SP), R13							
  taskservice.go:1073	0xe35e81		4d392c24		CMPQ 0(R12), R13							
  taskservice.go:1073	0xe35e85		75d0			JNE 0xe35e57								
  taskservice.go:1073	0xe35e87		49892424		MOVQ SP, 0(R12)								
  taskservice.go:1073	0xe35e8b		ebca			JMP 0xe35e57								
  :-1			0xe35e8d		cc			INT $__subsystem__(SB)							
  :-1			0xe35e8e		cc			INT $__subsystem__(SB)							
  :-1			0xe35e8f		cc			INT $__subsystem__(SB)							
  :-1			0xe35e90		cc			INT $__subsystem__(SB)							
  :-1			0xe35e91		cc			INT $__subsystem__(SB)							
  :-1			0xe35e92		cc			INT $__subsystem__(SB)							
  :-1			0xe35e93		cc			INT $__subsystem__(SB)							
  :-1			0xe35e94		cc			INT $__subsystem__(SB)							
  :-1			0xe35e95		cc			INT $__subsystem__(SB)							
  :-1			0xe35e96		cc			INT $__subsystem__(SB)							
  :-1			0xe35e97		cc			INT $__subsystem__(SB)							
  :-1			0xe35e98		cc			INT $__subsystem__(SB)							
  :-1			0xe35e99		cc			INT $__subsystem__(SB)							
  :-1			0xe35e9a		cc			INT $__subsystem__(SB)							
  :-1			0xe35e9b		cc			INT $__subsystem__(SB)							
  :-1			0xe35e9c		cc			INT $__subsystem__(SB)							
  :-1			0xe35e9d		cc			INT $__subsystem__(SB)							
  :-1			0xe35e9e		cc			INT $__subsystem__(SB)							
  :-1			0xe35e9f		cc			INT $__subsystem__(SB)							

