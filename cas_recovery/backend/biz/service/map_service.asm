TEXT CAS-Backend/biz/service.SlAllMap(SB) D:/CodeEnv_code/cas-backend/biz/service/map_service.go
  map_service.go:8	0xe48ea0		493b6610		CMPQ SP, 0x10(R14)				
  map_service.go:8	0xe48ea4		0f86b3000000		JBE 0xe48f5d					
  map_service.go:8	0xe48eaa		55			PUSHQ BP					
  map_service.go:8	0xe48eab		4889e5			MOVQ SP, BP					
  map_service.go:8	0xe48eae		4883ec58		SUBQ $.file+11(SB), SP				
  map_service.go:8	0xe48eb2		48894c2478		MOVQ CX, 0x78(SP)				
  map_service.go:10	0xe48eb7		e8c4c9b4ff		CALL CAS-Backend/biz/dao.SelectALL_map(SB)	
  map_service.go:10	0xe48ebc		0f1f4000		NOPL 0(AX)					
  map_service.go:10	0xe48ec0		84c0			TESTL AL, AL					
  map_service.go:11	0xe48ec2		7460			JE 0xe48f24					
  map_service.go:10	0xe48ec4		48895c2438		MOVQ BX, 0x38(SP)				
  map_service.go:10	0xe48ec9		48897c2440		MOVQ DI, 0x40(SP)				
  map_service.go:10	0xe48ece		4889742448		MOVQ SI, 0x48(SP)				
  map_service.go:10	0xe48ed3		48894c2450		MOVQ CX, 0x50(SP)				
  print.go:233		0xe48ed8		488b1da1916c02		MOVQ os.Stdout(SB), BX				
  map_service.go:12	0xe48edf		90			NOPL						
  print.go:233		0xe48ee0		488d05f92b0202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe48ee7		488d0dba4e3300		LEAQ go:string.*+88224(SB), CX			
  print.go:233		0xe48eee		bf12000000		MOVL $__major_os_version__+12(SB), DI		
  print.go:233		0xe48ef3		31f6			XORL SI, SI					
  print.go:233		0xe48ef5		4531c0			XORL R8, R8					
  print.go:233		0xe48ef8		4d89c1			MOVQ R8, R9					
  print.go:233		0xe48efb		0f1f440000		NOPL 0(AX)(AX*1)				
  print.go:233		0xe48f00		e81b636dff		CALL fmt.Fprintf(SB)				
  map_service.go:13	0xe48f05		b801000000		MOVL $__minor_os_version__(SB), AX		
  map_service.go:13	0xe48f0a		488b5c2438		MOVQ 0x38(SP), BX				
  map_service.go:13	0xe48f0f		488b4c2450		MOVQ 0x50(SP), CX				
  map_service.go:13	0xe48f14		488b7c2440		MOVQ 0x40(SP), DI				
  map_service.go:13	0xe48f19		488b742448		MOVQ 0x48(SP), SI				
  map_service.go:13	0xe48f1e		4883c458		ADDQ $.file+11(SB), SP				
  map_service.go:13	0xe48f22		5d			POPQ BP						
  map_service.go:13	0xe48f23		c3			RET						
  print.go:233		0xe48f24		488b1d55916c02		MOVQ os.Stdout(SB), BX				
  map_service.go:16	0xe48f2b		90			NOPL						
  print.go:233		0xe48f2c		488d05ad2b0202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe48f33		488d0d804e3300		LEAQ go:string.*+88242(SB), CX			
  print.go:233		0xe48f3a		bf12000000		MOVL $__major_os_version__+12(SB), DI		
  print.go:233		0xe48f3f		31f6			XORL SI, SI					
  print.go:233		0xe48f41		4531c0			XORL R8, R8					
  print.go:233		0xe48f44		4d89c1			MOVQ R8, R9					
  print.go:233		0xe48f47		e8d4626dff		CALL fmt.Fprintf(SB)				
  map_service.go:17	0xe48f4c		31c0			XORL AX, AX					
  map_service.go:17	0xe48f4e		31db			XORL BX, BX					
  map_service.go:17	0xe48f50		31c9			XORL CX, CX					
  map_service.go:17	0xe48f52		31ff			XORL DI, DI					
  map_service.go:17	0xe48f54		4889fe			MOVQ DI, SI					
  map_service.go:17	0xe48f57		4883c458		ADDQ $.file+11(SB), SP				
  map_service.go:17	0xe48f5b		5d			POPQ BP						
  map_service.go:17	0xe48f5c		c3			RET						
  map_service.go:8	0xe48f5d		4889442408		MOVQ AX, 0x8(SP)				
  map_service.go:8	0xe48f62		48895c2410		MOVQ BX, 0x10(SP)				
  map_service.go:8	0xe48f67		48894c2418		MOVQ CX, 0x18(SP)				
  map_service.go:8	0xe48f6c		48897c2420		MOVQ DI, 0x20(SP)				
  map_service.go:8	0xe48f71		e86ad562ff		CALL runtime.morestack_noctxt.abi0(SB)		
  map_service.go:8	0xe48f76		488b442408		MOVQ 0x8(SP), AX				
  map_service.go:8	0xe48f7b		488b5c2410		MOVQ 0x10(SP), BX				
  map_service.go:8	0xe48f80		488b4c2418		MOVQ 0x18(SP), CX				
  map_service.go:8	0xe48f85		488b7c2420		MOVQ 0x20(SP), DI				
  map_service.go:8	0xe48f8a		e911ffffff		JMP CAS-Backend/biz/service.SlAllMap(SB)	
  :-1			0xe48f8f		cc			INT $__subsystem__(SB)				
  :-1			0xe48f90		cc			INT $__subsystem__(SB)				
  :-1			0xe48f91		cc			INT $__subsystem__(SB)				
  :-1			0xe48f92		cc			INT $__subsystem__(SB)				
  :-1			0xe48f93		cc			INT $__subsystem__(SB)				
  :-1			0xe48f94		cc			INT $__subsystem__(SB)				
  :-1			0xe48f95		cc			INT $__subsystem__(SB)				
  :-1			0xe48f96		cc			INT $__subsystem__(SB)				
  :-1			0xe48f97		cc			INT $__subsystem__(SB)				
  :-1			0xe48f98		cc			INT $__subsystem__(SB)				
  :-1			0xe48f99		cc			INT $__subsystem__(SB)				
  :-1			0xe48f9a		cc			INT $__subsystem__(SB)				
  :-1			0xe48f9b		cc			INT $__subsystem__(SB)				
  :-1			0xe48f9c		cc			INT $__subsystem__(SB)				
  :-1			0xe48f9d		cc			INT $__subsystem__(SB)				
  :-1			0xe48f9e		cc			INT $__subsystem__(SB)				
  :-1			0xe48f9f		cc			INT $__subsystem__(SB)				

