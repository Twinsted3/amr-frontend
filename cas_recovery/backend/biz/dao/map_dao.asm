TEXT CAS-Backend/biz/dao.Map.TableName(SB) D:/CodeEnv_code/cas-backend/biz/dao/map_dao.go
  map_dao.go:230	0x995100		488d05b3d97d00		LEAQ go:string.*+42418(SB), AX		
  map_dao.go:230	0x995107		bb07000000		MOVL $__major_os_version__+1(SB), BX	
  map_dao.go:230	0x99510c		c3			RET					
  :-1			0x99510d		cc			INT $__subsystem__(SB)			
  :-1			0x99510e		cc			INT $__subsystem__(SB)			
  :-1			0x99510f		cc			INT $__subsystem__(SB)			
  :-1			0x995110		cc			INT $__subsystem__(SB)			
  :-1			0x995111		cc			INT $__subsystem__(SB)			
  :-1			0x995112		cc			INT $__subsystem__(SB)			
  :-1			0x995113		cc			INT $__subsystem__(SB)			
  :-1			0x995114		cc			INT $__subsystem__(SB)			
  :-1			0x995115		cc			INT $__subsystem__(SB)			
  :-1			0x995116		cc			INT $__subsystem__(SB)			
  :-1			0x995117		cc			INT $__subsystem__(SB)			
  :-1			0x995118		cc			INT $__subsystem__(SB)			
  :-1			0x995119		cc			INT $__subsystem__(SB)			
  :-1			0x99511a		cc			INT $__subsystem__(SB)			
  :-1			0x99511b		cc			INT $__subsystem__(SB)			
  :-1			0x99511c		cc			INT $__subsystem__(SB)			
  :-1			0x99511d		cc			INT $__subsystem__(SB)			
  :-1			0x99511e		cc			INT $__subsystem__(SB)			
  :-1			0x99511f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.SaveMap(SB) D:/CodeEnv_code/cas-backend/biz/dao/map_dao.go
  map_dao.go:247	0x995120		4c8da42438ffffff		LEAQ 0xffffff38(SP), R12			
  map_dao.go:247	0x995128		4d3b6610			CMPQ R12, 0x10(R14)				
  map_dao.go:247	0x99512c		0f86e8030000			JBE 0x99551a					
  map_dao.go:247	0x995132		55				PUSHQ BP					
  map_dao.go:247	0x995133		4889e5				MOVQ SP, BP					
  map_dao.go:247	0x995136		4881ec40010000			SUBQ $.file+243(SB), SP				
  map_dao.go:250	0x99513d		4889b42470010000		MOVQ SI, 0x170(SP)				
  map_dao.go:250	0x995145		4889bc2468010000		MOVQ DI, 0x168(SP)				
  map_dao.go:250	0x99514d		48898c2460010000		MOVQ CX, 0x160(SP)				
  map_dao.go:250	0x995155		48899c2458010000		MOVQ BX, 0x158(SP)				
  map_dao.go:250	0x99515d		4889842450010000		MOVQ AX, 0x150(SP)				
  map_dao.go:249	0x995165		488b15840c6200			MOVQ CAS-Backend/biz/dao.MapPath(SB), DX	
  map_dao.go:249	0x99516c		4889942480000000		MOVQ DX, 0x80(SP)				
  map_dao.go:249	0x995174		4c8b057d0c6200			MOVQ CAS-Backend/biz/dao.MapPath+8(SB), R8	
  map_dao.go:249	0x99517b		4c89442468			MOVQ R8, 0x68(SP)				
  map_dao.go:250	0x995180		4889d0				MOVQ DX, AX					
  map_dao.go:250	0x995183		4c89c3				MOVQ R8, BX					
  map_dao.go:250	0x995186		b9ff010000			MOVL $.file+434(SB), CX				
  map_dao.go:250	0x99518b		e830cbb3ff			CALL os.MkdirAll(SB)				
  map_dao.go:250	0x995190		4885c0				TESTQ AX, AX					
  map_dao.go:250	0x995193		745c				JE 0x9951f1					
  map_dao.go:251	0x995195		440f11bc2428010000		MOVUPS X15, 0x128(SP)				
  map_dao.go:251	0x99519e		6690				NOPW						
  map_dao.go:251	0x9951a0		7404				JE 0x9951a6					
  map_dao.go:251	0x9951a2		488b4008			MOVQ 0x8(AX), AX				
  map_dao.go:251	0x9951a6		4889842428010000		MOVQ AX, 0x128(SP)				
  map_dao.go:251	0x9951ae		48899c2430010000		MOVQ BX, 0x130(SP)				
  print.go:233		0x9951b6		488b1dc3ceb702			MOVQ os.Stdout(SB), BX				
  print.go:233		0x9951bd		488d051c694d02			LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x9951c4		488d0d6bd17e00			LEAQ go:string.*+106030(SB), CX			
  print.go:233		0x9951cb		bf16000000			MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0x9951d0		488db42428010000		LEAQ 0x128(SP), SI				
  print.go:233		0x9951d8		41b801000000			MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x9951de		4d89c1				MOVQ R8, R9					
  print.go:233		0x9951e1		e83aa0b8ff			CALL fmt.Fprintf(SB)				
  map_dao.go:252	0x9951e6		31c0				XORL AX, AX					
  map_dao.go:252	0x9951e8		4881c440010000			ADDQ $.file+243(SB), SP				
  map_dao.go:252	0x9951ef		5d				POPQ BP						
  map_dao.go:252	0x9951f0		c3				RET						
  map_dao.go:256	0x9951f1		90				NOPL						
  path.go:456		0x9951f2		488b842450010000		MOVQ 0x150(SP), AX				
  path.go:456		0x9951fa		488b9c2458010000		MOVQ 0x158(SP), BX				
  path.go:456		0x995202		e87967b2ff			CALL internal/filepathlite.Base(SB)		
  path.go:456		0x995207		4889442478			MOVQ AX, 0x78(SP)				
  path.go:456		0x99520c		48895c2460			MOVQ BX, 0x60(SP)				
  map_dao.go:257	0x995211		488b8c2458010000		MOVQ 0x158(SP), CX				
  map_dao.go:257	0x995219		488d3da6537d00			LEAQ go:string.*+8382(SB), DI			
  map_dao.go:257	0x995220		be05000000			MOVL $__subsystem__+2(SB), SI			
  map_dao.go:257	0x995225		488d442438			LEAQ 0x38(SP), AX				
  map_dao.go:257	0x99522a		488b9c2450010000		MOVQ 0x150(SP), BX				
  map_dao.go:257	0x995232		e8c901acff			CALL runtime.concatstring2(SB)			
  map_dao.go:258	0x995237		440f11bc2408010000		MOVUPS X15, 0x108(SP)				
  map_dao.go:258	0x995240		440f11bc2418010000		MOVUPS X15, 0x118(SP)				
  map_dao.go:258	0x995249		488b4c2468			MOVQ 0x68(SP), CX				
  map_dao.go:258	0x99524e		48898c2410010000		MOVQ CX, 0x110(SP)				
  map_dao.go:258	0x995256		488b8c2480000000		MOVQ 0x80(SP), CX				
  map_dao.go:258	0x99525e		48898c2408010000		MOVQ CX, 0x108(SP)				
  map_dao.go:258	0x995266		48899c2420010000		MOVQ BX, 0x120(SP)				
  map_dao.go:258	0x99526e		4889842418010000		MOVQ AX, 0x118(SP)				
  path.go:131		0x995276		488d842408010000		LEAQ 0x108(SP), AX				
  path.go:131		0x99527e		bb02000000			MOVL $__minor_os_version__+1(SB), BX		
  path.go:131		0x995283		4889d9				MOVQ BX, CX					
  path.go:131		0x995286		e8f5f4b4ff			CALL path/filepath.join(SB)			
  path.go:131		0x99528b		4889442470			MOVQ AX, 0x70(SP)				
  path.go:131		0x995290		48895c2458			MOVQ BX, 0x58(SP)				
  ioutil.go:47		0x995295		488b8c2460010000		MOVQ 0x160(SP), CX				
  ioutil.go:47		0x99529d		488bbc2468010000		MOVQ 0x168(SP), DI				
  ioutil.go:47		0x9952a5		488bb42470010000		MOVQ 0x170(SP), SI				
  ioutil.go:47		0x9952ad		41b8a4010000			MOVL $.file+343(SB), R8				
  ioutil.go:47		0x9952b3		e848a0b3ff			CALL os.WriteFile(SB)				
  map_dao.go:261	0x9952b8		4885c0				TESTQ AX, AX					
  map_dao.go:261	0x9952bb		745a				JE 0x995317					
  map_dao.go:262	0x9952bd		440f11bc24f8000000		MOVUPS X15, 0xf8(SP)				
  map_dao.go:262	0x9952c6		7404				JE 0x9952cc					
  map_dao.go:262	0x9952c8		488b4008			MOVQ 0x8(AX), AX				
  map_dao.go:262	0x9952cc		48898424f8000000		MOVQ AX, 0xf8(SP)				
  map_dao.go:262	0x9952d4		48899c2400010000		MOVQ BX, 0x100(SP)				
  print.go:233		0x9952dc		488b1d9dcdb702			MOVQ os.Stdout(SB), BX				
  print.go:233		0x9952e3		488d05f6674d02			LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x9952ea		488d0d5bd07e00			LEAQ go:string.*+106052(SB), CX			
  print.go:233		0x9952f1		bf16000000			MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0x9952f6		488db424f8000000		LEAQ 0xf8(SP), SI				
  print.go:233		0x9952fe		41b801000000			MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x995304		4d89c1				MOVQ R8, R9					
  print.go:233		0x995307		e8149fb8ff			CALL fmt.Fprintf(SB)				
  map_dao.go:263	0x99530c		31c0				XORL AX, AX					
  map_dao.go:263	0x99530e		4881c440010000			ADDQ $.file+243(SB), SP				
  map_dao.go:263	0x995315		5d				POPQ BP						
  map_dao.go:263	0x995316		c3				RET						
  map_dao.go:267	0x995317		488d05a26d7700			LEAQ runtime.types+1208512(SB), AX		
  map_dao.go:267	0x99531e		6690				NOPW						
  map_dao.go:267	0x995320		e87bc4a7ff			CALL runtime.newobject(SB)			
  map_dao.go:267	0x995325		4889842438010000		MOVQ AX, 0x138(SP)				
  map_dao.go:271	0x99532d		e86e8db1ff			CALL time.Now(SB)				
  map_dao.go:267	0x995332		488dbc24a8000000		LEAQ 0xa8(SP), DI				
  map_dao.go:267	0x99533a		488d7fd0			LEAQ -0x30(DI), DI				
  map_dao.go:267	0x99533e		6690				NOPW						
  map_dao.go:267	0x995340		48896c24f0			MOVQ BP, -0x10(SP)				
  map_dao.go:267	0x995345		488d6c24f0			LEAQ -0x10(SP), BP				
  map_dao.go:267	0x99534a		e8a137aeff			CALL 0x478af0					
  map_dao.go:267	0x99534f		488b6d00			MOVQ 0(BP), BP					
  map_dao.go:268	0x995353		488b542478			MOVQ 0x78(SP), DX				
  map_dao.go:268	0x995358		48899424b0000000		MOVQ DX, 0xb0(SP)				
  map_dao.go:268	0x995360		488b542460			MOVQ 0x60(SP), DX				
  map_dao.go:268	0x995365		48899424b8000000		MOVQ DX, 0xb8(SP)				
  map_dao.go:269	0x99536d		488b542470			MOVQ 0x70(SP), DX				
  map_dao.go:269	0x995372		48899424c0000000		MOVQ DX, 0xc0(SP)				
  map_dao.go:269	0x99537a		488b742458			MOVQ 0x58(SP), SI				
  map_dao.go:269	0x99537f		4889b424c8000000		MOVQ SI, 0xc8(SP)				
  map_dao.go:270	0x995387		488d3d82317d00			LEAQ go:string.*+8(SB), DI			
  map_dao.go:270	0x99538e		4889bc24d0000000		MOVQ DI, 0xd0(SP)				
  map_dao.go:270	0x995396		48c78424d800000002000000	MOVQ $__minor_os_version__+1(SB), 0xd8(SP)	
  map_dao.go:271	0x9953a2		48898424e0000000		MOVQ AX, 0xe0(SP)				
  map_dao.go:271	0x9953aa		48899c24e8000000		MOVQ BX, 0xe8(SP)				
  map_dao.go:271	0x9953b2		48898c24f0000000		MOVQ CX, 0xf0(SP)				
  map_dao.go:267	0x9953ba		833d8f87bc0200			CMPL runtime.writeBarrier(SB), $0x0		
  map_dao.go:267	0x9953c1		741c				JE 0x9953df					
  map_dao.go:267	0x9953c3		488d05f66c7700			LEAQ runtime.types+1208512(SB), AX		
  map_dao.go:267	0x9953ca		488b9c2438010000		MOVQ 0x138(SP), BX				
  map_dao.go:267	0x9953d2		488d8c24a8000000		LEAQ 0xa8(SP), CX				
  map_dao.go:267	0x9953da		e841fba7ff			CALL runtime.wbMove(SB)				
  map_dao.go:267	0x9953df		488bbc2438010000		MOVQ 0x138(SP), DI				
  map_dao.go:267	0x9953e7		488db424a8000000		LEAQ 0xa8(SP), SI				
  map_dao.go:267	0x9953ef		660f1f840000000000		NOPW 0(AX)(AX*1)				
  map_dao.go:267	0x9953f8		0f1f840000000000		NOPL 0(AX)(AX*1)				
  map_dao.go:267	0x995400		48896c24f0			MOVQ BP, -0x10(SP)				
  map_dao.go:267	0x995405		488d6c24f0			LEAQ -0x10(SP), BP				
  map_dao.go:267	0x99540a		e84b3aaeff			CALL 0x478e5a					
  map_dao.go:267	0x99540f		488b6d00			MOVQ 0(BP), BP					
  map_dao.go:275	0x995413		488b0526ccb702			MOVQ runtime.bss(SB), AX			
  map_dao.go:275	0x99541a		488d1d1fda6d00			LEAQ runtime.types+581184(SB), BX		
  map_dao.go:275	0x995421		488b8c2438010000		MOVQ 0x138(SP), CX				
  map_dao.go:275	0x995429		e812a6f8ff			CALL gorm.io/gorm.(*DB).Create(SB)		
  map_dao.go:276	0x99542e		4883780800			CMPQ 0x8(AX), $0x0				
  map_dao.go:276	0x995433		7474				JE 0x9954a9					
  map_dao.go:277	0x995435		440f11bc2498000000		MOVUPS X15, 0x98(SP)				
  map_dao.go:277	0x99543e		488b5008			MOVQ 0x8(AX), DX				
  map_dao.go:277	0x995442		4885d2				TESTQ DX, DX					
  map_dao.go:277	0x995445		7404				JE 0x99544b					
  map_dao.go:277	0x995447		488b5208			MOVQ 0x8(DX), DX				
  map_dao.go:277	0x99544b		4c8b5010			MOVQ 0x10(AX), R10				
  map_dao.go:277	0x99544f		4889942498000000		MOVQ DX, 0x98(SP)				
  map_dao.go:277	0x995457		4c899424a0000000		MOVQ R10, 0xa0(SP)				
  print.go:233		0x99545f		488b1d1accb702			MOVQ os.Stdout(SB), BX				
  print.go:233		0x995466		488d0573664d02			LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99546d		488d0d2f637e00			LEAQ go:string.*+78491(SB), CX			
  print.go:233		0x995474		bf10000000			MOVL $__major_os_version__+10(SB), DI		
  print.go:233		0x995479		488db42498000000		LEAQ 0x98(SP), SI				
  print.go:233		0x995481		41b801000000			MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x995487		4d89c1				MOVQ R8, R9					
  print.go:233		0x99548a		e8919db8ff			CALL fmt.Fprintf(SB)				
  map_dao.go:279	0x99548f		488b442470			MOVQ 0x70(SP), AX				
  map_dao.go:279	0x995494		488b5c2458			MOVQ 0x58(SP), BX				
  map_dao.go:279	0x995499		e882b2b3ff			CALL os.Remove(SB)				
  map_dao.go:280	0x99549e		31c0				XORL AX, AX					
  map_dao.go:280	0x9954a0		4881c440010000			ADDQ $.file+243(SB), SP				
  map_dao.go:280	0x9954a7		5d				POPQ BP						
  map_dao.go:280	0x9954a8		c3				RET						
  map_dao.go:283	0x9954a9		440f11bc2488000000		MOVUPS X15, 0x88(SP)				
  map_dao.go:283	0x9954b2		488b8c2438010000		MOVQ 0x138(SP), CX				
  map_dao.go:283	0x9954ba		488b01				MOVQ 0(CX), AX					
  map_dao.go:283	0x9954bd		0f1f00				NOPL 0(AX)					
  map_dao.go:283	0x9954c0		e8db4badff			CALL runtime.convT64(SB)			
  map_dao.go:283	0x9954c5		488d0d94d66a00			LEAQ runtime.types+383840(SB), CX		
  map_dao.go:283	0x9954cc		48898c2488000000		MOVQ CX, 0x88(SP)				
  map_dao.go:283	0x9954d4		4889842490000000		MOVQ AX, 0x90(SP)				
  print.go:233		0x9954dc		488b1d9dcbb702			MOVQ os.Stdout(SB), BX				
  print.go:233		0x9954e3		488d05f6654d02			LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x9954ea		488d0df1ab7e00			LEAQ go:string.*+97242(SB), CX			
  print.go:233		0x9954f1		bf14000000			MOVL $__major_os_version__+14(SB), DI		
  print.go:233		0x9954f6		488db42488000000		LEAQ 0x88(SP), SI				
  print.go:233		0x9954fe		41b801000000			MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x995504		4d89c1				MOVQ R8, R9					
  print.go:233		0x995507		e8149db8ff			CALL fmt.Fprintf(SB)				
  map_dao.go:284	0x99550c		b801000000			MOVL $__minor_os_version__(SB), AX		
  map_dao.go:284	0x995511		4881c440010000			ADDQ $.file+243(SB), SP				
  map_dao.go:284	0x995518		5d				POPQ BP						
  map_dao.go:284	0x995519		c3				RET						
  map_dao.go:247	0x99551a		4889442408			MOVQ AX, 0x8(SP)				
  map_dao.go:247	0x99551f		48895c2410			MOVQ BX, 0x10(SP)				
  map_dao.go:247	0x995524		48894c2418			MOVQ CX, 0x18(SP)				
  map_dao.go:247	0x995529		48897c2420			MOVQ DI, 0x20(SP)				
  map_dao.go:247	0x99552e		4889742428			MOVQ SI, 0x28(SP)				
  map_dao.go:247	0x995533		e8a80faeff			CALL runtime.morestack_noctxt.abi0(SB)		
  map_dao.go:247	0x995538		488b442408			MOVQ 0x8(SP), AX				
  map_dao.go:247	0x99553d		488b5c2410			MOVQ 0x10(SP), BX				
  map_dao.go:247	0x995542		488b4c2418			MOVQ 0x18(SP), CX				
  map_dao.go:247	0x995547		488b7c2420			MOVQ 0x20(SP), DI				
  map_dao.go:247	0x99554c		488b742428			MOVQ 0x28(SP), SI				
  map_dao.go:247	0x995551		e9cafbffff			JMP CAS-Backend/biz/dao.SaveMap(SB)		
  :-1			0x995556		cc				INT $__subsystem__(SB)				
  :-1			0x995557		cc				INT $__subsystem__(SB)				
  :-1			0x995558		cc				INT $__subsystem__(SB)				
  :-1			0x995559		cc				INT $__subsystem__(SB)				
  :-1			0x99555a		cc				INT $__subsystem__(SB)				
  :-1			0x99555b		cc				INT $__subsystem__(SB)				
  :-1			0x99555c		cc				INT $__subsystem__(SB)				
  :-1			0x99555d		cc				INT $__subsystem__(SB)				
  :-1			0x99555e		cc				INT $__subsystem__(SB)				
  :-1			0x99555f		cc				INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.GetMap(SB) D:/CodeEnv_code/cas-backend/biz/dao/map_dao.go
  map_dao.go:287	0x995560		493b6610		CMPQ SP, 0x10(R14)			
  map_dao.go:287	0x995564		0f869c010000		JBE 0x995706				
  map_dao.go:287	0x99556a		55			PUSHQ BP				
  map_dao.go:287	0x99556b		4889e5			MOVQ SP, BP				
  map_dao.go:287	0x99556e		4883ec70		SUBQ $.file+35(SB), SP			
  map_dao.go:291	0x995572		48898424d0000000	MOVQ AX, 0xd0(SP)			
  map_dao.go:287	0x99557a		488dbc2480000000	LEAQ 0x80(SP), DI			
  map_dao.go:287	0x995582		488d7fd0		LEAQ -0x30(DI), DI			
  map_dao.go:287	0x995586		48896c24f0		MOVQ BP, -0x10(SP)			
  map_dao.go:287	0x99558b		488d6c24f0		LEAQ -0x10(SP), BP			
  map_dao.go:287	0x995590		e85b35aeff		CALL 0x478af0				
  map_dao.go:287	0x995595		488b6d00		MOVQ 0(BP), BP				
  map_dao.go:288	0x995599		488d05206b7700		LEAQ runtime.types+1208512(SB), AX	
  map_dao.go:288	0x9955a0		e8fbc1a7ff		CALL runtime.newobject(SB)		
  map_dao.go:288	0x9955a5		4889442468		MOVQ AX, 0x68(SP)			
  map_dao.go:290	0x9955aa		488d05ef886b00		LEAQ runtime.types+429728(SB), AX	
  map_dao.go:290	0x9955b1		e8eac1a7ff		CALL runtime.newobject(SB)		
  map_dao.go:290	0x9955b6		4889442440		MOVQ AX, 0x40(SP)			
  map_dao.go:290	0x9955bb		488b8424d0000000	MOVQ 0xd0(SP), AX			
  map_dao.go:290	0x9955c3		e8d84aadff		CALL runtime.convT64(SB)		
  map_dao.go:290	0x9955c8		488d0d91d56a00		LEAQ runtime.types+383840(SB), CX	
  map_dao.go:290	0x9955cf		488b7c2440		MOVQ 0x40(SP), DI			
  map_dao.go:290	0x9955d4		48890f			MOVQ CX, 0(DI)				
  map_dao.go:290	0x9955d7		833d7285bc0200		CMPL runtime.writeBarrier(SB), $0x0	
  map_dao.go:290	0x9955de		6690			NOPW					
  map_dao.go:290	0x9955e0		7410			JE 0x9955f2				
  map_dao.go:290	0x9955e2		e8592eaeff		CALL runtime.gcWriteBarrier2(SB)	
  map_dao.go:290	0x9955e7		498903			MOVQ AX, 0(R11)				
  map_dao.go:290	0x9955ea		488b5708		MOVQ 0x8(DI), DX			
  map_dao.go:290	0x9955ee		49895308		MOVQ DX, 0x8(R11)			
  map_dao.go:290	0x9955f2		48894708		MOVQ AX, 0x8(DI)			
  map_dao.go:290	0x9955f6		488b0543cab702		MOVQ runtime.bss(SB), AX		
  map_dao.go:290	0x9955fd		488d1d3cd86d00		LEAQ runtime.types+581184(SB), BX	
  map_dao.go:290	0x995604		488b4c2468		MOVQ 0x68(SP), CX			
  map_dao.go:290	0x995609		be01000000		MOVL $__minor_os_version__(SB), SI	
  map_dao.go:290	0x99560e		4989f0			MOVQ SI, R8				
  map_dao.go:290	0x995611		e8aab0f8ff		CALL gorm.io/gorm.(*DB).First(SB)	
  map_dao.go:291	0x995616		4883780800		CMPQ 0x8(AX), $0x0			
  map_dao.go:291	0x99561b		0f1f440000		NOPL 0(AX)(AX*1)			
  map_dao.go:291	0x995620		0f84b5000000		JE 0x9956db				
  map_dao.go:290	0x995626		4889442438		MOVQ AX, 0x38(SP)			
  map_dao.go:292	0x99562b		440f117c2448		MOVUPS X15, 0x48(SP)			
  map_dao.go:292	0x995631		440f117c2458		MOVUPS X15, 0x58(SP)			
  map_dao.go:292	0x995637		488b8424d0000000	MOVQ 0xd0(SP), AX			
  map_dao.go:292	0x99563f		90			NOPL					
  map_dao.go:292	0x995640		e85b4aadff		CALL runtime.convT64(SB)		
  map_dao.go:292	0x995645		488d0d14d56a00		LEAQ runtime.types+383840(SB), CX	
  map_dao.go:292	0x99564c		48894c2448		MOVQ CX, 0x48(SP)			
  map_dao.go:292	0x995651		4889442450		MOVQ AX, 0x50(SP)			
  map_dao.go:292	0x995656		488b4c2438		MOVQ 0x38(SP), CX			
  map_dao.go:292	0x99565b		488b5108		MOVQ 0x8(CX), DX			
  map_dao.go:292	0x99565f		90			NOPL					
  map_dao.go:292	0x995660		4885d2			TESTQ DX, DX				
  map_dao.go:292	0x995663		7404			JE 0x995669				
  map_dao.go:292	0x995665		488b5208		MOVQ 0x8(DX), DX			
  map_dao.go:292	0x995669		4c8b5110		MOVQ 0x10(CX), R10			
  map_dao.go:292	0x99566d		4889542458		MOVQ DX, 0x58(SP)			
  map_dao.go:292	0x995672		4c89542460		MOVQ R10, 0x60(SP)			
  print.go:233		0x995677		488b1d02cab702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x99567e		488d055b644d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x995685		488d0d9c817f00		LEAQ go:string.*+152352(SB), CX		
  print.go:233		0x99568c		bf20000000		MOVL $__major_os_version__+26(SB), DI	
  print.go:233		0x995691		488d742448		LEAQ 0x48(SP), SI			
  print.go:233		0x995696		41b802000000		MOVL $__minor_os_version__+1(SB), R8	
  print.go:233		0x99569c		4d89c1			MOVQ R8, R9				
  print.go:233		0x99569f		90			NOPL					
  print.go:233		0x9956a0		e87b9bb8ff		CALL fmt.Fprintf(SB)			
  map_dao.go:293	0x9956a5		488dbc2480000000	LEAQ 0x80(SP), DI			
  map_dao.go:293	0x9956ad		488d7fd0		LEAQ -0x30(DI), DI			
  map_dao.go:293	0x9956b1		660f1f840000000000	NOPW 0(AX)(AX*1)			
  map_dao.go:293	0x9956ba		660f1f440000		NOPW 0(AX)(AX*1)			
  map_dao.go:293	0x9956c0		48896c24f0		MOVQ BP, -0x10(SP)			
  map_dao.go:293	0x9956c5		488d6c24f0		LEAQ -0x10(SP), BP			
  map_dao.go:293	0x9956ca		e82134aeff		CALL 0x478af0				
  map_dao.go:293	0x9956cf		488b6d00		MOVQ 0(BP), BP				
  map_dao.go:293	0x9956d3		31c0			XORL AX, AX				
  map_dao.go:293	0x9956d5		4883c470		ADDQ $.file+35(SB), SP			
  map_dao.go:293	0x9956d9		5d			POPQ BP					
  map_dao.go:293	0x9956da		c3			RET					
  map_dao.go:296	0x9956db		488dbc2480000000	LEAQ 0x80(SP), DI			
  map_dao.go:296	0x9956e3		488b742468		MOVQ 0x68(SP), SI			
  map_dao.go:296	0x9956e8		48896c24f0		MOVQ BP, -0x10(SP)			
  map_dao.go:296	0x9956ed		488d6c24f0		LEAQ -0x10(SP), BP			
  map_dao.go:296	0x9956f2		e86337aeff		CALL 0x478e5a				
  map_dao.go:296	0x9956f7		488b6d00		MOVQ 0(BP), BP				
  map_dao.go:296	0x9956fb		b801000000		MOVL $__minor_os_version__(SB), AX	
  map_dao.go:296	0x995700		4883c470		ADDQ $.file+35(SB), SP			
  map_dao.go:296	0x995704		5d			POPQ BP					
  map_dao.go:296	0x995705		c3			RET					
  map_dao.go:287	0x995706		4889442458		MOVQ AX, 0x58(SP)			
  map_dao.go:287	0x99570b		e8d00daeff		CALL runtime.morestack_noctxt.abi0(SB)	
  map_dao.go:287	0x995710		488b442458		MOVQ 0x58(SP), AX			
  map_dao.go:287	0x995715		e946feffff		JMP CAS-Backend/biz/dao.GetMap(SB)	
  :-1			0x99571a		cc			INT $__subsystem__(SB)			
  :-1			0x99571b		cc			INT $__subsystem__(SB)			
  :-1			0x99571c		cc			INT $__subsystem__(SB)			
  :-1			0x99571d		cc			INT $__subsystem__(SB)			
  :-1			0x99571e		cc			INT $__subsystem__(SB)			
  :-1			0x99571f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.GetMapByName(SB) D:/CodeEnv_code/cas-backend/biz/dao/map_dao.go
  map_dao.go:300	0x995720		493b6610		CMPQ SP, 0x10(R14)				
  map_dao.go:300	0x995724		0f861d010000		JBE 0x995847					
  map_dao.go:300	0x99572a		55			PUSHQ BP					
  map_dao.go:300	0x99572b		4889e5			MOVQ SP, BP					
  map_dao.go:300	0x99572e		4883ec40		SUBQ $__major_os_version__+58(SB), SP		
  map_dao.go:302	0x995732		48899c24a8000000	MOVQ BX, 0xa8(SP)				
  map_dao.go:302	0x99573a		48898424a0000000	MOVQ AX, 0xa0(SP)				
  map_dao.go:300	0x995742		488d7c2450		LEAQ 0x50(SP), DI				
  map_dao.go:300	0x995747		488d7fd0		LEAQ -0x30(DI), DI				
  map_dao.go:300	0x99574b		48896c24f0		MOVQ BP, -0x10(SP)				
  map_dao.go:300	0x995750		488d6c24f0		LEAQ -0x10(SP), BP				
  map_dao.go:300	0x995755		e89633aeff		CALL 0x478af0					
  map_dao.go:300	0x99575a		488b6d00		MOVQ 0(BP), BP					
  map_dao.go:301	0x99575e		488d055b697700		LEAQ runtime.types+1208512(SB), AX		
  map_dao.go:301	0x995765		e836c0a7ff		CALL runtime.newobject(SB)			
  map_dao.go:301	0x99576a		4889442438		MOVQ AX, 0x38(SP)				
  map_dao.go:302	0x99576f		488d052a876b00		LEAQ runtime.types+429728(SB), AX		
  map_dao.go:302	0x995776		e825c0a7ff		CALL runtime.newobject(SB)			
  map_dao.go:302	0x99577b		4889442430		MOVQ AX, 0x30(SP)				
  map_dao.go:302	0x995780		488b9c24a8000000	MOVQ 0xa8(SP), BX				
  map_dao.go:302	0x995788		488b8424a0000000	MOVQ 0xa0(SP), AX				
  map_dao.go:302	0x995790		e88b49adff		CALL runtime.convTstring(SB)			
  map_dao.go:302	0x995795		488d1d84d16a00		LEAQ runtime.types+383264(SB), BX		
  map_dao.go:302	0x99579c		488b7c2430		MOVQ 0x30(SP), DI				
  map_dao.go:302	0x9957a1		48891f			MOVQ BX, 0(DI)					
  map_dao.go:302	0x9957a4		833da583bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  map_dao.go:302	0x9957ab		7410			JE 0x9957bd					
  map_dao.go:302	0x9957ad		e88e2caeff		CALL runtime.gcWriteBarrier2(SB)		
  map_dao.go:302	0x9957b2		498903			MOVQ AX, 0(R11)					
  map_dao.go:302	0x9957b5		488b5708		MOVQ 0x8(DI), DX				
  map_dao.go:302	0x9957b9		49895308		MOVQ DX, 0x8(R11)				
  map_dao.go:302	0x9957bd		48894708		MOVQ AX, 0x8(DI)				
  map_dao.go:302	0x9957c1		488b0578c8b702		MOVQ runtime.bss(SB), AX			
  map_dao.go:302	0x9957c8		488d0d61254d02		LEAQ CAS-Backend/biz/dao..stmp_0(SB), CX	
  map_dao.go:302	0x9957cf		be01000000		MOVL $__minor_os_version__(SB), SI		
  map_dao.go:302	0x9957d4		4989f0			MOVQ SI, R8					
  map_dao.go:302	0x9957d7		e8c489f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  map_dao.go:302	0x9957dc		488d1d5dd66d00		LEAQ runtime.types+581184(SB), BX		
  map_dao.go:302	0x9957e3		488b4c2438		MOVQ 0x38(SP), CX				
  map_dao.go:302	0x9957e8		31ff			XORL DI, DI					
  map_dao.go:302	0x9957ea		31f6			XORL SI, SI					
  map_dao.go:302	0x9957ec		4989f0			MOVQ SI, R8					
  map_dao.go:302	0x9957ef		e8ccaef8ff		CALL gorm.io/gorm.(*DB).First(SB)		
  map_dao.go:302	0x9957f4		4883780800		CMPQ 0x8(AX), $0x0				
  map_dao.go:302	0x9957f9		7424			JE 0x99581f					
  map_dao.go:303	0x9957fb		488d7c2450		LEAQ 0x50(SP), DI				
  map_dao.go:303	0x995800		488d7fd0		LEAQ -0x30(DI), DI				
  map_dao.go:303	0x995804		48896c24f0		MOVQ BP, -0x10(SP)				
  map_dao.go:303	0x995809		488d6c24f0		LEAQ -0x10(SP), BP				
  map_dao.go:303	0x99580e		e8dd32aeff		CALL 0x478af0					
  map_dao.go:303	0x995813		488b6d00		MOVQ 0(BP), BP					
  map_dao.go:303	0x995817		31c0			XORL AX, AX					
  map_dao.go:303	0x995819		4883c440		ADDQ $__major_os_version__+58(SB), SP		
  map_dao.go:303	0x99581d		5d			POPQ BP						
  map_dao.go:303	0x99581e		c3			RET						
  map_dao.go:305	0x99581f		488d7c2450		LEAQ 0x50(SP), DI				
  map_dao.go:305	0x995824		488b742438		MOVQ 0x38(SP), SI				
  map_dao.go:305	0x995829		48896c24f0		MOVQ BP, -0x10(SP)				
  map_dao.go:305	0x99582e		488d6c24f0		LEAQ -0x10(SP), BP				
  map_dao.go:305	0x995833		e82236aeff		CALL 0x478e5a					
  map_dao.go:305	0x995838		488b6d00		MOVQ 0(BP), BP					
  map_dao.go:305	0x99583c		b801000000		MOVL $__minor_os_version__(SB), AX		
  map_dao.go:305	0x995841		4883c440		ADDQ $__major_os_version__+58(SB), SP		
  map_dao.go:305	0x995845		5d			POPQ BP						
  map_dao.go:305	0x995846		c3			RET						
  map_dao.go:300	0x995847		4889442458		MOVQ AX, 0x58(SP)				
  map_dao.go:300	0x99584c		48895c2460		MOVQ BX, 0x60(SP)				
  map_dao.go:300	0x995851		e88a0caeff		CALL runtime.morestack_noctxt.abi0(SB)		
  map_dao.go:300	0x995856		488b442458		MOVQ 0x58(SP), AX				
  map_dao.go:300	0x99585b		488b5c2460		MOVQ 0x60(SP), BX				
  map_dao.go:300	0x995860		e9bbfeffff		JMP CAS-Backend/biz/dao.GetMapByName(SB)	
  :-1			0x995865		cc			INT $__subsystem__(SB)				
  :-1			0x995866		cc			INT $__subsystem__(SB)				
  :-1			0x995867		cc			INT $__subsystem__(SB)				
  :-1			0x995868		cc			INT $__subsystem__(SB)				
  :-1			0x995869		cc			INT $__subsystem__(SB)				
  :-1			0x99586a		cc			INT $__subsystem__(SB)				
  :-1			0x99586b		cc			INT $__subsystem__(SB)				
  :-1			0x99586c		cc			INT $__subsystem__(SB)				
  :-1			0x99586d		cc			INT $__subsystem__(SB)				
  :-1			0x99586e		cc			INT $__subsystem__(SB)				
  :-1			0x99586f		cc			INT $__subsystem__(SB)				
  :-1			0x995870		cc			INT $__subsystem__(SB)				
  :-1			0x995871		cc			INT $__subsystem__(SB)				
  :-1			0x995872		cc			INT $__subsystem__(SB)				
  :-1			0x995873		cc			INT $__subsystem__(SB)				
  :-1			0x995874		cc			INT $__subsystem__(SB)				
  :-1			0x995875		cc			INT $__subsystem__(SB)				
  :-1			0x995876		cc			INT $__subsystem__(SB)				
  :-1			0x995877		cc			INT $__subsystem__(SB)				
  :-1			0x995878		cc			INT $__subsystem__(SB)				
  :-1			0x995879		cc			INT $__subsystem__(SB)				
  :-1			0x99587a		cc			INT $__subsystem__(SB)				
  :-1			0x99587b		cc			INT $__subsystem__(SB)				
  :-1			0x99587c		cc			INT $__subsystem__(SB)				
  :-1			0x99587d		cc			INT $__subsystem__(SB)				
  :-1			0x99587e		cc			INT $__subsystem__(SB)				
  :-1			0x99587f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.SelectALL_map(SB) D:/CodeEnv_code/cas-backend/biz/dao/map_dao.go
  map_dao.go:308	0x995880		4c8d6424e0		LEAQ -0x20(SP), R12					
  map_dao.go:308	0x995885		4d3b6610		CMPQ R12, 0x10(R14)					
  map_dao.go:308	0x995889		0f867e030000		JBE 0x995c0d						
  map_dao.go:308	0x99588f		55			PUSHQ BP						
  map_dao.go:308	0x995890		4889e5			MOVQ SP, BP						
  map_dao.go:308	0x995893		4881ec98000000		SUBQ $.file+75(SB), SP					
  map_dao.go:321	0x99589a		48898424a8000000	MOVQ AX, 0xa8(SP)					
  map_dao.go:321	0x9958a2		48899c24b0000000	MOVQ BX, 0xb0(SP)					
  map_dao.go:321	0x9958aa		48898c24b8000000	MOVQ CX, 0xb8(SP)					
  map_dao.go:321	0x9958b2		4889bc24c0000000	MOVQ DI, 0xc0(SP)					
  map_dao.go:309	0x9958ba		488d051fd26a00		LEAQ runtime.types+383712(SB), AX			
  map_dao.go:309	0x9958c1		e8dabea7ff		CALL runtime.newobject(SB)				
  map_dao.go:309	0x9958c6		4889842488000000	MOVQ AX, 0x88(SP)					
  map_dao.go:310	0x9958ce		488d05cbee6900		LEAQ runtime.types+325536(SB), AX			
  map_dao.go:310	0x9958d5		e8c6bea7ff		CALL runtime.newobject(SB)				
  map_dao.go:310	0x9958da		4889842490000000	MOVQ AX, 0x90(SP)					
  map_dao.go:310	0x9958e2		48c70000000000		MOVQ $0x0, 0(AX)					
  map_dao.go:312	0x9958e9		488d0d50030000		LEAQ CAS-Backend/biz/dao.SelectALL_map.func1(SB), CX	
  map_dao.go:312	0x9958f0		48894c2470		MOVQ CX, 0x70(SP)					
  map_dao.go:312	0x9958f5		488b8c24c0000000	MOVQ 0xc0(SP), CX					
  map_dao.go:312	0x9958fd		48898c2480000000	MOVQ CX, 0x80(SP)					
  map_dao.go:312	0x995905		488b8c24b8000000	MOVQ 0xb8(SP), CX					
  map_dao.go:312	0x99590d		48894c2478		MOVQ CX, 0x78(SP)					
  map_dao.go:320	0x995912		488d05a7677700		LEAQ runtime.types+1208512(SB), AX			
  map_dao.go:320	0x995919		e882bea7ff		CALL runtime.newobject(SB)				
  map_dao.go:320	0x99591e		4889442438		MOVQ AX, 0x38(SP)					
  map_dao.go:320	0x995923		488b0d16c7b702		MOVQ runtime.bss(SB), CX				
  chainable_api.go:19	0x99592a		4889c8			MOVQ CX, AX						
  chainable_api.go:19	0x99592d		e84e2ef9ff		CALL gorm.io/gorm.(*DB).getInstance(SB)			
  chainable_api.go:20	0x995932		488b4820		MOVQ 0x20(AX), CX					
  chainable_api.go:20	0x995936		488d1503d56d00		LEAQ runtime.types+581184(SB), DX			
  chainable_api.go:20	0x99593d		48895120		MOVQ DX, 0x20(CX)					
  chainable_api.go:20	0x995941		833d0882bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  chainable_api.go:20	0x995948		7507			JNE 0x995951						
  chainable_api.go:20	0x99594a		488b5c2438		MOVQ 0x38(SP), BX					
  chainable_api.go:20	0x99594f		eb15			JMP 0x995966						
  chainable_api.go:20	0x995951		e8ea2aaeff		CALL runtime.gcWriteBarrier2(SB)			
  chainable_api.go:20	0x995956		488b5c2438		MOVQ 0x38(SP), BX					
  chainable_api.go:20	0x99595b		49891b			MOVQ BX, 0(R11)						
  chainable_api.go:20	0x99595e		488b7128		MOVQ 0x28(CX), SI					
  chainable_api.go:20	0x995962		49897308		MOVQ SI, 0x8(R11)					
  chainable_api.go:20	0x995966		48895928		MOVQ BX, 0x28(CX)					
  map_dao.go:320	0x99596a		488b4c2470		MOVQ 0x70(SP), CX					
  map_dao.go:320	0x99596f		488d542470		LEAQ 0x70(SP), DX					
  map_dao.go:320	0x995974		ffd1			CALL CX							
  map_dao.go:321	0x995976		488b9c2488000000	MOVQ 0x88(SP), BX					
  map_dao.go:321	0x99597e		6690			NOPW							
  map_dao.go:321	0x995980		e83bd9f8ff		CALL gorm.io/gorm.(*DB).Count(SB)			
  map_dao.go:321	0x995985		488b4808		MOVQ 0x8(AX), CX					
  map_dao.go:321	0x995989		488b5810		MOVQ 0x10(AX), BX					
  map_dao.go:321	0x99598d		4885c9			TESTQ CX, CX						
  map_dao.go:321	0x995990		745c			JE 0x9959ee						
  map_dao.go:322	0x995992		440f117c2460		MOVUPS X15, 0x60(SP)					
  map_dao.go:322	0x995998		7404			JE 0x99599e						
  map_dao.go:322	0x99599a		488b4908		MOVQ 0x8(CX), CX					
  map_dao.go:322	0x99599e		48894c2460		MOVQ CX, 0x60(SP)					
  map_dao.go:322	0x9959a3		48895c2468		MOVQ BX, 0x68(SP)					
  print.go:233		0x9959a8		488b1dd1c6b702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x9959af		488d052a614d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x9959b6		488d0da5c97e00		LEAQ go:string.*+106074(SB), CX				
  print.go:233		0x9959bd		bf16000000		MOVL $__major_os_version__+16(SB), DI			
  print.go:233		0x9959c2		488d742460		LEAQ 0x60(SP), SI					
  print.go:233		0x9959c7		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0x9959cd		4d89c1			MOVQ R8, R9						
  print.go:233		0x9959d0		e84b98b8ff		CALL fmt.Fprintf(SB)					
  map_dao.go:323	0x9959d5		31c0			XORL AX, AX						
  map_dao.go:323	0x9959d7		31db			XORL BX, BX						
  map_dao.go:323	0x9959d9		488d0dc078bc02		LEAQ unicode..stmp_365(SB), CX				
  map_dao.go:323	0x9959e0		31ff			XORL DI, DI						
  map_dao.go:323	0x9959e2		4889fe			MOVQ DI, SI						
  map_dao.go:323	0x9959e5		4881c498000000		ADDQ $.file+75(SB), SP					
  map_dao.go:323	0x9959ec		5d			POPQ BP							
  map_dao.go:323	0x9959ed		c3			RET							
  map_dao.go:326	0x9959ee		488d05cb667700		LEAQ runtime.types+1208512(SB), AX			
  map_dao.go:326	0x9959f5		e8a6bda7ff		CALL runtime.newobject(SB)				
  map_dao.go:326	0x9959fa		4889442438		MOVQ AX, 0x38(SP)					
  map_dao.go:326	0x9959ff		488b0d3ac6b702		MOVQ runtime.bss(SB), CX				
  chainable_api.go:19	0x995a06		4889c8			MOVQ CX, AX						
  chainable_api.go:19	0x995a09		e8722df9ff		CALL gorm.io/gorm.(*DB).getInstance(SB)			
  chainable_api.go:20	0x995a0e		488b4820		MOVQ 0x20(AX), CX					
  chainable_api.go:20	0x995a12		488d1527d46d00		LEAQ runtime.types+581184(SB), DX			
  chainable_api.go:20	0x995a19		48895120		MOVQ DX, 0x20(CX)					
  chainable_api.go:20	0x995a1d		833d2c81bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  chainable_api.go:20	0x995a24		7507			JNE 0x995a2d						
  chainable_api.go:20	0x995a26		488b5c2438		MOVQ 0x38(SP), BX					
  chainable_api.go:20	0x995a2b		eb15			JMP 0x995a42						
  chainable_api.go:20	0x995a2d		e80e2aaeff		CALL runtime.gcWriteBarrier2(SB)			
  chainable_api.go:20	0x995a32		488b5c2438		MOVQ 0x38(SP), BX					
  chainable_api.go:20	0x995a37		49891b			MOVQ BX, 0(R11)						
  chainable_api.go:20	0x995a3a		488b7128		MOVQ 0x28(CX), SI					
  chainable_api.go:20	0x995a3e		49897308		MOVQ SI, 0x8(R11)					
  chainable_api.go:20	0x995a42		48895928		MOVQ BX, 0x28(CX)					
  map_dao.go:326	0x995a46		488b4c2470		MOVQ 0x70(SP), CX					
  map_dao.go:326	0x995a4b		488d542470		LEAQ 0x70(SP), DX					
  map_dao.go:326	0x995a50		ffd1			CALL CX							
  map_dao.go:326	0x995a52		488d1dc7ce6a00		LEAQ runtime.types+383264(SB), BX			
  map_dao.go:326	0x995a59		488d0de0224d02		LEAQ CAS-Backend/biz/dao..stmp_1(SB), CX		
  map_dao.go:326	0x995a60		e85b94f8ff		CALL gorm.io/gorm.(*DB).Order(SB)			
  map_dao.go:329	0x995a65		488b9c24b0000000	MOVQ 0xb0(SP), BX					
  map_dao.go:329	0x995a6d		4885db			TESTQ BX, BX						
  map_dao.go:329	0x995a70		0f8fb4000000		JG 0x995b2a						
  map_dao.go:330	0x995a76		488d1d63ed6900		LEAQ runtime.types+325600(SB), BX			
  map_dao.go:330	0x995a7d		488b8c2490000000	MOVQ 0x90(SP), CX					
  map_dao.go:330	0x995a85		31ff			XORL DI, DI						
  map_dao.go:330	0x995a87		31f6			XORL SI, SI						
  map_dao.go:330	0x995a89		4989f0			MOVQ SI, R8						
  map_dao.go:330	0x995a8c		e82fb2f8ff		CALL gorm.io/gorm.(*DB).Find(SB)			
  map_dao.go:330	0x995a91		488b5008		MOVQ 0x8(AX), DX					
  map_dao.go:330	0x995a95		4c8b4810		MOVQ 0x10(AX), R9					
  map_dao.go:330	0x995a99		4885d2			TESTQ DX, DX						
  map_dao.go:330	0x995a9c		7460			JE 0x995afe						
  map_dao.go:331	0x995a9e		440f117c2450		MOVUPS X15, 0x50(SP)					
  map_dao.go:331	0x995aa4		7404			JE 0x995aaa						
  map_dao.go:331	0x995aa6		488b5208		MOVQ 0x8(DX), DX					
  map_dao.go:331	0x995aaa		4889542450		MOVQ DX, 0x50(SP)					
  map_dao.go:331	0x995aaf		4c894c2458		MOVQ R9, 0x58(SP)					
  print.go:233		0x995ab4		488b1dc5c5b702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x995abb		488d051e604d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x995ac2		488d0dea5c7e00		LEAQ go:string.*+78507(SB), CX				
  print.go:233		0x995ac9		bf10000000		MOVL $__major_os_version__+10(SB), DI			
  print.go:233		0x995ace		488d742450		LEAQ 0x50(SP), SI					
  print.go:233		0x995ad3		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0x995ad9		4d89c1			MOVQ R8, R9						
  print.go:233		0x995adc		0f1f4000		NOPL 0(AX)						
  print.go:233		0x995ae0		e83b97b8ff		CALL fmt.Fprintf(SB)					
  map_dao.go:332	0x995ae5		31c0			XORL AX, AX						
  map_dao.go:332	0x995ae7		31db			XORL BX, BX						
  map_dao.go:332	0x995ae9		488d0db077bc02		LEAQ unicode..stmp_365(SB), CX				
  map_dao.go:332	0x995af0		31ff			XORL DI, DI						
  map_dao.go:332	0x995af2		4889fe			MOVQ DI, SI						
  map_dao.go:332	0x995af5		4881c498000000		ADDQ $.file+75(SB), SP					
  map_dao.go:332	0x995afc		5d			POPQ BP							
  map_dao.go:332	0x995afd		c3			RET							
  map_dao.go:334	0x995afe		488b942490000000	MOVQ 0x90(SP), DX					
  map_dao.go:334	0x995b06		488b0a			MOVQ 0(DX), CX						
  map_dao.go:334	0x995b09		488b7a08		MOVQ 0x8(DX), DI					
  map_dao.go:334	0x995b0d		488b7210		MOVQ 0x10(DX), SI					
  map_dao.go:334	0x995b11		488b942488000000	MOVQ 0x88(SP), DX					
  map_dao.go:334	0x995b19		488b1a			MOVQ 0(DX), BX						
  map_dao.go:334	0x995b1c		b801000000		MOVL $__minor_os_version__(SB), AX			
  map_dao.go:334	0x995b21		4881c498000000		ADDQ $.file+75(SB), SP					
  map_dao.go:334	0x995b28		5d			POPQ BP							
  map_dao.go:334	0x995b29		c3			RET							
  map_dao.go:337	0x995b2a		488b8c24a8000000	MOVQ 0xa8(SP), CX					
  map_dao.go:337	0x995b32		48ffc9			DECQ CX							
  map_dao.go:337	0x995b35		480fafcb		IMULQ BX, CX						
  map_dao.go:338	0x995b39		4885c9			TESTQ CX, CX						
  map_dao.go:341	0x995b3c		ba00000000		MOVL $0x0, DX						
  map_dao.go:341	0x995b41		480f4cca		CMOVL DX, CX						
  map_dao.go:341	0x995b45		4889cb			MOVQ CX, BX						
  map_dao.go:341	0x995b48		e87397f8ff		CALL gorm.io/gorm.(*DB).Offset(SB)			
  map_dao.go:341	0x995b4d		488b9c24b0000000	MOVQ 0xb0(SP), BX					
  map_dao.go:341	0x995b55		e8a696f8ff		CALL gorm.io/gorm.(*DB).Limit(SB)			
  map_dao.go:341	0x995b5a		488d1d7fec6900		LEAQ runtime.types+325600(SB), BX			
  map_dao.go:341	0x995b61		488b8c2490000000	MOVQ 0x90(SP), CX					
  map_dao.go:341	0x995b69		31ff			XORL DI, DI						
  map_dao.go:341	0x995b6b		31f6			XORL SI, SI						
  map_dao.go:341	0x995b6d		4989f0			MOVQ SI, R8						
  map_dao.go:341	0x995b70		e84bb1f8ff		CALL gorm.io/gorm.(*DB).Find(SB)			
  map_dao.go:341	0x995b75		488b4808		MOVQ 0x8(AX), CX					
  map_dao.go:341	0x995b79		488b5010		MOVQ 0x10(AX), DX					
  map_dao.go:341	0x995b7d		0f1f00			NOPL 0(AX)						
  map_dao.go:341	0x995b80		4885c9			TESTQ CX, CX						
  map_dao.go:338	0x995b83		745c			JE 0x995be1						
  map_dao.go:342	0x995b85		440f117c2440		MOVUPS X15, 0x40(SP)					
  map_dao.go:342	0x995b8b		7404			JE 0x995b91						
  map_dao.go:342	0x995b8d		488b4908		MOVQ 0x8(CX), CX					
  map_dao.go:342	0x995b91		48894c2440		MOVQ CX, 0x40(SP)					
  map_dao.go:342	0x995b96		4889542448		MOVQ DX, 0x48(SP)					
  print.go:233		0x995b9b		488b1ddec4b702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x995ba2		488d05375f4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x995ba9		488d0d035c7e00		LEAQ go:string.*+78507(SB), CX				
  print.go:233		0x995bb0		bf10000000		MOVL $__major_os_version__+10(SB), DI			
  print.go:233		0x995bb5		488d742440		LEAQ 0x40(SP), SI					
  print.go:233		0x995bba		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0x995bc0		4d89c1			MOVQ R8, R9						
  print.go:233		0x995bc3		e85896b8ff		CALL fmt.Fprintf(SB)					
  map_dao.go:343	0x995bc8		31c0			XORL AX, AX						
  map_dao.go:343	0x995bca		31db			XORL BX, BX						
  map_dao.go:343	0x995bcc		488d0dcd76bc02		LEAQ unicode..stmp_365(SB), CX				
  map_dao.go:343	0x995bd3		31ff			XORL DI, DI						
  map_dao.go:343	0x995bd5		4889fe			MOVQ DI, SI						
  map_dao.go:343	0x995bd8		4881c498000000		ADDQ $.file+75(SB), SP					
  map_dao.go:343	0x995bdf		5d			POPQ BP							
  map_dao.go:343	0x995be0		c3			RET							
  map_dao.go:346	0x995be1		488b942490000000	MOVQ 0x90(SP), DX					
  map_dao.go:346	0x995be9		488b0a			MOVQ 0(DX), CX						
  map_dao.go:346	0x995bec		488b7a08		MOVQ 0x8(DX), DI					
  map_dao.go:346	0x995bf0		488b7210		MOVQ 0x10(DX), SI					
  map_dao.go:346	0x995bf4		488b942488000000	MOVQ 0x88(SP), DX					
  map_dao.go:346	0x995bfc		488b1a			MOVQ 0(DX), BX						
  map_dao.go:346	0x995bff		b801000000		MOVL $__minor_os_version__(SB), AX			
  map_dao.go:346	0x995c04		4881c498000000		ADDQ $.file+75(SB), SP					
  map_dao.go:346	0x995c0b		5d			POPQ BP							
  map_dao.go:346	0x995c0c		c3			RET							
  map_dao.go:308	0x995c0d		4889442408		MOVQ AX, 0x8(SP)					
  map_dao.go:308	0x995c12		48895c2410		MOVQ BX, 0x10(SP)					
  map_dao.go:308	0x995c17		48894c2418		MOVQ CX, 0x18(SP)					
  map_dao.go:308	0x995c1c		48897c2420		MOVQ DI, 0x20(SP)					
  map_dao.go:308	0x995c21		e8ba08aeff		CALL runtime.morestack_noctxt.abi0(SB)			
  map_dao.go:308	0x995c26		488b442408		MOVQ 0x8(SP), AX					
  map_dao.go:308	0x995c2b		488b5c2410		MOVQ 0x10(SP), BX					
  map_dao.go:308	0x995c30		488b4c2418		MOVQ 0x18(SP), CX					
  map_dao.go:308	0x995c35		488b7c2420		MOVQ 0x20(SP), DI					
  map_dao.go:308	0x995c3a		e941fcffff		JMP CAS-Backend/biz/dao.SelectALL_map(SB)		
  :-1			0x995c3f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/dao.SelectALL_map.func1(SB) D:/CodeEnv_code/cas-backend/biz/dao/map_dao.go
  map_dao.go:312	0x995c40		493b6610		CMPQ SP, 0x10(R14)				
  map_dao.go:312	0x995c44		0f86f2000000		JBE 0x995d3c					
  map_dao.go:312	0x995c4a		55			PUSHQ BP					
  map_dao.go:312	0x995c4b		4889e5			MOVQ SP, BP					
  map_dao.go:312	0x995c4e		4883ec50		SUBQ $.file+3(SB), SP				
  map_dao.go:312	0x995c52		488b7210		MOVQ 0x10(DX), SI				
  map_dao.go:313	0x995c56		4885f6			TESTQ SI, SI					
  map_dao.go:313	0x995c59		0f84d7000000		JE 0x995d36					
  map_dao.go:313	0x995c5f		4889442460		MOVQ AX, 0x60(SP)				
  map_dao.go:312	0x995c64		488b7a08		MOVQ 0x8(DX), DI				
  map_dao.go:314	0x995c68		31c0			XORL AX, AX					
  map_dao.go:314	0x995c6a		488d1dbfee4c02		LEAQ runtime.gcbits.*+112(SB), BX		
  map_dao.go:314	0x995c71		b901000000		MOVL $__minor_os_version__(SB), CX		
  map_dao.go:314	0x995c76		4989d8			MOVQ BX, R8					
  map_dao.go:314	0x995c79		4989c9			MOVQ CX, R9					
  map_dao.go:314	0x995c7c		0f1f4000		NOPL 0(AX)					
  map_dao.go:314	0x995c80		e81bf8abff		CALL runtime.concatstring3(SB)			
  map_dao.go:314	0x995c85		4889442440		MOVQ AX, 0x40(SP)				
  map_dao.go:314	0x995c8a		48895c2438		MOVQ BX, 0x38(SP)				
  map_dao.go:315	0x995c8f		488d054a876b00		LEAQ runtime.types+431072(SB), AX		
  map_dao.go:315	0x995c96		e805bba7ff		CALL runtime.newobject(SB)			
  map_dao.go:315	0x995c9b		4889442448		MOVQ AX, 0x48(SP)				
  map_dao.go:315	0x995ca0		488b5c2438		MOVQ 0x38(SP), BX				
  map_dao.go:315	0x995ca5		488b442440		MOVQ 0x40(SP), AX				
  map_dao.go:315	0x995caa		e87144adff		CALL runtime.convTstring(SB)			
  map_dao.go:315	0x995caf		488d156acc6a00		LEAQ runtime.types+383264(SB), DX		
  map_dao.go:315	0x995cb6		4c8b542448		MOVQ 0x48(SP), R10				
  map_dao.go:315	0x995cbb		498912			MOVQ DX, 0(R10)					
  map_dao.go:315	0x995cbe		833d8b7ebc0200		CMPL runtime.writeBarrier(SB), $0x0		
  map_dao.go:315	0x995cc5		7410			JE 0x995cd7					
  map_dao.go:315	0x995cc7		e87427aeff		CALL runtime.gcWriteBarrier2(SB)		
  map_dao.go:315	0x995ccc		498903			MOVQ AX, 0(R11)					
  map_dao.go:315	0x995ccf		498b4a08		MOVQ 0x8(R10), CX				
  map_dao.go:315	0x995cd3		49894b08		MOVQ CX, 0x8(R11)				
  map_dao.go:315	0x995cd7		49894208		MOVQ AX, 0x8(R10)				
  map_dao.go:315	0x995cdb		488b442440		MOVQ 0x40(SP), AX				
  map_dao.go:315	0x995ce0		488b5c2438		MOVQ 0x38(SP), BX				
  map_dao.go:315	0x995ce5		e83644adff		CALL runtime.convTstring(SB)			
  map_dao.go:315	0x995cea		488d1d2fcc6a00		LEAQ runtime.types+383264(SB), BX		
  map_dao.go:315	0x995cf1		488b7c2448		MOVQ 0x48(SP), DI				
  map_dao.go:315	0x995cf6		48895f10		MOVQ BX, 0x10(DI)				
  map_dao.go:315	0x995cfa		833d4f7ebc0200		CMPL runtime.writeBarrier(SB), $0x0		
  map_dao.go:315	0x995d01		7410			JE 0x995d13					
  map_dao.go:315	0x995d03		e83827aeff		CALL runtime.gcWriteBarrier2(SB)		
  map_dao.go:315	0x995d08		498903			MOVQ AX, 0(R11)					
  map_dao.go:315	0x995d0b		488b5718		MOVQ 0x18(DI), DX				
  map_dao.go:315	0x995d0f		49895308		MOVQ DX, 0x8(R11)				
  map_dao.go:315	0x995d13		48894718		MOVQ AX, 0x18(DI)				
  map_dao.go:315	0x995d17		488b442460		MOVQ 0x60(SP), AX				
  map_dao.go:315	0x995d1c		488d0d2d204d02		LEAQ CAS-Backend/biz/dao..stmp_2(SB), CX	
  map_dao.go:315	0x995d23		be02000000		MOVL $__minor_os_version__+1(SB), SI		
  map_dao.go:315	0x995d28		4989f0			MOVQ SI, R8					
  map_dao.go:315	0x995d2b		e87084f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  map_dao.go:315	0x995d30		4883c450		ADDQ $.file+3(SB), SP				
  map_dao.go:315	0x995d34		5d			POPQ BP						
  map_dao.go:315	0x995d35		c3			RET						
  map_dao.go:317	0x995d36		4883c450		ADDQ $.file+3(SB), SP				
  map_dao.go:317	0x995d3a		5d			POPQ BP						
  map_dao.go:317	0x995d3b		c3			RET						
  map_dao.go:312	0x995d3c		4889442408		MOVQ AX, 0x8(SP)				
  map_dao.go:312	0x995d41		e81a07aeff		CALL runtime.morestack.abi0(SB)			
  map_dao.go:312	0x995d46		488b442408		MOVQ 0x8(SP), AX				
  map_dao.go:312	0x995d4b		e9f0feffff		JMP CAS-Backend/biz/dao.SelectALL_map.func1(SB)	
  :-1			0x995d50		cc			INT $__subsystem__(SB)				
  :-1			0x995d51		cc			INT $__subsystem__(SB)				
  :-1			0x995d52		cc			INT $__subsystem__(SB)				
  :-1			0x995d53		cc			INT $__subsystem__(SB)				
  :-1			0x995d54		cc			INT $__subsystem__(SB)				
  :-1			0x995d55		cc			INT $__subsystem__(SB)				
  :-1			0x995d56		cc			INT $__subsystem__(SB)				
  :-1			0x995d57		cc			INT $__subsystem__(SB)				
  :-1			0x995d58		cc			INT $__subsystem__(SB)				
  :-1			0x995d59		cc			INT $__subsystem__(SB)				
  :-1			0x995d5a		cc			INT $__subsystem__(SB)				
  :-1			0x995d5b		cc			INT $__subsystem__(SB)				
  :-1			0x995d5c		cc			INT $__subsystem__(SB)				
  :-1			0x995d5d		cc			INT $__subsystem__(SB)				
  :-1			0x995d5e		cc			INT $__subsystem__(SB)				
  :-1			0x995d5f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.Delete_map(SB) D:/CodeEnv_code/cas-backend/biz/dao/map_dao.go
  map_dao.go:349	0x995d60		4c8d6424c8		LEAQ -0x38(SP), R12			
  map_dao.go:349	0x995d65		4d3b6610		CMPQ R12, 0x10(R14)			
  map_dao.go:349	0x995d69		0f866a020000		JBE 0x995fd9				
  map_dao.go:349	0x995d6f		55			PUSHQ BP				
  map_dao.go:349	0x995d70		4889e5			MOVQ SP, BP				
  map_dao.go:349	0x995d73		4881ecb0000000		SUBQ $.file+99(SB), SP			
  map_dao.go:349	0x995d7a		48899c24c8000000	MOVQ BX, 0xc8(SP)			
  map_dao.go:359	0x995d82		48898424c0000000	MOVQ AX, 0xc0(SP)			
  map_dao.go:359	0x995d8a		4885c9			TESTQ CX, CX				
  map_dao.go:359	0x995d8d		0f84a8000000		JE 0x995e3b				
  map_dao.go:359	0x995d93		48898c24d0000000	MOVQ CX, 0xd0(SP)			
  map_dao.go:359	0x995d9b		48899c24c8000000	MOVQ BX, 0xc8(SP)			
  map_dao.go:360	0x995da3		4889d8			MOVQ BX, AX				
  map_dao.go:360	0x995da6		4889cb			MOVQ CX, BX				
  map_dao.go:360	0x995da9		e872a9b3ff		CALL os.Remove(SB)			
  map_dao.go:360	0x995dae		4885c0			TESTQ AX, AX				
  map_dao.go:360	0x995db1		0f8484000000		JE 0x995e3b				
  map_dao.go:361	0x995db7		440f11bc2490000000	MOVUPS X15, 0x90(SP)			
  map_dao.go:361	0x995dc0		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)			
  map_dao.go:361	0x995dc9		7404			JE 0x995dcf				
  map_dao.go:361	0x995dcb		488b4008		MOVQ 0x8(AX), AX			
  map_dao.go:361	0x995dcf		4889842490000000	MOVQ AX, 0x90(SP)			
  map_dao.go:361	0x995dd7		48899c2498000000	MOVQ BX, 0x98(SP)			
  map_dao.go:361	0x995ddf		488b8424c8000000	MOVQ 0xc8(SP), AX			
  map_dao.go:361	0x995de7		488b9c24d0000000	MOVQ 0xd0(SP), BX			
  map_dao.go:361	0x995def		e82c43adff		CALL runtime.convTstring(SB)		
  map_dao.go:361	0x995df4		488d0d25cb6a00		LEAQ runtime.types+383264(SB), CX	
  map_dao.go:361	0x995dfb		48898c24a0000000	MOVQ CX, 0xa0(SP)			
  map_dao.go:361	0x995e03		48898424a8000000	MOVQ AX, 0xa8(SP)			
  print.go:233		0x995e0b		488b1d6ec2b702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x995e12		488d05c75c4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x995e19		488d0d119d7f00		LEAQ go:string.*+161321(SB), CX		
  print.go:233		0x995e20		bf22000000		MOVL $__major_os_version__+28(SB), DI	
  print.go:233		0x995e25		488db42490000000	LEAQ 0x90(SP), SI			
  print.go:233		0x995e2d		41b802000000		MOVL $__minor_os_version__+1(SB), R8	
  print.go:233		0x995e33		4d89c1			MOVQ R8, R9				
  print.go:233		0x995e36		e8e593b8ff		CALL fmt.Fprintf(SB)			
  map_dao.go:366	0x995e3b		488d057e627700		LEAQ runtime.types+1208512(SB), AX	
  map_dao.go:366	0x995e42		e859b9a7ff		CALL runtime.newobject(SB)		
  map_dao.go:366	0x995e47		4889442448		MOVQ AX, 0x48(SP)			
  map_dao.go:366	0x995e4c		488d054d806b00		LEAQ runtime.types+429728(SB), AX	
  map_dao.go:366	0x995e53		e848b9a7ff		CALL runtime.newobject(SB)		
  map_dao.go:366	0x995e58		4889442440		MOVQ AX, 0x40(SP)			
  map_dao.go:366	0x995e5d		488b8424c0000000	MOVQ 0xc0(SP), AX			
  map_dao.go:366	0x995e65		e83642adff		CALL runtime.convT64(SB)		
  map_dao.go:366	0x995e6a		488d0defcc6a00		LEAQ runtime.types+383840(SB), CX	
  map_dao.go:366	0x995e71		488b7c2440		MOVQ 0x40(SP), DI			
  map_dao.go:366	0x995e76		48890f			MOVQ CX, 0(DI)				
  map_dao.go:366	0x995e79		833dd07cbc0200		CMPL runtime.writeBarrier(SB), $0x0	
  map_dao.go:366	0x995e80		7410			JE 0x995e92				
  map_dao.go:366	0x995e82		e8b925aeff		CALL runtime.gcWriteBarrier2(SB)	
  map_dao.go:366	0x995e87		498903			MOVQ AX, 0(R11)				
  map_dao.go:366	0x995e8a		488b5708		MOVQ 0x8(DI), DX			
  map_dao.go:366	0x995e8e		49895308		MOVQ DX, 0x8(R11)			
  map_dao.go:366	0x995e92		48894708		MOVQ AX, 0x8(DI)			
  map_dao.go:366	0x995e96		488b05a3c1b702		MOVQ runtime.bss(SB), AX		
  map_dao.go:366	0x995e9d		488d1d9ccf6d00		LEAQ runtime.types+581184(SB), BX	
  map_dao.go:366	0x995ea4		488b4c2448		MOVQ 0x48(SP), CX			
  map_dao.go:366	0x995ea9		be01000000		MOVL $__minor_os_version__(SB), SI	
  map_dao.go:366	0x995eae		4989f0			MOVQ SI, R8				
  map_dao.go:366	0x995eb1		e86ad2f8ff		CALL gorm.io/gorm.(*DB).Delete(SB)	
  map_dao.go:366	0x995eb6		4889442438		MOVQ AX, 0x38(SP)			
  map_dao.go:367	0x995ebb		4883780800		CMPQ 0x8(AX), $0x0			
  map_dao.go:367	0x995ec0		0f848f000000		JE 0x995f55				
  map_dao.go:368	0x995ec6		440f117c2470		MOVUPS X15, 0x70(SP)			
  map_dao.go:368	0x995ecc		440f11bc2480000000	MOVUPS X15, 0x80(SP)			
  map_dao.go:368	0x995ed5		488b8424c0000000	MOVQ 0xc0(SP), AX			
  map_dao.go:368	0x995edd		0f1f00			NOPL 0(AX)				
  map_dao.go:368	0x995ee0		e8bb41adff		CALL runtime.convT64(SB)		
  map_dao.go:368	0x995ee5		488d0d74cc6a00		LEAQ runtime.types+383840(SB), CX	
  map_dao.go:368	0x995eec		48894c2470		MOVQ CX, 0x70(SP)			
  map_dao.go:368	0x995ef1		4889442478		MOVQ AX, 0x78(SP)			
  map_dao.go:368	0x995ef6		488b4c2438		MOVQ 0x38(SP), CX			
  map_dao.go:368	0x995efb		488b5108		MOVQ 0x8(CX), DX			
  map_dao.go:368	0x995eff		90			NOPL					
  map_dao.go:368	0x995f00		4885d2			TESTQ DX, DX				
  map_dao.go:368	0x995f03		7404			JE 0x995f09				
  map_dao.go:368	0x995f05		488b5208		MOVQ 0x8(DX), DX			
  map_dao.go:368	0x995f09		4c8b5110		MOVQ 0x10(CX), R10			
  map_dao.go:368	0x995f0d		4889942480000000	MOVQ DX, 0x80(SP)			
  map_dao.go:368	0x995f15		4c89942488000000	MOVQ R10, 0x88(SP)			
  print.go:233		0x995f1d		488b1d5cc1b702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x995f24		488d05b55b4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x995f2b		488d0daddb7f00		LEAQ go:string.*+177623(SB), CX		
  print.go:233		0x995f32		bf26000000		MOVL $__major_os_version__+32(SB), DI	
  print.go:233		0x995f37		488d742470		LEAQ 0x70(SP), SI			
  print.go:233		0x995f3c		41b802000000		MOVL $__minor_os_version__+1(SB), R8	
  print.go:233		0x995f42		4d89c1			MOVQ R8, R9				
  print.go:233		0x995f45		e8d692b8ff		CALL fmt.Fprintf(SB)			
  map_dao.go:369	0x995f4a		31c0			XORL AX, AX				
  map_dao.go:369	0x995f4c		4881c4b0000000		ADDQ $.file+99(SB), SP			
  map_dao.go:369	0x995f53		5d			POPQ BP					
  map_dao.go:369	0x995f54		c3			RET					
  map_dao.go:372	0x995f55		440f117c2450		MOVUPS X15, 0x50(SP)			
  map_dao.go:372	0x995f5b		440f117c2460		MOVUPS X15, 0x60(SP)			
  map_dao.go:372	0x995f61		488b8424c0000000	MOVQ 0xc0(SP), AX			
  map_dao.go:372	0x995f69		e83241adff		CALL runtime.convT64(SB)		
  map_dao.go:372	0x995f6e		488d0debcb6a00		LEAQ runtime.types+383840(SB), CX	
  map_dao.go:372	0x995f75		48894c2450		MOVQ CX, 0x50(SP)			
  map_dao.go:372	0x995f7a		4889442458		MOVQ AX, 0x58(SP)			
  map_dao.go:372	0x995f7f		488b4c2438		MOVQ 0x38(SP), CX			
  map_dao.go:372	0x995f84		488b4118		MOVQ 0x18(CX), AX			
  map_dao.go:372	0x995f88		e81341adff		CALL runtime.convT64(SB)		
  map_dao.go:372	0x995f8d		488d0d4ccb6a00		LEAQ runtime.types+383712(SB), CX	
  map_dao.go:372	0x995f94		48894c2460		MOVQ CX, 0x60(SP)			
  map_dao.go:372	0x995f99		4889442468		MOVQ AX, 0x68(SP)			
  print.go:233		0x995f9e		488b1ddbc0b702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x995fa5		488d05345b4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x995fac		488d0d52db7f00		LEAQ go:string.*+177661(SB), CX		
  print.go:233		0x995fb3		bf26000000		MOVL $__major_os_version__+32(SB), DI	
  print.go:233		0x995fb8		488d742450		LEAQ 0x50(SP), SI			
  print.go:233		0x995fbd		41b802000000		MOVL $__minor_os_version__+1(SB), R8	
  print.go:233		0x995fc3		4d89c1			MOVQ R8, R9				
  print.go:233		0x995fc6		e85592b8ff		CALL fmt.Fprintf(SB)			
  map_dao.go:373	0x995fcb		b801000000		MOVL $__minor_os_version__(SB), AX	
  map_dao.go:373	0x995fd0		4881c4b0000000		ADDQ $.file+99(SB), SP			
  map_dao.go:373	0x995fd7		5d			POPQ BP					
  map_dao.go:373	0x995fd8		c3			RET					
  map_dao.go:349	0x995fd9		4889442408		MOVQ AX, 0x8(SP)			
  map_dao.go:349	0x995fde		48895c2410		MOVQ BX, 0x10(SP)			
  map_dao.go:349	0x995fe3		48894c2418		MOVQ CX, 0x18(SP)			
  map_dao.go:349	0x995fe8		e8f304aeff		CALL runtime.morestack_noctxt.abi0(SB)	
  map_dao.go:349	0x995fed		488b442408		MOVQ 0x8(SP), AX			
  map_dao.go:349	0x995ff2		488b5c2410		MOVQ 0x10(SP), BX			
  map_dao.go:349	0x995ff7		488b4c2418		MOVQ 0x18(SP), CX			
  map_dao.go:349	0x995ffc		0f1f4000		NOPL 0(AX)				
  map_dao.go:349	0x996000		e95bfdffff		JMP CAS-Backend/biz/dao.Delete_map(SB)	
  :-1			0x996005		cc			INT $__subsystem__(SB)			
  :-1			0x996006		cc			INT $__subsystem__(SB)			
  :-1			0x996007		cc			INT $__subsystem__(SB)			
  :-1			0x996008		cc			INT $__subsystem__(SB)			
  :-1			0x996009		cc			INT $__subsystem__(SB)			
  :-1			0x99600a		cc			INT $__subsystem__(SB)			
  :-1			0x99600b		cc			INT $__subsystem__(SB)			
  :-1			0x99600c		cc			INT $__subsystem__(SB)			
  :-1			0x99600d		cc			INT $__subsystem__(SB)			
  :-1			0x99600e		cc			INT $__subsystem__(SB)			
  :-1			0x99600f		cc			INT $__subsystem__(SB)			
  :-1			0x996010		cc			INT $__subsystem__(SB)			
  :-1			0x996011		cc			INT $__subsystem__(SB)			
  :-1			0x996012		cc			INT $__subsystem__(SB)			
  :-1			0x996013		cc			INT $__subsystem__(SB)			
  :-1			0x996014		cc			INT $__subsystem__(SB)			
  :-1			0x996015		cc			INT $__subsystem__(SB)			
  :-1			0x996016		cc			INT $__subsystem__(SB)			
  :-1			0x996017		cc			INT $__subsystem__(SB)			
  :-1			0x996018		cc			INT $__subsystem__(SB)			
  :-1			0x996019		cc			INT $__subsystem__(SB)			
  :-1			0x99601a		cc			INT $__subsystem__(SB)			
  :-1			0x99601b		cc			INT $__subsystem__(SB)			
  :-1			0x99601c		cc			INT $__subsystem__(SB)			
  :-1			0x99601d		cc			INT $__subsystem__(SB)			
  :-1			0x99601e		cc			INT $__subsystem__(SB)			
  :-1			0x99601f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.Update_map(SB) D:/CodeEnv_code/cas-backend/biz/dao/map_dao.go
  map_dao.go:376	0x996020		4c8da424e8feffff	LEAQ 0xfffffee8(SP), R12			
  map_dao.go:376	0x996028		4d3b6610		CMPQ R12, 0x10(R14)				
  map_dao.go:376	0x99602c		0f86c4080000		JBE 0x9968f6					
  map_dao.go:376	0x996032		55			PUSHQ BP					
  map_dao.go:376	0x996033		4889e5			MOVQ SP, BP					
  map_dao.go:376	0x996036		4881ec90010000		SUBQ $.file+323(SB), SP				
  map_dao.go:376	0x99603d		48898424f0010000	MOVQ AX, 0x1f0(SP)				
  map_dao.go:378	0x996045		4885c0			TESTQ AX, AX					
  map_dao.go:378	0x996048		745b			JE 0x9960a5					
  map_dao.go:378	0x99604a		4885db			TESTQ BX, BX					
  map_dao.go:378	0x99604d		7456			JE 0x9960a5					
  map_dao.go:378	0x99604f		48898c2400020000	MOVQ CX, 0x200(SP)				
  map_dao.go:378	0x996057		48898424f0010000	MOVQ AX, 0x1f0(SP)				
  map_dao.go:378	0x99605f		48899c24f8010000	MOVQ BX, 0x1f8(SP)				
  map_dao.go:381	0x996067		488b8424b8010000	MOVQ 0x1b8(SP), AX				
  map_dao.go:381	0x99606f		488b9c24c0010000	MOVQ 0x1c0(SP), BX				
  map_dao.go:380	0x996077		488b0d72fd6100		MOVQ CAS-Backend/biz/dao.MapPath(SB), CX	
  map_dao.go:380	0x99607e		48898c2488000000	MOVQ CX, 0x88(SP)				
  map_dao.go:380	0x996086		488b156bfd6100		MOVQ CAS-Backend/biz/dao.MapPath+8(SB), DX	
  map_dao.go:380	0x99608d		4889542450		MOVQ DX, 0x50(SP)				
  path.go:456		0x996092		e8e958b2ff		CALL internal/filepathlite.Base(SB)		
  path.go:216		0x996097		488d4bff		LEAQ -0x1(BX), CX				
  path.go:216		0x99609b		0f1f440000		NOPL 0(AX)(AX*1)				
  path.go:216		0x9960a0		e940040000		JMP 0x9964e5					
  map_dao.go:414	0x9960a5		488d0514607700		LEAQ runtime.types+1208512(SB), AX		
  map_dao.go:414	0x9960ac		e8efb6a7ff		CALL runtime.newobject(SB)			
  map_dao.go:414	0x9960b1		4889842448010000	MOVQ AX, 0x148(SP)				
  map_dao.go:414	0x9960b9		488b0d80bfb702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x9960c0		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x9960c3		e8b826f9ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x9960c8		4889842480000000	MOVQ AX, 0x80(SP)				
  chainable_api.go:20	0x9960d0		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x9960d4		488d1565cd6d00		LEAQ runtime.types+581184(SB), DX		
  chainable_api.go:20	0x9960db		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x9960df		833d6a7abc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x9960e6		750a			JNE 0x9960f2					
  chainable_api.go:20	0x9960e8		488b942448010000	MOVQ 0x148(SP), DX				
  chainable_api.go:20	0x9960f0		eb18			JMP 0x99610a					
  chainable_api.go:20	0x9960f2		e84923aeff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x9960f7		488b942448010000	MOVQ 0x148(SP), DX				
  chainable_api.go:20	0x9960ff		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x996102		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x996106		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x99610a		48895128		MOVQ DX, 0x28(CX)				
  map_dao.go:414	0x99610e		488d058b7d6b00		LEAQ runtime.types+429728(SB), AX		
  map_dao.go:414	0x996115		e886b6a7ff		CALL runtime.newobject(SB)			
  map_dao.go:414	0x99611a		4889842440010000	MOVQ AX, 0x140(SP)				
  map_dao.go:414	0x996122		488b8c24a0010000	MOVQ 0x1a0(SP), CX				
  map_dao.go:414	0x99612a		4889c8			MOVQ CX, AX					
  map_dao.go:414	0x99612d		e86e3fadff		CALL runtime.convT64(SB)			
  map_dao.go:414	0x996132		488d0d27ca6a00		LEAQ runtime.types+383840(SB), CX		
  map_dao.go:414	0x996139		488bbc2440010000	MOVQ 0x140(SP), DI				
  map_dao.go:414	0x996141		48890f			MOVQ CX, 0(DI)					
  map_dao.go:414	0x996144		833d057abc0200		CMPL runtime.writeBarrier(SB), $0x0		
  map_dao.go:414	0x99614b		7410			JE 0x99615d					
  map_dao.go:414	0x99614d		e8ee22aeff		CALL runtime.gcWriteBarrier2(SB)		
  map_dao.go:414	0x996152		498903			MOVQ AX, 0(R11)					
  map_dao.go:414	0x996155		488b5708		MOVQ 0x8(DI), DX				
  map_dao.go:414	0x996159		49895308		MOVQ DX, 0x8(R11)				
  map_dao.go:414	0x99615d		48894708		MOVQ AX, 0x8(DI)				
  map_dao.go:414	0x996161		488b842480000000	MOVQ 0x80(SP), AX				
  map_dao.go:414	0x996169		488d1db0c76a00		LEAQ runtime.types+383264(SB), BX		
  map_dao.go:414	0x996170		488d0de91b4d02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX	
  map_dao.go:414	0x996177		be01000000		MOVL $__minor_os_version__(SB), SI		
  map_dao.go:414	0x99617c		4989f0			MOVQ SI, R8					
  map_dao.go:414	0x99617f		90			NOPL						
  map_dao.go:414	0x996180		e81b80f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  map_dao.go:414	0x996185		4889842438010000	MOVQ AX, 0x138(SP)				
  map_dao.go:414	0x99618d		e84e4eadff		CALL runtime.makemap_small(SB)			
  map_dao.go:414	0x996192		4889842430010000	MOVQ AX, 0x130(SP)				
  map_dao.go:415	0x99619a		488b9424a8010000	MOVQ 0x1a8(SP), DX				
  map_dao.go:415	0x9961a2		488b9c24b0010000	MOVQ 0x1b0(SP), BX				
  map_dao.go:415	0x9961aa		4889d0			MOVQ DX, AX					
  map_dao.go:415	0x9961ad		e86e3fadff		CALL runtime.convTstring(SB)			
  map_dao.go:415	0x9961b2		4889842428010000	MOVQ AX, 0x128(SP)				
  map_dao.go:414	0x9961ba		488b9c2430010000	MOVQ 0x130(SP), BX				
  map_dao.go:414	0x9961c2		488d0d5f337d00		LEAQ go:string.*+4128(SB), CX			
  map_dao.go:414	0x9961c9		bf04000000		MOVL $__subsystem__+1(SB), DI			
  map_dao.go:414	0x9961ce		488d05eb726e00		LEAQ runtime.types+623808(SB), AX		
  map_dao.go:414	0x9961d5		e8467eadff		CALL runtime.mapassign_faststr(SB)		
  map_dao.go:414	0x9961da		488d153fc76a00		LEAQ runtime.types+383264(SB), DX		
  map_dao.go:414	0x9961e1		488910			MOVQ DX, 0(AX)					
  map_dao.go:414	0x9961e4		833d6579bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  map_dao.go:414	0x9961eb		750a			JNE 0x9961f7					
  map_dao.go:414	0x9961ed		488b8c2428010000	MOVQ 0x128(SP), CX				
  map_dao.go:414	0x9961f5		eb18			JMP 0x99620f					
  map_dao.go:414	0x9961f7		e84422aeff		CALL runtime.gcWriteBarrier2(SB)		
  map_dao.go:414	0x9961fc		488b8c2428010000	MOVQ 0x128(SP), CX				
  map_dao.go:414	0x996204		49890b			MOVQ CX, 0(R11)					
  map_dao.go:414	0x996207		488b7008		MOVQ 0x8(AX), SI				
  map_dao.go:414	0x99620b		49897308		MOVQ SI, 0x8(R11)				
  map_dao.go:414	0x99620f		48894808		MOVQ CX, 0x8(AX)				
  map_dao.go:416	0x996213		488b8424b8010000	MOVQ 0x1b8(SP), AX				
  map_dao.go:416	0x99621b		488b9c24c0010000	MOVQ 0x1c0(SP), BX				
  map_dao.go:416	0x996223		e8f83eadff		CALL runtime.convTstring(SB)			
  map_dao.go:416	0x996228		4889842428010000	MOVQ AX, 0x128(SP)				
  map_dao.go:414	0x996230		488b9c2430010000	MOVQ 0x130(SP), BX				
  map_dao.go:414	0x996238		488d0ded327d00		LEAQ go:string.*+4132(SB), CX			
  map_dao.go:414	0x99623f		bf04000000		MOVL $__subsystem__+1(SB), DI			
  map_dao.go:414	0x996244		488d0575726e00		LEAQ runtime.types+623808(SB), AX		
  map_dao.go:414	0x99624b		e8d07dadff		CALL runtime.mapassign_faststr(SB)		
  map_dao.go:414	0x996250		488d0dc9c66a00		LEAQ runtime.types+383264(SB), CX		
  map_dao.go:414	0x996257		488908			MOVQ CX, 0(AX)					
  map_dao.go:414	0x99625a		833def78bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  map_dao.go:414	0x996261		750a			JNE 0x99626d					
  map_dao.go:414	0x996263		488b942428010000	MOVQ 0x128(SP), DX				
  map_dao.go:414	0x99626b		eb18			JMP 0x996285					
  map_dao.go:414	0x99626d		e8ce21aeff		CALL runtime.gcWriteBarrier2(SB)		
  map_dao.go:414	0x996272		488b942428010000	MOVQ 0x128(SP), DX				
  map_dao.go:414	0x99627a		498913			MOVQ DX, 0(R11)					
  map_dao.go:414	0x99627d		488b7008		MOVQ 0x8(AX), SI				
  map_dao.go:414	0x996281		49897308		MOVQ SI, 0x8(R11)				
  map_dao.go:414	0x996285		48895008		MOVQ DX, 0x8(AX)				
  map_dao.go:417	0x996289		488b8424c8010000	MOVQ 0x1c8(SP), AX				
  map_dao.go:417	0x996291		488b9c24d0010000	MOVQ 0x1d0(SP), BX				
  map_dao.go:417	0x996299		e8823eadff		CALL runtime.convTstring(SB)			
  map_dao.go:417	0x99629e		4889842428010000	MOVQ AX, 0x128(SP)				
  map_dao.go:414	0x9962a6		488b9c2430010000	MOVQ 0x130(SP), BX				
  map_dao.go:414	0x9962ae		488d0d13c87d00		LEAQ go:string.*+42432(SB), CX			
  map_dao.go:414	0x9962b5		bf07000000		MOVL $__major_os_version__+1(SB), DI		
  map_dao.go:414	0x9962ba		488d05ff716e00		LEAQ runtime.types+623808(SB), AX		
  map_dao.go:414	0x9962c1		e85a7dadff		CALL runtime.mapassign_faststr(SB)		
  map_dao.go:414	0x9962c6		488d0d53c66a00		LEAQ runtime.types+383264(SB), CX		
  map_dao.go:414	0x9962cd		488908			MOVQ CX, 0(AX)					
  map_dao.go:414	0x9962d0		833d7978bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  map_dao.go:414	0x9962d7		750a			JNE 0x9962e3					
  map_dao.go:414	0x9962d9		488b8c2428010000	MOVQ 0x128(SP), CX				
  map_dao.go:414	0x9962e1		eb18			JMP 0x9962fb					
  map_dao.go:414	0x9962e3		e85821aeff		CALL runtime.gcWriteBarrier2(SB)		
  map_dao.go:414	0x9962e8		488b8c2428010000	MOVQ 0x128(SP), CX				
  map_dao.go:414	0x9962f0		49890b			MOVQ CX, 0(R11)					
  map_dao.go:414	0x9962f3		488b5008		MOVQ 0x8(AX), DX				
  map_dao.go:414	0x9962f7		49895308		MOVQ DX, 0x8(R11)				
  map_dao.go:414	0x9962fb		48894808		MOVQ CX, 0x8(AX)				
  map_dao.go:418	0x9962ff		488d05da9f7b00		LEAQ runtime.types+1487584(SB), AX		
  map_dao.go:418	0x996306		488d9c24d8010000	LEAQ 0x1d8(SP), BX				
  map_dao.go:418	0x99630e		e88d8da7ff		CALL runtime.convT(SB)				
  map_dao.go:418	0x996313		4889842428010000	MOVQ AX, 0x128(SP)				
  map_dao.go:414	0x99631b		488b9c2430010000	MOVQ 0x130(SP), BX				
  map_dao.go:414	0x996323		488d0d51dd7d00		LEAQ go:string.*+47987(SB), CX			
  map_dao.go:414	0x99632a		bf08000000		MOVL $__major_os_version__+2(SB), DI		
  map_dao.go:414	0x99632f		488d058a716e00		LEAQ runtime.types+623808(SB), AX		
  map_dao.go:414	0x996336		e8e57cadff		CALL runtime.mapassign_faststr(SB)		
  map_dao.go:414	0x99633b		488d0d9e9f7b00		LEAQ runtime.types+1487584(SB), CX		
  map_dao.go:414	0x996342		488908			MOVQ CX, 0(AX)					
  map_dao.go:414	0x996345		833d0478bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  map_dao.go:414	0x99634c		750a			JNE 0x996358					
  map_dao.go:414	0x99634e		488b942428010000	MOVQ 0x128(SP), DX				
  map_dao.go:414	0x996356		eb18			JMP 0x996370					
  map_dao.go:414	0x996358		e8e320aeff		CALL runtime.gcWriteBarrier2(SB)		
  map_dao.go:414	0x99635d		488b942428010000	MOVQ 0x128(SP), DX				
  map_dao.go:414	0x996365		498913			MOVQ DX, 0(R11)					
  map_dao.go:414	0x996368		488b7008		MOVQ 0x8(AX), SI				
  map_dao.go:414	0x99636c		49897308		MOVQ SI, 0x8(R11)				
  map_dao.go:414	0x996370		48895008		MOVQ DX, 0x8(AX)				
  map_dao.go:414	0x996374		488b842438010000	MOVQ 0x138(SP), AX				
  map_dao.go:414	0x99637c		488d1d3d716e00		LEAQ runtime.types+623808(SB), BX		
  map_dao.go:414	0x996383		488b8c2430010000	MOVQ 0x130(SP), CX				
  map_dao.go:414	0x99638b		e870caf8ff		CALL gorm.io/gorm.(*DB).Updates(SB)		
  map_dao.go:414	0x996390		4889842490000000	MOVQ AX, 0x90(SP)				
  map_dao.go:421	0x996398		4883780800		CMPQ 0x8(AX), $0x0				
  map_dao.go:421	0x99639d		0f1f00			NOPL 0(AX)					
  map_dao.go:421	0x9963a0		0f849b000000		JE 0x996441					
  map_dao.go:422	0x9963a6		440f11bc2470010000	MOVUPS X15, 0x170(SP)				
  map_dao.go:422	0x9963af		440f11bc2480010000	MOVUPS X15, 0x180(SP)				
  map_dao.go:422	0x9963b8		488b8424a0010000	MOVQ 0x1a0(SP), AX				
  map_dao.go:422	0x9963c0		e8db3cadff		CALL runtime.convT64(SB)			
  map_dao.go:422	0x9963c5		488d0d94c76a00		LEAQ runtime.types+383840(SB), CX		
  map_dao.go:422	0x9963cc		48898c2470010000	MOVQ CX, 0x170(SP)				
  map_dao.go:422	0x9963d4		4889842478010000	MOVQ AX, 0x178(SP)				
  map_dao.go:422	0x9963dc		488b8c2490000000	MOVQ 0x90(SP), CX				
  map_dao.go:422	0x9963e4		488b5108		MOVQ 0x8(CX), DX				
  map_dao.go:422	0x9963e8		4885d2			TESTQ DX, DX					
  map_dao.go:422	0x9963eb		7404			JE 0x9963f1					
  map_dao.go:422	0x9963ed		488b5208		MOVQ 0x8(DX), DX				
  map_dao.go:422	0x9963f1		4c8b5110		MOVQ 0x10(CX), R10				
  map_dao.go:422	0x9963f5		4889942480010000	MOVQ DX, 0x180(SP)				
  map_dao.go:422	0x9963fd		4c89942488010000	MOVQ R10, 0x188(SP)				
  print.go:233		0x996405		488b1d74bcb702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99640c		488d05cd564d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x996413		488d0d2e747f00		LEAQ go:string.*+152384(SB), CX			
  print.go:233		0x99641a		bf20000000		MOVL $__major_os_version__+26(SB), DI		
  print.go:233		0x99641f		488db42470010000	LEAQ 0x170(SP), SI				
  print.go:233		0x996427		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x99642d		4d89c1			MOVQ R8, R9					
  print.go:233		0x996430		e8eb8db8ff		CALL fmt.Fprintf(SB)				
  map_dao.go:423	0x996435		31c0			XORL AX, AX					
  map_dao.go:423	0x996437		4881c490010000		ADDQ $.file+323(SB), SP				
  map_dao.go:423	0x99643e		5d			POPQ BP						
  map_dao.go:423	0x99643f		90			NOPL						
  map_dao.go:423	0x996440		c3			RET						
  map_dao.go:426	0x996441		440f11bc2450010000	MOVUPS X15, 0x150(SP)				
  map_dao.go:426	0x99644a		440f11bc2460010000	MOVUPS X15, 0x160(SP)				
  map_dao.go:426	0x996453		488b8424a0010000	MOVQ 0x1a0(SP), AX				
  map_dao.go:426	0x99645b		0f1f440000		NOPL 0(AX)(AX*1)				
  map_dao.go:426	0x996460		e83b3cadff		CALL runtime.convT64(SB)			
  map_dao.go:426	0x996465		488d0df4c66a00		LEAQ runtime.types+383840(SB), CX		
  map_dao.go:426	0x99646c		48898c2450010000	MOVQ CX, 0x150(SP)				
  map_dao.go:426	0x996474		4889842458010000	MOVQ AX, 0x158(SP)				
  map_dao.go:426	0x99647c		488b8c2490000000	MOVQ 0x90(SP), CX				
  map_dao.go:426	0x996484		488b4118		MOVQ 0x18(CX), AX				
  map_dao.go:426	0x996488		e8133cadff		CALL runtime.convT64(SB)			
  map_dao.go:426	0x99648d		488d0d4cc66a00		LEAQ runtime.types+383712(SB), CX		
  map_dao.go:426	0x996494		48898c2460010000	MOVQ CX, 0x160(SP)				
  map_dao.go:426	0x99649c		4889842468010000	MOVQ AX, 0x168(SP)				
  print.go:233		0x9964a4		488b1dd5bbb702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x9964ab		488d052e564d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x9964b2		488d0d72d67f00		LEAQ go:string.*+177699(SB), CX			
  print.go:233		0x9964b9		bf26000000		MOVL $__major_os_version__+32(SB), DI		
  print.go:233		0x9964be		488db42450010000	LEAQ 0x150(SP), SI				
  print.go:233		0x9964c6		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x9964cc		4d89c1			MOVQ R8, R9					
  print.go:233		0x9964cf		e84c8db8ff		CALL fmt.Fprintf(SB)				
  map_dao.go:427	0x9964d4		b801000000		MOVL $__minor_os_version__(SB), AX		
  map_dao.go:427	0x9964d9		4881c490010000		ADDQ $.file+323(SB), SP				
  map_dao.go:427	0x9964e0		5d			POPQ BP						
  map_dao.go:427	0x9964e1		c3			RET						
  path.go:216		0x9964e2		48ffc9			DECQ CX						
  path.go:216		0x9964e5		4885c9			TESTQ CX, CX					
  path.go:216		0x9964e8		7c38			JL 0x996522					
  path.go:216		0x9964ea		0fb63408		MOVZX 0(AX)(CX*1), SI				
  path_windows.go:19	0x9964ee		4080fe5c		CMPL SI, $.file+15(SB)				
  path_windows.go:19	0x9964f2		742e			JE 0x996522					
  path_windows.go:19	0x9964f4		4080fe2f		CMPL SI, $__major_os_version__+41(SB)		
  path.go:216		0x9964f8		7428			JE 0x996522					
  path.go:216		0x9964fa		660f1f440000		NOPW 0(AX)(AX*1)				
  path.go:217		0x996500		4080fe2e		CMPL SI, $__major_os_version__+40(SB)		
  path.go:217		0x996504		75dc			JNE 0x9964e2					
  path.go:218		0x996506		4889da			MOVQ BX, DX					
  path.go:218		0x996509		4829cb			SUBQ CX, BX					
  path.go:218		0x99650c		4889de			MOVQ BX, SI					
  path.go:218		0x99650f		48f7db			NEGQ BX						
  path.go:218		0x996512		48c1fb3f		SARQ $__major_os_version__+57(SB), BX		
  path.go:218		0x996516		4821d9			ANDQ BX, CX					
  path.go:218		0x996519		488d3c08		LEAQ 0(AX)(CX*1), DI				
  strings.go:21		0x99651d		4889d3			MOVQ DX, BX					
  path.go:139		0x996520		eb04			JMP 0x996526					
  path.go:139		0x996522		31f6			XORL SI, SI					
  path.go:139		0x996524		31ff			XORL DI, DI					
  map_dao.go:384	0x996526		4889742448		MOVQ SI, 0x48(SP)				
  path.go:456		0x99652b		4889442478		MOVQ AX, 0x78(SP)				
  map_dao.go:384	0x996530		48897c2470		MOVQ DI, 0x70(SP)				
  strings.go:1082	0x996535		90			NOPL						
  strings.go:21		0x996536		4839f3			CMPQ BX, SI					
  strings.go:21		0x996539		7c56			JL 0x996591					
  strings.go:21		0x99653b		4889d9			MOVQ BX, CX					
  strings.go:21		0x99653e		4829f3			SUBQ SI, BX					
  strings.go:21		0x996541		4839d9			CMPQ CX, BX					
  strings.go:21		0x996544		0f82a3030000		JB 0x9968ed					
  strings.go:21		0x99654a		4889ca			MOVQ CX, DX					
  strings.go:21		0x99654d		4829d9			SUBQ BX, CX					
  strings.go:21		0x996550		4989c8			MOVQ CX, R8					
  strings.go:21		0x996553		49f7d8			NEGQ R8						
  strings.go:21		0x996556		49c1f83f		SARQ $__major_os_version__+57(SB), R8		
  strings.go:21		0x99655a		4921d8			ANDQ BX, R8					
  strings.go:21		0x99655d		4901c0			ADDQ AX, R8					
  strings.go:21		0x996560		4839ce			CMPQ SI, CX					
  strings.go:21		0x996563		7404			JE 0x996569					
  strings.go:21		0x996565		31c9			XORL CX, CX					
  strings.go:21		0x996567		eb2d			JMP 0x996596					
  path.go:456		0x996569		4889542460		MOVQ DX, 0x60(SP)				
  strings.go:21		0x99656e		4c89c0			MOVQ R8, AX					
  strings.go:21		0x996571		4889fb			MOVQ DI, BX					
  strings.go:21		0x996574		e8e7c8a6ff		CALL runtime.memequal(SB)			
  strings.go:138	0x996579		488b542460		MOVQ 0x60(SP), DX				
  strings.go:138	0x99657e		488b742448		MOVQ 0x48(SP), SI				
  map_dao.go:391	0x996583		488b7c2470		MOVQ 0x70(SP), DI				
  strings.go:21		0x996588		89c1			MOVL AX, CX					
  map_dao.go:389	0x99658a		488b442478		MOVQ 0x78(SP), AX				
  strings.go:21		0x99658f		eb05			JMP 0x996596					
  strings.go:138	0x996591		4889da			MOVQ BX, DX					
  strings.go:138	0x996594		31c9			XORL CX, CX					
  strings.go:137	0x996596		84c9			TESTL CL, CL					
  strings.go:137	0x996598		7410			JE 0x9965aa					
  strings.go:138	0x99659a		4889d1			MOVQ DX, CX					
  strings.go:138	0x99659d		4829f1			SUBQ SI, CX					
  strings.go:138	0x9965a0		4839ca			CMPQ DX, CX					
  strings.go:138	0x9965a3		7308			JAE 0x9965ad					
  strings.go:138	0x9965a5		e93e030000		JMP 0x9968e8					
  map_dao.go:385	0x9965aa		4889d1			MOVQ DX, CX					
  map_dao.go:385	0x9965ad		48894c2440		MOVQ CX, 0x40(SP)				
  map_dao.go:390	0x9965b2		e8e97ab1ff		CALL time.Now(SB)				
  map_dao.go:390	0x9965b7		488d3df9337e00		LEAQ go:string.*+70831(SB), DI			
  map_dao.go:390	0x9965be		be0e000000		MOVL $__major_os_version__+8(SB), SI		
  map_dao.go:390	0x9965c3		e8b84db0ff		CALL time.Time.Format(SB)			
  map_dao.go:390	0x9965c8		4889842420010000	MOVQ AX, 0x120(SP)				
  map_dao.go:390	0x9965d0		48895c2460		MOVQ BX, 0x60(SP)				
  map_dao.go:388	0x9965d5		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)				
  map_dao.go:388	0x9965de		440f11bc2400010000	MOVUPS X15, 0x100(SP)				
  map_dao.go:388	0x9965e7		440f11bc2410010000	MOVUPS X15, 0x110(SP)				
  map_dao.go:389	0x9965f0		488b442478		MOVQ 0x78(SP), AX				
  map_dao.go:389	0x9965f5		488b5c2440		MOVQ 0x40(SP), BX				
  map_dao.go:389	0x9965fa		e8213badff		CALL runtime.convTstring(SB)			
  map_dao.go:389	0x9965ff		488d0d1ac36a00		LEAQ runtime.types+383264(SB), CX		
  map_dao.go:389	0x996606		48898c24f0000000	MOVQ CX, 0xf0(SP)				
  map_dao.go:389	0x99660e		48898424f8000000	MOVQ AX, 0xf8(SP)				
  map_dao.go:390	0x996616		488b842420010000	MOVQ 0x120(SP), AX				
  map_dao.go:390	0x99661e		488b5c2460		MOVQ 0x60(SP), BX				
  map_dao.go:390	0x996623		e8f83aadff		CALL runtime.convTstring(SB)			
  map_dao.go:390	0x996628		488d0df1c26a00		LEAQ runtime.types+383264(SB), CX		
  map_dao.go:390	0x99662f		48898c2400010000	MOVQ CX, 0x100(SP)				
  map_dao.go:390	0x996637		4889842408010000	MOVQ AX, 0x108(SP)				
  map_dao.go:391	0x99663f		488b442470		MOVQ 0x70(SP), AX				
  map_dao.go:391	0x996644		488b5c2448		MOVQ 0x48(SP), BX				
  map_dao.go:391	0x996649		e8d23aadff		CALL runtime.convTstring(SB)			
  map_dao.go:391	0x99664e		488d0dcbc26a00		LEAQ runtime.types+383264(SB), CX		
  map_dao.go:391	0x996655		48898c2410010000	MOVQ CX, 0x110(SP)				
  map_dao.go:391	0x99665d		4889842418010000	MOVQ AX, 0x118(SP)				
  map_dao.go:388	0x996665		488d0555c47d00		LEAQ go:string.*+42425(SB), AX			
  map_dao.go:388	0x99666c		bb07000000		MOVL $__major_os_version__+1(SB), BX		
  map_dao.go:388	0x996671		bf03000000		MOVL $__subsystem__(SB), DI			
  map_dao.go:388	0x996676		4889fe			MOVQ DI, SI					
  map_dao.go:388	0x996679		488d8c24f0000000	LEAQ 0xf0(SP), CX				
  map_dao.go:388	0x996681		e8ba8cb8ff		CALL fmt.Sprintf(SB)				
  map_dao.go:388	0x996686		4889842498000000	MOVQ AX, 0x98(SP)				
  map_dao.go:388	0x99668e		48895c2458		MOVQ BX, 0x58(SP)				
  map_dao.go:392	0x996693		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)				
  map_dao.go:392	0x99669c		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)				
  map_dao.go:392	0x9966a5		488b4c2450		MOVQ 0x50(SP), CX				
  map_dao.go:392	0x9966aa		48898c24d8000000	MOVQ CX, 0xd8(SP)				
  map_dao.go:392	0x9966b2		488b8c2488000000	MOVQ 0x88(SP), CX				
  map_dao.go:392	0x9966ba		48898c24d0000000	MOVQ CX, 0xd0(SP)				
  map_dao.go:392	0x9966c2		48899c24e8000000	MOVQ BX, 0xe8(SP)				
  map_dao.go:392	0x9966ca		48898424e0000000	MOVQ AX, 0xe0(SP)				
  path.go:131		0x9966d2		b902000000		MOVL $__minor_os_version__+1(SB), CX		
  path.go:131		0x9966d7		488d8424d0000000	LEAQ 0xd0(SP), AX				
  path.go:131		0x9966df		4889cb			MOVQ CX, BX					
  path.go:131		0x9966e2		e899e0b4ff		CALL path/filepath.join(SB)			
  path.go:131		0x9966e7		4889442468		MOVQ AX, 0x68(SP)				
  path.go:131		0x9966ec		48895c2438		MOVQ BX, 0x38(SP)				
  ioutil.go:47		0x9966f1		488b8c24f0010000	MOVQ 0x1f0(SP), CX				
  ioutil.go:47		0x9966f9		488bbc24f8010000	MOVQ 0x1f8(SP), DI				
  ioutil.go:47		0x996701		488bb42400020000	MOVQ 0x200(SP), SI				
  ioutil.go:47		0x996709		41b8a4010000		MOVL $.file+343(SB), R8				
  ioutil.go:47		0x99670f		e8ec8bb3ff		CALL os.WriteFile(SB)				
  map_dao.go:395	0x996714		4885c0			TESTQ AX, AX					
  map_dao.go:395	0x996717		745a			JE 0x996773					
  map_dao.go:396	0x996719		440f11bc24c0000000	MOVUPS X15, 0xc0(SP)				
  map_dao.go:396	0x996722		7404			JE 0x996728					
  map_dao.go:396	0x996724		488b4008		MOVQ 0x8(AX), AX				
  map_dao.go:396	0x996728		48898424c0000000	MOVQ AX, 0xc0(SP)				
  map_dao.go:396	0x996730		48899c24c8000000	MOVQ BX, 0xc8(SP)				
  print.go:233		0x996738		488b1d41b9b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99673f		488d059a534d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x996746		488d0dffbb7e00		LEAQ go:string.*+106052(SB), CX			
  print.go:233		0x99674d		bf16000000		MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0x996752		488db424c0000000	LEAQ 0xc0(SP), SI				
  print.go:233		0x99675a		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x996760		4d89c1			MOVQ R8, R9					
  print.go:233		0x996763		e8b88ab8ff		CALL fmt.Fprintf(SB)				
  map_dao.go:397	0x996768		31c0			XORL AX, AX					
  map_dao.go:397	0x99676a		4881c490010000		ADDQ $.file+323(SB), SP				
  map_dao.go:397	0x996771		5d			POPQ BP						
  map_dao.go:397	0x996772		c3			RET						
  map_dao.go:401	0x996773		488b8c24c0010000	MOVQ 0x1c0(SP), CX				
  map_dao.go:401	0x99677b		0f1f440000		NOPL 0(AX)(AX*1)				
  map_dao.go:401	0x996780		4885c9			TESTQ CX, CX					
  map_dao.go:401	0x996783		742d			JE 0x9967b2					
  map_dao.go:401	0x996785		488b542438		MOVQ 0x38(SP), DX				
  map_dao.go:401	0x99678a		4839ca			CMPQ DX, CX					
  map_dao.go:401	0x99678d		7407			JE 0x996796					
  map_dao.go:401	0x99678f		b801000000		MOVL $__minor_os_version__(SB), AX		
  map_dao.go:401	0x996794		eb2a			JMP 0x9967c0					
  map_dao.go:401	0x996796		488b8424b8010000	MOVQ 0x1b8(SP), AX				
  map_dao.go:401	0x99679e		488b5c2468		MOVQ 0x68(SP), BX				
  map_dao.go:401	0x9967a3		e8b8c6a6ff		CALL runtime.memequal(SB)			
  map_dao.go:401	0x9967a8		83f001			XORL $__minor_os_version__(SB), AX		
  map_dao.go:408	0x9967ab		488b542438		MOVQ 0x38(SP), DX				
  map_dao.go:401	0x9967b0		eb0e			JMP 0x9967c0					
  map_dao.go:408	0x9967b2		488b542438		MOVQ 0x38(SP), DX				
  map_dao.go:408	0x9967b7		31c0			XORL AX, AX					
  map_dao.go:408	0x9967b9		0f1f8000000000		NOPL 0(AX)					
  map_dao.go:401	0x9967c0		84c0			TESTL AL, AL					
  map_dao.go:401	0x9967c2		0f84aa000000		JE 0x996872					
  map_dao.go:402	0x9967c8		488b8424b8010000	MOVQ 0x1b8(SP), AX				
  map_dao.go:402	0x9967d0		488b9c24c0010000	MOVQ 0x1c0(SP), BX				
  map_dao.go:402	0x9967d8		e8439fb3ff		CALL os.Remove(SB)				
  map_dao.go:402	0x9967dd		0f1f00			NOPL 0(AX)					
  map_dao.go:402	0x9967e0		4885c0			TESTQ AX, AX					
  map_dao.go:402	0x9967e3		0f8484000000		JE 0x99686d					
  map_dao.go:403	0x9967e9		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)				
  map_dao.go:403	0x9967f2		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)				
  map_dao.go:403	0x9967fb		7404			JE 0x996801					
  map_dao.go:403	0x9967fd		488b4008		MOVQ 0x8(AX), AX				
  map_dao.go:403	0x996801		48898424a0000000	MOVQ AX, 0xa0(SP)				
  map_dao.go:403	0x996809		48899c24a8000000	MOVQ BX, 0xa8(SP)				
  map_dao.go:403	0x996811		488b8424b8010000	MOVQ 0x1b8(SP), AX				
  map_dao.go:403	0x996819		488b9c24c0010000	MOVQ 0x1c0(SP), BX				
  map_dao.go:403	0x996821		e8fa38adff		CALL runtime.convTstring(SB)			
  map_dao.go:403	0x996826		488d0df3c06a00		LEAQ runtime.types+383264(SB), CX		
  map_dao.go:403	0x99682d		48898c24b0000000	MOVQ CX, 0xb0(SP)				
  map_dao.go:403	0x996835		48898424b8000000	MOVQ AX, 0xb8(SP)				
  print.go:233		0x99683d		488b1d3cb8b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x996844		488d0595524d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99684b		bf25000000		MOVL $__major_os_version__+31(SB), DI		
  print.go:233		0x996850		488db424a0000000	LEAQ 0xa0(SP), SI				
  print.go:233		0x996858		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x99685e		4d89c1			MOVQ R8, R9					
  print.go:233		0x996861		488d0d1fc17f00		LEAQ go:string.*+173183(SB), CX			
  print.go:233		0x996868		e8b389b8ff		CALL fmt.Fprintf(SB)				
  map_dao.go:408	0x99686d		488b542438		MOVQ 0x38(SP), DX				
  map_dao.go:408	0x996872		488b442468		MOVQ 0x68(SP), AX				
  map_dao.go:408	0x996877		48898424b8010000	MOVQ AX, 0x1b8(SP)				
  map_dao.go:408	0x99687f		48899424c0010000	MOVQ DX, 0x1c0(SP)				
  map_dao.go:409	0x996887		488b842498000000	MOVQ 0x98(SP), AX				
  map_dao.go:409	0x99688f		48898424a8010000	MOVQ AX, 0x1a8(SP)				
  map_dao.go:409	0x996897		488b442458		MOVQ 0x58(SP), AX				
  map_dao.go:409	0x99689c		48898424b0010000	MOVQ AX, 0x1b0(SP)				
  map_dao.go:410	0x9968a4		e8f777b1ff		CALL time.Now(SB)				
  map_dao.go:410	0x9968a9		488d3dc3d77d00		LEAQ go:string.*+47979(SB), DI			
  map_dao.go:410	0x9968b0		be08000000		MOVL $__major_os_version__+2(SB), SI		
  map_dao.go:410	0x9968b5		e8c64ab0ff		CALL time.Time.Format(SB)			
  map_dao.go:410	0x9968ba		b901000000		MOVL $__minor_os_version__(SB), CX		
  map_dao.go:410	0x9968bf		4889c7			MOVQ AX, DI					
  map_dao.go:410	0x9968c2		4889de			MOVQ BX, SI					
  map_dao.go:410	0x9968c5		31c0			XORL AX, AX					
  map_dao.go:410	0x9968c7		488d1d6ae24c02		LEAQ runtime.gcbits.*+120(SB), BX		
  map_dao.go:410	0x9968ce		e82debabff		CALL runtime.concatstring2(SB)			
  map_dao.go:410	0x9968d3		48898424c8010000	MOVQ AX, 0x1c8(SP)				
  map_dao.go:410	0x9968db		48899c24d0010000	MOVQ BX, 0x1d0(SP)				
  map_dao.go:410	0x9968e3		e9bdf7ffff		JMP 0x9960a5					
  strings.go:138	0x9968e8		e8331faeff		CALL runtime.panicSliceAlen(SB)			
  strings.go:21		0x9968ed		4889d8			MOVQ BX, AX					
  strings.go:21		0x9968f0		e8ab1faeff		CALL runtime.panicSliceB(SB)			
  strings.go:21		0x9968f5		90			NOPL						
  map_dao.go:376	0x9968f6		4889442458		MOVQ AX, 0x58(SP)				
  map_dao.go:376	0x9968fb		48895c2460		MOVQ BX, 0x60(SP)				
  map_dao.go:376	0x996900		48894c2468		MOVQ CX, 0x68(SP)				
  map_dao.go:376	0x996905		e8d6fbadff		CALL runtime.morestack_noctxt.abi0(SB)		
  map_dao.go:376	0x99690a		488b442458		MOVQ 0x58(SP), AX				
  map_dao.go:376	0x99690f		488b5c2460		MOVQ 0x60(SP), BX				
  map_dao.go:376	0x996914		488b4c2468		MOVQ 0x68(SP), CX				
  map_dao.go:376	0x996919		e902f7ffff		JMP CAS-Backend/biz/dao.Update_map(SB)		
  :-1			0x99691e		cc			INT $__subsystem__(SB)				
  :-1			0x99691f		cc			INT $__subsystem__(SB)				

