TEXT CAS-Backend/pkg/diapdu.formatEdgeKey(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_log.go
  traffic_log.go:16	0xe3b420		493b6610		CMPQ SP, 0x10(R14)					
  traffic_log.go:16	0xe3b424		7659			JBE 0xe3b47f						
  traffic_log.go:16	0xe3b426		55			PUSHQ BP						
  traffic_log.go:16	0xe3b427		4889e5			MOVQ SP, BP						
  traffic_log.go:16	0xe3b42a		4883ec38		SUBQ $__major_os_version__+50(SB), SP			
  traffic_log.go:18	0xe3b42e		4889442448		MOVQ AX, 0x48(SP)					
  traffic_log.go:18	0xe3b433		48895c2450		MOVQ BX, 0x50(SP)					
  traffic_log.go:17	0xe3b438		e8e3190000		CALL CAS-Backend/pkg/diapdu.splitUndirectedKey(SB)	
  traffic_log.go:17	0xe3b43d		0f1f00			NOPL 0(AX)						
  traffic_log.go:18	0xe3b440		4885db			TESTQ BX, BX						
  traffic_log.go:18	0xe3b443		7405			JE 0xe3b44a						
  traffic_log.go:18	0xe3b445		4885ff			TESTQ DI, DI						
  traffic_log.go:18	0xe3b448		7510			JNE 0xe3b45a						
  traffic_log.go:19	0xe3b44a		488b442448		MOVQ 0x48(SP), AX					
  traffic_log.go:19	0xe3b44f		488b5c2450		MOVQ 0x50(SP), BX					
  traffic_log.go:19	0xe3b454		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  traffic_log.go:19	0xe3b458		5d			POPQ BP							
  traffic_log.go:19	0xe3b459		c3			RET							
  traffic_log.go:21	0xe3b45a		be03000000		MOVL $__subsystem__(SB), SI				
  traffic_log.go:21	0xe3b45f		4989c8			MOVQ CX, R8						
  traffic_log.go:21	0xe3b462		4989f9			MOVQ DI, R9						
  traffic_log.go:21	0xe3b465		4889d9			MOVQ BX, CX						
  traffic_log.go:21	0xe3b468		488d3ddfd53200		LEAQ go:string.*+1350(SB), DI				
  traffic_log.go:21	0xe3b46f		4889c3			MOVQ AX, BX						
  traffic_log.go:21	0xe3b472		31c0			XORL AX, AX						
  traffic_log.go:21	0xe3b474		e827a061ff		CALL runtime.concatstring3(SB)				
  traffic_log.go:21	0xe3b479		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  traffic_log.go:21	0xe3b47d		5d			POPQ BP							
  traffic_log.go:21	0xe3b47e		c3			RET							
  traffic_log.go:16	0xe3b47f		4889442408		MOVQ AX, 0x8(SP)					
  traffic_log.go:16	0xe3b484		48895c2410		MOVQ BX, 0x10(SP)					
  traffic_log.go:16	0xe3b489		e852b063ff		CALL runtime.morestack_noctxt.abi0(SB)			
  traffic_log.go:16	0xe3b48e		488b442408		MOVQ 0x8(SP), AX					
  traffic_log.go:16	0xe3b493		488b5c2410		MOVQ 0x10(SP), BX					
  traffic_log.go:16	0xe3b498		eb86			JMP CAS-Backend/pkg/diapdu.formatEdgeKey(SB)		
  :-1			0xe3b49a		cc			INT $__subsystem__(SB)					
  :-1			0xe3b49b		cc			INT $__subsystem__(SB)					
  :-1			0xe3b49c		cc			INT $__subsystem__(SB)					
  :-1			0xe3b49d		cc			INT $__subsystem__(SB)					
  :-1			0xe3b49e		cc			INT $__subsystem__(SB)					
  :-1			0xe3b49f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).collectActiveEdgeLocks(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_log.go
  traffic_log.go:25		0xe3b4a0		4c8da42420f8ffff	LEAQ 0xfffff820(SP), R12								
  traffic_log.go:25		0xe3b4a8		4d3b6610		CMPQ R12, 0x10(R14)									
  traffic_log.go:25		0xe3b4ac		0f863e0e0000		JBE 0xe3c2f0										
  traffic_log.go:25		0xe3b4b2		55			PUSHQ BP										
  traffic_log.go:25		0xe3b4b3		4889e5			MOVQ SP, BP										
  traffic_log.go:25		0xe3b4b6		4881ec58080000		SUBQ $__file_alignment__+1624(SB), SP							
  traffic_log.go:28		0xe3b4bd		4889842468080000	MOVQ AX, 0x868(SP)									
  traffic_log.go:28		0xe3b4c5		4889bc2480080000	MOVQ DI, 0x880(SP)									
  traffic_log.go:28		0xe3b4cd		48898c2478080000	MOVQ CX, 0x878(SP)									
  traffic_log.go:28		0xe3b4d5		48899c2470080000	MOVQ BX, 0x870(SP)									
  traffic_log.go:26		0xe3b4dd		0f1f00			NOPL 0(AX)										
  traffic_log.go:26		0xe3b4e0		e8fbfa62ff		CALL runtime.makemap_small(SB)								
  traffic_log.go:26		0xe3b4e5		4889842408030000	MOVQ AX, 0x308(SP)									
  traffic_log.go:28		0xe3b4ed		488b8c2470080000	MOVQ 0x870(SP), CX									
  traffic_log.go:28		0xe3b4f5		4889ca			MOVQ CX, DX										
  traffic_log.go:28		0xe3b4f8		488b9c2478080000	MOVQ 0x878(SP), BX									
  traffic_log.go:28		0xe3b500		4889de			MOVQ BX, SI										
  traffic_log.go:28		0xe3b503		eb0a			JMP 0xe3b50f										
  traffic_log.go:28		0xe3b505		4883c168		ADDQ $.file+27(SB), CX									
  traffic_log.go:28		0xe3b509		48ffcb			DECQ BX											
  traffic_log.go:34		0xe3b50c		4c89ce			MOVQ R9, SI										
  traffic_log.go:28		0xe3b50f		4885db			TESTQ BX, BX										
  traffic_log.go:28		0xe3b512		0f8e60030000		JLE 0xe3b878										
  traffic_log.go:28		0xe3b518		48899c24a0010000	MOVQ BX, 0x1a0(SP)									
  traffic_log.go:28		0xe3b520		48898c2450080000	MOVQ CX, 0x850(SP)									
  traffic_log.go:28		0xe3b528		4c8b01			MOVQ 0(CX), R8										
  traffic_log.go:28		0xe3b52b		4c898424d0070000	MOVQ R8, 0x7d0(SP)									
  traffic_log.go:28		0xe3b533		4c8d4108		LEAQ 0x8(CX), R8									
  traffic_log.go:28		0xe3b537		488dbc24d8070000	LEAQ 0x7d8(SP), DI									
  traffic_log.go:28		0xe3b53f		4989f1			MOVQ SI, R9										
  traffic_log.go:28		0xe3b542		4c89c6			MOVQ R8, SI										
  traffic_log.go:28		0xe3b545		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:28		0xe3b54a		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:28		0xe3b54f		e8f8d863ff		CALL 0x478e4c										
  traffic_log.go:28		0xe3b554		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:29		0xe3b558		4c8b8424d0070000	MOVQ 0x7d0(SP), R8									
  traffic_log.go:29		0xe3b560		4c898424a0020000	MOVQ R8, 0x2a0(SP)									
  traffic_log.go:29		0xe3b568		488dbc24a8020000	LEAQ 0x2a8(SP), DI									
  traffic_log.go:29		0xe3b570		488db424d8070000	LEAQ 0x7d8(SP), SI									
  traffic_log.go:29		0xe3b578		0f1f840000000000	NOPL 0(AX)(AX*1)									
  traffic_log.go:29		0xe3b580		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:29		0xe3b585		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:29		0xe3b58a		e8bdd863ff		CALL 0x478e4c										
  traffic_log.go:29		0xe3b58f		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:29		0xe3b593		440f11bc2438020000	MOVUPS X15, 0x238(SP)									
  traffic_log.go:29		0xe3b59c		440f11bc2440020000	MOVUPS X15, 0x240(SP)									
  traffic_log.go:29		0xe3b5a5		440f11bc2450020000	MOVUPS X15, 0x250(SP)									
  traffic_log.go:29		0xe3b5ae		440f11bc2460020000	MOVUPS X15, 0x260(SP)									
  traffic_log.go:29		0xe3b5b7		440f11bc2470020000	MOVUPS X15, 0x270(SP)									
  traffic_dynamic.go:375	0xe3b5c0		80bc24e802000000	CMPB 0x2e8(SP), $0x0									
  traffic_dynamic.go:375	0xe3b5c8		0f84aa010000		JE 0xe3b778										
  traffic_dynamic.go:375	0xe3b5ce		4c8b8424b8020000	MOVQ 0x2b8(SP), R8									
  traffic_dynamic.go:375	0xe3b5d6		4d85c0			TESTQ R8, R8										
  traffic_dynamic.go:375	0xe3b5d9		0f8499010000		JE 0xe3b778										
  traffic_dynamic.go:375	0xe3b5df		488bbc24c8020000	MOVQ 0x2c8(SP), DI									
  traffic_dynamic.go:375	0xe3b5e7		4885ff			TESTQ DI, DI										
  traffic_dynamic.go:375	0xe3b5ea		0f8488010000		JE 0xe3b778										
  traffic_dynamic.go:375	0xe3b5f0		4889bc2498010000	MOVQ DI, 0x198(SP)									
  traffic_dynamic.go:375	0xe3b5f8		4c89842490010000	MOVQ R8, 0x190(SP)									
  traffic_dynamic.go:375	0xe3b600		488b8424b0020000	MOVQ 0x2b0(SP), AX									
  traffic_dynamic.go:375	0xe3b608		4889842448080000	MOVQ AX, 0x848(SP)									
  traffic_dynamic.go:375	0xe3b610		488b8c24c0020000	MOVQ 0x2c0(SP), CX									
  traffic_dynamic.go:375	0xe3b618		48898c2440080000	MOVQ CX, 0x840(SP)									
  traffic.go:35			0xe3b620		4c89c3			MOVQ R8, BX										
  traffic.go:35			0xe3b623		e858745cff		CALL runtime.cmpstring(SB)								
  traffic.go:35			0xe3b628		4885c0			TESTQ AX, AX										
  traffic.go:35			0xe3b62b		7d3a			JGE 0xe3b667										
  traffic.go:36			0xe3b62d		31c0			XORL AX, AX										
  traffic.go:36			0xe3b62f		488b9c2448080000	MOVQ 0x848(SP), BX									
  traffic.go:36			0xe3b637		488b8c2490010000	MOVQ 0x190(SP), CX									
  traffic.go:36			0xe3b63f		488d3dc4ce3200		LEAQ go:string.*+2(SB), DI								
  traffic.go:36			0xe3b646		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic.go:36			0xe3b64b		4c8b842440080000	MOVQ 0x840(SP), R8									
  traffic.go:36			0xe3b653		4c8b8c2498010000	MOVQ 0x198(SP), R9									
  traffic.go:36			0xe3b65b		0f1f440000		NOPL 0(AX)(AX*1)									
  traffic.go:36			0xe3b660		e83b9e61ff		CALL runtime.concatstring3(SB)								
  traffic_dynamic.go:382	0xe3b665		eb33			JMP 0xe3b69a										
  traffic.go:38			0xe3b667		31c0			XORL AX, AX										
  traffic.go:38			0xe3b669		488b9c2440080000	MOVQ 0x840(SP), BX									
  traffic.go:38			0xe3b671		488b8c2498010000	MOVQ 0x198(SP), CX									
  traffic.go:38			0xe3b679		488d3d8ace3200		LEAQ go:string.*+2(SB), DI								
  traffic.go:38			0xe3b680		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic.go:38			0xe3b685		4c8b842448080000	MOVQ 0x848(SP), R8									
  traffic.go:38			0xe3b68d		4c8b8c2490010000	MOVQ 0x190(SP), R9									
  traffic.go:38			0xe3b695		e8069e61ff		CALL runtime.concatstring3(SB)								
  traffic_dynamic.go:383	0xe3b69a		440f11bc2438020000	MOVUPS X15, 0x238(SP)									
  traffic_dynamic.go:383	0xe3b6a3		440f11bc2440020000	MOVUPS X15, 0x240(SP)									
  traffic_dynamic.go:383	0xe3b6ac		440f11bc2450020000	MOVUPS X15, 0x250(SP)									
  traffic_dynamic.go:383	0xe3b6b5		440f11bc2460020000	MOVUPS X15, 0x260(SP)									
  traffic_dynamic.go:383	0xe3b6be		440f11bc2470020000	MOVUPS X15, 0x270(SP)									
  traffic_dynamic.go:379	0xe3b6c7		488b9424a0020000	MOVQ 0x2a0(SP), DX									
  traffic_dynamic.go:379	0xe3b6cf		4c8b8424a8020000	MOVQ 0x2a8(SP), R8									
  traffic_dynamic.go:379	0xe3b6d7		4889942438020000	MOVQ DX, 0x238(SP)									
  traffic_dynamic.go:379	0xe3b6df		4c89842440020000	MOVQ R8, 0x240(SP)									
  traffic_dynamic.go:380	0xe3b6e7		488b9424b0020000	MOVQ 0x2b0(SP), DX									
  traffic_dynamic.go:380	0xe3b6ef		4c8b8424b8020000	MOVQ 0x2b8(SP), R8									
  traffic_dynamic.go:380	0xe3b6f7		4889942448020000	MOVQ DX, 0x248(SP)									
  traffic_dynamic.go:380	0xe3b6ff		4c89842450020000	MOVQ R8, 0x250(SP)									
  traffic_dynamic.go:381	0xe3b707		488b9424c0020000	MOVQ 0x2c0(SP), DX									
  traffic_dynamic.go:381	0xe3b70f		4c8b8424c8020000	MOVQ 0x2c8(SP), R8									
  traffic_dynamic.go:381	0xe3b717		4889942458020000	MOVQ DX, 0x258(SP)									
  traffic_dynamic.go:381	0xe3b71f		4c89842460020000	MOVQ R8, 0x260(SP)									
  traffic_dynamic.go:382	0xe3b727		4889842468020000	MOVQ AX, 0x268(SP)									
  traffic_dynamic.go:382	0xe3b72f		48899c2470020000	MOVQ BX, 0x270(SP)									
  traffic_dynamic.go:383	0xe3b737		f20f108424d8020000	MOVSD_XMM 0x2d8(SP), X0									
  traffic_dynamic.go:383	0xe3b740		f20f11842478020000	MOVSD_XMM X0, 0x278(SP)									
  traffic_log.go:30		0xe3b749		488b842408030000	MOVQ 0x308(SP), AX									
  traffic_log.go:28		0xe3b751		488b8c2450080000	MOVQ 0x850(SP), CX									
  traffic_log.go:34		0xe3b759		488b942470080000	MOVQ 0x870(SP), DX									
  traffic_log.go:28		0xe3b761		488b9c24a0010000	MOVQ 0x1a0(SP), BX									
  traffic_log.go:34		0xe3b769		4c8b8c2478080000	MOVQ 0x878(SP), R9									
  traffic_log.go:34		0xe3b771		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic_log.go:29		0xe3b776		eb02			JMP 0xe3b77a										
  traffic_log.go:29		0xe3b778		31f6			XORL SI, SI										
  traffic_log.go:29		0xe3b77a		4c8b842438020000	MOVQ 0x238(SP), R8									
  traffic_log.go:29		0xe3b782		4c898424d0070000	MOVQ R8, 0x7d0(SP)									
  traffic_log.go:29		0xe3b78a		0f10842440020000	MOVUPS 0x240(SP), X0									
  traffic_log.go:29		0xe3b792		0f118424d8070000	MOVUPS X0, 0x7d8(SP)									
  traffic_log.go:29		0xe3b79a		0f10842450020000	MOVUPS 0x250(SP), X0									
  traffic_log.go:29		0xe3b7a2		0f118424e8070000	MOVUPS X0, 0x7e8(SP)									
  traffic_log.go:29		0xe3b7aa		0f10842460020000	MOVUPS 0x260(SP), X0									
  traffic_log.go:29		0xe3b7b2		0f118424f8070000	MOVUPS X0, 0x7f8(SP)									
  traffic_log.go:29		0xe3b7ba		0f10842470020000	MOVUPS 0x270(SP), X0									
  traffic_log.go:29		0xe3b7c2		0f11842408080000	MOVUPS X0, 0x808(SP)									
  traffic_log.go:29		0xe3b7ca		4084f6			TESTL SI, SI										
  traffic_log.go:29		0xe3b7cd		0f8432fdffff		JE 0xe3b505										
  traffic_log.go:30		0xe3b7d3		488b8c2400080000	MOVQ 0x800(SP), CX									
  traffic_log.go:30		0xe3b7db		488bbc2408080000	MOVQ 0x808(SP), DI									
  traffic_log.go:30		0xe3b7e3		488b9424d8070000	MOVQ 0x7d8(SP), DX									
  traffic_log.go:30		0xe3b7eb		4889942498010000	MOVQ DX, 0x198(SP)									
  traffic_log.go:30		0xe3b7f3		488bb424d0070000	MOVQ 0x7d0(SP), SI									
  traffic_log.go:30		0xe3b7fb		4889b42448080000	MOVQ SI, 0x848(SP)									
  traffic_log.go:30		0xe3b803		4889c3			MOVQ AX, BX										
  traffic_log.go:30		0xe3b806		488d0513232400		LEAQ runtime.types+625440(SB), AX							
  traffic_log.go:30		0xe3b80d		e80e2863ff		CALL runtime.mapassign_faststr(SB)							
  traffic_log.go:30		0xe3b812		488b942498010000	MOVQ 0x198(SP), DX									
  traffic_log.go:30		0xe3b81a		48895008		MOVQ DX, 0x8(AX)									
  traffic_log.go:30		0xe3b81e		833d2b23720200		CMPL runtime.writeBarrier(SB), $0x0							
  traffic_log.go:30		0xe3b825		750a			JNE 0xe3b831										
  traffic_log.go:30		0xe3b827		488b942448080000	MOVQ 0x848(SP), DX									
  traffic_log.go:30		0xe3b82f		eb17			JMP 0xe3b848										
  traffic_log.go:30		0xe3b831		e80acc63ff		CALL runtime.gcWriteBarrier2(SB)							
  traffic_log.go:30		0xe3b836		488b942448080000	MOVQ 0x848(SP), DX									
  traffic_log.go:30		0xe3b83e		498913			MOVQ DX, 0(R11)										
  traffic_log.go:30		0xe3b841		4c8b00			MOVQ 0(AX), R8										
  traffic_log.go:30		0xe3b844		4d894308		MOVQ R8, 0x8(R11)									
  traffic_log.go:30		0xe3b848		488910			MOVQ DX, 0(AX)										
  traffic_log.go:30		0xe3b84b		488b842408030000	MOVQ 0x308(SP), AX									
  traffic_log.go:28		0xe3b853		488b8c2450080000	MOVQ 0x850(SP), CX									
  traffic_log.go:34		0xe3b85b		488b942470080000	MOVQ 0x870(SP), DX									
  traffic_log.go:28		0xe3b863		488b9c24a0010000	MOVQ 0x1a0(SP), BX									
  traffic_log.go:34		0xe3b86b		4c8b8c2478080000	MOVQ 0x878(SP), R9									
  traffic_log.go:30		0xe3b873		e98dfcffff		JMP 0xe3b505										
  traffic_log.go:34		0xe3b878		4889d0			MOVQ DX, AX										
  traffic_log.go:34		0xe3b87b		4889f3			MOVQ SI, BX										
  traffic_log.go:34		0xe3b87e		488b8c2480080000	MOVQ 0x880(SP), CX									
  traffic_log.go:34		0xe3b886		e8f53d0000		CALL CAS-Backend/pkg/diapdu.findOppositeConflicts(SB)					
  traffic_log.go:35		0xe3b88b		4885db			TESTQ BX, BX										
  traffic_log.go:35		0xe3b88e		0f84a0000000		JE 0xe3b934										
  traffic_log.go:34		0xe3b894		48899c2478010000	MOVQ BX, 0x178(SP)									
  traffic_log.go:34		0xe3b89c		4889842410030000	MOVQ AX, 0x310(SP)									
  traffic_log.go:39		0xe3b8a4		440f11bc2440070000	MOVUPS X15, 0x740(SP)									
  traffic_log.go:39		0xe3b8ad		440f11bc2450070000	MOVUPS X15, 0x750(SP)									
  traffic_log.go:39		0xe3b8b6		440f11bc2460070000	MOVUPS X15, 0x760(SP)									
  traffic_log.go:39		0xe3b8bf		488b942478080000	MOVQ 0x878(SP), DX									
  traffic_log.go:39		0xe3b8c7		4883fa08		CMPQ DX, $__major_os_version__+2(SB)							
  traffic_log.go:39		0xe3b8cb		7f36			JG 0xe3b903										
  traffic_log.go:39		0xe3b8cd		488dbc2470030000	LEAQ 0x370(SP), DI									
  traffic_log.go:39		0xe3b8d5		488d7fd0		LEAQ -0x30(DI), DI									
  traffic_log.go:39		0xe3b8d9		0f1f8000000000		NOPL 0(AX)										
  traffic_log.go:39		0xe3b8e0		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:39		0xe3b8e5		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:39		0xe3b8ea		e8bfd063ff		CALL 0x4789ae										
  traffic_log.go:39		0xe3b8ef		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:39		0xe3b8f3		488db42470030000	LEAQ 0x370(SP), SI									
  traffic_log.go:39		0xe3b8fb		4889b42450070000	MOVQ SI, 0x750(SP)									
  traffic_log.go:39		0xe3b903		488d05161f2400		LEAQ runtime.types+624672(SB), AX							
  traffic_log.go:39		0xe3b90a		4889d3			MOVQ DX, BX										
  traffic_log.go:39		0xe3b90d		488d8c2440070000	LEAQ 0x740(SP), CX									
  traffic_log.go:39		0xe3b915		e806f762ff		CALL runtime.makemap(SB)								
  traffic_log.go:39		0xe3b91a		4889842430020000	MOVQ AX, 0x230(SP)									
  traffic_log.go:40		0xe3b922		488b942470080000	MOVQ 0x870(SP), DX									
  traffic_log.go:40		0xe3b92a		488b8c2478080000	MOVQ 0x878(SP), CX									
  traffic_log.go:40		0xe3b932		eb5e			JMP 0xe3b992										
  traffic_log.go:36		0xe3b934		488b842408030000	MOVQ 0x308(SP), AX									
  traffic_log.go:36		0xe3b93c		4881c458080000		ADDQ $__file_alignment__+1624(SB), SP							
  traffic_log.go:36		0xe3b943		5d			POPQ BP											
  traffic_log.go:36		0xe3b944		c3			RET											
  traffic_log.go:41		0xe3b945		4c8b8424d0070000	MOVQ 0x7d0(SP), R8									
  traffic_log.go:41		0xe3b94d		4c8900			MOVQ R8, 0(AX)										
  traffic_log.go:41		0xe3b950		488d7808		LEAQ 0x8(AX), DI									
  traffic_log.go:41		0xe3b954		488db424d8070000	LEAQ 0x7d8(SP), SI									
  traffic_log.go:41		0xe3b95c		0f1f4000		NOPL 0(AX)										
  traffic_log.go:41		0xe3b960		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:41		0xe3b965		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:41		0xe3b96a		e8ddd463ff		CALL 0x478e4c										
  traffic_log.go:41		0xe3b96f		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:40		0xe3b973		488b942450080000	MOVQ 0x850(SP), DX									
  traffic_log.go:40		0xe3b97b		4883c268		ADDQ $.file+27(SB), DX									
  traffic_log.go:40		0xe3b97f		488b8c24a0010000	MOVQ 0x1a0(SP), CX									
  traffic_log.go:40		0xe3b987		48ffc9			DECQ CX											
  traffic_log.go:41		0xe3b98a		488b842430020000	MOVQ 0x230(SP), AX									
  traffic_log.go:40		0xe3b992		4885c9			TESTQ CX, CX										
  traffic_log.go:40		0xe3b995		0f8e97000000		JLE 0xe3ba32										
  traffic_log.go:40		0xe3b99b		48898c24a0010000	MOVQ CX, 0x1a0(SP)									
  traffic_log.go:40		0xe3b9a3		4889942450080000	MOVQ DX, 0x850(SP)									
  traffic_log.go:40		0xe3b9ab		4c8b02			MOVQ 0(DX), R8										
  traffic_log.go:40		0xe3b9ae		4c898424d0070000	MOVQ R8, 0x7d0(SP)									
  traffic_log.go:40		0xe3b9b6		488d7208		LEAQ 0x8(DX), SI									
  traffic_log.go:40		0xe3b9ba		488dbc24d8070000	LEAQ 0x7d8(SP), DI									
  traffic_log.go:40		0xe3b9c2		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:40		0xe3b9c7		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:40		0xe3b9cc		e87bd463ff		CALL 0x478e4c										
  traffic_log.go:40		0xe3b9d1		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:41		0xe3b9d5		488b8c24d0070000	MOVQ 0x7d0(SP), CX									
  traffic_log.go:41		0xe3b9dd		488bbc24d8070000	MOVQ 0x7d8(SP), DI									
  traffic_log.go:41		0xe3b9e5		4889c3			MOVQ AX, BX										
  traffic_log.go:41		0xe3b9e8		488d05311e2400		LEAQ runtime.types+624672(SB), AX							
  traffic_log.go:41		0xe3b9ef		e82c2663ff		CALL runtime.mapassign_faststr(SB)							
  traffic_log.go:41		0xe3b9f4		8400			TESTB AL, 0(AX)										
  traffic_log.go:41		0xe3b9f6		833d5321720200		CMPL runtime.writeBarrier(SB), $0x0							
  traffic_log.go:41		0xe3b9fd		0f1f00			NOPL 0(AX)										
  traffic_log.go:41		0xe3ba00		0f843fffffff		JE 0xe3b945										
  traffic_log.go:41		0xe3ba06		4889842438080000	MOVQ AX, 0x838(SP)									
  traffic_log.go:41		0xe3ba0e		4889c3			MOVQ AX, BX										
  traffic_log.go:41		0xe3ba11		488d8c24d0070000	LEAQ 0x7d0(SP), CX									
  traffic_log.go:41		0xe3ba19		488d05a01e2e00		LEAQ runtime.types+1280192(SB), AX							
  traffic_log.go:41		0xe3ba20		e8fb945dff		CALL runtime.wbMove(SB)									
  traffic_log.go:41		0xe3ba25		488b842438080000	MOVQ 0x838(SP), AX									
  traffic_log.go:41		0xe3ba2d		e913ffffff		JMP 0xe3b945										
  traffic_log.go:44		0xe3ba32		488b942410030000	MOVQ 0x310(SP), DX									
  traffic_log.go:44		0xe3ba3a		488b8c2478010000	MOVQ 0x178(SP), CX									
  traffic_log.go:44		0xe3ba42		eb1f			JMP 0xe3ba63										
  traffic_log.go:44		0xe3ba44		488b942450080000	MOVQ 0x850(SP), DX									
  traffic_log.go:44		0xe3ba4c		4883c248		ADDQ $__major_os_version__+66(SB), DX							
  traffic_log.go:44		0xe3ba50		488b8c24a0010000	MOVQ 0x1a0(SP), CX									
  traffic_log.go:44		0xe3ba58		48ffc9			DECQ CX											
  traffic_log.go:45		0xe3ba5b		488b842430020000	MOVQ 0x230(SP), AX									
  traffic_log.go:44		0xe3ba63		4885c9			TESTQ CX, CX										
  traffic_log.go:44		0xe3ba66		0f8eff070000		JLE 0xe3c26b										
  traffic_log.go:44		0xe3ba6c		48898c24a0010000	MOVQ CX, 0x1a0(SP)									
  traffic_log.go:44		0xe3ba74		4889942450080000	MOVQ DX, 0x850(SP)									
  traffic_log.go:44		0xe3ba7c		488b32			MOVQ 0(DX), SI										
  traffic_log.go:44		0xe3ba7f		4889b42418030000	MOVQ SI, 0x318(SP)									
  traffic_log.go:44		0xe3ba87		0f104208		MOVUPS 0x8(DX), X0									
  traffic_log.go:44		0xe3ba8b		0f11842420030000	MOVUPS X0, 0x320(SP)									
  traffic_log.go:44		0xe3ba93		0f104218		MOVUPS 0x18(DX), X0									
  traffic_log.go:44		0xe3ba97		0f11842430030000	MOVUPS X0, 0x330(SP)									
  traffic_log.go:44		0xe3ba9f		0f104228		MOVUPS 0x28(DX), X0									
  traffic_log.go:44		0xe3baa3		0f11842440030000	MOVUPS X0, 0x340(SP)									
  traffic_log.go:44		0xe3baab		0f104238		MOVUPS 0x38(DX), X0									
  traffic_log.go:44		0xe3baaf		0f11842450030000	MOVUPS X0, 0x350(SP)									
  traffic_log.go:45		0xe3bab7		440f11bc24d0070000	MOVUPS X15, 0x7d0(SP)									
  traffic_log.go:45		0xe3bac0		488dbc24d8070000	LEAQ 0x7d8(SP), DI									
  traffic_log.go:45		0xe3bac8		488d7fe0		LEAQ -0x20(DI), DI									
  traffic_log.go:45		0xe3bacc		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:45		0xe3bad1		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:45		0xe3bad6		e810d063ff		CALL 0x478aeb										
  traffic_log.go:45		0xe3badb		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:45		0xe3badf		488b8c2418030000	MOVQ 0x318(SP), CX									
  traffic_log.go:45		0xe3bae7		488bbc2420030000	MOVQ 0x320(SP), DI									
  traffic_log.go:45		0xe3baef		4889c3			MOVQ AX, BX										
  traffic_log.go:45		0xe3baf2		488d05271d2400		LEAQ runtime.types+624672(SB), AX							
  traffic_log.go:45		0xe3baf9		e8422163ff		CALL runtime.mapaccess2_faststr(SB)							
  traffic_log.go:45		0xe3bafe		889c24ff000000		MOVB BL, 0xff(SP)									
  traffic_log.go:45		0xe3bb05		488b10			MOVQ 0(AX), DX										
  traffic_log.go:45		0xe3bb08		488d7008		LEAQ 0x8(AX), SI									
  traffic_log.go:45		0xe3bb0c		48899424d0070000	MOVQ DX, 0x7d0(SP)									
  traffic_log.go:45		0xe3bb14		488dbc24d8070000	LEAQ 0x7d8(SP), DI									
  traffic_log.go:45		0xe3bb1c		0f1f4000		NOPL 0(AX)										
  traffic_log.go:45		0xe3bb20		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:45		0xe3bb25		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:45		0xe3bb2a		e81dd363ff		CALL 0x478e4c										
  traffic_log.go:45		0xe3bb2f		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:45		0xe3bb33		488b9424d0070000	MOVQ 0x7d0(SP), DX									
  traffic_log.go:45		0xe3bb3b		48899424a0020000	MOVQ DX, 0x2a0(SP)									
  traffic_log.go:45		0xe3bb43		488dbc24a8020000	LEAQ 0x2a8(SP), DI									
  traffic_log.go:45		0xe3bb4b		488db424d8070000	LEAQ 0x7d8(SP), SI									
  traffic_log.go:45		0xe3bb53		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:45		0xe3bb5c		0f1f4000		NOPL 0(AX)										
  traffic_log.go:45		0xe3bb60		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:45		0xe3bb65		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:45		0xe3bb6a		e8ddd263ff		CALL 0x478e4c										
  traffic_log.go:45		0xe3bb6f		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:46		0xe3bb73		440f11bc24d0070000	MOVUPS X15, 0x7d0(SP)									
  traffic_log.go:46		0xe3bb7c		488dbc24d8070000	LEAQ 0x7d8(SP), DI									
  traffic_log.go:46		0xe3bb84		488d7fe0		LEAQ -0x20(DI), DI									
  traffic_log.go:46		0xe3bb88		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:46		0xe3bb8d		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:46		0xe3bb92		e854cf63ff		CALL 0x478aeb										
  traffic_log.go:46		0xe3bb97		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:46		0xe3bb9b		488b8c2428030000	MOVQ 0x328(SP), CX									
  traffic_log.go:46		0xe3bba3		488bbc2430030000	MOVQ 0x330(SP), DI									
  traffic_log.go:46		0xe3bbab		488d056e1c2400		LEAQ runtime.types+624672(SB), AX							
  traffic_log.go:46		0xe3bbb2		488b9c2430020000	MOVQ 0x230(SP), BX									
  traffic_log.go:46		0xe3bbba		e8812063ff		CALL runtime.mapaccess2_faststr(SB)							
  traffic_log.go:46		0xe3bbbf		488b10			MOVQ 0(AX), DX										
  traffic_log.go:46		0xe3bbc2		488d7008		LEAQ 0x8(AX), SI									
  traffic_log.go:46		0xe3bbc6		48899424d0070000	MOVQ DX, 0x7d0(SP)									
  traffic_log.go:46		0xe3bbce		488dbc24d8070000	LEAQ 0x7d8(SP), DI									
  traffic_log.go:46		0xe3bbd6		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:46		0xe3bbdf		90			NOPL											
  traffic_log.go:46		0xe3bbe0		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:46		0xe3bbe5		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:46		0xe3bbea		e85dd263ff		CALL 0x478e4c										
  traffic_log.go:46		0xe3bbef		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:46		0xe3bbf3		488b9424d0070000	MOVQ 0x7d0(SP), DX									
  traffic_log.go:46		0xe3bbfb		4889942438020000	MOVQ DX, 0x238(SP)									
  traffic_log.go:46		0xe3bc03		488dbc2440020000	LEAQ 0x240(SP), DI									
  traffic_log.go:46		0xe3bc0b		488db424d8070000	LEAQ 0x7d8(SP), SI									
  traffic_log.go:46		0xe3bc13		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:46		0xe3bc1c		0f1f4000		NOPL 0(AX)										
  traffic_log.go:46		0xe3bc20		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:46		0xe3bc25		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:46		0xe3bc2a		e81dd263ff		CALL 0x478e4c										
  traffic_log.go:46		0xe3bc2f		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:45		0xe3bc33		0fb69424ff000000	MOVZX 0xff(SP), DX									
  traffic_log.go:45		0xe3bc3b		0f1f440000		NOPL 0(AX)(AX*1)									
  traffic_log.go:45		0xe3bc40		84d2			TESTL DL, DL										
  traffic_log.go:47		0xe3bc42		0f84fcfdffff		JE 0xe3ba44										
  traffic_log.go:46		0xe3bc48		84db			TESTL BL, BL										
  traffic_log.go:47		0xe3bc4a		0f84f4fdffff		JE 0xe3ba44										
  traffic_log.go:50		0xe3bc50		488b842418030000	MOVQ 0x318(SP), AX									
  traffic_log.go:50		0xe3bc58		4889842468030000	MOVQ AX, 0x368(SP)									
  traffic_log.go:50		0xe3bc60		488b9c2420030000	MOVQ 0x320(SP), BX									
  traffic_log.go:50		0xe3bc68		48899c2488010000	MOVQ BX, 0x188(SP)									
  traffic_log.go:50		0xe3bc70		488b8c2428030000	MOVQ 0x328(SP), CX									
  traffic_log.go:50		0xe3bc78		48898c2460030000	MOVQ CX, 0x360(SP)									
  traffic_log.go:50		0xe3bc80		488bbc2430030000	MOVQ 0x330(SP), DI									
  traffic_log.go:50		0xe3bc88		4889bc2480010000	MOVQ DI, 0x180(SP)									
  traffic_opposite.go:82	0xe3bc90		e8eb6d5cff		CALL runtime.cmpstring(SB)								
  traffic_opposite.go:82	0xe3bc95		4885c0			TESTQ AX, AX										
  traffic_opposite.go:82	0xe3bc98		7d3b			JGE 0xe3bcd5										
  traffic_opposite.go:83	0xe3bc9a		488d842420010000	LEAQ 0x120(SP), AX									
  traffic_opposite.go:83	0xe3bca2		488b9c2468030000	MOVQ 0x368(SP), BX									
  traffic_opposite.go:83	0xe3bcaa		488b8c2488010000	MOVQ 0x188(SP), CX									
  traffic_opposite.go:83	0xe3bcb2		488d3d07900202		LEAQ runtime.gcbits.*+512(SB), DI							
  traffic_opposite.go:83	0xe3bcb9		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic_opposite.go:83	0xe3bcbe		4c8b842460030000	MOVQ 0x360(SP), R8									
  traffic_opposite.go:83	0xe3bcc6		4c8b8c2480010000	MOVQ 0x180(SP), R9									
  traffic_opposite.go:83	0xe3bcce		e8cd9761ff		CALL runtime.concatstring3(SB)								
  traffic_log.go:50		0xe3bcd3		eb39			JMP 0xe3bd0e										
  traffic_opposite.go:85	0xe3bcd5		488d842400010000	LEAQ 0x100(SP), AX									
  traffic_opposite.go:85	0xe3bcdd		488b9c2460030000	MOVQ 0x360(SP), BX									
  traffic_opposite.go:85	0xe3bce5		488b8c2480010000	MOVQ 0x180(SP), CX									
  traffic_opposite.go:85	0xe3bced		488d3dcc8f0202		LEAQ runtime.gcbits.*+512(SB), DI							
  traffic_opposite.go:85	0xe3bcf4		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic_opposite.go:85	0xe3bcf9		4c8b842468030000	MOVQ 0x368(SP), R8									
  traffic_opposite.go:85	0xe3bd01		4c8b8c2488010000	MOVQ 0x188(SP), R9									
  traffic_opposite.go:85	0xe3bd09		e8929761ff		CALL runtime.concatstring3(SB)								
  traffic_log.go:50		0xe3bd0e		48899c2440010000	MOVQ BX, 0x140(SP)									
  traffic_log.go:50		0xe3bd16		48898424a8010000	MOVQ AX, 0x1a8(SP)									
  traffic_opposite.go:453	0xe3bd1e		488b942468080000	MOVQ 0x868(SP), DX									
  traffic_opposite.go:453	0xe3bd26		4c8b4210		MOVQ 0x10(DX), R8									
  traffic_opposite.go:453	0xe3bd2a		4d85c0			TESTQ R8, R8										
  traffic_opposite.go:453	0xe3bd2d		7507			JNE 0xe3bd36										
  traffic_opposite.go:453	0xe3bd2f		b902000000		MOVL $__minor_os_version__+1(SB), CX							
  traffic_log.go:51		0xe3bd34		eb69			JMP 0xe3bd9f										
  traffic_log.go:51		0xe3bd36		488b8c2418030000	MOVQ 0x318(SP), CX									
  traffic_log.go:51		0xe3bd3e		488bbc2420030000	MOVQ 0x320(SP), DI									
  traffic_opposite.go:456	0xe3bd46		488d05b31c2400		LEAQ runtime.types+625152(SB), AX							
  traffic_opposite.go:456	0xe3bd4d		4c89c3			MOVQ R8, BX										
  traffic_opposite.go:456	0xe3bd50		e8eb1e63ff		CALL runtime.mapaccess2_faststr(SB)							
  traffic_opposite.go:456	0xe3bd55		84db			TESTL BL, BL										
  traffic_opposite.go:456	0xe3bd57		7429			JE 0xe3bd82										
  traffic_opposite.go:456	0xe3bd59		488b10			MOVQ 0(AX), DX										
  traffic_opposite.go:456	0xe3bd5c		0f1f4000		NOPL 0(AX)										
  traffic_opposite.go:456	0xe3bd60		4885d2			TESTQ DX, DX										
  traffic_opposite.go:456	0xe3bd63		7e1d			JLE 0xe3bd82										
  traffic_opposite.go:395	0xe3bd65		488b8424a8010000	MOVQ 0x1a8(SP), AX									
  traffic_opposite.go:395	0xe3bd6d		488b9c2440010000	MOVQ 0x140(SP), BX									
  traffic_log.go:51		0xe3bd75		4889d1			MOVQ DX, CX										
  traffic_opposite.go:453	0xe3bd78		488b942468080000	MOVQ 0x868(SP), DX									
  traffic_log.go:51		0xe3bd80		eb1d			JMP 0xe3bd9f										
  traffic_opposite.go:395	0xe3bd82		488b8424a8010000	MOVQ 0x1a8(SP), AX									
  traffic_opposite.go:453	0xe3bd8a		488b942468080000	MOVQ 0x868(SP), DX									
  traffic_opposite.go:395	0xe3bd92		488b9c2440010000	MOVQ 0x140(SP), BX									
  traffic_opposite.go:395	0xe3bd9a		b902000000		MOVL $__minor_os_version__+1(SB), CX							
  traffic_log.go:51		0xe3bd9f		48898c2458010000	MOVQ CX, 0x158(SP)									
  traffic_opposite.go:453	0xe3bda7		4c8b4210		MOVQ 0x10(DX), R8									
  traffic_opposite.go:453	0xe3bdab		4d85c0			TESTQ R8, R8										
  traffic_opposite.go:453	0xe3bdae		7507			JNE 0xe3bdb7										
  traffic_opposite.go:453	0xe3bdb0		be02000000		MOVL $__minor_os_version__+1(SB), SI							
  traffic_log.go:51		0xe3bdb5		eb78			JMP 0xe3be2f										
  traffic_log.go:51		0xe3bdb7		488b8c2428030000	MOVQ 0x328(SP), CX									
  traffic_log.go:51		0xe3bdbf		488bbc2430030000	MOVQ 0x330(SP), DI									
  traffic_opposite.go:456	0xe3bdc7		488d05321c2400		LEAQ runtime.types+625152(SB), AX							
  traffic_opposite.go:456	0xe3bdce		4c89c3			MOVQ R8, BX										
  traffic_opposite.go:456	0xe3bdd1		e86a1e63ff		CALL runtime.mapaccess2_faststr(SB)							
  traffic_opposite.go:456	0xe3bdd6		84db			TESTL BL, BL										
  traffic_opposite.go:456	0xe3bdd8		7430			JE 0xe3be0a										
  traffic_opposite.go:456	0xe3bdda		488b10			MOVQ 0(AX), DX										
  traffic_opposite.go:456	0xe3bddd		0f1f00			NOPL 0(AX)										
  traffic_opposite.go:456	0xe3bde0		4885d2			TESTQ DX, DX										
  traffic_opposite.go:456	0xe3bde3		7e25			JLE 0xe3be0a										
  traffic_opposite.go:395	0xe3bde5		488b8424a8010000	MOVQ 0x1a8(SP), AX									
  traffic_log.go:51		0xe3bded		488b8c2458010000	MOVQ 0x158(SP), CX									
  traffic_opposite.go:395	0xe3bdf5		488b9c2440010000	MOVQ 0x140(SP), BX									
  traffic_log.go:51		0xe3bdfd		4889d6			MOVQ DX, SI										
  traffic_opposite.go:392	0xe3be00		488b942468080000	MOVQ 0x868(SP), DX									
  traffic_log.go:51		0xe3be08		eb25			JMP 0xe3be2f										
  traffic_opposite.go:395	0xe3be0a		488b8424a8010000	MOVQ 0x1a8(SP), AX									
  traffic_log.go:51		0xe3be12		488b8c2458010000	MOVQ 0x158(SP), CX									
  traffic_opposite.go:392	0xe3be1a		488b942468080000	MOVQ 0x868(SP), DX									
  traffic_opposite.go:395	0xe3be22		488b9c2440010000	MOVQ 0x140(SP), BX									
  traffic_opposite.go:395	0xe3be2a		be02000000		MOVL $__minor_os_version__+1(SB), SI							
  traffic_log.go:51		0xe3be2f		4889b42450010000	MOVQ SI, 0x150(SP)									
  traffic_opposite.go:392	0xe3be37		4c8b4230		MOVQ 0x30(DX), R8									
  traffic_log.go:52		0xe3be3b		4c8b8c2418030000	MOVQ 0x318(SP), R9									
  traffic_log.go:52		0xe3be43		4c8b942420030000	MOVQ 0x320(SP), R10									
  traffic_opposite.go:392	0xe3be4b		4d85c0			TESTQ R8, R8										
  traffic_opposite.go:392	0xe3be4e		7507			JNE 0xe3be57										
  traffic_opposite.go:392	0xe3be50		31ff			XORL DI, DI										
  traffic_log.go:52		0xe3be52		e9a4000000		JMP 0xe3befb										
  traffic_log.go:52		0xe3be57		4c89942470010000	MOVQ R10, 0x170(SP)									
  traffic_log.go:52		0xe3be5f		4c898c2428020000	MOVQ R9, 0x228(SP)									
  traffic_opposite.go:395	0xe3be67		4889c1			MOVQ AX, CX										
  traffic_opposite.go:395	0xe3be6a		4889df			MOVQ BX, DI										
  traffic_opposite.go:395	0xe3be6d		488d054c1c2400		LEAQ runtime.types+625344(SB), AX							
  traffic_opposite.go:395	0xe3be74		4c89c3			MOVQ R8, BX										
  traffic_opposite.go:395	0xe3be77		e8c4845dff		CALL runtime.mapaccess1_faststr(SB)							
  traffic_opposite.go:395	0xe3be7c		488b18			MOVQ 0(AX), BX										
  traffic_opposite.go:395	0xe3be7f		90			NOPL											
  traffic_opposite.go:396	0xe3be80		4885db			TESTQ BX, BX										
  traffic_opposite.go:396	0xe3be83		752c			JNE 0xe3beb1										
  traffic_opposite.go:395	0xe3be85		488b8424a8010000	MOVQ 0x1a8(SP), AX									
  traffic_log.go:51		0xe3be8d		488b8c2458010000	MOVQ 0x158(SP), CX									
  traffic_opposite.go:392	0xe3be95		488b942468080000	MOVQ 0x868(SP), DX									
  traffic_opposite.go:395	0xe3be9d		488b9c2440010000	MOVQ 0x140(SP), BX									
  traffic_log.go:51		0xe3bea5		488bb42450010000	MOVQ 0x150(SP), SI									
  traffic_log.go:51		0xe3bead		31ff			XORL DI, DI										
  traffic_log.go:52		0xe3beaf		eb4a			JMP 0xe3befb										
  traffic_opposite.go:399	0xe3beb1		488d05a81b2400		LEAQ runtime.types+625248(SB), AX							
  traffic_opposite.go:399	0xe3beb8		488b8c2428020000	MOVQ 0x228(SP), CX									
  traffic_opposite.go:399	0xe3bec0		488bbc2470010000	MOVQ 0x170(SP), DI									
  traffic_opposite.go:399	0xe3bec8		e873845dff		CALL runtime.mapaccess1_faststr(SB)							
  traffic_opposite.go:399	0xe3becd		488b10			MOVQ 0(AX), DX										
  traffic_opposite.go:395	0xe3bed0		488b8424a8010000	MOVQ 0x1a8(SP), AX									
  traffic_log.go:51		0xe3bed8		488b8c2458010000	MOVQ 0x158(SP), CX									
  traffic_opposite.go:395	0xe3bee0		488b9c2440010000	MOVQ 0x140(SP), BX									
  traffic_log.go:51		0xe3bee8		488bb42450010000	MOVQ 0x150(SP), SI									
  traffic_log.go:51		0xe3bef0		4889d7			MOVQ DX, DI										
  traffic_opposite.go:392	0xe3bef3		488b942468080000	MOVQ 0x868(SP), DX									
  traffic_opposite.go:392	0xe3befb		4c8b4230		MOVQ 0x30(DX), R8									
  traffic_log.go:52		0xe3beff		4c8b8c2428030000	MOVQ 0x328(SP), R9									
  traffic_log.go:52		0xe3bf07		4c8b942430030000	MOVQ 0x330(SP), R10									
  traffic_opposite.go:392	0xe3bf0f		4d85c0			TESTQ R8, R8										
  traffic_opposite.go:392	0xe3bf12		7507			JNE 0xe3bf1b										
  traffic_opposite.go:392	0xe3bf14		31c0			XORL AX, AX										
  traffic_log.go:52		0xe3bf16		e98b000000		JMP 0xe3bfa6										
  traffic_log.go:51		0xe3bf1b		4889bc2448010000	MOVQ DI, 0x148(SP)									
  traffic_log.go:52		0xe3bf23		4c89942468010000	MOVQ R10, 0x168(SP)									
  traffic_log.go:52		0xe3bf2b		4c898c2420020000	MOVQ R9, 0x220(SP)									
  traffic_opposite.go:395	0xe3bf33		4889c1			MOVQ AX, CX										
  traffic_opposite.go:395	0xe3bf36		4889df			MOVQ BX, DI										
  traffic_opposite.go:395	0xe3bf39		488d05801b2400		LEAQ runtime.types+625344(SB), AX							
  traffic_opposite.go:395	0xe3bf40		4c89c3			MOVQ R8, BX										
  traffic_opposite.go:395	0xe3bf43		e8f8835dff		CALL runtime.mapaccess1_faststr(SB)							
  traffic_opposite.go:395	0xe3bf48		488b18			MOVQ 0(AX), BX										
  traffic_opposite.go:396	0xe3bf4b		4885db			TESTQ BX, BX										
  traffic_opposite.go:396	0xe3bf4e		751c			JNE 0xe3bf6c										
  traffic_log.go:51		0xe3bf50		488b8c2458010000	MOVQ 0x158(SP), CX									
  traffic_log.go:51		0xe3bf58		488bb42450010000	MOVQ 0x150(SP), SI									
  traffic_log.go:51		0xe3bf60		488bbc2448010000	MOVQ 0x148(SP), DI									
  traffic_log.go:51		0xe3bf68		31c0			XORL AX, AX										
  traffic_log.go:52		0xe3bf6a		eb3a			JMP 0xe3bfa6										
  traffic_opposite.go:399	0xe3bf6c		488d05ed1a2400		LEAQ runtime.types+625248(SB), AX							
  traffic_opposite.go:399	0xe3bf73		488b8c2420020000	MOVQ 0x220(SP), CX									
  traffic_opposite.go:399	0xe3bf7b		488bbc2468010000	MOVQ 0x168(SP), DI									
  traffic_opposite.go:399	0xe3bf83		e8b8835dff		CALL runtime.mapaccess1_faststr(SB)							
  traffic_opposite.go:399	0xe3bf88		488b10			MOVQ 0(AX), DX										
  traffic_log.go:51		0xe3bf8b		488b8c2458010000	MOVQ 0x158(SP), CX									
  traffic_log.go:51		0xe3bf93		488bb42450010000	MOVQ 0x150(SP), SI									
  traffic_log.go:51		0xe3bf9b		488bbc2448010000	MOVQ 0x148(SP), DI									
  traffic_log.go:51		0xe3bfa3		4889d0			MOVQ DX, AX										
  traffic_log.go:51		0xe3bfa6		488b9424a0020000	MOVQ 0x2a0(SP), DX									
  traffic_log.go:51		0xe3bfae		4c8b842438030000	MOVQ 0x338(SP), R8									
  traffic_log.go:51		0xe3bfb6		48891424		MOVQ DX, 0(SP)										
  traffic_log.go:51		0xe3bfba		4889fa			MOVQ DI, DX										
  traffic_log.go:51		0xe3bfbd		488d7c2408		LEAQ 0x8(SP), DI									
  traffic_log.go:51		0xe3bfc2		4889f3			MOVQ SI, BX										
  traffic_log.go:51		0xe3bfc5		488db424a8020000	LEAQ 0x2a8(SP), SI									
  traffic_log.go:51		0xe3bfcd		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:51		0xe3bfd6		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:51		0xe3bfdf		90			NOPL											
  traffic_log.go:51		0xe3bfe0		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:51		0xe3bfe5		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:51		0xe3bfea		e85dce63ff		CALL 0x478e4c										
  traffic_log.go:51		0xe3bfef		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:51		0xe3bff3		4c8b8c2438020000	MOVQ 0x238(SP), R9									
  traffic_log.go:51		0xe3bffb		4c894c2468		MOVQ R9, 0x68(SP)									
  traffic_log.go:51		0xe3c000		488d7c2470		LEAQ 0x70(SP), DI									
  traffic_log.go:51		0xe3c005		488db42440020000	LEAQ 0x240(SP), SI									
  traffic_log.go:51		0xe3c00d		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:51		0xe3c016		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:51		0xe3c01f		90			NOPL											
  traffic_log.go:51		0xe3c020		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:51		0xe3c025		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:51		0xe3c02a		e81dce63ff		CALL 0x478e4c										
  traffic_log.go:51		0xe3c02f		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:51		0xe3c033		4889d7			MOVQ DX, DI										
  traffic_log.go:51		0xe3c036		4889c6			MOVQ AX, SI										
  traffic_log.go:51		0xe3c039		4c89c0			MOVQ R8, AX										
  traffic_log.go:51		0xe3c03c		4889da			MOVQ BX, DX										
  traffic_log.go:51		0xe3c03f		4889cb			MOVQ CX, BX										
  traffic_log.go:51		0xe3c042		4889d1			MOVQ DX, CX										
  traffic_log.go:51		0xe3c045		e8d6190000		CALL CAS-Backend/pkg/diapdu.pickOppositeWinner(SB)					
  traffic_log.go:53		0xe3c04a		4885db			TESTQ BX, BX										
  traffic_log.go:53		0xe3c04d		0f84f1f9ffff		JE 0xe3ba44										
  traffic_log.go:51		0xe3c053		48899c2460010000	MOVQ BX, 0x160(SP)									
  traffic_log.go:51		0xe3c05b		48898424b0010000	MOVQ AX, 0x1b0(SP)									
  traffic_log.go:56		0xe3c063		488b8c24a0020000	MOVQ 0x2a0(SP), CX									
  traffic_log.go:56		0xe3c06b		488b842438030000	MOVQ 0x338(SP), AX									
  traffic_log.go:56		0xe3c073		48890c24		MOVQ CX, 0(SP)										
  traffic_log.go:56		0xe3c077		488d7c2408		LEAQ 0x8(SP), DI									
  traffic_log.go:56		0xe3c07c		488db424a8020000	LEAQ 0x2a8(SP), SI									
  traffic_log.go:56		0xe3c084		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:56		0xe3c089		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:56		0xe3c08e		e8b9cd63ff		CALL 0x478e4c										
  traffic_log.go:56		0xe3c093		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:56		0xe3c097		488b8c2438020000	MOVQ 0x238(SP), CX									
  traffic_log.go:56		0xe3c09f		48894c2468		MOVQ CX, 0x68(SP)									
  traffic_log.go:56		0xe3c0a4		488d7c2470		LEAQ 0x70(SP), DI									
  traffic_log.go:56		0xe3c0a9		488db42440020000	LEAQ 0x240(SP), SI									
  traffic_log.go:56		0xe3c0b1		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:56		0xe3c0ba		660f1f440000		NOPW 0(AX)(AX*1)									
  traffic_log.go:56		0xe3c0c0		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:56		0xe3c0c5		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:56		0xe3c0ca		e87dcd63ff		CALL 0x478e4c										
  traffic_log.go:56		0xe3c0cf		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:56		0xe3c0d3		e8e82a0000		CALL CAS-Backend/pkg/diapdu.vehiclesOppositeInConflict(SB)				
  traffic_log.go:56		0xe3c0d8		0f1f840000000000	NOPL 0(AX)(AX*1)									
  traffic_log.go:56		0xe3c0e0		84c0			TESTL AL, AL										
  traffic_log.go:56		0xe3c0e2		0f845cf9ffff		JE 0xe3ba44										
  traffic_log.go:59		0xe3c0e8		488b9424a0020000	MOVQ 0x2a0(SP), DX									
  traffic_log.go:59		0xe3c0f0		48899424b8010000	MOVQ DX, 0x1b8(SP)									
  traffic_log.go:59		0xe3c0f8		488dbc24c0010000	LEAQ 0x1c0(SP), DI									
  traffic_log.go:59		0xe3c100		488db424a8020000	LEAQ 0x2a8(SP), SI									
  traffic_log.go:59		0xe3c108		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:59		0xe3c10d		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:59		0xe3c112		e835cd63ff		CALL 0x478e4c										
  traffic_log.go:59		0xe3c117		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:60		0xe3c11b		488b8c2460010000	MOVQ 0x160(SP), CX									
  traffic_log.go:60		0xe3c123		48398c2430030000	CMPQ 0x330(SP), CX									
  traffic_log.go:60		0xe3c12b		7561			JNE 0xe3c18e										
  traffic_log.go:60		0xe3c12d		488b9c2428030000	MOVQ 0x328(SP), BX									
  traffic_log.go:60		0xe3c135		488b8424b0010000	MOVQ 0x1b0(SP), AX									
  traffic_log.go:60		0xe3c13d		0f1f00			NOPL 0(AX)										
  traffic_log.go:60		0xe3c140		e81b6d5cff		CALL runtime.memequal(SB)								
  traffic_log.go:60		0xe3c145		84c0			TESTL AL, AL										
  traffic_log.go:60		0xe3c147		743d			JE 0xe3c186										
  traffic_log.go:61		0xe3c149		488b942438020000	MOVQ 0x238(SP), DX									
  traffic_log.go:61		0xe3c151		48899424b8010000	MOVQ DX, 0x1b8(SP)									
  traffic_log.go:61		0xe3c159		488dbc24c0010000	LEAQ 0x1c0(SP), DI									
  traffic_log.go:61		0xe3c161		488db42440020000	LEAQ 0x240(SP), SI									
  traffic_log.go:61		0xe3c169		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:61		0xe3c16e		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:61		0xe3c173		e8d4cc63ff		CALL 0x478e4c										
  traffic_log.go:61		0xe3c178		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:67		0xe3c17c		488b8c2460010000	MOVQ 0x160(SP), CX									
  traffic_log.go:61		0xe3c184		eb08			JMP 0xe3c18e										
  traffic_log.go:67		0xe3c186		488b8c2460010000	MOVQ 0x160(SP), CX									
  traffic_log.go:63		0xe3c18e		488b9424b8010000	MOVQ 0x1b8(SP), DX									
  traffic_log.go:63		0xe3c196		48899424d0070000	MOVQ DX, 0x7d0(SP)									
  traffic_log.go:63		0xe3c19e		488dbc24d8070000	LEAQ 0x7d8(SP), DI									
  traffic_log.go:63		0xe3c1a6		488db424c0010000	LEAQ 0x1c0(SP), SI									
  traffic_log.go:63		0xe3c1ae		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:63		0xe3c1b7		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:63		0xe3c1c0		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:63		0xe3c1c5		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:63		0xe3c1ca		e87dcc63ff		CALL 0x478e4c										
  traffic_log.go:63		0xe3c1cf		488b6d00		MOVQ 0(BP), BP										
  traffic_opposite.go:122	0xe3c1d3		80bc241808000000	CMPB 0x818(SP), $0x0									
  traffic_opposite.go:122	0xe3c1db		7505			JNE 0xe3c1e2										
  traffic_opposite.go:122	0xe3c1dd		31c0			XORL AX, AX										
  traffic_opposite.go:122	0xe3c1df		90			NOPL											
  traffic_log.go:63		0xe3c1e0		eb44			JMP 0xe3c226										
  traffic_log.go:63		0xe3c1e2		488b842438030000	MOVQ 0x338(SP), AX									
  traffic_opposite.go:125	0xe3c1ea		488b8c24b8010000	MOVQ 0x1b8(SP), CX									
  traffic_opposite.go:125	0xe3c1f2		48890c24		MOVQ CX, 0(SP)										
  traffic_opposite.go:125	0xe3c1f6		488d7c2408		LEAQ 0x8(SP), DI									
  traffic_opposite.go:125	0xe3c1fb		488db424c0010000	LEAQ 0x1c0(SP), SI									
  traffic_opposite.go:125	0xe3c203		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_opposite.go:125	0xe3c208		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_opposite.go:125	0xe3c20d		e83acc63ff		CALL 0x478e4c										
  traffic_opposite.go:125	0xe3c212		488b6d00		MOVQ 0(BP), BP										
  traffic_opposite.go:125	0xe3c216		e825160000		CALL CAS-Backend/pkg/diapdu.winnerClearedOppositeZone(SB)				
  traffic_opposite.go:125	0xe3c21b		83f001			XORL $__minor_os_version__(SB), AX							
  traffic_log.go:67		0xe3c21e		488b8c2460010000	MOVQ 0x160(SP), CX									
  traffic_log.go:63		0xe3c226		84c0			TESTL AL, AL										
  traffic_log.go:63		0xe3c228		0f8416f8ffff		JE 0xe3ba44										
  traffic_log.go:66		0xe3c22e		488b9c2438030000	MOVQ 0x338(SP), BX									
  traffic_log.go:66		0xe3c236		488dbc2470070000	LEAQ 0x770(SP), DI									
  traffic_log.go:66		0xe3c23e		488d7fe0		LEAQ -0x20(DI), DI									
  traffic_log.go:66		0xe3c242		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:66		0xe3c247		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:66		0xe3c24c		e89ac863ff		CALL 0x478aeb										
  traffic_log.go:66		0xe3c251		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:66		0xe3c255		488d0584132400		LEAQ runtime.types+624096(SB), AX							
  traffic_log.go:66		0xe3c25c		488d8c2470070000	LEAQ 0x770(SP), CX									
  traffic_log.go:66		0xe3c264		e8b7fa62ff		CALL runtime.mapiterinit(SB)								
  traffic_log.go:66		0xe3c269		eb21			JMP 0xe3c28c										
  traffic_log.go:70		0xe3c26b		488b842408030000	MOVQ 0x308(SP), AX									
  traffic_log.go:70		0xe3c273		4881c458080000		ADDQ $__file_alignment__+1624(SB), SP							
  traffic_log.go:70		0xe3c27a		5d			POPQ BP											
  traffic_log.go:70		0xe3c27b		c3			RET											
  traffic_log.go:67		0xe3c27c		488908			MOVQ CX, 0(AX)										
  traffic_log.go:66		0xe3c27f		488d842470070000	LEAQ 0x770(SP), AX									
  traffic_log.go:66		0xe3c287		e8b4fc62ff		CALL runtime.mapiternext(SB)								
  traffic_log.go:66		0xe3c28c		488b942470070000	MOVQ 0x770(SP), DX									
  traffic_log.go:66		0xe3c294		4885d2			TESTQ DX, DX										
  traffic_log.go:66		0xe3c297		0f84a7f7ffff		JE 0xe3ba44										
  traffic_log.go:66		0xe3c29d		488b0a			MOVQ 0(DX), CX										
  traffic_log.go:66		0xe3c2a0		488b7a08		MOVQ 0x8(DX), DI									
  traffic_log.go:67		0xe3c2a4		488d0575182400		LEAQ runtime.types+625440(SB), AX							
  traffic_log.go:67		0xe3c2ab		488b9c2408030000	MOVQ 0x308(SP), BX									
  traffic_log.go:67		0xe3c2b3		e8681d63ff		CALL runtime.mapassign_faststr(SB)							
  traffic_log.go:67		0xe3c2b8		488b942460010000	MOVQ 0x160(SP), DX									
  traffic_log.go:67		0xe3c2c0		48895008		MOVQ DX, 0x8(AX)									
  traffic_log.go:67		0xe3c2c4		833d8518720200		CMPL runtime.writeBarrier(SB), $0x0							
  traffic_log.go:67		0xe3c2cb		750a			JNE 0xe3c2d7										
  traffic_log.go:67		0xe3c2cd		488b8c24b0010000	MOVQ 0x1b0(SP), CX									
  traffic_log.go:67		0xe3c2d5		eba5			JMP 0xe3c27c										
  traffic_log.go:67		0xe3c2d7		e864c163ff		CALL runtime.gcWriteBarrier2(SB)							
  traffic_log.go:67		0xe3c2dc		488b8c24b0010000	MOVQ 0x1b0(SP), CX									
  traffic_log.go:67		0xe3c2e4		49890b			MOVQ CX, 0(R11)										
  traffic_log.go:67		0xe3c2e7		488b18			MOVQ 0(AX), BX										
  traffic_log.go:67		0xe3c2ea		49895b08		MOVQ BX, 0x8(R11)									
  traffic_log.go:67		0xe3c2ee		eb8c			JMP 0xe3c27c										
  traffic_log.go:25		0xe3c2f0		4889442408		MOVQ AX, 0x8(SP)									
  traffic_log.go:25		0xe3c2f5		48895c2410		MOVQ BX, 0x10(SP)									
  traffic_log.go:25		0xe3c2fa		48894c2418		MOVQ CX, 0x18(SP)									
  traffic_log.go:25		0xe3c2ff		48897c2420		MOVQ DI, 0x20(SP)									
  traffic_log.go:25		0xe3c304		e8d7a163ff		CALL runtime.morestack_noctxt.abi0(SB)							
  traffic_log.go:25		0xe3c309		488b442408		MOVQ 0x8(SP), AX									
  traffic_log.go:25		0xe3c30e		488b5c2410		MOVQ 0x10(SP), BX									
  traffic_log.go:25		0xe3c313		488b4c2418		MOVQ 0x18(SP), CX									
  traffic_log.go:25		0xe3c318		488b7c2420		MOVQ 0x20(SP), DI									
  traffic_log.go:25		0xe3c31d		0f1f00			NOPL 0(AX)										
  traffic_log.go:25		0xe3c320		e97bf1ffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).collectActiveEdgeLocks(SB)	
  :-1				0xe3c325		cc			INT $__subsystem__(SB)									
  :-1				0xe3c326		cc			INT $__subsystem__(SB)									
  :-1				0xe3c327		cc			INT $__subsystem__(SB)									
  :-1				0xe3c328		cc			INT $__subsystem__(SB)									
  :-1				0xe3c329		cc			INT $__subsystem__(SB)									
  :-1				0xe3c32a		cc			INT $__subsystem__(SB)									
  :-1				0xe3c32b		cc			INT $__subsystem__(SB)									
  :-1				0xe3c32c		cc			INT $__subsystem__(SB)									
  :-1				0xe3c32d		cc			INT $__subsystem__(SB)									
  :-1				0xe3c32e		cc			INT $__subsystem__(SB)									
  :-1				0xe3c32f		cc			INT $__subsystem__(SB)									
  :-1				0xe3c330		cc			INT $__subsystem__(SB)									
  :-1				0xe3c331		cc			INT $__subsystem__(SB)									
  :-1				0xe3c332		cc			INT $__subsystem__(SB)									
  :-1				0xe3c333		cc			INT $__subsystem__(SB)									
  :-1				0xe3c334		cc			INT $__subsystem__(SB)									
  :-1				0xe3c335		cc			INT $__subsystem__(SB)									
  :-1				0xe3c336		cc			INT $__subsystem__(SB)									
  :-1				0xe3c337		cc			INT $__subsystem__(SB)									
  :-1				0xe3c338		cc			INT $__subsystem__(SB)									
  :-1				0xe3c339		cc			INT $__subsystem__(SB)									
  :-1				0xe3c33a		cc			INT $__subsystem__(SB)									
  :-1				0xe3c33b		cc			INT $__subsystem__(SB)									
  :-1				0xe3c33c		cc			INT $__subsystem__(SB)									
  :-1				0xe3c33d		cc			INT $__subsystem__(SB)									
  :-1				0xe3c33e		cc			INT $__subsystem__(SB)									
  :-1				0xe3c33f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.formatLockList(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_log.go
  traffic_log.go:73	0xe3c340		4c8da42440ffffff	LEAQ 0xffffff40(SP), R12			
  traffic_log.go:73	0xe3c348		4d3b6610		CMPQ R12, 0x10(R14)				
  traffic_log.go:73	0xe3c34c		0f8673030000		JBE 0xe3c6c5					
  traffic_log.go:73	0xe3c352		55			PUSHQ BP					
  traffic_log.go:73	0xe3c353		4889e5			MOVQ SP, BP					
  traffic_log.go:73	0xe3c356		4881ec38010000		SUBQ $.file+235(SB), SP				
  traffic_log.go:73	0xe3c35d		0f1f00			NOPL 0(AX)					
  traffic_log.go:74	0xe3c360		4885c0			TESTQ AX, AX					
  traffic_log.go:74	0xe3c363		7405			JE 0xe3c36a					
  traffic_log.go:74	0xe3c365		488b10			MOVQ 0(AX), DX					
  traffic_log.go:74	0xe3c368		eb02			JMP 0xe3c36c					
  traffic_log.go:74	0xe3c36a		31d2			XORL DX, DX					
  traffic_log.go:74	0xe3c36c		4885d2			TESTQ DX, DX					
  traffic_log.go:74	0xe3c36f		0f848d000000		JE 0xe3c402					
  traffic_log.go:74	0xe3c375		4889842448010000	MOVQ AX, 0x148(SP)				
  traffic_log.go:74	0xe3c37d		0f1f00			NOPL 0(AX)					
  traffic_log.go:74	0xe3c380		4885c0			TESTQ AX, AX					
  traffic_log.go:77	0xe3c383		7405			JE 0xe3c38a					
  traffic_log.go:77	0xe3c385		488b10			MOVQ 0(AX), DX					
  traffic_log.go:77	0xe3c388		eb02			JMP 0xe3c38c					
  traffic_log.go:77	0xe3c38a		31d2			XORL DX, DX					
  traffic_log.go:77	0xe3c38c		4889542458		MOVQ DX, 0x58(SP)				
  traffic_log.go:77	0xe3c391		488d0588652000		LEAQ runtime.types+383264(SB), AX		
  traffic_log.go:77	0xe3c398		31db			XORL BX, BX					
  traffic_log.go:77	0xe3c39a		4889d1			MOVQ DX, CX					
  traffic_log.go:77	0xe3c39d		0f1f00			NOPL 0(AX)					
  traffic_log.go:77	0xe3c3a0		e8bb5763ff		CALL runtime.makeslice(SB)			
  traffic_log.go:77	0xe3c3a5		4889842410010000	MOVQ AX, 0x110(SP)				
  traffic_log.go:78	0xe3c3ad		488dbc24a0000000	LEAQ 0xa0(SP), DI				
  traffic_log.go:78	0xe3c3b5		488d7fe0		LEAQ -0x20(DI), DI				
  traffic_log.go:78	0xe3c3b9		0f1f8000000000		NOPL 0(AX)					
  traffic_log.go:78	0xe3c3c0		48896c24f0		MOVQ BP, -0x10(SP)				
  traffic_log.go:78	0xe3c3c5		488d6c24f0		LEAQ -0x10(SP), BP				
  traffic_log.go:78	0xe3c3ca		e81cc763ff		CALL 0x478aeb					
  traffic_log.go:78	0xe3c3cf		488b6d00		MOVQ 0(BP), BP					
  traffic_log.go:78	0xe3c3d3		488b9c2448010000	MOVQ 0x148(SP), BX				
  traffic_log.go:78	0xe3c3db		488d8c24a0000000	LEAQ 0xa0(SP), CX				
  traffic_log.go:78	0xe3c3e3		488d0536172400		LEAQ runtime.types+625440(SB), AX		
  traffic_log.go:78	0xe3c3ea		e831f962ff		CALL runtime.mapiterinit(SB)			
  traffic_log.go:78	0xe3c3ef		31c0			XORL AX, AX					
  traffic_log.go:81	0xe3c3f1		488b4c2458		MOVQ 0x58(SP), CX				
  traffic_log.go:81	0xe3c3f6		488b942410010000	MOVQ 0x110(SP), DX				
  traffic_log.go:81	0xe3c3fe		6690			NOPW						
  traffic_log.go:78	0xe3c400		eb40			JMP 0xe3c442					
  traffic_log.go:75	0xe3c402		488d0548c63200		LEAQ go:string.*+1353(SB), AX			
  traffic_log.go:75	0xe3c409		bb03000000		MOVL $__subsystem__(SB), BX			
  traffic_log.go:75	0xe3c40e		4881c438010000		ADDQ $.file+235(SB), SP				
  traffic_log.go:75	0xe3c415		5d			POPQ BP						
  traffic_log.go:75	0xe3c416		c3			RET						
  traffic_log.go:79	0xe3c417		4889942488000000	MOVQ DX, 0x88(SP)				
  traffic_log.go:79	0xe3c41f		4c890c32		MOVQ R9, 0(DX)(SI*1)				
  traffic_log.go:78	0xe3c423		488d8424a0000000	LEAQ 0xa0(SP), AX				
  traffic_log.go:78	0xe3c42b		e810fb62ff		CALL runtime.mapiternext(SB)			
  traffic_log.go:81	0xe3c430		488b442450		MOVQ 0x50(SP), AX				
  traffic_log.go:81	0xe3c435		488b4c2458		MOVQ 0x58(SP), CX				
  traffic_log.go:81	0xe3c43a		488b942488000000	MOVQ 0x88(SP), DX				
  traffic_log.go:78	0xe3c442		4c8b8424a0000000	MOVQ 0xa0(SP), R8				
  traffic_log.go:78	0xe3c44a		4d85c0			TESTQ R8, R8					
  traffic_log.go:78	0xe3c44d		747f			JE 0xe3c4ce					
  traffic_log.go:79	0xe3c44f		488d5801		LEAQ 0x1(AX), BX				
  traffic_log.go:78	0xe3c453		4d8b08			MOVQ 0(R8), R9					
  traffic_log.go:78	0xe3c456		4d8b4008		MOVQ 0x8(R8), R8				
  traffic_log.go:79	0xe3c45a		4839d9			CMPQ CX, BX					
  traffic_log.go:79	0xe3c45d		7336			JAE 0xe3c495					
  traffic_log.go:78	0xe3c45f		4c898c2498000000	MOVQ R9, 0x98(SP)				
  traffic_log.go:78	0xe3c467		4c89442468		MOVQ R8, 0x68(SP)				
  traffic_log.go:79	0xe3c46c		4889d0			MOVQ DX, AX					
  traffic_log.go:79	0xe3c46f		bf01000000		MOVL $__minor_os_version__(SB), DI		
  traffic_log.go:79	0xe3c474		488d35a5642000		LEAQ runtime.types+383264(SB), SI		
  traffic_log.go:79	0xe3c47b		0f1f440000		NOPL 0(AX)(AX*1)				
  traffic_log.go:79	0xe3c480		e8bb5763ff		CALL runtime.growslice(SB)			
  traffic_log.go:79	0xe3c485		4c8b442468		MOVQ 0x68(SP), R8				
  traffic_log.go:79	0xe3c48a		4c8b8c2498000000	MOVQ 0x98(SP), R9				
  traffic_log.go:79	0xe3c492		4889c2			MOVQ AX, DX					
  traffic_log.go:79	0xe3c495		48895c2450		MOVQ BX, 0x50(SP)				
  traffic_log.go:79	0xe3c49a		48894c2458		MOVQ CX, 0x58(SP)				
  traffic_log.go:79	0xe3c49f		488d73ff		LEAQ -0x1(BX), SI				
  traffic_log.go:79	0xe3c4a3		48c1e604		SHLQ $__subsystem__+1(SB), SI			
  traffic_log.go:79	0xe3c4a7		4c89443208		MOVQ R8, 0x8(DX)(SI*1)				
  traffic_log.go:79	0xe3c4ac		833d9d16720200		CMPL runtime.writeBarrier(SB), $0x0		
  traffic_log.go:79	0xe3c4b3		0f845effffff		JE 0xe3c417					
  traffic_log.go:79	0xe3c4b9		e882bf63ff		CALL runtime.gcWriteBarrier2(SB)		
  traffic_log.go:79	0xe3c4be		4d890b			MOVQ R9, 0(R11)					
  traffic_log.go:79	0xe3c4c1		488b3c32		MOVQ 0(DX)(SI*1), DI				
  traffic_log.go:79	0xe3c4c5		49897b08		MOVQ DI, 0x8(R11)				
  traffic_log.go:79	0xe3c4c9		e949ffffff		JMP 0xe3c417					
  traffic_log.go:81	0xe3c4ce		4889442450		MOVQ AX, 0x50(SP)				
  traffic_log.go:81	0xe3c4d3		4889942408010000	MOVQ DX, 0x108(SP)				
  sort.go:176		0xe3c4db		4889c3			MOVQ AX, BX					
  sort.go:176		0xe3c4de		4889d0			MOVQ DX, AX					
  sort.go:176		0xe3c4e1		e8ba566fff		CALL sort.stringsImpl(SB)			
  traffic_log.go:82	0xe3c4e6		488d0533642000		LEAQ runtime.types+383264(SB), AX		
  traffic_log.go:82	0xe3c4ed		31db			XORL BX, BX					
  traffic_log.go:82	0xe3c4ef		488b4c2450		MOVQ 0x50(SP), CX				
  traffic_log.go:82	0xe3c4f4		e8675663ff		CALL runtime.makeslice(SB)			
  traffic_log.go:83	0xe3c4f9		488b942408010000	MOVQ 0x108(SP), DX				
  traffic_log.go:83	0xe3c501		488b4c2450		MOVQ 0x50(SP), CX				
  traffic_log.go:84	0xe3c506		4889cb			MOVQ CX, BX					
  traffic_log.go:84	0xe3c509		31f6			XORL SI, SI					
  traffic_log.go:83	0xe3c50b		eb27			JMP 0xe3c534					
  traffic_log.go:84	0xe3c50d		4a890406		MOVQ AX, 0(SI)(R8*1)				
  traffic_log.go:83	0xe3c511		4c8b842410010000	MOVQ 0x110(SP), R8				
  traffic_log.go:83	0xe3c519		4983c010		ADDQ $__major_os_version__+10(SB), R8		
  traffic_log.go:83	0xe3c51d		4c8b4c2478		MOVQ 0x78(SP), R9				
  traffic_log.go:83	0xe3c522		49ffc9			DECQ R9						
  traffic_log.go:84	0xe3c525		4889cb			MOVQ CX, BX					
  traffic_log.go:84	0xe3c528		4889f0			MOVQ SI, AX					
  traffic_log.go:84	0xe3c52b		4889d6			MOVQ DX, SI					
  traffic_log.go:83	0xe3c52e		4c89c9			MOVQ R9, CX					
  traffic_log.go:83	0xe3c531		4c89c2			MOVQ R8, DX					
  traffic_log.go:83	0xe3c534		4885c9			TESTQ CX, CX					
  traffic_log.go:83	0xe3c537		0f8e68010000		JLE 0xe3c6a5					
  traffic_log.go:84	0xe3c53d		48895c2448		MOVQ BX, 0x48(SP)				
  traffic_log.go:83	0xe3c542		48894c2478		MOVQ CX, 0x78(SP)				
  traffic_log.go:84	0xe3c547		4889742440		MOVQ SI, 0x40(SP)				
  traffic_log.go:84	0xe3c54c		4889842480000000	MOVQ AX, 0x80(SP)				
  traffic_log.go:83	0xe3c554		4889942410010000	MOVQ DX, 0x110(SP)				
  traffic_log.go:83	0xe3c55c		488b02			MOVQ 0(DX), AX					
  traffic_log.go:83	0xe3c55f		4889842490000000	MOVQ AX, 0x90(SP)				
  traffic_log.go:83	0xe3c567		488b5a08		MOVQ 0x8(DX), BX				
  traffic_log.go:83	0xe3c56b		48895c2460		MOVQ BX, 0x60(SP)				
  traffic_log.go:84	0xe3c570		e8abeeffff		CALL CAS-Backend/pkg/diapdu.formatEdgeKey(SB)	
  traffic_log.go:84	0xe3c575		488b4c2440		MOVQ 0x40(SP), CX				
  traffic_log.go:84	0xe3c57a		48ffc1			INCQ CX						
  traffic_log.go:84	0xe3c57d		48894c2470		MOVQ CX, 0x70(SP)				
  traffic_log.go:84	0xe3c582		440f11bc2418010000	MOVUPS X15, 0x118(SP)				
  traffic_log.go:84	0xe3c58b		440f11bc2428010000	MOVUPS X15, 0x128(SP)				
  traffic_log.go:84	0xe3c594		e887db62ff		CALL runtime.convTstring(SB)			
  traffic_log.go:84	0xe3c599		488d0d80632000		LEAQ runtime.types+383264(SB), CX		
  traffic_log.go:84	0xe3c5a0		48898c2418010000	MOVQ CX, 0x118(SP)				
  traffic_log.go:84	0xe3c5a8		4889842420010000	MOVQ AX, 0x120(SP)				
  traffic_log.go:84	0xe3c5b0		488d0569152400		LEAQ runtime.types+625440(SB), AX		
  traffic_log.go:84	0xe3c5b7		488b9c2448010000	MOVQ 0x148(SP), BX				
  traffic_log.go:84	0xe3c5bf		488b7c2460		MOVQ 0x60(SP), DI				
  traffic_log.go:84	0xe3c5c4		488b8c2490000000	MOVQ 0x90(SP), CX				
  traffic_log.go:84	0xe3c5cc		e86f7d5dff		CALL runtime.mapaccess1_faststr(SB)		
  traffic_log.go:84	0xe3c5d1		488b08			MOVQ 0(AX), CX					
  traffic_log.go:84	0xe3c5d4		488b5808		MOVQ 0x8(AX), BX				
  traffic_log.go:84	0xe3c5d8		4889c8			MOVQ CX, AX					
  traffic_log.go:84	0xe3c5db		0f1f440000		NOPL 0(AX)(AX*1)				
  traffic_log.go:84	0xe3c5e0		e83bdb62ff		CALL runtime.convTstring(SB)			
  traffic_log.go:84	0xe3c5e5		488d0d34632000		LEAQ runtime.types+383264(SB), CX		
  traffic_log.go:84	0xe3c5ec		48898c2428010000	MOVQ CX, 0x128(SP)				
  traffic_log.go:84	0xe3c5f4		4889842430010000	MOVQ AX, 0x130(SP)				
  traffic_log.go:84	0xe3c5fc		488d055f9b3300		LEAQ go:string.*+56410(SB), AX			
  traffic_log.go:84	0xe3c603		bb0a000000		MOVL $__major_os_version__+4(SB), BX		
  traffic_log.go:84	0xe3c608		bf02000000		MOVL $__minor_os_version__+1(SB), DI		
  traffic_log.go:84	0xe3c60d		4889fe			MOVQ DI, SI					
  traffic_log.go:84	0xe3c610		488d8c2418010000	LEAQ 0x118(SP), CX				
  traffic_log.go:84	0xe3c618		e8232d6eff		CALL fmt.Sprintf(SB)				
  traffic_log.go:84	0xe3c61d		488b4c2448		MOVQ 0x48(SP), CX				
  traffic_log.go:84	0xe3c622		488b542470		MOVQ 0x70(SP), DX				
  traffic_log.go:84	0xe3c627		4839d1			CMPQ CX, DX					
  traffic_log.go:84	0xe3c62a		720a			JB 0xe3c636					
  traffic_log.go:84	0xe3c62c		488bb42480000000	MOVQ 0x80(SP), SI				
  traffic_log.go:84	0xe3c634		eb3c			JMP 0xe3c672					
  traffic_log.go:84	0xe3c636		48895c2470		MOVQ BX, 0x70(SP)				
  traffic_log.go:84	0xe3c63b		4889842400010000	MOVQ AX, 0x100(SP)				
  traffic_log.go:84	0xe3c643		488b842480000000	MOVQ 0x80(SP), AX				
  traffic_log.go:84	0xe3c64b		4889d3			MOVQ DX, BX					
  traffic_log.go:84	0xe3c64e		bf01000000		MOVL $__minor_os_version__(SB), DI		
  traffic_log.go:84	0xe3c653		488d35c6622000		LEAQ runtime.types+383264(SB), SI		
  traffic_log.go:84	0xe3c65a		e8e15563ff		CALL runtime.growslice(SB)			
  traffic_log.go:84	0xe3c65f		4889c6			MOVQ AX, SI					
  traffic_log.go:84	0xe3c662		4889da			MOVQ BX, DX					
  traffic_log.go:84	0xe3c665		488b842400010000	MOVQ 0x100(SP), AX				
  traffic_log.go:84	0xe3c66d		488b5c2470		MOVQ 0x70(SP), BX				
  traffic_log.go:84	0xe3c672		4c8d42ff		LEAQ -0x1(DX), R8				
  traffic_log.go:84	0xe3c676		49c1e004		SHLQ $__subsystem__+1(SB), R8			
  traffic_log.go:84	0xe3c67a		4a895c0608		MOVQ BX, 0x8(SI)(R8*1)				
  traffic_log.go:84	0xe3c67f		833dca14720200		CMPL runtime.writeBarrier(SB), $0x0		
  traffic_log.go:84	0xe3c686		0f8481feffff		JE 0xe3c50d					
  traffic_log.go:84	0xe3c68c		e8afbd63ff		CALL runtime.gcWriteBarrier2(SB)		
  traffic_log.go:84	0xe3c691		498903			MOVQ AX, 0(R11)					
  traffic_log.go:84	0xe3c694		4e8b0c06		MOVQ 0(SI)(R8*1), R9				
  traffic_log.go:84	0xe3c698		4d894b08		MOVQ R9, 0x8(R11)				
  traffic_log.go:84	0xe3c69c		0f1f4000		NOPL 0(AX)					
  traffic_log.go:84	0xe3c6a0		e968feffff		JMP 0xe3c50d					
  traffic_log.go:86	0xe3c6a5		4889d9			MOVQ BX, CX					
  traffic_log.go:86	0xe3c6a8		488d3d69be3200		LEAQ go:string.*+16(SB), DI			
  traffic_log.go:86	0xe3c6af		4889f3			MOVQ SI, BX					
  traffic_log.go:86	0xe3c6b2		be02000000		MOVL $__minor_os_version__+1(SB), SI		
  traffic_log.go:86	0xe3c6b7		e8e43f6aff		CALL strings.Join(SB)				
  traffic_log.go:86	0xe3c6bc		4881c438010000		ADDQ $.file+235(SB), SP				
  traffic_log.go:86	0xe3c6c3		5d			POPQ BP						
  traffic_log.go:86	0xe3c6c4		c3			RET						
  traffic_log.go:73	0xe3c6c5		4889442408		MOVQ AX, 0x8(SP)				
  traffic_log.go:73	0xe3c6ca		e8119e63ff		CALL runtime.morestack_noctxt.abi0(SB)		
  traffic_log.go:73	0xe3c6cf		488b442408		MOVQ 0x8(SP), AX				
  traffic_log.go:73	0xe3c6d4		e967fcffff		JMP CAS-Backend/pkg/diapdu.formatLockList(SB)	
  :-1			0xe3c6d9		cc			INT $__subsystem__(SB)				
  :-1			0xe3c6da		cc			INT $__subsystem__(SB)				
  :-1			0xe3c6db		cc			INT $__subsystem__(SB)				
  :-1			0xe3c6dc		cc			INT $__subsystem__(SB)				
  :-1			0xe3c6dd		cc			INT $__subsystem__(SB)				
  :-1			0xe3c6de		cc			INT $__subsystem__(SB)				
  :-1			0xe3c6df		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).LogTaskAssignment(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_log.go
  traffic_log.go:90	0xe3c6e0		4c8da42410ffffff	LEAQ 0xffffff10(SP), R12								
  traffic_log.go:90	0xe3c6e8		4d3b6610		CMPQ R12, 0x10(R14)									
  traffic_log.go:90	0xe3c6ec		0f86b5060000		JBE 0xe3cda7										
  traffic_log.go:90	0xe3c6f2		55			PUSHQ BP										
  traffic_log.go:90	0xe3c6f3		4889e5			MOVQ SP, BP										
  traffic_log.go:90	0xe3c6f6		4881ec68010000		SUBQ $.file+283(SB), SP									
  traffic_log.go:90	0xe3c6fd		48899c2480010000	MOVQ BX, 0x180(SP)									
  traffic_log.go:90	0xe3c705		4889b42498010000	MOVQ SI, 0x198(SP)									
  traffic_log.go:91	0xe3c70d		4885c0			TESTQ AX, AX										
  traffic_log.go:91	0xe3c710		0f84de000000		JE 0xe3c7f4										
  traffic_log.go:91	0xe3c716		4889842478010000	MOVQ AX, 0x178(SP)									
  traffic_log.go:91	0xe3c71e		4889bc2490010000	MOVQ DI, 0x190(SP)									
  traffic_log.go:91	0xe3c726		4c899424b0010000	MOVQ R10, 0x1b0(SP)									
  traffic_log.go:91	0xe3c72e		48898c2488010000	MOVQ CX, 0x188(SP)									
  traffic_log.go:91	0xe3c736		48899c2480010000	MOVQ BX, 0x180(SP)									
  traffic_log.go:91	0xe3c73e		4889b42498010000	MOVQ SI, 0x198(SP)									
  traffic_log.go:91	0xe3c746		4c898424a0010000	MOVQ R8, 0x1a0(SP)									
  traffic_log.go:91	0xe3c74e		4c898c24a8010000	MOVQ R9, 0x1a8(SP)									
  traffic_log.go:95	0xe3c756		90			NOPL											
  traffic_log.go:91	0xe3c757		4889c2			MOVQ AX, DX										
  mutex.go:85		0xe3c75a		31c0			XORL AX, AX										
  mutex.go:85		0xe3c75c		41bb01000000		MOVL $__minor_os_version__(SB), R11							
  mutex.go:85		0xe3c762		f0440fb11a		LOCK CMPXCHGL R11, 0(DX)								
  mutex.go:85		0xe3c767		410f94c3		SETE R11										
  mutex.go:85		0xe3c76b		4584db			TESTL R11, R11										
  mutex.go:85		0xe3c76e		7510			JNE 0xe3c780										
  mutex.go:92		0xe3c770		4889d0			MOVQ DX, AX										
  mutex.go:92		0xe3c773		e8a8b264ff		CALL sync.(*Mutex).lockSlow(SB)								
  traffic_log.go:96	0xe3c778		488b942478010000	MOVQ 0x178(SP), DX									
  traffic_log.go:96	0xe3c780		4889d0			MOVQ DX, AX										
  traffic_log.go:96	0xe3c783		e8b8cdffff		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).buildRunSnapExLocked(SB)	
  traffic_log.go:96	0xe3c788		4889442460		MOVQ AX, 0x60(SP)									
  traffic_log.go:96	0xe3c78d		48895c2438		MOVQ BX, 0x38(SP)									
  traffic_log.go:97	0xe3c792		4889cf			MOVQ CX, DI										
  traffic_log.go:97	0xe3c795		4889d9			MOVQ BX, CX										
  traffic_log.go:97	0xe3c798		4889c3			MOVQ AX, BX										
  traffic_log.go:97	0xe3c79b		488b842478010000	MOVQ 0x178(SP), AX									
  traffic_log.go:97	0xe3c7a3		e8f8ecffff		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).collectActiveEdgeLocks(SB)	
  traffic_log.go:97	0xe3c7a8		48898424d8000000	MOVQ AX, 0xd8(SP)									
  traffic_log.go:98	0xe3c7b0		90			NOPL											
  mutex.go:221		0xe3c7b1		bbffffffff		MOVL $-0x1, BX										
  mutex.go:221		0xe3c7b6		488b8c2478010000	MOVQ 0x178(SP), CX									
  mutex.go:221		0xe3c7be		f00fc119		LOCK XADDL BX, 0(CX)									
  mutex.go:221		0xe3c7c2		ffcb			DECL BX											
  mutex.go:222		0xe3c7c4		85db			TESTL BX, BX										
  mutex.go:222		0xe3c7c6		7418			JE 0xe3c7e0										
  mutex.go:225		0xe3c7c8		4889c8			MOVQ CX, AX										
  mutex.go:225		0xe3c7cb		e830b564ff		CALL sync.(*Mutex).unlockSlow(SB)							
  traffic_log.go:137	0xe3c7d0		488b8424d8000000	MOVQ 0xd8(SP), AX									
  traffic_log.go:108	0xe3c7d8		488b8c2478010000	MOVQ 0x178(SP), CX									
  traffic_log.go:101	0xe3c7e0		488b542460		MOVQ 0x60(SP), DX									
  traffic_log.go:101	0xe3c7e5		4c8b942488010000	MOVQ 0x188(SP), R10									
  traffic_log.go:101	0xe3c7ed		488b5c2438		MOVQ 0x38(SP), BX									
  traffic_log.go:101	0xe3c7f2		eb10			JMP 0xe3c804										
  traffic_log.go:92	0xe3c7f4		4881c468010000		ADDQ $.file+283(SB), SP									
  traffic_log.go:92	0xe3c7fb		5d			POPQ BP											
  traffic_log.go:92	0xe3c7fc		c3			RET											
  traffic_log.go:101	0xe3c7fd		4883c268		ADDQ $.file+27(SB), DX									
  traffic_log.go:101	0xe3c801		48ffcb			DECQ BX											
  traffic_log.go:101	0xe3c804		4885db			TESTQ BX, BX										
  traffic_log.go:101	0xe3c807		0f8e06010000		JLE 0xe3c913										
  traffic_log.go:101	0xe3c80d		4c8b1a			MOVQ 0(DX), R11										
  traffic_log.go:101	0xe3c810		4c895c2468		MOVQ R11, 0x68(SP)									
  traffic_log.go:101	0xe3c815		488d7208		LEAQ 0x8(DX), SI									
  traffic_log.go:101	0xe3c819		488d7c2470		LEAQ 0x70(SP), DI									
  traffic_log.go:101	0xe3c81e		6690			NOPW											
  traffic_log.go:101	0xe3c820		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_log.go:101	0xe3c825		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_log.go:101	0xe3c82a		e81dc663ff		CALL 0x478e4c										
  traffic_log.go:101	0xe3c82f		488b6d00		MOVQ 0(BP), BP										
  traffic_log.go:102	0xe3c833		4c8b5c2470		MOVQ 0x70(SP), R11									
  traffic_log.go:102	0xe3c838		4d39da			CMPQ R10, R11										
  traffic_log.go:102	0xe3c83b		7405			JE 0xe3c842										
  traffic_log.go:102	0xe3c83d		31f6			XORL SI, SI										
  traffic_log.go:102	0xe3c83f		90			NOPL											
  traffic_log.go:102	0xe3c840		eb4a			JMP 0xe3c88c										
  traffic_log.go:101	0xe3c842		48895c2458		MOVQ BX, 0x58(SP)									
  traffic_log.go:101	0xe3c847		4889942460010000	MOVQ DX, 0x160(SP)									
  traffic_log.go:102	0xe3c84f		488b442468		MOVQ 0x68(SP), AX									
  traffic_log.go:102	0xe3c854		488b9c2480010000	MOVQ 0x180(SP), BX									
  traffic_log.go:102	0xe3c85c		4c89d9			MOVQ R11, CX										
  traffic_log.go:102	0xe3c85f		90			NOPL											
  traffic_log.go:102	0xe3c860		e8fb655cff		CALL runtime.memequal(SB)								
  traffic_log.go:108	0xe3c865		488b8c2478010000	MOVQ 0x178(SP), CX									
  traffic_log.go:101	0xe3c86d		488b942460010000	MOVQ 0x160(SP), DX									
  traffic_log.go:101	0xe3c875		488b5c2458		MOVQ 0x58(SP), BX									
  traffic_log.go:102	0xe3c87a		4c8b942488010000	MOVQ 0x188(SP), R10									
  traffic_log.go:102	0xe3c882		89c6			MOVL AX, SI										
  traffic_log.go:137	0xe3c884		488b8424d8000000	MOVQ 0xd8(SP), AX									
  traffic_log.go:102	0xe3c88c		4084f6			TESTL SI, SI										
  traffic_log.go:102	0xe3c88f		0f8468ffffff		JE 0xe3c7fd										
  traffic_log.go:102	0xe3c895		80bc24b000000000	CMPB 0xb0(SP), $0x0									
  traffic_log.go:102	0xe3c89d		0f1f00			NOPL 0(AX)										
  traffic_log.go:102	0xe3c8a0		0f8457ffffff		JE 0xe3c7fd										
  traffic_log.go:103	0xe3c8a6		488b942480000000	MOVQ 0x80(SP), DX									
  traffic_log.go:10	0xe3c8ae		4885d2			TESTQ DX, DX										
  traffic_log.go:10	0xe3c8b1		7412			JE 0xe3c8c5										
  traffic_log.go:103	0xe3c8b3		4c8b8c2490000000	MOVQ 0x90(SP), R9									
  traffic_log.go:103	0xe3c8bb		0f1f440000		NOPL 0(AX)(AX*1)									
  traffic_log.go:10	0xe3c8c0		4d85c9			TESTQ R9, R9										
  traffic_log.go:10	0xe3c8c3		750e			JNE 0xe3c8d3										
  traffic_log.go:10	0xe3c8c5		bb06000000		MOVL $__major_os_version__(SB), BX							
  traffic_log.go:10	0xe3c8ca		488d15f6293300		LEAQ go:string.*+28095(SB), DX								
  traffic_log.go:103	0xe3c8d1		eb4d			JMP 0xe3c920										
  traffic_log.go:103	0xe3c8d3		488b5c2478		MOVQ 0x78(SP), BX									
  traffic_log.go:103	0xe3c8d8		4c8b842488000000	MOVQ 0x88(SP), R8									
  traffic_log.go:13	0xe3c8e0		31c0			XORL AX, AX										
  traffic_log.go:13	0xe3c8e2		4889d1			MOVQ DX, CX										
  traffic_log.go:13	0xe3c8e5		488d3d5cc13200		LEAQ go:string.*+1344(SB), DI								
  traffic_log.go:13	0xe3c8ec		be03000000		MOVL $__subsystem__(SB), SI								
  traffic_log.go:13	0xe3c8f1		e8aa8b61ff		CALL runtime.concatstring3(SB)								
  traffic_log.go:108	0xe3c8f6		488b8c2478010000	MOVQ 0x178(SP), CX									
  traffic_log.go:108	0xe3c8fe		4c8b942488010000	MOVQ 0x188(SP), R10									
  traffic_log.go:103	0xe3c906		4889c2			MOVQ AX, DX										
  traffic_log.go:137	0xe3c909		488b8424d8000000	MOVQ 0xd8(SP), AX									
  traffic_log.go:103	0xe3c911		eb0d			JMP 0xe3c920										
  traffic_log.go:103	0xe3c913		31db			XORL BX, BX										
  traffic_log.go:103	0xe3c915		31d2			XORL DX, DX										
  traffic_log.go:103	0xe3c917		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_log.go:107	0xe3c920		4885db			TESTQ BX, BX										
  traffic_log.go:107	0xe3c923		0f85be000000		JNE 0xe3c9e7										
  traffic_log.go:107	0xe3c929		48895c2448		MOVQ BX, 0x48(SP)									
  traffic_log.go:107	0xe3c92e		48899424e0000000	MOVQ DX, 0xe0(SP)									
  traffic_log.go:108	0xe3c936		4889c8			MOVQ CX, AX										
  traffic_log.go:108	0xe3c939		488b9c2480010000	MOVQ 0x180(SP), BX									
  traffic_log.go:108	0xe3c941		4c89d1			MOVQ R10, CX										
  traffic_log.go:108	0xe3c944		48bf00d6117e03000000	MOVQ $0x37e11d600, DI									
  traffic_log.go:108	0xe3c94e		e8edbfffff		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).FreshMonitorSnap(SB)		
  traffic_log.go:108	0xe3c953		84db			TESTL BL, BL										
  traffic_log.go:108	0xe3c955		750f			JNE 0xe3c966										
  traffic_log.go:114	0xe3c957		488b5c2448		MOVQ 0x48(SP), BX									
  traffic_log.go:114	0xe3c95c		488b8424e0000000	MOVQ 0xe0(SP), AX									
  traffic_log.go:108	0xe3c964		eb6e			JMP 0xe3c9d4										
  traffic_log.go:109	0xe3c966		488b9c24a0010000	MOVQ 0x1a0(SP), BX									
  traffic_log.go:109	0xe3c96e		488b8c24a8010000	MOVQ 0x1a8(SP), CX									
  traffic_log.go:109	0xe3c976		4889c7			MOVQ AX, DI										
  traffic_log.go:109	0xe3c979		488b842498010000	MOVQ 0x198(SP), AX									
  traffic_log.go:109	0xe3c981		e89ac7ffff		CALL CAS-Backend/pkg/diapdu.resolveCurrentEdgeOnPath(SB)				
  traffic_log.go:109	0xe3c986		4584c0			TESTL R8, R8										
  traffic_log.go:109	0xe3c989		743c			JE 0xe3c9c7										
  traffic_log.go:10	0xe3c98b		4885db			TESTQ BX, BX										
  traffic_log.go:10	0xe3c98e		7405			JE 0xe3c995										
  traffic_log.go:10	0xe3c990		4885ff			TESTQ DI, DI										
  traffic_log.go:10	0xe3c993		750e			JNE 0xe3c9a3										
  traffic_log.go:10	0xe3c995		bb06000000		MOVL $__major_os_version__(SB), BX							
  traffic_log.go:10	0xe3c99a		488d0526293300		LEAQ go:string.*+28095(SB), AX								
  traffic_log.go:110	0xe3c9a1		eb31			JMP 0xe3c9d4										
  traffic_log.go:13	0xe3c9a3		be03000000		MOVL $__subsystem__(SB), SI								
  traffic_log.go:13	0xe3c9a8		4989c8			MOVQ CX, R8										
  traffic_log.go:13	0xe3c9ab		4989f9			MOVQ DI, R9										
  traffic_log.go:13	0xe3c9ae		4889d9			MOVQ BX, CX										
  traffic_log.go:13	0xe3c9b1		488d3d90c03200		LEAQ go:string.*+1344(SB), DI								
  traffic_log.go:13	0xe3c9b8		4889c3			MOVQ AX, BX										
  traffic_log.go:13	0xe3c9bb		31c0			XORL AX, AX										
  traffic_log.go:13	0xe3c9bd		0f1f00			NOPL 0(AX)										
  traffic_log.go:13	0xe3c9c0		e8db8a61ff		CALL runtime.concatstring3(SB)								
  traffic_log.go:110	0xe3c9c5		eb0d			JMP 0xe3c9d4										
  traffic_log.go:114	0xe3c9c7		488b5c2448		MOVQ 0x48(SP), BX									
  traffic_log.go:114	0xe3c9cc		488b8424e0000000	MOVQ 0xe0(SP), AX									
  traffic_log.go:115	0xe3c9d4		4c8b942488010000	MOVQ 0x188(SP), R10									
  traffic_log.go:114	0xe3c9dc		4889c2			MOVQ AX, DX										
  traffic_log.go:137	0xe3c9df		488b8424d8000000	MOVQ 0xd8(SP), AX									
  traffic_log.go:114	0xe3c9e7		4885db			TESTQ BX, BX										
  traffic_log.go:114	0xe3c9ea		0f85b8000000		JNE 0xe3caa8										
  traffic_log.go:114	0xe3c9f0		48895c2450		MOVQ BX, 0x50(SP)									
  traffic_log.go:114	0xe3c9f5		4889942458010000	MOVQ DX, 0x158(SP)									
  traffic_log.go:115	0xe3c9fd		488b056c811700		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), AX				
  traffic_log.go:115	0xe3ca04		488b9c2480010000	MOVQ 0x180(SP), BX									
  traffic_log.go:115	0xe3ca0c		4c89d1			MOVQ R10, CX										
  traffic_log.go:115	0xe3ca0f		e82c5c0000		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB)				
  traffic_log.go:115	0xe3ca14		84db			TESTL BL, BL										
  traffic_log.go:115	0xe3ca16		750f			JNE 0xe3ca27										
  traffic_log.go:121	0xe3ca18		488b5c2450		MOVQ 0x50(SP), BX									
  traffic_log.go:121	0xe3ca1d		488b842458010000	MOVQ 0x158(SP), AX									
  traffic_log.go:115	0xe3ca25		eb6e			JMP 0xe3ca95										
  traffic_log.go:116	0xe3ca27		8400			TESTB AL, 0(AX)										
  traffic_log.go:116	0xe3ca29		488d7850		LEAQ 0x50(AX), DI									
  traffic_log.go:116	0xe3ca2d		488b842498010000	MOVQ 0x198(SP), AX									
  traffic_log.go:116	0xe3ca35		488b9c24a0010000	MOVQ 0x1a0(SP), BX									
  traffic_log.go:116	0xe3ca3d		488b8c24a8010000	MOVQ 0x1a8(SP), CX									
  traffic_log.go:116	0xe3ca45		e8d6c6ffff		CALL CAS-Backend/pkg/diapdu.resolveCurrentEdgeOnPath(SB)				
  traffic_log.go:116	0xe3ca4a		4584c0			TESTL R8, R8										
  traffic_log.go:116	0xe3ca4d		7439			JE 0xe3ca88										
  traffic_log.go:10	0xe3ca4f		4885db			TESTQ BX, BX										
  traffic_log.go:10	0xe3ca52		7405			JE 0xe3ca59										
  traffic_log.go:10	0xe3ca54		4885ff			TESTQ DI, DI										
  traffic_log.go:10	0xe3ca57		750e			JNE 0xe3ca67										
  traffic_log.go:10	0xe3ca59		bb06000000		MOVL $__major_os_version__(SB), BX							
  traffic_log.go:10	0xe3ca5e		488d0562283300		LEAQ go:string.*+28095(SB), AX								
  traffic_log.go:117	0xe3ca65		eb2e			JMP 0xe3ca95										
  traffic_log.go:13	0xe3ca67		be03000000		MOVL $__subsystem__(SB), SI								
  traffic_log.go:13	0xe3ca6c		4989c8			MOVQ CX, R8										
  traffic_log.go:13	0xe3ca6f		4989f9			MOVQ DI, R9										
  traffic_log.go:13	0xe3ca72		4889d9			MOVQ BX, CX										
  traffic_log.go:13	0xe3ca75		488d3dccbf3200		LEAQ go:string.*+1344(SB), DI								
  traffic_log.go:13	0xe3ca7c		4889c3			MOVQ AX, BX										
  traffic_log.go:13	0xe3ca7f		31c0			XORL AX, AX										
  traffic_log.go:13	0xe3ca81		e81a8a61ff		CALL runtime.concatstring3(SB)								
  traffic_log.go:117	0xe3ca86		eb0d			JMP 0xe3ca95										
  traffic_log.go:121	0xe3ca88		488b5c2450		MOVQ 0x50(SP), BX									
  traffic_log.go:121	0xe3ca8d		488b842458010000	MOVQ 0x158(SP), AX									
  traffic_log.go:135	0xe3ca95		4c8b942488010000	MOVQ 0x188(SP), R10									
  traffic_log.go:121	0xe3ca9d		4889c2			MOVQ AX, DX										
  traffic_log.go:137	0xe3caa0		488b8424d8000000	MOVQ 0xd8(SP), AX									
  traffic_log.go:121	0xe3caa8		4885db			TESTQ BX, BX										
  traffic_log.go:121	0xe3caab		0f85dc000000		JNE 0xe3cb8d										
  traffic_log.go:122	0xe3cab1		488b9c24a0010000	MOVQ 0x1a0(SP), BX									
  traffic_log.go:122	0xe3cab9		0f1f8000000000		NOPL 0(AX)										
  traffic_log.go:122	0xe3cac0		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)							
  traffic_log.go:122	0xe3cac4		0f8cb5000000		JL 0xe3cb7f										
  traffic_log.go:123	0xe3caca		488b942498010000	MOVQ 0x198(SP), DX									
  traffic_log.go:123	0xe3cad2		488b4a08		MOVQ 0x8(DX), CX									
  traffic_log.go:10	0xe3cad6		4885c9			TESTQ CX, CX										
  traffic_log.go:10	0xe3cad9		740a			JE 0xe3cae5										
  traffic_log.go:123	0xe3cadb		4c8b4a18		MOVQ 0x18(DX), R9									
  traffic_log.go:123	0xe3cadf		90			NOPL											
  traffic_log.go:10	0xe3cae0		4d85c9			TESTQ R9, R9										
  traffic_log.go:10	0xe3cae3		750e			JNE 0xe3caf3										
  traffic_log.go:10	0xe3cae5		b906000000		MOVL $__major_os_version__(SB), CX							
  traffic_log.go:10	0xe3caea		488d35d6273300		LEAQ go:string.*+28095(SB), SI								
  traffic_log.go:123	0xe3caf1		eb20			JMP 0xe3cb13										
  traffic_log.go:123	0xe3caf3		488b1a			MOVQ 0(DX), BX										
  traffic_log.go:123	0xe3caf6		4c8b4210		MOVQ 0x10(DX), R8									
  traffic_log.go:13	0xe3cafa		31c0			XORL AX, AX										
  traffic_log.go:13	0xe3cafc		488d3d45bf3200		LEAQ go:string.*+1344(SB), DI								
  traffic_log.go:13	0xe3cb03		be03000000		MOVL $__subsystem__(SB), SI								
  traffic_log.go:13	0xe3cb08		e8938961ff		CALL runtime.concatstring3(SB)								
  traffic_log.go:123	0xe3cb0d		4889d9			MOVQ BX, CX										
  traffic_log.go:123	0xe3cb10		4889c6			MOVQ AX, SI										
  traffic_log.go:123	0xe3cb13		440f11bc2448010000	MOVUPS X15, 0x148(SP)									
  traffic_log.go:123	0xe3cb1c		4889f0			MOVQ SI, AX										
  traffic_log.go:123	0xe3cb1f		4889cb			MOVQ CX, BX										
  traffic_log.go:123	0xe3cb22		e8f9d562ff		CALL runtime.convTstring(SB)								
  traffic_log.go:123	0xe3cb27		488d0df25d2000		LEAQ runtime.types+383264(SB), CX							
  traffic_log.go:123	0xe3cb2e		48898c2448010000	MOVQ CX, 0x148(SP)									
  traffic_log.go:123	0xe3cb36		4889842450010000	MOVQ AX, 0x150(SP)									
  traffic_log.go:123	0xe3cb3e		488d0592d83400		LEAQ go:string.*+138959(SB), AX								
  traffic_log.go:123	0xe3cb45		bb1d000000		MOVL $__major_os_version__+23(SB), BX							
  traffic_log.go:123	0xe3cb4a		bf01000000		MOVL $__minor_os_version__(SB), DI							
  traffic_log.go:123	0xe3cb4f		4889fe			MOVQ DI, SI										
  traffic_log.go:123	0xe3cb52		488d8c2448010000	LEAQ 0x148(SP), CX									
  traffic_log.go:123	0xe3cb5a		e8e1276eff		CALL fmt.Sprintf(SB)									
  traffic_log.go:135	0xe3cb5f		4c8b942488010000	MOVQ 0x188(SP), R10									
  traffic_log.go:136	0xe3cb67		4889d9			MOVQ BX, CX										
  traffic_log.go:136	0xe3cb6a		4889c2			MOVQ AX, DX										
  traffic_log.go:137	0xe3cb6d		488b8424d8000000	MOVQ 0xd8(SP), AX									
  traffic_log.go:130	0xe3cb75		488b9c24a0010000	MOVQ 0x1a0(SP), BX									
  traffic_log.go:123	0xe3cb7d		eb19			JMP 0xe3cb98										
  traffic_log.go:123	0xe3cb7f		b90c000000		MOVL $__major_os_version__+6(SB), CX							
  traffic_log.go:123	0xe3cb84		488d15bfb13300		LEAQ go:string.*+63554(SB), DX								
  traffic_log.go:122	0xe3cb8b		eb0b			JMP 0xe3cb98										
  traffic_log.go:136	0xe3cb8d		4889d9			MOVQ BX, CX										
  traffic_log.go:130	0xe3cb90		488b9c24a0010000	MOVQ 0x1a0(SP), BX									
  traffic_log.go:136	0xe3cb98		48894c2448		MOVQ CX, 0x48(SP)									
  traffic_log.go:136	0xe3cb9d		48899424e0000000	MOVQ DX, 0xe0(SP)									
  traffic_log.go:130	0xe3cba5		4885db			TESTQ BX, BX										
  traffic_log.go:130	0xe3cba8		750e			JNE 0xe3cbb8										
  traffic_log.go:130	0xe3cbaa		bb03000000		MOVL $__subsystem__(SB), BX								
  traffic_log.go:130	0xe3cbaf		488d359bbe3200		LEAQ go:string.*+1353(SB), SI								
  traffic_log.go:130	0xe3cbb6		eb24			JMP 0xe3cbdc										
  traffic_log.go:131	0xe3cbb8		488b842498010000	MOVQ 0x198(SP), AX									
  traffic_log.go:131	0xe3cbc0		488b8c24a8010000	MOVQ 0x1a8(SP), CX									
  traffic_log.go:131	0xe3cbc8		488d3d79be3200		LEAQ go:string.*+1344(SB), DI								
  traffic_log.go:131	0xe3cbcf		be03000000		MOVL $__subsystem__(SB), SI								
  traffic_log.go:131	0xe3cbd4		e8c73a6aff		CALL strings.Join(SB)									
  traffic_log.go:135	0xe3cbd9		4889c6			MOVQ AX, SI										
  traffic_log.go:135	0xe3cbdc		48895c2440		MOVQ BX, 0x40(SP)									
  traffic_log.go:135	0xe3cbe1		4889b424d0000000	MOVQ SI, 0xd0(SP)									
  traffic_log.go:134	0xe3cbe9		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  traffic_log.go:134	0xe3cbf2		440f11bc2418010000	MOVUPS X15, 0x118(SP)									
  traffic_log.go:134	0xe3cbfb		440f11bc2428010000	MOVUPS X15, 0x128(SP)									
  traffic_log.go:134	0xe3cc04		440f11bc2438010000	MOVUPS X15, 0x138(SP)									
  traffic_log.go:135	0xe3cc0d		488b842490010000	MOVQ 0x190(SP), AX									
  traffic_log.go:135	0xe3cc15		e886d462ff		CALL runtime.convT64(SB)								
  traffic_log.go:135	0xe3cc1a		488d0d3f5f2000		LEAQ runtime.types+383840(SB), CX							
  traffic_log.go:135	0xe3cc21		48898c2408010000	MOVQ CX, 0x108(SP)									
  traffic_log.go:135	0xe3cc29		4889842410010000	MOVQ AX, 0x110(SP)									
  traffic_log.go:135	0xe3cc31		488b842480010000	MOVQ 0x180(SP), AX									
  traffic_log.go:135	0xe3cc39		488b9c2488010000	MOVQ 0x188(SP), BX									
  traffic_log.go:135	0xe3cc41		e8dad462ff		CALL runtime.convTstring(SB)								
  traffic_log.go:135	0xe3cc46		488d0dd35c2000		LEAQ runtime.types+383264(SB), CX							
  traffic_log.go:135	0xe3cc4d		48898c2418010000	MOVQ CX, 0x118(SP)									
  traffic_log.go:135	0xe3cc55		4889842420010000	MOVQ AX, 0x120(SP)									
  traffic_log.go:135	0xe3cc5d		488b8424b0010000	MOVQ 0x1b0(SP), AX									
  traffic_log.go:135	0xe3cc65		e836d462ff		CALL runtime.convT64(SB)								
  traffic_log.go:135	0xe3cc6a		488d0def5e2000		LEAQ runtime.types+383840(SB), CX							
  traffic_log.go:135	0xe3cc71		48898c2428010000	MOVQ CX, 0x128(SP)									
  traffic_log.go:135	0xe3cc79		4889842430010000	MOVQ AX, 0x130(SP)									
  traffic_log.go:135	0xe3cc81		488b8424d0000000	MOVQ 0xd0(SP), AX									
  traffic_log.go:135	0xe3cc89		488b5c2440		MOVQ 0x40(SP), BX									
  traffic_log.go:135	0xe3cc8e		e88dd462ff		CALL runtime.convTstring(SB)								
  traffic_log.go:135	0xe3cc93		488d0d865c2000		LEAQ runtime.types+383264(SB), CX							
  traffic_log.go:135	0xe3cc9a		48898c2438010000	MOVQ CX, 0x138(SP)									
  traffic_log.go:135	0xe3cca2		4889842440010000	MOVQ AX, 0x140(SP)									
  print.go:233		0xe3ccaa		488b1dcf536d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe3ccb1		488d0528ee0202		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe3ccb8		bf47000000		MOVL $__major_os_version__+65(SB), DI							
  print.go:233		0xe3ccbd		488db42408010000	LEAQ 0x108(SP), SI									
  print.go:233		0xe3ccc5		41b804000000		MOVL $__subsystem__+1(SB), R8								
  print.go:233		0xe3cccb		4d89c1			MOVQ R8, R9										
  print.go:233		0xe3ccce		488d0d55a43600		LEAQ go:string.*+257058(SB), CX								
  print.go:233		0xe3ccd5		e846256eff		CALL fmt.Fprintf(SB)									
  traffic_log.go:136	0xe3ccda		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)									
  traffic_log.go:136	0xe3cce3		488b8424e0000000	MOVQ 0xe0(SP), AX									
  traffic_log.go:136	0xe3cceb		488b5c2448		MOVQ 0x48(SP), BX									
  traffic_log.go:136	0xe3ccf0		e82bd462ff		CALL runtime.convTstring(SB)								
  traffic_log.go:136	0xe3ccf5		488d0d245c2000		LEAQ runtime.types+383264(SB), CX							
  traffic_log.go:136	0xe3ccfc		48898c24f8000000	MOVQ CX, 0xf8(SP)									
  traffic_log.go:136	0xe3cd04		4889842400010000	MOVQ AX, 0x100(SP)									
  print.go:233		0xe3cd0c		488b1d6d536d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe3cd13		488d05c6ed0202		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe3cd1a		bf25000000		MOVL $__major_os_version__+31(SB), DI							
  print.go:233		0xe3cd1f		488db424f8000000	LEAQ 0xf8(SP), SI									
  print.go:233		0xe3cd27		41b801000000		MOVL $__minor_os_version__(SB), R8							
  print.go:233		0xe3cd2d		4d89c1			MOVQ R8, R9										
  print.go:233		0xe3cd30		488d0dbf5c3500		LEAQ go:string.*+173294(SB), CX								
  print.go:233		0xe3cd37		e8e4246eff		CALL fmt.Fprintf(SB)									
  traffic_log.go:137	0xe3cd3c		488b8424d8000000	MOVQ 0xd8(SP), AX									
  traffic_log.go:137	0xe3cd44		e8f7f5ffff		CALL CAS-Backend/pkg/diapdu.formatLockList(SB)						
  traffic_log.go:137	0xe3cd49		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)									
  traffic_log.go:137	0xe3cd52		e8c9d362ff		CALL runtime.convTstring(SB)								
  traffic_log.go:137	0xe3cd57		488d0dc25b2000		LEAQ runtime.types+383264(SB), CX							
  traffic_log.go:137	0xe3cd5e		48898c24e8000000	MOVQ CX, 0xe8(SP)									
  traffic_log.go:137	0xe3cd66		48898424f0000000	MOVQ AX, 0xf0(SP)									
  print.go:233		0xe3cd6e		488b1d0b536d02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe3cd75		488d0564ed0202		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe3cd7c		488d0d985c3500		LEAQ go:string.*+173331(SB), CX								
  print.go:233		0xe3cd83		bf25000000		MOVL $__major_os_version__+31(SB), DI							
  print.go:233		0xe3cd88		488db424e8000000	LEAQ 0xe8(SP), SI									
  print.go:233		0xe3cd90		41b801000000		MOVL $__minor_os_version__(SB), R8							
  print.go:233		0xe3cd96		4d89c1			MOVQ R8, R9										
  print.go:233		0xe3cd99		e882246eff		CALL fmt.Fprintf(SB)									
  traffic_log.go:138	0xe3cd9e		4881c468010000		ADDQ $.file+283(SB), SP									
  traffic_log.go:138	0xe3cda5		5d			POPQ BP											
  traffic_log.go:138	0xe3cda6		c3			RET											
  traffic_log.go:90	0xe3cda7		4889442408		MOVQ AX, 0x8(SP)									
  traffic_log.go:90	0xe3cdac		48895c2410		MOVQ BX, 0x10(SP)									
  traffic_log.go:90	0xe3cdb1		48894c2418		MOVQ CX, 0x18(SP)									
  traffic_log.go:90	0xe3cdb6		48897c2420		MOVQ DI, 0x20(SP)									
  traffic_log.go:90	0xe3cdbb		4889742428		MOVQ SI, 0x28(SP)									
  traffic_log.go:90	0xe3cdc0		4c89442430		MOVQ R8, 0x30(SP)									
  traffic_log.go:90	0xe3cdc5		4c894c2438		MOVQ R9, 0x38(SP)									
  traffic_log.go:90	0xe3cdca		4c89542440		MOVQ R10, 0x40(SP)									
  traffic_log.go:90	0xe3cdcf		e80c9763ff		CALL runtime.morestack_noctxt.abi0(SB)							
  traffic_log.go:90	0xe3cdd4		488b442408		MOVQ 0x8(SP), AX									
  traffic_log.go:90	0xe3cdd9		488b5c2410		MOVQ 0x10(SP), BX									
  traffic_log.go:90	0xe3cdde		488b4c2418		MOVQ 0x18(SP), CX									
  traffic_log.go:90	0xe3cde3		488b7c2420		MOVQ 0x20(SP), DI									
  traffic_log.go:90	0xe3cde8		488b742428		MOVQ 0x28(SP), SI									
  traffic_log.go:90	0xe3cded		4c8b442430		MOVQ 0x30(SP), R8									
  traffic_log.go:90	0xe3cdf2		4c8b4c2438		MOVQ 0x38(SP), R9									
  traffic_log.go:90	0xe3cdf7		4c8b542440		MOVQ 0x40(SP), R10									
  traffic_log.go:90	0xe3cdfc		0f1f4000		NOPL 0(AX)										
  traffic_log.go:90	0xe3ce00		e9dbf8ffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).LogTaskAssignment(SB)		
  :-1			0xe3ce05		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce06		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce07		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce08		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce09		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce0a		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce0b		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce0c		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce0d		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce0e		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce0f		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce10		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce11		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce12		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce13		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce14		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce15		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce16		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce17		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce18		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce19		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce1a		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce1b		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce1c		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce1d		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce1e		cc			INT $__subsystem__(SB)									
  :-1			0xe3ce1f		cc			INT $__subsystem__(SB)									

