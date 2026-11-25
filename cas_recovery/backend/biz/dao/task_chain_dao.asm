TEXT CAS-Backend/biz/dao.TaskChain.TableName(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_chain_dao.go
  task_chain_dao.go:21	0x996920		488d059e307e00		LEAQ go:string.*+70845(SB), AX		
  task_chain_dao.go:21	0x996927		bb0e000000		MOVL $__major_os_version__+8(SB), BX	
  task_chain_dao.go:21	0x99692c		c3			RET					
  :-1			0x99692d		cc			INT $__subsystem__(SB)			
  :-1			0x99692e		cc			INT $__subsystem__(SB)			
  :-1			0x99692f		cc			INT $__subsystem__(SB)			
  :-1			0x996930		cc			INT $__subsystem__(SB)			
  :-1			0x996931		cc			INT $__subsystem__(SB)			
  :-1			0x996932		cc			INT $__subsystem__(SB)			
  :-1			0x996933		cc			INT $__subsystem__(SB)			
  :-1			0x996934		cc			INT $__subsystem__(SB)			
  :-1			0x996935		cc			INT $__subsystem__(SB)			
  :-1			0x996936		cc			INT $__subsystem__(SB)			
  :-1			0x996937		cc			INT $__subsystem__(SB)			
  :-1			0x996938		cc			INT $__subsystem__(SB)			
  :-1			0x996939		cc			INT $__subsystem__(SB)			
  :-1			0x99693a		cc			INT $__subsystem__(SB)			
  :-1			0x99693b		cc			INT $__subsystem__(SB)			
  :-1			0x99693c		cc			INT $__subsystem__(SB)			
  :-1			0x99693d		cc			INT $__subsystem__(SB)			
  :-1			0x99693e		cc			INT $__subsystem__(SB)			
  :-1			0x99693f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.InsertTaskChain(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_chain_dao.go
  task_chain_dao.go:24	0x996940		493b6610		CMPQ SP, 0x10(R14)				
  task_chain_dao.go:24	0x996944		0f8619010000		JBE 0x996a63					
  task_chain_dao.go:24	0x99694a		55			PUSHQ BP					
  task_chain_dao.go:24	0x99694b		4889e5			MOVQ SP, BP					
  task_chain_dao.go:24	0x99694e		4883ec48		SUBQ $__major_os_version__+66(SB), SP		
  task_chain_dao.go:25	0x996952		4885c0			TESTQ AX, AX					
  task_chain_dao.go:25	0x996955		0f8400010000		JE 0x996a5b					
  task_chain_dao.go:28	0x99695b		4883783800		CMPQ 0x38(AX), $0x0				
  task_chain_dao.go:28	0x996960		7578			JNE 0x9969da					
  task_chain_dao.go:28	0x996962		488b5040		MOVQ 0x40(AX), DX				
  time.go:181		0x996966		480fbae23f		BTQ $__major_os_version__+57(SB), DX		
  time.go:181		0x99696b		7319			JAE 0x996986					
  time.go:182		0x99696d		4889d6			MOVQ DX, SI					
  time.go:182		0x996970		48d1e2			SHLQ $__minor_os_version__(SB), DX		
  time.go:182		0x996973		48c1ea1f		SHRQ $__major_os_version__+25(SB), DX		
  time.go:182		0x996977		48bf807fb1d70d000000	MOVQ $0xdd7b17f80, DI				
  time.go:182		0x996981		4801fa			ADDQ DI, DX					
  time.go:466		0x996984		eb0d			JMP 0x996993					
  task_chain_dao.go:28	0x996986		488b7048		MOVQ 0x48(AX), SI				
  time.go:176		0x99698a		4889f1			MOVQ SI, CX					
  time.go:176		0x99698d		4889d6			MOVQ DX, SI					
  time.go:466		0x996990		4889ca			MOVQ CX, DX					
  time.go:466		0x996993		4885d2			TESTQ DX, DX					
  time.go:466		0x996996		7542			JNE 0x9969da					
  time.go:176		0x996998		81e6ffffff3f		ANDL $0x3fffffff, SI				
  time.go:176		0x99699e		6690			NOPW						
  time.go:466		0x9969a0		85f6			TESTL SI, SI					
  task_chain_dao.go:28	0x9969a2		7536			JNE 0x9969da					
  task_chain_dao.go:25	0x9969a4		4889442458		MOVQ AX, 0x58(SP)				
  task_chain_dao.go:29	0x9969a9		e8f276b1ff		CALL time.Now(SB)				
  task_chain_dao.go:29	0x9969ae		488b542458		MOVQ 0x58(SP), DX				
  task_chain_dao.go:29	0x9969b3		48894240		MOVQ AX, 0x40(DX)				
  task_chain_dao.go:29	0x9969b7		48895a48		MOVQ BX, 0x48(DX)				
  task_chain_dao.go:29	0x9969bb		833d8e71bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:29	0x9969c2		7410			JE 0x9969d4					
  task_chain_dao.go:29	0x9969c4		e8771aaeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:29	0x9969c9		49890b			MOVQ CX, 0(R11)					
  task_chain_dao.go:29	0x9969cc		488b7250		MOVQ 0x50(DX), SI				
  task_chain_dao.go:29	0x9969d0		49897308		MOVQ SI, 0x8(R11)				
  task_chain_dao.go:29	0x9969d4		48894a50		MOVQ CX, 0x50(DX)				
  task_chain_dao.go:29	0x9969d8		eb03			JMP 0x9969dd					
  task_chain_dao.go:31	0x9969da		4889c2			MOVQ AX, DX					
  task_chain_dao.go:31	0x9969dd		488b055cb6b702		MOVQ runtime.bss(SB), AX			
  task_chain_dao.go:31	0x9969e4		488d1db5c46d00		LEAQ runtime.types+581280(SB), BX		
  task_chain_dao.go:31	0x9969eb		4889d1			MOVQ DX, CX					
  task_chain_dao.go:31	0x9969ee		e84d90f8ff		CALL gorm.io/gorm.(*DB).Create(SB)		
  task_chain_dao.go:32	0x9969f3		4883780800		CMPQ 0x8(AX), $0x0				
  task_chain_dao.go:32	0x9969f8		7456			JE 0x996a50					
  task_chain_dao.go:33	0x9969fa		440f117c2438		MOVUPS X15, 0x38(SP)				
  task_chain_dao.go:33	0x996a00		488b5008		MOVQ 0x8(AX), DX				
  task_chain_dao.go:33	0x996a04		4885d2			TESTQ DX, DX					
  task_chain_dao.go:33	0x996a07		7404			JE 0x996a0d					
  task_chain_dao.go:33	0x996a09		488b5208		MOVQ 0x8(DX), DX				
  task_chain_dao.go:33	0x996a0d		4c8b5010		MOVQ 0x10(AX), R10				
  task_chain_dao.go:33	0x996a11		4889542438		MOVQ DX, 0x38(SP)				
  task_chain_dao.go:33	0x996a16		4c89542440		MOVQ R10, 0x40(SP)				
  print.go:233		0x996a1b		488b1d5eb6b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x996a22		488d05b7504d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x996a29		488d0d82017f00		LEAQ go:string.*+124586(SB), CX			
  print.go:233		0x996a30		bf1a000000		MOVL $__major_os_version__+20(SB), DI		
  print.go:233		0x996a35		488d742438		LEAQ 0x38(SP), SI				
  print.go:233		0x996a3a		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x996a40		4d89c1			MOVQ R8, R9					
  print.go:233		0x996a43		e8d887b8ff		CALL fmt.Fprintf(SB)				
  task_chain_dao.go:34	0x996a48		31c0			XORL AX, AX					
  task_chain_dao.go:34	0x996a4a		4883c448		ADDQ $__major_os_version__+66(SB), SP		
  task_chain_dao.go:34	0x996a4e		5d			POPQ BP						
  task_chain_dao.go:34	0x996a4f		c3			RET						
  task_chain_dao.go:36	0x996a50		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_chain_dao.go:36	0x996a55		4883c448		ADDQ $__major_os_version__+66(SB), SP		
  task_chain_dao.go:36	0x996a59		5d			POPQ BP						
  task_chain_dao.go:36	0x996a5a		c3			RET						
  task_chain_dao.go:26	0x996a5b		31c0			XORL AX, AX					
  task_chain_dao.go:26	0x996a5d		4883c448		ADDQ $__major_os_version__+66(SB), SP		
  task_chain_dao.go:26	0x996a61		5d			POPQ BP						
  task_chain_dao.go:26	0x996a62		c3			RET						
  task_chain_dao.go:24	0x996a63		4889442408		MOVQ AX, 0x8(SP)				
  task_chain_dao.go:24	0x996a68		e873faadff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_chain_dao.go:24	0x996a6d		488b442408		MOVQ 0x8(SP), AX				
  task_chain_dao.go:24	0x996a72		e9c9feffff		JMP CAS-Backend/biz/dao.InsertTaskChain(SB)	
  :-1			0x996a77		cc			INT $__subsystem__(SB)				
  :-1			0x996a78		cc			INT $__subsystem__(SB)				
  :-1			0x996a79		cc			INT $__subsystem__(SB)				
  :-1			0x996a7a		cc			INT $__subsystem__(SB)				
  :-1			0x996a7b		cc			INT $__subsystem__(SB)				
  :-1			0x996a7c		cc			INT $__subsystem__(SB)				
  :-1			0x996a7d		cc			INT $__subsystem__(SB)				
  :-1			0x996a7e		cc			INT $__subsystem__(SB)				
  :-1			0x996a7f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.DeleteTaskChain(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_chain_dao.go
  task_chain_dao.go:39	0x996a80		493b6610		CMPQ SP, 0x10(R14)				
  task_chain_dao.go:39	0x996a84		0f8631010000		JBE 0x996bbb					
  task_chain_dao.go:39	0x996a8a		55			PUSHQ BP					
  task_chain_dao.go:39	0x996a8b		4889e5			MOVQ SP, BP					
  task_chain_dao.go:39	0x996a8e		4883ec70		SUBQ $.file+35(SB), SP				
  task_chain_dao.go:41	0x996a92		4889842480000000	MOVQ AX, 0x80(SP)				
  task_chain_dao.go:40	0x996a9a		488d059faa7800		LEAQ runtime.types+1295680(SB), AX		
  task_chain_dao.go:40	0x996aa1		e8faaca7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:40	0x996aa6		4889442448		MOVQ AX, 0x48(SP)				
  task_chain_dao.go:40	0x996aab		488d05ee736b00		LEAQ runtime.types+429728(SB), AX		
  task_chain_dao.go:40	0x996ab2		e8e9aca7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:40	0x996ab7		4889442440		MOVQ AX, 0x40(SP)				
  task_chain_dao.go:40	0x996abc		488b842480000000	MOVQ 0x80(SP), AX				
  task_chain_dao.go:40	0x996ac4		e8d735adff		CALL runtime.convT64(SB)			
  task_chain_dao.go:40	0x996ac9		488d0d90c06a00		LEAQ runtime.types+383840(SB), CX		
  task_chain_dao.go:40	0x996ad0		488b7c2440		MOVQ 0x40(SP), DI				
  task_chain_dao.go:40	0x996ad5		48890f			MOVQ CX, 0(DI)					
  task_chain_dao.go:40	0x996ad8		833d7170bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:40	0x996adf		90			NOPL						
  task_chain_dao.go:40	0x996ae0		7410			JE 0x996af2					
  task_chain_dao.go:40	0x996ae2		e85919aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:40	0x996ae7		498903			MOVQ AX, 0(R11)					
  task_chain_dao.go:40	0x996aea		488b5708		MOVQ 0x8(DI), DX				
  task_chain_dao.go:40	0x996aee		49895308		MOVQ DX, 0x8(R11)				
  task_chain_dao.go:40	0x996af2		48894708		MOVQ AX, 0x8(DI)				
  task_chain_dao.go:40	0x996af6		488b0543b5b702		MOVQ runtime.bss(SB), AX			
  task_chain_dao.go:40	0x996afd		488d1d9cc36d00		LEAQ runtime.types+581280(SB), BX		
  task_chain_dao.go:40	0x996b04		488b4c2448		MOVQ 0x48(SP), CX				
  task_chain_dao.go:40	0x996b09		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_chain_dao.go:40	0x996b0e		4989f0			MOVQ SI, R8					
  task_chain_dao.go:40	0x996b11		e80ac6f8ff		CALL gorm.io/gorm.(*DB).Delete(SB)		
  task_chain_dao.go:41	0x996b16		4883780800		CMPQ 0x8(AX), $0x0				
  task_chain_dao.go:41	0x996b1b		0f1f440000		NOPL 0(AX)(AX*1)				
  task_chain_dao.go:41	0x996b20		0f8487000000		JE 0x996bad					
  task_chain_dao.go:40	0x996b26		4889442438		MOVQ AX, 0x38(SP)				
  task_chain_dao.go:42	0x996b2b		440f117c2450		MOVUPS X15, 0x50(SP)				
  task_chain_dao.go:42	0x996b31		440f117c2460		MOVUPS X15, 0x60(SP)				
  task_chain_dao.go:42	0x996b37		488b842480000000	MOVQ 0x80(SP), AX				
  task_chain_dao.go:42	0x996b3f		90			NOPL						
  task_chain_dao.go:42	0x996b40		e85b35adff		CALL runtime.convT64(SB)			
  task_chain_dao.go:42	0x996b45		488d0d14c06a00		LEAQ runtime.types+383840(SB), CX		
  task_chain_dao.go:42	0x996b4c		48894c2450		MOVQ CX, 0x50(SP)				
  task_chain_dao.go:42	0x996b51		4889442458		MOVQ AX, 0x58(SP)				
  task_chain_dao.go:42	0x996b56		488b4c2438		MOVQ 0x38(SP), CX				
  task_chain_dao.go:42	0x996b5b		488b5108		MOVQ 0x8(CX), DX				
  task_chain_dao.go:42	0x996b5f		90			NOPL						
  task_chain_dao.go:42	0x996b60		4885d2			TESTQ DX, DX					
  task_chain_dao.go:42	0x996b63		7404			JE 0x996b69					
  task_chain_dao.go:42	0x996b65		488b5208		MOVQ 0x8(DX), DX				
  task_chain_dao.go:42	0x996b69		4c8b5110		MOVQ 0x10(CX), R10				
  task_chain_dao.go:42	0x996b6d		4889542460		MOVQ DX, 0x60(SP)				
  task_chain_dao.go:42	0x996b72		4c89542468		MOVQ R10, 0x68(SP)				
  print.go:233		0x996b77		488b1d02b5b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x996b7e		488d055b4f4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x996b85		488d0d7e0c8000		LEAQ go:string.*+193282(SB), CX			
  print.go:233		0x996b8c		bf2a000000		MOVL $__major_os_version__+36(SB), DI		
  print.go:233		0x996b91		488d742450		LEAQ 0x50(SP), SI				
  print.go:233		0x996b96		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x996b9c		4d89c1			MOVQ R8, R9					
  print.go:233		0x996b9f		90			NOPL						
  print.go:233		0x996ba0		e87b86b8ff		CALL fmt.Fprintf(SB)				
  task_chain_dao.go:43	0x996ba5		31c0			XORL AX, AX					
  task_chain_dao.go:43	0x996ba7		4883c470		ADDQ $.file+35(SB), SP				
  task_chain_dao.go:43	0x996bab		5d			POPQ BP						
  task_chain_dao.go:43	0x996bac		c3			RET						
  task_chain_dao.go:45	0x996bad		4883781800		CMPQ 0x18(AX), $0x0				
  task_chain_dao.go:45	0x996bb2		0f9fc0			SETG AL						
  task_chain_dao.go:45	0x996bb5		4883c470		ADDQ $.file+35(SB), SP				
  task_chain_dao.go:45	0x996bb9		5d			POPQ BP						
  task_chain_dao.go:45	0x996bba		c3			RET						
  task_chain_dao.go:39	0x996bbb		4889442408		MOVQ AX, 0x8(SP)				
  task_chain_dao.go:39	0x996bc0		e81bf9adff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_chain_dao.go:39	0x996bc5		488b442408		MOVQ 0x8(SP), AX				
  task_chain_dao.go:39	0x996bca		e9b1feffff		JMP CAS-Backend/biz/dao.DeleteTaskChain(SB)	
  :-1			0x996bcf		cc			INT $__subsystem__(SB)				
  :-1			0x996bd0		cc			INT $__subsystem__(SB)				
  :-1			0x996bd1		cc			INT $__subsystem__(SB)				
  :-1			0x996bd2		cc			INT $__subsystem__(SB)				
  :-1			0x996bd3		cc			INT $__subsystem__(SB)				
  :-1			0x996bd4		cc			INT $__subsystem__(SB)				
  :-1			0x996bd5		cc			INT $__subsystem__(SB)				
  :-1			0x996bd6		cc			INT $__subsystem__(SB)				
  :-1			0x996bd7		cc			INT $__subsystem__(SB)				
  :-1			0x996bd8		cc			INT $__subsystem__(SB)				
  :-1			0x996bd9		cc			INT $__subsystem__(SB)				
  :-1			0x996bda		cc			INT $__subsystem__(SB)				
  :-1			0x996bdb		cc			INT $__subsystem__(SB)				
  :-1			0x996bdc		cc			INT $__subsystem__(SB)				
  :-1			0x996bdd		cc			INT $__subsystem__(SB)				
  :-1			0x996bde		cc			INT $__subsystem__(SB)				
  :-1			0x996bdf		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.UpdateTaskChain(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_chain_dao.go
  task_chain_dao.go:48	0x996be0		4c8d6424e0		LEAQ -0x20(SP), R12				
  task_chain_dao.go:48	0x996be5		4d3b6610		CMPQ R12, 0x10(R14)				
  task_chain_dao.go:48	0x996be9		0f861b040000		JBE 0x99700a					
  task_chain_dao.go:48	0x996bef		55			PUSHQ BP					
  task_chain_dao.go:48	0x996bf0		4889e5			MOVQ SP, BP					
  task_chain_dao.go:48	0x996bf3		4881ec98000000		SUBQ $.file+75(SB), SP				
  task_chain_dao.go:49	0x996bfa		488d053fa97800		LEAQ runtime.types+1295680(SB), AX		
  task_chain_dao.go:49	0x996c01		e89aaba7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:49	0x996c06		4889442470		MOVQ AX, 0x70(SP)				
  task_chain_dao.go:49	0x996c0b		488b0d2eb4b702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x996c12		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x996c15		e8661bf9ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x996c1a		4889442440		MOVQ AX, 0x40(SP)				
  chainable_api.go:20	0x996c1f		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x996c23		488d1576c26d00		LEAQ runtime.types+581280(SB), DX		
  chainable_api.go:20	0x996c2a		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x996c2e		833d1b6fbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x996c35		7509			JNE 0x996c40					
  chainable_api.go:20	0x996c37		488b542470		MOVQ 0x70(SP), DX				
  chainable_api.go:20	0x996c3c		eb17			JMP 0x996c55					
  chainable_api.go:20	0x996c3e		6690			NOPW						
  chainable_api.go:20	0x996c40		e8fb17aeff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x996c45		488b542470		MOVQ 0x70(SP), DX				
  chainable_api.go:20	0x996c4a		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x996c4d		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x996c51		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x996c55		48895128		MOVQ DX, 0x28(CX)				
  task_chain_dao.go:49	0x996c59		488d0540726b00		LEAQ runtime.types+429728(SB), AX		
  task_chain_dao.go:49	0x996c60		e83baba7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:49	0x996c65		4889442468		MOVQ AX, 0x68(SP)				
  task_chain_dao.go:49	0x996c6a		488b8c24a8000000	MOVQ 0xa8(SP), CX				
  task_chain_dao.go:49	0x996c72		4889c8			MOVQ CX, AX					
  task_chain_dao.go:49	0x996c75		e82634adff		CALL runtime.convT64(SB)			
  task_chain_dao.go:49	0x996c7a		488d0ddfbe6a00		LEAQ runtime.types+383840(SB), CX		
  task_chain_dao.go:49	0x996c81		488b7c2468		MOVQ 0x68(SP), DI				
  task_chain_dao.go:49	0x996c86		48890f			MOVQ CX, 0(DI)					
  task_chain_dao.go:49	0x996c89		833dc06ebc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:49	0x996c90		7410			JE 0x996ca2					
  task_chain_dao.go:49	0x996c92		e8a917aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:49	0x996c97		498903			MOVQ AX, 0(R11)					
  task_chain_dao.go:49	0x996c9a		488b5708		MOVQ 0x8(DI), DX				
  task_chain_dao.go:49	0x996c9e		49895308		MOVQ DX, 0x8(R11)				
  task_chain_dao.go:49	0x996ca2		48894708		MOVQ AX, 0x8(DI)				
  task_chain_dao.go:49	0x996ca6		488b442440		MOVQ 0x40(SP), AX				
  task_chain_dao.go:49	0x996cab		488d1d6ebc6a00		LEAQ runtime.types+383264(SB), BX		
  task_chain_dao.go:49	0x996cb2		488d0da7104d02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX	
  task_chain_dao.go:49	0x996cb9		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_chain_dao.go:49	0x996cbe		4989f0			MOVQ SI, R8					
  task_chain_dao.go:49	0x996cc1		e8da74f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_chain_dao.go:49	0x996cc6		4889442460		MOVQ AX, 0x60(SP)				
  task_chain_dao.go:49	0x996ccb		e81043adff		CALL runtime.makemap_small(SB)			
  task_chain_dao.go:49	0x996cd0		4889442458		MOVQ AX, 0x58(SP)				
  task_chain_dao.go:50	0x996cd5		488b9424b0000000	MOVQ 0xb0(SP), DX				
  task_chain_dao.go:50	0x996cdd		488b9c24b8000000	MOVQ 0xb8(SP), BX				
  task_chain_dao.go:50	0x996ce5		4889d0			MOVQ DX, AX					
  task_chain_dao.go:50	0x996ce8		e83334adff		CALL runtime.convTstring(SB)			
  task_chain_dao.go:50	0x996ced		4889442450		MOVQ AX, 0x50(SP)				
  task_chain_dao.go:49	0x996cf2		488b5c2458		MOVQ 0x58(SP), BX				
  task_chain_dao.go:49	0x996cf7		488d0dbde57d00		LEAQ go:string.*+52659(SB), CX			
  task_chain_dao.go:49	0x996cfe		bf09000000		MOVL $__major_os_version__+3(SB), DI		
  task_chain_dao.go:49	0x996d03		488d05b6676e00		LEAQ runtime.types+623808(SB), AX		
  task_chain_dao.go:49	0x996d0a		e81173adff		CALL runtime.mapassign_faststr(SB)		
  task_chain_dao.go:49	0x996d0f		488d150abc6a00		LEAQ runtime.types+383264(SB), DX		
  task_chain_dao.go:49	0x996d16		488910			MOVQ DX, 0(AX)					
  task_chain_dao.go:49	0x996d19		833d306ebc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:49	0x996d20		7507			JNE 0x996d29					
  task_chain_dao.go:49	0x996d22		488b4c2450		MOVQ 0x50(SP), CX				
  task_chain_dao.go:49	0x996d27		eb15			JMP 0x996d3e					
  task_chain_dao.go:49	0x996d29		e81217aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:49	0x996d2e		488b4c2450		MOVQ 0x50(SP), CX				
  task_chain_dao.go:49	0x996d33		49890b			MOVQ CX, 0(R11)					
  task_chain_dao.go:49	0x996d36		488b7008		MOVQ 0x8(AX), SI				
  task_chain_dao.go:49	0x996d3a		49897308		MOVQ SI, 0x8(R11)				
  task_chain_dao.go:49	0x996d3e		48894808		MOVQ CX, 0x8(AX)				
  task_chain_dao.go:51	0x996d42		488b8424c0000000	MOVQ 0xc0(SP), AX				
  task_chain_dao.go:51	0x996d4a		488b9c24c8000000	MOVQ 0xc8(SP), BX				
  task_chain_dao.go:51	0x996d52		e8c933adff		CALL runtime.convTstring(SB)			
  task_chain_dao.go:51	0x996d57		4889442450		MOVQ AX, 0x50(SP)				
  task_chain_dao.go:49	0x996d5c		488b5c2458		MOVQ 0x58(SP), BX				
  task_chain_dao.go:49	0x996d61		488d0d63387d00		LEAQ go:string.*+8387(SB), CX			
  task_chain_dao.go:49	0x996d68		bf05000000		MOVL $__subsystem__+2(SB), DI			
  task_chain_dao.go:49	0x996d6d		488d054c676e00		LEAQ runtime.types+623808(SB), AX		
  task_chain_dao.go:49	0x996d74		e8a772adff		CALL runtime.mapassign_faststr(SB)		
  task_chain_dao.go:49	0x996d79		488d0da0bb6a00		LEAQ runtime.types+383264(SB), CX		
  task_chain_dao.go:49	0x996d80		488908			MOVQ CX, 0(AX)					
  task_chain_dao.go:49	0x996d83		833dc66dbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:49	0x996d8a		7507			JNE 0x996d93					
  task_chain_dao.go:49	0x996d8c		488b542450		MOVQ 0x50(SP), DX				
  task_chain_dao.go:49	0x996d91		eb15			JMP 0x996da8					
  task_chain_dao.go:49	0x996d93		e8a816aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:49	0x996d98		488b542450		MOVQ 0x50(SP), DX				
  task_chain_dao.go:49	0x996d9d		498913			MOVQ DX, 0(R11)					
  task_chain_dao.go:49	0x996da0		488b7008		MOVQ 0x8(AX), SI				
  task_chain_dao.go:49	0x996da4		49897308		MOVQ SI, 0x8(R11)				
  task_chain_dao.go:49	0x996da8		48895008		MOVQ DX, 0x8(AX)				
  task_chain_dao.go:52	0x996dac		488b8424d0000000	MOVQ 0xd0(SP), AX				
  task_chain_dao.go:52	0x996db4		488b9c24d8000000	MOVQ 0xd8(SP), BX				
  task_chain_dao.go:52	0x996dbc		0f1f4000		NOPL 0(AX)					
  task_chain_dao.go:52	0x996dc0		e85b33adff		CALL runtime.convTstring(SB)			
  task_chain_dao.go:52	0x996dc5		4889442450		MOVQ AX, 0x50(SP)				
  task_chain_dao.go:49	0x996dca		488b5c2458		MOVQ 0x58(SP), BX				
  task_chain_dao.go:49	0x996dcf		488d0deee47d00		LEAQ go:string.*+52668(SB), CX			
  task_chain_dao.go:49	0x996dd6		bf09000000		MOVL $__major_os_version__+3(SB), DI		
  task_chain_dao.go:49	0x996ddb		488d05de666e00		LEAQ runtime.types+623808(SB), AX		
  task_chain_dao.go:49	0x996de2		e83972adff		CALL runtime.mapassign_faststr(SB)		
  task_chain_dao.go:49	0x996de7		488d0d32bb6a00		LEAQ runtime.types+383264(SB), CX		
  task_chain_dao.go:49	0x996dee		488908			MOVQ CX, 0(AX)					
  task_chain_dao.go:49	0x996df1		833d586dbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:49	0x996df8		7508			JNE 0x996e02					
  task_chain_dao.go:49	0x996dfa		488b4c2450		MOVQ 0x50(SP), CX				
  task_chain_dao.go:49	0x996dff		90			NOPL						
  task_chain_dao.go:49	0x996e00		eb15			JMP 0x996e17					
  task_chain_dao.go:49	0x996e02		e83916aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:49	0x996e07		488b4c2450		MOVQ 0x50(SP), CX				
  task_chain_dao.go:49	0x996e0c		49890b			MOVQ CX, 0(R11)					
  task_chain_dao.go:49	0x996e0f		488b5008		MOVQ 0x8(AX), DX				
  task_chain_dao.go:49	0x996e13		49895308		MOVQ DX, 0x8(R11)				
  task_chain_dao.go:49	0x996e17		48894808		MOVQ CX, 0x8(AX)				
  task_chain_dao.go:53	0x996e1b		488b8424e0000000	MOVQ 0xe0(SP), AX				
  task_chain_dao.go:53	0x996e23		e87832adff		CALL runtime.convT64(SB)			
  task_chain_dao.go:53	0x996e28		4889442450		MOVQ AX, 0x50(SP)				
  task_chain_dao.go:49	0x996e2d		488b5c2458		MOVQ 0x58(SP), BX				
  task_chain_dao.go:49	0x996e32		488d0d2e847d00		LEAQ go:string.*+27999(SB), CX			
  task_chain_dao.go:49	0x996e39		bf06000000		MOVL $__major_os_version__(SB), DI		
  task_chain_dao.go:49	0x996e3e		488d057b666e00		LEAQ runtime.types+623808(SB), AX		
  task_chain_dao.go:49	0x996e45		e8d671adff		CALL runtime.mapassign_faststr(SB)		
  task_chain_dao.go:49	0x996e4a		488d0d0fbd6a00		LEAQ runtime.types+383840(SB), CX		
  task_chain_dao.go:49	0x996e51		488908			MOVQ CX, 0(AX)					
  task_chain_dao.go:49	0x996e54		833df56cbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:49	0x996e5b		7507			JNE 0x996e64					
  task_chain_dao.go:49	0x996e5d		488b542450		MOVQ 0x50(SP), DX				
  task_chain_dao.go:49	0x996e62		eb15			JMP 0x996e79					
  task_chain_dao.go:49	0x996e64		e8d715aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:49	0x996e69		488b542450		MOVQ 0x50(SP), DX				
  task_chain_dao.go:49	0x996e6e		498913			MOVQ DX, 0(R11)					
  task_chain_dao.go:49	0x996e71		488b7008		MOVQ 0x8(AX), SI				
  task_chain_dao.go:49	0x996e75		49897308		MOVQ SI, 0x8(R11)				
  task_chain_dao.go:49	0x996e79		48895008		MOVQ DX, 0x8(AX)				
  task_chain_dao.go:54	0x996e7d		488d055c947b00		LEAQ runtime.types+1487584(SB), AX		
  task_chain_dao.go:54	0x996e84		488d9c2400010000	LEAQ 0x100(SP), BX				
  task_chain_dao.go:54	0x996e8c		e80f82a7ff		CALL runtime.convT(SB)				
  task_chain_dao.go:54	0x996e91		4889442450		MOVQ AX, 0x50(SP)				
  task_chain_dao.go:49	0x996e96		488b5c2458		MOVQ 0x58(SP), BX				
  task_chain_dao.go:49	0x996e9b		488d0d2dbc7d00		LEAQ go:string.*+42439(SB), CX			
  task_chain_dao.go:49	0x996ea2		bf07000000		MOVL $__major_os_version__+1(SB), DI		
  task_chain_dao.go:49	0x996ea7		488d0512666e00		LEAQ runtime.types+623808(SB), AX		
  task_chain_dao.go:49	0x996eae		e86d71adff		CALL runtime.mapassign_faststr(SB)		
  task_chain_dao.go:49	0x996eb3		488d0d26947b00		LEAQ runtime.types+1487584(SB), CX		
  task_chain_dao.go:49	0x996eba		488908			MOVQ CX, 0(AX)					
  task_chain_dao.go:49	0x996ebd		833d8c6cbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:49	0x996ec4		7507			JNE 0x996ecd					
  task_chain_dao.go:49	0x996ec6		488b542450		MOVQ 0x50(SP), DX				
  task_chain_dao.go:49	0x996ecb		eb15			JMP 0x996ee2					
  task_chain_dao.go:49	0x996ecd		e86e15aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:49	0x996ed2		488b542450		MOVQ 0x50(SP), DX				
  task_chain_dao.go:49	0x996ed7		498913			MOVQ DX, 0(R11)					
  task_chain_dao.go:49	0x996eda		488b7008		MOVQ 0x8(AX), SI				
  task_chain_dao.go:49	0x996ede		49897308		MOVQ SI, 0x8(R11)				
  task_chain_dao.go:49	0x996ee2		48895008		MOVQ DX, 0x8(AX)				
  task_chain_dao.go:55	0x996ee6		0fb6942418010000	MOVZX 0x118(SP), DX				
  task_chain_dao.go:55	0x996eee		4889542438		MOVQ DX, 0x38(SP)				
  task_chain_dao.go:49	0x996ef3		488d05c6656e00		LEAQ runtime.types+623808(SB), AX		
  task_chain_dao.go:49	0x996efa		488b5c2458		MOVQ 0x58(SP), BX				
  task_chain_dao.go:49	0x996eff		488d0d361b7d00		LEAQ go:string.*+1332(SB), CX			
  task_chain_dao.go:49	0x996f06		bf03000000		MOVL $__subsystem__(SB), DI			
  task_chain_dao.go:49	0x996f0b		e81071adff		CALL runtime.mapassign_faststr(SB)		
  task_chain_dao.go:49	0x996f10		488d1509be6a00		LEAQ runtime.types+384288(SB), DX		
  task_chain_dao.go:49	0x996f17		488910			MOVQ DX, 0(AX)					
  task_chain_dao.go:55	0x996f1a		488b542438		MOVQ 0x38(SP), DX				
  task_chain_dao.go:55	0x996f1f		488d35fa375e00		LEAQ runtime.staticuint64s(SB), SI		
  task_chain_dao.go:55	0x996f26		488d14d6		LEAQ 0(SI)(DX*8), DX				
  task_chain_dao.go:49	0x996f2a		833d1f6cbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:49	0x996f31		740c			JE 0x996f3f					
  task_chain_dao.go:49	0x996f33		488b7008		MOVQ 0x8(AX), SI				
  task_chain_dao.go:49	0x996f37		e8e414aeff		CALL runtime.gcWriteBarrier1(SB)		
  task_chain_dao.go:49	0x996f3c		498933			MOVQ SI, 0(R11)					
  task_chain_dao.go:49	0x996f3f		48895008		MOVQ DX, 0x8(AX)				
  task_chain_dao.go:49	0x996f43		488b442460		MOVQ 0x60(SP), AX				
  task_chain_dao.go:49	0x996f48		488d1d71656e00		LEAQ runtime.types+623808(SB), BX		
  task_chain_dao.go:49	0x996f4f		488b4c2458		MOVQ 0x58(SP), CX				
  task_chain_dao.go:49	0x996f54		e8a7bef8ff		CALL gorm.io/gorm.(*DB).Updates(SB)		
  task_chain_dao.go:57	0x996f59		4883780800		CMPQ 0x8(AX), $0x0				
  task_chain_dao.go:57	0x996f5e		6690			NOPW						
  task_chain_dao.go:57	0x996f60		0f8493000000		JE 0x996ff9					
  task_chain_dao.go:49	0x996f66		4889442448		MOVQ AX, 0x48(SP)				
  task_chain_dao.go:58	0x996f6b		440f117c2478		MOVUPS X15, 0x78(SP)				
  task_chain_dao.go:58	0x996f71		440f11bc2488000000	MOVUPS X15, 0x88(SP)				
  task_chain_dao.go:58	0x996f7a		488b8424a8000000	MOVQ 0xa8(SP), AX				
  task_chain_dao.go:58	0x996f82		e81931adff		CALL runtime.convT64(SB)			
  task_chain_dao.go:58	0x996f87		488d0dd2bb6a00		LEAQ runtime.types+383840(SB), CX		
  task_chain_dao.go:58	0x996f8e		48894c2478		MOVQ CX, 0x78(SP)				
  task_chain_dao.go:58	0x996f93		4889842480000000	MOVQ AX, 0x80(SP)				
  task_chain_dao.go:58	0x996f9b		488b4c2448		MOVQ 0x48(SP), CX				
  task_chain_dao.go:58	0x996fa0		488b5108		MOVQ 0x8(CX), DX				
  task_chain_dao.go:58	0x996fa4		4885d2			TESTQ DX, DX					
  task_chain_dao.go:58	0x996fa7		7404			JE 0x996fad					
  task_chain_dao.go:58	0x996fa9		488b5208		MOVQ 0x8(DX), DX				
  task_chain_dao.go:58	0x996fad		4c8b5110		MOVQ 0x10(CX), R10				
  task_chain_dao.go:58	0x996fb1		4889942488000000	MOVQ DX, 0x88(SP)				
  task_chain_dao.go:58	0x996fb9		4c89942490000000	MOVQ R10, 0x90(SP)				
  print.go:233		0x996fc1		488b1db8b0b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x996fc8		488d05114b4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x996fcf		488d0d5e088000		LEAQ go:string.*+193324(SB), CX			
  print.go:233		0x996fd6		bf2a000000		MOVL $__major_os_version__+36(SB), DI		
  print.go:233		0x996fdb		488d742478		LEAQ 0x78(SP), SI				
  print.go:233		0x996fe0		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x996fe6		4d89c1			MOVQ R8, R9					
  print.go:233		0x996fe9		e83282b8ff		CALL fmt.Fprintf(SB)				
  task_chain_dao.go:59	0x996fee		31c0			XORL AX, AX					
  task_chain_dao.go:59	0x996ff0		4881c498000000		ADDQ $.file+75(SB), SP				
  task_chain_dao.go:59	0x996ff7		5d			POPQ BP						
  task_chain_dao.go:59	0x996ff8		c3			RET						
  task_chain_dao.go:61	0x996ff9		4883781800		CMPQ 0x18(AX), $0x0				
  task_chain_dao.go:61	0x996ffe		0f9fc0			SETG AL						
  task_chain_dao.go:61	0x997001		4881c498000000		ADDQ $.file+75(SB), SP				
  task_chain_dao.go:61	0x997008		5d			POPQ BP						
  task_chain_dao.go:61	0x997009		c3			RET						
  task_chain_dao.go:48	0x99700a		e8d1f4adff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_chain_dao.go:48	0x99700f		e9ccfbffff		JMP CAS-Backend/biz/dao.UpdateTaskChain(SB)	
  :-1			0x997014		cc			INT $__subsystem__(SB)				
  :-1			0x997015		cc			INT $__subsystem__(SB)				
  :-1			0x997016		cc			INT $__subsystem__(SB)				
  :-1			0x997017		cc			INT $__subsystem__(SB)				
  :-1			0x997018		cc			INT $__subsystem__(SB)				
  :-1			0x997019		cc			INT $__subsystem__(SB)				
  :-1			0x99701a		cc			INT $__subsystem__(SB)				
  :-1			0x99701b		cc			INT $__subsystem__(SB)				
  :-1			0x99701c		cc			INT $__subsystem__(SB)				
  :-1			0x99701d		cc			INT $__subsystem__(SB)				
  :-1			0x99701e		cc			INT $__subsystem__(SB)				
  :-1			0x99701f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.Select1TaskChain(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_chain_dao.go
  task_chain_dao.go:64	0x997020		493b6610		CMPQ SP, 0x10(R14)				
  task_chain_dao.go:64	0x997024		0f86d4010000		JBE 0x9971fe					
  task_chain_dao.go:64	0x99702a		55			PUSHQ BP					
  task_chain_dao.go:64	0x99702b		4889e5			MOVQ SP, BP					
  task_chain_dao.go:64	0x99702e		4883ec70		SUBQ $.file+35(SB), SP				
  task_chain_dao.go:67	0x997032		48898424f8000000	MOVQ AX, 0xf8(SP)				
  task_chain_dao.go:64	0x99703a		440f11bc2480000000	MOVUPS X15, 0x80(SP)				
  task_chain_dao.go:64	0x997043		488dbc2488000000	LEAQ 0x88(SP), DI				
  task_chain_dao.go:64	0x99704b		488d7ff0		LEAQ -0x10(DI), DI				
  task_chain_dao.go:64	0x99704f		660f1f840000000000	NOPW 0(AX)(AX*1)				
  task_chain_dao.go:64	0x997058		0f1f840000000000	NOPL 0(AX)(AX*1)				
  task_chain_dao.go:64	0x997060		48896c24f0		MOVQ BP, -0x10(SP)				
  task_chain_dao.go:64	0x997065		488d6c24f0		LEAQ -0x10(SP), BP				
  task_chain_dao.go:64	0x99706a		e8771aaeff		CALL 0x478ae6					
  task_chain_dao.go:64	0x99706f		488b6d00		MOVQ 0(BP), BP					
  task_chain_dao.go:65	0x997073		488d05c6a47800		LEAQ runtime.types+1295680(SB), AX		
  task_chain_dao.go:65	0x99707a		e821a7a7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:65	0x99707f		4889442468		MOVQ AX, 0x68(SP)				
  task_chain_dao.go:66	0x997084		488d05156e6b00		LEAQ runtime.types+429728(SB), AX		
  task_chain_dao.go:66	0x99708b		e810a7a7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:66	0x997090		4889442440		MOVQ AX, 0x40(SP)				
  task_chain_dao.go:66	0x997095		488b8424f8000000	MOVQ 0xf8(SP), AX				
  task_chain_dao.go:66	0x99709d		0f1f00			NOPL 0(AX)					
  task_chain_dao.go:66	0x9970a0		e8fb2fadff		CALL runtime.convT64(SB)			
  task_chain_dao.go:66	0x9970a5		488d0db4ba6a00		LEAQ runtime.types+383840(SB), CX		
  task_chain_dao.go:66	0x9970ac		488b7c2440		MOVQ 0x40(SP), DI				
  task_chain_dao.go:66	0x9970b1		48890f			MOVQ CX, 0(DI)					
  task_chain_dao.go:66	0x9970b4		833d956abc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:66	0x9970bb		7413			JE 0x9970d0					
  task_chain_dao.go:66	0x9970bd		0f1f00			NOPL 0(AX)					
  task_chain_dao.go:66	0x9970c0		e87b13aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:66	0x9970c5		498903			MOVQ AX, 0(R11)					
  task_chain_dao.go:66	0x9970c8		488b5708		MOVQ 0x8(DI), DX				
  task_chain_dao.go:66	0x9970cc		49895308		MOVQ DX, 0x8(R11)				
  task_chain_dao.go:66	0x9970d0		48894708		MOVQ AX, 0x8(DI)				
  task_chain_dao.go:66	0x9970d4		488b0565afb702		MOVQ runtime.bss(SB), AX			
  task_chain_dao.go:66	0x9970db		488d1dbebd6d00		LEAQ runtime.types+581280(SB), BX		
  task_chain_dao.go:66	0x9970e2		488b4c2468		MOVQ 0x68(SP), CX				
  task_chain_dao.go:66	0x9970e7		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_chain_dao.go:66	0x9970ec		4989f0			MOVQ SI, R8					
  task_chain_dao.go:66	0x9970ef		e8cc95f8ff		CALL gorm.io/gorm.(*DB).First(SB)		
  task_chain_dao.go:67	0x9970f4		4883780800		CMPQ 0x8(AX), $0x0				
  task_chain_dao.go:67	0x9970f9		0f84bc000000		JE 0x9971bb					
  task_chain_dao.go:66	0x9970ff		4889442438		MOVQ AX, 0x38(SP)				
  task_chain_dao.go:68	0x997104		440f117c2448		MOVUPS X15, 0x48(SP)				
  task_chain_dao.go:68	0x99710a		440f117c2458		MOVUPS X15, 0x58(SP)				
  task_chain_dao.go:68	0x997110		488b8424f8000000	MOVQ 0xf8(SP), AX				
  task_chain_dao.go:68	0x997118		e8832fadff		CALL runtime.convT64(SB)			
  task_chain_dao.go:68	0x99711d		488d0d3cba6a00		LEAQ runtime.types+383840(SB), CX		
  task_chain_dao.go:68	0x997124		48894c2448		MOVQ CX, 0x48(SP)				
  task_chain_dao.go:68	0x997129		4889442450		MOVQ AX, 0x50(SP)				
  task_chain_dao.go:68	0x99712e		488b4c2438		MOVQ 0x38(SP), CX				
  task_chain_dao.go:68	0x997133		488b5108		MOVQ 0x8(CX), DX				
  task_chain_dao.go:68	0x997137		4885d2			TESTQ DX, DX					
  task_chain_dao.go:68	0x99713a		7404			JE 0x997140					
  task_chain_dao.go:68	0x99713c		488b5208		MOVQ 0x8(DX), DX				
  task_chain_dao.go:68	0x997140		4c8b5110		MOVQ 0x10(CX), R10				
  task_chain_dao.go:68	0x997144		4889542458		MOVQ DX, 0x58(SP)				
  task_chain_dao.go:68	0x997149		4c89542460		MOVQ R10, 0x60(SP)				
  print.go:233		0x99714e		488b1d2bafb702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x997155		488d0584494d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99715c		488d0dfb068000		LEAQ go:string.*+193366(SB), CX			
  print.go:233		0x997163		bf2a000000		MOVL $__major_os_version__+36(SB), DI		
  print.go:233		0x997168		488d742448		LEAQ 0x48(SP), SI				
  print.go:233		0x99716d		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x997173		4d89c1			MOVQ R8, R9					
  print.go:233		0x997176		e8a580b8ff		CALL fmt.Fprintf(SB)				
  task_chain_dao.go:69	0x99717b		440f11bc2480000000	MOVUPS X15, 0x80(SP)				
  task_chain_dao.go:69	0x997184		488dbc2488000000	LEAQ 0x88(SP), DI				
  task_chain_dao.go:69	0x99718c		488d7ff0		LEAQ -0x10(DI), DI				
  task_chain_dao.go:69	0x997190		660f1f840000000000	NOPW 0(AX)(AX*1)				
  task_chain_dao.go:69	0x997199		0f1f8000000000		NOPL 0(AX)					
  task_chain_dao.go:69	0x9971a0		48896c24f0		MOVQ BP, -0x10(SP)				
  task_chain_dao.go:69	0x9971a5		488d6c24f0		LEAQ -0x10(SP), BP				
  task_chain_dao.go:69	0x9971aa		e83719aeff		CALL 0x478ae6					
  task_chain_dao.go:69	0x9971af		488b6d00		MOVQ 0(BP), BP					
  task_chain_dao.go:69	0x9971b3		31c0			XORL AX, AX					
  task_chain_dao.go:69	0x9971b5		4883c470		ADDQ $.file+35(SB), SP				
  task_chain_dao.go:69	0x9971b9		5d			POPQ BP						
  task_chain_dao.go:69	0x9971ba		c3			RET						
  task_chain_dao.go:71	0x9971bb		488b742468		MOVQ 0x68(SP), SI				
  task_chain_dao.go:71	0x9971c0		488b0e			MOVQ 0(SI), CX					
  task_chain_dao.go:71	0x9971c3		48898c2480000000	MOVQ CX, 0x80(SP)				
  task_chain_dao.go:71	0x9971cb		4883c608		ADDQ $__major_os_version__+2(SB), SI		
  task_chain_dao.go:71	0x9971cf		488dbc2488000000	LEAQ 0x88(SP), DI				
  task_chain_dao.go:71	0x9971d7		660f1f840000000000	NOPW 0(AX)(AX*1)				
  task_chain_dao.go:71	0x9971e0		48896c24f0		MOVQ BP, -0x10(SP)				
  task_chain_dao.go:71	0x9971e5		488d6c24f0		LEAQ -0x10(SP), BP				
  task_chain_dao.go:71	0x9971ea		e84f1caeff		CALL 0x478e3e					
  task_chain_dao.go:71	0x9971ef		488b6d00		MOVQ 0(BP), BP					
  task_chain_dao.go:71	0x9971f3		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_chain_dao.go:71	0x9971f8		4883c470		ADDQ $.file+35(SB), SP				
  task_chain_dao.go:71	0x9971fc		5d			POPQ BP						
  task_chain_dao.go:71	0x9971fd		c3			RET						
  task_chain_dao.go:64	0x9971fe		4889842480000000	MOVQ AX, 0x80(SP)				
  task_chain_dao.go:64	0x997206		e8d5f2adff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_chain_dao.go:64	0x99720b		488b842480000000	MOVQ 0x80(SP), AX				
  task_chain_dao.go:64	0x997213		e908feffff		JMP CAS-Backend/biz/dao.Select1TaskChain(SB)	
  :-1			0x997218		cc			INT $__subsystem__(SB)				
  :-1			0x997219		cc			INT $__subsystem__(SB)				
  :-1			0x99721a		cc			INT $__subsystem__(SB)				
  :-1			0x99721b		cc			INT $__subsystem__(SB)				
  :-1			0x99721c		cc			INT $__subsystem__(SB)				
  :-1			0x99721d		cc			INT $__subsystem__(SB)				
  :-1			0x99721e		cc			INT $__subsystem__(SB)				
  :-1			0x99721f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.SelectAllTaskChain(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_chain_dao.go
  task_chain_dao.go:74	0x997220		493b6610		CMPQ SP, 0x10(R14)				
  task_chain_dao.go:74	0x997224		0f86a0020000		JBE 0x9974ca					
  task_chain_dao.go:74	0x99722a		55			PUSHQ BP					
  task_chain_dao.go:74	0x99722b		4889e5			MOVQ SP, BP					
  task_chain_dao.go:74	0x99722e		4883ec78		SUBQ $.file+43(SB), SP				
  task_chain_dao.go:78	0x997232		4889842488000000	MOVQ AX, 0x88(SP)				
  task_chain_dao.go:78	0x99723a		48899c2490000000	MOVQ BX, 0x90(SP)				
  task_chain_dao.go:78	0x997242		4889bc24a0000000	MOVQ DI, 0xa0(SP)				
  task_chain_dao.go:78	0x99724a		48898c2498000000	MOVQ CX, 0x98(SP)				
  task_chain_dao.go:75	0x997252		488d0587b86a00		LEAQ runtime.types+383712(SB), AX		
  task_chain_dao.go:75	0x997259		e842a5a7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:75	0x99725e		4889442468		MOVQ AX, 0x68(SP)				
  task_chain_dao.go:76	0x997263		488d0536d66900		LEAQ runtime.types+325792(SB), AX		
  task_chain_dao.go:76	0x99726a		e831a5a7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:76	0x99726f		4889442470		MOVQ AX, 0x70(SP)				
  task_chain_dao.go:76	0x997274		48c70000000000		MOVQ $0x0, 0(AX)				
  task_chain_dao.go:77	0x99727b		488d05bea27800		LEAQ runtime.types+1295680(SB), AX		
  task_chain_dao.go:77	0x997282		e819a5a7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:77	0x997287		4889442460		MOVQ AX, 0x60(SP)				
  task_chain_dao.go:77	0x99728c		488b0dadadb702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x997293		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x997296		e8e514f9ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x99729b		4889442440		MOVQ AX, 0x40(SP)				
  chainable_api.go:20	0x9972a0		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x9972a4		488d15f5bb6d00		LEAQ runtime.types+581280(SB), DX		
  chainable_api.go:20	0x9972ab		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x9972af		833d9a68bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x9972b6		7508			JNE 0x9972c0					
  chainable_api.go:20	0x9972b8		488b542460		MOVQ 0x60(SP), DX				
  chainable_api.go:20	0x9972bd		eb16			JMP 0x9972d5					
  chainable_api.go:20	0x9972bf		90			NOPL						
  chainable_api.go:20	0x9972c0		e87b11aeff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x9972c5		488b542460		MOVQ 0x60(SP), DX				
  chainable_api.go:20	0x9972ca		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x9972cd		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x9972d1		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x9972d5		48895128		MOVQ DX, 0x28(CX)				
  task_chain_dao.go:77	0x9972d9		488d05c06b6b00		LEAQ runtime.types+429728(SB), AX		
  task_chain_dao.go:77	0x9972e0		e8bba4a7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:77	0x9972e5		488d0d34ba6a00		LEAQ runtime.types+384288(SB), CX		
  task_chain_dao.go:77	0x9972ec		488908			MOVQ CX, 0(AX)					
  task_chain_dao.go:77	0x9972ef		488d0d2a345e00		LEAQ runtime.staticuint64s(SB), CX		
  task_chain_dao.go:77	0x9972f6		48894808		MOVQ CX, 0x8(AX)				
  task_chain_dao.go:77	0x9972fa		488d1d1fb66a00		LEAQ runtime.types+383264(SB), BX		
  task_chain_dao.go:77	0x997301		488d0d680a4d02		LEAQ CAS-Backend/biz/dao..stmp_6(SB), CX	
  task_chain_dao.go:77	0x997308		4889c7			MOVQ AX, DI					
  task_chain_dao.go:77	0x99730b		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_chain_dao.go:77	0x997310		4989f0			MOVQ SI, R8					
  task_chain_dao.go:77	0x997313		488b442440		MOVQ 0x40(SP), AX				
  task_chain_dao.go:77	0x997318		e8836ef8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_chain_dao.go:78	0x99731d		488bb424a0000000	MOVQ 0xa0(SP), SI				
  task_chain_dao.go:78	0x997325		4885f6			TESTQ SI, SI					
  task_chain_dao.go:78	0x997328		0f84d1000000		JE 0x9973ff					
  task_chain_dao.go:77	0x99732e		4889442448		MOVQ AX, 0x48(SP)				
  task_chain_dao.go:79	0x997333		31c0			XORL AX, AX					
  task_chain_dao.go:79	0x997335		488d1df4d74c02		LEAQ runtime.gcbits.*+112(SB), BX		
  task_chain_dao.go:79	0x99733c		b901000000		MOVL $__minor_os_version__(SB), CX		
  task_chain_dao.go:79	0x997341		488bbc2498000000	MOVQ 0x98(SP), DI				
  task_chain_dao.go:79	0x997349		4989d8			MOVQ BX, R8					
  task_chain_dao.go:79	0x99734c		4989c9			MOVQ CX, R9					
  task_chain_dao.go:79	0x99734f		e84ce1abff		CALL runtime.concatstring3(SB)			
  task_chain_dao.go:79	0x997354		4889442450		MOVQ AX, 0x50(SP)				
  task_chain_dao.go:79	0x997359		48895c2438		MOVQ BX, 0x38(SP)				
  task_chain_dao.go:80	0x99735e		488d057b706b00		LEAQ runtime.types+431072(SB), AX		
  task_chain_dao.go:80	0x997365		e836a4a7ff		CALL runtime.newobject(SB)			
  task_chain_dao.go:80	0x99736a		4889442458		MOVQ AX, 0x58(SP)				
  task_chain_dao.go:80	0x99736f		488b5c2438		MOVQ 0x38(SP), BX				
  task_chain_dao.go:80	0x997374		488b442450		MOVQ 0x50(SP), AX				
  task_chain_dao.go:80	0x997379		e8a22dadff		CALL runtime.convTstring(SB)			
  task_chain_dao.go:80	0x99737e		488d159bb56a00		LEAQ runtime.types+383264(SB), DX		
  task_chain_dao.go:80	0x997385		4c8b542458		MOVQ 0x58(SP), R10				
  task_chain_dao.go:80	0x99738a		498912			MOVQ DX, 0(R10)					
  task_chain_dao.go:80	0x99738d		833dbc67bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:80	0x997394		7410			JE 0x9973a6					
  task_chain_dao.go:80	0x997396		e8a510aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:80	0x99739b		498903			MOVQ AX, 0(R11)					
  task_chain_dao.go:80	0x99739e		498b4a08		MOVQ 0x8(R10), CX				
  task_chain_dao.go:80	0x9973a2		49894b08		MOVQ CX, 0x8(R11)				
  task_chain_dao.go:80	0x9973a6		49894208		MOVQ AX, 0x8(R10)				
  task_chain_dao.go:80	0x9973aa		488b442450		MOVQ 0x50(SP), AX				
  task_chain_dao.go:80	0x9973af		488b5c2438		MOVQ 0x38(SP), BX				
  task_chain_dao.go:80	0x9973b4		e8672dadff		CALL runtime.convTstring(SB)			
  task_chain_dao.go:80	0x9973b9		488d1d60b56a00		LEAQ runtime.types+383264(SB), BX		
  task_chain_dao.go:80	0x9973c0		488b7c2458		MOVQ 0x58(SP), DI				
  task_chain_dao.go:80	0x9973c5		48895f10		MOVQ BX, 0x10(DI)				
  task_chain_dao.go:80	0x9973c9		833d8067bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_chain_dao.go:80	0x9973d0		7410			JE 0x9973e2					
  task_chain_dao.go:80	0x9973d2		e86910aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_chain_dao.go:80	0x9973d7		498903			MOVQ AX, 0(R11)					
  task_chain_dao.go:80	0x9973da		488b5718		MOVQ 0x18(DI), DX				
  task_chain_dao.go:80	0x9973de		49895308		MOVQ DX, 0x8(R11)				
  task_chain_dao.go:80	0x9973e2		48894718		MOVQ AX, 0x18(DI)				
  task_chain_dao.go:80	0x9973e6		488b442448		MOVQ 0x48(SP), AX				
  task_chain_dao.go:80	0x9973eb		488d0d8e094d02		LEAQ CAS-Backend/biz/dao..stmp_8(SB), CX	
  task_chain_dao.go:80	0x9973f2		be02000000		MOVL $__minor_os_version__+1(SB), SI		
  task_chain_dao.go:80	0x9973f7		4989f0			MOVQ SI, R8					
  task_chain_dao.go:80	0x9973fa		e8a16df8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_chain_dao.go:82	0x9973ff		4889442448		MOVQ AX, 0x48(SP)				
  task_chain_dao.go:82	0x997404		488b5c2468		MOVQ 0x68(SP), BX				
  task_chain_dao.go:82	0x997409		e8b2bef8ff		CALL gorm.io/gorm.(*DB).Count(SB)		
  task_chain_dao.go:82	0x99740e		4883780800		CMPQ 0x8(AX), $0x0				
  task_chain_dao.go:82	0x997413		0f85a0000000		JNE 0x9974b9					
  task_chain_dao.go:89	0x997419		488b442448		MOVQ 0x48(SP), AX				
  task_chain_dao.go:89	0x99741e		488d1dfbb46a00		LEAQ runtime.types+383264(SB), BX		
  task_chain_dao.go:89	0x997425		488d0d64094d02		LEAQ CAS-Backend/biz/dao..stmp_9(SB), CX	
  task_chain_dao.go:89	0x99742c		e88f7af8ff		CALL gorm.io/gorm.(*DB).Order(SB)		
  task_chain_dao.go:85	0x997431		488b9c2488000000	MOVQ 0x88(SP), BX				
  task_chain_dao.go:85	0x997439		48ffcb			DECQ BX						
  task_chain_dao.go:85	0x99743c		488b942490000000	MOVQ 0x90(SP), DX				
  task_chain_dao.go:85	0x997444		480fafda		IMULQ DX, BX					
  task_chain_dao.go:86	0x997448		4885db			TESTQ BX, BX					
  task_chain_dao.go:89	0x99744b		be00000000		MOVL $0x0, SI					
  task_chain_dao.go:89	0x997450		480f4cde		CMOVL SI, BX					
  task_chain_dao.go:89	0x997454		e8677ef8ff		CALL gorm.io/gorm.(*DB).Offset(SB)		
  task_chain_dao.go:89	0x997459		488b9c2490000000	MOVQ 0x90(SP), BX				
  task_chain_dao.go:89	0x997461		e89a7df8ff		CALL gorm.io/gorm.(*DB).Limit(SB)		
  task_chain_dao.go:89	0x997466		488d1d73d46900		LEAQ runtime.types+325856(SB), BX		
  task_chain_dao.go:89	0x99746d		488b4c2470		MOVQ 0x70(SP), CX				
  task_chain_dao.go:89	0x997472		31ff			XORL DI, DI					
  task_chain_dao.go:89	0x997474		31f6			XORL SI, SI					
  task_chain_dao.go:89	0x997476		4989f0			MOVQ SI, R8					
  task_chain_dao.go:89	0x997479		e84298f8ff		CALL gorm.io/gorm.(*DB).Find(SB)		
  task_chain_dao.go:89	0x99747e		4883780800		CMPQ 0x8(AX), $0x0				
  task_chain_dao.go:86	0x997483		7411			JE 0x997496					
  task_chain_dao.go:90	0x997485		31c0			XORL AX, AX					
  task_chain_dao.go:90	0x997487		31db			XORL BX, BX					
  task_chain_dao.go:90	0x997489		31c9			XORL CX, CX					
  task_chain_dao.go:90	0x99748b		31ff			XORL DI, DI					
  task_chain_dao.go:90	0x99748d		4889fe			MOVQ DI, SI					
  task_chain_dao.go:90	0x997490		4883c478		ADDQ $.file+43(SB), SP				
  task_chain_dao.go:90	0x997494		5d			POPQ BP						
  task_chain_dao.go:90	0x997495		c3			RET						
  task_chain_dao.go:92	0x997496		488b542470		MOVQ 0x70(SP), DX				
  task_chain_dao.go:92	0x99749b		488b0a			MOVQ 0(DX), CX					
  task_chain_dao.go:92	0x99749e		488b7a08		MOVQ 0x8(DX), DI				
  task_chain_dao.go:92	0x9974a2		488b7210		MOVQ 0x10(DX), SI				
  task_chain_dao.go:92	0x9974a6		488b542468		MOVQ 0x68(SP), DX				
  task_chain_dao.go:92	0x9974ab		488b1a			MOVQ 0(DX), BX					
  task_chain_dao.go:92	0x9974ae		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_chain_dao.go:92	0x9974b3		4883c478		ADDQ $.file+43(SB), SP				
  task_chain_dao.go:92	0x9974b7		5d			POPQ BP						
  task_chain_dao.go:92	0x9974b8		c3			RET						
  task_chain_dao.go:83	0x9974b9		31c0			XORL AX, AX					
  task_chain_dao.go:83	0x9974bb		31db			XORL BX, BX					
  task_chain_dao.go:83	0x9974bd		31c9			XORL CX, CX					
  task_chain_dao.go:83	0x9974bf		31ff			XORL DI, DI					
  task_chain_dao.go:83	0x9974c1		4889fe			MOVQ DI, SI					
  task_chain_dao.go:83	0x9974c4		4883c478		ADDQ $.file+43(SB), SP				
  task_chain_dao.go:83	0x9974c8		5d			POPQ BP						
  task_chain_dao.go:83	0x9974c9		c3			RET						
  task_chain_dao.go:74	0x9974ca		4889442408		MOVQ AX, 0x8(SP)				
  task_chain_dao.go:74	0x9974cf		48895c2410		MOVQ BX, 0x10(SP)				
  task_chain_dao.go:74	0x9974d4		48894c2418		MOVQ CX, 0x18(SP)				
  task_chain_dao.go:74	0x9974d9		48897c2420		MOVQ DI, 0x20(SP)				
  task_chain_dao.go:74	0x9974de		6690			NOPW						
  task_chain_dao.go:74	0x9974e0		e8fbefadff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_chain_dao.go:74	0x9974e5		488b442408		MOVQ 0x8(SP), AX				
  task_chain_dao.go:74	0x9974ea		488b5c2410		MOVQ 0x10(SP), BX				
  task_chain_dao.go:74	0x9974ef		488b4c2418		MOVQ 0x18(SP), CX				
  task_chain_dao.go:74	0x9974f4		488b7c2420		MOVQ 0x20(SP), DI				
  task_chain_dao.go:74	0x9974f9		e922fdffff		JMP CAS-Backend/biz/dao.SelectAllTaskChain(SB)	
  :-1			0x9974fe		cc			INT $__subsystem__(SB)				
  :-1			0x9974ff		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.UpdateTaskChainStatusByID(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_chain_dao.go
  task_chain_dao.go:95	0x997500		4c8d6424f8		LEAQ -0x8(SP), R12					
  task_chain_dao.go:95	0x997505		4d3b6610		CMPQ R12, 0x10(R14)					
  task_chain_dao.go:95	0x997509		0f86b4010000		JBE 0x9976c3						
  task_chain_dao.go:95	0x99750f		55			PUSHQ BP						
  task_chain_dao.go:95	0x997510		4889e5			MOVQ SP, BP						
  task_chain_dao.go:95	0x997513		4883c480		ADDQ $-0x80, SP						
  task_chain_dao.go:97	0x997517		4889842490000000	MOVQ AX, 0x90(SP)					
  task_chain_dao.go:97	0x99751f		48899c2498000000	MOVQ BX, 0x98(SP)					
  task_chain_dao.go:96	0x997527		488d0512a07800		LEAQ runtime.types+1295680(SB), AX			
  task_chain_dao.go:96	0x99752e		e86da2a7ff		CALL runtime.newobject(SB)				
  task_chain_dao.go:96	0x997533		4889442458		MOVQ AX, 0x58(SP)					
  task_chain_dao.go:96	0x997538		488b0d01abb702		MOVQ runtime.bss(SB), CX				
  chainable_api.go:19	0x99753f		4889c8			MOVQ CX, AX						
  chainable_api.go:19	0x997542		e83912f9ff		CALL gorm.io/gorm.(*DB).getInstance(SB)			
  chainable_api.go:19	0x997547		4889442438		MOVQ AX, 0x38(SP)					
  chainable_api.go:20	0x99754c		488b4820		MOVQ 0x20(AX), CX					
  chainable_api.go:20	0x997550		488d1549b96d00		LEAQ runtime.types+581280(SB), DX			
  chainable_api.go:20	0x997557		48895120		MOVQ DX, 0x20(CX)					
  chainable_api.go:20	0x99755b		833dee65bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  chainable_api.go:20	0x997562		7507			JNE 0x99756b						
  chainable_api.go:20	0x997564		488b542458		MOVQ 0x58(SP), DX					
  chainable_api.go:20	0x997569		eb15			JMP 0x997580						
  chainable_api.go:20	0x99756b		e8d00eaeff		CALL runtime.gcWriteBarrier2(SB)			
  chainable_api.go:20	0x997570		488b542458		MOVQ 0x58(SP), DX					
  chainable_api.go:20	0x997575		498913			MOVQ DX, 0(R11)						
  chainable_api.go:20	0x997578		488b5928		MOVQ 0x28(CX), BX					
  chainable_api.go:20	0x99757c		49895b08		MOVQ BX, 0x8(R11)					
  chainable_api.go:20	0x997580		48895128		MOVQ DX, 0x28(CX)					
  task_chain_dao.go:96	0x997584		488d0515696b00		LEAQ runtime.types+429728(SB), AX			
  task_chain_dao.go:96	0x99758b		e810a2a7ff		CALL runtime.newobject(SB)				
  task_chain_dao.go:96	0x997590		4889442450		MOVQ AX, 0x50(SP)					
  task_chain_dao.go:96	0x997595		488b842490000000	MOVQ 0x90(SP), AX					
  task_chain_dao.go:96	0x99759d		0f1f00			NOPL 0(AX)						
  task_chain_dao.go:96	0x9975a0		e8fb2aadff		CALL runtime.convT64(SB)				
  task_chain_dao.go:96	0x9975a5		488d0db4b56a00		LEAQ runtime.types+383840(SB), CX			
  task_chain_dao.go:96	0x9975ac		488b7c2450		MOVQ 0x50(SP), DI					
  task_chain_dao.go:96	0x9975b1		48890f			MOVQ CX, 0(DI)						
  task_chain_dao.go:96	0x9975b4		833d9565bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  task_chain_dao.go:96	0x9975bb		7413			JE 0x9975d0						
  task_chain_dao.go:96	0x9975bd		0f1f00			NOPL 0(AX)						
  task_chain_dao.go:96	0x9975c0		e87b0eaeff		CALL runtime.gcWriteBarrier2(SB)			
  task_chain_dao.go:96	0x9975c5		498903			MOVQ AX, 0(R11)						
  task_chain_dao.go:96	0x9975c8		488b5708		MOVQ 0x8(DI), DX					
  task_chain_dao.go:96	0x9975cc		49895308		MOVQ DX, 0x8(R11)					
  task_chain_dao.go:96	0x9975d0		48894708		MOVQ AX, 0x8(DI)					
  task_chain_dao.go:96	0x9975d4		488b442438		MOVQ 0x38(SP), AX					
  task_chain_dao.go:96	0x9975d9		488d1d40b36a00		LEAQ runtime.types+383264(SB), BX			
  task_chain_dao.go:96	0x9975e0		488d0d79074d02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX		
  task_chain_dao.go:96	0x9975e7		be01000000		MOVL $__minor_os_version__(SB), SI			
  task_chain_dao.go:96	0x9975ec		4989f0			MOVQ SI, R8						
  task_chain_dao.go:96	0x9975ef		e8ac6bf8ff		CALL gorm.io/gorm.(*DB).Where(SB)			
  task_chain_dao.go:96	0x9975f4		4889442448		MOVQ AX, 0x48(SP)					
  task_chain_dao.go:96	0x9975f9		488b842498000000	MOVQ 0x98(SP), AX					
  task_chain_dao.go:96	0x997601		e89a2aadff		CALL runtime.convT64(SB)				
  task_chain_dao.go:96	0x997606		488d1d5a7c7d00		LEAQ go:string.*+27999(SB), BX				
  task_chain_dao.go:96	0x99760d		b906000000		MOVL $__major_os_version__(SB), CX			
  task_chain_dao.go:96	0x997612		488d3d47b56a00		LEAQ runtime.types+383840(SB), DI			
  task_chain_dao.go:96	0x997619		4889c6			MOVQ AX, SI						
  task_chain_dao.go:96	0x99761c		488b442448		MOVQ 0x48(SP), AX					
  task_chain_dao.go:96	0x997621		e89ab6f8ff		CALL gorm.io/gorm.(*DB).Update(SB)			
  task_chain_dao.go:97	0x997626		4883780800		CMPQ 0x8(AX), $0x0					
  task_chain_dao.go:97	0x99762b		0f8484000000		JE 0x9976b5						
  task_chain_dao.go:96	0x997631		4889442440		MOVQ AX, 0x40(SP)					
  task_chain_dao.go:98	0x997636		440f117c2460		MOVUPS X15, 0x60(SP)					
  task_chain_dao.go:98	0x99763c		440f117c2470		MOVUPS X15, 0x70(SP)					
  task_chain_dao.go:98	0x997642		488b842490000000	MOVQ 0x90(SP), AX					
  task_chain_dao.go:98	0x99764a		e8512aadff		CALL runtime.convT64(SB)				
  task_chain_dao.go:98	0x99764f		488d0d0ab56a00		LEAQ runtime.types+383840(SB), CX			
  task_chain_dao.go:98	0x997656		48894c2460		MOVQ CX, 0x60(SP)					
  task_chain_dao.go:98	0x99765b		4889442468		MOVQ AX, 0x68(SP)					
  task_chain_dao.go:98	0x997660		488b4c2440		MOVQ 0x40(SP), CX					
  task_chain_dao.go:98	0x997665		488b5108		MOVQ 0x8(CX), DX					
  task_chain_dao.go:98	0x997669		4885d2			TESTQ DX, DX						
  task_chain_dao.go:98	0x99766c		7404			JE 0x997672						
  task_chain_dao.go:98	0x99766e		488b5208		MOVQ 0x8(DX), DX					
  task_chain_dao.go:98	0x997672		4c8b5110		MOVQ 0x10(CX), R10					
  task_chain_dao.go:98	0x997676		4889542470		MOVQ DX, 0x70(SP)					
  task_chain_dao.go:98	0x99767b		4c89542478		MOVQ R10, 0x78(SP)					
  print.go:233		0x997680		488b1df9a9b702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x997687		488d0552444d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x99768e		488d0d66478000		LEAQ go:string.*+211187(SB), CX				
  print.go:233		0x997695		bf30000000		MOVL $__major_os_version__+42(SB), DI			
  print.go:233		0x99769a		488d742460		LEAQ 0x60(SP), SI					
  print.go:233		0x99769f		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0x9976a5		4d89c1			MOVQ R8, R9						
  print.go:233		0x9976a8		e8737bb8ff		CALL fmt.Fprintf(SB)					
  task_chain_dao.go:99	0x9976ad		31c0			XORL AX, AX						
  task_chain_dao.go:99	0x9976af		4883ec80		SUBQ $-0x80, SP						
  task_chain_dao.go:99	0x9976b3		5d			POPQ BP							
  task_chain_dao.go:99	0x9976b4		c3			RET							
  task_chain_dao.go:101	0x9976b5		4883781800		CMPQ 0x18(AX), $0x0					
  task_chain_dao.go:101	0x9976ba		0f9fc0			SETG AL							
  task_chain_dao.go:101	0x9976bd		4883ec80		SUBQ $-0x80, SP						
  task_chain_dao.go:101	0x9976c1		5d			POPQ BP							
  task_chain_dao.go:101	0x9976c2		c3			RET							
  task_chain_dao.go:95	0x9976c3		4889442408		MOVQ AX, 0x8(SP)					
  task_chain_dao.go:95	0x9976c8		48895c2410		MOVQ BX, 0x10(SP)					
  task_chain_dao.go:95	0x9976cd		e80eeeadff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_chain_dao.go:95	0x9976d2		488b442408		MOVQ 0x8(SP), AX					
  task_chain_dao.go:95	0x9976d7		488b5c2410		MOVQ 0x10(SP), BX					
  task_chain_dao.go:95	0x9976dc		0f1f4000		NOPL 0(AX)						
  task_chain_dao.go:95	0x9976e0		e91bfeffff		JMP CAS-Backend/biz/dao.UpdateTaskChainStatusByID(SB)	
  :-1			0x9976e5		cc			INT $__subsystem__(SB)					
  :-1			0x9976e6		cc			INT $__subsystem__(SB)					
  :-1			0x9976e7		cc			INT $__subsystem__(SB)					
  :-1			0x9976e8		cc			INT $__subsystem__(SB)					
  :-1			0x9976e9		cc			INT $__subsystem__(SB)					
  :-1			0x9976ea		cc			INT $__subsystem__(SB)					
  :-1			0x9976eb		cc			INT $__subsystem__(SB)					
  :-1			0x9976ec		cc			INT $__subsystem__(SB)					
  :-1			0x9976ed		cc			INT $__subsystem__(SB)					
  :-1			0x9976ee		cc			INT $__subsystem__(SB)					
  :-1			0x9976ef		cc			INT $__subsystem__(SB)					
  :-1			0x9976f0		cc			INT $__subsystem__(SB)					
  :-1			0x9976f1		cc			INT $__subsystem__(SB)					
  :-1			0x9976f2		cc			INT $__subsystem__(SB)					
  :-1			0x9976f3		cc			INT $__subsystem__(SB)					
  :-1			0x9976f4		cc			INT $__subsystem__(SB)					
  :-1			0x9976f5		cc			INT $__subsystem__(SB)					
  :-1			0x9976f6		cc			INT $__subsystem__(SB)					
  :-1			0x9976f7		cc			INT $__subsystem__(SB)					
  :-1			0x9976f8		cc			INT $__subsystem__(SB)					
  :-1			0x9976f9		cc			INT $__subsystem__(SB)					
  :-1			0x9976fa		cc			INT $__subsystem__(SB)					
  :-1			0x9976fb		cc			INT $__subsystem__(SB)					
  :-1			0x9976fc		cc			INT $__subsystem__(SB)					
  :-1			0x9976fd		cc			INT $__subsystem__(SB)					
  :-1			0x9976fe		cc			INT $__subsystem__(SB)					
  :-1			0x9976ff		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/dao.UpdateTaskChainCompletion(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_chain_dao.go
  task_chain_dao.go:104	0x997700		4c8d6424e8		LEAQ -0x18(SP), R12					
  task_chain_dao.go:104	0x997705		4d3b6610		CMPQ R12, 0x10(R14)					
  task_chain_dao.go:104	0x997709		0f86a3020000		JBE 0x9979b2						
  task_chain_dao.go:104	0x99770f		55			PUSHQ BP						
  task_chain_dao.go:104	0x997710		4889e5			MOVQ SP, BP						
  task_chain_dao.go:104	0x997713		4881ec90000000		SUBQ $.file+67(SB), SP					
  task_chain_dao.go:109	0x99771a		48898424a0000000	MOVQ AX, 0xa0(SP)					
  task_chain_dao.go:109	0x997722		48899c24a8000000	MOVQ BX, 0xa8(SP)					
  task_chain_dao.go:104	0x99772a		48898c24b0000000	MOVQ CX, 0xb0(SP)					
  task_chain_dao.go:104	0x997732		4889bc24b8000000	MOVQ DI, 0xb8(SP)					
  task_chain_dao.go:104	0x99773a		4889b424c0000000	MOVQ SI, 0xc0(SP)					
  task_chain_dao.go:105	0x997742		488d05f79d7800		LEAQ runtime.types+1295680(SB), AX			
  task_chain_dao.go:105	0x997749		e852a0a7ff		CALL runtime.newobject(SB)				
  task_chain_dao.go:105	0x99774e		4889442468		MOVQ AX, 0x68(SP)					
  task_chain_dao.go:105	0x997753		488b0de6a8b702		MOVQ runtime.bss(SB), CX				
  chainable_api.go:19	0x99775a		4889c8			MOVQ CX, AX						
  chainable_api.go:19	0x99775d		0f1f00			NOPL 0(AX)						
  chainable_api.go:19	0x997760		e81b10f9ff		CALL gorm.io/gorm.(*DB).getInstance(SB)			
  chainable_api.go:19	0x997765		4889442438		MOVQ AX, 0x38(SP)					
  chainable_api.go:20	0x99776a		488b4820		MOVQ 0x20(AX), CX					
  chainable_api.go:20	0x99776e		488d152bb76d00		LEAQ runtime.types+581280(SB), DX			
  chainable_api.go:20	0x997775		48895120		MOVQ DX, 0x20(CX)					
  chainable_api.go:20	0x997779		833dd063bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  chainable_api.go:20	0x997780		7507			JNE 0x997789						
  chainable_api.go:20	0x997782		488b542468		MOVQ 0x68(SP), DX					
  chainable_api.go:20	0x997787		eb15			JMP 0x99779e						
  chainable_api.go:20	0x997789		e8b20caeff		CALL runtime.gcWriteBarrier2(SB)			
  chainable_api.go:20	0x99778e		488b542468		MOVQ 0x68(SP), DX					
  chainable_api.go:20	0x997793		498913			MOVQ DX, 0(R11)						
  chainable_api.go:20	0x997796		488b5928		MOVQ 0x28(CX), BX					
  chainable_api.go:20	0x99779a		49895b08		MOVQ BX, 0x8(R11)					
  chainable_api.go:20	0x99779e		48895128		MOVQ DX, 0x28(CX)					
  task_chain_dao.go:105	0x9977a2		488d05f7666b00		LEAQ runtime.types+429728(SB), AX			
  task_chain_dao.go:105	0x9977a9		e8f29fa7ff		CALL runtime.newobject(SB)				
  task_chain_dao.go:105	0x9977ae		4889442460		MOVQ AX, 0x60(SP)					
  task_chain_dao.go:105	0x9977b3		488b8424a0000000	MOVQ 0xa0(SP), AX					
  task_chain_dao.go:105	0x9977bb		0f1f440000		NOPL 0(AX)(AX*1)					
  task_chain_dao.go:105	0x9977c0		e8db28adff		CALL runtime.convT64(SB)				
  task_chain_dao.go:105	0x9977c5		488d0d94b36a00		LEAQ runtime.types+383840(SB), CX			
  task_chain_dao.go:105	0x9977cc		488b7c2460		MOVQ 0x60(SP), DI					
  task_chain_dao.go:105	0x9977d1		48890f			MOVQ CX, 0(DI)						
  task_chain_dao.go:105	0x9977d4		833d7563bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  task_chain_dao.go:105	0x9977db		7413			JE 0x9977f0						
  task_chain_dao.go:105	0x9977dd		0f1f00			NOPL 0(AX)						
  task_chain_dao.go:105	0x9977e0		e85b0caeff		CALL runtime.gcWriteBarrier2(SB)			
  task_chain_dao.go:105	0x9977e5		498903			MOVQ AX, 0(R11)						
  task_chain_dao.go:105	0x9977e8		488b5708		MOVQ 0x8(DI), DX					
  task_chain_dao.go:105	0x9977ec		49895308		MOVQ DX, 0x8(R11)					
  task_chain_dao.go:105	0x9977f0		48894708		MOVQ AX, 0x8(DI)					
  task_chain_dao.go:105	0x9977f4		488b442438		MOVQ 0x38(SP), AX					
  task_chain_dao.go:105	0x9977f9		488d1d20b16a00		LEAQ runtime.types+383264(SB), BX			
  task_chain_dao.go:105	0x997800		488d0d59054d02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX		
  task_chain_dao.go:105	0x997807		be01000000		MOVL $__minor_os_version__(SB), SI			
  task_chain_dao.go:105	0x99780c		4989f0			MOVQ SI, R8						
  task_chain_dao.go:105	0x99780f		e88c69f8ff		CALL gorm.io/gorm.(*DB).Where(SB)			
  task_chain_dao.go:105	0x997814		4889442458		MOVQ AX, 0x58(SP)					
  task_chain_dao.go:105	0x997819		e8c237adff		CALL runtime.makemap_small(SB)				
  task_chain_dao.go:105	0x99781e		4889442450		MOVQ AX, 0x50(SP)					
  task_chain_dao.go:106	0x997823		488b8424a8000000	MOVQ 0xa8(SP), AX					
  task_chain_dao.go:106	0x99782b		e87028adff		CALL runtime.convT64(SB)				
  task_chain_dao.go:106	0x997830		4889442448		MOVQ AX, 0x48(SP)					
  task_chain_dao.go:105	0x997835		488b5c2450		MOVQ 0x50(SP), BX					
  task_chain_dao.go:105	0x99783a		488d0d267a7d00		LEAQ go:string.*+27999(SB), CX				
  task_chain_dao.go:105	0x997841		bf06000000		MOVL $__major_os_version__(SB), DI			
  task_chain_dao.go:105	0x997846		488d05735c6e00		LEAQ runtime.types+623808(SB), AX			
  task_chain_dao.go:105	0x99784d		e8ce67adff		CALL runtime.mapassign_faststr(SB)			
  task_chain_dao.go:105	0x997852		488d1507b36a00		LEAQ runtime.types+383840(SB), DX			
  task_chain_dao.go:105	0x997859		488910			MOVQ DX, 0(AX)						
  task_chain_dao.go:105	0x99785c		833ded62bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  task_chain_dao.go:105	0x997863		7507			JNE 0x99786c						
  task_chain_dao.go:105	0x997865		488b4c2448		MOVQ 0x48(SP), CX					
  task_chain_dao.go:105	0x99786a		eb15			JMP 0x997881						
  task_chain_dao.go:105	0x99786c		e8cf0baeff		CALL runtime.gcWriteBarrier2(SB)			
  task_chain_dao.go:105	0x997871		488b4c2448		MOVQ 0x48(SP), CX					
  task_chain_dao.go:105	0x997876		49890b			MOVQ CX, 0(R11)						
  task_chain_dao.go:105	0x997879		488b7008		MOVQ 0x8(AX), SI					
  task_chain_dao.go:105	0x99787d		49897308		MOVQ SI, 0x8(R11)					
  task_chain_dao.go:105	0x997881		48894808		MOVQ CX, 0x8(AX)					
  task_chain_dao.go:107	0x997885		488d05548a7b00		LEAQ runtime.types+1487584(SB), AX			
  task_chain_dao.go:107	0x99788c		488d9c24b0000000	LEAQ 0xb0(SP), BX					
  task_chain_dao.go:107	0x997894		e80778a7ff		CALL runtime.convT(SB)					
  task_chain_dao.go:107	0x997899		4889442448		MOVQ AX, 0x48(SP)					
  task_chain_dao.go:105	0x99789e		488b5c2450		MOVQ 0x50(SP), BX					
  task_chain_dao.go:105	0x9978a3		488d0d25b27d00		LEAQ go:string.*+42439(SB), CX				
  task_chain_dao.go:105	0x9978aa		bf07000000		MOVL $__major_os_version__+1(SB), DI			
  task_chain_dao.go:105	0x9978af		488d050a5c6e00		LEAQ runtime.types+623808(SB), AX			
  task_chain_dao.go:105	0x9978b6		e86567adff		CALL runtime.mapassign_faststr(SB)			
  task_chain_dao.go:105	0x9978bb		488d0d1e8a7b00		LEAQ runtime.types+1487584(SB), CX			
  task_chain_dao.go:105	0x9978c2		488908			MOVQ CX, 0(AX)						
  task_chain_dao.go:105	0x9978c5		833d8462bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  task_chain_dao.go:105	0x9978cc		7507			JNE 0x9978d5						
  task_chain_dao.go:105	0x9978ce		488b542448		MOVQ 0x48(SP), DX					
  task_chain_dao.go:105	0x9978d3		eb15			JMP 0x9978ea						
  task_chain_dao.go:105	0x9978d5		e8660baeff		CALL runtime.gcWriteBarrier2(SB)			
  task_chain_dao.go:105	0x9978da		488b542448		MOVQ 0x48(SP), DX					
  task_chain_dao.go:105	0x9978df		498913			MOVQ DX, 0(R11)						
  task_chain_dao.go:105	0x9978e2		488b7008		MOVQ 0x8(AX), SI					
  task_chain_dao.go:105	0x9978e6		49897308		MOVQ SI, 0x8(R11)					
  task_chain_dao.go:105	0x9978ea		48895008		MOVQ DX, 0x8(AX)					
  task_chain_dao.go:105	0x9978ee		488b442458		MOVQ 0x58(SP), AX					
  task_chain_dao.go:105	0x9978f3		488d1dc65b6e00		LEAQ runtime.types+623808(SB), BX			
  task_chain_dao.go:105	0x9978fa		488b4c2450		MOVQ 0x50(SP), CX					
  task_chain_dao.go:105	0x9978ff		90			NOPL							
  task_chain_dao.go:105	0x997900		e8fbb4f8ff		CALL gorm.io/gorm.(*DB).Updates(SB)			
  task_chain_dao.go:109	0x997905		4883780800		CMPQ 0x8(AX), $0x0					
  task_chain_dao.go:109	0x99790a		0f8491000000		JE 0x9979a1						
  task_chain_dao.go:105	0x997910		4889442440		MOVQ AX, 0x40(SP)					
  task_chain_dao.go:110	0x997915		440f117c2470		MOVUPS X15, 0x70(SP)					
  task_chain_dao.go:110	0x99791b		440f11bc2480000000	MOVUPS X15, 0x80(SP)					
  task_chain_dao.go:110	0x997924		488b8424a0000000	MOVQ 0xa0(SP), AX					
  task_chain_dao.go:110	0x99792c		e86f27adff		CALL runtime.convT64(SB)				
  task_chain_dao.go:110	0x997931		488d0d28b26a00		LEAQ runtime.types+383840(SB), CX			
  task_chain_dao.go:110	0x997938		48894c2470		MOVQ CX, 0x70(SP)					
  task_chain_dao.go:110	0x99793d		4889442478		MOVQ AX, 0x78(SP)					
  task_chain_dao.go:110	0x997942		488b4c2440		MOVQ 0x40(SP), CX					
  task_chain_dao.go:110	0x997947		488b5108		MOVQ 0x8(CX), DX					
  task_chain_dao.go:110	0x99794b		4885d2			TESTQ DX, DX						
  task_chain_dao.go:110	0x99794e		7404			JE 0x997954						
  task_chain_dao.go:110	0x997950		488b5208		MOVQ 0x8(DX), DX					
  task_chain_dao.go:110	0x997954		4c8b5110		MOVQ 0x10(CX), R10					
  task_chain_dao.go:110	0x997958		4889942480000000	MOVQ DX, 0x80(SP)					
  task_chain_dao.go:110	0x997960		4c89942488000000	MOVQ R10, 0x88(SP)					
  print.go:233		0x997968		488b1d11a7b702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x99796f		488d056a414d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x997976		488d0d9e7f8000		LEAQ go:string.*+226323(SB), CX				
  print.go:233		0x99797d		bf36000000		MOVL $__major_os_version__+48(SB), DI			
  print.go:233		0x997982		488d742470		LEAQ 0x70(SP), SI					
  print.go:233		0x997987		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0x99798d		4d89c1			MOVQ R8, R9						
  print.go:233		0x997990		e88b78b8ff		CALL fmt.Fprintf(SB)					
  task_chain_dao.go:111	0x997995		31c0			XORL AX, AX						
  task_chain_dao.go:111	0x997997		4881c490000000		ADDQ $.file+67(SB), SP					
  task_chain_dao.go:111	0x99799e		5d			POPQ BP							
  task_chain_dao.go:111	0x99799f		90			NOPL							
  task_chain_dao.go:111	0x9979a0		c3			RET							
  task_chain_dao.go:113	0x9979a1		4883781800		CMPQ 0x18(AX), $0x0					
  task_chain_dao.go:113	0x9979a6		0f9fc0			SETG AL							
  task_chain_dao.go:113	0x9979a9		4881c490000000		ADDQ $.file+67(SB), SP					
  task_chain_dao.go:113	0x9979b0		5d			POPQ BP							
  task_chain_dao.go:113	0x9979b1		c3			RET							
  task_chain_dao.go:104	0x9979b2		4889442408		MOVQ AX, 0x8(SP)					
  task_chain_dao.go:104	0x9979b7		48895c2410		MOVQ BX, 0x10(SP)					
  task_chain_dao.go:104	0x9979bc		48894c2418		MOVQ CX, 0x18(SP)					
  task_chain_dao.go:104	0x9979c1		48897c2420		MOVQ DI, 0x20(SP)					
  task_chain_dao.go:104	0x9979c6		4889742428		MOVQ SI, 0x28(SP)					
  task_chain_dao.go:104	0x9979cb		e810ebadff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_chain_dao.go:104	0x9979d0		488b442408		MOVQ 0x8(SP), AX					
  task_chain_dao.go:104	0x9979d5		488b5c2410		MOVQ 0x10(SP), BX					
  task_chain_dao.go:104	0x9979da		488b4c2418		MOVQ 0x18(SP), CX					
  task_chain_dao.go:104	0x9979df		488b7c2420		MOVQ 0x20(SP), DI					
  task_chain_dao.go:104	0x9979e4		488b742428		MOVQ 0x28(SP), SI					
  task_chain_dao.go:104	0x9979e9		e912fdffff		JMP CAS-Backend/biz/dao.UpdateTaskChainCompletion(SB)	
  :-1			0x9979ee		cc			INT $__subsystem__(SB)					
  :-1			0x9979ef		cc			INT $__subsystem__(SB)					
  :-1			0x9979f0		cc			INT $__subsystem__(SB)					
  :-1			0x9979f1		cc			INT $__subsystem__(SB)					
  :-1			0x9979f2		cc			INT $__subsystem__(SB)					
  :-1			0x9979f3		cc			INT $__subsystem__(SB)					
  :-1			0x9979f4		cc			INT $__subsystem__(SB)					
  :-1			0x9979f5		cc			INT $__subsystem__(SB)					
  :-1			0x9979f6		cc			INT $__subsystem__(SB)					
  :-1			0x9979f7		cc			INT $__subsystem__(SB)					
  :-1			0x9979f8		cc			INT $__subsystem__(SB)					
  :-1			0x9979f9		cc			INT $__subsystem__(SB)					
  :-1			0x9979fa		cc			INT $__subsystem__(SB)					
  :-1			0x9979fb		cc			INT $__subsystem__(SB)					
  :-1			0x9979fc		cc			INT $__subsystem__(SB)					
  :-1			0x9979fd		cc			INT $__subsystem__(SB)					
  :-1			0x9979fe		cc			INT $__subsystem__(SB)					
  :-1			0x9979ff		cc			INT $__subsystem__(SB)					

