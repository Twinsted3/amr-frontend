TEXT CAS-Backend/biz/dao.Vehicle.TableName(SB) D:/CodeEnv_code/cas-backend/biz/dao/vehicle_dao.go
  vehicle_dao.go:163	0x99a6a0		488d057dc87d00		LEAQ go:string.*+59932(SB), AX		
  vehicle_dao.go:163	0x99a6a7		bb0b000000		MOVL $__major_os_version__+5(SB), BX	
  vehicle_dao.go:163	0x99a6ac		c3			RET					
  :-1			0x99a6ad		cc			INT $__subsystem__(SB)			
  :-1			0x99a6ae		cc			INT $__subsystem__(SB)			
  :-1			0x99a6af		cc			INT $__subsystem__(SB)			
  :-1			0x99a6b0		cc			INT $__subsystem__(SB)			
  :-1			0x99a6b1		cc			INT $__subsystem__(SB)			
  :-1			0x99a6b2		cc			INT $__subsystem__(SB)			
  :-1			0x99a6b3		cc			INT $__subsystem__(SB)			
  :-1			0x99a6b4		cc			INT $__subsystem__(SB)			
  :-1			0x99a6b5		cc			INT $__subsystem__(SB)			
  :-1			0x99a6b6		cc			INT $__subsystem__(SB)			
  :-1			0x99a6b7		cc			INT $__subsystem__(SB)			
  :-1			0x99a6b8		cc			INT $__subsystem__(SB)			
  :-1			0x99a6b9		cc			INT $__subsystem__(SB)			
  :-1			0x99a6ba		cc			INT $__subsystem__(SB)			
  :-1			0x99a6bb		cc			INT $__subsystem__(SB)			
  :-1			0x99a6bc		cc			INT $__subsystem__(SB)			
  :-1			0x99a6bd		cc			INT $__subsystem__(SB)			
  :-1			0x99a6be		cc			INT $__subsystem__(SB)			
  :-1			0x99a6bf		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.Insert_veh(SB) D:/CodeEnv_code/cas-backend/biz/dao/vehicle_dao.go
  vehicle_dao.go:167	0x99a6c0		4c8d6424d0		LEAQ -0x30(SP), R12				
  vehicle_dao.go:167	0x99a6c5		4d3b6610		CMPQ R12, 0x10(R14)				
  vehicle_dao.go:167	0x99a6c9		0f8610020000		JBE 0x99a8df					
  vehicle_dao.go:167	0x99a6cf		55			PUSHQ BP					
  vehicle_dao.go:167	0x99a6d0		4889e5			MOVQ SP, BP					
  vehicle_dao.go:167	0x99a6d3		4881eca8000000		SUBQ $.file+91(SB), SP				
  vehicle_dao.go:167	0x99a6da		488d059f6f7800		LEAQ runtime.types+1296000(SB), AX		
  vehicle_dao.go:167	0x99a6e1		e8ba70a7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:167	0x99a6e6		48898424a0000000	MOVQ AX, 0xa0(SP)				
  vehicle_dao.go:167	0x99a6ee		833d5b34bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:167	0x99a6f5		741f			JE 0x99a716					
  vehicle_dao.go:167	0x99a6f7		4889c3			MOVQ AX, BX					
  vehicle_dao.go:167	0x99a6fa		488d8c24b8000000	LEAQ 0xb8(SP), CX				
  vehicle_dao.go:167	0x99a702		488d05776f7800		LEAQ runtime.types+1296000(SB), AX		
  vehicle_dao.go:167	0x99a709		e812a8a7ff		CALL runtime.wbMove(SB)				
  vehicle_dao.go:167	0x99a70e		488b8424a0000000	MOVQ 0xa0(SP), AX				
  vehicle_dao.go:167	0x99a716		488b8c24b8000000	MOVQ 0xb8(SP), CX				
  vehicle_dao.go:167	0x99a71e		488908			MOVQ CX, 0(AX)					
  vehicle_dao.go:167	0x99a721		488d7808		LEAQ 0x8(AX), DI				
  vehicle_dao.go:167	0x99a725		488db424c0000000	LEAQ 0xc0(SP), SI				
  vehicle_dao.go:167	0x99a72d		660f1f840000000000	NOPW 0(AX)(AX*1)				
  vehicle_dao.go:167	0x99a736		660f1f840000000000	NOPW 0(AX)(AX*1)				
  vehicle_dao.go:167	0x99a73f		90			NOPL						
  vehicle_dao.go:167	0x99a740		48896c24f0		MOVQ BP, -0x10(SP)				
  vehicle_dao.go:167	0x99a745		488d6c24f0		LEAQ -0x10(SP), BP				
  vehicle_dao.go:167	0x99a74a		e8efe6adff		CALL 0x478e3e					
  vehicle_dao.go:167	0x99a74f		488b6d00		MOVQ 0(BP), BP					
  version4.go:14	0x99a753		e8289effff		CALL github.com/google/uuid.NewRandom(SB)	
  version4.go:14	0x99a758		0f100424		MOVUPS 0(SP), X0				
  version4.go:14	0x99a75c		0f11442470		MOVUPS X0, 0x70(SP)				
  uuid.go:183		0x99a761		4885c0			TESTQ AX, AX					
  uuid.go:183		0x99a764		0f8569010000		JNE 0x99a8d3					
  vehicle_dao.go:169	0x99a76a		0f10442470		MOVUPS 0x70(SP), X0				
  vehicle_dao.go:169	0x99a76f		0f1144243c		MOVUPS X0, 0x3c(SP)				
  uuid.go:245		0x99a774		440f117c244c		MOVUPS X15, 0x4c(SP)				
  uuid.go:245		0x99a77a		440f117c2450		MOVUPS X15, 0x50(SP)				
  uuid.go:245		0x99a780		440f117c2460		MOVUPS X15, 0x60(SP)				
  uuid.go:246		0x99a786		0f1044243c		MOVUPS 0x3c(SP), X0				
  uuid.go:246		0x99a78b		0f110424		MOVUPS X0, 0(SP)				
  uuid.go:246		0x99a78f		488d44244c		LEAQ 0x4c(SP), AX				
  uuid.go:246		0x99a794		bb24000000		MOVL $__major_os_version__+30(SB), BX		
  uuid.go:246		0x99a799		4889d9			MOVQ BX, CX					
  uuid.go:246		0x99a79c		0f1f4000		NOPL 0(AX)					
  uuid.go:246		0x99a7a0		e89b9affff		CALL github.com/google/uuid.encodeHex(SB)	
  uuid.go:247		0x99a7a5		31c0			XORL AX, AX					
  uuid.go:247		0x99a7a7		488d5c244c		LEAQ 0x4c(SP), BX				
  uuid.go:247		0x99a7ac		b924000000		MOVL $__major_os_version__+30(SB), CX		
  uuid.go:247		0x99a7b1		e8ca7eadff		CALL runtime.slicebytetostring(SB)		
  vehicle_dao.go:169	0x99a7b6		488b8c24a0000000	MOVQ 0xa0(SP), CX				
  vehicle_dao.go:169	0x99a7be		48895908		MOVQ BX, 0x8(CX)				
  vehicle_dao.go:169	0x99a7c2		833d8733bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:169	0x99a7c9		740f			JE 0x99a7da					
  vehicle_dao.go:169	0x99a7cb		e870dcadff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:169	0x99a7d0		498903			MOVQ AX, 0(R11)					
  vehicle_dao.go:169	0x99a7d3		488b11			MOVQ 0(CX), DX					
  vehicle_dao.go:169	0x99a7d6		49895308		MOVQ DX, 0x8(R11)				
  vehicle_dao.go:169	0x99a7da		488901			MOVQ AX, 0(CX)					
  vehicle_dao.go:172	0x99a7dd		488b055c78b702		MOVQ runtime.bss(SB), AX			
  vehicle_dao.go:172	0x99a7e4		488d1d75876d00		LEAQ runtime.types+581472(SB), BX		
  vehicle_dao.go:172	0x99a7eb		e85052f8ff		CALL gorm.io/gorm.(*DB).Create(SB)		
  vehicle_dao.go:173	0x99a7f0		4883780800		CMPQ 0x8(AX), $0x0				
  vehicle_dao.go:173	0x99a7f5		7465			JE 0x99a85c					
  vehicle_dao.go:174	0x99a7f7		440f11bc2490000000	MOVUPS X15, 0x90(SP)				
  vehicle_dao.go:174	0x99a800		488b5008		MOVQ 0x8(AX), DX				
  vehicle_dao.go:174	0x99a804		4885d2			TESTQ DX, DX					
  vehicle_dao.go:174	0x99a807		7404			JE 0x99a80d					
  vehicle_dao.go:174	0x99a809		488b5208		MOVQ 0x8(DX), DX				
  vehicle_dao.go:174	0x99a80d		4c8b5010		MOVQ 0x10(AX), R10				
  vehicle_dao.go:174	0x99a811		4889942490000000	MOVQ DX, 0x90(SP)				
  vehicle_dao.go:174	0x99a819		4c89942498000000	MOVQ R10, 0x98(SP)				
  print.go:233		0x99a821		488b1d5878b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99a828		488d05b1124d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99a82f		488d0d6d0f7e00		LEAQ go:string.*+78491(SB), CX			
  print.go:233		0x99a836		bf10000000		MOVL $__major_os_version__+10(SB), DI		
  print.go:233		0x99a83b		488db42490000000	LEAQ 0x90(SP), SI				
  print.go:233		0x99a843		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x99a849		4d89c1			MOVQ R8, R9					
  print.go:233		0x99a84c		e8cf49b8ff		CALL fmt.Fprintf(SB)				
  vehicle_dao.go:175	0x99a851		31c0			XORL AX, AX					
  vehicle_dao.go:175	0x99a853		4881c4a8000000		ADDQ $.file+91(SB), SP				
  vehicle_dao.go:175	0x99a85a		5d			POPQ BP						
  vehicle_dao.go:175	0x99a85b		c3			RET						
  vehicle_dao.go:178	0x99a85c		440f11bc2480000000	MOVUPS X15, 0x80(SP)				
  vehicle_dao.go:178	0x99a865		488b8c24a0000000	MOVQ 0xa0(SP), CX				
  vehicle_dao.go:178	0x99a86d		488b01			MOVQ 0(CX), AX					
  vehicle_dao.go:178	0x99a870		488b5908		MOVQ 0x8(CX), BX				
  vehicle_dao.go:178	0x99a874		e8a7f8acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:178	0x99a879		488d0da0806a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:178	0x99a880		48898c2480000000	MOVQ CX, 0x80(SP)				
  vehicle_dao.go:178	0x99a888		4889842488000000	MOVQ AX, 0x88(SP)				
  print.go:233		0x99a890		488b1de977b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99a897		488d0542124d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99a89e		488d0d51587e00		LEAQ go:string.*+97262(SB), CX			
  print.go:233		0x99a8a5		bf14000000		MOVL $__major_os_version__+14(SB), DI		
  print.go:233		0x99a8aa		488db42480000000	LEAQ 0x80(SP), SI				
  print.go:233		0x99a8b2		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x99a8b8		4d89c1			MOVQ R8, R9					
  print.go:233		0x99a8bb		0f1f440000		NOPL 0(AX)(AX*1)				
  print.go:233		0x99a8c0		e85b49b8ff		CALL fmt.Fprintf(SB)				
  vehicle_dao.go:179	0x99a8c5		b801000000		MOVL $__minor_os_version__(SB), AX		
  vehicle_dao.go:179	0x99a8ca		4881c4a8000000		ADDQ $.file+91(SB), SP				
  vehicle_dao.go:179	0x99a8d1		5d			POPQ BP						
  vehicle_dao.go:179	0x99a8d2		c3			RET						
  uuid.go:184		0x99a8d3		7404			JE 0x99a8d9					
  uuid.go:184		0x99a8d5		488b4008		MOVQ 0x8(AX), AX				
  uuid.go:184		0x99a8d9		e84252adff		CALL runtime.gopanic(SB)			
  uuid.go:184		0x99a8de		90			NOPL						
  vehicle_dao.go:167	0x99a8df		90			NOPL						
  vehicle_dao.go:167	0x99a8e0		e8fbbbadff		CALL runtime.morestack_noctxt.abi0(SB)		
  vehicle_dao.go:167	0x99a8e5		e9d6fdffff		JMP CAS-Backend/biz/dao.Insert_veh(SB)		
  :-1			0x99a8ea		cc			INT $__subsystem__(SB)				
  :-1			0x99a8eb		cc			INT $__subsystem__(SB)				
  :-1			0x99a8ec		cc			INT $__subsystem__(SB)				
  :-1			0x99a8ed		cc			INT $__subsystem__(SB)				
  :-1			0x99a8ee		cc			INT $__subsystem__(SB)				
  :-1			0x99a8ef		cc			INT $__subsystem__(SB)				
  :-1			0x99a8f0		cc			INT $__subsystem__(SB)				
  :-1			0x99a8f1		cc			INT $__subsystem__(SB)				
  :-1			0x99a8f2		cc			INT $__subsystem__(SB)				
  :-1			0x99a8f3		cc			INT $__subsystem__(SB)				
  :-1			0x99a8f4		cc			INT $__subsystem__(SB)				
  :-1			0x99a8f5		cc			INT $__subsystem__(SB)				
  :-1			0x99a8f6		cc			INT $__subsystem__(SB)				
  :-1			0x99a8f7		cc			INT $__subsystem__(SB)				
  :-1			0x99a8f8		cc			INT $__subsystem__(SB)				
  :-1			0x99a8f9		cc			INT $__subsystem__(SB)				
  :-1			0x99a8fa		cc			INT $__subsystem__(SB)				
  :-1			0x99a8fb		cc			INT $__subsystem__(SB)				
  :-1			0x99a8fc		cc			INT $__subsystem__(SB)				
  :-1			0x99a8fd		cc			INT $__subsystem__(SB)				
  :-1			0x99a8fe		cc			INT $__subsystem__(SB)				
  :-1			0x99a8ff		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.Delete_veh(SB) D:/CodeEnv_code/cas-backend/biz/dao/vehicle_dao.go
  vehicle_dao.go:183	0x99a900		4c8d6424e8		LEAQ -0x18(SP), R12			
  vehicle_dao.go:183	0x99a905		4d3b6610		CMPQ R12, 0x10(R14)			
  vehicle_dao.go:183	0x99a909		0f86d6010000		JBE 0x99aae5				
  vehicle_dao.go:183	0x99a90f		55			PUSHQ BP				
  vehicle_dao.go:183	0x99a910		4889e5			MOVQ SP, BP				
  vehicle_dao.go:183	0x99a913		4881ec90000000		SUBQ $.file+67(SB), SP			
  vehicle_dao.go:186	0x99a91a		48899c24a8000000	MOVQ BX, 0xa8(SP)			
  vehicle_dao.go:186	0x99a922		48898424a0000000	MOVQ AX, 0xa0(SP)			
  vehicle_dao.go:185	0x99a92a		488d054f6d7800		LEAQ runtime.types+1296000(SB), AX	
  vehicle_dao.go:185	0x99a931		e86a6ea7ff		CALL runtime.newobject(SB)		
  vehicle_dao.go:185	0x99a936		4889442448		MOVQ AX, 0x48(SP)			
  vehicle_dao.go:185	0x99a93b		488d055e356b00		LEAQ runtime.types+429728(SB), AX	
  vehicle_dao.go:185	0x99a942		e8596ea7ff		CALL runtime.newobject(SB)		
  vehicle_dao.go:185	0x99a947		4889442440		MOVQ AX, 0x40(SP)			
  vehicle_dao.go:185	0x99a94c		488b9c24a8000000	MOVQ 0xa8(SP), BX			
  vehicle_dao.go:185	0x99a954		488b8424a0000000	MOVQ 0xa0(SP), AX			
  vehicle_dao.go:185	0x99a95c		0f1f4000		NOPL 0(AX)				
  vehicle_dao.go:185	0x99a960		e8bbf7acff		CALL runtime.convTstring(SB)		
  vehicle_dao.go:185	0x99a965		488d0db47f6a00		LEAQ runtime.types+383264(SB), CX	
  vehicle_dao.go:185	0x99a96c		488b7c2440		MOVQ 0x40(SP), DI			
  vehicle_dao.go:185	0x99a971		48890f			MOVQ CX, 0(DI)				
  vehicle_dao.go:185	0x99a974		833dd531bc0200		CMPL runtime.writeBarrier(SB), $0x0	
  vehicle_dao.go:185	0x99a97b		7413			JE 0x99a990				
  vehicle_dao.go:185	0x99a97d		0f1f00			NOPL 0(AX)				
  vehicle_dao.go:185	0x99a980		e8bbdaadff		CALL runtime.gcWriteBarrier2(SB)	
  vehicle_dao.go:185	0x99a985		498903			MOVQ AX, 0(R11)				
  vehicle_dao.go:185	0x99a988		488b5708		MOVQ 0x8(DI), DX			
  vehicle_dao.go:185	0x99a98c		49895308		MOVQ DX, 0x8(R11)			
  vehicle_dao.go:185	0x99a990		48894708		MOVQ AX, 0x8(DI)			
  vehicle_dao.go:185	0x99a994		488b05a576b702		MOVQ runtime.bss(SB), AX		
  vehicle_dao.go:185	0x99a99b		488d1dbe856d00		LEAQ runtime.types+581472(SB), BX	
  vehicle_dao.go:185	0x99a9a2		488b4c2448		MOVQ 0x48(SP), CX			
  vehicle_dao.go:185	0x99a9a7		be01000000		MOVL $__minor_os_version__(SB), SI	
  vehicle_dao.go:185	0x99a9ac		4989f0			MOVQ SI, R8				
  vehicle_dao.go:185	0x99a9af		e86c87f8ff		CALL gorm.io/gorm.(*DB).Delete(SB)	
  vehicle_dao.go:185	0x99a9b4		4889442438		MOVQ AX, 0x38(SP)			
  vehicle_dao.go:186	0x99a9b9		4883780800		CMPQ 0x8(AX), $0x0			
  vehicle_dao.go:186	0x99a9be		6690			NOPW					
  vehicle_dao.go:186	0x99a9c0		0f8493000000		JE 0x99aa59				
  vehicle_dao.go:187	0x99a9c6		440f117c2470		MOVUPS X15, 0x70(SP)			
  vehicle_dao.go:187	0x99a9cc		440f11bc2480000000	MOVUPS X15, 0x80(SP)			
  vehicle_dao.go:187	0x99a9d5		488b8424a0000000	MOVQ 0xa0(SP), AX			
  vehicle_dao.go:187	0x99a9dd		488b9c24a8000000	MOVQ 0xa8(SP), BX			
  vehicle_dao.go:187	0x99a9e5		e836f7acff		CALL runtime.convTstring(SB)		
  vehicle_dao.go:187	0x99a9ea		488d0d2f7f6a00		LEAQ runtime.types+383264(SB), CX	
  vehicle_dao.go:187	0x99a9f1		48894c2470		MOVQ CX, 0x70(SP)			
  vehicle_dao.go:187	0x99a9f6		4889442478		MOVQ AX, 0x78(SP)			
  vehicle_dao.go:187	0x99a9fb		488b4c2438		MOVQ 0x38(SP), CX			
  vehicle_dao.go:187	0x99aa00		488b5108		MOVQ 0x8(CX), DX			
  vehicle_dao.go:187	0x99aa04		4885d2			TESTQ DX, DX				
  vehicle_dao.go:187	0x99aa07		7404			JE 0x99aa0d				
  vehicle_dao.go:187	0x99aa09		488b5208		MOVQ 0x8(DX), DX			
  vehicle_dao.go:187	0x99aa0d		4c8b5110		MOVQ 0x10(CX), R10			
  vehicle_dao.go:187	0x99aa11		4889942480000000	MOVQ DX, 0x80(SP)			
  vehicle_dao.go:187	0x99aa19		4c89942488000000	MOVQ R10, 0x88(SP)			
  print.go:233		0x99aa21		488b1d5876b702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x99aa28		488d05b1104d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x99aa2f		488d0db22e7f00		LEAQ go:string.*+152544(SB), CX		
  print.go:233		0x99aa36		bf20000000		MOVL $__major_os_version__+26(SB), DI	
  print.go:233		0x99aa3b		488d742470		LEAQ 0x70(SP), SI			
  print.go:233		0x99aa40		41b802000000		MOVL $__minor_os_version__+1(SB), R8	
  print.go:233		0x99aa46		4d89c1			MOVQ R8, R9				
  print.go:233		0x99aa49		e8d247b8ff		CALL fmt.Fprintf(SB)			
  vehicle_dao.go:188	0x99aa4e		31c0			XORL AX, AX				
  vehicle_dao.go:188	0x99aa50		4881c490000000		ADDQ $.file+67(SB), SP			
  vehicle_dao.go:188	0x99aa57		5d			POPQ BP					
  vehicle_dao.go:188	0x99aa58		c3			RET					
  vehicle_dao.go:191	0x99aa59		440f117c2450		MOVUPS X15, 0x50(SP)			
  vehicle_dao.go:191	0x99aa5f		440f117c2460		MOVUPS X15, 0x60(SP)			
  vehicle_dao.go:191	0x99aa65		488b8424a0000000	MOVQ 0xa0(SP), AX			
  vehicle_dao.go:191	0x99aa6d		488b9c24a8000000	MOVQ 0xa8(SP), BX			
  vehicle_dao.go:191	0x99aa75		e8a6f6acff		CALL runtime.convTstring(SB)		
  vehicle_dao.go:191	0x99aa7a		488d0d9f7e6a00		LEAQ runtime.types+383264(SB), CX	
  vehicle_dao.go:191	0x99aa81		48894c2450		MOVQ CX, 0x50(SP)			
  vehicle_dao.go:191	0x99aa86		4889442458		MOVQ AX, 0x58(SP)			
  vehicle_dao.go:191	0x99aa8b		488b4c2438		MOVQ 0x38(SP), CX			
  vehicle_dao.go:191	0x99aa90		488b4118		MOVQ 0x18(CX), AX			
  vehicle_dao.go:191	0x99aa94		e807f6acff		CALL runtime.convT64(SB)		
  vehicle_dao.go:191	0x99aa99		488d0d40806a00		LEAQ runtime.types+383712(SB), CX	
  vehicle_dao.go:191	0x99aaa0		48894c2460		MOVQ CX, 0x60(SP)			
  vehicle_dao.go:191	0x99aaa5		4889442468		MOVQ AX, 0x68(SP)			
  print.go:233		0x99aaaa		488b1dcf75b702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x99aab1		488d0528104d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x99aab8		488d0dde907f00		LEAQ go:string.*+177813(SB), CX		
  print.go:233		0x99aabf		bf26000000		MOVL $__major_os_version__+32(SB), DI	
  print.go:233		0x99aac4		488d742450		LEAQ 0x50(SP), SI			
  print.go:233		0x99aac9		41b802000000		MOVL $__minor_os_version__+1(SB), R8	
  print.go:233		0x99aacf		4d89c1			MOVQ R8, R9				
  print.go:233		0x99aad2		e84947b8ff		CALL fmt.Fprintf(SB)			
  vehicle_dao.go:192	0x99aad7		b801000000		MOVL $__minor_os_version__(SB), AX	
  vehicle_dao.go:192	0x99aadc		4881c490000000		ADDQ $.file+67(SB), SP			
  vehicle_dao.go:192	0x99aae3		5d			POPQ BP					
  vehicle_dao.go:192	0x99aae4		c3			RET					
  vehicle_dao.go:183	0x99aae5		4889442408		MOVQ AX, 0x8(SP)			
  vehicle_dao.go:183	0x99aaea		48895c2410		MOVQ BX, 0x10(SP)			
  vehicle_dao.go:183	0x99aaef		e8ecb9adff		CALL runtime.morestack_noctxt.abi0(SB)	
  vehicle_dao.go:183	0x99aaf4		488b442408		MOVQ 0x8(SP), AX			
  vehicle_dao.go:183	0x99aaf9		488b5c2410		MOVQ 0x10(SP), BX			
  vehicle_dao.go:183	0x99aafe		6690			NOPW					
  vehicle_dao.go:183	0x99ab00		e9fbfdffff		JMP CAS-Backend/biz/dao.Delete_veh(SB)	
  :-1			0x99ab05		cc			INT $__subsystem__(SB)			
  :-1			0x99ab06		cc			INT $__subsystem__(SB)			
  :-1			0x99ab07		cc			INT $__subsystem__(SB)			
  :-1			0x99ab08		cc			INT $__subsystem__(SB)			
  :-1			0x99ab09		cc			INT $__subsystem__(SB)			
  :-1			0x99ab0a		cc			INT $__subsystem__(SB)			
  :-1			0x99ab0b		cc			INT $__subsystem__(SB)			
  :-1			0x99ab0c		cc			INT $__subsystem__(SB)			
  :-1			0x99ab0d		cc			INT $__subsystem__(SB)			
  :-1			0x99ab0e		cc			INT $__subsystem__(SB)			
  :-1			0x99ab0f		cc			INT $__subsystem__(SB)			
  :-1			0x99ab10		cc			INT $__subsystem__(SB)			
  :-1			0x99ab11		cc			INT $__subsystem__(SB)			
  :-1			0x99ab12		cc			INT $__subsystem__(SB)			
  :-1			0x99ab13		cc			INT $__subsystem__(SB)			
  :-1			0x99ab14		cc			INT $__subsystem__(SB)			
  :-1			0x99ab15		cc			INT $__subsystem__(SB)			
  :-1			0x99ab16		cc			INT $__subsystem__(SB)			
  :-1			0x99ab17		cc			INT $__subsystem__(SB)			
  :-1			0x99ab18		cc			INT $__subsystem__(SB)			
  :-1			0x99ab19		cc			INT $__subsystem__(SB)			
  :-1			0x99ab1a		cc			INT $__subsystem__(SB)			
  :-1			0x99ab1b		cc			INT $__subsystem__(SB)			
  :-1			0x99ab1c		cc			INT $__subsystem__(SB)			
  :-1			0x99ab1d		cc			INT $__subsystem__(SB)			
  :-1			0x99ab1e		cc			INT $__subsystem__(SB)			
  :-1			0x99ab1f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.Update_veh(SB) D:/CodeEnv_code/cas-backend/biz/dao/vehicle_dao.go
  vehicle_dao.go:196	0x99ab20		4c8d6424c8		LEAQ -0x38(SP), R12				
  vehicle_dao.go:196	0x99ab25		4d3b6610		CMPQ R12, 0x10(R14)				
  vehicle_dao.go:196	0x99ab29		0f8630050000		JBE 0x99b05f					
  vehicle_dao.go:196	0x99ab2f		55			PUSHQ BP					
  vehicle_dao.go:196	0x99ab30		4889e5			MOVQ SP, BP					
  vehicle_dao.go:196	0x99ab33		4881ecb0000000		SUBQ $.file+99(SB), SP				
  vehicle_dao.go:198	0x99ab3a		488d053f6b7800		LEAQ runtime.types+1296000(SB), AX		
  vehicle_dao.go:198	0x99ab41		e85a6ca7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:198	0x99ab46		4889442468		MOVQ AX, 0x68(SP)				
  vehicle_dao.go:198	0x99ab4b		488b0dee74b702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x99ab52		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x99ab55		e826dcf8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x99ab5a		4889442438		MOVQ AX, 0x38(SP)				
  chainable_api.go:20	0x99ab5f		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x99ab63		488d15f6836d00		LEAQ runtime.types+581472(SB), DX		
  chainable_api.go:20	0x99ab6a		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x99ab6e		833ddb2fbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x99ab75		7509			JNE 0x99ab80					
  chainable_api.go:20	0x99ab77		488b542468		MOVQ 0x68(SP), DX				
  chainable_api.go:20	0x99ab7c		eb17			JMP 0x99ab95					
  chainable_api.go:20	0x99ab7e		6690			NOPW						
  chainable_api.go:20	0x99ab80		e8bbd8adff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x99ab85		488b542468		MOVQ 0x68(SP), DX				
  chainable_api.go:20	0x99ab8a		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x99ab8d		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x99ab91		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x99ab95		48895128		MOVQ DX, 0x28(CX)				
  vehicle_dao.go:198	0x99ab99		488d0500336b00		LEAQ runtime.types+429728(SB), AX		
  vehicle_dao.go:198	0x99aba0		e8fb6ba7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:198	0x99aba5		4889442460		MOVQ AX, 0x60(SP)				
  vehicle_dao.go:198	0x99abaa		488b8c24c0000000	MOVQ 0xc0(SP), CX				
  vehicle_dao.go:198	0x99abb2		488b9c24c8000000	MOVQ 0xc8(SP), BX				
  vehicle_dao.go:198	0x99abba		4889c8			MOVQ CX, AX					
  vehicle_dao.go:198	0x99abbd		0f1f00			NOPL 0(AX)					
  vehicle_dao.go:198	0x99abc0		e85bf5acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:198	0x99abc5		488d1d547d6a00		LEAQ runtime.types+383264(SB), BX		
  vehicle_dao.go:198	0x99abcc		488b7c2460		MOVQ 0x60(SP), DI				
  vehicle_dao.go:198	0x99abd1		48891f			MOVQ BX, 0(DI)					
  vehicle_dao.go:198	0x99abd4		833d752fbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:198	0x99abdb		7413			JE 0x99abf0					
  vehicle_dao.go:198	0x99abdd		0f1f00			NOPL 0(AX)					
  vehicle_dao.go:198	0x99abe0		e85bd8adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:198	0x99abe5		498903			MOVQ AX, 0(R11)					
  vehicle_dao.go:198	0x99abe8		488b5708		MOVQ 0x8(DI), DX				
  vehicle_dao.go:198	0x99abec		49895308		MOVQ DX, 0x8(R11)				
  vehicle_dao.go:198	0x99abf0		48894708		MOVQ AX, 0x8(DI)				
  vehicle_dao.go:198	0x99abf4		488b442438		MOVQ 0x38(SP), AX				
  vehicle_dao.go:198	0x99abf9		488d0d60d14c02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX	
  vehicle_dao.go:198	0x99ac00		be01000000		MOVL $__minor_os_version__(SB), SI		
  vehicle_dao.go:198	0x99ac05		4989f0			MOVQ SI, R8					
  vehicle_dao.go:198	0x99ac08		e89335f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  vehicle_dao.go:198	0x99ac0d		4889442458		MOVQ AX, 0x58(SP)				
  vehicle_dao.go:198	0x99ac12		e8c903adff		CALL runtime.makemap_small(SB)			
  vehicle_dao.go:198	0x99ac17		4889442450		MOVQ AX, 0x50(SP)				
  vehicle_dao.go:199	0x99ac1c		488b9424d0000000	MOVQ 0xd0(SP), DX				
  vehicle_dao.go:199	0x99ac24		488b9c24d8000000	MOVQ 0xd8(SP), BX				
  vehicle_dao.go:199	0x99ac2c		4889d0			MOVQ DX, AX					
  vehicle_dao.go:199	0x99ac2f		e8ecf4acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:199	0x99ac34		4889442448		MOVQ AX, 0x48(SP)				
  vehicle_dao.go:198	0x99ac39		488b5c2450		MOVQ 0x50(SP), BX				
  vehicle_dao.go:198	0x99ac3e		488d0dcfd87c00		LEAQ go:string.*+12(SB), CX			
  vehicle_dao.go:198	0x99ac45		bf02000000		MOVL $__minor_os_version__+1(SB), DI		
  vehicle_dao.go:198	0x99ac4a		488d056f286e00		LEAQ runtime.types+623808(SB), AX		
  vehicle_dao.go:198	0x99ac51		e8ca33adff		CALL runtime.mapassign_faststr(SB)		
  vehicle_dao.go:198	0x99ac56		488d15c37c6a00		LEAQ runtime.types+383264(SB), DX		
  vehicle_dao.go:198	0x99ac5d		488910			MOVQ DX, 0(AX)					
  vehicle_dao.go:198	0x99ac60		833de92ebc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:198	0x99ac67		7507			JNE 0x99ac70					
  vehicle_dao.go:198	0x99ac69		488b4c2448		MOVQ 0x48(SP), CX				
  vehicle_dao.go:198	0x99ac6e		eb15			JMP 0x99ac85					
  vehicle_dao.go:198	0x99ac70		e8cbd7adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:198	0x99ac75		488b4c2448		MOVQ 0x48(SP), CX				
  vehicle_dao.go:198	0x99ac7a		49890b			MOVQ CX, 0(R11)					
  vehicle_dao.go:198	0x99ac7d		488b5808		MOVQ 0x8(AX), BX				
  vehicle_dao.go:198	0x99ac81		49895b08		MOVQ BX, 0x8(R11)				
  vehicle_dao.go:198	0x99ac85		48894808		MOVQ CX, 0x8(AX)				
  vehicle_dao.go:200	0x99ac89		488b8424e0000000	MOVQ 0xe0(SP), AX				
  vehicle_dao.go:200	0x99ac91		e80af4acff		CALL runtime.convT64(SB)			
  vehicle_dao.go:200	0x99ac96		4889442448		MOVQ AX, 0x48(SP)				
  vehicle_dao.go:198	0x99ac9b		488b5c2450		MOVQ 0x50(SP), BX				
  vehicle_dao.go:198	0x99aca0		488d0d89e87c00		LEAQ go:string.*+4136(SB), CX			
  vehicle_dao.go:198	0x99aca7		bf04000000		MOVL $__subsystem__+1(SB), DI			
  vehicle_dao.go:198	0x99acac		488d050d286e00		LEAQ runtime.types+623808(SB), AX		
  vehicle_dao.go:198	0x99acb3		e86833adff		CALL runtime.mapassign_faststr(SB)		
  vehicle_dao.go:198	0x99acb8		488d0da17e6a00		LEAQ runtime.types+383840(SB), CX		
  vehicle_dao.go:198	0x99acbf		488908			MOVQ CX, 0(AX)					
  vehicle_dao.go:198	0x99acc2		833d872ebc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:198	0x99acc9		7507			JNE 0x99acd2					
  vehicle_dao.go:198	0x99accb		488b4c2448		MOVQ 0x48(SP), CX				
  vehicle_dao.go:198	0x99acd0		eb15			JMP 0x99ace7					
  vehicle_dao.go:198	0x99acd2		e869d7adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:198	0x99acd7		488b4c2448		MOVQ 0x48(SP), CX				
  vehicle_dao.go:198	0x99acdc		49890b			MOVQ CX, 0(R11)					
  vehicle_dao.go:198	0x99acdf		488b5008		MOVQ 0x8(AX), DX				
  vehicle_dao.go:198	0x99ace3		49895308		MOVQ DX, 0x8(R11)				
  vehicle_dao.go:198	0x99ace7		48894808		MOVQ CX, 0x8(AX)				
  vehicle_dao.go:201	0x99aceb		488b8424e8000000	MOVQ 0xe8(SP), AX				
  vehicle_dao.go:201	0x99acf3		488b9c24f0000000	MOVQ 0xf0(SP), BX				
  vehicle_dao.go:201	0x99acfb		0f1f440000		NOPL 0(AX)(AX*1)				
  vehicle_dao.go:201	0x99ad00		e81bf4acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:201	0x99ad05		4889442448		MOVQ AX, 0x48(SP)				
  vehicle_dao.go:198	0x99ad0a		488b5c2450		MOVQ 0x50(SP), BX				
  vehicle_dao.go:198	0x99ad0f		488d0d12e87c00		LEAQ go:string.*+4128(SB), CX			
  vehicle_dao.go:198	0x99ad16		bf04000000		MOVL $__subsystem__+1(SB), DI			
  vehicle_dao.go:198	0x99ad1b		488d059e276e00		LEAQ runtime.types+623808(SB), AX		
  vehicle_dao.go:198	0x99ad22		e8f932adff		CALL runtime.mapassign_faststr(SB)		
  vehicle_dao.go:198	0x99ad27		488d0df27b6a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:198	0x99ad2e		488908			MOVQ CX, 0(AX)					
  vehicle_dao.go:198	0x99ad31		833d182ebc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:198	0x99ad38		7508			JNE 0x99ad42					
  vehicle_dao.go:198	0x99ad3a		488b542448		MOVQ 0x48(SP), DX				
  vehicle_dao.go:198	0x99ad3f		90			NOPL						
  vehicle_dao.go:198	0x99ad40		eb15			JMP 0x99ad57					
  vehicle_dao.go:198	0x99ad42		e8f9d6adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:198	0x99ad47		488b542448		MOVQ 0x48(SP), DX				
  vehicle_dao.go:198	0x99ad4c		498913			MOVQ DX, 0(R11)					
  vehicle_dao.go:198	0x99ad4f		488b7008		MOVQ 0x8(AX), SI				
  vehicle_dao.go:198	0x99ad53		49897308		MOVQ SI, 0x8(R11)				
  vehicle_dao.go:198	0x99ad57		48895008		MOVQ DX, 0x8(AX)				
  vehicle_dao.go:202	0x99ad5b		488b8424f8000000	MOVQ 0xf8(SP), AX				
  vehicle_dao.go:202	0x99ad63		488b9c2400010000	MOVQ 0x100(SP), BX				
  vehicle_dao.go:202	0x99ad6b		e8b0f3acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:202	0x99ad70		4889442448		MOVQ AX, 0x48(SP)				
  vehicle_dao.go:198	0x99ad75		488b5c2450		MOVQ 0x50(SP), BX				
  vehicle_dao.go:198	0x99ad7a		488d0db3e77c00		LEAQ go:string.*+4140(SB), CX			
  vehicle_dao.go:198	0x99ad81		bf04000000		MOVL $__subsystem__+1(SB), DI			
  vehicle_dao.go:198	0x99ad86		488d0533276e00		LEAQ runtime.types+623808(SB), AX		
  vehicle_dao.go:198	0x99ad8d		e88e32adff		CALL runtime.mapassign_faststr(SB)		
  vehicle_dao.go:198	0x99ad92		488d0d877b6a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:198	0x99ad99		488908			MOVQ CX, 0(AX)					
  vehicle_dao.go:198	0x99ad9c		833dad2dbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:198	0x99ada3		7507			JNE 0x99adac					
  vehicle_dao.go:198	0x99ada5		488b542448		MOVQ 0x48(SP), DX				
  vehicle_dao.go:198	0x99adaa		eb15			JMP 0x99adc1					
  vehicle_dao.go:198	0x99adac		e88fd6adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:198	0x99adb1		488b542448		MOVQ 0x48(SP), DX				
  vehicle_dao.go:198	0x99adb6		498913			MOVQ DX, 0(R11)					
  vehicle_dao.go:198	0x99adb9		488b7008		MOVQ 0x8(AX), SI				
  vehicle_dao.go:198	0x99adbd		49897308		MOVQ SI, 0x8(R11)				
  vehicle_dao.go:198	0x99adc1		48895008		MOVQ DX, 0x8(AX)				
  vehicle_dao.go:203	0x99adc5		488b842408010000	MOVQ 0x108(SP), AX				
  vehicle_dao.go:203	0x99adcd		488b9c2410010000	MOVQ 0x110(SP), BX				
  vehicle_dao.go:203	0x99add5		e846f3acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:203	0x99adda		4889442448		MOVQ AX, 0x48(SP)				
  vehicle_dao.go:198	0x99addf		488b5c2450		MOVQ 0x50(SP), BX				
  vehicle_dao.go:198	0x99ade4		488d0deff77c00		LEAQ go:string.*+8402(SB), CX			
  vehicle_dao.go:198	0x99adeb		bf05000000		MOVL $__subsystem__+2(SB), DI			
  vehicle_dao.go:198	0x99adf0		488d05c9266e00		LEAQ runtime.types+623808(SB), AX		
  vehicle_dao.go:198	0x99adf7		e82432adff		CALL runtime.mapassign_faststr(SB)		
  vehicle_dao.go:198	0x99adfc		488d0d1d7b6a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:198	0x99ae03		488908			MOVQ CX, 0(AX)					
  vehicle_dao.go:198	0x99ae06		833d432dbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:198	0x99ae0d		7507			JNE 0x99ae16					
  vehicle_dao.go:198	0x99ae0f		488b542448		MOVQ 0x48(SP), DX				
  vehicle_dao.go:198	0x99ae14		eb15			JMP 0x99ae2b					
  vehicle_dao.go:198	0x99ae16		e825d6adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:198	0x99ae1b		488b542448		MOVQ 0x48(SP), DX				
  vehicle_dao.go:198	0x99ae20		498913			MOVQ DX, 0(R11)					
  vehicle_dao.go:198	0x99ae23		488b7008		MOVQ 0x8(AX), SI				
  vehicle_dao.go:198	0x99ae27		49897308		MOVQ SI, 0x8(R11)				
  vehicle_dao.go:198	0x99ae2b		48895008		MOVQ DX, 0x8(AX)				
  vehicle_dao.go:204	0x99ae2f		488b842418010000	MOVQ 0x118(SP), AX				
  vehicle_dao.go:204	0x99ae37		488b9c2420010000	MOVQ 0x120(SP), BX				
  vehicle_dao.go:204	0x99ae3f		90			NOPL						
  vehicle_dao.go:204	0x99ae40		e8dbf2acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:204	0x99ae45		4889442448		MOVQ AX, 0x48(SP)				
  vehicle_dao.go:198	0x99ae4a		488b5c2450		MOVQ 0x50(SP), BX				
  vehicle_dao.go:198	0x99ae4f		488d0ddab27d00		LEAQ go:string.*+56360(SB), CX			
  vehicle_dao.go:198	0x99ae56		bf0a000000		MOVL $__major_os_version__+4(SB), DI		
  vehicle_dao.go:198	0x99ae5b		488d055e266e00		LEAQ runtime.types+623808(SB), AX		
  vehicle_dao.go:198	0x99ae62		e8b931adff		CALL runtime.mapassign_faststr(SB)		
  vehicle_dao.go:198	0x99ae67		488d0db27a6a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:198	0x99ae6e		488908			MOVQ CX, 0(AX)					
  vehicle_dao.go:198	0x99ae71		833dd82cbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:198	0x99ae78		7508			JNE 0x99ae82					
  vehicle_dao.go:198	0x99ae7a		488b542448		MOVQ 0x48(SP), DX				
  vehicle_dao.go:198	0x99ae7f		90			NOPL						
  vehicle_dao.go:198	0x99ae80		eb15			JMP 0x99ae97					
  vehicle_dao.go:198	0x99ae82		e8b9d5adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:198	0x99ae87		488b542448		MOVQ 0x48(SP), DX				
  vehicle_dao.go:198	0x99ae8c		498913			MOVQ DX, 0(R11)					
  vehicle_dao.go:198	0x99ae8f		488b7008		MOVQ 0x8(AX), SI				
  vehicle_dao.go:198	0x99ae93		49897308		MOVQ SI, 0x8(R11)				
  vehicle_dao.go:198	0x99ae97		48895008		MOVQ DX, 0x8(AX)				
  vehicle_dao.go:205	0x99ae9b		488b842428010000	MOVQ 0x128(SP), AX				
  vehicle_dao.go:205	0x99aea3		488b9c2430010000	MOVQ 0x130(SP), BX				
  vehicle_dao.go:205	0x99aeab		e870f2acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:205	0x99aeb0		4889442448		MOVQ AX, 0x48(SP)				
  vehicle_dao.go:198	0x99aeb5		488b5c2450		MOVQ 0x50(SP), BX				
  vehicle_dao.go:198	0x99aeba		488d0d79b27d00		LEAQ go:string.*+56370(SB), CX			
  vehicle_dao.go:198	0x99aec1		bf0a000000		MOVL $__major_os_version__+4(SB), DI		
  vehicle_dao.go:198	0x99aec6		488d05f3256e00		LEAQ runtime.types+623808(SB), AX		
  vehicle_dao.go:198	0x99aecd		e84e31adff		CALL runtime.mapassign_faststr(SB)		
  vehicle_dao.go:198	0x99aed2		488d0d477a6a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:198	0x99aed9		488908			MOVQ CX, 0(AX)					
  vehicle_dao.go:198	0x99aedc		833d6d2cbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:198	0x99aee3		7507			JNE 0x99aeec					
  vehicle_dao.go:198	0x99aee5		488b542448		MOVQ 0x48(SP), DX				
  vehicle_dao.go:198	0x99aeea		eb15			JMP 0x99af01					
  vehicle_dao.go:198	0x99aeec		e84fd5adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:198	0x99aef1		488b542448		MOVQ 0x48(SP), DX				
  vehicle_dao.go:198	0x99aef6		498913			MOVQ DX, 0(R11)					
  vehicle_dao.go:198	0x99aef9		488b7008		MOVQ 0x8(AX), SI				
  vehicle_dao.go:198	0x99aefd		49897308		MOVQ SI, 0x8(R11)				
  vehicle_dao.go:198	0x99af01		48895008		MOVQ DX, 0x8(AX)				
  vehicle_dao.go:198	0x99af05		488b442458		MOVQ 0x58(SP), AX				
  vehicle_dao.go:198	0x99af0a		488d1daf256e00		LEAQ runtime.types+623808(SB), BX		
  vehicle_dao.go:198	0x99af11		488b4c2450		MOVQ 0x50(SP), CX				
  vehicle_dao.go:198	0x99af16		e8e57ef8ff		CALL gorm.io/gorm.(*DB).Updates(SB)		
  vehicle_dao.go:198	0x99af1b		4889442440		MOVQ AX, 0x40(SP)				
  vehicle_dao.go:208	0x99af20		4883780800		CMPQ 0x8(AX), $0x0				
  vehicle_dao.go:208	0x99af25		0f849f000000		JE 0x99afca					
  vehicle_dao.go:209	0x99af2b		440f11bc2490000000	MOVUPS X15, 0x90(SP)				
  vehicle_dao.go:209	0x99af34		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)				
  vehicle_dao.go:209	0x99af3d		488b8424c0000000	MOVQ 0xc0(SP), AX				
  vehicle_dao.go:209	0x99af45		488b9c24c8000000	MOVQ 0xc8(SP), BX				
  vehicle_dao.go:209	0x99af4d		e8cef1acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:209	0x99af52		488d0dc7796a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:209	0x99af59		48898c2490000000	MOVQ CX, 0x90(SP)				
  vehicle_dao.go:209	0x99af61		4889842498000000	MOVQ AX, 0x98(SP)				
  vehicle_dao.go:209	0x99af69		488b4c2440		MOVQ 0x40(SP), CX				
  vehicle_dao.go:209	0x99af6e		488b5108		MOVQ 0x8(CX), DX				
  vehicle_dao.go:209	0x99af72		4885d2			TESTQ DX, DX					
  vehicle_dao.go:209	0x99af75		7404			JE 0x99af7b					
  vehicle_dao.go:209	0x99af77		488b5208		MOVQ 0x8(DX), DX				
  vehicle_dao.go:209	0x99af7b		4c8b5110		MOVQ 0x10(CX), R10				
  vehicle_dao.go:209	0x99af7f		48899424a0000000	MOVQ DX, 0xa0(SP)				
  vehicle_dao.go:209	0x99af87		4c899424a8000000	MOVQ R10, 0xa8(SP)				
  print.go:233		0x99af8f		488b1dea70b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99af96		488d05430b4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99af9d		488d0d64297f00		LEAQ go:string.*+152576(SB), CX			
  print.go:233		0x99afa4		bf20000000		MOVL $__major_os_version__+26(SB), DI		
  print.go:233		0x99afa9		488db42490000000	LEAQ 0x90(SP), SI				
  print.go:233		0x99afb1		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x99afb7		4d89c1			MOVQ R8, R9					
  print.go:233		0x99afba		e86142b8ff		CALL fmt.Fprintf(SB)				
  vehicle_dao.go:210	0x99afbf		31c0			XORL AX, AX					
  vehicle_dao.go:210	0x99afc1		4881c4b0000000		ADDQ $.file+99(SB), SP				
  vehicle_dao.go:210	0x99afc8		5d			POPQ BP						
  vehicle_dao.go:210	0x99afc9		c3			RET						
  vehicle_dao.go:213	0x99afca		440f117c2470		MOVUPS X15, 0x70(SP)				
  vehicle_dao.go:213	0x99afd0		440f11bc2480000000	MOVUPS X15, 0x80(SP)				
  vehicle_dao.go:213	0x99afd9		488b8424c0000000	MOVQ 0xc0(SP), AX				
  vehicle_dao.go:213	0x99afe1		488b9c24c8000000	MOVQ 0xc8(SP), BX				
  vehicle_dao.go:213	0x99afe9		e832f1acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:213	0x99afee		488d0d2b796a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:213	0x99aff5		48894c2470		MOVQ CX, 0x70(SP)				
  vehicle_dao.go:213	0x99affa		4889442478		MOVQ AX, 0x78(SP)				
  vehicle_dao.go:213	0x99afff		488b4c2440		MOVQ 0x40(SP), CX				
  vehicle_dao.go:213	0x99b004		488b4118		MOVQ 0x18(CX), AX				
  vehicle_dao.go:213	0x99b008		e893f0acff		CALL runtime.convT64(SB)			
  vehicle_dao.go:213	0x99b00d		488d0dcc7a6a00		LEAQ runtime.types+383712(SB), CX		
  vehicle_dao.go:213	0x99b014		48898c2480000000	MOVQ CX, 0x80(SP)				
  vehicle_dao.go:213	0x99b01c		4889842488000000	MOVQ AX, 0x88(SP)				
  print.go:233		0x99b024		488b1d5570b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99b02b		488d05ae0a4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99b032		488d0d8a8b7f00		LEAQ go:string.*+177851(SB), CX			
  print.go:233		0x99b039		bf26000000		MOVL $__major_os_version__+32(SB), DI		
  print.go:233		0x99b03e		488d742470		LEAQ 0x70(SP), SI				
  print.go:233		0x99b043		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x99b049		4d89c1			MOVQ R8, R9					
  print.go:233		0x99b04c		e8cf41b8ff		CALL fmt.Fprintf(SB)				
  vehicle_dao.go:214	0x99b051		b801000000		MOVL $__minor_os_version__(SB), AX		
  vehicle_dao.go:214	0x99b056		4881c4b0000000		ADDQ $.file+99(SB), SP				
  vehicle_dao.go:214	0x99b05d		5d			POPQ BP						
  vehicle_dao.go:214	0x99b05e		c3			RET						
  vehicle_dao.go:196	0x99b05f		90			NOPL						
  vehicle_dao.go:196	0x99b060		e87bb4adff		CALL runtime.morestack_noctxt.abi0(SB)		
  vehicle_dao.go:196	0x99b065		e9b6faffff		JMP CAS-Backend/biz/dao.Update_veh(SB)		
  :-1			0x99b06a		cc			INT $__subsystem__(SB)				
  :-1			0x99b06b		cc			INT $__subsystem__(SB)				
  :-1			0x99b06c		cc			INT $__subsystem__(SB)				
  :-1			0x99b06d		cc			INT $__subsystem__(SB)				
  :-1			0x99b06e		cc			INT $__subsystem__(SB)				
  :-1			0x99b06f		cc			INT $__subsystem__(SB)				
  :-1			0x99b070		cc			INT $__subsystem__(SB)				
  :-1			0x99b071		cc			INT $__subsystem__(SB)				
  :-1			0x99b072		cc			INT $__subsystem__(SB)				
  :-1			0x99b073		cc			INT $__subsystem__(SB)				
  :-1			0x99b074		cc			INT $__subsystem__(SB)				
  :-1			0x99b075		cc			INT $__subsystem__(SB)				
  :-1			0x99b076		cc			INT $__subsystem__(SB)				
  :-1			0x99b077		cc			INT $__subsystem__(SB)				
  :-1			0x99b078		cc			INT $__subsystem__(SB)				
  :-1			0x99b079		cc			INT $__subsystem__(SB)				
  :-1			0x99b07a		cc			INT $__subsystem__(SB)				
  :-1			0x99b07b		cc			INT $__subsystem__(SB)				
  :-1			0x99b07c		cc			INT $__subsystem__(SB)				
  :-1			0x99b07d		cc			INT $__subsystem__(SB)				
  :-1			0x99b07e		cc			INT $__subsystem__(SB)				
  :-1			0x99b07f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.SelectALL_veh(SB) D:/CodeEnv_code/cas-backend/biz/dao/vehicle_dao.go
  vehicle_dao.go:232	0x99b080		4c8d6424d0		LEAQ -0x30(SP), R12				
  vehicle_dao.go:232	0x99b085		4d3b6610		CMPQ R12, 0x10(R14)				
  vehicle_dao.go:232	0x99b089		0f86f0040000		JBE 0x99b57f					
  vehicle_dao.go:232	0x99b08f		55			PUSHQ BP					
  vehicle_dao.go:232	0x99b090		4889e5			MOVQ SP, BP					
  vehicle_dao.go:232	0x99b093		4881eca8000000		SUBQ $.file+91(SB), SP				
  vehicle_dao.go:240	0x99b09a		48898424b8000000	MOVQ AX, 0xb8(SP)				
  vehicle_dao.go:240	0x99b0a2		48899c24c0000000	MOVQ BX, 0xc0(SP)				
  vehicle_dao.go:240	0x99b0aa		4c898c24e8000000	MOVQ R9, 0xe8(SP)				
  vehicle_dao.go:240	0x99b0b2		4c898424e0000000	MOVQ R8, 0xe0(SP)				
  vehicle_dao.go:240	0x99b0ba		4889b424d8000000	MOVQ SI, 0xd8(SP)				
  vehicle_dao.go:240	0x99b0c2		4889bc24d0000000	MOVQ DI, 0xd0(SP)				
  vehicle_dao.go:240	0x99b0ca		48898c24c8000000	MOVQ CX, 0xc8(SP)				
  vehicle_dao.go:233	0x99b0d2		488d05077a6a00		LEAQ runtime.types+383712(SB), AX		
  vehicle_dao.go:233	0x99b0d9		e8c266a7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:233	0x99b0de		48898424a0000000	MOVQ AX, 0xa0(SP)				
  vehicle_dao.go:234	0x99b0e6		488d0533986900		LEAQ runtime.types+325920(SB), AX		
  vehicle_dao.go:234	0x99b0ed		e8ae66a7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:234	0x99b0f2		4889842498000000	MOVQ AX, 0x98(SP)				
  vehicle_dao.go:234	0x99b0fa		48c70000000000		MOVQ $0x0, 0(AX)				
  vehicle_dao.go:237	0x99b101		488d0578657800		LEAQ runtime.types+1296000(SB), AX		
  vehicle_dao.go:237	0x99b108		e89366a7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:237	0x99b10d		4889442470		MOVQ AX, 0x70(SP)				
  vehicle_dao.go:237	0x99b112		488b0d276fb702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x99b119		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x99b11c		0f1f4000		NOPL 0(AX)					
  chainable_api.go:19	0x99b120		e85bd6f8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:20	0x99b125		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x99b129		488d15307e6d00		LEAQ runtime.types+581472(SB), DX		
  chainable_api.go:20	0x99b130		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x99b134		833d152abc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x99b13b		7507			JNE 0x99b144					
  chainable_api.go:20	0x99b13d		488b542470		MOVQ 0x70(SP), DX				
  chainable_api.go:20	0x99b142		eb15			JMP 0x99b159					
  chainable_api.go:20	0x99b144		e8f7d2adff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x99b149		488b542470		MOVQ 0x70(SP), DX				
  chainable_api.go:20	0x99b14e		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x99b151		4c8b5128		MOVQ 0x28(CX), R10				
  chainable_api.go:20	0x99b155		4d895308		MOVQ R10, 0x8(R11)				
  chainable_api.go:20	0x99b159		48895128		MOVQ DX, 0x28(CX)				
  vehicle_dao.go:240	0x99b15d		488bb424d0000000	MOVQ 0xd0(SP), SI				
  vehicle_dao.go:240	0x99b165		4885f6			TESTQ SI, SI					
  vehicle_dao.go:240	0x99b168		0f8485010000		JE 0x99b2f3					
  chainable_api.go:19	0x99b16e		4889442440		MOVQ AX, 0x40(SP)				
  vehicle_dao.go:241	0x99b173		31c0			XORL AX, AX					
  vehicle_dao.go:241	0x99b175		488d1db4994c02		LEAQ runtime.gcbits.*+112(SB), BX		
  vehicle_dao.go:241	0x99b17c		b901000000		MOVL $__minor_os_version__(SB), CX		
  vehicle_dao.go:241	0x99b181		488bbc24c8000000	MOVQ 0xc8(SP), DI				
  vehicle_dao.go:241	0x99b189		4989d8			MOVQ BX, R8					
  vehicle_dao.go:241	0x99b18c		4989c9			MOVQ CX, R9					
  vehicle_dao.go:241	0x99b18f		e80ca3abff		CALL runtime.concatstring3(SB)			
  vehicle_dao.go:241	0x99b194		4889442448		MOVQ AX, 0x48(SP)				
  vehicle_dao.go:241	0x99b199		48895c2438		MOVQ BX, 0x38(SP)				
  vehicle_dao.go:243	0x99b19e		488d05fb326b00		LEAQ runtime.types+431264(SB), AX		
  vehicle_dao.go:243	0x99b1a5		e8f665a7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:243	0x99b1aa		4889442468		MOVQ AX, 0x68(SP)				
  vehicle_dao.go:244	0x99b1af		488b5c2438		MOVQ 0x38(SP), BX				
  vehicle_dao.go:244	0x99b1b4		488b442448		MOVQ 0x48(SP), AX				
  vehicle_dao.go:244	0x99b1b9		e862efacff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:244	0x99b1be		488d155b776a00		LEAQ runtime.types+383264(SB), DX		
  vehicle_dao.go:244	0x99b1c5		4c8b542468		MOVQ 0x68(SP), R10				
  vehicle_dao.go:244	0x99b1ca		498912			MOVQ DX, 0(R10)					
  vehicle_dao.go:244	0x99b1cd		833d7c29bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:244	0x99b1d4		7410			JE 0x99b1e6					
  vehicle_dao.go:244	0x99b1d6		e865d2adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:244	0x99b1db		498903			MOVQ AX, 0(R11)					
  vehicle_dao.go:244	0x99b1de		498b4a08		MOVQ 0x8(R10), CX				
  vehicle_dao.go:244	0x99b1e2		49894b08		MOVQ CX, 0x8(R11)				
  vehicle_dao.go:244	0x99b1e6		49894208		MOVQ AX, 0x8(R10)				
  vehicle_dao.go:244	0x99b1ea		488b442448		MOVQ 0x48(SP), AX				
  vehicle_dao.go:244	0x99b1ef		488b5c2438		MOVQ 0x38(SP), BX				
  vehicle_dao.go:244	0x99b1f4		e827efacff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:244	0x99b1f9		488d0d20776a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:244	0x99b200		488b542468		MOVQ 0x68(SP), DX				
  vehicle_dao.go:244	0x99b205		48894a10		MOVQ CX, 0x10(DX)				
  vehicle_dao.go:244	0x99b209		833d4029bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:244	0x99b210		7410			JE 0x99b222					
  vehicle_dao.go:244	0x99b212		e829d2adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:244	0x99b217		498903			MOVQ AX, 0(R11)					
  vehicle_dao.go:244	0x99b21a		488b7218		MOVQ 0x18(DX), SI				
  vehicle_dao.go:244	0x99b21e		49897308		MOVQ SI, 0x8(R11)				
  vehicle_dao.go:244	0x99b222		48894218		MOVQ AX, 0x18(DX)				
  vehicle_dao.go:244	0x99b226		488b442448		MOVQ 0x48(SP), AX				
  vehicle_dao.go:244	0x99b22b		488b5c2438		MOVQ 0x38(SP), BX				
  vehicle_dao.go:244	0x99b230		e8ebeeacff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:244	0x99b235		488d0de4766a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:244	0x99b23c		488b542468		MOVQ 0x68(SP), DX				
  vehicle_dao.go:244	0x99b241		48894a20		MOVQ CX, 0x20(DX)				
  vehicle_dao.go:244	0x99b245		833d0429bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:244	0x99b24c		7410			JE 0x99b25e					
  vehicle_dao.go:244	0x99b24e		e8edd1adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:244	0x99b253		498903			MOVQ AX, 0(R11)					
  vehicle_dao.go:244	0x99b256		488b7228		MOVQ 0x28(DX), SI				
  vehicle_dao.go:244	0x99b25a		49897308		MOVQ SI, 0x8(R11)				
  vehicle_dao.go:244	0x99b25e		48894228		MOVQ AX, 0x28(DX)				
  vehicle_dao.go:244	0x99b262		488b442448		MOVQ 0x48(SP), AX				
  vehicle_dao.go:244	0x99b267		488b5c2438		MOVQ 0x38(SP), BX				
  vehicle_dao.go:244	0x99b26c		e8afeeacff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:244	0x99b271		488d0da8766a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:244	0x99b278		488b542468		MOVQ 0x68(SP), DX				
  vehicle_dao.go:244	0x99b27d		48894a30		MOVQ CX, 0x30(DX)				
  vehicle_dao.go:244	0x99b281		833dc828bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:244	0x99b288		7410			JE 0x99b29a					
  vehicle_dao.go:244	0x99b28a		e8b1d1adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:244	0x99b28f		498903			MOVQ AX, 0(R11)					
  vehicle_dao.go:244	0x99b292		488b7238		MOVQ 0x38(DX), SI				
  vehicle_dao.go:244	0x99b296		49897308		MOVQ SI, 0x8(R11)				
  vehicle_dao.go:244	0x99b29a		48894238		MOVQ AX, 0x38(DX)				
  vehicle_dao.go:244	0x99b29e		488b442448		MOVQ 0x48(SP), AX				
  vehicle_dao.go:244	0x99b2a3		488b5c2438		MOVQ 0x38(SP), BX				
  vehicle_dao.go:244	0x99b2a8		e873eeacff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:244	0x99b2ad		488d1d6c766a00		LEAQ runtime.types+383264(SB), BX		
  vehicle_dao.go:244	0x99b2b4		488b7c2468		MOVQ 0x68(SP), DI				
  vehicle_dao.go:244	0x99b2b9		48895f40		MOVQ BX, 0x40(DI)				
  vehicle_dao.go:244	0x99b2bd		833d8c28bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:244	0x99b2c4		7410			JE 0x99b2d6					
  vehicle_dao.go:244	0x99b2c6		e875d1adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:244	0x99b2cb		498903			MOVQ AX, 0(R11)					
  vehicle_dao.go:244	0x99b2ce		488b5748		MOVQ 0x48(DI), DX				
  vehicle_dao.go:244	0x99b2d2		49895308		MOVQ DX, 0x8(R11)				
  vehicle_dao.go:244	0x99b2d6		48894748		MOVQ AX, 0x48(DI)				
  vehicle_dao.go:243	0x99b2da		488b442440		MOVQ 0x40(SP), AX				
  vehicle_dao.go:243	0x99b2df		488d0dfaca4c02		LEAQ CAS-Backend/biz/dao..stmp_41(SB), CX	
  vehicle_dao.go:243	0x99b2e6		be05000000		MOVL $__subsystem__+2(SB), SI			
  vehicle_dao.go:243	0x99b2eb		4989f0			MOVQ SI, R8					
  vehicle_dao.go:243	0x99b2ee		e8ad2ef8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  vehicle_dao.go:248	0x99b2f3		488b8c24e0000000	MOVQ 0xe0(SP), CX				
  vehicle_dao.go:248	0x99b2fb		0f1f440000		NOPL 0(AX)(AX*1)				
  vehicle_dao.go:248	0x99b300		4885c9			TESTQ CX, CX					
  vehicle_dao.go:248	0x99b303		7470			JE 0x99b375					
  vehicle_dao.go:254	0x99b305		4889442450		MOVQ AX, 0x50(SP)				
  vehicle_dao.go:249	0x99b30a		488d058f2b6b00		LEAQ runtime.types+429728(SB), AX		
  vehicle_dao.go:249	0x99b311		e88a64a7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:249	0x99b316		4889442460		MOVQ AX, 0x60(SP)				
  vehicle_dao.go:249	0x99b31b		488b9c24e0000000	MOVQ 0xe0(SP), BX				
  vehicle_dao.go:249	0x99b323		488b8424d8000000	MOVQ 0xd8(SP), AX				
  vehicle_dao.go:249	0x99b32b		e8f0edacff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:249	0x99b330		488d1de9756a00		LEAQ runtime.types+383264(SB), BX		
  vehicle_dao.go:249	0x99b337		488b7c2460		MOVQ 0x60(SP), DI				
  vehicle_dao.go:249	0x99b33c		48891f			MOVQ BX, 0(DI)					
  vehicle_dao.go:249	0x99b33f		833d0a28bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:249	0x99b346		7410			JE 0x99b358					
  vehicle_dao.go:249	0x99b348		e8f3d0adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:249	0x99b34d		498903			MOVQ AX, 0(R11)					
  vehicle_dao.go:249	0x99b350		488b5708		MOVQ 0x8(DI), DX				
  vehicle_dao.go:249	0x99b354		49895308		MOVQ DX, 0x8(R11)				
  vehicle_dao.go:249	0x99b358		48894708		MOVQ AX, 0x8(DI)				
  vehicle_dao.go:249	0x99b35c		488b442450		MOVQ 0x50(SP), AX				
  vehicle_dao.go:249	0x99b361		488d0d88ca4c02		LEAQ CAS-Backend/biz/dao..stmp_42(SB), CX	
  vehicle_dao.go:249	0x99b368		be01000000		MOVL $__minor_os_version__(SB), SI		
  vehicle_dao.go:249	0x99b36d		4989f0			MOVQ SI, R8					
  vehicle_dao.go:249	0x99b370		e82b2ef8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  vehicle_dao.go:253	0x99b375		488b8c24e8000000	MOVQ 0xe8(SP), CX				
  vehicle_dao.go:253	0x99b37d		0f1f00			NOPL 0(AX)					
  vehicle_dao.go:253	0x99b380		4881f900040000		CMPQ CX, $__file_alignment__+512(SB)		
  vehicle_dao.go:253	0x99b387		7c6f			JL 0x99b3f8					
  vehicle_dao.go:254	0x99b389		4889442458		MOVQ AX, 0x58(SP)				
  vehicle_dao.go:254	0x99b38e		488d050b2b6b00		LEAQ runtime.types+429728(SB), AX		
  vehicle_dao.go:254	0x99b395		e80664a7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:254	0x99b39a		4889442460		MOVQ AX, 0x60(SP)				
  vehicle_dao.go:254	0x99b39f		488b8424e8000000	MOVQ 0xe8(SP), AX				
  vehicle_dao.go:254	0x99b3a7		e8f4ecacff		CALL runtime.convT64(SB)			
  vehicle_dao.go:254	0x99b3ac		488d0dad776a00		LEAQ runtime.types+383840(SB), CX		
  vehicle_dao.go:254	0x99b3b3		488b7c2460		MOVQ 0x60(SP), DI				
  vehicle_dao.go:254	0x99b3b8		48890f			MOVQ CX, 0(DI)					
  vehicle_dao.go:254	0x99b3bb		833d8e27bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:254	0x99b3c2		7410			JE 0x99b3d4					
  vehicle_dao.go:254	0x99b3c4		e877d0adff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:254	0x99b3c9		498903			MOVQ AX, 0(R11)					
  vehicle_dao.go:254	0x99b3cc		488b5708		MOVQ 0x8(DI), DX				
  vehicle_dao.go:254	0x99b3d0		49895308		MOVQ DX, 0x8(R11)				
  vehicle_dao.go:254	0x99b3d4		48894708		MOVQ AX, 0x8(DI)				
  vehicle_dao.go:254	0x99b3d8		488b442458		MOVQ 0x58(SP), AX				
  vehicle_dao.go:254	0x99b3dd		488d1d3c756a00		LEAQ runtime.types+383264(SB), BX		
  vehicle_dao.go:254	0x99b3e4		488d0d15ca4c02		LEAQ CAS-Backend/biz/dao..stmp_43(SB), CX	
  vehicle_dao.go:254	0x99b3eb		be01000000		MOVL $__minor_os_version__(SB), SI		
  vehicle_dao.go:254	0x99b3f0		4989f0			MOVQ SI, R8					
  vehicle_dao.go:254	0x99b3f3		e8a82df8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  vehicle_dao.go:258	0x99b3f8		4889442450		MOVQ AX, 0x50(SP)				
  vehicle_dao.go:258	0x99b3fd		488b9c24a0000000	MOVQ 0xa0(SP), BX				
  vehicle_dao.go:258	0x99b405		e8b67ef8ff		CALL gorm.io/gorm.(*DB).Count(SB)		
  vehicle_dao.go:258	0x99b40a		488b4808		MOVQ 0x8(AX), CX				
  vehicle_dao.go:258	0x99b40e		488b5010		MOVQ 0x10(AX), DX				
  vehicle_dao.go:258	0x99b412		4885c9			TESTQ CX, CX					
  vehicle_dao.go:258	0x99b415		7468			JE 0x99b47f					
  vehicle_dao.go:259	0x99b417		440f11bc2488000000	MOVUPS X15, 0x88(SP)				
  vehicle_dao.go:259	0x99b420		7404			JE 0x99b426					
  vehicle_dao.go:259	0x99b422		488b4908		MOVQ 0x8(CX), CX				
  vehicle_dao.go:259	0x99b426		48898c2488000000	MOVQ CX, 0x88(SP)				
  vehicle_dao.go:259	0x99b42e		4889942490000000	MOVQ DX, 0x90(SP)				
  print.go:233		0x99b436		488b1d436cb702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99b43d		488d059c064d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99b444		488d0dc1d97e00		LEAQ go:string.*+133380(SB), CX			
  print.go:233		0x99b44b		bf1c000000		MOVL $__major_os_version__+22(SB), DI		
  print.go:233		0x99b450		488db42488000000	LEAQ 0x88(SP), SI				
  print.go:233		0x99b458		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x99b45e		4d89c1			MOVQ R8, R9					
  print.go:233		0x99b461		e8ba3db8ff		CALL fmt.Fprintf(SB)				
  vehicle_dao.go:260	0x99b466		31c0			XORL AX, AX					
  vehicle_dao.go:260	0x99b468		31db			XORL BX, BX					
  vehicle_dao.go:260	0x99b46a		488d0d2f1ebc02		LEAQ unicode..stmp_365(SB), CX			
  vehicle_dao.go:260	0x99b471		31ff			XORL DI, DI					
  vehicle_dao.go:260	0x99b473		4889fe			MOVQ DI, SI					
  vehicle_dao.go:260	0x99b476		4881c4a8000000		ADDQ $.file+91(SB), SP				
  vehicle_dao.go:260	0x99b47d		5d			POPQ BP						
  vehicle_dao.go:260	0x99b47e		c3			RET						
  vehicle_dao.go:270	0x99b47f		488b442450		MOVQ 0x50(SP), AX				
  vehicle_dao.go:270	0x99b484		488d1d95746a00		LEAQ runtime.types+383264(SB), BX		
  vehicle_dao.go:270	0x99b48b		488d0daec84c02		LEAQ CAS-Backend/biz/dao..stmp_1(SB), CX	
  vehicle_dao.go:270	0x99b492		e8293af8ff		CALL gorm.io/gorm.(*DB).Order(SB)		
  vehicle_dao.go:264	0x99b497		488b9c24b8000000	MOVQ 0xb8(SP), BX				
  vehicle_dao.go:264	0x99b49f		48ffcb			DECQ BX						
  vehicle_dao.go:264	0x99b4a2		488b9424c0000000	MOVQ 0xc0(SP), DX				
  vehicle_dao.go:264	0x99b4aa		480fafda		IMULQ DX, BX					
  vehicle_dao.go:265	0x99b4ae		4885db			TESTQ BX, BX					
  vehicle_dao.go:270	0x99b4b1		be00000000		MOVL $0x0, SI					
  vehicle_dao.go:270	0x99b4b6		480f4cde		CMOVL SI, BX					
  vehicle_dao.go:270	0x99b4ba		e8013ef8ff		CALL gorm.io/gorm.(*DB).Offset(SB)		
  vehicle_dao.go:270	0x99b4bf		488b9c24c0000000	MOVQ 0xc0(SP), BX				
  vehicle_dao.go:270	0x99b4c7		e8343df8ff		CALL gorm.io/gorm.(*DB).Limit(SB)		
  vehicle_dao.go:270	0x99b4cc		488d1d8d946900		LEAQ runtime.types+325984(SB), BX		
  vehicle_dao.go:270	0x99b4d3		488b8c2498000000	MOVQ 0x98(SP), CX				
  vehicle_dao.go:270	0x99b4db		31ff			XORL DI, DI					
  vehicle_dao.go:270	0x99b4dd		31f6			XORL SI, SI					
  vehicle_dao.go:270	0x99b4df		4989f0			MOVQ SI, R8					
  vehicle_dao.go:270	0x99b4e2		e8d957f8ff		CALL gorm.io/gorm.(*DB).Find(SB)		
  vehicle_dao.go:270	0x99b4e7		488b5008		MOVQ 0x8(AX), DX				
  vehicle_dao.go:270	0x99b4eb		488b7010		MOVQ 0x10(AX), SI				
  vehicle_dao.go:270	0x99b4ef		4885d2			TESTQ DX, DX					
  vehicle_dao.go:265	0x99b4f2		745f			JE 0x99b553					
  vehicle_dao.go:271	0x99b4f4		440f117c2478		MOVUPS X15, 0x78(SP)				
  vehicle_dao.go:271	0x99b4fa		7404			JE 0x99b500					
  vehicle_dao.go:271	0x99b4fc		488b5208		MOVQ 0x8(DX), DX				
  vehicle_dao.go:271	0x99b500		4889542478		MOVQ DX, 0x78(SP)				
  vehicle_dao.go:271	0x99b505		4889b42480000000	MOVQ SI, 0x80(SP)				
  print.go:233		0x99b50d		488b1d6c6bb702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99b514		488d05c5054d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99b51b		488d0d06d97e00		LEAQ go:string.*+133408(SB), CX			
  print.go:233		0x99b522		bf1c000000		MOVL $__major_os_version__+22(SB), DI		
  print.go:233		0x99b527		488d742478		LEAQ 0x78(SP), SI				
  print.go:233		0x99b52c		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x99b532		4d89c1			MOVQ R8, R9					
  print.go:233		0x99b535		e8e63cb8ff		CALL fmt.Fprintf(SB)				
  vehicle_dao.go:272	0x99b53a		31c0			XORL AX, AX					
  vehicle_dao.go:272	0x99b53c		31db			XORL BX, BX					
  vehicle_dao.go:272	0x99b53e		488d0d5b1dbc02		LEAQ unicode..stmp_365(SB), CX			
  vehicle_dao.go:272	0x99b545		31ff			XORL DI, DI					
  vehicle_dao.go:272	0x99b547		4889fe			MOVQ DI, SI					
  vehicle_dao.go:272	0x99b54a		4881c4a8000000		ADDQ $.file+91(SB), SP				
  vehicle_dao.go:272	0x99b551		5d			POPQ BP						
  vehicle_dao.go:272	0x99b552		c3			RET						
  vehicle_dao.go:275	0x99b553		488b942498000000	MOVQ 0x98(SP), DX				
  vehicle_dao.go:275	0x99b55b		488b0a			MOVQ 0(DX), CX					
  vehicle_dao.go:275	0x99b55e		488b7a08		MOVQ 0x8(DX), DI				
  vehicle_dao.go:275	0x99b562		488b7210		MOVQ 0x10(DX), SI				
  vehicle_dao.go:275	0x99b566		488b9424a0000000	MOVQ 0xa0(SP), DX				
  vehicle_dao.go:275	0x99b56e		488b1a			MOVQ 0(DX), BX					
  vehicle_dao.go:275	0x99b571		b801000000		MOVL $__minor_os_version__(SB), AX		
  vehicle_dao.go:275	0x99b576		4881c4a8000000		ADDQ $.file+91(SB), SP				
  vehicle_dao.go:275	0x99b57d		5d			POPQ BP						
  vehicle_dao.go:275	0x99b57e		c3			RET						
  vehicle_dao.go:232	0x99b57f		4889442408		MOVQ AX, 0x8(SP)				
  vehicle_dao.go:232	0x99b584		48895c2410		MOVQ BX, 0x10(SP)				
  vehicle_dao.go:232	0x99b589		48894c2418		MOVQ CX, 0x18(SP)				
  vehicle_dao.go:232	0x99b58e		48897c2420		MOVQ DI, 0x20(SP)				
  vehicle_dao.go:232	0x99b593		4889742428		MOVQ SI, 0x28(SP)				
  vehicle_dao.go:232	0x99b598		4c89442430		MOVQ R8, 0x30(SP)				
  vehicle_dao.go:232	0x99b59d		4c894c2438		MOVQ R9, 0x38(SP)				
  vehicle_dao.go:232	0x99b5a2		e839afadff		CALL runtime.morestack_noctxt.abi0(SB)		
  vehicle_dao.go:232	0x99b5a7		488b442408		MOVQ 0x8(SP), AX				
  vehicle_dao.go:232	0x99b5ac		488b5c2410		MOVQ 0x10(SP), BX				
  vehicle_dao.go:232	0x99b5b1		488b4c2418		MOVQ 0x18(SP), CX				
  vehicle_dao.go:232	0x99b5b6		488b7c2420		MOVQ 0x20(SP), DI				
  vehicle_dao.go:232	0x99b5bb		488b742428		MOVQ 0x28(SP), SI				
  vehicle_dao.go:232	0x99b5c0		4c8b442430		MOVQ 0x30(SP), R8				
  vehicle_dao.go:232	0x99b5c5		4c8b4c2438		MOVQ 0x38(SP), R9				
  vehicle_dao.go:232	0x99b5ca		e9b1faffff		JMP CAS-Backend/biz/dao.SelectALL_veh(SB)	
  :-1			0x99b5cf		cc			INT $__subsystem__(SB)				
  :-1			0x99b5d0		cc			INT $__subsystem__(SB)				
  :-1			0x99b5d1		cc			INT $__subsystem__(SB)				
  :-1			0x99b5d2		cc			INT $__subsystem__(SB)				
  :-1			0x99b5d3		cc			INT $__subsystem__(SB)				
  :-1			0x99b5d4		cc			INT $__subsystem__(SB)				
  :-1			0x99b5d5		cc			INT $__subsystem__(SB)				
  :-1			0x99b5d6		cc			INT $__subsystem__(SB)				
  :-1			0x99b5d7		cc			INT $__subsystem__(SB)				
  :-1			0x99b5d8		cc			INT $__subsystem__(SB)				
  :-1			0x99b5d9		cc			INT $__subsystem__(SB)				
  :-1			0x99b5da		cc			INT $__subsystem__(SB)				
  :-1			0x99b5db		cc			INT $__subsystem__(SB)				
  :-1			0x99b5dc		cc			INT $__subsystem__(SB)				
  :-1			0x99b5dd		cc			INT $__subsystem__(SB)				
  :-1			0x99b5de		cc			INT $__subsystem__(SB)				
  :-1			0x99b5df		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.IsExist_veh(SB) D:/CodeEnv_code/cas-backend/biz/dao/vehicle_dao.go
  vehicle_dao.go:279	0x99b5e0		4c8d6424f8		LEAQ -0x8(SP), R12				
  vehicle_dao.go:279	0x99b5e5		4d3b6610		CMPQ R12, 0x10(R14)				
  vehicle_dao.go:279	0x99b5e9		0f86b0010000		JBE 0x99b79f					
  vehicle_dao.go:279	0x99b5ef		55			PUSHQ BP					
  vehicle_dao.go:279	0x99b5f0		4889e5			MOVQ SP, BP					
  vehicle_dao.go:279	0x99b5f3		4883c480		ADDQ $-0x80, SP					
  vehicle_dao.go:284	0x99b5f7		4889842490000000	MOVQ AX, 0x90(SP)				
  vehicle_dao.go:284	0x99b5ff		48899c2498000000	MOVQ BX, 0x98(SP)				
  vehicle_dao.go:280	0x99b607		488d05d2746a00		LEAQ runtime.types+383712(SB), AX		
  vehicle_dao.go:280	0x99b60e		e88d61a7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:280	0x99b613		4889442478		MOVQ AX, 0x78(SP)				
  vehicle_dao.go:283	0x99b618		488d0561607800		LEAQ runtime.types+1296000(SB), AX		
  vehicle_dao.go:283	0x99b61f		90			NOPL						
  vehicle_dao.go:283	0x99b620		e87b61a7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:283	0x99b625		4889442450		MOVQ AX, 0x50(SP)				
  vehicle_dao.go:283	0x99b62a		488b0d0f6ab702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x99b631		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x99b634		e847d1f8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x99b639		4889442438		MOVQ AX, 0x38(SP)				
  chainable_api.go:20	0x99b63e		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x99b642		488d1517796d00		LEAQ runtime.types+581472(SB), DX		
  chainable_api.go:20	0x99b649		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x99b64d		833dfc24bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x99b654		750a			JNE 0x99b660					
  chainable_api.go:20	0x99b656		488b542450		MOVQ 0x50(SP), DX				
  chainable_api.go:20	0x99b65b		eb18			JMP 0x99b675					
  chainable_api.go:20	0x99b65d		0f1f00			NOPL 0(AX)					
  chainable_api.go:20	0x99b660		e8dbcdadff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x99b665		488b542450		MOVQ 0x50(SP), DX				
  chainable_api.go:20	0x99b66a		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x99b66d		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x99b671		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x99b675		48895128		MOVQ DX, 0x28(CX)				
  vehicle_dao.go:283	0x99b679		488d0520286b00		LEAQ runtime.types+429728(SB), AX		
  vehicle_dao.go:283	0x99b680		e81b61a7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:283	0x99b685		4889442448		MOVQ AX, 0x48(SP)				
  vehicle_dao.go:283	0x99b68a		488b9c2498000000	MOVQ 0x98(SP), BX				
  vehicle_dao.go:283	0x99b692		488b842490000000	MOVQ 0x90(SP), AX				
  vehicle_dao.go:283	0x99b69a		e881eaacff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:283	0x99b69f		488d1d7a726a00		LEAQ runtime.types+383264(SB), BX		
  vehicle_dao.go:283	0x99b6a6		488b7c2448		MOVQ 0x48(SP), DI				
  vehicle_dao.go:283	0x99b6ab		48891f			MOVQ BX, 0(DI)					
  vehicle_dao.go:283	0x99b6ae		833d9b24bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  vehicle_dao.go:283	0x99b6b5		7410			JE 0x99b6c7					
  vehicle_dao.go:283	0x99b6b7		e884cdadff		CALL runtime.gcWriteBarrier2(SB)		
  vehicle_dao.go:283	0x99b6bc		498903			MOVQ AX, 0(R11)					
  vehicle_dao.go:283	0x99b6bf		488b5708		MOVQ 0x8(DI), DX				
  vehicle_dao.go:283	0x99b6c3		49895308		MOVQ DX, 0x8(R11)				
  vehicle_dao.go:283	0x99b6c7		48894708		MOVQ AX, 0x8(DI)				
  vehicle_dao.go:283	0x99b6cb		488b442438		MOVQ 0x38(SP), AX				
  vehicle_dao.go:283	0x99b6d0		488d0d89c64c02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX	
  vehicle_dao.go:283	0x99b6d7		be01000000		MOVL $__minor_os_version__(SB), SI		
  vehicle_dao.go:283	0x99b6dc		4989f0			MOVQ SI, R8					
  vehicle_dao.go:283	0x99b6df		90			NOPL						
  vehicle_dao.go:283	0x99b6e0		e8bb2af8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  vehicle_dao.go:283	0x99b6e5		488b5c2478		MOVQ 0x78(SP), BX				
  vehicle_dao.go:283	0x99b6ea		e8d17bf8ff		CALL gorm.io/gorm.(*DB).Count(SB)		
  vehicle_dao.go:284	0x99b6ef		4883780800		CMPQ 0x8(AX), $0x0				
  vehicle_dao.go:284	0x99b6f4		0f8493000000		JE 0x99b78d					
  vehicle_dao.go:283	0x99b6fa		4889442440		MOVQ AX, 0x40(SP)				
  vehicle_dao.go:285	0x99b6ff		440f117c2458		MOVUPS X15, 0x58(SP)				
  vehicle_dao.go:285	0x99b705		440f117c2468		MOVUPS X15, 0x68(SP)				
  vehicle_dao.go:285	0x99b70b		488b842490000000	MOVQ 0x90(SP), AX				
  vehicle_dao.go:285	0x99b713		488b9c2498000000	MOVQ 0x98(SP), BX				
  vehicle_dao.go:285	0x99b71b		0f1f440000		NOPL 0(AX)(AX*1)				
  vehicle_dao.go:285	0x99b720		e8fbe9acff		CALL runtime.convTstring(SB)			
  vehicle_dao.go:285	0x99b725		488d0df4716a00		LEAQ runtime.types+383264(SB), CX		
  vehicle_dao.go:285	0x99b72c		48894c2458		MOVQ CX, 0x58(SP)				
  vehicle_dao.go:285	0x99b731		4889442460		MOVQ AX, 0x60(SP)				
  vehicle_dao.go:285	0x99b736		488b4c2440		MOVQ 0x40(SP), CX				
  vehicle_dao.go:285	0x99b73b		488b5108		MOVQ 0x8(CX), DX				
  vehicle_dao.go:285	0x99b73f		90			NOPL						
  vehicle_dao.go:285	0x99b740		4885d2			TESTQ DX, DX					
  vehicle_dao.go:285	0x99b743		7404			JE 0x99b749					
  vehicle_dao.go:285	0x99b745		488b5208		MOVQ 0x8(DX), DX				
  vehicle_dao.go:285	0x99b749		4c8b5110		MOVQ 0x10(CX), R10				
  vehicle_dao.go:285	0x99b74d		4889542468		MOVQ DX, 0x68(SP)				
  vehicle_dao.go:285	0x99b752		4c89542470		MOVQ R10, 0x70(SP)				
  print.go:233		0x99b757		488b1d2269b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99b75e		488d057b034d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99b765		488d0dbc217f00		LEAQ go:string.*+152608(SB), CX			
  print.go:233		0x99b76c		bf20000000		MOVL $__major_os_version__+26(SB), DI		
  print.go:233		0x99b771		488d742458		LEAQ 0x58(SP), SI				
  print.go:233		0x99b776		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x99b77c		4d89c1			MOVQ R8, R9					
  print.go:233		0x99b77f		90			NOPL						
  print.go:233		0x99b780		e89b3ab8ff		CALL fmt.Fprintf(SB)				
  vehicle_dao.go:286	0x99b785		31c0			XORL AX, AX					
  vehicle_dao.go:286	0x99b787		4883ec80		SUBQ $-0x80, SP					
  vehicle_dao.go:286	0x99b78b		5d			POPQ BP						
  vehicle_dao.go:286	0x99b78c		c3			RET						
  vehicle_dao.go:289	0x99b78d		488b4c2478		MOVQ 0x78(SP), CX				
  vehicle_dao.go:289	0x99b792		48833900		CMPQ 0(CX), $0x0				
  vehicle_dao.go:289	0x99b796		0f9fc0			SETG AL						
  vehicle_dao.go:289	0x99b799		4883ec80		SUBQ $-0x80, SP					
  vehicle_dao.go:289	0x99b79d		5d			POPQ BP						
  vehicle_dao.go:289	0x99b79e		c3			RET						
  vehicle_dao.go:279	0x99b79f		4889442408		MOVQ AX, 0x8(SP)				
  vehicle_dao.go:279	0x99b7a4		48895c2410		MOVQ BX, 0x10(SP)				
  vehicle_dao.go:279	0x99b7a9		e832adadff		CALL runtime.morestack_noctxt.abi0(SB)		
  vehicle_dao.go:279	0x99b7ae		488b442408		MOVQ 0x8(SP), AX				
  vehicle_dao.go:279	0x99b7b3		488b5c2410		MOVQ 0x10(SP), BX				
  vehicle_dao.go:279	0x99b7b8		e923feffff		JMP CAS-Backend/biz/dao.IsExist_veh(SB)		
  :-1			0x99b7bd		cc			INT $__subsystem__(SB)				
  :-1			0x99b7be		cc			INT $__subsystem__(SB)				
  :-1			0x99b7bf		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.GetAllVehicles(SB) D:/CodeEnv_code/cas-backend/biz/dao/vehicle_dao.go
  vehicle_dao.go:337	0x99b7c0		493b6610		CMPQ SP, 0x10(R14)				
  vehicle_dao.go:337	0x99b7c4		0f86e5000000		JBE 0x99b8af					
  vehicle_dao.go:337	0x99b7ca		55			PUSHQ BP					
  vehicle_dao.go:337	0x99b7cb		4889e5			MOVQ SP, BP					
  vehicle_dao.go:337	0x99b7ce		4883ec60		SUBQ $.file+19(SB), SP				
  vehicle_dao.go:338	0x99b7d2		488d0547916900		LEAQ runtime.types+325920(SB), AX		
  vehicle_dao.go:338	0x99b7d9		e8c25fa7ff		CALL runtime.newobject(SB)			
  vehicle_dao.go:338	0x99b7de		4889442458		MOVQ AX, 0x58(SP)				
  vehicle_dao.go:338	0x99b7e3		48c70000000000		MOVQ $0x0, 0(AX)				
  vehicle_dao.go:341	0x99b7ea		488b0d4f68b702		MOVQ runtime.bss(SB), CX			
  vehicle_dao.go:341	0x99b7f1		488d1d28716a00		LEAQ runtime.types+383264(SB), BX		
  vehicle_dao.go:341	0x99b7f8		4889c8			MOVQ CX, AX					
  vehicle_dao.go:341	0x99b7fb		488d0d3ec54c02		LEAQ CAS-Backend/biz/dao..stmp_1(SB), CX	
  vehicle_dao.go:341	0x99b802		e8b936f8ff		CALL gorm.io/gorm.(*DB).Order(SB)		
  vehicle_dao.go:341	0x99b807		488d1d52916900		LEAQ runtime.types+325984(SB), BX		
  vehicle_dao.go:341	0x99b80e		488b4c2458		MOVQ 0x58(SP), CX				
  vehicle_dao.go:341	0x99b813		31ff			XORL DI, DI					
  vehicle_dao.go:341	0x99b815		31f6			XORL SI, SI					
  vehicle_dao.go:341	0x99b817		4989f0			MOVQ SI, R8					
  vehicle_dao.go:341	0x99b81a		e8a154f8ff		CALL gorm.io/gorm.(*DB).Find(SB)		
  vehicle_dao.go:341	0x99b81f		488b4808		MOVQ 0x8(AX), CX				
  vehicle_dao.go:341	0x99b823		488b5010		MOVQ 0x10(AX), DX				
  vehicle_dao.go:341	0x99b827		4885c9			TESTQ CX, CX					
  vehicle_dao.go:341	0x99b82a		7469			JE 0x99b895					
  vehicle_dao.go:341	0x99b82c		48894c2438		MOVQ CX, 0x38(SP)				
  vehicle_dao.go:342	0x99b831		440f117c2448		MOVUPS X15, 0x48(SP)				
  vehicle_dao.go:342	0x99b837		7406			JE 0x99b83f					
  vehicle_dao.go:342	0x99b839		4c8b5108		MOVQ 0x8(CX), R10				
  vehicle_dao.go:342	0x99b83d		eb03			JMP 0x99b842					
  vehicle_dao.go:342	0x99b83f		4989ca			MOVQ CX, R10					
  vehicle_dao.go:341	0x99b842		4889542440		MOVQ DX, 0x40(SP)				
  vehicle_dao.go:342	0x99b847		4c89542448		MOVQ R10, 0x48(SP)				
  vehicle_dao.go:342	0x99b84c		4889542450		MOVQ DX, 0x50(SP)				
  print.go:233		0x99b851		488b1d2868b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x99b858		488d0581024d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99b85f		488d0d37eb7e00		LEAQ go:string.*+138901(SB), CX			
  print.go:233		0x99b866		bf1d000000		MOVL $__major_os_version__+23(SB), DI		
  print.go:233		0x99b86b		488d742448		LEAQ 0x48(SP), SI				
  print.go:233		0x99b870		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x99b876		4d89c1			MOVQ R8, R9					
  print.go:233		0x99b879		e8a239b8ff		CALL fmt.Fprintf(SB)				
  vehicle_dao.go:343	0x99b87e		31c0			XORL AX, AX					
  vehicle_dao.go:343	0x99b880		31db			XORL BX, BX					
  vehicle_dao.go:343	0x99b882		4889d9			MOVQ BX, CX					
  vehicle_dao.go:343	0x99b885		488b7c2438		MOVQ 0x38(SP), DI				
  vehicle_dao.go:343	0x99b88a		488b742440		MOVQ 0x40(SP), SI				
  vehicle_dao.go:343	0x99b88f		4883c460		ADDQ $.file+19(SB), SP				
  vehicle_dao.go:343	0x99b893		5d			POPQ BP						
  vehicle_dao.go:343	0x99b894		c3			RET						
  vehicle_dao.go:346	0x99b895		488b542458		MOVQ 0x58(SP), DX				
  vehicle_dao.go:346	0x99b89a		488b02			MOVQ 0(DX), AX					
  vehicle_dao.go:346	0x99b89d		488b5a08		MOVQ 0x8(DX), BX				
  vehicle_dao.go:346	0x99b8a1		488b4a10		MOVQ 0x10(DX), CX				
  vehicle_dao.go:346	0x99b8a5		31ff			XORL DI, DI					
  vehicle_dao.go:346	0x99b8a7		31f6			XORL SI, SI					
  vehicle_dao.go:346	0x99b8a9		4883c460		ADDQ $.file+19(SB), SP				
  vehicle_dao.go:346	0x99b8ad		5d			POPQ BP						
  vehicle_dao.go:346	0x99b8ae		c3			RET						
  vehicle_dao.go:337	0x99b8af		e82cacadff		CALL runtime.morestack_noctxt.abi0(SB)		
  vehicle_dao.go:337	0x99b8b4		e907ffffff		JMP CAS-Backend/biz/dao.GetAllVehicles(SB)	
  :-1			0x99b8b9		cc			INT $__subsystem__(SB)				
  :-1			0x99b8ba		cc			INT $__subsystem__(SB)				
  :-1			0x99b8bb		cc			INT $__subsystem__(SB)				
  :-1			0x99b8bc		cc			INT $__subsystem__(SB)				
  :-1			0x99b8bd		cc			INT $__subsystem__(SB)				
  :-1			0x99b8be		cc			INT $__subsystem__(SB)				
  :-1			0x99b8bf		cc			INT $__subsystem__(SB)				

