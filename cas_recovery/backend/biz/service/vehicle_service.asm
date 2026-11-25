TEXT CAS-Backend/biz/service.AddVeh(SB) D:/CodeEnv_code/cas-backend/biz/service/vehicle_service.go
  vehicle_service.go:8	0xe49d20		4c8d6424e0		LEAQ -0x20(SP), R12				
  vehicle_service.go:8	0xe49d25		4d3b6610		CMPQ R12, 0x10(R14)				
  vehicle_service.go:8	0xe49d29		0f8652010000		JBE 0xe49e81					
  vehicle_service.go:8	0xe49d2f		55			PUSHQ BP					
  vehicle_service.go:8	0xe49d30		4889e5			MOVQ SP, BP					
  vehicle_service.go:8	0xe49d33		4881ec98000000		SUBQ $.file+75(SB), SP				
  vehicle_service.go:9	0xe49d3a		488b8424a8000000	MOVQ 0xa8(SP), AX				
  vehicle_service.go:9	0xe49d42		488b9c24b0000000	MOVQ 0xb0(SP), BX				
  vehicle_service.go:9	0xe49d4a		e89118b5ff		CALL CAS-Backend/biz/dao.IsExist_veh(SB)	
  vehicle_service.go:9	0xe49d4f		84c0			TESTL AL, AL					
  vehicle_service.go:9	0xe49d51		0f85ba000000		JNE 0xe49e11					
  vehicle_service.go:14	0xe49d57		488b8424a8000000	MOVQ 0xa8(SP), AX				
  vehicle_service.go:14	0xe49d5f		48890424		MOVQ AX, 0(SP)					
  vehicle_service.go:14	0xe49d63		488d7c2408		LEAQ 0x8(SP), DI				
  vehicle_service.go:14	0xe49d68		488db424b0000000	LEAQ 0xb0(SP), SI				
  vehicle_service.go:14	0xe49d70		660f1f840000000000	NOPW 0(AX)(AX*1)				
  vehicle_service.go:14	0xe49d79		0f1f8000000000		NOPL 0(AX)					
  vehicle_service.go:14	0xe49d80		48896c24f0		MOVQ BP, -0x10(SP)				
  vehicle_service.go:14	0xe49d85		488d6c24f0		LEAQ -0x10(SP), BP				
  vehicle_service.go:14	0xe49d8a		e8aff062ff		CALL 0x478e3e					
  vehicle_service.go:14	0xe49d8f		488b6d00		MOVQ 0(BP), BP					
  vehicle_service.go:14	0xe49d93		e82809b5ff		CALL CAS-Backend/biz/dao.Insert_veh(SB)		
  vehicle_service.go:14	0xe49d98		84c0			TESTL AL, AL					
  vehicle_service.go:14	0xe49d9a		746a			JE 0xe49e06					
  vehicle_service.go:15	0xe49d9c		440f117c2478		MOVUPS X15, 0x78(SP)				
  vehicle_service.go:15	0xe49da2		488b8424a8000000	MOVQ 0xa8(SP), AX				
  vehicle_service.go:15	0xe49daa		488b9c24b0000000	MOVQ 0xb0(SP), BX				
  vehicle_service.go:15	0xe49db2		e8690362ff		CALL runtime.convTstring(SB)			
  vehicle_service.go:15	0xe49db7		488d0d628b1f00		LEAQ runtime.types+383264(SB), CX		
  vehicle_service.go:15	0xe49dbe		48894c2478		MOVQ CX, 0x78(SP)				
  vehicle_service.go:15	0xe49dc3		4889842480000000	MOVQ AX, 0x80(SP)				
  print.go:233		0xe49dcb		488b1dae826c02		MOVQ os.Stdout(SB), BX				
  print.go:233		0xe49dd2		488d05071d0202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe49dd9		488d0d3a923300		LEAQ go:string.*+109330(SB), CX			
  print.go:233		0xe49de0		bf16000000		MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0xe49de5		488d742478		LEAQ 0x78(SP), SI				
  print.go:233		0xe49dea		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0xe49df0		4d89c1			MOVQ R8, R9					
  print.go:233		0xe49df3		e828546dff		CALL fmt.Fprintf(SB)				
  vehicle_service.go:16	0xe49df8		b801000000		MOVL $__minor_os_version__(SB), AX		
  vehicle_service.go:16	0xe49dfd		4881c498000000		ADDQ $.file+75(SB), SP				
  vehicle_service.go:16	0xe49e04		5d			POPQ BP						
  vehicle_service.go:16	0xe49e05		c3			RET						
  vehicle_service.go:18	0xe49e06		31c0			XORL AX, AX					
  vehicle_service.go:18	0xe49e08		4881c498000000		ADDQ $.file+75(SB), SP				
  vehicle_service.go:18	0xe49e0f		5d			POPQ BP						
  vehicle_service.go:18	0xe49e10		c3			RET						
  vehicle_service.go:10	0xe49e11		440f11bc2488000000	MOVUPS X15, 0x88(SP)				
  vehicle_service.go:10	0xe49e1a		488b8424a8000000	MOVQ 0xa8(SP), AX				
  vehicle_service.go:10	0xe49e22		488b9c24b0000000	MOVQ 0xb0(SP), BX				
  vehicle_service.go:10	0xe49e2a		e8f10262ff		CALL runtime.convTstring(SB)			
  vehicle_service.go:10	0xe49e2f		488d0dea8a1f00		LEAQ runtime.types+383264(SB), CX		
  vehicle_service.go:10	0xe49e36		48898c2488000000	MOVQ CX, 0x88(SP)				
  vehicle_service.go:10	0xe49e3e		4889842490000000	MOVQ AX, 0x90(SP)				
  print.go:233		0xe49e46		488b1d33826c02		MOVQ os.Stdout(SB), BX				
  print.go:233		0xe49e4d		488d058c1c0202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe49e54		488d0dd5753400		LEAQ go:string.*+167720(SB), CX			
  print.go:233		0xe49e5b		bf23000000		MOVL $__major_os_version__+29(SB), DI		
  print.go:233		0xe49e60		488db42488000000	LEAQ 0x88(SP), SI				
  print.go:233		0xe49e68		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0xe49e6e		4d89c1			MOVQ R8, R9					
  print.go:233		0xe49e71		e8aa536dff		CALL fmt.Fprintf(SB)				
  vehicle_service.go:11	0xe49e76		31c0			XORL AX, AX					
  vehicle_service.go:11	0xe49e78		4881c498000000		ADDQ $.file+75(SB), SP				
  vehicle_service.go:11	0xe49e7f		5d			POPQ BP						
  vehicle_service.go:11	0xe49e80		c3			RET						
  vehicle_service.go:8	0xe49e81		e85ac662ff		CALL runtime.morestack_noctxt.abi0(SB)		
  vehicle_service.go:8	0xe49e86		e995feffff		JMP CAS-Backend/biz/service.AddVeh(SB)		
  :-1			0xe49e8b		cc			INT $__subsystem__(SB)				
  :-1			0xe49e8c		cc			INT $__subsystem__(SB)				
  :-1			0xe49e8d		cc			INT $__subsystem__(SB)				
  :-1			0xe49e8e		cc			INT $__subsystem__(SB)				
  :-1			0xe49e8f		cc			INT $__subsystem__(SB)				
  :-1			0xe49e90		cc			INT $__subsystem__(SB)				
  :-1			0xe49e91		cc			INT $__subsystem__(SB)				
  :-1			0xe49e92		cc			INT $__subsystem__(SB)				
  :-1			0xe49e93		cc			INT $__subsystem__(SB)				
  :-1			0xe49e94		cc			INT $__subsystem__(SB)				
  :-1			0xe49e95		cc			INT $__subsystem__(SB)				
  :-1			0xe49e96		cc			INT $__subsystem__(SB)				
  :-1			0xe49e97		cc			INT $__subsystem__(SB)				
  :-1			0xe49e98		cc			INT $__subsystem__(SB)				
  :-1			0xe49e99		cc			INT $__subsystem__(SB)				
  :-1			0xe49e9a		cc			INT $__subsystem__(SB)				
  :-1			0xe49e9b		cc			INT $__subsystem__(SB)				
  :-1			0xe49e9c		cc			INT $__subsystem__(SB)				
  :-1			0xe49e9d		cc			INT $__subsystem__(SB)				
  :-1			0xe49e9e		cc			INT $__subsystem__(SB)				
  :-1			0xe49e9f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/service.DelVeh(SB) D:/CodeEnv_code/cas-backend/biz/service/vehicle_service.go
  vehicle_service.go:22	0xe49ea0		493b6610		CMPQ SP, 0x10(R14)			
  vehicle_service.go:22	0xe49ea4		0f86d8000000		JBE 0xe49f82				
  vehicle_service.go:22	0xe49eaa		55			PUSHQ BP				
  vehicle_service.go:22	0xe49eab		4889e5			MOVQ SP, BP				
  vehicle_service.go:22	0xe49eae		4883ec58		SUBQ $.file+11(SB), SP			
  vehicle_service.go:24	0xe49eb2		4889442468		MOVQ AX, 0x68(SP)			
  vehicle_service.go:24	0xe49eb7		48895c2470		MOVQ BX, 0x70(SP)			
  vehicle_service.go:23	0xe49ebc		0f1f4000		NOPL 0(AX)				
  vehicle_service.go:23	0xe49ec0		e83b0ab5ff		CALL CAS-Backend/biz/dao.Delete_veh(SB)	
  vehicle_service.go:23	0xe49ec5		84c0			TESTL AL, AL				
  vehicle_service.go:24	0xe49ec7		745e			JE 0xe49f27				
  vehicle_service.go:25	0xe49ec9		440f117c2448		MOVUPS X15, 0x48(SP)			
  vehicle_service.go:25	0xe49ecf		488b442468		MOVQ 0x68(SP), AX			
  vehicle_service.go:25	0xe49ed4		488b5c2470		MOVQ 0x70(SP), BX			
  vehicle_service.go:25	0xe49ed9		e8420262ff		CALL runtime.convTstring(SB)		
  vehicle_service.go:25	0xe49ede		488d0d3b8a1f00		LEAQ runtime.types+383264(SB), CX	
  vehicle_service.go:25	0xe49ee5		48894c2448		MOVQ CX, 0x48(SP)			
  vehicle_service.go:25	0xe49eea		4889442450		MOVQ AX, 0x50(SP)			
  print.go:233		0xe49eef		488b1d8a816c02		MOVQ os.Stdout(SB), BX			
  print.go:233		0xe49ef6		488d05e31b0202		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0xe49efd		488d0d2c913300		LEAQ go:string.*+109352(SB), CX		
  print.go:233		0xe49f04		bf16000000		MOVL $__major_os_version__+16(SB), DI	
  print.go:233		0xe49f09		488d742448		LEAQ 0x48(SP), SI			
  print.go:233		0xe49f0e		41b801000000		MOVL $__minor_os_version__(SB), R8	
  print.go:233		0xe49f14		4d89c1			MOVQ R8, R9				
  print.go:233		0xe49f17		e804536dff		CALL fmt.Fprintf(SB)			
  vehicle_service.go:26	0xe49f1c		b801000000		MOVL $__minor_os_version__(SB), AX	
  vehicle_service.go:26	0xe49f21		4883c458		ADDQ $.file+11(SB), SP			
  vehicle_service.go:26	0xe49f25		5d			POPQ BP					
  vehicle_service.go:26	0xe49f26		c3			RET					
  vehicle_service.go:28	0xe49f27		440f117c2438		MOVUPS X15, 0x38(SP)			
  vehicle_service.go:28	0xe49f2d		488b442468		MOVQ 0x68(SP), AX			
  vehicle_service.go:28	0xe49f32		488b5c2470		MOVQ 0x70(SP), BX			
  vehicle_service.go:28	0xe49f37		e8e40162ff		CALL runtime.convTstring(SB)		
  vehicle_service.go:28	0xe49f3c		488d0ddd891f00		LEAQ runtime.types+383264(SB), CX	
  vehicle_service.go:28	0xe49f43		48894c2438		MOVQ CX, 0x38(SP)			
  vehicle_service.go:28	0xe49f48		4889442440		MOVQ AX, 0x40(SP)			
  print.go:233		0xe49f4d		488b1d2c816c02		MOVQ os.Stdout(SB), BX			
  print.go:233		0xe49f54		488d05851b0202		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0xe49f5b		488d0de4903300		LEAQ go:string.*+109374(SB), CX		
  print.go:233		0xe49f62		bf16000000		MOVL $__major_os_version__+16(SB), DI	
  print.go:233		0xe49f67		488d742438		LEAQ 0x38(SP), SI			
  print.go:233		0xe49f6c		41b801000000		MOVL $__minor_os_version__(SB), R8	
  print.go:233		0xe49f72		4d89c1			MOVQ R8, R9				
  print.go:233		0xe49f75		e8a6526dff		CALL fmt.Fprintf(SB)			
  vehicle_service.go:29	0xe49f7a		31c0			XORL AX, AX				
  vehicle_service.go:29	0xe49f7c		4883c458		ADDQ $.file+11(SB), SP			
  vehicle_service.go:29	0xe49f80		5d			POPQ BP					
  vehicle_service.go:29	0xe49f81		c3			RET					
  vehicle_service.go:22	0xe49f82		4889442408		MOVQ AX, 0x8(SP)			
  vehicle_service.go:22	0xe49f87		48895c2410		MOVQ BX, 0x10(SP)			
  vehicle_service.go:22	0xe49f8c		e84fc562ff		CALL runtime.morestack_noctxt.abi0(SB)	
  vehicle_service.go:22	0xe49f91		488b442408		MOVQ 0x8(SP), AX			
  vehicle_service.go:22	0xe49f96		488b5c2410		MOVQ 0x10(SP), BX			
  vehicle_service.go:22	0xe49f9b		0f1f440000		NOPL 0(AX)(AX*1)			
  vehicle_service.go:22	0xe49fa0		e9fbfeffff		JMP CAS-Backend/biz/service.DelVeh(SB)	
  :-1			0xe49fa5		cc			INT $__subsystem__(SB)			
  :-1			0xe49fa6		cc			INT $__subsystem__(SB)			
  :-1			0xe49fa7		cc			INT $__subsystem__(SB)			
  :-1			0xe49fa8		cc			INT $__subsystem__(SB)			
  :-1			0xe49fa9		cc			INT $__subsystem__(SB)			
  :-1			0xe49faa		cc			INT $__subsystem__(SB)			
  :-1			0xe49fab		cc			INT $__subsystem__(SB)			
  :-1			0xe49fac		cc			INT $__subsystem__(SB)			
  :-1			0xe49fad		cc			INT $__subsystem__(SB)			
  :-1			0xe49fae		cc			INT $__subsystem__(SB)			
  :-1			0xe49faf		cc			INT $__subsystem__(SB)			
  :-1			0xe49fb0		cc			INT $__subsystem__(SB)			
  :-1			0xe49fb1		cc			INT $__subsystem__(SB)			
  :-1			0xe49fb2		cc			INT $__subsystem__(SB)			
  :-1			0xe49fb3		cc			INT $__subsystem__(SB)			
  :-1			0xe49fb4		cc			INT $__subsystem__(SB)			
  :-1			0xe49fb5		cc			INT $__subsystem__(SB)			
  :-1			0xe49fb6		cc			INT $__subsystem__(SB)			
  :-1			0xe49fb7		cc			INT $__subsystem__(SB)			
  :-1			0xe49fb8		cc			INT $__subsystem__(SB)			
  :-1			0xe49fb9		cc			INT $__subsystem__(SB)			
  :-1			0xe49fba		cc			INT $__subsystem__(SB)			
  :-1			0xe49fbb		cc			INT $__subsystem__(SB)			
  :-1			0xe49fbc		cc			INT $__subsystem__(SB)			
  :-1			0xe49fbd		cc			INT $__subsystem__(SB)			
  :-1			0xe49fbe		cc			INT $__subsystem__(SB)			
  :-1			0xe49fbf		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/service.UpdateVeh(SB) D:/CodeEnv_code/cas-backend/biz/service/vehicle_service.go
  vehicle_service.go:33	0xe49fc0		4c8d6424e0		LEAQ -0x20(SP), R12				
  vehicle_service.go:33	0xe49fc5		4d3b6610		CMPQ R12, 0x10(R14)				
  vehicle_service.go:33	0xe49fc9		0f862b010000		JBE 0xe4a0fa					
  vehicle_service.go:33	0xe49fcf		55			PUSHQ BP					
  vehicle_service.go:33	0xe49fd0		4889e5			MOVQ SP, BP					
  vehicle_service.go:33	0xe49fd3		4881ec98000000		SUBQ $.file+75(SB), SP				
  vehicle_service.go:34	0xe49fda		488b8424a8000000	MOVQ 0xa8(SP), AX				
  vehicle_service.go:34	0xe49fe2		48890424		MOVQ AX, 0(SP)					
  vehicle_service.go:34	0xe49fe6		488d7c2408		LEAQ 0x8(SP), DI				
  vehicle_service.go:34	0xe49feb		488db424b0000000	LEAQ 0xb0(SP), SI				
  vehicle_service.go:34	0xe49ff3		660f1f840000000000	NOPW 0(AX)(AX*1)				
  vehicle_service.go:34	0xe49ffc		0f1f4000		NOPL 0(AX)					
  vehicle_service.go:34	0xe4a000		48896c24f0		MOVQ BP, -0x10(SP)				
  vehicle_service.go:34	0xe4a005		488d6c24f0		LEAQ -0x10(SP), BP				
  vehicle_service.go:34	0xe4a00a		e82fee62ff		CALL 0x478e3e					
  vehicle_service.go:34	0xe4a00f		488b6d00		MOVQ 0(BP), BP					
  vehicle_service.go:34	0xe4a013		e8080bb5ff		CALL CAS-Backend/biz/dao.Update_veh(SB)		
  vehicle_service.go:34	0xe4a018		84c0			TESTL AL, AL					
  vehicle_service.go:35	0xe4a01a		7477			JE 0xe4a093					
  vehicle_service.go:36	0xe4a01c		440f11bc2488000000	MOVUPS X15, 0x88(SP)				
  vehicle_service.go:36	0xe4a025		488b8424a8000000	MOVQ 0xa8(SP), AX				
  vehicle_service.go:36	0xe4a02d		488b9c24b0000000	MOVQ 0xb0(SP), BX				
  vehicle_service.go:36	0xe4a035		e8e60062ff		CALL runtime.convTstring(SB)			
  vehicle_service.go:36	0xe4a03a		488d0ddf881f00		LEAQ runtime.types+383264(SB), CX		
  vehicle_service.go:36	0xe4a041		48898c2488000000	MOVQ CX, 0x88(SP)				
  vehicle_service.go:36	0xe4a049		4889842490000000	MOVQ AX, 0x90(SP)				
  print.go:233		0xe4a051		488b1d28806c02		MOVQ os.Stdout(SB), BX				
  print.go:233		0xe4a058		488d05811a0202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe4a05f		488d0df68f3300		LEAQ go:string.*+109396(SB), CX			
  print.go:233		0xe4a066		bf16000000		MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0xe4a06b		488db42488000000	LEAQ 0x88(SP), SI				
  print.go:233		0xe4a073		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0xe4a079		4d89c1			MOVQ R8, R9					
  print.go:233		0xe4a07c		0f1f4000		NOPL 0(AX)					
  print.go:233		0xe4a080		e89b516dff		CALL fmt.Fprintf(SB)				
  vehicle_service.go:37	0xe4a085		b801000000		MOVL $__minor_os_version__(SB), AX		
  vehicle_service.go:37	0xe4a08a		4881c498000000		ADDQ $.file+75(SB), SP				
  vehicle_service.go:37	0xe4a091		5d			POPQ BP						
  vehicle_service.go:37	0xe4a092		c3			RET						
  vehicle_service.go:39	0xe4a093		440f117c2478		MOVUPS X15, 0x78(SP)				
  vehicle_service.go:39	0xe4a099		488b8424a8000000	MOVQ 0xa8(SP), AX				
  vehicle_service.go:39	0xe4a0a1		488b9c24b0000000	MOVQ 0xb0(SP), BX				
  vehicle_service.go:39	0xe4a0a9		e8720062ff		CALL runtime.convTstring(SB)			
  vehicle_service.go:39	0xe4a0ae		488d0d6b881f00		LEAQ runtime.types+383264(SB), CX		
  vehicle_service.go:39	0xe4a0b5		48894c2478		MOVQ CX, 0x78(SP)				
  vehicle_service.go:39	0xe4a0ba		4889842480000000	MOVQ AX, 0x80(SP)				
  print.go:233		0xe4a0c2		488b1db77f6c02		MOVQ os.Stdout(SB), BX				
  print.go:233		0xe4a0c9		488d05101a0202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe4a0d0		488d0d9b8f3300		LEAQ go:string.*+109418(SB), CX			
  print.go:233		0xe4a0d7		bf16000000		MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0xe4a0dc		488d742478		LEAQ 0x78(SP), SI				
  print.go:233		0xe4a0e1		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0xe4a0e7		4d89c1			MOVQ R8, R9					
  print.go:233		0xe4a0ea		e831516dff		CALL fmt.Fprintf(SB)				
  vehicle_service.go:40	0xe4a0ef		31c0			XORL AX, AX					
  vehicle_service.go:40	0xe4a0f1		4881c498000000		ADDQ $.file+75(SB), SP				
  vehicle_service.go:40	0xe4a0f8		5d			POPQ BP						
  vehicle_service.go:40	0xe4a0f9		c3			RET						
  vehicle_service.go:33	0xe4a0fa		e8e1c362ff		CALL runtime.morestack_noctxt.abi0(SB)		
  vehicle_service.go:33	0xe4a0ff		90			NOPL						
  vehicle_service.go:33	0xe4a100		e9bbfeffff		JMP CAS-Backend/biz/service.UpdateVeh(SB)	
  :-1			0xe4a105		cc			INT $__subsystem__(SB)				
  :-1			0xe4a106		cc			INT $__subsystem__(SB)				
  :-1			0xe4a107		cc			INT $__subsystem__(SB)				
  :-1			0xe4a108		cc			INT $__subsystem__(SB)				
  :-1			0xe4a109		cc			INT $__subsystem__(SB)				
  :-1			0xe4a10a		cc			INT $__subsystem__(SB)				
  :-1			0xe4a10b		cc			INT $__subsystem__(SB)				
  :-1			0xe4a10c		cc			INT $__subsystem__(SB)				
  :-1			0xe4a10d		cc			INT $__subsystem__(SB)				
  :-1			0xe4a10e		cc			INT $__subsystem__(SB)				
  :-1			0xe4a10f		cc			INT $__subsystem__(SB)				
  :-1			0xe4a110		cc			INT $__subsystem__(SB)				
  :-1			0xe4a111		cc			INT $__subsystem__(SB)				
  :-1			0xe4a112		cc			INT $__subsystem__(SB)				
  :-1			0xe4a113		cc			INT $__subsystem__(SB)				
  :-1			0xe4a114		cc			INT $__subsystem__(SB)				
  :-1			0xe4a115		cc			INT $__subsystem__(SB)				
  :-1			0xe4a116		cc			INT $__subsystem__(SB)				
  :-1			0xe4a117		cc			INT $__subsystem__(SB)				
  :-1			0xe4a118		cc			INT $__subsystem__(SB)				
  :-1			0xe4a119		cc			INT $__subsystem__(SB)				
  :-1			0xe4a11a		cc			INT $__subsystem__(SB)				
  :-1			0xe4a11b		cc			INT $__subsystem__(SB)				
  :-1			0xe4a11c		cc			INT $__subsystem__(SB)				
  :-1			0xe4a11d		cc			INT $__subsystem__(SB)				
  :-1			0xe4a11e		cc			INT $__subsystem__(SB)				
  :-1			0xe4a11f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/service.SlAllVeh(SB) D:/CodeEnv_code/cas-backend/biz/service/vehicle_service.go
  vehicle_service.go:58	0xe4a120		493b6610		CMPQ SP, 0x10(R14)				
  vehicle_service.go:58	0xe4a124		0f86b8000000		JBE 0xe4a1e2					
  vehicle_service.go:58	0xe4a12a		55			PUSHQ BP					
  vehicle_service.go:58	0xe4a12b		4889e5			MOVQ SP, BP					
  vehicle_service.go:58	0xe4a12e		4883ec58		SUBQ $.file+11(SB), SP				
  vehicle_service.go:58	0xe4a132		48894c2478		MOVQ CX, 0x78(SP)				
  vehicle_service.go:58	0xe4a137		4889b42488000000	MOVQ SI, 0x88(SP)				
  vehicle_service.go:60	0xe4a13f		90			NOPL						
  vehicle_service.go:60	0xe4a140		e83b0fb5ff		CALL CAS-Backend/biz/dao.SelectALL_veh(SB)	
  vehicle_service.go:60	0xe4a145		84c0			TESTL AL, AL					
  vehicle_service.go:61	0xe4a147		745b			JE 0xe4a1a4					
  vehicle_service.go:60	0xe4a149		48895c2448		MOVQ BX, 0x48(SP)				
  vehicle_service.go:60	0xe4a14e		4889742440		MOVQ SI, 0x40(SP)				
  vehicle_service.go:60	0xe4a153		48897c2438		MOVQ DI, 0x38(SP)				
  vehicle_service.go:60	0xe4a158		48894c2450		MOVQ CX, 0x50(SP)				
  print.go:233		0xe4a15d		488b1d1c7f6c02		MOVQ os.Stdout(SB), BX				
  vehicle_service.go:62	0xe4a164		90			NOPL						
  print.go:233		0xe4a165		488d0574190202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe4a16c		488d0dd33d3300		LEAQ go:string.*+88638(SB), CX			
  print.go:233		0xe4a173		bf12000000		MOVL $__major_os_version__+12(SB), DI		
  print.go:233		0xe4a178		31f6			XORL SI, SI					
  print.go:233		0xe4a17a		4531c0			XORL R8, R8					
  print.go:233		0xe4a17d		4d89c1			MOVQ R8, R9					
  print.go:233		0xe4a180		e89b506dff		CALL fmt.Fprintf(SB)				
  vehicle_service.go:63	0xe4a185		b801000000		MOVL $__minor_os_version__(SB), AX		
  vehicle_service.go:63	0xe4a18a		488b5c2448		MOVQ 0x48(SP), BX				
  vehicle_service.go:63	0xe4a18f		488b4c2450		MOVQ 0x50(SP), CX				
  vehicle_service.go:63	0xe4a194		488b7c2438		MOVQ 0x38(SP), DI				
  vehicle_service.go:63	0xe4a199		488b742440		MOVQ 0x40(SP), SI				
  vehicle_service.go:63	0xe4a19e		4883c458		ADDQ $.file+11(SB), SP				
  vehicle_service.go:63	0xe4a1a2		5d			POPQ BP						
  vehicle_service.go:63	0xe4a1a3		c3			RET						
  print.go:233		0xe4a1a4		488b1dd57e6c02		MOVQ os.Stdout(SB), BX				
  vehicle_service.go:67	0xe4a1ab		90			NOPL						
  print.go:233		0xe4a1ac		488d052d190202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe4a1b3		488d0d9e3d3300		LEAQ go:string.*+88656(SB), CX			
  print.go:233		0xe4a1ba		bf12000000		MOVL $__major_os_version__+12(SB), DI		
  print.go:233		0xe4a1bf		31f6			XORL SI, SI					
  print.go:233		0xe4a1c1		4531c0			XORL R8, R8					
  print.go:233		0xe4a1c4		4d89c1			MOVQ R8, R9					
  print.go:233		0xe4a1c7		e854506dff		CALL fmt.Fprintf(SB)				
  vehicle_service.go:68	0xe4a1cc		31c0			XORL AX, AX					
  vehicle_service.go:68	0xe4a1ce		31db			XORL BX, BX					
  vehicle_service.go:68	0xe4a1d0		488d0dc9307102		LEAQ unicode..stmp_365(SB), CX			
  vehicle_service.go:68	0xe4a1d7		31ff			XORL DI, DI					
  vehicle_service.go:68	0xe4a1d9		4889fe			MOVQ DI, SI					
  vehicle_service.go:68	0xe4a1dc		4883c458		ADDQ $.file+11(SB), SP				
  vehicle_service.go:68	0xe4a1e0		5d			POPQ BP						
  vehicle_service.go:68	0xe4a1e1		c3			RET						
  vehicle_service.go:58	0xe4a1e2		4889442408		MOVQ AX, 0x8(SP)				
  vehicle_service.go:58	0xe4a1e7		48895c2410		MOVQ BX, 0x10(SP)				
  vehicle_service.go:58	0xe4a1ec		48894c2418		MOVQ CX, 0x18(SP)				
  vehicle_service.go:58	0xe4a1f1		48897c2420		MOVQ DI, 0x20(SP)				
  vehicle_service.go:58	0xe4a1f6		4889742428		MOVQ SI, 0x28(SP)				
  vehicle_service.go:58	0xe4a1fb		4c89442430		MOVQ R8, 0x30(SP)				
  vehicle_service.go:58	0xe4a200		4c894c2438		MOVQ R9, 0x38(SP)				
  vehicle_service.go:58	0xe4a205		e8d6c262ff		CALL runtime.morestack_noctxt.abi0(SB)		
  vehicle_service.go:58	0xe4a20a		488b442408		MOVQ 0x8(SP), AX				
  vehicle_service.go:58	0xe4a20f		488b5c2410		MOVQ 0x10(SP), BX				
  vehicle_service.go:58	0xe4a214		488b4c2418		MOVQ 0x18(SP), CX				
  vehicle_service.go:58	0xe4a219		488b7c2420		MOVQ 0x20(SP), DI				
  vehicle_service.go:58	0xe4a21e		488b742428		MOVQ 0x28(SP), SI				
  vehicle_service.go:58	0xe4a223		4c8b442430		MOVQ 0x30(SP), R8				
  vehicle_service.go:58	0xe4a228		4c8b4c2438		MOVQ 0x38(SP), R9				
  vehicle_service.go:58	0xe4a22d		e9eefeffff		JMP CAS-Backend/biz/service.SlAllVeh(SB)	
  :-1			0xe4a232		cc			INT $__subsystem__(SB)				
  :-1			0xe4a233		cc			INT $__subsystem__(SB)				
  :-1			0xe4a234		cc			INT $__subsystem__(SB)				
  :-1			0xe4a235		cc			INT $__subsystem__(SB)				
  :-1			0xe4a236		cc			INT $__subsystem__(SB)				
  :-1			0xe4a237		cc			INT $__subsystem__(SB)				
  :-1			0xe4a238		cc			INT $__subsystem__(SB)				
  :-1			0xe4a239		cc			INT $__subsystem__(SB)				
  :-1			0xe4a23a		cc			INT $__subsystem__(SB)				
  :-1			0xe4a23b		cc			INT $__subsystem__(SB)				
  :-1			0xe4a23c		cc			INT $__subsystem__(SB)				
  :-1			0xe4a23d		cc			INT $__subsystem__(SB)				
  :-1			0xe4a23e		cc			INT $__subsystem__(SB)				
  :-1			0xe4a23f		cc			INT $__subsystem__(SB)				

