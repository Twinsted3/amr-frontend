TEXT main.main(SB) D:/CodeEnv_code/cas-backend/cmd/main.go
  main.go:18		0xe98160		4c8d6424d8			LEAQ -0x28(SP), R12				
  main.go:18		0xe98165		4d3b6610			CMPQ R12, 0x10(R14)				
  main.go:18		0xe98169		0f8663020000			JBE 0xe983d2					
  main.go:18		0xe9816f		55				PUSHQ BP					
  main.go:18		0xe98170		4889e5				MOVQ SP, BP					
  main.go:18		0xe98173		4881eca0000000			SUBQ $.file+83(SB), SP				
  main.go:20		0xe9817a		e8e1f464ff			CALL CAS-Backend/pkg/appdir.InitExe(SB)		
  main.go:20		0xe9817f		90				NOPL						
  main.go:20		0xe98180		4885c0				TESTQ AX, AX					
  main.go:20		0xe98183		7440				JE 0xe981c5					
  main.go:21		0xe98185		440f11bc2490000000		MOVUPS X15, 0x90(SP)				
  main.go:21		0xe9818e		7404				JE 0xe98194					
  main.go:21		0xe98190		488b4008			MOVQ 0x8(AX), AX				
  main.go:21		0xe98194		4889842490000000		MOVQ AX, 0x90(SP)				
  main.go:21		0xe9819c		48899c2498000000		MOVQ BX, 0x98(SP)				
  main.go:21		0xe981a4		488d0561462f00			LEAQ go:string.*+148228(SB), AX			
  main.go:21		0xe981ab		bb1f000000			MOVL $__major_os_version__+25(SB), BX		
  main.go:21		0xe981b0		488d8c2490000000		LEAQ 0x90(SP), CX				
  main.go:21		0xe981b8		bf01000000			MOVL $__minor_os_version__(SB), DI		
  main.go:21		0xe981bd		4889fe				MOVQ DI, SI					
  main.go:21		0xe981c0		e85b4e8eff			CALL log.Fatalf(SB)				
  main.go:25		0xe981c5		e876e39bff			CALL CAS-Backend/config.InitConfig(SB)		
  main.go:28		0xe981ca		e891f89eff			CALL CAS-Backend/pkg/logger.InitLogger(SB)	
  main.go:31		0xe981cf		e84cc7afff			CALL CAS-Backend/biz/dao.InitDB(SB)		
  main.go:41		0xe981d4		488b1d8dc91100			MOVQ main.staticEmbed(SB), BX			
  main.go:41		0xe981db		488d05de38fd01			LEAQ go:itab.embed.FS,io/fs.FS(SB), AX		
  main.go:41		0xe981e2		488d0d25ed2d00			LEAQ go:string.*+59910(SB), CX			
  main.go:41		0xe981e9		bf0b000000			MOVL $__major_os_version__+5(SB), DI		
  main.go:41		0xe981ee		e84df561ff			CALL io/fs.Sub(SB)				
  main.go:41		0xe981f3		4889442428			MOVQ AX, 0x28(SP)				
  main.go:41		0xe981f8		48895c2438			MOVQ BX, 0x38(SP)				
  main.go:41		0xe981fd		0f1f00				NOPL 0(AX)					
  main.go:42		0xe98200		4885c9				TESTQ CX, CX					
  main.go:42		0xe98203		744a				JE 0xe9824f					
  main.go:43		0xe98205		440f11bc2490000000		MOVUPS X15, 0x90(SP)				
  main.go:43		0xe9820e		7404				JE 0xe98214					
  main.go:43		0xe98210		488b4908			MOVQ 0x8(CX), CX				
  main.go:43		0xe98214		48898c2490000000		MOVQ CX, 0x90(SP)				
  main.go:43		0xe9821c		4889bc2498000000		MOVQ DI, 0x98(SP)				
  main.go:43		0xe98224		488d05c50b2f00			LEAQ go:string.*+133352(SB), AX			
  main.go:43		0xe9822b		bb1c000000			MOVL $__major_os_version__+22(SB), BX		
  main.go:43		0xe98230		488d8c2490000000		LEAQ 0x90(SP), CX				
  main.go:43		0xe98238		bf01000000			MOVL $__minor_os_version__(SB), DI		
  main.go:43		0xe9823d		4889fe				MOVQ DI, SI					
  main.go:43		0xe98240		e8db4d8eff			CALL log.Fatalf(SB)				
  main.go:45		0xe98245		488b442428			MOVQ 0x28(SP), AX				
  main.go:45		0xe9824a		488b5c2438			MOVQ 0x38(SP), BX				
  main.go:45		0xe9824f		488b5018			MOVQ 0x18(AX), DX				
  main.go:45		0xe98253		b90a000000			MOVL $__major_os_version__+4(SB), CX		
  main.go:45		0xe98258		4889d8				MOVQ BX, AX					
  main.go:45		0xe9825b		488d1dbade2d00			LEAQ go:string.*+56340(SB), BX			
  main.go:45		0xe98262		ffd2				CALL DX						
  main.go:45		0xe98264		4885c9				TESTQ CX, CX					
  main.go:45		0xe98267		7440				JE 0xe982a9					
  main.go:46		0xe98269		440f11bc2490000000		MOVUPS X15, 0x90(SP)				
  main.go:46		0xe98272		7404				JE 0xe98278					
  main.go:46		0xe98274		488b4908			MOVQ 0x8(CX), CX				
  main.go:46		0xe98278		48898c2490000000		MOVQ CX, 0x90(SP)				
  main.go:46		0xe98280		4889bc2498000000		MOVQ DI, 0x98(SP)				
  main.go:46		0xe98288		488d05f72b3100			LEAQ go:string.*+272766(SB), AX			
  main.go:46		0xe9828f		bb70000000			MOVL $.file+35(SB), BX				
  main.go:46		0xe98294		488d8c2490000000		LEAQ 0x90(SP), CX				
  main.go:46		0xe9829c		bf01000000			MOVL $__minor_os_version__(SB), DI		
  main.go:46		0xe982a1		4889fe				MOVQ DI, SI					
  main.go:46		0xe982a4		e8774d8eff			CALL log.Fatalf(SB)				
  main.go:48		0xe982a9		488b442428			MOVQ 0x28(SP), AX				
  main.go:48		0xe982ae		488b5c2438			MOVQ 0x38(SP), BX				
  main.go:48		0xe982b3		488d0d0ec8fc01			LEAQ runtime.gcbits.*+8(SB), CX			
  main.go:48		0xe982ba		bf01000000			MOVL $__minor_os_version__(SB), DI		
  main.go:48		0xe982bf		90				NOPL						
  main.go:48		0xe982c0		e85be861ff			CALL io/fs.ReadDir(SB)				
  main.go:48		0xe982c5		4885ff				TESTQ DI, DI					
  main.go:48		0xe982c8		0f858f000000			JNE 0xe9835d					
  main.go:49		0xe982ce		440f117c2440			MOVUPS X15, 0x40(SP)				
  main.go:49		0xe982d4		4889d8				MOVQ BX, AX					
  main.go:49		0xe982d7		e8c41d5dff			CALL runtime.convT64(SB)			
  main.go:49		0xe982dc		488d0d7da81a00			LEAQ runtime.types+383840(SB), CX		
  main.go:49		0xe982e3		48894c2440			MOVQ CX, 0x40(SP)				
  main.go:49		0xe982e8		4889442448			MOVQ AX, 0x48(SP)				
  log.go:397		0xe982ed		440f117c2460			MOVUPS X15, 0x60(SP)				
  log.go:397		0xe982f3		440f117c2470			MOVUPS X15, 0x70(SP)				
  log.go:397		0xe982f9		440f11bc2480000000		MOVUPS X15, 0x80(SP)				
  log.go:397		0xe98302		488d0dd7000000			LEAQ main.main.Printf.func1(SB), CX		
  log.go:397		0xe98309		48894c2460			MOVQ CX, 0x60(SP)				
  log.go:397		0xe9830e		48c744247027000000		MOVQ $__major_os_version__+33(SB), 0x70(SP)	
  log.go:397		0xe98317		488d0d75ca2f00			LEAQ go:string.*+182411(SB), CX			
  log.go:397		0xe9831e		48894c2468			MOVQ CX, 0x68(SP)				
  log.go:397		0xe98323		48c784248000000001000000	MOVQ $__minor_os_version__(SB), 0x80(SP)	
  log.go:397		0xe9832f		48c784248800000001000000	MOVQ $__minor_os_version__(SB), 0x88(SP)	
  log.go:397		0xe9833b		488d4c2440			LEAQ 0x40(SP), CX				
  log.go:397		0xe98340		48894c2478			MOVQ CX, 0x78(SP)				
  log.go:397		0xe98345		488b05249d6702			MOVQ log.std(SB), AX				
  log.go:397		0xe9834c		31db				XORL BX, BX					
  log.go:397		0xe9834e		b902000000			MOVL $__minor_os_version__+1(SB), CX		
  log.go:397		0xe98353		488d7c2460			LEAQ 0x60(SP), DI				
  log.go:397		0xe98358		e8a33c8eff			CALL log.(*Logger).output(SB)			
  main.go:51		0xe9835d		488b442428			MOVQ 0x28(SP), AX				
  main.go:51		0xe98362		488b5c2438			MOVQ 0x38(SP), BX				
  main.go:51		0xe98367		e854d4ffff			CALL CAS-Backend/biz/router.InitRouter(SB)	
  main.go:51		0xe9836c		4889442430			MOVQ AX, 0x30(SP)				
  main.go:60		0xe98371		488b0dd8e06702			MOVQ CAS-Backend/config.Cfg+48(SB), CX		
  main.go:60		0xe98378		488b1dd9e06702			MOVQ CAS-Backend/config.Cfg+56(SB), BX		
  main.go:60		0xe9837f		488b15dae06702			MOVQ CAS-Backend/config.Cfg+64(SB), DX		
  main.go:60		0xe98386		488b3ddbe06702			MOVQ CAS-Backend/config.Cfg+72(SB), DI		
  main.go:60		0xe9838d		4889c8				MOVQ CX, AX					
  main.go:60		0xe98390		4889d1				MOVQ DX, CX					
  main.go:60		0xe98393		e808b0f8ff			CALL CAS-Backend/pkg/diapdu.ConfigureDiaodu(SB)	
  main.go:61		0xe98398		e803b5f8ff			CALL CAS-Backend/pkg/diapdu.Initdiaodu(SB)	
  main.go:64		0xe9839d		48c744245805000000		MOVQ $__subsystem__+2(SB), 0x58(SP)		
  main.go:64		0xe983a6		488d0d0f222d00			LEAQ go:string.*+8372(SB), CX			
  main.go:64		0xe983ad		48894c2450			MOVQ CX, 0x50(SP)				
  main.go:64		0xe983b2		488b442430			MOVQ 0x30(SP), AX				
  main.go:64		0xe983b7		488d5c2450			LEAQ 0x50(SP), BX				
  main.go:64		0xe983bc		b901000000			MOVL $__minor_os_version__(SB), CX		
  main.go:64		0xe983c1		4889cf				MOVQ CX, DI					
  main.go:64		0xe983c4		e8f7c5f6ff			CALL github.com/gin-gonic/gin.(*Engine).Run(SB)	
  main.go:293		0xe983c9		4881c4a0000000			ADDQ $.file+83(SB), SP				
  main.go:293		0xe983d0		5d				POPQ BP						
  main.go:293		0xe983d1		c3				RET						
  main.go:18		0xe983d2		e809e15dff			CALL runtime.morestack_noctxt.abi0(SB)		
  main.go:18		0xe983d7		e984fdffff			JMP main.main(SB)				
  :-1			0xe983dc		cc				INT $__subsystem__(SB)				
  :-1			0xe983dd		cc				INT $__subsystem__(SB)				
  :-1			0xe983de		cc				INT $__subsystem__(SB)				
  :-1			0xe983df		cc				INT $__subsystem__(SB)				

