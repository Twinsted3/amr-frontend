TEXT CAS-Backend/pkg/diapdu.PlanStationPath(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/pathplan.go
  pathplan.go:11	0xe2c600		4c8da42450ffffff	LEAQ 0xffffff50(SP), R12				
  pathplan.go:11	0xe2c608		4d3b6610		CMPQ R12, 0x10(R14)					
  pathplan.go:11	0xe2c60c		0f86e1070000		JBE 0xe2cdf3						
  pathplan.go:11	0xe2c612		55			PUSHQ BP						
  pathplan.go:11	0xe2c613		4889e5			MOVQ SP, BP						
  pathplan.go:11	0xe2c616		4881ec28010000		SUBQ $.file+219(SB), SP					
  pathplan.go:11	0xe2c61d		48899c2440010000	MOVQ BX, 0x140(SP)					
  pathplan.go:11	0xe2c625		4889bc2450010000	MOVQ DI, 0x150(SP)					
  pathplan.go:11	0xe2c62d		4c89842460010000	MOVQ R8, 0x160(SP)					
  pathplan.go:12	0xe2c635		4885c0			TESTQ AX, AX						
  pathplan.go:12	0xe2c638		0f8452010000		JE 0xe2c790						
  pathplan.go:12	0xe2c63e		4889842438010000	MOVQ AX, 0x138(SP)					
  pathplan.go:12	0xe2c646		4c898c2468010000	MOVQ R9, 0x168(SP)					
  pathplan.go:12	0xe2c64e		4c89842460010000	MOVQ R8, 0x160(SP)					
  pathplan.go:12	0xe2c656		4889bc2450010000	MOVQ DI, 0x150(SP)					
  pathplan.go:12	0xe2c65e		4889b42458010000	MOVQ SI, 0x158(SP)					
  pathplan.go:15	0xe2c666		4889d8			MOVQ BX, AX						
  pathplan.go:15	0xe2c669		4889cb			MOVQ CX, BX						
  pathplan.go:15	0xe2c66c		e84f636bff		CALL strings.TrimSpace(SB)				
  pathplan.go:15	0xe2c671		48899c24a8000000	MOVQ BX, 0xa8(SP)					
  pathplan.go:15	0xe2c679		4889842400010000	MOVQ AX, 0x100(SP)					
  pathplan.go:16	0xe2c681		488b842450010000	MOVQ 0x150(SP), AX					
  pathplan.go:16	0xe2c689		488b9c2458010000	MOVQ 0x158(SP), BX					
  pathplan.go:16	0xe2c691		e82a636bff		CALL strings.TrimSpace(SB)				
  pathplan.go:17	0xe2c696		488b8c24a8000000	MOVQ 0xa8(SP), CX					
  pathplan.go:17	0xe2c69e		6690			NOPW							
  pathplan.go:17	0xe2c6a0		4885c9			TESTQ CX, CX						
  pathplan.go:17	0xe2c6a3		0f84b9000000		JE 0xe2c762						
  pathplan.go:17	0xe2c6a9		4885db			TESTQ BX, BX						
  pathplan.go:17	0xe2c6ac		0f84b0000000		JE 0xe2c762						
  pathplan.go:16	0xe2c6b2		48899c24a0000000	MOVQ BX, 0xa0(SP)					
  pathplan.go:16	0xe2c6ba		48898424f8000000	MOVQ AX, 0xf8(SP)					
  pathplan.go:21	0xe2c6c2		488b8c2468010000	MOVQ 0x168(SP), CX					
  pathplan.go:21	0xe2c6ca		488d5102		LEAQ 0x2(CX), DX					
  pathplan.go:21	0xe2c6ce		4889542470		MOVQ DX, 0x70(SP)					
  pathplan.go:21	0xe2c6d3		488d0546622100		LEAQ runtime.types+383264(SB), AX			
  pathplan.go:21	0xe2c6da		31db			XORL BX, BX						
  pathplan.go:21	0xe2c6dc		4889d1			MOVQ DX, CX						
  pathplan.go:21	0xe2c6df		90			NOPL							
  pathplan.go:21	0xe2c6e0		e87b5464ff		CALL runtime.makeslice(SB)				
  pathplan.go:22	0xe2c6e5		488b942468010000	MOVQ 0x168(SP), DX					
  pathplan.go:22	0xe2c6ed		4883fafe		CMPQ DX, $-0x2						
  pathplan.go:22	0xe2c6f1		7407			JE 0xe2c6fa						
  pathplan.go:22	0xe2c6f3		488b4c2470		MOVQ 0x70(SP), CX					
  pathplan.go:22	0xe2c6f8		eb1e			JMP 0xe2c718						
  pathplan.go:22	0xe2c6fa		bb01000000		MOVL $__minor_os_version__(SB), BX			
  pathplan.go:22	0xe2c6ff		31c9			XORL CX, CX						
  pathplan.go:22	0xe2c701		4889df			MOVQ BX, DI						
  pathplan.go:22	0xe2c704		488d3515622100		LEAQ runtime.types+383264(SB), SI			
  pathplan.go:22	0xe2c70b		e8305564ff		CALL runtime.growslice(SB)				
  pathplan.go:23	0xe2c710		488b942468010000	MOVQ 0x168(SP), DX					
  pathplan.go:22	0xe2c718		4c8b8424a8000000	MOVQ 0xa8(SP), R8					
  pathplan.go:22	0xe2c720		4c894008		MOVQ R8, 0x8(AX)					
  pathplan.go:22	0xe2c724		833d2514730200		CMPL runtime.writeBarrier(SB), $0x0			
  pathplan.go:22	0xe2c72b		750a			JNE 0xe2c737						
  pathplan.go:22	0xe2c72d		4c8b842400010000	MOVQ 0x100(SP), R8					
  pathplan.go:22	0xe2c735		eb17			JMP 0xe2c74e						
  pathplan.go:22	0xe2c737		e804bd64ff		CALL runtime.gcWriteBarrier2(SB)			
  pathplan.go:22	0xe2c73c		4c8b842400010000	MOVQ 0x100(SP), R8					
  pathplan.go:22	0xe2c744		4d8903			MOVQ R8, 0(R11)						
  pathplan.go:22	0xe2c747		4c8b08			MOVQ 0(AX), R9						
  pathplan.go:22	0xe2c74a		4d894b08		MOVQ R9, 0x8(R11)					
  pathplan.go:22	0xe2c74e		4c8900			MOVQ R8, 0(AX)						
  pathplan.go:23	0xe2c751		4c8b842460010000	MOVQ 0x160(SP), R8					
  pathplan.go:23	0xe2c759		bb01000000		MOVL $__minor_os_version__(SB), BX			
  pathplan.go:23	0xe2c75e		6690			NOPW							
  pathplan.go:23	0xe2c760		eb7e			JMP 0xe2c7e0						
  pathplan.go:18	0xe2c762		488d051f223600		LEAQ go:string.*+156800(SB), AX				
  pathplan.go:18	0xe2c769		bb21000000		MOVL $__major_os_version__+27(SB), BX			
  pathplan.go:18	0xe2c76e		31c9			XORL CX, CX						
  pathplan.go:18	0xe2c770		31ff			XORL DI, DI						
  pathplan.go:18	0xe2c772		4889fe			MOVQ DI, SI						
  pathplan.go:18	0xe2c775		e846fc6eff		CALL fmt.Errorf(SB)					
  pathplan.go:18	0xe2c77a		31c9			XORL CX, CX						
  pathplan.go:18	0xe2c77c		4889c7			MOVQ AX, DI						
  pathplan.go:18	0xe2c77f		4889de			MOVQ BX, SI						
  pathplan.go:18	0xe2c782		31c0			XORL AX, AX						
  pathplan.go:18	0xe2c784		4889cb			MOVQ CX, BX						
  pathplan.go:18	0xe2c787		4881c428010000		ADDQ $.file+219(SB), SP					
  pathplan.go:18	0xe2c78e		5d			POPQ BP							
  pathplan.go:18	0xe2c78f		c3			RET							
  pathplan.go:13	0xe2c790		488d05b3df3400		LEAQ go:string.*+74306(SB), AX				
  pathplan.go:13	0xe2c797		bb0f000000		MOVL $__major_os_version__+9(SB), BX			
  pathplan.go:13	0xe2c79c		31c9			XORL CX, CX						
  pathplan.go:13	0xe2c79e		31ff			XORL DI, DI						
  pathplan.go:13	0xe2c7a0		4889fe			MOVQ DI, SI						
  pathplan.go:13	0xe2c7a3		e818fc6eff		CALL fmt.Errorf(SB)					
  pathplan.go:13	0xe2c7a8		31c9			XORL CX, CX						
  pathplan.go:13	0xe2c7aa		4889c7			MOVQ AX, DI						
  pathplan.go:13	0xe2c7ad		4889de			MOVQ BX, SI						
  pathplan.go:13	0xe2c7b0		31c0			XORL AX, AX						
  pathplan.go:13	0xe2c7b2		4889cb			MOVQ CX, BX						
  pathplan.go:13	0xe2c7b5		4881c428010000		ADDQ $.file+219(SB), SP					
  pathplan.go:13	0xe2c7bc		5d			POPQ BP							
  pathplan.go:13	0xe2c7bd		c3			RET							
  pathplan.go:23	0xe2c7be		4c8b8424f0000000	MOVQ 0xf0(SP), R8					
  pathplan.go:23	0xe2c7c6		4983c010		ADDQ $__major_os_version__+10(SB), R8			
  pathplan.go:23	0xe2c7ca		4c8b8c24a8000000	MOVQ 0xa8(SP), R9					
  pathplan.go:23	0xe2c7d2		49ffc9			DECQ R9							
  pathplan.go:28	0xe2c7d5		4889f0			MOVQ SI, AX						
  pathplan.go:28	0xe2c7d8		4889d3			MOVQ DX, BX						
  pathplan.go:23	0xe2c7db		4c89ca			MOVQ R9, DX						
  pathplan.go:23	0xe2c7de		6690			NOPW							
  pathplan.go:23	0xe2c7e0		4885d2			TESTQ DX, DX						
  pathplan.go:23	0xe2c7e3		0f8edc000000		JLE 0xe2c8c5						
  pathplan.go:23	0xe2c7e9		48899424a8000000	MOVQ DX, 0xa8(SP)					
  pathplan.go:28	0xe2c7f1		48898c2498000000	MOVQ CX, 0x98(SP)					
  pathplan.go:28	0xe2c7f9		48895c2468		MOVQ BX, 0x68(SP)					
  pathplan.go:28	0xe2c7fe		48898424c8000000	MOVQ AX, 0xc8(SP)					
  pathplan.go:23	0xe2c806		4c898424f0000000	MOVQ R8, 0xf0(SP)					
  pathplan.go:23	0xe2c80e		498b00			MOVQ 0(R8), AX						
  pathplan.go:23	0xe2c811		498b5808		MOVQ 0x8(R8), BX					
  pathplan.go:24	0xe2c815		e8a6616bff		CALL strings.TrimSpace(SB)				
  pathplan.go:25	0xe2c81a		4885db			TESTQ BX, BX						
  pathplan.go:25	0xe2c81d		7517			JNE 0xe2c836						
  pathplan.go:28	0xe2c81f		488b8c2498000000	MOVQ 0x98(SP), CX					
  pathplan.go:28	0xe2c827		488b542468		MOVQ 0x68(SP), DX					
  pathplan.go:28	0xe2c82c		488bb424c8000000	MOVQ 0xc8(SP), SI					
  pathplan.go:26	0xe2c834		eb88			JMP 0xe2c7be						
  pathplan.go:28	0xe2c836		488b542468		MOVQ 0x68(SP), DX					
  pathplan.go:28	0xe2c83b		48ffc2			INCQ DX							
  pathplan.go:28	0xe2c83e		488b8c2498000000	MOVQ 0x98(SP), CX					
  pathplan.go:28	0xe2c846		4839d1			CMPQ CX, DX						
  pathplan.go:28	0xe2c849		720a			JB 0xe2c855						
  pathplan.go:28	0xe2c84b		488bb424c8000000	MOVQ 0xc8(SP), SI					
  pathplan.go:28	0xe2c853		eb3c			JMP 0xe2c891						
  pathplan.go:24	0xe2c855		48895c2450		MOVQ BX, 0x50(SP)					
  pathplan.go:24	0xe2c85a		48898424b8000000	MOVQ AX, 0xb8(SP)					
  pathplan.go:28	0xe2c862		488b8424c8000000	MOVQ 0xc8(SP), AX					
  pathplan.go:28	0xe2c86a		4889d3			MOVQ DX, BX						
  pathplan.go:28	0xe2c86d		bf01000000		MOVL $__minor_os_version__(SB), DI			
  pathplan.go:28	0xe2c872		488d35a7602100		LEAQ runtime.types+383264(SB), SI			
  pathplan.go:28	0xe2c879		e8c25364ff		CALL runtime.growslice(SB)				
  pathplan.go:28	0xe2c87e		4889c6			MOVQ AX, SI						
  pathplan.go:28	0xe2c881		4889da			MOVQ BX, DX						
  pathplan.go:28	0xe2c884		488b8424b8000000	MOVQ 0xb8(SP), AX					
  pathplan.go:28	0xe2c88c		488b5c2450		MOVQ 0x50(SP), BX					
  pathplan.go:28	0xe2c891		4c8d42ff		LEAQ -0x1(DX), R8					
  pathplan.go:28	0xe2c895		49c1e004		SHLQ $__subsystem__+1(SB), R8				
  pathplan.go:28	0xe2c899		4a895c0608		MOVQ BX, 0x8(SI)(R8*1)					
  pathplan.go:28	0xe2c89e		833dab12730200		CMPL runtime.writeBarrier(SB), $0x0			
  pathplan.go:28	0xe2c8a5		7410			JE 0xe2c8b7						
  pathplan.go:28	0xe2c8a7		e894bb64ff		CALL runtime.gcWriteBarrier2(SB)			
  pathplan.go:28	0xe2c8ac		498903			MOVQ AX, 0(R11)						
  pathplan.go:28	0xe2c8af		4e8b0c06		MOVQ 0(SI)(R8*1), R9					
  pathplan.go:28	0xe2c8b3		4d894b08		MOVQ R9, 0x8(R11)					
  pathplan.go:28	0xe2c8b7		4a890406		MOVQ AX, 0(SI)(R8*1)					
  pathplan.go:28	0xe2c8bb		0f1f440000		NOPL 0(AX)(AX*1)					
  pathplan.go:28	0xe2c8c0		e9f9feffff		JMP 0xe2c7be						
  pathplan.go:30	0xe2c8c5		48ffc3			INCQ BX							
  pathplan.go:30	0xe2c8c8		4839d9			CMPQ CX, BX						
  pathplan.go:30	0xe2c8cb		7311			JAE 0xe2c8de						
  pathplan.go:30	0xe2c8cd		bf01000000		MOVL $__minor_os_version__(SB), DI			
  pathplan.go:30	0xe2c8d2		488d3547602100		LEAQ runtime.types+383264(SB), SI			
  pathplan.go:30	0xe2c8d9		e8625364ff		CALL runtime.growslice(SB)				
  pathplan.go:30	0xe2c8de		488d53ff		LEAQ -0x1(BX), DX					
  pathplan.go:30	0xe2c8e2		48899424a8000000	MOVQ DX, 0xa8(SP)					
  pathplan.go:30	0xe2c8ea		48c1e204		SHLQ $__subsystem__+1(SB), DX				
  pathplan.go:30	0xe2c8ee		4c8b8424a0000000	MOVQ 0xa0(SP), R8					
  pathplan.go:30	0xe2c8f6		4c89441008		MOVQ R8, 0x8(AX)(DX*1)					
  pathplan.go:30	0xe2c8fb		833d4e12730200		CMPL runtime.writeBarrier(SB), $0x0			
  pathplan.go:30	0xe2c902		750a			JNE 0xe2c90e						
  pathplan.go:30	0xe2c904		4c8b8424f8000000	MOVQ 0xf8(SP), R8					
  pathplan.go:30	0xe2c90c		eb18			JMP 0xe2c926						
  pathplan.go:30	0xe2c90e		e82dbb64ff		CALL runtime.gcWriteBarrier2(SB)			
  pathplan.go:30	0xe2c913		4c8b8424f8000000	MOVQ 0xf8(SP), R8					
  pathplan.go:30	0xe2c91b		4d8903			MOVQ R8, 0(R11)						
  pathplan.go:30	0xe2c91e		4c8b0c10		MOVQ 0(AX)(DX*1), R9					
  pathplan.go:30	0xe2c922		4d894b08		MOVQ R9, 0x8(R11)					
  pathplan.go:30	0xe2c926		48898424c8000000	MOVQ AX, 0xc8(SP)					
  pathplan.go:30	0xe2c92e		48895c2468		MOVQ BX, 0x68(SP)					
  pathplan.go:30	0xe2c933		4c890410		MOVQ R8, 0(AX)(DX*1)					
  pathplan.go:32	0xe2c937		4889cf			MOVQ CX, DI						
  pathplan.go:32	0xe2c93a		4889d9			MOVQ BX, CX						
  pathplan.go:32	0xe2c93d		4889c3			MOVQ AX, BX						
  pathplan.go:32	0xe2c940		488b842438010000	MOVQ 0x138(SP), AX					
  pathplan.go:32	0xe2c948		e813050000		CALL CAS-Backend/pkg/diapdu.validateStationsOnGraph(SB)	
  pathplan.go:32	0xe2c94d		4885c0			TESTQ AX, AX						
  pathplan.go:32	0xe2c950		7528			JNE 0xe2c97a						
  pathplan.go:32	0xe2c952		488b9424a8000000	MOVQ 0xa8(SP), DX					
  pathplan.go:32	0xe2c95a		4c8b9c24c8000000	MOVQ 0xc8(SP), R11					
  pathplan.go:32	0xe2c962		488b842438010000	MOVQ 0x138(SP), AX					
  pathplan.go:32	0xe2c96a		488b4c2468		MOVQ 0x68(SP), CX					
  pathplan.go:32	0xe2c96f		31db			XORL BX, BX						
  pathplan.go:32	0xe2c971		31f6			XORL SI, SI						
  pathplan.go:32	0xe2c973		31ff			XORL DI, DI						
  pathplan.go:32	0xe2c975		4531c0			XORL R8, R8						
  pathplan.go:32	0xe2c978		eb4d			JMP 0xe2c9c7						
  pathplan.go:33	0xe2c97a		31c9			XORL CX, CX						
  pathplan.go:33	0xe2c97c		4889c7			MOVQ AX, DI						
  pathplan.go:33	0xe2c97f		4889de			MOVQ BX, SI						
  pathplan.go:33	0xe2c982		31c0			XORL AX, AX						
  pathplan.go:33	0xe2c984		4889cb			MOVQ CX, BX						
  pathplan.go:33	0xe2c987		4881c428010000		ADDQ $.file+219(SB), SP					
  pathplan.go:33	0xe2c98e		5d			POPQ BP							
  pathplan.go:33	0xe2c98f		c3			RET							
  pathplan.go:38	0xe2c990		4c8ba424a8000000	MOVQ 0xa8(SP), R12					
  pathplan.go:38	0xe2c998		4c8b9c24c8000000	MOVQ 0xc8(SP), R11					
  pathplan.go:38	0xe2c9a0		4c8bac2438010000	MOVQ 0x138(SP), R13					
  pathplan.go:38	0xe2c9a8		4c8b7c2468		MOVQ 0x68(SP), R15					
  pathplan.go:38	0xe2c9ad		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  pathplan.go:48	0xe2c9b5		4889ce			MOVQ CX, SI						
  pathplan.go:48	0xe2c9b8		4889c7			MOVQ AX, DI						
  pathplan.go:48	0xe2c9bb		4989d0			MOVQ DX, R8						
  pathplan.go:43	0xe2c9be		4c89e8			MOVQ R13, AX						
  pathplan.go:39	0xe2c9c1		4c89f9			MOVQ R15, CX						
  pathplan.go:38	0xe2c9c4		4c89e2			MOVQ R12, DX						
  pathplan.go:38	0xe2c9c7		4839d3			CMPQ BX, DX						
  pathplan.go:38	0xe2c9ca		0f8dd1030000		JGE 0xe2cda1						
  pathplan.go:39	0xe2c9d0		4989dc			MOVQ BX, R12						
  pathplan.go:39	0xe2c9d3		48c1e304		SHLQ $__subsystem__+1(SB), BX				
  pathplan.go:39	0xe2c9d7		49ffc4			INCQ R12						
  pathplan.go:39	0xe2c9da		4d8b6c1b08		MOVQ 0x8(R11)(BX*1), R13				
  pathplan.go:39	0xe2c9df		4d8b3c1b		MOVQ 0(R11)(BX*1), R15					
  pathplan.go:39	0xe2c9e3		4c39e1			CMPQ CX, R12						
  pathplan.go:39	0xe2c9e6		0f86fe030000		JBE 0xe2cdea						
  pathplan.go:39	0xe2c9ec		4c89bc24e0000000	MOVQ R15, 0xe0(SP)					
  pathplan.go:39	0xe2c9f4		4c89ac2490000000	MOVQ R13, 0x90(SP)					
  pathplan.go:39	0xe2c9fc		4c89a424a0000000	MOVQ R12, 0xa0(SP)					
  pathplan.go:48	0xe2ca04		4889742478		MOVQ SI, 0x78(SP)					
  pathplan.go:48	0xe2ca09		4c898424d0000000	MOVQ R8, 0xd0(SP)					
  pathplan.go:48	0xe2ca11		4889bc2480000000	MOVQ DI, 0x80(SP)					
  pathplan.go:39	0xe2ca19		49c1e404		SHLQ $__subsystem__+1(SB), R12				
  pathplan.go:39	0xe2ca1d		4f8b542308		MOVQ 0x8(R11)(R12*1), R10				
  pathplan.go:39	0xe2ca22		4c89942488000000	MOVQ R10, 0x88(SP)					
  pathplan.go:39	0xe2ca2a		4f8b0c23		MOVQ 0(R11)(R12*1), R9					
  pathplan.go:39	0xe2ca2e		4c898c24d8000000	MOVQ R9, 0xd8(SP)					
  pathplan.go:40	0xe2ca36		4d39ea			CMPQ R10, R13						
  pathplan.go:40	0xe2ca39		7554			JNE 0xe2ca8f						
  pathplan.go:40	0xe2ca3b		4c89f8			MOVQ R15, AX						
  pathplan.go:40	0xe2ca3e		4c89cb			MOVQ R9, BX						
  pathplan.go:40	0xe2ca41		4c89e9			MOVQ R13, CX						
  pathplan.go:40	0xe2ca44		e817645dff		CALL runtime.memequal(SB)				
  pathplan.go:40	0xe2ca49		84c0			TESTL AL, AL						
  pathplan.go:40	0xe2ca4b		741a			JE 0xe2ca67						
  pathplan.go:48	0xe2ca4d		488b842480000000	MOVQ 0x80(SP), AX					
  pathplan.go:48	0xe2ca55		488b4c2478		MOVQ 0x78(SP), CX					
  pathplan.go:48	0xe2ca5a		488b9424d0000000	MOVQ 0xd0(SP), DX					
  pathplan.go:41	0xe2ca62		e929ffffff		JMP 0xe2c990						
  pathplan.go:43	0xe2ca67		488b842438010000	MOVQ 0x138(SP), AX					
  pathplan.go:43	0xe2ca6f		4c8b8c24d8000000	MOVQ 0xd8(SP), R9					
  pathplan.go:43	0xe2ca77		4c8b942488000000	MOVQ 0x88(SP), R10					
  pathplan.go:43	0xe2ca7f		4c8bac2490000000	MOVQ 0x90(SP), R13					
  pathplan.go:43	0xe2ca87		4c8bbc24e0000000	MOVQ 0xe0(SP), R15					
  pathplan.go:43	0xe2ca8f		31db			XORL BX, BX						
  pathplan.go:43	0xe2ca91		31c9			XORL CX, CX						
  pathplan.go:43	0xe2ca93		31ff			XORL DI, DI						
  pathplan.go:43	0xe2ca95		4c89fe			MOVQ R15, SI						
  pathplan.go:43	0xe2ca98		4d89e8			MOVQ R13, R8						
  pathplan.go:43	0xe2ca9b		0f1f440000		NOPL 0(AX)(AX*1)					
  pathplan.go:43	0xe2caa0		e8bb9a0000		CALL CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB)	
  pathplan.go:43	0xe2caa5		4084ff			TESTL DI, DI						
  pathplan.go:44	0xe2caa8		0f8451020000		JE 0xe2ccff						
  pathplan.go:44	0xe2caae		4885db			TESTQ BX, BX						
  pathplan.go:44	0xe2cab1		0f8448020000		JE 0xe2ccff						
  pathplan.go:43	0xe2cab7		48895c2458		MOVQ BX, 0x58(SP)					
  pathplan.go:43	0xe2cabc		48898424c0000000	MOVQ AX, 0xc0(SP)					
  pathplan.go:85	0xe2cac4		488b542478		MOVQ 0x78(SP), DX					
  pathplan.go:85	0xe2cac9		4885d2			TESTQ DX, DX						
  pathplan.go:85	0xe2cacc		0f84cc010000		JE 0xe2cc9e						
  pathplan.go:88	0xe2cad2		4c8d42ff		LEAQ -0x1(DX), R8					
  pathplan.go:88	0xe2cad6		49c1e004		SHLQ $__subsystem__+1(SB), R8				
  pathplan.go:88	0xe2cada		4c8b8c24d0000000	MOVQ 0xd0(SP), R9					
  pathplan.go:88	0xe2cae2		4f8b540108		MOVQ 0x8(R9)(R8*1), R10					
  pathplan.go:88	0xe2cae7		4f8b0401		MOVQ 0(R9)(R8*1), R8					
  pathplan.go:88	0xe2caeb		4c395008		CMPQ 0x8(AX), R10					
  pathplan.go:88	0xe2caef		0f8513010000		JNE 0xe2cc08						
  pathplan.go:43	0xe2caf5		48894c2460		MOVQ CX, 0x60(SP)					
  pathplan.go:88	0xe2cafa		488b18			MOVQ 0(AX), BX						
  pathplan.go:88	0xe2cafd		4c89d1			MOVQ R10, CX						
  pathplan.go:88	0xe2cb00		4c89c0			MOVQ R8, AX						
  pathplan.go:88	0xe2cb03		e858635dff		CALL runtime.memequal(SB)				
  pathplan.go:88	0xe2cb08		84c0			TESTL AL, AL						
  pathplan.go:88	0xe2cb0a		0f84de000000		JE 0xe2cbee						
  pathplan.go:89	0xe2cb10		488b542478		MOVQ 0x78(SP), DX					
  pathplan.go:89	0xe2cb15		488b7c2458		MOVQ 0x58(SP), DI					
  pathplan.go:89	0xe2cb1a		488d1c17		LEAQ 0(DI)(DX*1), BX					
  pathplan.go:89	0xe2cb1e		488d5bff		LEAQ -0x1(BX), BX					
  pathplan.go:89	0xe2cb22		4c8b442460		MOVQ 0x60(SP), R8					
  pathplan.go:89	0xe2cb27		49ffc8			DECQ R8							
  pathplan.go:89	0xe2cb2a		49f7d8			NEGQ R8							
  pathplan.go:89	0xe2cb2d		49c1f83f		SARQ $__major_os_version__+57(SB), R8			
  pathplan.go:89	0xe2cb31		4183e010		ANDL $__major_os_version__+10(SB), R8			
  pathplan.go:89	0xe2cb35		4c8b8c24c0000000	MOVQ 0xc0(SP), R9					
  pathplan.go:89	0xe2cb3d		4d01c8			ADDQ R9, R8						
  pathplan.go:89	0xe2cb40		48ffcf			DECQ DI							
  pathplan.go:89	0xe2cb43		488b8c2480000000	MOVQ 0x80(SP), CX					
  pathplan.go:89	0xe2cb4b		4839d9			CMPQ CX, BX						
  pathplan.go:89	0xe2cb4e		720a			JB 0xe2cb5a						
  pathplan.go:89	0xe2cb50		488b8424d0000000	MOVQ 0xd0(SP), AX					
  pathplan.go:89	0xe2cb58		eb39			JMP 0xe2cb93						
  pathplan.go:89	0xe2cb5a		4889bc2498000000	MOVQ DI, 0x98(SP)					
  pathplan.go:89	0xe2cb62		4c898424e8000000	MOVQ R8, 0xe8(SP)					
  pathplan.go:89	0xe2cb6a		488b8424d0000000	MOVQ 0xd0(SP), AX					
  pathplan.go:89	0xe2cb72		488d35a75d2100		LEAQ runtime.types+383264(SB), SI			
  pathplan.go:89	0xe2cb79		e8c25064ff		CALL runtime.growslice(SB)				
  pathplan.go:89	0xe2cb7e		488b542478		MOVQ 0x78(SP), DX					
  pathplan.go:89	0xe2cb83		488bbc2498000000	MOVQ 0x98(SP), DI					
  pathplan.go:89	0xe2cb8b		4c8b8424e8000000	MOVQ 0xe8(SP), R8					
  pathplan.go:89	0xe2cb93		48894c2448		MOVQ CX, 0x48(SP)					
  pathplan.go:89	0xe2cb98		48895c2440		MOVQ BX, 0x40(SP)					
  pathplan.go:89	0xe2cb9d		48898424b0000000	MOVQ AX, 0xb0(SP)					
  pathplan.go:89	0xe2cba5		4989d1			MOVQ DX, R9						
  pathplan.go:89	0xe2cba8		4829ca			SUBQ CX, DX						
  pathplan.go:89	0xe2cbab		4c29cb			SUBQ R9, BX						
  pathplan.go:89	0xe2cbae		49c1e104		SHLQ $__subsystem__+1(SB), R9				
  pathplan.go:89	0xe2cbb2		48c1fa3f		SARQ $__major_os_version__+57(SB), DX			
  pathplan.go:89	0xe2cbb6		4c21ca			ANDQ R9, DX						
  pathplan.go:89	0xe2cbb9		4801c2			ADDQ AX, DX						
  pathplan.go:89	0xe2cbbc		4889fe			MOVQ DI, SI						
  pathplan.go:89	0xe2cbbf		4c89c7			MOVQ R8, DI						
  pathplan.go:89	0xe2cbc2		488d05575d2100		LEAQ runtime.types+383264(SB), AX			
  pathplan.go:89	0xe2cbc9		4989d9			MOVQ BX, R9						
  pathplan.go:89	0xe2cbcc		4889d3			MOVQ DX, BX						
  pathplan.go:89	0xe2cbcf		4c89c9			MOVQ R9, CX						
  pathplan.go:89	0xe2cbd2		e8691964ff		CALL runtime.typedslicecopy(SB)				
  pathplan.go:48	0xe2cbd7		488b442448		MOVQ 0x48(SP), AX					
  pathplan.go:48	0xe2cbdc		488b4c2440		MOVQ 0x40(SP), CX					
  pathplan.go:48	0xe2cbe1		488b9424b0000000	MOVQ 0xb0(SP), DX					
  pathplan.go:48	0xe2cbe9		e9a2fdffff		JMP 0xe2c990						
  pathplan.go:91	0xe2cbee		488b8424c0000000	MOVQ 0xc0(SP), AX					
  pathplan.go:91	0xe2cbf6		488b542478		MOVQ 0x78(SP), DX					
  pathplan.go:91	0xe2cbfb		488b5c2458		MOVQ 0x58(SP), BX					
  pathplan.go:91	0xe2cc00		4c8b8c24d0000000	MOVQ 0xd0(SP), R9					
  pathplan.go:91	0xe2cc08		4c8d041a		LEAQ 0(DX)(BX*1), R8					
  pathplan.go:91	0xe2cc0c		488b8c2480000000	MOVQ 0x80(SP), CX					
  pathplan.go:91	0xe2cc14		4c39c1			CMPQ CX, R8						
  pathplan.go:91	0xe2cc17		732d			JAE 0xe2cc46						
  pathplan.go:91	0xe2cc19		4c89c8			MOVQ R9, AX						
  pathplan.go:91	0xe2cc1c		4889df			MOVQ BX, DI						
  pathplan.go:91	0xe2cc1f		488d35fa5c2100		LEAQ runtime.types+383264(SB), SI			
  pathplan.go:91	0xe2cc26		4c89c3			MOVQ R8, BX						
  pathplan.go:91	0xe2cc29		e8125064ff		CALL runtime.growslice(SB)				
  pathplan.go:91	0xe2cc2e		488b542478		MOVQ 0x78(SP), DX					
  pathplan.go:91	0xe2cc33		4989d8			MOVQ BX, R8						
  pathplan.go:91	0xe2cc36		4989c1			MOVQ AX, R9						
  pathplan.go:91	0xe2cc39		488b8424c0000000	MOVQ 0xc0(SP), AX					
  pathplan.go:91	0xe2cc41		488b5c2458		MOVQ 0x58(SP), BX					
  pathplan.go:91	0xe2cc46		48894c2448		MOVQ CX, 0x48(SP)					
  pathplan.go:91	0xe2cc4b		4c89442440		MOVQ R8, 0x40(SP)					
  pathplan.go:91	0xe2cc50		4c898c24b0000000	MOVQ R9, 0xb0(SP)					
  pathplan.go:91	0xe2cc58		4989d2			MOVQ DX, R10						
  pathplan.go:91	0xe2cc5b		4829ca			SUBQ CX, DX						
  pathplan.go:91	0xe2cc5e		4d29d0			SUBQ R10, R8						
  pathplan.go:91	0xe2cc61		49c1e204		SHLQ $__subsystem__+1(SB), R10				
  pathplan.go:91	0xe2cc65		48c1fa3f		SARQ $__major_os_version__+57(SB), DX			
  pathplan.go:91	0xe2cc69		4c21d2			ANDQ R10, DX						
  pathplan.go:91	0xe2cc6c		4c01ca			ADDQ R9, DX						
  pathplan.go:91	0xe2cc6f		4889c7			MOVQ AX, DI						
  pathplan.go:91	0xe2cc72		4889de			MOVQ BX, SI						
  pathplan.go:91	0xe2cc75		488d05a45c2100		LEAQ runtime.types+383264(SB), AX			
  pathplan.go:91	0xe2cc7c		4889d3			MOVQ DX, BX						
  pathplan.go:91	0xe2cc7f		4c89c1			MOVQ R8, CX						
  pathplan.go:91	0xe2cc82		e8b91864ff		CALL runtime.typedslicecopy(SB)				
  pathplan.go:48	0xe2cc87		488b442448		MOVQ 0x48(SP), AX					
  pathplan.go:48	0xe2cc8c		488b4c2440		MOVQ 0x40(SP), CX					
  pathplan.go:48	0xe2cc91		488b9424b0000000	MOVQ 0xb0(SP), DX					
  pathplan.go:48	0xe2cc99		e9f2fcffff		JMP 0xe2c990						
  pathplan.go:86	0xe2cc9e		31c0			XORL AX, AX						
  pathplan.go:86	0xe2cca0		31c9			XORL CX, CX						
  pathplan.go:86	0xe2cca2		4889df			MOVQ BX, DI						
  pathplan.go:86	0xe2cca5		488d35745c2100		LEAQ runtime.types+383264(SB), SI			
  pathplan.go:86	0xe2ccac		e88f4f64ff		CALL runtime.growslice(SB)				
  pathplan.go:86	0xe2ccb1		48898424b0000000	MOVQ AX, 0xb0(SP)					
  pathplan.go:86	0xe2ccb9		48895c2440		MOVQ BX, 0x40(SP)					
  pathplan.go:86	0xe2ccbe		48894c2448		MOVQ CX, 0x48(SP)					
  pathplan.go:86	0xe2ccc3		488bbc24c0000000	MOVQ 0xc0(SP), DI					
  pathplan.go:86	0xe2cccb		488b742458		MOVQ 0x58(SP), SI					
  pathplan.go:86	0xe2ccd0		4889c2			MOVQ AX, DX						
  pathplan.go:86	0xe2ccd3		488d05465c2100		LEAQ runtime.types+383264(SB), AX			
  pathplan.go:86	0xe2ccda		4989d8			MOVQ BX, R8						
  pathplan.go:86	0xe2ccdd		4889d3			MOVQ DX, BX						
  pathplan.go:86	0xe2cce0		4c89c1			MOVQ R8, CX						
  pathplan.go:86	0xe2cce3		e8581864ff		CALL runtime.typedslicecopy(SB)				
  pathplan.go:48	0xe2cce8		488b442448		MOVQ 0x48(SP), AX					
  pathplan.go:48	0xe2cced		488b4c2440		MOVQ 0x40(SP), CX					
  pathplan.go:48	0xe2ccf2		488b9424b0000000	MOVQ 0xb0(SP), DX					
  pathplan.go:48	0xe2ccfa		e991fcffff		JMP 0xe2c990						
  pathplan.go:45	0xe2ccff		440f11bc2408010000	MOVUPS X15, 0x108(SP)					
  pathplan.go:45	0xe2cd08		440f11bc2418010000	MOVUPS X15, 0x118(SP)					
  pathplan.go:45	0xe2cd11		488b8424e0000000	MOVQ 0xe0(SP), AX					
  pathplan.go:45	0xe2cd19		488b9c2490000000	MOVQ 0x90(SP), BX					
  pathplan.go:45	0xe2cd21		e8fad363ff		CALL runtime.convTstring(SB)				
  pathplan.go:45	0xe2cd26		488d0df35b2100		LEAQ runtime.types+383264(SB), CX			
  pathplan.go:45	0xe2cd2d		48898c2408010000	MOVQ CX, 0x108(SP)					
  pathplan.go:45	0xe2cd35		4889842410010000	MOVQ AX, 0x110(SP)					
  pathplan.go:45	0xe2cd3d		488b8424d8000000	MOVQ 0xd8(SP), AX					
  pathplan.go:45	0xe2cd45		488b9c2488000000	MOVQ 0x88(SP), BX					
  pathplan.go:45	0xe2cd4d		e8ced363ff		CALL runtime.convTstring(SB)				
  pathplan.go:45	0xe2cd52		488d0dc75b2100		LEAQ runtime.types+383264(SB), CX			
  pathplan.go:45	0xe2cd59		48898c2418010000	MOVQ CX, 0x118(SP)					
  pathplan.go:45	0xe2cd61		4889842420010000	MOVQ AX, 0x120(SP)					
  pathplan.go:45	0xe2cd69		488d05f0c03500		LEAQ go:string.*+133464(SB), AX				
  pathplan.go:45	0xe2cd70		bb1c000000		MOVL $__major_os_version__+22(SB), BX			
  pathplan.go:45	0xe2cd75		488d8c2408010000	LEAQ 0x108(SP), CX					
  pathplan.go:45	0xe2cd7d		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  pathplan.go:45	0xe2cd82		4889fe			MOVQ DI, SI						
  pathplan.go:45	0xe2cd85		e836f66eff		CALL fmt.Errorf(SB)					
  pathplan.go:45	0xe2cd8a		31c9			XORL CX, CX						
  pathplan.go:45	0xe2cd8c		4889c7			MOVQ AX, DI						
  pathplan.go:45	0xe2cd8f		4889de			MOVQ BX, SI						
  pathplan.go:45	0xe2cd92		31c0			XORL AX, AX						
  pathplan.go:45	0xe2cd94		4889cb			MOVQ CX, BX						
  pathplan.go:45	0xe2cd97		4881c428010000		ADDQ $.file+219(SB), SP					
  pathplan.go:45	0xe2cd9e		5d			POPQ BP							
  pathplan.go:45	0xe2cd9f		90			NOPL							
  pathplan.go:45	0xe2cda0		c3			RET							
  pathplan.go:50	0xe2cda1		4885f6			TESTQ SI, SI						
  pathplan.go:50	0xe2cda4		752e			JNE 0xe2cdd4						
  pathplan.go:51	0xe2cda6		488d05c57c3500		LEAQ go:string.*+116074(SB), AX				
  pathplan.go:51	0xe2cdad		bb18000000		MOVL $__major_os_version__+18(SB), BX			
  pathplan.go:51	0xe2cdb2		31c9			XORL CX, CX						
  pathplan.go:51	0xe2cdb4		31ff			XORL DI, DI						
  pathplan.go:51	0xe2cdb6		4889fe			MOVQ DI, SI						
  pathplan.go:51	0xe2cdb9		e802f66eff		CALL fmt.Errorf(SB)					
  pathplan.go:51	0xe2cdbe		31c9			XORL CX, CX						
  pathplan.go:51	0xe2cdc0		4889c7			MOVQ AX, DI						
  pathplan.go:51	0xe2cdc3		4889de			MOVQ BX, SI						
  pathplan.go:51	0xe2cdc6		31c0			XORL AX, AX						
  pathplan.go:51	0xe2cdc8		4889cb			MOVQ CX, BX						
  pathplan.go:51	0xe2cdcb		4881c428010000		ADDQ $.file+219(SB), SP					
  pathplan.go:51	0xe2cdd2		5d			POPQ BP							
  pathplan.go:51	0xe2cdd3		c3			RET							
  pathplan.go:54	0xe2cdd4		4c89c0			MOVQ R8, AX						
  pathplan.go:54	0xe2cdd7		4889f3			MOVQ SI, BX						
  pathplan.go:54	0xe2cdda		4889f9			MOVQ DI, CX						
  pathplan.go:54	0xe2cddd		31ff			XORL DI, DI						
  pathplan.go:54	0xe2cddf		31f6			XORL SI, SI						
  pathplan.go:54	0xe2cde1		4881c428010000		ADDQ $.file+219(SB), SP					
  pathplan.go:54	0xe2cde8		5d			POPQ BP							
  pathplan.go:54	0xe2cde9		c3			RET							
  pathplan.go:39	0xe2cdea		4c89e0			MOVQ R12, AX						
  pathplan.go:39	0xe2cded		e8eeb964ff		CALL runtime.panicIndex(SB)				
  pathplan.go:39	0xe2cdf2		90			NOPL							
  pathplan.go:11	0xe2cdf3		4889442408		MOVQ AX, 0x8(SP)					
  pathplan.go:11	0xe2cdf8		48895c2410		MOVQ BX, 0x10(SP)					
  pathplan.go:11	0xe2cdfd		48894c2418		MOVQ CX, 0x18(SP)					
  pathplan.go:11	0xe2ce02		48897c2420		MOVQ DI, 0x20(SP)					
  pathplan.go:11	0xe2ce07		4889742428		MOVQ SI, 0x28(SP)					
  pathplan.go:11	0xe2ce0c		4c89442430		MOVQ R8, 0x30(SP)					
  pathplan.go:11	0xe2ce11		4c894c2438		MOVQ R9, 0x38(SP)					
  pathplan.go:11	0xe2ce16		4c89542440		MOVQ R10, 0x40(SP)					
  pathplan.go:11	0xe2ce1b		0f1f440000		NOPL 0(AX)(AX*1)					
  pathplan.go:11	0xe2ce20		e8bb9664ff		CALL runtime.morestack_noctxt.abi0(SB)			
  pathplan.go:11	0xe2ce25		488b442408		MOVQ 0x8(SP), AX					
  pathplan.go:11	0xe2ce2a		488b5c2410		MOVQ 0x10(SP), BX					
  pathplan.go:11	0xe2ce2f		488b4c2418		MOVQ 0x18(SP), CX					
  pathplan.go:11	0xe2ce34		488b7c2420		MOVQ 0x20(SP), DI					
  pathplan.go:11	0xe2ce39		488b742428		MOVQ 0x28(SP), SI					
  pathplan.go:11	0xe2ce3e		4c8b442430		MOVQ 0x30(SP), R8					
  pathplan.go:11	0xe2ce43		4c8b4c2438		MOVQ 0x38(SP), R9					
  pathplan.go:11	0xe2ce48		4c8b542440		MOVQ 0x40(SP), R10					
  pathplan.go:11	0xe2ce4d		e9aef7ffff		JMP CAS-Backend/pkg/diapdu.PlanStationPath(SB)		
  :-1			0xe2ce52		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce53		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce54		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce55		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce56		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce57		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce58		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce59		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce5a		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce5b		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce5c		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce5d		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce5e		cc			INT $__subsystem__(SB)					
  :-1			0xe2ce5f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.validateStationsOnGraph(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/pathplan.go
  pathplan.go:66	0xe2ce60		4c8da42448ffffff	LEAQ 0xffffff48(SP), R12				
  pathplan.go:66	0xe2ce68		4d3b6610		CMPQ R12, 0x10(R14)					
  pathplan.go:66	0xe2ce6c		0f86c1010000		JBE 0xe2d033						
  pathplan.go:66	0xe2ce72		55			PUSHQ BP						
  pathplan.go:66	0xe2ce73		4889e5			MOVQ SP, BP						
  pathplan.go:66	0xe2ce76		4881ec30010000		SUBQ $.file+227(SB), SP					
  pathplan.go:67	0xe2ce7d		4889842440010000	MOVQ AX, 0x140(SP)					
  pathplan.go:67	0xe2ce85		48899c2448010000	MOVQ BX, 0x148(SP)					
  pathplan.go:67	0xe2ce8d		48898c2450010000	MOVQ CX, 0x150(SP)					
  pathplan.go:67	0xe2ce95		488b5008		MOVQ 0x8(AX), DX					
  pathplan.go:67	0xe2ce99		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)					
  pathplan.go:67	0xe2cea2		440f11bc2400010000	MOVUPS X15, 0x100(SP)					
  pathplan.go:67	0xe2ceab		440f11bc2410010000	MOVUPS X15, 0x110(SP)					
  pathplan.go:67	0xe2ceb4		4883fa08		CMPQ DX, $__major_os_version__+2(SB)			
  pathplan.go:67	0xe2ceb8		7f29			JG 0xe2cee3						
  pathplan.go:67	0xe2ceba		488d7c2460		LEAQ 0x60(SP), DI					
  pathplan.go:67	0xe2cebf		488d7fd0		LEAQ -0x30(DI), DI					
  pathplan.go:67	0xe2cec3		48896c24f0		MOVQ BP, -0x10(SP)					
  pathplan.go:67	0xe2cec8		488d6c24f0		LEAQ -0x10(SP), BP					
  pathplan.go:67	0xe2cecd		e807bc64ff		CALL 0x478ad9						
  pathplan.go:67	0xe2ced2		488b6d00		MOVQ 0(BP), BP						
  pathplan.go:67	0xe2ced6		488d742460		LEAQ 0x60(SP), SI					
  pathplan.go:67	0xe2cedb		4889b42400010000	MOVQ SI, 0x100(SP)					
  pathplan.go:67	0xe2cee3		488d05f6062500		LEAQ runtime.types+624096(SB), AX			
  pathplan.go:67	0xe2ceea		4889d3			MOVQ DX, BX						
  pathplan.go:67	0xe2ceed		488d8c24f0000000	LEAQ 0xf0(SP), CX					
  pathplan.go:67	0xe2cef5		e826e163ff		CALL runtime.makemap(SB)				
  pathplan.go:67	0xe2cefa		4889442440		MOVQ AX, 0x40(SP)					
  pathplan.go:68	0xe2ceff		488b942440010000	MOVQ 0x140(SP), DX					
  pathplan.go:68	0xe2cf07		488b32			MOVQ 0(DX), SI						
  pathplan.go:68	0xe2cf0a		4889742458		MOVQ SI, 0x58(SP)					
  pathplan.go:68	0xe2cf0f		488b5208		MOVQ 0x8(DX), DX					
  pathplan.go:68	0xe2cf13		4889542438		MOVQ DX, 0x38(SP)					
  pathplan.go:68	0xe2cf18		31c9			XORL CX, CX						
  pathplan.go:68	0xe2cf1a		eb04			JMP 0xe2cf20						
  pathplan.go:68	0xe2cf1c		48ffc1			INCQ CX							
  pathplan.go:68	0xe2cf1f		90			NOPL							
  pathplan.go:68	0xe2cf20		4839d1			CMPQ CX, DX						
  pathplan.go:68	0xe2cf23		7d41			JGE 0xe2cf66						
  pathplan.go:68	0xe2cf25		4c8b04ce		MOVQ 0(SI)(CX*8), R8					
  pathplan.go:69	0xe2cf29		4d85c0			TESTQ R8, R8						
  pathplan.go:69	0xe2cf2c		74ee			JE 0xe2cf1c						
  pathplan.go:69	0xe2cf2e		498b7808		MOVQ 0x8(R8), DI					
  pathplan.go:69	0xe2cf32		4885ff			TESTQ DI, DI						
  pathplan.go:69	0xe2cf35		74e5			JE 0xe2cf1c						
  pathplan.go:68	0xe2cf37		48894c2430		MOVQ CX, 0x30(SP)					
  pathplan.go:69	0xe2cf3c		498b08			MOVQ 0(R8), CX						
  pathplan.go:70	0xe2cf3f		4889c3			MOVQ AX, BX						
  pathplan.go:70	0xe2cf42		488d0597062500		LEAQ runtime.types+624096(SB), AX			
  pathplan.go:70	0xe2cf49		e8d21064ff		CALL runtime.mapassign_faststr(SB)			
  pathplan.go:70	0xe2cf4e		8400			TESTB AL, 0(AX)						
  pathplan.go:70	0xe2cf50		488b442440		MOVQ 0x40(SP), AX					
  pathplan.go:68	0xe2cf55		488b4c2430		MOVQ 0x30(SP), CX					
  pathplan.go:68	0xe2cf5a		488b542438		MOVQ 0x38(SP), DX					
  pathplan.go:68	0xe2cf5f		488b742458		MOVQ 0x58(SP), SI					
  pathplan.go:70	0xe2cf64		ebb6			JMP 0xe2cf1c						
  pathplan.go:73	0xe2cf66		488b942448010000	MOVQ 0x148(SP), DX					
  pathplan.go:73	0xe2cf6e		488b8c2450010000	MOVQ 0x150(SP), CX					
  pathplan.go:73	0xe2cf76		eb16			JMP 0xe2cf8e						
  pathplan.go:73	0xe2cf78		488b542450		MOVQ 0x50(SP), DX					
  pathplan.go:73	0xe2cf7d		4883c210		ADDQ $__major_os_version__+10(SB), DX			
  pathplan.go:73	0xe2cf81		488b4c2438		MOVQ 0x38(SP), CX					
  pathplan.go:73	0xe2cf86		48ffc9			DECQ CX							
  pathplan.go:74	0xe2cf89		488b442440		MOVQ 0x40(SP), AX					
  pathplan.go:73	0xe2cf8e		4885c9			TESTQ CX, CX						
  pathplan.go:73	0xe2cf91		0f8e8f000000		JLE 0xe2d026						
  pathplan.go:73	0xe2cf97		48894c2438		MOVQ CX, 0x38(SP)					
  pathplan.go:73	0xe2cf9c		4889542450		MOVQ DX, 0x50(SP)					
  pathplan.go:73	0xe2cfa1		488b0a			MOVQ 0(DX), CX						
  pathplan.go:73	0xe2cfa4		48894c2448		MOVQ CX, 0x48(SP)					
  pathplan.go:73	0xe2cfa9		488b7a08		MOVQ 0x8(DX), DI					
  pathplan.go:73	0xe2cfad		48897c2428		MOVQ DI, 0x28(SP)					
  pathplan.go:74	0xe2cfb2		4889c3			MOVQ AX, BX						
  pathplan.go:74	0xe2cfb5		488d0524062500		LEAQ runtime.types+624096(SB), AX			
  pathplan.go:74	0xe2cfbc		0f1f4000		NOPL 0(AX)						
  pathplan.go:74	0xe2cfc0		e87b0c64ff		CALL runtime.mapaccess2_faststr(SB)			
  pathplan.go:74	0xe2cfc5		84db			TESTL BL, BL						
  pathplan.go:74	0xe2cfc7		75af			JNE 0xe2cf78						
  pathplan.go:75	0xe2cfc9		440f11bc2420010000	MOVUPS X15, 0x120(SP)					
  pathplan.go:75	0xe2cfd2		488b442448		MOVQ 0x48(SP), AX					
  pathplan.go:75	0xe2cfd7		488b5c2428		MOVQ 0x28(SP), BX					
  pathplan.go:75	0xe2cfdc		0f1f4000		NOPL 0(AX)						
  pathplan.go:75	0xe2cfe0		e83bd163ff		CALL runtime.convTstring(SB)				
  pathplan.go:75	0xe2cfe5		488d0d34592100		LEAQ runtime.types+383264(SB), CX			
  pathplan.go:75	0xe2cfec		48898c2420010000	MOVQ CX, 0x120(SP)					
  pathplan.go:75	0xe2cff4		4889842428010000	MOVQ AX, 0x128(SP)					
  pathplan.go:75	0xe2cffc		488d0547f83500		LEAQ go:string.*+148290(SB), AX				
  pathplan.go:75	0xe2d003		bb1f000000		MOVL $__major_os_version__+25(SB), BX			
  pathplan.go:75	0xe2d008		488d8c2420010000	LEAQ 0x120(SP), CX					
  pathplan.go:75	0xe2d010		bf01000000		MOVL $__minor_os_version__(SB), DI			
  pathplan.go:75	0xe2d015		4889fe			MOVQ DI, SI						
  pathplan.go:75	0xe2d018		e8a3f36eff		CALL fmt.Errorf(SB)					
  pathplan.go:75	0xe2d01d		4881c430010000		ADDQ $.file+227(SB), SP					
  pathplan.go:75	0xe2d024		5d			POPQ BP							
  pathplan.go:75	0xe2d025		c3			RET							
  pathplan.go:78	0xe2d026		31c0			XORL AX, AX						
  pathplan.go:78	0xe2d028		31db			XORL BX, BX						
  pathplan.go:78	0xe2d02a		4881c430010000		ADDQ $.file+227(SB), SP					
  pathplan.go:78	0xe2d031		5d			POPQ BP							
  pathplan.go:78	0xe2d032		c3			RET							
  pathplan.go:66	0xe2d033		4889442408		MOVQ AX, 0x8(SP)					
  pathplan.go:66	0xe2d038		48895c2410		MOVQ BX, 0x10(SP)					
  pathplan.go:66	0xe2d03d		48894c2418		MOVQ CX, 0x18(SP)					
  pathplan.go:66	0xe2d042		48897c2420		MOVQ DI, 0x20(SP)					
  pathplan.go:66	0xe2d047		e8949464ff		CALL runtime.morestack_noctxt.abi0(SB)			
  pathplan.go:66	0xe2d04c		488b442408		MOVQ 0x8(SP), AX					
  pathplan.go:66	0xe2d051		488b5c2410		MOVQ 0x10(SP), BX					
  pathplan.go:66	0xe2d056		488b4c2418		MOVQ 0x18(SP), CX					
  pathplan.go:66	0xe2d05b		488b7c2420		MOVQ 0x20(SP), DI					
  pathplan.go:66	0xe2d060		e9fbfdffff		JMP CAS-Backend/pkg/diapdu.validateStationsOnGraph(SB)	
  :-1			0xe2d065		cc			INT $__subsystem__(SB)					
  :-1			0xe2d066		cc			INT $__subsystem__(SB)					
  :-1			0xe2d067		cc			INT $__subsystem__(SB)					
  :-1			0xe2d068		cc			INT $__subsystem__(SB)					
  :-1			0xe2d069		cc			INT $__subsystem__(SB)					
  :-1			0xe2d06a		cc			INT $__subsystem__(SB)					
  :-1			0xe2d06b		cc			INT $__subsystem__(SB)					
  :-1			0xe2d06c		cc			INT $__subsystem__(SB)					
  :-1			0xe2d06d		cc			INT $__subsystem__(SB)					
  :-1			0xe2d06e		cc			INT $__subsystem__(SB)					
  :-1			0xe2d06f		cc			INT $__subsystem__(SB)					
  :-1			0xe2d070		cc			INT $__subsystem__(SB)					
  :-1			0xe2d071		cc			INT $__subsystem__(SB)					
  :-1			0xe2d072		cc			INT $__subsystem__(SB)					
  :-1			0xe2d073		cc			INT $__subsystem__(SB)					
  :-1			0xe2d074		cc			INT $__subsystem__(SB)					
  :-1			0xe2d075		cc			INT $__subsystem__(SB)					
  :-1			0xe2d076		cc			INT $__subsystem__(SB)					
  :-1			0xe2d077		cc			INT $__subsystem__(SB)					
  :-1			0xe2d078		cc			INT $__subsystem__(SB)					
  :-1			0xe2d079		cc			INT $__subsystem__(SB)					
  :-1			0xe2d07a		cc			INT $__subsystem__(SB)					
  :-1			0xe2d07b		cc			INT $__subsystem__(SB)					
  :-1			0xe2d07c		cc			INT $__subsystem__(SB)					
  :-1			0xe2d07d		cc			INT $__subsystem__(SB)					
  :-1			0xe2d07e		cc			INT $__subsystem__(SB)					
  :-1			0xe2d07f		cc			INT $__subsystem__(SB)					

