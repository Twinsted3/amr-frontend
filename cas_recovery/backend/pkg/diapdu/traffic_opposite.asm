TEXT CAS-Backend/pkg/diapdu.splitUndirectedKey(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:16	0xe3ce20		493b6610		CMPQ SP, 0x10(R14)					
  traffic_opposite.go:16	0xe3ce24		0f86ad000000		JBE 0xe3ced7						
  traffic_opposite.go:16	0xe3ce2a		55			PUSHQ BP						
  traffic_opposite.go:16	0xe3ce2b		4889e5			MOVQ SP, BP						
  traffic_opposite.go:16	0xe3ce2e		4883ec20		SUBQ $__major_os_version__+26(SB), SP			
  traffic_opposite.go:18	0xe3ce32		4889442430		MOVQ AX, 0x30(SP)					
  traffic_opposite.go:18	0xe3ce37		48895c2438		MOVQ BX, 0x38(SP)					
  traffic_opposite.go:17	0xe3ce3c		90			NOPL							
  strings.go:119		0xe3ce3d		90			NOPL							
  strings.go:25			0xe3ce3e		48890424		MOVQ AX, 0(SP)						
  strings.go:25			0xe3ce42		48895c2408		MOVQ BX, 0x8(SP)					
  strings.go:25			0xe3ce47		c64424107c		MOVB $.file+47(SB), 0x10(SP)				
  strings.go:25			0xe3ce4c		e84f655cff		CALL internal/bytealg.IndexByteString.abi0(SB)		
  strings.go:25			0xe3ce51		450f57ff		XORPS X15, X15						
  strings.go:25			0xe3ce55		4c8b35b4097202		MOVQ runtime.tls_g(SB), R14				
  strings.go:25			0xe3ce5c		654d8b36		MOVQ GS:0(R14), R14					
  strings.go:25			0xe3ce60		4d8b36			MOVQ 0(R14), R14					
  strings.go:25			0xe3ce63		488b442418		MOVQ 0x18(SP), AX					
  traffic_opposite.go:18	0xe3ce68		4885c0			TESTQ AX, AX						
  traffic_opposite.go:18	0xe3ce6b		7f07			JG 0xe3ce74						
  traffic_opposite.go:19	0xe3ce6d		488b4c2438		MOVQ 0x38(SP), CX					
  traffic_opposite.go:18	0xe3ce72		eb11			JMP 0xe3ce85						
  traffic_opposite.go:18	0xe3ce74		488b4c2438		MOVQ 0x38(SP), CX					
  traffic_opposite.go:18	0xe3ce79		488d51ff		LEAQ -0x1(CX), DX					
  traffic_opposite.go:18	0xe3ce7d		0f1f00			NOPL 0(AX)						
  traffic_opposite.go:18	0xe3ce80		4839d0			CMPQ AX, DX						
  traffic_opposite.go:18	0xe3ce83		7c12			JL 0xe3ce97						
  traffic_opposite.go:19	0xe3ce85		488b442430		MOVQ 0x30(SP), AX					
  traffic_opposite.go:19	0xe3ce8a		4889cb			MOVQ CX, BX						
  traffic_opposite.go:19	0xe3ce8d		31c9			XORL CX, CX						
  traffic_opposite.go:19	0xe3ce8f		31ff			XORL DI, DI						
  traffic_opposite.go:19	0xe3ce91		4883c420		ADDQ $__major_os_version__+26(SB), SP			
  traffic_opposite.go:19	0xe3ce95		5d			POPQ BP							
  traffic_opposite.go:19	0xe3ce96		c3			RET							
  traffic_opposite.go:21	0xe3ce97		488d5001		LEAQ 0x1(AX), DX					
  traffic_opposite.go:21	0xe3ce9b		0f1f440000		NOPL 0(AX)(AX*1)					
  traffic_opposite.go:21	0xe3cea0		4839d1			CMPQ CX, DX						
  traffic_opposite.go:21	0xe3cea3		7229			JB 0xe3cece						
  traffic_opposite.go:21	0xe3cea5		4829c1			SUBQ AX, CX						
  traffic_opposite.go:21	0xe3cea8		488d79ff		LEAQ -0x1(CX), DI					
  traffic_opposite.go:21	0xe3ceac		4889fe			MOVQ DI, SI						
  traffic_opposite.go:21	0xe3ceaf		48f7de			NEGQ SI							
  traffic_opposite.go:21	0xe3ceb2		48c1fe3f		SARQ $__major_os_version__+57(SB), SI			
  traffic_opposite.go:21	0xe3ceb6		4821f2			ANDQ SI, DX						
  traffic_opposite.go:21	0xe3ceb9		488b742430		MOVQ 0x30(SP), SI					
  traffic_opposite.go:21	0xe3cebe		488d0c16		LEAQ 0(SI)(DX*1), CX					
  traffic_opposite.go:21	0xe3cec2		4889c3			MOVQ AX, BX						
  traffic_opposite.go:21	0xe3cec5		4889f0			MOVQ SI, AX						
  traffic_opposite.go:21	0xe3cec8		4883c420		ADDQ $__major_os_version__+26(SB), SP			
  traffic_opposite.go:21	0xe3cecc		5d			POPQ BP							
  traffic_opposite.go:21	0xe3cecd		c3			RET							
  traffic_opposite.go:21	0xe3cece		4889d0			MOVQ DX, AX						
  traffic_opposite.go:21	0xe3ced1		e8cab963ff		CALL runtime.panicSliceB(SB)				
  traffic_opposite.go:21	0xe3ced6		90			NOPL							
  traffic_opposite.go:16	0xe3ced7		4889442408		MOVQ AX, 0x8(SP)					
  traffic_opposite.go:16	0xe3cedc		48895c2410		MOVQ BX, 0x10(SP)					
  traffic_opposite.go:16	0xe3cee1		e8fa9563ff		CALL runtime.morestack_noctxt.abi0(SB)			
  traffic_opposite.go:16	0xe3cee6		488b442408		MOVQ 0x8(SP), AX					
  traffic_opposite.go:16	0xe3ceeb		488b5c2410		MOVQ 0x10(SP), BX					
  traffic_opposite.go:16	0xe3cef0		e92bffffff		JMP CAS-Backend/pkg/diapdu.splitUndirectedKey(SB)	
  :-1				0xe3cef5		cc			INT $__subsystem__(SB)					
  :-1				0xe3cef6		cc			INT $__subsystem__(SB)					
  :-1				0xe3cef7		cc			INT $__subsystem__(SB)					
  :-1				0xe3cef8		cc			INT $__subsystem__(SB)					
  :-1				0xe3cef9		cc			INT $__subsystem__(SB)					
  :-1				0xe3cefa		cc			INT $__subsystem__(SB)					
  :-1				0xe3cefb		cc			INT $__subsystem__(SB)					
  :-1				0xe3cefc		cc			INT $__subsystem__(SB)					
  :-1				0xe3cefd		cc			INT $__subsystem__(SB)					
  :-1				0xe3cefe		cc			INT $__subsystem__(SB)					
  :-1				0xe3ceff		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.oppositeConflictEdges(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:25	0xe3cf00		4c8da42468ffffff	LEAQ 0xffffff68(SP), R12				
  traffic_opposite.go:25	0xe3cf08		4d3b6610		CMPQ R12, 0x10(R14)					
  traffic_opposite.go:25	0xe3cf0c		0f8676040000		JBE 0xe3d388						
  traffic_opposite.go:25	0xe3cf12		55			PUSHQ BP						
  traffic_opposite.go:25	0xe3cf13		4889e5			MOVQ SP, BP						
  traffic_opposite.go:25	0xe3cf16		4881ec10010000		SUBQ $.file+195(SB), SP					
  traffic_opposite.go:27	0xe3cf1d		4889b42440010000	MOVQ SI, 0x140(SP)					
  traffic_opposite.go:27	0xe3cf25		48899c2428010000	MOVQ BX, 0x128(SP)					
  traffic_opposite.go:27	0xe3cf2d		4889bc2438010000	MOVQ DI, 0x138(SP)					
  traffic_opposite.go:27	0xe3cf35		4889842420010000	MOVQ AX, 0x120(SP)					
  traffic_opposite.go:26	0xe3cf3d		0f1f00			NOPL 0(AX)						
  traffic_opposite.go:26	0xe3cf40		e89be062ff		CALL runtime.makemap_small(SB)				
  traffic_opposite.go:27	0xe3cf45		488b8c2428010000	MOVQ 0x128(SP), CX					
  traffic_opposite.go:27	0xe3cf4d		4883f902		CMPQ CX, $__minor_os_version__+1(SB)			
  traffic_opposite.go:27	0xe3cf51		7c27			JL 0xe3cf7a						
  traffic_opposite.go:27	0xe3cf53		488b942440010000	MOVQ 0x140(SP), DX					
  traffic_opposite.go:27	0xe3cf5b		0f1f440000		NOPL 0(AX)(AX*1)					
  traffic_opposite.go:27	0xe3cf60		4883fa02		CMPQ DX, $__minor_os_version__+1(SB)			
  traffic_opposite.go:27	0xe3cf64		7c14			JL 0xe3cf7a						
  traffic_opposite.go:26	0xe3cf66		48898424d8000000	MOVQ AX, 0xd8(SP)					
  traffic_opposite.go:27	0xe3cf6e		488bb42420010000	MOVQ 0x120(SP), SI					
  traffic_opposite.go:27	0xe3cf76		31db			XORL BX, BX						
  traffic_opposite.go:27	0xe3cf78		eb34			JMP 0xe3cfae						
  traffic_opposite.go:28	0xe3cf7a		4881c410010000		ADDQ $.file+195(SB), SP					
  traffic_opposite.go:28	0xe3cf81		5d			POPQ BP							
  traffic_opposite.go:28	0xe3cf82		c3			RET							
  traffic_opposite.go:30	0xe3cf83		4c8b842428010000	MOVQ 0x128(SP), R8					
  traffic_opposite.go:30	0xe3cf8b		488b9c24c8000000	MOVQ 0xc8(SP), BX					
  traffic_opposite.go:42	0xe3cf93		488b8424d8000000	MOVQ 0xd8(SP), AX					
  traffic_opposite.go:30	0xe3cf9b		4c89c1			MOVQ R8, CX						
  traffic_opposite.go:33	0xe3cf9e		488b942440010000	MOVQ 0x140(SP), DX					
  traffic_opposite.go:31	0xe3cfa6		488bb42420010000	MOVQ 0x120(SP), SI					
  traffic_opposite.go:30	0xe3cfae		4c8d41ff		LEAQ -0x1(CX), R8					
  traffic_opposite.go:30	0xe3cfb2		4c39c3			CMPQ BX, R8						
  traffic_opposite.go:30	0xe3cfb5		0f8d47010000		JGE 0xe3d102						
  traffic_opposite.go:31	0xe3cfbb		4989d8			MOVQ BX, R8						
  traffic_opposite.go:31	0xe3cfbe		48c1e304		SHLQ $__subsystem__+1(SB), BX				
  traffic_opposite.go:31	0xe3cfc2		49ffc0			INCQ R8							
  traffic_opposite.go:31	0xe3cfc5		4c8b0c33		MOVQ 0(BX)(SI*1), R9					
  traffic_opposite.go:31	0xe3cfc9		4c8b543308		MOVQ 0x8(BX)(SI*1), R10					
  traffic_opposite.go:31	0xe3cfce		4c39c1			CMPQ CX, R8						
  traffic_opposite.go:31	0xe3cfd1		0f86a8030000		JBE 0xe3d37f						
  traffic_opposite.go:31	0xe3cfd7		4c898424c8000000	MOVQ R8, 0xc8(SP)					
  traffic_opposite.go:31	0xe3cfdf		48899c24c0000000	MOVQ BX, 0xc0(SP)					
  traffic_opposite.go:31	0xe3cfe7		4c899424a8000000	MOVQ R10, 0xa8(SP)					
  traffic_opposite.go:31	0xe3cfef		4c898c2408010000	MOVQ R9, 0x108(SP)					
  traffic_opposite.go:31	0xe3cff7		49c1e004		SHLQ $__subsystem__+1(SB), R8				
  traffic_opposite.go:31	0xe3cffb		4c898424b8000000	MOVQ R8, 0xb8(SP)					
  traffic_opposite.go:31	0xe3d003		498b0c30		MOVQ 0(R8)(SI*1), CX					
  traffic_opposite.go:31	0xe3d007		48898c24e8000000	MOVQ CX, 0xe8(SP)					
  traffic_opposite.go:31	0xe3d00f		498b7c3008		MOVQ 0x8(R8)(SI*1), DI					
  traffic_opposite.go:31	0xe3d014		4889bc2488000000	MOVQ DI, 0x88(SP)					
  traffic.go:35			0xe3d01c		4c89c8			MOVQ R9, AX						
  traffic.go:35			0xe3d01f		4c89d3			MOVQ R10, BX						
  traffic.go:35			0xe3d022		e8595a5cff		CALL runtime.cmpstring(SB)				
  traffic.go:35			0xe3d027		4885c0			TESTQ AX, AX						
  traffic.go:35			0xe3d02a		7d36			JGE 0xe3d062						
  traffic.go:36			0xe3d02c		31c0			XORL AX, AX						
  traffic.go:36			0xe3d02e		488b9c2408010000	MOVQ 0x108(SP), BX					
  traffic.go:36			0xe3d036		488b8c24a8000000	MOVQ 0xa8(SP), CX					
  traffic.go:36			0xe3d03e		488d3dc5b43200		LEAQ go:string.*+2(SB), DI				
  traffic.go:36			0xe3d045		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:36			0xe3d04a		4c8b8424e8000000	MOVQ 0xe8(SP), R8					
  traffic.go:36			0xe3d052		4c8b8c2488000000	MOVQ 0x88(SP), R9					
  traffic.go:36			0xe3d05a		e8418461ff		CALL runtime.concatstring3(SB)				
  traffic.go:36			0xe3d05f		90			NOPL							
  traffic_opposite.go:31	0xe3d060		eb33			JMP 0xe3d095						
  traffic.go:38			0xe3d062		31c0			XORL AX, AX						
  traffic.go:38			0xe3d064		488b9c24e8000000	MOVQ 0xe8(SP), BX					
  traffic.go:38			0xe3d06c		488b8c2488000000	MOVQ 0x88(SP), CX					
  traffic.go:38			0xe3d074		488d3d8fb43200		LEAQ go:string.*+2(SB), DI				
  traffic.go:38			0xe3d07b		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:38			0xe3d080		4c8b842408010000	MOVQ 0x108(SP), R8					
  traffic.go:38			0xe3d088		4c8b8c24a8000000	MOVQ 0xa8(SP), R9					
  traffic.go:38			0xe3d090		e80b8461ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:31	0xe3d095		48898424d0000000	MOVQ AX, 0xd0(SP)					
  traffic_opposite.go:31	0xe3d09d		48895c2478		MOVQ BX, 0x78(SP)					
  traffic_opposite.go:32	0xe3d0a2		488b942420010000	MOVQ 0x120(SP), DX					
  traffic_opposite.go:32	0xe3d0aa		488bb424c0000000	MOVQ 0xc0(SP), SI					
  traffic_opposite.go:32	0xe3d0b2		4c8b441608		MOVQ 0x8(SI)(DX*1), R8					
  traffic_opposite.go:32	0xe3d0b7		4c89842498000000	MOVQ R8, 0x98(SP)					
  traffic_opposite.go:32	0xe3d0bf		488b3416		MOVQ 0(SI)(DX*1), SI					
  traffic_opposite.go:32	0xe3d0c3		4889b424f8000000	MOVQ SI, 0xf8(SP)					
  traffic_opposite.go:32	0xe3d0cb		4c8b8c24b8000000	MOVQ 0xb8(SP), R9					
  traffic_opposite.go:32	0xe3d0d3		4d8b1411		MOVQ 0(R9)(DX*1), R10					
  traffic_opposite.go:32	0xe3d0d7		4c899424f0000000	MOVQ R10, 0xf0(SP)					
  traffic_opposite.go:32	0xe3d0df		4d8b4c1108		MOVQ 0x8(R9)(DX*1), R9					
  traffic_opposite.go:32	0xe3d0e4		4c898c2490000000	MOVQ R9, 0x90(SP)					
  traffic_opposite.go:33	0xe3d0ec		4c8b9c2438010000	MOVQ 0x138(SP), R11					
  traffic_opposite.go:33	0xe3d0f4		488b8c2440010000	MOVQ 0x140(SP), CX					
  traffic_opposite.go:33	0xe3d0fc		31ff			XORL DI, DI						
  traffic_opposite.go:33	0xe3d0fe		6690			NOPW							
  traffic_opposite.go:33	0xe3d100		eb4e			JMP 0xe3d150						
  traffic_opposite.go:42	0xe3d102		4881c410010000		ADDQ $.file+195(SB), SP					
  traffic_opposite.go:42	0xe3d109		5d			POPQ BP							
  traffic_opposite.go:42	0xe3d10a		c3			RET							
  traffic_opposite.go:33	0xe3d10b		488b8c2440010000	MOVQ 0x140(SP), CX					
  traffic_opposite.go:33	0xe3d113		488bbc24b8000000	MOVQ 0xb8(SP), DI					
  traffic_opposite.go:34	0xe3d11b		488b8424d0000000	MOVQ 0xd0(SP), AX					
  traffic_opposite.go:31	0xe3d123		488b942420010000	MOVQ 0x120(SP), DX					
  traffic_opposite.go:34	0xe3d12b		488b5c2478		MOVQ 0x78(SP), BX					
  traffic_opposite.go:37	0xe3d130		488bb424f8000000	MOVQ 0xf8(SP), SI					
  traffic_opposite.go:37	0xe3d138		4c8b8c2490000000	MOVQ 0x90(SP), R9					
  traffic_opposite.go:37	0xe3d140		4c8b9424f0000000	MOVQ 0xf0(SP), R10					
  traffic_opposite.go:34	0xe3d148		4c8b9c2438010000	MOVQ 0x138(SP), R11					
  traffic_opposite.go:33	0xe3d150		4c8d61ff		LEAQ -0x1(CX), R12					
  traffic_opposite.go:33	0xe3d154		4c39e7			CMPQ DI, R12						
  traffic_opposite.go:33	0xe3d157		0f8d26feffff		JGE 0xe3cf83						
  traffic_opposite.go:34	0xe3d15d		4989fc			MOVQ DI, R12						
  traffic_opposite.go:34	0xe3d160		48c1e704		SHLQ $__subsystem__+1(SB), DI				
  traffic_opposite.go:34	0xe3d164		49ffc4			INCQ R12						
  traffic_opposite.go:34	0xe3d167		4d8b2c3b		MOVQ 0(R11)(DI*1), R13					
  traffic_opposite.go:34	0xe3d16b		4d8b7c3b08		MOVQ 0x8(R11)(DI*1), R15				
  traffic_opposite.go:34	0xe3d170		4c39e1			CMPQ CX, R12						
  traffic_opposite.go:34	0xe3d173		0f86fe010000		JBE 0xe3d377						
  traffic_opposite.go:34	0xe3d179		4889bc24c0000000	MOVQ DI, 0xc0(SP)					
  traffic_opposite.go:34	0xe3d181		4c89a424b8000000	MOVQ R12, 0xb8(SP)					
  traffic_opposite.go:34	0xe3d189		4c89bc24a0000000	MOVQ R15, 0xa0(SP)					
  traffic_opposite.go:34	0xe3d191		4c89ac2400010000	MOVQ R13, 0x100(SP)					
  traffic_opposite.go:34	0xe3d199		49c1e404		SHLQ $__subsystem__+1(SB), R12				
  traffic_opposite.go:34	0xe3d19d		4c89a424b0000000	MOVQ R12, 0xb0(SP)					
  traffic_opposite.go:34	0xe3d1a5		4b8b0c1c		MOVQ 0(R12)(R11*1), CX					
  traffic_opposite.go:34	0xe3d1a9		48898c24e0000000	MOVQ CX, 0xe0(SP)					
  traffic_opposite.go:34	0xe3d1b1		4b8b7c1c08		MOVQ 0x8(R12)(R11*1), DI				
  traffic_opposite.go:34	0xe3d1b6		4889bc2480000000	MOVQ DI, 0x80(SP)					
  traffic.go:35			0xe3d1be		4c89e8			MOVQ R13, AX						
  traffic.go:35			0xe3d1c1		4c89fb			MOVQ R15, BX						
  traffic.go:35			0xe3d1c4		e8b7585cff		CALL runtime.cmpstring(SB)				
  traffic.go:35			0xe3d1c9		4885c0			TESTQ AX, AX						
  traffic.go:35			0xe3d1cc		7d39			JGE 0xe3d207						
  traffic.go:36			0xe3d1ce		488d442458		LEAQ 0x58(SP), AX					
  traffic.go:36			0xe3d1d3		488b9c2400010000	MOVQ 0x100(SP), BX					
  traffic.go:36			0xe3d1db		488b8c24a0000000	MOVQ 0xa0(SP), CX					
  traffic.go:36			0xe3d1e3		488d3d20b33200		LEAQ go:string.*+2(SB), DI				
  traffic.go:36			0xe3d1ea		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:36			0xe3d1ef		4c8b8424e0000000	MOVQ 0xe0(SP), R8					
  traffic.go:36			0xe3d1f7		4c8b8c2480000000	MOVQ 0x80(SP), R9					
  traffic.go:36			0xe3d1ff		90			NOPL							
  traffic.go:36			0xe3d200		e89b8261ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:34	0xe3d205		eb36			JMP 0xe3d23d						
  traffic.go:38			0xe3d207		488d442438		LEAQ 0x38(SP), AX					
  traffic.go:38			0xe3d20c		488b9c24e0000000	MOVQ 0xe0(SP), BX					
  traffic.go:38			0xe3d214		488b8c2480000000	MOVQ 0x80(SP), CX					
  traffic.go:38			0xe3d21c		488d3de7b23200		LEAQ go:string.*+2(SB), DI				
  traffic.go:38			0xe3d223		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:38			0xe3d228		4c8b842400010000	MOVQ 0x100(SP), R8					
  traffic.go:38			0xe3d230		4c8b8c24a0000000	MOVQ 0xa0(SP), R9					
  traffic.go:38			0xe3d238		e8638261ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:34	0xe3d23d		488b542478		MOVQ 0x78(SP), DX					
  traffic_opposite.go:34	0xe3d242		4839d3			CMPQ BX, DX						
  traffic_opposite.go:34	0xe3d245		0f850f010000		JNE 0xe3d35a						
  traffic_opposite.go:34	0xe3d24b		4889d9			MOVQ BX, CX						
  traffic_opposite.go:34	0xe3d24e		488b9c24d0000000	MOVQ 0xd0(SP), BX					
  traffic_opposite.go:34	0xe3d256		e8055c5cff		CALL runtime.memequal(SB)				
  traffic_opposite.go:34	0xe3d25b		0f1f440000		NOPL 0(AX)(AX*1)					
  traffic_opposite.go:34	0xe3d260		84c0			TESTL AL, AL						
  traffic_opposite.go:34	0xe3d262		0f84ed000000		JE 0xe3d355						
  traffic_opposite.go:37	0xe3d268		488b9424c0000000	MOVQ 0xc0(SP), DX					
  traffic_opposite.go:37	0xe3d270		488bb42438010000	MOVQ 0x138(SP), SI					
  traffic_opposite.go:37	0xe3d278		488b4c1608		MOVQ 0x8(SI)(DX*1), CX					
  traffic_opposite.go:37	0xe3d27d		488b0416		MOVQ 0(SI)(DX*1), AX					
  traffic_opposite.go:37	0xe3d281		488b942490000000	MOVQ 0x90(SP), DX					
  traffic_opposite.go:37	0xe3d289		4839d1			CMPQ CX, DX						
  traffic_opposite.go:37	0xe3d28c		7404			JE 0xe3d292						
  traffic_opposite.go:37	0xe3d28e		31c0			XORL AX, AX						
  traffic_opposite.go:37	0xe3d290		eb1d			JMP 0xe3d2af						
  traffic_opposite.go:37	0xe3d292		488b9c24f0000000	MOVQ 0xf0(SP), BX					
  traffic_opposite.go:37	0xe3d29a		e8c15b5cff		CALL runtime.memequal(SB)				
  traffic_opposite.go:37	0xe3d29f		488b942490000000	MOVQ 0x90(SP), DX					
  traffic_opposite.go:37	0xe3d2a7		488bb42438010000	MOVQ 0x138(SP), SI					
  traffic_opposite.go:37	0xe3d2af		84c0			TESTL AL, AL						
  traffic_opposite.go:37	0xe3d2b1		0f8491000000		JE 0xe3d348						
  traffic_opposite.go:37	0xe3d2b7		4c8b8424b0000000	MOVQ 0xb0(SP), R8					
  traffic_opposite.go:37	0xe3d2bf		4a8b4c0608		MOVQ 0x8(SI)(R8*1), CX					
  traffic_opposite.go:37	0xe3d2c4		4a8b0406		MOVQ 0(SI)(R8*1), AX					
  traffic_opposite.go:37	0xe3d2c8		4c8b842498000000	MOVQ 0x98(SP), R8					
  traffic_opposite.go:37	0xe3d2d0		4c39c1			CMPQ CX, R8						
  traffic_opposite.go:37	0xe3d2d3		7404			JE 0xe3d2d9						
  traffic_opposite.go:37	0xe3d2d5		31c0			XORL AX, AX						
  traffic_opposite.go:37	0xe3d2d7		eb27			JMP 0xe3d300						
  traffic_opposite.go:37	0xe3d2d9		488b9c24f8000000	MOVQ 0xf8(SP), BX					
  traffic_opposite.go:37	0xe3d2e1		e87a5b5cff		CALL runtime.memequal(SB)				
  traffic_opposite.go:37	0xe3d2e6		488b942490000000	MOVQ 0x90(SP), DX					
  traffic_opposite.go:34	0xe3d2ee		488bb42438010000	MOVQ 0x138(SP), SI					
  traffic_opposite.go:37	0xe3d2f6		4c8b842498000000	MOVQ 0x98(SP), R8					
  traffic_opposite.go:37	0xe3d2fe		6690			NOPW							
  traffic_opposite.go:37	0xe3d300		84c0			TESTL AL, AL						
  traffic_opposite.go:37	0xe3d302		0f8403feffff		JE 0xe3d10b						
  traffic_opposite.go:38	0xe3d308		488d05d1022400		LEAQ runtime.types+624096(SB), AX			
  traffic_opposite.go:38	0xe3d30f		488b9c24d8000000	MOVQ 0xd8(SP), BX					
  traffic_opposite.go:38	0xe3d317		488b8c24d0000000	MOVQ 0xd0(SP), CX					
  traffic_opposite.go:38	0xe3d31f		488b7c2478		MOVQ 0x78(SP), DI					
  traffic_opposite.go:38	0xe3d324		e8f70c63ff		CALL runtime.mapassign_faststr(SB)			
  traffic_opposite.go:38	0xe3d329		8400			TESTB AL, 0(AX)						
  traffic_opposite.go:37	0xe3d32b		488b942490000000	MOVQ 0x90(SP), DX					
  traffic_opposite.go:34	0xe3d333		488bb42438010000	MOVQ 0x138(SP), SI					
  traffic_opposite.go:37	0xe3d33b		4c8b842498000000	MOVQ 0x98(SP), R8					
  traffic_opposite.go:38	0xe3d343		e9c3fdffff		JMP 0xe3d10b						
  traffic_opposite.go:37	0xe3d348		4c8b842498000000	MOVQ 0x98(SP), R8					
  traffic_opposite.go:37	0xe3d350		e9b6fdffff		JMP 0xe3d10b						
  traffic_opposite.go:34	0xe3d355		488b542478		MOVQ 0x78(SP), DX					
  traffic_opposite.go:37	0xe3d35a		488b942490000000	MOVQ 0x90(SP), DX					
  traffic_opposite.go:34	0xe3d362		488bb42438010000	MOVQ 0x138(SP), SI					
  traffic_opposite.go:37	0xe3d36a		4c8b842498000000	MOVQ 0x98(SP), R8					
  traffic_opposite.go:35	0xe3d372		e994fdffff		JMP 0xe3d10b						
  traffic_opposite.go:34	0xe3d377		4c89e0			MOVQ R12, AX						
  traffic_opposite.go:34	0xe3d37a		e861b463ff		CALL runtime.panicIndex(SB)				
  traffic_opposite.go:31	0xe3d37f		4c89c0			MOVQ R8, AX						
  traffic_opposite.go:31	0xe3d382		e859b463ff		CALL runtime.panicIndex(SB)				
  traffic_opposite.go:31	0xe3d387		90			NOPL							
  traffic_opposite.go:25	0xe3d388		4889442408		MOVQ AX, 0x8(SP)					
  traffic_opposite.go:25	0xe3d38d		48895c2410		MOVQ BX, 0x10(SP)					
  traffic_opposite.go:25	0xe3d392		48894c2418		MOVQ CX, 0x18(SP)					
  traffic_opposite.go:25	0xe3d397		48897c2420		MOVQ DI, 0x20(SP)					
  traffic_opposite.go:25	0xe3d39c		4889742428		MOVQ SI, 0x28(SP)					
  traffic_opposite.go:25	0xe3d3a1		4c89442430		MOVQ R8, 0x30(SP)					
  traffic_opposite.go:25	0xe3d3a6		e8359163ff		CALL runtime.morestack_noctxt.abi0(SB)			
  traffic_opposite.go:25	0xe3d3ab		488b442408		MOVQ 0x8(SP), AX					
  traffic_opposite.go:25	0xe3d3b0		488b5c2410		MOVQ 0x10(SP), BX					
  traffic_opposite.go:25	0xe3d3b5		488b4c2418		MOVQ 0x18(SP), CX					
  traffic_opposite.go:25	0xe3d3ba		488b7c2420		MOVQ 0x20(SP), DI					
  traffic_opposite.go:25	0xe3d3bf		488b742428		MOVQ 0x28(SP), SI					
  traffic_opposite.go:25	0xe3d3c4		4c8b442430		MOVQ 0x30(SP), R8					
  traffic_opposite.go:25	0xe3d3c9		e932fbffff		JMP CAS-Backend/pkg/diapdu.oppositeConflictEdges(SB)	
  :-1				0xe3d3ce		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3cf		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3d0		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3d1		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3d2		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3d3		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3d4		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3d5		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3d6		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3d7		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3d8		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3d9		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3da		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3db		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3dc		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3dd		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3de		cc			INT $__subsystem__(SB)					
  :-1				0xe3d3df		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.conflictZoneEndpoints(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:45	0xe3d3e0		4c8da42470feffff	LEAQ 0xfffffe70(SP), R12				
  traffic_opposite.go:45	0xe3d3e8		4d3b6610		CMPQ R12, 0x10(R14)					
  traffic_opposite.go:45	0xe3d3ec		0f8634040000		JBE 0xe3d826						
  traffic_opposite.go:45	0xe3d3f2		55			PUSHQ BP						
  traffic_opposite.go:45	0xe3d3f3		4889e5			MOVQ SP, BP						
  traffic_opposite.go:45	0xe3d3f6		4881ec08020000		SUBQ $__file_alignment__+8(SB), SP			
  traffic_opposite.go:45	0xe3d3fd		440f11bc2418020000	MOVUPS X15, 0x218(SP)					
  traffic_opposite.go:45	0xe3d406		440f11bc2428020000	MOVUPS X15, 0x228(SP)					
  traffic_opposite.go:46	0xe3d40f		4885c0			TESTQ AX, AX						
  traffic_opposite.go:46	0xe3d412		7405			JE 0xe3d419						
  traffic_opposite.go:46	0xe3d414		488b08			MOVQ 0(AX), CX						
  traffic_opposite.go:46	0xe3d417		eb07			JMP 0xe3d420						
  traffic_opposite.go:46	0xe3d419		31c9			XORL CX, CX						
  traffic_opposite.go:46	0xe3d41b		0f1f440000		NOPL 0(AX)(AX*1)					
  traffic_opposite.go:46	0xe3d420		4885c9			TESTQ CX, CX						
  traffic_opposite.go:46	0xe3d423		0f84a8000000		JE 0xe3d4d1						
  traffic_opposite.go:46	0xe3d429		4889842438020000	MOVQ AX, 0x238(SP)					
  traffic_opposite.go:49	0xe3d431		440f11bc2478010000	MOVUPS X15, 0x178(SP)					
  traffic_opposite.go:49	0xe3d43a		440f11bc2488010000	MOVUPS X15, 0x188(SP)					
  traffic_opposite.go:49	0xe3d443		440f11bc2498010000	MOVUPS X15, 0x198(SP)					
  traffic_opposite.go:49	0xe3d44c		488dbc24a8000000	LEAQ 0xa8(SP), DI					
  traffic_opposite.go:49	0xe3d454		488d7fd0		LEAQ -0x30(DI), DI					
  traffic_opposite.go:49	0xe3d458		0f1f840000000000	NOPL 0(AX)(AX*1)					
  traffic_opposite.go:49	0xe3d460		48896c24f0		MOVQ BP, -0x10(SP)					
  traffic_opposite.go:49	0xe3d465		488d6c24f0		LEAQ -0x10(SP), BP					
  traffic_opposite.go:49	0xe3d46a		e853b663ff		CALL 0x478ac2						
  traffic_opposite.go:49	0xe3d46f		488b6d00		MOVQ 0(BP), BP						
  traffic_opposite.go:49	0xe3d473		488d8424a8000000	LEAQ 0xa8(SP), AX					
  traffic_opposite.go:49	0xe3d47b		4889842488010000	MOVQ AX, 0x188(SP)					
  traffic_opposite.go:49	0xe3d483		e8f8f860ff		CALL runtime.rand32(SB)					
  traffic_opposite.go:49	0xe3d488		89842484010000		MOVL AX, 0x184(SP)					
  traffic_opposite.go:50	0xe3d48f		488dbc24a8010000	LEAQ 0x1a8(SP), DI					
  traffic_opposite.go:50	0xe3d497		488d7fe0		LEAQ -0x20(DI), DI					
  traffic_opposite.go:50	0xe3d49b		0f1f440000		NOPL 0(AX)(AX*1)					
  traffic_opposite.go:50	0xe3d4a0		48896c24f0		MOVQ BP, -0x10(SP)					
  traffic_opposite.go:50	0xe3d4a5		488d6c24f0		LEAQ -0x10(SP), BP					
  traffic_opposite.go:50	0xe3d4aa		e83cb663ff		CALL 0x478aeb						
  traffic_opposite.go:50	0xe3d4af		488b6d00		MOVQ 0(BP), BP						
  traffic_opposite.go:50	0xe3d4b3		488d0526012400		LEAQ runtime.types+624096(SB), AX			
  traffic_opposite.go:50	0xe3d4ba		488b9c2438020000	MOVQ 0x238(SP), BX					
  traffic_opposite.go:50	0xe3d4c2		488d8c24a8010000	LEAQ 0x1a8(SP), CX					
  traffic_opposite.go:50	0xe3d4ca		e851e862ff		CALL runtime.mapiterinit(SB)				
  traffic_opposite.go:50	0xe3d4cf		eb16			JMP 0xe3d4e7						
  traffic_opposite.go:47	0xe3d4d1		4881c408020000		ADDQ $__file_alignment__+8(SB), SP			
  traffic_opposite.go:47	0xe3d4d8		5d			POPQ BP							
  traffic_opposite.go:47	0xe3d4d9		c3			RET							
  traffic_opposite.go:50	0xe3d4da		488d8424a8010000	LEAQ 0x1a8(SP), AX					
  traffic_opposite.go:50	0xe3d4e2		e859ea62ff		CALL runtime.mapiternext(SB)				
  traffic_opposite.go:50	0xe3d4e7		488b9424a8010000	MOVQ 0x1a8(SP), DX					
  traffic_opposite.go:50	0xe3d4ef		4885d2			TESTQ DX, DX						
  traffic_opposite.go:50	0xe3d4f2		7471			JE 0xe3d565						
  traffic_opposite.go:50	0xe3d4f4		488b02			MOVQ 0(DX), AX						
  traffic_opposite.go:50	0xe3d4f7		488b5a08		MOVQ 0x8(DX), BX					
  traffic_opposite.go:50	0xe3d4fb		0f1f440000		NOPL 0(AX)(AX*1)					
  traffic_opposite.go:51	0xe3d500		e81bf9ffff		CALL CAS-Backend/pkg/diapdu.splitUndirectedKey(SB)	
  traffic_opposite.go:52	0xe3d505		4885db			TESTQ BX, BX						
  traffic_opposite.go:52	0xe3d508		74d0			JE 0xe3d4da						
  traffic_opposite.go:52	0xe3d50a		4885ff			TESTQ DI, DI						
  traffic_opposite.go:52	0xe3d50d		74cb			JE 0xe3d4da						
  traffic_opposite.go:51	0xe3d50f		48897c2460		MOVQ DI, 0x60(SP)					
  traffic_opposite.go:51	0xe3d514		48898c2490000000	MOVQ CX, 0x90(SP)					
  traffic_opposite.go:55	0xe3d51c		4889c1			MOVQ AX, CX						
  traffic_opposite.go:55	0xe3d51f		4889df			MOVQ BX, DI						
  traffic_opposite.go:55	0xe3d522		488d05d7042400		LEAQ runtime.types+625152(SB), AX			
  traffic_opposite.go:55	0xe3d529		488d9c2478010000	LEAQ 0x178(SP), BX					
  traffic_opposite.go:55	0xe3d531		e8ea0a63ff		CALL runtime.mapassign_faststr(SB)			
  traffic_opposite.go:55	0xe3d536		48ff00			INCQ 0(AX)						
  traffic_opposite.go:56	0xe3d539		488d05c0042400		LEAQ runtime.types+625152(SB), AX			
  traffic_opposite.go:56	0xe3d540		488d9c2478010000	LEAQ 0x178(SP), BX					
  traffic_opposite.go:56	0xe3d548		488b8c2490000000	MOVQ 0x90(SP), CX					
  traffic_opposite.go:56	0xe3d550		488b7c2460		MOVQ 0x60(SP), DI					
  traffic_opposite.go:56	0xe3d555		e8c60a63ff		CALL runtime.mapassign_faststr(SB)			
  traffic_opposite.go:56	0xe3d55a		48ff00			INCQ 0(AX)						
  traffic_opposite.go:56	0xe3d55d		0f1f00			NOPL 0(AX)						
  traffic_opposite.go:56	0xe3d560		e975ffffff		JMP 0xe3d4da						
  traffic_opposite.go:59	0xe3d565		488dbc24a8010000	LEAQ 0x1a8(SP), DI					
  traffic_opposite.go:59	0xe3d56d		488d7fe0		LEAQ -0x20(DI), DI					
  traffic_opposite.go:59	0xe3d571		660f1f840000000000	NOPW 0(AX)(AX*1)					
  traffic_opposite.go:59	0xe3d57a		660f1f440000		NOPW 0(AX)(AX*1)					
  traffic_opposite.go:59	0xe3d580		48896c24f0		MOVQ BP, -0x10(SP)					
  traffic_opposite.go:59	0xe3d585		488d6c24f0		LEAQ -0x10(SP), BP					
  traffic_opposite.go:59	0xe3d58a		e85cb563ff		CALL 0x478aeb						
  traffic_opposite.go:59	0xe3d58f		488b6d00		MOVQ 0(BP), BP						
  traffic_opposite.go:59	0xe3d593		488d0566042400		LEAQ runtime.types+625152(SB), AX			
  traffic_opposite.go:59	0xe3d59a		488d9c2478010000	LEAQ 0x178(SP), BX					
  traffic_opposite.go:59	0xe3d5a2		488d8c24a8010000	LEAQ 0x1a8(SP), CX					
  traffic_opposite.go:59	0xe3d5aa		e871e762ff		CALL runtime.mapiterinit(SB)				
  traffic_opposite.go:59	0xe3d5af		31c0			XORL AX, AX						
  traffic_opposite.go:59	0xe3d5b1		31c9			XORL CX, CX						
  traffic_opposite.go:59	0xe3d5b3		31d2			XORL DX, DX						
  traffic_opposite.go:59	0xe3d5b5		eb31			JMP 0xe3d5e8						
  traffic_opposite.go:61	0xe3d5b7		48894c2450		MOVQ CX, 0x50(SP)					
  traffic_opposite.go:61	0xe3d5bc		48895c2448		MOVQ BX, 0x48(SP)					
  traffic_opposite.go:61	0xe3d5c1		4889842480000000	MOVQ AX, 0x80(SP)					
  traffic_opposite.go:59	0xe3d5c9		488d8424a8010000	LEAQ 0x1a8(SP), AX					
  traffic_opposite.go:59	0xe3d5d1		e86ae962ff		CALL runtime.mapiternext(SB)				
  traffic_opposite.go:61	0xe3d5d6		488b842480000000	MOVQ 0x80(SP), AX					
  traffic_opposite.go:61	0xe3d5de		488b4c2450		MOVQ 0x50(SP), CX					
  traffic_opposite.go:61	0xe3d5e3		488b542448		MOVQ 0x48(SP), DX					
  traffic_opposite.go:59	0xe3d5e8		4c8b8424a8010000	MOVQ 0x1a8(SP), R8					
  traffic_opposite.go:59	0xe3d5f0		4d85c0			TESTQ R8, R8						
  traffic_opposite.go:59	0xe3d5f3		747a			JE 0xe3d66f						
  traffic_opposite.go:59	0xe3d5f5		4c8b8c24b0010000	MOVQ 0x1b0(SP), R9					
  traffic_opposite.go:59	0xe3d5fd		4d8b10			MOVQ 0(R8), R10						
  traffic_opposite.go:59	0xe3d600		4d8b4008		MOVQ 0x8(R8), R8					
  traffic_opposite.go:59	0xe3d604		49833901		CMPQ 0(R9), $__minor_os_version__(SB)			
  traffic_opposite.go:60	0xe3d608		755d			JNE 0xe3d667						
  traffic_opposite.go:61	0xe3d60a		488d5a01		LEAQ 0x1(DX), BX					
  traffic_opposite.go:61	0xe3d60e		4839d9			CMPQ CX, BX						
  traffic_opposite.go:61	0xe3d611		7325			JAE 0xe3d638						
  traffic_opposite.go:59	0xe3d613		4c89542478		MOVQ R10, 0x78(SP)					
  traffic_opposite.go:59	0xe3d618		4c89442440		MOVQ R8, 0x40(SP)					
  traffic_opposite.go:61	0xe3d61d		bf01000000		MOVL $__minor_os_version__(SB), DI			
  traffic_opposite.go:61	0xe3d622		488d35f7522000		LEAQ runtime.types+383264(SB), SI			
  traffic_opposite.go:61	0xe3d629		e8124663ff		CALL runtime.growslice(SB)				
  traffic_opposite.go:61	0xe3d62e		4c8b442440		MOVQ 0x40(SP), R8					
  traffic_opposite.go:61	0xe3d633		4c8b542478		MOVQ 0x78(SP), R10					
  traffic_opposite.go:61	0xe3d638		488d53ff		LEAQ -0x1(BX), DX					
  traffic_opposite.go:61	0xe3d63c		48c1e204		SHLQ $__subsystem__+1(SB), DX				
  traffic_opposite.go:61	0xe3d640		4c89441008		MOVQ R8, 0x8(AX)(DX*1)					
  traffic_opposite.go:61	0xe3d645		833d0405720200		CMPL runtime.writeBarrier(SB), $0x0			
  traffic_opposite.go:61	0xe3d64c		7410			JE 0xe3d65e						
  traffic_opposite.go:61	0xe3d64e		e8edad63ff		CALL runtime.gcWriteBarrier2(SB)			
  traffic_opposite.go:61	0xe3d653		4d8913			MOVQ R10, 0(R11)					
  traffic_opposite.go:61	0xe3d656		488b3410		MOVQ 0(AX)(DX*1), SI					
  traffic_opposite.go:61	0xe3d65a		49897308		MOVQ SI, 0x8(R11)					
  traffic_opposite.go:61	0xe3d65e		4c891410		MOVQ R10, 0(AX)(DX*1)					
  traffic_opposite.go:61	0xe3d662		e950ffffff		JMP 0xe3d5b7						
  traffic_opposite.go:61	0xe3d667		4889d3			MOVQ DX, BX						
  traffic_opposite.go:60	0xe3d66a		e948ffffff		JMP 0xe3d5b7						
  traffic_opposite.go:61	0xe3d66f		4889542470		MOVQ DX, 0x70(SP)					
  traffic_opposite.go:61	0xe3d674		48898424a0000000	MOVQ AX, 0xa0(SP)					
  traffic_opposite.go:64	0xe3d67c		90			NOPL							
  sort.go:176			0xe3d67d		4889d3			MOVQ DX, BX						
  sort.go:176			0xe3d680		e81b456fff		CALL sort.stringsImpl(SB)				
  traffic_opposite.go:65	0xe3d685		488b542470		MOVQ 0x70(SP), DX					
  traffic_opposite.go:65	0xe3d68a		4883fa02		CMPQ DX, $__minor_os_version__+1(SB)			
  traffic_opposite.go:65	0xe3d68e		7d41			JGE 0xe3d6d1						
  traffic_opposite.go:69	0xe3d690		488dbc24a8010000	LEAQ 0x1a8(SP), DI					
  traffic_opposite.go:69	0xe3d698		488d7fe0		LEAQ -0x20(DI), DI					
  traffic_opposite.go:69	0xe3d69c		0f1f4000		NOPL 0(AX)						
  traffic_opposite.go:69	0xe3d6a0		48896c24f0		MOVQ BP, -0x10(SP)					
  traffic_opposite.go:69	0xe3d6a5		488d6c24f0		LEAQ -0x10(SP), BP					
  traffic_opposite.go:69	0xe3d6aa		e83cb463ff		CALL 0x478aeb						
  traffic_opposite.go:69	0xe3d6af		488b6d00		MOVQ 0(BP), BP						
  traffic_opposite.go:69	0xe3d6b3		488d0526ff2300		LEAQ runtime.types+624096(SB), AX			
  traffic_opposite.go:69	0xe3d6ba		488b9c2438020000	MOVQ 0x238(SP), BX					
  traffic_opposite.go:69	0xe3d6c2		488d8c24a8010000	LEAQ 0x1a8(SP), CX					
  traffic_opposite.go:69	0xe3d6ca		e851e662ff		CALL runtime.mapiterinit(SB)				
  traffic_opposite.go:69	0xe3d6cf		eb5f			JMP 0xe3d730						
  traffic_opposite.go:66	0xe3d6d1		440f11bc2418020000	MOVUPS X15, 0x218(SP)					
  traffic_opposite.go:66	0xe3d6da		440f11bc2428020000	MOVUPS X15, 0x228(SP)					
  traffic_opposite.go:66	0xe3d6e3		488b8424a0000000	MOVQ 0xa0(SP), AX					
  traffic_opposite.go:66	0xe3d6eb		488b08			MOVQ 0(AX), CX						
  traffic_opposite.go:66	0xe3d6ee		488b5008		MOVQ 0x8(AX), DX					
  traffic_opposite.go:66	0xe3d6f2		48898c2418020000	MOVQ CX, 0x218(SP)					
  traffic_opposite.go:66	0xe3d6fa		4889942420020000	MOVQ DX, 0x220(SP)					
  traffic_opposite.go:66	0xe3d702		488b4810		MOVQ 0x10(AX), CX					
  traffic_opposite.go:66	0xe3d706		488b4018		MOVQ 0x18(AX), AX					
  traffic_opposite.go:66	0xe3d70a		48898c2428020000	MOVQ CX, 0x228(SP)					
  traffic_opposite.go:66	0xe3d712		4889842430020000	MOVQ AX, 0x230(SP)					
  traffic_opposite.go:66	0xe3d71a		4881c408020000		ADDQ $__file_alignment__+8(SB), SP			
  traffic_opposite.go:66	0xe3d721		5d			POPQ BP							
  traffic_opposite.go:66	0xe3d722		c3			RET							
  traffic_opposite.go:69	0xe3d723		488d8424a8010000	LEAQ 0x1a8(SP), AX					
  traffic_opposite.go:69	0xe3d72b		e810e862ff		CALL runtime.mapiternext(SB)				
  traffic_opposite.go:69	0xe3d730		488b8c24a8010000	MOVQ 0x1a8(SP), CX					
  traffic_opposite.go:69	0xe3d738		0f1f840000000000	NOPL 0(AX)(AX*1)					
  traffic_opposite.go:69	0xe3d740		4885c9			TESTQ CX, CX						
  traffic_opposite.go:69	0xe3d743		0f84c2000000		JE 0xe3d80b						
  traffic_opposite.go:69	0xe3d749		488b01			MOVQ 0(CX), AX						
  traffic_opposite.go:69	0xe3d74c		488b5908		MOVQ 0x8(CX), BX					
  traffic_opposite.go:70	0xe3d750		e8cbf6ffff		CALL CAS-Backend/pkg/diapdu.splitUndirectedKey(SB)	
  traffic_opposite.go:71	0xe3d755		4885db			TESTQ BX, BX						
  traffic_opposite.go:71	0xe3d758		74c9			JE 0xe3d723						
  traffic_opposite.go:71	0xe3d75a		4885ff			TESTQ DI, DI						
  traffic_opposite.go:71	0xe3d75d		74c4			JE 0xe3d723						
  traffic_opposite.go:70	0xe3d75f		48897c2458		MOVQ DI, 0x58(SP)					
  traffic_opposite.go:70	0xe3d764		48898c2488000000	MOVQ CX, 0x88(SP)					
  traffic_opposite.go:70	0xe3d76c		48895c2468		MOVQ BX, 0x68(SP)					
  traffic_opposite.go:70	0xe3d771		4889842498000000	MOVQ AX, 0x98(SP)					
  traffic_opposite.go:72	0xe3d779		e802535cff		CALL runtime.cmpstring(SB)				
  traffic_opposite.go:72	0xe3d77e		6690			NOPW							
  traffic_opposite.go:72	0xe3d780		4885c0			TESTQ AX, AX						
  traffic_opposite.go:72	0xe3d783		7d43			JGE 0xe3d7c8						
  traffic_opposite.go:73	0xe3d785		488b842498000000	MOVQ 0x98(SP), AX					
  traffic_opposite.go:73	0xe3d78d		4889842418020000	MOVQ AX, 0x218(SP)					
  traffic_opposite.go:73	0xe3d795		488b442468		MOVQ 0x68(SP), AX					
  traffic_opposite.go:73	0xe3d79a		4889842420020000	MOVQ AX, 0x220(SP)					
  traffic_opposite.go:73	0xe3d7a2		488b842488000000	MOVQ 0x88(SP), AX					
  traffic_opposite.go:73	0xe3d7aa		4889842428020000	MOVQ AX, 0x228(SP)					
  traffic_opposite.go:73	0xe3d7b2		488b442458		MOVQ 0x58(SP), AX					
  traffic_opposite.go:73	0xe3d7b7		4889842430020000	MOVQ AX, 0x230(SP)					
  traffic_opposite.go:73	0xe3d7bf		4881c408020000		ADDQ $__file_alignment__+8(SB), SP			
  traffic_opposite.go:73	0xe3d7c6		5d			POPQ BP							
  traffic_opposite.go:73	0xe3d7c7		c3			RET							
  traffic_opposite.go:75	0xe3d7c8		488b842488000000	MOVQ 0x88(SP), AX					
  traffic_opposite.go:75	0xe3d7d0		4889842418020000	MOVQ AX, 0x218(SP)					
  traffic_opposite.go:75	0xe3d7d8		488b442458		MOVQ 0x58(SP), AX					
  traffic_opposite.go:75	0xe3d7dd		4889842420020000	MOVQ AX, 0x220(SP)					
  traffic_opposite.go:75	0xe3d7e5		488b842498000000	MOVQ 0x98(SP), AX					
  traffic_opposite.go:75	0xe3d7ed		4889842428020000	MOVQ AX, 0x228(SP)					
  traffic_opposite.go:75	0xe3d7f5		488b442468		MOVQ 0x68(SP), AX					
  traffic_opposite.go:75	0xe3d7fa		4889842430020000	MOVQ AX, 0x230(SP)					
  traffic_opposite.go:75	0xe3d802		4881c408020000		ADDQ $__file_alignment__+8(SB), SP			
  traffic_opposite.go:75	0xe3d809		5d			POPQ BP							
  traffic_opposite.go:75	0xe3d80a		c3			RET							
  traffic_opposite.go:78	0xe3d80b		440f11bc2418020000	MOVUPS X15, 0x218(SP)					
  traffic_opposite.go:78	0xe3d814		440f11bc2428020000	MOVUPS X15, 0x228(SP)					
  traffic_opposite.go:78	0xe3d81d		4881c408020000		ADDQ $__file_alignment__+8(SB), SP			
  traffic_opposite.go:78	0xe3d824		5d			POPQ BP							
  traffic_opposite.go:78	0xe3d825		c3			RET							
  traffic_opposite.go:45	0xe3d826		4889442428		MOVQ AX, 0x28(SP)					
  traffic_opposite.go:45	0xe3d82b		e8b08c63ff		CALL runtime.morestack_noctxt.abi0(SB)			
  traffic_opposite.go:45	0xe3d830		488b442428		MOVQ 0x28(SP), AX					
  traffic_opposite.go:45	0xe3d835		e9a6fbffff		JMP CAS-Backend/pkg/diapdu.conflictZoneEndpoints(SB)	
  :-1				0xe3d83a		cc			INT $__subsystem__(SB)					
  :-1				0xe3d83b		cc			INT $__subsystem__(SB)					
  :-1				0xe3d83c		cc			INT $__subsystem__(SB)					
  :-1				0xe3d83d		cc			INT $__subsystem__(SB)					
  :-1				0xe3d83e		cc			INT $__subsystem__(SB)					
  :-1				0xe3d83f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.winnerClearedOppositeZone(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:112	0xe3d840		4c8d6424b8		LEAQ -0x48(SP), R12						
  traffic_opposite.go:112	0xe3d845		4d3b6610		CMPQ R12, 0x10(R14)						
  traffic_opposite.go:112	0xe3d849		0f86b7010000		JBE 0xe3da06							
  traffic_opposite.go:112	0xe3d84f		55			PUSHQ BP							
  traffic_opposite.go:112	0xe3d850		4889e5			MOVQ SP, BP							
  traffic_opposite.go:112	0xe3d853		4881ecc0000000		SUBQ $.file+115(SB), SP						
  traffic_opposite.go:99	0xe3d85a		4889842438010000	MOVQ AX, 0x138(SP)						
  traffic_opposite.go:113	0xe3d862		488b942420010000	MOVQ 0x120(SP), DX						
  traffic_opposite.go:113	0xe3d86a		48899424a8000000	MOVQ DX, 0xa8(SP)						
  traffic_opposite.go:113	0xe3d872		488b8c2428010000	MOVQ 0x128(SP), CX						
  traffic_opposite.go:113	0xe3d87a		48894c2478		MOVQ CX, 0x78(SP)						
  traffic_opposite.go:113	0xe3d87f		31db			XORL BX, BX							
  traffic_opposite.go:113	0xe3d881		48c7c6ffffffff		MOVQ $-0x1, SI							
  traffic_opposite.go:99	0xe3d888		eb20			JMP 0xe3d8aa							
  traffic_opposite.go:99	0xe3d88a		488b9424a8000000	MOVQ 0xa8(SP), DX						
  traffic_opposite.go:99	0xe3d892		488b4c2478		MOVQ 0x78(SP), CX						
  traffic_opposite.go:99	0xe3d897		488b9c2498000000	MOVQ 0x98(SP), BX						
  traffic_opposite.go:113	0xe3d89f		4889c6			MOVQ AX, SI							
  traffic_opposite.go:100	0xe3d8a2		488b842438010000	MOVQ 0x138(SP), AX						
  traffic_opposite.go:99	0xe3d8aa		4c8d41ff		LEAQ -0x1(CX), R8						
  traffic_opposite.go:99	0xe3d8ae		4c39c3			CMPQ BX, R8							
  traffic_opposite.go:99	0xe3d8b1		0f8d1e010000		JGE 0xe3d9d5							
  traffic_opposite.go:100	0xe3d8b7		4989d8			MOVQ BX, R8							
  traffic_opposite.go:100	0xe3d8ba		48c1e304		SHLQ $__subsystem__+1(SB), BX					
  traffic_opposite.go:100	0xe3d8be		4d8d4801		LEAQ 0x1(R8), R9						
  traffic_opposite.go:100	0xe3d8c2		4c8b141a		MOVQ 0(DX)(BX*1), R10						
  traffic_opposite.go:100	0xe3d8c6		488b5c1a08		MOVQ 0x8(DX)(BX*1), BX						
  traffic_opposite.go:100	0xe3d8cb		4c39c9			CMPQ CX, R9							
  traffic_opposite.go:100	0xe3d8ce		0f8628010000		JBE 0xe3d9fc							
  traffic_opposite.go:100	0xe3d8d4		48899c2490000000	MOVQ BX, 0x90(SP)						
  traffic_opposite.go:99	0xe3d8dc		4c898424a0000000	MOVQ R8, 0xa0(SP)						
  traffic_opposite.go:100	0xe3d8e4		4c898c2498000000	MOVQ R9, 0x98(SP)						
  traffic_opposite.go:113	0xe3d8ec		4889b42480000000	MOVQ SI, 0x80(SP)						
  traffic_opposite.go:100	0xe3d8f4		4c899424b8000000	MOVQ R10, 0xb8(SP)						
  traffic_opposite.go:100	0xe3d8fc		49c1e104		SHLQ $__subsystem__+1(SB), R9					
  traffic_opposite.go:100	0xe3d900		4a8b0c0a		MOVQ 0(DX)(R9*1), CX						
  traffic_opposite.go:100	0xe3d904		48898c24b0000000	MOVQ CX, 0xb0(SP)						
  traffic_opposite.go:100	0xe3d90c		4a8b7c0a08		MOVQ 0x8(DX)(R9*1), DI						
  traffic_opposite.go:100	0xe3d911		4889bc2488000000	MOVQ DI, 0x88(SP)						
  traffic.go:35			0xe3d919		4c89d0			MOVQ R10, AX							
  traffic.go:35			0xe3d91c		0f1f4000		NOPL 0(AX)							
  traffic.go:35			0xe3d920		e85b515cff		CALL runtime.cmpstring(SB)					
  traffic.go:35			0xe3d925		4885c0			TESTQ AX, AX							
  traffic.go:35			0xe3d928		7d3d			JGE 0xe3d967							
  traffic.go:36			0xe3d92a		488d442458		LEAQ 0x58(SP), AX						
  traffic.go:36			0xe3d92f		488b9c24b8000000	MOVQ 0xb8(SP), BX						
  traffic.go:36			0xe3d937		488b8c2490000000	MOVQ 0x90(SP), CX						
  traffic.go:36			0xe3d93f		488d3dc4ab3200		LEAQ go:string.*+2(SB), DI					
  traffic.go:36			0xe3d946		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:36			0xe3d94b		4c8b8424b0000000	MOVQ 0xb0(SP), R8						
  traffic.go:36			0xe3d953		4c8b8c2488000000	MOVQ 0x88(SP), R9						
  traffic.go:36			0xe3d95b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic.go:36			0xe3d960		e83b7b61ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:100	0xe3d965		eb36			JMP 0xe3d99d							
  traffic.go:38			0xe3d967		488d442438		LEAQ 0x38(SP), AX						
  traffic.go:38			0xe3d96c		488b9c24b0000000	MOVQ 0xb0(SP), BX						
  traffic.go:38			0xe3d974		488b8c2488000000	MOVQ 0x88(SP), CX						
  traffic.go:38			0xe3d97c		488d3d87ab3200		LEAQ go:string.*+2(SB), DI					
  traffic.go:38			0xe3d983		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:38			0xe3d988		4c8b8424b8000000	MOVQ 0xb8(SP), R8						
  traffic.go:38			0xe3d990		4c8b8c2490000000	MOVQ 0x90(SP), R9						
  traffic.go:38			0xe3d998		e8037b61ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:100	0xe3d99d		4889c1			MOVQ AX, CX							
  traffic_opposite.go:100	0xe3d9a0		4889df			MOVQ BX, DI							
  traffic_opposite.go:100	0xe3d9a3		488d0536fc2300		LEAQ runtime.types+624096(SB), AX				
  traffic_opposite.go:100	0xe3d9aa		488b9c2438010000	MOVQ 0x138(SP), BX						
  traffic_opposite.go:100	0xe3d9b2		e8890263ff		CALL runtime.mapaccess2_faststr(SB)				
  traffic_opposite.go:100	0xe3d9b7		84db			TESTL BL, BL							
  traffic_opposite.go:100	0xe3d9b9		740d			JE 0xe3d9c8							
  traffic_opposite.go:113	0xe3d9bb		488b8424a0000000	MOVQ 0xa0(SP), AX						
  traffic_opposite.go:106	0xe3d9c3		e9c2feffff		JMP 0xe3d88a							
  traffic_opposite.go:113	0xe3d9c8		488b842480000000	MOVQ 0x80(SP), AX						
  traffic_opposite.go:101	0xe3d9d0		e9b5feffff		JMP 0xe3d88a							
  traffic_opposite.go:114	0xe3d9d5		4885f6			TESTQ SI, SI							
  traffic_opposite.go:114	0xe3d9d8		7d0e			JGE 0xe3d9e8							
  traffic_opposite.go:115	0xe3d9da		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_opposite.go:115	0xe3d9df		4881c4c0000000		ADDQ $.file+115(SB), SP						
  traffic_opposite.go:115	0xe3d9e6		5d			POPQ BP								
  traffic_opposite.go:115	0xe3d9e7		c3			RET								
  traffic_opposite.go:117	0xe3d9e8		4839b42400010000	CMPQ 0x100(SP), SI						
  traffic_opposite.go:117	0xe3d9f0		0f9fc0			SETG AL								
  traffic_opposite.go:117	0xe3d9f3		4881c4c0000000		ADDQ $.file+115(SB), SP						
  traffic_opposite.go:117	0xe3d9fa		5d			POPQ BP								
  traffic_opposite.go:117	0xe3d9fb		c3			RET								
  traffic_opposite.go:100	0xe3d9fc		4c89c8			MOVQ R9, AX							
  traffic_opposite.go:100	0xe3d9ff		90			NOPL								
  traffic_opposite.go:100	0xe3da00		e8dbad63ff		CALL runtime.panicIndex(SB)					
  traffic_opposite.go:100	0xe3da05		90			NOPL								
  traffic_opposite.go:112	0xe3da06		4889442470		MOVQ AX, 0x70(SP)						
  traffic_opposite.go:112	0xe3da0b		e8d08a63ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_opposite.go:112	0xe3da10		488b442470		MOVQ 0x70(SP), AX						
  traffic_opposite.go:112	0xe3da15		e926feffff		JMP CAS-Backend/pkg/diapdu.winnerClearedOppositeZone(SB)	
  :-1				0xe3da1a		cc			INT $__subsystem__(SB)						
  :-1				0xe3da1b		cc			INT $__subsystem__(SB)						
  :-1				0xe3da1c		cc			INT $__subsystem__(SB)						
  :-1				0xe3da1d		cc			INT $__subsystem__(SB)						
  :-1				0xe3da1e		cc			INT $__subsystem__(SB)						
  :-1				0xe3da1f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.pickOppositeWinner(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:129	0xe3da20		4c8da42440feffff	LEAQ 0xfffffe40(SP), R12				
  traffic_opposite.go:129	0xe3da28		4d3b6610		CMPQ R12, 0x10(R14)					
  traffic_opposite.go:129	0xe3da2c		0f8644070000		JBE 0xe3e176						
  traffic_opposite.go:129	0xe3da32		55			PUSHQ BP						
  traffic_opposite.go:129	0xe3da33		4889e5			MOVQ SP, BP						
  traffic_opposite.go:129	0xe3da36		4881ec38020000		SUBQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:89	0xe3da3d		4889842418030000	MOVQ AX, 0x318(SP)					
  traffic_opposite.go:89	0xe3da45		48899c2420030000	MOVQ BX, 0x320(SP)					
  traffic_opposite.go:89	0xe3da4d		48898c2428030000	MOVQ CX, 0x328(SP)					
  traffic_opposite.go:89	0xe3da55		4889bc2430030000	MOVQ DI, 0x330(SP)					
  traffic_opposite.go:89	0xe3da5d		4889b42438030000	MOVQ SI, 0x338(SP)					
  traffic_opposite.go:130	0xe3da65		488b942448020000	MOVQ 0x248(SP), DX					
  traffic_opposite.go:130	0xe3da6d		4889942490010000	MOVQ DX, 0x190(SP)					
  traffic_opposite.go:89	0xe3da75		4889fa			MOVQ DI, DX						
  traffic_opposite.go:130	0xe3da78		488dbc2498010000	LEAQ 0x198(SP), DI					
  traffic_opposite.go:89	0xe3da80		4989f0			MOVQ SI, R8						
  traffic_opposite.go:130	0xe3da83		488db42450020000	LEAQ 0x250(SP), SI					
  traffic_opposite.go:130	0xe3da8b		48896c24f0		MOVQ BP, -0x10(SP)					
  traffic_opposite.go:130	0xe3da90		488d6c24f0		LEAQ -0x10(SP), BP					
  traffic_opposite.go:130	0xe3da95		e8b2b363ff		CALL 0x478e4c						
  traffic_opposite.go:130	0xe3da9a		488b6d00		MOVQ 0(BP), BP						
  traffic_opposite.go:89	0xe3da9e		80bc24d801000000	CMPB 0x1d8(SP), $0x0					
  traffic_opposite.go:89	0xe3daa6		7507			JNE 0xe3daaf						
  traffic_opposite.go:89	0xe3daa8		31f6			XORL SI, SI						
  traffic_opposite.go:130	0xe3daaa		e902010000		JMP 0xe3dbb1						
  traffic_opposite.go:92	0xe3daaf		488b8424a0010000	MOVQ 0x1a0(SP), AX					
  traffic_opposite.go:92	0xe3dab7		4889842430020000	MOVQ AX, 0x230(SP)					
  traffic_opposite.go:92	0xe3dabf		488b9c24a8010000	MOVQ 0x1a8(SP), BX					
  traffic_opposite.go:92	0xe3dac7		48899c2480010000	MOVQ BX, 0x180(SP)					
  traffic_opposite.go:92	0xe3dacf		488b8c24b0010000	MOVQ 0x1b0(SP), CX					
  traffic_opposite.go:92	0xe3dad7		48898c2410020000	MOVQ CX, 0x210(SP)					
  traffic_opposite.go:92	0xe3dadf		488bbc24b8010000	MOVQ 0x1b8(SP), DI					
  traffic_opposite.go:92	0xe3dae7		4889bc2460010000	MOVQ DI, 0x160(SP)					
  traffic.go:35			0xe3daef		e88c4f5cff		CALL runtime.cmpstring(SB)				
  traffic.go:35			0xe3daf4		4885c0			TESTQ AX, AX						
  traffic.go:35			0xe3daf7		7d3b			JGE 0xe3db34						
  traffic.go:36			0xe3daf9		488d842420010000	LEAQ 0x120(SP), AX					
  traffic.go:36			0xe3db01		488b9c2430020000	MOVQ 0x230(SP), BX					
  traffic.go:36			0xe3db09		488b8c2480010000	MOVQ 0x180(SP), CX					
  traffic.go:36			0xe3db11		488d3df2a93200		LEAQ go:string.*+2(SB), DI				
  traffic.go:36			0xe3db18		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:36			0xe3db1d		4c8b842410020000	MOVQ 0x210(SP), R8					
  traffic.go:36			0xe3db25		4c8b8c2460010000	MOVQ 0x160(SP), R9					
  traffic.go:36			0xe3db2d		e86e7961ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:92	0xe3db32		eb39			JMP 0xe3db6d						
  traffic.go:38			0xe3db34		488d842400010000	LEAQ 0x100(SP), AX					
  traffic.go:38			0xe3db3c		488b9c2410020000	MOVQ 0x210(SP), BX					
  traffic.go:38			0xe3db44		488b8c2460010000	MOVQ 0x160(SP), CX					
  traffic.go:38			0xe3db4c		488d3db7a93200		LEAQ go:string.*+2(SB), DI				
  traffic.go:38			0xe3db53		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:38			0xe3db58		4c8b842430020000	MOVQ 0x230(SP), R8					
  traffic.go:38			0xe3db60		4c8b8c2480010000	MOVQ 0x180(SP), R9					
  traffic.go:38			0xe3db68		e8337961ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:92	0xe3db6d		4889c1			MOVQ AX, CX						
  traffic_opposite.go:92	0xe3db70		4889df			MOVQ BX, DI						
  traffic_opposite.go:92	0xe3db73		488d0566fa2300		LEAQ runtime.types+624096(SB), AX			
  traffic_opposite.go:92	0xe3db7a		488b9c2418030000	MOVQ 0x318(SP), BX					
  traffic_opposite.go:92	0xe3db82		e8b90063ff		CALL runtime.mapaccess2_faststr(SB)			
  traffic_opposite.go:92	0xe3db87		488b842418030000	MOVQ 0x318(SP), AX					
  traffic_opposite.go:170	0xe3db8f		488b8c2428030000	MOVQ 0x328(SP), CX					
  traffic_opposite.go:149	0xe3db97		488b942430030000	MOVQ 0x330(SP), DX					
  traffic_opposite.go:149	0xe3db9f		4c8b842438030000	MOVQ 0x338(SP), R8					
  traffic_opposite.go:130	0xe3dba7		89de			MOVL BX, SI						
  traffic_opposite.go:170	0xe3dba9		488b9c2420030000	MOVQ 0x320(SP), BX					
  traffic_opposite.go:131	0xe3dbb1		4c8b8c24b0020000	MOVQ 0x2b0(SP), R9					
  traffic_opposite.go:131	0xe3dbb9		4c898c2490010000	MOVQ R9, 0x190(SP)					
  traffic_opposite.go:131	0xe3dbc1		488dbc2498010000	LEAQ 0x198(SP), DI					
  traffic_opposite.go:130	0xe3dbc9		4189f1			MOVL SI, R9						
  traffic_opposite.go:131	0xe3dbcc		488db424b8020000	LEAQ 0x2b8(SP), SI					
  traffic_opposite.go:131	0xe3dbd4		660f1f840000000000	NOPW 0(AX)(AX*1)					
  traffic_opposite.go:131	0xe3dbdd		0f1f00			NOPL 0(AX)						
  traffic_opposite.go:131	0xe3dbe0		48896c24f0		MOVQ BP, -0x10(SP)					
  traffic_opposite.go:131	0xe3dbe5		488d6c24f0		LEAQ -0x10(SP), BP					
  traffic_opposite.go:131	0xe3dbea		e85db263ff		CALL 0x478e4c						
  traffic_opposite.go:131	0xe3dbef		488b6d00		MOVQ 0(BP), BP						
  traffic_opposite.go:89	0xe3dbf3		80bc24d801000000	CMPB 0x1d8(SP), $0x0					
  traffic_opposite.go:89	0xe3dbfb		7508			JNE 0xe3dc05						
  traffic_opposite.go:89	0xe3dbfd		31c0			XORL AX, AX						
  traffic_opposite.go:89	0xe3dbff		90			NOPL							
  traffic_opposite.go:131	0xe3dc00		e908010000		JMP 0xe3dd0d						
  traffic_opposite.go:130	0xe3dc05		44884c243f		MOVB R9, 0x3f(SP)					
  traffic_opposite.go:92	0xe3dc0a		488b8424a0010000	MOVQ 0x1a0(SP), AX					
  traffic_opposite.go:92	0xe3dc12		4889842428020000	MOVQ AX, 0x228(SP)					
  traffic_opposite.go:92	0xe3dc1a		488b9c24a8010000	MOVQ 0x1a8(SP), BX					
  traffic_opposite.go:92	0xe3dc22		48899c2478010000	MOVQ BX, 0x178(SP)					
  traffic_opposite.go:92	0xe3dc2a		488b8c24b0010000	MOVQ 0x1b0(SP), CX					
  traffic_opposite.go:92	0xe3dc32		48898c2408020000	MOVQ CX, 0x208(SP)					
  traffic_opposite.go:92	0xe3dc3a		488bbc24b8010000	MOVQ 0x1b8(SP), DI					
  traffic_opposite.go:92	0xe3dc42		4889bc2458010000	MOVQ DI, 0x158(SP)					
  traffic.go:35			0xe3dc4a		e8314e5cff		CALL runtime.cmpstring(SB)				
  traffic.go:35			0xe3dc4f		4885c0			TESTQ AX, AX						
  traffic.go:35			0xe3dc52		7d3b			JGE 0xe3dc8f						
  traffic.go:36			0xe3dc54		488d8424e0000000	LEAQ 0xe0(SP), AX					
  traffic.go:36			0xe3dc5c		488b9c2428020000	MOVQ 0x228(SP), BX					
  traffic.go:36			0xe3dc64		488b8c2478010000	MOVQ 0x178(SP), CX					
  traffic.go:36			0xe3dc6c		488d3d97a83200		LEAQ go:string.*+2(SB), DI				
  traffic.go:36			0xe3dc73		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:36			0xe3dc78		4c8b842408020000	MOVQ 0x208(SP), R8					
  traffic.go:36			0xe3dc80		4c8b8c2458010000	MOVQ 0x158(SP), R9					
  traffic.go:36			0xe3dc88		e8137861ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:92	0xe3dc8d		eb39			JMP 0xe3dcc8						
  traffic.go:38			0xe3dc8f		488d8424c0000000	LEAQ 0xc0(SP), AX					
  traffic.go:38			0xe3dc97		488b9c2408020000	MOVQ 0x208(SP), BX					
  traffic.go:38			0xe3dc9f		488b8c2458010000	MOVQ 0x158(SP), CX					
  traffic.go:38			0xe3dca7		488d3d5ca83200		LEAQ go:string.*+2(SB), DI				
  traffic.go:38			0xe3dcae		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:38			0xe3dcb3		4c8b842428020000	MOVQ 0x228(SP), R8					
  traffic.go:38			0xe3dcbb		4c8b8c2478010000	MOVQ 0x178(SP), R9					
  traffic.go:38			0xe3dcc3		e8d87761ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:92	0xe3dcc8		4889c1			MOVQ AX, CX						
  traffic_opposite.go:92	0xe3dccb		4889df			MOVQ BX, DI						
  traffic_opposite.go:92	0xe3dcce		488d050bf92300		LEAQ runtime.types+624096(SB), AX			
  traffic_opposite.go:92	0xe3dcd5		488b9c2418030000	MOVQ 0x318(SP), BX					
  traffic_opposite.go:92	0xe3dcdd		0f1f00			NOPL 0(AX)						
  traffic_opposite.go:92	0xe3dce0		e85bff62ff		CALL runtime.mapaccess2_faststr(SB)			
  traffic_opposite.go:170	0xe3dce5		488b8c2428030000	MOVQ 0x328(SP), CX					
  traffic_opposite.go:149	0xe3dced		488b942430030000	MOVQ 0x330(SP), DX					
  traffic_opposite.go:149	0xe3dcf5		4c8b842438030000	MOVQ 0x338(SP), R8					
  traffic_opposite.go:130	0xe3dcfd		440fb64c243f		MOVZX 0x3f(SP), R9					
  traffic_opposite.go:131	0xe3dd03		89d8			MOVL BX, AX						
  traffic_opposite.go:170	0xe3dd05		488b9c2420030000	MOVQ 0x320(SP), BX					
  traffic_opposite.go:130	0xe3dd0d		4584c9			TESTL R9, R9						
  traffic_opposite.go:133	0xe3dd10		7422			JE 0xe3dd34						
  traffic_opposite.go:131	0xe3dd12		84c0			TESTL AL, AL						
  traffic_opposite.go:133	0xe3dd14		7405			JE 0xe3dd1b						
  traffic_opposite.go:130	0xe3dd16		4584c9			TESTL R9, R9						
  traffic_opposite.go:133	0xe3dd19		eb20			JMP 0xe3dd3b						
  traffic_opposite.go:134	0xe3dd1b		488b842448020000	MOVQ 0x248(SP), AX					
  traffic_opposite.go:134	0xe3dd23		488b9c2450020000	MOVQ 0x250(SP), BX					
  traffic_opposite.go:134	0xe3dd2b		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:134	0xe3dd32		5d			POPQ BP							
  traffic_opposite.go:134	0xe3dd33		c3			RET							
  traffic_opposite.go:131	0xe3dd34		84c0			TESTL AL, AL						
  traffic_opposite.go:136	0xe3dd36		741e			JE 0xe3dd56						
  traffic_opposite.go:130	0xe3dd38		4584c9			TESTL R9, R9						
  traffic_opposite.go:136	0xe3dd3b		7523			JNE 0xe3dd60						
  traffic_opposite.go:137	0xe3dd3d		488b8424b0020000	MOVQ 0x2b0(SP), AX					
  traffic_opposite.go:137	0xe3dd45		488b9c24b8020000	MOVQ 0x2b8(SP), BX					
  traffic_opposite.go:137	0xe3dd4d		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:137	0xe3dd54		5d			POPQ BP							
  traffic_opposite.go:137	0xe3dd55		c3			RET							
  traffic_opposite.go:130	0xe3dd56		4584c9			TESTL R9, R9						
  traffic_opposite.go:139	0xe3dd59		0f84d1030000		JE 0xe3e130						
  traffic_opposite.go:139	0xe3dd5f		90			NOPL							
  traffic_opposite.go:131	0xe3dd60		84c0			TESTL AL, AL						
  traffic_opposite.go:139	0xe3dd62		0f84c8030000		JE 0xe3e130						
  traffic_opposite.go:141	0xe3dd68		488b9c2460020000	MOVQ 0x260(SP), BX					
  traffic_opposite.go:141	0xe3dd70		488bb424c0020000	MOVQ 0x2c0(SP), SI					
  traffic_opposite.go:141	0xe3dd78		4c8b8c24d0020000	MOVQ 0x2d0(SP), R9					
  traffic_opposite.go:181	0xe3dd80		4885db			TESTQ BX, BX						
  traffic_opposite.go:181	0xe3dd83		7427			JE 0xe3ddac						
  traffic_opposite.go:141	0xe3dd85		488bbc2470020000	MOVQ 0x270(SP), DI					
  traffic_opposite.go:181	0xe3dd8d		4885ff			TESTQ DI, DI						
  traffic_opposite.go:181	0xe3dd90		741a			JE 0xe3ddac						
  traffic_opposite.go:141	0xe3dd92		4c8b9424c8020000	MOVQ 0x2c8(SP), R10					
  traffic_opposite.go:181	0xe3dd9a		4d85d2			TESTQ R10, R10						
  traffic_opposite.go:181	0xe3dd9d		740d			JE 0xe3ddac						
  traffic_opposite.go:141	0xe3dd9f		4c8b9c24d8020000	MOVQ 0x2d8(SP), R11					
  traffic_opposite.go:181	0xe3dda7		4d85db			TESTQ R11, R11						
  traffic_opposite.go:181	0xe3ddaa		7507			JNE 0xe3ddb3						
  traffic_opposite.go:181	0xe3ddac		31c0			XORL AX, AX						
  traffic_opposite.go:141	0xe3ddae		e921020000		JMP 0xe3dfd4						
  traffic_opposite.go:141	0xe3ddb3		4c89942450010000	MOVQ R10, 0x150(SP)					
  traffic_opposite.go:141	0xe3ddbb		4889b42400020000	MOVQ SI, 0x200(SP)					
  traffic_opposite.go:141	0xe3ddc3		4889bc2468010000	MOVQ DI, 0x168(SP)					
  traffic_opposite.go:141	0xe3ddcb		48899c2470010000	MOVQ BX, 0x170(SP)					
  traffic_opposite.go:141	0xe3ddd3		4c899c2448010000	MOVQ R11, 0x148(SP)					
  traffic_opposite.go:141	0xe3dddb		4c898c24f8010000	MOVQ R9, 0x1f8(SP)					
  traffic_opposite.go:141	0xe3dde3		488b842458020000	MOVQ 0x258(SP), AX					
  traffic_opposite.go:141	0xe3ddeb		4889842420020000	MOVQ AX, 0x220(SP)					
  traffic_opposite.go:141	0xe3ddf3		488b8c2468020000	MOVQ 0x268(SP), CX					
  traffic_opposite.go:141	0xe3ddfb		48898c2418020000	MOVQ CX, 0x218(SP)					
  traffic.go:35			0xe3de03		e8784c5cff		CALL runtime.cmpstring(SB)				
  traffic.go:35			0xe3de08		4885c0			TESTQ AX, AX						
  traffic.go:35			0xe3de0b		7d3b			JGE 0xe3de48						
  traffic.go:36			0xe3de0d		488d8424a0000000	LEAQ 0xa0(SP), AX					
  traffic.go:36			0xe3de15		488b9c2420020000	MOVQ 0x220(SP), BX					
  traffic.go:36			0xe3de1d		488b8c2470010000	MOVQ 0x170(SP), CX					
  traffic.go:36			0xe3de25		488d3ddea63200		LEAQ go:string.*+2(SB), DI				
  traffic.go:36			0xe3de2c		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:36			0xe3de31		4c8b842418020000	MOVQ 0x218(SP), R8					
  traffic.go:36			0xe3de39		4c8b8c2468010000	MOVQ 0x168(SP), R9					
  traffic.go:36			0xe3de41		e85a7661ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:184	0xe3de46		eb3d			JMP 0xe3de85						
  traffic.go:38			0xe3de48		488d842480000000	LEAQ 0x80(SP), AX					
  traffic.go:38			0xe3de50		488b9c2418020000	MOVQ 0x218(SP), BX					
  traffic.go:38			0xe3de58		488b8c2468010000	MOVQ 0x168(SP), CX					
  traffic.go:38			0xe3de60		488d3da3a63200		LEAQ go:string.*+2(SB), DI				
  traffic.go:38			0xe3de67		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:38			0xe3de6c		4c8b842420020000	MOVQ 0x220(SP), R8					
  traffic.go:38			0xe3de74		4c8b8c2470010000	MOVQ 0x170(SP), R9					
  traffic.go:38			0xe3de7c		0f1f4000		NOPL 0(AX)						
  traffic.go:38			0xe3de80		e81b7661ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:184	0xe3de85		4889842488010000	MOVQ AX, 0x188(SP)					
  traffic_opposite.go:184	0xe3de8d		48899c2440010000	MOVQ BX, 0x140(SP)					
  traffic.go:35			0xe3de95		488b8c24f8010000	MOVQ 0x1f8(SP), CX					
  traffic.go:35			0xe3de9d		488bbc2448010000	MOVQ 0x148(SP), DI					
  traffic.go:35			0xe3dea5		488b842400020000	MOVQ 0x200(SP), AX					
  traffic.go:35			0xe3dead		488b9c2450010000	MOVQ 0x150(SP), BX					
  traffic.go:35			0xe3deb5		e8c64b5cff		CALL runtime.cmpstring(SB)				
  traffic.go:35			0xe3deba		4885c0			TESTQ AX, AX						
  traffic.go:35			0xe3debd		7d38			JGE 0xe3def7						
  traffic.go:36			0xe3debf		488d442460		LEAQ 0x60(SP), AX					
  traffic.go:36			0xe3dec4		488b9c2400020000	MOVQ 0x200(SP), BX					
  traffic.go:36			0xe3decc		488b8c2450010000	MOVQ 0x150(SP), CX					
  traffic.go:36			0xe3ded4		488d3d2fa63200		LEAQ go:string.*+2(SB), DI				
  traffic.go:36			0xe3dedb		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:36			0xe3dee0		4c8b8424f8010000	MOVQ 0x1f8(SP), R8					
  traffic.go:36			0xe3dee8		4c8b8c2448010000	MOVQ 0x148(SP), R9					
  traffic.go:36			0xe3def0		e8ab7561ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:184	0xe3def5		eb36			JMP 0xe3df2d						
  traffic.go:38			0xe3def7		488d442440		LEAQ 0x40(SP), AX					
  traffic.go:38			0xe3defc		488b9c24f8010000	MOVQ 0x1f8(SP), BX					
  traffic.go:38			0xe3df04		488b8c2448010000	MOVQ 0x148(SP), CX					
  traffic.go:38			0xe3df0c		488d3df7a53200		LEAQ go:string.*+2(SB), DI				
  traffic.go:38			0xe3df13		be01000000		MOVL $__minor_os_version__(SB), SI			
  traffic.go:38			0xe3df18		4c8b842400020000	MOVQ 0x200(SP), R8					
  traffic.go:38			0xe3df20		4c8b8c2450010000	MOVQ 0x150(SP), R9					
  traffic.go:38			0xe3df28		e8737561ff		CALL runtime.concatstring3(SB)				
  traffic_opposite.go:184	0xe3df2d		488b8c2440010000	MOVQ 0x140(SP), CX					
  traffic_opposite.go:184	0xe3df35		4839d9			CMPQ CX, BX						
  traffic_opposite.go:184	0xe3df38		7404			JE 0xe3df3e						
  traffic_opposite.go:184	0xe3df3a		31c0			XORL AX, AX						
  traffic_opposite.go:184	0xe3df3c		eb10			JMP 0xe3df4e						
  traffic_opposite.go:184	0xe3df3e		4889c3			MOVQ AX, BX						
  traffic_opposite.go:184	0xe3df41		488b842488010000	MOVQ 0x188(SP), AX					
  traffic_opposite.go:184	0xe3df49		e8124f5cff		CALL runtime.memequal(SB)				
  traffic_opposite.go:184	0xe3df4e		84c0			TESTL AL, AL						
  traffic_opposite.go:184	0xe3df50		7435			JE 0xe3df87						
  traffic_opposite.go:184	0xe3df52		488b942448010000	MOVQ 0x148(SP), DX					
  traffic_opposite.go:184	0xe3df5a		488b8c2470010000	MOVQ 0x170(SP), CX					
  traffic_opposite.go:184	0xe3df62		4839ca			CMPQ DX, CX						
  traffic_opposite.go:184	0xe3df65		7404			JE 0xe3df6b						
  traffic_opposite.go:184	0xe3df67		31c0			XORL AX, AX						
  traffic_opposite.go:184	0xe3df69		eb1e			JMP 0xe3df89						
  traffic_opposite.go:184	0xe3df6b		488b842420020000	MOVQ 0x220(SP), AX					
  traffic_opposite.go:184	0xe3df73		488b9c24f8010000	MOVQ 0x1f8(SP), BX					
  traffic_opposite.go:184	0xe3df7b		0f1f440000		NOPL 0(AX)(AX*1)					
  traffic_opposite.go:184	0xe3df80		e8db4e5cff		CALL runtime.memequal(SB)				
  traffic_opposite.go:184	0xe3df85		eb02			JMP 0xe3df89						
  traffic_opposite.go:184	0xe3df87		31c0			XORL AX, AX						
  traffic_opposite.go:184	0xe3df89		84c0			TESTL AL, AL						
  traffic_opposite.go:184	0xe3df8b		7435			JE 0xe3dfc2						
  traffic_opposite.go:184	0xe3df8d		488b8c2468010000	MOVQ 0x168(SP), CX					
  traffic_opposite.go:184	0xe3df95		488b942450010000	MOVQ 0x150(SP), DX					
  traffic_opposite.go:184	0xe3df9d		0f1f00			NOPL 0(AX)						
  traffic_opposite.go:184	0xe3dfa0		4839d1			CMPQ CX, DX						
  traffic_opposite.go:184	0xe3dfa3		7404			JE 0xe3dfa9						
  traffic_opposite.go:184	0xe3dfa5		31c0			XORL AX, AX						
  traffic_opposite.go:184	0xe3dfa7		eb1b			JMP 0xe3dfc4						
  traffic_opposite.go:184	0xe3dfa9		488b842418020000	MOVQ 0x218(SP), AX					
  traffic_opposite.go:184	0xe3dfb1		488b9c2400020000	MOVQ 0x200(SP), BX					
  traffic_opposite.go:184	0xe3dfb9		e8a24e5cff		CALL runtime.memequal(SB)				
  traffic_opposite.go:184	0xe3dfbe		6690			NOPW							
  traffic_opposite.go:184	0xe3dfc0		eb02			JMP 0xe3dfc4						
  traffic_opposite.go:184	0xe3dfc2		31c0			XORL AX, AX						
  traffic_opposite.go:149	0xe3dfc4		488b942430030000	MOVQ 0x330(SP), DX					
  traffic_opposite.go:149	0xe3dfcc		4c8b842438030000	MOVQ 0x338(SP), R8					
  traffic_opposite.go:141	0xe3dfd4		84c0			TESTL AL, AL						
  traffic_opposite.go:141	0xe3dfd6		7469			JE 0xe3e041						
  traffic_opposite.go:142	0xe3dfd8		f20f10842480020000	MOVSD_XMM 0x280(SP), X0					
  traffic_opposite.go:142	0xe3dfe1		f20f108c24e8020000	MOVSD_XMM 0x2e8(SP), X1					
  traffic_opposite.go:142	0xe3dfea		f20f101556980202	MOVSD_XMM $f64.3eb0c6f7a0b5ed8d(SB), X2			
  traffic_opposite.go:142	0xe3dff2		f20f58d1		ADDSD X1, X2						
  traffic_opposite.go:142	0xe3dff6		660f2ec2		UCOMISD X2, X0						
  traffic_opposite.go:142	0xe3dffa		772b			JA 0xe3e027						
  traffic_opposite.go:145	0xe3dffc		f20f101544980202	MOVSD_XMM $f64.3eb0c6f7a0b5ed8d(SB), X2			
  traffic_opposite.go:145	0xe3e004		f20f58d0		ADDSD X0, X2						
  traffic_opposite.go:145	0xe3e008		660f2eca		UCOMISD X2, X1						
  traffic_opposite.go:145	0xe3e00c		7633			JBE 0xe3e041						
  traffic_opposite.go:146	0xe3e00e		488b8424b0020000	MOVQ 0x2b0(SP), AX					
  traffic_opposite.go:146	0xe3e016		488b9c24b8020000	MOVQ 0x2b8(SP), BX					
  traffic_opposite.go:146	0xe3e01e		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:146	0xe3e025		5d			POPQ BP							
  traffic_opposite.go:146	0xe3e026		c3			RET							
  traffic_opposite.go:143	0xe3e027		488b842448020000	MOVQ 0x248(SP), AX					
  traffic_opposite.go:143	0xe3e02f		488b9c2450020000	MOVQ 0x250(SP), BX					
  traffic_opposite.go:143	0xe3e037		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:143	0xe3e03e		5d			POPQ BP							
  traffic_opposite.go:143	0xe3e03f		90			NOPL							
  traffic_opposite.go:143	0xe3e040		c3			RET							
  traffic_opposite.go:149	0xe3e041		4885d2			TESTQ DX, DX						
  traffic_opposite.go:149	0xe3e044		7e3e			JLE 0xe3e084						
  traffic_opposite.go:149	0xe3e046		4d85c0			TESTQ R8, R8						
  traffic_opposite.go:149	0xe3e049		7e39			JLE 0xe3e084						
  traffic_opposite.go:150	0xe3e04b		4939d0			CMPQ R8, DX						
  traffic_opposite.go:150	0xe3e04e		7f1b			JG 0xe3e06b						
  traffic_opposite.go:153	0xe3e050		7d32			JGE 0xe3e084						
  traffic_opposite.go:154	0xe3e052		488b8424b0020000	MOVQ 0x2b0(SP), AX					
  traffic_opposite.go:154	0xe3e05a		488b9c24b8020000	MOVQ 0x2b8(SP), BX					
  traffic_opposite.go:154	0xe3e062		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:154	0xe3e069		5d			POPQ BP							
  traffic_opposite.go:154	0xe3e06a		c3			RET							
  traffic_opposite.go:151	0xe3e06b		488b842448020000	MOVQ 0x248(SP), AX					
  traffic_opposite.go:151	0xe3e073		488b9c2450020000	MOVQ 0x250(SP), BX					
  traffic_opposite.go:151	0xe3e07b		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:151	0xe3e082		5d			POPQ BP							
  traffic_opposite.go:151	0xe3e083		c3			RET							
  traffic_opposite.go:157	0xe3e084		f20f10842480020000	MOVSD_XMM 0x280(SP), X0					
  traffic_opposite.go:157	0xe3e08d		f20f108c24e8020000	MOVSD_XMM 0x2e8(SP), X1					
  traffic_opposite.go:157	0xe3e096		660f2ec1		UCOMISD X1, X0						
  traffic_opposite.go:157	0xe3e09a		777b			JA 0xe3e117						
  traffic_opposite.go:160	0xe3e09c		660f2ec8		UCOMISD X0, X1						
  traffic_opposite.go:160	0xe3e0a0		775c			JA 0xe3e0fe						
  traffic_opposite.go:163	0xe3e0a2		488b842448020000	MOVQ 0x248(SP), AX					
  traffic_opposite.go:163	0xe3e0aa		488b9c2450020000	MOVQ 0x250(SP), BX					
  traffic_opposite.go:163	0xe3e0b2		488b8c24b0020000	MOVQ 0x2b0(SP), CX					
  traffic_opposite.go:163	0xe3e0ba		488bbc24b8020000	MOVQ 0x2b8(SP), DI					
  traffic_opposite.go:163	0xe3e0c2		e8b9495cff		CALL runtime.cmpstring(SB)				
  traffic_opposite.go:163	0xe3e0c7		4885c0			TESTQ AX, AX						
  traffic_opposite.go:163	0xe3e0ca		7d19			JGE 0xe3e0e5						
  traffic_opposite.go:164	0xe3e0cc		488b842448020000	MOVQ 0x248(SP), AX					
  traffic_opposite.go:164	0xe3e0d4		488b9c2450020000	MOVQ 0x250(SP), BX					
  traffic_opposite.go:164	0xe3e0dc		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:164	0xe3e0e3		5d			POPQ BP							
  traffic_opposite.go:164	0xe3e0e4		c3			RET							
  traffic_opposite.go:166	0xe3e0e5		488b8424b0020000	MOVQ 0x2b0(SP), AX					
  traffic_opposite.go:166	0xe3e0ed		488b9c24b8020000	MOVQ 0x2b8(SP), BX					
  traffic_opposite.go:166	0xe3e0f5		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:166	0xe3e0fc		5d			POPQ BP							
  traffic_opposite.go:166	0xe3e0fd		c3			RET							
  traffic_opposite.go:161	0xe3e0fe		488b8424b0020000	MOVQ 0x2b0(SP), AX					
  traffic_opposite.go:161	0xe3e106		488b9c24b8020000	MOVQ 0x2b8(SP), BX					
  traffic_opposite.go:161	0xe3e10e		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:161	0xe3e115		5d			POPQ BP							
  traffic_opposite.go:161	0xe3e116		c3			RET							
  traffic_opposite.go:158	0xe3e117		488b842448020000	MOVQ 0x248(SP), AX					
  traffic_opposite.go:158	0xe3e11f		488b9c2450020000	MOVQ 0x250(SP), BX					
  traffic_opposite.go:158	0xe3e127		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:158	0xe3e12e		5d			POPQ BP							
  traffic_opposite.go:158	0xe3e12f		c3			RET							
  traffic_opposite.go:170	0xe3e130		4839d9			CMPQ CX, BX						
  traffic_opposite.go:170	0xe3e133		7c28			JL 0xe3e15d						
  traffic_opposite.go:173	0xe3e135		7e19			JLE 0xe3e150						
  traffic_opposite.go:174	0xe3e137		488b8424b0020000	MOVQ 0x2b0(SP), AX					
  traffic_opposite.go:174	0xe3e13f		488b9c24b8020000	MOVQ 0x2b8(SP), BX					
  traffic_opposite.go:174	0xe3e147		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:174	0xe3e14e		5d			POPQ BP							
  traffic_opposite.go:174	0xe3e14f		c3			RET							
  traffic_opposite.go:177	0xe3e150		31c0			XORL AX, AX						
  traffic_opposite.go:177	0xe3e152		31db			XORL BX, BX						
  traffic_opposite.go:177	0xe3e154		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:177	0xe3e15b		5d			POPQ BP							
  traffic_opposite.go:177	0xe3e15c		c3			RET							
  traffic_opposite.go:171	0xe3e15d		488b842448020000	MOVQ 0x248(SP), AX					
  traffic_opposite.go:171	0xe3e165		488b9c2450020000	MOVQ 0x250(SP), BX					
  traffic_opposite.go:171	0xe3e16d		4881c438020000		ADDQ $__file_alignment__+56(SB), SP			
  traffic_opposite.go:171	0xe3e174		5d			POPQ BP							
  traffic_opposite.go:171	0xe3e175		c3			RET							
  traffic_opposite.go:129	0xe3e176		48898424d8000000	MOVQ AX, 0xd8(SP)					
  traffic_opposite.go:129	0xe3e17e		48899c24e0000000	MOVQ BX, 0xe0(SP)					
  traffic_opposite.go:129	0xe3e186		48898c24e8000000	MOVQ CX, 0xe8(SP)					
  traffic_opposite.go:129	0xe3e18e		4889bc24f0000000	MOVQ DI, 0xf0(SP)					
  traffic_opposite.go:129	0xe3e196		4889b424f8000000	MOVQ SI, 0xf8(SP)					
  traffic_opposite.go:129	0xe3e19e		6690			NOPW							
  traffic_opposite.go:129	0xe3e1a0		e83b8363ff		CALL runtime.morestack_noctxt.abi0(SB)			
  traffic_opposite.go:129	0xe3e1a5		488b8424d8000000	MOVQ 0xd8(SP), AX					
  traffic_opposite.go:129	0xe3e1ad		488b9c24e0000000	MOVQ 0xe0(SP), BX					
  traffic_opposite.go:129	0xe3e1b5		488b8c24e8000000	MOVQ 0xe8(SP), CX					
  traffic_opposite.go:129	0xe3e1bd		488bbc24f0000000	MOVQ 0xf0(SP), DI					
  traffic_opposite.go:129	0xe3e1c5		488bb424f8000000	MOVQ 0xf8(SP), SI					
  traffic_opposite.go:129	0xe3e1cd		e94ef8ffff		JMP CAS-Backend/pkg/diapdu.pickOppositeWinner(SB)	
  :-1				0xe3e1d2		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1d3		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1d4		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1d5		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1d6		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1d7		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1d8		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1d9		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1da		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1db		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1dc		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1dd		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1de		cc			INT $__subsystem__(SB)					
  :-1				0xe3e1df		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.vehicleExitedCurrentConflictWave(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:193	0xe3e1e0		4c8da42480feffff	LEAQ 0xfffffe80(SP), R12					
  traffic_opposite.go:193	0xe3e1e8		4d3b6610		CMPQ R12, 0x10(R14)						
  traffic_opposite.go:193	0xe3e1ec		0f86c1040000		JBE 0xe3e6b3							
  traffic_opposite.go:193	0xe3e1f2		55			PUSHQ BP							
  traffic_opposite.go:193	0xe3e1f3		4889e5			MOVQ SP, BP							
  traffic_opposite.go:193	0xe3e1f6		4881ecf8010000		SUBQ $.file+427(SB), SP						
  traffic_opposite.go:194	0xe3e1fd		80bc245002000000	CMPB 0x250(SP), $0x0						
  traffic_opposite.go:194	0xe3e205		0f8472010000		JE 0xe3e37d							
  traffic_opposite.go:194	0xe3e20b		4889842470020000	MOVQ AX, 0x270(SP)						
  traffic_opposite.go:194	0xe3e213		488b942408020000	MOVQ 0x208(SP), DX						
  traffic_opposite.go:194	0xe3e21b		4889942458010000	MOVQ DX, 0x158(SP)						
  traffic_opposite.go:194	0xe3e223		488dbc2460010000	LEAQ 0x160(SP), DI						
  traffic_opposite.go:194	0xe3e22b		488db42410020000	LEAQ 0x210(SP), SI						
  traffic_opposite.go:194	0xe3e233		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:194	0xe3e23c		0f1f4000		NOPL 0(AX)							
  traffic_opposite.go:194	0xe3e240		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:194	0xe3e245		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:194	0xe3e24a		e8fdab63ff		CALL 0x478e4c							
  traffic_opposite.go:194	0xe3e24f		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:89	0xe3e253		80bc24a001000000	CMPB 0x1a0(SP), $0x0						
  traffic_opposite.go:89	0xe3e25b		7508			JNE 0xe3e265							
  traffic_opposite.go:89	0xe3e25d		31db			XORL BX, BX							
  traffic_opposite.go:89	0xe3e25f		90			NOPL								
  traffic_opposite.go:194	0xe3e260		e9e2000000		JMP 0xe3e347							
  traffic_opposite.go:92	0xe3e265		488b842468010000	MOVQ 0x168(SP), AX						
  traffic_opposite.go:92	0xe3e26d		48898424f0010000	MOVQ AX, 0x1f0(SP)						
  traffic_opposite.go:92	0xe3e275		488b9c2470010000	MOVQ 0x170(SP), BX						
  traffic_opposite.go:92	0xe3e27d		48899c2440010000	MOVQ BX, 0x140(SP)						
  traffic_opposite.go:92	0xe3e285		488b8c2478010000	MOVQ 0x178(SP), CX						
  traffic_opposite.go:92	0xe3e28d		48898c24d8010000	MOVQ CX, 0x1d8(SP)						
  traffic_opposite.go:92	0xe3e295		488bbc2480010000	MOVQ 0x180(SP), DI						
  traffic_opposite.go:92	0xe3e29d		4889bc2428010000	MOVQ DI, 0x128(SP)						
  traffic.go:35			0xe3e2a5		e8d6475cff		CALL runtime.cmpstring(SB)					
  traffic.go:35			0xe3e2aa		4885c0			TESTQ AX, AX							
  traffic.go:35			0xe3e2ad		7d3b			JGE 0xe3e2ea							
  traffic.go:36			0xe3e2af		488d8424d8000000	LEAQ 0xd8(SP), AX						
  traffic.go:36			0xe3e2b7		488b9c24f0010000	MOVQ 0x1f0(SP), BX						
  traffic.go:36			0xe3e2bf		488b8c2440010000	MOVQ 0x140(SP), CX						
  traffic.go:36			0xe3e2c7		488d3d3ca23200		LEAQ go:string.*+2(SB), DI					
  traffic.go:36			0xe3e2ce		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:36			0xe3e2d3		4c8b8424d8010000	MOVQ 0x1d8(SP), R8						
  traffic.go:36			0xe3e2db		4c8b8c2428010000	MOVQ 0x128(SP), R9						
  traffic.go:36			0xe3e2e3		e8b87161ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:92	0xe3e2e8		eb3b			JMP 0xe3e325							
  traffic.go:38			0xe3e2ea		488d8424b8000000	LEAQ 0xb8(SP), AX						
  traffic.go:38			0xe3e2f2		488b9c24d8010000	MOVQ 0x1d8(SP), BX						
  traffic.go:38			0xe3e2fa		488b8c2428010000	MOVQ 0x128(SP), CX						
  traffic.go:38			0xe3e302		488d3d01a23200		LEAQ go:string.*+2(SB), DI					
  traffic.go:38			0xe3e309		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:38			0xe3e30e		4c8b8424f0010000	MOVQ 0x1f0(SP), R8						
  traffic.go:38			0xe3e316		4c8b8c2440010000	MOVQ 0x140(SP), R9						
  traffic.go:38			0xe3e31e		6690			NOPW								
  traffic.go:38			0xe3e320		e87b7161ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:92	0xe3e325		4889c1			MOVQ AX, CX							
  traffic_opposite.go:92	0xe3e328		4889df			MOVQ BX, DI							
  traffic_opposite.go:92	0xe3e32b		488d05aef22300		LEAQ runtime.types+624096(SB), AX				
  traffic_opposite.go:92	0xe3e332		488b9c2470020000	MOVQ 0x270(SP), BX						
  traffic_opposite.go:92	0xe3e33a		e801f962ff		CALL runtime.mapaccess2_faststr(SB)				
  traffic_opposite.go:100	0xe3e33f		488b842470020000	MOVQ 0x270(SP), AX						
  traffic_opposite.go:194	0xe3e347		84db			TESTL BL, BL							
  traffic_opposite.go:194	0xe3e349		7532			JNE 0xe3e37d							
  traffic_opposite.go:197	0xe3e34b		488b942458020000	MOVQ 0x258(SP), DX						
  traffic_opposite.go:197	0xe3e353		48899424c0010000	MOVQ DX, 0x1c0(SP)						
  traffic_opposite.go:197	0xe3e35b		488b8c2460020000	MOVQ 0x260(SP), CX						
  traffic_opposite.go:197	0xe3e363		48898c24f8000000	MOVQ CX, 0xf8(SP)						
  traffic_opposite.go:197	0xe3e36b		31db			XORL BX, BX							
  traffic_opposite.go:197	0xe3e36d		48c7c6ffffffff		MOVQ $-0x1, SI							
  traffic_opposite.go:197	0xe3e374		48c7c7ffffffff		MOVQ $-0x1, DI							
  traffic_opposite.go:99	0xe3e37b		eb2b			JMP 0xe3e3a8							
  traffic_opposite.go:195	0xe3e37d		31c0			XORL AX, AX							
  traffic_opposite.go:195	0xe3e37f		4881c4f8010000		ADDQ $.file+427(SB), SP						
  traffic_opposite.go:195	0xe3e386		5d			POPQ BP								
  traffic_opposite.go:195	0xe3e387		c3			RET								
  traffic_opposite.go:99	0xe3e388		488b8c24f8000000	MOVQ 0xf8(SP), CX						
  traffic_opposite.go:99	0xe3e390		488b9424c0010000	MOVQ 0x1c0(SP), DX						
  traffic_opposite.go:99	0xe3e398		488b9c2448010000	MOVQ 0x148(SP), BX						
  traffic_opposite.go:100	0xe3e3a0		488b842470020000	MOVQ 0x270(SP), AX						
  traffic_opposite.go:99	0xe3e3a8		4c8d41ff		LEAQ -0x1(CX), R8						
  traffic_opposite.go:99	0xe3e3ac		4c39c3			CMPQ BX, R8							
  traffic_opposite.go:99	0xe3e3af		0f8d37010000		JGE 0xe3e4ec							
  traffic_opposite.go:100	0xe3e3b5		4989d8			MOVQ BX, R8							
  traffic_opposite.go:100	0xe3e3b8		48c1e304		SHLQ $__subsystem__+1(SB), BX					
  traffic_opposite.go:100	0xe3e3bc		4d8d4801		LEAQ 0x1(R8), R9						
  traffic_opposite.go:100	0xe3e3c0		4c8b1413		MOVQ 0(BX)(DX*1), R10						
  traffic_opposite.go:100	0xe3e3c4		488b5c1308		MOVQ 0x8(BX)(DX*1), BX						
  traffic_opposite.go:100	0xe3e3c9		4c39c9			CMPQ CX, R9							
  traffic_opposite.go:100	0xe3e3cc		0f86d8020000		JBE 0xe3e6aa							
  traffic_opposite.go:100	0xe3e3d2		48899c2438010000	MOVQ BX, 0x138(SP)						
  traffic_opposite.go:100	0xe3e3da		4c899424e8010000	MOVQ R10, 0x1e8(SP)						
  traffic_opposite.go:99	0xe3e3e2		4c89842450010000	MOVQ R8, 0x150(SP)						
  traffic_opposite.go:100	0xe3e3ea		4c898c2448010000	MOVQ R9, 0x148(SP)						
  traffic_opposite.go:197	0xe3e3f2		4889bc2408010000	MOVQ DI, 0x108(SP)						
  traffic_opposite.go:197	0xe3e3fa		4889b42400010000	MOVQ SI, 0x100(SP)						
  traffic_opposite.go:100	0xe3e402		49c1e104		SHLQ $__subsystem__+1(SB), R9					
  traffic_opposite.go:100	0xe3e406		498b0c11		MOVQ 0(R9)(DX*1), CX						
  traffic_opposite.go:100	0xe3e40a		48898c24d0010000	MOVQ CX, 0x1d0(SP)						
  traffic_opposite.go:100	0xe3e412		498b7c1108		MOVQ 0x8(R9)(DX*1), DI						
  traffic_opposite.go:100	0xe3e417		4889bc2420010000	MOVQ DI, 0x120(SP)						
  traffic.go:35			0xe3e41f		4c89d0			MOVQ R10, AX							
  traffic.go:35			0xe3e422		e859465cff		CALL runtime.cmpstring(SB)					
  traffic.go:35			0xe3e427		4885c0			TESTQ AX, AX							
  traffic.go:35			0xe3e42a		7d3b			JGE 0xe3e467							
  traffic.go:36			0xe3e42c		488d842498000000	LEAQ 0x98(SP), AX						
  traffic.go:36			0xe3e434		488b9c24e8010000	MOVQ 0x1e8(SP), BX						
  traffic.go:36			0xe3e43c		488b8c2438010000	MOVQ 0x138(SP), CX						
  traffic.go:36			0xe3e444		488d3dbfa03200		LEAQ go:string.*+2(SB), DI					
  traffic.go:36			0xe3e44b		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:36			0xe3e450		4c8b8424d0010000	MOVQ 0x1d0(SP), R8						
  traffic.go:36			0xe3e458		4c8b8c2420010000	MOVQ 0x120(SP), R9						
  traffic.go:36			0xe3e460		e83b7061ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:100	0xe3e465		eb36			JMP 0xe3e49d							
  traffic.go:38			0xe3e467		488d442478		LEAQ 0x78(SP), AX						
  traffic.go:38			0xe3e46c		488b9c24d0010000	MOVQ 0x1d0(SP), BX						
  traffic.go:38			0xe3e474		488b8c2420010000	MOVQ 0x120(SP), CX						
  traffic.go:38			0xe3e47c		488d3d87a03200		LEAQ go:string.*+2(SB), DI					
  traffic.go:38			0xe3e483		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:38			0xe3e488		4c8b8424e8010000	MOVQ 0x1e8(SP), R8						
  traffic.go:38			0xe3e490		4c8b8c2438010000	MOVQ 0x138(SP), R9						
  traffic.go:38			0xe3e498		e8037061ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:100	0xe3e49d		4889c1			MOVQ AX, CX							
  traffic_opposite.go:100	0xe3e4a0		4889df			MOVQ BX, DI							
  traffic_opposite.go:100	0xe3e4a3		488d0536f12300		LEAQ runtime.types+624096(SB), AX				
  traffic_opposite.go:100	0xe3e4aa		488b9c2470020000	MOVQ 0x270(SP), BX						
  traffic_opposite.go:100	0xe3e4b2		e889f762ff		CALL runtime.mapaccess2_faststr(SB)				
  traffic_opposite.go:100	0xe3e4b7		84db			TESTL BL, BL							
  traffic_opposite.go:100	0xe3e4b9		741c			JE 0xe3e4d7							
  traffic_opposite.go:103	0xe3e4bb		488bb42400010000	MOVQ 0x100(SP), SI						
  traffic_opposite.go:103	0xe3e4c3		4885f6			TESTQ SI, SI							
  traffic_opposite.go:197	0xe3e4c6		488bbc2450010000	MOVQ 0x150(SP), DI						
  traffic_opposite.go:197	0xe3e4ce		480f4cf7		CMOVL DI, SI							
  traffic_opposite.go:106	0xe3e4d2		e9b1feffff		JMP 0xe3e388							
  traffic_opposite.go:197	0xe3e4d7		488bbc2408010000	MOVQ 0x108(SP), DI						
  traffic_opposite.go:197	0xe3e4df		488bb42400010000	MOVQ 0x100(SP), SI						
  traffic_opposite.go:101	0xe3e4e7		e99cfeffff		JMP 0xe3e388							
  traffic_opposite.go:198	0xe3e4ec		4885f6			TESTQ SI, SI							
  traffic_opposite.go:198	0xe3e4ef		7c23			JL 0xe3e514							
  traffic_opposite.go:201	0xe3e4f1		4839bc2438020000	CMPQ 0x238(SP), DI						
  traffic_opposite.go:201	0xe3e4f9		7f0b			JG 0xe3e506							
  traffic_opposite.go:201	0xe3e4fb		31c9			XORL CX, CX							
  traffic_opposite.go:201	0xe3e4fd		48c7c2ffffffff		MOVQ $-0x1, DX							
  traffic_opposite.go:205	0xe3e504		eb2c			JMP 0xe3e532							
  traffic_opposite.go:202	0xe3e506		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_opposite.go:202	0xe3e50b		4881c4f8010000		ADDQ $.file+427(SB), SP						
  traffic_opposite.go:202	0xe3e512		5d			POPQ BP								
  traffic_opposite.go:202	0xe3e513		c3			RET								
  traffic_opposite.go:199	0xe3e514		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_opposite.go:199	0xe3e519		4881c4f8010000		ADDQ $.file+427(SB), SP						
  traffic_opposite.go:199	0xe3e520		5d			POPQ BP								
  traffic_opposite.go:199	0xe3e521		c3			RET								
  traffic_opposite.go:205	0xe3e522		488b8c2448010000	MOVQ 0x148(SP), CX						
  traffic_opposite.go:206	0xe3e52a		488b842470020000	MOVQ 0x270(SP), AX						
  traffic_opposite.go:205	0xe3e532		488bb42460020000	MOVQ 0x260(SP), SI						
  traffic_opposite.go:205	0xe3e53a		4c8d46ff		LEAQ -0x1(SI), R8						
  traffic_opposite.go:205	0xe3e53e		6690			NOPW								
  traffic_opposite.go:205	0xe3e540		4c39c1			CMPQ CX, R8							
  traffic_opposite.go:205	0xe3e543		0f8d37010000		JGE 0xe3e680							
  traffic_opposite.go:205	0xe3e549		4c8b842458020000	MOVQ 0x258(SP), R8						
  traffic_opposite.go:206	0xe3e551		4989c9			MOVQ CX, R9							
  traffic_opposite.go:206	0xe3e554		48c1e104		SHLQ $__subsystem__+1(SB), CX					
  traffic_opposite.go:206	0xe3e558		4d8d5101		LEAQ 0x1(R9), R10						
  traffic_opposite.go:206	0xe3e55c		4e8b1c01		MOVQ 0(CX)(R8*1), R11						
  traffic_opposite.go:206	0xe3e560		4a8b5c0108		MOVQ 0x8(CX)(R8*1), BX						
  traffic_opposite.go:206	0xe3e565		4c39d6			CMPQ SI, R10							
  traffic_opposite.go:206	0xe3e568		0f8631010000		JBE 0xe3e69f							
  traffic_opposite.go:206	0xe3e56e		4c899c24e0010000	MOVQ R11, 0x1e0(SP)						
  traffic_opposite.go:205	0xe3e576		4c898c2450010000	MOVQ R9, 0x150(SP)						
  traffic_opposite.go:206	0xe3e57e		4c89942448010000	MOVQ R10, 0x148(SP)						
  traffic_opposite.go:213	0xe3e586		4889942410010000	MOVQ DX, 0x110(SP)						
  traffic_opposite.go:206	0xe3e58e		48899c2430010000	MOVQ BX, 0x130(SP)						
  traffic_opposite.go:206	0xe3e596		49c1e204		SHLQ $__subsystem__+1(SB), R10					
  traffic_opposite.go:206	0xe3e59a		4b8b0c02		MOVQ 0(R10)(R8*1), CX						
  traffic_opposite.go:206	0xe3e59e		48898c24c8010000	MOVQ CX, 0x1c8(SP)						
  traffic_opposite.go:206	0xe3e5a6		4b8b7c0208		MOVQ 0x8(R10)(R8*1), DI						
  traffic_opposite.go:206	0xe3e5ab		4889bc2418010000	MOVQ DI, 0x118(SP)						
  traffic.go:35			0xe3e5b3		4c89d8			MOVQ R11, AX							
  traffic.go:35			0xe3e5b6		e8c5445cff		CALL runtime.cmpstring(SB)					
  traffic.go:35			0xe3e5bb		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic.go:35			0xe3e5c0		4885c0			TESTQ AX, AX							
  traffic.go:35			0xe3e5c3		7d38			JGE 0xe3e5fd							
  traffic.go:36			0xe3e5c5		488d442458		LEAQ 0x58(SP), AX						
  traffic.go:36			0xe3e5ca		488b9c24e0010000	MOVQ 0x1e0(SP), BX						
  traffic.go:36			0xe3e5d2		488b8c2430010000	MOVQ 0x130(SP), CX						
  traffic.go:36			0xe3e5da		488d3d299f3200		LEAQ go:string.*+2(SB), DI					
  traffic.go:36			0xe3e5e1		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:36			0xe3e5e6		4c8b8424c8010000	MOVQ 0x1c8(SP), R8						
  traffic.go:36			0xe3e5ee		4c8b8c2418010000	MOVQ 0x118(SP), R9						
  traffic.go:36			0xe3e5f6		e8a56e61ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:206	0xe3e5fb		eb36			JMP 0xe3e633							
  traffic.go:38			0xe3e5fd		488d442438		LEAQ 0x38(SP), AX						
  traffic.go:38			0xe3e602		488b9c24c8010000	MOVQ 0x1c8(SP), BX						
  traffic.go:38			0xe3e60a		488b8c2418010000	MOVQ 0x118(SP), CX						
  traffic.go:38			0xe3e612		488d3df19e3200		LEAQ go:string.*+2(SB), DI					
  traffic.go:38			0xe3e619		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:38			0xe3e61e		4c8b8424e0010000	MOVQ 0x1e0(SP), R8						
  traffic.go:38			0xe3e626		4c8b8c2430010000	MOVQ 0x130(SP), R9						
  traffic.go:38			0xe3e62e		e86d6e61ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:206	0xe3e633		4889c1			MOVQ AX, CX							
  traffic_opposite.go:206	0xe3e636		4889df			MOVQ BX, DI							
  traffic_opposite.go:206	0xe3e639		488d05a0ef2300		LEAQ runtime.types+624096(SB), AX				
  traffic_opposite.go:206	0xe3e640		488b9c2470020000	MOVQ 0x270(SP), BX						
  traffic_opposite.go:206	0xe3e648		e8f3f562ff		CALL runtime.mapaccess2_faststr(SB)				
  traffic_opposite.go:206	0xe3e64d		84db			TESTL BL, BL							
  traffic_opposite.go:206	0xe3e64f		7421			JE 0xe3e672							
  traffic_opposite.go:209	0xe3e651		488bb42450010000	MOVQ 0x150(SP), SI						
  traffic_opposite.go:209	0xe3e659		4839b42438020000	CMPQ 0x238(SP), SI						
  traffic_opposite.go:213	0xe3e661		488b942410010000	MOVQ 0x110(SP), DX						
  traffic_opposite.go:213	0xe3e669		480f4fd6		CMOVG SI, DX							
  traffic_opposite.go:209	0xe3e66d		e9b0feffff		JMP 0xe3e522							
  traffic_opposite.go:213	0xe3e672		488b942410010000	MOVQ 0x110(SP), DX						
  traffic_opposite.go:207	0xe3e67a		e9a3feffff		JMP 0xe3e522							
  traffic_opposite.go:207	0xe3e67f		90			NOPL								
  traffic_opposite.go:213	0xe3e680		4885d2			TESTQ DX, DX							
  traffic_opposite.go:213	0xe3e683		7c0d			JL 0xe3e692							
  traffic_opposite.go:213	0xe3e685		4839942438020000	CMPQ 0x238(SP), DX						
  traffic_opposite.go:213	0xe3e68d		0f9fc1			SETG CL								
  traffic_opposite.go:213	0xe3e690		eb02			JMP 0xe3e694							
  traffic_opposite.go:213	0xe3e692		31c9			XORL CX, CX							
  traffic_opposite.go:213	0xe3e694		89c8			MOVL CX, AX							
  traffic_opposite.go:213	0xe3e696		4881c4f8010000		ADDQ $.file+427(SB), SP						
  traffic_opposite.go:213	0xe3e69d		5d			POPQ BP								
  traffic_opposite.go:213	0xe3e69e		c3			RET								
  traffic_opposite.go:206	0xe3e69f		4c89d0			MOVQ R10, AX							
  traffic_opposite.go:206	0xe3e6a2		4889f1			MOVQ SI, CX							
  traffic_opposite.go:206	0xe3e6a5		e836a163ff		CALL runtime.panicIndex(SB)					
  traffic_opposite.go:100	0xe3e6aa		4c89c8			MOVQ R9, AX							
  traffic_opposite.go:100	0xe3e6ad		e82ea163ff		CALL runtime.panicIndex(SB)					
  traffic_opposite.go:100	0xe3e6b2		90			NOPL								
  traffic_opposite.go:193	0xe3e6b3		4889442470		MOVQ AX, 0x70(SP)						
  traffic_opposite.go:193	0xe3e6b8		e8237e63ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_opposite.go:193	0xe3e6bd		488b442470		MOVQ 0x70(SP), AX						
  traffic_opposite.go:193	0xe3e6c2		e919fbffff		JMP CAS-Backend/pkg/diapdu.vehicleExitedCurrentConflictWave(SB)	
  :-1				0xe3e6c7		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6c8		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6c9		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6ca		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6cb		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6cc		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6cd		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6ce		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6cf		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6d0		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6d1		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6d2		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6d3		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6d4		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6d5		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6d6		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6d7		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6d8		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6d9		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6da		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6db		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6dc		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6dd		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6de		cc			INT $__subsystem__(SB)						
  :-1				0xe3e6df		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.nextConflictWaveEdgeIndex(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:217	0xe3e6e0		4c8d6424d0		LEAQ -0x30(SP), R12						
  traffic_opposite.go:217	0xe3e6e5		4d3b6610		CMPQ R12, 0x10(R14)						
  traffic_opposite.go:217	0xe3e6e9		0f86b7010000		JBE 0xe3e8a6							
  traffic_opposite.go:217	0xe3e6ef		55			PUSHQ BP							
  traffic_opposite.go:217	0xe3e6f0		4889e5			MOVQ SP, BP							
  traffic_opposite.go:217	0xe3e6f3		4881eca8000000		SUBQ $.file+91(SB), SP						
  traffic_opposite.go:218	0xe3e6fa		80bc240001000000	CMPB 0x100(SP), $0x0						
  traffic_opposite.go:218	0xe3e702		742d			JE 0xe3e731							
  traffic_opposite.go:218	0xe3e704		4883bc241001000002	CMPQ 0x110(SP), $__minor_os_version__+1(SB)			
  traffic_opposite.go:218	0xe3e70d		7c22			JL 0xe3e731							
  traffic_opposite.go:218	0xe3e70f		4885c0			TESTQ AX, AX							
  traffic_opposite.go:218	0xe3e712		7405			JE 0xe3e719							
  traffic_opposite.go:218	0xe3e714		488b10			MOVQ 0(AX), DX							
  traffic_opposite.go:218	0xe3e717		eb07			JMP 0xe3e720							
  traffic_opposite.go:218	0xe3e719		31d2			XORL DX, DX							
  traffic_opposite.go:218	0xe3e71b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:218	0xe3e720		4885d2			TESTQ DX, DX							
  traffic_opposite.go:218	0xe3e723		740c			JE 0xe3e731							
  traffic_opposite.go:218	0xe3e725		4889842420010000	MOVQ AX, 0x120(SP)						
  traffic_opposite.go:218	0xe3e72d		31c9			XORL CX, CX							
  traffic_opposite.go:221	0xe3e72f		eb22			JMP 0xe3e753							
  traffic_opposite.go:219	0xe3e731		48c7c0ffffffff		MOVQ $-0x1, AX							
  traffic_opposite.go:219	0xe3e738		31db			XORL BX, BX							
  traffic_opposite.go:219	0xe3e73a		4881c4a8000000		ADDQ $.file+91(SB), SP						
  traffic_opposite.go:219	0xe3e741		5d			POPQ BP								
  traffic_opposite.go:219	0xe3e742		c3			RET								
  traffic_opposite.go:221	0xe3e743		488b8c2488000000	MOVQ 0x88(SP), CX						
  traffic_opposite.go:222	0xe3e74b		488b842420010000	MOVQ 0x120(SP), AX						
  traffic_opposite.go:221	0xe3e753		488b942410010000	MOVQ 0x110(SP), DX						
  traffic_opposite.go:221	0xe3e75b		488d72ff		LEAQ -0x1(DX), SI						
  traffic_opposite.go:221	0xe3e75f		90			NOPL								
  traffic_opposite.go:221	0xe3e760		4839f1			CMPQ CX, SI							
  traffic_opposite.go:221	0xe3e763		0f8d1a010000		JGE 0xe3e883							
  traffic_opposite.go:221	0xe3e769		488bb42408010000	MOVQ 0x108(SP), SI						
  traffic_opposite.go:222	0xe3e771		4989c8			MOVQ CX, R8							
  traffic_opposite.go:222	0xe3e774		48c1e104		SHLQ $__subsystem__+1(SB), CX					
  traffic_opposite.go:222	0xe3e778		4d8d4801		LEAQ 0x1(R8), R9						
  traffic_opposite.go:222	0xe3e77c		4c8b1431		MOVQ 0(CX)(SI*1), R10						
  traffic_opposite.go:222	0xe3e780		488b5c3108		MOVQ 0x8(CX)(SI*1), BX						
  traffic_opposite.go:222	0xe3e785		4c39ca			CMPQ DX, R9							
  traffic_opposite.go:222	0xe3e788		0f8607010000		JBE 0xe3e895							
  traffic_opposite.go:222	0xe3e78e		48899c2480000000	MOVQ BX, 0x80(SP)						
  traffic_opposite.go:221	0xe3e796		4c89842490000000	MOVQ R8, 0x90(SP)						
  traffic_opposite.go:222	0xe3e79e		4c898c2488000000	MOVQ R9, 0x88(SP)						
  traffic_opposite.go:222	0xe3e7a6		4c899424a0000000	MOVQ R10, 0xa0(SP)						
  traffic_opposite.go:222	0xe3e7ae		49c1e104		SHLQ $__subsystem__+1(SB), R9					
  traffic_opposite.go:222	0xe3e7b2		4a8b0c0e		MOVQ 0(SI)(R9*1), CX						
  traffic_opposite.go:222	0xe3e7b6		48898c2498000000	MOVQ CX, 0x98(SP)						
  traffic_opposite.go:222	0xe3e7be		4a8b7c0e08		MOVQ 0x8(SI)(R9*1), DI						
  traffic_opposite.go:222	0xe3e7c3		48897c2478		MOVQ DI, 0x78(SP)						
  traffic.go:35			0xe3e7c8		4c89d0			MOVQ R10, AX							
  traffic.go:35			0xe3e7cb		e8b0425cff		CALL runtime.cmpstring(SB)					
  traffic.go:35			0xe3e7d0		4885c0			TESTQ AX, AX							
  traffic.go:35			0xe3e7d3		7d35			JGE 0xe3e80a							
  traffic.go:36			0xe3e7d5		488d442458		LEAQ 0x58(SP), AX						
  traffic.go:36			0xe3e7da		488b9c24a0000000	MOVQ 0xa0(SP), BX						
  traffic.go:36			0xe3e7e2		488b8c2480000000	MOVQ 0x80(SP), CX						
  traffic.go:36			0xe3e7ea		488d3d199d3200		LEAQ go:string.*+2(SB), DI					
  traffic.go:36			0xe3e7f1		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:36			0xe3e7f6		4c8b842498000000	MOVQ 0x98(SP), R8						
  traffic.go:36			0xe3e7fe		4c8b4c2478		MOVQ 0x78(SP), R9						
  traffic.go:36			0xe3e803		e8986c61ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:222	0xe3e808		eb33			JMP 0xe3e83d							
  traffic.go:38			0xe3e80a		488d442438		LEAQ 0x38(SP), AX						
  traffic.go:38			0xe3e80f		488b9c2498000000	MOVQ 0x98(SP), BX						
  traffic.go:38			0xe3e817		488b4c2478		MOVQ 0x78(SP), CX						
  traffic.go:38			0xe3e81c		488d3de79c3200		LEAQ go:string.*+2(SB), DI					
  traffic.go:38			0xe3e823		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:38			0xe3e828		4c8b8424a0000000	MOVQ 0xa0(SP), R8						
  traffic.go:38			0xe3e830		4c8b8c2480000000	MOVQ 0x80(SP), R9						
  traffic.go:38			0xe3e838		e8636c61ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:222	0xe3e83d		4889c1			MOVQ AX, CX							
  traffic_opposite.go:222	0xe3e840		4889df			MOVQ BX, DI							
  traffic_opposite.go:222	0xe3e843		488d0596ed2300		LEAQ runtime.types+624096(SB), AX				
  traffic_opposite.go:222	0xe3e84a		488b9c2420010000	MOVQ 0x120(SP), BX						
  traffic_opposite.go:222	0xe3e852		e8e9f362ff		CALL runtime.mapaccess2_faststr(SB)				
  traffic_opposite.go:222	0xe3e857		84db			TESTL BL, BL							
  traffic_opposite.go:222	0xe3e859		0f84e4feffff		JE 0xe3e743							
  traffic_opposite.go:225	0xe3e85f		488b842490000000	MOVQ 0x90(SP), AX						
  traffic_opposite.go:225	0xe3e867		48398424e8000000	CMPQ 0xe8(SP), AX						
  traffic_opposite.go:225	0xe3e86f		0f8fcefeffff		JG 0xe3e743							
  traffic_opposite.go:226	0xe3e875		bb01000000		MOVL $__minor_os_version__(SB), BX				
  traffic_opposite.go:226	0xe3e87a		4881c4a8000000		ADDQ $.file+91(SB), SP						
  traffic_opposite.go:226	0xe3e881		5d			POPQ BP								
  traffic_opposite.go:226	0xe3e882		c3			RET								
  traffic_opposite.go:229	0xe3e883		48c7c0ffffffff		MOVQ $-0x1, AX							
  traffic_opposite.go:229	0xe3e88a		31db			XORL BX, BX							
  traffic_opposite.go:229	0xe3e88c		4881c4a8000000		ADDQ $.file+91(SB), SP						
  traffic_opposite.go:229	0xe3e893		5d			POPQ BP								
  traffic_opposite.go:229	0xe3e894		c3			RET								
  traffic_opposite.go:222	0xe3e895		4c89c8			MOVQ R9, AX							
  traffic_opposite.go:222	0xe3e898		4889d1			MOVQ DX, CX							
  traffic_opposite.go:222	0xe3e89b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:222	0xe3e8a0		e83b9f63ff		CALL runtime.panicIndex(SB)					
  traffic_opposite.go:222	0xe3e8a5		90			NOPL								
  traffic_opposite.go:217	0xe3e8a6		4889442470		MOVQ AX, 0x70(SP)						
  traffic_opposite.go:217	0xe3e8ab		e8307c63ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_opposite.go:217	0xe3e8b0		488b442470		MOVQ 0x70(SP), AX						
  traffic_opposite.go:217	0xe3e8b5		e926feffff		JMP CAS-Backend/pkg/diapdu.nextConflictWaveEdgeIndex(SB)	
  :-1				0xe3e8ba		cc			INT $__subsystem__(SB)						
  :-1				0xe3e8bb		cc			INT $__subsystem__(SB)						
  :-1				0xe3e8bc		cc			INT $__subsystem__(SB)						
  :-1				0xe3e8bd		cc			INT $__subsystem__(SB)						
  :-1				0xe3e8be		cc			INT $__subsystem__(SB)						
  :-1				0xe3e8bf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.effectiveDirectedEdgeOnConflict(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:233	0xe3e8c0		4c8da42440ffffff	LEAQ 0xffffff40(SP), R12					
  traffic_opposite.go:233	0xe3e8c8		4d3b6610		CMPQ R12, 0x10(R14)						
  traffic_opposite.go:233	0xe3e8cc		0f86d4020000		JBE 0xe3eba6							
  traffic_opposite.go:233	0xe3e8d2		55			PUSHQ BP							
  traffic_opposite.go:233	0xe3e8d3		4889e5			MOVQ SP, BP							
  traffic_opposite.go:233	0xe3e8d6		4881ec38010000		SUBQ $.file+235(SB), SP						
  traffic_opposite.go:234	0xe3e8dd		80bc249001000000	CMPB 0x190(SP), $0x0						
  traffic_opposite.go:234	0xe3e8e5		0f8494020000		JE 0xe3eb7f							
  traffic_opposite.go:234	0xe3e8eb		4885c0			TESTQ AX, AX							
  traffic_opposite.go:234	0xe3e8ee		7405			JE 0xe3e8f5							
  traffic_opposite.go:234	0xe3e8f0		488b10			MOVQ 0(AX), DX							
  traffic_opposite.go:234	0xe3e8f3		eb0b			JMP 0xe3e900							
  traffic_opposite.go:234	0xe3e8f5		31d2			XORL DX, DX							
  traffic_opposite.go:234	0xe3e8f7		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:234	0xe3e900		4885d2			TESTQ DX, DX							
  traffic_opposite.go:234	0xe3e903		0f8476020000		JE 0xe3eb7f							
  traffic_opposite.go:234	0xe3e909		48898424b0010000	MOVQ AX, 0x1b0(SP)						
  traffic_opposite.go:189	0xe3e911		488b8c2448010000	MOVQ 0x148(SP), CX						
  traffic_opposite.go:189	0xe3e919		48890c24		MOVQ CX, 0(SP)							
  traffic_opposite.go:189	0xe3e91d		488d7c2408		LEAQ 0x8(SP), DI						
  traffic_opposite.go:189	0xe3e922		488db42450010000	LEAQ 0x150(SP), SI						
  traffic_opposite.go:189	0xe3e92a		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:189	0xe3e92f		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:189	0xe3e934		e813a563ff		CALL 0x478e4c							
  traffic_opposite.go:189	0xe3e939		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:189	0xe3e93d		0f1f00			NOPL 0(AX)							
  traffic_opposite.go:189	0xe3e940		e8fbeeffff		CALL CAS-Backend/pkg/diapdu.winnerClearedOppositeZone(SB)	
  traffic_opposite.go:189	0xe3e945		84c0			TESTL AL, AL							
  traffic_opposite.go:237	0xe3e947		0f851d020000		JNE 0xe3eb6a							
  traffic_opposite.go:240	0xe3e94d		488b942448010000	MOVQ 0x148(SP), DX						
  traffic_opposite.go:240	0xe3e955		48899424c0000000	MOVQ DX, 0xc0(SP)						
  traffic_opposite.go:240	0xe3e95d		488dbc24c8000000	LEAQ 0xc8(SP), DI						
  traffic_opposite.go:240	0xe3e965		488db42450010000	LEAQ 0x150(SP), SI						
  traffic_opposite.go:240	0xe3e96d		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:240	0xe3e976		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:240	0xe3e97f		90			NOPL								
  traffic_opposite.go:240	0xe3e980		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:240	0xe3e985		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:240	0xe3e98a		e8bda463ff		CALL 0x478e4c							
  traffic_opposite.go:240	0xe3e98f		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:89	0xe3e993		80bc240801000000	CMPB 0x108(SP), $0x0						
  traffic_opposite.go:89	0xe3e99b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:89	0xe3e9a0		0f84e2000000		JE 0xe3ea88							
  traffic_opposite.go:92	0xe3e9a6		488b8424d0000000	MOVQ 0xd0(SP), AX						
  traffic_opposite.go:92	0xe3e9ae		4889842430010000	MOVQ AX, 0x130(SP)						
  traffic_opposite.go:92	0xe3e9b6		488b9c24d8000000	MOVQ 0xd8(SP), BX						
  traffic_opposite.go:92	0xe3e9be		48899c24b8000000	MOVQ BX, 0xb8(SP)						
  traffic_opposite.go:92	0xe3e9c6		488b8c24e0000000	MOVQ 0xe0(SP), CX						
  traffic_opposite.go:92	0xe3e9ce		48898c2428010000	MOVQ CX, 0x128(SP)						
  traffic_opposite.go:92	0xe3e9d6		488bbc24e8000000	MOVQ 0xe8(SP), DI						
  traffic_opposite.go:92	0xe3e9de		4889bc24b0000000	MOVQ DI, 0xb0(SP)						
  traffic.go:35			0xe3e9e6		e895405cff		CALL runtime.cmpstring(SB)					
  traffic.go:35			0xe3e9eb		4885c0			TESTQ AX, AX							
  traffic.go:35			0xe3e9ee		7d3b			JGE 0xe3ea2b							
  traffic.go:36			0xe3e9f0		488d842490000000	LEAQ 0x90(SP), AX						
  traffic.go:36			0xe3e9f8		488b9c2430010000	MOVQ 0x130(SP), BX						
  traffic.go:36			0xe3ea00		488b8c24b8000000	MOVQ 0xb8(SP), CX						
  traffic.go:36			0xe3ea08		488d3dfb9a3200		LEAQ go:string.*+2(SB), DI					
  traffic.go:36			0xe3ea0f		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:36			0xe3ea14		4c8b842428010000	MOVQ 0x128(SP), R8						
  traffic.go:36			0xe3ea1c		4c8b8c24b0000000	MOVQ 0xb0(SP), R9						
  traffic.go:36			0xe3ea24		e8776a61ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:92	0xe3ea29		eb3a			JMP 0xe3ea65							
  traffic.go:38			0xe3ea2b		488d442470		LEAQ 0x70(SP), AX						
  traffic.go:38			0xe3ea30		488b9c2428010000	MOVQ 0x128(SP), BX						
  traffic.go:38			0xe3ea38		488b8c24b0000000	MOVQ 0xb0(SP), CX						
  traffic.go:38			0xe3ea40		488d3dc39a3200		LEAQ go:string.*+2(SB), DI					
  traffic.go:38			0xe3ea47		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:38			0xe3ea4c		4c8b842430010000	MOVQ 0x130(SP), R8						
  traffic.go:38			0xe3ea54		4c8b8c24b8000000	MOVQ 0xb8(SP), R9						
  traffic.go:38			0xe3ea5c		0f1f4000		NOPL 0(AX)							
  traffic.go:38			0xe3ea60		e83b6a61ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:92	0xe3ea65		4889c1			MOVQ AX, CX							
  traffic_opposite.go:92	0xe3ea68		4889df			MOVQ BX, DI							
  traffic_opposite.go:92	0xe3ea6b		488d056eeb2300		LEAQ runtime.types+624096(SB), AX				
  traffic_opposite.go:92	0xe3ea72		488b9c24b0010000	MOVQ 0x1b0(SP), BX						
  traffic_opposite.go:92	0xe3ea7a		e8c1f162ff		CALL runtime.mapaccess2_faststr(SB)				
  traffic_opposite.go:92	0xe3ea7f		90			NOPL								
  traffic_opposite.go:92	0xe3ea80		84db			TESTL BL, BL							
  traffic_opposite.go:240	0xe3ea82		0f85b4000000		JNE 0xe3eb3c							
  traffic_opposite.go:243	0xe3ea88		488b8c2448010000	MOVQ 0x148(SP), CX						
  traffic_opposite.go:243	0xe3ea90		48890c24		MOVQ CX, 0(SP)							
  traffic_opposite.go:243	0xe3ea94		488d7c2408		LEAQ 0x8(SP), DI						
  traffic_opposite.go:243	0xe3ea99		488db42450010000	LEAQ 0x150(SP), SI						
  traffic_opposite.go:243	0xe3eaa1		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:243	0xe3eaa6		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:243	0xe3eaab		e89ca363ff		CALL 0x478e4c							
  traffic_opposite.go:243	0xe3eab0		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:243	0xe3eab4		488b8424b0010000	MOVQ 0x1b0(SP), AX						
  traffic_opposite.go:243	0xe3eabc		0f1f4000		NOPL 0(AX)							
  traffic_opposite.go:243	0xe3eac0		e81bfcffff		CALL CAS-Backend/pkg/diapdu.nextConflictWaveEdgeIndex(SB)	
  traffic_opposite.go:243	0xe3eac5		84db			TESTL BL, BL							
  traffic_opposite.go:244	0xe3eac7		745e			JE 0xe3eb27							
  traffic_opposite.go:244	0xe3eac9		488d5001		LEAQ 0x1(AX), DX						
  traffic_opposite.go:244	0xe3eacd		488b8c24a0010000	MOVQ 0x1a0(SP), CX						
  traffic_opposite.go:244	0xe3ead5		4839d1			CMPQ CX, DX							
  traffic_opposite.go:244	0xe3ead8		7e4d			JLE 0xe3eb27							
  traffic_opposite.go:244	0xe3eada		660f1f440000		NOPW 0(AX)(AX*1)						
  traffic_opposite.go:247	0xe3eae0		4839c8			CMPQ AX, CX							
  traffic_opposite.go:247	0xe3eae3		0f83b7000000		JAE 0xe3eba0							
  traffic_opposite.go:244	0xe3eae9		4c8b842498010000	MOVQ 0x198(SP), R8						
  traffic_opposite.go:247	0xe3eaf1		48c1e004		SHLQ $__subsystem__+1(SB), AX					
  traffic_opposite.go:247	0xe3eaf5		4d8b0c00		MOVQ 0(R8)(AX*1), R9						
  traffic_opposite.go:247	0xe3eaf9		498b5c0008		MOVQ 0x8(R8)(AX*1), BX						
  traffic_opposite.go:247	0xe3eafe		6690			NOPW								
  traffic_opposite.go:244	0xe3eb00		4839d1			CMPQ CX, DX							
  traffic_opposite.go:247	0xe3eb03		0f868b000000		JBE 0xe3eb94							
  traffic_opposite.go:247	0xe3eb09		48c1e204		SHLQ $__subsystem__+1(SB), DX					
  traffic_opposite.go:247	0xe3eb0d		498b0c10		MOVQ 0(R8)(DX*1), CX						
  traffic_opposite.go:247	0xe3eb11		498b7c1008		MOVQ 0x8(R8)(DX*1), DI						
  traffic_opposite.go:247	0xe3eb16		4c89c8			MOVQ R9, AX							
  traffic_opposite.go:247	0xe3eb19		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic_opposite.go:247	0xe3eb1e		4881c438010000		ADDQ $.file+235(SB), SP						
  traffic_opposite.go:247	0xe3eb25		5d			POPQ BP								
  traffic_opposite.go:247	0xe3eb26		c3			RET								
  traffic_opposite.go:245	0xe3eb27		31c0			XORL AX, AX							
  traffic_opposite.go:245	0xe3eb29		31db			XORL BX, BX							
  traffic_opposite.go:245	0xe3eb2b		4889c1			MOVQ AX, CX							
  traffic_opposite.go:245	0xe3eb2e		4889df			MOVQ BX, DI							
  traffic_opposite.go:245	0xe3eb31		31f6			XORL SI, SI							
  traffic_opposite.go:245	0xe3eb33		4881c438010000		ADDQ $.file+235(SB), SP						
  traffic_opposite.go:245	0xe3eb3a		5d			POPQ BP								
  traffic_opposite.go:245	0xe3eb3b		c3			RET								
  traffic_opposite.go:241	0xe3eb3c		488b842458010000	MOVQ 0x158(SP), AX						
  traffic_opposite.go:241	0xe3eb44		488b9c2460010000	MOVQ 0x160(SP), BX						
  traffic_opposite.go:241	0xe3eb4c		488b8c2468010000	MOVQ 0x168(SP), CX						
  traffic_opposite.go:241	0xe3eb54		488bbc2470010000	MOVQ 0x170(SP), DI						
  traffic_opposite.go:241	0xe3eb5c		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic_opposite.go:241	0xe3eb61		4881c438010000		ADDQ $.file+235(SB), SP						
  traffic_opposite.go:241	0xe3eb68		5d			POPQ BP								
  traffic_opposite.go:241	0xe3eb69		c3			RET								
  traffic_opposite.go:238	0xe3eb6a		31c0			XORL AX, AX							
  traffic_opposite.go:238	0xe3eb6c		31db			XORL BX, BX							
  traffic_opposite.go:238	0xe3eb6e		4889c1			MOVQ AX, CX							
  traffic_opposite.go:238	0xe3eb71		4889df			MOVQ BX, DI							
  traffic_opposite.go:238	0xe3eb74		31f6			XORL SI, SI							
  traffic_opposite.go:238	0xe3eb76		4881c438010000		ADDQ $.file+235(SB), SP						
  traffic_opposite.go:238	0xe3eb7d		5d			POPQ BP								
  traffic_opposite.go:238	0xe3eb7e		c3			RET								
  traffic_opposite.go:235	0xe3eb7f		31c0			XORL AX, AX							
  traffic_opposite.go:235	0xe3eb81		31db			XORL BX, BX							
  traffic_opposite.go:235	0xe3eb83		4889c1			MOVQ AX, CX							
  traffic_opposite.go:235	0xe3eb86		4889df			MOVQ BX, DI							
  traffic_opposite.go:235	0xe3eb89		31f6			XORL SI, SI							
  traffic_opposite.go:235	0xe3eb8b		4881c438010000		ADDQ $.file+235(SB), SP						
  traffic_opposite.go:235	0xe3eb92		5d			POPQ BP								
  traffic_opposite.go:235	0xe3eb93		c3			RET								
  traffic_opposite.go:247	0xe3eb94		4889d0			MOVQ DX, AX							
  traffic_opposite.go:247	0xe3eb97		e8449c63ff		CALL runtime.panicIndex(SB)					
  traffic_opposite.go:247	0xe3eb9c		0f1f4000		NOPL 0(AX)							
  traffic_opposite.go:247	0xe3eba0		e83b9c63ff		CALL runtime.panicIndex(SB)					
  traffic_opposite.go:247	0xe3eba5		90			NOPL								
  traffic_opposite.go:233	0xe3eba6		4889442470		MOVQ AX, 0x70(SP)						
  traffic_opposite.go:233	0xe3ebab		e8307963ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_opposite.go:233	0xe3ebb0		488b442470		MOVQ 0x70(SP), AX						
  traffic_opposite.go:233	0xe3ebb5		e906fdffff		JMP CAS-Backend/pkg/diapdu.effectiveDirectedEdgeOnConflict(SB)	
  :-1				0xe3ebba		cc			INT $__subsystem__(SB)						
  :-1				0xe3ebbb		cc			INT $__subsystem__(SB)						
  :-1				0xe3ebbc		cc			INT $__subsystem__(SB)						
  :-1				0xe3ebbd		cc			INT $__subsystem__(SB)						
  :-1				0xe3ebbe		cc			INT $__subsystem__(SB)						
  :-1				0xe3ebbf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.vehiclesOppositeInConflict(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:260	0xe3ebc0		4c8da42428feffff	LEAQ 0xfffffe28(SP), R12					
  traffic_opposite.go:260	0xe3ebc8		4d3b6610		CMPQ R12, 0x10(R14)						
  traffic_opposite.go:260	0xe3ebcc		0f8644060000		JBE 0xe3f216							
  traffic_opposite.go:260	0xe3ebd2		55			PUSHQ BP							
  traffic_opposite.go:260	0xe3ebd3		4889e5			MOVQ SP, BP							
  traffic_opposite.go:260	0xe3ebd6		4881ec50020000		SUBQ $__file_alignment__+80(SB), SP				
  traffic_opposite.go:263	0xe3ebdd		4889842430030000	MOVQ AX, 0x330(SP)						
  traffic_opposite.go:261	0xe3ebe5		488b8c2460020000	MOVQ 0x260(SP), CX						
  traffic_opposite.go:261	0xe3ebed		48890c24		MOVQ CX, 0(SP)							
  traffic_opposite.go:261	0xe3ebf1		488d7c2408		LEAQ 0x8(SP), DI						
  traffic_opposite.go:261	0xe3ebf6		488db42468020000	LEAQ 0x268(SP), SI						
  traffic_opposite.go:261	0xe3ebfe		6690			NOPW								
  traffic_opposite.go:261	0xe3ec00		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:261	0xe3ec05		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:261	0xe3ec0a		e83da263ff		CALL 0x478e4c							
  traffic_opposite.go:261	0xe3ec0f		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:261	0xe3ec13		e8a8fcffff		CALL CAS-Backend/pkg/diapdu.effectiveDirectedEdgeOnConflict(SB)	
  traffic_opposite.go:261	0xe3ec18		4088742477		MOVB SI, 0x77(SP)						
  traffic_opposite.go:261	0xe3ec1d		4889842480010000	MOVQ AX, 0x180(SP)						
  traffic_opposite.go:261	0xe3ec25		48898c2478010000	MOVQ CX, 0x178(SP)						
  traffic_opposite.go:261	0xe3ec2d		48899c2428010000	MOVQ BX, 0x128(SP)						
  traffic_opposite.go:261	0xe3ec35		4889bc2420010000	MOVQ DI, 0x120(SP)						
  traffic_opposite.go:262	0xe3ec3d		488b9424c8020000	MOVQ 0x2c8(SP), DX						
  traffic_opposite.go:262	0xe3ec45		48891424		MOVQ DX, 0(SP)							
  traffic_opposite.go:262	0xe3ec49		488d7c2408		LEAQ 0x8(SP), DI						
  traffic_opposite.go:262	0xe3ec4e		488db424d0020000	LEAQ 0x2d0(SP), SI						
  traffic_opposite.go:262	0xe3ec56		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:262	0xe3ec5f		90			NOPL								
  traffic_opposite.go:262	0xe3ec60		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:262	0xe3ec65		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:262	0xe3ec6a		e8dda163ff		CALL 0x478e4c							
  traffic_opposite.go:262	0xe3ec6f		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:262	0xe3ec73		488b842430030000	MOVQ 0x330(SP), AX						
  traffic_opposite.go:262	0xe3ec7b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:262	0xe3ec80		e83bfcffff		CALL CAS-Backend/pkg/diapdu.effectiveDirectedEdgeOnConflict(SB)	
  traffic_opposite.go:261	0xe3ec85		0fb6542477		MOVZX 0x77(SP), DX						
  traffic_opposite.go:261	0xe3ec8a		84d2			TESTL DL, DL							
  traffic_opposite.go:263	0xe3ec8c		0f8479050000		JE 0xe3f20b							
  traffic_opposite.go:262	0xe3ec92		4084f6			TESTL SI, SI							
  traffic_opposite.go:263	0xe3ec95		0f8470050000		JE 0xe3f20b							
  traffic_opposite.go:262	0xe3ec9b		4889bc2410010000	MOVQ DI, 0x110(SP)						
  traffic_opposite.go:262	0xe3eca3		48898c2468010000	MOVQ CX, 0x168(SP)						
  traffic_opposite.go:262	0xe3ecab		48899c2418010000	MOVQ BX, 0x118(SP)						
  traffic_opposite.go:262	0xe3ecb3		4889842470010000	MOVQ AX, 0x170(SP)						
  traffic_opposite.go:266	0xe3ecbb		488b942428010000	MOVQ 0x128(SP), DX						
  traffic_opposite.go:266	0xe3ecc3		4839d3			CMPQ BX, DX							
  traffic_opposite.go:266	0xe3ecc6		7404			JE 0xe3eccc							
  traffic_opposite.go:266	0xe3ecc8		31f6			XORL SI, SI							
  traffic_opposite.go:266	0xe3ecca		eb3d			JMP 0xe3ed09							
  traffic_opposite.go:266	0xe3eccc		4889c3			MOVQ AX, BX							
  traffic_opposite.go:266	0xe3eccf		4889d1			MOVQ DX, CX							
  traffic_opposite.go:266	0xe3ecd2		488b842480010000	MOVQ 0x180(SP), AX						
  traffic_opposite.go:266	0xe3ecda		e881415cff		CALL runtime.memequal(SB)					
  traffic_opposite.go:266	0xe3ecdf		488b8c2468010000	MOVQ 0x168(SP), CX						
  traffic_opposite.go:181	0xe3ece7		488b942428010000	MOVQ 0x128(SP), DX						
  traffic_opposite.go:181	0xe3ecef		488b9c2418010000	MOVQ 0x118(SP), BX						
  traffic_opposite.go:266	0xe3ecf7		488bbc2410010000	MOVQ 0x110(SP), DI						
  traffic_opposite.go:266	0xe3ecff		89c6			MOVL AX, SI							
  traffic.go:35			0xe3ed01		488b842470010000	MOVQ 0x170(SP), AX						
  traffic_opposite.go:266	0xe3ed09		4084f6			TESTL SI, SI							
  traffic_opposite.go:266	0xe3ed0c		746a			JE 0xe3ed78							
  traffic_opposite.go:266	0xe3ed0e		488bb42420010000	MOVQ 0x120(SP), SI						
  traffic_opposite.go:266	0xe3ed16		4839f7			CMPQ DI, SI							
  traffic_opposite.go:266	0xe3ed19		7407			JE 0xe3ed22							
  traffic_opposite.go:266	0xe3ed1b		4531c0			XORL R8, R8							
  traffic_opposite.go:266	0xe3ed1e		6690			NOPW								
  traffic_opposite.go:266	0xe3ed20		eb46			JMP 0xe3ed68							
  traffic_opposite.go:266	0xe3ed22		488b842478010000	MOVQ 0x178(SP), AX						
  traffic_opposite.go:266	0xe3ed2a		4889cb			MOVQ CX, BX							
  traffic_opposite.go:266	0xe3ed2d		4889f1			MOVQ SI, CX							
  traffic_opposite.go:266	0xe3ed30		e82b415cff		CALL runtime.memequal(SB)					
  traffic.go:35			0xe3ed35		488b8c2468010000	MOVQ 0x168(SP), CX						
  traffic_opposite.go:181	0xe3ed3d		488b942428010000	MOVQ 0x128(SP), DX						
  traffic_opposite.go:181	0xe3ed45		488b9c2418010000	MOVQ 0x118(SP), BX						
  traffic_opposite.go:181	0xe3ed4d		488bb42420010000	MOVQ 0x120(SP), SI						
  traffic_opposite.go:181	0xe3ed55		488bbc2410010000	MOVQ 0x110(SP), DI						
  traffic_opposite.go:266	0xe3ed5d		4189c0			MOVL AX, R8							
  traffic.go:35			0xe3ed60		488b842470010000	MOVQ 0x170(SP), AX						
  traffic_opposite.go:266	0xe3ed68		4584c0			TESTL R8, R8							
  traffic_opposite.go:266	0xe3ed6b		7413			JE 0xe3ed80							
  traffic_opposite.go:267	0xe3ed6d		31c0			XORL AX, AX							
  traffic_opposite.go:267	0xe3ed6f		4881c450020000		ADDQ $__file_alignment__+80(SB), SP				
  traffic_opposite.go:267	0xe3ed76		5d			POPQ BP								
  traffic_opposite.go:267	0xe3ed77		c3			RET								
  traffic_opposite.go:181	0xe3ed78		488bb42420010000	MOVQ 0x120(SP), SI						
  traffic_opposite.go:181	0xe3ed80		4885d2			TESTQ DX, DX							
  traffic_opposite.go:181	0xe3ed83		0f8403020000		JE 0xe3ef8c							
  traffic_opposite.go:181	0xe3ed89		4885f6			TESTQ SI, SI							
  traffic_opposite.go:181	0xe3ed8c		0f84fa010000		JE 0xe3ef8c							
  traffic_opposite.go:181	0xe3ed92		4885db			TESTQ BX, BX							
  traffic_opposite.go:181	0xe3ed95		0f84f1010000		JE 0xe3ef8c							
  traffic_opposite.go:181	0xe3ed9b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:181	0xe3eda0		4885ff			TESTQ DI, DI							
  traffic_opposite.go:181	0xe3eda3		0f84e3010000		JE 0xe3ef8c							
  traffic.go:35			0xe3eda9		488b842480010000	MOVQ 0x180(SP), AX						
  traffic.go:35			0xe3edb1		4889d3			MOVQ DX, BX							
  traffic.go:35			0xe3edb4		488b8c2478010000	MOVQ 0x178(SP), CX						
  traffic.go:35			0xe3edbc		4889f7			MOVQ SI, DI							
  traffic.go:35			0xe3edbf		90			NOPL								
  traffic.go:35			0xe3edc0		e8bb3c5cff		CALL runtime.cmpstring(SB)					
  traffic.go:35			0xe3edc5		4885c0			TESTQ AX, AX							
  traffic.go:35			0xe3edc8		7d3d			JGE 0xe3ee07							
  traffic.go:36			0xe3edca		488d8424d8000000	LEAQ 0xd8(SP), AX						
  traffic.go:36			0xe3edd2		488b9c2480010000	MOVQ 0x180(SP), BX						
  traffic.go:36			0xe3edda		488b8c2428010000	MOVQ 0x128(SP), CX						
  traffic.go:36			0xe3ede2		488d3d21973200		LEAQ go:string.*+2(SB), DI					
  traffic.go:36			0xe3ede9		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:36			0xe3edee		4c8b842478010000	MOVQ 0x178(SP), R8						
  traffic.go:36			0xe3edf6		4c8b8c2420010000	MOVQ 0x120(SP), R9						
  traffic.go:36			0xe3edfe		6690			NOPW								
  traffic.go:36			0xe3ee00		e89b6661ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:184	0xe3ee05		eb3e			JMP 0xe3ee45							
  traffic.go:38			0xe3ee07		488d8424b8000000	LEAQ 0xb8(SP), AX						
  traffic.go:38			0xe3ee0f		488b9c2478010000	MOVQ 0x178(SP), BX						
  traffic.go:38			0xe3ee17		488b8c2420010000	MOVQ 0x120(SP), CX						
  traffic.go:38			0xe3ee1f		488d3de4963200		LEAQ go:string.*+2(SB), DI					
  traffic.go:38			0xe3ee26		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:38			0xe3ee2b		4c8b842480010000	MOVQ 0x180(SP), R8						
  traffic.go:38			0xe3ee33		4c8b8c2428010000	MOVQ 0x128(SP), R9						
  traffic.go:38			0xe3ee3b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic.go:38			0xe3ee40		e85b6661ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:184	0xe3ee45		48899c2408010000	MOVQ BX, 0x108(SP)						
  traffic_opposite.go:184	0xe3ee4d		4889842440010000	MOVQ AX, 0x140(SP)						
  traffic.go:35			0xe3ee55		488b8c2468010000	MOVQ 0x168(SP), CX						
  traffic.go:35			0xe3ee5d		488bbc2410010000	MOVQ 0x110(SP), DI						
  traffic.go:35			0xe3ee65		488b842470010000	MOVQ 0x170(SP), AX						
  traffic.go:35			0xe3ee6d		488b9c2418010000	MOVQ 0x118(SP), BX						
  traffic.go:35			0xe3ee75		e8063c5cff		CALL runtime.cmpstring(SB)					
  traffic.go:35			0xe3ee7a		4885c0			TESTQ AX, AX							
  traffic.go:35			0xe3ee7d		7d3b			JGE 0xe3eeba							
  traffic.go:36			0xe3ee7f		488d842498000000	LEAQ 0x98(SP), AX						
  traffic.go:36			0xe3ee87		488b9c2470010000	MOVQ 0x170(SP), BX						
  traffic.go:36			0xe3ee8f		488b8c2418010000	MOVQ 0x118(SP), CX						
  traffic.go:36			0xe3ee97		488d3d6c963200		LEAQ go:string.*+2(SB), DI					
  traffic.go:36			0xe3ee9e		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:36			0xe3eea3		4c8b842468010000	MOVQ 0x168(SP), R8						
  traffic.go:36			0xe3eeab		4c8b8c2410010000	MOVQ 0x110(SP), R9						
  traffic.go:36			0xe3eeb3		e8e86561ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:184	0xe3eeb8		eb36			JMP 0xe3eef0							
  traffic.go:38			0xe3eeba		488d442478		LEAQ 0x78(SP), AX						
  traffic.go:38			0xe3eebf		488b9c2468010000	MOVQ 0x168(SP), BX						
  traffic.go:38			0xe3eec7		488b8c2410010000	MOVQ 0x110(SP), CX						
  traffic.go:38			0xe3eecf		488d3d34963200		LEAQ go:string.*+2(SB), DI					
  traffic.go:38			0xe3eed6		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:38			0xe3eedb		4c8b842470010000	MOVQ 0x170(SP), R8						
  traffic.go:38			0xe3eee3		4c8b8c2418010000	MOVQ 0x118(SP), R9						
  traffic.go:38			0xe3eeeb		e8b06561ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:184	0xe3eef0		488b8c2408010000	MOVQ 0x108(SP), CX						
  traffic_opposite.go:184	0xe3eef8		4839d9			CMPQ CX, BX							
  traffic_opposite.go:184	0xe3eefb		7405			JE 0xe3ef02							
  traffic_opposite.go:184	0xe3eefd		31c0			XORL AX, AX							
  traffic_opposite.go:184	0xe3eeff		90			NOPL								
  traffic_opposite.go:184	0xe3ef00		eb10			JMP 0xe3ef12							
  traffic_opposite.go:184	0xe3ef02		4889c3			MOVQ AX, BX							
  traffic_opposite.go:184	0xe3ef05		488b842440010000	MOVQ 0x140(SP), AX						
  traffic_opposite.go:184	0xe3ef0d		e84e3f5cff		CALL runtime.memequal(SB)					
  traffic_opposite.go:184	0xe3ef12		84c0			TESTL AL, AL							
  traffic_opposite.go:184	0xe3ef14		7431			JE 0xe3ef47							
  traffic_opposite.go:184	0xe3ef16		488b942410010000	MOVQ 0x110(SP), DX						
  traffic_opposite.go:184	0xe3ef1e		488b8c2428010000	MOVQ 0x128(SP), CX						
  traffic_opposite.go:184	0xe3ef26		4839ca			CMPQ DX, CX							
  traffic_opposite.go:184	0xe3ef29		7404			JE 0xe3ef2f							
  traffic_opposite.go:184	0xe3ef2b		31c0			XORL AX, AX							
  traffic_opposite.go:184	0xe3ef2d		eb1a			JMP 0xe3ef49							
  traffic_opposite.go:184	0xe3ef2f		488b842480010000	MOVQ 0x180(SP), AX						
  traffic_opposite.go:184	0xe3ef37		488b9c2468010000	MOVQ 0x168(SP), BX						
  traffic_opposite.go:184	0xe3ef3f		90			NOPL								
  traffic_opposite.go:184	0xe3ef40		e81b3f5cff		CALL runtime.memequal(SB)					
  traffic_opposite.go:184	0xe3ef45		eb02			JMP 0xe3ef49							
  traffic_opposite.go:184	0xe3ef47		31c0			XORL AX, AX							
  traffic_opposite.go:184	0xe3ef49		84c0			TESTL AL, AL							
  traffic_opposite.go:184	0xe3ef4b		7435			JE 0xe3ef82							
  traffic_opposite.go:184	0xe3ef4d		488b942418010000	MOVQ 0x118(SP), DX						
  traffic_opposite.go:184	0xe3ef55		488b8c2420010000	MOVQ 0x120(SP), CX						
  traffic_opposite.go:184	0xe3ef5d		0f1f00			NOPL 0(AX)							
  traffic_opposite.go:184	0xe3ef60		4839ca			CMPQ DX, CX							
  traffic_opposite.go:184	0xe3ef63		7404			JE 0xe3ef69							
  traffic_opposite.go:184	0xe3ef65		31c0			XORL AX, AX							
  traffic_opposite.go:184	0xe3ef67		eb1b			JMP 0xe3ef84							
  traffic_opposite.go:184	0xe3ef69		488b842478010000	MOVQ 0x178(SP), AX						
  traffic_opposite.go:184	0xe3ef71		488b9c2470010000	MOVQ 0x170(SP), BX						
  traffic_opposite.go:184	0xe3ef79		e8e23e5cff		CALL runtime.memequal(SB)					
  traffic_opposite.go:184	0xe3ef7e		6690			NOPW								
  traffic_opposite.go:184	0xe3ef80		eb02			JMP 0xe3ef84							
  traffic_opposite.go:184	0xe3ef82		31c0			XORL AX, AX							
  traffic_opposite.go:269	0xe3ef84		84c0			TESTL AL, AL							
  traffic_opposite.go:269	0xe3ef86		0f8571020000		JNE 0xe3f1fd							
  traffic_opposite.go:273	0xe3ef8c		488b842430030000	MOVQ 0x330(SP), AX						
  traffic_opposite.go:273	0xe3ef94		e847e4ffff		CALL CAS-Backend/pkg/diapdu.conflictZoneEndpoints(SB)		
  traffic_opposite.go:273	0xe3ef99		0f100424		MOVUPS 0(SP), X0						
  traffic_opposite.go:273	0xe3ef9d		0f11842448010000	MOVUPS X0, 0x148(SP)						
  traffic_opposite.go:273	0xe3efa5		0f10442410		MOVUPS 0x10(SP), X0						
  traffic_opposite.go:273	0xe3efaa		0f11842458010000	MOVUPS X0, 0x158(SP)						
  traffic_opposite.go:274	0xe3efb2		4883bc245001000000	CMPQ 0x150(SP), $0x0						
  traffic_opposite.go:274	0xe3efbb		740b			JE 0xe3efc8							
  traffic_opposite.go:274	0xe3efbd		4883bc246001000000	CMPQ 0x160(SP), $0x0						
  traffic_opposite.go:274	0xe3efc6		750b			JNE 0xe3efd3							
  traffic_opposite.go:275	0xe3efc8		31c0			XORL AX, AX							
  traffic_opposite.go:275	0xe3efca		4881c450020000		ADDQ $__file_alignment__+80(SB), SP				
  traffic_opposite.go:275	0xe3efd1		5d			POPQ BP								
  traffic_opposite.go:275	0xe3efd2		c3			RET								
  traffic_opposite.go:277	0xe3efd3		440f11bc2420020000	MOVUPS X15, 0x220(SP)						
  traffic_opposite.go:277	0xe3efdc		440f11bc2430020000	MOVUPS X15, 0x230(SP)						
  traffic_opposite.go:277	0xe3efe5		440f11bc2440020000	MOVUPS X15, 0x240(SP)						
  traffic_opposite.go:277	0xe3efee		440f11bc2488010000	MOVUPS X15, 0x188(SP)						
  traffic_opposite.go:277	0xe3eff7		488dbc2490010000	LEAQ 0x190(SP), DI						
  traffic_opposite.go:277	0xe3efff		488d7fd0		LEAQ -0x30(DI), DI						
  traffic_opposite.go:277	0xe3f003		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:277	0xe3f008		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:277	0xe3f00d		e8c79a63ff		CALL 0x478ad9							
  traffic_opposite.go:277	0xe3f012		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:277	0xe3f016		488d842488010000	LEAQ 0x188(SP), AX						
  traffic_opposite.go:277	0xe3f01e		4889842430020000	MOVQ AX, 0x230(SP)						
  traffic_opposite.go:277	0xe3f026		e855dd60ff		CALL runtime.rand32(SB)						
  traffic_opposite.go:277	0xe3f02b		8984242c020000		MOVL AX, 0x22c(SP)						
  traffic_opposite.go:277	0xe3f032		488b8c2448010000	MOVQ 0x148(SP), CX						
  traffic_opposite.go:277	0xe3f03a		488bbc2450010000	MOVQ 0x150(SP), DI						
  traffic_opposite.go:277	0xe3f042		488d05f7e82300		LEAQ runtime.types+624960(SB), AX				
  traffic_opposite.go:277	0xe3f049		488d9c2420020000	LEAQ 0x220(SP), BX						
  traffic_opposite.go:277	0xe3f051		e8caef62ff		CALL runtime.mapassign_faststr(SB)				
  traffic_opposite.go:277	0xe3f056		c60001			MOVB $__minor_os_version__(SB), 0(AX)				
  traffic_opposite.go:277	0xe3f059		488b8c2458010000	MOVQ 0x158(SP), CX						
  traffic_opposite.go:277	0xe3f061		488bbc2460010000	MOVQ 0x160(SP), DI						
  traffic_opposite.go:277	0xe3f069		488d05d0e82300		LEAQ runtime.types+624960(SB), AX				
  traffic_opposite.go:277	0xe3f070		488d9c2420020000	LEAQ 0x220(SP), BX						
  traffic_opposite.go:277	0xe3f078		e8a3ef62ff		CALL runtime.mapassign_faststr(SB)				
  traffic_opposite.go:277	0xe3f07d		c60001			MOVB $__minor_os_version__(SB), 0(AX)				
  traffic_opposite.go:252	0xe3f080		488b842460020000	MOVQ 0x260(SP), AX						
  traffic_opposite.go:252	0xe3f088		48890424		MOVQ AX, 0(SP)							
  traffic_opposite.go:252	0xe3f08c		488d7c2408		LEAQ 0x8(SP), DI						
  traffic_opposite.go:252	0xe3f091		488db42468020000	LEAQ 0x268(SP), SI						
  traffic_opposite.go:252	0xe3f099		0f1f8000000000		NOPL 0(AX)							
  traffic_opposite.go:252	0xe3f0a0		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:252	0xe3f0a5		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:252	0xe3f0aa		e89d9d63ff		CALL 0x478e4c							
  traffic_opposite.go:252	0xe3f0af		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:252	0xe3f0b3		488b842430030000	MOVQ 0x330(SP), AX						
  traffic_opposite.go:252	0xe3f0bb		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:252	0xe3f0c0		e8fbf7ffff		CALL CAS-Backend/pkg/diapdu.effectiveDirectedEdgeOnConflict(SB)	
  traffic_opposite.go:252	0xe3f0c5		4084f6			TESTL SI, SI							
  traffic_opposite.go:253	0xe3f0c8		7504			JNE 0xe3f0ce							
  traffic_opposite.go:253	0xe3f0ca		31db			XORL BX, BX							
  traffic_opposite.go:253	0xe3f0cc		31c0			XORL AX, AX							
  traffic_opposite.go:278	0xe3f0ce		48899c2400010000	MOVQ BX, 0x100(SP)						
  traffic_opposite.go:278	0xe3f0d6		4889842438010000	MOVQ AX, 0x138(SP)						
  traffic_opposite.go:252	0xe3f0de		488b8c24c8020000	MOVQ 0x2c8(SP), CX						
  traffic_opposite.go:252	0xe3f0e6		48890c24		MOVQ CX, 0(SP)							
  traffic_opposite.go:252	0xe3f0ea		488d7c2408		LEAQ 0x8(SP), DI						
  traffic_opposite.go:252	0xe3f0ef		488db424d0020000	LEAQ 0x2d0(SP), SI						
  traffic_opposite.go:252	0xe3f0f7		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:252	0xe3f100		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:252	0xe3f105		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:252	0xe3f10a		e83d9d63ff		CALL 0x478e4c							
  traffic_opposite.go:252	0xe3f10f		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:252	0xe3f113		488b842430030000	MOVQ 0x330(SP), AX						
  traffic_opposite.go:252	0xe3f11b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:252	0xe3f120		e89bf7ffff		CALL CAS-Backend/pkg/diapdu.effectiveDirectedEdgeOnConflict(SB)	
  traffic_opposite.go:252	0xe3f125		4084f6			TESTL SI, SI							
  traffic_opposite.go:253	0xe3f128		7504			JNE 0xe3f12e							
  traffic_opposite.go:253	0xe3f12a		31db			XORL BX, BX							
  traffic_opposite.go:253	0xe3f12c		31c0			XORL AX, AX							
  traffic_opposite.go:280	0xe3f12e		488bbc2400010000	MOVQ 0x100(SP), DI						
  traffic_opposite.go:280	0xe3f136		4885ff			TESTQ DI, DI							
  traffic_opposite.go:280	0xe3f139		7454			JE 0xe3f18f							
  traffic_opposite.go:280	0xe3f13b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:280	0xe3f140		4885db			TESTQ BX, BX							
  traffic_opposite.go:280	0xe3f143		744a			JE 0xe3f18f							
  traffic_opposite.go:279	0xe3f145		48899c24f8000000	MOVQ BX, 0xf8(SP)						
  traffic_opposite.go:279	0xe3f14d		4889842430010000	MOVQ AX, 0x130(SP)						
  traffic_opposite.go:280	0xe3f155		4839fb			CMPQ BX, DI							
  traffic_opposite.go:280	0xe3f158		7404			JE 0xe3f15e							
  traffic_opposite.go:280	0xe3f15a		31c9			XORL CX, CX							
  traffic_opposite.go:280	0xe3f15c		eb2d			JMP 0xe3f18b							
  traffic_opposite.go:280	0xe3f15e		4889c3			MOVQ AX, BX							
  traffic_opposite.go:280	0xe3f161		4889f9			MOVQ DI, CX							
  traffic_opposite.go:280	0xe3f164		488b842438010000	MOVQ 0x138(SP), AX						
  traffic_opposite.go:280	0xe3f16c		e8ef3c5cff		CALL runtime.memequal(SB)					
  traffic_opposite.go:283	0xe3f171		488b9c24f8000000	MOVQ 0xf8(SP), BX						
  traffic_opposite.go:283	0xe3f179		488bbc2400010000	MOVQ 0x100(SP), DI						
  traffic_opposite.go:280	0xe3f181		89c1			MOVL AX, CX							
  traffic_opposite.go:283	0xe3f183		488b842430010000	MOVQ 0x130(SP), AX						
  traffic_opposite.go:280	0xe3f18b		84c9			TESTL CL, CL							
  traffic_opposite.go:280	0xe3f18d		740b			JE 0xe3f19a							
  traffic_opposite.go:281	0xe3f18f		31c0			XORL AX, AX							
  traffic_opposite.go:281	0xe3f191		4881c450020000		ADDQ $__file_alignment__+80(SB), SP				
  traffic_opposite.go:281	0xe3f198		5d			POPQ BP								
  traffic_opposite.go:281	0xe3f199		c3			RET								
  traffic_opposite.go:283	0xe3f19a		488d059fe72300		LEAQ runtime.types+624960(SB), AX				
  traffic_opposite.go:283	0xe3f1a1		488d9c2420020000	LEAQ 0x220(SP), BX						
  traffic_opposite.go:283	0xe3f1a9		488b8c2438010000	MOVQ 0x138(SP), CX						
  traffic_opposite.go:283	0xe3f1b1		e88a515dff		CALL runtime.mapaccess1_faststr(SB)				
  traffic_opposite.go:283	0xe3f1b6		803800			CMPB 0(AX), $0x0						
  traffic_opposite.go:283	0xe3f1b9		7429			JE 0xe3f1e4							
  traffic_opposite.go:283	0xe3f1bb		488d057ee72300		LEAQ runtime.types+624960(SB), AX				
  traffic_opposite.go:283	0xe3f1c2		488d9c2420020000	LEAQ 0x220(SP), BX						
  traffic_opposite.go:283	0xe3f1ca		488b8c2430010000	MOVQ 0x130(SP), CX						
  traffic_opposite.go:283	0xe3f1d2		488bbc24f8000000	MOVQ 0xf8(SP), DI						
  traffic_opposite.go:283	0xe3f1da		e861515dff		CALL runtime.mapaccess1_faststr(SB)				
  traffic_opposite.go:283	0xe3f1df		803800			CMPB 0(AX), $0x0						
  traffic_opposite.go:283	0xe3f1e2		750b			JNE 0xe3f1ef							
  traffic_opposite.go:284	0xe3f1e4		31c0			XORL AX, AX							
  traffic_opposite.go:284	0xe3f1e6		4881c450020000		ADDQ $__file_alignment__+80(SB), SP				
  traffic_opposite.go:284	0xe3f1ed		5d			POPQ BP								
  traffic_opposite.go:284	0xe3f1ee		c3			RET								
  traffic_opposite.go:286	0xe3f1ef		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_opposite.go:286	0xe3f1f4		4881c450020000		ADDQ $__file_alignment__+80(SB), SP				
  traffic_opposite.go:286	0xe3f1fb		5d			POPQ BP								
  traffic_opposite.go:286	0xe3f1fc		c3			RET								
  traffic_opposite.go:270	0xe3f1fd		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_opposite.go:270	0xe3f202		4881c450020000		ADDQ $__file_alignment__+80(SB), SP				
  traffic_opposite.go:270	0xe3f209		5d			POPQ BP								
  traffic_opposite.go:270	0xe3f20a		c3			RET								
  traffic_opposite.go:264	0xe3f20b		31c0			XORL AX, AX							
  traffic_opposite.go:264	0xe3f20d		4881c450020000		ADDQ $__file_alignment__+80(SB), SP				
  traffic_opposite.go:264	0xe3f214		5d			POPQ BP								
  traffic_opposite.go:264	0xe3f215		c3			RET								
  traffic_opposite.go:260	0xe3f216		48898424d8000000	MOVQ AX, 0xd8(SP)						
  traffic_opposite.go:260	0xe3f21e		6690			NOPW								
  traffic_opposite.go:260	0xe3f220		e8bb7263ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_opposite.go:260	0xe3f225		488b8424d8000000	MOVQ 0xd8(SP), AX						
  traffic_opposite.go:260	0xe3f22d		e98ef9ffff		JMP CAS-Backend/pkg/diapdu.vehiclesOppositeInConflict(SB)	
  :-1				0xe3f232		cc			INT $__subsystem__(SB)						
  :-1				0xe3f233		cc			INT $__subsystem__(SB)						
  :-1				0xe3f234		cc			INT $__subsystem__(SB)						
  :-1				0xe3f235		cc			INT $__subsystem__(SB)						
  :-1				0xe3f236		cc			INT $__subsystem__(SB)						
  :-1				0xe3f237		cc			INT $__subsystem__(SB)						
  :-1				0xe3f238		cc			INT $__subsystem__(SB)						
  :-1				0xe3f239		cc			INT $__subsystem__(SB)						
  :-1				0xe3f23a		cc			INT $__subsystem__(SB)						
  :-1				0xe3f23b		cc			INT $__subsystem__(SB)						
  :-1				0xe3f23c		cc			INT $__subsystem__(SB)						
  :-1				0xe3f23d		cc			INT $__subsystem__(SB)						
  :-1				0xe3f23e		cc			INT $__subsystem__(SB)						
  :-1				0xe3f23f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.shouldPauseForOpposite(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:289	0xe3f240		4c8da424d8feffff	LEAQ 0xfffffed8(SP), R12					
  traffic_opposite.go:289	0xe3f248		4d3b6610		CMPQ R12, 0x10(R14)						
  traffic_opposite.go:289	0xe3f24c		0f8601040000		JBE 0xe3f653							
  traffic_opposite.go:289	0xe3f252		55			PUSHQ BP							
  traffic_opposite.go:289	0xe3f253		4889e5			MOVQ SP, BP							
  traffic_opposite.go:289	0xe3f256		4881eca0010000		SUBQ $.file+339(SB), SP						
  traffic_opposite.go:290	0xe3f25d		80bc24f801000000	CMPB 0x1f8(SP), $0x0						
  traffic_opposite.go:290	0xe3f265		0f84d7030000		JE 0xe3f642							
  traffic_opposite.go:290	0xe3f26b		80bc246002000000	CMPB 0x260(SP), $0x0						
  traffic_opposite.go:290	0xe3f273		0f84c9030000		JE 0xe3f642							
  traffic_opposite.go:290	0xe3f279		4889842480020000	MOVQ AX, 0x280(SP)						
  traffic_opposite.go:290	0xe3f281		488b8c24b8010000	MOVQ 0x1b8(SP), CX						
  traffic_opposite.go:290	0xe3f289		48398c2420020000	CMPQ 0x220(SP), CX						
  traffic_opposite.go:290	0xe3f291		7404			JE 0xe3f297							
  traffic_opposite.go:290	0xe3f293		31c9			XORL CX, CX							
  traffic_opposite.go:290	0xe3f295		eb1f			JMP 0xe3f2b6							
  traffic_opposite.go:290	0xe3f297		488b8424b0010000	MOVQ 0x1b0(SP), AX						
  traffic_opposite.go:290	0xe3f29f		488b9c2418020000	MOVQ 0x218(SP), BX						
  traffic_opposite.go:290	0xe3f2a7		e8b43b5cff		CALL runtime.memequal(SB)					
  traffic_opposite.go:290	0xe3f2ac		89c1			MOVL AX, CX							
  traffic_opposite.go:189	0xe3f2ae		488b842480020000	MOVQ 0x280(SP), AX						
  traffic_opposite.go:290	0xe3f2b6		84c9			TESTL CL, CL							
  traffic_opposite.go:290	0xe3f2b8		0f8584030000		JNE 0xe3f642							
  traffic_opposite.go:189	0xe3f2be		488b8c24b0010000	MOVQ 0x1b0(SP), CX						
  traffic_opposite.go:189	0xe3f2c6		48890c24		MOVQ CX, 0(SP)							
  traffic_opposite.go:189	0xe3f2ca		488d7c2408		LEAQ 0x8(SP), DI						
  traffic_opposite.go:189	0xe3f2cf		488db424b8010000	LEAQ 0x1b8(SP), SI						
  traffic_opposite.go:189	0xe3f2d7		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:189	0xe3f2e0		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:189	0xe3f2e5		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:189	0xe3f2ea		e85d9b63ff		CALL 0x478e4c							
  traffic_opposite.go:189	0xe3f2ef		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:189	0xe3f2f3		e848e5ffff		CALL CAS-Backend/pkg/diapdu.winnerClearedOppositeZone(SB)	
  traffic_opposite.go:189	0xe3f2f8		0f1f840000000000	NOPL 0(AX)(AX*1)						
  traffic_opposite.go:189	0xe3f300		84c0			TESTL AL, AL							
  traffic_opposite.go:294	0xe3f302		0f852f030000		JNE 0xe3f637							
  traffic_opposite.go:297	0xe3f308		488b8c24b0010000	MOVQ 0x1b0(SP), CX						
  traffic_opposite.go:297	0xe3f310		48890c24		MOVQ CX, 0(SP)							
  traffic_opposite.go:297	0xe3f314		488d7c2408		LEAQ 0x8(SP), DI						
  traffic_opposite.go:297	0xe3f319		488db424b8010000	LEAQ 0x1b8(SP), SI						
  traffic_opposite.go:297	0xe3f321		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:297	0xe3f326		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:297	0xe3f32b		e81c9b63ff		CALL 0x478e4c							
  traffic_opposite.go:297	0xe3f330		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:297	0xe3f334		488b8c2418020000	MOVQ 0x218(SP), CX						
  traffic_opposite.go:297	0xe3f33c		48894c2468		MOVQ CX, 0x68(SP)						
  traffic_opposite.go:297	0xe3f341		488d7c2470		LEAQ 0x70(SP), DI						
  traffic_opposite.go:297	0xe3f346		488db42420020000	LEAQ 0x220(SP), SI						
  traffic_opposite.go:297	0xe3f34e		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:297	0xe3f357		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:297	0xe3f360		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:297	0xe3f365		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:297	0xe3f36a		e8dd9a63ff		CALL 0x478e4c							
  traffic_opposite.go:297	0xe3f36f		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:297	0xe3f373		488b842480020000	MOVQ 0x280(SP), AX						
  traffic_opposite.go:297	0xe3f37b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:297	0xe3f380		e83bf8ffff		CALL CAS-Backend/pkg/diapdu.vehiclesOppositeInConflict(SB)	
  traffic_opposite.go:297	0xe3f385		84c0			TESTL AL, AL							
  traffic_opposite.go:297	0xe3f387		0f849f020000		JE 0xe3f62c							
  traffic_opposite.go:300	0xe3f38d		488b8c2418020000	MOVQ 0x218(SP), CX						
  traffic_opposite.go:300	0xe3f395		48898c2428010000	MOVQ CX, 0x128(SP)						
  traffic_opposite.go:300	0xe3f39d		488dbc2430010000	LEAQ 0x130(SP), DI						
  traffic_opposite.go:300	0xe3f3a5		488db42420020000	LEAQ 0x220(SP), SI						
  traffic_opposite.go:300	0xe3f3ad		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:300	0xe3f3b6		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:300	0xe3f3bf		90			NOPL								
  traffic_opposite.go:300	0xe3f3c0		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:300	0xe3f3c5		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:300	0xe3f3ca		e87d9a63ff		CALL 0x478e4c							
  traffic_opposite.go:300	0xe3f3cf		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:122	0xe3f3d3		80bc247001000000	CMPB 0x170(SP), $0x0						
  traffic_opposite.go:122	0xe3f3db		744c			JE 0xe3f429							
  traffic_opposite.go:125	0xe3f3dd		488b8c2418020000	MOVQ 0x218(SP), CX						
  traffic_opposite.go:125	0xe3f3e5		48890c24		MOVQ CX, 0(SP)							
  traffic_opposite.go:125	0xe3f3e9		488d7c2408		LEAQ 0x8(SP), DI						
  traffic_opposite.go:125	0xe3f3ee		488db42420020000	LEAQ 0x220(SP), SI						
  traffic_opposite.go:125	0xe3f3f6		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:125	0xe3f3ff		90			NOPL								
  traffic_opposite.go:125	0xe3f400		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:125	0xe3f405		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:125	0xe3f40a		e83d9a63ff		CALL 0x478e4c							
  traffic_opposite.go:125	0xe3f40f		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:125	0xe3f413		488b842480020000	MOVQ 0x280(SP), AX						
  traffic_opposite.go:125	0xe3f41b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:125	0xe3f420		e81be4ffff		CALL CAS-Backend/pkg/diapdu.winnerClearedOppositeZone(SB)	
  traffic_opposite.go:125	0xe3f425		84c0			TESTL AL, AL							
  traffic_opposite.go:300	0xe3f427		740b			JE 0xe3f434							
  traffic_opposite.go:301	0xe3f429		31c0			XORL AX, AX							
  traffic_opposite.go:301	0xe3f42b		4881c4a0010000		ADDQ $.file+339(SB), SP						
  traffic_opposite.go:301	0xe3f432		5d			POPQ BP								
  traffic_opposite.go:301	0xe3f433		c3			RET								
  traffic_opposite.go:303	0xe3f434		488b9424b0010000	MOVQ 0x1b0(SP), DX						
  traffic_opposite.go:303	0xe3f43c		4889942428010000	MOVQ DX, 0x128(SP)						
  traffic_opposite.go:303	0xe3f444		488dbc2430010000	LEAQ 0x130(SP), DI						
  traffic_opposite.go:303	0xe3f44c		488db424b8010000	LEAQ 0x1b8(SP), SI						
  traffic_opposite.go:303	0xe3f454		660f1f840000000000	NOPW 0(AX)(AX*1)						
  traffic_opposite.go:303	0xe3f45d		0f1f00			NOPL 0(AX)							
  traffic_opposite.go:303	0xe3f460		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:303	0xe3f465		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:303	0xe3f46a		e8dd9963ff		CALL 0x478e4c							
  traffic_opposite.go:303	0xe3f46f		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:89	0xe3f473		80bc247001000000	CMPB 0x170(SP), $0x0						
  traffic_opposite.go:89	0xe3f47b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:89	0xe3f480		0f84e2000000		JE 0xe3f568							
  traffic_opposite.go:92	0xe3f486		488b842438010000	MOVQ 0x138(SP), AX						
  traffic_opposite.go:92	0xe3f48e		4889842498010000	MOVQ AX, 0x198(SP)						
  traffic_opposite.go:92	0xe3f496		488b9c2440010000	MOVQ 0x140(SP), BX						
  traffic_opposite.go:92	0xe3f49e		48899c2420010000	MOVQ BX, 0x120(SP)						
  traffic_opposite.go:92	0xe3f4a6		488b8c2448010000	MOVQ 0x148(SP), CX						
  traffic_opposite.go:92	0xe3f4ae		48898c2490010000	MOVQ CX, 0x190(SP)						
  traffic_opposite.go:92	0xe3f4b6		488bbc2450010000	MOVQ 0x150(SP), DI						
  traffic_opposite.go:92	0xe3f4be		4889bc2418010000	MOVQ DI, 0x118(SP)						
  traffic.go:35			0xe3f4c6		e8b5355cff		CALL runtime.cmpstring(SB)					
  traffic.go:35			0xe3f4cb		4885c0			TESTQ AX, AX							
  traffic.go:35			0xe3f4ce		7d3b			JGE 0xe3f50b							
  traffic.go:36			0xe3f4d0		488d8424f8000000	LEAQ 0xf8(SP), AX						
  traffic.go:36			0xe3f4d8		488b9c2498010000	MOVQ 0x198(SP), BX						
  traffic.go:36			0xe3f4e0		488b8c2420010000	MOVQ 0x120(SP), CX						
  traffic.go:36			0xe3f4e8		488d3d1b903200		LEAQ go:string.*+2(SB), DI					
  traffic.go:36			0xe3f4ef		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:36			0xe3f4f4		4c8b842490010000	MOVQ 0x190(SP), R8						
  traffic.go:36			0xe3f4fc		4c8b8c2418010000	MOVQ 0x118(SP), R9						
  traffic.go:36			0xe3f504		e8975f61ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:92	0xe3f509		eb3a			JMP 0xe3f545							
  traffic.go:38			0xe3f50b		488d8424d8000000	LEAQ 0xd8(SP), AX						
  traffic.go:38			0xe3f513		488b9c2490010000	MOVQ 0x190(SP), BX						
  traffic.go:38			0xe3f51b		488b8c2418010000	MOVQ 0x118(SP), CX						
  traffic.go:38			0xe3f523		488d3de08f3200		LEAQ go:string.*+2(SB), DI					
  traffic.go:38			0xe3f52a		be01000000		MOVL $__minor_os_version__(SB), SI				
  traffic.go:38			0xe3f52f		4c8b842498010000	MOVQ 0x198(SP), R8						
  traffic.go:38			0xe3f537		4c8b8c2420010000	MOVQ 0x120(SP), R9						
  traffic.go:38			0xe3f53f		90			NOPL								
  traffic.go:38			0xe3f540		e85b5f61ff		CALL runtime.concatstring3(SB)					
  traffic_opposite.go:92	0xe3f545		4889c1			MOVQ AX, CX							
  traffic_opposite.go:92	0xe3f548		4889df			MOVQ BX, DI							
  traffic_opposite.go:92	0xe3f54b		488d058ee02300		LEAQ runtime.types+624096(SB), AX				
  traffic_opposite.go:92	0xe3f552		488b9c2480020000	MOVQ 0x280(SP), BX						
  traffic_opposite.go:92	0xe3f55a		e8e1e662ff		CALL runtime.mapaccess2_faststr(SB)				
  traffic_opposite.go:92	0xe3f55f		90			NOPL								
  traffic_opposite.go:92	0xe3f560		84db			TESTL BL, BL							
  traffic_opposite.go:303	0xe3f562		0f85b6000000		JNE 0xe3f61e							
  traffic_opposite.go:306	0xe3f568		488b8c24b0010000	MOVQ 0x1b0(SP), CX						
  traffic_opposite.go:306	0xe3f570		48890c24		MOVQ CX, 0(SP)							
  traffic_opposite.go:306	0xe3f574		488d7c2408		LEAQ 0x8(SP), DI						
  traffic_opposite.go:306	0xe3f579		488db424b8010000	LEAQ 0x1b8(SP), SI						
  traffic_opposite.go:306	0xe3f581		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_opposite.go:306	0xe3f586		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_opposite.go:306	0xe3f58b		e8bc9863ff		CALL 0x478e4c							
  traffic_opposite.go:306	0xe3f590		488b6d00		MOVQ 0(BP), BP							
  traffic_opposite.go:306	0xe3f594		488b842480020000	MOVQ 0x280(SP), AX						
  traffic_opposite.go:306	0xe3f59c		0f1f4000		NOPL 0(AX)							
  traffic_opposite.go:306	0xe3f5a0		e83bf1ffff		CALL CAS-Backend/pkg/diapdu.nextConflictWaveEdgeIndex(SB)	
  traffic_opposite.go:306	0xe3f5a5		84db			TESTL BL, BL							
  traffic_opposite.go:307	0xe3f5a7		746a			JE 0xe3f613							
  traffic_opposite.go:307	0xe3f5a9		488b8c2408020000	MOVQ 0x208(SP), CX						
  traffic_opposite.go:307	0xe3f5b1		4839c8			CMPQ AX, CX							
  traffic_opposite.go:307	0xe3f5b4		7d5d			JGE 0xe3f613							
  traffic_opposite.go:310	0xe3f5b6		0f8391000000		JAE 0xe3f64d							
  traffic_opposite.go:307	0xe3f5bc		488b942400020000	MOVQ 0x200(SP), DX						
  traffic_opposite.go:310	0xe3f5c4		48c1e004		SHLQ $__subsystem__+1(SB), AX					
  traffic_opposite.go:310	0xe3f5c8		488b740208		MOVQ 0x8(DX)(AX*1), SI						
  traffic_opposite.go:310	0xe3f5cd		488b1c02		MOVQ 0(DX)(AX*1), BX						
  traffic_opposite.go:312	0xe3f5d1		4885f6			TESTQ SI, SI							
  traffic_opposite.go:312	0xe3f5d4		7432			JE 0xe3f608							
  traffic_opposite.go:312	0xe3f5d6		488b8c24d8010000	MOVQ 0x1d8(SP), CX						
  traffic_opposite.go:312	0xe3f5de		6690			NOPW								
  traffic_opposite.go:312	0xe3f5e0		4839f1			CMPQ CX, SI							
  traffic_opposite.go:312	0xe3f5e3		7404			JE 0xe3f5e9							
  traffic_opposite.go:312	0xe3f5e5		31c0			XORL AX, AX							
  traffic_opposite.go:312	0xe3f5e7		eb0d			JMP 0xe3f5f6							
  traffic_opposite.go:312	0xe3f5e9		488b8424d0010000	MOVQ 0x1d0(SP), AX						
  traffic_opposite.go:312	0xe3f5f1		e86a385cff		CALL runtime.memequal(SB)					
  traffic_opposite.go:312	0xe3f5f6		84c0			TESTL AL, AL							
  traffic_opposite.go:312	0xe3f5f8		740e			JE 0xe3f608							
  traffic_opposite.go:313	0xe3f5fa		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_opposite.go:313	0xe3f5ff		4881c4a0010000		ADDQ $.file+339(SB), SP						
  traffic_opposite.go:313	0xe3f606		5d			POPQ BP								
  traffic_opposite.go:313	0xe3f607		c3			RET								
  traffic_opposite.go:315	0xe3f608		31c0			XORL AX, AX							
  traffic_opposite.go:315	0xe3f60a		4881c4a0010000		ADDQ $.file+339(SB), SP						
  traffic_opposite.go:315	0xe3f611		5d			POPQ BP								
  traffic_opposite.go:315	0xe3f612		c3			RET								
  traffic_opposite.go:308	0xe3f613		31c0			XORL AX, AX							
  traffic_opposite.go:308	0xe3f615		4881c4a0010000		ADDQ $.file+339(SB), SP						
  traffic_opposite.go:308	0xe3f61c		5d			POPQ BP								
  traffic_opposite.go:308	0xe3f61d		c3			RET								
  traffic_opposite.go:304	0xe3f61e		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_opposite.go:304	0xe3f623		4881c4a0010000		ADDQ $.file+339(SB), SP						
  traffic_opposite.go:304	0xe3f62a		5d			POPQ BP								
  traffic_opposite.go:304	0xe3f62b		c3			RET								
  traffic_opposite.go:298	0xe3f62c		31c0			XORL AX, AX							
  traffic_opposite.go:298	0xe3f62e		4881c4a0010000		ADDQ $.file+339(SB), SP						
  traffic_opposite.go:298	0xe3f635		5d			POPQ BP								
  traffic_opposite.go:298	0xe3f636		c3			RET								
  traffic_opposite.go:295	0xe3f637		31c0			XORL AX, AX							
  traffic_opposite.go:295	0xe3f639		4881c4a0010000		ADDQ $.file+339(SB), SP						
  traffic_opposite.go:295	0xe3f640		5d			POPQ BP								
  traffic_opposite.go:295	0xe3f641		c3			RET								
  traffic_opposite.go:291	0xe3f642		31c0			XORL AX, AX							
  traffic_opposite.go:291	0xe3f644		4881c4a0010000		ADDQ $.file+339(SB), SP						
  traffic_opposite.go:291	0xe3f64b		5d			POPQ BP								
  traffic_opposite.go:291	0xe3f64c		c3			RET								
  traffic_opposite.go:310	0xe3f64d		e88e9163ff		CALL runtime.panicIndex(SB)					
  traffic_opposite.go:310	0xe3f652		90			NOPL								
  traffic_opposite.go:289	0xe3f653		48898424d8000000	MOVQ AX, 0xd8(SP)						
  traffic_opposite.go:289	0xe3f65b		0f1f440000		NOPL 0(AX)(AX*1)						
  traffic_opposite.go:289	0xe3f660		e87b6e63ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_opposite.go:289	0xe3f665		488b8424d8000000	MOVQ 0xd8(SP), AX						
  traffic_opposite.go:289	0xe3f66d		e9cefbffff		JMP CAS-Backend/pkg/diapdu.shouldPauseForOpposite(SB)		
  :-1				0xe3f672		cc			INT $__subsystem__(SB)						
  :-1				0xe3f673		cc			INT $__subsystem__(SB)						
  :-1				0xe3f674		cc			INT $__subsystem__(SB)						
  :-1				0xe3f675		cc			INT $__subsystem__(SB)						
  :-1				0xe3f676		cc			INT $__subsystem__(SB)						
  :-1				0xe3f677		cc			INT $__subsystem__(SB)						
  :-1				0xe3f678		cc			INT $__subsystem__(SB)						
  :-1				0xe3f679		cc			INT $__subsystem__(SB)						
  :-1				0xe3f67a		cc			INT $__subsystem__(SB)						
  :-1				0xe3f67b		cc			INT $__subsystem__(SB)						
  :-1				0xe3f67c		cc			INT $__subsystem__(SB)						
  :-1				0xe3f67d		cc			INT $__subsystem__(SB)						
  :-1				0xe3f67e		cc			INT $__subsystem__(SB)						
  :-1				0xe3f67f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.findOppositeConflicts(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:318	0xe3f680		4c8da424b0feffff	LEAQ 0xfffffeb0(SP), R12				
  traffic_opposite.go:318	0xe3f688		4d3b6610		CMPQ R12, 0x10(R14)					
  traffic_opposite.go:318	0xe3f68c		0f8634030000		JBE 0xe3f9c6						
  traffic_opposite.go:318	0xe3f692		55			PUSHQ BP						
  traffic_opposite.go:318	0xe3f693		4889e5			MOVQ SP, BP						
  traffic_opposite.go:318	0xe3f696		4881ecc8010000		SUBQ $.file+379(SB), SP					
  traffic_opposite.go:320	0xe3f69d		48898424d8010000	MOVQ AX, 0x1d8(SP)					
  traffic_opposite.go:320	0xe3f6a5		48899c24e0010000	MOVQ BX, 0x1e0(SP)					
  traffic_opposite.go:320	0xe3f6ad		31c9			XORL CX, CX						
  traffic_opposite.go:320	0xe3f6af		31d2			XORL DX, DX						
  traffic_opposite.go:320	0xe3f6b1		31f6			XORL SI, SI						
  traffic_opposite.go:320	0xe3f6b3		31ff			XORL DI, DI						
  traffic_opposite.go:320	0xe3f6b5		eb03			JMP 0xe3f6ba						
  traffic_opposite.go:320	0xe3f6b7		4c89c1			MOVQ R8, CX						
  traffic_opposite.go:320	0xe3f6ba		4839cb			CMPQ BX, CX						
  traffic_opposite.go:320	0xe3f6bd		7e13			JLE 0xe3f6d2						
  traffic_opposite.go:320	0xe3f6bf		48894c2458		MOVQ CX, 0x58(SP)					
  traffic_opposite.go:321	0xe3f6c4		4c8d4901		LEAQ 0x1(CX), R9					
  traffic_opposite.go:321	0xe3f6c8		4c894c2450		MOVQ R9, 0x50(SP)					
  traffic_opposite.go:321	0xe3f6cd		4d89c8			MOVQ R9, R8						
  traffic_opposite.go:321	0xe3f6d0		eb46			JMP 0xe3f718						
  traffic_opposite.go:335	0xe3f6d2		4889f8			MOVQ DI, AX						
  traffic_opposite.go:335	0xe3f6d5		4889f3			MOVQ SI, BX						
  traffic_opposite.go:335	0xe3f6d8		4889d1			MOVQ DX, CX						
  traffic_opposite.go:335	0xe3f6db		4881c4c8010000		ADDQ $.file+379(SB), SP					
  traffic_opposite.go:335	0xe3f6e2		5d			POPQ BP							
  traffic_opposite.go:335	0xe3f6e3		c3			RET							
  traffic_opposite.go:321	0xe3f6e4		4c8b4c2470		MOVQ 0x70(SP), R9					
  traffic_opposite.go:321	0xe3f6e9		49ffc1			INCQ R9							
  traffic_opposite.go:321	0xe3f6ec		4c8b9424e0010000	MOVQ 0x1e0(SP), R10					
  traffic_opposite.go:321	0xe3f6f4		4c8b9c24d8010000	MOVQ 0x1d8(SP), R11					
  traffic_opposite.go:321	0xe3f6fc		4c8b642458		MOVQ 0x58(SP), R12					
  traffic_opposite.go:320	0xe3f701		4c8b442450		MOVQ 0x50(SP), R8					
  traffic_opposite.go:327	0xe3f706		4889ca			MOVQ CX, DX						
  traffic_opposite.go:327	0xe3f709		4889c7			MOVQ AX, DI						
  traffic_opposite.go:327	0xe3f70c		4889de			MOVQ BX, SI						
  traffic_opposite.go:322	0xe3f70f		4c89d8			MOVQ R11, AX						
  traffic_opposite.go:322	0xe3f712		4c89e1			MOVQ R12, CX						
  traffic_opposite.go:321	0xe3f715		4c89d3			MOVQ R10, BX						
  traffic_opposite.go:321	0xe3f718		4c39cb			CMPQ BX, R9						
  traffic_opposite.go:321	0xe3f71b		7e9a			JLE 0xe3f6b7						
  traffic_opposite.go:322	0xe3f71d		4c6bd168		IMULQ $.file+27(SB), CX, R10				
  traffic_opposite.go:322	0xe3f721		4d8b1c02		MOVQ 0(R10)(AX*1), R11					
  traffic_opposite.go:322	0xe3f725		4c899c24f0000000	MOVQ R11, 0xf0(SP)					
  traffic_opposite.go:322	0xe3f72d		4d8d1402		LEAQ 0(R10)(AX*1), R10					
  traffic_opposite.go:322	0xe3f731		4d8d5208		LEAQ 0x8(R10), R10					
  traffic_opposite.go:327	0xe3f735		4989fb			MOVQ DI, R11						
  traffic_opposite.go:322	0xe3f738		488dbc24f8000000	LEAQ 0xf8(SP), DI					
  traffic_opposite.go:327	0xe3f740		4989f4			MOVQ SI, R12						
  traffic_opposite.go:322	0xe3f743		4c89d6			MOVQ R10, SI						
  traffic_opposite.go:322	0xe3f746		48896c24f0		MOVQ BP, -0x10(SP)					
  traffic_opposite.go:322	0xe3f74b		488d6c24f0		LEAQ -0x10(SP), BP					
  traffic_opposite.go:322	0xe3f750		e8f79663ff		CALL 0x478e4c						
  traffic_opposite.go:322	0xe3f755		488b6d00		MOVQ 0(BP), BP						
  traffic_opposite.go:321	0xe3f759		0f1f8000000000		NOPL 0(AX)						
  traffic_opposite.go:321	0xe3f760		4c39cb			CMPQ BX, R9						
  traffic_opposite.go:322	0xe3f763		0f864f020000		JBE 0xe3f9b8						
  traffic_opposite.go:327	0xe3f769		4889542448		MOVQ DX, 0x48(SP)					
  traffic_opposite.go:321	0xe3f76e		4c894c2470		MOVQ R9, 0x70(SP)					
  traffic_opposite.go:327	0xe3f773		4c89642468		MOVQ R12, 0x68(SP)					
  traffic_opposite.go:327	0xe3f778		4c899c2458010000	MOVQ R11, 0x158(SP)					
  traffic_opposite.go:322	0xe3f780		496bd168		IMULQ $.file+27(SB), R9, DX				
  traffic_opposite.go:322	0xe3f784		4c8b1402		MOVQ 0(DX)(AX*1), R10					
  traffic_opposite.go:322	0xe3f788		4c89942488000000	MOVQ R10, 0x88(SP)					
  traffic_opposite.go:322	0xe3f790		488d3402		LEAQ 0(DX)(AX*1), SI					
  traffic_opposite.go:322	0xe3f794		488d7608		LEAQ 0x8(SI), SI					
  traffic_opposite.go:322	0xe3f798		488dbc2490000000	LEAQ 0x90(SP), DI					
  traffic_opposite.go:322	0xe3f7a0		48896c24f0		MOVQ BP, -0x10(SP)					
  traffic_opposite.go:322	0xe3f7a5		488d6c24f0		LEAQ -0x10(SP), BP					
  traffic_opposite.go:322	0xe3f7aa		e89d9663ff		CALL 0x478e4c						
  traffic_opposite.go:322	0xe3f7af		488b6d00		MOVQ 0(BP), BP						
  traffic_opposite.go:323	0xe3f7b3		488b942440010000	MOVQ 0x140(SP), DX					
  traffic_opposite.go:323	0xe3f7bb		488b9c2448010000	MOVQ 0x148(SP), BX					
  traffic_opposite.go:323	0xe3f7c3		488b8c2450010000	MOVQ 0x150(SP), CX					
  traffic_opposite.go:323	0xe3f7cb		488bbc24d8000000	MOVQ 0xd8(SP), DI					
  traffic_opposite.go:323	0xe3f7d3		488bb424e0000000	MOVQ 0xe0(SP), SI					
  traffic_opposite.go:323	0xe3f7db		4c8b8424e8000000	MOVQ 0xe8(SP), R8					
  traffic_opposite.go:323	0xe3f7e3		4889d0			MOVQ DX, AX						
  traffic_opposite.go:323	0xe3f7e6		e815d7ffff		CALL CAS-Backend/pkg/diapdu.oppositeConflictEdges(SB)	
  traffic_opposite.go:324	0xe3f7eb		4885c0			TESTQ AX, AX						
  traffic_opposite.go:324	0xe3f7ee		7405			JE 0xe3f7f5						
  traffic_opposite.go:324	0xe3f7f0		488b10			MOVQ 0(AX), DX						
  traffic_opposite.go:324	0xe3f7f3		eb02			JMP 0xe3f7f7						
  traffic_opposite.go:324	0xe3f7f5		31d2			XORL DX, DX						
  traffic_opposite.go:324	0xe3f7f7		4885d2			TESTQ DX, DX						
  traffic_opposite.go:324	0xe3f7fa		7517			JNE 0xe3f813						
  traffic_opposite.go:327	0xe3f7fc		488b5c2468		MOVQ 0x68(SP), BX					
  traffic_opposite.go:327	0xe3f801		488b4c2448		MOVQ 0x48(SP), CX					
  traffic_opposite.go:327	0xe3f806		488b842458010000	MOVQ 0x158(SP), AX					
  traffic_opposite.go:325	0xe3f80e		e9d1feffff		JMP 0xe3f6e4						
  traffic_opposite.go:323	0xe3f813		4889842480000000	MOVQ AX, 0x80(SP)					
  traffic_opposite.go:331	0xe3f81b		0f1f440000		NOPL 0(AX)(AX*1)					
  traffic_opposite.go:331	0xe3f820		e8bbdbffff		CALL CAS-Backend/pkg/diapdu.conflictZoneEndpoints(SB)	
  traffic_opposite.go:327	0xe3f825		488b5c2468		MOVQ 0x68(SP), BX					
  traffic_opposite.go:327	0xe3f82a		48ffc3			INCQ BX							
  traffic_opposite.go:331	0xe3f82d		0f100424		MOVUPS 0(SP), X0					
  traffic_opposite.go:331	0xe3f831		0f118424a8010000	MOVUPS X0, 0x1a8(SP)					
  traffic_opposite.go:331	0xe3f839		0f10442410		MOVUPS 0x10(SP), X0					
  traffic_opposite.go:331	0xe3f83e		0f118424b8010000	MOVUPS X0, 0x1b8(SP)					
  traffic_opposite.go:327	0xe3f846		440f11bc2460010000	MOVUPS X15, 0x160(SP)					
  traffic_opposite.go:327	0xe3f84f		440f11bc2468010000	MOVUPS X15, 0x168(SP)					
  traffic_opposite.go:327	0xe3f858		440f11bc2478010000	MOVUPS X15, 0x178(SP)					
  traffic_opposite.go:327	0xe3f861		440f11bc2488010000	MOVUPS X15, 0x188(SP)					
  traffic_opposite.go:327	0xe3f86a		440f11bc2498010000	MOVUPS X15, 0x198(SP)					
  traffic_opposite.go:328	0xe3f873		488b8c24f0000000	MOVQ 0xf0(SP), CX					
  traffic_opposite.go:328	0xe3f87b		488b9424f8000000	MOVQ 0xf8(SP), DX					
  traffic_opposite.go:328	0xe3f883		48898c2460010000	MOVQ CX, 0x160(SP)					
  traffic_opposite.go:328	0xe3f88b		4889942468010000	MOVQ DX, 0x168(SP)					
  traffic_opposite.go:329	0xe3f893		488b8c2488000000	MOVQ 0x88(SP), CX					
  traffic_opposite.go:329	0xe3f89b		488b942490000000	MOVQ 0x90(SP), DX					
  traffic_opposite.go:329	0xe3f8a3		48898c2470010000	MOVQ CX, 0x170(SP)					
  traffic_opposite.go:329	0xe3f8ab		4889942478010000	MOVQ DX, 0x178(SP)					
  traffic_opposite.go:330	0xe3f8b3		488b8c2480000000	MOVQ 0x80(SP), CX					
  traffic_opposite.go:330	0xe3f8bb		48898c2480010000	MOVQ CX, 0x180(SP)					
  traffic_opposite.go:331	0xe3f8c3		0f108424a8010000	MOVUPS 0x1a8(SP), X0					
  traffic_opposite.go:331	0xe3f8cb		0f11842488010000	MOVUPS X0, 0x188(SP)					
  traffic_opposite.go:331	0xe3f8d3		0f108424b8010000	MOVUPS 0x1b8(SP), X0					
  traffic_opposite.go:331	0xe3f8db		0f11842498010000	MOVUPS X0, 0x198(SP)					
  traffic_opposite.go:327	0xe3f8e3		488b4c2448		MOVQ 0x48(SP), CX					
  traffic_opposite.go:327	0xe3f8e8		4839d9			CMPQ CX, BX						
  traffic_opposite.go:327	0xe3f8eb		720a			JB 0xe3f8f7						
  traffic_opposite.go:327	0xe3f8ed		488b842458010000	MOVQ 0x158(SP), AX					
  traffic_opposite.go:327	0xe3f8f5		eb19			JMP 0xe3f910						
  traffic_opposite.go:327	0xe3f8f7		488b842458010000	MOVQ 0x158(SP), AX					
  traffic_opposite.go:327	0xe3f8ff		bf01000000		MOVL $__minor_os_version__(SB), DI			
  traffic_opposite.go:327	0xe3f904		488d3555642b00		LEAQ runtime.types+1117536(SB), SI			
  traffic_opposite.go:327	0xe3f90b		e8302363ff		CALL runtime.growslice(SB)				
  traffic_opposite.go:327	0xe3f910		488d14db		LEAQ 0(BX)(BX*8), DX					
  traffic_opposite.go:327	0xe3f914		4c8d0cd0		LEAQ 0(AX)(DX*8), R9					
  traffic_opposite.go:327	0xe3f918		4d8d49b8		LEAQ -0x48(R9), R9					
  traffic_opposite.go:327	0xe3f91c		833d2de2710200		CMPL runtime.writeBarrier(SB), $0x0			
  traffic_opposite.go:327	0xe3f923		743f			JE 0xe3f964						
  traffic_opposite.go:327	0xe3f925		4889442478		MOVQ AX, 0x78(SP)					
  traffic_opposite.go:327	0xe3f92a		48895c2440		MOVQ BX, 0x40(SP)					
  traffic_opposite.go:327	0xe3f92f		48894c2460		MOVQ CX, 0x60(SP)					
  traffic_opposite.go:327	0xe3f934		4889542468		MOVQ DX, 0x68(SP)					
  traffic_opposite.go:327	0xe3f939		488d0520642b00		LEAQ runtime.types+1117536(SB), AX			
  traffic_opposite.go:327	0xe3f940		4c89cb			MOVQ R9, BX						
  traffic_opposite.go:327	0xe3f943		488d8c2460010000	LEAQ 0x160(SP), CX					
  traffic_opposite.go:327	0xe3f94b		e8d0555dff		CALL runtime.wbMove(SB)					
  traffic_opposite.go:327	0xe3f950		488b442478		MOVQ 0x78(SP), AX					
  traffic_opposite.go:327	0xe3f955		488b4c2460		MOVQ 0x60(SP), CX					
  traffic_opposite.go:327	0xe3f95a		488b542468		MOVQ 0x68(SP), DX					
  traffic_opposite.go:327	0xe3f95f		488b5c2440		MOVQ 0x40(SP), BX					
  traffic_opposite.go:327	0xe3f964		4c8d0cd0		LEAQ 0(AX)(DX*8), R9					
  traffic_opposite.go:327	0xe3f968		4d8d49c0		LEAQ -0x40(R9), R9					
  traffic_opposite.go:327	0xe3f96c		4c8d14d0		LEAQ 0(AX)(DX*8), R10					
  traffic_opposite.go:327	0xe3f970		4d8d52e0		LEAQ -0x20(R10), R10					
  traffic_opposite.go:327	0xe3f974		4c8b9c2460010000	MOVQ 0x160(SP), R11					
  traffic_opposite.go:327	0xe3f97c		4c895cd0b8		MOVQ R11, -0x48(AX)(DX*8)				
  traffic_opposite.go:327	0xe3f981		0f10842468010000	MOVUPS 0x168(SP), X0					
  traffic_opposite.go:327	0xe3f989		410f1101		MOVUPS X0, 0(R9)					
  traffic_opposite.go:327	0xe3f98d		0f10842478010000	MOVUPS 0x178(SP), X0					
  traffic_opposite.go:327	0xe3f995		410f114110		MOVUPS X0, 0x10(R9)					
  traffic_opposite.go:327	0xe3f99a		0f10842488010000	MOVUPS 0x188(SP), X0					
  traffic_opposite.go:327	0xe3f9a2		410f1102		MOVUPS X0, 0(R10)					
  traffic_opposite.go:327	0xe3f9a6		0f10842498010000	MOVUPS 0x198(SP), X0					
  traffic_opposite.go:327	0xe3f9ae		410f114210		MOVUPS X0, 0x10(R10)					
  traffic_opposite.go:327	0xe3f9b3		e92cfdffff		JMP 0xe3f6e4						
  traffic_opposite.go:322	0xe3f9b8		4c89c8			MOVQ R9, AX						
  traffic_opposite.go:322	0xe3f9bb		4889d9			MOVQ BX, CX						
  traffic_opposite.go:322	0xe3f9be		6690			NOPW							
  traffic_opposite.go:322	0xe3f9c0		e81b8e63ff		CALL runtime.panicIndex(SB)				
  traffic_opposite.go:322	0xe3f9c5		90			NOPL							
  traffic_opposite.go:318	0xe3f9c6		4889442408		MOVQ AX, 0x8(SP)					
  traffic_opposite.go:318	0xe3f9cb		48895c2410		MOVQ BX, 0x10(SP)					
  traffic_opposite.go:318	0xe3f9d0		48894c2418		MOVQ CX, 0x18(SP)					
  traffic_opposite.go:318	0xe3f9d5		e8066b63ff		CALL runtime.morestack_noctxt.abi0(SB)			
  traffic_opposite.go:318	0xe3f9da		488b442408		MOVQ 0x8(SP), AX					
  traffic_opposite.go:318	0xe3f9df		488b5c2410		MOVQ 0x10(SP), BX					
  traffic_opposite.go:318	0xe3f9e4		488b4c2418		MOVQ 0x18(SP), CX					
  traffic_opposite.go:318	0xe3f9e9		e992fcffff		JMP CAS-Backend/pkg/diapdu.findOppositeConflicts(SB)	
  :-1				0xe3f9ee		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9ef		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9f0		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9f1		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9f2		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9f3		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9f4		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9f5		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9f6		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9f7		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9f8		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9f9		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9fa		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9fb		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9fc		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9fd		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9fe		cc			INT $__subsystem__(SB)					
  :-1				0xe3f9ff		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).pruneOppositeEnter(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:339	0xe3fa00		4c8da42480faffff	LEAQ 0xfffffa80(SP), R12							
  traffic_opposite.go:339	0xe3fa08		4d3b6610		CMPQ R12, 0x10(R14)								
  traffic_opposite.go:339	0xe3fa0c		0f8621050000		JBE 0xe3ff33									
  traffic_opposite.go:339	0xe3fa12		55			PUSHQ BP									
  traffic_opposite.go:339	0xe3fa13		4889e5			MOVQ SP, BP									
  traffic_opposite.go:339	0xe3fa16		4881ecf8050000		SUBQ $__file_alignment__+1016(SB), SP						
  traffic_opposite.go:339	0xe3fa1d		48899c2410060000	MOVQ BX, 0x610(SP)								
  traffic_opposite.go:339	0xe3fa25		4889b42428060000	MOVQ SI, 0x628(SP)								
  traffic_opposite.go:340	0xe3fa2d		4883783000		CMPQ 0x30(AX), $0x0								
  traffic_opposite.go:340	0xe3fa32		0f84aa000000		JE 0xe3fae2									
  traffic_opposite.go:340	0xe3fa38		4889842408060000	MOVQ AX, 0x608(SP)								
  traffic_opposite.go:340	0xe3fa40		4889b42428060000	MOVQ SI, 0x628(SP)								
  traffic_opposite.go:340	0xe3fa48		4c89842430060000	MOVQ R8, 0x630(SP)								
  traffic_opposite.go:340	0xe3fa50		48899c2410060000	MOVQ BX, 0x610(SP)								
  traffic_opposite.go:343	0xe3fa58		440f11bc2460050000	MOVUPS X15, 0x560(SP)								
  traffic_opposite.go:343	0xe3fa61		440f11bc2470050000	MOVUPS X15, 0x570(SP)								
  traffic_opposite.go:343	0xe3fa6a		440f11bc2480050000	MOVUPS X15, 0x580(SP)								
  traffic_opposite.go:343	0xe3fa73		4883f908		CMPQ CX, $__major_os_version__+2(SB)						
  traffic_opposite.go:343	0xe3fa77		7f2f			JG 0xe3faa8									
  traffic_opposite.go:343	0xe3fa79		488dbc2490010000	LEAQ 0x190(SP), DI								
  traffic_opposite.go:343	0xe3fa81		488d7fd0		LEAQ -0x30(DI), DI								
  traffic_opposite.go:343	0xe3fa85		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:343	0xe3fa8a		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:343	0xe3fa8f		e81a8f63ff		CALL 0x4789ae									
  traffic_opposite.go:343	0xe3fa94		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:343	0xe3fa98		488d942490010000	LEAQ 0x190(SP), DX								
  traffic_opposite.go:343	0xe3faa0		4889942470050000	MOVQ DX, 0x570(SP)								
  traffic_opposite.go:340	0xe3faa8		48898c2418060000	MOVQ CX, 0x618(SP)								
  traffic_opposite.go:343	0xe3fab0		488d0569dd2300		LEAQ runtime.types+624672(SB), AX						
  traffic_opposite.go:343	0xe3fab7		4889cb			MOVQ CX, BX									
  traffic_opposite.go:343	0xe3faba		488d8c2460050000	LEAQ 0x560(SP), CX								
  traffic_opposite.go:343	0xe3fac2		e859b562ff		CALL runtime.makemap(SB)							
  traffic_opposite.go:343	0xe3fac7		48898424f0000000	MOVQ AX, 0xf0(SP)								
  traffic_opposite.go:344	0xe3facf		488b942410060000	MOVQ 0x610(SP), DX								
  traffic_opposite.go:344	0xe3fad7		488b8c2418060000	MOVQ 0x618(SP), CX								
  traffic_opposite.go:344	0xe3fadf		90			NOPL										
  traffic_opposite.go:344	0xe3fae0		eb52			JMP 0xe3fb34									
  traffic_opposite.go:341	0xe3fae2		4881c4f8050000		ADDQ $__file_alignment__+1016(SB), SP						
  traffic_opposite.go:341	0xe3fae9		5d			POPQ BP										
  traffic_opposite.go:341	0xe3faea		c3			RET										
  traffic_opposite.go:345	0xe3faeb		4c8b842490050000	MOVQ 0x590(SP), R8								
  traffic_opposite.go:345	0xe3faf3		4c8900			MOVQ R8, 0(AX)									
  traffic_opposite.go:345	0xe3faf6		488d7808		LEAQ 0x8(AX), DI								
  traffic_opposite.go:345	0xe3fafa		488db42498050000	LEAQ 0x598(SP), SI								
  traffic_opposite.go:345	0xe3fb02		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:345	0xe3fb07		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:345	0xe3fb0c		e83b9363ff		CALL 0x478e4c									
  traffic_opposite.go:345	0xe3fb11		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:344	0xe3fb15		488b942468010000	MOVQ 0x168(SP), DX								
  traffic_opposite.go:344	0xe3fb1d		4883c268		ADDQ $.file+27(SB), DX								
  traffic_opposite.go:344	0xe3fb21		488b8c24d8000000	MOVQ 0xd8(SP), CX								
  traffic_opposite.go:344	0xe3fb29		48ffc9			DECQ CX										
  traffic_opposite.go:345	0xe3fb2c		488b8424f0000000	MOVQ 0xf0(SP), AX								
  traffic_opposite.go:344	0xe3fb34		4885c9			TESTQ CX, CX									
  traffic_opposite.go:344	0xe3fb37		0f8e95000000		JLE 0xe3fbd2									
  traffic_opposite.go:344	0xe3fb3d		48898c24d8000000	MOVQ CX, 0xd8(SP)								
  traffic_opposite.go:344	0xe3fb45		4889942468010000	MOVQ DX, 0x168(SP)								
  traffic_opposite.go:344	0xe3fb4d		4c8b02			MOVQ 0(DX), R8									
  traffic_opposite.go:344	0xe3fb50		4c89842490050000	MOVQ R8, 0x590(SP)								
  traffic_opposite.go:344	0xe3fb58		488d7208		LEAQ 0x8(DX), SI								
  traffic_opposite.go:344	0xe3fb5c		488dbc2498050000	LEAQ 0x598(SP), DI								
  traffic_opposite.go:344	0xe3fb64		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:344	0xe3fb69		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:344	0xe3fb6e		e8d99263ff		CALL 0x478e4c									
  traffic_opposite.go:344	0xe3fb73		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:345	0xe3fb77		488b8c2490050000	MOVQ 0x590(SP), CX								
  traffic_opposite.go:345	0xe3fb7f		488bbc2498050000	MOVQ 0x598(SP), DI								
  traffic_opposite.go:345	0xe3fb87		4889c3			MOVQ AX, BX									
  traffic_opposite.go:345	0xe3fb8a		488d058fdc2300		LEAQ runtime.types+624672(SB), AX						
  traffic_opposite.go:345	0xe3fb91		e88ae462ff		CALL runtime.mapassign_faststr(SB)						
  traffic_opposite.go:345	0xe3fb96		8400			TESTB AL, 0(AX)									
  traffic_opposite.go:345	0xe3fb98		833db1df710200		CMPL runtime.writeBarrier(SB), $0x0						
  traffic_opposite.go:345	0xe3fb9f		90			NOPL										
  traffic_opposite.go:345	0xe3fba0		0f8445ffffff		JE 0xe3faeb									
  traffic_opposite.go:345	0xe3fba6		4889842460010000	MOVQ AX, 0x160(SP)								
  traffic_opposite.go:345	0xe3fbae		4889c3			MOVQ AX, BX									
  traffic_opposite.go:345	0xe3fbb1		488d8c2490050000	LEAQ 0x590(SP), CX								
  traffic_opposite.go:345	0xe3fbb9		488d0500dd2d00		LEAQ runtime.types+1280192(SB), AX						
  traffic_opposite.go:345	0xe3fbc0		e85b535dff		CALL runtime.wbMove(SB)								
  traffic_opposite.go:345	0xe3fbc5		488b842460010000	MOVQ 0x160(SP), AX								
  traffic_opposite.go:345	0xe3fbcd		e919ffffff		JMP 0xe3faeb									
  traffic_opposite.go:347	0xe3fbd2		488b942428060000	MOVQ 0x628(SP), DX								
  traffic_opposite.go:347	0xe3fbda		488b8c2430060000	MOVQ 0x630(SP), CX								
  traffic_opposite.go:347	0xe3fbe2		eb1f			JMP 0xe3fc03									
  traffic_opposite.go:347	0xe3fbe4		488b942468010000	MOVQ 0x168(SP), DX								
  traffic_opposite.go:347	0xe3fbec		4883c248		ADDQ $__major_os_version__+66(SB), DX						
  traffic_opposite.go:347	0xe3fbf0		488b8c24d8000000	MOVQ 0xd8(SP), CX								
  traffic_opposite.go:347	0xe3fbf8		48ffc9			DECQ CX										
  traffic_opposite.go:354	0xe3fbfb		488b8424f0000000	MOVQ 0xf0(SP), AX								
  traffic_opposite.go:347	0xe3fc03		4885c9			TESTQ CX, CX									
  traffic_opposite.go:347	0xe3fc06		0f8eaf010000		JLE 0xe3fdbb									
  traffic_opposite.go:347	0xe3fc0c		48898c24d8000000	MOVQ CX, 0xd8(SP)								
  traffic_opposite.go:347	0xe3fc14		4889942468010000	MOVQ DX, 0x168(SP)								
  traffic_opposite.go:347	0xe3fc1c		488b32			MOVQ 0(DX), SI									
  traffic_opposite.go:347	0xe3fc1f		4889b42400010000	MOVQ SI, 0x100(SP)								
  traffic_opposite.go:347	0xe3fc27		0f104208		MOVUPS 0x8(DX), X0								
  traffic_opposite.go:347	0xe3fc2b		0f11842408010000	MOVUPS X0, 0x108(SP)								
  traffic_opposite.go:347	0xe3fc33		0f104218		MOVUPS 0x18(DX), X0								
  traffic_opposite.go:347	0xe3fc37		0f11842418010000	MOVUPS X0, 0x118(SP)								
  traffic_opposite.go:347	0xe3fc3f		0f104228		MOVUPS 0x28(DX), X0								
  traffic_opposite.go:347	0xe3fc43		0f11842428010000	MOVUPS X0, 0x128(SP)								
  traffic_opposite.go:347	0xe3fc4b		0f104238		MOVUPS 0x38(DX), X0								
  traffic_opposite.go:347	0xe3fc4f		0f11842438010000	MOVUPS X0, 0x138(SP)								
  traffic_opposite.go:348	0xe3fc57		488b842400010000	MOVQ 0x100(SP), AX								
  traffic_opposite.go:348	0xe3fc5f		4889842450010000	MOVQ AX, 0x150(SP)								
  traffic_opposite.go:348	0xe3fc67		488b9c2408010000	MOVQ 0x108(SP), BX								
  traffic_opposite.go:348	0xe3fc6f		48899c24c8000000	MOVQ BX, 0xc8(SP)								
  traffic_opposite.go:348	0xe3fc77		488b8c2410010000	MOVQ 0x110(SP), CX								
  traffic_opposite.go:348	0xe3fc7f		48898c2448010000	MOVQ CX, 0x148(SP)								
  traffic_opposite.go:348	0xe3fc87		488bbc2418010000	MOVQ 0x118(SP), DI								
  traffic_opposite.go:348	0xe3fc8f		4889bc24c0000000	MOVQ DI, 0xc0(SP)								
  traffic_opposite.go:82	0xe3fc97		e8e42d5cff		CALL runtime.cmpstring(SB)							
  traffic_opposite.go:82	0xe3fc9c		0f1f4000		NOPL 0(AX)									
  traffic_opposite.go:82	0xe3fca0		4885c0			TESTQ AX, AX									
  traffic_opposite.go:82	0xe3fca3		7d3d			JGE 0xe3fce2									
  traffic_opposite.go:83	0xe3fca5		488d842490000000	LEAQ 0x90(SP), AX								
  traffic_opposite.go:83	0xe3fcad		488b9c2450010000	MOVQ 0x150(SP), BX								
  traffic_opposite.go:83	0xe3fcb5		488b8c24c8000000	MOVQ 0xc8(SP), CX								
  traffic_opposite.go:83	0xe3fcbd		488d3dfc4f0202		LEAQ runtime.gcbits.*+512(SB), DI						
  traffic_opposite.go:83	0xe3fcc4		be01000000		MOVL $__minor_os_version__(SB), SI						
  traffic_opposite.go:83	0xe3fcc9		4c8b842448010000	MOVQ 0x148(SP), R8								
  traffic_opposite.go:83	0xe3fcd1		4c8b8c24c0000000	MOVQ 0xc0(SP), R9								
  traffic_opposite.go:83	0xe3fcd9		e8c25761ff		CALL runtime.concatstring3(SB)							
  traffic_opposite.go:83	0xe3fcde		6690			NOPW										
  traffic_opposite.go:348	0xe3fce0		eb36			JMP 0xe3fd18									
  traffic_opposite.go:85	0xe3fce2		488d442470		LEAQ 0x70(SP), AX								
  traffic_opposite.go:85	0xe3fce7		488b9c2448010000	MOVQ 0x148(SP), BX								
  traffic_opposite.go:85	0xe3fcef		488b8c24c0000000	MOVQ 0xc0(SP), CX								
  traffic_opposite.go:85	0xe3fcf7		488d3dc24f0202		LEAQ runtime.gcbits.*+512(SB), DI						
  traffic_opposite.go:85	0xe3fcfe		be01000000		MOVL $__minor_os_version__(SB), SI						
  traffic_opposite.go:85	0xe3fd03		4c8b842450010000	MOVQ 0x150(SP), R8								
  traffic_opposite.go:85	0xe3fd0b		4c8b8c24c8000000	MOVQ 0xc8(SP), R9								
  traffic_opposite.go:85	0xe3fd13		e8885761ff		CALL runtime.concatstring3(SB)							
  traffic_opposite.go:348	0xe3fd18		48899c24b0000000	MOVQ BX, 0xb0(SP)								
  traffic_opposite.go:348	0xe3fd20		48898424e0000000	MOVQ AX, 0xe0(SP)								
  traffic_opposite.go:349	0xe3fd28		488b942408060000	MOVQ 0x608(SP), DX								
  traffic_opposite.go:349	0xe3fd30		488b7230		MOVQ 0x30(DX), SI								
  traffic_opposite.go:349	0xe3fd34		4889c1			MOVQ AX, CX									
  traffic_opposite.go:349	0xe3fd37		4889df			MOVQ BX, DI									
  traffic_opposite.go:349	0xe3fd3a		488d057fdd2300		LEAQ runtime.types+625344(SB), AX						
  traffic_opposite.go:349	0xe3fd41		4889f3			MOVQ SI, BX									
  traffic_opposite.go:349	0xe3fd44		e8f7455dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_opposite.go:349	0xe3fd49		488b10			MOVQ 0(AX), DX									
  traffic_opposite.go:350	0xe3fd4c		4885d2			TESTQ DX, DX									
  traffic_opposite.go:350	0xe3fd4f		0f848ffeffff		JE 0xe3fbe4									
  traffic_opposite.go:349	0xe3fd55		48899424f8000000	MOVQ DX, 0xf8(SP)								
  traffic_opposite.go:353	0xe3fd5d		440f11bc2470010000	MOVUPS X15, 0x170(SP)								
  traffic_opposite.go:353	0xe3fd66		440f11bc2480010000	MOVUPS X15, 0x180(SP)								
  traffic_opposite.go:353	0xe3fd6f		488bb42400010000	MOVQ 0x100(SP), SI								
  traffic_opposite.go:353	0xe3fd77		4c8b842408010000	MOVQ 0x108(SP), R8								
  traffic_opposite.go:353	0xe3fd7f		4c89842478010000	MOVQ R8, 0x178(SP)								
  traffic_opposite.go:353	0xe3fd87		4889b42470010000	MOVQ SI, 0x170(SP)								
  traffic_opposite.go:353	0xe3fd8f		488bb42410010000	MOVQ 0x110(SP), SI								
  traffic_opposite.go:353	0xe3fd97		4c8b842418010000	MOVQ 0x118(SP), R8								
  traffic_opposite.go:353	0xe3fd9f		4c89842488010000	MOVQ R8, 0x188(SP)								
  traffic_opposite.go:353	0xe3fda7		4889b42480010000	MOVQ SI, 0x180(SP)								
  traffic_opposite.go:353	0xe3fdaf		488db42470010000	LEAQ 0x170(SP), SI								
  traffic_opposite.go:353	0xe3fdb7		31c0			XORL AX, AX									
  traffic_opposite.go:353	0xe3fdb9		eb28			JMP 0xe3fde3									
  traffic_opposite.go:364	0xe3fdbb		4881c4f8050000		ADDQ $__file_alignment__+1016(SB), SP						
  traffic_opposite.go:364	0xe3fdc2		5d			POPQ BP										
  traffic_opposite.go:364	0xe3fdc3		c3			RET										
  traffic_opposite.go:353	0xe3fdc4		488bb42458010000	MOVQ 0x158(SP), SI								
  traffic_opposite.go:353	0xe3fdcc		4883c610		ADDQ $__major_os_version__+10(SB), SI						
  traffic_opposite.go:353	0xe3fdd0		488b8424d0000000	MOVQ 0xd0(SP), AX								
  traffic_opposite.go:353	0xe3fdd8		48ffc0			INCQ AX										
  traffic_opposite.go:360	0xe3fddb		488b9424f8000000	MOVQ 0xf8(SP), DX								
  traffic_opposite.go:353	0xe3fde3		4883f802		CMPQ AX, $__minor_os_version__+1(SB)						
  traffic_opposite.go:353	0xe3fde7		0f8d09010000		JGE 0xe3fef6									
  traffic_opposite.go:353	0xe3fded		48898424d0000000	MOVQ AX, 0xd0(SP)								
  traffic_opposite.go:353	0xe3fdf5		4889b42458010000	MOVQ SI, 0x158(SP)								
  traffic_opposite.go:353	0xe3fdfd		488b0e			MOVQ 0(SI), CX									
  traffic_opposite.go:353	0xe3fe00		48898c24e8000000	MOVQ CX, 0xe8(SP)								
  traffic_opposite.go:353	0xe3fe08		488b5608		MOVQ 0x8(SI), DX								
  traffic_opposite.go:353	0xe3fe0c		48899424b8000000	MOVQ DX, 0xb8(SP)								
  traffic_opposite.go:354	0xe3fe14		440f11bc2490050000	MOVUPS X15, 0x590(SP)								
  traffic_opposite.go:354	0xe3fe1d		488dbc2498050000	LEAQ 0x598(SP), DI								
  traffic_opposite.go:354	0xe3fe25		488d7fe0		LEAQ -0x20(DI), DI								
  traffic_opposite.go:354	0xe3fe29		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:354	0xe3fe2e		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:354	0xe3fe33		e8b38c63ff		CALL 0x478aeb									
  traffic_opposite.go:354	0xe3fe38		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:354	0xe3fe3c		488d05ddd92300		LEAQ runtime.types+624672(SB), AX						
  traffic_opposite.go:354	0xe3fe43		488b9c24f0000000	MOVQ 0xf0(SP), BX								
  traffic_opposite.go:354	0xe3fe4b		4889d7			MOVQ DX, DI									
  traffic_opposite.go:354	0xe3fe4e		e8eddd62ff		CALL runtime.mapaccess2_faststr(SB)						
  traffic_opposite.go:354	0xe3fe53		488b10			MOVQ 0(AX), DX									
  traffic_opposite.go:354	0xe3fe56		488d7008		LEAQ 0x8(AX), SI								
  traffic_opposite.go:354	0xe3fe5a		4889942490050000	MOVQ DX, 0x590(SP)								
  traffic_opposite.go:354	0xe3fe62		488dbc2498050000	LEAQ 0x598(SP), DI								
  traffic_opposite.go:354	0xe3fe6a		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:354	0xe3fe6f		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:354	0xe3fe74		e8d38f63ff		CALL 0x478e4c									
  traffic_opposite.go:354	0xe3fe79		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:354	0xe3fe7d		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:354	0xe3fe80		84db			TESTL BL, BL									
  traffic_opposite.go:355	0xe3fe82		0f843cffffff		JE 0xe3fdc4									
  traffic_opposite.go:355	0xe3fe88		488b8c2490050000	MOVQ 0x590(SP), CX								
  traffic_opposite.go:355	0xe3fe90		488b842420010000	MOVQ 0x120(SP), AX								
  traffic_opposite.go:355	0xe3fe98		48890c24		MOVQ CX, 0(SP)									
  traffic_opposite.go:355	0xe3fe9c		488d7c2408		LEAQ 0x8(SP), DI								
  traffic_opposite.go:355	0xe3fea1		488db42498050000	LEAQ 0x598(SP), SI								
  traffic_opposite.go:355	0xe3fea9		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:355	0xe3feae		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:355	0xe3feb3		e8948f63ff		CALL 0x478e4c									
  traffic_opposite.go:355	0xe3feb8		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:355	0xe3febc		0f1f4000		NOPL 0(AX)									
  traffic_opposite.go:355	0xe3fec0		e81be3ffff		CALL CAS-Backend/pkg/diapdu.vehicleExitedCurrentConflictWave(SB)		
  traffic_opposite.go:355	0xe3fec5		84c0			TESTL AL, AL									
  traffic_opposite.go:355	0xe3fec7		0f84f7feffff		JE 0xe3fdc4									
  traffic_opposite.go:358	0xe3fecd		488d058cdb2300		LEAQ runtime.types+625248(SB), AX						
  traffic_opposite.go:358	0xe3fed4		488b9c24f8000000	MOVQ 0xf8(SP), BX								
  traffic_opposite.go:358	0xe3fedc		488b8c24e8000000	MOVQ 0xe8(SP), CX								
  traffic_opposite.go:358	0xe3fee4		488bbc24b8000000	MOVQ 0xb8(SP), DI								
  traffic_opposite.go:358	0xe3feec		e80f485dff		CALL runtime.mapdelete_faststr(SB)						
  traffic_opposite.go:358	0xe3fef1		e9cefeffff		JMP 0xe3fdc4									
  traffic_opposite.go:360	0xe3fef6		48833a00		CMPQ 0(DX), $0x0								
  traffic_opposite.go:360	0xe3fefa		660f1f440000		NOPW 0(AX)(AX*1)								
  traffic_opposite.go:360	0xe3ff00		0f85defcffff		JNE 0xe3fbe4									
  traffic_opposite.go:361	0xe3ff06		488b942408060000	MOVQ 0x608(SP), DX								
  traffic_opposite.go:361	0xe3ff0e		488b5a30		MOVQ 0x30(DX), BX								
  traffic_opposite.go:361	0xe3ff12		488d05a7db2300		LEAQ runtime.types+625344(SB), AX						
  traffic_opposite.go:361	0xe3ff19		488b8c24e0000000	MOVQ 0xe0(SP), CX								
  traffic_opposite.go:361	0xe3ff21		488bbc24b0000000	MOVQ 0xb0(SP), DI								
  traffic_opposite.go:361	0xe3ff29		e8d2475dff		CALL runtime.mapdelete_faststr(SB)						
  traffic_opposite.go:361	0xe3ff2e		e9b1fcffff		JMP 0xe3fbe4									
  traffic_opposite.go:339	0xe3ff33		4889442408		MOVQ AX, 0x8(SP)								
  traffic_opposite.go:339	0xe3ff38		48895c2410		MOVQ BX, 0x10(SP)								
  traffic_opposite.go:339	0xe3ff3d		48894c2418		MOVQ CX, 0x18(SP)								
  traffic_opposite.go:339	0xe3ff42		48897c2420		MOVQ DI, 0x20(SP)								
  traffic_opposite.go:339	0xe3ff47		4889742428		MOVQ SI, 0x28(SP)								
  traffic_opposite.go:339	0xe3ff4c		4c89442430		MOVQ R8, 0x30(SP)								
  traffic_opposite.go:339	0xe3ff51		4c894c2438		MOVQ R9, 0x38(SP)								
  traffic_opposite.go:339	0xe3ff56		e8856563ff		CALL runtime.morestack_noctxt.abi0(SB)						
  traffic_opposite.go:339	0xe3ff5b		488b442408		MOVQ 0x8(SP), AX								
  traffic_opposite.go:339	0xe3ff60		488b5c2410		MOVQ 0x10(SP), BX								
  traffic_opposite.go:339	0xe3ff65		488b4c2418		MOVQ 0x18(SP), CX								
  traffic_opposite.go:339	0xe3ff6a		488b7c2420		MOVQ 0x20(SP), DI								
  traffic_opposite.go:339	0xe3ff6f		488b742428		MOVQ 0x28(SP), SI								
  traffic_opposite.go:339	0xe3ff74		4c8b442430		MOVQ 0x30(SP), R8								
  traffic_opposite.go:339	0xe3ff79		4c8b4c2438		MOVQ 0x38(SP), R9								
  traffic_opposite.go:339	0xe3ff7e		6690			NOPW										
  traffic_opposite.go:339	0xe3ff80		e97bfaffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).pruneOppositeEnter(SB)	
  :-1				0xe3ff85		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff86		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff87		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff88		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff89		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff8a		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff8b		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff8c		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff8d		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff8e		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff8f		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff90		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff91		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff92		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff93		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff94		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff95		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff96		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff97		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff98		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff99		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff9a		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff9b		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff9c		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff9d		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff9e		cc			INT $__subsystem__(SB)								
  :-1				0xe3ff9f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).touchOppositeEnter(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:366	0xe3ffa0		4c8da42458feffff	LEAQ 0xfffffe58(SP), R12							
  traffic_opposite.go:366	0xe3ffa8		4d3b6610		CMPQ R12, 0x10(R14)								
  traffic_opposite.go:366	0xe3ffac		0f8600060000		JBE 0xe405b2									
  traffic_opposite.go:366	0xe3ffb2		55			PUSHQ BP									
  traffic_opposite.go:366	0xe3ffb3		4889e5			MOVQ SP, BP									
  traffic_opposite.go:366	0xe3ffb6		4881ec20020000		SUBQ $__file_alignment__+32(SB), SP						
  traffic_opposite.go:367	0xe3ffbd		4889842430020000	MOVQ AX, 0x230(SP)								
  traffic_opposite.go:367	0xe3ffc5		4c89842458020000	MOVQ R8, 0x258(SP)								
  traffic_opposite.go:367	0xe3ffcd		4889b42450020000	MOVQ SI, 0x250(SP)								
  traffic_opposite.go:367	0xe3ffd5		48898c2440020000	MOVQ CX, 0x240(SP)								
  traffic_opposite.go:367	0xe3ffdd		48899c2438020000	MOVQ BX, 0x238(SP)								
  traffic_opposite.go:367	0xe3ffe5		4883783000		CMPQ 0x30(AX), $0x0								
  traffic_opposite.go:367	0xe3ffea		7534			JNE 0xe40020									
  traffic_opposite.go:368	0xe3ffec		e8efaf62ff		CALL runtime.makemap_small(SB)							
  traffic_opposite.go:368	0xe3fff1		833d58db710200		CMPL runtime.writeBarrier(SB), $0x0						
  traffic_opposite.go:368	0xe3fff8		750a			JNE 0xe40004									
  traffic_opposite.go:368	0xe3fffa		488b8c2430020000	MOVQ 0x230(SP), CX								
  traffic_opposite.go:368	0xe40002		eb18			JMP 0xe4001c									
  traffic_opposite.go:368	0xe40004		e8378463ff		CALL runtime.gcWriteBarrier2(SB)						
  traffic_opposite.go:368	0xe40009		498903			MOVQ AX, 0(R11)									
  traffic_opposite.go:368	0xe4000c		488b8c2430020000	MOVQ 0x230(SP), CX								
  traffic_opposite.go:368	0xe40014		488b5130		MOVQ 0x30(CX), DX								
  traffic_opposite.go:368	0xe40018		49895308		MOVQ DX, 0x8(R11)								
  traffic_opposite.go:368	0xe4001c		48894130		MOVQ AX, 0x30(CX)								
  traffic_opposite.go:370	0xe40020		e87be066ff		CALL time.Now(SB)								
  time.go:181			0xe40025		480fbae03f		BTQ $__major_os_version__+57(SB), AX						
  time.go:181			0xe4002a		731a			JAE 0xe40046									
  time.go:182			0xe4002c		4889c2			MOVQ AX, DX									
  time.go:182			0xe4002f		48d1e0			SHLQ $__minor_os_version__(SB), AX						
  time.go:182			0xe40032		48c1e81f		SHRQ $__major_os_version__+25(SB), AX						
  time.go:182			0xe40036		48be807fb1d70d000000	MOVQ $0xdd7b17f80, SI								
  time.go:182			0xe40040		488d1c30		LEAQ 0(AX)(SI*1), BX								
  time.go:188			0xe40044		eb03			JMP 0xe40049									
  time.go:176			0xe40046		4889c2			MOVQ AX, DX									
  time.go:1270			0xe40049		4869f300ca9a3b		IMULQ $0x3b9aca00, BX, SI							
  time.go:176			0xe40050		81e2ffffff3f		ANDL $0x3fffffff, DX								
  time.go:1270			0xe40056		4863d2			MOVSXD DX, DX									
  time.go:1270			0xe40059		4801f2			ADDQ SI, DX									
  traffic_opposite.go:371	0xe4005c		488bb42450020000	MOVQ 0x250(SP), SI								
  time.go:1270			0xe40064		49b900001a3deb03b2a1	MOVQ $0xa1b203eb3d1a0000, R9							
  time.go:1270			0xe4006e		4c01ca			ADDQ R9, DX									
  time.go:1270			0xe40071		4889942480000000	MOVQ DX, 0x80(SP)								
  traffic_opposite.go:371	0xe40079		488b842458020000	MOVQ 0x258(SP), AX								
  traffic_opposite.go:371	0xe40081		eb25			JMP 0xe400a8									
  traffic_opposite.go:371	0xe40083		4c8b842418020000	MOVQ 0x218(SP), R8								
  traffic_opposite.go:371	0xe4008b		4983c048		ADDQ $__major_os_version__+66(SB), R8						
  traffic_opposite.go:371	0xe4008f		4c8b8c24b0000000	MOVQ 0xb0(SP), R9								
  traffic_opposite.go:371	0xe40097		49ffc9			DECQ R9										
  traffic_opposite.go:385	0xe4009a		488b942480000000	MOVQ 0x80(SP), DX								
  traffic_opposite.go:371	0xe400a2		4c89c8			MOVQ R9, AX									
  traffic_opposite.go:371	0xe400a5		4c89c6			MOVQ R8, SI									
  traffic_opposite.go:371	0xe400a8		4885c0			TESTQ AX, AX									
  traffic_opposite.go:371	0xe400ab		0f8ee3010000		JLE 0xe40294									
  traffic_opposite.go:371	0xe400b1		48898424b0000000	MOVQ AX, 0xb0(SP)								
  traffic_opposite.go:371	0xe400b9		4889b42418020000	MOVQ SI, 0x218(SP)								
  traffic_opposite.go:371	0xe400c1		488b16			MOVQ 0(SI), DX									
  traffic_opposite.go:371	0xe400c4		48899424a0010000	MOVQ DX, 0x1a0(SP)								
  traffic_opposite.go:371	0xe400cc		0f104608		MOVUPS 0x8(SI), X0								
  traffic_opposite.go:371	0xe400d0		0f118424a8010000	MOVUPS X0, 0x1a8(SP)								
  traffic_opposite.go:371	0xe400d8		0f104618		MOVUPS 0x18(SI), X0								
  traffic_opposite.go:371	0xe400dc		0f118424b8010000	MOVUPS X0, 0x1b8(SP)								
  traffic_opposite.go:371	0xe400e4		0f104628		MOVUPS 0x28(SI), X0								
  traffic_opposite.go:371	0xe400e8		0f118424c8010000	MOVUPS X0, 0x1c8(SP)								
  traffic_opposite.go:371	0xe400f0		0f104638		MOVUPS 0x38(SI), X0								
  traffic_opposite.go:371	0xe400f4		0f118424d8010000	MOVUPS X0, 0x1d8(SP)								
  traffic_opposite.go:372	0xe400fc		488b8424a0010000	MOVQ 0x1a0(SP), AX								
  traffic_opposite.go:372	0xe40104		4889842400020000	MOVQ AX, 0x200(SP)								
  traffic_opposite.go:372	0xe4010c		488b9c24a8010000	MOVQ 0x1a8(SP), BX								
  traffic_opposite.go:372	0xe40114		48899c24a0000000	MOVQ BX, 0xa0(SP)								
  traffic_opposite.go:372	0xe4011c		488b8c24b0010000	MOVQ 0x1b0(SP), CX								
  traffic_opposite.go:372	0xe40124		48898c24f0010000	MOVQ CX, 0x1f0(SP)								
  traffic_opposite.go:372	0xe4012c		488bbc24b8010000	MOVQ 0x1b8(SP), DI								
  traffic_opposite.go:372	0xe40134		4889bc2490000000	MOVQ DI, 0x90(SP)								
  traffic_opposite.go:82	0xe4013c		0f1f4000		NOPL 0(AX)									
  traffic_opposite.go:82	0xe40140		e83b295cff		CALL runtime.cmpstring(SB)							
  traffic_opposite.go:82	0xe40145		4885c0			TESTQ AX, AX									
  traffic_opposite.go:82	0xe40148		7d35			JGE 0xe4017f									
  traffic_opposite.go:83	0xe4014a		31c0			XORL AX, AX									
  traffic_opposite.go:83	0xe4014c		488b9c2400020000	MOVQ 0x200(SP), BX								
  traffic_opposite.go:83	0xe40154		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  traffic_opposite.go:83	0xe4015c		488d3d5d4b0202		LEAQ runtime.gcbits.*+512(SB), DI						
  traffic_opposite.go:83	0xe40163		be01000000		MOVL $__minor_os_version__(SB), SI						
  traffic_opposite.go:83	0xe40168		4c8b8424f0010000	MOVQ 0x1f0(SP), R8								
  traffic_opposite.go:83	0xe40170		4c8b8c2490000000	MOVQ 0x90(SP), R9								
  traffic_opposite.go:83	0xe40178		e8235361ff		CALL runtime.concatstring3(SB)							
  traffic_opposite.go:372	0xe4017d		eb33			JMP 0xe401b2									
  traffic_opposite.go:85	0xe4017f		31c0			XORL AX, AX									
  traffic_opposite.go:85	0xe40181		488b9c24f0010000	MOVQ 0x1f0(SP), BX								
  traffic_opposite.go:85	0xe40189		488b8c2490000000	MOVQ 0x90(SP), CX								
  traffic_opposite.go:85	0xe40191		488d3d284b0202		LEAQ runtime.gcbits.*+512(SB), DI						
  traffic_opposite.go:85	0xe40198		be01000000		MOVL $__minor_os_version__(SB), SI						
  traffic_opposite.go:85	0xe4019d		4c8b842400020000	MOVQ 0x200(SP), R8								
  traffic_opposite.go:85	0xe401a5		4c8b8c24a0000000	MOVQ 0xa0(SP), R9								
  traffic_opposite.go:85	0xe401ad		e8ee5261ff		CALL runtime.concatstring3(SB)							
  traffic_opposite.go:372	0xe401b2		48895c2478		MOVQ BX, 0x78(SP)								
  traffic_opposite.go:372	0xe401b7		48898424b8000000	MOVQ AX, 0xb8(SP)								
  traffic_opposite.go:373	0xe401bf		488b942430020000	MOVQ 0x230(SP), DX								
  traffic_opposite.go:373	0xe401c7		488b7230		MOVQ 0x30(DX), SI								
  traffic_opposite.go:373	0xe401cb		4889c1			MOVQ AX, CX									
  traffic_opposite.go:373	0xe401ce		4889df			MOVQ BX, DI									
  traffic_opposite.go:373	0xe401d1		488d05e8d82300		LEAQ runtime.types+625344(SB), AX						
  traffic_opposite.go:373	0xe401d8		4889f3			MOVQ SI, BX									
  traffic_opposite.go:373	0xe401db		0f1f440000		NOPL 0(AX)(AX*1)								
  traffic_opposite.go:373	0xe401e0		e85b415dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_opposite.go:373	0xe401e5		48833800		CMPQ 0(AX), $0x0								
  traffic_opposite.go:373	0xe401e9		7561			JNE 0xe4024c									
  traffic_opposite.go:374	0xe401eb		e8f0ad62ff		CALL runtime.makemap_small(SB)							
  traffic_opposite.go:374	0xe401f0		4889842410020000	MOVQ AX, 0x210(SP)								
  traffic_opposite.go:374	0xe401f8		488b8c2430020000	MOVQ 0x230(SP), CX								
  traffic_opposite.go:374	0xe40200		488b5930		MOVQ 0x30(CX), BX								
  traffic_opposite.go:374	0xe40204		488b7c2478		MOVQ 0x78(SP), DI								
  traffic_opposite.go:374	0xe40209		488d05b0d82300		LEAQ runtime.types+625344(SB), AX						
  traffic_opposite.go:374	0xe40210		488b8c24b8000000	MOVQ 0xb8(SP), CX								
  traffic_opposite.go:374	0xe40218		e803de62ff		CALL runtime.mapassign_faststr(SB)						
  traffic_opposite.go:374	0xe4021d		8400			TESTB AL, 0(AX)									
  traffic_opposite.go:374	0xe4021f		833d2ad9710200		CMPL runtime.writeBarrier(SB), $0x0						
  traffic_opposite.go:374	0xe40226		750a			JNE 0xe40232									
  traffic_opposite.go:374	0xe40228		488b942410020000	MOVQ 0x210(SP), DX								
  traffic_opposite.go:374	0xe40230		eb17			JMP 0xe40249									
  traffic_opposite.go:374	0xe40232		e8098263ff		CALL runtime.gcWriteBarrier2(SB)						
  traffic_opposite.go:374	0xe40237		488b942410020000	MOVQ 0x210(SP), DX								
  traffic_opposite.go:374	0xe4023f		498913			MOVQ DX, 0(R11)									
  traffic_opposite.go:374	0xe40242		488b30			MOVQ 0(AX), SI									
  traffic_opposite.go:374	0xe40245		49897308		MOVQ SI, 0x8(R11)								
  traffic_opposite.go:374	0xe40249		488910			MOVQ DX, 0(AX)									
  traffic_opposite.go:376	0xe4024c		488b942430020000	MOVQ 0x230(SP), DX								
  traffic_opposite.go:376	0xe40254		488b5a30		MOVQ 0x30(DX), BX								
  traffic_opposite.go:376	0xe40258		488d0561d82300		LEAQ runtime.types+625344(SB), AX						
  traffic_opposite.go:376	0xe4025f		488b8c24b8000000	MOVQ 0xb8(SP), CX								
  traffic_opposite.go:376	0xe40267		488b7c2478		MOVQ 0x78(SP), DI								
  traffic_opposite.go:376	0xe4026c		e8cf405dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_opposite.go:376	0xe40271		488b18			MOVQ 0(AX), BX									
  traffic_opposite.go:376	0xe40274		48899c2490010000	MOVQ BX, 0x190(SP)								
  traffic_opposite.go:377	0xe4027c		488b942438020000	MOVQ 0x238(SP), DX								
  traffic_opposite.go:377	0xe40284		4889d6			MOVQ DX, SI									
  traffic_opposite.go:377	0xe40287		4c8b842440020000	MOVQ 0x240(SP), R8								
  traffic_opposite.go:367	0xe4028f		4c89c0			MOVQ R8, AX									
  traffic_opposite.go:377	0xe40292		eb13			JMP 0xe402a7									
  traffic_opposite.go:389	0xe40294		4881c420020000		ADDQ $__file_alignment__+32(SB), SP						
  traffic_opposite.go:389	0xe4029b		5d			POPQ BP										
  traffic_opposite.go:389	0xe4029c		c3			RET										
  traffic_opposite.go:377	0xe4029d		4883c268		ADDQ $.file+27(SB), DX								
  traffic_opposite.go:377	0xe402a1		49ffc8			DECQ R8										
  traffic_opposite.go:377	0xe402a4		4889ce			MOVQ CX, SI									
  traffic_opposite.go:377	0xe402a7		4d85c0			TESTQ R8, R8									
  traffic_opposite.go:377	0xe402aa		0f8ed3fdffff		JLE 0xe40083									
  traffic_opposite.go:377	0xe402b0		4c898424a8000000	MOVQ R8, 0xa8(SP)								
  traffic_opposite.go:377	0xe402b8		4889942408020000	MOVQ DX, 0x208(SP)								
  traffic_opposite.go:377	0xe402c0		4c8b0a			MOVQ 0(DX), R9									
  traffic_opposite.go:377	0xe402c3		4c898c2428010000	MOVQ R9, 0x128(SP)								
  traffic_opposite.go:377	0xe402cb		4c8d4a08		LEAQ 0x8(DX), R9								
  traffic_opposite.go:377	0xe402cf		488dbc2430010000	LEAQ 0x130(SP), DI								
  traffic_opposite.go:367	0xe402d7		4889f1			MOVQ SI, CX									
  traffic_opposite.go:377	0xe402da		4c89ce			MOVQ R9, SI									
  traffic_opposite.go:377	0xe402dd		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:377	0xe402e0		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:377	0xe402e5		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:377	0xe402ea		e85d8b63ff		CALL 0x478e4c									
  traffic_opposite.go:377	0xe402ef		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:378	0xe402f3		4c8b8c2430010000	MOVQ 0x130(SP), R9								
  traffic_opposite.go:378	0xe402fb		0f1f440000		NOPL 0(AX)(AX*1)								
  traffic_opposite.go:378	0xe40300		4c398c24a8010000	CMPQ 0x1a8(SP), R9								
  traffic_opposite.go:378	0xe40308		7407			JE 0xe40311									
  traffic_opposite.go:378	0xe4030a		be01000000		MOVL $__minor_os_version__(SB), SI						
  traffic_opposite.go:378	0xe4030f		eb45			JMP 0xe40356									
  traffic_opposite.go:378	0xe40311		488b842428010000	MOVQ 0x128(SP), AX								
  traffic_opposite.go:378	0xe40319		488b9c24a0010000	MOVQ 0x1a0(SP), BX								
  traffic_opposite.go:378	0xe40321		4c89c9			MOVQ R9, CX									
  traffic_opposite.go:378	0xe40324		e8372b5cff		CALL runtime.memequal(SB)							
  traffic_opposite.go:378	0xe40329		83f001			XORL $__minor_os_version__(SB), AX						
  traffic_opposite.go:377	0xe4032c		488b8c2438020000	MOVQ 0x238(SP), CX								
  traffic_opposite.go:377	0xe40334		488b942408020000	MOVQ 0x208(SP), DX								
  traffic_opposite.go:384	0xe4033c		488b9c2490010000	MOVQ 0x190(SP), BX								
  traffic_opposite.go:377	0xe40344		4c8b8424a8000000	MOVQ 0xa8(SP), R8								
  traffic_opposite.go:378	0xe4034c		89c6			MOVL AX, SI									
  traffic_opposite.go:377	0xe4034e		488b842440020000	MOVQ 0x240(SP), AX								
  traffic_opposite.go:378	0xe40356		4084f6			TESTL SI, SI									
  traffic_opposite.go:378	0xe40359		7460			JE 0xe403bb									
  traffic_opposite.go:378	0xe4035b		4c8b8c2430010000	MOVQ 0x130(SP), R9								
  traffic_opposite.go:378	0xe40363		4c398c24b8010000	CMPQ 0x1b8(SP), R9								
  traffic_opposite.go:378	0xe4036b		7407			JE 0xe40374									
  traffic_opposite.go:378	0xe4036d		be01000000		MOVL $__minor_os_version__(SB), SI						
  traffic_opposite.go:378	0xe40372		eb4c			JMP 0xe403c0									
  traffic_opposite.go:378	0xe40374		488b842428010000	MOVQ 0x128(SP), AX								
  traffic_opposite.go:378	0xe4037c		488b9c24b0010000	MOVQ 0x1b0(SP), BX								
  traffic_opposite.go:378	0xe40384		4c89c9			MOVQ R9, CX									
  traffic_opposite.go:378	0xe40387		e8d42a5cff		CALL runtime.memequal(SB)							
  traffic_opposite.go:378	0xe4038c		83f001			XORL $__minor_os_version__(SB), AX						
  traffic_opposite.go:377	0xe4038f		488b8c2438020000	MOVQ 0x238(SP), CX								
  traffic_opposite.go:377	0xe40397		488b942408020000	MOVQ 0x208(SP), DX								
  traffic_opposite.go:384	0xe4039f		488b9c2490010000	MOVQ 0x190(SP), BX								
  traffic_opposite.go:377	0xe403a7		4c8b8424a8000000	MOVQ 0xa8(SP), R8								
  traffic_opposite.go:378	0xe403af		89c6			MOVL AX, SI									
  traffic_opposite.go:377	0xe403b1		488b842440020000	MOVQ 0x240(SP), AX								
  traffic_opposite.go:378	0xe403b9		eb05			JMP 0xe403c0									
  traffic_opposite.go:378	0xe403bb		31f6			XORL SI, SI									
  traffic_opposite.go:378	0xe403bd		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:378	0xe403c0		4084f6			TESTL SI, SI									
  traffic_opposite.go:378	0xe403c3		0f85d4feffff		JNE 0xe4029d									
  traffic_opposite.go:381	0xe403c9		4c8b8c2428010000	MOVQ 0x128(SP), R9								
  traffic_opposite.go:381	0xe403d1		4c898c24c0000000	MOVQ R9, 0xc0(SP)								
  traffic_opposite.go:381	0xe403d9		488dbc24c8000000	LEAQ 0xc8(SP), DI								
  traffic_opposite.go:381	0xe403e1		488db42430010000	LEAQ 0x130(SP), SI								
  traffic_opposite.go:381	0xe403e9		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:381	0xe403ee		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:381	0xe403f3		e8548a63ff		CALL 0x478e4c									
  traffic_opposite.go:381	0xe403f8		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:381	0xe403fc		4c8b8c24c0010000	MOVQ 0x1c0(SP), R9								
  traffic_opposite.go:89	0xe40404		80bc240801000000	CMPB 0x108(SP), $0x0								
  traffic_opposite.go:89	0xe4040c		7507			JNE 0xe40415									
  traffic_opposite.go:89	0xe4040e		31f6			XORL SI, SI									
  traffic_opposite.go:381	0xe40410		e90c010000		JMP 0xe40521									
  traffic_opposite.go:381	0xe40415		4c898c2498010000	MOVQ R9, 0x198(SP)								
  traffic_opposite.go:92	0xe4041d		488b8424d0000000	MOVQ 0xd0(SP), AX								
  traffic_opposite.go:92	0xe40425		48898424f8010000	MOVQ AX, 0x1f8(SP)								
  traffic_opposite.go:92	0xe4042d		488b9c24d8000000	MOVQ 0xd8(SP), BX								
  traffic_opposite.go:92	0xe40435		48899c2498000000	MOVQ BX, 0x98(SP)								
  traffic_opposite.go:92	0xe4043d		488b8c24e0000000	MOVQ 0xe0(SP), CX								
  traffic_opposite.go:92	0xe40445		48898c24e8010000	MOVQ CX, 0x1e8(SP)								
  traffic_opposite.go:92	0xe4044d		488bbc24e8000000	MOVQ 0xe8(SP), DI								
  traffic_opposite.go:92	0xe40455		4889bc2488000000	MOVQ DI, 0x88(SP)								
  traffic.go:35			0xe4045d		0f1f00			NOPL 0(AX)									
  traffic.go:35			0xe40460		e81b265cff		CALL runtime.cmpstring(SB)							
  traffic.go:35			0xe40465		4885c0			TESTQ AX, AX									
  traffic.go:35			0xe40468		7d3d			JGE 0xe404a7									
  traffic.go:36			0xe4046a		488d442458		LEAQ 0x58(SP), AX								
  traffic.go:36			0xe4046f		488b9c24f8010000	MOVQ 0x1f8(SP), BX								
  traffic.go:36			0xe40477		488b8c2498000000	MOVQ 0x98(SP), CX								
  traffic.go:36			0xe4047f		488d3d84803200		LEAQ go:string.*+2(SB), DI							
  traffic.go:36			0xe40486		be01000000		MOVL $__minor_os_version__(SB), SI						
  traffic.go:36			0xe4048b		4c8b8424e8010000	MOVQ 0x1e8(SP), R8								
  traffic.go:36			0xe40493		4c8b8c2488000000	MOVQ 0x88(SP), R9								
  traffic.go:36			0xe4049b		0f1f440000		NOPL 0(AX)(AX*1)								
  traffic.go:36			0xe404a0		e8fb4f61ff		CALL runtime.concatstring3(SB)							
  traffic_opposite.go:92	0xe404a5		eb36			JMP 0xe404dd									
  traffic.go:38			0xe404a7		488d442438		LEAQ 0x38(SP), AX								
  traffic.go:38			0xe404ac		488b9c24e8010000	MOVQ 0x1e8(SP), BX								
  traffic.go:38			0xe404b4		488b8c2488000000	MOVQ 0x88(SP), CX								
  traffic.go:38			0xe404bc		488d3d47803200		LEAQ go:string.*+2(SB), DI							
  traffic.go:38			0xe404c3		be01000000		MOVL $__minor_os_version__(SB), SI						
  traffic.go:38			0xe404c8		4c8b8424f8010000	MOVQ 0x1f8(SP), R8								
  traffic.go:38			0xe404d0		4c8b8c2498000000	MOVQ 0x98(SP), R9								
  traffic.go:38			0xe404d8		e8c34f61ff		CALL runtime.concatstring3(SB)							
  traffic_opposite.go:92	0xe404dd		4889c1			MOVQ AX, CX									
  traffic_opposite.go:92	0xe404e0		4889df			MOVQ BX, DI									
  traffic_opposite.go:92	0xe404e3		488d05f6d02300		LEAQ runtime.types+624096(SB), AX						
  traffic_opposite.go:92	0xe404ea		488b9c2498010000	MOVQ 0x198(SP), BX								
  traffic_opposite.go:92	0xe404f2		e849d762ff		CALL runtime.mapaccess2_faststr(SB)						
  traffic_opposite.go:377	0xe404f7		488b842440020000	MOVQ 0x240(SP), AX								
  traffic_opposite.go:377	0xe404ff		488b8c2438020000	MOVQ 0x238(SP), CX								
  traffic_opposite.go:377	0xe40507		488b942408020000	MOVQ 0x208(SP), DX								
  traffic_opposite.go:377	0xe4050f		4c8b8424a8000000	MOVQ 0xa8(SP), R8								
  traffic_opposite.go:381	0xe40517		89de			MOVL BX, SI									
  traffic_opposite.go:384	0xe40519		488b9c2490010000	MOVQ 0x190(SP), BX								
  traffic_opposite.go:381	0xe40521		4084f6			TESTL SI, SI									
  traffic_opposite.go:381	0xe40524		0f8473fdffff		JE 0xe4029d									
  traffic_opposite.go:384	0xe4052a		488b8c2428010000	MOVQ 0x128(SP), CX								
  traffic_opposite.go:384	0xe40532		488bbc2430010000	MOVQ 0x130(SP), DI								
  traffic_opposite.go:384	0xe4053a		488d051fd52300		LEAQ runtime.types+625248(SB), AX						
  traffic_opposite.go:384	0xe40541		e8fa3d5dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_opposite.go:384	0xe40546		48833800		CMPQ 0(AX), $0x0								
  traffic_opposite.go:384	0xe4054a		740a			JE 0xe40556									
  traffic_opposite.go:385	0xe4054c		488b942480000000	MOVQ 0x80(SP), DX								
  traffic_opposite.go:384	0xe40554		eb2f			JMP 0xe40585									
  traffic_opposite.go:385	0xe40556		488b8c2428010000	MOVQ 0x128(SP), CX								
  traffic_opposite.go:385	0xe4055e		488bbc2430010000	MOVQ 0x130(SP), DI								
  traffic_opposite.go:385	0xe40566		488d05f3d42300		LEAQ runtime.types+625248(SB), AX						
  traffic_opposite.go:385	0xe4056d		488b9c2490010000	MOVQ 0x190(SP), BX								
  traffic_opposite.go:385	0xe40575		e8a6da62ff		CALL runtime.mapassign_faststr(SB)						
  traffic_opposite.go:385	0xe4057a		488b942480000000	MOVQ 0x80(SP), DX								
  traffic_opposite.go:385	0xe40582		488910			MOVQ DX, 0(AX)									
  traffic_opposite.go:377	0xe40585		488b842440020000	MOVQ 0x240(SP), AX								
  traffic_opposite.go:377	0xe4058d		488b8c2438020000	MOVQ 0x238(SP), CX								
  traffic_opposite.go:377	0xe40595		488b942408020000	MOVQ 0x208(SP), DX								
  traffic_opposite.go:384	0xe4059d		488b9c2490010000	MOVQ 0x190(SP), BX								
  traffic_opposite.go:377	0xe405a5		4c8b8424a8000000	MOVQ 0xa8(SP), R8								
  traffic_opposite.go:377	0xe405ad		e9ebfcffff		JMP 0xe4029d									
  traffic_opposite.go:366	0xe405b2		4889442408		MOVQ AX, 0x8(SP)								
  traffic_opposite.go:366	0xe405b7		48895c2410		MOVQ BX, 0x10(SP)								
  traffic_opposite.go:366	0xe405bc		48894c2418		MOVQ CX, 0x18(SP)								
  traffic_opposite.go:366	0xe405c1		48897c2420		MOVQ DI, 0x20(SP)								
  traffic_opposite.go:366	0xe405c6		4889742428		MOVQ SI, 0x28(SP)								
  traffic_opposite.go:366	0xe405cb		4c89442430		MOVQ R8, 0x30(SP)								
  traffic_opposite.go:366	0xe405d0		4c894c2438		MOVQ R9, 0x38(SP)								
  traffic_opposite.go:366	0xe405d5		e8065f63ff		CALL runtime.morestack_noctxt.abi0(SB)						
  traffic_opposite.go:366	0xe405da		488b442408		MOVQ 0x8(SP), AX								
  traffic_opposite.go:366	0xe405df		488b5c2410		MOVQ 0x10(SP), BX								
  traffic_opposite.go:366	0xe405e4		488b4c2418		MOVQ 0x18(SP), CX								
  traffic_opposite.go:366	0xe405e9		488b7c2420		MOVQ 0x20(SP), DI								
  traffic_opposite.go:366	0xe405ee		488b742428		MOVQ 0x28(SP), SI								
  traffic_opposite.go:366	0xe405f3		4c8b442430		MOVQ 0x30(SP), R8								
  traffic_opposite.go:366	0xe405f8		4c8b4c2438		MOVQ 0x38(SP), R9								
  traffic_opposite.go:366	0xe405fd		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:366	0xe40600		e99bf9ffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).touchOppositeEnter(SB)	
  :-1				0xe40605		cc			INT $__subsystem__(SB)								
  :-1				0xe40606		cc			INT $__subsystem__(SB)								
  :-1				0xe40607		cc			INT $__subsystem__(SB)								
  :-1				0xe40608		cc			INT $__subsystem__(SB)								
  :-1				0xe40609		cc			INT $__subsystem__(SB)								
  :-1				0xe4060a		cc			INT $__subsystem__(SB)								
  :-1				0xe4060b		cc			INT $__subsystem__(SB)								
  :-1				0xe4060c		cc			INT $__subsystem__(SB)								
  :-1				0xe4060d		cc			INT $__subsystem__(SB)								
  :-1				0xe4060e		cc			INT $__subsystem__(SB)								
  :-1				0xe4060f		cc			INT $__subsystem__(SB)								
  :-1				0xe40610		cc			INT $__subsystem__(SB)								
  :-1				0xe40611		cc			INT $__subsystem__(SB)								
  :-1				0xe40612		cc			INT $__subsystem__(SB)								
  :-1				0xe40613		cc			INT $__subsystem__(SB)								
  :-1				0xe40614		cc			INT $__subsystem__(SB)								
  :-1				0xe40615		cc			INT $__subsystem__(SB)								
  :-1				0xe40616		cc			INT $__subsystem__(SB)								
  :-1				0xe40617		cc			INT $__subsystem__(SB)								
  :-1				0xe40618		cc			INT $__subsystem__(SB)								
  :-1				0xe40619		cc			INT $__subsystem__(SB)								
  :-1				0xe4061a		cc			INT $__subsystem__(SB)								
  :-1				0xe4061b		cc			INT $__subsystem__(SB)								
  :-1				0xe4061c		cc			INT $__subsystem__(SB)								
  :-1				0xe4061d		cc			INT $__subsystem__(SB)								
  :-1				0xe4061e		cc			INT $__subsystem__(SB)								
  :-1				0xe4061f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).applyOppositePause(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_opposite.go
  traffic_opposite.go:402	0xe40620		4c8da42460f8ffff	LEAQ 0xfffff860(SP), R12							
  traffic_opposite.go:402	0xe40628		4d3b6610		CMPQ R12, 0x10(R14)								
  traffic_opposite.go:402	0xe4062c		0f86220c0000		JBE 0xe41254									
  traffic_opposite.go:402	0xe40632		55			PUSHQ BP									
  traffic_opposite.go:402	0xe40633		4889e5			MOVQ SP, BP									
  traffic_opposite.go:402	0xe40636		4881ec18080000		SUBQ $__file_alignment__+1560(SB), SP						
  traffic_opposite.go:404	0xe4063d		4889842428080000	MOVQ AX, 0x828(SP)								
  traffic_opposite.go:404	0xe40645		4889b42448080000	MOVQ SI, 0x848(SP)								
  traffic_opposite.go:404	0xe4064d		4889bc2440080000	MOVQ DI, 0x840(SP)								
  traffic_opposite.go:404	0xe40655		48898c2438080000	MOVQ CX, 0x838(SP)								
  traffic_opposite.go:404	0xe4065d		48899c2430080000	MOVQ BX, 0x830(SP)								
  traffic_opposite.go:403	0xe40665		4889d8			MOVQ BX, AX									
  traffic_opposite.go:403	0xe40668		4889cb			MOVQ CX, BX									
  traffic_opposite.go:403	0xe4066b		4889f9			MOVQ DI, CX									
  traffic_opposite.go:403	0xe4066e		e80df0ffff		CALL CAS-Backend/pkg/diapdu.findOppositeConflicts(SB)				
  traffic_opposite.go:404	0xe40673		4885db			TESTQ BX, BX									
  traffic_opposite.go:404	0xe40676		0f8415010000		JE 0xe40791									
  traffic_opposite.go:403	0xe4067c		48898c2488010000	MOVQ CX, 0x188(SP)								
  traffic_opposite.go:403	0xe40684		48899c2480010000	MOVQ BX, 0x180(SP)								
  traffic_opposite.go:403	0xe4068c		4889842418030000	MOVQ AX, 0x318(SP)								
  traffic_opposite.go:407	0xe40694		488bbc2440080000	MOVQ 0x840(SP), DI								
  traffic_opposite.go:407	0xe4069c		4889c6			MOVQ AX, SI									
  traffic_opposite.go:407	0xe4069f		4989d8			MOVQ BX, R8									
  traffic_opposite.go:407	0xe406a2		4989c9			MOVQ CX, R9									
  traffic_opposite.go:407	0xe406a5		488b842428080000	MOVQ 0x828(SP), AX								
  traffic_opposite.go:407	0xe406ad		488b9c2430080000	MOVQ 0x830(SP), BX								
  traffic_opposite.go:407	0xe406b5		488b8c2438080000	MOVQ 0x838(SP), CX								
  traffic_opposite.go:407	0xe406bd		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:407	0xe406c0		e83bf3ffff		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).pruneOppositeEnter(SB)	
  traffic_opposite.go:408	0xe406c5		488b842428080000	MOVQ 0x828(SP), AX								
  traffic_opposite.go:408	0xe406cd		488b9c2430080000	MOVQ 0x830(SP), BX								
  traffic_opposite.go:408	0xe406d5		488b8c2438080000	MOVQ 0x838(SP), CX								
  traffic_opposite.go:408	0xe406dd		488bbc2440080000	MOVQ 0x840(SP), DI								
  traffic_opposite.go:408	0xe406e5		488bb42418030000	MOVQ 0x318(SP), SI								
  traffic_opposite.go:408	0xe406ed		4c8b842480010000	MOVQ 0x180(SP), R8								
  traffic_opposite.go:408	0xe406f5		4c8b8c2488010000	MOVQ 0x188(SP), R9								
  traffic_opposite.go:408	0xe406fd		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:408	0xe40700		e89bf8ffff		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).touchOppositeEnter(SB)	
  traffic_opposite.go:410	0xe40705		440f11bc2468070000	MOVUPS X15, 0x768(SP)								
  traffic_opposite.go:410	0xe4070e		440f11bc2478070000	MOVUPS X15, 0x778(SP)								
  traffic_opposite.go:410	0xe40717		440f11bc2488070000	MOVUPS X15, 0x788(SP)								
  traffic_opposite.go:410	0xe40720		488b9c2438080000	MOVQ 0x838(SP), BX								
  traffic_opposite.go:410	0xe40728		4883fb08		CMPQ BX, $__major_os_version__+2(SB)						
  traffic_opposite.go:410	0xe4072c		7f35			JG 0xe40763									
  traffic_opposite.go:410	0xe4072e		488dbc2498030000	LEAQ 0x398(SP), DI								
  traffic_opposite.go:410	0xe40736		488d7fd0		LEAQ -0x30(DI), DI								
  traffic_opposite.go:410	0xe4073a		660f1f440000		NOPW 0(AX)(AX*1)								
  traffic_opposite.go:410	0xe40740		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:410	0xe40745		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:410	0xe4074a		e85f8263ff		CALL 0x4789ae									
  traffic_opposite.go:410	0xe4074f		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:410	0xe40753		488d942498030000	LEAQ 0x398(SP), DX								
  traffic_opposite.go:410	0xe4075b		4889942478070000	MOVQ DX, 0x778(SP)								
  traffic_opposite.go:410	0xe40763		488d05b6d02300		LEAQ runtime.types+624672(SB), AX						
  traffic_opposite.go:410	0xe4076a		488d8c2468070000	LEAQ 0x768(SP), CX								
  traffic_opposite.go:410	0xe40772		e8a9a862ff		CALL runtime.makemap(SB)							
  traffic_opposite.go:410	0xe40777		4889842440020000	MOVQ AX, 0x240(SP)								
  traffic_opposite.go:411	0xe4077f		488b942430080000	MOVQ 0x830(SP), DX								
  traffic_opposite.go:411	0xe40787		488b8c2438080000	MOVQ 0x838(SP), CX								
  traffic_opposite.go:411	0xe4078f		eb61			JMP 0xe407f2									
  traffic_opposite.go:405	0xe40791		4881c418080000		ADDQ $__file_alignment__+1560(SB), SP						
  traffic_opposite.go:405	0xe40798		5d			POPQ BP										
  traffic_opposite.go:405	0xe40799		c3			RET										
  traffic_opposite.go:412	0xe4079a		4c8b842498070000	MOVQ 0x798(SP), R8								
  traffic_opposite.go:412	0xe407a2		4c8900			MOVQ R8, 0(AX)									
  traffic_opposite.go:412	0xe407a5		488d7808		LEAQ 0x8(AX), DI								
  traffic_opposite.go:412	0xe407a9		488db424a0070000	LEAQ 0x7a0(SP), SI								
  traffic_opposite.go:412	0xe407b1		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:412	0xe407ba		660f1f440000		NOPW 0(AX)(AX*1)								
  traffic_opposite.go:412	0xe407c0		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:412	0xe407c5		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:412	0xe407ca		e87d8663ff		CALL 0x478e4c									
  traffic_opposite.go:412	0xe407cf		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:411	0xe407d3		488b942410080000	MOVQ 0x810(SP), DX								
  traffic_opposite.go:411	0xe407db		4883c268		ADDQ $.file+27(SB), DX								
  traffic_opposite.go:411	0xe407df		488b8c24a8010000	MOVQ 0x1a8(SP), CX								
  traffic_opposite.go:411	0xe407e7		48ffc9			DECQ CX										
  traffic_opposite.go:412	0xe407ea		488b842440020000	MOVQ 0x240(SP), AX								
  traffic_opposite.go:411	0xe407f2		4885c9			TESTQ CX, CX									
  traffic_opposite.go:411	0xe407f5		0f8e97000000		JLE 0xe40892									
  traffic_opposite.go:411	0xe407fb		48898c24a8010000	MOVQ CX, 0x1a8(SP)								
  traffic_opposite.go:411	0xe40803		4889942410080000	MOVQ DX, 0x810(SP)								
  traffic_opposite.go:411	0xe4080b		4c8b02			MOVQ 0(DX), R8									
  traffic_opposite.go:411	0xe4080e		4c89842498070000	MOVQ R8, 0x798(SP)								
  traffic_opposite.go:411	0xe40816		488d7208		LEAQ 0x8(DX), SI								
  traffic_opposite.go:411	0xe4081a		488dbc24a0070000	LEAQ 0x7a0(SP), DI								
  traffic_opposite.go:411	0xe40822		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:411	0xe40827		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:411	0xe4082c		e81b8663ff		CALL 0x478e4c									
  traffic_opposite.go:411	0xe40831		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:412	0xe40835		488b8c2498070000	MOVQ 0x798(SP), CX								
  traffic_opposite.go:412	0xe4083d		488bbc24a0070000	MOVQ 0x7a0(SP), DI								
  traffic_opposite.go:412	0xe40845		4889c3			MOVQ AX, BX									
  traffic_opposite.go:412	0xe40848		488d05d1cf2300		LEAQ runtime.types+624672(SB), AX						
  traffic_opposite.go:412	0xe4084f		e8ccd762ff		CALL runtime.mapassign_faststr(SB)						
  traffic_opposite.go:412	0xe40854		8400			TESTB AL, 0(AX)									
  traffic_opposite.go:412	0xe40856		833df3d2710200		CMPL runtime.writeBarrier(SB), $0x0						
  traffic_opposite.go:412	0xe4085d		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:412	0xe40860		0f8434ffffff		JE 0xe4079a									
  traffic_opposite.go:412	0xe40866		4889842408080000	MOVQ AX, 0x808(SP)								
  traffic_opposite.go:412	0xe4086e		4889c3			MOVQ AX, BX									
  traffic_opposite.go:412	0xe40871		488d8c2498070000	LEAQ 0x798(SP), CX								
  traffic_opposite.go:412	0xe40879		488d0540d02d00		LEAQ runtime.types+1280192(SB), AX						
  traffic_opposite.go:412	0xe40880		e89b465dff		CALL runtime.wbMove(SB)								
  traffic_opposite.go:412	0xe40885		488b842408080000	MOVQ 0x808(SP), AX								
  traffic_opposite.go:412	0xe4088d		e908ffffff		JMP 0xe4079a									
  traffic_opposite.go:415	0xe40892		488b942418030000	MOVQ 0x318(SP), DX								
  traffic_opposite.go:415	0xe4089a		488b8c2480010000	MOVQ 0x180(SP), CX								
  traffic_opposite.go:415	0xe408a2		eb1f			JMP 0xe408c3									
  traffic_opposite.go:415	0xe408a4		488b942410080000	MOVQ 0x810(SP), DX								
  traffic_opposite.go:415	0xe408ac		4883c248		ADDQ $__major_os_version__+66(SB), DX						
  traffic_opposite.go:415	0xe408b0		488b8c24a8010000	MOVQ 0x1a8(SP), CX								
  traffic_opposite.go:415	0xe408b8		48ffc9			DECQ CX										
  traffic_opposite.go:416	0xe408bb		488b842440020000	MOVQ 0x240(SP), AX								
  traffic_opposite.go:415	0xe408c3		4885c9			TESTQ CX, CX									
  traffic_opposite.go:415	0xe408c6		0f8e02080000		JLE 0xe410ce									
  traffic_opposite.go:415	0xe408cc		48898c24a8010000	MOVQ CX, 0x1a8(SP)								
  traffic_opposite.go:415	0xe408d4		4889942410080000	MOVQ DX, 0x810(SP)								
  traffic_opposite.go:415	0xe408dc		488b32			MOVQ 0(DX), SI									
  traffic_opposite.go:415	0xe408df		4889b42420030000	MOVQ SI, 0x320(SP)								
  traffic_opposite.go:415	0xe408e7		0f104208		MOVUPS 0x8(DX), X0								
  traffic_opposite.go:415	0xe408eb		0f11842428030000	MOVUPS X0, 0x328(SP)								
  traffic_opposite.go:415	0xe408f3		0f104218		MOVUPS 0x18(DX), X0								
  traffic_opposite.go:415	0xe408f7		0f11842438030000	MOVUPS X0, 0x338(SP)								
  traffic_opposite.go:415	0xe408ff		0f104228		MOVUPS 0x28(DX), X0								
  traffic_opposite.go:415	0xe40903		0f11842448030000	MOVUPS X0, 0x348(SP)								
  traffic_opposite.go:415	0xe4090b		0f104238		MOVUPS 0x38(DX), X0								
  traffic_opposite.go:415	0xe4090f		0f11842458030000	MOVUPS X0, 0x358(SP)								
  traffic_opposite.go:416	0xe40917		440f11bc2498070000	MOVUPS X15, 0x798(SP)								
  traffic_opposite.go:416	0xe40920		488dbc24a0070000	LEAQ 0x7a0(SP), DI								
  traffic_opposite.go:416	0xe40928		488d7fe0		LEAQ -0x20(DI), DI								
  traffic_opposite.go:416	0xe4092c		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:416	0xe40931		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:416	0xe40936		e8b08163ff		CALL 0x478aeb									
  traffic_opposite.go:416	0xe4093b		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:416	0xe4093f		488b8c2420030000	MOVQ 0x320(SP), CX								
  traffic_opposite.go:416	0xe40947		488bbc2428030000	MOVQ 0x328(SP), DI								
  traffic_opposite.go:416	0xe4094f		4889c3			MOVQ AX, BX									
  traffic_opposite.go:416	0xe40952		488d05c7ce2300		LEAQ runtime.types+624672(SB), AX						
  traffic_opposite.go:416	0xe40959		e8e2d262ff		CALL runtime.mapaccess2_faststr(SB)						
  traffic_opposite.go:416	0xe4095e		889c24ff000000		MOVB BL, 0xff(SP)								
  traffic_opposite.go:416	0xe40965		488b10			MOVQ 0(AX), DX									
  traffic_opposite.go:416	0xe40968		488d7008		LEAQ 0x8(AX), SI								
  traffic_opposite.go:416	0xe4096c		4889942498070000	MOVQ DX, 0x798(SP)								
  traffic_opposite.go:416	0xe40974		488dbc24a0070000	LEAQ 0x7a0(SP), DI								
  traffic_opposite.go:416	0xe4097c		0f1f4000		NOPL 0(AX)									
  traffic_opposite.go:416	0xe40980		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:416	0xe40985		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:416	0xe4098a		e8bd8463ff		CALL 0x478e4c									
  traffic_opposite.go:416	0xe4098f		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:416	0xe40993		488b942498070000	MOVQ 0x798(SP), DX								
  traffic_opposite.go:416	0xe4099b		48899424b0020000	MOVQ DX, 0x2b0(SP)								
  traffic_opposite.go:416	0xe409a3		488dbc24b8020000	LEAQ 0x2b8(SP), DI								
  traffic_opposite.go:416	0xe409ab		488db424a0070000	LEAQ 0x7a0(SP), SI								
  traffic_opposite.go:416	0xe409b3		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:416	0xe409bc		0f1f4000		NOPL 0(AX)									
  traffic_opposite.go:416	0xe409c0		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:416	0xe409c5		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:416	0xe409ca		e87d8463ff		CALL 0x478e4c									
  traffic_opposite.go:416	0xe409cf		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:417	0xe409d3		440f11bc2498070000	MOVUPS X15, 0x798(SP)								
  traffic_opposite.go:417	0xe409dc		488dbc24a0070000	LEAQ 0x7a0(SP), DI								
  traffic_opposite.go:417	0xe409e4		488d7fe0		LEAQ -0x20(DI), DI								
  traffic_opposite.go:417	0xe409e8		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:417	0xe409ed		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:417	0xe409f2		e8f48063ff		CALL 0x478aeb									
  traffic_opposite.go:417	0xe409f7		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:417	0xe409fb		488b8c2430030000	MOVQ 0x330(SP), CX								
  traffic_opposite.go:417	0xe40a03		488bbc2438030000	MOVQ 0x338(SP), DI								
  traffic_opposite.go:417	0xe40a0b		488d050ece2300		LEAQ runtime.types+624672(SB), AX						
  traffic_opposite.go:417	0xe40a12		488b9c2440020000	MOVQ 0x240(SP), BX								
  traffic_opposite.go:417	0xe40a1a		e821d262ff		CALL runtime.mapaccess2_faststr(SB)						
  traffic_opposite.go:417	0xe40a1f		488b10			MOVQ 0(AX), DX									
  traffic_opposite.go:417	0xe40a22		488d7008		LEAQ 0x8(AX), SI								
  traffic_opposite.go:417	0xe40a26		4889942498070000	MOVQ DX, 0x798(SP)								
  traffic_opposite.go:417	0xe40a2e		488dbc24a0070000	LEAQ 0x7a0(SP), DI								
  traffic_opposite.go:417	0xe40a36		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:417	0xe40a3f		90			NOPL										
  traffic_opposite.go:417	0xe40a40		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:417	0xe40a45		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:417	0xe40a4a		e8fd8363ff		CALL 0x478e4c									
  traffic_opposite.go:417	0xe40a4f		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:417	0xe40a53		488b942498070000	MOVQ 0x798(SP), DX								
  traffic_opposite.go:417	0xe40a5b		4889942448020000	MOVQ DX, 0x248(SP)								
  traffic_opposite.go:417	0xe40a63		488dbc2450020000	LEAQ 0x250(SP), DI								
  traffic_opposite.go:417	0xe40a6b		488db424a0070000	LEAQ 0x7a0(SP), SI								
  traffic_opposite.go:417	0xe40a73		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:417	0xe40a7c		0f1f4000		NOPL 0(AX)									
  traffic_opposite.go:417	0xe40a80		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:417	0xe40a85		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:417	0xe40a8a		e8bd8363ff		CALL 0x478e4c									
  traffic_opposite.go:417	0xe40a8f		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:416	0xe40a93		0fb69424ff000000	MOVZX 0xff(SP), DX								
  traffic_opposite.go:416	0xe40a9b		0f1f440000		NOPL 0(AX)(AX*1)								
  traffic_opposite.go:416	0xe40aa0		84d2			TESTL DL, DL									
  traffic_opposite.go:418	0xe40aa2		0f84fcfdffff		JE 0xe408a4									
  traffic_opposite.go:417	0xe40aa8		84db			TESTL BL, BL									
  traffic_opposite.go:418	0xe40aaa		0f84f4fdffff		JE 0xe408a4									
  traffic_opposite.go:421	0xe40ab0		488b842420030000	MOVQ 0x320(SP), AX								
  traffic_opposite.go:421	0xe40ab8		4889842470030000	MOVQ AX, 0x370(SP)								
  traffic_opposite.go:421	0xe40ac0		488b9c2428030000	MOVQ 0x328(SP), BX								
  traffic_opposite.go:421	0xe40ac8		48899c2498010000	MOVQ BX, 0x198(SP)								
  traffic_opposite.go:421	0xe40ad0		488b8c2430030000	MOVQ 0x330(SP), CX								
  traffic_opposite.go:421	0xe40ad8		48898c2468030000	MOVQ CX, 0x368(SP)								
  traffic_opposite.go:421	0xe40ae0		488bbc2438030000	MOVQ 0x338(SP), DI								
  traffic_opposite.go:421	0xe40ae8		4889bc2490010000	MOVQ DI, 0x190(SP)								
  traffic_opposite.go:82	0xe40af0		e88b1f5cff		CALL runtime.cmpstring(SB)							
  traffic_opposite.go:82	0xe40af5		4885c0			TESTQ AX, AX									
  traffic_opposite.go:82	0xe40af8		7d3b			JGE 0xe40b35									
  traffic_opposite.go:83	0xe40afa		488d842420010000	LEAQ 0x120(SP), AX								
  traffic_opposite.go:83	0xe40b02		488b9c2470030000	MOVQ 0x370(SP), BX								
  traffic_opposite.go:83	0xe40b0a		488b8c2498010000	MOVQ 0x198(SP), CX								
  traffic_opposite.go:83	0xe40b12		488d3da7410202		LEAQ runtime.gcbits.*+512(SB), DI						
  traffic_opposite.go:83	0xe40b19		be01000000		MOVL $__minor_os_version__(SB), SI						
  traffic_opposite.go:83	0xe40b1e		4c8b842468030000	MOVQ 0x368(SP), R8								
  traffic_opposite.go:83	0xe40b26		4c8b8c2490010000	MOVQ 0x190(SP), R9								
  traffic_opposite.go:83	0xe40b2e		e86d4961ff		CALL runtime.concatstring3(SB)							
  traffic_opposite.go:421	0xe40b33		eb39			JMP 0xe40b6e									
  traffic_opposite.go:85	0xe40b35		488d842400010000	LEAQ 0x100(SP), AX								
  traffic_opposite.go:85	0xe40b3d		488b9c2468030000	MOVQ 0x368(SP), BX								
  traffic_opposite.go:85	0xe40b45		488b8c2490010000	MOVQ 0x190(SP), CX								
  traffic_opposite.go:85	0xe40b4d		488d3d6c410202		LEAQ runtime.gcbits.*+512(SB), DI						
  traffic_opposite.go:85	0xe40b54		be01000000		MOVL $__minor_os_version__(SB), SI						
  traffic_opposite.go:85	0xe40b59		4c8b842470030000	MOVQ 0x370(SP), R8								
  traffic_opposite.go:85	0xe40b61		4c8b8c2498010000	MOVQ 0x198(SP), R9								
  traffic_opposite.go:85	0xe40b69		e8324961ff		CALL runtime.concatstring3(SB)							
  traffic_opposite.go:421	0xe40b6e		48899c2440010000	MOVQ BX, 0x140(SP)								
  traffic_opposite.go:421	0xe40b76		48898424b0010000	MOVQ AX, 0x1b0(SP)								
  traffic_opposite.go:453	0xe40b7e		488b942428080000	MOVQ 0x828(SP), DX								
  traffic_opposite.go:453	0xe40b86		4c8b4210		MOVQ 0x10(DX), R8								
  traffic_opposite.go:453	0xe40b8a		4d85c0			TESTQ R8, R8									
  traffic_opposite.go:453	0xe40b8d		7507			JNE 0xe40b96									
  traffic_opposite.go:453	0xe40b8f		b902000000		MOVL $__minor_os_version__+1(SB), CX						
  traffic_opposite.go:422	0xe40b94		eb69			JMP 0xe40bff									
  traffic_opposite.go:422	0xe40b96		488b8c2420030000	MOVQ 0x320(SP), CX								
  traffic_opposite.go:422	0xe40b9e		488bbc2428030000	MOVQ 0x328(SP), DI								
  traffic_opposite.go:456	0xe40ba6		488d0553ce2300		LEAQ runtime.types+625152(SB), AX						
  traffic_opposite.go:456	0xe40bad		4c89c3			MOVQ R8, BX									
  traffic_opposite.go:456	0xe40bb0		e88bd062ff		CALL runtime.mapaccess2_faststr(SB)						
  traffic_opposite.go:456	0xe40bb5		84db			TESTL BL, BL									
  traffic_opposite.go:456	0xe40bb7		7429			JE 0xe40be2									
  traffic_opposite.go:456	0xe40bb9		488b10			MOVQ 0(AX), DX									
  traffic_opposite.go:456	0xe40bbc		0f1f4000		NOPL 0(AX)									
  traffic_opposite.go:456	0xe40bc0		4885d2			TESTQ DX, DX									
  traffic_opposite.go:456	0xe40bc3		7e1d			JLE 0xe40be2									
  traffic_opposite.go:395	0xe40bc5		488b8424b0010000	MOVQ 0x1b0(SP), AX								
  traffic_opposite.go:395	0xe40bcd		488b9c2440010000	MOVQ 0x140(SP), BX								
  traffic_opposite.go:422	0xe40bd5		4889d1			MOVQ DX, CX									
  traffic_opposite.go:453	0xe40bd8		488b942428080000	MOVQ 0x828(SP), DX								
  traffic_opposite.go:422	0xe40be0		eb1d			JMP 0xe40bff									
  traffic_opposite.go:395	0xe40be2		488b8424b0010000	MOVQ 0x1b0(SP), AX								
  traffic_opposite.go:453	0xe40bea		488b942428080000	MOVQ 0x828(SP), DX								
  traffic_opposite.go:395	0xe40bf2		488b9c2440010000	MOVQ 0x140(SP), BX								
  traffic_opposite.go:395	0xe40bfa		b902000000		MOVL $__minor_os_version__+1(SB), CX						
  traffic_opposite.go:422	0xe40bff		48898c2458010000	MOVQ CX, 0x158(SP)								
  traffic_opposite.go:453	0xe40c07		4c8b4210		MOVQ 0x10(DX), R8								
  traffic_opposite.go:453	0xe40c0b		4d85c0			TESTQ R8, R8									
  traffic_opposite.go:453	0xe40c0e		7507			JNE 0xe40c17									
  traffic_opposite.go:453	0xe40c10		be02000000		MOVL $__minor_os_version__+1(SB), SI						
  traffic_opposite.go:423	0xe40c15		eb78			JMP 0xe40c8f									
  traffic_opposite.go:423	0xe40c17		488b8c2430030000	MOVQ 0x330(SP), CX								
  traffic_opposite.go:423	0xe40c1f		488bbc2438030000	MOVQ 0x338(SP), DI								
  traffic_opposite.go:456	0xe40c27		488d05d2cd2300		LEAQ runtime.types+625152(SB), AX						
  traffic_opposite.go:456	0xe40c2e		4c89c3			MOVQ R8, BX									
  traffic_opposite.go:456	0xe40c31		e80ad062ff		CALL runtime.mapaccess2_faststr(SB)						
  traffic_opposite.go:456	0xe40c36		84db			TESTL BL, BL									
  traffic_opposite.go:456	0xe40c38		7430			JE 0xe40c6a									
  traffic_opposite.go:456	0xe40c3a		488b10			MOVQ 0(AX), DX									
  traffic_opposite.go:456	0xe40c3d		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:456	0xe40c40		4885d2			TESTQ DX, DX									
  traffic_opposite.go:456	0xe40c43		7e25			JLE 0xe40c6a									
  traffic_opposite.go:395	0xe40c45		488b8424b0010000	MOVQ 0x1b0(SP), AX								
  traffic_opposite.go:424	0xe40c4d		488b8c2458010000	MOVQ 0x158(SP), CX								
  traffic_opposite.go:395	0xe40c55		488b9c2440010000	MOVQ 0x140(SP), BX								
  traffic_opposite.go:423	0xe40c5d		4889d6			MOVQ DX, SI									
  traffic_opposite.go:392	0xe40c60		488b942428080000	MOVQ 0x828(SP), DX								
  traffic_opposite.go:423	0xe40c68		eb25			JMP 0xe40c8f									
  traffic_opposite.go:395	0xe40c6a		488b8424b0010000	MOVQ 0x1b0(SP), AX								
  traffic_opposite.go:424	0xe40c72		488b8c2458010000	MOVQ 0x158(SP), CX								
  traffic_opposite.go:392	0xe40c7a		488b942428080000	MOVQ 0x828(SP), DX								
  traffic_opposite.go:395	0xe40c82		488b9c2440010000	MOVQ 0x140(SP), BX								
  traffic_opposite.go:395	0xe40c8a		be02000000		MOVL $__minor_os_version__+1(SB), SI						
  traffic_opposite.go:423	0xe40c8f		4889b42450010000	MOVQ SI, 0x150(SP)								
  traffic_opposite.go:392	0xe40c97		4c8b4230		MOVQ 0x30(DX), R8								
  traffic_opposite.go:424	0xe40c9b		4c8b8c2420030000	MOVQ 0x320(SP), R9								
  traffic_opposite.go:424	0xe40ca3		4c8b942428030000	MOVQ 0x328(SP), R10								
  traffic_opposite.go:392	0xe40cab		4d85c0			TESTQ R8, R8									
  traffic_opposite.go:392	0xe40cae		7507			JNE 0xe40cb7									
  traffic_opposite.go:392	0xe40cb0		31ff			XORL DI, DI									
  traffic_opposite.go:424	0xe40cb2		e9a4000000		JMP 0xe40d5b									
  traffic_opposite.go:424	0xe40cb7		4c89942478010000	MOVQ R10, 0x178(SP)								
  traffic_opposite.go:424	0xe40cbf		4c898c2438020000	MOVQ R9, 0x238(SP)								
  traffic_opposite.go:395	0xe40cc7		4889c1			MOVQ AX, CX									
  traffic_opposite.go:395	0xe40cca		4889df			MOVQ BX, DI									
  traffic_opposite.go:395	0xe40ccd		488d05eccd2300		LEAQ runtime.types+625344(SB), AX						
  traffic_opposite.go:395	0xe40cd4		4c89c3			MOVQ R8, BX									
  traffic_opposite.go:395	0xe40cd7		e864365dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_opposite.go:395	0xe40cdc		488b18			MOVQ 0(AX), BX									
  traffic_opposite.go:395	0xe40cdf		90			NOPL										
  traffic_opposite.go:396	0xe40ce0		4885db			TESTQ BX, BX									
  traffic_opposite.go:396	0xe40ce3		752c			JNE 0xe40d11									
  traffic_opposite.go:395	0xe40ce5		488b8424b0010000	MOVQ 0x1b0(SP), AX								
  traffic_opposite.go:424	0xe40ced		488b8c2458010000	MOVQ 0x158(SP), CX								
  traffic_opposite.go:392	0xe40cf5		488b942428080000	MOVQ 0x828(SP), DX								
  traffic_opposite.go:395	0xe40cfd		488b9c2440010000	MOVQ 0x140(SP), BX								
  traffic_opposite.go:424	0xe40d05		488bb42450010000	MOVQ 0x150(SP), SI								
  traffic_opposite.go:424	0xe40d0d		31ff			XORL DI, DI									
  traffic_opposite.go:424	0xe40d0f		eb4a			JMP 0xe40d5b									
  traffic_opposite.go:399	0xe40d11		488d0548cd2300		LEAQ runtime.types+625248(SB), AX						
  traffic_opposite.go:399	0xe40d18		488b8c2438020000	MOVQ 0x238(SP), CX								
  traffic_opposite.go:399	0xe40d20		488bbc2478010000	MOVQ 0x178(SP), DI								
  traffic_opposite.go:399	0xe40d28		e813365dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_opposite.go:399	0xe40d2d		488b10			MOVQ 0(AX), DX									
  traffic_opposite.go:395	0xe40d30		488b8424b0010000	MOVQ 0x1b0(SP), AX								
  traffic_opposite.go:424	0xe40d38		488b8c2458010000	MOVQ 0x158(SP), CX								
  traffic_opposite.go:395	0xe40d40		488b9c2440010000	MOVQ 0x140(SP), BX								
  traffic_opposite.go:424	0xe40d48		488bb42450010000	MOVQ 0x150(SP), SI								
  traffic_opposite.go:424	0xe40d50		4889d7			MOVQ DX, DI									
  traffic_opposite.go:392	0xe40d53		488b942428080000	MOVQ 0x828(SP), DX								
  traffic_opposite.go:392	0xe40d5b		4c8b4230		MOVQ 0x30(DX), R8								
  traffic_opposite.go:424	0xe40d5f		4c8b8c2430030000	MOVQ 0x330(SP), R9								
  traffic_opposite.go:424	0xe40d67		4c8b942438030000	MOVQ 0x338(SP), R10								
  traffic_opposite.go:392	0xe40d6f		4d85c0			TESTQ R8, R8									
  traffic_opposite.go:392	0xe40d72		7507			JNE 0xe40d7b									
  traffic_opposite.go:392	0xe40d74		31c0			XORL AX, AX									
  traffic_opposite.go:424	0xe40d76		e98b000000		JMP 0xe40e06									
  traffic_opposite.go:424	0xe40d7b		4c89942470010000	MOVQ R10, 0x170(SP)								
  traffic_opposite.go:424	0xe40d83		4c898c2430020000	MOVQ R9, 0x230(SP)								
  traffic_opposite.go:424	0xe40d8b		4889bc2448010000	MOVQ DI, 0x148(SP)								
  traffic_opposite.go:395	0xe40d93		4889c1			MOVQ AX, CX									
  traffic_opposite.go:395	0xe40d96		4889df			MOVQ BX, DI									
  traffic_opposite.go:395	0xe40d99		488d0520cd2300		LEAQ runtime.types+625344(SB), AX						
  traffic_opposite.go:395	0xe40da0		4c89c3			MOVQ R8, BX									
  traffic_opposite.go:395	0xe40da3		e898355dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_opposite.go:395	0xe40da8		488b18			MOVQ 0(AX), BX									
  traffic_opposite.go:396	0xe40dab		4885db			TESTQ BX, BX									
  traffic_opposite.go:396	0xe40dae		751c			JNE 0xe40dcc									
  traffic_opposite.go:424	0xe40db0		488b8c2458010000	MOVQ 0x158(SP), CX								
  traffic_opposite.go:424	0xe40db8		488bb42450010000	MOVQ 0x150(SP), SI								
  traffic_opposite.go:424	0xe40dc0		488bbc2448010000	MOVQ 0x148(SP), DI								
  traffic_opposite.go:424	0xe40dc8		31c0			XORL AX, AX									
  traffic_opposite.go:424	0xe40dca		eb3a			JMP 0xe40e06									
  traffic_opposite.go:399	0xe40dcc		488d058dcc2300		LEAQ runtime.types+625248(SB), AX						
  traffic_opposite.go:399	0xe40dd3		488b8c2430020000	MOVQ 0x230(SP), CX								
  traffic_opposite.go:399	0xe40ddb		488bbc2470010000	MOVQ 0x170(SP), DI								
  traffic_opposite.go:399	0xe40de3		e858355dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_opposite.go:399	0xe40de8		488b10			MOVQ 0(AX), DX									
  traffic_opposite.go:424	0xe40deb		488b8c2458010000	MOVQ 0x158(SP), CX								
  traffic_opposite.go:424	0xe40df3		488bb42450010000	MOVQ 0x150(SP), SI								
  traffic_opposite.go:424	0xe40dfb		488bbc2448010000	MOVQ 0x148(SP), DI								
  traffic_opposite.go:424	0xe40e03		4889d0			MOVQ DX, AX									
  traffic_opposite.go:424	0xe40e06		488b9424b0020000	MOVQ 0x2b0(SP), DX								
  traffic_opposite.go:424	0xe40e0e		4c8b842440030000	MOVQ 0x340(SP), R8								
  traffic_opposite.go:424	0xe40e16		48891424		MOVQ DX, 0(SP)									
  traffic_opposite.go:424	0xe40e1a		4889fa			MOVQ DI, DX									
  traffic_opposite.go:424	0xe40e1d		488d7c2408		LEAQ 0x8(SP), DI								
  traffic_opposite.go:423	0xe40e22		4889f3			MOVQ SI, BX									
  traffic_opposite.go:424	0xe40e25		488db424b8020000	LEAQ 0x2b8(SP), SI								
  traffic_opposite.go:424	0xe40e2d		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:424	0xe40e36		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:424	0xe40e3f		90			NOPL										
  traffic_opposite.go:424	0xe40e40		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:424	0xe40e45		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:424	0xe40e4a		e8fd7f63ff		CALL 0x478e4c									
  traffic_opposite.go:424	0xe40e4f		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:424	0xe40e53		4c8b8c2448020000	MOVQ 0x248(SP), R9								
  traffic_opposite.go:424	0xe40e5b		4c894c2468		MOVQ R9, 0x68(SP)								
  traffic_opposite.go:424	0xe40e60		488d7c2470		LEAQ 0x70(SP), DI								
  traffic_opposite.go:424	0xe40e65		488db42450020000	LEAQ 0x250(SP), SI								
  traffic_opposite.go:424	0xe40e6d		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:424	0xe40e76		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:424	0xe40e7f		90			NOPL										
  traffic_opposite.go:424	0xe40e80		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:424	0xe40e85		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:424	0xe40e8a		e8bd7f63ff		CALL 0x478e4c									
  traffic_opposite.go:424	0xe40e8f		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:424	0xe40e93		4889d7			MOVQ DX, DI									
  traffic_opposite.go:424	0xe40e96		4889c6			MOVQ AX, SI									
  traffic_opposite.go:424	0xe40e99		4c89c0			MOVQ R8, AX									
  traffic_opposite.go:423	0xe40e9c		4889da			MOVQ BX, DX									
  traffic_opposite.go:424	0xe40e9f		4889cb			MOVQ CX, BX									
  traffic_opposite.go:424	0xe40ea2		4889d1			MOVQ DX, CX									
  traffic_opposite.go:424	0xe40ea5		e876cbffff		CALL CAS-Backend/pkg/diapdu.pickOppositeWinner(SB)				
  traffic_opposite.go:426	0xe40eaa		4885db			TESTQ BX, BX									
  traffic_opposite.go:426	0xe40ead		0f84f1f9ffff		JE 0xe408a4									
  traffic_opposite.go:424	0xe40eb3		48899c2460010000	MOVQ BX, 0x160(SP)								
  traffic_opposite.go:424	0xe40ebb		48898424b8010000	MOVQ AX, 0x1b8(SP)								
  traffic_opposite.go:429	0xe40ec3		488b9424b0020000	MOVQ 0x2b0(SP), DX								
  traffic_opposite.go:429	0xe40ecb		48899424c0010000	MOVQ DX, 0x1c0(SP)								
  traffic_opposite.go:429	0xe40ed3		488dbc24c8010000	LEAQ 0x1c8(SP), DI								
  traffic_opposite.go:429	0xe40edb		488db424b8020000	LEAQ 0x2b8(SP), SI								
  traffic_opposite.go:429	0xe40ee3		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:429	0xe40ee8		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:429	0xe40eed		e85a7f63ff		CALL 0x478e4c									
  traffic_opposite.go:429	0xe40ef2		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:430	0xe40ef6		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:430	0xe40eff		90			NOPL										
  traffic_opposite.go:430	0xe40f00		48399c2438030000	CMPQ 0x338(SP), BX								
  traffic_opposite.go:430	0xe40f08		754d			JNE 0xe40f57									
  traffic_opposite.go:430	0xe40f0a		488b942430030000	MOVQ 0x330(SP), DX								
  traffic_opposite.go:430	0xe40f12		4889d9			MOVQ BX, CX									
  traffic_opposite.go:430	0xe40f15		4889d3			MOVQ DX, BX									
  traffic_opposite.go:430	0xe40f18		e8431f5cff		CALL runtime.memequal(SB)							
  traffic_opposite.go:430	0xe40f1d		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:430	0xe40f20		84c0			TESTL AL, AL									
  traffic_opposite.go:430	0xe40f22		7433			JE 0xe40f57									
  traffic_opposite.go:431	0xe40f24		488b8c2448020000	MOVQ 0x248(SP), CX								
  traffic_opposite.go:431	0xe40f2c		48898c24c0010000	MOVQ CX, 0x1c0(SP)								
  traffic_opposite.go:431	0xe40f34		488dbc24c8010000	LEAQ 0x1c8(SP), DI								
  traffic_opposite.go:431	0xe40f3c		488db42450020000	LEAQ 0x250(SP), SI								
  traffic_opposite.go:431	0xe40f44		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:431	0xe40f49		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:431	0xe40f4e		e8f97e63ff		CALL 0x478e4c									
  traffic_opposite.go:431	0xe40f53		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:433	0xe40f57		488b8c24b0020000	MOVQ 0x2b0(SP), CX								
  traffic_opposite.go:433	0xe40f5f		488b842440030000	MOVQ 0x340(SP), AX								
  traffic_opposite.go:433	0xe40f67		48890c24		MOVQ CX, 0(SP)									
  traffic_opposite.go:433	0xe40f6b		488d7c2408		LEAQ 0x8(SP), DI								
  traffic_opposite.go:433	0xe40f70		488db424b8020000	LEAQ 0x2b8(SP), SI								
  traffic_opposite.go:433	0xe40f78		0f1f840000000000	NOPL 0(AX)(AX*1)								
  traffic_opposite.go:433	0xe40f80		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:433	0xe40f85		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:433	0xe40f8a		e8bd7e63ff		CALL 0x478e4c									
  traffic_opposite.go:433	0xe40f8f		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:433	0xe40f93		488b8c2448020000	MOVQ 0x248(SP), CX								
  traffic_opposite.go:433	0xe40f9b		48894c2468		MOVQ CX, 0x68(SP)								
  traffic_opposite.go:433	0xe40fa0		488d7c2470		LEAQ 0x70(SP), DI								
  traffic_opposite.go:433	0xe40fa5		488db42450020000	LEAQ 0x250(SP), SI								
  traffic_opposite.go:433	0xe40fad		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:433	0xe40fb6		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:433	0xe40fbf		90			NOPL										
  traffic_opposite.go:433	0xe40fc0		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:433	0xe40fc5		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:433	0xe40fca		e87d7e63ff		CALL 0x478e4c									
  traffic_opposite.go:433	0xe40fcf		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:433	0xe40fd3		e8e8dbffff		CALL CAS-Backend/pkg/diapdu.vehiclesOppositeInConflict(SB)			
  traffic_opposite.go:433	0xe40fd8		0f1f840000000000	NOPL 0(AX)(AX*1)								
  traffic_opposite.go:433	0xe40fe0		84c0			TESTL AL, AL									
  traffic_opposite.go:433	0xe40fe2		0f84bcf8ffff		JE 0xe408a4									
  traffic_opposite.go:436	0xe40fe8		488b9424c0010000	MOVQ 0x1c0(SP), DX								
  traffic_opposite.go:436	0xe40ff0		4889942498070000	MOVQ DX, 0x798(SP)								
  traffic_opposite.go:436	0xe40ff8		488dbc24a0070000	LEAQ 0x7a0(SP), DI								
  traffic_opposite.go:436	0xe41000		488db424c8010000	LEAQ 0x1c8(SP), SI								
  traffic_opposite.go:436	0xe41008		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:436	0xe4100d		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:436	0xe41012		e8357e63ff		CALL 0x478e4c									
  traffic_opposite.go:436	0xe41017		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:122	0xe4101b		80bc24e007000000	CMPB 0x7e0(SP), $0x0								
  traffic_opposite.go:122	0xe41023		7504			JNE 0xe41029									
  traffic_opposite.go:122	0xe41025		31c0			XORL AX, AX									
  traffic_opposite.go:436	0xe41027		eb3f			JMP 0xe41068									
  traffic_opposite.go:436	0xe41029		488b842440030000	MOVQ 0x340(SP), AX								
  traffic_opposite.go:125	0xe41031		488b8c24c0010000	MOVQ 0x1c0(SP), CX								
  traffic_opposite.go:125	0xe41039		48890c24		MOVQ CX, 0(SP)									
  traffic_opposite.go:125	0xe4103d		488d7c2408		LEAQ 0x8(SP), DI								
  traffic_opposite.go:125	0xe41042		488db424c8010000	LEAQ 0x1c8(SP), SI								
  traffic_opposite.go:125	0xe4104a		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:125	0xe4104f		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:125	0xe41054		e8f37d63ff		CALL 0x478e4c									
  traffic_opposite.go:125	0xe41059		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:125	0xe4105d		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:125	0xe41060		e8dbc7ffff		CALL CAS-Backend/pkg/diapdu.winnerClearedOppositeZone(SB)			
  traffic_opposite.go:125	0xe41065		83f001			XORL $__minor_os_version__(SB), AX						
  traffic_opposite.go:436	0xe41068		84c0			TESTL AL, AL									
  traffic_opposite.go:436	0xe4106a		0f8434f8ffff		JE 0xe408a4									
  traffic_opposite.go:440	0xe41070		440f11bc2478030000	MOVUPS X15, 0x378(SP)								
  traffic_opposite.go:440	0xe41079		440f11bc2488030000	MOVUPS X15, 0x388(SP)								
  traffic_opposite.go:440	0xe41082		488b942420030000	MOVQ 0x320(SP), DX								
  traffic_opposite.go:440	0xe4108a		488bb42428030000	MOVQ 0x328(SP), SI								
  traffic_opposite.go:440	0xe41092		4889b42480030000	MOVQ SI, 0x380(SP)								
  traffic_opposite.go:440	0xe4109a		4889942478030000	MOVQ DX, 0x378(SP)								
  traffic_opposite.go:440	0xe410a2		488b942430030000	MOVQ 0x330(SP), DX								
  traffic_opposite.go:440	0xe410aa		488bb42438030000	MOVQ 0x338(SP), SI								
  traffic_opposite.go:440	0xe410b2		4889b42490030000	MOVQ SI, 0x390(SP)								
  traffic_opposite.go:440	0xe410ba		4889942488030000	MOVQ DX, 0x388(SP)								
  traffic_opposite.go:440	0xe410c2		488d942478030000	LEAQ 0x378(SP), DX								
  traffic_opposite.go:440	0xe410ca		31c0			XORL AX, AX									
  traffic_opposite.go:440	0xe410cc		eb20			JMP 0xe410ee									
  traffic_opposite.go:450	0xe410ce		4881c418080000		ADDQ $__file_alignment__+1560(SB), SP						
  traffic_opposite.go:450	0xe410d5		5d			POPQ BP										
  traffic_opposite.go:450	0xe410d6		c3			RET										
  traffic_opposite.go:440	0xe410d7		488b942400080000	MOVQ 0x800(SP), DX								
  traffic_opposite.go:440	0xe410df		4883c210		ADDQ $__major_os_version__+10(SB), DX						
  traffic_opposite.go:440	0xe410e3		488b8424a0010000	MOVQ 0x1a0(SP), AX								
  traffic_opposite.go:440	0xe410eb		48ffc0			INCQ AX										
  traffic_opposite.go:440	0xe410ee		4883f802		CMPQ AX, $__minor_os_version__+1(SB)						
  traffic_opposite.go:440	0xe410f2		0f8dacf7ffff		JGE 0xe408a4									
  traffic_opposite.go:440	0xe410f8		48898424a0010000	MOVQ AX, 0x1a0(SP)								
  traffic_opposite.go:440	0xe41100		4889942400080000	MOVQ DX, 0x800(SP)								
  traffic_opposite.go:440	0xe41108		488b7a08		MOVQ 0x8(DX), DI								
  traffic_opposite.go:440	0xe4110c		4889bc2468010000	MOVQ DI, 0x168(SP)								
  traffic_opposite.go:440	0xe41114		488b0a			MOVQ 0(DX), CX									
  traffic_opposite.go:440	0xe41117		48898c2428020000	MOVQ CX, 0x228(SP)								
  traffic_opposite.go:441	0xe4111f		488bb42460010000	MOVQ 0x160(SP), SI								
  traffic_opposite.go:441	0xe41127		4839fe			CMPQ SI, DI									
  traffic_opposite.go:441	0xe4112a		7528			JNE 0xe41154									
  traffic_opposite.go:441	0xe4112c		4889c8			MOVQ CX, AX									
  traffic_opposite.go:441	0xe4112f		488b9c24b8010000	MOVQ 0x1b8(SP), BX								
  traffic_opposite.go:441	0xe41137		4889f9			MOVQ DI, CX									
  traffic_opposite.go:441	0xe4113a		e8211d5cff		CALL runtime.memequal(SB)							
  traffic_opposite.go:441	0xe4113f		90			NOPL										
  traffic_opposite.go:441	0xe41140		84c0			TESTL AL, AL									
  traffic_opposite.go:441	0xe41142		7593			JNE 0xe410d7									
  traffic_opposite.go:444	0xe41144		488b8c2428020000	MOVQ 0x228(SP), CX								
  traffic_opposite.go:444	0xe4114c		488bbc2468010000	MOVQ 0x168(SP), DI								
  traffic_opposite.go:444	0xe41154		488d05c5c62300		LEAQ runtime.types+624672(SB), AX						
  traffic_opposite.go:444	0xe4115b		488b9c2440020000	MOVQ 0x240(SP), BX								
  traffic_opposite.go:444	0xe41163		e8d8315dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_opposite.go:444	0xe41168		488b10			MOVQ 0(AX), DX									
  traffic_opposite.go:444	0xe4116b		4889942498070000	MOVQ DX, 0x798(SP)								
  traffic_opposite.go:444	0xe41173		488d7008		LEAQ 0x8(AX), SI								
  traffic_opposite.go:444	0xe41177		488dbc24a0070000	LEAQ 0x7a0(SP), DI								
  traffic_opposite.go:444	0xe4117f		90			NOPL										
  traffic_opposite.go:444	0xe41180		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:444	0xe41185		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:444	0xe4118a		e8bd7c63ff		CALL 0x478e4c									
  traffic_opposite.go:444	0xe4118f		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:445	0xe41193		488b942498070000	MOVQ 0x798(SP), DX								
  traffic_opposite.go:445	0xe4119b		488b842440030000	MOVQ 0x340(SP), AX								
  traffic_opposite.go:445	0xe411a3		48891424		MOVQ DX, 0(SP)									
  traffic_opposite.go:445	0xe411a7		488d7c2408		LEAQ 0x8(SP), DI								
  traffic_opposite.go:445	0xe411ac		488db424a0070000	LEAQ 0x7a0(SP), SI								
  traffic_opposite.go:445	0xe411b4		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:445	0xe411bd		0f1f00			NOPL 0(AX)									
  traffic_opposite.go:445	0xe411c0		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:445	0xe411c5		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:445	0xe411ca		e87d7c63ff		CALL 0x478e4c									
  traffic_opposite.go:445	0xe411cf		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:445	0xe411d3		488b9424c0010000	MOVQ 0x1c0(SP), DX								
  traffic_opposite.go:445	0xe411db		4889542468		MOVQ DX, 0x68(SP)								
  traffic_opposite.go:445	0xe411e0		488d7c2470		LEAQ 0x70(SP), DI								
  traffic_opposite.go:445	0xe411e5		488db424c8010000	LEAQ 0x1c8(SP), SI								
  traffic_opposite.go:445	0xe411ed		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:445	0xe411f6		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_opposite.go:445	0xe411ff		90			NOPL										
  traffic_opposite.go:445	0xe41200		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_opposite.go:445	0xe41205		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_opposite.go:445	0xe4120a		e83d7c63ff		CALL 0x478e4c									
  traffic_opposite.go:445	0xe4120f		488b6d00		MOVQ 0(BP), BP									
  traffic_opposite.go:445	0xe41213		e828e0ffff		CALL CAS-Backend/pkg/diapdu.shouldPauseForOpposite(SB)				
  traffic_opposite.go:445	0xe41218		0f1f840000000000	NOPL 0(AX)(AX*1)								
  traffic_opposite.go:445	0xe41220		84c0			TESTL AL, AL									
  traffic_opposite.go:445	0xe41222		0f84affeffff		JE 0xe410d7									
  traffic_opposite.go:446	0xe41228		488d0511c72300		LEAQ runtime.types+624960(SB), AX						
  traffic_opposite.go:446	0xe4122f		488b9c2448080000	MOVQ 0x848(SP), BX								
  traffic_opposite.go:446	0xe41237		488b8c2428020000	MOVQ 0x228(SP), CX								
  traffic_opposite.go:446	0xe4123f		488bbc2468010000	MOVQ 0x168(SP), DI								
  traffic_opposite.go:446	0xe41247		e8d4cd62ff		CALL runtime.mapassign_faststr(SB)						
  traffic_opposite.go:446	0xe4124c		c60001			MOVB $__minor_os_version__(SB), 0(AX)						
  traffic_opposite.go:446	0xe4124f		e983feffff		JMP 0xe410d7									
  traffic_opposite.go:402	0xe41254		4889442408		MOVQ AX, 0x8(SP)								
  traffic_opposite.go:402	0xe41259		48895c2410		MOVQ BX, 0x10(SP)								
  traffic_opposite.go:402	0xe4125e		48894c2418		MOVQ CX, 0x18(SP)								
  traffic_opposite.go:402	0xe41263		48897c2420		MOVQ DI, 0x20(SP)								
  traffic_opposite.go:402	0xe41268		4889742428		MOVQ SI, 0x28(SP)								
  traffic_opposite.go:402	0xe4126d		e86e5263ff		CALL runtime.morestack_noctxt.abi0(SB)						
  traffic_opposite.go:402	0xe41272		488b442408		MOVQ 0x8(SP), AX								
  traffic_opposite.go:402	0xe41277		488b5c2410		MOVQ 0x10(SP), BX								
  traffic_opposite.go:402	0xe4127c		488b4c2418		MOVQ 0x18(SP), CX								
  traffic_opposite.go:402	0xe41281		488b7c2420		MOVQ 0x20(SP), DI								
  traffic_opposite.go:402	0xe41286		488b742428		MOVQ 0x28(SP), SI								
  traffic_opposite.go:402	0xe4128b		e990f3ffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).applyOppositePause(SB)	
  :-1				0xe41290		cc			INT $__subsystem__(SB)								
  :-1				0xe41291		cc			INT $__subsystem__(SB)								
  :-1				0xe41292		cc			INT $__subsystem__(SB)								
  :-1				0xe41293		cc			INT $__subsystem__(SB)								
  :-1				0xe41294		cc			INT $__subsystem__(SB)								
  :-1				0xe41295		cc			INT $__subsystem__(SB)								
  :-1				0xe41296		cc			INT $__subsystem__(SB)								
  :-1				0xe41297		cc			INT $__subsystem__(SB)								
  :-1				0xe41298		cc			INT $__subsystem__(SB)								
  :-1				0xe41299		cc			INT $__subsystem__(SB)								
  :-1				0xe4129a		cc			INT $__subsystem__(SB)								
  :-1				0xe4129b		cc			INT $__subsystem__(SB)								
  :-1				0xe4129c		cc			INT $__subsystem__(SB)								
  :-1				0xe4129d		cc			INT $__subsystem__(SB)								
  :-1				0xe4129e		cc			INT $__subsystem__(SB)								
  :-1				0xe4129f		cc			INT $__subsystem__(SB)								

