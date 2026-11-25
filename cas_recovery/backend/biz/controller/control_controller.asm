TEXT CAS-Backend/biz/controller.Move_forword(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:43	0xe76540		4c8d642490		LEAQ -0x70(SP), R12								
  control_controller.go:43	0xe76545		4d3b6610		CMPQ R12, 0x10(R14)								
  control_controller.go:43	0xe76549		0f860f040000		JBE 0xe7695e									
  control_controller.go:43	0xe7654f		55			PUSHQ BP									
  control_controller.go:43	0xe76550		4889e5			MOVQ SP, BP									
  control_controller.go:43	0xe76553		4881ece8000000		SUBQ $.file+155(SB), SP								
  context.go:712		0xe7655a		48898424f8000000	MOVQ AX, 0xf8(SP)								
  control_controller.go:44	0xe76562		488d15b7c31c00		LEAQ runtime.types+383264(SB), DX						
  control_controller.go:44	0xe76569		48899424c0000000	MOVQ DX, 0xc0(SP)								
  control_controller.go:44	0xe76571		4c8d054822ff01		LEAQ CAS-Backend/biz/controller..stmp_1(SB), R8					
  control_controller.go:44	0xe76578		4c898424c8000000	MOVQ R8, 0xc8(SP)								
  print.go:314			0xe76580		488b1df9ba6902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe76587		488d8c24c0000000	LEAQ 0xc0(SP), CX								
  print.go:314			0xe7658f		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe76594		4889fe			MOVQ DI, SI									
  print.go:314			0xe76597		488d054255ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe7659e		6690			NOPW										
  print.go:314			0xe765a0		e8bb926aff		CALL fmt.Fprintln(SB)								
  control_controller.go:45	0xe765a5		488d05747f2a00		LEAQ runtime.types+1283360(SB), AX						
  control_controller.go:45	0xe765ac		e8efb159ff		CALL runtime.newobject(SB)							
  control_controller.go:45	0xe765b1		48898424e0000000	MOVQ AX, 0xe0(SP)								
  context.go:712		0xe765b9		488b1520121400		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), DX				
  context.go:712		0xe765c0		4c8b0521121400		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), R8				
  context.go:712		0xe765c7		4885d2			TESTQ DX, DX									
  context.go:712		0xe765ca		7419			JE 0xe765e5									
  context.go:712		0xe765cc		488b5a08		MOVQ 0x8(DX), BX								
  context.go:712		0xe765d0		488b35d9491400		MOVQ CAS-Backend/biz/controller..typeAssert.0(SB), SI				
  context.go:712		0xe765d7		4c8b0e			MOVQ 0(SI), R9									
  context.go:712		0xe765da		8b5210			MOVL 0x10(DX), DX								
  context.go:712		0xe765dd		0f1f00			NOPL 0(AX)									
  context.go:712		0xe765e0		e92a030000		JMP 0xe7690f									
  context.go:752		0xe765e5		488b5218		MOVQ 0x18(DX), DX								
  context.go:752		0xe765e9		488bb424f8000000	MOVQ 0xf8(SP), SI								
  context.go:752		0xe765f1		488b5e20		MOVQ 0x20(SI), BX								
  context.go:752		0xe765f5		488d0d64ff1a00		LEAQ runtime.types+267616(SB), CX						
  context.go:752		0xe765fc		4889c7			MOVQ AX, DI									
  context.go:752		0xe765ff		4c89c0			MOVQ R8, AX									
  context.go:752		0xe76602		ffd2			CALL DX										
  control_controller.go:47	0xe76604		4885c0			TESTQ AX, AX									
  control_controller.go:47	0xe76607		0f859e000000		JNE 0xe766ab									
  control_controller.go:53	0xe7660d		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)								
  control_controller.go:53	0xe76616		488b8c24e0000000	MOVQ 0xe0(SP), CX								
  control_controller.go:53	0xe7661e		f20f104128		MOVSD_XMM 0x28(CX), X0								
  control_controller.go:53	0xe76623		66480f7ec0		MOVQ X0, AX									
  control_controller.go:53	0xe76628		e8733a5fff		CALL runtime.convT64(SB)							
  control_controller.go:53	0xe7662d		488d0dacc61c00		LEAQ runtime.types+384224(SB), CX						
  control_controller.go:53	0xe76634		48898c24a0000000	MOVQ CX, 0xa0(SP)								
  control_controller.go:53	0xe7663c		48898424a8000000	MOVQ AX, 0xa8(SP)								
  print.go:314			0xe76644		488b1d35ba6902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe7664b		488d058e54ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe76652		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe76657		4889fe			MOVQ DI, SI									
  print.go:314			0xe7665a		488d8c24a0000000	LEAQ 0xa0(SP), CX								
  print.go:314			0xe76662		e8f9916aff		CALL fmt.Fprintln(SB)								
  control_controller.go:55	0xe76667		488b8c24e0000000	MOVQ 0xe0(SP), CX								
  control_controller.go:55	0xe7666f		f20f104128		MOVSD_XMM 0x28(CX), X0								
  control_controller.go:55	0xe76674		0f57c9			XORPS X1, X1									
  control_controller.go:55	0xe76677		660f2ec1		UCOMISD X1, X0									
  control_controller.go:55	0xe7667b		750f			JNE 0xe7668c									
  control_controller.go:55	0xe7667d		7a0d			JP 0xe7668c									
  control_controller.go:56	0xe7667f		f20f1005e111ff01	MOVSD_XMM $f64.3fd3333333333333(SB), X0						
  control_controller.go:56	0xe76687		f20f114128		MOVSD_XMM X0, 0x28(CX)								
  control_controller.go:59	0xe7668c		4883792001		CMPQ 0x20(CX), $__minor_os_version__(SB)					
  control_controller.go:59	0xe76691		750c			JNE 0xe7669f									
  control_controller.go:60	0xe76693		c6051a6c6e0201		MOVB $__minor_os_version__(SB), CAS-Backend/biz/controller.is_forword(SB)	
  control_controller.go:60	0xe7669a		e9c6000000		JMP 0xe76765									
  control_controller.go:62	0xe7669f		c6050e6c6e0200		MOVB $0x0, CAS-Backend/biz/controller.is_forword(SB)				
  control_controller.go:62	0xe766a6		e9ba000000		JMP 0xe76765									
  context.go:752		0xe766ab		48895c2440		MOVQ BX, 0x40(SP)								
  context.go:752		0xe766b0		4889442438		MOVQ AX, 0x38(SP)								
  control_controller.go:48	0xe766b5		488d1564c21c00		LEAQ runtime.types+383264(SB), DX						
  control_controller.go:48	0xe766bc		48899424b0000000	MOVQ DX, 0xb0(SP)								
  control_controller.go:48	0xe766c4		488d150521ff01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX					
  control_controller.go:48	0xe766cb		48899424b8000000	MOVQ DX, 0xb8(SP)								
  print.go:314			0xe766d3		488b1da6b96902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe766da		488d05ff53ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe766e1		488d8c24b0000000	LEAQ 0xb0(SP), CX								
  print.go:314			0xe766e9		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe766ee		4889fe			MOVQ DI, SI									
  print.go:314			0xe766f1		e86a916aff		CALL fmt.Fprintln(SB)								
  control_controller.go:49	0xe766f6		488b8424f8000000	MOVQ 0xf8(SP), AX								
  control_controller.go:49	0xe766fe		bb90010000		MOVL $.file+323(SB), BX								
  control_controller.go:49	0xe76703		488b4c2438		MOVQ 0x38(SP), CX								
  control_controller.go:49	0xe76708		488b7c2440		MOVQ 0x40(SP), DI								
  control_controller.go:49	0xe7670d		e88e49f8ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)			
  control_controller.go:50	0xe76712		4881c4e8000000		ADDQ $.file+155(SB), SP								
  control_controller.go:50	0xe76719		5d			POPQ BP										
  control_controller.go:50	0xe7671a		c3			RET										
  control_controller.go:76	0xe7671b		488d15fec11c00		LEAQ runtime.types+383264(SB), DX						
  control_controller.go:76	0xe76722		4889542470		MOVQ DX, 0x70(SP)								
  control_controller.go:76	0xe76727		4c8d05b220ff01		LEAQ CAS-Backend/biz/controller..stmp_3(SB), R8					
  control_controller.go:76	0xe7672e		4c89442478		MOVQ R8, 0x78(SP)								
  print.go:314			0xe76733		488b1d46b96902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe7673a		488d059f53ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe76741		488d4c2470		LEAQ 0x70(SP), CX								
  print.go:314			0xe76746		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe7674b		4889fe			MOVQ DI, SI									
  print.go:314			0xe7674e		e80d916aff		CALL fmt.Fprintln(SB)								
  control_controller.go:80	0xe76753		b800ca9a3b		MOVL $0x3b9aca00, AX								
  control_controller.go:80	0xe76758		e8e3d95fff		CALL time.Sleep(SB)								
  control_controller.go:67	0xe7675d		488b8c24e0000000	MOVQ 0xe0(SP), CX								
  control_controller.go:66	0xe76765		803d486b6e0200		CMPB CAS-Backend/biz/controller.is_forword(SB), $0x0				
  control_controller.go:66	0xe7676c		0f84ef000000		JE 0xe76861									
  control_controller.go:67	0xe76772		440f11bc2490000000	MOVUPS X15, 0x90(SP)								
  control_controller.go:67	0xe7677b		f20f104128		MOVSD_XMM 0x28(CX), X0								
  control_controller.go:67	0xe76780		66480f7ec0		MOVQ X0, AX									
  control_controller.go:67	0xe76785		e816395fff		CALL runtime.convT64(SB)							
  control_controller.go:67	0xe7678a		488d0d4fc51c00		LEAQ runtime.types+384224(SB), CX						
  control_controller.go:67	0xe76791		48898c2490000000	MOVQ CX, 0x90(SP)								
  control_controller.go:67	0xe76799		4889842498000000	MOVQ AX, 0x98(SP)								
  print.go:314			0xe767a1		488b1dd8b86902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe767a8		488d053153ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe767af		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe767b4		4889fe			MOVQ DI, SI									
  print.go:314			0xe767b7		488d8c2490000000	LEAQ 0x90(SP), CX								
  print.go:314			0xe767bf		90			NOPL										
  print.go:314			0xe767c0		e89b906aff		CALL fmt.Fprintln(SB)								
  control_controller.go:69	0xe767c5		488d0db4010000		LEAQ CAS-Backend/biz/controller.Move_forword.func1(SB), CX			
  control_controller.go:69	0xe767cc		48898c24d0000000	MOVQ CX, 0xd0(SP)								
  control_controller.go:69	0xe767d4		488b9424e0000000	MOVQ 0xe0(SP), DX								
  control_controller.go:69	0xe767dc		48899424d8000000	MOVQ DX, 0xd8(SP)								
  control_controller.go:69	0xe767e4		488b4210		MOVQ 0x10(DX), AX								
  control_controller.go:69	0xe767e8		488b5a18		MOVQ 0x18(DX), BX								
  control_controller.go:69	0xe767ec		488dbc24d0000000	LEAQ 0xd0(SP), DI								
  control_controller.go:69	0xe767f4		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX					
  control_controller.go:69	0xe767f9		e802cef9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)					
  control_controller.go:69	0xe767fe		6690			NOPW										
  control_controller.go:72	0xe76800		4885c0			TESTQ AX, AX									
  control_controller.go:72	0xe76803		0f8412ffffff		JE 0xe7671b									
  control_controller.go:73	0xe76809		440f11bc2480000000	MOVUPS X15, 0x80(SP)								
  control_controller.go:73	0xe76812		7404			JE 0xe76818									
  control_controller.go:73	0xe76814		488b4008		MOVQ 0x8(AX), AX								
  control_controller.go:73	0xe76818		4889842480000000	MOVQ AX, 0x80(SP)								
  control_controller.go:73	0xe76820		48899c2488000000	MOVQ BX, 0x88(SP)								
  print.go:233			0xe76828		488b1d51b86902		MOVQ os.Stdout(SB), BX								
  print.go:233			0xe7682f		488d05aa52ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233			0xe76836		488d0d02d33000		LEAQ go:string.*+112183(SB), CX							
  print.go:233			0xe7683d		bf17000000		MOVL $__major_os_version__+17(SB), DI						
  print.go:233			0xe76842		488db42480000000	LEAQ 0x80(SP), SI								
  print.go:233			0xe7684a		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233			0xe76850		4d89c1			MOVQ R8, R9									
  print.go:233			0xe76853		e8c8896aff		CALL fmt.Fprintf(SB)								
  control_controller.go:74	0xe76858		4881c4e8000000		ADDQ $.file+155(SB), SP								
  control_controller.go:74	0xe7685f		5d			POPQ BP										
  control_controller.go:74	0xe76860		c3			RET										
  control_controller.go:88	0xe76861		488b4110		MOVQ 0x10(CX), AX								
  control_controller.go:88	0xe76865		488b5918		MOVQ 0x18(CX), BX								
  control_controller.go:88	0xe76869		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX					
  control_controller.go:88	0xe7686e		488d3d330fe601		LEAQ go:func.*+6080(SB), DI							
  control_controller.go:88	0xe76875		e886cdf9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)					
  control_controller.go:91	0xe7687a		4885c0			TESTQ AX, AX									
  control_controller.go:91	0xe7687d		744f			JE 0xe768ce									
  control_controller.go:92	0xe7687f		440f117c2460		MOVUPS X15, 0x60(SP)								
  control_controller.go:92	0xe76885		7404			JE 0xe7688b									
  control_controller.go:92	0xe76887		488b4008		MOVQ 0x8(AX), AX								
  control_controller.go:92	0xe7688b		4889442460		MOVQ AX, 0x60(SP)								
  control_controller.go:92	0xe76890		48895c2468		MOVQ BX, 0x68(SP)								
  print.go:233			0xe76895		488b1de4b76902		MOVQ os.Stdout(SB), BX								
  print.go:233			0xe7689c		488d053d52ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233			0xe768a3		488d0d95d23000		LEAQ go:string.*+112183(SB), CX							
  print.go:233			0xe768aa		bf17000000		MOVL $__major_os_version__+17(SB), DI						
  print.go:233			0xe768af		488d742460		LEAQ 0x60(SP), SI								
  print.go:233			0xe768b4		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233			0xe768ba		4d89c1			MOVQ R8, R9									
  print.go:233			0xe768bd		0f1f00			NOPL 0(AX)									
  print.go:233			0xe768c0		e85b896aff		CALL fmt.Fprintf(SB)								
  control_controller.go:93	0xe768c5		4881c4e8000000		ADDQ $.file+155(SB), SP								
  control_controller.go:93	0xe768cc		5d			POPQ BP										
  control_controller.go:93	0xe768cd		c3			RET										
  control_controller.go:95	0xe768ce		488d154bc01c00		LEAQ runtime.types+383264(SB), DX						
  control_controller.go:95	0xe768d5		4889542450		MOVQ DX, 0x50(SP)								
  control_controller.go:95	0xe768da		488d150f1fff01		LEAQ CAS-Backend/biz/controller..stmp_4(SB), DX					
  control_controller.go:95	0xe768e1		4889542458		MOVQ DX, 0x58(SP)								
  print.go:314			0xe768e6		488b1d93b76902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe768ed		488d05ec51ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe768f4		488d4c2450		LEAQ 0x50(SP), CX								
  print.go:314			0xe768f9		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe768fe		4889fe			MOVQ DI, SI									
  print.go:314			0xe76901		e85a8f6aff		CALL fmt.Fprintln(SB)								
  control_controller.go:102	0xe76906		4881c4e8000000		ADDQ $.file+155(SB), SP								
  control_controller.go:102	0xe7690d		5d			POPQ BP										
  control_controller.go:102	0xe7690e		c3			RET										
  context.go:712		0xe7690f		4989d2			MOVQ DX, R10									
  context.go:712		0xe76912		4c21ca			ANDQ R9, DX									
  context.go:712		0xe76915		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  context.go:712		0xe76919		4c8b5c3208		MOVQ 0x8(DX)(SI*1), R11								
  context.go:712		0xe7691e		6690			NOPW										
  context.go:712		0xe76920		4939db			CMPQ R11, BX									
  context.go:712		0xe76923		742f			JE 0xe76954									
  context.go:712		0xe76925		498d5201		LEAQ 0x1(R10), DX								
  context.go:712		0xe76929		4d85db			TESTQ R11, R11									
  context.go:712		0xe7692c		75e1			JNE 0xe7690f									
  context.go:712		0xe7692e		4c89442448		MOVQ R8, 0x48(SP)								
  context.go:712		0xe76933		488d0576461400		LEAQ CAS-Backend/biz/controller..typeAssert.0(SB), AX				
  context.go:712		0xe7693a		e8a18959ff		CALL runtime.typeAssert(SB)							
  context.go:752		0xe7693f		4c8b442448		MOVQ 0x48(SP), R8								
  context.go:712		0xe76944		4889c2			MOVQ AX, DX									
  context.go:752		0xe76947		488b8424e0000000	MOVQ 0xe0(SP), AX								
  context.go:712		0xe7694f		e991fcffff		JMP 0xe765e5									
  context.go:712		0xe76954		488b543210		MOVQ 0x10(DX)(SI*1), DX								
  context.go:712		0xe76959		e987fcffff		JMP 0xe765e5									
  control_controller.go:43	0xe7695e		4889442408		MOVQ AX, 0x8(SP)								
  control_controller.go:43	0xe76963		e878fb5fff		CALL runtime.morestack_noctxt.abi0(SB)						
  control_controller.go:43	0xe76968		488b442408		MOVQ 0x8(SP), AX								
  control_controller.go:43	0xe7696d		e9cefbffff		JMP CAS-Backend/biz/controller.Move_forword(SB)					
  :-1				0xe76972		cc			INT $__subsystem__(SB)								
  :-1				0xe76973		cc			INT $__subsystem__(SB)								
  :-1				0xe76974		cc			INT $__subsystem__(SB)								
  :-1				0xe76975		cc			INT $__subsystem__(SB)								
  :-1				0xe76976		cc			INT $__subsystem__(SB)								
  :-1				0xe76977		cc			INT $__subsystem__(SB)								
  :-1				0xe76978		cc			INT $__subsystem__(SB)								
  :-1				0xe76979		cc			INT $__subsystem__(SB)								
  :-1				0xe7697a		cc			INT $__subsystem__(SB)								
  :-1				0xe7697b		cc			INT $__subsystem__(SB)								
  :-1				0xe7697c		cc			INT $__subsystem__(SB)								
  :-1				0xe7697d		cc			INT $__subsystem__(SB)								
  :-1				0xe7697e		cc			INT $__subsystem__(SB)								
  :-1				0xe7697f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/biz/controller.Move_forword.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:69	0xe76980		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:69	0xe76984		7634			JBE 0xe769ba						
  control_controller.go:69	0xe76986		55			PUSHQ BP						
  control_controller.go:69	0xe76987		4889e5			MOVQ SP, BP						
  control_controller.go:69	0xe7698a		4883ec40		SUBQ $__major_os_version__+58(SB), SP			
  control_controller.go:69	0xe7698e		4889442450		MOVQ AX, 0x50(SP)					
  control_controller.go:69	0xe76993		48895c2458		MOVQ BX, 0x58(SP)					
  control_controller.go:69	0xe76998		488b5208		MOVQ 0x8(DX), DX					
  control_controller.go:70	0xe7699c		f20f104228		MOVSD_XMM 0x28(DX), X0					
  control_controller.go:70	0xe769a1		0f57c9			XORPS X1, X1						
  control_controller.go:70	0xe769a4		0f10d1			MOVUPS X1, X2						
  control_controller.go:70	0xe769a7		0f10d9			MOVUPS X1, X3						
  control_controller.go:70	0xe769aa		31c9			XORL CX, CX						
  control_controller.go:70	0xe769ac		4889cf			MOVQ CX, DI						
  control_controller.go:70	0xe769af		e8ec32faff		CALL CAS-Backend/pkg/agvcontrol.SendMotionCommand(SB)	
  control_controller.go:70	0xe769b4		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  control_controller.go:70	0xe769b8		5d			POPQ BP							
  control_controller.go:70	0xe769b9		c3			RET							
  control_controller.go:69	0xe769ba		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:69	0xe769bf		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:69	0xe769c4		e897fa5fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:69	0xe769c9		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:69	0xe769ce		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:69	0xe769d3		ebab			JMP CAS-Backend/biz/controller.Move_forword.func1(SB)	
  :-1				0xe769d5		cc			INT $__subsystem__(SB)					
  :-1				0xe769d6		cc			INT $__subsystem__(SB)					
  :-1				0xe769d7		cc			INT $__subsystem__(SB)					
  :-1				0xe769d8		cc			INT $__subsystem__(SB)					
  :-1				0xe769d9		cc			INT $__subsystem__(SB)					
  :-1				0xe769da		cc			INT $__subsystem__(SB)					
  :-1				0xe769db		cc			INT $__subsystem__(SB)					
  :-1				0xe769dc		cc			INT $__subsystem__(SB)					
  :-1				0xe769dd		cc			INT $__subsystem__(SB)					
  :-1				0xe769de		cc			INT $__subsystem__(SB)					
  :-1				0xe769df		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Move_back(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:104	0xe769e0		4c8d6424a0		LEAQ -0x60(SP), R12								
  control_controller.go:104	0xe769e5		4d3b6610		CMPQ R12, 0x10(R14)								
  control_controller.go:104	0xe769e9		0f86b6030000		JBE 0xe76da5									
  control_controller.go:104	0xe769ef		55			PUSHQ BP									
  control_controller.go:104	0xe769f0		4889e5			MOVQ SP, BP									
  control_controller.go:104	0xe769f3		4881ecd8000000		SUBQ $.file+139(SB), SP								
  context.go:712		0xe769fa		48898424e8000000	MOVQ AX, 0xe8(SP)								
  control_controller.go:105	0xe76a02		488d1517bf1c00		LEAQ runtime.types+383264(SB), DX						
  control_controller.go:105	0xe76a09		48899424b0000000	MOVQ DX, 0xb0(SP)								
  control_controller.go:105	0xe76a11		4c8d05e81dff01		LEAQ CAS-Backend/biz/controller..stmp_5(SB), R8					
  control_controller.go:105	0xe76a18		4c898424b8000000	MOVQ R8, 0xb8(SP)								
  print.go:314			0xe76a20		488b1d59b66902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe76a27		488d8c24b0000000	LEAQ 0xb0(SP), CX								
  print.go:314			0xe76a2f		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe76a34		4889fe			MOVQ DI, SI									
  print.go:314			0xe76a37		488d05a250ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe76a3e		6690			NOPW										
  print.go:314			0xe76a40		e81b8e6aff		CALL fmt.Fprintln(SB)								
  control_controller.go:106	0xe76a45		488d05d47a2a00		LEAQ runtime.types+1283360(SB), AX						
  control_controller.go:106	0xe76a4c		e84fad59ff		CALL runtime.newobject(SB)							
  control_controller.go:106	0xe76a51		48898424d0000000	MOVQ AX, 0xd0(SP)								
  context.go:712		0xe76a59		488b15800d1400		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), DX				
  context.go:712		0xe76a60		4c8b05810d1400		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), R8				
  context.go:712		0xe76a67		4885d2			TESTQ DX, DX									
  context.go:712		0xe76a6a		7419			JE 0xe76a85									
  context.go:712		0xe76a6c		488b5a08		MOVQ 0x8(DX), BX								
  context.go:712		0xe76a70		488b3559451400		MOVQ CAS-Backend/biz/controller..typeAssert.1(SB), SI				
  context.go:712		0xe76a77		4c8b0e			MOVQ 0(SI), R9									
  context.go:712		0xe76a7a		8b5210			MOVL 0x10(DX), DX								
  context.go:712		0xe76a7d		0f1f00			NOPL 0(AX)									
  context.go:712		0xe76a80		e9cd020000		JMP 0xe76d52									
  context.go:752		0xe76a85		488b5218		MOVQ 0x18(DX), DX								
  context.go:752		0xe76a89		488bb424e8000000	MOVQ 0xe8(SP), SI								
  context.go:752		0xe76a91		488b5e20		MOVQ 0x20(SI), BX								
  context.go:752		0xe76a95		488d0dc4fa1a00		LEAQ runtime.types+267616(SB), CX						
  context.go:752		0xe76a9c		4889c7			MOVQ AX, DI									
  context.go:752		0xe76a9f		4c89c0			MOVQ R8, AX									
  context.go:752		0xe76aa2		ffd2			CALL DX										
  control_controller.go:108	0xe76aa4		4885c0			TESTQ AX, AX									
  control_controller.go:108	0xe76aa7		0f859c000000		JNE 0xe76b49									
  control_controller.go:114	0xe76aad		440f11bc2490000000	MOVUPS X15, 0x90(SP)								
  control_controller.go:114	0xe76ab6		488d05637a2a00		LEAQ runtime.types+1283360(SB), AX						
  control_controller.go:114	0xe76abd		488b9c24d0000000	MOVQ 0xd0(SP), BX								
  control_controller.go:114	0xe76ac5		e8d68559ff		CALL runtime.convT(SB)								
  control_controller.go:114	0xe76aca		488d0d4f7a2a00		LEAQ runtime.types+1283360(SB), CX						
  control_controller.go:114	0xe76ad1		48898c2490000000	MOVQ CX, 0x90(SP)								
  control_controller.go:114	0xe76ad9		4889842498000000	MOVQ AX, 0x98(SP)								
  print.go:314			0xe76ae1		488b1d98b56902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe76ae8		488d05f14fff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe76aef		488d8c2490000000	LEAQ 0x90(SP), CX								
  print.go:314			0xe76af7		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe76afc		4889fe			MOVQ DI, SI									
  print.go:314			0xe76aff		90			NOPL										
  print.go:314			0xe76b00		e85b8d6aff		CALL fmt.Fprintln(SB)								
  control_controller.go:116	0xe76b05		488b8c24d0000000	MOVQ 0xd0(SP), CX								
  control_controller.go:116	0xe76b0d		f20f104128		MOVSD_XMM 0x28(CX), X0								
  control_controller.go:116	0xe76b12		0f57c9			XORPS X1, X1									
  control_controller.go:116	0xe76b15		660f2ec1		UCOMISD X1, X0									
  control_controller.go:116	0xe76b19		750f			JNE 0xe76b2a									
  control_controller.go:116	0xe76b1b		7a0d			JP 0xe76b2a									
  control_controller.go:117	0xe76b1d		f20f1005430dff01	MOVSD_XMM $f64.3fd3333333333333(SB), X0						
  control_controller.go:117	0xe76b25		f20f114128		MOVSD_XMM X0, 0x28(CX)								
  control_controller.go:120	0xe76b2a		4883792001		CMPQ 0x20(CX), $__minor_os_version__(SB)					
  control_controller.go:120	0xe76b2f		750c			JNE 0xe76b3d									
  control_controller.go:121	0xe76b31		c6057d676e0201		MOVB $__minor_os_version__(SB), CAS-Backend/biz/controller.is_backword(SB)	
  control_controller.go:121	0xe76b38		e9c6000000		JMP 0xe76c03									
  control_controller.go:123	0xe76b3d		c60571676e0200		MOVB $0x0, CAS-Backend/biz/controller.is_backword(SB)				
  control_controller.go:123	0xe76b44		e9ba000000		JMP 0xe76c03									
  context.go:752		0xe76b49		4889442438		MOVQ AX, 0x38(SP)								
  context.go:752		0xe76b4e		48895c2440		MOVQ BX, 0x40(SP)								
  control_controller.go:109	0xe76b53		488d15c6bd1c00		LEAQ runtime.types+383264(SB), DX						
  control_controller.go:109	0xe76b5a		48899424a0000000	MOVQ DX, 0xa0(SP)								
  control_controller.go:109	0xe76b62		488d15671cff01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX					
  control_controller.go:109	0xe76b69		48899424a8000000	MOVQ DX, 0xa8(SP)								
  print.go:314			0xe76b71		488b1d08b56902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe76b78		488d05614fff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe76b7f		488d8c24a0000000	LEAQ 0xa0(SP), CX								
  print.go:314			0xe76b87		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe76b8c		4889fe			MOVQ DI, SI									
  print.go:314			0xe76b8f		e8cc8c6aff		CALL fmt.Fprintln(SB)								
  control_controller.go:110	0xe76b94		488b8424e8000000	MOVQ 0xe8(SP), AX								
  control_controller.go:110	0xe76b9c		bb90010000		MOVL $.file+323(SB), BX								
  control_controller.go:110	0xe76ba1		488b4c2438		MOVQ 0x38(SP), CX								
  control_controller.go:110	0xe76ba6		488b7c2440		MOVQ 0x40(SP), DI								
  control_controller.go:110	0xe76bab		e8f044f8ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)			
  control_controller.go:111	0xe76bb0		4881c4d8000000		ADDQ $.file+139(SB), SP								
  control_controller.go:111	0xe76bb7		5d			POPQ BP										
  control_controller.go:111	0xe76bb8		c3			RET										
  control_controller.go:175	0xe76bb9		488d1560bd1c00		LEAQ runtime.types+383264(SB), DX						
  control_controller.go:175	0xe76bc0		4889542470		MOVQ DX, 0x70(SP)								
  control_controller.go:175	0xe76bc5		4c8d05141cff01		LEAQ CAS-Backend/biz/controller..stmp_3(SB), R8					
  control_controller.go:175	0xe76bcc		4c89442478		MOVQ R8, 0x78(SP)								
  print.go:314			0xe76bd1		488b1da8b46902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe76bd8		488d05014fff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe76bdf		488d4c2470		LEAQ 0x70(SP), CX								
  print.go:314			0xe76be4		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe76be9		4889fe			MOVQ DI, SI									
  print.go:314			0xe76bec		e86f8c6aff		CALL fmt.Fprintln(SB)								
  control_controller.go:179	0xe76bf1		b800ca9a3b		MOVL $0x3b9aca00, AX								
  control_controller.go:179	0xe76bf6		e845d55fff		CALL time.Sleep(SB)								
  control_controller.go:168	0xe76bfb		488b8c24d0000000	MOVQ 0xd0(SP), CX								
  control_controller.go:165	0xe76c03		803dab666e0200		CMPB CAS-Backend/biz/controller.is_backword(SB), $0x0				
  control_controller.go:165	0xe76c0a		0f8496000000		JE 0xe76ca6									
  control_controller.go:168	0xe76c10		488d15a9010000		LEAQ CAS-Backend/biz/controller.Move_back.func1(SB), DX				
  control_controller.go:168	0xe76c17		48899424c0000000	MOVQ DX, 0xc0(SP)								
  control_controller.go:168	0xe76c1f		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  control_controller.go:168	0xe76c27		488b4110		MOVQ 0x10(CX), AX								
  control_controller.go:168	0xe76c2b		488b5918		MOVQ 0x18(CX), BX								
  control_controller.go:168	0xe76c2f		488dbc24c0000000	LEAQ 0xc0(SP), DI								
  control_controller.go:168	0xe76c37		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX					
  control_controller.go:168	0xe76c3c		0f1f4000		NOPL 0(AX)									
  control_controller.go:168	0xe76c40		e8bbc9f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)					
  control_controller.go:171	0xe76c45		4885c0			TESTQ AX, AX									
  control_controller.go:171	0xe76c48		0f846bffffff		JE 0xe76bb9									
  control_controller.go:172	0xe76c4e		440f11bc2480000000	MOVUPS X15, 0x80(SP)								
  control_controller.go:172	0xe76c57		7404			JE 0xe76c5d									
  control_controller.go:172	0xe76c59		488b4008		MOVQ 0x8(AX), AX								
  control_controller.go:172	0xe76c5d		4889842480000000	MOVQ AX, 0x80(SP)								
  control_controller.go:172	0xe76c65		48899c2488000000	MOVQ BX, 0x88(SP)								
  print.go:233			0xe76c6d		488b1d0cb46902		MOVQ os.Stdout(SB), BX								
  print.go:233			0xe76c74		488d05654eff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233			0xe76c7b		488d0dbdce3000		LEAQ go:string.*+112183(SB), CX							
  print.go:233			0xe76c82		bf17000000		MOVL $__major_os_version__+17(SB), DI						
  print.go:233			0xe76c87		488db42480000000	LEAQ 0x80(SP), SI								
  print.go:233			0xe76c8f		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233			0xe76c95		4d89c1			MOVQ R8, R9									
  print.go:233			0xe76c98		e883856aff		CALL fmt.Fprintf(SB)								
  control_controller.go:173	0xe76c9d		4881c4d8000000		ADDQ $.file+139(SB), SP								
  control_controller.go:173	0xe76ca4		5d			POPQ BP										
  control_controller.go:173	0xe76ca5		c3			RET										
  control_controller.go:187	0xe76ca6		488b4110		MOVQ 0x10(CX), AX								
  control_controller.go:187	0xe76caa		488b5918		MOVQ 0x18(CX), BX								
  control_controller.go:187	0xe76cae		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX					
  control_controller.go:187	0xe76cb3		488d3de60ae601		LEAQ go:func.*+6072(SB), DI							
  control_controller.go:187	0xe76cba		e841c9f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)					
  control_controller.go:187	0xe76cbf		90			NOPL										
  control_controller.go:190	0xe76cc0		4885c0			TESTQ AX, AX									
  control_controller.go:190	0xe76cc3		744c			JE 0xe76d11									
  control_controller.go:191	0xe76cc5		440f117c2460		MOVUPS X15, 0x60(SP)								
  control_controller.go:191	0xe76ccb		7404			JE 0xe76cd1									
  control_controller.go:191	0xe76ccd		488b4008		MOVQ 0x8(AX), AX								
  control_controller.go:191	0xe76cd1		4889442460		MOVQ AX, 0x60(SP)								
  control_controller.go:191	0xe76cd6		48895c2468		MOVQ BX, 0x68(SP)								
  print.go:233			0xe76cdb		488b1d9eb36902		MOVQ os.Stdout(SB), BX								
  print.go:233			0xe76ce2		488d05f74dff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233			0xe76ce9		488d0d4fce3000		LEAQ go:string.*+112183(SB), CX							
  print.go:233			0xe76cf0		bf17000000		MOVL $__major_os_version__+17(SB), DI						
  print.go:233			0xe76cf5		488d742460		LEAQ 0x60(SP), SI								
  print.go:233			0xe76cfa		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233			0xe76d00		4d89c1			MOVQ R8, R9									
  print.go:233			0xe76d03		e818856aff		CALL fmt.Fprintf(SB)								
  control_controller.go:192	0xe76d08		4881c4d8000000		ADDQ $.file+139(SB), SP								
  control_controller.go:192	0xe76d0f		5d			POPQ BP										
  control_controller.go:192	0xe76d10		c3			RET										
  control_controller.go:194	0xe76d11		488d1508bc1c00		LEAQ runtime.types+383264(SB), DX						
  control_controller.go:194	0xe76d18		4889542450		MOVQ DX, 0x50(SP)								
  control_controller.go:194	0xe76d1d		488d15cc1aff01		LEAQ CAS-Backend/biz/controller..stmp_4(SB), DX					
  control_controller.go:194	0xe76d24		4889542458		MOVQ DX, 0x58(SP)								
  print.go:314			0xe76d29		488b1d50b36902		MOVQ os.Stdout(SB), BX								
  print.go:314			0xe76d30		488d05a94dff01		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314			0xe76d37		488d4c2450		LEAQ 0x50(SP), CX								
  print.go:314			0xe76d3c		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314			0xe76d41		4889fe			MOVQ DI, SI									
  print.go:314			0xe76d44		e8178b6aff		CALL fmt.Fprintln(SB)								
  control_controller.go:200	0xe76d49		4881c4d8000000		ADDQ $.file+139(SB), SP								
  control_controller.go:200	0xe76d50		5d			POPQ BP										
  control_controller.go:200	0xe76d51		c3			RET										
  context.go:712		0xe76d52		4989d2			MOVQ DX, R10									
  context.go:712		0xe76d55		4c21ca			ANDQ R9, DX									
  context.go:712		0xe76d58		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  context.go:712		0xe76d5c		4c8b5c3208		MOVQ 0x8(DX)(SI*1), R11								
  context.go:712		0xe76d61		4939db			CMPQ R11, BX									
  context.go:712		0xe76d64		7434			JE 0xe76d9a									
  context.go:712		0xe76d66		498d5201		LEAQ 0x1(R10), DX								
  context.go:712		0xe76d6a		4d85db			TESTQ R11, R11									
  context.go:712		0xe76d6d		75e3			JNE 0xe76d52									
  context.go:712		0xe76d6f		4c89442448		MOVQ R8, 0x48(SP)								
  context.go:712		0xe76d74		488d0555421400		LEAQ CAS-Backend/biz/controller..typeAssert.1(SB), AX				
  context.go:712		0xe76d7b		0f1f440000		NOPL 0(AX)(AX*1)								
  context.go:712		0xe76d80		e85b8559ff		CALL runtime.typeAssert(SB)							
  context.go:752		0xe76d85		4c8b442448		MOVQ 0x48(SP), R8								
  context.go:712		0xe76d8a		4889c2			MOVQ AX, DX									
  context.go:752		0xe76d8d		488b8424d0000000	MOVQ 0xd0(SP), AX								
  context.go:712		0xe76d95		e9ebfcffff		JMP 0xe76a85									
  context.go:712		0xe76d9a		488b543210		MOVQ 0x10(DX)(SI*1), DX								
  context.go:712		0xe76d9f		90			NOPL										
  context.go:712		0xe76da0		e9e0fcffff		JMP 0xe76a85									
  control_controller.go:104	0xe76da5		4889442408		MOVQ AX, 0x8(SP)								
  control_controller.go:104	0xe76daa		e831f75fff		CALL runtime.morestack_noctxt.abi0(SB)						
  control_controller.go:104	0xe76daf		488b442408		MOVQ 0x8(SP), AX								
  control_controller.go:104	0xe76db4		e927fcffff		JMP CAS-Backend/biz/controller.Move_back(SB)					
  :-1				0xe76db9		cc			INT $__subsystem__(SB)								
  :-1				0xe76dba		cc			INT $__subsystem__(SB)								
  :-1				0xe76dbb		cc			INT $__subsystem__(SB)								
  :-1				0xe76dbc		cc			INT $__subsystem__(SB)								
  :-1				0xe76dbd		cc			INT $__subsystem__(SB)								
  :-1				0xe76dbe		cc			INT $__subsystem__(SB)								
  :-1				0xe76dbf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/biz/controller.Move_back.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:168	0xe76dc0		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:168	0xe76dc4		7645			JBE 0xe76e0b						
  control_controller.go:168	0xe76dc6		55			PUSHQ BP						
  control_controller.go:168	0xe76dc7		4889e5			MOVQ SP, BP						
  control_controller.go:168	0xe76dca		4883ec40		SUBQ $__major_os_version__+58(SB), SP			
  control_controller.go:168	0xe76dce		4889442450		MOVQ AX, 0x50(SP)					
  control_controller.go:168	0xe76dd3		48895c2458		MOVQ BX, 0x58(SP)					
  control_controller.go:168	0xe76dd8		488b5208		MOVQ 0x8(DX), DX					
  control_controller.go:169	0xe76ddc		f20f104228		MOVSD_XMM 0x28(DX), X0					
  control_controller.go:169	0xe76de1		f20f10258f0bff01	MOVSD_XMM $f64.8000000000000000(SB), X4			
  control_controller.go:169	0xe76de9		660fefc4		PXOR X4, X0						
  control_controller.go:169	0xe76ded		0f57c9			XORPS X1, X1						
  control_controller.go:169	0xe76df0		0f10d1			MOVUPS X1, X2						
  control_controller.go:169	0xe76df3		0f10d9			MOVUPS X1, X3						
  control_controller.go:169	0xe76df6		31c9			XORL CX, CX						
  control_controller.go:169	0xe76df8		4889cf			MOVQ CX, DI						
  control_controller.go:169	0xe76dfb		0f1f440000		NOPL 0(AX)(AX*1)					
  control_controller.go:169	0xe76e00		e89b2efaff		CALL CAS-Backend/pkg/agvcontrol.SendMotionCommand(SB)	
  control_controller.go:169	0xe76e05		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  control_controller.go:169	0xe76e09		5d			POPQ BP							
  control_controller.go:169	0xe76e0a		c3			RET							
  control_controller.go:168	0xe76e0b		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:168	0xe76e10		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:168	0xe76e15		e846f65fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:168	0xe76e1a		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:168	0xe76e1f		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:168	0xe76e24		eb9a			JMP CAS-Backend/biz/controller.Move_back.func1(SB)	
  :-1				0xe76e26		cc			INT $__subsystem__(SB)					
  :-1				0xe76e27		cc			INT $__subsystem__(SB)					
  :-1				0xe76e28		cc			INT $__subsystem__(SB)					
  :-1				0xe76e29		cc			INT $__subsystem__(SB)					
  :-1				0xe76e2a		cc			INT $__subsystem__(SB)					
  :-1				0xe76e2b		cc			INT $__subsystem__(SB)					
  :-1				0xe76e2c		cc			INT $__subsystem__(SB)					
  :-1				0xe76e2d		cc			INT $__subsystem__(SB)					
  :-1				0xe76e2e		cc			INT $__subsystem__(SB)					
  :-1				0xe76e2f		cc			INT $__subsystem__(SB)					
  :-1				0xe76e30		cc			INT $__subsystem__(SB)					
  :-1				0xe76e31		cc			INT $__subsystem__(SB)					
  :-1				0xe76e32		cc			INT $__subsystem__(SB)					
  :-1				0xe76e33		cc			INT $__subsystem__(SB)					
  :-1				0xe76e34		cc			INT $__subsystem__(SB)					
  :-1				0xe76e35		cc			INT $__subsystem__(SB)					
  :-1				0xe76e36		cc			INT $__subsystem__(SB)					
  :-1				0xe76e37		cc			INT $__subsystem__(SB)					
  :-1				0xe76e38		cc			INT $__subsystem__(SB)					
  :-1				0xe76e39		cc			INT $__subsystem__(SB)					
  :-1				0xe76e3a		cc			INT $__subsystem__(SB)					
  :-1				0xe76e3b		cc			INT $__subsystem__(SB)					
  :-1				0xe76e3c		cc			INT $__subsystem__(SB)					
  :-1				0xe76e3d		cc			INT $__subsystem__(SB)					
  :-1				0xe76e3e		cc			INT $__subsystem__(SB)					
  :-1				0xe76e3f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Turn_right(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:202	0xe76e40		4c8d642490		LEAQ -0x70(SP), R12							
  control_controller.go:202	0xe76e45		4d3b6610		CMPQ R12, 0x10(R14)							
  control_controller.go:202	0xe76e49		0f860f040000		JBE 0xe7725e								
  control_controller.go:202	0xe76e4f		55			PUSHQ BP								
  control_controller.go:202	0xe76e50		4889e5			MOVQ SP, BP								
  control_controller.go:202	0xe76e53		4881ece8000000		SUBQ $.file+155(SB), SP							
  context.go:712		0xe76e5a		48898424f8000000	MOVQ AX, 0xf8(SP)							
  control_controller.go:203	0xe76e62		488d15b7ba1c00		LEAQ runtime.types+383264(SB), DX					
  control_controller.go:203	0xe76e69		48899424c0000000	MOVQ DX, 0xc0(SP)							
  control_controller.go:203	0xe76e71		4c8d059819ff01		LEAQ CAS-Backend/biz/controller..stmp_9(SB), R8				
  control_controller.go:203	0xe76e78		4c898424c8000000	MOVQ R8, 0xc8(SP)							
  print.go:314			0xe76e80		488b1df9b16902		MOVQ os.Stdout(SB), BX							
  print.go:314			0xe76e87		488d8c24c0000000	LEAQ 0xc0(SP), CX							
  print.go:314			0xe76e8f		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe76e94		4889fe			MOVQ DI, SI								
  print.go:314			0xe76e97		488d05424cff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe76e9e		6690			NOPW									
  print.go:314			0xe76ea0		e8bb896aff		CALL fmt.Fprintln(SB)							
  control_controller.go:204	0xe76ea5		488d0574762a00		LEAQ runtime.types+1283360(SB), AX					
  control_controller.go:204	0xe76eac		e8efa859ff		CALL runtime.newobject(SB)						
  control_controller.go:204	0xe76eb1		48898424e0000000	MOVQ AX, 0xe0(SP)							
  context.go:712		0xe76eb9		488b1520091400		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), DX			
  context.go:712		0xe76ec0		4c8b0521091400		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), R8			
  context.go:712		0xe76ec7		4885d2			TESTQ DX, DX								
  context.go:712		0xe76eca		7419			JE 0xe76ee5								
  context.go:712		0xe76ecc		488b5a08		MOVQ 0x8(DX), BX							
  context.go:712		0xe76ed0		488b3519411400		MOVQ CAS-Backend/biz/controller..typeAssert.2(SB), SI			
  context.go:712		0xe76ed7		4c8b0e			MOVQ 0(SI), R9								
  context.go:712		0xe76eda		8b5210			MOVL 0x10(DX), DX							
  context.go:712		0xe76edd		0f1f00			NOPL 0(AX)								
  context.go:712		0xe76ee0		e92a030000		JMP 0xe7720f								
  context.go:752		0xe76ee5		488b5218		MOVQ 0x18(DX), DX							
  context.go:752		0xe76ee9		488bb424f8000000	MOVQ 0xf8(SP), SI							
  context.go:752		0xe76ef1		488b5e20		MOVQ 0x20(SI), BX							
  context.go:752		0xe76ef5		488d0d64f61a00		LEAQ runtime.types+267616(SB), CX					
  context.go:752		0xe76efc		4889c7			MOVQ AX, DI								
  context.go:752		0xe76eff		4c89c0			MOVQ R8, AX								
  context.go:752		0xe76f02		ffd2			CALL DX									
  control_controller.go:206	0xe76f04		4885c0			TESTQ AX, AX								
  control_controller.go:206	0xe76f07		0f85f8000000		JNE 0xe77005								
  control_controller.go:212	0xe76f0d		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)							
  control_controller.go:212	0xe76f16		488b8c24e0000000	MOVQ 0xe0(SP), CX							
  control_controller.go:212	0xe76f1e		f20f104128		MOVSD_XMM 0x28(CX), X0							
  control_controller.go:212	0xe76f23		66480f7ec0		MOVQ X0, AX								
  control_controller.go:212	0xe76f28		e873315fff		CALL runtime.convT64(SB)						
  control_controller.go:212	0xe76f2d		488d0dacbd1c00		LEAQ runtime.types+384224(SB), CX					
  control_controller.go:212	0xe76f34		48898c24a0000000	MOVQ CX, 0xa0(SP)							
  control_controller.go:212	0xe76f3c		48898424a8000000	MOVQ AX, 0xa8(SP)							
  print.go:233			0xe76f44		488b1d35b16902		MOVQ os.Stdout(SB), BX							
  print.go:233			0xe76f4b		488d058e4bff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe76f52		bf0f000000		MOVL $__major_os_version__+9(SB), DI					
  print.go:233			0xe76f57		488db424a0000000	LEAQ 0xa0(SP), SI							
  print.go:233			0xe76f5f		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe76f65		4d89c1			MOVQ R8, R9								
  print.go:233			0xe76f68		488d0d063a3000		LEAQ go:string.*+74861(SB), CX						
  print.go:233			0xe76f6f		e8ac826aff		CALL fmt.Fprintf(SB)							
  control_controller.go:213	0xe76f74		440f11bc2490000000	MOVUPS X15, 0x90(SP)							
  control_controller.go:213	0xe76f7d		488b8c24e0000000	MOVQ 0xe0(SP), CX							
  control_controller.go:213	0xe76f85		f20f104138		MOVSD_XMM 0x38(CX), X0							
  control_controller.go:213	0xe76f8a		66480f7ec0		MOVQ X0, AX								
  control_controller.go:213	0xe76f8f		e80c315fff		CALL runtime.convT64(SB)						
  control_controller.go:213	0xe76f94		488d0d45bd1c00		LEAQ runtime.types+384224(SB), CX					
  control_controller.go:213	0xe76f9b		48898c2490000000	MOVQ CX, 0x90(SP)							
  control_controller.go:213	0xe76fa3		4889842498000000	MOVQ AX, 0x98(SP)							
  print.go:233			0xe76fab		488b1dceb06902		MOVQ os.Stdout(SB), BX							
  print.go:233			0xe76fb2		488d05274bff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe76fb9		488d0dc4393000		LEAQ go:string.*+74876(SB), CX						
  print.go:233			0xe76fc0		bf0f000000		MOVL $__major_os_version__+9(SB), DI					
  print.go:233			0xe76fc5		488db42490000000	LEAQ 0x90(SP), SI							
  print.go:233			0xe76fcd		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe76fd3		4d89c1			MOVQ R8, R9								
  print.go:233			0xe76fd6		e845826aff		CALL fmt.Fprintf(SB)							
  control_controller.go:219	0xe76fdb		488b8c24e0000000	MOVQ 0xe0(SP), CX							
  control_controller.go:219	0xe76fe3		4883792001		CMPQ 0x20(CX), $__minor_os_version__(SB)				
  control_controller.go:219	0xe76fe8		750c			JNE 0xe76ff6								
  control_controller.go:220	0xe76fea		c605c5626e0201		MOVB $__minor_os_version__(SB), CAS-Backend/biz/controller.is_right(SB)	
  control_controller.go:220	0xe76ff1		e9c9000000		JMP 0xe770bf								
  control_controller.go:222	0xe76ff6		c605b9626e0200		MOVB $0x0, CAS-Backend/biz/controller.is_right(SB)			
  control_controller.go:222	0xe76ffd		0f1f00			NOPL 0(AX)								
  control_controller.go:222	0xe77000		e9ba000000		JMP 0xe770bf								
  context.go:752		0xe77005		4889442438		MOVQ AX, 0x38(SP)							
  context.go:752		0xe7700a		48895c2440		MOVQ BX, 0x40(SP)							
  control_controller.go:207	0xe7700f		488d150ab91c00		LEAQ runtime.types+383264(SB), DX					
  control_controller.go:207	0xe77016		48899424b0000000	MOVQ DX, 0xb0(SP)							
  control_controller.go:207	0xe7701e		488d15ab17ff01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX				
  control_controller.go:207	0xe77025		48899424b8000000	MOVQ DX, 0xb8(SP)							
  print.go:314			0xe7702d		488b1d4cb06902		MOVQ os.Stdout(SB), BX							
  print.go:314			0xe77034		488d05a54aff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe7703b		488d8c24b0000000	LEAQ 0xb0(SP), CX							
  print.go:314			0xe77043		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe77048		4889fe			MOVQ DI, SI								
  print.go:314			0xe7704b		e810886aff		CALL fmt.Fprintln(SB)							
  control_controller.go:208	0xe77050		488b8424f8000000	MOVQ 0xf8(SP), AX							
  control_controller.go:208	0xe77058		bb90010000		MOVL $.file+323(SB), BX							
  control_controller.go:208	0xe7705d		488b4c2438		MOVQ 0x38(SP), CX							
  control_controller.go:208	0xe77062		488b7c2440		MOVQ 0x40(SP), DI							
  control_controller.go:208	0xe77067		e83440f8ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)		
  control_controller.go:209	0xe7706c		4881c4e8000000		ADDQ $.file+155(SB), SP							
  control_controller.go:209	0xe77073		5d			POPQ BP									
  control_controller.go:209	0xe77074		c3			RET									
  control_controller.go:236	0xe77075		488d15a4b81c00		LEAQ runtime.types+383264(SB), DX					
  control_controller.go:236	0xe7707c		4889542470		MOVQ DX, 0x70(SP)							
  control_controller.go:236	0xe77081		4c8d055817ff01		LEAQ CAS-Backend/biz/controller..stmp_3(SB), R8				
  control_controller.go:236	0xe77088		4c89442478		MOVQ R8, 0x78(SP)							
  print.go:314			0xe7708d		488b1decaf6902		MOVQ os.Stdout(SB), BX							
  print.go:314			0xe77094		488d05454aff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe7709b		488d4c2470		LEAQ 0x70(SP), CX							
  print.go:314			0xe770a0		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe770a5		4889fe			MOVQ DI, SI								
  print.go:314			0xe770a8		e8b3876aff		CALL fmt.Fprintln(SB)							
  control_controller.go:240	0xe770ad		b800ca9a3b		MOVL $0x3b9aca00, AX							
  control_controller.go:240	0xe770b2		e889d05fff		CALL time.Sleep(SB)							
  control_controller.go:229	0xe770b7		488b8c24e0000000	MOVQ 0xe0(SP), CX							
  control_controller.go:226	0xe770bf		803df0616e0200		CMPB CAS-Backend/biz/controller.is_right(SB), $0x0			
  control_controller.go:226	0xe770c6		0f8495000000		JE 0xe77161								
  control_controller.go:229	0xe770cc		488d15ad010000		LEAQ CAS-Backend/biz/controller.Turn_right.func1(SB), DX		
  control_controller.go:229	0xe770d3		48899424d0000000	MOVQ DX, 0xd0(SP)							
  control_controller.go:229	0xe770db		48898c24d8000000	MOVQ CX, 0xd8(SP)							
  control_controller.go:229	0xe770e3		488b4110		MOVQ 0x10(CX), AX							
  control_controller.go:229	0xe770e7		488b5918		MOVQ 0x18(CX), BX							
  control_controller.go:229	0xe770eb		488dbc24d0000000	LEAQ 0xd0(SP), DI							
  control_controller.go:229	0xe770f3		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX				
  control_controller.go:229	0xe770f8		e803c5f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)				
  control_controller.go:229	0xe770fd		0f1f00			NOPL 0(AX)								
  control_controller.go:232	0xe77100		4885c0			TESTQ AX, AX								
  control_controller.go:232	0xe77103		0f846cffffff		JE 0xe77075								
  control_controller.go:233	0xe77109		440f11bc2480000000	MOVUPS X15, 0x80(SP)							
  control_controller.go:233	0xe77112		7404			JE 0xe77118								
  control_controller.go:233	0xe77114		488b4008		MOVQ 0x8(AX), AX							
  control_controller.go:233	0xe77118		4889842480000000	MOVQ AX, 0x80(SP)							
  control_controller.go:233	0xe77120		48899c2488000000	MOVQ BX, 0x88(SP)							
  print.go:233			0xe77128		488b1d51af6902		MOVQ os.Stdout(SB), BX							
  print.go:233			0xe7712f		488d05aa49ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe77136		488d0d02ca3000		LEAQ go:string.*+112183(SB), CX						
  print.go:233			0xe7713d		bf17000000		MOVL $__major_os_version__+17(SB), DI					
  print.go:233			0xe77142		488db42480000000	LEAQ 0x80(SP), SI							
  print.go:233			0xe7714a		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe77150		4d89c1			MOVQ R8, R9								
  print.go:233			0xe77153		e8c8806aff		CALL fmt.Fprintf(SB)							
  control_controller.go:234	0xe77158		4881c4e8000000		ADDQ $.file+155(SB), SP							
  control_controller.go:234	0xe7715f		5d			POPQ BP									
  control_controller.go:234	0xe77160		c3			RET									
  control_controller.go:248	0xe77161		488b4110		MOVQ 0x10(CX), AX							
  control_controller.go:248	0xe77165		488b5918		MOVQ 0x18(CX), BX							
  control_controller.go:248	0xe77169		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX				
  control_controller.go:248	0xe7716e		488d3d5306e601		LEAQ go:func.*+6112(SB), DI						
  control_controller.go:248	0xe77175		e886c4f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)				
  control_controller.go:251	0xe7717a		4885c0			TESTQ AX, AX								
  control_controller.go:251	0xe7717d		744f			JE 0xe771ce								
  control_controller.go:252	0xe7717f		440f117c2460		MOVUPS X15, 0x60(SP)							
  control_controller.go:252	0xe77185		7404			JE 0xe7718b								
  control_controller.go:252	0xe77187		488b4008		MOVQ 0x8(AX), AX							
  control_controller.go:252	0xe7718b		4889442460		MOVQ AX, 0x60(SP)							
  control_controller.go:252	0xe77190		48895c2468		MOVQ BX, 0x68(SP)							
  print.go:233			0xe77195		488b1de4ae6902		MOVQ os.Stdout(SB), BX							
  print.go:233			0xe7719c		488d053d49ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe771a3		488d0d95c93000		LEAQ go:string.*+112183(SB), CX						
  print.go:233			0xe771aa		bf17000000		MOVL $__major_os_version__+17(SB), DI					
  print.go:233			0xe771af		488d742460		LEAQ 0x60(SP), SI							
  print.go:233			0xe771b4		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe771ba		4d89c1			MOVQ R8, R9								
  print.go:233			0xe771bd		0f1f00			NOPL 0(AX)								
  print.go:233			0xe771c0		e85b806aff		CALL fmt.Fprintf(SB)							
  control_controller.go:253	0xe771c5		4881c4e8000000		ADDQ $.file+155(SB), SP							
  control_controller.go:253	0xe771cc		5d			POPQ BP									
  control_controller.go:253	0xe771cd		c3			RET									
  control_controller.go:255	0xe771ce		488d154bb71c00		LEAQ runtime.types+383264(SB), DX					
  control_controller.go:255	0xe771d5		4889542450		MOVQ DX, 0x50(SP)							
  control_controller.go:255	0xe771da		488d150f16ff01		LEAQ CAS-Backend/biz/controller..stmp_4(SB), DX				
  control_controller.go:255	0xe771e1		4889542458		MOVQ DX, 0x58(SP)							
  print.go:314			0xe771e6		488b1d93ae6902		MOVQ os.Stdout(SB), BX							
  print.go:314			0xe771ed		488d05ec48ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe771f4		488d4c2450		LEAQ 0x50(SP), CX							
  print.go:314			0xe771f9		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe771fe		4889fe			MOVQ DI, SI								
  print.go:314			0xe77201		e85a866aff		CALL fmt.Fprintln(SB)							
  control_controller.go:262	0xe77206		4881c4e8000000		ADDQ $.file+155(SB), SP							
  control_controller.go:262	0xe7720d		5d			POPQ BP									
  control_controller.go:262	0xe7720e		c3			RET									
  context.go:712		0xe7720f		4989d2			MOVQ DX, R10								
  context.go:712		0xe77212		4c21ca			ANDQ R9, DX								
  context.go:712		0xe77215		48c1e204		SHLQ $__subsystem__+1(SB), DX						
  context.go:712		0xe77219		4c8b5c3208		MOVQ 0x8(DX)(SI*1), R11							
  context.go:712		0xe7721e		6690			NOPW									
  context.go:712		0xe77220		4939db			CMPQ R11, BX								
  context.go:712		0xe77223		742f			JE 0xe77254								
  context.go:712		0xe77225		498d5201		LEAQ 0x1(R10), DX							
  context.go:712		0xe77229		4d85db			TESTQ R11, R11								
  context.go:712		0xe7722c		75e1			JNE 0xe7720f								
  context.go:712		0xe7722e		4c89442448		MOVQ R8, 0x48(SP)							
  context.go:712		0xe77233		488d05b63d1400		LEAQ CAS-Backend/biz/controller..typeAssert.2(SB), AX			
  context.go:712		0xe7723a		e8a18059ff		CALL runtime.typeAssert(SB)						
  context.go:752		0xe7723f		4c8b442448		MOVQ 0x48(SP), R8							
  context.go:712		0xe77244		4889c2			MOVQ AX, DX								
  context.go:752		0xe77247		488b8424e0000000	MOVQ 0xe0(SP), AX							
  context.go:712		0xe7724f		e991fcffff		JMP 0xe76ee5								
  context.go:712		0xe77254		488b543210		MOVQ 0x10(DX)(SI*1), DX							
  context.go:712		0xe77259		e987fcffff		JMP 0xe76ee5								
  control_controller.go:202	0xe7725e		4889442408		MOVQ AX, 0x8(SP)							
  control_controller.go:202	0xe77263		e878f25fff		CALL runtime.morestack_noctxt.abi0(SB)					
  control_controller.go:202	0xe77268		488b442408		MOVQ 0x8(SP), AX							
  control_controller.go:202	0xe7726d		e9cefbffff		JMP CAS-Backend/biz/controller.Turn_right(SB)				
  :-1				0xe77272		cc			INT $__subsystem__(SB)							
  :-1				0xe77273		cc			INT $__subsystem__(SB)							
  :-1				0xe77274		cc			INT $__subsystem__(SB)							
  :-1				0xe77275		cc			INT $__subsystem__(SB)							
  :-1				0xe77276		cc			INT $__subsystem__(SB)							
  :-1				0xe77277		cc			INT $__subsystem__(SB)							
  :-1				0xe77278		cc			INT $__subsystem__(SB)							
  :-1				0xe77279		cc			INT $__subsystem__(SB)							
  :-1				0xe7727a		cc			INT $__subsystem__(SB)							
  :-1				0xe7727b		cc			INT $__subsystem__(SB)							
  :-1				0xe7727c		cc			INT $__subsystem__(SB)							
  :-1				0xe7727d		cc			INT $__subsystem__(SB)							
  :-1				0xe7727e		cc			INT $__subsystem__(SB)							
  :-1				0xe7727f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.Turn_right.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:229	0xe77280		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:229	0xe77284		7646			JBE 0xe772cc						
  control_controller.go:229	0xe77286		55			PUSHQ BP						
  control_controller.go:229	0xe77287		4889e5			MOVQ SP, BP						
  control_controller.go:229	0xe7728a		4883ec40		SUBQ $__major_os_version__+58(SB), SP			
  control_controller.go:229	0xe7728e		4889442450		MOVQ AX, 0x50(SP)					
  control_controller.go:229	0xe77293		48895c2458		MOVQ BX, 0x58(SP)					
  control_controller.go:229	0xe77298		488b5208		MOVQ 0x8(DX), DX					
  control_controller.go:230	0xe7729c		f20f104228		MOVSD_XMM 0x28(DX), X0					
  control_controller.go:230	0xe772a1		f20f105238		MOVSD_XMM 0x38(DX), X2					
  control_controller.go:230	0xe772a6		f20f1025ca06ff01	MOVSD_XMM $f64.8000000000000000(SB), X4			
  control_controller.go:230	0xe772ae		660fefd4		PXOR X4, X2						
  control_controller.go:230	0xe772b2		0f57c9			XORPS X1, X1						
  control_controller.go:230	0xe772b5		0f10d9			MOVUPS X1, X3						
  control_controller.go:230	0xe772b8		48c7c1ffffffff		MOVQ $-0x1, CX						
  control_controller.go:230	0xe772bf		31ff			XORL DI, DI						
  control_controller.go:230	0xe772c1		e8da29faff		CALL CAS-Backend/pkg/agvcontrol.SendMotionCommand(SB)	
  control_controller.go:230	0xe772c6		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  control_controller.go:230	0xe772ca		5d			POPQ BP							
  control_controller.go:230	0xe772cb		c3			RET							
  control_controller.go:229	0xe772cc		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:229	0xe772d1		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:229	0xe772d6		e885f15fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:229	0xe772db		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:229	0xe772e0		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:229	0xe772e5		eb99			JMP CAS-Backend/biz/controller.Turn_right.func1(SB)	
  :-1				0xe772e7		cc			INT $__subsystem__(SB)					
  :-1				0xe772e8		cc			INT $__subsystem__(SB)					
  :-1				0xe772e9		cc			INT $__subsystem__(SB)					
  :-1				0xe772ea		cc			INT $__subsystem__(SB)					
  :-1				0xe772eb		cc			INT $__subsystem__(SB)					
  :-1				0xe772ec		cc			INT $__subsystem__(SB)					
  :-1				0xe772ed		cc			INT $__subsystem__(SB)					
  :-1				0xe772ee		cc			INT $__subsystem__(SB)					
  :-1				0xe772ef		cc			INT $__subsystem__(SB)					
  :-1				0xe772f0		cc			INT $__subsystem__(SB)					
  :-1				0xe772f1		cc			INT $__subsystem__(SB)					
  :-1				0xe772f2		cc			INT $__subsystem__(SB)					
  :-1				0xe772f3		cc			INT $__subsystem__(SB)					
  :-1				0xe772f4		cc			INT $__subsystem__(SB)					
  :-1				0xe772f5		cc			INT $__subsystem__(SB)					
  :-1				0xe772f6		cc			INT $__subsystem__(SB)					
  :-1				0xe772f7		cc			INT $__subsystem__(SB)					
  :-1				0xe772f8		cc			INT $__subsystem__(SB)					
  :-1				0xe772f9		cc			INT $__subsystem__(SB)					
  :-1				0xe772fa		cc			INT $__subsystem__(SB)					
  :-1				0xe772fb		cc			INT $__subsystem__(SB)					
  :-1				0xe772fc		cc			INT $__subsystem__(SB)					
  :-1				0xe772fd		cc			INT $__subsystem__(SB)					
  :-1				0xe772fe		cc			INT $__subsystem__(SB)					
  :-1				0xe772ff		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Turn_left(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:264	0xe77300		4c8d642490		LEAQ -0x70(SP), R12							
  control_controller.go:264	0xe77305		4d3b6610		CMPQ R12, 0x10(R14)							
  control_controller.go:264	0xe77309		0f860f040000		JBE 0xe7771e								
  control_controller.go:264	0xe7730f		55			PUSHQ BP								
  control_controller.go:264	0xe77310		4889e5			MOVQ SP, BP								
  control_controller.go:264	0xe77313		4881ece8000000		SUBQ $.file+155(SB), SP							
  context.go:712		0xe7731a		48898424f8000000	MOVQ AX, 0xf8(SP)							
  control_controller.go:265	0xe77322		488d15f7b51c00		LEAQ runtime.types+383264(SB), DX					
  control_controller.go:265	0xe77329		48899424c0000000	MOVQ DX, 0xc0(SP)							
  control_controller.go:265	0xe77331		4c8d05e814ff01		LEAQ CAS-Backend/biz/controller..stmp_13(SB), R8			
  control_controller.go:265	0xe77338		4c898424c8000000	MOVQ R8, 0xc8(SP)							
  print.go:314			0xe77340		488b1d39ad6902		MOVQ os.Stdout(SB), BX							
  print.go:314			0xe77347		488d8c24c0000000	LEAQ 0xc0(SP), CX							
  print.go:314			0xe7734f		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe77354		4889fe			MOVQ DI, SI								
  print.go:314			0xe77357		488d058247ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe7735e		6690			NOPW									
  print.go:314			0xe77360		e8fb846aff		CALL fmt.Fprintln(SB)							
  control_controller.go:266	0xe77365		488d05b4712a00		LEAQ runtime.types+1283360(SB), AX					
  control_controller.go:266	0xe7736c		e82fa459ff		CALL runtime.newobject(SB)						
  control_controller.go:266	0xe77371		48898424e0000000	MOVQ AX, 0xe0(SP)							
  context.go:712		0xe77379		488b1560041400		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), DX			
  context.go:712		0xe77380		4c8b0561041400		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), R8			
  context.go:712		0xe77387		4885d2			TESTQ DX, DX								
  context.go:712		0xe7738a		7419			JE 0xe773a5								
  context.go:712		0xe7738c		488b5a08		MOVQ 0x8(DX), BX							
  context.go:712		0xe77390		488b35793c1400		MOVQ CAS-Backend/biz/controller..typeAssert.3(SB), SI			
  context.go:712		0xe77397		4c8b0e			MOVQ 0(SI), R9								
  context.go:712		0xe7739a		8b5210			MOVL 0x10(DX), DX							
  context.go:712		0xe7739d		0f1f00			NOPL 0(AX)								
  context.go:712		0xe773a0		e92a030000		JMP 0xe776cf								
  context.go:752		0xe773a5		488b5218		MOVQ 0x18(DX), DX							
  context.go:752		0xe773a9		488bb424f8000000	MOVQ 0xf8(SP), SI							
  context.go:752		0xe773b1		488b5e20		MOVQ 0x20(SI), BX							
  context.go:752		0xe773b5		488d0da4f11a00		LEAQ runtime.types+267616(SB), CX					
  context.go:752		0xe773bc		4889c7			MOVQ AX, DI								
  context.go:752		0xe773bf		4c89c0			MOVQ R8, AX								
  context.go:752		0xe773c2		ffd2			CALL DX									
  control_controller.go:268	0xe773c4		4885c0			TESTQ AX, AX								
  control_controller.go:268	0xe773c7		0f85f8000000		JNE 0xe774c5								
  control_controller.go:274	0xe773cd		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)							
  control_controller.go:274	0xe773d6		488b8c24e0000000	MOVQ 0xe0(SP), CX							
  control_controller.go:274	0xe773de		f20f104128		MOVSD_XMM 0x28(CX), X0							
  control_controller.go:274	0xe773e3		66480f7ec0		MOVQ X0, AX								
  control_controller.go:274	0xe773e8		e8b32c5fff		CALL runtime.convT64(SB)						
  control_controller.go:274	0xe773ed		488d0decb81c00		LEAQ runtime.types+384224(SB), CX					
  control_controller.go:274	0xe773f4		48898c24a0000000	MOVQ CX, 0xa0(SP)							
  control_controller.go:274	0xe773fc		48898424a8000000	MOVQ AX, 0xa8(SP)							
  print.go:233			0xe77404		488b1d75ac6902		MOVQ os.Stdout(SB), BX							
  print.go:233			0xe7740b		488d05ce46ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe77412		bf0f000000		MOVL $__major_os_version__+9(SB), DI					
  print.go:233			0xe77417		488db424a0000000	LEAQ 0xa0(SP), SI							
  print.go:233			0xe7741f		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe77425		4d89c1			MOVQ R8, R9								
  print.go:233			0xe77428		488d0d46353000		LEAQ go:string.*+74861(SB), CX						
  print.go:233			0xe7742f		e8ec7d6aff		CALL fmt.Fprintf(SB)							
  control_controller.go:275	0xe77434		440f11bc2490000000	MOVUPS X15, 0x90(SP)							
  control_controller.go:275	0xe7743d		488b8c24e0000000	MOVQ 0xe0(SP), CX							
  control_controller.go:275	0xe77445		f20f104138		MOVSD_XMM 0x38(CX), X0							
  control_controller.go:275	0xe7744a		66480f7ec0		MOVQ X0, AX								
  control_controller.go:275	0xe7744f		e84c2c5fff		CALL runtime.convT64(SB)						
  control_controller.go:275	0xe77454		488d0d85b81c00		LEAQ runtime.types+384224(SB), CX					
  control_controller.go:275	0xe7745b		48898c2490000000	MOVQ CX, 0x90(SP)							
  control_controller.go:275	0xe77463		4889842498000000	MOVQ AX, 0x98(SP)							
  print.go:233			0xe7746b		488b1d0eac6902		MOVQ os.Stdout(SB), BX							
  print.go:233			0xe77472		488d056746ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe77479		488d0d04353000		LEAQ go:string.*+74876(SB), CX						
  print.go:233			0xe77480		bf0f000000		MOVL $__major_os_version__+9(SB), DI					
  print.go:233			0xe77485		488db42490000000	LEAQ 0x90(SP), SI							
  print.go:233			0xe7748d		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe77493		4d89c1			MOVQ R8, R9								
  print.go:233			0xe77496		e8857d6aff		CALL fmt.Fprintf(SB)							
  control_controller.go:281	0xe7749b		488b8c24e0000000	MOVQ 0xe0(SP), CX							
  control_controller.go:281	0xe774a3		4883792001		CMPQ 0x20(CX), $__minor_os_version__(SB)				
  control_controller.go:281	0xe774a8		750c			JNE 0xe774b6								
  control_controller.go:282	0xe774aa		c605065e6e0201		MOVB $__minor_os_version__(SB), CAS-Backend/biz/controller.is_left(SB)	
  control_controller.go:282	0xe774b1		e9c9000000		JMP 0xe7757f								
  control_controller.go:284	0xe774b6		c605fa5d6e0200		MOVB $0x0, CAS-Backend/biz/controller.is_left(SB)			
  control_controller.go:284	0xe774bd		0f1f00			NOPL 0(AX)								
  control_controller.go:284	0xe774c0		e9ba000000		JMP 0xe7757f								
  context.go:752		0xe774c5		4889442438		MOVQ AX, 0x38(SP)							
  context.go:752		0xe774ca		48895c2440		MOVQ BX, 0x40(SP)							
  control_controller.go:269	0xe774cf		488d154ab41c00		LEAQ runtime.types+383264(SB), DX					
  control_controller.go:269	0xe774d6		48899424b0000000	MOVQ DX, 0xb0(SP)							
  control_controller.go:269	0xe774de		488d15eb12ff01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX				
  control_controller.go:269	0xe774e5		48899424b8000000	MOVQ DX, 0xb8(SP)							
  print.go:314			0xe774ed		488b1d8cab6902		MOVQ os.Stdout(SB), BX							
  print.go:314			0xe774f4		488d05e545ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe774fb		488d8c24b0000000	LEAQ 0xb0(SP), CX							
  print.go:314			0xe77503		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe77508		4889fe			MOVQ DI, SI								
  print.go:314			0xe7750b		e850836aff		CALL fmt.Fprintln(SB)							
  control_controller.go:270	0xe77510		488b8424f8000000	MOVQ 0xf8(SP), AX							
  control_controller.go:270	0xe77518		bb90010000		MOVL $.file+323(SB), BX							
  control_controller.go:270	0xe7751d		488b4c2438		MOVQ 0x38(SP), CX							
  control_controller.go:270	0xe77522		488b7c2440		MOVQ 0x40(SP), DI							
  control_controller.go:270	0xe77527		e8743bf8ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)		
  control_controller.go:271	0xe7752c		4881c4e8000000		ADDQ $.file+155(SB), SP							
  control_controller.go:271	0xe77533		5d			POPQ BP									
  control_controller.go:271	0xe77534		c3			RET									
  control_controller.go:298	0xe77535		488d15e4b31c00		LEAQ runtime.types+383264(SB), DX					
  control_controller.go:298	0xe7753c		4889542470		MOVQ DX, 0x70(SP)							
  control_controller.go:298	0xe77541		4c8d059812ff01		LEAQ CAS-Backend/biz/controller..stmp_3(SB), R8				
  control_controller.go:298	0xe77548		4c89442478		MOVQ R8, 0x78(SP)							
  print.go:314			0xe7754d		488b1d2cab6902		MOVQ os.Stdout(SB), BX							
  print.go:314			0xe77554		488d058545ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe7755b		488d4c2470		LEAQ 0x70(SP), CX							
  print.go:314			0xe77560		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe77565		4889fe			MOVQ DI, SI								
  print.go:314			0xe77568		e8f3826aff		CALL fmt.Fprintln(SB)							
  control_controller.go:302	0xe7756d		b800ca9a3b		MOVL $0x3b9aca00, AX							
  control_controller.go:302	0xe77572		e8c9cb5fff		CALL time.Sleep(SB)							
  control_controller.go:291	0xe77577		488b8c24e0000000	MOVQ 0xe0(SP), CX							
  control_controller.go:288	0xe7757f		803d315d6e0200		CMPB CAS-Backend/biz/controller.is_left(SB), $0x0			
  control_controller.go:288	0xe77586		0f8495000000		JE 0xe77621								
  control_controller.go:291	0xe7758c		488d15ad010000		LEAQ CAS-Backend/biz/controller.Turn_left.func1(SB), DX			
  control_controller.go:291	0xe77593		48899424d0000000	MOVQ DX, 0xd0(SP)							
  control_controller.go:291	0xe7759b		48898c24d8000000	MOVQ CX, 0xd8(SP)							
  control_controller.go:291	0xe775a3		488b4110		MOVQ 0x10(CX), AX							
  control_controller.go:291	0xe775a7		488b5918		MOVQ 0x18(CX), BX							
  control_controller.go:291	0xe775ab		488dbc24d0000000	LEAQ 0xd0(SP), DI							
  control_controller.go:291	0xe775b3		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX				
  control_controller.go:291	0xe775b8		e843c0f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)				
  control_controller.go:291	0xe775bd		0f1f00			NOPL 0(AX)								
  control_controller.go:294	0xe775c0		4885c0			TESTQ AX, AX								
  control_controller.go:294	0xe775c3		0f846cffffff		JE 0xe77535								
  control_controller.go:295	0xe775c9		440f11bc2480000000	MOVUPS X15, 0x80(SP)							
  control_controller.go:295	0xe775d2		7404			JE 0xe775d8								
  control_controller.go:295	0xe775d4		488b4008		MOVQ 0x8(AX), AX							
  control_controller.go:295	0xe775d8		4889842480000000	MOVQ AX, 0x80(SP)							
  control_controller.go:295	0xe775e0		48899c2488000000	MOVQ BX, 0x88(SP)							
  print.go:233			0xe775e8		488b1d91aa6902		MOVQ os.Stdout(SB), BX							
  print.go:233			0xe775ef		488d05ea44ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe775f6		488d0d42c53000		LEAQ go:string.*+112183(SB), CX						
  print.go:233			0xe775fd		bf17000000		MOVL $__major_os_version__+17(SB), DI					
  print.go:233			0xe77602		488db42480000000	LEAQ 0x80(SP), SI							
  print.go:233			0xe7760a		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe77610		4d89c1			MOVQ R8, R9								
  print.go:233			0xe77613		e8087c6aff		CALL fmt.Fprintf(SB)							
  control_controller.go:296	0xe77618		4881c4e8000000		ADDQ $.file+155(SB), SP							
  control_controller.go:296	0xe7761f		5d			POPQ BP									
  control_controller.go:296	0xe77620		c3			RET									
  control_controller.go:310	0xe77621		488b4110		MOVQ 0x10(CX), AX							
  control_controller.go:310	0xe77625		488b5918		MOVQ 0x18(CX), BX							
  control_controller.go:310	0xe77629		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX				
  control_controller.go:310	0xe7762e		488d3d8b01e601		LEAQ go:func.*+6104(SB), DI						
  control_controller.go:310	0xe77635		e8c6bff9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)				
  control_controller.go:313	0xe7763a		4885c0			TESTQ AX, AX								
  control_controller.go:313	0xe7763d		744f			JE 0xe7768e								
  control_controller.go:314	0xe7763f		440f117c2460		MOVUPS X15, 0x60(SP)							
  control_controller.go:314	0xe77645		7404			JE 0xe7764b								
  control_controller.go:314	0xe77647		488b4008		MOVQ 0x8(AX), AX							
  control_controller.go:314	0xe7764b		4889442460		MOVQ AX, 0x60(SP)							
  control_controller.go:314	0xe77650		48895c2468		MOVQ BX, 0x68(SP)							
  print.go:233			0xe77655		488b1d24aa6902		MOVQ os.Stdout(SB), BX							
  print.go:233			0xe7765c		488d057d44ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe77663		488d0dd5c43000		LEAQ go:string.*+112183(SB), CX						
  print.go:233			0xe7766a		bf17000000		MOVL $__major_os_version__+17(SB), DI					
  print.go:233			0xe7766f		488d742460		LEAQ 0x60(SP), SI							
  print.go:233			0xe77674		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe7767a		4d89c1			MOVQ R8, R9								
  print.go:233			0xe7767d		0f1f00			NOPL 0(AX)								
  print.go:233			0xe77680		e89b7b6aff		CALL fmt.Fprintf(SB)							
  control_controller.go:315	0xe77685		4881c4e8000000		ADDQ $.file+155(SB), SP							
  control_controller.go:315	0xe7768c		5d			POPQ BP									
  control_controller.go:315	0xe7768d		c3			RET									
  control_controller.go:317	0xe7768e		488d158bb21c00		LEAQ runtime.types+383264(SB), DX					
  control_controller.go:317	0xe77695		4889542450		MOVQ DX, 0x50(SP)							
  control_controller.go:317	0xe7769a		488d154f11ff01		LEAQ CAS-Backend/biz/controller..stmp_4(SB), DX				
  control_controller.go:317	0xe776a1		4889542458		MOVQ DX, 0x58(SP)							
  print.go:314			0xe776a6		488b1dd3a96902		MOVQ os.Stdout(SB), BX							
  print.go:314			0xe776ad		488d052c44ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe776b4		488d4c2450		LEAQ 0x50(SP), CX							
  print.go:314			0xe776b9		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe776be		4889fe			MOVQ DI, SI								
  print.go:314			0xe776c1		e89a816aff		CALL fmt.Fprintln(SB)							
  control_controller.go:323	0xe776c6		4881c4e8000000		ADDQ $.file+155(SB), SP							
  control_controller.go:323	0xe776cd		5d			POPQ BP									
  control_controller.go:323	0xe776ce		c3			RET									
  context.go:712		0xe776cf		4989d2			MOVQ DX, R10								
  context.go:712		0xe776d2		4c21ca			ANDQ R9, DX								
  context.go:712		0xe776d5		48c1e204		SHLQ $__subsystem__+1(SB), DX						
  context.go:712		0xe776d9		4c8b5c3208		MOVQ 0x8(DX)(SI*1), R11							
  context.go:712		0xe776de		6690			NOPW									
  context.go:712		0xe776e0		4939db			CMPQ R11, BX								
  context.go:712		0xe776e3		742f			JE 0xe77714								
  context.go:712		0xe776e5		498d5201		LEAQ 0x1(R10), DX							
  context.go:712		0xe776e9		4d85db			TESTQ R11, R11								
  context.go:712		0xe776ec		75e1			JNE 0xe776cf								
  context.go:712		0xe776ee		4c89442448		MOVQ R8, 0x48(SP)							
  context.go:712		0xe776f3		488d0516391400		LEAQ CAS-Backend/biz/controller..typeAssert.3(SB), AX			
  context.go:712		0xe776fa		e8e17b59ff		CALL runtime.typeAssert(SB)						
  context.go:752		0xe776ff		4c8b442448		MOVQ 0x48(SP), R8							
  context.go:712		0xe77704		4889c2			MOVQ AX, DX								
  context.go:752		0xe77707		488b8424e0000000	MOVQ 0xe0(SP), AX							
  context.go:712		0xe7770f		e991fcffff		JMP 0xe773a5								
  context.go:712		0xe77714		488b543210		MOVQ 0x10(DX)(SI*1), DX							
  context.go:712		0xe77719		e987fcffff		JMP 0xe773a5								
  control_controller.go:264	0xe7771e		4889442408		MOVQ AX, 0x8(SP)							
  control_controller.go:264	0xe77723		e8b8ed5fff		CALL runtime.morestack_noctxt.abi0(SB)					
  control_controller.go:264	0xe77728		488b442408		MOVQ 0x8(SP), AX							
  control_controller.go:264	0xe7772d		e9cefbffff		JMP CAS-Backend/biz/controller.Turn_left(SB)				
  :-1				0xe77732		cc			INT $__subsystem__(SB)							
  :-1				0xe77733		cc			INT $__subsystem__(SB)							
  :-1				0xe77734		cc			INT $__subsystem__(SB)							
  :-1				0xe77735		cc			INT $__subsystem__(SB)							
  :-1				0xe77736		cc			INT $__subsystem__(SB)							
  :-1				0xe77737		cc			INT $__subsystem__(SB)							
  :-1				0xe77738		cc			INT $__subsystem__(SB)							
  :-1				0xe77739		cc			INT $__subsystem__(SB)							
  :-1				0xe7773a		cc			INT $__subsystem__(SB)							
  :-1				0xe7773b		cc			INT $__subsystem__(SB)							
  :-1				0xe7773c		cc			INT $__subsystem__(SB)							
  :-1				0xe7773d		cc			INT $__subsystem__(SB)							
  :-1				0xe7773e		cc			INT $__subsystem__(SB)							
  :-1				0xe7773f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.Turn_left.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:291	0xe77740		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:291	0xe77744		7638			JBE 0xe7777e						
  control_controller.go:291	0xe77746		55			PUSHQ BP						
  control_controller.go:291	0xe77747		4889e5			MOVQ SP, BP						
  control_controller.go:291	0xe7774a		4883ec40		SUBQ $__major_os_version__+58(SB), SP			
  control_controller.go:291	0xe7774e		4889442450		MOVQ AX, 0x50(SP)					
  control_controller.go:291	0xe77753		48895c2458		MOVQ BX, 0x58(SP)					
  control_controller.go:291	0xe77758		488b5208		MOVQ 0x8(DX), DX					
  control_controller.go:292	0xe7775c		f20f104228		MOVSD_XMM 0x28(DX), X0					
  control_controller.go:292	0xe77761		f20f105238		MOVSD_XMM 0x38(DX), X2					
  control_controller.go:292	0xe77766		0f57c9			XORPS X1, X1						
  control_controller.go:292	0xe77769		0f10d9			MOVUPS X1, X3						
  control_controller.go:292	0xe7776c		b901000000		MOVL $__minor_os_version__(SB), CX			
  control_controller.go:292	0xe77771		31ff			XORL DI, DI						
  control_controller.go:292	0xe77773		e82825faff		CALL CAS-Backend/pkg/agvcontrol.SendMotionCommand(SB)	
  control_controller.go:292	0xe77778		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  control_controller.go:292	0xe7777c		5d			POPQ BP							
  control_controller.go:292	0xe7777d		c3			RET							
  control_controller.go:291	0xe7777e		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:291	0xe77783		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:291	0xe77788		e8d3ec5fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:291	0xe7778d		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:291	0xe77792		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:291	0xe77797		eba7			JMP CAS-Backend/biz/controller.Turn_left.func1(SB)	
  :-1				0xe77799		cc			INT $__subsystem__(SB)					
  :-1				0xe7779a		cc			INT $__subsystem__(SB)					
  :-1				0xe7779b		cc			INT $__subsystem__(SB)					
  :-1				0xe7779c		cc			INT $__subsystem__(SB)					
  :-1				0xe7779d		cc			INT $__subsystem__(SB)					
  :-1				0xe7779e		cc			INT $__subsystem__(SB)					
  :-1				0xe7779f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Guiling(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:325	0xe777a0		4c8d6424d0		LEAQ -0x30(SP), R12						
  control_controller.go:325	0xe777a5		4d3b6610		CMPQ R12, 0x10(R14)						
  control_controller.go:325	0xe777a9		0f8680020000		JBE 0xe77a2f							
  control_controller.go:325	0xe777af		55			PUSHQ BP							
  control_controller.go:325	0xe777b0		4889e5			MOVQ SP, BP							
  control_controller.go:325	0xe777b3		4881eca8000000		SUBQ $.file+91(SB), SP						
  context.go:712		0xe777ba		48898424b8000000	MOVQ AX, 0xb8(SP)						
  control_controller.go:326	0xe777c2		488d1557b11c00		LEAQ runtime.types+383264(SB), DX				
  control_controller.go:326	0xe777c9		4889942490000000	MOVQ DX, 0x90(SP)						
  control_controller.go:326	0xe777d1		4c8d055810ff01		LEAQ CAS-Backend/biz/controller..stmp_17(SB), R8		
  control_controller.go:326	0xe777d8		4c89842498000000	MOVQ R8, 0x98(SP)						
  print.go:314			0xe777e0		488b1d99a86902		MOVQ os.Stdout(SB), BX						
  print.go:314			0xe777e7		488d8c2490000000	LEAQ 0x90(SP), CX						
  print.go:314			0xe777ef		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314			0xe777f4		4889fe			MOVQ DI, SI							
  print.go:314			0xe777f7		488d05e242ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314			0xe777fe		6690			NOPW								
  print.go:314			0xe77800		e85b806aff		CALL fmt.Fprintln(SB)						
  control_controller.go:327	0xe77805		488d05146d2a00		LEAQ runtime.types+1283360(SB), AX				
  control_controller.go:327	0xe7780c		e88f9f59ff		CALL runtime.newobject(SB)					
  control_controller.go:327	0xe77811		48898424a0000000	MOVQ AX, 0xa0(SP)						
  context.go:712		0xe77819		488b15c0ff1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), DX		
  context.go:712		0xe77820		4c8b05c1ff1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), R8		
  context.go:712		0xe77827		4885d2			TESTQ DX, DX							
  context.go:712		0xe7782a		7419			JE 0xe77845							
  context.go:712		0xe7782c		488b5a08		MOVQ 0x8(DX), BX						
  context.go:712		0xe77830		488b35f9371400		MOVQ CAS-Backend/biz/controller..typeAssert.4(SB), SI		
  context.go:712		0xe77837		4c8b0e			MOVQ 0(SI), R9							
  context.go:712		0xe7783a		8b5210			MOVL 0x10(DX), DX						
  context.go:712		0xe7783d		0f1f00			NOPL 0(AX)							
  context.go:712		0xe77840		e99a010000		JMP 0xe779df							
  context.go:752		0xe77845		488b5218		MOVQ 0x18(DX), DX						
  context.go:752		0xe77849		488bb424b8000000	MOVQ 0xb8(SP), SI						
  context.go:752		0xe77851		488b5e20		MOVQ 0x20(SI), BX						
  context.go:752		0xe77855		488d0d04ed1a00		LEAQ runtime.types+267616(SB), CX				
  context.go:752		0xe7785c		4889c7			MOVQ AX, DI							
  context.go:752		0xe7785f		4c89c0			MOVQ R8, AX							
  context.go:752		0xe77862		ffd2			CALL DX								
  control_controller.go:330	0xe77864		4885c0			TESTQ AX, AX							
  control_controller.go:330	0xe77867		0f8502010000		JNE 0xe7796f							
  control_controller.go:336	0xe7786d		440f117c2470		MOVUPS X15, 0x70(SP)						
  control_controller.go:336	0xe77873		488d05a66c2a00		LEAQ runtime.types+1283360(SB), AX				
  control_controller.go:336	0xe7787a		488b9c24a0000000	MOVQ 0xa0(SP), BX						
  control_controller.go:336	0xe77882		e8197859ff		CALL runtime.convT(SB)						
  control_controller.go:336	0xe77887		488d0d926c2a00		LEAQ runtime.types+1283360(SB), CX				
  control_controller.go:336	0xe7788e		48894c2470		MOVQ CX, 0x70(SP)						
  control_controller.go:336	0xe77893		4889442478		MOVQ AX, 0x78(SP)						
  print.go:314			0xe77898		488b1de1a76902		MOVQ os.Stdout(SB), BX						
  print.go:314			0xe7789f		488d053a42ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314			0xe778a6		488d4c2470		LEAQ 0x70(SP), CX						
  print.go:314			0xe778ab		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314			0xe778b0		4889fe			MOVQ DI, SI							
  print.go:314			0xe778b3		e8a87f6aff		CALL fmt.Fprintln(SB)						
  control_controller.go:364	0xe778b8		488b8c24a0000000	MOVQ 0xa0(SP), CX						
  control_controller.go:364	0xe778c0		488b4110		MOVQ 0x10(CX), AX						
  control_controller.go:364	0xe778c4		488b5918		MOVQ 0x18(CX), BX						
  control_controller.go:364	0xe778c8		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX			
  control_controller.go:364	0xe778cd		488d3dc4fee501		LEAQ go:func.*+6064(SB), DI					
  control_controller.go:364	0xe778d4		e827bdf9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)			
  control_controller.go:367	0xe778d9		4885c0			TESTQ AX, AX							
  control_controller.go:367	0xe778dc		7450			JE 0xe7792e							
  control_controller.go:368	0xe778de		440f117c2460		MOVUPS X15, 0x60(SP)						
  control_controller.go:368	0xe778e4		7404			JE 0xe778ea							
  control_controller.go:368	0xe778e6		488b4008		MOVQ 0x8(AX), AX						
  control_controller.go:368	0xe778ea		4889442460		MOVQ AX, 0x60(SP)						
  control_controller.go:368	0xe778ef		48895c2468		MOVQ BX, 0x68(SP)						
  print.go:233			0xe778f4		488b1d85a76902		MOVQ os.Stdout(SB), BX						
  print.go:233			0xe778fb		488d05de41ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233			0xe77902		488d0d36c23000		LEAQ go:string.*+112183(SB), CX					
  print.go:233			0xe77909		bf17000000		MOVL $__major_os_version__+17(SB), DI				
  print.go:233			0xe7790e		488d742460		LEAQ 0x60(SP), SI						
  print.go:233			0xe77913		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233			0xe77919		4d89c1			MOVQ R8, R9							
  print.go:233			0xe7791c		0f1f4000		NOPL 0(AX)							
  print.go:233			0xe77920		e8fb786aff		CALL fmt.Fprintf(SB)						
  control_controller.go:369	0xe77925		4881c4a8000000		ADDQ $.file+91(SB), SP						
  control_controller.go:369	0xe7792c		5d			POPQ BP								
  control_controller.go:369	0xe7792d		c3			RET								
  control_controller.go:371	0xe7792e		488d15ebaf1c00		LEAQ runtime.types+383264(SB), DX				
  control_controller.go:371	0xe77935		4889542450		MOVQ DX, 0x50(SP)						
  control_controller.go:371	0xe7793a		488d159f0eff01		LEAQ CAS-Backend/biz/controller..stmp_3(SB), DX			
  control_controller.go:371	0xe77941		4889542458		MOVQ DX, 0x58(SP)						
  print.go:314			0xe77946		488b1d33a76902		MOVQ os.Stdout(SB), BX						
  print.go:314			0xe7794d		488d058c41ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314			0xe77954		488d4c2450		LEAQ 0x50(SP), CX						
  print.go:314			0xe77959		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314			0xe7795e		4889fe			MOVQ DI, SI							
  print.go:314			0xe77961		e8fa7e6aff		CALL fmt.Fprintln(SB)						
  control_controller.go:373	0xe77966		4881c4a8000000		ADDQ $.file+91(SB), SP						
  control_controller.go:373	0xe7796d		5d			POPQ BP								
  control_controller.go:373	0xe7796e		c3			RET								
  context.go:752		0xe7796f		48895c2440		MOVQ BX, 0x40(SP)						
  context.go:752		0xe77974		4889442438		MOVQ AX, 0x38(SP)						
  control_controller.go:331	0xe77979		488d15a0af1c00		LEAQ runtime.types+383264(SB), DX				
  control_controller.go:331	0xe77980		4889942480000000	MOVQ DX, 0x80(SP)						
  control_controller.go:331	0xe77988		488d15410eff01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX			
  control_controller.go:331	0xe7798f		4889942488000000	MOVQ DX, 0x88(SP)						
  print.go:314			0xe77997		488b1de2a66902		MOVQ os.Stdout(SB), BX						
  print.go:314			0xe7799e		488d053b41ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314			0xe779a5		488d8c2480000000	LEAQ 0x80(SP), CX						
  print.go:314			0xe779ad		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314			0xe779b2		4889fe			MOVQ DI, SI							
  print.go:314			0xe779b5		e8a67e6aff		CALL fmt.Fprintln(SB)						
  control_controller.go:332	0xe779ba		488b8424b8000000	MOVQ 0xb8(SP), AX						
  control_controller.go:332	0xe779c2		bb90010000		MOVL $.file+323(SB), BX						
  control_controller.go:332	0xe779c7		488b4c2438		MOVQ 0x38(SP), CX						
  control_controller.go:332	0xe779cc		488b7c2440		MOVQ 0x40(SP), DI						
  control_controller.go:332	0xe779d1		e8ca36f8ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)	
  control_controller.go:333	0xe779d6		4881c4a8000000		ADDQ $.file+91(SB), SP						
  control_controller.go:333	0xe779dd		5d			POPQ BP								
  control_controller.go:333	0xe779de		c3			RET								
  context.go:712		0xe779df		4989d2			MOVQ DX, R10							
  context.go:712		0xe779e2		4c21ca			ANDQ R9, DX							
  context.go:712		0xe779e5		48c1e204		SHLQ $__subsystem__+1(SB), DX					
  context.go:712		0xe779e9		4c8b5c3208		MOVQ 0x8(DX)(SI*1), R11						
  context.go:712		0xe779ee		4939db			CMPQ R11, BX							
  context.go:712		0xe779f1		7432			JE 0xe77a25							
  context.go:712		0xe779f3		498d5201		LEAQ 0x1(R10), DX						
  context.go:712		0xe779f7		4d85db			TESTQ R11, R11							
  context.go:712		0xe779fa		75e3			JNE 0xe779df							
  context.go:712		0xe779fc		4c89442448		MOVQ R8, 0x48(SP)						
  context.go:712		0xe77a01		488d0528361400		LEAQ CAS-Backend/biz/controller..typeAssert.4(SB), AX		
  context.go:712		0xe77a08		e8d37859ff		CALL runtime.typeAssert(SB)					
  context.go:752		0xe77a0d		4c8b442448		MOVQ 0x48(SP), R8						
  context.go:712		0xe77a12		4889c2			MOVQ AX, DX							
  context.go:752		0xe77a15		488b8424a0000000	MOVQ 0xa0(SP), AX						
  context.go:752		0xe77a1d		0f1f00			NOPL 0(AX)							
  context.go:712		0xe77a20		e920feffff		JMP 0xe77845							
  context.go:712		0xe77a25		488b543210		MOVQ 0x10(DX)(SI*1), DX						
  context.go:712		0xe77a2a		e916feffff		JMP 0xe77845							
  control_controller.go:325	0xe77a2f		4889442408		MOVQ AX, 0x8(SP)						
  control_controller.go:325	0xe77a34		e8a7ea5fff		CALL runtime.morestack_noctxt.abi0(SB)				
  control_controller.go:325	0xe77a39		488b442408		MOVQ 0x8(SP), AX						
  control_controller.go:325	0xe77a3e		6690			NOPW								
  control_controller.go:325	0xe77a40		e95bfdffff		JMP CAS-Backend/biz/controller.Guiling(SB)			
  :-1				0xe77a45		cc			INT $__subsystem__(SB)						
  :-1				0xe77a46		cc			INT $__subsystem__(SB)						
  :-1				0xe77a47		cc			INT $__subsystem__(SB)						
  :-1				0xe77a48		cc			INT $__subsystem__(SB)						
  :-1				0xe77a49		cc			INT $__subsystem__(SB)						
  :-1				0xe77a4a		cc			INT $__subsystem__(SB)						
  :-1				0xe77a4b		cc			INT $__subsystem__(SB)						
  :-1				0xe77a4c		cc			INT $__subsystem__(SB)						
  :-1				0xe77a4d		cc			INT $__subsystem__(SB)						
  :-1				0xe77a4e		cc			INT $__subsystem__(SB)						
  :-1				0xe77a4f		cc			INT $__subsystem__(SB)						
  :-1				0xe77a50		cc			INT $__subsystem__(SB)						
  :-1				0xe77a51		cc			INT $__subsystem__(SB)						
  :-1				0xe77a52		cc			INT $__subsystem__(SB)						
  :-1				0xe77a53		cc			INT $__subsystem__(SB)						
  :-1				0xe77a54		cc			INT $__subsystem__(SB)						
  :-1				0xe77a55		cc			INT $__subsystem__(SB)						
  :-1				0xe77a56		cc			INT $__subsystem__(SB)						
  :-1				0xe77a57		cc			INT $__subsystem__(SB)						
  :-1				0xe77a58		cc			INT $__subsystem__(SB)						
  :-1				0xe77a59		cc			INT $__subsystem__(SB)						
  :-1				0xe77a5a		cc			INT $__subsystem__(SB)						
  :-1				0xe77a5b		cc			INT $__subsystem__(SB)						
  :-1				0xe77a5c		cc			INT $__subsystem__(SB)						
  :-1				0xe77a5d		cc			INT $__subsystem__(SB)						
  :-1				0xe77a5e		cc			INT $__subsystem__(SB)						
  :-1				0xe77a5f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.Qiangzhan(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:375	0xe77a60		4c8d6424d0		LEAQ -0x30(SP), R12											
  control_controller.go:375	0xe77a65		4d3b6610		CMPQ R12, 0x10(R14)											
  control_controller.go:375	0xe77a69		0f86af040000		JBE 0xe77f1e												
  control_controller.go:375	0xe77a6f		55			PUSHQ BP												
  control_controller.go:375	0xe77a70		4889e5			MOVQ SP, BP												
  control_controller.go:375	0xe77a73		4881eca8000000		SUBQ $.file+91(SB), SP											
  context.go:712		0xe77a7a		48898424b8000000	MOVQ AX, 0xb8(SP)											
  control_controller.go:376	0xe77a82		488d05976a2a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:376	0xe77a89		e8129d59ff		CALL runtime.newobject(SB)										
  control_controller.go:376	0xe77a8e		48898424a0000000	MOVQ AX, 0xa0(SP)											
  context.go:712		0xe77a96		488b0d43fd1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe77a9d		488b1544fd1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe77aa4		4885c9			TESTQ CX, CX												
  context.go:712		0xe77aa7		741c			JE 0xe77ac5												
  context.go:712		0xe77aa9		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe77aad		488b359c351400		MOVQ CAS-Backend/biz/controller..typeAssert.5(SB), SI							
  context.go:712		0xe77ab4		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe77ab7		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe77abb		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe77ac0		e909040000		JMP 0xe77ece												
  context.go:752		0xe77ac5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe77ac9		4c8b8424b8000000	MOVQ 0xb8(SP), R8											
  context.go:752		0xe77ad1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe77ad5		488d0d84ea1a00		LEAQ runtime.types+267616(SB), CX									
  context.go:752		0xe77adc		4889c7			MOVQ AX, DI												
  context.go:752		0xe77adf		4889d0			MOVQ DX, AX												
  context.go:752		0xe77ae2		ffd6			CALL SI													
  control_controller.go:378	0xe77ae4		4885c0			TESTQ AX, AX												
  control_controller.go:378	0xe77ae7		0f8401010000		JE 0xe77bee												
  context.go:752		0xe77aed		4889442438		MOVQ AX, 0x38(SP)											
  context.go:752		0xe77af2		48895c2448		MOVQ BX, 0x48(SP)											
  control_controller.go:379	0xe77af7		e8e4345fff		CALL runtime.makemap_small(SB)										
  control_controller.go:379	0xe77afc		4889842498000000	MOVQ AX, 0x98(SP)											
  control_controller.go:379	0xe77b04		488b4c2438		MOVQ 0x38(SP), CX											
  control_controller.go:379	0xe77b09		488b4918		MOVQ 0x18(CX), CX											
  control_controller.go:379	0xe77b0d		488b442448		MOVQ 0x48(SP), AX											
  control_controller.go:379	0xe77b12		ffd1			CALL CX													
  control_controller.go:379	0xe77b14		b914000000		MOVL $__major_os_version__+14(SB), CX									
  control_controller.go:379	0xe77b19		4889c7			MOVQ AX, DI												
  control_controller.go:379	0xe77b1c		4889de			MOVQ BX, SI												
  control_controller.go:379	0xe77b1f		31c0			XORL AX, AX												
  control_controller.go:379	0xe77b21		488d1d16893000		LEAQ go:string.*+98102(SB), BX										
  control_controller.go:379	0xe77b28		e8d3d85dff		CALL runtime.concatstring2(SB)										
  control_controller.go:379	0xe77b2d		e8ee255fff		CALL runtime.convTstring(SB)										
  control_controller.go:379	0xe77b32		4889842490000000	MOVQ AX, 0x90(SP)											
  control_controller.go:379	0xe77b3a		488b9c2498000000	MOVQ 0x98(SP), BX											
  control_controller.go:379	0xe77b42		488d0d782a2f00		LEAQ go:string.*+8377(SB), CX										
  control_controller.go:379	0xe77b49		bf05000000		MOVL $__subsystem__+2(SB), DI										
  control_controller.go:379	0xe77b4e		488d052bcd2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:379	0xe77b55		e8c6645fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:379	0xe77b5a		488d0dbfad1c00		LEAQ runtime.types+383264(SB), CX									
  control_controller.go:379	0xe77b61		488908			MOVQ CX, 0(AX)												
  control_controller.go:379	0xe77b64		833de55f6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:379	0xe77b6b		750a			JNE 0xe77b77												
  control_controller.go:379	0xe77b6d		488b8c2490000000	MOVQ 0x90(SP), CX											
  control_controller.go:379	0xe77b75		eb18			JMP 0xe77b8f												
  control_controller.go:379	0xe77b77		e8c40860ff		CALL runtime.gcWriteBarrier2(SB)									
  control_controller.go:379	0xe77b7c		488b8c2490000000	MOVQ 0x90(SP), CX											
  control_controller.go:379	0xe77b84		49890b			MOVQ CX, 0(R11)												
  control_controller.go:379	0xe77b87		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:379	0xe77b8b		49895308		MOVQ DX, 0x8(R11)											
  control_controller.go:379	0xe77b8f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe77b93		488d0de6cc2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe77b9a		48898c2480000000	MOVQ CX, 0x80(SP)											
  context.go:1005		0xe77ba2		488b8c2498000000	MOVQ 0x98(SP), CX											
  context.go:1005		0xe77baa		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005		0xe77bb2		488d0527432500		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe77bb9		488d9c2480000000	LEAQ 0x80(SP), BX											
  context.go:1005		0xe77bc1		e8da7459ff		CALL runtime.convT(SB)											
  context.go:1005		0xe77bc6		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005		0xe77bcb		488d0d5e76ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe77bd2		4889c7			MOVQ AX, DI												
  context.go:1005		0xe77bd5		488b8424b8000000	MOVQ 0xb8(SP), AX											
  context.go:1005		0xe77bdd		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe77be0		e87b7bf8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:380	0xe77be5		4881c4a8000000		ADDQ $.file+91(SB), SP											
  control_controller.go:380	0xe77bec		5d			POPQ BP													
  control_controller.go:380	0xe77bed		c3			RET													
  control_controller.go:383	0xe77bee		488b9424a0000000	MOVQ 0xa0(SP), DX											
  control_controller.go:383	0xe77bf6		488b4210		MOVQ 0x10(DX), AX											
  control_controller.go:383	0xe77bfa		488b5a18		MOVQ 0x18(DX), BX											
  control_controller.go:383	0xe77bfe		488d0d8e2d3000		LEAQ go:string.*+74891(SB), CX										
  control_controller.go:383	0xe77c05		bf0f000000		MOVL $__major_os_version__+9(SB), DI									
  control_controller.go:383	0xe77c0a		e8f1f4f9ff		CALL CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified(SB)					
  control_controller.go:384	0xe77c0f		4885db			TESTQ BX, BX												
  control_controller.go:384	0xe77c12		0f8476010000		JE 0xe77d8e												
  control_controller.go:383	0xe77c18		48895c2440		MOVQ BX, 0x40(SP)											
  control_controller.go:385	0xe77c1d		440f117c2470		MOVUPS X15, 0x70(SP)											
  control_controller.go:385	0xe77c23		7406			JE 0xe77c2b												
  control_controller.go:385	0xe77c25		488b5308		MOVQ 0x8(BX), DX											
  control_controller.go:385	0xe77c29		eb03			JMP 0xe77c2e												
  control_controller.go:385	0xe77c2b		4889da			MOVQ BX, DX												
  control_controller.go:383	0xe77c2e		48894c2450		MOVQ CX, 0x50(SP)											
  control_controller.go:385	0xe77c33		4889542470		MOVQ DX, 0x70(SP)											
  control_controller.go:385	0xe77c38		48894c2478		MOVQ CX, 0x78(SP)											
  print.go:233			0xe77c3d		488b1d3ca46902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe77c44		488d05953eff01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe77c4b		bf1a000000		MOVL $__major_os_version__+20(SB), DI									
  print.go:233			0xe77c50		488d742470		LEAQ 0x70(SP), SI											
  print.go:233			0xe77c55		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe77c5b		4d89c1			MOVQ R8, R9												
  print.go:233			0xe77c5e		488d0dc1f23000		LEAQ go:string.*+125470(SB), CX										
  print.go:233			0xe77c65		e8b6756aff		CALL fmt.Fprintf(SB)											
  control_controller.go:386	0xe77c6a		e871335fff		CALL runtime.makemap_small(SB)										
  control_controller.go:386	0xe77c6f		4889842498000000	MOVQ AX, 0x98(SP)											
  control_controller.go:386	0xe77c77		4889c3			MOVQ AX, BX												
  control_controller.go:386	0xe77c7a		488d0d0b1a2f00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:386	0xe77c81		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:386	0xe77c86		488d05f3cb2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:386	0xe77c8d		e88e635fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:386	0xe77c92		488d15c7ae1c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:386	0xe77c99		488910			MOVQ DX, 0(AX)												
  control_controller.go:386	0xe77c9c		833dad5e6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:386	0xe77ca3		740c			JE 0xe77cb1												
  control_controller.go:386	0xe77ca5		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:386	0xe77ca9		e8720760ff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:386	0xe77cae		49890b			MOVQ CX, 0(R11)												
  control_controller.go:386	0xe77cb1		488d0d08cefe01		LEAQ runtime.gcbits.*(SB), CX										
  control_controller.go:386	0xe77cb8		48894808		MOVQ CX, 0x8(AX)											
  control_controller.go:388	0xe77cbc		488b4c2440		MOVQ 0x40(SP), CX											
  control_controller.go:388	0xe77cc1		488b4918		MOVQ 0x18(CX), CX											
  control_controller.go:388	0xe77cc5		488b442450		MOVQ 0x50(SP), AX											
  control_controller.go:388	0xe77cca		ffd1			CALL CX													
  control_controller.go:388	0xe77ccc		e84f245fff		CALL runtime.convTstring(SB)										
  control_controller.go:388	0xe77cd1		4889842490000000	MOVQ AX, 0x90(SP)											
  control_controller.go:386	0xe77cd9		488b9c2498000000	MOVQ 0x98(SP), BX											
  control_controller.go:386	0xe77ce1		488d0d6c0d2f00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:386	0xe77ce8		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:386	0xe77ced		488d058ccb2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:386	0xe77cf4		e827635fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:386	0xe77cf9		488d0d20ac1c00		LEAQ runtime.types+383264(SB), CX									
  control_controller.go:386	0xe77d00		488908			MOVQ CX, 0(AX)												
  control_controller.go:386	0xe77d03		833d465e6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:386	0xe77d0a		750a			JNE 0xe77d16												
  control_controller.go:386	0xe77d0c		488b8c2490000000	MOVQ 0x90(SP), CX											
  control_controller.go:386	0xe77d14		eb18			JMP 0xe77d2e												
  control_controller.go:386	0xe77d16		e8250760ff		CALL runtime.gcWriteBarrier2(SB)									
  control_controller.go:386	0xe77d1b		488b8c2490000000	MOVQ 0x90(SP), CX											
  control_controller.go:386	0xe77d23		49890b			MOVQ CX, 0(R11)												
  control_controller.go:386	0xe77d26		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:386	0xe77d2a		49895308		MOVQ DX, 0x8(R11)											
  control_controller.go:386	0xe77d2e		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe77d32		488d0d47cb2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe77d39		48898c2480000000	MOVQ CX, 0x80(SP)											
  context.go:1005		0xe77d41		488b8c2498000000	MOVQ 0x98(SP), CX											
  context.go:1005		0xe77d49		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005		0xe77d51		488d0588412500		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe77d58		488d9c2480000000	LEAQ 0x80(SP), BX											
  context.go:1005		0xe77d60		e83b7359ff		CALL runtime.convT(SB)											
  context.go:1005		0xe77d65		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe77d6a		488d0dbf74ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe77d71		4889c7			MOVQ AX, DI												
  context.go:1005		0xe77d74		488b8424b8000000	MOVQ 0xb8(SP), AX											
  context.go:1005		0xe77d7c		0f1f4000		NOPL 0(AX)												
  context.go:1005		0xe77d80		e8db79f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:390	0xe77d85		4881c4a8000000		ADDQ $.file+91(SB), SP											
  control_controller.go:390	0xe77d8c		5d			POPQ BP													
  control_controller.go:390	0xe77d8d		c3			RET													
  control_controller.go:392	0xe77d8e		440f117c2460		MOVUPS X15, 0x60(SP)											
  control_controller.go:392	0xe77d94		e807235fff		CALL runtime.convT64(SB)										
  control_controller.go:392	0xe77d99		488d0dc0ad1c00		LEAQ runtime.types+383840(SB), CX									
  control_controller.go:392	0xe77da0		48894c2460		MOVQ CX, 0x60(SP)											
  control_controller.go:392	0xe77da5		4889442468		MOVQ AX, 0x68(SP)											
  print.go:233			0xe77daa		488b1dcfa26902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe77db1		488d05283dff01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe77db8		bf27000000		MOVL $__major_os_version__+33(SB), DI									
  print.go:233			0xe77dbd		488d742460		LEAQ 0x60(SP), SI											
  print.go:233			0xe77dc2		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe77dc8		4d89c1			MOVQ R8, R9												
  print.go:233			0xe77dcb		488d0dd2d03100		LEAQ go:string.*+182684(SB), CX										
  print.go:233			0xe77dd2		e849746aff		CALL fmt.Fprintf(SB)											
  control_controller.go:393	0xe77dd7		e804325fff		CALL runtime.makemap_small(SB)										
  control_controller.go:393	0xe77ddc		4889842498000000	MOVQ AX, 0x98(SP)											
  control_controller.go:393	0xe77de4		4889c3			MOVQ AX, BX												
  control_controller.go:393	0xe77de7		488d0d9e182f00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:393	0xe77dee		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:393	0xe77df3		488d0586ca2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:393	0xe77dfa		e821625fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:393	0xe77dff		488d0d5aad1c00		LEAQ runtime.types+383840(SB), CX									
  control_controller.go:393	0xe77e06		488908			MOVQ CX, 0(AX)												
  control_controller.go:393	0xe77e09		833d405d6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:393	0xe77e10		740c			JE 0xe77e1e												
  control_controller.go:393	0xe77e12		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:393	0xe77e16		e8050660ff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:393	0xe77e1b		498913			MOVQ DX, 0(R11)												
  control_controller.go:393	0xe77e1e		488d150bfafe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:393	0xe77e25		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:393	0xe77e29		488d0550ca2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:393	0xe77e30		488b9c2498000000	MOVQ 0x98(SP), BX											
  control_controller.go:393	0xe77e38		488d0d150c2f00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:393	0xe77e3f		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:393	0xe77e44		e8d7615fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:393	0xe77e49		488d15d0aa1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:393	0xe77e50		488910			MOVQ DX, 0(AX)												
  control_controller.go:393	0xe77e53		833df65c6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:393	0xe77e5a		740c			JE 0xe77e68												
  control_controller.go:393	0xe77e5c		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:393	0xe77e60		e8bb0560ff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:393	0xe77e65		49890b			MOVQ CX, 0(R11)												
  control_controller.go:393	0xe77e68		488d0dd109ff01		LEAQ CAS-Backend/biz/controller..stmp_22(SB), CX							
  control_controller.go:393	0xe77e6f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe77e73		488d0d06ca2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe77e7a		48898c2480000000	MOVQ CX, 0x80(SP)											
  context.go:1005		0xe77e82		488b8c2498000000	MOVQ 0x98(SP), CX											
  context.go:1005		0xe77e8a		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005		0xe77e92		488d0547402500		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe77e99		488d9c2480000000	LEAQ 0x80(SP), BX											
  context.go:1005		0xe77ea1		e8fa7159ff		CALL runtime.convT(SB)											
  context.go:1005		0xe77ea6		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe77eab		488d0d7e73ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe77eb2		4889c7			MOVQ AX, DI												
  context.go:1005		0xe77eb5		488b8424b8000000	MOVQ 0xb8(SP), AX											
  context.go:1005		0xe77ebd		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe77ec0		e89b78f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:397	0xe77ec5		4881c4a8000000		ADDQ $.file+91(SB), SP											
  control_controller.go:397	0xe77ecc		5d			POPQ BP													
  control_controller.go:397	0xe77ecd		c3			RET													
  context.go:712		0xe77ece		4d89ca			MOVQ R9, R10												
  context.go:712		0xe77ed1		4d21c1			ANDQ R8, R9												
  context.go:712		0xe77ed4		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe77ed8		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe77edd		0f1f00			NOPL 0(AX)												
  context.go:712		0xe77ee0		4939db			CMPQ R11, BX												
  context.go:712		0xe77ee3		742f			JE 0xe77f14												
  context.go:712		0xe77ee5		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe77ee9		4d85db			TESTQ R11, R11												
  context.go:712		0xe77eec		75e0			JNE 0xe77ece												
  context.go:712		0xe77eee		4889542458		MOVQ DX, 0x58(SP)											
  context.go:712		0xe77ef3		488d0556311400		LEAQ CAS-Backend/biz/controller..typeAssert.5(SB), AX							
  context.go:712		0xe77efa		e8e17359ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe77eff		488b542458		MOVQ 0x58(SP), DX											
  context.go:712		0xe77f04		4889c1			MOVQ AX, CX												
  context.go:752		0xe77f07		488b8424a0000000	MOVQ 0xa0(SP), AX											
  context.go:712		0xe77f0f		e9b1fbffff		JMP 0xe77ac5												
  context.go:712		0xe77f14		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe77f19		e9a7fbffff		JMP 0xe77ac5												
  control_controller.go:375	0xe77f1e		4889442408		MOVQ AX, 0x8(SP)											
  control_controller.go:375	0xe77f23		e8b8e55fff		CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:375	0xe77f28		488b442408		MOVQ 0x8(SP), AX											
  control_controller.go:375	0xe77f2d		e92efbffff		JMP CAS-Backend/biz/controller.Qiangzhan(SB)								
  :-1				0xe77f32		cc			INT $__subsystem__(SB)											
  :-1				0xe77f33		cc			INT $__subsystem__(SB)											
  :-1				0xe77f34		cc			INT $__subsystem__(SB)											
  :-1				0xe77f35		cc			INT $__subsystem__(SB)											
  :-1				0xe77f36		cc			INT $__subsystem__(SB)											
  :-1				0xe77f37		cc			INT $__subsystem__(SB)											
  :-1				0xe77f38		cc			INT $__subsystem__(SB)											
  :-1				0xe77f39		cc			INT $__subsystem__(SB)											
  :-1				0xe77f3a		cc			INT $__subsystem__(SB)											
  :-1				0xe77f3b		cc			INT $__subsystem__(SB)											
  :-1				0xe77f3c		cc			INT $__subsystem__(SB)											
  :-1				0xe77f3d		cc			INT $__subsystem__(SB)											
  :-1				0xe77f3e		cc			INT $__subsystem__(SB)											
  :-1				0xe77f3f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.Shifang(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:399	0xe77f40		4c8d6424d0		LEAQ -0x30(SP), R12											
  control_controller.go:399	0xe77f45		4d3b6610		CMPQ R12, 0x10(R14)											
  control_controller.go:399	0xe77f49		0f8699040000		JBE 0xe783e8												
  control_controller.go:399	0xe77f4f		55			PUSHQ BP												
  control_controller.go:399	0xe77f50		4889e5			MOVQ SP, BP												
  control_controller.go:399	0xe77f53		4881eca8000000		SUBQ $.file+91(SB), SP											
  context.go:712		0xe77f5a		48898424b8000000	MOVQ AX, 0xb8(SP)											
  control_controller.go:400	0xe77f62		488d05b7652a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:400	0xe77f69		e8329859ff		CALL runtime.newobject(SB)										
  control_controller.go:400	0xe77f6e		48898424a0000000	MOVQ AX, 0xa0(SP)											
  context.go:712		0xe77f76		488b0d63f81300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe77f7d		488b1564f81300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe77f84		4885c9			TESTQ CX, CX												
  context.go:712		0xe77f87		741c			JE 0xe77fa5												
  context.go:712		0xe77f89		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe77f8d		488b35dc301400		MOVQ CAS-Backend/biz/controller..typeAssert.6(SB), SI							
  context.go:712		0xe77f94		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe77f97		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe77f9b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe77fa0		e9f6030000		JMP 0xe7839b												
  context.go:752		0xe77fa5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe77fa9		4c8b8424b8000000	MOVQ 0xb8(SP), R8											
  context.go:752		0xe77fb1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe77fb5		488d0da4e51a00		LEAQ runtime.types+267616(SB), CX									
  context.go:752		0xe77fbc		4889c7			MOVQ AX, DI												
  context.go:752		0xe77fbf		4889d0			MOVQ DX, AX												
  context.go:752		0xe77fc2		ffd6			CALL SI													
  control_controller.go:402	0xe77fc4		4885c0			TESTQ AX, AX												
  control_controller.go:402	0xe77fc7		0f8401010000		JE 0xe780ce												
  context.go:752		0xe77fcd		4889442438		MOVQ AX, 0x38(SP)											
  context.go:752		0xe77fd2		48895c2448		MOVQ BX, 0x48(SP)											
  control_controller.go:403	0xe77fd7		e804305fff		CALL runtime.makemap_small(SB)										
  control_controller.go:403	0xe77fdc		4889842498000000	MOVQ AX, 0x98(SP)											
  control_controller.go:403	0xe77fe4		488b4c2438		MOVQ 0x38(SP), CX											
  control_controller.go:403	0xe77fe9		488b4918		MOVQ 0x18(CX), CX											
  control_controller.go:403	0xe77fed		488b442448		MOVQ 0x48(SP), AX											
  control_controller.go:403	0xe77ff2		ffd1			CALL CX													
  control_controller.go:403	0xe77ff4		b914000000		MOVL $__major_os_version__+14(SB), CX									
  control_controller.go:403	0xe77ff9		4889c7			MOVQ AX, DI												
  control_controller.go:403	0xe77ffc		4889de			MOVQ BX, SI												
  control_controller.go:403	0xe77fff		31c0			XORL AX, AX												
  control_controller.go:403	0xe78001		488d1d36843000		LEAQ go:string.*+98102(SB), BX										
  control_controller.go:403	0xe78008		e8f3d35dff		CALL runtime.concatstring2(SB)										
  control_controller.go:403	0xe7800d		e80e215fff		CALL runtime.convTstring(SB)										
  control_controller.go:403	0xe78012		4889842490000000	MOVQ AX, 0x90(SP)											
  control_controller.go:403	0xe7801a		488b9c2498000000	MOVQ 0x98(SP), BX											
  control_controller.go:403	0xe78022		488d0d98252f00		LEAQ go:string.*+8377(SB), CX										
  control_controller.go:403	0xe78029		bf05000000		MOVL $__subsystem__+2(SB), DI										
  control_controller.go:403	0xe7802e		488d054bc82200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:403	0xe78035		e8e65f5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:403	0xe7803a		488d0ddfa81c00		LEAQ runtime.types+383264(SB), CX									
  control_controller.go:403	0xe78041		488908			MOVQ CX, 0(AX)												
  control_controller.go:403	0xe78044		833d055b6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:403	0xe7804b		750a			JNE 0xe78057												
  control_controller.go:403	0xe7804d		488b8c2490000000	MOVQ 0x90(SP), CX											
  control_controller.go:403	0xe78055		eb18			JMP 0xe7806f												
  control_controller.go:403	0xe78057		e8e40360ff		CALL runtime.gcWriteBarrier2(SB)									
  control_controller.go:403	0xe7805c		488b8c2490000000	MOVQ 0x90(SP), CX											
  control_controller.go:403	0xe78064		49890b			MOVQ CX, 0(R11)												
  control_controller.go:403	0xe78067		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:403	0xe7806b		49895308		MOVQ DX, 0x8(R11)											
  control_controller.go:403	0xe7806f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe78073		488d0d06c82200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7807a		48898c2480000000	MOVQ CX, 0x80(SP)											
  context.go:1005		0xe78082		488b8c2498000000	MOVQ 0x98(SP), CX											
  context.go:1005		0xe7808a		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005		0xe78092		488d05473e2500		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe78099		488d9c2480000000	LEAQ 0x80(SP), BX											
  context.go:1005		0xe780a1		e8fa6f59ff		CALL runtime.convT(SB)											
  context.go:1005		0xe780a6		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005		0xe780ab		488d0d7e71ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe780b2		4889c7			MOVQ AX, DI												
  context.go:1005		0xe780b5		488b8424b8000000	MOVQ 0xb8(SP), AX											
  context.go:1005		0xe780bd		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe780c0		e89b76f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:404	0xe780c5		4881c4a8000000		ADDQ $.file+91(SB), SP											
  control_controller.go:404	0xe780cc		5d			POPQ BP													
  control_controller.go:404	0xe780cd		c3			RET													
  control_controller.go:407	0xe780ce		488b9424a0000000	MOVQ 0xa0(SP), DX											
  control_controller.go:407	0xe780d6		488b4210		MOVQ 0x10(DX), AX											
  control_controller.go:407	0xe780da		488b5a18		MOVQ 0x18(DX), BX											
  control_controller.go:407	0xe780de		b9074b0000		MOVL $__size_of_stack_commit__+15111(SB), CX								
  control_controller.go:407	0xe780e3		488d3dcef6e501		LEAQ go:func.*+6096(SB), DI										
  control_controller.go:407	0xe780ea		e811b5f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  control_controller.go:409	0xe780ef		4885c0			TESTQ AX, AX												
  control_controller.go:409	0xe780f2		0f8476010000		JE 0xe7826e												
  control_controller.go:407	0xe780f8		4889442440		MOVQ AX, 0x40(SP)											
  control_controller.go:410	0xe780fd		440f117c2470		MOVUPS X15, 0x70(SP)											
  control_controller.go:410	0xe78103		7406			JE 0xe7810b												
  control_controller.go:410	0xe78105		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:410	0xe78109		eb03			JMP 0xe7810e												
  control_controller.go:410	0xe7810b		4889c2			MOVQ AX, DX												
  control_controller.go:407	0xe7810e		48895c2450		MOVQ BX, 0x50(SP)											
  control_controller.go:410	0xe78113		4889542470		MOVQ DX, 0x70(SP)											
  control_controller.go:410	0xe78118		48895c2478		MOVQ BX, 0x78(SP)											
  print.go:233			0xe7811d		488b155c9f6902		MOVQ os.Stdout(SB), DX											
  print.go:233			0xe78124		488d05b539ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7812b		488d0d0eee3000		LEAQ go:string.*+125496(SB), CX										
  print.go:233			0xe78132		bf1a000000		MOVL $__major_os_version__+20(SB), DI									
  print.go:233			0xe78137		488d742470		LEAQ 0x70(SP), SI											
  print.go:233			0xe7813c		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe78142		4d89c1			MOVQ R8, R9												
  print.go:233			0xe78145		4889d3			MOVQ DX, BX												
  print.go:233			0xe78148		e8d3706aff		CALL fmt.Fprintf(SB)											
  control_controller.go:411	0xe7814d		e88e2e5fff		CALL runtime.makemap_small(SB)										
  control_controller.go:411	0xe78152		4889842498000000	MOVQ AX, 0x98(SP)											
  control_controller.go:411	0xe7815a		4889c3			MOVQ AX, BX												
  control_controller.go:411	0xe7815d		488d0d28152f00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:411	0xe78164		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:411	0xe78169		488d0510c72200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:411	0xe78170		e8ab5e5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:411	0xe78175		488d15e4a91c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:411	0xe7817c		488910			MOVQ DX, 0(AX)												
  control_controller.go:411	0xe7817f		833dca596e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:411	0xe78186		740c			JE 0xe78194												
  control_controller.go:411	0xe78188		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:411	0xe7818c		e88f0260ff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:411	0xe78191		49890b			MOVQ CX, 0(R11)												
  control_controller.go:411	0xe78194		488d0d25c9fe01		LEAQ runtime.gcbits.*(SB), CX										
  control_controller.go:411	0xe7819b		48894808		MOVQ CX, 0x8(AX)											
  control_controller.go:413	0xe7819f		488b4c2440		MOVQ 0x40(SP), CX											
  control_controller.go:413	0xe781a4		488b4918		MOVQ 0x18(CX), CX											
  control_controller.go:413	0xe781a8		488b442450		MOVQ 0x50(SP), AX											
  control_controller.go:413	0xe781ad		ffd1			CALL CX													
  control_controller.go:413	0xe781af		e86c1f5fff		CALL runtime.convTstring(SB)										
  control_controller.go:413	0xe781b4		4889842490000000	MOVQ AX, 0x90(SP)											
  control_controller.go:411	0xe781bc		488b9c2498000000	MOVQ 0x98(SP), BX											
  control_controller.go:411	0xe781c4		488d0d89082f00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:411	0xe781cb		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:411	0xe781d0		488d05a9c62200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:411	0xe781d7		e8445e5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:411	0xe781dc		488d0d3da71c00		LEAQ runtime.types+383264(SB), CX									
  control_controller.go:411	0xe781e3		488908			MOVQ CX, 0(AX)												
  control_controller.go:411	0xe781e6		833d63596e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:411	0xe781ed		750a			JNE 0xe781f9												
  control_controller.go:411	0xe781ef		488b8c2490000000	MOVQ 0x90(SP), CX											
  control_controller.go:411	0xe781f7		eb18			JMP 0xe78211												
  control_controller.go:411	0xe781f9		e8420260ff		CALL runtime.gcWriteBarrier2(SB)									
  control_controller.go:411	0xe781fe		488b8c2490000000	MOVQ 0x90(SP), CX											
  control_controller.go:411	0xe78206		49890b			MOVQ CX, 0(R11)												
  control_controller.go:411	0xe78209		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:411	0xe7820d		49895308		MOVQ DX, 0x8(R11)											
  control_controller.go:411	0xe78211		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe78215		488d0d64c62200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7821c		48898c2480000000	MOVQ CX, 0x80(SP)											
  context.go:1005		0xe78224		488b8c2498000000	MOVQ 0x98(SP), CX											
  context.go:1005		0xe7822c		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005		0xe78234		488d05a53c2500		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7823b		488d9c2480000000	LEAQ 0x80(SP), BX											
  context.go:1005		0xe78243		e8586e59ff		CALL runtime.convT(SB)											
  context.go:1005		0xe78248		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7824d		488d0ddc6fff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe78254		4889c7			MOVQ AX, DI												
  context.go:1005		0xe78257		488b8424b8000000	MOVQ 0xb8(SP), AX											
  context.go:1005		0xe7825f		90			NOPL													
  context.go:1005		0xe78260		e8fb74f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:415	0xe78265		4881c4a8000000		ADDQ $.file+91(SB), SP											
  control_controller.go:415	0xe7826c		5d			POPQ BP													
  control_controller.go:415	0xe7826d		c3			RET													
  control_controller.go:418	0xe7826e		488d15aba61c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:418	0xe78275		4889542460		MOVQ DX, 0x60(SP)											
  control_controller.go:418	0xe7827a		4c8d05cf05ff01		LEAQ CAS-Backend/biz/controller..stmp_24(SB), R8							
  control_controller.go:418	0xe78281		4c89442468		MOVQ R8, 0x68(SP)											
  print.go:314			0xe78286		488b1df39d6902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7828d		488d054c38ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe78294		488d4c2460		LEAQ 0x60(SP), CX											
  print.go:314			0xe78299		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7829e		4889fe			MOVQ DI, SI												
  print.go:314			0xe782a1		e8ba756aff		CALL fmt.Fprintln(SB)											
  control_controller.go:419	0xe782a6		e8352d5fff		CALL runtime.makemap_small(SB)										
  control_controller.go:419	0xe782ab		4889842498000000	MOVQ AX, 0x98(SP)											
  control_controller.go:419	0xe782b3		4889c3			MOVQ AX, BX												
  control_controller.go:419	0xe782b6		488d0dcf132f00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:419	0xe782bd		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:419	0xe782c2		488d05b7c52200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:419	0xe782c9		e8525d5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:419	0xe782ce		488d158ba81c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:419	0xe782d5		488910			MOVQ DX, 0(AX)												
  control_controller.go:419	0xe782d8		833d71586e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:419	0xe782df		90			NOPL													
  control_controller.go:419	0xe782e0		740c			JE 0xe782ee												
  control_controller.go:419	0xe782e2		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:419	0xe782e6		e8350160ff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:419	0xe782eb		498913			MOVQ DX, 0(R11)												
  control_controller.go:419	0xe782ee		488d153bf5fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:419	0xe782f5		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:419	0xe782f9		488d0580c52200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:419	0xe78300		488b9c2498000000	MOVQ 0x98(SP), BX											
  control_controller.go:419	0xe78308		488d0d45072f00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:419	0xe7830f		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:419	0xe78314		e8075d5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:419	0xe78319		488d1500a61c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:419	0xe78320		488910			MOVQ DX, 0(AX)												
  control_controller.go:419	0xe78323		833d26586e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:419	0xe7832a		740c			JE 0xe78338												
  control_controller.go:419	0xe7832c		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:419	0xe78330		e8eb0060ff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:419	0xe78335		49890b			MOVQ CX, 0(R11)												
  control_controller.go:419	0xe78338		488d0d1105ff01		LEAQ CAS-Backend/biz/controller..stmp_24(SB), CX							
  control_controller.go:419	0xe7833f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe78343		488d0d36c52200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7834a		48898c2480000000	MOVQ CX, 0x80(SP)											
  context.go:1005		0xe78352		488b8c2498000000	MOVQ 0x98(SP), CX											
  context.go:1005		0xe7835a		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005		0xe78362		488d05773b2500		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe78369		488d9c2480000000	LEAQ 0x80(SP), BX											
  context.go:1005		0xe78371		e82a6d59ff		CALL runtime.convT(SB)											
  context.go:1005		0xe78376		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7837b		488d0dae6eff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe78382		4889c7			MOVQ AX, DI												
  context.go:1005		0xe78385		488b8424b8000000	MOVQ 0xb8(SP), AX											
  context.go:1005		0xe7838d		e8ce73f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:423	0xe78392		4881c4a8000000		ADDQ $.file+91(SB), SP											
  control_controller.go:423	0xe78399		5d			POPQ BP													
  control_controller.go:423	0xe7839a		c3			RET													
  context.go:712		0xe7839b		4d89ca			MOVQ R9, R10												
  context.go:712		0xe7839e		4d21c1			ANDQ R8, R9												
  context.go:712		0xe783a1		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe783a5		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe783aa		4939db			CMPQ R11, BX												
  context.go:712		0xe783ad		742f			JE 0xe783de												
  context.go:712		0xe783af		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe783b3		4d85db			TESTQ R11, R11												
  context.go:712		0xe783b6		75e3			JNE 0xe7839b												
  context.go:712		0xe783b8		4889542458		MOVQ DX, 0x58(SP)											
  context.go:712		0xe783bd		488d05ac2c1400		LEAQ CAS-Backend/biz/controller..typeAssert.6(SB), AX							
  context.go:712		0xe783c4		e8176f59ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe783c9		488b542458		MOVQ 0x58(SP), DX											
  context.go:712		0xe783ce		4889c1			MOVQ AX, CX												
  context.go:752		0xe783d1		488b8424a0000000	MOVQ 0xa0(SP), AX											
  context.go:712		0xe783d9		e9c7fbffff		JMP 0xe77fa5												
  context.go:712		0xe783de		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe783e3		e9bdfbffff		JMP 0xe77fa5												
  control_controller.go:399	0xe783e8		4889442408		MOVQ AX, 0x8(SP)											
  control_controller.go:399	0xe783ed		e8eee05fff		CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:399	0xe783f2		488b442408		MOVQ 0x8(SP), AX											
  control_controller.go:399	0xe783f7		e944fbffff		JMP CAS-Backend/biz/controller.Shifang(SB)								
  :-1				0xe783fc		cc			INT $__subsystem__(SB)											
  :-1				0xe783fd		cc			INT $__subsystem__(SB)											
  :-1				0xe783fe		cc			INT $__subsystem__(SB)											
  :-1				0xe783ff		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.Huocha_up(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:425	0xe78400		4c8d6424b8			LEAQ -0x48(SP), R12							
  control_controller.go:425	0xe78405		4d3b6610			CMPQ R12, 0x10(R14)							
  control_controller.go:425	0xe78409		0f8686030000			JBE 0xe78795								
  control_controller.go:425	0xe7840f		55				PUSHQ BP								
  control_controller.go:425	0xe78410		4889e5				MOVQ SP, BP								
  control_controller.go:425	0xe78413		4881ecc0000000			SUBQ $.file+115(SB), SP							
  context.go:712		0xe7841a		48898424d0000000		MOVQ AX, 0xd0(SP)							
  control_controller.go:426	0xe78422		488d15f7a41c00			LEAQ runtime.types+383264(SB), DX					
  control_controller.go:426	0xe78429		4889942498000000		MOVQ DX, 0x98(SP)							
  control_controller.go:426	0xe78431		4c8d052804ff01			LEAQ CAS-Backend/biz/controller..stmp_27(SB), R8			
  control_controller.go:426	0xe78438		4c898424a0000000		MOVQ R8, 0xa0(SP)							
  print.go:314			0xe78440		488b1d399c6902			MOVQ os.Stdout(SB), BX							
  print.go:314			0xe78447		488d8c2498000000		LEAQ 0x98(SP), CX							
  print.go:314			0xe7844f		bf01000000			MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe78454		4889fe				MOVQ DI, SI								
  print.go:314			0xe78457		488d058236ff01			LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe7845e		6690				NOPW									
  print.go:314			0xe78460		e8fb736aff			CALL fmt.Fprintln(SB)							
  control_controller.go:427	0xe78465		488d05b4602a00			LEAQ runtime.types+1283360(SB), AX					
  control_controller.go:427	0xe7846c		e82f9359ff			CALL runtime.newobject(SB)						
  control_controller.go:427	0xe78471		48898424b8000000		MOVQ AX, 0xb8(SP)							
  context.go:712		0xe78479		488b1560f31300			MOVQ github.com/gin-gonic/gin/binding.JSON(SB), DX			
  context.go:712		0xe78480		4c8b0561f31300			MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), R8			
  context.go:712		0xe78487		4885d2				TESTQ DX, DX								
  context.go:712		0xe7848a		7419				JE 0xe784a5								
  context.go:712		0xe7848c		488b5a08			MOVQ 0x8(DX), BX							
  context.go:712		0xe78490		488b35f92b1400			MOVQ CAS-Backend/biz/controller..typeAssert.7(SB), SI			
  context.go:712		0xe78497		4c8b0e				MOVQ 0(SI), R9								
  context.go:712		0xe7849a		8b5210				MOVL 0x10(DX), DX							
  context.go:712		0xe7849d		0f1f00				NOPL 0(AX)								
  context.go:712		0xe784a0		e99e020000			JMP 0xe78743								
  context.go:752		0xe784a5		488b5218			MOVQ 0x18(DX), DX							
  context.go:752		0xe784a9		488bb424d0000000		MOVQ 0xd0(SP), SI							
  context.go:752		0xe784b1		488b5e20			MOVQ 0x20(SI), BX							
  context.go:752		0xe784b5		488d0da4e01a00			LEAQ runtime.types+267616(SB), CX					
  context.go:752		0xe784bc		4889c7				MOVQ AX, DI								
  context.go:752		0xe784bf		4c89c0				MOVQ R8, AX								
  context.go:752		0xe784c2		ffd2				CALL DX									
  control_controller.go:429	0xe784c4		4885c0				TESTQ AX, AX								
  control_controller.go:429	0xe784c7		0f8518010000			JNE 0xe785e5								
  control_controller.go:435	0xe784cd		440f117c2478			MOVUPS X15, 0x78(SP)							
  control_controller.go:435	0xe784d3		488b8c24b8000000		MOVQ 0xb8(SP), CX							
  control_controller.go:435	0xe784db		488b4120			MOVQ 0x20(CX), AX							
  control_controller.go:435	0xe784df		90				NOPL									
  control_controller.go:435	0xe784e0		e8bb1b5fff			CALL runtime.convT64(SB)						
  control_controller.go:435	0xe784e5		488d0d74a61c00			LEAQ runtime.types+383840(SB), CX					
  control_controller.go:435	0xe784ec		48894c2478			MOVQ CX, 0x78(SP)							
  control_controller.go:435	0xe784f1		4889842480000000		MOVQ AX, 0x80(SP)							
  print.go:314			0xe784f9		488b1d809b6902			MOVQ os.Stdout(SB), BX							
  print.go:314			0xe78500		488d05d935ff01			LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe78507		488d4c2478			LEAQ 0x78(SP), CX							
  print.go:314			0xe7850c		bf01000000			MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe78511		4889fe				MOVQ DI, SI								
  print.go:314			0xe78514		e847736aff			CALL fmt.Fprintln(SB)							
  control_controller.go:437	0xe78519		0f57c0				XORPS X0, X0								
  control_controller.go:437	0xe7851c		f20f11442438			MOVSD_XMM X0, 0x38(SP)							
  control_controller.go:439	0xe78522		488b8c24b8000000		MOVQ 0xb8(SP), CX							
  control_controller.go:439	0xe7852a		4883792001			CMPQ 0x20(CX), $__minor_os_version__(SB)				
  control_controller.go:439	0xe7852f		740c				JE 0xe7853d								
  control_controller.go:455	0xe78531		c605804d6e0200			MOVB $0x0, CAS-Backend/biz/controller.is_up(SB)				
  control_controller.go:455	0xe78538		e92a010000			JMP 0xe78667								
  control_controller.go:440	0xe7853d		c605744d6e0201			MOVB $__minor_os_version__(SB), CAS-Backend/biz/controller.is_up(SB)	
  control_controller.go:441	0xe78544		48c78424b000000000000000	MOVQ $0x0, 0xb0(SP)							
  control_controller.go:441	0xe78550		488d15c9020000			LEAQ CAS-Backend/biz/controller.Huocha_up.func1(SB), DX			
  control_controller.go:441	0xe78557		48899424a8000000		MOVQ DX, 0xa8(SP)							
  control_controller.go:441	0xe7855f		488d542438			LEAQ 0x38(SP), DX							
  control_controller.go:441	0xe78564		48899424b0000000		MOVQ DX, 0xb0(SP)							
  control_controller.go:441	0xe7856c		488b4110			MOVQ 0x10(CX), AX							
  control_controller.go:441	0xe78570		488b5918			MOVQ 0x18(CX), BX							
  control_controller.go:441	0xe78574		488dbc24a8000000		LEAQ 0xa8(SP), DI							
  control_controller.go:441	0xe7857c		b9044b0000			MOVL $__size_of_stack_commit__+15108(SB), CX				
  control_controller.go:441	0xe78581		e87ab0f9ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)				
  control_controller.go:450	0xe78586		4885c0				TESTQ AX, AX								
  control_controller.go:450	0xe78589		744c				JE 0xe785d7								
  control_controller.go:451	0xe7858b		440f117c2468			MOVUPS X15, 0x68(SP)							
  control_controller.go:451	0xe78591		7404				JE 0xe78597								
  control_controller.go:451	0xe78593		488b4008			MOVQ 0x8(AX), AX							
  control_controller.go:451	0xe78597		4889442468			MOVQ AX, 0x68(SP)							
  control_controller.go:451	0xe7859c		48895c2470			MOVQ BX, 0x70(SP)							
  print.go:233			0xe785a1		488b1dd89a6902			MOVQ os.Stdout(SB), BX							
  print.go:233			0xe785a8		488d053135ff01			LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe785af		488d0dfb213100			LEAQ go:string.*+139945(SB), CX						
  print.go:233			0xe785b6		bf1d000000			MOVL $__major_os_version__+23(SB), DI					
  print.go:233			0xe785bb		488d742468			LEAQ 0x68(SP), SI							
  print.go:233			0xe785c0		41b801000000			MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe785c6		4d89c1				MOVQ R8, R9								
  print.go:233			0xe785c9		e8526c6aff			CALL fmt.Fprintf(SB)							
  control_controller.go:452	0xe785ce		4881c4c0000000			ADDQ $.file+115(SB), SP							
  control_controller.go:452	0xe785d5		5d				POPQ BP									
  control_controller.go:452	0xe785d6		c3				RET									
  control_controller.go:464	0xe785d7		488b8c24b8000000		MOVQ 0xb8(SP), CX							
  control_controller.go:464	0xe785df		90				NOPL									
  control_controller.go:459	0xe785e0		e982000000			JMP 0xe78667								
  context.go:752		0xe785e5		48895c2448			MOVQ BX, 0x48(SP)							
  context.go:752		0xe785ea		4889442440			MOVQ AX, 0x40(SP)							
  control_controller.go:430	0xe785ef		488d152aa31c00			LEAQ runtime.types+383264(SB), DX					
  control_controller.go:430	0xe785f6		4889942488000000		MOVQ DX, 0x88(SP)							
  control_controller.go:430	0xe785fe		488d15cb01ff01			LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX				
  control_controller.go:430	0xe78605		4889942490000000		MOVQ DX, 0x90(SP)							
  print.go:314			0xe7860d		488b1d6c9a6902			MOVQ os.Stdout(SB), BX							
  print.go:314			0xe78614		488d05c534ff01			LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe7861b		488d8c2488000000		LEAQ 0x88(SP), CX							
  print.go:314			0xe78623		bf01000000			MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe78628		4889fe				MOVQ DI, SI								
  print.go:314			0xe7862b		e830726aff			CALL fmt.Fprintln(SB)							
  control_controller.go:431	0xe78630		488b8424d0000000		MOVQ 0xd0(SP), AX							
  control_controller.go:431	0xe78638		bb90010000			MOVL $.file+323(SB), BX							
  control_controller.go:431	0xe7863d		488b4c2440			MOVQ 0x40(SP), CX							
  control_controller.go:431	0xe78642		488b7c2448			MOVQ 0x48(SP), DI							
  control_controller.go:431	0xe78647		e8542af8ff			CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)		
  control_controller.go:432	0xe7864c		4881c4c0000000			ADDQ $.file+115(SB), SP							
  control_controller.go:432	0xe78653		5d				POPQ BP									
  control_controller.go:432	0xe78654		c3				RET									
  control_controller.go:471	0xe78655		b800ca9a3b			MOVL $0x3b9aca00, AX							
  control_controller.go:471	0xe7865a		e8e1ba5fff			CALL time.Sleep(SB)							
  control_controller.go:464	0xe7865f		488b8c24b8000000		MOVQ 0xb8(SP), CX							
  control_controller.go:459	0xe78667		803d4a4c6e0200			CMPB CAS-Backend/biz/controller.is_up(SB), $0x0				
  control_controller.go:459	0xe7866e		0f84c6000000			JE 0xe7873a								
  control_controller.go:460	0xe78674		f20f10442438			MOVSD_XMM 0x38(SP), X0							
  control_controller.go:460	0xe7867a		f20f100d06f3fe01		MOVSD_XMM $f64.3fb999999999999a(SB), X1					
  control_controller.go:460	0xe78682		f20f58c1			ADDSD X1, X0								
  control_controller.go:460	0xe78686		f20f11442438			MOVSD_XMM X0, 0x38(SP)							
  control_controller.go:461	0xe7868c		f20f1015fcf2fe01		MOVSD_XMM $f64.4008000000000000(SB), X2					
  control_controller.go:461	0xe78694		660f2ec2			UCOMISD X2, X0								
  control_controller.go:461	0xe78698		7606				JBE 0xe786a0								
  control_controller.go:462	0xe7869a		f20f11542438			MOVSD_XMM X2, 0x38(SP)							
  control_controller.go:464	0xe786a0		48c78424b000000000000000	MOVQ $0x0, 0xb0(SP)							
  control_controller.go:464	0xe786ac		488d150d010000			LEAQ CAS-Backend/biz/controller.Huocha_up.func2(SB), DX			
  control_controller.go:464	0xe786b3		48899424a8000000		MOVQ DX, 0xa8(SP)							
  control_controller.go:464	0xe786bb		488d742438			LEAQ 0x38(SP), SI							
  control_controller.go:464	0xe786c0		4889b424b0000000		MOVQ SI, 0xb0(SP)							
  control_controller.go:464	0xe786c8		488b4110			MOVQ 0x10(CX), AX							
  control_controller.go:464	0xe786cc		488b5918			MOVQ 0x18(CX), BX							
  control_controller.go:464	0xe786d0		488dbc24a8000000		LEAQ 0xa8(SP), DI							
  control_controller.go:464	0xe786d8		b90a4b0000			MOVL $__size_of_stack_commit__+15114(SB), CX				
  control_controller.go:464	0xe786dd		0f1f00				NOPL 0(AX)								
  control_controller.go:464	0xe786e0		e81baff9ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)				
  control_controller.go:467	0xe786e5		4885c0				TESTQ AX, AX								
  control_controller.go:467	0xe786e8		0f8467ffffff			JE 0xe78655								
  control_controller.go:468	0xe786ee		440f117c2458			MOVUPS X15, 0x58(SP)							
  control_controller.go:468	0xe786f4		7404				JE 0xe786fa								
  control_controller.go:468	0xe786f6		488b4008			MOVQ 0x8(AX), AX							
  control_controller.go:468	0xe786fa		4889442458			MOVQ AX, 0x58(SP)							
  control_controller.go:468	0xe786ff		48895c2460			MOVQ BX, 0x60(SP)							
  print.go:233			0xe78704		488b1d75996902			MOVQ os.Stdout(SB), BX							
  print.go:233			0xe7870b		488d05ce33ff01			LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe78712		488d0d3db43000			LEAQ go:string.*+112206(SB), CX						
  print.go:233			0xe78719		bf17000000			MOVL $__major_os_version__+17(SB), DI					
  print.go:233			0xe7871e		488d742458			LEAQ 0x58(SP), SI							
  print.go:233			0xe78723		41b801000000			MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe78729		4d89c1				MOVQ R8, R9								
  print.go:233			0xe7872c		e8ef6a6aff			CALL fmt.Fprintf(SB)							
  control_controller.go:469	0xe78731		4881c4c0000000			ADDQ $.file+115(SB), SP							
  control_controller.go:469	0xe78738		5d				POPQ BP									
  control_controller.go:469	0xe78739		c3				RET									
  control_controller.go:482	0xe7873a		4881c4c0000000			ADDQ $.file+115(SB), SP							
  control_controller.go:482	0xe78741		5d				POPQ BP									
  control_controller.go:482	0xe78742		c3				RET									
  context.go:712		0xe78743		4989d2				MOVQ DX, R10								
  context.go:712		0xe78746		4c21ca				ANDQ R9, DX								
  context.go:712		0xe78749		48c1e204			SHLQ $__subsystem__+1(SB), DX						
  context.go:712		0xe7874d		4c8b5c3208			MOVQ 0x8(DX)(SI*1), R11							
  context.go:712		0xe78752		4939db				CMPQ R11, BX								
  context.go:712		0xe78755		7434				JE 0xe7878b								
  context.go:712		0xe78757		498d5201			LEAQ 0x1(R10), DX							
  context.go:712		0xe7875b		0f1f440000			NOPL 0(AX)(AX*1)							
  context.go:712		0xe78760		4d85db				TESTQ R11, R11								
  context.go:712		0xe78763		75de				JNE 0xe78743								
  context.go:712		0xe78765		4c89442450			MOVQ R8, 0x50(SP)							
  context.go:712		0xe7876a		488d051f291400			LEAQ CAS-Backend/biz/controller..typeAssert.7(SB), AX			
  context.go:712		0xe78771		e86a6b59ff			CALL runtime.typeAssert(SB)						
  context.go:752		0xe78776		4c8b442450			MOVQ 0x50(SP), R8							
  context.go:712		0xe7877b		4889c2				MOVQ AX, DX								
  context.go:752		0xe7877e		488b8424b8000000		MOVQ 0xb8(SP), AX							
  context.go:712		0xe78786		e91afdffff			JMP 0xe784a5								
  context.go:712		0xe7878b		488b543210			MOVQ 0x10(DX)(SI*1), DX							
  context.go:712		0xe78790		e910fdffff			JMP 0xe784a5								
  control_controller.go:425	0xe78795		4889442408			MOVQ AX, 0x8(SP)							
  control_controller.go:425	0xe7879a		e841dd5fff			CALL runtime.morestack_noctxt.abi0(SB)					
  control_controller.go:425	0xe7879f		488b442408			MOVQ 0x8(SP), AX							
  control_controller.go:425	0xe787a4		e957fcffff			JMP CAS-Backend/biz/controller.Huocha_up(SB)				
  :-1				0xe787a9		cc				INT $__subsystem__(SB)							
  :-1				0xe787aa		cc				INT $__subsystem__(SB)							
  :-1				0xe787ab		cc				INT $__subsystem__(SB)							
  :-1				0xe787ac		cc				INT $__subsystem__(SB)							
  :-1				0xe787ad		cc				INT $__subsystem__(SB)							
  :-1				0xe787ae		cc				INT $__subsystem__(SB)							
  :-1				0xe787af		cc				INT $__subsystem__(SB)							
  :-1				0xe787b0		cc				INT $__subsystem__(SB)							
  :-1				0xe787b1		cc				INT $__subsystem__(SB)							
  :-1				0xe787b2		cc				INT $__subsystem__(SB)							
  :-1				0xe787b3		cc				INT $__subsystem__(SB)							
  :-1				0xe787b4		cc				INT $__subsystem__(SB)							
  :-1				0xe787b5		cc				INT $__subsystem__(SB)							
  :-1				0xe787b6		cc				INT $__subsystem__(SB)							
  :-1				0xe787b7		cc				INT $__subsystem__(SB)							
  :-1				0xe787b8		cc				INT $__subsystem__(SB)							
  :-1				0xe787b9		cc				INT $__subsystem__(SB)							
  :-1				0xe787ba		cc				INT $__subsystem__(SB)							
  :-1				0xe787bb		cc				INT $__subsystem__(SB)							
  :-1				0xe787bc		cc				INT $__subsystem__(SB)							
  :-1				0xe787bd		cc				INT $__subsystem__(SB)							
  :-1				0xe787be		cc				INT $__subsystem__(SB)							
  :-1				0xe787bf		cc				INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.Huocha_up.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:464	0xe787c0		493b6610		CMPQ SP, 0x10(R14)						
  control_controller.go:464	0xe787c4		7625			JBE 0xe787eb							
  control_controller.go:464	0xe787c6		55			PUSHQ BP							
  control_controller.go:464	0xe787c7		4889e5			MOVQ SP, BP							
  control_controller.go:464	0xe787ca		4883ec18		SUBQ $__major_os_version__+18(SB), SP				
  control_controller.go:464	0xe787ce		4889442428		MOVQ AX, 0x28(SP)						
  control_controller.go:464	0xe787d3		48895c2430		MOVQ BX, 0x30(SP)						
  control_controller.go:464	0xe787d8		488b4a08		MOVQ 0x8(DX), CX						
  control_controller.go:465	0xe787dc		f20f1001		MOVSD_XMM 0(CX), X0						
  control_controller.go:465	0xe787e0		e87b1ffaff		CALL CAS-Backend/pkg/agvcontrol.SendHuochaHeightCommand(SB)	
  control_controller.go:465	0xe787e5		4883c418		ADDQ $__major_os_version__+18(SB), SP				
  control_controller.go:465	0xe787e9		5d			POPQ BP								
  control_controller.go:465	0xe787ea		c3			RET								
  control_controller.go:464	0xe787eb		4889442408		MOVQ AX, 0x8(SP)						
  control_controller.go:464	0xe787f0		48895c2410		MOVQ BX, 0x10(SP)						
  control_controller.go:464	0xe787f5		e866dc5fff		CALL runtime.morestack.abi0(SB)					
  control_controller.go:464	0xe787fa		488b442408		MOVQ 0x8(SP), AX						
  control_controller.go:464	0xe787ff		488b5c2410		MOVQ 0x10(SP), BX						
  control_controller.go:464	0xe78804		ebba			JMP CAS-Backend/biz/controller.Huocha_up.func2(SB)		
  :-1				0xe78806		cc			INT $__subsystem__(SB)						
  :-1				0xe78807		cc			INT $__subsystem__(SB)						
  :-1				0xe78808		cc			INT $__subsystem__(SB)						
  :-1				0xe78809		cc			INT $__subsystem__(SB)						
  :-1				0xe7880a		cc			INT $__subsystem__(SB)						
  :-1				0xe7880b		cc			INT $__subsystem__(SB)						
  :-1				0xe7880c		cc			INT $__subsystem__(SB)						
  :-1				0xe7880d		cc			INT $__subsystem__(SB)						
  :-1				0xe7880e		cc			INT $__subsystem__(SB)						
  :-1				0xe7880f		cc			INT $__subsystem__(SB)						
  :-1				0xe78810		cc			INT $__subsystem__(SB)						
  :-1				0xe78811		cc			INT $__subsystem__(SB)						
  :-1				0xe78812		cc			INT $__subsystem__(SB)						
  :-1				0xe78813		cc			INT $__subsystem__(SB)						
  :-1				0xe78814		cc			INT $__subsystem__(SB)						
  :-1				0xe78815		cc			INT $__subsystem__(SB)						
  :-1				0xe78816		cc			INT $__subsystem__(SB)						
  :-1				0xe78817		cc			INT $__subsystem__(SB)						
  :-1				0xe78818		cc			INT $__subsystem__(SB)						
  :-1				0xe78819		cc			INT $__subsystem__(SB)						
  :-1				0xe7881a		cc			INT $__subsystem__(SB)						
  :-1				0xe7881b		cc			INT $__subsystem__(SB)						
  :-1				0xe7881c		cc			INT $__subsystem__(SB)						
  :-1				0xe7881d		cc			INT $__subsystem__(SB)						
  :-1				0xe7881e		cc			INT $__subsystem__(SB)						
  :-1				0xe7881f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.Huocha_up.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:441	0xe78820		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:441	0xe78824		0f869b000000		JBE 0xe788c5						
  control_controller.go:441	0xe7882a		55			PUSHQ BP						
  control_controller.go:441	0xe7882b		4889e5			MOVQ SP, BP						
  control_controller.go:441	0xe7882e		4883ec50		SUBQ $.file+3(SB), SP					
  control_controller.go:441	0xe78832		4889442460		MOVQ AX, 0x60(SP)					
  control_controller.go:441	0xe78837		48895c2468		MOVQ BX, 0x68(SP)					
  control_controller.go:441	0xe7883c		488b4a08		MOVQ 0x8(DX), CX					
  control_controller.go:441	0xe78840		48894c2448		MOVQ CX, 0x48(SP)					
  control_controller.go:442	0xe78845		e8f619faff		CALL CAS-Backend/pkg/agvcontrol.QueryForkStatus(SB)	
  control_controller.go:443	0xe7884a		4885db			TESTQ BX, BX						
  control_controller.go:443	0xe7884d		740c			JE 0xe7885b						
  control_controller.go:444	0xe7884f		4889d8			MOVQ BX, AX						
  control_controller.go:444	0xe78852		4889cb			MOVQ CX, BX						
  control_controller.go:444	0xe78855		4883c450		ADDQ $.file+3(SB), SP					
  control_controller.go:444	0xe78859		5d			POPQ BP							
  control_controller.go:444	0xe7885a		c3			RET							
  control_controller.go:446	0xe7885b		f20f104018		MOVSD_XMM 0x18(AX), X0					
  control_controller.go:446	0xe78860		488b4c2448		MOVQ 0x48(SP), CX					
  control_controller.go:446	0xe78865		f20f1101		MOVSD_XMM X0, 0(CX)					
  control_controller.go:447	0xe78869		440f117c2438		MOVUPS X15, 0x38(SP)					
  control_controller.go:447	0xe7886f		f20f1001		MOVSD_XMM 0(CX), X0					
  control_controller.go:447	0xe78873		66480f7ec0		MOVQ X0, AX						
  control_controller.go:447	0xe78878		e823185fff		CALL runtime.convT64(SB)				
  control_controller.go:447	0xe7887d		488d0d5ca41c00		LEAQ runtime.types+384224(SB), CX			
  control_controller.go:447	0xe78884		48894c2438		MOVQ CX, 0x38(SP)					
  control_controller.go:447	0xe78889		4889442440		MOVQ AX, 0x40(SP)					
  print.go:233			0xe7888e		488b1deb976902		MOVQ os.Stdout(SB), BX					
  print.go:233			0xe78895		488d054432ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233			0xe7889c		488d0dc5523100		LEAQ go:string.*+153184(SB), CX				
  print.go:233			0xe788a3		bf20000000		MOVL $__major_os_version__+26(SB), DI			
  print.go:233			0xe788a8		488d742438		LEAQ 0x38(SP), SI					
  print.go:233			0xe788ad		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233			0xe788b3		4d89c1			MOVQ R8, R9						
  print.go:233			0xe788b6		e865696aff		CALL fmt.Fprintf(SB)					
  control_controller.go:448	0xe788bb		31c0			XORL AX, AX						
  control_controller.go:448	0xe788bd		31db			XORL BX, BX						
  control_controller.go:448	0xe788bf		4883c450		ADDQ $.file+3(SB), SP					
  control_controller.go:448	0xe788c3		5d			POPQ BP							
  control_controller.go:448	0xe788c4		c3			RET							
  control_controller.go:441	0xe788c5		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:441	0xe788ca		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:441	0xe788cf		e88cdb5fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:441	0xe788d4		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:441	0xe788d9		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:441	0xe788de		6690			NOPW							
  control_controller.go:441	0xe788e0		e93bffffff		JMP CAS-Backend/biz/controller.Huocha_up.func1(SB)	
  :-1				0xe788e5		cc			INT $__subsystem__(SB)					
  :-1				0xe788e6		cc			INT $__subsystem__(SB)					
  :-1				0xe788e7		cc			INT $__subsystem__(SB)					
  :-1				0xe788e8		cc			INT $__subsystem__(SB)					
  :-1				0xe788e9		cc			INT $__subsystem__(SB)					
  :-1				0xe788ea		cc			INT $__subsystem__(SB)					
  :-1				0xe788eb		cc			INT $__subsystem__(SB)					
  :-1				0xe788ec		cc			INT $__subsystem__(SB)					
  :-1				0xe788ed		cc			INT $__subsystem__(SB)					
  :-1				0xe788ee		cc			INT $__subsystem__(SB)					
  :-1				0xe788ef		cc			INT $__subsystem__(SB)					
  :-1				0xe788f0		cc			INT $__subsystem__(SB)					
  :-1				0xe788f1		cc			INT $__subsystem__(SB)					
  :-1				0xe788f2		cc			INT $__subsystem__(SB)					
  :-1				0xe788f3		cc			INT $__subsystem__(SB)					
  :-1				0xe788f4		cc			INT $__subsystem__(SB)					
  :-1				0xe788f5		cc			INT $__subsystem__(SB)					
  :-1				0xe788f6		cc			INT $__subsystem__(SB)					
  :-1				0xe788f7		cc			INT $__subsystem__(SB)					
  :-1				0xe788f8		cc			INT $__subsystem__(SB)					
  :-1				0xe788f9		cc			INT $__subsystem__(SB)					
  :-1				0xe788fa		cc			INT $__subsystem__(SB)					
  :-1				0xe788fb		cc			INT $__subsystem__(SB)					
  :-1				0xe788fc		cc			INT $__subsystem__(SB)					
  :-1				0xe788fd		cc			INT $__subsystem__(SB)					
  :-1				0xe788fe		cc			INT $__subsystem__(SB)					
  :-1				0xe788ff		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Huocha_set(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:484	0xe78900		4c8d6424d0		LEAQ -0x30(SP), R12						
  control_controller.go:484	0xe78905		4d3b6610		CMPQ R12, 0x10(R14)						
  control_controller.go:484	0xe78909		0f868f020000		JBE 0xe78b9e							
  control_controller.go:484	0xe7890f		55			PUSHQ BP							
  control_controller.go:484	0xe78910		4889e5			MOVQ SP, BP							
  control_controller.go:484	0xe78913		4881eca8000000		SUBQ $.file+91(SB), SP						
  context.go:712		0xe7891a		48898424b8000000	MOVQ AX, 0xb8(SP)						
  control_controller.go:485	0xe78922		488d15f79f1c00		LEAQ runtime.types+383264(SB), DX				
  control_controller.go:485	0xe78929		4889942480000000	MOVQ DX, 0x80(SP)						
  control_controller.go:485	0xe78931		4c8d0538fffe01		LEAQ CAS-Backend/biz/controller..stmp_29(SB), R8		
  control_controller.go:485	0xe78938		4c89842488000000	MOVQ R8, 0x88(SP)						
  print.go:314			0xe78940		488b1d39976902		MOVQ os.Stdout(SB), BX						
  print.go:314			0xe78947		488d8c2480000000	LEAQ 0x80(SP), CX						
  print.go:314			0xe7894f		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314			0xe78954		4889fe			MOVQ DI, SI							
  print.go:314			0xe78957		488d058231ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314			0xe7895e		6690			NOPW								
  print.go:314			0xe78960		e8fb6e6aff		CALL fmt.Fprintln(SB)						
  control_controller.go:486	0xe78965		488d05b45b2a00		LEAQ runtime.types+1283360(SB), AX				
  control_controller.go:486	0xe7896c		e82f8e59ff		CALL runtime.newobject(SB)					
  control_controller.go:486	0xe78971		48898424a0000000	MOVQ AX, 0xa0(SP)						
  context.go:712		0xe78979		488b1560ee1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), DX		
  context.go:712		0xe78980		4c8b0561ee1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), R8		
  context.go:712		0xe78987		4885d2			TESTQ DX, DX							
  context.go:712		0xe7898a		7419			JE 0xe789a5							
  context.go:712		0xe7898c		488b5a08		MOVQ 0x8(DX), BX						
  context.go:712		0xe78990		488b3519271400		MOVQ CAS-Backend/biz/controller..typeAssert.8(SB), SI		
  context.go:712		0xe78997		4c8b0e			MOVQ 0(SI), R9							
  context.go:712		0xe7899a		8b5210			MOVL 0x10(DX), DX						
  context.go:712		0xe7899d		0f1f00			NOPL 0(AX)							
  context.go:712		0xe789a0		e9a9010000		JMP 0xe78b4e							
  context.go:752		0xe789a5		488b5218		MOVQ 0x18(DX), DX						
  context.go:752		0xe789a9		488bb424b8000000	MOVQ 0xb8(SP), SI						
  context.go:752		0xe789b1		488b5e20		MOVQ 0x20(SI), BX						
  context.go:752		0xe789b5		488d0da4db1a00		LEAQ runtime.types+267616(SB), CX				
  context.go:752		0xe789bc		4889c7			MOVQ AX, DI							
  context.go:752		0xe789bf		4c89c0			MOVQ R8, AX							
  context.go:752		0xe789c2		ffd2			CALL DX								
  control_controller.go:488	0xe789c4		4885c0			TESTQ AX, AX							
  control_controller.go:488	0xe789c7		0f8512010000		JNE 0xe78adf							
  control_controller.go:494	0xe789cd		440f117c2460		MOVUPS X15, 0x60(SP)						
  control_controller.go:494	0xe789d3		488b8c24a0000000	MOVQ 0xa0(SP), CX						
  control_controller.go:494	0xe789db		f20f104130		MOVSD_XMM 0x30(CX), X0						
  control_controller.go:494	0xe789e0		66480f7ec0		MOVQ X0, AX							
  control_controller.go:494	0xe789e5		e8b6165fff		CALL runtime.convT64(SB)					
  control_controller.go:494	0xe789ea		488d0defa21c00		LEAQ runtime.types+384224(SB), CX				
  control_controller.go:494	0xe789f1		48894c2460		MOVQ CX, 0x60(SP)						
  control_controller.go:494	0xe789f6		4889442468		MOVQ AX, 0x68(SP)						
  print.go:314			0xe789fb		488b1d7e966902		MOVQ os.Stdout(SB), BX						
  print.go:314			0xe78a02		488d05d730ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314			0xe78a09		488d4c2460		LEAQ 0x60(SP), CX						
  print.go:314			0xe78a0e		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314			0xe78a13		4889fe			MOVQ DI, SI							
  print.go:314			0xe78a16		e8456e6aff		CALL fmt.Fprintln(SB)						
  control_controller.go:496	0xe78a1b		488b8c24a0000000	MOVQ 0xa0(SP), CX						
  control_controller.go:496	0xe78a23		f20f104130		MOVSD_XMM 0x30(CX), X0						
  control_controller.go:496	0xe78a28		f20f100d60effe01	MOVSD_XMM $f64.4008000000000000(SB), X1				
  control_controller.go:496	0xe78a30		660f2ec1		UCOMISD X1, X0							
  control_controller.go:496	0xe78a34		7605			JBE 0xe78a3b							
  control_controller.go:497	0xe78a36		f20f114930		MOVSD_XMM X1, 0x30(CX)						
  control_controller.go:499	0xe78a3b		f20f104130		MOVSD_XMM 0x30(CX), X0						
  control_controller.go:499	0xe78a40		f20f100d10eefe01	MOVSD_XMM $f64.3fb604189374bc6a(SB), X1				
  control_controller.go:499	0xe78a48		660f2ec8		UCOMISD X0, X1							
  control_controller.go:499	0xe78a4c		7605			JBE 0xe78a53							
  control_controller.go:500	0xe78a4e		f20f114930		MOVSD_XMM X1, 0x30(CX)						
  control_controller.go:502	0xe78a53		488d1566010000		LEAQ CAS-Backend/biz/controller.Huocha_set.func1(SB), DX	
  control_controller.go:502	0xe78a5a		4889942490000000	MOVQ DX, 0x90(SP)						
  control_controller.go:502	0xe78a62		48898c2498000000	MOVQ CX, 0x98(SP)						
  control_controller.go:502	0xe78a6a		488b4110		MOVQ 0x10(CX), AX						
  control_controller.go:502	0xe78a6e		488b5918		MOVQ 0x18(CX), BX						
  control_controller.go:502	0xe78a72		b90a4b0000		MOVL $__size_of_stack_commit__+15114(SB), CX			
  control_controller.go:502	0xe78a77		488dbc2490000000	LEAQ 0x90(SP), DI						
  control_controller.go:502	0xe78a7f		90			NOPL								
  control_controller.go:502	0xe78a80		e87babf9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)			
  control_controller.go:505	0xe78a85		4885c0			TESTQ AX, AX							
  control_controller.go:505	0xe78a88		744c			JE 0xe78ad6							
  control_controller.go:506	0xe78a8a		440f117c2450		MOVUPS X15, 0x50(SP)						
  control_controller.go:506	0xe78a90		7404			JE 0xe78a96							
  control_controller.go:506	0xe78a92		488b4008		MOVQ 0x8(AX), AX						
  control_controller.go:506	0xe78a96		4889442450		MOVQ AX, 0x50(SP)						
  control_controller.go:506	0xe78a9b		48895c2458		MOVQ BX, 0x58(SP)						
  print.go:233			0xe78aa0		488b1dd9956902		MOVQ os.Stdout(SB), BX						
  print.go:233			0xe78aa7		488d053230ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233			0xe78aae		488d0da1b03000		LEAQ go:string.*+112206(SB), CX					
  print.go:233			0xe78ab5		bf17000000		MOVL $__major_os_version__+17(SB), DI				
  print.go:233			0xe78aba		488d742450		LEAQ 0x50(SP), SI						
  print.go:233			0xe78abf		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233			0xe78ac5		4d89c1			MOVQ R8, R9							
  print.go:233			0xe78ac8		e853676aff		CALL fmt.Fprintf(SB)						
  control_controller.go:507	0xe78acd		4881c4a8000000		ADDQ $.file+91(SB), SP						
  control_controller.go:507	0xe78ad4		5d			POPQ BP								
  control_controller.go:507	0xe78ad5		c3			RET								
  control_controller.go:510	0xe78ad6		4881c4a8000000		ADDQ $.file+91(SB), SP						
  control_controller.go:510	0xe78add		5d			POPQ BP								
  control_controller.go:510	0xe78ade		c3			RET								
  context.go:752		0xe78adf		4889442438		MOVQ AX, 0x38(SP)						
  context.go:752		0xe78ae4		48895c2440		MOVQ BX, 0x40(SP)						
  control_controller.go:489	0xe78ae9		488d15309e1c00		LEAQ runtime.types+383264(SB), DX				
  control_controller.go:489	0xe78af0		4889542470		MOVQ DX, 0x70(SP)						
  control_controller.go:489	0xe78af5		488d15d4fcfe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX			
  control_controller.go:489	0xe78afc		4889542478		MOVQ DX, 0x78(SP)						
  print.go:314			0xe78b01		488b1d78956902		MOVQ os.Stdout(SB), BX						
  print.go:314			0xe78b08		488d05d12fff01		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314			0xe78b0f		488d4c2470		LEAQ 0x70(SP), CX						
  print.go:314			0xe78b14		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314			0xe78b19		4889fe			MOVQ DI, SI							
  print.go:314			0xe78b1c		0f1f4000		NOPL 0(AX)							
  print.go:314			0xe78b20		e83b6d6aff		CALL fmt.Fprintln(SB)						
  control_controller.go:490	0xe78b25		488b8424b8000000	MOVQ 0xb8(SP), AX						
  control_controller.go:490	0xe78b2d		bb90010000		MOVL $.file+323(SB), BX						
  control_controller.go:490	0xe78b32		488b4c2438		MOVQ 0x38(SP), CX						
  control_controller.go:490	0xe78b37		488b7c2440		MOVQ 0x40(SP), DI						
  control_controller.go:490	0xe78b3c		0f1f4000		NOPL 0(AX)							
  control_controller.go:490	0xe78b40		e85b25f8ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)	
  control_controller.go:491	0xe78b45		4881c4a8000000		ADDQ $.file+91(SB), SP						
  control_controller.go:491	0xe78b4c		5d			POPQ BP								
  control_controller.go:491	0xe78b4d		c3			RET								
  context.go:712		0xe78b4e		4989d2			MOVQ DX, R10							
  context.go:712		0xe78b51		4c21ca			ANDQ R9, DX							
  context.go:712		0xe78b54		48c1e204		SHLQ $__subsystem__+1(SB), DX					
  context.go:712		0xe78b58		4c8b5c3208		MOVQ 0x8(DX)(SI*1), R11						
  context.go:712		0xe78b5d		0f1f00			NOPL 0(AX)							
  context.go:712		0xe78b60		4939db			CMPQ R11, BX							
  context.go:712		0xe78b63		742f			JE 0xe78b94							
  context.go:712		0xe78b65		498d5201		LEAQ 0x1(R10), DX						
  context.go:712		0xe78b69		4d85db			TESTQ R11, R11							
  context.go:712		0xe78b6c		75e0			JNE 0xe78b4e							
  context.go:712		0xe78b6e		4c89442448		MOVQ R8, 0x48(SP)						
  context.go:712		0xe78b73		488d0536251400		LEAQ CAS-Backend/biz/controller..typeAssert.8(SB), AX		
  context.go:712		0xe78b7a		e8616759ff		CALL runtime.typeAssert(SB)					
  context.go:752		0xe78b7f		4c8b442448		MOVQ 0x48(SP), R8						
  context.go:712		0xe78b84		4889c2			MOVQ AX, DX							
  context.go:752		0xe78b87		488b8424a0000000	MOVQ 0xa0(SP), AX						
  context.go:712		0xe78b8f		e911feffff		JMP 0xe789a5							
  context.go:712		0xe78b94		488b543210		MOVQ 0x10(DX)(SI*1), DX						
  context.go:712		0xe78b99		e907feffff		JMP 0xe789a5							
  control_controller.go:484	0xe78b9e		4889442408		MOVQ AX, 0x8(SP)						
  control_controller.go:484	0xe78ba3		e838d95fff		CALL runtime.morestack_noctxt.abi0(SB)				
  control_controller.go:484	0xe78ba8		488b442408		MOVQ 0x8(SP), AX						
  control_controller.go:484	0xe78bad		e94efdffff		JMP CAS-Backend/biz/controller.Huocha_set(SB)			
  :-1				0xe78bb2		cc			INT $__subsystem__(SB)						
  :-1				0xe78bb3		cc			INT $__subsystem__(SB)						
  :-1				0xe78bb4		cc			INT $__subsystem__(SB)						
  :-1				0xe78bb5		cc			INT $__subsystem__(SB)						
  :-1				0xe78bb6		cc			INT $__subsystem__(SB)						
  :-1				0xe78bb7		cc			INT $__subsystem__(SB)						
  :-1				0xe78bb8		cc			INT $__subsystem__(SB)						
  :-1				0xe78bb9		cc			INT $__subsystem__(SB)						
  :-1				0xe78bba		cc			INT $__subsystem__(SB)						
  :-1				0xe78bbb		cc			INT $__subsystem__(SB)						
  :-1				0xe78bbc		cc			INT $__subsystem__(SB)						
  :-1				0xe78bbd		cc			INT $__subsystem__(SB)						
  :-1				0xe78bbe		cc			INT $__subsystem__(SB)						
  :-1				0xe78bbf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.Huocha_set.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:502	0xe78bc0		493b6610		CMPQ SP, 0x10(R14)						
  control_controller.go:502	0xe78bc4		7626			JBE 0xe78bec							
  control_controller.go:502	0xe78bc6		55			PUSHQ BP							
  control_controller.go:502	0xe78bc7		4889e5			MOVQ SP, BP							
  control_controller.go:502	0xe78bca		4883ec18		SUBQ $__major_os_version__+18(SB), SP				
  control_controller.go:502	0xe78bce		4889442428		MOVQ AX, 0x28(SP)						
  control_controller.go:502	0xe78bd3		48895c2430		MOVQ BX, 0x30(SP)						
  control_controller.go:502	0xe78bd8		488b4a08		MOVQ 0x8(DX), CX						
  control_controller.go:503	0xe78bdc		f20f104130		MOVSD_XMM 0x30(CX), X0						
  control_controller.go:503	0xe78be1		e87a1bfaff		CALL CAS-Backend/pkg/agvcontrol.SendHuochaHeightCommand(SB)	
  control_controller.go:503	0xe78be6		4883c418		ADDQ $__major_os_version__+18(SB), SP				
  control_controller.go:503	0xe78bea		5d			POPQ BP								
  control_controller.go:503	0xe78beb		c3			RET								
  control_controller.go:502	0xe78bec		4889442408		MOVQ AX, 0x8(SP)						
  control_controller.go:502	0xe78bf1		48895c2410		MOVQ BX, 0x10(SP)						
  control_controller.go:502	0xe78bf6		e865d85fff		CALL runtime.morestack.abi0(SB)					
  control_controller.go:502	0xe78bfb		488b442408		MOVQ 0x8(SP), AX						
  control_controller.go:502	0xe78c00		488b5c2410		MOVQ 0x10(SP), BX						
  control_controller.go:502	0xe78c05		ebb9			JMP CAS-Backend/biz/controller.Huocha_set.func1(SB)		
  :-1				0xe78c07		cc			INT $__subsystem__(SB)						
  :-1				0xe78c08		cc			INT $__subsystem__(SB)						
  :-1				0xe78c09		cc			INT $__subsystem__(SB)						
  :-1				0xe78c0a		cc			INT $__subsystem__(SB)						
  :-1				0xe78c0b		cc			INT $__subsystem__(SB)						
  :-1				0xe78c0c		cc			INT $__subsystem__(SB)						
  :-1				0xe78c0d		cc			INT $__subsystem__(SB)						
  :-1				0xe78c0e		cc			INT $__subsystem__(SB)						
  :-1				0xe78c0f		cc			INT $__subsystem__(SB)						
  :-1				0xe78c10		cc			INT $__subsystem__(SB)						
  :-1				0xe78c11		cc			INT $__subsystem__(SB)						
  :-1				0xe78c12		cc			INT $__subsystem__(SB)						
  :-1				0xe78c13		cc			INT $__subsystem__(SB)						
  :-1				0xe78c14		cc			INT $__subsystem__(SB)						
  :-1				0xe78c15		cc			INT $__subsystem__(SB)						
  :-1				0xe78c16		cc			INT $__subsystem__(SB)						
  :-1				0xe78c17		cc			INT $__subsystem__(SB)						
  :-1				0xe78c18		cc			INT $__subsystem__(SB)						
  :-1				0xe78c19		cc			INT $__subsystem__(SB)						
  :-1				0xe78c1a		cc			INT $__subsystem__(SB)						
  :-1				0xe78c1b		cc			INT $__subsystem__(SB)						
  :-1				0xe78c1c		cc			INT $__subsystem__(SB)						
  :-1				0xe78c1d		cc			INT $__subsystem__(SB)						
  :-1				0xe78c1e		cc			INT $__subsystem__(SB)						
  :-1				0xe78c1f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.Huocha_down(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:512	0xe78c20		4c8d6424b8			LEAQ -0x48(SP), R12							
  control_controller.go:512	0xe78c25		4d3b6610			CMPQ R12, 0x10(R14)							
  control_controller.go:512	0xe78c29		0f8686030000			JBE 0xe78fb5								
  control_controller.go:512	0xe78c2f		55				PUSHQ BP								
  control_controller.go:512	0xe78c30		4889e5				MOVQ SP, BP								
  control_controller.go:512	0xe78c33		4881ecc0000000			SUBQ $.file+115(SB), SP							
  context.go:712		0xe78c3a		48898424d0000000		MOVQ AX, 0xd0(SP)							
  control_controller.go:513	0xe78c42		488d15d79c1c00			LEAQ runtime.types+383264(SB), DX					
  control_controller.go:513	0xe78c49		4889942498000000		MOVQ DX, 0x98(SP)							
  control_controller.go:513	0xe78c51		4c8d0528fcfe01			LEAQ CAS-Backend/biz/controller..stmp_31(SB), R8			
  control_controller.go:513	0xe78c58		4c898424a0000000		MOVQ R8, 0xa0(SP)							
  print.go:314			0xe78c60		488b1d19946902			MOVQ os.Stdout(SB), BX							
  print.go:314			0xe78c67		488d8c2498000000		LEAQ 0x98(SP), CX							
  print.go:314			0xe78c6f		bf01000000			MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe78c74		4889fe				MOVQ DI, SI								
  print.go:314			0xe78c77		488d05622eff01			LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe78c7e		6690				NOPW									
  print.go:314			0xe78c80		e8db6b6aff			CALL fmt.Fprintln(SB)							
  control_controller.go:514	0xe78c85		488d0594582a00			LEAQ runtime.types+1283360(SB), AX					
  control_controller.go:514	0xe78c8c		e80f8b59ff			CALL runtime.newobject(SB)						
  control_controller.go:514	0xe78c91		48898424b8000000		MOVQ AX, 0xb8(SP)							
  context.go:712		0xe78c99		488b1540eb1300			MOVQ github.com/gin-gonic/gin/binding.JSON(SB), DX			
  context.go:712		0xe78ca0		4c8b0541eb1300			MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), R8			
  context.go:712		0xe78ca7		4885d2				TESTQ DX, DX								
  context.go:712		0xe78caa		7419				JE 0xe78cc5								
  context.go:712		0xe78cac		488b5a08			MOVQ 0x8(DX), BX							
  context.go:712		0xe78cb0		488b3519241400			MOVQ CAS-Backend/biz/controller..typeAssert.9(SB), SI			
  context.go:712		0xe78cb7		4c8b0e				MOVQ 0(SI), R9								
  context.go:712		0xe78cba		8b5210				MOVL 0x10(DX), DX							
  context.go:712		0xe78cbd		0f1f00				NOPL 0(AX)								
  context.go:712		0xe78cc0		e99e020000			JMP 0xe78f63								
  context.go:752		0xe78cc5		488b5218			MOVQ 0x18(DX), DX							
  context.go:752		0xe78cc9		488bb424d0000000		MOVQ 0xd0(SP), SI							
  context.go:752		0xe78cd1		488b5e20			MOVQ 0x20(SI), BX							
  context.go:752		0xe78cd5		488d0d84d81a00			LEAQ runtime.types+267616(SB), CX					
  context.go:752		0xe78cdc		4889c7				MOVQ AX, DI								
  context.go:752		0xe78cdf		4c89c0				MOVQ R8, AX								
  context.go:752		0xe78ce2		ffd2				CALL DX									
  control_controller.go:516	0xe78ce4		4885c0				TESTQ AX, AX								
  control_controller.go:516	0xe78ce7		0f8518010000			JNE 0xe78e05								
  control_controller.go:522	0xe78ced		440f117c2478			MOVUPS X15, 0x78(SP)							
  control_controller.go:522	0xe78cf3		488b8c24b8000000		MOVQ 0xb8(SP), CX							
  control_controller.go:522	0xe78cfb		488b4120			MOVQ 0x20(CX), AX							
  control_controller.go:522	0xe78cff		90				NOPL									
  control_controller.go:522	0xe78d00		e89b135fff			CALL runtime.convT64(SB)						
  control_controller.go:522	0xe78d05		488d0d549e1c00			LEAQ runtime.types+383840(SB), CX					
  control_controller.go:522	0xe78d0c		48894c2478			MOVQ CX, 0x78(SP)							
  control_controller.go:522	0xe78d11		4889842480000000		MOVQ AX, 0x80(SP)							
  print.go:314			0xe78d19		488b1d60936902			MOVQ os.Stdout(SB), BX							
  print.go:314			0xe78d20		488d05b92dff01			LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe78d27		488d4c2478			LEAQ 0x78(SP), CX							
  print.go:314			0xe78d2c		bf01000000			MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe78d31		4889fe				MOVQ DI, SI								
  print.go:314			0xe78d34		e8276b6aff			CALL fmt.Fprintln(SB)							
  control_controller.go:524	0xe78d39		0f57c0				XORPS X0, X0								
  control_controller.go:524	0xe78d3c		f20f11442438			MOVSD_XMM X0, 0x38(SP)							
  control_controller.go:526	0xe78d42		488b8c24b8000000		MOVQ 0xb8(SP), CX							
  control_controller.go:526	0xe78d4a		4883792001			CMPQ 0x20(CX), $__minor_os_version__(SB)				
  control_controller.go:526	0xe78d4f		740c				JE 0xe78d5d								
  control_controller.go:542	0xe78d51		c60561456e0200			MOVB $0x0, CAS-Backend/biz/controller.is_down(SB)			
  control_controller.go:542	0xe78d58		e92a010000			JMP 0xe78e87								
  control_controller.go:527	0xe78d5d		c60555456e0201			MOVB $__minor_os_version__(SB), CAS-Backend/biz/controller.is_down(SB)	
  control_controller.go:528	0xe78d64		48c78424b000000000000000	MOVQ $0x0, 0xb0(SP)							
  control_controller.go:528	0xe78d70		488d15c9020000			LEAQ CAS-Backend/biz/controller.Huocha_down.func1(SB), DX		
  control_controller.go:528	0xe78d77		48899424a8000000		MOVQ DX, 0xa8(SP)							
  control_controller.go:528	0xe78d7f		488d542438			LEAQ 0x38(SP), DX							
  control_controller.go:528	0xe78d84		48899424b0000000		MOVQ DX, 0xb0(SP)							
  control_controller.go:528	0xe78d8c		488b4110			MOVQ 0x10(CX), AX							
  control_controller.go:528	0xe78d90		488b5918			MOVQ 0x18(CX), BX							
  control_controller.go:528	0xe78d94		488dbc24a8000000		LEAQ 0xa8(SP), DI							
  control_controller.go:528	0xe78d9c		b9044b0000			MOVL $__size_of_stack_commit__+15108(SB), CX				
  control_controller.go:528	0xe78da1		e85aa8f9ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)				
  control_controller.go:537	0xe78da6		4885c0				TESTQ AX, AX								
  control_controller.go:537	0xe78da9		744c				JE 0xe78df7								
  control_controller.go:538	0xe78dab		440f117c2468			MOVUPS X15, 0x68(SP)							
  control_controller.go:538	0xe78db1		7404				JE 0xe78db7								
  control_controller.go:538	0xe78db3		488b4008			MOVQ 0x8(AX), AX							
  control_controller.go:538	0xe78db7		4889442468			MOVQ AX, 0x68(SP)							
  control_controller.go:538	0xe78dbc		48895c2470			MOVQ BX, 0x70(SP)							
  print.go:233			0xe78dc1		488b1db8926902			MOVQ os.Stdout(SB), BX							
  print.go:233			0xe78dc8		488d05112dff01			LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe78dcf		488d0ddb193100			LEAQ go:string.*+139945(SB), CX						
  print.go:233			0xe78dd6		bf1d000000			MOVL $__major_os_version__+23(SB), DI					
  print.go:233			0xe78ddb		488d742468			LEAQ 0x68(SP), SI							
  print.go:233			0xe78de0		41b801000000			MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe78de6		4d89c1				MOVQ R8, R9								
  print.go:233			0xe78de9		e832646aff			CALL fmt.Fprintf(SB)							
  control_controller.go:539	0xe78dee		4881c4c0000000			ADDQ $.file+115(SB), SP							
  control_controller.go:539	0xe78df5		5d				POPQ BP									
  control_controller.go:539	0xe78df6		c3				RET									
  control_controller.go:552	0xe78df7		488b8c24b8000000		MOVQ 0xb8(SP), CX							
  control_controller.go:552	0xe78dff		90				NOPL									
  control_controller.go:546	0xe78e00		e982000000			JMP 0xe78e87								
  context.go:752		0xe78e05		48895c2448			MOVQ BX, 0x48(SP)							
  context.go:752		0xe78e0a		4889442440			MOVQ AX, 0x40(SP)							
  control_controller.go:517	0xe78e0f		488d150a9b1c00			LEAQ runtime.types+383264(SB), DX					
  control_controller.go:517	0xe78e16		4889942488000000		MOVQ DX, 0x88(SP)							
  control_controller.go:517	0xe78e1e		488d15abf9fe01			LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX				
  control_controller.go:517	0xe78e25		4889942490000000		MOVQ DX, 0x90(SP)							
  print.go:314			0xe78e2d		488b1d4c926902			MOVQ os.Stdout(SB), BX							
  print.go:314			0xe78e34		488d05a52cff01			LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe78e3b		488d8c2488000000		LEAQ 0x88(SP), CX							
  print.go:314			0xe78e43		bf01000000			MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe78e48		4889fe				MOVQ DI, SI								
  print.go:314			0xe78e4b		e8106a6aff			CALL fmt.Fprintln(SB)							
  control_controller.go:518	0xe78e50		488b8424d0000000		MOVQ 0xd0(SP), AX							
  control_controller.go:518	0xe78e58		bb90010000			MOVL $.file+323(SB), BX							
  control_controller.go:518	0xe78e5d		488b4c2440			MOVQ 0x40(SP), CX							
  control_controller.go:518	0xe78e62		488b7c2448			MOVQ 0x48(SP), DI							
  control_controller.go:518	0xe78e67		e83422f8ff			CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)		
  control_controller.go:519	0xe78e6c		4881c4c0000000			ADDQ $.file+115(SB), SP							
  control_controller.go:519	0xe78e73		5d				POPQ BP									
  control_controller.go:519	0xe78e74		c3				RET									
  control_controller.go:559	0xe78e75		b800943577			MOVL $0x77359400, AX							
  control_controller.go:559	0xe78e7a		e8c1b25fff			CALL time.Sleep(SB)							
  control_controller.go:552	0xe78e7f		488b8c24b8000000		MOVQ 0xb8(SP), CX							
  control_controller.go:546	0xe78e87		803d2b446e0200			CMPB CAS-Backend/biz/controller.is_down(SB), $0x0			
  control_controller.go:546	0xe78e8e		0f84c6000000			JE 0xe78f5a								
  control_controller.go:548	0xe78e94		f20f10442438			MOVSD_XMM 0x38(SP), X0							
  control_controller.go:548	0xe78e9a		f20f100de6eafe01		MOVSD_XMM $f64.3fb999999999999a(SB), X1					
  control_controller.go:548	0xe78ea2		f20f5cc1			SUBSD X1, X0								
  control_controller.go:548	0xe78ea6		f20f11442438			MOVSD_XMM X0, 0x38(SP)							
  control_controller.go:549	0xe78eac		f20f1015a4e9fe01		MOVSD_XMM $f64.3fb604189374bc6a(SB), X2					
  control_controller.go:549	0xe78eb4		660f2ed0			UCOMISD X0, X2								
  control_controller.go:549	0xe78eb8		7206				JB 0xe78ec0								
  control_controller.go:550	0xe78eba		f20f11542438			MOVSD_XMM X2, 0x38(SP)							
  control_controller.go:552	0xe78ec0		48c78424b000000000000000	MOVQ $0x0, 0xb0(SP)							
  control_controller.go:552	0xe78ecc		488d150d010000			LEAQ CAS-Backend/biz/controller.Huocha_down.func2(SB), DX		
  control_controller.go:552	0xe78ed3		48899424a8000000		MOVQ DX, 0xa8(SP)							
  control_controller.go:552	0xe78edb		488d742438			LEAQ 0x38(SP), SI							
  control_controller.go:552	0xe78ee0		4889b424b0000000		MOVQ SI, 0xb0(SP)							
  control_controller.go:552	0xe78ee8		488b4110			MOVQ 0x10(CX), AX							
  control_controller.go:552	0xe78eec		488b5918			MOVQ 0x18(CX), BX							
  control_controller.go:552	0xe78ef0		488dbc24a8000000		LEAQ 0xa8(SP), DI							
  control_controller.go:552	0xe78ef8		b90a4b0000			MOVL $__size_of_stack_commit__+15114(SB), CX				
  control_controller.go:552	0xe78efd		0f1f00				NOPL 0(AX)								
  control_controller.go:552	0xe78f00		e8fba6f9ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)				
  control_controller.go:555	0xe78f05		4885c0				TESTQ AX, AX								
  control_controller.go:555	0xe78f08		0f8467ffffff			JE 0xe78e75								
  control_controller.go:556	0xe78f0e		440f117c2458			MOVUPS X15, 0x58(SP)							
  control_controller.go:556	0xe78f14		7404				JE 0xe78f1a								
  control_controller.go:556	0xe78f16		488b4008			MOVQ 0x8(AX), AX							
  control_controller.go:556	0xe78f1a		4889442458			MOVQ AX, 0x58(SP)							
  control_controller.go:556	0xe78f1f		48895c2460			MOVQ BX, 0x60(SP)							
  print.go:233			0xe78f24		488b1d55916902			MOVQ os.Stdout(SB), BX							
  print.go:233			0xe78f2b		488d05ae2bff01			LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233			0xe78f32		488d0d34ac3000			LEAQ go:string.*+112229(SB), CX						
  print.go:233			0xe78f39		bf17000000			MOVL $__major_os_version__+17(SB), DI					
  print.go:233			0xe78f3e		488d742458			LEAQ 0x58(SP), SI							
  print.go:233			0xe78f43		41b801000000			MOVL $__minor_os_version__(SB), R8					
  print.go:233			0xe78f49		4d89c1				MOVQ R8, R9								
  print.go:233			0xe78f4c		e8cf626aff			CALL fmt.Fprintf(SB)							
  control_controller.go:557	0xe78f51		4881c4c0000000			ADDQ $.file+115(SB), SP							
  control_controller.go:557	0xe78f58		5d				POPQ BP									
  control_controller.go:557	0xe78f59		c3				RET									
  control_controller.go:571	0xe78f5a		4881c4c0000000			ADDQ $.file+115(SB), SP							
  control_controller.go:571	0xe78f61		5d				POPQ BP									
  control_controller.go:571	0xe78f62		c3				RET									
  context.go:712		0xe78f63		4989d2				MOVQ DX, R10								
  context.go:712		0xe78f66		4c21ca				ANDQ R9, DX								
  context.go:712		0xe78f69		48c1e204			SHLQ $__subsystem__+1(SB), DX						
  context.go:712		0xe78f6d		4c8b5c3208			MOVQ 0x8(DX)(SI*1), R11							
  context.go:712		0xe78f72		4939db				CMPQ R11, BX								
  context.go:712		0xe78f75		7434				JE 0xe78fab								
  context.go:712		0xe78f77		498d5201			LEAQ 0x1(R10), DX							
  context.go:712		0xe78f7b		0f1f440000			NOPL 0(AX)(AX*1)							
  context.go:712		0xe78f80		4d85db				TESTQ R11, R11								
  context.go:712		0xe78f83		75de				JNE 0xe78f63								
  context.go:712		0xe78f85		4c89442450			MOVQ R8, 0x50(SP)							
  context.go:712		0xe78f8a		488d053f211400			LEAQ CAS-Backend/biz/controller..typeAssert.9(SB), AX			
  context.go:712		0xe78f91		e84a6359ff			CALL runtime.typeAssert(SB)						
  context.go:752		0xe78f96		4c8b442450			MOVQ 0x50(SP), R8							
  context.go:712		0xe78f9b		4889c2				MOVQ AX, DX								
  context.go:752		0xe78f9e		488b8424b8000000		MOVQ 0xb8(SP), AX							
  context.go:712		0xe78fa6		e91afdffff			JMP 0xe78cc5								
  context.go:712		0xe78fab		488b543210			MOVQ 0x10(DX)(SI*1), DX							
  context.go:712		0xe78fb0		e910fdffff			JMP 0xe78cc5								
  control_controller.go:512	0xe78fb5		4889442408			MOVQ AX, 0x8(SP)							
  control_controller.go:512	0xe78fba		e821d55fff			CALL runtime.morestack_noctxt.abi0(SB)					
  control_controller.go:512	0xe78fbf		488b442408			MOVQ 0x8(SP), AX							
  control_controller.go:512	0xe78fc4		e957fcffff			JMP CAS-Backend/biz/controller.Huocha_down(SB)				
  :-1				0xe78fc9		cc				INT $__subsystem__(SB)							
  :-1				0xe78fca		cc				INT $__subsystem__(SB)							
  :-1				0xe78fcb		cc				INT $__subsystem__(SB)							
  :-1				0xe78fcc		cc				INT $__subsystem__(SB)							
  :-1				0xe78fcd		cc				INT $__subsystem__(SB)							
  :-1				0xe78fce		cc				INT $__subsystem__(SB)							
  :-1				0xe78fcf		cc				INT $__subsystem__(SB)							
  :-1				0xe78fd0		cc				INT $__subsystem__(SB)							
  :-1				0xe78fd1		cc				INT $__subsystem__(SB)							
  :-1				0xe78fd2		cc				INT $__subsystem__(SB)							
  :-1				0xe78fd3		cc				INT $__subsystem__(SB)							
  :-1				0xe78fd4		cc				INT $__subsystem__(SB)							
  :-1				0xe78fd5		cc				INT $__subsystem__(SB)							
  :-1				0xe78fd6		cc				INT $__subsystem__(SB)							
  :-1				0xe78fd7		cc				INT $__subsystem__(SB)							
  :-1				0xe78fd8		cc				INT $__subsystem__(SB)							
  :-1				0xe78fd9		cc				INT $__subsystem__(SB)							
  :-1				0xe78fda		cc				INT $__subsystem__(SB)							
  :-1				0xe78fdb		cc				INT $__subsystem__(SB)							
  :-1				0xe78fdc		cc				INT $__subsystem__(SB)							
  :-1				0xe78fdd		cc				INT $__subsystem__(SB)							
  :-1				0xe78fde		cc				INT $__subsystem__(SB)							
  :-1				0xe78fdf		cc				INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.Huocha_down.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:552	0xe78fe0		493b6610		CMPQ SP, 0x10(R14)						
  control_controller.go:552	0xe78fe4		7625			JBE 0xe7900b							
  control_controller.go:552	0xe78fe6		55			PUSHQ BP							
  control_controller.go:552	0xe78fe7		4889e5			MOVQ SP, BP							
  control_controller.go:552	0xe78fea		4883ec18		SUBQ $__major_os_version__+18(SB), SP				
  control_controller.go:552	0xe78fee		4889442428		MOVQ AX, 0x28(SP)						
  control_controller.go:552	0xe78ff3		48895c2430		MOVQ BX, 0x30(SP)						
  control_controller.go:552	0xe78ff8		488b4a08		MOVQ 0x8(DX), CX						
  control_controller.go:553	0xe78ffc		f20f1001		MOVSD_XMM 0(CX), X0						
  control_controller.go:553	0xe79000		e85b17faff		CALL CAS-Backend/pkg/agvcontrol.SendHuochaHeightCommand(SB)	
  control_controller.go:553	0xe79005		4883c418		ADDQ $__major_os_version__+18(SB), SP				
  control_controller.go:553	0xe79009		5d			POPQ BP								
  control_controller.go:553	0xe7900a		c3			RET								
  control_controller.go:552	0xe7900b		4889442408		MOVQ AX, 0x8(SP)						
  control_controller.go:552	0xe79010		48895c2410		MOVQ BX, 0x10(SP)						
  control_controller.go:552	0xe79015		e846d45fff		CALL runtime.morestack.abi0(SB)					
  control_controller.go:552	0xe7901a		488b442408		MOVQ 0x8(SP), AX						
  control_controller.go:552	0xe7901f		488b5c2410		MOVQ 0x10(SP), BX						
  control_controller.go:552	0xe79024		ebba			JMP CAS-Backend/biz/controller.Huocha_down.func2(SB)		
  :-1				0xe79026		cc			INT $__subsystem__(SB)						
  :-1				0xe79027		cc			INT $__subsystem__(SB)						
  :-1				0xe79028		cc			INT $__subsystem__(SB)						
  :-1				0xe79029		cc			INT $__subsystem__(SB)						
  :-1				0xe7902a		cc			INT $__subsystem__(SB)						
  :-1				0xe7902b		cc			INT $__subsystem__(SB)						
  :-1				0xe7902c		cc			INT $__subsystem__(SB)						
  :-1				0xe7902d		cc			INT $__subsystem__(SB)						
  :-1				0xe7902e		cc			INT $__subsystem__(SB)						
  :-1				0xe7902f		cc			INT $__subsystem__(SB)						
  :-1				0xe79030		cc			INT $__subsystem__(SB)						
  :-1				0xe79031		cc			INT $__subsystem__(SB)						
  :-1				0xe79032		cc			INT $__subsystem__(SB)						
  :-1				0xe79033		cc			INT $__subsystem__(SB)						
  :-1				0xe79034		cc			INT $__subsystem__(SB)						
  :-1				0xe79035		cc			INT $__subsystem__(SB)						
  :-1				0xe79036		cc			INT $__subsystem__(SB)						
  :-1				0xe79037		cc			INT $__subsystem__(SB)						
  :-1				0xe79038		cc			INT $__subsystem__(SB)						
  :-1				0xe79039		cc			INT $__subsystem__(SB)						
  :-1				0xe7903a		cc			INT $__subsystem__(SB)						
  :-1				0xe7903b		cc			INT $__subsystem__(SB)						
  :-1				0xe7903c		cc			INT $__subsystem__(SB)						
  :-1				0xe7903d		cc			INT $__subsystem__(SB)						
  :-1				0xe7903e		cc			INT $__subsystem__(SB)						
  :-1				0xe7903f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.Huocha_down.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:528	0xe79040		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:528	0xe79044		0f869b000000		JBE 0xe790e5						
  control_controller.go:528	0xe7904a		55			PUSHQ BP						
  control_controller.go:528	0xe7904b		4889e5			MOVQ SP, BP						
  control_controller.go:528	0xe7904e		4883ec50		SUBQ $.file+3(SB), SP					
  control_controller.go:528	0xe79052		4889442460		MOVQ AX, 0x60(SP)					
  control_controller.go:528	0xe79057		48895c2468		MOVQ BX, 0x68(SP)					
  control_controller.go:528	0xe7905c		488b4a08		MOVQ 0x8(DX), CX					
  control_controller.go:528	0xe79060		48894c2448		MOVQ CX, 0x48(SP)					
  control_controller.go:529	0xe79065		e8d611faff		CALL CAS-Backend/pkg/agvcontrol.QueryForkStatus(SB)	
  control_controller.go:530	0xe7906a		4885db			TESTQ BX, BX						
  control_controller.go:530	0xe7906d		740c			JE 0xe7907b						
  control_controller.go:531	0xe7906f		4889d8			MOVQ BX, AX						
  control_controller.go:531	0xe79072		4889cb			MOVQ CX, BX						
  control_controller.go:531	0xe79075		4883c450		ADDQ $.file+3(SB), SP					
  control_controller.go:531	0xe79079		5d			POPQ BP							
  control_controller.go:531	0xe7907a		c3			RET							
  control_controller.go:533	0xe7907b		f20f104018		MOVSD_XMM 0x18(AX), X0					
  control_controller.go:533	0xe79080		488b4c2448		MOVQ 0x48(SP), CX					
  control_controller.go:533	0xe79085		f20f1101		MOVSD_XMM X0, 0(CX)					
  control_controller.go:534	0xe79089		440f117c2438		MOVUPS X15, 0x38(SP)					
  control_controller.go:534	0xe7908f		f20f1001		MOVSD_XMM 0(CX), X0					
  control_controller.go:534	0xe79093		66480f7ec0		MOVQ X0, AX						
  control_controller.go:534	0xe79098		e803105fff		CALL runtime.convT64(SB)				
  control_controller.go:534	0xe7909d		488d0d3c9c1c00		LEAQ runtime.types+384224(SB), CX			
  control_controller.go:534	0xe790a4		48894c2438		MOVQ CX, 0x38(SP)					
  control_controller.go:534	0xe790a9		4889442440		MOVQ AX, 0x40(SP)					
  print.go:233			0xe790ae		488b1dcb8f6902		MOVQ os.Stdout(SB), BX					
  print.go:233			0xe790b5		488d05242aff01		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233			0xe790bc		488d0da54a3100		LEAQ go:string.*+153184(SB), CX				
  print.go:233			0xe790c3		bf20000000		MOVL $__major_os_version__+26(SB), DI			
  print.go:233			0xe790c8		488d742438		LEAQ 0x38(SP), SI					
  print.go:233			0xe790cd		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233			0xe790d3		4d89c1			MOVQ R8, R9						
  print.go:233			0xe790d6		e845616aff		CALL fmt.Fprintf(SB)					
  control_controller.go:535	0xe790db		31c0			XORL AX, AX						
  control_controller.go:535	0xe790dd		31db			XORL BX, BX						
  control_controller.go:535	0xe790df		4883c450		ADDQ $.file+3(SB), SP					
  control_controller.go:535	0xe790e3		5d			POPQ BP							
  control_controller.go:535	0xe790e4		c3			RET							
  control_controller.go:528	0xe790e5		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:528	0xe790ea		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:528	0xe790ef		e86cd35fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:528	0xe790f4		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:528	0xe790f9		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:528	0xe790fe		6690			NOPW							
  control_controller.go:528	0xe79100		e93bffffff		JMP CAS-Backend/biz/controller.Huocha_down.func1(SB)	
  :-1				0xe79105		cc			INT $__subsystem__(SB)					
  :-1				0xe79106		cc			INT $__subsystem__(SB)					
  :-1				0xe79107		cc			INT $__subsystem__(SB)					
  :-1				0xe79108		cc			INT $__subsystem__(SB)					
  :-1				0xe79109		cc			INT $__subsystem__(SB)					
  :-1				0xe7910a		cc			INT $__subsystem__(SB)					
  :-1				0xe7910b		cc			INT $__subsystem__(SB)					
  :-1				0xe7910c		cc			INT $__subsystem__(SB)					
  :-1				0xe7910d		cc			INT $__subsystem__(SB)					
  :-1				0xe7910e		cc			INT $__subsystem__(SB)					
  :-1				0xe7910f		cc			INT $__subsystem__(SB)					
  :-1				0xe79110		cc			INT $__subsystem__(SB)					
  :-1				0xe79111		cc			INT $__subsystem__(SB)					
  :-1				0xe79112		cc			INT $__subsystem__(SB)					
  :-1				0xe79113		cc			INT $__subsystem__(SB)					
  :-1				0xe79114		cc			INT $__subsystem__(SB)					
  :-1				0xe79115		cc			INT $__subsystem__(SB)					
  :-1				0xe79116		cc			INT $__subsystem__(SB)					
  :-1				0xe79117		cc			INT $__subsystem__(SB)					
  :-1				0xe79118		cc			INT $__subsystem__(SB)					
  :-1				0xe79119		cc			INT $__subsystem__(SB)					
  :-1				0xe7911a		cc			INT $__subsystem__(SB)					
  :-1				0xe7911b		cc			INT $__subsystem__(SB)					
  :-1				0xe7911c		cc			INT $__subsystem__(SB)					
  :-1				0xe7911d		cc			INT $__subsystem__(SB)					
  :-1				0xe7911e		cc			INT $__subsystem__(SB)					
  :-1				0xe7911f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.MapStream(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1046	0xe79120		4c8da424c0feffff		LEAQ 0xfffffec0(SP), R12										
  control_controller.go:1046	0xe79128		4d3b6610			CMPQ R12, 0x10(R14)											
  control_controller.go:1046	0xe7912c		0f86c10c0000			JBE 0xe79df3												
  control_controller.go:1046	0xe79132		55				PUSHQ BP												
  control_controller.go:1046	0xe79133		4889e5				MOVQ SP, BP												
  control_controller.go:1046	0xe79136		4881ecb8010000			SUBQ $.file+363(SB), SP											
  control_controller.go:1046	0xe7913d		440f11bc24a8010000		MOVUPS X15, 0x1a8(SP)											
  control_controller.go:1048	0xe79146		48898424c8010000		MOVQ AX, 0x1c8(SP)											
  control_controller.go:1046	0xe7914e		c644243300			MOVB $0x0, 0x33(SP)											
  control_controller.go:1047	0xe79153		488d1dbaf32e00			LEAQ go:string.*+12(SB), BX										
  control_controller.go:1047	0xe7915a		b902000000			MOVL $__minor_os_version__+1(SB), CX									
  control_controller.go:1047	0xe7915f		90				NOPL													
  control_controller.go:1047	0xe79160		e85b2ef8ff			CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  control_controller.go:1048	0xe79165		4885db				TESTQ BX, BX												
  control_controller.go:1048	0xe79168		0f8473060000			JE 0xe797e1												
  control_controller.go:1047	0xe7916e		48895c2440			MOVQ BX, 0x40(SP)											
  control_controller.go:1047	0xe79173		4889442478			MOVQ AX, 0x78(SP)											
  control_controller.go:1052	0xe79178		440f11bc2458010000		MOVUPS X15, 0x158(SP)											
  control_controller.go:1052	0xe79181		e89a0f5fff			CALL runtime.convTstring(SB)										
  control_controller.go:1052	0xe79186		488d0d93971c00			LEAQ runtime.types+383264(SB), CX									
  control_controller.go:1052	0xe7918d		48898c2458010000		MOVQ CX, 0x158(SP)											
  control_controller.go:1052	0xe79195		4889842460010000		MOVQ AX, 0x160(SP)											
  print.go:314			0xe7919d		488b1ddc8e6902			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe791a4		488d053529ff01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe791ab		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe791b0		4889fe				MOVQ DI, SI												
  print.go:314			0xe791b3		488d8c2458010000		LEAQ 0x158(SP), CX											
  print.go:314			0xe791bb		0f1f440000			NOPL 0(AX)(AX*1)											
  print.go:314			0xe791c0		e89b666aff			CALL fmt.Fprintln(SB)											
  control_controller.go:1054	0xe791c5		488b0594ba1300			MOVQ CAS-Backend/biz/controller.mappingManager(SB), AX							
  control_controller.go:1054	0xe791cc		b901000000			MOVL $__minor_os_version__(SB), CX									
  control_controller.go:1054	0xe791d1		f00fc14810			LOCK XADDL CX, 0x10(AX)											
  type.go:88			0xe791d6		ffc1				INCL CX													
  rwmutex.go:70			0xe791d8		85c9				TESTL CX, CX												
  rwmutex.go:70			0xe791da		7d0d				JGE 0xe791e9												
  rwmutex.go:72			0xe791dc		4883c00c			ADDQ $__major_os_version__+6(SB), AX									
  rwmutex.go:72			0xe791e0		31db				XORL BX, BX												
  rwmutex.go:72			0xe791e2		31c9				XORL CX, CX												
  rwmutex.go:72			0xe791e4		e877835fff			CALL sync.runtime_SemacquireRWMutexR(SB)								
  control_controller.go:1055	0xe791e9		488b1570ba1300			MOVQ CAS-Backend/biz/controller.mappingManager(SB), DX							
  control_controller.go:1055	0xe791f0		488b5a18			MOVQ 0x18(DX), BX											
  control_controller.go:1055	0xe791f4		488d0505842000			LEAQ runtime.types+640512(SB), AX									
  control_controller.go:1055	0xe791fb		488b4c2478			MOVQ 0x78(SP), CX											
  control_controller.go:1055	0xe79200		488b7c2440			MOVQ 0x40(SP), DI											
  control_controller.go:1055	0xe79205		e8364a5fff			CALL runtime.mapaccess2_faststr(SB)									
  control_controller.go:1056	0xe7920a		488b154fba1300			MOVQ CAS-Backend/biz/controller.mappingManager(SB), DX							
  control_controller.go:1055	0xe79211		488b30				MOVQ 0(AX), SI												
  control_controller.go:1056	0xe79214		41b8ffffffff			MOVL $-0x1, R8												
  control_controller.go:1056	0xe7921a		f0440fc14210			LOCK XADDL R8, 0x10(DX)											
  type.go:88			0xe79220		41ffc8				DECL R8													
  rwmutex.go:118		0xe79223		4585c0				TESTL R8, R8												
  rwmutex.go:118		0xe79226		7d1e				JGE 0xe79246												
  control_controller.go:1055	0xe79228		885c2432			MOVB BL, 0x32(SP)											
  control_controller.go:1055	0xe7922c		4889742470			MOVQ SI, 0x70(SP)											
  rwmutex.go:120		0xe79231		4889d0				MOVQ DX, AX												
  rwmutex.go:120		0xe79234		4489c3				MOVL R8, BX												
  rwmutex.go:120		0xe79237		e804fc60ff			CALL sync.(*RWMutex).rUnlockSlow(SB)									
  control_controller.go:1055	0xe7923c		0fb65c2432			MOVZX 0x32(SP), BX											
  control_controller.go:1058	0xe79241		488b742470			MOVQ 0x70(SP), SI											
  control_controller.go:1055	0xe79246		84db				TESTL BL, BL												
  control_controller.go:1058	0xe79248		0f84e8040000			JE 0xe79736												
  control_controller.go:1058	0xe7924e		807e1000			CMPB 0x10(SI), $0x0											
  control_controller.go:1058	0xe79252		0f84de040000			JE 0xe79736												
  control_controller.go:1064	0xe79258		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1064	0xe79260		488b5128			MOVQ 0x28(CX), DX											
  control_controller.go:1064	0xe79264		488b4130			MOVQ 0x30(CX), AX											
  control_controller.go:1064	0xe79268		488b5228			MOVQ 0x28(DX), DX											
  control_controller.go:1064	0xe7926c		ffd2				CALL DX													
  control_controller.go:1064	0xe7926e		48898424b0000000		MOVQ AX, 0xb0(SP)											
  header.go:40			0xe79276		90				NOPL													
  header.go:22			0xe79277		bb0c000000			MOVL $__major_os_version__+6(SB), BX									
  header.go:22			0xe7927c		488d05afea2f00			LEAQ go:string.*+63530(SB), AX										
  header.go:22			0xe79283		e8586190ff			CALL net/textproto.CanonicalMIMEHeaderKey(SB)								
  header.go:22			0xe79288		48898424e0000000		MOVQ AX, 0xe0(SP)											
  header.go:22			0xe79290		48895c2458			MOVQ BX, 0x58(SP)											
  header.go:22			0xe79295		488d05644c1d00			LEAQ runtime.types+429824(SB), AX									
  header.go:22			0xe7929c		0f1f4000			NOPL 0(AX)												
  header.go:22			0xe792a0		e8fb8459ff			CALL runtime.newobject(SB)										
  header.go:22			0xe792a5		48898424d8000000		MOVQ AX, 0xd8(SP)											
  header.go:22			0xe792ad		48c7400811000000		MOVQ $__major_os_version__+11(SB), 0x8(AX)								
  header.go:22			0xe792b5		488d0da2393000			LEAQ go:string.*+83798(SB), CX										
  header.go:22			0xe792bc		488908				MOVQ CX, 0(AX)												
  header.go:22			0xe792bf		488b9c24b0000000		MOVQ 0xb0(SP), BX											
  header.go:22			0xe792c7		488b8c24e0000000		MOVQ 0xe0(SP), CX											
  header.go:22			0xe792cf		488b7c2458			MOVQ 0x58(SP), DI											
  header.go:22			0xe792d4		488d05c5ae2700			LEAQ runtime.types+1110432(SB), AX									
  header.go:22			0xe792db		0f1f440000			NOPL 0(AX)(AX*1)											
  header.go:22			0xe792e0		e83b4d5fff			CALL runtime.mapassign_faststr(SB)									
  header.go:22			0xe792e5		48c7400801000000		MOVQ $__minor_os_version__(SB), 0x8(AX)									
  header.go:22			0xe792ed		48c7401001000000		MOVQ $__minor_os_version__(SB), 0x10(AX)								
  header.go:22			0xe792f5		833d54486e0200			CMPL runtime.writeBarrier(SB), $0x0									
  header.go:22			0xe792fc		750a				JNE 0xe79308												
  header.go:22			0xe792fe		488b8c24d8000000		MOVQ 0xd8(SP), CX											
  header.go:22			0xe79306		eb17				JMP 0xe7931f												
  header.go:22			0xe79308		e833f15fff			CALL runtime.gcWriteBarrier2(SB)									
  header.go:22			0xe7930d		488b8c24d8000000		MOVQ 0xd8(SP), CX											
  header.go:22			0xe79315		49890b				MOVQ CX, 0(R11)												
  header.go:22			0xe79318		488b10				MOVQ 0(AX), DX												
  header.go:22			0xe7931b		49895308			MOVQ DX, 0x8(R11)											
  header.go:22			0xe7931f		488908				MOVQ CX, 0(AX)												
  control_controller.go:1065	0xe79322		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1065	0xe7932a		488b5128			MOVQ 0x28(CX), DX											
  control_controller.go:1065	0xe7932e		488b4130			MOVQ 0x30(CX), AX											
  control_controller.go:1065	0xe79332		488b5228			MOVQ 0x28(DX), DX											
  control_controller.go:1065	0xe79336		ffd2				CALL DX													
  control_controller.go:1065	0xe79338		48898424a8000000		MOVQ AX, 0xa8(SP)											
  header.go:40			0xe79340		90				NOPL													
  header.go:22			0xe79341		bb0d000000			MOVL $__major_os_version__+7(SB), BX									
  header.go:22			0xe79346		488d0588fa2f00			LEAQ go:string.*+67789(SB), AX										
  header.go:22			0xe7934d		e88e6090ff			CALL net/textproto.CanonicalMIMEHeaderKey(SB)								
  header.go:22			0xe79352		48898424e0000000		MOVQ AX, 0xe0(SP)											
  header.go:22			0xe7935a		48895c2458			MOVQ BX, 0x58(SP)											
  header.go:22			0xe7935f		488d059a4b1d00			LEAQ runtime.types+429824(SB), AX									
  header.go:22			0xe79366		e8358459ff			CALL runtime.newobject(SB)										
  header.go:22			0xe7936b		48898424d8000000		MOVQ AX, 0xd8(SP)											
  header.go:22			0xe79373		48c7400808000000		MOVQ $__major_os_version__+2(SB), 0x8(AX)								
  header.go:22			0xe7937b		488d0d41af2f00			LEAQ go:string.*+48571(SB), CX										
  header.go:22			0xe79382		488908				MOVQ CX, 0(AX)												
  header.go:22			0xe79385		488b9c24a8000000		MOVQ 0xa8(SP), BX											
  header.go:22			0xe7938d		488b8c24e0000000		MOVQ 0xe0(SP), CX											
  header.go:22			0xe79395		488b7c2458			MOVQ 0x58(SP), DI											
  header.go:22			0xe7939a		488d05ffad2700			LEAQ runtime.types+1110432(SB), AX									
  header.go:22			0xe793a1		e87a4c5fff			CALL runtime.mapassign_faststr(SB)									
  header.go:22			0xe793a6		48c7400801000000		MOVQ $__minor_os_version__(SB), 0x8(AX)									
  header.go:22			0xe793ae		48c7401001000000		MOVQ $__minor_os_version__(SB), 0x10(AX)								
  header.go:22			0xe793b6		833d93476e0200			CMPL runtime.writeBarrier(SB), $0x0									
  header.go:22			0xe793bd		750a				JNE 0xe793c9												
  header.go:22			0xe793bf		488b8c24d8000000		MOVQ 0xd8(SP), CX											
  header.go:22			0xe793c7		eb17				JMP 0xe793e0												
  header.go:22			0xe793c9		e872f05fff			CALL runtime.gcWriteBarrier2(SB)									
  header.go:22			0xe793ce		488b8c24d8000000		MOVQ 0xd8(SP), CX											
  header.go:22			0xe793d6		49890b				MOVQ CX, 0(R11)												
  header.go:22			0xe793d9		488b10				MOVQ 0(AX), DX												
  header.go:22			0xe793dc		49895308			MOVQ DX, 0x8(R11)											
  header.go:22			0xe793e0		488908				MOVQ CX, 0(AX)												
  control_controller.go:1066	0xe793e3		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1066	0xe793eb		488b5128			MOVQ 0x28(CX), DX											
  control_controller.go:1066	0xe793ef		488b4130			MOVQ 0x30(CX), AX											
  control_controller.go:1066	0xe793f3		488b5228			MOVQ 0x28(DX), DX											
  control_controller.go:1066	0xe793f7		ffd2				CALL DX													
  control_controller.go:1066	0xe793f9		48898424a0000000		MOVQ AX, 0xa0(SP)											
  header.go:40			0xe79401		90				NOPL													
  header.go:22			0xe79402		bb0a000000			MOVL $__major_os_version__+4(SB), BX									
  header.go:22			0xe79407		488d0508ce2f00			LEAQ go:string.*+56590(SB), AX										
  header.go:22			0xe7940e		e8cd5f90ff			CALL net/textproto.CanonicalMIMEHeaderKey(SB)								
  header.go:22			0xe79413		48898424e0000000		MOVQ AX, 0xe0(SP)											
  header.go:22			0xe7941b		48895c2458			MOVQ BX, 0x58(SP)											
  header.go:22			0xe79420		488d05d94a1d00			LEAQ runtime.types+429824(SB), AX									
  header.go:22			0xe79427		e8748359ff			CALL runtime.newobject(SB)										
  header.go:22			0xe7942c		48898424d8000000		MOVQ AX, 0xd8(SP)											
  header.go:22			0xe79434		48c740080a000000		MOVQ $__major_os_version__+4(SB), 0x8(AX)								
  header.go:22			0xe7943c		488d0d91ce2f00			LEAQ go:string.*+56780(SB), CX										
  header.go:22			0xe79443		488908				MOVQ CX, 0(AX)												
  header.go:22			0xe79446		488b9c24a0000000		MOVQ 0xa0(SP), BX											
  header.go:22			0xe7944e		488b8c24e0000000		MOVQ 0xe0(SP), CX											
  header.go:22			0xe79456		488b7c2458			MOVQ 0x58(SP), DI											
  header.go:22			0xe7945b		488d053ead2700			LEAQ runtime.types+1110432(SB), AX									
  header.go:22			0xe79462		e8b94b5fff			CALL runtime.mapassign_faststr(SB)									
  header.go:22			0xe79467		48c7400801000000		MOVQ $__minor_os_version__(SB), 0x8(AX)									
  header.go:22			0xe7946f		48c7401001000000		MOVQ $__minor_os_version__(SB), 0x10(AX)								
  header.go:22			0xe79477		833dd2466e0200			CMPL runtime.writeBarrier(SB), $0x0									
  header.go:22			0xe7947e		6690				NOPW													
  header.go:22			0xe79480		750a				JNE 0xe7948c												
  header.go:22			0xe79482		488b8c24d8000000		MOVQ 0xd8(SP), CX											
  header.go:22			0xe7948a		eb17				JMP 0xe794a3												
  header.go:22			0xe7948c		e8afef5fff			CALL runtime.gcWriteBarrier2(SB)									
  header.go:22			0xe79491		488b8c24d8000000		MOVQ 0xd8(SP), CX											
  header.go:22			0xe79499		49890b				MOVQ CX, 0(R11)												
  header.go:22			0xe7949c		488b10				MOVQ 0(AX), DX												
  header.go:22			0xe7949f		49895308			MOVQ DX, 0x8(R11)											
  header.go:22			0xe794a3		488908				MOVQ CX, 0(AX)												
  control_controller.go:1067	0xe794a6		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1067	0xe794ae		488b5128			MOVQ 0x28(CX), DX											
  control_controller.go:1067	0xe794b2		488b4130			MOVQ 0x30(CX), AX											
  control_controller.go:1067	0xe794b6		488b5228			MOVQ 0x28(DX), DX											
  control_controller.go:1067	0xe794ba		ffd2				CALL DX													
  control_controller.go:1067	0xe794bc		4889842498000000		MOVQ AX, 0x98(SP)											
  header.go:40			0xe794c4		90				NOPL													
  header.go:22			0xe794c5		bb1b000000			MOVL $__major_os_version__+21(SB), BX									
  header.go:22			0xe794ca		488d05fdea3000			LEAQ go:string.*+129734(SB), AX										
  header.go:22			0xe794d1		e80a5f90ff			CALL net/textproto.CanonicalMIMEHeaderKey(SB)								
  header.go:22			0xe794d6		48898424e0000000		MOVQ AX, 0xe0(SP)											
  header.go:22			0xe794de		48895c2458			MOVQ BX, 0x58(SP)											
  header.go:22			0xe794e3		488d05164a1d00			LEAQ runtime.types+429824(SB), AX									
  header.go:22			0xe794ea		e8b18259ff			CALL runtime.newobject(SB)										
  header.go:22			0xe794ef		48898424d8000000		MOVQ AX, 0xd8(SP)											
  header.go:22			0xe794f7		48c7400801000000		MOVQ $__minor_os_version__(SB), 0x8(AX)									
  header.go:22			0xe794ff		488d0d02b6fe01			LEAQ runtime.gcbits.*+72(SB), CX									
  header.go:22			0xe79506		488908				MOVQ CX, 0(AX)												
  header.go:22			0xe79509		488b9c2498000000		MOVQ 0x98(SP), BX											
  header.go:22			0xe79511		488b8c24e0000000		MOVQ 0xe0(SP), CX											
  header.go:22			0xe79519		488b7c2458			MOVQ 0x58(SP), DI											
  header.go:22			0xe7951e		488d057bac2700			LEAQ runtime.types+1110432(SB), AX									
  header.go:22			0xe79525		e8f64a5fff			CALL runtime.mapassign_faststr(SB)									
  header.go:22			0xe7952a		48c7400801000000		MOVQ $__minor_os_version__(SB), 0x8(AX)									
  header.go:22			0xe79532		48c7401001000000		MOVQ $__minor_os_version__(SB), 0x10(AX)								
  header.go:22			0xe7953a		833d0f466e0200			CMPL runtime.writeBarrier(SB), $0x0									
  header.go:22			0xe79541		750a				JNE 0xe7954d												
  header.go:22			0xe79543		488b8c24d8000000		MOVQ 0xd8(SP), CX											
  header.go:22			0xe7954b		eb17				JMP 0xe79564												
  header.go:22			0xe7954d		e8eeee5fff			CALL runtime.gcWriteBarrier2(SB)									
  header.go:22			0xe79552		488b8c24d8000000		MOVQ 0xd8(SP), CX											
  header.go:22			0xe7955a		49890b				MOVQ CX, 0(R11)												
  header.go:22			0xe7955d		488b10				MOVQ 0(AX), DX												
  header.go:22			0xe79560		49895308			MOVQ DX, 0x8(R11)											
  header.go:22			0xe79564		488908				MOVQ CX, 0(AX)												
  control_controller.go:1068	0xe79567		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1068	0xe7956f		488b5128			MOVQ 0x28(CX), DX											
  control_controller.go:1068	0xe79573		488b4130			MOVQ 0x30(CX), AX											
  control_controller.go:1068	0xe79577		488b5228			MOVQ 0x28(DX), DX											
  control_controller.go:1068	0xe7957b		ffd2				CALL DX													
  control_controller.go:1068	0xe7957d		4889842490000000		MOVQ AX, 0x90(SP)											
  header.go:40			0xe79585		90				NOPL													
  header.go:22			0xe79586		bb11000000			MOVL $__major_os_version__+11(SB), BX									
  header.go:22			0xe7958b		488d05ee363000			LEAQ go:string.*+83832(SB), AX										
  header.go:22			0xe79592		e8495e90ff			CALL net/textproto.CanonicalMIMEHeaderKey(SB)								
  header.go:22			0xe79597		48898424e0000000		MOVQ AX, 0xe0(SP)											
  header.go:22			0xe7959f		48895c2458			MOVQ BX, 0x58(SP)											
  header.go:22			0xe795a4		488d0555491d00			LEAQ runtime.types+429824(SB), AX									
  header.go:22			0xe795ab		e8f08159ff			CALL runtime.newobject(SB)										
  header.go:22			0xe795b0		48898424d8000000		MOVQ AX, 0xd8(SP)											
  header.go:22			0xe795b8		48c7400802000000		MOVQ $__minor_os_version__+1(SB), 0x8(AX)								
  header.go:22			0xe795c0		488d0d4bef2e00			LEAQ go:string.*+10(SB), CX										
  header.go:22			0xe795c7		488908				MOVQ CX, 0(AX)												
  header.go:22			0xe795ca		488b9c2490000000		MOVQ 0x90(SP), BX											
  header.go:22			0xe795d2		488b8c24e0000000		MOVQ 0xe0(SP), CX											
  header.go:22			0xe795da		488b7c2458			MOVQ 0x58(SP), DI											
  header.go:22			0xe795df		488d05baab2700			LEAQ runtime.types+1110432(SB), AX									
  header.go:22			0xe795e6		e8354a5fff			CALL runtime.mapassign_faststr(SB)									
  header.go:22			0xe795eb		48c7400801000000		MOVQ $__minor_os_version__(SB), 0x8(AX)									
  header.go:22			0xe795f3		48c7401001000000		MOVQ $__minor_os_version__(SB), 0x10(AX)								
  header.go:22			0xe795fb		833d4e456e0200			CMPL runtime.writeBarrier(SB), $0x0									
  header.go:22			0xe79602		750a				JNE 0xe7960e												
  header.go:22			0xe79604		488b8c24d8000000		MOVQ 0xd8(SP), CX											
  header.go:22			0xe7960c		eb17				JMP 0xe79625												
  header.go:22			0xe7960e		e82dee5fff			CALL runtime.gcWriteBarrier2(SB)									
  header.go:22			0xe79613		488b8c24d8000000		MOVQ 0xd8(SP), CX											
  header.go:22			0xe7961b		49890b				MOVQ CX, 0(R11)												
  header.go:22			0xe7961e		488b10				MOVQ 0(AX), DX												
  header.go:22			0xe79621		49895308			MOVQ DX, 0x8(R11)											
  header.go:22			0xe79625		488908				MOVQ CX, 0(AX)												
  control_controller.go:1071	0xe79628		488d0571cf1c00			LEAQ runtime.types+398752(SB), AX									
  control_controller.go:1071	0xe7962f		31db				XORL BX, BX												
  control_controller.go:1071	0xe79631		e80a0359ff			CALL runtime.makechan(SB)										
  control_controller.go:1071	0xe79636		48898424b8000000		MOVQ AX, 0xb8(SP)											
  control_controller.go:1074	0xe7963e		488d05bbe42600			LEAQ runtime.types+1059584(SB), AX									
  control_controller.go:1074	0xe79645		e8568159ff			CALL runtime.newobject(SB)										
  control_controller.go:1074	0xe7964a		488d0d4f090000			LEAQ CAS-Backend/biz/controller.MapStream.func1(SB), CX							
  control_controller.go:1074	0xe79651		488908				MOVQ CX, 0(AX)												
  control_controller.go:1074	0xe79654		833df5446e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1074	0xe7965b		7517				JNE 0xe79674												
  control_controller.go:1074	0xe7965d		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1074	0xe79665		488b9424b8000000		MOVQ 0xb8(SP), DX											
  control_controller.go:1074	0xe7966d		488b5c2478			MOVQ 0x78(SP), BX											
  control_controller.go:1074	0xe79672		eb25				JMP 0xe79699												
  control_controller.go:1074	0xe79674		e8e7ed5fff			CALL runtime.gcWriteBarrier3(SB)									
  control_controller.go:1074	0xe79679		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1074	0xe79681		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1074	0xe79684		488b9424b8000000		MOVQ 0xb8(SP), DX											
  control_controller.go:1074	0xe7968c		49895308			MOVQ DX, 0x8(R11)											
  control_controller.go:1074	0xe79690		488b5c2478			MOVQ 0x78(SP), BX											
  control_controller.go:1074	0xe79695		49895b10			MOVQ BX, 0x10(R11)											
  control_controller.go:1074	0xe79699		48894808			MOVQ CX, 0x8(AX)											
  control_controller.go:1074	0xe7969d		48895010			MOVQ DX, 0x10(AX)											
  control_controller.go:1074	0xe796a1		488b742440			MOVQ 0x40(SP), SI											
  control_controller.go:1074	0xe796a6		48897020			MOVQ SI, 0x20(AX)											
  control_controller.go:1074	0xe796aa		48895818			MOVQ BX, 0x18(AX)											
  control_controller.go:1074	0xe796ae		e88dde5cff			CALL runtime.newproc(SB)										
  control_controller.go:1080	0xe796b3		b800ca9a3b			MOVL $0x3b9aca00, AX											
  control_controller.go:1080	0xe796b8		e8239662ff			CALL time.NewTicker(SB)											
  control_controller.go:1080	0xe796bd		4889442460			MOVQ AX, 0x60(SP)											
  control_controller.go:1081	0xe796c2		488d0d77080000			LEAQ CAS-Backend/biz/controller.MapStream.deferwrap1(SB), CX						
  control_controller.go:1081	0xe796c9		48898c2448010000		MOVQ CX, 0x148(SP)											
  control_controller.go:1081	0xe796d1		4889842450010000		MOVQ AX, 0x150(SP)											
  control_controller.go:1081	0xe796d9		488d8c2448010000		LEAQ 0x148(SP), CX											
  control_controller.go:1081	0xe796e1		48898c24a8010000		MOVQ CX, 0x1a8(SP)											
  control_controller.go:1081	0xe796e9		c644243301			MOVB $__minor_os_version__(SB), 0x33(SP)								
  control_controller.go:1083	0xe796ee		48b800d6117e03000000		MOVQ $0x37e11d600, AX											
  control_controller.go:1083	0xe796f8		e8e39562ff			CALL time.NewTicker(SB)											
  control_controller.go:1083	0xe796fd		4889842488000000		MOVQ AX, 0x88(SP)											
  control_controller.go:1084	0xe79705		488d0dd4070000			LEAQ CAS-Backend/biz/controller.MapStream.deferwrap2(SB), CX						
  control_controller.go:1084	0xe7970c		48898c2438010000		MOVQ CX, 0x138(SP)											
  control_controller.go:1084	0xe79714		4889842440010000		MOVQ AX, 0x140(SP)											
  control_controller.go:1084	0xe7971c		488d8c2438010000		LEAQ 0x138(SP), CX											
  control_controller.go:1084	0xe79724		48898c24b0010000		MOVQ CX, 0x1b0(SP)											
  control_controller.go:1084	0xe7972c		c644243303			MOVB $__subsystem__(SB), 0x33(SP)									
  control_controller.go:1086	0xe79731		e960010000			JMP 0xe79896												
  control_controller.go:1059	0xe79736		e8a5185fff			CALL runtime.makemap_small(SB)										
  control_controller.go:1059	0xe7973b		48898424d0000000		MOVQ AX, 0xd0(SP)											
  control_controller.go:1059	0xe79743		4889c3				MOVQ AX, BX												
  control_controller.go:1059	0xe79746		488d0d740e2f00			LEAQ go:string.*+8377(SB), CX										
  control_controller.go:1059	0xe7974d		bf05000000			MOVL $__subsystem__+2(SB), DI										
  control_controller.go:1059	0xe79752		488d0527b12200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1059	0xe79759		e8c2485fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1059	0xe7975e		488d0dbb911c00			LEAQ runtime.types+383264(SB), CX									
  control_controller.go:1059	0xe79765		488908				MOVQ CX, 0(AX)												
  control_controller.go:1059	0xe79768		833de1436e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1059	0xe7976f		740c				JE 0xe7977d												
  control_controller.go:1059	0xe79771		488b4808			MOVQ 0x8(AX), CX											
  control_controller.go:1059	0xe79775		e8a6ec5fff			CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1059	0xe7977a		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1059	0xe7977d		488d0d1cf1fe01			LEAQ CAS-Backend/biz/controller..stmp_36(SB), CX							
  control_controller.go:1059	0xe79784		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe79788		488d0df1b02200			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7978f		48898c24c0000000		MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe79797		488b8c24d0000000		MOVQ 0xd0(SP), CX											
  context.go:1005		0xe7979f		48898c24c8000000		MOVQ CX, 0xc8(SP)											
  context.go:1005		0xe797a7		488d0532272500			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe797ae		488d9c24c0000000		LEAQ 0xc0(SP), BX											
  context.go:1005		0xe797b6		e8e55859ff			CALL runtime.convT(SB)											
  context.go:1005		0xe797bb		bb90010000			MOVL $.file+323(SB), BX											
  context.go:1005		0xe797c0		488d0d695aff01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe797c7		4889c7				MOVQ AX, DI												
  context.go:1005		0xe797ca		488b8424c8010000		MOVQ 0x1c8(SP), AX											
  context.go:1005		0xe797d2		e8895ff8ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1060	0xe797d7		4881c4b8010000			ADDQ $.file+363(SB), SP											
  control_controller.go:1060	0xe797de		5d				POPQ BP													
  control_controller.go:1060	0xe797df		90				NOPL													
  control_controller.go:1060	0xe797e0		c3				RET													
  control_controller.go:1049	0xe797e1		e8fa175fff			CALL runtime.makemap_small(SB)										
  control_controller.go:1049	0xe797e6		48898424d0000000		MOVQ AX, 0xd0(SP)											
  control_controller.go:1049	0xe797ee		4889c3				MOVQ AX, BX												
  control_controller.go:1049	0xe797f1		488d0dc90d2f00			LEAQ go:string.*+8377(SB), CX										
  control_controller.go:1049	0xe797f8		bf05000000			MOVL $__subsystem__+2(SB), DI										
  control_controller.go:1049	0xe797fd		488d057cb02200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1049	0xe79804		e817485fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1049	0xe79809		488d0d10911c00			LEAQ runtime.types+383264(SB), CX									
  control_controller.go:1049	0xe79810		488908				MOVQ CX, 0(AX)												
  control_controller.go:1049	0xe79813		833d36436e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1049	0xe7981a		740c				JE 0xe79828												
  control_controller.go:1049	0xe7981c		488b4808			MOVQ 0x8(AX), CX											
  control_controller.go:1049	0xe79820		e8fbeb5fff			CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1049	0xe79825		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1049	0xe79828		488d0d61f0fe01			LEAQ CAS-Backend/biz/controller..stmp_33(SB), CX							
  control_controller.go:1049	0xe7982f		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe79833		488d0d46b02200			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7983a		48898c24c0000000		MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe79842		488b8c24d0000000		MOVQ 0xd0(SP), CX											
  context.go:1005		0xe7984a		48898c24c8000000		MOVQ CX, 0xc8(SP)											
  context.go:1005		0xe79852		488d0587262500			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe79859		488d9c24c0000000		LEAQ 0xc0(SP), BX											
  context.go:1005		0xe79861		e83a5859ff			CALL runtime.convT(SB)											
  context.go:1005		0xe79866		bb90010000			MOVL $.file+323(SB), BX											
  context.go:1005		0xe7986b		488d0dbe59ff01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe79872		4889c7				MOVQ AX, DI												
  context.go:1005		0xe79875		488b8424c8010000		MOVQ 0x1c8(SP), AX											
  context.go:1005		0xe7987d		0f1f00				NOPL 0(AX)												
  context.go:1005		0xe79880		e8db5ef8ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1050	0xe79885		4881c4b8010000			ADDQ $.file+363(SB), SP											
  control_controller.go:1050	0xe7988c		5d				POPQ BP													
  control_controller.go:1050	0xe7988d		c3				RET													
  control_controller.go:1092	0xe7988e		488b842488000000		MOVQ 0x88(SP), AX											
  control_controller.go:1092	0xe79896		488b10				MOVQ 0(AX), DX												
  control_controller.go:1099	0xe79899		4c8b4c2460			MOVQ 0x60(SP), R9											
  control_controller.go:1099	0xe7989e		4d8b11				MOVQ 0(R9), R10												
  control_controller.go:1087	0xe798a1		440f11bc2408010000		MOVUPS X15, 0x108(SP)											
  control_controller.go:1087	0xe798aa		440f11bc2418010000		MOVUPS X15, 0x118(SP)											
  control_controller.go:1087	0xe798b3		440f11bc2428010000		MOVUPS X15, 0x128(SP)											
  control_controller.go:1088	0xe798bc		4c8b9c24b8000000		MOVQ 0xb8(SP), R11											
  control_controller.go:1088	0xe798c4		4c899c2428010000		MOVQ R11, 0x128(SP)											
  control_controller.go:1092	0xe798cc		4889942418010000		MOVQ DX, 0x118(SP)											
  control_controller.go:1099	0xe798d4		4c89942408010000		MOVQ R10, 0x108(SP)											
  control_controller.go:1087	0xe798dc		488d5c2434			LEAQ 0x34(SP), BX											
  control_controller.go:1087	0xe798e1		31c9				XORL CX, CX												
  control_controller.go:1087	0xe798e3		31ff				XORL DI, DI												
  control_controller.go:1087	0xe798e5		be03000000			MOVL $__subsystem__(SB), SI										
  control_controller.go:1087	0xe798ea		41b801000000			MOVL $__minor_os_version__(SB), R8									
  control_controller.go:1087	0xe798f0		488d842408010000		LEAQ 0x108(SP), AX											
  control_controller.go:1087	0xe798f8		e8034c5dff			CALL runtime.selectgo(SB)										
  control_controller.go:1087	0xe798fd		0f1f00				NOPL 0(AX)												
  control_controller.go:1099	0xe79900		4885c0				TESTQ AX, AX												
  control_controller.go:1099	0xe79903		0f85bc010000			JNE 0xe79ac5												
  control_controller.go:1101	0xe79909		488b0550b31300			MOVQ CAS-Backend/biz/controller.mappingManager(SB), AX							
  control_controller.go:1101	0xe79910		ba01000000			MOVL $__minor_os_version__(SB), DX									
  control_controller.go:1101	0xe79915		f00fc15010			LOCK XADDL DX, 0x10(AX)											
  type.go:88			0xe7991a		ffc2				INCL DX													
  type.go:88			0xe7991c		0f1f4000			NOPL 0(AX)												
  rwmutex.go:70			0xe79920		85d2				TESTL DX, DX												
  rwmutex.go:70			0xe79922		7d0d				JGE 0xe79931												
  rwmutex.go:72			0xe79924		4883c00c			ADDQ $__major_os_version__+6(SB), AX									
  rwmutex.go:72			0xe79928		31db				XORL BX, BX												
  rwmutex.go:72			0xe7992a		31c9				XORL CX, CX												
  rwmutex.go:72			0xe7992c		e82f7c5fff			CALL sync.runtime_SemacquireRWMutexR(SB)								
  control_controller.go:1102	0xe79931		488b1528b31300			MOVQ CAS-Backend/biz/controller.mappingManager(SB), DX							
  control_controller.go:1102	0xe79938		488b5a18			MOVQ 0x18(DX), BX											
  control_controller.go:1102	0xe7993c		488d05bd7c2000			LEAQ runtime.types+640512(SB), AX									
  control_controller.go:1102	0xe79943		488b4c2478			MOVQ 0x78(SP), CX											
  control_controller.go:1102	0xe79948		488b7c2440			MOVQ 0x40(SP), DI											
  control_controller.go:1102	0xe7994d		e8ee425fff			CALL runtime.mapaccess2_faststr(SB)									
  control_controller.go:1103	0xe79952		488b1507b31300			MOVQ CAS-Backend/biz/controller.mappingManager(SB), DX							
  control_controller.go:1102	0xe79959		488b00				MOVQ 0(AX), AX												
  control_controller.go:1102	0xe7995c		4889442468			MOVQ AX, 0x68(SP)											
  control_controller.go:1103	0xe79961		beffffffff			MOVL $-0x1, SI												
  control_controller.go:1103	0xe79966		f00fc17210			LOCK XADDL SI, 0x10(DX)											
  type.go:88			0xe7996b		ffce				DECL SI													
  rwmutex.go:118		0xe7996d		85f6				TESTL SI, SI												
  rwmutex.go:118		0xe7996f		7d18				JGE 0xe79989												
  control_controller.go:1102	0xe79971		885c2431			MOVB BL, 0x31(SP)											
  rwmutex.go:120		0xe79975		4889d0				MOVQ DX, AX												
  rwmutex.go:120		0xe79978		89f3				MOVL SI, BX												
  rwmutex.go:120		0xe7997a		e8c1f460ff			CALL sync.(*RWMutex).rUnlockSlow(SB)									
  control_controller.go:1105	0xe7997f		488b442468			MOVQ 0x68(SP), AX											
  control_controller.go:1102	0xe79984		0fb65c2431			MOVZX 0x31(SP), BX											
  control_controller.go:1102	0xe79989		84db				TESTL BL, BL												
  control_controller.go:1105	0xe7998b		0f8488020000			JE 0xe79c19												
  control_controller.go:1105	0xe79991		80781000			CMPB 0x10(AX), $0x0											
  control_controller.go:1105	0xe79995		0f847e020000			JE 0xe79c19												
  control_controller.go:1112	0xe7999b		90				NOPL													
  type.go:88			0xe7999c		ba01000000			MOVL $__minor_os_version__(SB), DX									
  type.go:88			0xe799a1		f00fc15048			LOCK XADDL DX, 0x48(AX)											
  type.go:88			0xe799a6		ffc2				INCL DX													
  rwmutex.go:70			0xe799a8		85d2				TESTL DX, DX												
  rwmutex.go:70			0xe799aa		7d15				JGE 0xe799c1												
  rwmutex.go:72			0xe799ac		488d5044			LEAQ 0x44(AX), DX											
  rwmutex.go:72			0xe799b0		31db				XORL BX, BX												
  rwmutex.go:72			0xe799b2		31c9				XORL CX, CX												
  rwmutex.go:72			0xe799b4		4889d0				MOVQ DX, AX												
  rwmutex.go:72			0xe799b7		e8a47b5fff			CALL sync.runtime_SemacquireRWMutexR(SB)								
  control_controller.go:1113	0xe799bc		488b442468			MOVQ 0x68(SP), AX											
  control_controller.go:1113	0xe799c1		488b4828			MOVQ 0x28(AX), CX											
  control_controller.go:1113	0xe799c5		488b5820			MOVQ 0x20(AX), BX											
  control_controller.go:1113	0xe799c9		488b7830			MOVQ 0x30(AX), DI											
  type.go:88			0xe799cd		baffffffff			MOVL $-0x1, DX												
  type.go:88			0xe799d2		f00fc15048			LOCK XADDL DX, 0x48(AX)											
  type.go:88			0xe799d7		ffca				DECL DX													
  rwmutex.go:118		0xe799d9		85d2				TESTL DX, DX												
  rwmutex.go:118		0xe799db		7d2f				JGE 0xe79a0c												
  control_controller.go:1113	0xe799dd		48897c2450			MOVQ DI, 0x50(SP)											
  control_controller.go:1113	0xe799e2		48894c2448			MOVQ CX, 0x48(SP)											
  control_controller.go:1113	0xe799e7		48899c2480000000		MOVQ BX, 0x80(SP)											
  control_controller.go:1114	0xe799ef		4883c038			ADDQ $__major_os_version__+50(SB), AX									
  rwmutex.go:120		0xe799f3		89d3				MOVL DX, BX												
  rwmutex.go:120		0xe799f5		e846f460ff			CALL sync.(*RWMutex).rUnlockSlow(SB)									
  control_controller.go:1116	0xe799fa		488b4c2448			MOVQ 0x48(SP), CX											
  control_controller.go:1121	0xe799ff		488b9c2480000000		MOVQ 0x80(SP), BX											
  control_controller.go:1121	0xe79a07		488b7c2450			MOVQ 0x50(SP), DI											
  control_controller.go:1116	0xe79a0c		4885c9				TESTQ CX, CX												
  control_controller.go:1116	0xe79a0f		0f8479feffff			JE 0xe7988e												
  control_controller.go:1121	0xe79a15		488b055c8b6902			MOVQ encoding/base64.StdEncoding(SB), AX								
  control_controller.go:1121	0xe79a1c		0f1f4000			NOPL 0(AX)												
  control_controller.go:1121	0xe79a20		e8fbc56eff			CALL encoding/base64.(*Encoding).EncodeToString(SB)							
  control_controller.go:1122	0xe79a25		440f11bc2468010000		MOVUPS X15, 0x168(SP)											
  control_controller.go:1122	0xe79a2e		e8ed065fff			CALL runtime.convTstring(SB)										
  control_controller.go:1122	0xe79a33		488d15e68e1c00			LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1122	0xe79a3a		4889942468010000		MOVQ DX, 0x168(SP)											
  control_controller.go:1122	0xe79a42		4889842470010000		MOVQ AX, 0x170(SP)											
  control_controller.go:1122	0xe79a4a		488d0533a13000			LEAQ go:string.*+112252(SB), AX										
  control_controller.go:1122	0xe79a51		bb17000000			MOVL $__major_os_version__+17(SB), BX									
  control_controller.go:1122	0xe79a56		488d8c2468010000		LEAQ 0x168(SP), CX											
  control_controller.go:1122	0xe79a5e		bf01000000			MOVL $__minor_os_version__(SB), DI									
  control_controller.go:1122	0xe79a63		4889fe				MOVQ DI, SI												
  control_controller.go:1122	0xe79a66		e8d5586aff			CALL fmt.Sprintf(SB)											
  control_controller.go:1124	0xe79a6b		4889d9				MOVQ BX, CX												
  control_controller.go:1124	0xe79a6e		4889c3				MOVQ AX, BX												
  control_controller.go:1124	0xe79a71		31c0				XORL AX, AX												
  control_controller.go:1124	0xe79a73		e8c8bd5dff			CALL runtime.stringtoslicebyte(SB)									
  control_controller.go:1124	0xe79a78		488b9424c8010000		MOVQ 0x1c8(SP), DX											
  control_controller.go:1124	0xe79a80		488b7228			MOVQ 0x28(DX), SI											
  control_controller.go:1124	0xe79a84		4c8b4230			MOVQ 0x30(DX), R8											
  control_controller.go:1124	0xe79a88		488b7650			MOVQ 0x50(SI), SI											
  control_controller.go:1124	0xe79a8c		4889cf				MOVQ CX, DI												
  control_controller.go:1124	0xe79a8f		4889d9				MOVQ BX, CX												
  control_controller.go:1124	0xe79a92		4889c3				MOVQ AX, BX												
  control_controller.go:1124	0xe79a95		4c89c0				MOVQ R8, AX												
  control_controller.go:1124	0xe79a98		ffd6				CALL SI													
  control_controller.go:1124	0xe79a9a		660f1f440000			NOPW 0(AX)(AX*1)											
  control_controller.go:1124	0xe79aa0		4885db				TESTQ BX, BX												
  control_controller.go:1124	0xe79aa3		0f859c000000			JNE 0xe79b45												
  control_controller.go:1128	0xe79aa9		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1128	0xe79ab1		488b5128			MOVQ 0x28(CX), DX											
  control_controller.go:1128	0xe79ab5		488b4130			MOVQ 0x30(CX), AX											
  control_controller.go:1128	0xe79ab9		488b5220			MOVQ 0x20(DX), DX											
  control_controller.go:1128	0xe79abd		ffd2				CALL DX													
  control_controller.go:1128	0xe79abf		90				NOPL													
  control_controller.go:1099	0xe79ac0		e9c9fdffff			JMP 0xe7988e												
  control_controller.go:1092	0xe79ac5		4883f801			CMPQ AX, $__minor_os_version__(SB)									
  control_controller.go:1092	0xe79ac9		0f8532020000			JNE 0xe79d01												
  control_controller.go:1094	0xe79acf		488d050ac41d00			LEAQ runtime.types+462560(SB), AX									
  control_controller.go:1094	0xe79ad6		e8c57c59ff			CALL runtime.newobject(SB)										
  control_controller.go:1094	0xe79adb		48b93a20686561727462		MOVQ $0x627472616568203a, CX										
  control_controller.go:1094	0xe79ae5		488908				MOVQ CX, 0(AX)												
  control_controller.go:1094	0xe79ae8		48b97274626561740a0a		MOVQ $0xa0a746165627472, CX										
  control_controller.go:1094	0xe79af2		48894805			MOVQ CX, 0x5(AX)											
  control_controller.go:1094	0xe79af6		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1094	0xe79afe		488b5128			MOVQ 0x28(CX), DX											
  control_controller.go:1094	0xe79b02		488b5930			MOVQ 0x30(CX), BX											
  control_controller.go:1094	0xe79b06		488b5250			MOVQ 0x50(DX), DX											
  control_controller.go:1094	0xe79b0a		bf0d000000			MOVL $__major_os_version__+7(SB), DI									
  control_controller.go:1094	0xe79b0f		4889c6				MOVQ AX, SI												
  control_controller.go:1094	0xe79b12		4889d8				MOVQ BX, AX												
  control_controller.go:1094	0xe79b15		4889f3				MOVQ SI, BX												
  control_controller.go:1094	0xe79b18		4889f9				MOVQ DI, CX												
  control_controller.go:1094	0xe79b1b		ffd2				CALL DX													
  control_controller.go:1094	0xe79b1d		0f1f00				NOPL 0(AX)												
  control_controller.go:1094	0xe79b20		4885db				TESTQ BX, BX												
  control_controller.go:1094	0xe79b23		0f85ab010000			JNE 0xe79cd4												
  control_controller.go:1097	0xe79b29		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1097	0xe79b31		488b5128			MOVQ 0x28(CX), DX											
  control_controller.go:1097	0xe79b35		488b4130			MOVQ 0x30(CX), AX											
  control_controller.go:1097	0xe79b39		488b5220			MOVQ 0x20(DX), DX											
  control_controller.go:1097	0xe79b3d		ffd2				CALL DX													
  control_controller.go:1097	0xe79b3f		90				NOPL													
  control_controller.go:1092	0xe79b40		e949fdffff			JMP 0xe7988e												
  control_controller.go:1125	0xe79b45		440f11bc24f8000000		MOVUPS X15, 0xf8(SP)											
  control_controller.go:1125	0xe79b4e		7404				JE 0xe79b54												
  control_controller.go:1125	0xe79b50		488b5b08			MOVQ 0x8(BX), BX											
  control_controller.go:1125	0xe79b54		48899c24f8000000		MOVQ BX, 0xf8(SP)											
  control_controller.go:1125	0xe79b5c		48898c2400010000		MOVQ CX, 0x100(SP)											
  log.go:397			0xe79b64		440f11bc2478010000		MOVUPS X15, 0x178(SP)											
  log.go:397			0xe79b6d		440f11bc2488010000		MOVUPS X15, 0x188(SP)											
  log.go:397			0xe79b76		440f11bc2498010000		MOVUPS X15, 0x198(SP)											
  log.go:397			0xe79b7f		488d15fa020000			LEAQ CAS-Backend/biz/controller.MapStream.Printf.func3(SB), DX						
  log.go:397			0xe79b86		4889942478010000		MOVQ DX, 0x178(SP)											
  log.go:397			0xe79b8e		48c78424880100001c000000	MOVQ $__major_os_version__+22(SB), 0x188(SP)								
  log.go:397			0xe79b9a		488d15e7f63000			LEAQ go:string.*+134528(SB), DX										
  log.go:397			0xe79ba1		4889942480010000		MOVQ DX, 0x180(SP)											
  log.go:397			0xe79ba9		48c784249801000001000000	MOVQ $__minor_os_version__(SB), 0x198(SP)								
  log.go:397			0xe79bb5		48c78424a001000001000000	MOVQ $__minor_os_version__(SB), 0x1a0(SP)								
  log.go:397			0xe79bc1		488d9424f8000000		LEAQ 0xf8(SP), DX											
  log.go:397			0xe79bc9		4889942490010000		MOVQ DX, 0x190(SP)											
  log.go:397			0xe79bd1		488b0598846902			MOVQ log.std(SB), AX											
  log.go:397			0xe79bd8		31db				XORL BX, BX												
  log.go:397			0xe79bda		b902000000			MOVL $__minor_os_version__+1(SB), CX									
  log.go:397			0xe79bdf		488dbc2478010000		LEAQ 0x178(SP), DI											
  log.go:397			0xe79be7		e8142490ff			CALL log.(*Logger).output(SB)										
  control_controller.go:1126	0xe79bec		c644243301			MOVB $__minor_os_version__(SB), 0x33(SP)								
  control_controller.go:1126	0xe79bf1		488b9424b0010000		MOVQ 0x1b0(SP), DX											
  control_controller.go:1126	0xe79bf9		488b32				MOVQ 0(DX), SI												
  control_controller.go:1126	0xe79bfc		ffd6				CALL SI													
  control_controller.go:1126	0xe79bfe		c644243300			MOVB $0x0, 0x33(SP)											
  control_controller.go:1126	0xe79c03		488b9424a8010000		MOVQ 0x1a8(SP), DX											
  control_controller.go:1126	0xe79c0b		488b32				MOVQ 0(DX), SI												
  control_controller.go:1126	0xe79c0e		ffd6				CALL SI													
  control_controller.go:1126	0xe79c10		4881c4b8010000			ADDQ $.file+363(SB), SP											
  control_controller.go:1126	0xe79c17		5d				POPQ BP													
  control_controller.go:1126	0xe79c18		c3				RET													
  control_controller.go:1106	0xe79c19		488d0520c31d00			LEAQ runtime.types+462656(SB), AX									
  control_controller.go:1106	0xe79c20		e87b7b59ff			CALL runtime.newobject(SB)										
  control_controller.go:1106	0xe79c25		48b96576656e743a2073		MOVQ $0x73203a746e657665, CX										
  control_controller.go:1106	0xe79c2f		488908				MOVQ CX, 0(AX)												
  control_controller.go:1106	0xe79c32		48b93a20737461747573		MOVQ $0x737574617473203a, CX										
  control_controller.go:1106	0xe79c3c		48894805			MOVQ CX, 0x5(AX)											
  control_controller.go:1106	0xe79c40		48b90a646174613a20e6		MOVQ $0xe6203a617461640a, CX										
  control_controller.go:1106	0xe79c4a		4889480d			MOVQ CX, 0xd(AX)											
  control_controller.go:1106	0xe79c4e		48b989abe59bbee5b7b2		MOVQ $0xb2b7e5be9be5ab89, CX										
  control_controller.go:1106	0xe79c58		48894815			MOVQ CX, 0x15(AX)											
  control_controller.go:1106	0xe79c5c		48b9e5819ce6ada20a0a		MOVQ $0xa0aa2ade69c81e5, CX										
  control_controller.go:1106	0xe79c66		4889481d			MOVQ CX, 0x1d(AX)											
  control_controller.go:1106	0xe79c6a		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1106	0xe79c72		488b5128			MOVQ 0x28(CX), DX											
  control_controller.go:1106	0xe79c76		488b5930			MOVQ 0x30(CX), BX											
  control_controller.go:1106	0xe79c7a		488b5250			MOVQ 0x50(DX), DX											
  control_controller.go:1106	0xe79c7e		bf25000000			MOVL $__major_os_version__+31(SB), DI									
  control_controller.go:1106	0xe79c83		4889c6				MOVQ AX, SI												
  control_controller.go:1106	0xe79c86		4889d8				MOVQ BX, AX												
  control_controller.go:1106	0xe79c89		4889f3				MOVQ SI, BX												
  control_controller.go:1106	0xe79c8c		4889f9				MOVQ DI, CX												
  control_controller.go:1106	0xe79c8f		ffd2				CALL DX													
  control_controller.go:1107	0xe79c91		488b8c24c8010000		MOVQ 0x1c8(SP), CX											
  control_controller.go:1107	0xe79c99		488b5128			MOVQ 0x28(CX), DX											
  control_controller.go:1107	0xe79c9d		488b4130			MOVQ 0x30(CX), AX											
  control_controller.go:1107	0xe79ca1		488b4a20			MOVQ 0x20(DX), CX											
  control_controller.go:1107	0xe79ca5		ffd1				CALL CX													
  control_controller.go:1108	0xe79ca7		c644243301			MOVB $__minor_os_version__(SB), 0x33(SP)								
  control_controller.go:1108	0xe79cac		488b9424b0010000		MOVQ 0x1b0(SP), DX											
  control_controller.go:1108	0xe79cb4		488b0a				MOVQ 0(DX), CX												
  control_controller.go:1108	0xe79cb7		ffd1				CALL CX													
  control_controller.go:1108	0xe79cb9		c644243300			MOVB $0x0, 0x33(SP)											
  control_controller.go:1108	0xe79cbe		488b9424a8010000		MOVQ 0x1a8(SP), DX											
  control_controller.go:1108	0xe79cc6		488b0a				MOVQ 0(DX), CX												
  control_controller.go:1108	0xe79cc9		ffd1				CALL CX													
  control_controller.go:1108	0xe79ccb		4881c4b8010000			ADDQ $.file+363(SB), SP											
  control_controller.go:1108	0xe79cd2		5d				POPQ BP													
  control_controller.go:1108	0xe79cd3		c3				RET													
  control_controller.go:1095	0xe79cd4		c644243301			MOVB $__minor_os_version__(SB), 0x33(SP)								
  control_controller.go:1095	0xe79cd9		488b9424b0010000		MOVQ 0x1b0(SP), DX											
  control_controller.go:1095	0xe79ce1		488b02				MOVQ 0(DX), AX												
  control_controller.go:1095	0xe79ce4		ffd0				CALL AX													
  control_controller.go:1095	0xe79ce6		c644243300			MOVB $0x0, 0x33(SP)											
  control_controller.go:1095	0xe79ceb		488b9424a8010000		MOVQ 0x1a8(SP), DX											
  control_controller.go:1095	0xe79cf3		488b02				MOVQ 0(DX), AX												
  control_controller.go:1095	0xe79cf6		ffd0				CALL AX													
  control_controller.go:1095	0xe79cf8		4881c4b8010000			ADDQ $.file+363(SB), SP											
  control_controller.go:1095	0xe79cff		5d				POPQ BP													
  control_controller.go:1095	0xe79d00		c3				RET													
  control_controller.go:1089	0xe79d01		440f11bc24e8000000		MOVUPS X15, 0xe8(SP)											
  control_controller.go:1089	0xe79d0a		488b442478			MOVQ 0x78(SP), AX											
  control_controller.go:1089	0xe79d0f		488b5c2440			MOVQ 0x40(SP), BX											
  control_controller.go:1089	0xe79d14		e807045fff			CALL runtime.convTstring(SB)										
  control_controller.go:1089	0xe79d19		488d0d008c1c00			LEAQ runtime.types+383264(SB), CX									
  control_controller.go:1089	0xe79d20		48898c24e8000000		MOVQ CX, 0xe8(SP)											
  control_controller.go:1089	0xe79d28		48898424f0000000		MOVQ AX, 0xf0(SP)											
  log.go:397			0xe79d30		440f11bc2478010000		MOVUPS X15, 0x178(SP)											
  log.go:397			0xe79d39		440f11bc2488010000		MOVUPS X15, 0x188(SP)											
  log.go:397			0xe79d42		440f11bc2498010000		MOVUPS X15, 0x198(SP)											
  log.go:397			0xe79d4b		488d0dce000000			LEAQ CAS-Backend/biz/controller.MapStream.Printf.func2(SB), CX						
  log.go:397			0xe79d52		48898c2478010000		MOVQ CX, 0x178(SP)											
  log.go:397			0xe79d5a		48c784248801000022000000	MOVQ $__major_os_version__+28(SB), 0x188(SP)								
  log.go:397			0xe79d66		488d0dd2603100			LEAQ go:string.*+162103(SB), CX										
  log.go:397			0xe79d6d		48898c2480010000		MOVQ CX, 0x180(SP)											
  log.go:397			0xe79d75		48c784249801000001000000	MOVQ $__minor_os_version__(SB), 0x198(SP)								
  log.go:397			0xe79d81		48c78424a001000001000000	MOVQ $__minor_os_version__(SB), 0x1a0(SP)								
  log.go:397			0xe79d8d		488d8c24e8000000		LEAQ 0xe8(SP), CX											
  log.go:397			0xe79d95		48898c2490010000		MOVQ CX, 0x190(SP)											
  log.go:397			0xe79d9d		488b05cc826902			MOVQ log.std(SB), AX											
  log.go:397			0xe79da4		31db				XORL BX, BX												
  log.go:397			0xe79da6		b902000000			MOVL $__minor_os_version__+1(SB), CX									
  log.go:397			0xe79dab		488dbc2478010000		LEAQ 0x178(SP), DI											
  log.go:397			0xe79db3		e8482290ff			CALL log.(*Logger).output(SB)										
  control_controller.go:1090	0xe79db8		c644243301			MOVB $__minor_os_version__(SB), 0x33(SP)								
  control_controller.go:1090	0xe79dbd		488b9424b0010000		MOVQ 0x1b0(SP), DX											
  control_controller.go:1090	0xe79dc5		488b0a				MOVQ 0(DX), CX												
  control_controller.go:1090	0xe79dc8		ffd1				CALL CX													
  control_controller.go:1090	0xe79dca		c644243300			MOVB $0x0, 0x33(SP)											
  control_controller.go:1090	0xe79dcf		488b9424a8010000		MOVQ 0x1a8(SP), DX											
  control_controller.go:1090	0xe79dd7		488b0a				MOVQ 0(DX), CX												
  control_controller.go:1090	0xe79dda		ffd1				CALL CX													
  control_controller.go:1090	0xe79ddc		4881c4b8010000			ADDQ $.file+363(SB), SP											
  control_controller.go:1090	0xe79de3		5d				POPQ BP													
  control_controller.go:1090	0xe79de4		c3				RET													
  control_controller.go:1090	0xe79de5		e896fd5bff			CALL runtime.deferreturn(SB)										
  control_controller.go:1090	0xe79dea		4881c4b8010000			ADDQ $.file+363(SB), SP											
  control_controller.go:1090	0xe79df1		5d				POPQ BP													
  control_controller.go:1090	0xe79df2		c3				RET													
  control_controller.go:1046	0xe79df3		4889442408			MOVQ AX, 0x8(SP)											
  control_controller.go:1046	0xe79df8		e8e3c65fff			CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:1046	0xe79dfd		488b442408			MOVQ 0x8(SP), AX											
  control_controller.go:1046	0xe79e02		e919f3ffff			JMP CAS-Backend/biz/controller.MapStream(SB)								
  :-1				0xe79e07		cc				INT $__subsystem__(SB)											
  :-1				0xe79e08		cc				INT $__subsystem__(SB)											
  :-1				0xe79e09		cc				INT $__subsystem__(SB)											
  :-1				0xe79e0a		cc				INT $__subsystem__(SB)											
  :-1				0xe79e0b		cc				INT $__subsystem__(SB)											
  :-1				0xe79e0c		cc				INT $__subsystem__(SB)											
  :-1				0xe79e0d		cc				INT $__subsystem__(SB)											
  :-1				0xe79e0e		cc				INT $__subsystem__(SB)											
  :-1				0xe79e0f		cc				INT $__subsystem__(SB)											
  :-1				0xe79e10		cc				INT $__subsystem__(SB)											
  :-1				0xe79e11		cc				INT $__subsystem__(SB)											
  :-1				0xe79e12		cc				INT $__subsystem__(SB)											
  :-1				0xe79e13		cc				INT $__subsystem__(SB)											
  :-1				0xe79e14		cc				INT $__subsystem__(SB)											
  :-1				0xe79e15		cc				INT $__subsystem__(SB)											
  :-1				0xe79e16		cc				INT $__subsystem__(SB)											
  :-1				0xe79e17		cc				INT $__subsystem__(SB)											
  :-1				0xe79e18		cc				INT $__subsystem__(SB)											
  :-1				0xe79e19		cc				INT $__subsystem__(SB)											
  :-1				0xe79e1a		cc				INT $__subsystem__(SB)											
  :-1				0xe79e1b		cc				INT $__subsystem__(SB)											
  :-1				0xe79e1c		cc				INT $__subsystem__(SB)											
  :-1				0xe79e1d		cc				INT $__subsystem__(SB)											
  :-1				0xe79e1e		cc				INT $__subsystem__(SB)											
  :-1				0xe79e1f		cc				INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.MapStream.deferwrap2(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1084	0xe79ee0		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:1084	0xe79ee4		7627			JBE 0xe79f0d						
  control_controller.go:1084	0xe79ee6		55			PUSHQ BP						
  control_controller.go:1084	0xe79ee7		4889e5			MOVQ SP, BP						
  control_controller.go:1084	0xe79eea		4883ec08		SUBQ $__major_os_version__+2(SB), SP			
  control_controller.go:1084	0xe79eee		4d8b6620		MOVQ 0x20(R14), R12					
  control_controller.go:1084	0xe79ef2		4d85e4			TESTQ R12, R12						
  control_controller.go:1084	0xe79ef5		751d			JNE 0xe79f14						
  control_controller.go:1084	0xe79ef7		488b4208		MOVQ 0x8(DX), AX					
  tick.go:53			0xe79efb		80780800		CMPB 0x8(AX), $0x0					
  tick.go:53			0xe79eff		90			NOPL							
  tick.go:53			0xe79f00		7405			JE 0xe79f07						
  tick.go:59			0xe79f02		e879a45fff		CALL time.stopTimer(SB)					
  control_controller.go:1084	0xe79f07		4883c408		ADDQ $__major_os_version__+2(SB), SP			
  control_controller.go:1084	0xe79f0b		5d			POPQ BP							
  control_controller.go:1084	0xe79f0c		c3			RET							
  control_controller.go:1084	0xe79f0d		e84ec55fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:1084	0xe79f12		ebcc			JMP CAS-Backend/biz/controller.MapStream.deferwrap2(SB)	
  control_controller.go:1084	0xe79f14		4c8d6c2418		LEAQ 0x18(SP), R13					
  control_controller.go:1084	0xe79f19		4d392c24		CMPQ 0(R12), R13					
  control_controller.go:1084	0xe79f1d		75d8			JNE 0xe79ef7						
  control_controller.go:1084	0xe79f1f		49892424		MOVQ SP, 0(R12)						
  control_controller.go:1084	0xe79f23		ebd2			JMP 0xe79ef7						
  :-1				0xe79f25		cc			INT $__subsystem__(SB)					
  :-1				0xe79f26		cc			INT $__subsystem__(SB)					
  :-1				0xe79f27		cc			INT $__subsystem__(SB)					
  :-1				0xe79f28		cc			INT $__subsystem__(SB)					
  :-1				0xe79f29		cc			INT $__subsystem__(SB)					
  :-1				0xe79f2a		cc			INT $__subsystem__(SB)					
  :-1				0xe79f2b		cc			INT $__subsystem__(SB)					
  :-1				0xe79f2c		cc			INT $__subsystem__(SB)					
  :-1				0xe79f2d		cc			INT $__subsystem__(SB)					
  :-1				0xe79f2e		cc			INT $__subsystem__(SB)					
  :-1				0xe79f2f		cc			INT $__subsystem__(SB)					
  :-1				0xe79f30		cc			INT $__subsystem__(SB)					
  :-1				0xe79f31		cc			INT $__subsystem__(SB)					
  :-1				0xe79f32		cc			INT $__subsystem__(SB)					
  :-1				0xe79f33		cc			INT $__subsystem__(SB)					
  :-1				0xe79f34		cc			INT $__subsystem__(SB)					
  :-1				0xe79f35		cc			INT $__subsystem__(SB)					
  :-1				0xe79f36		cc			INT $__subsystem__(SB)					
  :-1				0xe79f37		cc			INT $__subsystem__(SB)					
  :-1				0xe79f38		cc			INT $__subsystem__(SB)					
  :-1				0xe79f39		cc			INT $__subsystem__(SB)					
  :-1				0xe79f3a		cc			INT $__subsystem__(SB)					
  :-1				0xe79f3b		cc			INT $__subsystem__(SB)					
  :-1				0xe79f3c		cc			INT $__subsystem__(SB)					
  :-1				0xe79f3d		cc			INT $__subsystem__(SB)					
  :-1				0xe79f3e		cc			INT $__subsystem__(SB)					
  :-1				0xe79f3f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.MapStream.deferwrap1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1081	0xe79f40		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:1081	0xe79f44		7627			JBE 0xe79f6d						
  control_controller.go:1081	0xe79f46		55			PUSHQ BP						
  control_controller.go:1081	0xe79f47		4889e5			MOVQ SP, BP						
  control_controller.go:1081	0xe79f4a		4883ec08		SUBQ $__major_os_version__+2(SB), SP			
  control_controller.go:1081	0xe79f4e		4d8b6620		MOVQ 0x20(R14), R12					
  control_controller.go:1081	0xe79f52		4d85e4			TESTQ R12, R12						
  control_controller.go:1081	0xe79f55		751d			JNE 0xe79f74						
  control_controller.go:1081	0xe79f57		488b4208		MOVQ 0x8(DX), AX					
  tick.go:53			0xe79f5b		80780800		CMPB 0x8(AX), $0x0					
  tick.go:53			0xe79f5f		90			NOPL							
  tick.go:53			0xe79f60		7405			JE 0xe79f67						
  tick.go:59			0xe79f62		e819a45fff		CALL time.stopTimer(SB)					
  control_controller.go:1081	0xe79f67		4883c408		ADDQ $__major_os_version__+2(SB), SP			
  control_controller.go:1081	0xe79f6b		5d			POPQ BP							
  control_controller.go:1081	0xe79f6c		c3			RET							
  control_controller.go:1081	0xe79f6d		e8eec45fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:1081	0xe79f72		ebcc			JMP CAS-Backend/biz/controller.MapStream.deferwrap1(SB)	
  control_controller.go:1081	0xe79f74		4c8d6c2418		LEAQ 0x18(SP), R13					
  control_controller.go:1081	0xe79f79		4d392c24		CMPQ 0(R12), R13					
  control_controller.go:1081	0xe79f7d		75d8			JNE 0xe79f57						
  control_controller.go:1081	0xe79f7f		49892424		MOVQ SP, 0(R12)						
  control_controller.go:1081	0xe79f83		ebd2			JMP 0xe79f57						
  :-1				0xe79f85		cc			INT $__subsystem__(SB)					
  :-1				0xe79f86		cc			INT $__subsystem__(SB)					
  :-1				0xe79f87		cc			INT $__subsystem__(SB)					
  :-1				0xe79f88		cc			INT $__subsystem__(SB)					
  :-1				0xe79f89		cc			INT $__subsystem__(SB)					
  :-1				0xe79f8a		cc			INT $__subsystem__(SB)					
  :-1				0xe79f8b		cc			INT $__subsystem__(SB)					
  :-1				0xe79f8c		cc			INT $__subsystem__(SB)					
  :-1				0xe79f8d		cc			INT $__subsystem__(SB)					
  :-1				0xe79f8e		cc			INT $__subsystem__(SB)					
  :-1				0xe79f8f		cc			INT $__subsystem__(SB)					
  :-1				0xe79f90		cc			INT $__subsystem__(SB)					
  :-1				0xe79f91		cc			INT $__subsystem__(SB)					
  :-1				0xe79f92		cc			INT $__subsystem__(SB)					
  :-1				0xe79f93		cc			INT $__subsystem__(SB)					
  :-1				0xe79f94		cc			INT $__subsystem__(SB)					
  :-1				0xe79f95		cc			INT $__subsystem__(SB)					
  :-1				0xe79f96		cc			INT $__subsystem__(SB)					
  :-1				0xe79f97		cc			INT $__subsystem__(SB)					
  :-1				0xe79f98		cc			INT $__subsystem__(SB)					
  :-1				0xe79f99		cc			INT $__subsystem__(SB)					
  :-1				0xe79f9a		cc			INT $__subsystem__(SB)					
  :-1				0xe79f9b		cc			INT $__subsystem__(SB)					
  :-1				0xe79f9c		cc			INT $__subsystem__(SB)					
  :-1				0xe79f9d		cc			INT $__subsystem__(SB)					
  :-1				0xe79f9e		cc			INT $__subsystem__(SB)					
  :-1				0xe79f9f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.MapStream.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1074	0xe79fa0		493b6610		CMPQ SP, 0x10(R14)							
  control_controller.go:1074	0xe79fa4		0f86d9000000		JBE 0xe7a083								
  control_controller.go:1074	0xe79faa		55			PUSHQ BP								
  control_controller.go:1074	0xe79fab		4889e5			MOVQ SP, BP								
  control_controller.go:1074	0xe79fae		4883ec78		SUBQ $.file+43(SB), SP							
  control_controller.go:1074	0xe79fb2		488b4a10		MOVQ 0x10(DX), CX							
  control_controller.go:1074	0xe79fb6		48894c2430		MOVQ CX, 0x30(SP)							
  control_controller.go:1074	0xe79fbb		488b5a18		MOVQ 0x18(DX), BX							
  control_controller.go:1074	0xe79fbf		48895c2428		MOVQ BX, 0x28(SP)							
  control_controller.go:1074	0xe79fc4		488b7220		MOVQ 0x20(DX), SI							
  control_controller.go:1074	0xe79fc8		4889742420		MOVQ SI, 0x20(SP)							
  control_controller.go:1074	0xe79fcd		488b5208		MOVQ 0x8(DX), DX							
  control_controller.go:1075	0xe79fd1		488b7a28		MOVQ 0x28(DX), DI							
  control_controller.go:1075	0xe79fd5		488b4230		MOVQ 0x30(DX), AX							
  control_controller.go:1075	0xe79fd9		488b5718		MOVQ 0x18(DI), DX							
  control_controller.go:1075	0xe79fdd		ffd2			CALL DX									
  control_controller.go:1075	0xe79fdf		31db			XORL BX, BX								
  control_controller.go:1075	0xe79fe1		e87a0959ff		CALL runtime.chanrecv1(SB)						
  control_controller.go:1076	0xe79fe6		488b442430		MOVQ 0x30(SP), AX							
  control_controller.go:1076	0xe79feb		e8900459ff		CALL runtime.closechan(SB)						
  control_controller.go:1077	0xe79ff0		440f117c2438		MOVUPS X15, 0x38(SP)							
  control_controller.go:1077	0xe79ff6		488b442428		MOVQ 0x28(SP), AX							
  control_controller.go:1077	0xe79ffb		488b5c2420		MOVQ 0x20(SP), BX							
  control_controller.go:1077	0xe7a000		e81b015fff		CALL runtime.convTstring(SB)						
  control_controller.go:1077	0xe7a005		488d0d14891c00		LEAQ runtime.types+383264(SB), CX					
  control_controller.go:1077	0xe7a00c		48894c2438		MOVQ CX, 0x38(SP)							
  control_controller.go:1077	0xe7a011		4889442440		MOVQ AX, 0x40(SP)							
  log.go:397			0xe7a016		440f117c2448		MOVUPS X15, 0x48(SP)							
  log.go:397			0xe7a01c		440f117c2458		MOVUPS X15, 0x58(SP)							
  log.go:397			0xe7a022		440f117c2468		MOVUPS X15, 0x68(SP)							
  log.go:397			0xe7a028		488d0d71000000		LEAQ CAS-Backend/biz/controller.MapStream.func1.Printf.1(SB), CX	
  log.go:397			0xe7a02f		48894c2448		MOVQ CX, 0x48(SP)							
  log.go:397			0xe7a034		48c744245819000000	MOVQ $__major_os_version__+19(SB), 0x58(SP)				
  log.go:397			0xe7a03d		488d0da9bd3000		LEAQ go:string.*+121061(SB), CX						
  log.go:397			0xe7a044		48894c2450		MOVQ CX, 0x50(SP)							
  log.go:397			0xe7a049		48c744246801000000	MOVQ $__minor_os_version__(SB), 0x68(SP)				
  log.go:397			0xe7a052		48c744247001000000	MOVQ $__minor_os_version__(SB), 0x70(SP)				
  log.go:397			0xe7a05b		488d4c2438		LEAQ 0x38(SP), CX							
  log.go:397			0xe7a060		48894c2460		MOVQ CX, 0x60(SP)							
  log.go:397			0xe7a065		488b0504806902		MOVQ log.std(SB), AX							
  log.go:397			0xe7a06c		31db			XORL BX, BX								
  log.go:397			0xe7a06e		b902000000		MOVL $__minor_os_version__+1(SB), CX					
  log.go:397			0xe7a073		488d7c2448		LEAQ 0x48(SP), DI							
  log.go:397			0xe7a078		e8831f90ff		CALL log.(*Logger).output(SB)						
  control_controller.go:1078	0xe7a07d		4883c478		ADDQ $.file+43(SB), SP							
  control_controller.go:1078	0xe7a081		5d			POPQ BP									
  control_controller.go:1078	0xe7a082		c3			RET									
  control_controller.go:1074	0xe7a083		e8d8c35fff		CALL runtime.morestack.abi0(SB)						
  control_controller.go:1074	0xe7a088		e913ffffff		JMP CAS-Backend/biz/controller.MapStream.func1(SB)			
  :-1				0xe7a08d		cc			INT $__subsystem__(SB)							
  :-1				0xe7a08e		cc			INT $__subsystem__(SB)							
  :-1				0xe7a08f		cc			INT $__subsystem__(SB)							
  :-1				0xe7a090		cc			INT $__subsystem__(SB)							
  :-1				0xe7a091		cc			INT $__subsystem__(SB)							
  :-1				0xe7a092		cc			INT $__subsystem__(SB)							
  :-1				0xe7a093		cc			INT $__subsystem__(SB)							
  :-1				0xe7a094		cc			INT $__subsystem__(SB)							
  :-1				0xe7a095		cc			INT $__subsystem__(SB)							
  :-1				0xe7a096		cc			INT $__subsystem__(SB)							
  :-1				0xe7a097		cc			INT $__subsystem__(SB)							
  :-1				0xe7a098		cc			INT $__subsystem__(SB)							
  :-1				0xe7a099		cc			INT $__subsystem__(SB)							
  :-1				0xe7a09a		cc			INT $__subsystem__(SB)							
  :-1				0xe7a09b		cc			INT $__subsystem__(SB)							
  :-1				0xe7a09c		cc			INT $__subsystem__(SB)							
  :-1				0xe7a09d		cc			INT $__subsystem__(SB)							
  :-1				0xe7a09e		cc			INT $__subsystem__(SB)							
  :-1				0xe7a09f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.StopMap(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1253	0xe7a100		4c8da42478ffffff		LEAQ 0xffffff78(SP), R12										
  control_controller.go:1253	0xe7a108		4d3b6610			CMPQ R12, 0x10(R14)											
  control_controller.go:1253	0xe7a10c		0f860c080000			JBE 0xe7a91e												
  control_controller.go:1253	0xe7a112		55				PUSHQ BP												
  control_controller.go:1253	0xe7a113		4889e5				MOVQ SP, BP												
  control_controller.go:1253	0xe7a116		4881ec00010000			SUBQ $.file+179(SB), SP											
  context.go:712		0xe7a11d		4889842410010000		MOVQ AX, 0x110(SP)											
  control_controller.go:1254	0xe7a125		488d05f4432a00			LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1254	0xe7a12c		e86f7659ff			CALL runtime.newobject(SB)										
  control_controller.go:1254	0xe7a131		48898424f8000000		MOVQ AX, 0xf8(SP)											
  context.go:712		0xe7a139		488b0da0d61300			MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe7a140		488b15a1d61300			MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe7a147		4885c9				TESTQ CX, CX												
  context.go:712		0xe7a14a		7419				JE 0xe7a165												
  context.go:712		0xe7a14c		488b5908			MOVQ 0x8(CX), BX											
  context.go:712		0xe7a150		488b35990f1400			MOVQ CAS-Backend/biz/controller..typeAssert.10(SB), SI							
  context.go:712		0xe7a157		4c8b06				MOVQ 0(SI), R8												
  context.go:712		0xe7a15a		448b4910			MOVL 0x10(CX), R9											
  context.go:712		0xe7a15e		6690				NOPW													
  context.go:712		0xe7a160		e969070000			JMP 0xe7a8ce												
  context.go:752		0xe7a165		488b7118			MOVQ 0x18(CX), SI											
  context.go:752		0xe7a169		4c8b842410010000		MOVQ 0x110(SP), R8											
  context.go:752		0xe7a171		498b5820			MOVQ 0x20(R8), BX											
  context.go:752		0xe7a175		488d0de4c31a00			LEAQ runtime.types+267616(SB), CX									
  context.go:752		0xe7a17c		4889c7				MOVQ AX, DI												
  context.go:752		0xe7a17f		4889d0				MOVQ DX, AX												
  context.go:752		0xe7a182		ffd6				CALL SI													
  control_controller.go:1255	0xe7a184		4885c0				TESTQ AX, AX												
  control_controller.go:1255	0xe7a187		0f8401010000			JE 0xe7a28e												
  context.go:752		0xe7a18d		48895c2438			MOVQ BX, 0x38(SP)											
  context.go:752		0xe7a192		4889442428			MOVQ AX, 0x28(SP)											
  control_controller.go:1256	0xe7a197		e8440e5fff			CALL runtime.makemap_small(SB)										
  control_controller.go:1256	0xe7a19c		48898424f0000000		MOVQ AX, 0xf0(SP)											
  control_controller.go:1256	0xe7a1a4		488b4c2428			MOVQ 0x28(SP), CX											
  control_controller.go:1256	0xe7a1a9		488b4918			MOVQ 0x18(CX), CX											
  control_controller.go:1256	0xe7a1ad		488b442438			MOVQ 0x38(SP), AX											
  control_controller.go:1256	0xe7a1b2		ffd1				CALL CX													
  control_controller.go:1256	0xe7a1b4		b914000000			MOVL $__major_os_version__+14(SB), CX									
  control_controller.go:1256	0xe7a1b9		4889c7				MOVQ AX, DI												
  control_controller.go:1256	0xe7a1bc		4889de				MOVQ BX, SI												
  control_controller.go:1256	0xe7a1bf		31c0				XORL AX, AX												
  control_controller.go:1256	0xe7a1c1		488d1d76623000			LEAQ go:string.*+98102(SB), BX										
  control_controller.go:1256	0xe7a1c8		e833b25dff			CALL runtime.concatstring2(SB)										
  control_controller.go:1256	0xe7a1cd		e84eff5eff			CALL runtime.convTstring(SB)										
  control_controller.go:1256	0xe7a1d2		48898424e8000000		MOVQ AX, 0xe8(SP)											
  control_controller.go:1256	0xe7a1da		488b9c24f0000000		MOVQ 0xf0(SP), BX											
  control_controller.go:1256	0xe7a1e2		488d0dd8032f00			LEAQ go:string.*+8377(SB), CX										
  control_controller.go:1256	0xe7a1e9		bf05000000			MOVL $__subsystem__+2(SB), DI										
  control_controller.go:1256	0xe7a1ee		488d058ba62200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1256	0xe7a1f5		e8263e5fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1256	0xe7a1fa		488d0d1f871c00			LEAQ runtime.types+383264(SB), CX									
  control_controller.go:1256	0xe7a201		488908				MOVQ CX, 0(AX)												
  control_controller.go:1256	0xe7a204		833d45396e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1256	0xe7a20b		750a				JNE 0xe7a217												
  control_controller.go:1256	0xe7a20d		488b8c24e8000000		MOVQ 0xe8(SP), CX											
  control_controller.go:1256	0xe7a215		eb18				JMP 0xe7a22f												
  control_controller.go:1256	0xe7a217		e824e25fff			CALL runtime.gcWriteBarrier2(SB)									
  control_controller.go:1256	0xe7a21c		488b8c24e8000000		MOVQ 0xe8(SP), CX											
  control_controller.go:1256	0xe7a224		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1256	0xe7a227		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1256	0xe7a22b		49895308			MOVQ DX, 0x8(R11)											
  control_controller.go:1256	0xe7a22f		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7a233		488d0d46a62200			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7a23a		48898c24d8000000		MOVQ CX, 0xd8(SP)											
  context.go:1005		0xe7a242		488b8c24f0000000		MOVQ 0xf0(SP), CX											
  context.go:1005		0xe7a24a		48898c24e0000000		MOVQ CX, 0xe0(SP)											
  context.go:1005		0xe7a252		488d05871c2500			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7a259		488d9c24d8000000		LEAQ 0xd8(SP), BX											
  context.go:1005		0xe7a261		e83a4e59ff			CALL runtime.convT(SB)											
  context.go:1005		0xe7a266		bb90010000			MOVL $.file+323(SB), BX											
  context.go:1005		0xe7a26b		488d0dbe4fff01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7a272		4889c7				MOVQ AX, DI												
  context.go:1005		0xe7a275		488b842410010000		MOVQ 0x110(SP), AX											
  context.go:1005		0xe7a27d		0f1f00				NOPL 0(AX)												
  context.go:1005		0xe7a280		e8db54f8ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1257	0xe7a285		4881c400010000			ADDQ $.file+179(SB), SP											
  control_controller.go:1257	0xe7a28c		5d				POPQ BP													
  control_controller.go:1257	0xe7a28d		c3				RET													
  control_controller.go:1260	0xe7a28e		48c744244000000000		MOVQ $0x0, 0x40(SP)											
  control_controller.go:1261	0xe7a297		488d15c2070000			LEAQ CAS-Backend/biz/controller.StopMap.func1(SB), DX							
  control_controller.go:1261	0xe7a29e		48899424c8000000		MOVQ DX, 0xc8(SP)											
  control_controller.go:1261	0xe7a2a6		488d542440			LEAQ 0x40(SP), DX											
  control_controller.go:1261	0xe7a2ab		48899424d0000000		MOVQ DX, 0xd0(SP)											
  control_controller.go:1261	0xe7a2b3		488b9424f8000000		MOVQ 0xf8(SP), DX											
  control_controller.go:1261	0xe7a2bb		488b4210			MOVQ 0x10(DX), AX											
  control_controller.go:1261	0xe7a2bf		488b5a18			MOVQ 0x18(DX), BX											
  control_controller.go:1261	0xe7a2c3		b90a4b0000			MOVL $__size_of_stack_commit__+15114(SB), CX								
  control_controller.go:1261	0xe7a2c8		488dbc24c8000000		LEAQ 0xc8(SP), DI											
  control_controller.go:1261	0xe7a2d0		e82b93f9ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  control_controller.go:1266	0xe7a2d5		4885c0				TESTQ AX, AX												
  control_controller.go:1266	0xe7a2d8		0f8423020000			JE 0xe7a501												
  control_controller.go:1261	0xe7a2de		4889442430			MOVQ AX, 0x30(SP)											
  control_controller.go:1267	0xe7a2e3		440f117c2478			MOVUPS X15, 0x78(SP)											
  control_controller.go:1267	0xe7a2e9		7406				JE 0xe7a2f1												
  control_controller.go:1267	0xe7a2eb		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1267	0xe7a2ef		eb03				JMP 0xe7a2f4												
  control_controller.go:1267	0xe7a2f1		4889c2				MOVQ AX, DX												
  control_controller.go:1261	0xe7a2f4		48895c2448			MOVQ BX, 0x48(SP)											
  control_controller.go:1267	0xe7a2f9		4889542478			MOVQ DX, 0x78(SP)											
  control_controller.go:1267	0xe7a2fe		48899c2480000000		MOVQ BX, 0x80(SP)											
  log.go:397			0xe7a306		440f11bc2498000000		MOVUPS X15, 0x98(SP)											
  log.go:397			0xe7a30f		440f11bc24a8000000		MOVUPS X15, 0xa8(SP)											
  log.go:397			0xe7a318		440f11bc24b8000000		MOVUPS X15, 0xb8(SP)											
  log.go:397			0xe7a321		488d15d8060000			LEAQ CAS-Backend/biz/controller.StopMap.Printf.func2(SB), DX						
  log.go:397			0xe7a328		4889942498000000		MOVQ DX, 0x98(SP)											
  log.go:397			0xe7a330		48c78424a800000022000000	MOVQ $__major_os_version__+28(SB), 0xa8(SP)								
  log.go:397			0xe7a33c		488d15405b3100			LEAQ go:string.*+162171(SB), DX										
  log.go:397			0xe7a343		48899424a0000000		MOVQ DX, 0xa0(SP)											
  log.go:397			0xe7a34b		48c78424b800000001000000	MOVQ $__minor_os_version__(SB), 0xb8(SP)								
  log.go:397			0xe7a357		48c78424c000000001000000	MOVQ $__minor_os_version__(SB), 0xc0(SP)								
  log.go:397			0xe7a363		488d542478			LEAQ 0x78(SP), DX											
  log.go:397			0xe7a368		48899424b0000000		MOVQ DX, 0xb0(SP)											
  log.go:397			0xe7a370		488b05f97c6902			MOVQ log.std(SB), AX											
  log.go:397			0xe7a377		b902000000			MOVL $__minor_os_version__+1(SB), CX									
  log.go:397			0xe7a37c		488dbc2498000000		LEAQ 0x98(SP), DI											
  log.go:397			0xe7a384		31db				XORL BX, BX												
  log.go:397			0xe7a386		e8751c90ff			CALL log.(*Logger).output(SB)										
  control_controller.go:1268	0xe7a38b		e8500c5fff			CALL runtime.makemap_small(SB)										
  control_controller.go:1268	0xe7a390		48898424f0000000		MOVQ AX, 0xf0(SP)											
  control_controller.go:1268	0xe7a398		4889c3				MOVQ AX, BX												
  control_controller.go:1268	0xe7a39b		488d0deaf22e00			LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1268	0xe7a3a2		bf04000000			MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1268	0xe7a3a7		488d05d2a42200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1268	0xe7a3ae		e86d3c5fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1268	0xe7a3b3		488d15a6871c00			LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1268	0xe7a3ba		488910				MOVQ DX, 0(AX)												
  control_controller.go:1268	0xe7a3bd		833d8c376e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1268	0xe7a3c4		750a				JNE 0xe7a3d0												
  control_controller.go:1266	0xe7a3c6		488b542430			MOVQ 0x30(SP), DX											
  control_controller.go:1266	0xe7a3cb		4885d2				TESTQ DX, DX												
  control_controller.go:1268	0xe7a3ce		eb14				JMP 0xe7a3e4												
  control_controller.go:1268	0xe7a3d0		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1268	0xe7a3d4		e847e05fff			CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1268	0xe7a3d9		498913				MOVQ DX, 0(R11)												
  control_controller.go:1266	0xe7a3dc		488b542430			MOVQ 0x30(SP), DX											
  control_controller.go:1266	0xe7a3e1		4885d2				TESTQ DX, DX												
  control_controller.go:1268	0xe7a3e4		4c8d05d5a6fe01			LEAQ runtime.gcbits.*(SB), R8										
  control_controller.go:1268	0xe7a3eb		4c894008			MOVQ R8, 0x8(AX)											
  control_controller.go:1270	0xe7a3ef		440f11bc2488000000		MOVUPS X15, 0x88(SP)											
  control_controller.go:1270	0xe7a3f8		7408				JE 0xe7a402												
  control_controller.go:1270	0xe7a3fa		488b4208			MOVQ 0x8(DX), AX											
  control_controller.go:1270	0xe7a3fe		6690				NOPW													
  control_controller.go:1270	0xe7a400		eb03				JMP 0xe7a405												
  control_controller.go:1270	0xe7a402		4889d0				MOVQ DX, AX												
  control_controller.go:1270	0xe7a405		4889842488000000		MOVQ AX, 0x88(SP)											
  control_controller.go:1270	0xe7a40d		488b542448			MOVQ 0x48(SP), DX											
  control_controller.go:1270	0xe7a412		4889942490000000		MOVQ DX, 0x90(SP)											
  control_controller.go:1270	0xe7a41a		488d051f833000			LEAQ go:string.*+107064(SB), AX										
  control_controller.go:1270	0xe7a421		bb16000000			MOVL $__major_os_version__+16(SB), BX									
  control_controller.go:1270	0xe7a426		488d8c2488000000		LEAQ 0x88(SP), CX											
  control_controller.go:1270	0xe7a42e		bf01000000			MOVL $__minor_os_version__(SB), DI									
  control_controller.go:1270	0xe7a433		4889fe				MOVQ DI, SI												
  control_controller.go:1270	0xe7a436		e8054f6aff			CALL fmt.Sprintf(SB)											
  control_controller.go:1270	0xe7a43b		0f1f440000			NOPL 0(AX)(AX*1)											
  control_controller.go:1270	0xe7a440		e8dbfc5eff			CALL runtime.convTstring(SB)										
  control_controller.go:1270	0xe7a445		48898424e8000000		MOVQ AX, 0xe8(SP)											
  control_controller.go:1268	0xe7a44d		488b9c24f0000000		MOVQ 0xf0(SP), BX											
  control_controller.go:1268	0xe7a455		488d0df8e52e00			LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1268	0xe7a45c		bf03000000			MOVL $__subsystem__(SB), DI										
  control_controller.go:1268	0xe7a461		488d0518a42200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1268	0xe7a468		e8b33b5fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1268	0xe7a46d		488d15ac841c00			LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1268	0xe7a474		488910				MOVQ DX, 0(AX)												
  control_controller.go:1268	0xe7a477		833dd2366e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1268	0xe7a47e		6690				NOPW													
  control_controller.go:1268	0xe7a480		750a				JNE 0xe7a48c												
  control_controller.go:1268	0xe7a482		488b8c24e8000000		MOVQ 0xe8(SP), CX											
  control_controller.go:1268	0xe7a48a		eb18				JMP 0xe7a4a4												
  control_controller.go:1268	0xe7a48c		e8afdf5fff			CALL runtime.gcWriteBarrier2(SB)									
  control_controller.go:1268	0xe7a491		488b8c24e8000000		MOVQ 0xe8(SP), CX											
  control_controller.go:1268	0xe7a499		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1268	0xe7a49c		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1268	0xe7a4a0		49895308			MOVQ DX, 0x8(R11)											
  control_controller.go:1268	0xe7a4a4		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7a4a8		488d0dd1a32200			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7a4af		48898c24d8000000		MOVQ CX, 0xd8(SP)											
  context.go:1005		0xe7a4b7		488b8c24f0000000		MOVQ 0xf0(SP), CX											
  context.go:1005		0xe7a4bf		48898c24e0000000		MOVQ CX, 0xe0(SP)											
  context.go:1005		0xe7a4c7		488d05121a2500			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7a4ce		488d9c24d8000000		LEAQ 0xd8(SP), BX											
  context.go:1005		0xe7a4d6		e8c54b59ff			CALL runtime.convT(SB)											
  context.go:1005		0xe7a4db		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe7a4e0		488d0d494dff01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7a4e7		4889c7				MOVQ AX, DI												
  context.go:1005		0xe7a4ea		488b842410010000		MOVQ 0x110(SP), AX											
  context.go:1005		0xe7a4f2		e86952f8ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1272	0xe7a4f7		4881c400010000			ADDQ $.file+179(SB), SP											
  control_controller.go:1272	0xe7a4fe		5d				POPQ BP													
  control_controller.go:1272	0xe7a4ff		90				NOPL													
  control_controller.go:1272	0xe7a500		c3				RET													
  control_controller.go:1275	0xe7a501		488b4c2440			MOVQ 0x40(SP), CX											
  control_controller.go:1275	0xe7a506		48833900			CMPQ 0(CX), $0x0											
  control_controller.go:1275	0xe7a50a		0f8413020000			JE 0xe7a723												
  control_controller.go:1276	0xe7a510		440f117c2468			MOVUPS X15, 0x68(SP)											
  control_controller.go:1276	0xe7a516		488b4c2440			MOVQ 0x40(SP), CX											
  control_controller.go:1276	0xe7a51b		488b01				MOVQ 0(CX), AX												
  control_controller.go:1276	0xe7a51e		6690				NOPW													
  control_controller.go:1276	0xe7a520		e87bfb5eff			CALL runtime.convT64(SB)										
  control_controller.go:1276	0xe7a525		488d0d34861c00			LEAQ runtime.types+383840(SB), CX									
  control_controller.go:1276	0xe7a52c		48894c2468			MOVQ CX, 0x68(SP)											
  control_controller.go:1276	0xe7a531		4889442470			MOVQ AX, 0x70(SP)											
  log.go:397			0xe7a536		440f11bc2498000000		MOVUPS X15, 0x98(SP)											
  log.go:397			0xe7a53f		440f11bc24a8000000		MOVUPS X15, 0xa8(SP)											
  log.go:397			0xe7a548		440f11bc24b8000000		MOVUPS X15, 0xb8(SP)											
  log.go:397			0xe7a551		488d1548040000			LEAQ CAS-Backend/biz/controller.StopMap.Printf.func3(SB), DX						
  log.go:397			0xe7a558		4889942498000000		MOVQ DX, 0x98(SP)											
  log.go:397			0xe7a560		48c78424a800000028000000	MOVQ $__major_os_version__+34(SB), 0xa8(SP)								
  log.go:397			0xe7a56c		488d151bb93100			LEAQ go:string.*+186758(SB), DX										
  log.go:397			0xe7a573		48899424a0000000		MOVQ DX, 0xa0(SP)											
  log.go:397			0xe7a57b		48c78424b800000001000000	MOVQ $__minor_os_version__(SB), 0xb8(SP)								
  log.go:397			0xe7a587		48c78424c000000001000000	MOVQ $__minor_os_version__(SB), 0xc0(SP)								
  log.go:397			0xe7a593		488d542468			LEAQ 0x68(SP), DX											
  log.go:397			0xe7a598		48899424b0000000		MOVQ DX, 0xb0(SP)											
  log.go:397			0xe7a5a0		488b05c97a6902			MOVQ log.std(SB), AX											
  log.go:397			0xe7a5a7		31db				XORL BX, BX												
  log.go:397			0xe7a5a9		488dbc2498000000		LEAQ 0x98(SP), DI											
  log.go:397			0xe7a5b1		b902000000			MOVL $__minor_os_version__+1(SB), CX									
  log.go:397			0xe7a5b6		e8451a90ff			CALL log.(*Logger).output(SB)										
  log.go:397			0xe7a5bb		0f1f440000			NOPL 0(AX)(AX*1)											
  control_controller.go:1277	0xe7a5c0		e81b0a5fff			CALL runtime.makemap_small(SB)										
  control_controller.go:1277	0xe7a5c5		48898424f0000000		MOVQ AX, 0xf0(SP)											
  control_controller.go:1277	0xe7a5cd		4889c3				MOVQ AX, BX												
  control_controller.go:1277	0xe7a5d0		488d0db5f02e00			LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1277	0xe7a5d7		bf04000000			MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1277	0xe7a5dc		488d059da22200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1277	0xe7a5e3		e8383a5fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1277	0xe7a5e8		488d0d71851c00			LEAQ runtime.types+383840(SB), CX									
  control_controller.go:1277	0xe7a5ef		488908				MOVQ CX, 0(AX)												
  control_controller.go:1277	0xe7a5f2		833d57356e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1277	0xe7a5f9		740d				JE 0xe7a608												
  control_controller.go:1277	0xe7a5fb		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1277	0xe7a5ff		90				NOPL													
  control_controller.go:1277	0xe7a600		e81bde5fff			CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1277	0xe7a605		498913				MOVQ DX, 0(R11)												
  control_controller.go:1277	0xe7a608		488d0db1a4fe01			LEAQ runtime.gcbits.*(SB), CX										
  control_controller.go:1277	0xe7a60f		48894808			MOVQ CX, 0x8(AX)											
  control_controller.go:1279	0xe7a613		440f11bc2488000000		MOVUPS X15, 0x88(SP)											
  control_controller.go:1279	0xe7a61c		488b4c2440			MOVQ 0x40(SP), CX											
  control_controller.go:1279	0xe7a621		488b01				MOVQ 0(CX), AX												
  control_controller.go:1279	0xe7a624		e877fa5eff			CALL runtime.convT64(SB)										
  control_controller.go:1279	0xe7a629		488d0d30851c00			LEAQ runtime.types+383840(SB), CX									
  control_controller.go:1279	0xe7a630		48898c2488000000		MOVQ CX, 0x88(SP)											
  control_controller.go:1279	0xe7a638		4889842490000000		MOVQ AX, 0x90(SP)											
  control_controller.go:1279	0xe7a640		488d055e583100			LEAQ go:string.*+162205(SB), AX										
  control_controller.go:1279	0xe7a647		bb22000000			MOVL $__major_os_version__+28(SB), BX									
  control_controller.go:1279	0xe7a64c		488d8c2488000000		LEAQ 0x88(SP), CX											
  control_controller.go:1279	0xe7a654		bf01000000			MOVL $__minor_os_version__(SB), DI									
  control_controller.go:1279	0xe7a659		4889fe				MOVQ DI, SI												
  control_controller.go:1279	0xe7a65c		0f1f4000			NOPL 0(AX)												
  control_controller.go:1279	0xe7a660		e8db4c6aff			CALL fmt.Sprintf(SB)											
  control_controller.go:1279	0xe7a665		e8b6fa5eff			CALL runtime.convTstring(SB)										
  control_controller.go:1279	0xe7a66a		48898424e8000000		MOVQ AX, 0xe8(SP)											
  control_controller.go:1277	0xe7a672		488b9c24f0000000		MOVQ 0xf0(SP), BX											
  control_controller.go:1277	0xe7a67a		488d0dd3e32e00			LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1277	0xe7a681		bf03000000			MOVL $__subsystem__(SB), DI										
  control_controller.go:1277	0xe7a686		488d05f3a12200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1277	0xe7a68d		e88e395fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1277	0xe7a692		488d0d87821c00			LEAQ runtime.types+383264(SB), CX									
  control_controller.go:1277	0xe7a699		488908				MOVQ CX, 0(AX)												
  control_controller.go:1277	0xe7a69c		833dad346e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1277	0xe7a6a3		750a				JNE 0xe7a6af												
  control_controller.go:1277	0xe7a6a5		488b8c24e8000000		MOVQ 0xe8(SP), CX											
  control_controller.go:1277	0xe7a6ad		eb18				JMP 0xe7a6c7												
  control_controller.go:1277	0xe7a6af		e88cdd5fff			CALL runtime.gcWriteBarrier2(SB)									
  control_controller.go:1277	0xe7a6b4		488b8c24e8000000		MOVQ 0xe8(SP), CX											
  control_controller.go:1277	0xe7a6bc		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1277	0xe7a6bf		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1277	0xe7a6c3		49895308			MOVQ DX, 0x8(R11)											
  control_controller.go:1277	0xe7a6c7		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7a6cb		488d0daea12200			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7a6d2		48898c24d8000000		MOVQ CX, 0xd8(SP)											
  context.go:1005		0xe7a6da		488b8c24f0000000		MOVQ 0xf0(SP), CX											
  context.go:1005		0xe7a6e2		48898c24e0000000		MOVQ CX, 0xe0(SP)											
  context.go:1005		0xe7a6ea		488d05ef172500			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7a6f1		488d9c24d8000000		LEAQ 0xd8(SP), BX											
  context.go:1005		0xe7a6f9		e8a24959ff			CALL runtime.convT(SB)											
  context.go:1005		0xe7a6fe		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe7a703		488d0d264bff01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7a70a		4889c7				MOVQ AX, DI												
  context.go:1005		0xe7a70d		488b842410010000		MOVQ 0x110(SP), AX											
  context.go:1005		0xe7a715		e84650f8ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1281	0xe7a71a		4881c400010000			ADDQ $.file+179(SB), SP											
  control_controller.go:1281	0xe7a721		5d				POPQ BP													
  control_controller.go:1281	0xe7a722		c3				RET													
  control_controller.go:1284	0xe7a723		440f117c2458			MOVUPS X15, 0x58(SP)											
  control_controller.go:1284	0xe7a729		488b8c24f8000000		MOVQ 0xf8(SP), CX											
  control_controller.go:1284	0xe7a731		488b4110			MOVQ 0x10(CX), AX											
  control_controller.go:1284	0xe7a735		488b5918			MOVQ 0x18(CX), BX											
  control_controller.go:1284	0xe7a739		e8e2f95eff			CALL runtime.convTstring(SB)										
  control_controller.go:1284	0xe7a73e		488d0ddb811c00			LEAQ runtime.types+383264(SB), CX									
  control_controller.go:1284	0xe7a745		48894c2458			MOVQ CX, 0x58(SP)											
  control_controller.go:1284	0xe7a74a		4889442460			MOVQ AX, 0x60(SP)											
  log.go:397			0xe7a74f		440f11bc2498000000		MOVUPS X15, 0x98(SP)											
  log.go:397			0xe7a758		440f11bc24a8000000		MOVUPS X15, 0xa8(SP)											
  log.go:397			0xe7a761		440f11bc24b8000000		MOVUPS X15, 0xb8(SP)											
  log.go:397			0xe7a76a		488d15cf010000			LEAQ CAS-Backend/biz/controller.StopMap.Printf.func4(SB), DX						
  log.go:397			0xe7a771		4889942498000000		MOVQ DX, 0x98(SP)											
  log.go:397			0xe7a779		48c78424a80000001c000000	MOVQ $__major_os_version__+22(SB), 0xa8(SP)								
  log.go:397			0xe7a785		488d1534eb3000			LEAQ go:string.*+134584(SB), DX										
  log.go:397			0xe7a78c		48899424a0000000		MOVQ DX, 0xa0(SP)											
  log.go:397			0xe7a794		48c78424b800000001000000	MOVQ $__minor_os_version__(SB), 0xb8(SP)								
  log.go:397			0xe7a7a0		48c78424c000000001000000	MOVQ $__minor_os_version__(SB), 0xc0(SP)								
  log.go:397			0xe7a7ac		488d542458			LEAQ 0x58(SP), DX											
  log.go:397			0xe7a7b1		48899424b0000000		MOVQ DX, 0xb0(SP)											
  log.go:397			0xe7a7b9		488b05b0786902			MOVQ log.std(SB), AX											
  log.go:397			0xe7a7c0		31db				XORL BX, BX												
  log.go:397			0xe7a7c2		488dbc2498000000		LEAQ 0x98(SP), DI											
  log.go:397			0xe7a7ca		b902000000			MOVL $__minor_os_version__+1(SB), CX									
  log.go:397			0xe7a7cf		e82c1890ff			CALL log.(*Logger).output(SB)										
  control_controller.go:1285	0xe7a7d4		e807085fff			CALL runtime.makemap_small(SB)										
  control_controller.go:1285	0xe7a7d9		48898424f0000000		MOVQ AX, 0xf0(SP)											
  control_controller.go:1285	0xe7a7e1		4889c3				MOVQ AX, BX												
  control_controller.go:1285	0xe7a7e4		488d0da1ee2e00			LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1285	0xe7a7eb		bf04000000			MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1285	0xe7a7f0		488d0589a02200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1285	0xe7a7f7		e824385fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1285	0xe7a7fc		488d0d5d831c00			LEAQ runtime.types+383840(SB), CX									
  control_controller.go:1285	0xe7a803		488908				MOVQ CX, 0(AX)												
  control_controller.go:1285	0xe7a806		833d43336e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1285	0xe7a80d		740c				JE 0xe7a81b												
  control_controller.go:1285	0xe7a80f		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1285	0xe7a813		e808dc5fff			CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1285	0xe7a818		498913				MOVQ DX, 0(R11)												
  control_controller.go:1285	0xe7a81b		488d150ed0fe01			LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:1285	0xe7a822		48895008			MOVQ DX, 0x8(AX)											
  control_controller.go:1285	0xe7a826		488d0553a02200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1285	0xe7a82d		488b9c24f0000000		MOVQ 0xf0(SP), BX											
  control_controller.go:1285	0xe7a835		488d0d18e22e00			LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1285	0xe7a83c		bf03000000			MOVL $__subsystem__(SB), DI										
  control_controller.go:1285	0xe7a841		e8da375fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1285	0xe7a846		488d15d3801c00			LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1285	0xe7a84d		488910				MOVQ DX, 0(AX)												
  control_controller.go:1285	0xe7a850		833df9326e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1285	0xe7a857		740f				JE 0xe7a868												
  control_controller.go:1285	0xe7a859		488b4808			MOVQ 0x8(AX), CX											
  control_controller.go:1285	0xe7a85d		0f1f00				NOPL 0(AX)												
  control_controller.go:1285	0xe7a860		e8bbdb5fff			CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1285	0xe7a865		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1285	0xe7a868		488d0d41e0fe01			LEAQ CAS-Backend/biz/controller..stmp_40(SB), CX							
  control_controller.go:1285	0xe7a86f		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7a873		488d0d06a02200			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7a87a		48898c24d8000000		MOVQ CX, 0xd8(SP)											
  context.go:1005		0xe7a882		488b8c24f0000000		MOVQ 0xf0(SP), CX											
  context.go:1005		0xe7a88a		48898c24e0000000		MOVQ CX, 0xe0(SP)											
  context.go:1005		0xe7a892		488d0547162500			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7a899		488d9c24d8000000		LEAQ 0xd8(SP), BX											
  context.go:1005		0xe7a8a1		e8fa4759ff			CALL runtime.convT(SB)											
  context.go:1005		0xe7a8a6		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe7a8ab		488d0d7e49ff01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7a8b2		4889c7				MOVQ AX, DI												
  context.go:1005		0xe7a8b5		488b842410010000		MOVQ 0x110(SP), AX											
  context.go:1005		0xe7a8bd		0f1f00				NOPL 0(AX)												
  context.go:1005		0xe7a8c0		e89b4ef8ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1327	0xe7a8c5		4881c400010000			ADDQ $.file+179(SB), SP											
  control_controller.go:1327	0xe7a8cc		5d				POPQ BP													
  control_controller.go:1327	0xe7a8cd		c3				RET													
  context.go:712		0xe7a8ce		4d89ca				MOVQ R9, R10												
  context.go:712		0xe7a8d1		4d21c1				ANDQ R8, R9												
  context.go:712		0xe7a8d4		49c1e104			SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe7a8d8		4d8b5c3108			MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe7a8dd		0f1f00				NOPL 0(AX)												
  context.go:712		0xe7a8e0		4939db				CMPQ R11, BX												
  context.go:712		0xe7a8e3		742f				JE 0xe7a914												
  context.go:712		0xe7a8e5		4d8d4a01			LEAQ 0x1(R10), R9											
  context.go:712		0xe7a8e9		4d85db				TESTQ R11, R11												
  context.go:712		0xe7a8ec		75e0				JNE 0xe7a8ce												
  context.go:712		0xe7a8ee		4889542450			MOVQ DX, 0x50(SP)											
  context.go:712		0xe7a8f3		488d05f6071400			LEAQ CAS-Backend/biz/controller..typeAssert.10(SB), AX							
  context.go:712		0xe7a8fa		e8e14959ff			CALL runtime.typeAssert(SB)										
  context.go:752		0xe7a8ff		488b542450			MOVQ 0x50(SP), DX											
  context.go:712		0xe7a904		4889c1				MOVQ AX, CX												
  context.go:752		0xe7a907		488b8424f8000000		MOVQ 0xf8(SP), AX											
  context.go:712		0xe7a90f		e951f8ffff			JMP 0xe7a165												
  context.go:712		0xe7a914		498b4c3110			MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe7a919		e947f8ffff			JMP 0xe7a165												
  control_controller.go:1253	0xe7a91e		4889442408			MOVQ AX, 0x8(SP)											
  control_controller.go:1253	0xe7a923		e8b8bb5fff			CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:1253	0xe7a928		488b442408			MOVQ 0x8(SP), AX											
  control_controller.go:1253	0xe7a92d		e9cef7ffff			JMP CAS-Backend/biz/controller.StopMap(SB)								
  :-1				0xe7a932		cc				INT $__subsystem__(SB)											
  :-1				0xe7a933		cc				INT $__subsystem__(SB)											
  :-1				0xe7a934		cc				INT $__subsystem__(SB)											
  :-1				0xe7a935		cc				INT $__subsystem__(SB)											
  :-1				0xe7a936		cc				INT $__subsystem__(SB)											
  :-1				0xe7a937		cc				INT $__subsystem__(SB)											
  :-1				0xe7a938		cc				INT $__subsystem__(SB)											
  :-1				0xe7a939		cc				INT $__subsystem__(SB)											
  :-1				0xe7a93a		cc				INT $__subsystem__(SB)											
  :-1				0xe7a93b		cc				INT $__subsystem__(SB)											
  :-1				0xe7a93c		cc				INT $__subsystem__(SB)											
  :-1				0xe7a93d		cc				INT $__subsystem__(SB)											
  :-1				0xe7a93e		cc				INT $__subsystem__(SB)											
  :-1				0xe7a93f		cc				INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.StopMap.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1261	0xe7aa60		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:1261	0xe7aa64		7653			JBE 0xe7aab9						
  control_controller.go:1261	0xe7aa66		55			PUSHQ BP						
  control_controller.go:1261	0xe7aa67		4889e5			MOVQ SP, BP						
  control_controller.go:1261	0xe7aa6a		4883ec18		SUBQ $__major_os_version__+18(SB), SP			
  control_controller.go:1261	0xe7aa6e		4889442428		MOVQ AX, 0x28(SP)					
  control_controller.go:1261	0xe7aa73		48895c2430		MOVQ BX, 0x30(SP)					
  control_controller.go:1261	0xe7aa78		488b4a08		MOVQ 0x8(DX), CX					
  control_controller.go:1261	0xe7aa7c		48894c2410		MOVQ CX, 0x10(SP)					
  control_controller.go:1263	0xe7aa81		e89a0ffaff		CALL CAS-Backend/pkg/agvcontrol.SendStopSlamRequest(SB)	
  control_controller.go:1263	0xe7aa86		833dc3306e0200		CMPL runtime.writeBarrier(SB), $0x0			
  control_controller.go:1263	0xe7aa8d		7507			JNE 0xe7aa96						
  control_controller.go:1263	0xe7aa8f		488b542410		MOVQ 0x10(SP), DX					
  control_controller.go:1263	0xe7aa94		eb14			JMP 0xe7aaaa						
  control_controller.go:1263	0xe7aa96		e8a5d95fff		CALL runtime.gcWriteBarrier2(SB)			
  control_controller.go:1263	0xe7aa9b		498903			MOVQ AX, 0(R11)						
  control_controller.go:1263	0xe7aa9e		488b542410		MOVQ 0x10(SP), DX					
  control_controller.go:1263	0xe7aaa3		488b32			MOVQ 0(DX), SI						
  control_controller.go:1263	0xe7aaa6		49897308		MOVQ SI, 0x8(R11)					
  control_controller.go:1263	0xe7aaaa		488902			MOVQ AX, 0(DX)						
  control_controller.go:1264	0xe7aaad		4889d8			MOVQ BX, AX						
  control_controller.go:1264	0xe7aab0		4889cb			MOVQ CX, BX						
  control_controller.go:1264	0xe7aab3		4883c418		ADDQ $__major_os_version__+18(SB), SP			
  control_controller.go:1264	0xe7aab7		5d			POPQ BP							
  control_controller.go:1264	0xe7aab8		c3			RET							
  control_controller.go:1261	0xe7aab9		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:1261	0xe7aabe		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:1261	0xe7aac3		e898b95fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:1261	0xe7aac8		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:1261	0xe7aacd		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:1261	0xe7aad2		eb8c			JMP CAS-Backend/biz/controller.StopMap.func1(SB)	
  :-1				0xe7aad4		cc			INT $__subsystem__(SB)					
  :-1				0xe7aad5		cc			INT $__subsystem__(SB)					
  :-1				0xe7aad6		cc			INT $__subsystem__(SB)					
  :-1				0xe7aad7		cc			INT $__subsystem__(SB)					
  :-1				0xe7aad8		cc			INT $__subsystem__(SB)					
  :-1				0xe7aad9		cc			INT $__subsystem__(SB)					
  :-1				0xe7aada		cc			INT $__subsystem__(SB)					
  :-1				0xe7aadb		cc			INT $__subsystem__(SB)					
  :-1				0xe7aadc		cc			INT $__subsystem__(SB)					
  :-1				0xe7aadd		cc			INT $__subsystem__(SB)					
  :-1				0xe7aade		cc			INT $__subsystem__(SB)					
  :-1				0xe7aadf		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.StartMap(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1330	0xe7aae0		4c8da42410ffffff		LEAQ 0xffffff10(SP), R12										
  control_controller.go:1330	0xe7aae8		4d3b6610			CMPQ R12, 0x10(R14)											
  control_controller.go:1330	0xe7aaec		0f866c090000			JBE 0xe7b45e												
  control_controller.go:1330	0xe7aaf2		55				PUSHQ BP												
  control_controller.go:1330	0xe7aaf3		4889e5				MOVQ SP, BP												
  control_controller.go:1330	0xe7aaf6		4881ec68010000			SUBQ $.file+283(SB), SP											
  context.go:712		0xe7aafd		4889842478010000		MOVQ AX, 0x178(SP)											
  control_controller.go:1331	0xe7ab05		488d05143a2a00			LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1331	0xe7ab0c		e88f6c59ff			CALL runtime.newobject(SB)										
  control_controller.go:1331	0xe7ab11		4889842460010000		MOVQ AX, 0x160(SP)											
  context.go:712		0xe7ab19		488b0dc0cc1300			MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe7ab20		488b15c1cc1300			MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe7ab27		4885c9				TESTQ CX, CX												
  context.go:712		0xe7ab2a		7419				JE 0xe7ab45												
  context.go:712		0xe7ab2c		488b5908			MOVQ 0x8(CX), BX											
  context.go:712		0xe7ab30		488b35d9051400			MOVQ CAS-Backend/biz/controller..typeAssert.11(SB), SI							
  context.go:712		0xe7ab37		4c8b06				MOVQ 0(SI), R8												
  context.go:712		0xe7ab3a		448b4910			MOVL 0x10(CX), R9											
  context.go:712		0xe7ab3e		6690				NOPW													
  context.go:712		0xe7ab40		e9c9080000			JMP 0xe7b40e												
  context.go:752		0xe7ab45		488b7118			MOVQ 0x18(CX), SI											
  context.go:752		0xe7ab49		4c8b842478010000		MOVQ 0x178(SP), R8											
  context.go:752		0xe7ab51		498b5820			MOVQ 0x20(R8), BX											
  context.go:752		0xe7ab55		488d0d04ba1a00			LEAQ runtime.types+267616(SB), CX									
  context.go:752		0xe7ab5c		4889c7				MOVQ AX, DI												
  context.go:752		0xe7ab5f		4889d0				MOVQ DX, AX												
  context.go:752		0xe7ab62		ffd6				CALL SI													
  control_controller.go:1332	0xe7ab64		4885c0				TESTQ AX, AX												
  control_controller.go:1332	0xe7ab67		0f8401010000			JE 0xe7ac6e												
  context.go:752		0xe7ab6d		48895c2438			MOVQ BX, 0x38(SP)											
  context.go:752		0xe7ab72		4889442428			MOVQ AX, 0x28(SP)											
  control_controller.go:1333	0xe7ab77		e864045fff			CALL runtime.makemap_small(SB)										
  control_controller.go:1333	0xe7ab7c		4889842428010000		MOVQ AX, 0x128(SP)											
  control_controller.go:1333	0xe7ab84		488b4c2428			MOVQ 0x28(SP), CX											
  control_controller.go:1333	0xe7ab89		488b4918			MOVQ 0x18(CX), CX											
  control_controller.go:1333	0xe7ab8d		488b442438			MOVQ 0x38(SP), AX											
  control_controller.go:1333	0xe7ab92		ffd1				CALL CX													
  control_controller.go:1333	0xe7ab94		b914000000			MOVL $__major_os_version__+14(SB), CX									
  control_controller.go:1333	0xe7ab99		4889c7				MOVQ AX, DI												
  control_controller.go:1333	0xe7ab9c		4889de				MOVQ BX, SI												
  control_controller.go:1333	0xe7ab9f		31c0				XORL AX, AX												
  control_controller.go:1333	0xe7aba1		488d1d96583000			LEAQ go:string.*+98102(SB), BX										
  control_controller.go:1333	0xe7aba8		e853a85dff			CALL runtime.concatstring2(SB)										
  control_controller.go:1333	0xe7abad		e86ef55eff			CALL runtime.convTstring(SB)										
  control_controller.go:1333	0xe7abb2		4889842420010000		MOVQ AX, 0x120(SP)											
  control_controller.go:1333	0xe7abba		488b9c2428010000		MOVQ 0x128(SP), BX											
  control_controller.go:1333	0xe7abc2		488d0df8f92e00			LEAQ go:string.*+8377(SB), CX										
  control_controller.go:1333	0xe7abc9		bf05000000			MOVL $__subsystem__+2(SB), DI										
  control_controller.go:1333	0xe7abce		488d05ab9c2200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1333	0xe7abd5		e846345fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1333	0xe7abda		488d0d3f7d1c00			LEAQ runtime.types+383264(SB), CX									
  control_controller.go:1333	0xe7abe1		488908				MOVQ CX, 0(AX)												
  control_controller.go:1333	0xe7abe4		833d652f6e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1333	0xe7abeb		750a				JNE 0xe7abf7												
  control_controller.go:1333	0xe7abed		488b8c2420010000		MOVQ 0x120(SP), CX											
  control_controller.go:1333	0xe7abf5		eb18				JMP 0xe7ac0f												
  control_controller.go:1333	0xe7abf7		e844d85fff			CALL runtime.gcWriteBarrier2(SB)									
  control_controller.go:1333	0xe7abfc		488b8c2420010000		MOVQ 0x120(SP), CX											
  control_controller.go:1333	0xe7ac04		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1333	0xe7ac07		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1333	0xe7ac0b		49895308			MOVQ DX, 0x8(R11)											
  control_controller.go:1333	0xe7ac0f		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7ac13		488d0d669c2200			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7ac1a		48898c2410010000		MOVQ CX, 0x110(SP)											
  context.go:1005		0xe7ac22		488b8c2428010000		MOVQ 0x128(SP), CX											
  context.go:1005		0xe7ac2a		48898c2418010000		MOVQ CX, 0x118(SP)											
  context.go:1005		0xe7ac32		488d05a7122500			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7ac39		488d9c2410010000		LEAQ 0x110(SP), BX											
  context.go:1005		0xe7ac41		e85a4459ff			CALL runtime.convT(SB)											
  context.go:1005		0xe7ac46		bb90010000			MOVL $.file+323(SB), BX											
  context.go:1005		0xe7ac4b		488d0dde45ff01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7ac52		4889c7				MOVQ AX, DI												
  context.go:1005		0xe7ac55		488b842478010000		MOVQ 0x178(SP), AX											
  context.go:1005		0xe7ac5d		0f1f00				NOPL 0(AX)												
  context.go:1005		0xe7ac60		e8fb4af8ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1334	0xe7ac65		4881c468010000			ADDQ $.file+283(SB), SP											
  control_controller.go:1334	0xe7ac6c		5d				POPQ BP													
  control_controller.go:1334	0xe7ac6d		c3				RET													
  control_controller.go:1337	0xe7ac6e		48c744244000000000		MOVQ $0x0, 0x40(SP)											
  control_controller.go:1338	0xe7ac77		488d15020a0000			LEAQ CAS-Backend/biz/controller.StartMap.func1(SB), DX							
  control_controller.go:1338	0xe7ac7e		4889942400010000		MOVQ DX, 0x100(SP)											
  control_controller.go:1338	0xe7ac86		488d542440			LEAQ 0x40(SP), DX											
  control_controller.go:1338	0xe7ac8b		4889942408010000		MOVQ DX, 0x108(SP)											
  control_controller.go:1338	0xe7ac93		488b942460010000		MOVQ 0x160(SP), DX											
  control_controller.go:1338	0xe7ac9b		488b4210			MOVQ 0x10(DX), AX											
  control_controller.go:1338	0xe7ac9f		488b5a18			MOVQ 0x18(DX), BX											
  control_controller.go:1338	0xe7aca3		b90a4b0000			MOVL $__size_of_stack_commit__+15114(SB), CX								
  control_controller.go:1338	0xe7aca8		488dbc2400010000		LEAQ 0x100(SP), DI											
  control_controller.go:1338	0xe7acb0		e84b89f9ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  control_controller.go:1343	0xe7acb5		4885c0				TESTQ AX, AX												
  control_controller.go:1343	0xe7acb8		0f8425020000			JE 0xe7aee3												
  control_controller.go:1338	0xe7acbe		4889442430			MOVQ AX, 0x30(SP)											
  control_controller.go:1344	0xe7acc3		440f11bc2480000000		MOVUPS X15, 0x80(SP)											
  control_controller.go:1344	0xe7accc		7406				JE 0xe7acd4												
  control_controller.go:1344	0xe7acce		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1344	0xe7acd2		eb03				JMP 0xe7acd7												
  control_controller.go:1344	0xe7acd4		4889c2				MOVQ AX, DX												
  control_controller.go:1338	0xe7acd7		48895c2450			MOVQ BX, 0x50(SP)											
  control_controller.go:1344	0xe7acdc		4889942480000000		MOVQ DX, 0x80(SP)											
  control_controller.go:1344	0xe7ace4		48899c2488000000		MOVQ BX, 0x88(SP)											
  log.go:397			0xe7acec		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)											
  log.go:397			0xe7acf5		440f11bc24e0000000		MOVUPS X15, 0xe0(SP)											
  log.go:397			0xe7acfe		440f11bc24f0000000		MOVUPS X15, 0xf0(SP)											
  log.go:397			0xe7ad07		488d1512090000			LEAQ CAS-Backend/biz/controller.StartMap.Printf.func3(SB), DX						
  log.go:397			0xe7ad0e		48899424d0000000		MOVQ DX, 0xd0(SP)											
  log.go:397			0xe7ad16		48c78424e000000022000000	MOVQ $__major_os_version__+28(SB), 0xe0(SP)								
  log.go:397			0xe7ad22		488d1538513100			LEAQ go:string.*+162137(SB), DX										
  log.go:397			0xe7ad29		48899424d8000000		MOVQ DX, 0xd8(SP)											
  log.go:397			0xe7ad31		48c78424f000000001000000	MOVQ $__minor_os_version__(SB), 0xf0(SP)								
  log.go:397			0xe7ad3d		48c78424f800000001000000	MOVQ $__minor_os_version__(SB), 0xf8(SP)								
  log.go:397			0xe7ad49		488d942480000000		LEAQ 0x80(SP), DX											
  log.go:397			0xe7ad51		48899424e8000000		MOVQ DX, 0xe8(SP)											
  log.go:397			0xe7ad59		488b0510736902			MOVQ log.std(SB), AX											
  log.go:397			0xe7ad60		b902000000			MOVL $__minor_os_version__+1(SB), CX									
  log.go:397			0xe7ad65		488dbc24d0000000		LEAQ 0xd0(SP), DI											
  log.go:397			0xe7ad6d		31db				XORL BX, BX												
  log.go:397			0xe7ad6f		e88c1290ff			CALL log.(*Logger).output(SB)										
  control_controller.go:1345	0xe7ad74		e867025fff			CALL runtime.makemap_small(SB)										
  control_controller.go:1345	0xe7ad79		4889842428010000		MOVQ AX, 0x128(SP)											
  control_controller.go:1345	0xe7ad81		4889c3				MOVQ AX, BX												
  control_controller.go:1345	0xe7ad84		488d0d01e92e00			LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1345	0xe7ad8b		bf04000000			MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1345	0xe7ad90		488d05e99a2200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1345	0xe7ad97		e884325fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1345	0xe7ad9c		488d15bd7d1c00			LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1345	0xe7ada3		488910				MOVQ DX, 0(AX)												
  control_controller.go:1345	0xe7ada6		833da32d6e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1345	0xe7adad		750a				JNE 0xe7adb9												
  control_controller.go:1343	0xe7adaf		488b542430			MOVQ 0x30(SP), DX											
  control_controller.go:1343	0xe7adb4		4885d2				TESTQ DX, DX												
  control_controller.go:1345	0xe7adb7		eb17				JMP 0xe7add0												
  control_controller.go:1345	0xe7adb9		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1345	0xe7adbd		0f1f00				NOPL 0(AX)												
  control_controller.go:1345	0xe7adc0		e85bd65fff			CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1345	0xe7adc5		498913				MOVQ DX, 0(R11)												
  control_controller.go:1343	0xe7adc8		488b542430			MOVQ 0x30(SP), DX											
  control_controller.go:1343	0xe7adcd		4885d2				TESTQ DX, DX												
  control_controller.go:1345	0xe7add0		4c8d05e99cfe01			LEAQ runtime.gcbits.*(SB), R8										
  control_controller.go:1345	0xe7add7		4c894008			MOVQ R8, 0x8(AX)											
  control_controller.go:1347	0xe7addb		440f11bc24c0000000		MOVUPS X15, 0xc0(SP)											
  control_controller.go:1347	0xe7ade4		7406				JE 0xe7adec												
  control_controller.go:1347	0xe7ade6		488b4208			MOVQ 0x8(DX), AX											
  control_controller.go:1347	0xe7adea		eb03				JMP 0xe7adef												
  control_controller.go:1347	0xe7adec		4889d0				MOVQ DX, AX												
  control_controller.go:1347	0xe7adef		48898424c0000000		MOVQ AX, 0xc0(SP)											
  control_controller.go:1347	0xe7adf7		488b542450			MOVQ 0x50(SP), DX											
  control_controller.go:1347	0xe7adfc		48899424c8000000		MOVQ DX, 0xc8(SP)											
  control_controller.go:1347	0xe7ae04		488d0561793000			LEAQ go:string.*+107108(SB), AX										
  control_controller.go:1347	0xe7ae0b		bb16000000			MOVL $__major_os_version__+16(SB), BX									
  control_controller.go:1347	0xe7ae10		488d8c24c0000000		LEAQ 0xc0(SP), CX											
  control_controller.go:1347	0xe7ae18		bf01000000			MOVL $__minor_os_version__(SB), DI									
  control_controller.go:1347	0xe7ae1d		4889fe				MOVQ DI, SI												
  control_controller.go:1347	0xe7ae20		e81b456aff			CALL fmt.Sprintf(SB)											
  control_controller.go:1347	0xe7ae25		e8f6f25eff			CALL runtime.convTstring(SB)										
  control_controller.go:1347	0xe7ae2a		4889842420010000		MOVQ AX, 0x120(SP)											
  control_controller.go:1345	0xe7ae32		488b9c2428010000		MOVQ 0x128(SP), BX											
  control_controller.go:1345	0xe7ae3a		488d0d13dc2e00			LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1345	0xe7ae41		bf03000000			MOVL $__subsystem__(SB), DI										
  control_controller.go:1345	0xe7ae46		488d05339a2200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1345	0xe7ae4d		e8ce315fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1345	0xe7ae52		488d15c77a1c00			LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1345	0xe7ae59		488910				MOVQ DX, 0(AX)												
  control_controller.go:1345	0xe7ae5c		833ded2c6e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1345	0xe7ae63		750a				JNE 0xe7ae6f												
  control_controller.go:1345	0xe7ae65		488b8c2420010000		MOVQ 0x120(SP), CX											
  control_controller.go:1345	0xe7ae6d		eb18				JMP 0xe7ae87												
  control_controller.go:1345	0xe7ae6f		e8ccd55fff			CALL runtime.gcWriteBarrier2(SB)									
  control_controller.go:1345	0xe7ae74		488b8c2420010000		MOVQ 0x120(SP), CX											
  control_controller.go:1345	0xe7ae7c		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1345	0xe7ae7f		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1345	0xe7ae83		49895308			MOVQ DX, 0x8(R11)											
  control_controller.go:1345	0xe7ae87		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7ae8b		488d0dee992200			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7ae92		48898c2410010000		MOVQ CX, 0x110(SP)											
  context.go:1005		0xe7ae9a		488b8c2428010000		MOVQ 0x128(SP), CX											
  context.go:1005		0xe7aea2		48898c2418010000		MOVQ CX, 0x118(SP)											
  context.go:1005		0xe7aeaa		488d052f102500			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7aeb1		488d9c2410010000		LEAQ 0x110(SP), BX											
  context.go:1005		0xe7aeb9		e8e24159ff			CALL runtime.convT(SB)											
  context.go:1005		0xe7aebe		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe7aec3		488d0d6643ff01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7aeca		4889c7				MOVQ AX, DI												
  context.go:1005		0xe7aecd		488b842478010000		MOVQ 0x178(SP), AX											
  context.go:1005		0xe7aed5		e88648f8ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1349	0xe7aeda		4881c468010000			ADDQ $.file+283(SB), SP											
  control_controller.go:1349	0xe7aee1		5d				POPQ BP													
  control_controller.go:1349	0xe7aee2		c3				RET													
  control_controller.go:1352	0xe7aee3		488b4c2440			MOVQ 0x40(SP), CX											
  control_controller.go:1352	0xe7aee8		48833900			CMPQ 0(CX), $0x0											
  control_controller.go:1352	0xe7aeec		0f8411020000			JE 0xe7b103												
  control_controller.go:1353	0xe7aef2		440f117c2470			MOVUPS X15, 0x70(SP)											
  control_controller.go:1353	0xe7aef8		488b4c2440			MOVQ 0x40(SP), CX											
  control_controller.go:1353	0xe7aefd		488b01				MOVQ 0(CX), AX												
  control_controller.go:1353	0xe7af00		e89bf15eff			CALL runtime.convT64(SB)										
  control_controller.go:1353	0xe7af05		488d0d547c1c00			LEAQ runtime.types+383840(SB), CX									
  control_controller.go:1353	0xe7af0c		48894c2470			MOVQ CX, 0x70(SP)											
  control_controller.go:1353	0xe7af11		4889442478			MOVQ AX, 0x78(SP)											
  log.go:397			0xe7af16		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)											
  log.go:397			0xe7af1f		440f11bc24e0000000		MOVUPS X15, 0xe0(SP)											
  log.go:397			0xe7af28		440f11bc24f0000000		MOVUPS X15, 0xf0(SP)											
  log.go:397			0xe7af31		488d1588060000			LEAQ CAS-Backend/biz/controller.StartMap.Printf.func4(SB), DX						
  log.go:397			0xe7af38		48899424d0000000		MOVQ DX, 0xd0(SP)											
  log.go:397			0xe7af40		48c78424e000000028000000	MOVQ $__major_os_version__+34(SB), 0xe0(SP)								
  log.go:397			0xe7af4c		488d1513af3100			LEAQ go:string.*+186718(SB), DX										
  log.go:397			0xe7af53		48899424d8000000		MOVQ DX, 0xd8(SP)											
  log.go:397			0xe7af5b		48c78424f000000001000000	MOVQ $__minor_os_version__(SB), 0xf0(SP)								
  log.go:397			0xe7af67		48c78424f800000001000000	MOVQ $__minor_os_version__(SB), 0xf8(SP)								
  log.go:397			0xe7af73		488d542470			LEAQ 0x70(SP), DX											
  log.go:397			0xe7af78		48899424e8000000		MOVQ DX, 0xe8(SP)											
  log.go:397			0xe7af80		488b05e9706902			MOVQ log.std(SB), AX											
  log.go:397			0xe7af87		31db				XORL BX, BX												
  log.go:397			0xe7af89		488dbc24d0000000		LEAQ 0xd0(SP), DI											
  log.go:397			0xe7af91		b902000000			MOVL $__minor_os_version__+1(SB), CX									
  log.go:397			0xe7af96		e8651090ff			CALL log.(*Logger).output(SB)										
  log.go:397			0xe7af9b		0f1f440000			NOPL 0(AX)(AX*1)											
  control_controller.go:1354	0xe7afa0		e83b005fff			CALL runtime.makemap_small(SB)										
  control_controller.go:1354	0xe7afa5		4889842428010000		MOVQ AX, 0x128(SP)											
  control_controller.go:1354	0xe7afad		4889c3				MOVQ AX, BX												
  control_controller.go:1354	0xe7afb0		488d0dd5e62e00			LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1354	0xe7afb7		bf04000000			MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1354	0xe7afbc		488d05bd982200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1354	0xe7afc3		e858305fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1354	0xe7afc8		488d0d917b1c00			LEAQ runtime.types+383840(SB), CX									
  control_controller.go:1354	0xe7afcf		488908				MOVQ CX, 0(AX)												
  control_controller.go:1354	0xe7afd2		833d772b6e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1354	0xe7afd9		740d				JE 0xe7afe8												
  control_controller.go:1354	0xe7afdb		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1354	0xe7afdf		90				NOPL													
  control_controller.go:1354	0xe7afe0		e83bd45fff			CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1354	0xe7afe5		498913				MOVQ DX, 0(R11)												
  control_controller.go:1354	0xe7afe8		488d0dd19afe01			LEAQ runtime.gcbits.*(SB), CX										
  control_controller.go:1354	0xe7afef		48894808			MOVQ CX, 0x8(AX)											
  control_controller.go:1356	0xe7aff3		440f11bc24c0000000		MOVUPS X15, 0xc0(SP)											
  control_controller.go:1356	0xe7affc		488b4c2440			MOVQ 0x40(SP), CX											
  control_controller.go:1356	0xe7b001		488b01				MOVQ 0(CX), AX												
  control_controller.go:1356	0xe7b004		e897f05eff			CALL runtime.convT64(SB)										
  control_controller.go:1356	0xe7b009		488d0d507b1c00			LEAQ runtime.types+383840(SB), CX									
  control_controller.go:1356	0xe7b010		48898c24c0000000		MOVQ CX, 0xc0(SP)											
  control_controller.go:1356	0xe7b018		48898424c8000000		MOVQ AX, 0xc8(SP)											
  control_controller.go:1356	0xe7b020		488d05a04e3100			LEAQ go:string.*+162239(SB), AX										
  control_controller.go:1356	0xe7b027		bb22000000			MOVL $__major_os_version__+28(SB), BX									
  control_controller.go:1356	0xe7b02c		488d8c24c0000000		LEAQ 0xc0(SP), CX											
  control_controller.go:1356	0xe7b034		bf01000000			MOVL $__minor_os_version__(SB), DI									
  control_controller.go:1356	0xe7b039		4889fe				MOVQ DI, SI												
  control_controller.go:1356	0xe7b03c		0f1f4000			NOPL 0(AX)												
  control_controller.go:1356	0xe7b040		e8fb426aff			CALL fmt.Sprintf(SB)											
  control_controller.go:1356	0xe7b045		e8d6f05eff			CALL runtime.convTstring(SB)										
  control_controller.go:1356	0xe7b04a		4889842420010000		MOVQ AX, 0x120(SP)											
  control_controller.go:1354	0xe7b052		488b9c2428010000		MOVQ 0x128(SP), BX											
  control_controller.go:1354	0xe7b05a		488d0df3d92e00			LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1354	0xe7b061		bf03000000			MOVL $__subsystem__(SB), DI										
  control_controller.go:1354	0xe7b066		488d0513982200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1354	0xe7b06d		e8ae2f5fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1354	0xe7b072		488d0da7781c00			LEAQ runtime.types+383264(SB), CX									
  control_controller.go:1354	0xe7b079		488908				MOVQ CX, 0(AX)												
  control_controller.go:1354	0xe7b07c		833dcd2a6e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1354	0xe7b083		750a				JNE 0xe7b08f												
  control_controller.go:1354	0xe7b085		488b8c2420010000		MOVQ 0x120(SP), CX											
  control_controller.go:1354	0xe7b08d		eb18				JMP 0xe7b0a7												
  control_controller.go:1354	0xe7b08f		e8acd35fff			CALL runtime.gcWriteBarrier2(SB)									
  control_controller.go:1354	0xe7b094		488b8c2420010000		MOVQ 0x120(SP), CX											
  control_controller.go:1354	0xe7b09c		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1354	0xe7b09f		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1354	0xe7b0a3		49895308			MOVQ DX, 0x8(R11)											
  control_controller.go:1354	0xe7b0a7		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7b0ab		488d0dce972200			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7b0b2		48898c2410010000		MOVQ CX, 0x110(SP)											
  context.go:1005		0xe7b0ba		488b8c2428010000		MOVQ 0x128(SP), CX											
  context.go:1005		0xe7b0c2		48898c2418010000		MOVQ CX, 0x118(SP)											
  context.go:1005		0xe7b0ca		488d050f0e2500			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7b0d1		488d9c2410010000		LEAQ 0x110(SP), BX											
  context.go:1005		0xe7b0d9		e8c23f59ff			CALL runtime.convT(SB)											
  context.go:1005		0xe7b0de		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe7b0e3		488d0d4641ff01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7b0ea		4889c7				MOVQ AX, DI												
  context.go:1005		0xe7b0ed		488b842478010000		MOVQ 0x178(SP), AX											
  context.go:1005		0xe7b0f5		e86646f8ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1358	0xe7b0fa		4881c468010000			ADDQ $.file+283(SB), SP											
  control_controller.go:1358	0xe7b101		5d				POPQ BP													
  control_controller.go:1358	0xe7b102		c3				RET													
  control_controller.go:1361	0xe7b103		440f117c2460			MOVUPS X15, 0x60(SP)											
  control_controller.go:1361	0xe7b109		488b8c2460010000		MOVQ 0x160(SP), CX											
  control_controller.go:1361	0xe7b111		488b4110			MOVQ 0x10(CX), AX											
  control_controller.go:1361	0xe7b115		488b5918			MOVQ 0x18(CX), BX											
  control_controller.go:1361	0xe7b119		e802f05eff			CALL runtime.convTstring(SB)										
  control_controller.go:1361	0xe7b11e		488d0dfb771c00			LEAQ runtime.types+383264(SB), CX									
  control_controller.go:1361	0xe7b125		48894c2460			MOVQ CX, 0x60(SP)											
  control_controller.go:1361	0xe7b12a		4889442468			MOVQ AX, 0x68(SP)											
  log.go:397			0xe7b12f		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)											
  log.go:397			0xe7b138		440f11bc24e0000000		MOVUPS X15, 0xe0(SP)											
  log.go:397			0xe7b141		440f11bc24f0000000		MOVUPS X15, 0xf0(SP)											
  log.go:397			0xe7b14a		488d150f040000			LEAQ CAS-Backend/biz/controller.StartMap.Printf.func5(SB), DX						
  log.go:397			0xe7b151		48899424d0000000		MOVQ DX, 0xd0(SP)											
  log.go:397			0xe7b159		48c78424e00000001c000000	MOVQ $__major_os_version__+22(SB), 0xe0(SP)								
  log.go:397			0xe7b165		488d1538e13000			LEAQ go:string.*+134556(SB), DX										
  log.go:397			0xe7b16c		48899424d8000000		MOVQ DX, 0xd8(SP)											
  log.go:397			0xe7b174		48c78424f000000001000000	MOVQ $__minor_os_version__(SB), 0xf0(SP)								
  log.go:397			0xe7b180		48c78424f800000001000000	MOVQ $__minor_os_version__(SB), 0xf8(SP)								
  log.go:397			0xe7b18c		488d542460			LEAQ 0x60(SP), DX											
  log.go:397			0xe7b191		48899424e8000000		MOVQ DX, 0xe8(SP)											
  log.go:397			0xe7b199		488b05d06e6902			MOVQ log.std(SB), AX											
  log.go:397			0xe7b1a0		31db				XORL BX, BX												
  log.go:397			0xe7b1a2		488dbc24d0000000		LEAQ 0xd0(SP), DI											
  log.go:397			0xe7b1aa		b902000000			MOVL $__minor_os_version__+1(SB), CX									
  log.go:397			0xe7b1af		e84c0e90ff			CALL log.(*Logger).output(SB)										
  control_controller.go:1362	0xe7b1b4		e827fe5eff			CALL runtime.makemap_small(SB)										
  control_controller.go:1362	0xe7b1b9		4889842428010000		MOVQ AX, 0x128(SP)											
  control_controller.go:1362	0xe7b1c1		4889c3				MOVQ AX, BX												
  control_controller.go:1362	0xe7b1c4		488d0dc1e42e00			LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1362	0xe7b1cb		bf04000000			MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1362	0xe7b1d0		488d05a9962200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1362	0xe7b1d7		e8442e5fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1362	0xe7b1dc		488d0d7d791c00			LEAQ runtime.types+383840(SB), CX									
  control_controller.go:1362	0xe7b1e3		488908				MOVQ CX, 0(AX)												
  control_controller.go:1362	0xe7b1e6		833d63296e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1362	0xe7b1ed		740c				JE 0xe7b1fb												
  control_controller.go:1362	0xe7b1ef		488b5008			MOVQ 0x8(AX), DX											
  control_controller.go:1362	0xe7b1f3		e828d25fff			CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1362	0xe7b1f8		498913				MOVQ DX, 0(R11)												
  control_controller.go:1362	0xe7b1fb		488d152ec6fe01			LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:1362	0xe7b202		48895008			MOVQ DX, 0x8(AX)											
  control_controller.go:1362	0xe7b206		488d0573962200			LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1362	0xe7b20d		488b9c2428010000		MOVQ 0x128(SP), BX											
  control_controller.go:1362	0xe7b215		488d0d38d82e00			LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1362	0xe7b21c		bf03000000			MOVL $__subsystem__(SB), DI										
  control_controller.go:1362	0xe7b221		e8fa2d5fff			CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1362	0xe7b226		488d15f3761c00			LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1362	0xe7b22d		488910				MOVQ DX, 0(AX)												
  control_controller.go:1362	0xe7b230		833d19296e0200			CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1362	0xe7b237		740f				JE 0xe7b248												
  control_controller.go:1362	0xe7b239		488b4808			MOVQ 0x8(AX), CX											
  control_controller.go:1362	0xe7b23d		0f1f00				NOPL 0(AX)												
  control_controller.go:1362	0xe7b240		e8dbd15fff			CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1362	0xe7b245		49890b				MOVQ CX, 0(R11)												
  control_controller.go:1362	0xe7b248		488d0d71d6fe01			LEAQ CAS-Backend/biz/controller..stmp_44(SB), CX							
  control_controller.go:1362	0xe7b24f		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7b253		488d0d26962200			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7b25a		48898c2410010000		MOVQ CX, 0x110(SP)											
  context.go:1005		0xe7b262		488b8c2428010000		MOVQ 0x128(SP), CX											
  context.go:1005		0xe7b26a		48898c2418010000		MOVQ CX, 0x118(SP)											
  context.go:1005		0xe7b272		488d05670c2500			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7b279		488d9c2410010000		LEAQ 0x110(SP), BX											
  context.go:1005		0xe7b281		e81a3e59ff			CALL runtime.convT(SB)											
  context.go:1005		0xe7b286		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe7b28b		488d0d9e3fff01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7b292		4889c7				MOVQ AX, DI												
  context.go:1005		0xe7b295		488b842478010000		MOVQ 0x178(SP), AX											
  context.go:1005		0xe7b29d		0f1f00				NOPL 0(AX)												
  context.go:1005		0xe7b2a0		e8bb44f8ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1367	0xe7b2a5		48c744244800000000		MOVQ $0x0, 0x48(SP)											
  control_controller.go:1368	0xe7b2ae		488d0d2b020000			LEAQ CAS-Backend/biz/controller.StartMap.func2(SB), CX							
  control_controller.go:1368	0xe7b2b5		48898c24b0000000		MOVQ CX, 0xb0(SP)											
  control_controller.go:1368	0xe7b2bd		488d4c2448			LEAQ 0x48(SP), CX											
  control_controller.go:1368	0xe7b2c2		48898c24b8000000		MOVQ CX, 0xb8(SP)											
  control_controller.go:1368	0xe7b2ca		488b8c2460010000		MOVQ 0x160(SP), CX											
  control_controller.go:1368	0xe7b2d2		488b4110			MOVQ 0x10(CX), AX											
  control_controller.go:1368	0xe7b2d6		488b5918			MOVQ 0x18(CX), BX											
  control_controller.go:1368	0xe7b2da		b9044b0000			MOVL $__size_of_stack_commit__+15108(SB), CX								
  control_controller.go:1368	0xe7b2df		488dbc24b0000000		LEAQ 0xb0(SP), DI											
  control_controller.go:1368	0xe7b2e7		e81483f9ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  control_controller.go:1373	0xe7b2ec		4885c0				TESTQ AX, AX												
  control_controller.go:1373	0xe7b2ef		0f8484000000			JE 0xe7b379												
  control_controller.go:1374	0xe7b2f5		440f11bc2450010000		MOVUPS X15, 0x150(SP)											
  control_controller.go:1374	0xe7b2fe		6690				NOPW													
  control_controller.go:1374	0xe7b300		7404				JE 0xe7b306												
  control_controller.go:1374	0xe7b302		488b4008			MOVQ 0x8(AX), AX											
  control_controller.go:1374	0xe7b306		4889842450010000		MOVQ AX, 0x150(SP)											
  control_controller.go:1374	0xe7b30e		48899c2458010000		MOVQ BX, 0x158(SP)											
  log.go:405			0xe7b316		48c78424a800000000000000	MOVQ $0x0, 0xa8(SP)											
  log.go:405			0xe7b322		488d1557010000			LEAQ CAS-Backend/biz/controller.StartMap.Println.func6(SB), DX						
  log.go:405			0xe7b329		4889942490000000		MOVQ DX, 0x90(SP)											
  log.go:405			0xe7b331		48c78424a000000001000000	MOVQ $__minor_os_version__(SB), 0xa0(SP)								
  log.go:405			0xe7b33d		48c78424a800000001000000	MOVQ $__minor_os_version__(SB), 0xa8(SP)								
  log.go:405			0xe7b349		488d942450010000		LEAQ 0x150(SP), DX											
  log.go:405			0xe7b351		4889942498000000		MOVQ DX, 0x98(SP)											
  log.go:405			0xe7b359		488b05106d6902			MOVQ log.std(SB), AX											
  log.go:405			0xe7b360		31db				XORL BX, BX												
  log.go:405			0xe7b362		b902000000			MOVL $__minor_os_version__+1(SB), CX									
  log.go:405			0xe7b367		488dbc2490000000		LEAQ 0x90(SP), DI											
  log.go:405			0xe7b36f		e88c0c90ff			CALL log.(*Logger).output(SB)										
  control_controller.go:1380	0xe7b374		e98c000000			JMP 0xe7b405												
  control_controller.go:1376	0xe7b379		488d15a0751c00			LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1376	0xe7b380		4889942440010000		MOVQ DX, 0x140(SP)											
  control_controller.go:1376	0xe7b388		488d1541d5fe01			LEAQ CAS-Backend/biz/controller..stmp_45(SB), DX							
  control_controller.go:1376	0xe7b38f		4889942448010000		MOVQ DX, 0x148(SP)											
  print.go:314			0xe7b397		488b1de26c6902			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7b39e		488d053b07ff01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7b3a5		488d8c2440010000		LEAQ 0x140(SP), CX											
  print.go:314			0xe7b3ad		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7b3b2		4889fe				MOVQ DI, SI												
  print.go:314			0xe7b3b5		e8a6446aff			CALL fmt.Fprintln(SB)											
  control_controller.go:1377	0xe7b3ba		440f11bc2430010000		MOVUPS X15, 0x130(SP)											
  control_controller.go:1377	0xe7b3c3		488b542448			MOVQ 0x48(SP), DX											
  control_controller.go:1377	0xe7b3c8		4c8d05f1202000			LEAQ runtime.types+623808(SB), R8									
  control_controller.go:1377	0xe7b3cf		4c89842430010000		MOVQ R8, 0x130(SP)											
  control_controller.go:1377	0xe7b3d7		4889942438010000		MOVQ DX, 0x138(SP)											
  print.go:314			0xe7b3df		488b1d9a6c6902			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7b3e6		488d05f306ff01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7b3ed		488d8c2430010000		LEAQ 0x130(SP), CX											
  print.go:314			0xe7b3f5		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7b3fa		4889fe				MOVQ DI, SI												
  print.go:314			0xe7b3fd		0f1f00				NOPL 0(AX)												
  print.go:314			0xe7b400		e85b446aff			CALL fmt.Fprintln(SB)											
  control_controller.go:1380	0xe7b405		4881c468010000			ADDQ $.file+283(SB), SP											
  control_controller.go:1380	0xe7b40c		5d				POPQ BP													
  control_controller.go:1380	0xe7b40d		c3				RET													
  context.go:712		0xe7b40e		4d89ca				MOVQ R9, R10												
  context.go:712		0xe7b411		4d21c1				ANDQ R8, R9												
  context.go:712		0xe7b414		49c1e104			SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe7b418		4d8b5c3108			MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe7b41d		0f1f00				NOPL 0(AX)												
  context.go:712		0xe7b420		4939db				CMPQ R11, BX												
  context.go:712		0xe7b423		742f				JE 0xe7b454												
  context.go:712		0xe7b425		4d8d4a01			LEAQ 0x1(R10), R9											
  context.go:712		0xe7b429		4d85db				TESTQ R11, R11												
  context.go:712		0xe7b42c		75e0				JNE 0xe7b40e												
  context.go:712		0xe7b42e		4889542458			MOVQ DX, 0x58(SP)											
  context.go:712		0xe7b433		488d05d6fc1300			LEAQ CAS-Backend/biz/controller..typeAssert.11(SB), AX							
  context.go:712		0xe7b43a		e8a13e59ff			CALL runtime.typeAssert(SB)										
  context.go:752		0xe7b43f		488b542458			MOVQ 0x58(SP), DX											
  context.go:712		0xe7b444		4889c1				MOVQ AX, CX												
  context.go:752		0xe7b447		488b842460010000		MOVQ 0x160(SP), AX											
  context.go:712		0xe7b44f		e9f1f6ffff			JMP 0xe7ab45												
  context.go:712		0xe7b454		498b4c3110			MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe7b459		e9e7f6ffff			JMP 0xe7ab45												
  control_controller.go:1330	0xe7b45e		4889442408			MOVQ AX, 0x8(SP)											
  control_controller.go:1330	0xe7b463		e878b05fff			CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:1330	0xe7b468		488b442408			MOVQ 0x8(SP), AX											
  control_controller.go:1330	0xe7b46d		e96ef6ffff			JMP CAS-Backend/biz/controller.StartMap(SB)								
  :-1				0xe7b472		cc				INT $__subsystem__(SB)											
  :-1				0xe7b473		cc				INT $__subsystem__(SB)											
  :-1				0xe7b474		cc				INT $__subsystem__(SB)											
  :-1				0xe7b475		cc				INT $__subsystem__(SB)											
  :-1				0xe7b476		cc				INT $__subsystem__(SB)											
  :-1				0xe7b477		cc				INT $__subsystem__(SB)											
  :-1				0xe7b478		cc				INT $__subsystem__(SB)											
  :-1				0xe7b479		cc				INT $__subsystem__(SB)											
  :-1				0xe7b47a		cc				INT $__subsystem__(SB)											
  :-1				0xe7b47b		cc				INT $__subsystem__(SB)											
  :-1				0xe7b47c		cc				INT $__subsystem__(SB)											
  :-1				0xe7b47d		cc				INT $__subsystem__(SB)											
  :-1				0xe7b47e		cc				INT $__subsystem__(SB)											
  :-1				0xe7b47f		cc				INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.StartMap.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1368	0xe7b4e0		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:1368	0xe7b4e4		7653			JBE 0xe7b539						
  control_controller.go:1368	0xe7b4e6		55			PUSHQ BP						
  control_controller.go:1368	0xe7b4e7		4889e5			MOVQ SP, BP						
  control_controller.go:1368	0xe7b4ea		4883ec18		SUBQ $__major_os_version__+18(SB), SP			
  control_controller.go:1368	0xe7b4ee		4889442428		MOVQ AX, 0x28(SP)					
  control_controller.go:1368	0xe7b4f3		48895c2430		MOVQ BX, 0x30(SP)					
  control_controller.go:1368	0xe7b4f8		488b4a08		MOVQ 0x8(DX), CX					
  control_controller.go:1368	0xe7b4fc		48894c2410		MOVQ CX, 0x10(SP)					
  control_controller.go:1370	0xe7b501		e81a0cfaff		CALL CAS-Backend/pkg/agvcontrol.SltGetMapRequest(SB)	
  control_controller.go:1370	0xe7b506		833d43266e0200		CMPL runtime.writeBarrier(SB), $0x0			
  control_controller.go:1370	0xe7b50d		7507			JNE 0xe7b516						
  control_controller.go:1370	0xe7b50f		488b542410		MOVQ 0x10(SP), DX					
  control_controller.go:1370	0xe7b514		eb14			JMP 0xe7b52a						
  control_controller.go:1370	0xe7b516		e825cf5fff		CALL runtime.gcWriteBarrier2(SB)			
  control_controller.go:1370	0xe7b51b		498903			MOVQ AX, 0(R11)						
  control_controller.go:1370	0xe7b51e		488b542410		MOVQ 0x10(SP), DX					
  control_controller.go:1370	0xe7b523		488b32			MOVQ 0(DX), SI						
  control_controller.go:1370	0xe7b526		49897308		MOVQ SI, 0x8(R11)					
  control_controller.go:1370	0xe7b52a		488902			MOVQ AX, 0(DX)						
  control_controller.go:1371	0xe7b52d		4889d8			MOVQ BX, AX						
  control_controller.go:1371	0xe7b530		4889cb			MOVQ CX, BX						
  control_controller.go:1371	0xe7b533		4883c418		ADDQ $__major_os_version__+18(SB), SP			
  control_controller.go:1371	0xe7b537		5d			POPQ BP							
  control_controller.go:1371	0xe7b538		c3			RET							
  control_controller.go:1368	0xe7b539		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:1368	0xe7b53e		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:1368	0xe7b543		e818af5fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:1368	0xe7b548		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:1368	0xe7b54d		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:1368	0xe7b552		eb8c			JMP CAS-Backend/biz/controller.StartMap.func2(SB)	
  :-1				0xe7b554		cc			INT $__subsystem__(SB)					
  :-1				0xe7b555		cc			INT $__subsystem__(SB)					
  :-1				0xe7b556		cc			INT $__subsystem__(SB)					
  :-1				0xe7b557		cc			INT $__subsystem__(SB)					
  :-1				0xe7b558		cc			INT $__subsystem__(SB)					
  :-1				0xe7b559		cc			INT $__subsystem__(SB)					
  :-1				0xe7b55a		cc			INT $__subsystem__(SB)					
  :-1				0xe7b55b		cc			INT $__subsystem__(SB)					
  :-1				0xe7b55c		cc			INT $__subsystem__(SB)					
  :-1				0xe7b55d		cc			INT $__subsystem__(SB)					
  :-1				0xe7b55e		cc			INT $__subsystem__(SB)					
  :-1				0xe7b55f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.StartMap.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1338	0xe7b680		493b6610		CMPQ SP, 0x10(R14)						
  control_controller.go:1338	0xe7b684		765d			JBE 0xe7b6e3							
  control_controller.go:1338	0xe7b686		55			PUSHQ BP							
  control_controller.go:1338	0xe7b687		4889e5			MOVQ SP, BP							
  control_controller.go:1338	0xe7b68a		4883ec28		SUBQ $__major_os_version__+34(SB), SP				
  control_controller.go:1338	0xe7b68e		4889442438		MOVQ AX, 0x38(SP)						
  control_controller.go:1338	0xe7b693		48895c2440		MOVQ BX, 0x40(SP)						
  control_controller.go:1338	0xe7b698		488b5208		MOVQ 0x8(DX), DX						
  control_controller.go:1338	0xe7b69c		4889542420		MOVQ DX, 0x20(SP)						
  control_controller.go:1340	0xe7b6a1		31c9			XORL CX, CX							
  control_controller.go:1340	0xe7b6a3		bf01000000		MOVL $__minor_os_version__(SB), DI				
  control_controller.go:1340	0xe7b6a8		e8d3fbf9ff		CALL CAS-Backend/pkg/agvcontrol.SendStartSlamRequest(SB)	
  control_controller.go:1340	0xe7b6ad		833d9c246e0200		CMPL runtime.writeBarrier(SB), $0x0				
  control_controller.go:1340	0xe7b6b4		750a			JNE 0xe7b6c0							
  control_controller.go:1340	0xe7b6b6		488b542420		MOVQ 0x20(SP), DX						
  control_controller.go:1340	0xe7b6bb		eb17			JMP 0xe7b6d4							
  control_controller.go:1340	0xe7b6bd		0f1f00			NOPL 0(AX)							
  control_controller.go:1340	0xe7b6c0		e87bcd5fff		CALL runtime.gcWriteBarrier2(SB)				
  control_controller.go:1340	0xe7b6c5		498903			MOVQ AX, 0(R11)							
  control_controller.go:1340	0xe7b6c8		488b542420		MOVQ 0x20(SP), DX						
  control_controller.go:1340	0xe7b6cd		488b32			MOVQ 0(DX), SI							
  control_controller.go:1340	0xe7b6d0		49897308		MOVQ SI, 0x8(R11)						
  control_controller.go:1340	0xe7b6d4		488902			MOVQ AX, 0(DX)							
  control_controller.go:1341	0xe7b6d7		4889d8			MOVQ BX, AX							
  control_controller.go:1341	0xe7b6da		4889cb			MOVQ CX, BX							
  control_controller.go:1341	0xe7b6dd		4883c428		ADDQ $__major_os_version__+34(SB), SP				
  control_controller.go:1341	0xe7b6e1		5d			POPQ BP								
  control_controller.go:1341	0xe7b6e2		c3			RET								
  control_controller.go:1338	0xe7b6e3		4889442408		MOVQ AX, 0x8(SP)						
  control_controller.go:1338	0xe7b6e8		48895c2410		MOVQ BX, 0x10(SP)						
  control_controller.go:1338	0xe7b6ed		e86ead5fff		CALL runtime.morestack.abi0(SB)					
  control_controller.go:1338	0xe7b6f2		488b442408		MOVQ 0x8(SP), AX						
  control_controller.go:1338	0xe7b6f7		488b5c2410		MOVQ 0x10(SP), BX						
  control_controller.go:1338	0xe7b6fc		eb82			JMP CAS-Backend/biz/controller.StartMap.func1(SB)		
  :-1				0xe7b6fe		cc			INT $__subsystem__(SB)						
  :-1				0xe7b6ff		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.Chongdingwei(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1382	0xe7b700		4c8da42460ffffff	LEAQ 0xffffff60(SP), R12										
  control_controller.go:1382	0xe7b708		4d3b6610		CMPQ R12, 0x10(R14)											
  control_controller.go:1382	0xe7b70c		0f868c070000		JBE 0xe7be9e												
  control_controller.go:1382	0xe7b712		55			PUSHQ BP												
  control_controller.go:1382	0xe7b713		4889e5			MOVQ SP, BP												
  control_controller.go:1382	0xe7b716		4881ec18010000		SUBQ $.file+203(SB), SP											
  context.go:712		0xe7b71d		4889842428010000	MOVQ AX, 0x128(SP)											
  control_controller.go:1383	0xe7b725		488d05f42d2a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1383	0xe7b72c		e86f6059ff		CALL runtime.newobject(SB)										
  control_controller.go:1383	0xe7b731		4889842410010000	MOVQ AX, 0x110(SP)											
  context.go:712		0xe7b739		488b0da0c01300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe7b740		488b15a1c01300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe7b747		4885c9			TESTQ CX, CX												
  context.go:712		0xe7b74a		7419			JE 0xe7b765												
  context.go:712		0xe7b74c		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe7b750		488b35d9f91300		MOVQ CAS-Backend/biz/controller..typeAssert.12(SB), SI							
  context.go:712		0xe7b757		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe7b75a		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe7b75e		6690			NOPW													
  context.go:712		0xe7b760		e9e9060000		JMP 0xe7be4e												
  context.go:752		0xe7b765		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe7b769		4c8b842428010000	MOVQ 0x128(SP), R8											
  context.go:752		0xe7b771		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe7b775		488d0de4ad1a00		LEAQ runtime.types+267616(SB), CX									
  context.go:752		0xe7b77c		4889c7			MOVQ AX, DI												
  context.go:752		0xe7b77f		4889d0			MOVQ DX, AX												
  context.go:752		0xe7b782		ffd6			CALL SI													
  control_controller.go:1385	0xe7b784		4885c0			TESTQ AX, AX												
  control_controller.go:1385	0xe7b787		0f8548060000		JNE 0xe7bdd5												
  control_controller.go:1391	0xe7b78d		440f11bc2498000000	MOVUPS X15, 0x98(SP)											
  control_controller.go:1391	0xe7b796		488d05832d2a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1391	0xe7b79d		488b9c2410010000	MOVQ 0x110(SP), BX											
  control_controller.go:1391	0xe7b7a5		e8f63859ff		CALL runtime.convT(SB)											
  control_controller.go:1391	0xe7b7aa		488d0d6f2d2a00		LEAQ runtime.types+1283360(SB), CX									
  control_controller.go:1391	0xe7b7b1		48898c2498000000	MOVQ CX, 0x98(SP)											
  control_controller.go:1391	0xe7b7b9		48898424a0000000	MOVQ AX, 0xa0(SP)											
  print.go:314			0xe7b7c1		488b1db8686902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7b7c8		488d051103ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7b7cf		488d8c2498000000	LEAQ 0x98(SP), CX											
  print.go:314			0xe7b7d7		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7b7dc		4889fe			MOVQ DI, SI												
  print.go:314			0xe7b7df		90			NOPL													
  print.go:314			0xe7b7e0		e87b406aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1393	0xe7b7e5		c644243f00		MOVB $0x0, 0x3f(SP)											
  control_controller.go:1394	0xe7b7ea		440f117c2458		MOVUPS X15, 0x58(SP)											
  control_controller.go:1395	0xe7b7f0		488d0dc9060000		LEAQ CAS-Backend/biz/controller.Chongdingwei.func1(SB), CX						
  control_controller.go:1395	0xe7b7f7		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  control_controller.go:1395	0xe7b7ff		488b8c2410010000	MOVQ 0x110(SP), CX											
  control_controller.go:1395	0xe7b807		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  control_controller.go:1395	0xe7b80f		488d54243f		LEAQ 0x3f(SP), DX											
  control_controller.go:1395	0xe7b814		48899424d8000000	MOVQ DX, 0xd8(SP)											
  control_controller.go:1395	0xe7b81c		488d542458		LEAQ 0x58(SP), DX											
  control_controller.go:1395	0xe7b821		48899424e0000000	MOVQ DX, 0xe0(SP)											
  control_controller.go:1395	0xe7b829		488b4110		MOVQ 0x10(CX), AX											
  control_controller.go:1395	0xe7b82d		488b5918		MOVQ 0x18(CX), BX											
  control_controller.go:1395	0xe7b831		488dbc24c8000000	LEAQ 0xc8(SP), DI											
  control_controller.go:1395	0xe7b839		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX								
  control_controller.go:1395	0xe7b83e		6690			NOPW													
  control_controller.go:1395	0xe7b840		e8bb7df9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  control_controller.go:1403	0xe7b845		4885c0			TESTQ AX, AX												
  control_controller.go:1403	0xe7b848		7458			JE 0xe7b8a2												
  control_controller.go:1404	0xe7b84a		440f11bc2488000000	MOVUPS X15, 0x88(SP)											
  control_controller.go:1404	0xe7b853		7404			JE 0xe7b859												
  control_controller.go:1404	0xe7b855		488b4008		MOVQ 0x8(AX), AX											
  control_controller.go:1404	0xe7b859		4889842488000000	MOVQ AX, 0x88(SP)											
  control_controller.go:1404	0xe7b861		48899c2490000000	MOVQ BX, 0x90(SP)											
  print.go:233			0xe7b869		488b1d10686902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7b870		488d056902ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7b877		488d0d15023000		LEAQ go:string.*+79243(SB), CX										
  print.go:233			0xe7b87e		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233			0xe7b883		488db42488000000	LEAQ 0x88(SP), SI											
  print.go:233			0xe7b88b		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7b891		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7b894		e887396aff		CALL fmt.Fprintf(SB)											
  control_controller.go:1405	0xe7b899		4881c418010000		ADDQ $.file+203(SB), SP											
  control_controller.go:1405	0xe7b8a0		5d			POPQ BP													
  control_controller.go:1405	0xe7b8a1		c3			RET													
  control_controller.go:1408	0xe7b8a2		488b942410010000	MOVQ 0x110(SP), DX											
  control_controller.go:1408	0xe7b8aa		48837a2001		CMPQ 0x20(DX), $__minor_os_version__(SB)								
  control_controller.go:1408	0xe7b8af		0f8586020000		JNE 0xe7bb3b												
  control_controller.go:1409	0xe7b8b5		807c243f00		CMPB 0x3f(SP), $0x0											
  control_controller.go:1409	0xe7b8ba		660f1f440000		NOPW 0(AX)(AX*1)											
  control_controller.go:1409	0xe7b8c0		0f8544010000		JNE 0xe7ba0a												
  control_controller.go:1416	0xe7b8c6		440f117c2468		MOVUPS X15, 0x68(SP)											
  control_controller.go:1416	0xe7b8cc		488b542458		MOVQ 0x58(SP), DX											
  control_controller.go:1416	0xe7b8d1		4885d2			TESTQ DX, DX												
  control_controller.go:1416	0xe7b8d4		7404			JE 0xe7b8da												
  control_controller.go:1416	0xe7b8d6		488b5208		MOVQ 0x8(DX), DX											
  control_controller.go:1416	0xe7b8da		4c8b542460		MOVQ 0x60(SP), R10											
  control_controller.go:1416	0xe7b8df		4889542468		MOVQ DX, 0x68(SP)											
  control_controller.go:1416	0xe7b8e4		4c89542470		MOVQ R10, 0x70(SP)											
  print.go:233			0xe7b8e9		488b1d90676902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7b8f0		488d05e901ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7b8f7		488d0d31393000		LEAQ go:string.*+93479(SB), CX										
  print.go:233			0xe7b8fe		bf13000000		MOVL $__major_os_version__+13(SB), DI									
  print.go:233			0xe7b903		488d742468		LEAQ 0x68(SP), SI											
  print.go:233			0xe7b908		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7b90e		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7b911		e80a396aff		CALL fmt.Fprintf(SB)											
  control_controller.go:1417	0xe7b916		e8c5f65eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1417	0xe7b91b		48898424e8000000	MOVQ AX, 0xe8(SP)											
  control_controller.go:1417	0xe7b923		4889c3			MOVQ AX, BX												
  control_controller.go:1417	0xe7b926		488d0d5fdd2e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1417	0xe7b92d		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1417	0xe7b932		488d05478f2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1417	0xe7b939		e8e2265fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1417	0xe7b93e		488d151b721c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1417	0xe7b945		488910			MOVQ DX, 0(AX)												
  control_controller.go:1417	0xe7b948		833d01226e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1417	0xe7b94f		740c			JE 0xe7b95d												
  control_controller.go:1417	0xe7b951		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1417	0xe7b955		e8c6ca5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1417	0xe7b95a		498913			MOVQ DX, 0(R11)												
  control_controller.go:1417	0xe7b95d		488d155c91fe01		LEAQ runtime.gcbits.*(SB), DX										
  control_controller.go:1417	0xe7b964		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1417	0xe7b968		488d05118f2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1417	0xe7b96f		488b9c24e8000000	MOVQ 0xe8(SP), BX											
  control_controller.go:1417	0xe7b977		488d0dd6d02e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1417	0xe7b97e		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1417	0xe7b983		e898265fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1417	0xe7b988		488d15916f1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1417	0xe7b98f		488910			MOVQ DX, 0(AX)												
  control_controller.go:1417	0xe7b992		833db7216e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1417	0xe7b999		740d			JE 0xe7b9a8												
  control_controller.go:1417	0xe7b99b		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1417	0xe7b99f		90			NOPL													
  control_controller.go:1417	0xe7b9a0		e87bca5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1417	0xe7b9a5		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1417	0xe7b9a8		488d0d41cffe01		LEAQ CAS-Backend/biz/controller..stmp_51(SB), CX							
  control_controller.go:1417	0xe7b9af		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7b9b3		488d0dc68e2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7b9ba		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe7b9c2		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  context.go:1005		0xe7b9ca		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe7b9d2		488d0507052500		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7b9d9		488d9c24b8000000	LEAQ 0xb8(SP), BX											
  context.go:1005		0xe7b9e1		e8ba3659ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7b9e6		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7b9eb		488d0d3e38ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7b9f2		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7b9f5		488b842428010000	MOVQ 0x128(SP), AX											
  context.go:1005		0xe7b9fd		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe7ba00		e85b3df8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1422	0xe7ba05		e928010000		JMP 0xe7bb32												
  control_controller.go:1410	0xe7ba0a		488d150f6f1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1410	0xe7ba11		4889542478		MOVQ DX, 0x78(SP)											
  control_controller.go:1410	0xe7ba16		4c8d05c3cefe01		LEAQ CAS-Backend/biz/controller..stmp_47(SB), R8							
  control_controller.go:1410	0xe7ba1d		4c89842480000000	MOVQ R8, 0x80(SP)											
  print.go:314			0xe7ba25		488b1d54666902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7ba2c		488d05ad00ff01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7ba33		488d4c2478		LEAQ 0x78(SP), CX											
  print.go:314			0xe7ba38		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7ba3d		4889fe			MOVQ DI, SI												
  print.go:314			0xe7ba40		e81b3e6aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1411	0xe7ba45		e896f55eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1411	0xe7ba4a		48898424e8000000	MOVQ AX, 0xe8(SP)											
  control_controller.go:1411	0xe7ba52		4889c3			MOVQ AX, BX												
  control_controller.go:1411	0xe7ba55		488d0d30dc2e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1411	0xe7ba5c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1411	0xe7ba61		488d05188e2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1411	0xe7ba68		e8b3255fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1411	0xe7ba6d		488d15ec701c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1411	0xe7ba74		488910			MOVQ DX, 0(AX)												
  control_controller.go:1411	0xe7ba77		833dd2206e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1411	0xe7ba7e		6690			NOPW													
  control_controller.go:1411	0xe7ba80		740c			JE 0xe7ba8e												
  control_controller.go:1411	0xe7ba82		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1411	0xe7ba86		e895c95fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1411	0xe7ba8b		498913			MOVQ DX, 0(R11)												
  control_controller.go:1411	0xe7ba8e		488d159bbdfe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:1411	0xe7ba95		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1411	0xe7ba99		488d05e08d2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1411	0xe7baa0		488b9c24e8000000	MOVQ 0xe8(SP), BX											
  control_controller.go:1411	0xe7baa8		488d0da5cf2e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1411	0xe7baaf		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1411	0xe7bab4		e867255fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1411	0xe7bab9		488d15606e1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1411	0xe7bac0		488910			MOVQ DX, 0(AX)												
  control_controller.go:1411	0xe7bac3		833d86206e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1411	0xe7baca		740c			JE 0xe7bad8												
  control_controller.go:1411	0xe7bacc		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1411	0xe7bad0		e84bc95fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1411	0xe7bad5		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1411	0xe7bad8		488d0d01cefe01		LEAQ CAS-Backend/biz/controller..stmp_47(SB), CX							
  control_controller.go:1411	0xe7badf		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7bae3		488d0d968d2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7baea		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe7baf2		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  context.go:1005		0xe7bafa		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe7bb02		488d05d7032500		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7bb09		488d9c24b8000000	LEAQ 0xb8(SP), BX											
  context.go:1005		0xe7bb11		e88a3559ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7bb16		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7bb1b		488d0d0e37ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7bb22		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7bb25		488b842428010000	MOVQ 0x128(SP), AX											
  context.go:1005		0xe7bb2d		e82e3cf8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1422	0xe7bb32		4881c418010000		ADDQ $.file+203(SB), SP											
  control_controller.go:1422	0xe7bb39		5d			POPQ BP													
  control_controller.go:1422	0xe7bb3a		c3			RET													
  control_controller.go:1424	0xe7bb3b		807c243f00		CMPB 0x3f(SP), $0x0											
  control_controller.go:1424	0xe7bb40		0f8551010000		JNE 0xe7bc97												
  control_controller.go:1431	0xe7bb46		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)											
  control_controller.go:1431	0xe7bb4f		488b542458		MOVQ 0x58(SP), DX											
  control_controller.go:1431	0xe7bb54		4885d2			TESTQ DX, DX												
  control_controller.go:1431	0xe7bb57		7404			JE 0xe7bb5d												
  control_controller.go:1431	0xe7bb59		488b5208		MOVQ 0x8(DX), DX											
  control_controller.go:1431	0xe7bb5d		4c8b542460		MOVQ 0x60(SP), R10											
  control_controller.go:1431	0xe7bb62		48899424f0000000	MOVQ DX, 0xf0(SP)											
  control_controller.go:1431	0xe7bb6a		4c899424f8000000	MOVQ R10, 0xf8(SP)											
  print.go:233			0xe7bb72		488b1d07656902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7bb79		488d0560fffe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7bb80		488d0d7fa23000		LEAQ go:string.*+121086(SB), CX										
  print.go:233			0xe7bb87		bf19000000		MOVL $__major_os_version__+19(SB), DI									
  print.go:233			0xe7bb8c		488db424f0000000	LEAQ 0xf0(SP), SI											
  print.go:233			0xe7bb94		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7bb9a		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7bb9d		0f1f00			NOPL 0(AX)												
  print.go:233			0xe7bba0		e87b366aff		CALL fmt.Fprintf(SB)											
  control_controller.go:1432	0xe7bba5		e836f45eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1432	0xe7bbaa		48898424e8000000	MOVQ AX, 0xe8(SP)											
  control_controller.go:1432	0xe7bbb2		4889c3			MOVQ AX, BX												
  control_controller.go:1432	0xe7bbb5		488d0dd0da2e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1432	0xe7bbbc		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1432	0xe7bbc1		488d05b88c2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1432	0xe7bbc8		e853245fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1432	0xe7bbcd		488d158c6f1c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1432	0xe7bbd4		488910			MOVQ DX, 0(AX)												
  control_controller.go:1432	0xe7bbd7		833d721f6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1432	0xe7bbde		6690			NOPW													
  control_controller.go:1432	0xe7bbe0		740c			JE 0xe7bbee												
  control_controller.go:1432	0xe7bbe2		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1432	0xe7bbe6		e835c85fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1432	0xe7bbeb		498913			MOVQ DX, 0(R11)												
  control_controller.go:1432	0xe7bbee		488d15cb8efe01		LEAQ runtime.gcbits.*(SB), DX										
  control_controller.go:1432	0xe7bbf5		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1432	0xe7bbf9		488d05808c2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1432	0xe7bc00		488b9c24e8000000	MOVQ 0xe8(SP), BX											
  control_controller.go:1432	0xe7bc08		488d0d45ce2e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1432	0xe7bc0f		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1432	0xe7bc14		e807245fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1432	0xe7bc19		488d15006d1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1432	0xe7bc20		488910			MOVQ DX, 0(AX)												
  control_controller.go:1432	0xe7bc23		833d261f6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1432	0xe7bc2a		740c			JE 0xe7bc38												
  control_controller.go:1432	0xe7bc2c		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1432	0xe7bc30		e8ebc75fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1432	0xe7bc35		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1432	0xe7bc38		488d0de1ccfe01		LEAQ CAS-Backend/biz/controller..stmp_56(SB), CX							
  control_controller.go:1432	0xe7bc3f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7bc43		488d0d368c2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7bc4a		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe7bc52		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  context.go:1005		0xe7bc5a		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe7bc62		488d0577022500		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7bc69		488d9c24b8000000	LEAQ 0xb8(SP), BX											
  context.go:1005		0xe7bc71		e82a3459ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7bc76		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7bc7b		488d0dae35ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7bc82		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7bc85		488b842428010000	MOVQ 0x128(SP), AX											
  context.go:1005		0xe7bc8d		e8ce3af8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1438	0xe7bc92		e935010000		JMP 0xe7bdcc												
  control_controller.go:1425	0xe7bc97		488d15826c1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1425	0xe7bc9e		4889942400010000	MOVQ DX, 0x100(SP)											
  control_controller.go:1425	0xe7bca6		4c8d0553ccfe01		LEAQ CAS-Backend/biz/controller..stmp_52(SB), R8							
  control_controller.go:1425	0xe7bcad		4c89842408010000	MOVQ R8, 0x108(SP)											
  print.go:314			0xe7bcb5		488b1dc4636902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7bcbc		488d051dfefe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7bcc3		488d8c2400010000	LEAQ 0x100(SP), CX											
  print.go:314			0xe7bccb		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7bcd0		4889fe			MOVQ DI, SI												
  print.go:314			0xe7bcd3		e8883b6aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1426	0xe7bcd8		e803f35eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1426	0xe7bcdd		48898424e8000000	MOVQ AX, 0xe8(SP)											
  control_controller.go:1426	0xe7bce5		4889c3			MOVQ AX, BX												
  control_controller.go:1426	0xe7bce8		488d0d9dd92e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1426	0xe7bcef		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1426	0xe7bcf4		488d05858b2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1426	0xe7bcfb		0f1f440000		NOPL 0(AX)(AX*1)											
  control_controller.go:1426	0xe7bd00		e81b235fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1426	0xe7bd05		488d15546e1c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1426	0xe7bd0c		488910			MOVQ DX, 0(AX)												
  control_controller.go:1426	0xe7bd0f		833d3a1e6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1426	0xe7bd16		7410			JE 0xe7bd28												
  control_controller.go:1426	0xe7bd18		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1426	0xe7bd1c		0f1f4000		NOPL 0(AX)												
  control_controller.go:1426	0xe7bd20		e8fbc65fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1426	0xe7bd25		498913			MOVQ DX, 0(R11)												
  control_controller.go:1426	0xe7bd28		488d1501bbfe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:1426	0xe7bd2f		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1426	0xe7bd33		488d05468b2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1426	0xe7bd3a		488b9c24e8000000	MOVQ 0xe8(SP), BX											
  control_controller.go:1426	0xe7bd42		488d0d0bcd2e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1426	0xe7bd49		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1426	0xe7bd4e		e8cd225fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1426	0xe7bd53		488d15c66b1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1426	0xe7bd5a		488910			MOVQ DX, 0(AX)												
  control_controller.go:1426	0xe7bd5d		833dec1d6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1426	0xe7bd64		740c			JE 0xe7bd72												
  control_controller.go:1426	0xe7bd66		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1426	0xe7bd6a		e8b1c65fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1426	0xe7bd6f		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1426	0xe7bd72		488d0d97cbfe01		LEAQ CAS-Backend/biz/controller..stmp_54(SB), CX							
  control_controller.go:1426	0xe7bd79		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7bd7d		488d0dfc8a2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7bd84		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe7bd8c		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  context.go:1005		0xe7bd94		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe7bd9c		488d053d012500		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7bda3		488d9c24b8000000	LEAQ 0xb8(SP), BX											
  context.go:1005		0xe7bdab		e8f03259ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7bdb0		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7bdb5		488d0d7434ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7bdbc		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7bdbf		488b842428010000	MOVQ 0x128(SP), AX											
  context.go:1005		0xe7bdc7		e89439f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1438	0xe7bdcc		4881c418010000		ADDQ $.file+203(SB), SP											
  control_controller.go:1438	0xe7bdd3		5d			POPQ BP													
  control_controller.go:1438	0xe7bdd4		c3			RET													
  context.go:752		0xe7bdd5		4889442440		MOVQ AX, 0x40(SP)											
  context.go:752		0xe7bdda		48895c2448		MOVQ BX, 0x48(SP)											
  control_controller.go:1386	0xe7bddf		488d153a6b1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1386	0xe7bde6		48899424a8000000	MOVQ DX, 0xa8(SP)											
  control_controller.go:1386	0xe7bdee		488d15dbc9fe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  control_controller.go:1386	0xe7bdf5		48899424b0000000	MOVQ DX, 0xb0(SP)											
  print.go:314			0xe7bdfd		488b1d7c626902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7be04		488d05d5fcfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7be0b		488d8c24a8000000	LEAQ 0xa8(SP), CX											
  print.go:314			0xe7be13		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7be18		4889fe			MOVQ DI, SI												
  print.go:314			0xe7be1b		0f1f440000		NOPL 0(AX)(AX*1)											
  print.go:314			0xe7be20		e83b3a6aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1387	0xe7be25		488b842428010000	MOVQ 0x128(SP), AX											
  control_controller.go:1387	0xe7be2d		bb90010000		MOVL $.file+323(SB), BX											
  control_controller.go:1387	0xe7be32		488b4c2440		MOVQ 0x40(SP), CX											
  control_controller.go:1387	0xe7be37		488b7c2448		MOVQ 0x48(SP), DI											
  control_controller.go:1387	0xe7be3c		0f1f4000		NOPL 0(AX)												
  control_controller.go:1387	0xe7be40		e85bf2f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  control_controller.go:1388	0xe7be45		4881c418010000		ADDQ $.file+203(SB), SP											
  control_controller.go:1388	0xe7be4c		5d			POPQ BP													
  control_controller.go:1388	0xe7be4d		c3			RET													
  context.go:712		0xe7be4e		4d89ca			MOVQ R9, R10												
  context.go:712		0xe7be51		4d21c1			ANDQ R8, R9												
  context.go:712		0xe7be54		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe7be58		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe7be5d		0f1f00			NOPL 0(AX)												
  context.go:712		0xe7be60		4939db			CMPQ R11, BX												
  context.go:712		0xe7be63		742f			JE 0xe7be94												
  context.go:712		0xe7be65		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe7be69		4d85db			TESTQ R11, R11												
  context.go:712		0xe7be6c		75e0			JNE 0xe7be4e												
  context.go:712		0xe7be6e		4889542450		MOVQ DX, 0x50(SP)											
  context.go:712		0xe7be73		488d05b6f21300		LEAQ CAS-Backend/biz/controller..typeAssert.12(SB), AX							
  context.go:712		0xe7be7a		e8613459ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe7be7f		488b542450		MOVQ 0x50(SP), DX											
  context.go:712		0xe7be84		4889c1			MOVQ AX, CX												
  context.go:752		0xe7be87		488b842410010000	MOVQ 0x110(SP), AX											
  context.go:712		0xe7be8f		e9d1f8ffff		JMP 0xe7b765												
  context.go:712		0xe7be94		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe7be99		e9c7f8ffff		JMP 0xe7b765												
  control_controller.go:1382	0xe7be9e		4889442408		MOVQ AX, 0x8(SP)											
  control_controller.go:1382	0xe7bea3		e838a65fff		CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:1382	0xe7bea8		488b442408		MOVQ 0x8(SP), AX											
  control_controller.go:1382	0xe7bead		e94ef8ffff		JMP CAS-Backend/biz/controller.Chongdingwei(SB)								
  :-1				0xe7beb2		cc			INT $__subsystem__(SB)											
  :-1				0xe7beb3		cc			INT $__subsystem__(SB)											
  :-1				0xe7beb4		cc			INT $__subsystem__(SB)											
  :-1				0xe7beb5		cc			INT $__subsystem__(SB)											
  :-1				0xe7beb6		cc			INT $__subsystem__(SB)											
  :-1				0xe7beb7		cc			INT $__subsystem__(SB)											
  :-1				0xe7beb8		cc			INT $__subsystem__(SB)											
  :-1				0xe7beb9		cc			INT $__subsystem__(SB)											
  :-1				0xe7beba		cc			INT $__subsystem__(SB)											
  :-1				0xe7bebb		cc			INT $__subsystem__(SB)											
  :-1				0xe7bebc		cc			INT $__subsystem__(SB)											
  :-1				0xe7bebd		cc			INT $__subsystem__(SB)											
  :-1				0xe7bebe		cc			INT $__subsystem__(SB)											
  :-1				0xe7bebf		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.Chongdingwei.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1395	0xe7bec0		493b6610		CMPQ SP, 0x10(R14)						
  control_controller.go:1395	0xe7bec4		0f86b7000000		JBE 0xe7bf81							
  control_controller.go:1395	0xe7beca		55			PUSHQ BP							
  control_controller.go:1395	0xe7becb		4889e5			MOVQ SP, BP							
  control_controller.go:1395	0xe7bece		4883ec48		SUBQ $__major_os_version__+66(SB), SP				
  control_controller.go:1395	0xe7bed2		4889442458		MOVQ AX, 0x58(SP)						
  control_controller.go:1395	0xe7bed7		48895c2460		MOVQ BX, 0x60(SP)						
  control_controller.go:1395	0xe7bedc		488b7208		MOVQ 0x8(DX), SI						
  control_controller.go:1395	0xe7bee0		488b7a18		MOVQ 0x18(DX), DI						
  control_controller.go:1395	0xe7bee4		48897c2440		MOVQ DI, 0x40(SP)						
  control_controller.go:1395	0xe7bee9		488b5210		MOVQ 0x10(DX), DX						
  control_controller.go:1395	0xe7beed		4889542438		MOVQ DX, 0x38(SP)						
  control_controller.go:1396	0xe7bef2		48837e2001		CMPQ 0x20(SI), $__minor_os_version__(SB)			
  control_controller.go:1396	0xe7bef7		7547			JNE 0xe7bf40							
  control_controller.go:1397	0xe7bef9		b901000000		MOVL $__minor_os_version__(SB), CX				
  control_controller.go:1397	0xe7befe		0f57c0			XORPS X0, X0							
  control_controller.go:1397	0xe7bf01		0f10c8			MOVUPS X0, X1							
  control_controller.go:1397	0xe7bf04		0f10d0			MOVUPS X0, X2							
  control_controller.go:1397	0xe7bf07		0f10d8			MOVUPS X0, X3							
  control_controller.go:1397	0xe7bf0a		e8b111faff		CALL CAS-Backend/pkg/agvcontrol.Chongdingweiapi(SB)		
  control_controller.go:1397	0xe7bf0f		488b542438		MOVQ 0x38(SP), DX						
  control_controller.go:1397	0xe7bf14		8802			MOVB AL, 0(DX)							
  control_controller.go:1397	0xe7bf16		488b542440		MOVQ 0x40(SP), DX						
  control_controller.go:1397	0xe7bf1b		48891a			MOVQ BX, 0(DX)							
  control_controller.go:1397	0xe7bf1e		833d2b1c6e0200		CMPL runtime.writeBarrier(SB), $0x0				
  control_controller.go:1397	0xe7bf25		7410			JE 0xe7bf37							
  control_controller.go:1397	0xe7bf27		e814c55fff		CALL runtime.gcWriteBarrier2(SB)				
  control_controller.go:1397	0xe7bf2c		49890b			MOVQ CX, 0(R11)							
  control_controller.go:1397	0xe7bf2f		488b7208		MOVQ 0x8(DX), SI						
  control_controller.go:1397	0xe7bf33		49897308		MOVQ SI, 0x8(R11)						
  control_controller.go:1397	0xe7bf37		48894a08		MOVQ CX, 0x8(DX)						
  control_controller.go:1397	0xe7bf3b		eb37			JMP 0xe7bf74							
  control_controller.go:1397	0xe7bf3d		0f1f00			NOPL 0(AX)							
  control_controller.go:1399	0xe7bf40		e8fb09faff		CALL CAS-Backend/pkg/agvcontrol.CancerChongdingweiapi(SB)	
  control_controller.go:1399	0xe7bf45		488b542438		MOVQ 0x38(SP), DX						
  control_controller.go:1399	0xe7bf4a		8802			MOVB AL, 0(DX)							
  control_controller.go:1399	0xe7bf4c		488b542440		MOVQ 0x40(SP), DX						
  control_controller.go:1399	0xe7bf51		48891a			MOVQ BX, 0(DX)							
  control_controller.go:1399	0xe7bf54		833df51b6e0200		CMPL runtime.writeBarrier(SB), $0x0				
  control_controller.go:1399	0xe7bf5b		7413			JE 0xe7bf70							
  control_controller.go:1399	0xe7bf5d		0f1f00			NOPL 0(AX)							
  control_controller.go:1399	0xe7bf60		e8dbc45fff		CALL runtime.gcWriteBarrier2(SB)				
  control_controller.go:1399	0xe7bf65		49890b			MOVQ CX, 0(R11)							
  control_controller.go:1399	0xe7bf68		488b7208		MOVQ 0x8(DX), SI						
  control_controller.go:1399	0xe7bf6c		49897308		MOVQ SI, 0x8(R11)						
  control_controller.go:1399	0xe7bf70		48894a08		MOVQ CX, 0x8(DX)						
  control_controller.go:1401	0xe7bf74		488b02			MOVQ 0(DX), AX							
  control_controller.go:1401	0xe7bf77		488b5a08		MOVQ 0x8(DX), BX						
  control_controller.go:1401	0xe7bf7b		4883c448		ADDQ $__major_os_version__+66(SB), SP				
  control_controller.go:1401	0xe7bf7f		5d			POPQ BP								
  control_controller.go:1401	0xe7bf80		c3			RET								
  control_controller.go:1395	0xe7bf81		4889442408		MOVQ AX, 0x8(SP)						
  control_controller.go:1395	0xe7bf86		48895c2410		MOVQ BX, 0x10(SP)						
  control_controller.go:1395	0xe7bf8b		e8d0a45fff		CALL runtime.morestack.abi0(SB)					
  control_controller.go:1395	0xe7bf90		488b442408		MOVQ 0x8(SP), AX						
  control_controller.go:1395	0xe7bf95		488b5c2410		MOVQ 0x10(SP), BX						
  control_controller.go:1395	0xe7bf9a		e921ffffff		JMP CAS-Backend/biz/controller.Chongdingwei.func1(SB)		
  :-1				0xe7bf9f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.Ruanjiting(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1440	0xe7bfa0		4c8da42460ffffff	LEAQ 0xffffff60(SP), R12										
  control_controller.go:1440	0xe7bfa8		4d3b6610		CMPQ R12, 0x10(R14)											
  control_controller.go:1440	0xe7bfac		0f868c070000		JBE 0xe7c73e												
  control_controller.go:1440	0xe7bfb2		55			PUSHQ BP												
  control_controller.go:1440	0xe7bfb3		4889e5			MOVQ SP, BP												
  control_controller.go:1440	0xe7bfb6		4881ec18010000		SUBQ $.file+203(SB), SP											
  context.go:712		0xe7bfbd		4889842428010000	MOVQ AX, 0x128(SP)											
  control_controller.go:1441	0xe7bfc5		488d0554252a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1441	0xe7bfcc		e8cf5759ff		CALL runtime.newobject(SB)										
  control_controller.go:1441	0xe7bfd1		4889842410010000	MOVQ AX, 0x110(SP)											
  context.go:712		0xe7bfd9		488b0d00b81300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe7bfe0		488b1501b81300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe7bfe7		4885c9			TESTQ CX, CX												
  context.go:712		0xe7bfea		7419			JE 0xe7c005												
  context.go:712		0xe7bfec		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe7bff0		488b3559f11300		MOVQ CAS-Backend/biz/controller..typeAssert.13(SB), SI							
  context.go:712		0xe7bff7		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe7bffa		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe7bffe		6690			NOPW													
  context.go:712		0xe7c000		e9e9060000		JMP 0xe7c6ee												
  context.go:752		0xe7c005		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe7c009		4c8b842428010000	MOVQ 0x128(SP), R8											
  context.go:752		0xe7c011		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe7c015		488d0d44a51a00		LEAQ runtime.types+267616(SB), CX									
  context.go:752		0xe7c01c		4889c7			MOVQ AX, DI												
  context.go:752		0xe7c01f		4889d0			MOVQ DX, AX												
  context.go:752		0xe7c022		ffd6			CALL SI													
  control_controller.go:1443	0xe7c024		4885c0			TESTQ AX, AX												
  control_controller.go:1443	0xe7c027		0f8548060000		JNE 0xe7c675												
  control_controller.go:1449	0xe7c02d		440f11bc2498000000	MOVUPS X15, 0x98(SP)											
  control_controller.go:1449	0xe7c036		488d05e3242a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1449	0xe7c03d		488b9c2410010000	MOVQ 0x110(SP), BX											
  control_controller.go:1449	0xe7c045		e8563059ff		CALL runtime.convT(SB)											
  control_controller.go:1449	0xe7c04a		488d0dcf242a00		LEAQ runtime.types+1283360(SB), CX									
  control_controller.go:1449	0xe7c051		48898c2498000000	MOVQ CX, 0x98(SP)											
  control_controller.go:1449	0xe7c059		48898424a0000000	MOVQ AX, 0xa0(SP)											
  print.go:314			0xe7c061		488b1d18606902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7c068		488d0571fafe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7c06f		488d8c2498000000	LEAQ 0x98(SP), CX											
  print.go:314			0xe7c077		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7c07c		4889fe			MOVQ DI, SI												
  print.go:314			0xe7c07f		90			NOPL													
  print.go:314			0xe7c080		e8db376aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1451	0xe7c085		c644243f00		MOVB $0x0, 0x3f(SP)											
  control_controller.go:1452	0xe7c08a		440f117c2458		MOVUPS X15, 0x58(SP)											
  control_controller.go:1453	0xe7c090		488d0dc9060000		LEAQ CAS-Backend/biz/controller.Ruanjiting.func1(SB), CX						
  control_controller.go:1453	0xe7c097		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  control_controller.go:1453	0xe7c09f		488b8c2410010000	MOVQ 0x110(SP), CX											
  control_controller.go:1453	0xe7c0a7		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  control_controller.go:1453	0xe7c0af		488d54243f		LEAQ 0x3f(SP), DX											
  control_controller.go:1453	0xe7c0b4		48899424d8000000	MOVQ DX, 0xd8(SP)											
  control_controller.go:1453	0xe7c0bc		488d542458		LEAQ 0x58(SP), DX											
  control_controller.go:1453	0xe7c0c1		48899424e0000000	MOVQ DX, 0xe0(SP)											
  control_controller.go:1453	0xe7c0c9		488b4110		MOVQ 0x10(CX), AX											
  control_controller.go:1453	0xe7c0cd		488b5918		MOVQ 0x18(CX), BX											
  control_controller.go:1453	0xe7c0d1		488dbc24c8000000	LEAQ 0xc8(SP), DI											
  control_controller.go:1453	0xe7c0d9		b90a4b0000		MOVL $__size_of_stack_commit__+15114(SB), CX								
  control_controller.go:1453	0xe7c0de		6690			NOPW													
  control_controller.go:1453	0xe7c0e0		e81b75f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  control_controller.go:1461	0xe7c0e5		4885c0			TESTQ AX, AX												
  control_controller.go:1461	0xe7c0e8		7458			JE 0xe7c142												
  control_controller.go:1462	0xe7c0ea		440f11bc2488000000	MOVUPS X15, 0x88(SP)											
  control_controller.go:1462	0xe7c0f3		7404			JE 0xe7c0f9												
  control_controller.go:1462	0xe7c0f5		488b4008		MOVQ 0x8(AX), AX											
  control_controller.go:1462	0xe7c0f9		4889842488000000	MOVQ AX, 0x88(SP)											
  control_controller.go:1462	0xe7c101		48899c2490000000	MOVQ BX, 0x90(SP)											
  print.go:233			0xe7c109		488b1d705f6902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7c110		488d05c9f9fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7c117		488d0d75f92f00		LEAQ go:string.*+79243(SB), CX										
  print.go:233			0xe7c11e		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233			0xe7c123		488db42488000000	LEAQ 0x88(SP), SI											
  print.go:233			0xe7c12b		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7c131		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7c134		e8e7306aff		CALL fmt.Fprintf(SB)											
  control_controller.go:1463	0xe7c139		4881c418010000		ADDQ $.file+203(SB), SP											
  control_controller.go:1463	0xe7c140		5d			POPQ BP													
  control_controller.go:1463	0xe7c141		c3			RET													
  control_controller.go:1466	0xe7c142		488b942410010000	MOVQ 0x110(SP), DX											
  control_controller.go:1466	0xe7c14a		48837a2001		CMPQ 0x20(DX), $__minor_os_version__(SB)								
  control_controller.go:1466	0xe7c14f		0f8586020000		JNE 0xe7c3db												
  control_controller.go:1467	0xe7c155		807c243f00		CMPB 0x3f(SP), $0x0											
  control_controller.go:1467	0xe7c15a		660f1f440000		NOPW 0(AX)(AX*1)											
  control_controller.go:1467	0xe7c160		0f8544010000		JNE 0xe7c2aa												
  control_controller.go:1474	0xe7c166		440f117c2468		MOVUPS X15, 0x68(SP)											
  control_controller.go:1474	0xe7c16c		488b542458		MOVQ 0x58(SP), DX											
  control_controller.go:1474	0xe7c171		4885d2			TESTQ DX, DX												
  control_controller.go:1474	0xe7c174		7404			JE 0xe7c17a												
  control_controller.go:1474	0xe7c176		488b5208		MOVQ 0x8(DX), DX											
  control_controller.go:1474	0xe7c17a		4c8b542460		MOVQ 0x60(SP), R10											
  control_controller.go:1474	0xe7c17f		4889542468		MOVQ DX, 0x68(SP)											
  control_controller.go:1474	0xe7c184		4c89542470		MOVQ R10, 0x70(SP)											
  print.go:233			0xe7c189		488b1df05e6902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7c190		488d0549f9fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7c197		488d0d05f92f00		LEAQ go:string.*+79259(SB), CX										
  print.go:233			0xe7c19e		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233			0xe7c1a3		488d742468		LEAQ 0x68(SP), SI											
  print.go:233			0xe7c1a8		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7c1ae		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7c1b1		e86a306aff		CALL fmt.Fprintf(SB)											
  control_controller.go:1475	0xe7c1b6		e825ee5eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1475	0xe7c1bb		48898424e8000000	MOVQ AX, 0xe8(SP)											
  control_controller.go:1475	0xe7c1c3		4889c3			MOVQ AX, BX												
  control_controller.go:1475	0xe7c1c6		488d0dbfd42e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1475	0xe7c1cd		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1475	0xe7c1d2		488d05a7862200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1475	0xe7c1d9		e8421e5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1475	0xe7c1de		488d157b691c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1475	0xe7c1e5		488910			MOVQ DX, 0(AX)												
  control_controller.go:1475	0xe7c1e8		833d61196e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1475	0xe7c1ef		740c			JE 0xe7c1fd												
  control_controller.go:1475	0xe7c1f1		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1475	0xe7c1f5		e826c25fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1475	0xe7c1fa		498913			MOVQ DX, 0(R11)												
  control_controller.go:1475	0xe7c1fd		488d15bc88fe01		LEAQ runtime.gcbits.*(SB), DX										
  control_controller.go:1475	0xe7c204		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1475	0xe7c208		488d0571862200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1475	0xe7c20f		488b9c24e8000000	MOVQ 0xe8(SP), BX											
  control_controller.go:1475	0xe7c217		488d0d36c82e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1475	0xe7c21e		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1475	0xe7c223		e8f81d5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1475	0xe7c228		488d15f1661c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1475	0xe7c22f		488910			MOVQ DX, 0(AX)												
  control_controller.go:1475	0xe7c232		833d17196e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1475	0xe7c239		740d			JE 0xe7c248												
  control_controller.go:1475	0xe7c23b		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1475	0xe7c23f		90			NOPL													
  control_controller.go:1475	0xe7c240		e8dbc15fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1475	0xe7c245		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1475	0xe7c248		488d0df1c6fe01		LEAQ CAS-Backend/biz/controller..stmp_62(SB), CX							
  control_controller.go:1475	0xe7c24f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7c253		488d0d26862200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7c25a		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe7c262		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  context.go:1005		0xe7c26a		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe7c272		488d0567fc2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7c279		488d9c24b8000000	LEAQ 0xb8(SP), BX											
  context.go:1005		0xe7c281		e81a2e59ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7c286		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7c28b		488d0d9e2fff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7c292		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7c295		488b842428010000	MOVQ 0x128(SP), AX											
  context.go:1005		0xe7c29d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe7c2a0		e8bb34f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1480	0xe7c2a5		e928010000		JMP 0xe7c3d2												
  control_controller.go:1468	0xe7c2aa		488d156f661c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1468	0xe7c2b1		4889542478		MOVQ DX, 0x78(SP)											
  control_controller.go:1468	0xe7c2b6		4c8d0573c6fe01		LEAQ CAS-Backend/biz/controller..stmp_58(SB), R8							
  control_controller.go:1468	0xe7c2bd		4c89842480000000	MOVQ R8, 0x80(SP)											
  print.go:314			0xe7c2c5		488b1db45d6902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7c2cc		488d050df8fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7c2d3		488d4c2478		LEAQ 0x78(SP), CX											
  print.go:314			0xe7c2d8		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7c2dd		4889fe			MOVQ DI, SI												
  print.go:314			0xe7c2e0		e87b356aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1469	0xe7c2e5		e8f6ec5eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1469	0xe7c2ea		48898424e8000000	MOVQ AX, 0xe8(SP)											
  control_controller.go:1469	0xe7c2f2		4889c3			MOVQ AX, BX												
  control_controller.go:1469	0xe7c2f5		488d0d90d32e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1469	0xe7c2fc		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1469	0xe7c301		488d0578852200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1469	0xe7c308		e8131d5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1469	0xe7c30d		488d154c681c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1469	0xe7c314		488910			MOVQ DX, 0(AX)												
  control_controller.go:1469	0xe7c317		833d32186e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1469	0xe7c31e		6690			NOPW													
  control_controller.go:1469	0xe7c320		740c			JE 0xe7c32e												
  control_controller.go:1469	0xe7c322		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1469	0xe7c326		e8f5c05fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1469	0xe7c32b		498913			MOVQ DX, 0(R11)												
  control_controller.go:1469	0xe7c32e		488d15fbb4fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:1469	0xe7c335		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1469	0xe7c339		488d0540852200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1469	0xe7c340		488b9c24e8000000	MOVQ 0xe8(SP), BX											
  control_controller.go:1469	0xe7c348		488d0d05c72e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1469	0xe7c34f		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1469	0xe7c354		e8c71c5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1469	0xe7c359		488d15c0651c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1469	0xe7c360		488910			MOVQ DX, 0(AX)												
  control_controller.go:1469	0xe7c363		833de6176e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1469	0xe7c36a		740c			JE 0xe7c378												
  control_controller.go:1469	0xe7c36c		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1469	0xe7c370		e8abc05fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1469	0xe7c375		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1469	0xe7c378		488d0db1c5fe01		LEAQ CAS-Backend/biz/controller..stmp_58(SB), CX							
  control_controller.go:1469	0xe7c37f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7c383		488d0df6842200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7c38a		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe7c392		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  context.go:1005		0xe7c39a		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe7c3a2		488d0537fb2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7c3a9		488d9c24b8000000	LEAQ 0xb8(SP), BX											
  context.go:1005		0xe7c3b1		e8ea2c59ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7c3b6		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7c3bb		488d0d6e2eff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7c3c2		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7c3c5		488b842428010000	MOVQ 0x128(SP), AX											
  context.go:1005		0xe7c3cd		e88e33f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1480	0xe7c3d2		4881c418010000		ADDQ $.file+203(SB), SP											
  control_controller.go:1480	0xe7c3d9		5d			POPQ BP													
  control_controller.go:1480	0xe7c3da		c3			RET													
  control_controller.go:1482	0xe7c3db		807c243f00		CMPB 0x3f(SP), $0x0											
  control_controller.go:1482	0xe7c3e0		0f8551010000		JNE 0xe7c537												
  control_controller.go:1489	0xe7c3e6		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)											
  control_controller.go:1489	0xe7c3ef		488b542458		MOVQ 0x58(SP), DX											
  control_controller.go:1489	0xe7c3f4		4885d2			TESTQ DX, DX												
  control_controller.go:1489	0xe7c3f7		7404			JE 0xe7c3fd												
  control_controller.go:1489	0xe7c3f9		488b5208		MOVQ 0x8(DX), DX											
  control_controller.go:1489	0xe7c3fd		4c8b542460		MOVQ 0x60(SP), R10											
  control_controller.go:1489	0xe7c402		48899424f0000000	MOVQ DX, 0xf0(SP)											
  control_controller.go:1489	0xe7c40a		4c899424f8000000	MOVQ R10, 0xf8(SP)											
  print.go:233			0xe7c412		488b1d675c6902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7c419		488d05c0f6fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7c420		488d0df8993000		LEAQ go:string.*+121111(SB), CX										
  print.go:233			0xe7c427		bf19000000		MOVL $__major_os_version__+19(SB), DI									
  print.go:233			0xe7c42c		488db424f0000000	LEAQ 0xf0(SP), SI											
  print.go:233			0xe7c434		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7c43a		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7c43d		0f1f00			NOPL 0(AX)												
  print.go:233			0xe7c440		e8db2d6aff		CALL fmt.Fprintf(SB)											
  control_controller.go:1490	0xe7c445		e896eb5eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1490	0xe7c44a		48898424e8000000	MOVQ AX, 0xe8(SP)											
  control_controller.go:1490	0xe7c452		4889c3			MOVQ AX, BX												
  control_controller.go:1490	0xe7c455		488d0d30d22e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1490	0xe7c45c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1490	0xe7c461		488d0518842200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1490	0xe7c468		e8b31b5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1490	0xe7c46d		488d15ec661c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1490	0xe7c474		488910			MOVQ DX, 0(AX)												
  control_controller.go:1490	0xe7c477		833dd2166e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1490	0xe7c47e		6690			NOPW													
  control_controller.go:1490	0xe7c480		740c			JE 0xe7c48e												
  control_controller.go:1490	0xe7c482		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1490	0xe7c486		e895bf5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1490	0xe7c48b		498913			MOVQ DX, 0(R11)												
  control_controller.go:1490	0xe7c48e		488d152b86fe01		LEAQ runtime.gcbits.*(SB), DX										
  control_controller.go:1490	0xe7c495		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1490	0xe7c499		488d05e0832200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1490	0xe7c4a0		488b9c24e8000000	MOVQ 0xe8(SP), BX											
  control_controller.go:1490	0xe7c4a8		488d0da5c52e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1490	0xe7c4af		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1490	0xe7c4b4		e8671b5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1490	0xe7c4b9		488d1560641c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1490	0xe7c4c0		488910			MOVQ DX, 0(AX)												
  control_controller.go:1490	0xe7c4c3		833d86166e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1490	0xe7c4ca		740c			JE 0xe7c4d8												
  control_controller.go:1490	0xe7c4cc		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1490	0xe7c4d0		e84bbf5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1490	0xe7c4d5		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1490	0xe7c4d8		488d0d91c4fe01		LEAQ CAS-Backend/biz/controller..stmp_67(SB), CX							
  control_controller.go:1490	0xe7c4df		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7c4e3		488d0d96832200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7c4ea		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe7c4f2		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  context.go:1005		0xe7c4fa		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe7c502		488d05d7f92400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7c509		488d9c24b8000000	LEAQ 0xb8(SP), BX											
  context.go:1005		0xe7c511		e88a2b59ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7c516		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7c51b		488d0d0e2dff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7c522		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7c525		488b842428010000	MOVQ 0x128(SP), AX											
  context.go:1005		0xe7c52d		e82e32f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1496	0xe7c532		e935010000		JMP 0xe7c66c												
  control_controller.go:1483	0xe7c537		488d15e2631c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1483	0xe7c53e		4889942400010000	MOVQ DX, 0x100(SP)											
  control_controller.go:1483	0xe7c546		4c8d0503c4fe01		LEAQ CAS-Backend/biz/controller..stmp_63(SB), R8							
  control_controller.go:1483	0xe7c54d		4c89842408010000	MOVQ R8, 0x108(SP)											
  print.go:314			0xe7c555		488b1d245b6902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7c55c		488d057df5fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7c563		488d8c2400010000	LEAQ 0x100(SP), CX											
  print.go:314			0xe7c56b		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7c570		4889fe			MOVQ DI, SI												
  print.go:314			0xe7c573		e8e8326aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1484	0xe7c578		e863ea5eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1484	0xe7c57d		48898424e8000000	MOVQ AX, 0xe8(SP)											
  control_controller.go:1484	0xe7c585		4889c3			MOVQ AX, BX												
  control_controller.go:1484	0xe7c588		488d0dfdd02e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1484	0xe7c58f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1484	0xe7c594		488d05e5822200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1484	0xe7c59b		0f1f440000		NOPL 0(AX)(AX*1)											
  control_controller.go:1484	0xe7c5a0		e87b1a5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1484	0xe7c5a5		488d15b4651c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1484	0xe7c5ac		488910			MOVQ DX, 0(AX)												
  control_controller.go:1484	0xe7c5af		833d9a156e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1484	0xe7c5b6		7410			JE 0xe7c5c8												
  control_controller.go:1484	0xe7c5b8		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1484	0xe7c5bc		0f1f4000		NOPL 0(AX)												
  control_controller.go:1484	0xe7c5c0		e85bbe5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1484	0xe7c5c5		498913			MOVQ DX, 0(R11)												
  control_controller.go:1484	0xe7c5c8		488d1561b2fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:1484	0xe7c5cf		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1484	0xe7c5d3		488d05a6822200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1484	0xe7c5da		488b9c24e8000000	MOVQ 0xe8(SP), BX											
  control_controller.go:1484	0xe7c5e2		488d0d6bc42e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1484	0xe7c5e9		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1484	0xe7c5ee		e82d1a5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1484	0xe7c5f3		488d1526631c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1484	0xe7c5fa		488910			MOVQ DX, 0(AX)												
  control_controller.go:1484	0xe7c5fd		833d4c156e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1484	0xe7c604		740c			JE 0xe7c612												
  control_controller.go:1484	0xe7c606		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1484	0xe7c60a		e811be5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1484	0xe7c60f		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1484	0xe7c612		488d0d47c3fe01		LEAQ CAS-Backend/biz/controller..stmp_65(SB), CX							
  control_controller.go:1484	0xe7c619		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7c61d		488d0d5c822200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7c624		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe7c62c		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  context.go:1005		0xe7c634		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe7c63c		488d059df82400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7c643		488d9c24b8000000	LEAQ 0xb8(SP), BX											
  context.go:1005		0xe7c64b		e8502a59ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7c650		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7c655		488d0dd42bff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7c65c		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7c65f		488b842428010000	MOVQ 0x128(SP), AX											
  context.go:1005		0xe7c667		e8f430f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1496	0xe7c66c		4881c418010000		ADDQ $.file+203(SB), SP											
  control_controller.go:1496	0xe7c673		5d			POPQ BP													
  control_controller.go:1496	0xe7c674		c3			RET													
  context.go:752		0xe7c675		4889442440		MOVQ AX, 0x40(SP)											
  context.go:752		0xe7c67a		48895c2448		MOVQ BX, 0x48(SP)											
  control_controller.go:1444	0xe7c67f		488d159a621c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1444	0xe7c686		48899424a8000000	MOVQ DX, 0xa8(SP)											
  control_controller.go:1444	0xe7c68e		488d153bc1fe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  control_controller.go:1444	0xe7c695		48899424b0000000	MOVQ DX, 0xb0(SP)											
  print.go:314			0xe7c69d		488b1ddc596902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7c6a4		488d0535f4fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7c6ab		488d8c24a8000000	LEAQ 0xa8(SP), CX											
  print.go:314			0xe7c6b3		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7c6b8		4889fe			MOVQ DI, SI												
  print.go:314			0xe7c6bb		0f1f440000		NOPL 0(AX)(AX*1)											
  print.go:314			0xe7c6c0		e89b316aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1445	0xe7c6c5		488b842428010000	MOVQ 0x128(SP), AX											
  control_controller.go:1445	0xe7c6cd		bb90010000		MOVL $.file+323(SB), BX											
  control_controller.go:1445	0xe7c6d2		488b4c2440		MOVQ 0x40(SP), CX											
  control_controller.go:1445	0xe7c6d7		488b7c2448		MOVQ 0x48(SP), DI											
  control_controller.go:1445	0xe7c6dc		0f1f4000		NOPL 0(AX)												
  control_controller.go:1445	0xe7c6e0		e8bbe9f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  control_controller.go:1446	0xe7c6e5		4881c418010000		ADDQ $.file+203(SB), SP											
  control_controller.go:1446	0xe7c6ec		5d			POPQ BP													
  control_controller.go:1446	0xe7c6ed		c3			RET													
  context.go:712		0xe7c6ee		4d89ca			MOVQ R9, R10												
  context.go:712		0xe7c6f1		4d21c1			ANDQ R8, R9												
  context.go:712		0xe7c6f4		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe7c6f8		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe7c6fd		0f1f00			NOPL 0(AX)												
  context.go:712		0xe7c700		4939db			CMPQ R11, BX												
  context.go:712		0xe7c703		742f			JE 0xe7c734												
  context.go:712		0xe7c705		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe7c709		4d85db			TESTQ R11, R11												
  context.go:712		0xe7c70c		75e0			JNE 0xe7c6ee												
  context.go:712		0xe7c70e		4889542450		MOVQ DX, 0x50(SP)											
  context.go:712		0xe7c713		488d0536ea1300		LEAQ CAS-Backend/biz/controller..typeAssert.13(SB), AX							
  context.go:712		0xe7c71a		e8c12b59ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe7c71f		488b542450		MOVQ 0x50(SP), DX											
  context.go:712		0xe7c724		4889c1			MOVQ AX, CX												
  context.go:752		0xe7c727		488b842410010000	MOVQ 0x110(SP), AX											
  context.go:712		0xe7c72f		e9d1f8ffff		JMP 0xe7c005												
  context.go:712		0xe7c734		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe7c739		e9c7f8ffff		JMP 0xe7c005												
  control_controller.go:1440	0xe7c73e		4889442408		MOVQ AX, 0x8(SP)											
  control_controller.go:1440	0xe7c743		e8989d5fff		CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:1440	0xe7c748		488b442408		MOVQ 0x8(SP), AX											
  control_controller.go:1440	0xe7c74d		e94ef8ffff		JMP CAS-Backend/biz/controller.Ruanjiting(SB)								
  :-1				0xe7c752		cc			INT $__subsystem__(SB)											
  :-1				0xe7c753		cc			INT $__subsystem__(SB)											
  :-1				0xe7c754		cc			INT $__subsystem__(SB)											
  :-1				0xe7c755		cc			INT $__subsystem__(SB)											
  :-1				0xe7c756		cc			INT $__subsystem__(SB)											
  :-1				0xe7c757		cc			INT $__subsystem__(SB)											
  :-1				0xe7c758		cc			INT $__subsystem__(SB)											
  :-1				0xe7c759		cc			INT $__subsystem__(SB)											
  :-1				0xe7c75a		cc			INT $__subsystem__(SB)											
  :-1				0xe7c75b		cc			INT $__subsystem__(SB)											
  :-1				0xe7c75c		cc			INT $__subsystem__(SB)											
  :-1				0xe7c75d		cc			INT $__subsystem__(SB)											
  :-1				0xe7c75e		cc			INT $__subsystem__(SB)											
  :-1				0xe7c75f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.Ruanjiting.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1453	0xe7c760		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:1453	0xe7c764		0f86ac000000		JBE 0xe7c816						
  control_controller.go:1453	0xe7c76a		55			PUSHQ BP						
  control_controller.go:1453	0xe7c76b		4889e5			MOVQ SP, BP						
  control_controller.go:1453	0xe7c76e		4883ec28		SUBQ $__major_os_version__+34(SB), SP			
  control_controller.go:1453	0xe7c772		4889442438		MOVQ AX, 0x38(SP)					
  control_controller.go:1453	0xe7c777		48895c2440		MOVQ BX, 0x40(SP)					
  control_controller.go:1453	0xe7c77c		488b7208		MOVQ 0x8(DX), SI					
  control_controller.go:1453	0xe7c780		488b7a18		MOVQ 0x18(DX), DI					
  control_controller.go:1453	0xe7c784		48897c2420		MOVQ DI, 0x20(SP)					
  control_controller.go:1453	0xe7c789		488b5210		MOVQ 0x10(DX), DX					
  control_controller.go:1453	0xe7c78d		4889542418		MOVQ DX, 0x18(SP)					
  control_controller.go:1454	0xe7c792		48837e2001		CMPQ 0x20(SI), $__minor_os_version__(SB)		
  control_controller.go:1454	0xe7c797		753d			JNE 0xe7c7d6						
  control_controller.go:1455	0xe7c799		b901000000		MOVL $__minor_os_version__(SB), CX			
  control_controller.go:1455	0xe7c79e		6690			NOPW							
  control_controller.go:1455	0xe7c7a0		e81b19faff		CALL CAS-Backend/pkg/agvcontrol.Ruanjiting(SB)		
  control_controller.go:1455	0xe7c7a5		488b542418		MOVQ 0x18(SP), DX					
  control_controller.go:1455	0xe7c7aa		8802			MOVB AL, 0(DX)						
  control_controller.go:1455	0xe7c7ac		488b542420		MOVQ 0x20(SP), DX					
  control_controller.go:1455	0xe7c7b1		48891a			MOVQ BX, 0(DX)						
  control_controller.go:1455	0xe7c7b4		833d95136e0200		CMPL runtime.writeBarrier(SB), $0x0			
  control_controller.go:1455	0xe7c7bb		7413			JE 0xe7c7d0						
  control_controller.go:1455	0xe7c7bd		0f1f00			NOPL 0(AX)						
  control_controller.go:1455	0xe7c7c0		e87bbc5fff		CALL runtime.gcWriteBarrier2(SB)			
  control_controller.go:1455	0xe7c7c5		49890b			MOVQ CX, 0(R11)						
  control_controller.go:1455	0xe7c7c8		488b7208		MOVQ 0x8(DX), SI					
  control_controller.go:1455	0xe7c7cc		49897308		MOVQ SI, 0x8(R11)					
  control_controller.go:1455	0xe7c7d0		48894a08		MOVQ CX, 0x8(DX)					
  control_controller.go:1455	0xe7c7d4		eb33			JMP 0xe7c809						
  control_controller.go:1457	0xe7c7d6		31c9			XORL CX, CX						
  control_controller.go:1457	0xe7c7d8		e8e318faff		CALL CAS-Backend/pkg/agvcontrol.Ruanjiting(SB)		
  control_controller.go:1457	0xe7c7dd		488b542418		MOVQ 0x18(SP), DX					
  control_controller.go:1457	0xe7c7e2		8802			MOVB AL, 0(DX)						
  control_controller.go:1457	0xe7c7e4		488b542420		MOVQ 0x20(SP), DX					
  control_controller.go:1457	0xe7c7e9		48891a			MOVQ BX, 0(DX)						
  control_controller.go:1457	0xe7c7ec		833d5d136e0200		CMPL runtime.writeBarrier(SB), $0x0			
  control_controller.go:1457	0xe7c7f3		7410			JE 0xe7c805						
  control_controller.go:1457	0xe7c7f5		e846bc5fff		CALL runtime.gcWriteBarrier2(SB)			
  control_controller.go:1457	0xe7c7fa		49890b			MOVQ CX, 0(R11)						
  control_controller.go:1457	0xe7c7fd		488b7208		MOVQ 0x8(DX), SI					
  control_controller.go:1457	0xe7c801		49897308		MOVQ SI, 0x8(R11)					
  control_controller.go:1457	0xe7c805		48894a08		MOVQ CX, 0x8(DX)					
  control_controller.go:1459	0xe7c809		488b02			MOVQ 0(DX), AX						
  control_controller.go:1459	0xe7c80c		488b5a08		MOVQ 0x8(DX), BX					
  control_controller.go:1459	0xe7c810		4883c428		ADDQ $__major_os_version__+34(SB), SP			
  control_controller.go:1459	0xe7c814		5d			POPQ BP							
  control_controller.go:1459	0xe7c815		c3			RET							
  control_controller.go:1453	0xe7c816		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:1453	0xe7c81b		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:1453	0xe7c820		e83b9c5fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:1453	0xe7c825		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:1453	0xe7c82a		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:1453	0xe7c82f		e92cffffff		JMP CAS-Backend/biz/controller.Ruanjiting.func1(SB)	
  :-1				0xe7c834		cc			INT $__subsystem__(SB)					
  :-1				0xe7c835		cc			INT $__subsystem__(SB)					
  :-1				0xe7c836		cc			INT $__subsystem__(SB)					
  :-1				0xe7c837		cc			INT $__subsystem__(SB)					
  :-1				0xe7c838		cc			INT $__subsystem__(SB)					
  :-1				0xe7c839		cc			INT $__subsystem__(SB)					
  :-1				0xe7c83a		cc			INT $__subsystem__(SB)					
  :-1				0xe7c83b		cc			INT $__subsystem__(SB)					
  :-1				0xe7c83c		cc			INT $__subsystem__(SB)					
  :-1				0xe7c83d		cc			INT $__subsystem__(SB)					
  :-1				0xe7c83e		cc			INT $__subsystem__(SB)					
  :-1				0xe7c83f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Pingdong(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1498	0xe7c840		4c8d6424b8		LEAQ -0x48(SP), R12											
  control_controller.go:1498	0xe7c845		4d3b6610		CMPQ R12, 0x10(R14)											
  control_controller.go:1498	0xe7c849		0f862f040000		JBE 0xe7cc7e												
  control_controller.go:1498	0xe7c84f		55			PUSHQ BP												
  control_controller.go:1498	0xe7c850		4889e5			MOVQ SP, BP												
  control_controller.go:1498	0xe7c853		4881ecc0000000		SUBQ $.file+115(SB), SP											
  context.go:712		0xe7c85a		48898424d0000000	MOVQ AX, 0xd0(SP)											
  control_controller.go:1499	0xe7c862		488d05b71c2a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1499	0xe7c869		e8324f59ff		CALL runtime.newobject(SB)										
  control_controller.go:1499	0xe7c86e		48898424b8000000	MOVQ AX, 0xb8(SP)											
  context.go:712		0xe7c876		488b0d63af1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe7c87d		488b1564af1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe7c884		4885c9			TESTQ CX, CX												
  context.go:712		0xe7c887		741c			JE 0xe7c8a5												
  context.go:712		0xe7c889		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe7c88d		488b35dce81300		MOVQ CAS-Backend/biz/controller..typeAssert.14(SB), SI							
  context.go:712		0xe7c894		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe7c897		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe7c89b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe7c8a0		e989030000		JMP 0xe7cc2e												
  context.go:752		0xe7c8a5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe7c8a9		4c8b8424d0000000	MOVQ 0xd0(SP), R8											
  context.go:752		0xe7c8b1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe7c8b5		488d0da49c1a00		LEAQ runtime.types+267616(SB), CX									
  context.go:752		0xe7c8bc		4889c7			MOVQ AX, DI												
  context.go:752		0xe7c8bf		4889d0			MOVQ DX, AX												
  context.go:752		0xe7c8c2		ffd6			CALL SI													
  control_controller.go:1501	0xe7c8c4		4885c0			TESTQ AX, AX												
  control_controller.go:1501	0xe7c8c7		0f85f0020000		JNE 0xe7cbbd												
  control_controller.go:1507	0xe7c8cd		440f117c2470		MOVUPS X15, 0x70(SP)											
  control_controller.go:1507	0xe7c8d3		488d05461c2a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1507	0xe7c8da		488b9c24b8000000	MOVQ 0xb8(SP), BX											
  control_controller.go:1507	0xe7c8e2		e8b92759ff		CALL runtime.convT(SB)											
  control_controller.go:1507	0xe7c8e7		488d0d321c2a00		LEAQ runtime.types+1283360(SB), CX									
  control_controller.go:1507	0xe7c8ee		48894c2470		MOVQ CX, 0x70(SP)											
  control_controller.go:1507	0xe7c8f3		4889442478		MOVQ AX, 0x78(SP)											
  print.go:314			0xe7c8f8		488b1d81576902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7c8ff		488d05daf1fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7c906		488d4c2470		LEAQ 0x70(SP), CX											
  print.go:314			0xe7c90b		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7c910		4889fe			MOVQ DI, SI												
  print.go:314			0xe7c913		e8482f6aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1509	0xe7c918		488d0d81030000		LEAQ CAS-Backend/biz/controller.Pingdong.func1(SB), CX							
  control_controller.go:1509	0xe7c91f		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  control_controller.go:1509	0xe7c927		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  control_controller.go:1509	0xe7c92f		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  control_controller.go:1509	0xe7c937		488b4110		MOVQ 0x10(CX), AX											
  control_controller.go:1509	0xe7c93b		488b5918		MOVQ 0x18(CX), BX											
  control_controller.go:1509	0xe7c93f		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX								
  control_controller.go:1509	0xe7c944		488dbc24a0000000	LEAQ 0xa0(SP), DI											
  control_controller.go:1509	0xe7c94c		e8af6cf9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  control_controller.go:1513	0xe7c951		4885c0			TESTQ AX, AX												
  control_controller.go:1513	0xe7c954		0f8437010000		JE 0xe7ca91												
  control_controller.go:1520	0xe7c95a		440f117c2450		MOVUPS X15, 0x50(SP)											
  control_controller.go:1520	0xe7c960		7404			JE 0xe7c966												
  control_controller.go:1520	0xe7c962		488b4008		MOVQ 0x8(AX), AX											
  control_controller.go:1520	0xe7c966		4889442450		MOVQ AX, 0x50(SP)											
  control_controller.go:1520	0xe7c96b		48895c2458		MOVQ BX, 0x58(SP)											
  print.go:233			0xe7c970		488b1d09576902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7c977		488d0562f1fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7c97e		488d0d2ef12f00		LEAQ go:string.*+79275(SB), CX										
  print.go:233			0xe7c985		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233			0xe7c98a		488d742450		LEAQ 0x50(SP), SI											
  print.go:233			0xe7c98f		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7c995		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7c998		e883286aff		CALL fmt.Fprintf(SB)											
  print.go:233			0xe7c99d		0f1f00			NOPL 0(AX)												
  control_controller.go:1521	0xe7c9a0		e83be65eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1521	0xe7c9a5		48898424b0000000	MOVQ AX, 0xb0(SP)											
  control_controller.go:1521	0xe7c9ad		4889c3			MOVQ AX, BX												
  control_controller.go:1521	0xe7c9b0		488d0dd5cc2e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1521	0xe7c9b7		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1521	0xe7c9bc		488d05bd7e2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1521	0xe7c9c3		e858165fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1521	0xe7c9c8		488d1591611c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1521	0xe7c9cf		488910			MOVQ DX, 0(AX)												
  control_controller.go:1521	0xe7c9d2		833d77116e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1521	0xe7c9d9		740d			JE 0xe7c9e8												
  control_controller.go:1521	0xe7c9db		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1521	0xe7c9df		90			NOPL													
  control_controller.go:1521	0xe7c9e0		e83bba5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1521	0xe7c9e5		498913			MOVQ DX, 0(R11)												
  control_controller.go:1521	0xe7c9e8		488d15d180fe01		LEAQ runtime.gcbits.*(SB), DX										
  control_controller.go:1521	0xe7c9ef		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1521	0xe7c9f3		488d05867e2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1521	0xe7c9fa		488b9c24b0000000	MOVQ 0xb0(SP), BX											
  control_controller.go:1521	0xe7ca02		488d0d4bc02e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1521	0xe7ca09		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1521	0xe7ca0e		e80d165fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1521	0xe7ca13		488d15065f1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1521	0xe7ca1a		488910			MOVQ DX, 0(AX)												
  control_controller.go:1521	0xe7ca1d		833d2c116e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1521	0xe7ca24		740c			JE 0xe7ca32												
  control_controller.go:1521	0xe7ca26		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1521	0xe7ca2a		e8f1b95fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1521	0xe7ca2f		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1521	0xe7ca32		488d0d67bffe01		LEAQ CAS-Backend/biz/controller..stmp_73(SB), CX							
  control_controller.go:1521	0xe7ca39		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7ca3d		488d0d3c7e2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7ca44		48898c2490000000	MOVQ CX, 0x90(SP)											
  context.go:1005		0xe7ca4c		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  context.go:1005		0xe7ca54		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005		0xe7ca5c		488d057df42400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7ca63		488d9c2490000000	LEAQ 0x90(SP), BX											
  context.go:1005		0xe7ca6b		e8302659ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7ca70		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7ca75		488d0db427ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7ca7c		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7ca7f		488b8424d0000000	MOVQ 0xd0(SP), AX											
  context.go:1005		0xe7ca87		e8d42cf8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1526	0xe7ca8c		e923010000		JMP 0xe7cbb4												
  control_controller.go:1514	0xe7ca91		488d15885e1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1514	0xe7ca98		4889542460		MOVQ DX, 0x60(SP)											
  control_controller.go:1514	0xe7ca9d		4c8d05dcbefe01		LEAQ CAS-Backend/biz/controller..stmp_69(SB), R8							
  control_controller.go:1514	0xe7caa4		4c89442468		MOVQ R8, 0x68(SP)											
  print.go:314			0xe7caa9		488b1dd0556902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7cab0		488d0529f0fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7cab7		488d4c2460		LEAQ 0x60(SP), CX											
  print.go:314			0xe7cabc		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7cac1		4889fe			MOVQ DI, SI												
  print.go:314			0xe7cac4		e8972d6aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1515	0xe7cac9		e812e55eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1515	0xe7cace		48898424b0000000	MOVQ AX, 0xb0(SP)											
  control_controller.go:1515	0xe7cad6		4889c3			MOVQ AX, BX												
  control_controller.go:1515	0xe7cad9		488d0daccb2e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1515	0xe7cae0		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1515	0xe7cae5		488d05947d2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1515	0xe7caec		e82f155fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1515	0xe7caf1		488d1568601c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1515	0xe7caf8		488910			MOVQ DX, 0(AX)												
  control_controller.go:1515	0xe7cafb		833d4e106e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1515	0xe7cb02		740c			JE 0xe7cb10												
  control_controller.go:1515	0xe7cb04		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1515	0xe7cb08		e813b95fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1515	0xe7cb0d		498913			MOVQ DX, 0(R11)												
  control_controller.go:1515	0xe7cb10		488d1519adfe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:1515	0xe7cb17		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1515	0xe7cb1b		488d055e7d2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1515	0xe7cb22		488b9c24b0000000	MOVQ 0xb0(SP), BX											
  control_controller.go:1515	0xe7cb2a		488d0d23bf2e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1515	0xe7cb31		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1515	0xe7cb36		e8e5145fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1515	0xe7cb3b		488d15de5d1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1515	0xe7cb42		488910			MOVQ DX, 0(AX)												
  control_controller.go:1515	0xe7cb45		833d04106e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1515	0xe7cb4c		740c			JE 0xe7cb5a												
  control_controller.go:1515	0xe7cb4e		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1515	0xe7cb52		e8c9b85fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1515	0xe7cb57		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1515	0xe7cb5a		488d0d2fbefe01		LEAQ CAS-Backend/biz/controller..stmp_71(SB), CX							
  control_controller.go:1515	0xe7cb61		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7cb65		488d0d147d2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7cb6c		48898c2490000000	MOVQ CX, 0x90(SP)											
  context.go:1005		0xe7cb74		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  context.go:1005		0xe7cb7c		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005		0xe7cb84		488d0555f32400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7cb8b		488d9c2490000000	LEAQ 0x90(SP), BX											
  context.go:1005		0xe7cb93		e8082559ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7cb98		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7cb9d		488d0d8c26ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7cba4		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7cba7		488b8424d0000000	MOVQ 0xd0(SP), AX											
  context.go:1005		0xe7cbaf		e8ac2bf8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1526	0xe7cbb4		4881c4c0000000		ADDQ $.file+115(SB), SP											
  control_controller.go:1526	0xe7cbbb		5d			POPQ BP													
  control_controller.go:1526	0xe7cbbc		c3			RET													
  context.go:752		0xe7cbbd		4889442438		MOVQ AX, 0x38(SP)											
  context.go:752		0xe7cbc2		48895c2440		MOVQ BX, 0x40(SP)											
  control_controller.go:1502	0xe7cbc7		488d15525d1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1502	0xe7cbce		4889942480000000	MOVQ DX, 0x80(SP)											
  control_controller.go:1502	0xe7cbd6		488d15f3bbfe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  control_controller.go:1502	0xe7cbdd		4889942488000000	MOVQ DX, 0x88(SP)											
  print.go:314			0xe7cbe5		488b1d94546902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7cbec		488d05edeefe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7cbf3		488d8c2480000000	LEAQ 0x80(SP), CX											
  print.go:314			0xe7cbfb		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7cc00		4889fe			MOVQ DI, SI												
  print.go:314			0xe7cc03		e8582c6aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1503	0xe7cc08		488b8424d0000000	MOVQ 0xd0(SP), AX											
  control_controller.go:1503	0xe7cc10		bb90010000		MOVL $.file+323(SB), BX											
  control_controller.go:1503	0xe7cc15		488b4c2438		MOVQ 0x38(SP), CX											
  control_controller.go:1503	0xe7cc1a		488b7c2440		MOVQ 0x40(SP), DI											
  control_controller.go:1503	0xe7cc1f		90			NOPL													
  control_controller.go:1503	0xe7cc20		e87be4f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  control_controller.go:1504	0xe7cc25		4881c4c0000000		ADDQ $.file+115(SB), SP											
  control_controller.go:1504	0xe7cc2c		5d			POPQ BP													
  control_controller.go:1504	0xe7cc2d		c3			RET													
  context.go:712		0xe7cc2e		4d89ca			MOVQ R9, R10												
  context.go:712		0xe7cc31		4d21c1			ANDQ R8, R9												
  context.go:712		0xe7cc34		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe7cc38		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe7cc3d		0f1f00			NOPL 0(AX)												
  context.go:712		0xe7cc40		4939db			CMPQ R11, BX												
  context.go:712		0xe7cc43		742f			JE 0xe7cc74												
  context.go:712		0xe7cc45		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe7cc49		4d85db			TESTQ R11, R11												
  context.go:712		0xe7cc4c		75e0			JNE 0xe7cc2e												
  context.go:712		0xe7cc4e		4889542448		MOVQ DX, 0x48(SP)											
  context.go:712		0xe7cc53		488d0516e51300		LEAQ CAS-Backend/biz/controller..typeAssert.14(SB), AX							
  context.go:712		0xe7cc5a		e8812659ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe7cc5f		488b542448		MOVQ 0x48(SP), DX											
  context.go:712		0xe7cc64		4889c1			MOVQ AX, CX												
  context.go:752		0xe7cc67		488b8424b8000000	MOVQ 0xb8(SP), AX											
  context.go:712		0xe7cc6f		e931fcffff		JMP 0xe7c8a5												
  context.go:712		0xe7cc74		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe7cc79		e927fcffff		JMP 0xe7c8a5												
  control_controller.go:1498	0xe7cc7e		4889442408		MOVQ AX, 0x8(SP)											
  control_controller.go:1498	0xe7cc83		e858985fff		CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:1498	0xe7cc88		488b442408		MOVQ 0x8(SP), AX											
  control_controller.go:1498	0xe7cc8d		e9aefbffff		JMP CAS-Backend/biz/controller.Pingdong(SB)								
  :-1				0xe7cc92		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc93		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc94		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc95		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc96		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc97		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc98		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc99		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc9a		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc9b		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc9c		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc9d		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc9e		cc			INT $__subsystem__(SB)											
  :-1				0xe7cc9f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.Pingdong.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1509	0xe7cca0		493b6610		CMPQ SP, 0x10(R14)						
  control_controller.go:1509	0xe7cca4		7636			JBE 0xe7ccdc							
  control_controller.go:1509	0xe7cca6		55			PUSHQ BP							
  control_controller.go:1509	0xe7cca7		4889e5			MOVQ SP, BP							
  control_controller.go:1509	0xe7ccaa		4883ec30		SUBQ $__major_os_version__+42(SB), SP				
  control_controller.go:1509	0xe7ccae		4889442440		MOVQ AX, 0x40(SP)						
  control_controller.go:1509	0xe7ccb3		48895c2448		MOVQ BX, 0x48(SP)						
  control_controller.go:1509	0xe7ccb8		488b5208		MOVQ 0x8(DX), DX						
  control_controller.go:1510	0xe7ccbc		f20f104240		MOVSD_XMM 0x40(DX), X0						
  control_controller.go:1510	0xe7ccc1		f20f104a28		MOVSD_XMM 0x28(DX), X1						
  control_controller.go:1510	0xe7ccc6		0f57d2			XORPS X2, X2							
  control_controller.go:1510	0xe7ccc9		31c9			XORL CX, CX							
  control_controller.go:1510	0xe7cccb		e81075f9ff		CALL CAS-Backend/pkg/agvcontrol.SendTranslateRequest(SB)	
  control_controller.go:1511	0xe7ccd0		4889d8			MOVQ BX, AX							
  control_controller.go:1511	0xe7ccd3		4889cb			MOVQ CX, BX							
  control_controller.go:1511	0xe7ccd6		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  control_controller.go:1511	0xe7ccda		5d			POPQ BP								
  control_controller.go:1511	0xe7ccdb		c3			RET								
  control_controller.go:1509	0xe7ccdc		4889442408		MOVQ AX, 0x8(SP)						
  control_controller.go:1509	0xe7cce1		48895c2410		MOVQ BX, 0x10(SP)						
  control_controller.go:1509	0xe7cce6		e875975fff		CALL runtime.morestack.abi0(SB)					
  control_controller.go:1509	0xe7cceb		488b442408		MOVQ 0x8(SP), AX						
  control_controller.go:1509	0xe7ccf0		488b5c2410		MOVQ 0x10(SP), BX						
  control_controller.go:1509	0xe7ccf5		eba9			JMP CAS-Backend/biz/controller.Pingdong.func1(SB)		
  :-1				0xe7ccf7		cc			INT $__subsystem__(SB)						
  :-1				0xe7ccf8		cc			INT $__subsystem__(SB)						
  :-1				0xe7ccf9		cc			INT $__subsystem__(SB)						
  :-1				0xe7ccfa		cc			INT $__subsystem__(SB)						
  :-1				0xe7ccfb		cc			INT $__subsystem__(SB)						
  :-1				0xe7ccfc		cc			INT $__subsystem__(SB)						
  :-1				0xe7ccfd		cc			INT $__subsystem__(SB)						
  :-1				0xe7ccfe		cc			INT $__subsystem__(SB)						
  :-1				0xe7ccff		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.Zhuandong(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1530	0xe7cd00		4c8d6424b8		LEAQ -0x48(SP), R12											
  control_controller.go:1530	0xe7cd05		4d3b6610		CMPQ R12, 0x10(R14)											
  control_controller.go:1530	0xe7cd09		0f862f040000		JBE 0xe7d13e												
  control_controller.go:1530	0xe7cd0f		55			PUSHQ BP												
  control_controller.go:1530	0xe7cd10		4889e5			MOVQ SP, BP												
  control_controller.go:1530	0xe7cd13		4881ecc0000000		SUBQ $.file+115(SB), SP											
  context.go:712		0xe7cd1a		48898424d0000000	MOVQ AX, 0xd0(SP)											
  control_controller.go:1531	0xe7cd22		488d05f7172a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1531	0xe7cd29		e8724a59ff		CALL runtime.newobject(SB)										
  control_controller.go:1531	0xe7cd2e		48898424b8000000	MOVQ AX, 0xb8(SP)											
  context.go:712		0xe7cd36		488b0da3aa1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe7cd3d		488b15a4aa1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe7cd44		4885c9			TESTQ CX, CX												
  context.go:712		0xe7cd47		741c			JE 0xe7cd65												
  context.go:712		0xe7cd49		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe7cd4d		488b353ce41300		MOVQ CAS-Backend/biz/controller..typeAssert.15(SB), SI							
  context.go:712		0xe7cd54		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe7cd57		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe7cd5b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe7cd60		e989030000		JMP 0xe7d0ee												
  context.go:752		0xe7cd65		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe7cd69		4c8b8424d0000000	MOVQ 0xd0(SP), R8											
  context.go:752		0xe7cd71		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe7cd75		488d0de4971a00		LEAQ runtime.types+267616(SB), CX									
  context.go:752		0xe7cd7c		4889c7			MOVQ AX, DI												
  context.go:752		0xe7cd7f		4889d0			MOVQ DX, AX												
  context.go:752		0xe7cd82		ffd6			CALL SI													
  control_controller.go:1533	0xe7cd84		4885c0			TESTQ AX, AX												
  control_controller.go:1533	0xe7cd87		0f85f0020000		JNE 0xe7d07d												
  control_controller.go:1539	0xe7cd8d		440f117c2470		MOVUPS X15, 0x70(SP)											
  control_controller.go:1539	0xe7cd93		488d0586172a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1539	0xe7cd9a		488b9c24b8000000	MOVQ 0xb8(SP), BX											
  control_controller.go:1539	0xe7cda2		e8f92259ff		CALL runtime.convT(SB)											
  control_controller.go:1539	0xe7cda7		488d0d72172a00		LEAQ runtime.types+1283360(SB), CX									
  control_controller.go:1539	0xe7cdae		48894c2470		MOVQ CX, 0x70(SP)											
  control_controller.go:1539	0xe7cdb3		4889442478		MOVQ AX, 0x78(SP)											
  print.go:314			0xe7cdb8		488b1dc1526902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7cdbf		488d051aedfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7cdc6		488d4c2470		LEAQ 0x70(SP), CX											
  print.go:314			0xe7cdcb		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7cdd0		4889fe			MOVQ DI, SI												
  print.go:314			0xe7cdd3		e8882a6aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1541	0xe7cdd8		488d0d81030000		LEAQ CAS-Backend/biz/controller.Zhuandong.func1(SB), CX							
  control_controller.go:1541	0xe7cddf		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  control_controller.go:1541	0xe7cde7		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  control_controller.go:1541	0xe7cdef		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  control_controller.go:1541	0xe7cdf7		488b4110		MOVQ 0x10(CX), AX											
  control_controller.go:1541	0xe7cdfb		488b5918		MOVQ 0x18(CX), BX											
  control_controller.go:1541	0xe7cdff		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX								
  control_controller.go:1541	0xe7ce04		488dbc24a0000000	LEAQ 0xa0(SP), DI											
  control_controller.go:1541	0xe7ce0c		e8ef67f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  control_controller.go:1544	0xe7ce11		4885c0			TESTQ AX, AX												
  control_controller.go:1544	0xe7ce14		0f8437010000		JE 0xe7cf51												
  control_controller.go:1551	0xe7ce1a		440f117c2450		MOVUPS X15, 0x50(SP)											
  control_controller.go:1551	0xe7ce20		7404			JE 0xe7ce26												
  control_controller.go:1551	0xe7ce22		488b4008		MOVQ 0x8(AX), AX											
  control_controller.go:1551	0xe7ce26		4889442450		MOVQ AX, 0x50(SP)											
  control_controller.go:1551	0xe7ce2b		48895c2458		MOVQ BX, 0x58(SP)											
  print.go:233			0xe7ce30		488b1d49526902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7ce37		488d05a2ecfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7ce3e		488d0d7eec2f00		LEAQ go:string.*+79291(SB), CX										
  print.go:233			0xe7ce45		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233			0xe7ce4a		488d742450		LEAQ 0x50(SP), SI											
  print.go:233			0xe7ce4f		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7ce55		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7ce58		e8c3236aff		CALL fmt.Fprintf(SB)											
  print.go:233			0xe7ce5d		0f1f00			NOPL 0(AX)												
  control_controller.go:1552	0xe7ce60		e87be15eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1552	0xe7ce65		48898424b0000000	MOVQ AX, 0xb0(SP)											
  control_controller.go:1552	0xe7ce6d		4889c3			MOVQ AX, BX												
  control_controller.go:1552	0xe7ce70		488d0d15c82e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1552	0xe7ce77		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1552	0xe7ce7c		488d05fd792200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1552	0xe7ce83		e898115fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1552	0xe7ce88		488d15d15c1c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1552	0xe7ce8f		488910			MOVQ DX, 0(AX)												
  control_controller.go:1552	0xe7ce92		833db70c6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1552	0xe7ce99		740d			JE 0xe7cea8												
  control_controller.go:1552	0xe7ce9b		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1552	0xe7ce9f		90			NOPL													
  control_controller.go:1552	0xe7cea0		e87bb55fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1552	0xe7cea5		498913			MOVQ DX, 0(R11)												
  control_controller.go:1552	0xe7cea8		488d15117cfe01		LEAQ runtime.gcbits.*(SB), DX										
  control_controller.go:1552	0xe7ceaf		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1552	0xe7ceb3		488d05c6792200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1552	0xe7ceba		488b9c24b0000000	MOVQ 0xb0(SP), BX											
  control_controller.go:1552	0xe7cec2		488d0d8bbb2e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1552	0xe7cec9		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1552	0xe7cece		e84d115fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1552	0xe7ced3		488d15465a1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1552	0xe7ceda		488910			MOVQ DX, 0(AX)												
  control_controller.go:1552	0xe7cedd		833d6c0c6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1552	0xe7cee4		740c			JE 0xe7cef2												
  control_controller.go:1552	0xe7cee6		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1552	0xe7ceea		e831b55fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1552	0xe7ceef		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1552	0xe7cef2		488d0dd7bafe01		LEAQ CAS-Backend/biz/controller..stmp_79(SB), CX							
  control_controller.go:1552	0xe7cef9		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7cefd		488d0d7c792200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7cf04		48898c2490000000	MOVQ CX, 0x90(SP)											
  context.go:1005		0xe7cf0c		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  context.go:1005		0xe7cf14		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005		0xe7cf1c		488d05bdef2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7cf23		488d9c2490000000	LEAQ 0x90(SP), BX											
  context.go:1005		0xe7cf2b		e8702159ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7cf30		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7cf35		488d0df422ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7cf3c		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7cf3f		488b8424d0000000	MOVQ 0xd0(SP), AX											
  context.go:1005		0xe7cf47		e81428f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1557	0xe7cf4c		e923010000		JMP 0xe7d074												
  control_controller.go:1545	0xe7cf51		488d15c8591c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1545	0xe7cf58		4889542460		MOVQ DX, 0x60(SP)											
  control_controller.go:1545	0xe7cf5d		4c8d054cbafe01		LEAQ CAS-Backend/biz/controller..stmp_75(SB), R8							
  control_controller.go:1545	0xe7cf64		4c89442468		MOVQ R8, 0x68(SP)											
  print.go:314			0xe7cf69		488b1d10516902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7cf70		488d0569ebfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7cf77		488d4c2460		LEAQ 0x60(SP), CX											
  print.go:314			0xe7cf7c		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7cf81		4889fe			MOVQ DI, SI												
  print.go:314			0xe7cf84		e8d7286aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1546	0xe7cf89		e852e05eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1546	0xe7cf8e		48898424b0000000	MOVQ AX, 0xb0(SP)											
  control_controller.go:1546	0xe7cf96		4889c3			MOVQ AX, BX												
  control_controller.go:1546	0xe7cf99		488d0decc62e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1546	0xe7cfa0		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1546	0xe7cfa5		488d05d4782200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1546	0xe7cfac		e86f105fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1546	0xe7cfb1		488d15a85b1c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1546	0xe7cfb8		488910			MOVQ DX, 0(AX)												
  control_controller.go:1546	0xe7cfbb		833d8e0b6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1546	0xe7cfc2		740c			JE 0xe7cfd0												
  control_controller.go:1546	0xe7cfc4		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1546	0xe7cfc8		e853b45fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1546	0xe7cfcd		498913			MOVQ DX, 0(R11)												
  control_controller.go:1546	0xe7cfd0		488d1559a8fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:1546	0xe7cfd7		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1546	0xe7cfdb		488d059e782200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1546	0xe7cfe2		488b9c24b0000000	MOVQ 0xb0(SP), BX											
  control_controller.go:1546	0xe7cfea		488d0d63ba2e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1546	0xe7cff1		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1546	0xe7cff6		e825105fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1546	0xe7cffb		488d151e591c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1546	0xe7d002		488910			MOVQ DX, 0(AX)												
  control_controller.go:1546	0xe7d005		833d440b6e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1546	0xe7d00c		740c			JE 0xe7d01a												
  control_controller.go:1546	0xe7d00e		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1546	0xe7d012		e809b45fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1546	0xe7d017		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1546	0xe7d01a		488d0d9fb9fe01		LEAQ CAS-Backend/biz/controller..stmp_77(SB), CX							
  control_controller.go:1546	0xe7d021		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7d025		488d0d54782200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7d02c		48898c2490000000	MOVQ CX, 0x90(SP)											
  context.go:1005		0xe7d034		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  context.go:1005		0xe7d03c		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005		0xe7d044		488d0595ee2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7d04b		488d9c2490000000	LEAQ 0x90(SP), BX											
  context.go:1005		0xe7d053		e8482059ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7d058		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7d05d		488d0dcc21ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7d064		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7d067		488b8424d0000000	MOVQ 0xd0(SP), AX											
  context.go:1005		0xe7d06f		e8ec26f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1557	0xe7d074		4881c4c0000000		ADDQ $.file+115(SB), SP											
  control_controller.go:1557	0xe7d07b		5d			POPQ BP													
  control_controller.go:1557	0xe7d07c		c3			RET													
  context.go:752		0xe7d07d		4889442438		MOVQ AX, 0x38(SP)											
  context.go:752		0xe7d082		48895c2440		MOVQ BX, 0x40(SP)											
  control_controller.go:1534	0xe7d087		488d1592581c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1534	0xe7d08e		4889942480000000	MOVQ DX, 0x80(SP)											
  control_controller.go:1534	0xe7d096		488d1533b7fe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  control_controller.go:1534	0xe7d09d		4889942488000000	MOVQ DX, 0x88(SP)											
  print.go:314			0xe7d0a5		488b1dd44f6902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7d0ac		488d052deafe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7d0b3		488d8c2480000000	LEAQ 0x80(SP), CX											
  print.go:314			0xe7d0bb		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7d0c0		4889fe			MOVQ DI, SI												
  print.go:314			0xe7d0c3		e898276aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1535	0xe7d0c8		488b8424d0000000	MOVQ 0xd0(SP), AX											
  control_controller.go:1535	0xe7d0d0		bb90010000		MOVL $.file+323(SB), BX											
  control_controller.go:1535	0xe7d0d5		488b4c2438		MOVQ 0x38(SP), CX											
  control_controller.go:1535	0xe7d0da		488b7c2440		MOVQ 0x40(SP), DI											
  control_controller.go:1535	0xe7d0df		90			NOPL													
  control_controller.go:1535	0xe7d0e0		e8bbdff7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  control_controller.go:1536	0xe7d0e5		4881c4c0000000		ADDQ $.file+115(SB), SP											
  control_controller.go:1536	0xe7d0ec		5d			POPQ BP													
  control_controller.go:1536	0xe7d0ed		c3			RET													
  context.go:712		0xe7d0ee		4d89ca			MOVQ R9, R10												
  context.go:712		0xe7d0f1		4d21c1			ANDQ R8, R9												
  context.go:712		0xe7d0f4		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe7d0f8		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe7d0fd		0f1f00			NOPL 0(AX)												
  context.go:712		0xe7d100		4939db			CMPQ R11, BX												
  context.go:712		0xe7d103		742f			JE 0xe7d134												
  context.go:712		0xe7d105		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe7d109		4d85db			TESTQ R11, R11												
  context.go:712		0xe7d10c		75e0			JNE 0xe7d0ee												
  context.go:712		0xe7d10e		4889542448		MOVQ DX, 0x48(SP)											
  context.go:712		0xe7d113		488d0576e01300		LEAQ CAS-Backend/biz/controller..typeAssert.15(SB), AX							
  context.go:712		0xe7d11a		e8c12159ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe7d11f		488b542448		MOVQ 0x48(SP), DX											
  context.go:712		0xe7d124		4889c1			MOVQ AX, CX												
  context.go:752		0xe7d127		488b8424b8000000	MOVQ 0xb8(SP), AX											
  context.go:712		0xe7d12f		e931fcffff		JMP 0xe7cd65												
  context.go:712		0xe7d134		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe7d139		e927fcffff		JMP 0xe7cd65												
  control_controller.go:1530	0xe7d13e		4889442408		MOVQ AX, 0x8(SP)											
  control_controller.go:1530	0xe7d143		e898935fff		CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:1530	0xe7d148		488b442408		MOVQ 0x8(SP), AX											
  control_controller.go:1530	0xe7d14d		e9aefbffff		JMP CAS-Backend/biz/controller.Zhuandong(SB)								
  :-1				0xe7d152		cc			INT $__subsystem__(SB)											
  :-1				0xe7d153		cc			INT $__subsystem__(SB)											
  :-1				0xe7d154		cc			INT $__subsystem__(SB)											
  :-1				0xe7d155		cc			INT $__subsystem__(SB)											
  :-1				0xe7d156		cc			INT $__subsystem__(SB)											
  :-1				0xe7d157		cc			INT $__subsystem__(SB)											
  :-1				0xe7d158		cc			INT $__subsystem__(SB)											
  :-1				0xe7d159		cc			INT $__subsystem__(SB)											
  :-1				0xe7d15a		cc			INT $__subsystem__(SB)											
  :-1				0xe7d15b		cc			INT $__subsystem__(SB)											
  :-1				0xe7d15c		cc			INT $__subsystem__(SB)											
  :-1				0xe7d15d		cc			INT $__subsystem__(SB)											
  :-1				0xe7d15e		cc			INT $__subsystem__(SB)											
  :-1				0xe7d15f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.Zhuandong.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1541	0xe7d160		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:1541	0xe7d164		7632			JBE 0xe7d198						
  control_controller.go:1541	0xe7d166		55			PUSHQ BP						
  control_controller.go:1541	0xe7d167		4889e5			MOVQ SP, BP						
  control_controller.go:1541	0xe7d16a		4883ec30		SUBQ $__major_os_version__+42(SB), SP			
  control_controller.go:1541	0xe7d16e		4889442440		MOVQ AX, 0x40(SP)					
  control_controller.go:1541	0xe7d173		48895c2448		MOVQ BX, 0x48(SP)					
  control_controller.go:1541	0xe7d178		488b5208		MOVQ 0x8(DX), DX					
  control_controller.go:1542	0xe7d17c		f20f104240		MOVSD_XMM 0x40(DX), X0					
  control_controller.go:1542	0xe7d181		f20f104a38		MOVSD_XMM 0x38(DX), X1					
  control_controller.go:1542	0xe7d186		31c9			XORL CX, CX						
  control_controller.go:1542	0xe7d188		bf01000000		MOVL $__minor_os_version__(SB), DI			
  control_controller.go:1542	0xe7d18d		e84e78f9ff		CALL CAS-Backend/pkg/agvcontrol.SendTurnCommand(SB)	
  control_controller.go:1542	0xe7d192		4883c430		ADDQ $__major_os_version__+42(SB), SP			
  control_controller.go:1542	0xe7d196		5d			POPQ BP							
  control_controller.go:1542	0xe7d197		c3			RET							
  control_controller.go:1541	0xe7d198		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:1541	0xe7d19d		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:1541	0xe7d1a2		e8b9925fff		CALL runtime.morestack.abi0(SB)				
  control_controller.go:1541	0xe7d1a7		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:1541	0xe7d1ac		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:1541	0xe7d1b1		ebad			JMP CAS-Backend/biz/controller.Zhuandong.func1(SB)	
  :-1				0xe7d1b3		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1b4		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1b5		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1b6		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1b7		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1b8		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1b9		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1ba		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1bb		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1bc		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1bd		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1be		cc			INT $__subsystem__(SB)					
  :-1				0xe7d1bf		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Yuanhuyundong(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1561	0xe7d1c0		4c8d6424b8		LEAQ -0x48(SP), R12											
  control_controller.go:1561	0xe7d1c5		4d3b6610		CMPQ R12, 0x10(R14)											
  control_controller.go:1561	0xe7d1c9		0f862f040000		JBE 0xe7d5fe												
  control_controller.go:1561	0xe7d1cf		55			PUSHQ BP												
  control_controller.go:1561	0xe7d1d0		4889e5			MOVQ SP, BP												
  control_controller.go:1561	0xe7d1d3		4881ecc0000000		SUBQ $.file+115(SB), SP											
  context.go:712		0xe7d1da		48898424d0000000	MOVQ AX, 0xd0(SP)											
  control_controller.go:1562	0xe7d1e2		488d0537132a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1562	0xe7d1e9		e8b24559ff		CALL runtime.newobject(SB)										
  control_controller.go:1562	0xe7d1ee		48898424b8000000	MOVQ AX, 0xb8(SP)											
  context.go:712		0xe7d1f6		488b0de3a51300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe7d1fd		488b15e4a51300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe7d204		4885c9			TESTQ CX, CX												
  context.go:712		0xe7d207		741c			JE 0xe7d225												
  context.go:712		0xe7d209		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe7d20d		488b359cdf1300		MOVQ CAS-Backend/biz/controller..typeAssert.16(SB), SI							
  context.go:712		0xe7d214		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe7d217		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe7d21b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe7d220		e989030000		JMP 0xe7d5ae												
  context.go:752		0xe7d225		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe7d229		4c8b8424d0000000	MOVQ 0xd0(SP), R8											
  context.go:752		0xe7d231		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe7d235		488d0d24931a00		LEAQ runtime.types+267616(SB), CX									
  context.go:752		0xe7d23c		4889c7			MOVQ AX, DI												
  context.go:752		0xe7d23f		4889d0			MOVQ DX, AX												
  context.go:752		0xe7d242		ffd6			CALL SI													
  control_controller.go:1564	0xe7d244		4885c0			TESTQ AX, AX												
  control_controller.go:1564	0xe7d247		0f85f0020000		JNE 0xe7d53d												
  control_controller.go:1570	0xe7d24d		440f117c2470		MOVUPS X15, 0x70(SP)											
  control_controller.go:1570	0xe7d253		488d05c6122a00		LEAQ runtime.types+1283360(SB), AX									
  control_controller.go:1570	0xe7d25a		488b9c24b8000000	MOVQ 0xb8(SP), BX											
  control_controller.go:1570	0xe7d262		e8391e59ff		CALL runtime.convT(SB)											
  control_controller.go:1570	0xe7d267		488d0db2122a00		LEAQ runtime.types+1283360(SB), CX									
  control_controller.go:1570	0xe7d26e		48894c2470		MOVQ CX, 0x70(SP)											
  control_controller.go:1570	0xe7d273		4889442478		MOVQ AX, 0x78(SP)											
  print.go:314			0xe7d278		488b1d014e6902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7d27f		488d055ae8fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7d286		488d4c2470		LEAQ 0x70(SP), CX											
  print.go:314			0xe7d28b		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7d290		4889fe			MOVQ DI, SI												
  print.go:314			0xe7d293		e8c8256aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1572	0xe7d298		488d0d81030000		LEAQ CAS-Backend/biz/controller.Yuanhuyundong.func1(SB), CX						
  control_controller.go:1572	0xe7d29f		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  control_controller.go:1572	0xe7d2a7		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  control_controller.go:1572	0xe7d2af		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  control_controller.go:1572	0xe7d2b7		488b4110		MOVQ 0x10(CX), AX											
  control_controller.go:1572	0xe7d2bb		488b5918		MOVQ 0x18(CX), BX											
  control_controller.go:1572	0xe7d2bf		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX								
  control_controller.go:1572	0xe7d2c4		488dbc24a0000000	LEAQ 0xa0(SP), DI											
  control_controller.go:1572	0xe7d2cc		e82f63f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  control_controller.go:1576	0xe7d2d1		4885c0			TESTQ AX, AX												
  control_controller.go:1576	0xe7d2d4		0f8437010000		JE 0xe7d411												
  control_controller.go:1583	0xe7d2da		440f117c2450		MOVUPS X15, 0x50(SP)											
  control_controller.go:1583	0xe7d2e0		7404			JE 0xe7d2e6												
  control_controller.go:1583	0xe7d2e2		488b4008		MOVQ 0x8(AX), AX											
  control_controller.go:1583	0xe7d2e6		4889442450		MOVQ AX, 0x50(SP)											
  control_controller.go:1583	0xe7d2eb		48895c2458		MOVQ BX, 0x58(SP)											
  print.go:233			0xe7d2f0		488b1d894d6902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7d2f7		488d05e2e7fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7d2fe		488d0d7d543000		LEAQ go:string.*+107130(SB), CX										
  print.go:233			0xe7d305		bf16000000		MOVL $__major_os_version__+16(SB), DI									
  print.go:233			0xe7d30a		488d742450		LEAQ 0x50(SP), SI											
  print.go:233			0xe7d30f		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7d315		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7d318		e8031f6aff		CALL fmt.Fprintf(SB)											
  print.go:233			0xe7d31d		0f1f00			NOPL 0(AX)												
  control_controller.go:1584	0xe7d320		e8bbdc5eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1584	0xe7d325		48898424b0000000	MOVQ AX, 0xb0(SP)											
  control_controller.go:1584	0xe7d32d		4889c3			MOVQ AX, BX												
  control_controller.go:1584	0xe7d330		488d0d55c32e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1584	0xe7d337		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1584	0xe7d33c		488d053d752200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1584	0xe7d343		e8d80c5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1584	0xe7d348		488d1511581c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1584	0xe7d34f		488910			MOVQ DX, 0(AX)												
  control_controller.go:1584	0xe7d352		833df7076e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1584	0xe7d359		740d			JE 0xe7d368												
  control_controller.go:1584	0xe7d35b		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1584	0xe7d35f		90			NOPL													
  control_controller.go:1584	0xe7d360		e8bbb05fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1584	0xe7d365		498913			MOVQ DX, 0(R11)												
  control_controller.go:1584	0xe7d368		488d155177fe01		LEAQ runtime.gcbits.*(SB), DX										
  control_controller.go:1584	0xe7d36f		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1584	0xe7d373		488d0506752200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1584	0xe7d37a		488b9c24b0000000	MOVQ 0xb0(SP), BX											
  control_controller.go:1584	0xe7d382		488d0dcbb62e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1584	0xe7d389		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1584	0xe7d38e		e88d0c5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1584	0xe7d393		488d1586551c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1584	0xe7d39a		488910			MOVQ DX, 0(AX)												
  control_controller.go:1584	0xe7d39d		833dac076e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1584	0xe7d3a4		740c			JE 0xe7d3b2												
  control_controller.go:1584	0xe7d3a6		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1584	0xe7d3aa		e871b05fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1584	0xe7d3af		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1584	0xe7d3b2		488d0d47b6fe01		LEAQ CAS-Backend/biz/controller..stmp_85(SB), CX							
  control_controller.go:1584	0xe7d3b9		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7d3bd		488d0dbc742200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7d3c4		48898c2490000000	MOVQ CX, 0x90(SP)											
  context.go:1005		0xe7d3cc		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  context.go:1005		0xe7d3d4		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005		0xe7d3dc		488d05fdea2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7d3e3		488d9c2490000000	LEAQ 0x90(SP), BX											
  context.go:1005		0xe7d3eb		e8b01c59ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7d3f0		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7d3f5		488d0d341eff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7d3fc		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7d3ff		488b8424d0000000	MOVQ 0xd0(SP), AX											
  context.go:1005		0xe7d407		e85423f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1589	0xe7d40c		e923010000		JMP 0xe7d534												
  control_controller.go:1577	0xe7d411		488d1508551c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1577	0xe7d418		4889542460		MOVQ DX, 0x60(SP)											
  control_controller.go:1577	0xe7d41d		4c8d05bcb5fe01		LEAQ CAS-Backend/biz/controller..stmp_81(SB), R8							
  control_controller.go:1577	0xe7d424		4c89442468		MOVQ R8, 0x68(SP)											
  print.go:314			0xe7d429		488b1d504c6902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7d430		488d05a9e6fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7d437		488d4c2460		LEAQ 0x60(SP), CX											
  print.go:314			0xe7d43c		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7d441		4889fe			MOVQ DI, SI												
  print.go:314			0xe7d444		e817246aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1578	0xe7d449		e892db5eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1578	0xe7d44e		48898424b0000000	MOVQ AX, 0xb0(SP)											
  control_controller.go:1578	0xe7d456		4889c3			MOVQ AX, BX												
  control_controller.go:1578	0xe7d459		488d0d2cc22e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1578	0xe7d460		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1578	0xe7d465		488d0514742200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1578	0xe7d46c		e8af0b5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1578	0xe7d471		488d15e8561c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1578	0xe7d478		488910			MOVQ DX, 0(AX)												
  control_controller.go:1578	0xe7d47b		833dce066e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1578	0xe7d482		740c			JE 0xe7d490												
  control_controller.go:1578	0xe7d484		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1578	0xe7d488		e893af5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1578	0xe7d48d		498913			MOVQ DX, 0(R11)												
  control_controller.go:1578	0xe7d490		488d1599a3fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:1578	0xe7d497		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1578	0xe7d49b		488d05de732200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1578	0xe7d4a2		488b9c24b0000000	MOVQ 0xb0(SP), BX											
  control_controller.go:1578	0xe7d4aa		488d0da3b52e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1578	0xe7d4b1		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1578	0xe7d4b6		e8650b5fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1578	0xe7d4bb		488d155e541c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1578	0xe7d4c2		488910			MOVQ DX, 0(AX)												
  control_controller.go:1578	0xe7d4c5		833d84066e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1578	0xe7d4cc		740c			JE 0xe7d4da												
  control_controller.go:1578	0xe7d4ce		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1578	0xe7d4d2		e849af5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1578	0xe7d4d7		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1578	0xe7d4da		488d0d0fb5fe01		LEAQ CAS-Backend/biz/controller..stmp_83(SB), CX							
  control_controller.go:1578	0xe7d4e1		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7d4e5		488d0d94732200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7d4ec		48898c2490000000	MOVQ CX, 0x90(SP)											
  context.go:1005		0xe7d4f4		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  context.go:1005		0xe7d4fc		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005		0xe7d504		488d05d5e92400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7d50b		488d9c2490000000	LEAQ 0x90(SP), BX											
  context.go:1005		0xe7d513		e8881b59ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7d518		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7d51d		488d0d0c1dff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7d524		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7d527		488b8424d0000000	MOVQ 0xd0(SP), AX											
  context.go:1005		0xe7d52f		e82c22f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1589	0xe7d534		4881c4c0000000		ADDQ $.file+115(SB), SP											
  control_controller.go:1589	0xe7d53b		5d			POPQ BP													
  control_controller.go:1589	0xe7d53c		c3			RET													
  context.go:752		0xe7d53d		4889442438		MOVQ AX, 0x38(SP)											
  context.go:752		0xe7d542		48895c2440		MOVQ BX, 0x40(SP)											
  control_controller.go:1565	0xe7d547		488d15d2531c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1565	0xe7d54e		4889942480000000	MOVQ DX, 0x80(SP)											
  control_controller.go:1565	0xe7d556		488d1573b2fe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  control_controller.go:1565	0xe7d55d		4889942488000000	MOVQ DX, 0x88(SP)											
  print.go:314			0xe7d565		488b1d144b6902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7d56c		488d056de5fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7d573		488d8c2480000000	LEAQ 0x80(SP), CX											
  print.go:314			0xe7d57b		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7d580		4889fe			MOVQ DI, SI												
  print.go:314			0xe7d583		e8d8226aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1566	0xe7d588		488b8424d0000000	MOVQ 0xd0(SP), AX											
  control_controller.go:1566	0xe7d590		bb90010000		MOVL $.file+323(SB), BX											
  control_controller.go:1566	0xe7d595		488b4c2438		MOVQ 0x38(SP), CX											
  control_controller.go:1566	0xe7d59a		488b7c2440		MOVQ 0x40(SP), DI											
  control_controller.go:1566	0xe7d59f		90			NOPL													
  control_controller.go:1566	0xe7d5a0		e8fbdaf7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  control_controller.go:1567	0xe7d5a5		4881c4c0000000		ADDQ $.file+115(SB), SP											
  control_controller.go:1567	0xe7d5ac		5d			POPQ BP													
  control_controller.go:1567	0xe7d5ad		c3			RET													
  context.go:712		0xe7d5ae		4d89ca			MOVQ R9, R10												
  context.go:712		0xe7d5b1		4d21c1			ANDQ R8, R9												
  context.go:712		0xe7d5b4		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe7d5b8		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe7d5bd		0f1f00			NOPL 0(AX)												
  context.go:712		0xe7d5c0		4939db			CMPQ R11, BX												
  context.go:712		0xe7d5c3		742f			JE 0xe7d5f4												
  context.go:712		0xe7d5c5		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe7d5c9		4d85db			TESTQ R11, R11												
  context.go:712		0xe7d5cc		75e0			JNE 0xe7d5ae												
  context.go:712		0xe7d5ce		4889542448		MOVQ DX, 0x48(SP)											
  context.go:712		0xe7d5d3		488d05d6db1300		LEAQ CAS-Backend/biz/controller..typeAssert.16(SB), AX							
  context.go:712		0xe7d5da		e8011d59ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe7d5df		488b542448		MOVQ 0x48(SP), DX											
  context.go:712		0xe7d5e4		4889c1			MOVQ AX, CX												
  context.go:752		0xe7d5e7		488b8424b8000000	MOVQ 0xb8(SP), AX											
  context.go:712		0xe7d5ef		e931fcffff		JMP 0xe7d225												
  context.go:712		0xe7d5f4		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe7d5f9		e927fcffff		JMP 0xe7d225												
  control_controller.go:1561	0xe7d5fe		4889442408		MOVQ AX, 0x8(SP)											
  control_controller.go:1561	0xe7d603		e8d88e5fff		CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:1561	0xe7d608		488b442408		MOVQ 0x8(SP), AX											
  control_controller.go:1561	0xe7d60d		e9aefbffff		JMP CAS-Backend/biz/controller.Yuanhuyundong(SB)							
  :-1				0xe7d612		cc			INT $__subsystem__(SB)											
  :-1				0xe7d613		cc			INT $__subsystem__(SB)											
  :-1				0xe7d614		cc			INT $__subsystem__(SB)											
  :-1				0xe7d615		cc			INT $__subsystem__(SB)											
  :-1				0xe7d616		cc			INT $__subsystem__(SB)											
  :-1				0xe7d617		cc			INT $__subsystem__(SB)											
  :-1				0xe7d618		cc			INT $__subsystem__(SB)											
  :-1				0xe7d619		cc			INT $__subsystem__(SB)											
  :-1				0xe7d61a		cc			INT $__subsystem__(SB)											
  :-1				0xe7d61b		cc			INT $__subsystem__(SB)											
  :-1				0xe7d61c		cc			INT $__subsystem__(SB)											
  :-1				0xe7d61d		cc			INT $__subsystem__(SB)											
  :-1				0xe7d61e		cc			INT $__subsystem__(SB)											
  :-1				0xe7d61f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.Yuanhuyundong.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1572	0xe7d620		493b6610		CMPQ SP, 0x10(R14)						
  control_controller.go:1572	0xe7d624		763b			JBE 0xe7d661							
  control_controller.go:1572	0xe7d626		55			PUSHQ BP							
  control_controller.go:1572	0xe7d627		4889e5			MOVQ SP, BP							
  control_controller.go:1572	0xe7d62a		4883ec38		SUBQ $__major_os_version__+50(SB), SP				
  control_controller.go:1572	0xe7d62e		4889442448		MOVQ AX, 0x48(SP)						
  control_controller.go:1572	0xe7d633		48895c2450		MOVQ BX, 0x50(SP)						
  control_controller.go:1572	0xe7d638		488b5208		MOVQ 0x8(DX), DX						
  control_controller.go:1573	0xe7d63c		f20f104248		MOVSD_XMM 0x48(DX), X0						
  control_controller.go:1573	0xe7d641		f20f104a40		MOVSD_XMM 0x40(DX), X1						
  control_controller.go:1573	0xe7d646		f20f105238		MOVSD_XMM 0x38(DX), X2						
  control_controller.go:1573	0xe7d64b		31c9			XORL CX, CX							
  control_controller.go:1573	0xe7d64d		31ff			XORL DI, DI							
  control_controller.go:1573	0xe7d64f		e84c83f9ff		CALL CAS-Backend/pkg/agvcontrol.SendCircularMotionCommand(SB)	
  control_controller.go:1574	0xe7d654		4889d8			MOVQ BX, AX							
  control_controller.go:1574	0xe7d657		4889cb			MOVQ CX, BX							
  control_controller.go:1574	0xe7d65a		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  control_controller.go:1574	0xe7d65e		5d			POPQ BP								
  control_controller.go:1574	0xe7d65f		90			NOPL								
  control_controller.go:1574	0xe7d660		c3			RET								
  control_controller.go:1572	0xe7d661		4889442408		MOVQ AX, 0x8(SP)						
  control_controller.go:1572	0xe7d666		48895c2410		MOVQ BX, 0x10(SP)						
  control_controller.go:1572	0xe7d66b		e8f08d5fff		CALL runtime.morestack.abi0(SB)					
  control_controller.go:1572	0xe7d670		488b442408		MOVQ 0x8(SP), AX						
  control_controller.go:1572	0xe7d675		488b5c2410		MOVQ 0x10(SP), BX						
  control_controller.go:1572	0xe7d67a		eba4			JMP CAS-Backend/biz/controller.Yuanhuyundong.func1(SB)		
  :-1				0xe7d67c		cc			INT $__subsystem__(SB)						
  :-1				0xe7d67d		cc			INT $__subsystem__(SB)						
  :-1				0xe7d67e		cc			INT $__subsystem__(SB)						
  :-1				0xe7d67f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.ChongdingweiManu(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1603	0xe7d680		4c8d642480		LEAQ -0x80(SP), R12											
  control_controller.go:1603	0xe7d685		4d3b6610		CMPQ R12, 0x10(R14)											
  control_controller.go:1603	0xe7d689		0f86cf040000		JBE 0xe7db5e												
  control_controller.go:1603	0xe7d68f		55			PUSHQ BP												
  control_controller.go:1603	0xe7d690		4889e5			MOVQ SP, BP												
  control_controller.go:1603	0xe7d693		4881ecf8000000		SUBQ $.file+171(SB), SP											
  context.go:712		0xe7d69a		4889842408010000	MOVQ AX, 0x108(SP)											
  control_controller.go:1604	0xe7d6a2		488d05170e2900		LEAQ runtime.types+1217728(SB), AX									
  control_controller.go:1604	0xe7d6a9		e8f24059ff		CALL runtime.newobject(SB)										
  control_controller.go:1604	0xe7d6ae		48898424f0000000	MOVQ AX, 0xf0(SP)											
  context.go:712		0xe7d6b6		488b0d23a11300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe7d6bd		488b1524a11300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe7d6c4		4885c9			TESTQ CX, CX												
  context.go:712		0xe7d6c7		741c			JE 0xe7d6e5												
  context.go:712		0xe7d6c9		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe7d6cd		488b35fcda1300		MOVQ CAS-Backend/biz/controller..typeAssert.17(SB), SI							
  context.go:712		0xe7d6d4		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe7d6d7		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe7d6db		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe7d6e0		e92c040000		JMP 0xe7db11												
  context.go:752		0xe7d6e5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe7d6e9		4c8b842408010000	MOVQ 0x108(SP), R8											
  context.go:752		0xe7d6f1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe7d6f5		488d0d248e1a00		LEAQ runtime.types+267552(SB), CX									
  context.go:752		0xe7d6fc		4889c7			MOVQ AX, DI												
  context.go:752		0xe7d6ff		4889d0			MOVQ DX, AX												
  context.go:752		0xe7d702		ffd6			CALL SI													
  control_controller.go:1606	0xe7d704		4885c0			TESTQ AX, AX												
  control_controller.go:1606	0xe7d707		0f8594030000		JNE 0xe7daa1												
  control_controller.go:1612	0xe7d70d		440f11bc2498000000	MOVUPS X15, 0x98(SP)											
  control_controller.go:1612	0xe7d716		488d05a30d2900		LEAQ runtime.types+1217728(SB), AX									
  control_controller.go:1612	0xe7d71d		488b9c24f0000000	MOVQ 0xf0(SP), BX											
  control_controller.go:1612	0xe7d725		e8761959ff		CALL runtime.convT(SB)											
  control_controller.go:1612	0xe7d72a		488d0d8f0d2900		LEAQ runtime.types+1217728(SB), CX									
  control_controller.go:1612	0xe7d731		48898c2498000000	MOVQ CX, 0x98(SP)											
  control_controller.go:1612	0xe7d739		48898424a0000000	MOVQ AX, 0xa0(SP)											
  print.go:314			0xe7d741		488b1d38496902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7d748		488d0591e3fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7d74f		488d8c2498000000	LEAQ 0x98(SP), CX											
  print.go:314			0xe7d757		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7d75c		4889fe			MOVQ DI, SI												
  print.go:314			0xe7d75f		90			NOPL													
  print.go:314			0xe7d760		e8fb206aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1614	0xe7d765		c644243f00		MOVB $0x0, 0x3f(SP)											
  control_controller.go:1615	0xe7d76a		440f117c2458		MOVUPS X15, 0x58(SP)											
  control_controller.go:1616	0xe7d770		488d0d09040000		LEAQ CAS-Backend/biz/controller.ChongdingweiManu.func1(SB), CX						
  control_controller.go:1616	0xe7d777		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  control_controller.go:1616	0xe7d77f		488d4c243f		LEAQ 0x3f(SP), CX											
  control_controller.go:1616	0xe7d784		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  control_controller.go:1616	0xe7d78c		488d4c2458		LEAQ 0x58(SP), CX											
  control_controller.go:1616	0xe7d791		48898c24d8000000	MOVQ CX, 0xd8(SP)											
  control_controller.go:1616	0xe7d799		488b8c24f0000000	MOVQ 0xf0(SP), CX											
  control_controller.go:1616	0xe7d7a1		48898c24e0000000	MOVQ CX, 0xe0(SP)											
  control_controller.go:1616	0xe7d7a9		488b4110		MOVQ 0x10(CX), AX											
  control_controller.go:1616	0xe7d7ad		488b5918		MOVQ 0x18(CX), BX											
  control_controller.go:1616	0xe7d7b1		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX								
  control_controller.go:1616	0xe7d7b6		488dbc24c8000000	LEAQ 0xc8(SP), DI											
  control_controller.go:1616	0xe7d7be		6690			NOPW													
  control_controller.go:1616	0xe7d7c0		e83b5ef9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  control_controller.go:1620	0xe7d7c5		4885c0			TESTQ AX, AX												
  control_controller.go:1620	0xe7d7c8		7458			JE 0xe7d822												
  control_controller.go:1621	0xe7d7ca		440f11bc2488000000	MOVUPS X15, 0x88(SP)											
  control_controller.go:1621	0xe7d7d3		7404			JE 0xe7d7d9												
  control_controller.go:1621	0xe7d7d5		488b4008		MOVQ 0x8(AX), AX											
  control_controller.go:1621	0xe7d7d9		4889842488000000	MOVQ AX, 0x88(SP)											
  control_controller.go:1621	0xe7d7e1		48899c2490000000	MOVQ BX, 0x90(SP)											
  print.go:233			0xe7d7e9		488b1d90486902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7d7f0		488d05e9e2fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7d7f7		488d0d95e22f00		LEAQ go:string.*+79243(SB), CX										
  print.go:233			0xe7d7fe		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233			0xe7d803		488db42488000000	LEAQ 0x88(SP), SI											
  print.go:233			0xe7d80b		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7d811		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7d814		e8071a6aff		CALL fmt.Fprintf(SB)											
  control_controller.go:1622	0xe7d819		4881c4f8000000		ADDQ $.file+171(SB), SP											
  control_controller.go:1622	0xe7d820		5d			POPQ BP													
  control_controller.go:1622	0xe7d821		c3			RET													
  control_controller.go:1625	0xe7d822		807c243f00		CMPB 0x3f(SP), $0x0											
  control_controller.go:1625	0xe7d827		0f8544010000		JNE 0xe7d971												
  control_controller.go:1632	0xe7d82d		440f117c2468		MOVUPS X15, 0x68(SP)											
  control_controller.go:1632	0xe7d833		488b542458		MOVQ 0x58(SP), DX											
  control_controller.go:1632	0xe7d838		4885d2			TESTQ DX, DX												
  control_controller.go:1632	0xe7d83b		7404			JE 0xe7d841												
  control_controller.go:1632	0xe7d83d		488b5208		MOVQ 0x8(DX), DX											
  control_controller.go:1632	0xe7d841		4c8b542460		MOVQ 0x60(SP), R10											
  control_controller.go:1632	0xe7d846		4889542468		MOVQ DX, 0x68(SP)											
  control_controller.go:1632	0xe7d84b		4c89542470		MOVQ R10, 0x70(SP)											
  print.go:233			0xe7d850		488b1d29486902		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe7d857		488d0582e2fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe7d85e		488d0dca193000		LEAQ go:string.*+93479(SB), CX										
  print.go:233			0xe7d865		bf13000000		MOVL $__major_os_version__+13(SB), DI									
  print.go:233			0xe7d86a		488d742468		LEAQ 0x68(SP), SI											
  print.go:233			0xe7d86f		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe7d875		4d89c1			MOVQ R8, R9												
  print.go:233			0xe7d878		e8a3196aff		CALL fmt.Fprintf(SB)											
  print.go:233			0xe7d87d		0f1f00			NOPL 0(AX)												
  control_controller.go:1633	0xe7d880		e85bd75eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1633	0xe7d885		48898424e8000000	MOVQ AX, 0xe8(SP)											
  control_controller.go:1633	0xe7d88d		4889c3			MOVQ AX, BX												
  control_controller.go:1633	0xe7d890		488d0df5bd2e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1633	0xe7d897		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1633	0xe7d89c		488d05dd6f2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1633	0xe7d8a3		e878075fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1633	0xe7d8a8		488d15b1521c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1633	0xe7d8af		488910			MOVQ DX, 0(AX)												
  control_controller.go:1633	0xe7d8b2		833d97026e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1633	0xe7d8b9		740d			JE 0xe7d8c8												
  control_controller.go:1633	0xe7d8bb		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1633	0xe7d8bf		90			NOPL													
  control_controller.go:1633	0xe7d8c0		e85bab5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1633	0xe7d8c5		498913			MOVQ DX, 0(R11)												
  control_controller.go:1633	0xe7d8c8		488d15f171fe01		LEAQ runtime.gcbits.*(SB), DX										
  control_controller.go:1633	0xe7d8cf		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1633	0xe7d8d3		488d05a66f2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1633	0xe7d8da		488b9c24e8000000	MOVQ 0xe8(SP), BX											
  control_controller.go:1633	0xe7d8e2		488d0d6bb12e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1633	0xe7d8e9		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1633	0xe7d8ee		e82d075fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1633	0xe7d8f3		488d1526501c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1633	0xe7d8fa		488910			MOVQ DX, 0(AX)												
  control_controller.go:1633	0xe7d8fd		833d4c026e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1633	0xe7d904		740c			JE 0xe7d912												
  control_controller.go:1633	0xe7d906		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1633	0xe7d90a		e811ab5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1633	0xe7d90f		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1633	0xe7d912		488d0dd7affe01		LEAQ CAS-Backend/biz/controller..stmp_51(SB), CX							
  control_controller.go:1633	0xe7d919		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7d91d		488d0d5c6f2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7d924		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe7d92c		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  context.go:1005		0xe7d934		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe7d93c		488d059de52400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7d943		488d9c24b8000000	LEAQ 0xb8(SP), BX											
  context.go:1005		0xe7d94b		e8501759ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7d950		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7d955		488d0dd418ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7d95c		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7d95f		488b842408010000	MOVQ 0x108(SP), AX											
  context.go:1005		0xe7d967		e8f41df8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1638	0xe7d96c		e926010000		JMP 0xe7da97												
  control_controller.go:1626	0xe7d971		488d15a84f1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1626	0xe7d978		4889542478		MOVQ DX, 0x78(SP)											
  control_controller.go:1626	0xe7d97d		4c8d055caffe01		LEAQ CAS-Backend/biz/controller..stmp_47(SB), R8							
  control_controller.go:1626	0xe7d984		4c89842480000000	MOVQ R8, 0x80(SP)											
  print.go:314			0xe7d98c		488b1ded466902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7d993		488d0546e1fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7d99a		488d4c2478		LEAQ 0x78(SP), CX											
  print.go:314			0xe7d99f		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7d9a4		4889fe			MOVQ DI, SI												
  print.go:314			0xe7d9a7		e8b41e6aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1627	0xe7d9ac		e82fd65eff		CALL runtime.makemap_small(SB)										
  control_controller.go:1627	0xe7d9b1		48898424e8000000	MOVQ AX, 0xe8(SP)											
  control_controller.go:1627	0xe7d9b9		4889c3			MOVQ AX, BX												
  control_controller.go:1627	0xe7d9bc		488d0dc9bc2e00		LEAQ go:string.*+4484(SB), CX										
  control_controller.go:1627	0xe7d9c3		bf04000000		MOVL $__subsystem__+1(SB), DI										
  control_controller.go:1627	0xe7d9c8		488d05b16e2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1627	0xe7d9cf		e84c065fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1627	0xe7d9d4		488d1585511c00		LEAQ runtime.types+383840(SB), DX									
  control_controller.go:1627	0xe7d9db		488910			MOVQ DX, 0(AX)												
  control_controller.go:1627	0xe7d9de		833d6b016e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1627	0xe7d9e5		740c			JE 0xe7d9f3												
  control_controller.go:1627	0xe7d9e7		488b5008		MOVQ 0x8(AX), DX											
  control_controller.go:1627	0xe7d9eb		e830aa5fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1627	0xe7d9f0		498913			MOVQ DX, 0(R11)												
  control_controller.go:1627	0xe7d9f3		488d15369efe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  control_controller.go:1627	0xe7d9fa		48895008		MOVQ DX, 0x8(AX)											
  control_controller.go:1627	0xe7d9fe		488d057b6e2200		LEAQ runtime.types+784512(SB), AX									
  control_controller.go:1627	0xe7da05		488b9c24e8000000	MOVQ 0xe8(SP), BX											
  control_controller.go:1627	0xe7da0d		488d0d40b02e00		LEAQ go:string.*+1356(SB), CX										
  control_controller.go:1627	0xe7da14		bf03000000		MOVL $__subsystem__(SB), DI										
  control_controller.go:1627	0xe7da19		e802065fff		CALL runtime.mapassign_faststr(SB)									
  control_controller.go:1627	0xe7da1e		488d15fb4e1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1627	0xe7da25		488910			MOVQ DX, 0(AX)												
  control_controller.go:1627	0xe7da28		833d21016e0200		CMPL runtime.writeBarrier(SB), $0x0									
  control_controller.go:1627	0xe7da2f		740c			JE 0xe7da3d												
  control_controller.go:1627	0xe7da31		488b4808		MOVQ 0x8(AX), CX											
  control_controller.go:1627	0xe7da35		e8e6a95fff		CALL runtime.gcWriteBarrier1(SB)									
  control_controller.go:1627	0xe7da3a		49890b			MOVQ CX, 0(R11)												
  control_controller.go:1627	0xe7da3d		488d0d9caefe01		LEAQ CAS-Backend/biz/controller..stmp_47(SB), CX							
  control_controller.go:1627	0xe7da44		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe7da48		488d0d316e2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe7da4f		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe7da57		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  context.go:1005		0xe7da5f		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe7da67		488d0572e42400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe7da6e		488d9c24b8000000	LEAQ 0xb8(SP), BX											
  context.go:1005		0xe7da76		e8251659ff		CALL runtime.convT(SB)											
  context.go:1005		0xe7da7b		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe7da80		488d0da917ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe7da87		4889c7			MOVQ AX, DI												
  context.go:1005		0xe7da8a		488b842408010000	MOVQ 0x108(SP), AX											
  context.go:1005		0xe7da92		e8c91cf8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  control_controller.go:1638	0xe7da97		4881c4f8000000		ADDQ $.file+171(SB), SP											
  control_controller.go:1638	0xe7da9e		5d			POPQ BP													
  control_controller.go:1638	0xe7da9f		90			NOPL													
  control_controller.go:1638	0xe7daa0		c3			RET													
  context.go:752		0xe7daa1		4889442440		MOVQ AX, 0x40(SP)											
  context.go:752		0xe7daa6		48895c2448		MOVQ BX, 0x48(SP)											
  control_controller.go:1607	0xe7daab		488d156e4e1c00		LEAQ runtime.types+383264(SB), DX									
  control_controller.go:1607	0xe7dab2		48899424a8000000	MOVQ DX, 0xa8(SP)											
  control_controller.go:1607	0xe7daba		488d150fadfe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  control_controller.go:1607	0xe7dac1		48899424b0000000	MOVQ DX, 0xb0(SP)											
  print.go:314			0xe7dac9		488b1db0456902		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe7dad0		488d0509e0fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe7dad7		488d8c24a8000000	LEAQ 0xa8(SP), CX											
  print.go:314			0xe7dadf		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe7dae4		4889fe			MOVQ DI, SI												
  print.go:314			0xe7dae7		e8741d6aff		CALL fmt.Fprintln(SB)											
  control_controller.go:1608	0xe7daec		488b842408010000	MOVQ 0x108(SP), AX											
  control_controller.go:1608	0xe7daf4		bb90010000		MOVL $.file+323(SB), BX											
  control_controller.go:1608	0xe7daf9		488b4c2440		MOVQ 0x40(SP), CX											
  control_controller.go:1608	0xe7dafe		488b7c2448		MOVQ 0x48(SP), DI											
  control_controller.go:1608	0xe7db03		e898d5f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  control_controller.go:1609	0xe7db08		4881c4f8000000		ADDQ $.file+171(SB), SP											
  control_controller.go:1609	0xe7db0f		5d			POPQ BP													
  control_controller.go:1609	0xe7db10		c3			RET													
  context.go:712		0xe7db11		4d89ca			MOVQ R9, R10												
  context.go:712		0xe7db14		4d21c1			ANDQ R8, R9												
  context.go:712		0xe7db17		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe7db1b		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe7db20		4939db			CMPQ R11, BX												
  context.go:712		0xe7db23		742f			JE 0xe7db54												
  context.go:712		0xe7db25		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe7db29		4d85db			TESTQ R11, R11												
  context.go:712		0xe7db2c		75e3			JNE 0xe7db11												
  context.go:712		0xe7db2e		4889542450		MOVQ DX, 0x50(SP)											
  context.go:712		0xe7db33		488d0596d61300		LEAQ CAS-Backend/biz/controller..typeAssert.17(SB), AX							
  context.go:712		0xe7db3a		e8a11759ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe7db3f		488b542450		MOVQ 0x50(SP), DX											
  context.go:712		0xe7db44		4889c1			MOVQ AX, CX												
  context.go:752		0xe7db47		488b8424f0000000	MOVQ 0xf0(SP), AX											
  context.go:712		0xe7db4f		e991fbffff		JMP 0xe7d6e5												
  context.go:712		0xe7db54		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe7db59		e987fbffff		JMP 0xe7d6e5												
  control_controller.go:1603	0xe7db5e		4889442408		MOVQ AX, 0x8(SP)											
  control_controller.go:1603	0xe7db63		e878895fff		CALL runtime.morestack_noctxt.abi0(SB)									
  control_controller.go:1603	0xe7db68		488b442408		MOVQ 0x8(SP), AX											
  control_controller.go:1603	0xe7db6d		e90efbffff		JMP CAS-Backend/biz/controller.ChongdingweiManu(SB)							
  :-1				0xe7db72		cc			INT $__subsystem__(SB)											
  :-1				0xe7db73		cc			INT $__subsystem__(SB)											
  :-1				0xe7db74		cc			INT $__subsystem__(SB)											
  :-1				0xe7db75		cc			INT $__subsystem__(SB)											
  :-1				0xe7db76		cc			INT $__subsystem__(SB)											
  :-1				0xe7db77		cc			INT $__subsystem__(SB)											
  :-1				0xe7db78		cc			INT $__subsystem__(SB)											
  :-1				0xe7db79		cc			INT $__subsystem__(SB)											
  :-1				0xe7db7a		cc			INT $__subsystem__(SB)											
  :-1				0xe7db7b		cc			INT $__subsystem__(SB)											
  :-1				0xe7db7c		cc			INT $__subsystem__(SB)											
  :-1				0xe7db7d		cc			INT $__subsystem__(SB)											
  :-1				0xe7db7e		cc			INT $__subsystem__(SB)											
  :-1				0xe7db7f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.ChongdingweiManu.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:1616	0xe7db80		493b6610		CMPQ SP, 0x10(R14)						
  control_controller.go:1616	0xe7db84		767c			JBE 0xe7dc02							
  control_controller.go:1616	0xe7db86		55			PUSHQ BP							
  control_controller.go:1616	0xe7db87		4889e5			MOVQ SP, BP							
  control_controller.go:1616	0xe7db8a		4883ec48		SUBQ $__major_os_version__+66(SB), SP				
  control_controller.go:1616	0xe7db8e		4889442458		MOVQ AX, 0x58(SP)						
  control_controller.go:1616	0xe7db93		48895c2460		MOVQ BX, 0x60(SP)						
  control_controller.go:1616	0xe7db98		488b7218		MOVQ 0x18(DX), SI						
  control_controller.go:1616	0xe7db9c		488b7a10		MOVQ 0x10(DX), DI						
  control_controller.go:1616	0xe7dba0		48897c2440		MOVQ DI, 0x40(SP)						
  control_controller.go:1616	0xe7dba5		488b5208		MOVQ 0x8(DX), DX						
  control_controller.go:1616	0xe7dba9		4889542438		MOVQ DX, 0x38(SP)						
  control_controller.go:1617	0xe7dbae		f20f104620		MOVSD_XMM 0x20(SI), X0						
  control_controller.go:1617	0xe7dbb3		f20f104e28		MOVSD_XMM 0x28(SI), X1						
  control_controller.go:1617	0xe7dbb8		f20f105630		MOVSD_XMM 0x30(SI), X2						
  control_controller.go:1617	0xe7dbbd		f20f105e38		MOVSD_XMM 0x38(SI), X3						
  control_controller.go:1617	0xe7dbc2		31c9			XORL CX, CX							
  control_controller.go:1617	0xe7dbc4		e8f7f4f9ff		CALL CAS-Backend/pkg/agvcontrol.Chongdingweiapi(SB)		
  control_controller.go:1617	0xe7dbc9		488b542438		MOVQ 0x38(SP), DX						
  control_controller.go:1617	0xe7dbce		8802			MOVB AL, 0(DX)							
  control_controller.go:1617	0xe7dbd0		488b542440		MOVQ 0x40(SP), DX						
  control_controller.go:1617	0xe7dbd5		48891a			MOVQ BX, 0(DX)							
  control_controller.go:1617	0xe7dbd8		833d71ff6d0200		CMPL runtime.writeBarrier(SB), $0x0				
  control_controller.go:1617	0xe7dbdf		90			NOPL								
  control_controller.go:1617	0xe7dbe0		7410			JE 0xe7dbf2							
  control_controller.go:1617	0xe7dbe2		e859a85fff		CALL runtime.gcWriteBarrier2(SB)				
  control_controller.go:1617	0xe7dbe7		49890b			MOVQ CX, 0(R11)							
  control_controller.go:1617	0xe7dbea		488b7208		MOVQ 0x8(DX), SI						
  control_controller.go:1617	0xe7dbee		49897308		MOVQ SI, 0x8(R11)						
  control_controller.go:1617	0xe7dbf2		48894a08		MOVQ CX, 0x8(DX)						
  control_controller.go:1618	0xe7dbf6		4889d8			MOVQ BX, AX							
  control_controller.go:1618	0xe7dbf9		4889cb			MOVQ CX, BX							
  control_controller.go:1618	0xe7dbfc		4883c448		ADDQ $__major_os_version__+66(SB), SP				
  control_controller.go:1618	0xe7dc00		5d			POPQ BP								
  control_controller.go:1618	0xe7dc01		c3			RET								
  control_controller.go:1616	0xe7dc02		4889442408		MOVQ AX, 0x8(SP)						
  control_controller.go:1616	0xe7dc07		48895c2410		MOVQ BX, 0x10(SP)						
  control_controller.go:1616	0xe7dc0c		e84f885fff		CALL runtime.morestack.abi0(SB)					
  control_controller.go:1616	0xe7dc11		488b442408		MOVQ 0x8(SP), AX						
  control_controller.go:1616	0xe7dc16		488b5c2410		MOVQ 0x10(SP), BX						
  control_controller.go:1616	0xe7dc1b		0f1f440000		NOPL 0(AX)(AX*1)						
  control_controller.go:1616	0xe7dc20		e95bffffff		JMP CAS-Backend/biz/controller.ChongdingweiManu.func1(SB)	
  :-1				0xe7dc25		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc26		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc27		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc28		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc29		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc2a		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc2b		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc2c		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc2d		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc2e		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc2f		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc30		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc31		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc32		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc33		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc34		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc35		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc36		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc37		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc38		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc39		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc3a		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc3b		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc3c		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc3d		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc3e		cc			INT $__subsystem__(SB)						
  :-1				0xe7dc3f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.Shifang.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:407	0xe91680		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:407	0xe91684		761d			JBE 0xe916a3						
  control_controller.go:407	0xe91686		55			PUSHQ BP						
  control_controller.go:407	0xe91687		4889e5			MOVQ SP, BP						
  control_controller.go:407	0xe9168a		4883ec10		SUBQ $__major_os_version__+10(SB), SP			
  control_controller.go:407	0xe9168e		4889442420		MOVQ AX, 0x20(SP)					
  control_controller.go:407	0xe91693		48895c2428		MOVQ BX, 0x28(SP)					
  control_controller.go:408	0xe91698		e86360f8ff		CALL CAS-Backend/pkg/agvcontrol.UnlockControl(SB)	
  control_controller.go:408	0xe9169d		4883c410		ADDQ $__major_os_version__+10(SB), SP			
  control_controller.go:408	0xe916a1		5d			POPQ BP							
  control_controller.go:408	0xe916a2		c3			RET							
  control_controller.go:407	0xe916a3		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:407	0xe916a8		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:407	0xe916ad		e82e4e5eff		CALL runtime.morestack_noctxt.abi0(SB)			
  control_controller.go:407	0xe916b2		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:407	0xe916b7		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:407	0xe916bc		ebc2			JMP CAS-Backend/biz/controller.Shifang.func1(SB)	
  :-1				0xe916be		cc			INT $__subsystem__(SB)					
  :-1				0xe916bf		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Guiling.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:364	0xe916c0		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:364	0xe916c4		7632			JBE 0xe916f8						
  control_controller.go:364	0xe916c6		55			PUSHQ BP						
  control_controller.go:364	0xe916c7		4889e5			MOVQ SP, BP						
  control_controller.go:364	0xe916ca		4883ec40		SUBQ $__major_os_version__+58(SB), SP			
  control_controller.go:364	0xe916ce		4889442450		MOVQ AX, 0x50(SP)					
  control_controller.go:364	0xe916d3		48895c2458		MOVQ BX, 0x58(SP)					
  control_controller.go:365	0xe916d8		0f57c0			XORPS X0, X0						
  control_controller.go:365	0xe916db		0f10c8			MOVUPS X0, X1						
  control_controller.go:365	0xe916de		0f10d0			MOVUPS X0, X2						
  control_controller.go:365	0xe916e1		0f10d8			MOVUPS X0, X3						
  control_controller.go:365	0xe916e4		48c7c1feffffff		MOVQ $-0x2, CX						
  control_controller.go:365	0xe916eb		31ff			XORL DI, DI						
  control_controller.go:365	0xe916ed		e8ae85f8ff		CALL CAS-Backend/pkg/agvcontrol.SendMotionCommand(SB)	
  control_controller.go:365	0xe916f2		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  control_controller.go:365	0xe916f6		5d			POPQ BP							
  control_controller.go:365	0xe916f7		c3			RET							
  control_controller.go:364	0xe916f8		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:364	0xe916fd		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:364	0xe91702		e8d94d5eff		CALL runtime.morestack_noctxt.abi0(SB)			
  control_controller.go:364	0xe91707		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:364	0xe9170c		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:364	0xe91711		ebad			JMP CAS-Backend/biz/controller.Guiling.func1(SB)	
  :-1				0xe91713		cc			INT $__subsystem__(SB)					
  :-1				0xe91714		cc			INT $__subsystem__(SB)					
  :-1				0xe91715		cc			INT $__subsystem__(SB)					
  :-1				0xe91716		cc			INT $__subsystem__(SB)					
  :-1				0xe91717		cc			INT $__subsystem__(SB)					
  :-1				0xe91718		cc			INT $__subsystem__(SB)					
  :-1				0xe91719		cc			INT $__subsystem__(SB)					
  :-1				0xe9171a		cc			INT $__subsystem__(SB)					
  :-1				0xe9171b		cc			INT $__subsystem__(SB)					
  :-1				0xe9171c		cc			INT $__subsystem__(SB)					
  :-1				0xe9171d		cc			INT $__subsystem__(SB)					
  :-1				0xe9171e		cc			INT $__subsystem__(SB)					
  :-1				0xe9171f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Turn_left.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:310	0xe91720		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:310	0xe91724		761d			JBE 0xe91743						
  control_controller.go:310	0xe91726		55			PUSHQ BP						
  control_controller.go:310	0xe91727		4889e5			MOVQ SP, BP						
  control_controller.go:310	0xe9172a		4883ec10		SUBQ $__major_os_version__+10(SB), SP			
  control_controller.go:310	0xe9172e		4889442420		MOVQ AX, 0x20(SP)					
  control_controller.go:310	0xe91733		48895c2428		MOVQ BX, 0x28(SP)					
  control_controller.go:311	0xe91738		e8e381f8ff		CALL CAS-Backend/pkg/agvcontrol.SendStopCommand(SB)	
  control_controller.go:311	0xe9173d		4883c410		ADDQ $__major_os_version__+10(SB), SP			
  control_controller.go:311	0xe91741		5d			POPQ BP							
  control_controller.go:311	0xe91742		c3			RET							
  control_controller.go:310	0xe91743		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:310	0xe91748		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:310	0xe9174d		e88e4d5eff		CALL runtime.morestack_noctxt.abi0(SB)			
  control_controller.go:310	0xe91752		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:310	0xe91757		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:310	0xe9175c		ebc2			JMP CAS-Backend/biz/controller.Turn_left.func2(SB)	
  :-1				0xe9175e		cc			INT $__subsystem__(SB)					
  :-1				0xe9175f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Turn_right.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:248	0xe91760		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:248	0xe91764		761d			JBE 0xe91783						
  control_controller.go:248	0xe91766		55			PUSHQ BP						
  control_controller.go:248	0xe91767		4889e5			MOVQ SP, BP						
  control_controller.go:248	0xe9176a		4883ec10		SUBQ $__major_os_version__+10(SB), SP			
  control_controller.go:248	0xe9176e		4889442420		MOVQ AX, 0x20(SP)					
  control_controller.go:248	0xe91773		48895c2428		MOVQ BX, 0x28(SP)					
  control_controller.go:249	0xe91778		e8a381f8ff		CALL CAS-Backend/pkg/agvcontrol.SendStopCommand(SB)	
  control_controller.go:249	0xe9177d		4883c410		ADDQ $__major_os_version__+10(SB), SP			
  control_controller.go:249	0xe91781		5d			POPQ BP							
  control_controller.go:249	0xe91782		c3			RET							
  control_controller.go:248	0xe91783		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:248	0xe91788		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:248	0xe9178d		e84e4d5eff		CALL runtime.morestack_noctxt.abi0(SB)			
  control_controller.go:248	0xe91792		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:248	0xe91797		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:248	0xe9179c		ebc2			JMP CAS-Backend/biz/controller.Turn_right.func2(SB)	
  :-1				0xe9179e		cc			INT $__subsystem__(SB)					
  :-1				0xe9179f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Move_back.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:187	0xe917a0		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:187	0xe917a4		761d			JBE 0xe917c3						
  control_controller.go:187	0xe917a6		55			PUSHQ BP						
  control_controller.go:187	0xe917a7		4889e5			MOVQ SP, BP						
  control_controller.go:187	0xe917aa		4883ec10		SUBQ $__major_os_version__+10(SB), SP			
  control_controller.go:187	0xe917ae		4889442420		MOVQ AX, 0x20(SP)					
  control_controller.go:187	0xe917b3		48895c2428		MOVQ BX, 0x28(SP)					
  control_controller.go:188	0xe917b8		e86381f8ff		CALL CAS-Backend/pkg/agvcontrol.SendStopCommand(SB)	
  control_controller.go:188	0xe917bd		4883c410		ADDQ $__major_os_version__+10(SB), SP			
  control_controller.go:188	0xe917c1		5d			POPQ BP							
  control_controller.go:188	0xe917c2		c3			RET							
  control_controller.go:187	0xe917c3		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:187	0xe917c8		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:187	0xe917cd		e80e4d5eff		CALL runtime.morestack_noctxt.abi0(SB)			
  control_controller.go:187	0xe917d2		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:187	0xe917d7		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:187	0xe917dc		ebc2			JMP CAS-Backend/biz/controller.Move_back.func2(SB)	
  :-1				0xe917de		cc			INT $__subsystem__(SB)					
  :-1				0xe917df		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Move_forword.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/control_controller.go
  control_controller.go:88	0xe917e0		493b6610		CMPQ SP, 0x10(R14)					
  control_controller.go:88	0xe917e4		761d			JBE 0xe91803						
  control_controller.go:88	0xe917e6		55			PUSHQ BP						
  control_controller.go:88	0xe917e7		4889e5			MOVQ SP, BP						
  control_controller.go:88	0xe917ea		4883ec10		SUBQ $__major_os_version__+10(SB), SP			
  control_controller.go:88	0xe917ee		4889442420		MOVQ AX, 0x20(SP)					
  control_controller.go:88	0xe917f3		48895c2428		MOVQ BX, 0x28(SP)					
  control_controller.go:89	0xe917f8		e82381f8ff		CALL CAS-Backend/pkg/agvcontrol.SendStopCommand(SB)	
  control_controller.go:89	0xe917fd		4883c410		ADDQ $__major_os_version__+10(SB), SP			
  control_controller.go:89	0xe91801		5d			POPQ BP							
  control_controller.go:89	0xe91802		c3			RET							
  control_controller.go:88	0xe91803		4889442408		MOVQ AX, 0x8(SP)					
  control_controller.go:88	0xe91808		48895c2410		MOVQ BX, 0x10(SP)					
  control_controller.go:88	0xe9180d		e8ce4c5eff		CALL runtime.morestack_noctxt.abi0(SB)			
  control_controller.go:88	0xe91812		488b442408		MOVQ 0x8(SP), AX					
  control_controller.go:88	0xe91817		488b5c2410		MOVQ 0x10(SP), BX					
  control_controller.go:88	0xe9181c		ebc2			JMP CAS-Backend/biz/controller.Move_forword.func2(SB)	
  :-1				0xe9181e		cc			INT $__subsystem__(SB)					
  :-1				0xe9181f		cc			INT $__subsystem__(SB)					

