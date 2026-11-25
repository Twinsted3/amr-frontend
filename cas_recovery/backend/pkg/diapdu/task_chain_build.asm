TEXT CAS-Backend/pkg/diapdu.PrependApproachToTaskChain(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/task_chain_build.go
  task_chain_build.go:12	0xe2d080		4c8d6424d0		LEAQ -0x30(SP), R12						
  task_chain_build.go:12	0xe2d085		4d3b6610		CMPQ R12, 0x10(R14)						
  task_chain_build.go:12	0xe2d089		0f86f5020000		JBE 0xe2d384							
  task_chain_build.go:12	0xe2d08f		55			PUSHQ BP							
  task_chain_build.go:12	0xe2d090		4889e5			MOVQ SP, BP							
  task_chain_build.go:12	0xe2d093		4881eca8000000		SUBQ $.file+91(SB), SP						
  task_chain_build.go:12	0xe2d09a		48898424b8000000	MOVQ AX, 0xb8(SP)						
  task_chain_build.go:12	0xe2d0a2		48898c24c8000000	MOVQ CX, 0xc8(SP)						
  task_chain_build.go:13	0xe2d0aa		4885ff			TESTQ DI, DI							
  task_chain_build.go:13	0xe2d0ad		0f84de010000		JE 0xe2d291							
  task_chain_build.go:13	0xe2d0b3		4889b424d8000000	MOVQ SI, 0xd8(SP)						
  task_chain_build.go:13	0xe2d0bb		4889bc24d0000000	MOVQ DI, 0xd0(SP)						
  task_chain_build.go:13	0xe2d0c3		48898c24c8000000	MOVQ CX, 0xc8(SP)						
  task_chain_build.go:16	0xe2d0cb		e8f0586bff		CALL strings.TrimSpace(SB)					
  task_chain_build.go:17	0xe2d0d0		4885db			TESTQ BX, BX							
  task_chain_build.go:17	0xe2d0d3		0f8488010000		JE 0xe2d261							
  task_chain_build.go:16	0xe2d0d9		48895c2448		MOVQ BX, 0x48(SP)						
  task_chain_build.go:16	0xe2d0de		4889442470		MOVQ AX, 0x70(SP)						
  task_chain_build.go:20	0xe2d0e3		488b8c24c8000000	MOVQ 0xc8(SP), CX						
  task_chain_build.go:20	0xe2d0eb		488b5908		MOVQ 0x8(CX), BX						
  task_chain_build.go:20	0xe2d0ef		488b01			MOVQ 0(CX), AX							
  task_chain_build.go:20	0xe2d0f2		e8c9586bff		CALL strings.TrimSpace(SB)					
  task_chain_build.go:20	0xe2d0f7		660f1f840000000000	NOPW 0(AX)(AX*1)						
  task_chain_build.go:21	0xe2d100		4885db			TESTQ BX, BX							
  task_chain_build.go:21	0xe2d103		0f8427010000		JE 0xe2d230							
  task_chain_build.go:20	0xe2d109		48895c2450		MOVQ BX, 0x50(SP)						
  task_chain_build.go:20	0xe2d10e		4889442478		MOVQ AX, 0x78(SP)						
  task_chain_build.go:24	0xe2d113		488b4c2448		MOVQ 0x48(SP), CX						
  task_chain_build.go:24	0xe2d118		4839cb			CMPQ BX, CX							
  task_chain_build.go:24	0xe2d11b		7524			JNE 0xe2d141							
  task_chain_build.go:24	0xe2d11d		4889c3			MOVQ AX, BX							
  task_chain_build.go:24	0xe2d120		488b442470		MOVQ 0x70(SP), AX						
  task_chain_build.go:24	0xe2d125		e8365d5dff		CALL runtime.memequal(SB)					
  task_chain_build.go:24	0xe2d12a		84c0			TESTL AL, AL							
  task_chain_build.go:24	0xe2d12c		0f85d6000000		JNE 0xe2d208							
  task_chain_build.go:28	0xe2d132		488b442478		MOVQ 0x78(SP), AX						
  task_chain_build.go:28	0xe2d137		488b4c2448		MOVQ 0x48(SP), CX						
  task_chain_build.go:28	0xe2d13c		488b5c2450		MOVQ 0x50(SP), BX						
  task_chain_build.go:28	0xe2d141		4889df			MOVQ BX, DI							
  task_chain_build.go:28	0xe2d144		31f6			XORL SI, SI							
  task_chain_build.go:28	0xe2d146		4531c0			XORL R8, R8							
  task_chain_build.go:28	0xe2d149		4531c9			XORL R9, R9							
  task_chain_build.go:28	0xe2d14c		4d89c2			MOVQ R8, R10							
  task_chain_build.go:28	0xe2d14f		4d89c3			MOVQ R8, R11							
  task_chain_build.go:28	0xe2d152		4889cb			MOVQ CX, BX							
  task_chain_build.go:28	0xe2d155		4889c1			MOVQ AX, CX							
  task_chain_build.go:28	0xe2d158		488b442470		MOVQ 0x70(SP), AX						
  task_chain_build.go:28	0xe2d15d		0f1f00			NOPL 0(AX)							
  task_chain_build.go:28	0xe2d160		e83badffff		CALL CAS-Backend/pkg/diapdu.buildGotoTasks(SB)			
  task_chain_build.go:28	0xe2d165		4584d2			TESTL R10, R10							
  task_chain_build.go:29	0xe2d168		7407			JE 0xe2d171							
  task_chain_build.go:29	0xe2d16a		31d2			XORL DX, DX							
  task_chain_build.go:32	0xe2d16c		e945010000		JMP 0xe2d2b6							
  task_chain_build.go:30	0xe2d171		440f11bc2488000000	MOVUPS X15, 0x88(SP)						
  task_chain_build.go:30	0xe2d17a		440f11bc2498000000	MOVUPS X15, 0x98(SP)						
  task_chain_build.go:30	0xe2d183		488b442470		MOVQ 0x70(SP), AX						
  task_chain_build.go:30	0xe2d188		488b5c2448		MOVQ 0x48(SP), BX						
  task_chain_build.go:30	0xe2d18d		e88ecf63ff		CALL runtime.convTstring(SB)					
  task_chain_build.go:30	0xe2d192		488d0d87572100		LEAQ runtime.types+383264(SB), CX				
  task_chain_build.go:30	0xe2d199		48898c2488000000	MOVQ CX, 0x88(SP)						
  task_chain_build.go:30	0xe2d1a1		4889842490000000	MOVQ AX, 0x90(SP)						
  task_chain_build.go:30	0xe2d1a9		488b442478		MOVQ 0x78(SP), AX						
  task_chain_build.go:30	0xe2d1ae		488b5c2450		MOVQ 0x50(SP), BX						
  task_chain_build.go:30	0xe2d1b3		e868cf63ff		CALL runtime.convTstring(SB)					
  task_chain_build.go:30	0xe2d1b8		488d0d61572100		LEAQ runtime.types+383264(SB), CX				
  task_chain_build.go:30	0xe2d1bf		48898c2498000000	MOVQ CX, 0x98(SP)						
  task_chain_build.go:30	0xe2d1c7		48898424a0000000	MOVQ AX, 0xa0(SP)						
  task_chain_build.go:30	0xe2d1cf		488d05ba523700		LEAQ go:string.*+237448(SB), AX					
  task_chain_build.go:30	0xe2d1d6		bb3b000000		MOVL $__major_os_version__+53(SB), BX				
  task_chain_build.go:30	0xe2d1db		488d8c2488000000	LEAQ 0x88(SP), CX						
  task_chain_build.go:30	0xe2d1e3		bf02000000		MOVL $__minor_os_version__+1(SB), DI				
  task_chain_build.go:30	0xe2d1e8		4889fe			MOVQ DI, SI							
  task_chain_build.go:30	0xe2d1eb		e8d0f16eff		CALL fmt.Errorf(SB)						
  task_chain_build.go:30	0xe2d1f0		31c9			XORL CX, CX							
  task_chain_build.go:30	0xe2d1f2		31ff			XORL DI, DI							
  task_chain_build.go:30	0xe2d1f4		4889c6			MOVQ AX, SI							
  task_chain_build.go:30	0xe2d1f7		4989d8			MOVQ BX, R8							
  task_chain_build.go:30	0xe2d1fa		31c0			XORL AX, AX							
  task_chain_build.go:30	0xe2d1fc		4889cb			MOVQ CX, BX							
  task_chain_build.go:30	0xe2d1ff		4881c4a8000000		ADDQ $.file+91(SB), SP						
  task_chain_build.go:30	0xe2d206		5d			POPQ BP								
  task_chain_build.go:30	0xe2d207		c3			RET								
  task_chain_build.go:25	0xe2d208		488b8424c8000000	MOVQ 0xc8(SP), AX						
  task_chain_build.go:25	0xe2d210		488b9c24d0000000	MOVQ 0xd0(SP), BX						
  task_chain_build.go:25	0xe2d218		488b8c24d8000000	MOVQ 0xd8(SP), CX						
  task_chain_build.go:25	0xe2d220		31ff			XORL DI, DI							
  task_chain_build.go:25	0xe2d222		31f6			XORL SI, SI							
  task_chain_build.go:25	0xe2d224		4531c0			XORL R8, R8							
  task_chain_build.go:25	0xe2d227		4881c4a8000000		ADDQ $.file+91(SB), SP						
  task_chain_build.go:25	0xe2d22e		5d			POPQ BP								
  task_chain_build.go:25	0xe2d22f		c3			RET								
  task_chain_build.go:22	0xe2d230		488d0532f63500		LEAQ go:string.*+148321(SB), AX					
  task_chain_build.go:22	0xe2d237		bb1f000000		MOVL $__major_os_version__+25(SB), BX				
  task_chain_build.go:22	0xe2d23c		31c9			XORL CX, CX							
  task_chain_build.go:22	0xe2d23e		31ff			XORL DI, DI							
  task_chain_build.go:22	0xe2d240		4889fe			MOVQ DI, SI							
  task_chain_build.go:22	0xe2d243		e878f16eff		CALL fmt.Errorf(SB)						
  task_chain_build.go:22	0xe2d248		31c9			XORL CX, CX							
  task_chain_build.go:22	0xe2d24a		31ff			XORL DI, DI							
  task_chain_build.go:22	0xe2d24c		4889c6			MOVQ AX, SI							
  task_chain_build.go:22	0xe2d24f		4989d8			MOVQ BX, R8							
  task_chain_build.go:22	0xe2d252		31c0			XORL AX, AX							
  task_chain_build.go:22	0xe2d254		4889cb			MOVQ CX, BX							
  task_chain_build.go:22	0xe2d257		4881c4a8000000		ADDQ $.file+91(SB), SP						
  task_chain_build.go:22	0xe2d25e		5d			POPQ BP								
  task_chain_build.go:22	0xe2d25f		90			NOPL								
  task_chain_build.go:22	0xe2d260		c3			RET								
  task_chain_build.go:18	0xe2d261		488d052ce63500		LEAQ go:string.*+144268(SB), AX					
  task_chain_build.go:18	0xe2d268		bb1e000000		MOVL $__major_os_version__+24(SB), BX				
  task_chain_build.go:18	0xe2d26d		31c9			XORL CX, CX							
  task_chain_build.go:18	0xe2d26f		31ff			XORL DI, DI							
  task_chain_build.go:18	0xe2d271		4889fe			MOVQ DI, SI							
  task_chain_build.go:18	0xe2d274		e847f16eff		CALL fmt.Errorf(SB)						
  task_chain_build.go:18	0xe2d279		31c9			XORL CX, CX							
  task_chain_build.go:18	0xe2d27b		31ff			XORL DI, DI							
  task_chain_build.go:18	0xe2d27d		4889c6			MOVQ AX, SI							
  task_chain_build.go:18	0xe2d280		4989d8			MOVQ BX, R8							
  task_chain_build.go:18	0xe2d283		31c0			XORL AX, AX							
  task_chain_build.go:18	0xe2d285		4889cb			MOVQ CX, BX							
  task_chain_build.go:18	0xe2d288		4881c4a8000000		ADDQ $.file+91(SB), SP						
  task_chain_build.go:18	0xe2d28f		5d			POPQ BP								
  task_chain_build.go:18	0xe2d290		c3			RET								
  task_chain_build.go:14	0xe2d291		4889c8			MOVQ CX, AX							
  task_chain_build.go:14	0xe2d294		4889fb			MOVQ DI, BX							
  task_chain_build.go:14	0xe2d297		4889f1			MOVQ SI, CX							
  task_chain_build.go:14	0xe2d29a		31ff			XORL DI, DI							
  task_chain_build.go:14	0xe2d29c		31f6			XORL SI, SI							
  task_chain_build.go:14	0xe2d29e		4531c0			XORL R8, R8							
  task_chain_build.go:14	0xe2d2a1		4881c4a8000000		ADDQ $.file+91(SB), SP						
  task_chain_build.go:14	0xe2d2a8		5d			POPQ BP								
  task_chain_build.go:14	0xe2d2a9		c3			RET								
  task_chain_build.go:33	0xe2d2aa		4ac744002000000000	MOVQ $0x0, 0x20(AX)(R8*1)					
  task_chain_build.go:32	0xe2d2b3		48ffc2			INCQ DX								
  task_chain_build.go:32	0xe2d2b6		4839d3			CMPQ BX, DX							
  task_chain_build.go:32	0xe2d2b9		7e28			JLE 0xe2d2e3							
  task_chain_build.go:33	0xe2d2bb		4c69c2e0000000		IMULQ $.file+147(SB), DX, R8					
  task_chain_build.go:33	0xe2d2c2		4ac744002800000000	MOVQ $0x0, 0x28(AX)(R8*1)					
  task_chain_build.go:33	0xe2d2cb		833d7e08730200		CMPL runtime.writeBarrier(SB), $0x0				
  task_chain_build.go:33	0xe2d2d2		74d6			JE 0xe2d2aa							
  task_chain_build.go:33	0xe2d2d4		4e8b4c0020		MOVQ 0x20(AX)(R8*1), R9						
  task_chain_build.go:33	0xe2d2d9		e842b164ff		CALL runtime.gcWriteBarrier1(SB)				
  task_chain_build.go:33	0xe2d2de		4d890b			MOVQ R9, 0(R11)							
  task_chain_build.go:33	0xe2d2e1		ebc7			JMP 0xe2d2aa							
  task_chain_build.go:35	0xe2d2e3		488bbc24d0000000	MOVQ 0xd0(SP), DI						
  task_chain_build.go:35	0xe2d2eb		488d143b		LEAQ 0(BX)(DI*1), DX						
  task_chain_build.go:35	0xe2d2ef		4839d1			CMPQ CX, DX							
  task_chain_build.go:35	0xe2d2f2		7324			JAE 0xe2d318							
  task_chain_build.go:28	0xe2d2f4		48895c2458		MOVQ BX, 0x58(SP)						
  task_chain_build.go:35	0xe2d2f9		4889d3			MOVQ DX, BX							
  task_chain_build.go:35	0xe2d2fc		488d357d4e3100		LEAQ runtime.types+1429888(SB), SI				
  task_chain_build.go:35	0xe2d303		e8384964ff		CALL runtime.growslice(SB)					
  task_chain_build.go:35	0xe2d308		488bbc24d0000000	MOVQ 0xd0(SP), DI						
  task_chain_build.go:35	0xe2d310		4889da			MOVQ BX, DX							
  task_chain_build.go:35	0xe2d313		488b5c2458		MOVQ 0x58(SP), BX						
  task_chain_build.go:35	0xe2d318		4889842480000000	MOVQ AX, 0x80(SP)						
  task_chain_build.go:35	0xe2d320		4889542468		MOVQ DX, 0x68(SP)						
  task_chain_build.go:35	0xe2d325		48894c2460		MOVQ CX, 0x60(SP)						
  task_chain_build.go:35	0xe2d32a		4989d8			MOVQ BX, R8							
  task_chain_build.go:35	0xe2d32d		4829cb			SUBQ CX, BX							
  task_chain_build.go:35	0xe2d330		4c29c2			SUBQ R8, DX							
  task_chain_build.go:35	0xe2d333		48c1fb3f		SARQ $__major_os_version__+57(SB), BX				
  task_chain_build.go:35	0xe2d337		4d69c0e0000000		IMULQ $.file+147(SB), R8, R8					
  task_chain_build.go:35	0xe2d33e		4921d8			ANDQ BX, R8							
  task_chain_build.go:35	0xe2d341		4a8d1c00		LEAQ 0(AX)(R8*1), BX						
  task_chain_build.go:35	0xe2d345		4889fe			MOVQ DI, SI							
  task_chain_build.go:35	0xe2d348		488bbc24c8000000	MOVQ 0xc8(SP), DI						
  task_chain_build.go:35	0xe2d350		488d05294e3100		LEAQ runtime.types+1429888(SB), AX				
  task_chain_build.go:35	0xe2d357		4889d1			MOVQ DX, CX							
  task_chain_build.go:35	0xe2d35a		e8e11164ff		CALL runtime.typedslicecopy(SB)					
  task_chain_build.go:35	0xe2d35f		488b842480000000	MOVQ 0x80(SP), AX						
  task_chain_build.go:35	0xe2d367		488b5c2468		MOVQ 0x68(SP), BX						
  task_chain_build.go:35	0xe2d36c		488b4c2460		MOVQ 0x60(SP), CX						
  task_chain_build.go:35	0xe2d371		bf01000000		MOVL $__minor_os_version__(SB), DI				
  task_chain_build.go:35	0xe2d376		31f6			XORL SI, SI							
  task_chain_build.go:35	0xe2d378		4531c0			XORL R8, R8							
  task_chain_build.go:35	0xe2d37b		4881c4a8000000		ADDQ $.file+91(SB), SP						
  task_chain_build.go:35	0xe2d382		5d			POPQ BP								
  task_chain_build.go:35	0xe2d383		c3			RET								
  task_chain_build.go:12	0xe2d384		4889442408		MOVQ AX, 0x8(SP)						
  task_chain_build.go:12	0xe2d389		48895c2410		MOVQ BX, 0x10(SP)						
  task_chain_build.go:12	0xe2d38e		48894c2418		MOVQ CX, 0x18(SP)						
  task_chain_build.go:12	0xe2d393		48897c2420		MOVQ DI, 0x20(SP)						
  task_chain_build.go:12	0xe2d398		4889742428		MOVQ SI, 0x28(SP)						
  task_chain_build.go:12	0xe2d39d		0f1f00			NOPL 0(AX)							
  task_chain_build.go:12	0xe2d3a0		e83b9164ff		CALL runtime.morestack_noctxt.abi0(SB)				
  task_chain_build.go:12	0xe2d3a5		488b442408		MOVQ 0x8(SP), AX						
  task_chain_build.go:12	0xe2d3aa		488b5c2410		MOVQ 0x10(SP), BX						
  task_chain_build.go:12	0xe2d3af		488b4c2418		MOVQ 0x18(SP), CX						
  task_chain_build.go:12	0xe2d3b4		488b7c2420		MOVQ 0x20(SP), DI						
  task_chain_build.go:12	0xe2d3b9		488b742428		MOVQ 0x28(SP), SI						
  task_chain_build.go:12	0xe2d3be		6690			NOPW								
  task_chain_build.go:12	0xe2d3c0		e9bbfcffff		JMP CAS-Backend/pkg/diapdu.PrependApproachToTaskChain(SB)	
  :-1				0xe2d3c5		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3c6		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3c7		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3c8		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3c9		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3ca		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3cb		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3cc		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3cd		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3ce		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3cf		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3d0		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3d1		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3d2		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3d3		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3d4		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3d5		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3d6		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3d7		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3d8		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3d9		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3da		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3db		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3dc		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3dd		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3de		cc			INT $__subsystem__(SB)						
  :-1				0xe2d3df		cc			INT $__subsystem__(SB)						

