TEXT CAS-Backend/biz/dao.User.TableName(SB) D:/CodeEnv_code/cas-backend/biz/dao/user_dao.go
  user_dao.go:102	0x999f80		4889442408		MOVQ AX, 0x8(SP)			
  user_dao.go:102	0x999f85		48895c2410		MOVQ BX, 0x10(SP)			
  user_dao.go:102	0x999f8a		48894c2418		MOVQ CX, 0x18(SP)			
  user_dao.go:102	0x999f8f		48897c2420		MOVQ DI, 0x20(SP)			
  user_dao.go:102	0x999f94		4889742428		MOVQ SI, 0x28(SP)			
  user_dao.go:102	0x999f99		4c89442430		MOVQ R8, 0x30(SP)			
  user_dao.go:102	0x999f9e		4c894c2438		MOVQ R9, 0x38(SP)			
  user_dao.go:102	0x999fa3		4c89542440		MOVQ R10, 0x40(SP)			
  user_dao.go:103	0x999fa8		488d05fca07d00		LEAQ go:string.*+48035(SB), AX		
  user_dao.go:103	0x999faf		bb08000000		MOVL $__major_os_version__+2(SB), BX	
  user_dao.go:103	0x999fb4		c3			RET					
  :-1			0x999fb5		cc			INT $__subsystem__(SB)			
  :-1			0x999fb6		cc			INT $__subsystem__(SB)			
  :-1			0x999fb7		cc			INT $__subsystem__(SB)			
  :-1			0x999fb8		cc			INT $__subsystem__(SB)			
  :-1			0x999fb9		cc			INT $__subsystem__(SB)			
  :-1			0x999fba		cc			INT $__subsystem__(SB)			
  :-1			0x999fbb		cc			INT $__subsystem__(SB)			
  :-1			0x999fbc		cc			INT $__subsystem__(SB)			
  :-1			0x999fbd		cc			INT $__subsystem__(SB)			
  :-1			0x999fbe		cc			INT $__subsystem__(SB)			
  :-1			0x999fbf		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.Insert_user(SB) D:/CodeEnv_code/cas-backend/biz/dao/user_dao.go
  user_dao.go:107	0x999fc0		4c8d6424d0		LEAQ -0x30(SP), R12			
  user_dao.go:107	0x999fc5		4d3b6610		CMPQ R12, 0x10(R14)			
  user_dao.go:107	0x999fc9		0f8618020000		JBE 0x99a1e7				
  user_dao.go:107	0x999fcf		55			PUSHQ BP				
  user_dao.go:107	0x999fd0		4889e5			MOVQ SP, BP				
  user_dao.go:107	0x999fd3		4881eca8000000		SUBQ $.file+91(SB), SP			
  user_dao.go:107	0x999fda		4c898c24e8000000	MOVQ R9, 0xe8(SP)			
  user_dao.go:110	0x999fe2		4889b424d8000000	MOVQ SI, 0xd8(SP)			
  user_dao.go:110	0x999fea		4889bc24d0000000	MOVQ DI, 0xd0(SP)			
  user_dao.go:110	0x999ff2		4c898424e0000000	MOVQ R8, 0xe0(SP)			
  user_dao.go:110	0x999ffa		48898c24c8000000	MOVQ CX, 0xc8(SP)			
  user_dao.go:110	0x99a002		48899c24c0000000	MOVQ BX, 0xc0(SP)			
  user_dao.go:110	0x99a00a		48898424b8000000	MOVQ AX, 0xb8(SP)			
  user_dao.go:110	0x99a012		4d85d2			TESTQ R10, R10				
  user_dao.go:110	0x99a015		7405			JE 0x99a01c				
  user_dao.go:111	0x99a017		498b11			MOVQ 0(R9), DX				
  user_dao.go:111	0x99a01a		eb02			JMP 0x99a01e				
  user_dao.go:111	0x99a01c		31d2			XORL DX, DX				
  user_dao.go:119	0x99a01e		4889542438		MOVQ DX, 0x38(SP)			
  user_dao.go:115	0x99a023		488d0596217700		LEAQ runtime.types+1208768(SB), AX	
  user_dao.go:115	0x99a02a		e87177a7ff		CALL runtime.newobject(SB)		
  user_dao.go:115	0x99a02f		48898424a0000000	MOVQ AX, 0xa0(SP)			
  user_dao.go:115	0x99a037		440f117c2460		MOVUPS X15, 0x60(SP)			
  user_dao.go:115	0x99a03d		440f117c2470		MOVUPS X15, 0x70(SP)			
  user_dao.go:115	0x99a043		440f11bc2480000000	MOVUPS X15, 0x80(SP)			
  user_dao.go:115	0x99a04c		440f11bc2490000000	MOVUPS X15, 0x90(SP)			
  user_dao.go:116	0x99a055		488b8c24c8000000	MOVQ 0xc8(SP), CX			
  user_dao.go:116	0x99a05d		48894c2468		MOVQ CX, 0x68(SP)			
  user_dao.go:116	0x99a062		488b8c24d0000000	MOVQ 0xd0(SP), CX			
  user_dao.go:116	0x99a06a		48894c2470		MOVQ CX, 0x70(SP)			
  user_dao.go:117	0x99a06f		488b8c24b8000000	MOVQ 0xb8(SP), CX			
  user_dao.go:117	0x99a077		48894c2478		MOVQ CX, 0x78(SP)			
  user_dao.go:117	0x99a07c		488b8c24c0000000	MOVQ 0xc0(SP), CX			
  user_dao.go:117	0x99a084		48898c2480000000	MOVQ CX, 0x80(SP)			
  user_dao.go:118	0x99a08c		488b8c24d8000000	MOVQ 0xd8(SP), CX			
  user_dao.go:118	0x99a094		48898c2488000000	MOVQ CX, 0x88(SP)			
  user_dao.go:118	0x99a09c		488b8c24e0000000	MOVQ 0xe0(SP), CX			
  user_dao.go:118	0x99a0a4		48898c2490000000	MOVQ CX, 0x90(SP)			
  user_dao.go:119	0x99a0ac		488b4c2438		MOVQ 0x38(SP), CX			
  user_dao.go:119	0x99a0b1		48898c2498000000	MOVQ CX, 0x98(SP)			
  user_dao.go:115	0x99a0b9		833d903abc0200		CMPL runtime.writeBarrier(SB), $0x0	
  user_dao.go:115	0x99a0c0		741c			JE 0x99a0de				
  user_dao.go:115	0x99a0c2		4889c3			MOVQ AX, BX				
  user_dao.go:115	0x99a0c5		488d4c2460		LEAQ 0x60(SP), CX			
  user_dao.go:115	0x99a0ca		488d05ef207700		LEAQ runtime.types+1208768(SB), AX	
  user_dao.go:115	0x99a0d1		e84aaea7ff		CALL runtime.wbMove(SB)			
  user_dao.go:115	0x99a0d6		488b8424a0000000	MOVQ 0xa0(SP), AX			
  user_dao.go:115	0x99a0de		0f10442460		MOVUPS 0x60(SP), X0			
  user_dao.go:115	0x99a0e3		0f1100			MOVUPS X0, 0(AX)			
  user_dao.go:115	0x99a0e6		0f10442470		MOVUPS 0x70(SP), X0			
  user_dao.go:115	0x99a0eb		0f114010		MOVUPS X0, 0x10(AX)			
  user_dao.go:115	0x99a0ef		0f10842480000000	MOVUPS 0x80(SP), X0			
  user_dao.go:115	0x99a0f7		0f114020		MOVUPS X0, 0x20(AX)			
  user_dao.go:115	0x99a0fb		0f10842490000000	MOVUPS 0x90(SP), X0			
  user_dao.go:115	0x99a103		0f114030		MOVUPS X0, 0x30(AX)			
  user_dao.go:123	0x99a107		488b15327fb702		MOVQ runtime.bss(SB), DX		
  user_dao.go:123	0x99a10e		488d1deb8d6d00		LEAQ runtime.types+581376(SB), BX	
  user_dao.go:123	0x99a115		4889c1			MOVQ AX, CX				
  user_dao.go:123	0x99a118		4889d0			MOVQ DX, AX				
  user_dao.go:123	0x99a11b		0f1f440000		NOPL 0(AX)(AX*1)			
  user_dao.go:123	0x99a120		e81b59f8ff		CALL gorm.io/gorm.(*DB).Create(SB)	
  user_dao.go:124	0x99a125		4883780800		CMPQ 0x8(AX), $0x0			
  user_dao.go:124	0x99a12a		7459			JE 0x99a185				
  user_dao.go:125	0x99a12c		440f117c2450		MOVUPS X15, 0x50(SP)			
  user_dao.go:125	0x99a132		488b5008		MOVQ 0x8(AX), DX			
  user_dao.go:125	0x99a136		4885d2			TESTQ DX, DX				
  user_dao.go:125	0x99a139		7404			JE 0x99a13f				
  user_dao.go:125	0x99a13b		488b5208		MOVQ 0x8(DX), DX			
  user_dao.go:125	0x99a13f		4c8b5010		MOVQ 0x10(AX), R10			
  user_dao.go:125	0x99a143		4889542450		MOVQ DX, 0x50(SP)			
  user_dao.go:125	0x99a148		4c89542458		MOVQ R10, 0x58(SP)			
  print.go:233		0x99a14d		488b1d2c7fb702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x99a154		488d0585194d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x99a15b		488d0d41167e00		LEAQ go:string.*+78491(SB), CX		
  print.go:233		0x99a162		bf10000000		MOVL $__major_os_version__+10(SB), DI	
  print.go:233		0x99a167		488d742450		LEAQ 0x50(SP), SI			
  print.go:233		0x99a16c		41b801000000		MOVL $__minor_os_version__(SB), R8	
  print.go:233		0x99a172		4d89c1			MOVQ R8, R9				
  print.go:233		0x99a175		e8a650b8ff		CALL fmt.Fprintf(SB)			
  user_dao.go:126	0x99a17a		31c0			XORL AX, AX				
  user_dao.go:126	0x99a17c		4881c4a8000000		ADDQ $.file+91(SB), SP			
  user_dao.go:126	0x99a183		5d			POPQ BP					
  user_dao.go:126	0x99a184		c3			RET					
  user_dao.go:129	0x99a185		440f117c2440		MOVUPS X15, 0x40(SP)			
  user_dao.go:129	0x99a18b		488b8c24a0000000	MOVQ 0xa0(SP), CX			
  user_dao.go:129	0x99a193		488b01			MOVQ 0(CX), AX				
  user_dao.go:129	0x99a196		e805ffacff		CALL runtime.convT64(SB)		
  user_dao.go:129	0x99a19b		488d0dbe896a00		LEAQ runtime.types+383840(SB), CX	
  user_dao.go:129	0x99a1a2		48894c2440		MOVQ CX, 0x40(SP)			
  user_dao.go:129	0x99a1a7		4889442448		MOVQ AX, 0x48(SP)			
  print.go:233		0x99a1ac		488b1dcd7eb702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x99a1b3		488d0526194d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x99a1ba		488d0d215f7e00		LEAQ go:string.*+97242(SB), CX		
  print.go:233		0x99a1c1		bf14000000		MOVL $__major_os_version__+14(SB), DI	
  print.go:233		0x99a1c6		488d742440		LEAQ 0x40(SP), SI			
  print.go:233		0x99a1cb		41b801000000		MOVL $__minor_os_version__(SB), R8	
  print.go:233		0x99a1d1		4d89c1			MOVQ R8, R9				
  print.go:233		0x99a1d4		e84750b8ff		CALL fmt.Fprintf(SB)			
  user_dao.go:130	0x99a1d9		b801000000		MOVL $__minor_os_version__(SB), AX	
  user_dao.go:130	0x99a1de		4881c4a8000000		ADDQ $.file+91(SB), SP			
  user_dao.go:130	0x99a1e5		5d			POPQ BP					
  user_dao.go:130	0x99a1e6		c3			RET					
  user_dao.go:107	0x99a1e7		4889442408		MOVQ AX, 0x8(SP)			
  user_dao.go:107	0x99a1ec		48895c2410		MOVQ BX, 0x10(SP)			
  user_dao.go:107	0x99a1f1		48894c2418		MOVQ CX, 0x18(SP)			
  user_dao.go:107	0x99a1f6		48897c2420		MOVQ DI, 0x20(SP)			
  user_dao.go:107	0x99a1fb		4889742428		MOVQ SI, 0x28(SP)			
  user_dao.go:107	0x99a200		4c89442430		MOVQ R8, 0x30(SP)			
  user_dao.go:107	0x99a205		4c894c2438		MOVQ R9, 0x38(SP)			
  user_dao.go:107	0x99a20a		4c89542440		MOVQ R10, 0x40(SP)			
  user_dao.go:107	0x99a20f		4c895c2448		MOVQ R11, 0x48(SP)			
  user_dao.go:107	0x99a214		e8c7c2adff		CALL runtime.morestack_noctxt.abi0(SB)	
  user_dao.go:107	0x99a219		488b442408		MOVQ 0x8(SP), AX			
  user_dao.go:107	0x99a21e		488b5c2410		MOVQ 0x10(SP), BX			
  user_dao.go:107	0x99a223		488b4c2418		MOVQ 0x18(SP), CX			
  user_dao.go:107	0x99a228		488b7c2420		MOVQ 0x20(SP), DI			
  user_dao.go:107	0x99a22d		488b742428		MOVQ 0x28(SP), SI			
  user_dao.go:107	0x99a232		4c8b442430		MOVQ 0x30(SP), R8			
  user_dao.go:107	0x99a237		4c8b4c2438		MOVQ 0x38(SP), R9			
  user_dao.go:107	0x99a23c		4c8b542440		MOVQ 0x40(SP), R10			
  user_dao.go:107	0x99a241		4c8b5c2448		MOVQ 0x48(SP), R11			
  user_dao.go:107	0x99a246		e975fdffff		JMP CAS-Backend/biz/dao.Insert_user(SB)	
  :-1			0x99a24b		cc			INT $__subsystem__(SB)			
  :-1			0x99a24c		cc			INT $__subsystem__(SB)			
  :-1			0x99a24d		cc			INT $__subsystem__(SB)			
  :-1			0x99a24e		cc			INT $__subsystem__(SB)			
  :-1			0x99a24f		cc			INT $__subsystem__(SB)			
  :-1			0x99a250		cc			INT $__subsystem__(SB)			
  :-1			0x99a251		cc			INT $__subsystem__(SB)			
  :-1			0x99a252		cc			INT $__subsystem__(SB)			
  :-1			0x99a253		cc			INT $__subsystem__(SB)			
  :-1			0x99a254		cc			INT $__subsystem__(SB)			
  :-1			0x99a255		cc			INT $__subsystem__(SB)			
  :-1			0x99a256		cc			INT $__subsystem__(SB)			
  :-1			0x99a257		cc			INT $__subsystem__(SB)			
  :-1			0x99a258		cc			INT $__subsystem__(SB)			
  :-1			0x99a259		cc			INT $__subsystem__(SB)			
  :-1			0x99a25a		cc			INT $__subsystem__(SB)			
  :-1			0x99a25b		cc			INT $__subsystem__(SB)			
  :-1			0x99a25c		cc			INT $__subsystem__(SB)			
  :-1			0x99a25d		cc			INT $__subsystem__(SB)			
  :-1			0x99a25e		cc			INT $__subsystem__(SB)			
  :-1			0x99a25f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.IsExist_user(SB) D:/CodeEnv_code/cas-backend/biz/dao/user_dao.go
  user_dao.go:166	0x99a260		4c8d6424f8		LEAQ -0x8(SP), R12				
  user_dao.go:166	0x99a265		4d3b6610		CMPQ R12, 0x10(R14)				
  user_dao.go:166	0x99a269		0f86b0010000		JBE 0x99a41f					
  user_dao.go:166	0x99a26f		55			PUSHQ BP					
  user_dao.go:166	0x99a270		4889e5			MOVQ SP, BP					
  user_dao.go:166	0x99a273		4883c480		ADDQ $-0x80, SP					
  user_dao.go:171	0x99a277		4889842490000000	MOVQ AX, 0x90(SP)				
  user_dao.go:171	0x99a27f		48899c2498000000	MOVQ BX, 0x98(SP)				
  user_dao.go:167	0x99a287		488d0552886a00		LEAQ runtime.types+383712(SB), AX		
  user_dao.go:167	0x99a28e		e80d75a7ff		CALL runtime.newobject(SB)			
  user_dao.go:167	0x99a293		4889442478		MOVQ AX, 0x78(SP)				
  user_dao.go:170	0x99a298		488d05211f7700		LEAQ runtime.types+1208768(SB), AX		
  user_dao.go:170	0x99a29f		90			NOPL						
  user_dao.go:170	0x99a2a0		e8fb74a7ff		CALL runtime.newobject(SB)			
  user_dao.go:170	0x99a2a5		4889442450		MOVQ AX, 0x50(SP)				
  user_dao.go:170	0x99a2aa		488b0d8f7db702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x99a2b1		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x99a2b4		e8c7e4f8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x99a2b9		4889442438		MOVQ AX, 0x38(SP)				
  chainable_api.go:20	0x99a2be		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x99a2c2		488d15378c6d00		LEAQ runtime.types+581376(SB), DX		
  chainable_api.go:20	0x99a2c9		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x99a2cd		833d7c38bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x99a2d4		750a			JNE 0x99a2e0					
  chainable_api.go:20	0x99a2d6		488b542450		MOVQ 0x50(SP), DX				
  chainable_api.go:20	0x99a2db		eb18			JMP 0x99a2f5					
  chainable_api.go:20	0x99a2dd		0f1f00			NOPL 0(AX)					
  chainable_api.go:20	0x99a2e0		e85be1adff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x99a2e5		488b542450		MOVQ 0x50(SP), DX				
  chainable_api.go:20	0x99a2ea		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x99a2ed		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x99a2f1		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x99a2f5		48895128		MOVQ DX, 0x28(CX)				
  user_dao.go:170	0x99a2f9		488d05a03b6b00		LEAQ runtime.types+429728(SB), AX		
  user_dao.go:170	0x99a300		e89b74a7ff		CALL runtime.newobject(SB)			
  user_dao.go:170	0x99a305		4889442448		MOVQ AX, 0x48(SP)				
  user_dao.go:170	0x99a30a		488b9c2498000000	MOVQ 0x98(SP), BX				
  user_dao.go:170	0x99a312		488b842490000000	MOVQ 0x90(SP), AX				
  user_dao.go:170	0x99a31a		e801feacff		CALL runtime.convTstring(SB)			
  user_dao.go:170	0x99a31f		488d1dfa856a00		LEAQ runtime.types+383264(SB), BX		
  user_dao.go:170	0x99a326		488b7c2448		MOVQ 0x48(SP), DI				
  user_dao.go:170	0x99a32b		48891f			MOVQ BX, 0(DI)					
  user_dao.go:170	0x99a32e		833d1b38bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  user_dao.go:170	0x99a335		7410			JE 0x99a347					
  user_dao.go:170	0x99a337		e804e1adff		CALL runtime.gcWriteBarrier2(SB)		
  user_dao.go:170	0x99a33c		498903			MOVQ AX, 0(R11)					
  user_dao.go:170	0x99a33f		488b5708		MOVQ 0x8(DI), DX				
  user_dao.go:170	0x99a343		49895308		MOVQ DX, 0x8(R11)				
  user_dao.go:170	0x99a347		48894708		MOVQ AX, 0x8(DI)				
  user_dao.go:170	0x99a34b		488b442438		MOVQ 0x38(SP), AX				
  user_dao.go:170	0x99a350		488d0d79da4c02		LEAQ CAS-Backend/biz/dao..stmp_33(SB), CX	
  user_dao.go:170	0x99a357		be01000000		MOVL $__minor_os_version__(SB), SI		
  user_dao.go:170	0x99a35c		4989f0			MOVQ SI, R8					
  user_dao.go:170	0x99a35f		90			NOPL						
  user_dao.go:170	0x99a360		e83b3ef8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  user_dao.go:170	0x99a365		488b5c2478		MOVQ 0x78(SP), BX				
  user_dao.go:170	0x99a36a		e8518ff8ff		CALL gorm.io/gorm.(*DB).Count(SB)		
  user_dao.go:171	0x99a36f		4883780800		CMPQ 0x8(AX), $0x0				
  user_dao.go:171	0x99a374		0f8493000000		JE 0x99a40d					
  user_dao.go:170	0x99a37a		4889442440		MOVQ AX, 0x40(SP)				
  user_dao.go:172	0x99a37f		440f117c2458		MOVUPS X15, 0x58(SP)				
  user_dao.go:172	0x99a385		440f117c2468		MOVUPS X15, 0x68(SP)				
  user_dao.go:172	0x99a38b		488b842490000000	MOVQ 0x90(SP), AX				
  user_dao.go:172	0x99a393		488b9c2498000000	MOVQ 0x98(SP), BX				
  user_dao.go:172	0x99a39b		0f1f440000		NOPL 0(AX)(AX*1)				
  user_dao.go:172	0x99a3a0		e87bfdacff		CALL runtime.convTstring(SB)			
  user_dao.go:172	0x99a3a5		488d0d74856a00		LEAQ runtime.types+383264(SB), CX		
  user_dao.go:172	0x99a3ac		48894c2458		MOVQ CX, 0x58(SP)				
  user_dao.go:172	0x99a3b1		4889442460		MOVQ AX, 0x60(SP)				
  user_dao.go:172	0x99a3b6		488b4c2440		MOVQ 0x40(SP), CX				
  user_dao.go:172	0x99a3bb		488b5108		MOVQ 0x8(CX), DX				
  user_dao.go:172	0x99a3bf		90			NOPL						
  user_dao.go:172	0x99a3c0		4885d2			TESTQ DX, DX					
  user_dao.go:172	0x99a3c3		7404			JE 0x99a3c9					
  user_dao.go:172	0x99a3c5		488b5208		MOVQ 0x8(DX), DX				
  user_dao.go:172	0x99a3c9		4c8b5110		MOVQ 0x10(CX), R10				
  user_dao.go:172	0x99a3cd		4889542468		MOVQ DX, 0x68(SP)				
  user_dao.go:172	0x99a3d2		4c89542470		MOVQ R10, 0x70(SP)				
  print.go:233		0x99a3d7		488b1da27cb702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99a3de		488d05fb164d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99a3e5		488d0dd6767f00		LEAQ go:string.*+169402(SB), CX			
  print.go:233		0x99a3ec		bf24000000		MOVL $__major_os_version__+30(SB), DI		
  print.go:233		0x99a3f1		488d742458		LEAQ 0x58(SP), SI				
  print.go:233		0x99a3f6		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x99a3fc		4d89c1			MOVQ R8, R9					
  print.go:233		0x99a3ff		90			NOPL						
  print.go:233		0x99a400		e81b4eb8ff		CALL fmt.Fprintf(SB)				
  user_dao.go:173	0x99a405		31c0			XORL AX, AX					
  user_dao.go:173	0x99a407		4883ec80		SUBQ $-0x80, SP					
  user_dao.go:173	0x99a40b		5d			POPQ BP						
  user_dao.go:173	0x99a40c		c3			RET						
  user_dao.go:176	0x99a40d		488b4c2478		MOVQ 0x78(SP), CX				
  user_dao.go:176	0x99a412		48833900		CMPQ 0(CX), $0x0				
  user_dao.go:176	0x99a416		0f9fc0			SETG AL						
  user_dao.go:176	0x99a419		4883ec80		SUBQ $-0x80, SP					
  user_dao.go:176	0x99a41d		5d			POPQ BP						
  user_dao.go:176	0x99a41e		c3			RET						
  user_dao.go:166	0x99a41f		4889442408		MOVQ AX, 0x8(SP)				
  user_dao.go:166	0x99a424		48895c2410		MOVQ BX, 0x10(SP)				
  user_dao.go:166	0x99a429		e8b2c0adff		CALL runtime.morestack_noctxt.abi0(SB)		
  user_dao.go:166	0x99a42e		488b442408		MOVQ 0x8(SP), AX				
  user_dao.go:166	0x99a433		488b5c2410		MOVQ 0x10(SP), BX				
  user_dao.go:166	0x99a438		e923feffff		JMP CAS-Backend/biz/dao.IsExist_user(SB)	
  :-1			0x99a43d		cc			INT $__subsystem__(SB)				
  :-1			0x99a43e		cc			INT $__subsystem__(SB)				
  :-1			0x99a43f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.Select1_user(SB) D:/CodeEnv_code/cas-backend/biz/dao/user_dao.go
  user_dao.go:180	0x99a440		4c8d6424c8		LEAQ -0x38(SP), R12				
  user_dao.go:180	0x99a445		4d3b6610		CMPQ R12, 0x10(R14)				
  user_dao.go:180	0x99a449		0f861d020000		JBE 0x99a66c					
  user_dao.go:180	0x99a44f		55			PUSHQ BP					
  user_dao.go:180	0x99a450		4889e5			MOVQ SP, BP					
  user_dao.go:180	0x99a453		4881ecb0000000		SUBQ $.file+99(SB), SP				
  user_dao.go:185	0x99a45a		48899c24c8000000	MOVQ BX, 0xc8(SP)				
  user_dao.go:185	0x99a462		48898424c0000000	MOVQ AX, 0xc0(SP)				
  user_dao.go:180	0x99a46a		440f117c2438		MOVUPS X15, 0x38(SP)				
  user_dao.go:180	0x99a470		440f117c2448		MOVUPS X15, 0x48(SP)				
  user_dao.go:180	0x99a476		440f117c2458		MOVUPS X15, 0x58(SP)				
  user_dao.go:180	0x99a47c		440f117c2468		MOVUPS X15, 0x68(SP)				
  user_dao.go:181	0x99a482		488d05371d7700		LEAQ runtime.types+1208768(SB), AX		
  user_dao.go:181	0x99a489		e81273a7ff		CALL runtime.newobject(SB)			
  user_dao.go:181	0x99a48e		48898424a8000000	MOVQ AX, 0xa8(SP)				
  user_dao.go:184	0x99a496		488d05033a6b00		LEAQ runtime.types+429728(SB), AX		
  user_dao.go:184	0x99a49d		0f1f00			NOPL 0(AX)					
  user_dao.go:184	0x99a4a0		e8fb72a7ff		CALL runtime.newobject(SB)			
  user_dao.go:184	0x99a4a5		4889842480000000	MOVQ AX, 0x80(SP)				
  user_dao.go:184	0x99a4ad		488b9c24c8000000	MOVQ 0xc8(SP), BX				
  user_dao.go:184	0x99a4b5		488b8424c0000000	MOVQ 0xc0(SP), AX				
  user_dao.go:184	0x99a4bd		0f1f00			NOPL 0(AX)					
  user_dao.go:184	0x99a4c0		e85bfcacff		CALL runtime.convTstring(SB)			
  user_dao.go:184	0x99a4c5		488d1d54846a00		LEAQ runtime.types+383264(SB), BX		
  user_dao.go:184	0x99a4cc		488bbc2480000000	MOVQ 0x80(SP), DI				
  user_dao.go:184	0x99a4d4		48891f			MOVQ BX, 0(DI)					
  user_dao.go:184	0x99a4d7		833d7236bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  user_dao.go:184	0x99a4de		6690			NOPW						
  user_dao.go:184	0x99a4e0		7410			JE 0x99a4f2					
  user_dao.go:184	0x99a4e2		e859dfadff		CALL runtime.gcWriteBarrier2(SB)		
  user_dao.go:184	0x99a4e7		498903			MOVQ AX, 0(R11)					
  user_dao.go:184	0x99a4ea		488b5708		MOVQ 0x8(DI), DX				
  user_dao.go:184	0x99a4ee		49895308		MOVQ DX, 0x8(R11)				
  user_dao.go:184	0x99a4f2		48894708		MOVQ AX, 0x8(DI)				
  user_dao.go:184	0x99a4f6		488b05437bb702		MOVQ runtime.bss(SB), AX			
  user_dao.go:184	0x99a4fd		488d0dccd84c02		LEAQ CAS-Backend/biz/dao..stmp_33(SB), CX	
  user_dao.go:184	0x99a504		be01000000		MOVL $__minor_os_version__(SB), SI		
  user_dao.go:184	0x99a509		4989f0			MOVQ SI, R8					
  user_dao.go:184	0x99a50c		e88f3cf8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  user_dao.go:184	0x99a511		488d1de8896d00		LEAQ runtime.types+581376(SB), BX		
  user_dao.go:184	0x99a518		488b8c24a8000000	MOVQ 0xa8(SP), CX				
  user_dao.go:184	0x99a520		31ff			XORL DI, DI					
  user_dao.go:184	0x99a522		31f6			XORL SI, SI					
  user_dao.go:184	0x99a524		4989f0			MOVQ SI, R8					
  user_dao.go:184	0x99a527		e89461f8ff		CALL gorm.io/gorm.(*DB).First(SB)		
  user_dao.go:185	0x99a52c		4883780800		CMPQ 0x8(AX), $0x0				
  user_dao.go:185	0x99a531		0f84d9000000		JE 0x99a610					
  user_dao.go:184	0x99a537		4889442478		MOVQ AX, 0x78(SP)				
  user_dao.go:186	0x99a53c		440f11bc2488000000	MOVUPS X15, 0x88(SP)				
  user_dao.go:186	0x99a545		440f11bc2498000000	MOVUPS X15, 0x98(SP)				
  user_dao.go:186	0x99a54e		488b8424c0000000	MOVQ 0xc0(SP), AX				
  user_dao.go:186	0x99a556		488b9c24c8000000	MOVQ 0xc8(SP), BX				
  user_dao.go:186	0x99a55e		6690			NOPW						
  user_dao.go:186	0x99a560		e8bbfbacff		CALL runtime.convTstring(SB)			
  user_dao.go:186	0x99a565		488d0db4836a00		LEAQ runtime.types+383264(SB), CX		
  user_dao.go:186	0x99a56c		48898c2488000000	MOVQ CX, 0x88(SP)				
  user_dao.go:186	0x99a574		4889842490000000	MOVQ AX, 0x90(SP)				
  user_dao.go:186	0x99a57c		488b4c2478		MOVQ 0x78(SP), CX				
  user_dao.go:186	0x99a581		488b5108		MOVQ 0x8(CX), DX				
  user_dao.go:186	0x99a585		4885d2			TESTQ DX, DX					
  user_dao.go:186	0x99a588		7404			JE 0x99a58e					
  user_dao.go:186	0x99a58a		488b5208		MOVQ 0x8(DX), DX				
  user_dao.go:186	0x99a58e		4c8b5110		MOVQ 0x10(CX), R10				
  user_dao.go:186	0x99a592		4889942498000000	MOVQ DX, 0x98(SP)				
  user_dao.go:186	0x99a59a		4c899424a0000000	MOVQ R10, 0xa0(SP)				
  print.go:233		0x99a5a2		488b1dd77ab702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99a5a9		488d0530154d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99a5b0		488d0d0b757f00		LEAQ go:string.*+169402(SB), CX			
  print.go:233		0x99a5b7		bf24000000		MOVL $__major_os_version__+30(SB), DI		
  print.go:233		0x99a5bc		488db42488000000	LEAQ 0x88(SP), SI				
  print.go:233		0x99a5c4		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x99a5ca		4d89c1			MOVQ R8, R9					
  print.go:233		0x99a5cd		e84e4cb8ff		CALL fmt.Fprintf(SB)				
  user_dao.go:187	0x99a5d2		440f117c2438		MOVUPS X15, 0x38(SP)				
  user_dao.go:187	0x99a5d8		440f117c2448		MOVUPS X15, 0x48(SP)				
  user_dao.go:187	0x99a5de		440f117c2458		MOVUPS X15, 0x58(SP)				
  user_dao.go:187	0x99a5e4		440f117c2468		MOVUPS X15, 0x68(SP)				
  user_dao.go:187	0x99a5ea		488b5c2440		MOVQ 0x40(SP), BX				
  user_dao.go:187	0x99a5ef		488b7c2450		MOVQ 0x50(SP), DI				
  user_dao.go:187	0x99a5f4		4c8b442460		MOVQ 0x60(SP), R8				
  user_dao.go:187	0x99a5f9		31c0			XORL AX, AX					
  user_dao.go:187	0x99a5fb		4889c1			MOVQ AX, CX					
  user_dao.go:187	0x99a5fe		4889c6			MOVQ AX, SI					
  user_dao.go:187	0x99a601		4989c1			MOVQ AX, R9					
  user_dao.go:187	0x99a604		4989c2			MOVQ AX, R10					
  user_dao.go:187	0x99a607		4881c4b0000000		ADDQ $.file+99(SB), SP				
  user_dao.go:187	0x99a60e		5d			POPQ BP						
  user_dao.go:187	0x99a60f		c3			RET						
  user_dao.go:190	0x99a610		488b9424a8000000	MOVQ 0xa8(SP), DX				
  user_dao.go:190	0x99a618		0f1002			MOVUPS 0(DX), X0				
  user_dao.go:190	0x99a61b		0f11442438		MOVUPS X0, 0x38(SP)				
  user_dao.go:190	0x99a620		0f104210		MOVUPS 0x10(DX), X0				
  user_dao.go:190	0x99a624		0f11442448		MOVUPS X0, 0x48(SP)				
  user_dao.go:190	0x99a629		0f104220		MOVUPS 0x20(DX), X0				
  user_dao.go:190	0x99a62d		0f11442458		MOVUPS X0, 0x58(SP)				
  user_dao.go:190	0x99a632		0f104230		MOVUPS 0x30(DX), X0				
  user_dao.go:190	0x99a636		0f11442468		MOVUPS X0, 0x68(SP)				
  user_dao.go:190	0x99a63b		488b442438		MOVQ 0x38(SP), AX				
  user_dao.go:190	0x99a640		488b5c2440		MOVQ 0x40(SP), BX				
  user_dao.go:190	0x99a645		488b4c2448		MOVQ 0x48(SP), CX				
  user_dao.go:190	0x99a64a		488b7c2450		MOVQ 0x50(SP), DI				
  user_dao.go:190	0x99a64f		488b742458		MOVQ 0x58(SP), SI				
  user_dao.go:190	0x99a654		4c8b442460		MOVQ 0x60(SP), R8				
  user_dao.go:190	0x99a659		4c8b4c2468		MOVQ 0x68(SP), R9				
  user_dao.go:190	0x99a65e		4c8b542470		MOVQ 0x70(SP), R10				
  user_dao.go:190	0x99a663		4881c4b0000000		ADDQ $.file+99(SB), SP				
  user_dao.go:190	0x99a66a		5d			POPQ BP						
  user_dao.go:190	0x99a66b		c3			RET						
  user_dao.go:180	0x99a66c		4889442408		MOVQ AX, 0x8(SP)				
  user_dao.go:180	0x99a671		48895c2410		MOVQ BX, 0x10(SP)				
  user_dao.go:180	0x99a676		e865beadff		CALL runtime.morestack_noctxt.abi0(SB)		
  user_dao.go:180	0x99a67b		488b442408		MOVQ 0x8(SP), AX				
  user_dao.go:180	0x99a680		488b5c2410		MOVQ 0x10(SP), BX				
  user_dao.go:180	0x99a685		e9b6fdffff		JMP CAS-Backend/biz/dao.Select1_user(SB)	
  :-1			0x99a68a		cc			INT $__subsystem__(SB)				
  :-1			0x99a68b		cc			INT $__subsystem__(SB)				
  :-1			0x99a68c		cc			INT $__subsystem__(SB)				
  :-1			0x99a68d		cc			INT $__subsystem__(SB)				
  :-1			0x99a68e		cc			INT $__subsystem__(SB)				
  :-1			0x99a68f		cc			INT $__subsystem__(SB)				
  :-1			0x99a690		cc			INT $__subsystem__(SB)				
  :-1			0x99a691		cc			INT $__subsystem__(SB)				
  :-1			0x99a692		cc			INT $__subsystem__(SB)				
  :-1			0x99a693		cc			INT $__subsystem__(SB)				
  :-1			0x99a694		cc			INT $__subsystem__(SB)				
  :-1			0x99a695		cc			INT $__subsystem__(SB)				
  :-1			0x99a696		cc			INT $__subsystem__(SB)				
  :-1			0x99a697		cc			INT $__subsystem__(SB)				
  :-1			0x99a698		cc			INT $__subsystem__(SB)				
  :-1			0x99a699		cc			INT $__subsystem__(SB)				
  :-1			0x99a69a		cc			INT $__subsystem__(SB)				
  :-1			0x99a69b		cc			INT $__subsystem__(SB)				
  :-1			0x99a69c		cc			INT $__subsystem__(SB)				
  :-1			0x99a69d		cc			INT $__subsystem__(SB)				
  :-1			0x99a69e		cc			INT $__subsystem__(SB)				
  :-1			0x99a69f		cc			INT $__subsystem__(SB)				

