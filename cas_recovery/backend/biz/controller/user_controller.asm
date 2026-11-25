TEXT CAS-Backend/biz/controller.RegisterHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/user_controller.go
  user_controller.go:67		0xe8e320		4c8d642490		LEAQ -0x70(SP), R12											
  user_controller.go:67		0xe8e325		4d3b6610		CMPQ R12, 0x10(R14)											
  user_controller.go:67		0xe8e329		0f8658050000		JBE 0xe8e887												
  user_controller.go:67		0xe8e32f		55			PUSHQ BP												
  user_controller.go:67		0xe8e330		4889e5			MOVQ SP, BP												
  user_controller.go:67		0xe8e333		4881ece8000000		SUBQ $.file+155(SB), SP											
  context.go:712		0xe8e33a		48898424f8000000	MOVQ AX, 0xf8(SP)											
  user_controller.go:68		0xe8e342		488d05f7772400		LEAQ runtime.types+985920(SB), AX									
  user_controller.go:68		0xe8e349		e8523458ff		CALL runtime.newobject(SB)										
  user_controller.go:68		0xe8e34e		48898424e0000000	MOVQ AX, 0xe0(SP)											
  context.go:712		0xe8e356		488b0d83941200		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe8e35d		488b1584941200		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe8e364		4885c9			TESTQ CX, CX												
  context.go:712		0xe8e367		741c			JE 0xe8e385												
  context.go:712		0xe8e369		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe8e36d		488b353cd11200		MOVQ CAS-Backend/biz/controller..typeAssert.40(SB), SI							
  context.go:712		0xe8e374		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe8e377		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe8e37b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe8e380		e9a9040000		JMP 0xe8e82e												
  context.go:752		0xe8e385		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe8e389		4c8b8424f8000000	MOVQ 0xf8(SP), R8											
  context.go:752		0xe8e391		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe8e395		488d0d84821900		LEAQ runtime.types+267808(SB), CX									
  context.go:752		0xe8e39c		4889c7			MOVQ AX, DI												
  context.go:752		0xe8e39f		4889d0			MOVQ DX, AX												
  context.go:752		0xe8e3a2		ffd6			CALL SI													
  user_controller.go:70		0xe8e3a4		4885c0			TESTQ AX, AX												
  user_controller.go:70		0xe8e3a7		0f8511040000		JNE 0xe8e7be												
  user_controller.go:76		0xe8e3ad		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)											
  user_controller.go:76		0xe8e3b6		488d0583772400		LEAQ runtime.types+985920(SB), AX									
  user_controller.go:76		0xe8e3bd		488b9c24e0000000	MOVQ 0xe0(SP), BX											
  user_controller.go:76		0xe8e3c5		e8d60c58ff		CALL runtime.convT(SB)											
  user_controller.go:76		0xe8e3ca		488d0d6f772400		LEAQ runtime.types+985920(SB), CX									
  user_controller.go:76		0xe8e3d1		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  user_controller.go:76		0xe8e3d9		48898424b0000000	MOVQ AX, 0xb0(SP)											
  print.go:314			0xe8e3e1		488b1d983c6802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8e3e8		488d05f1d6fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8e3ef		488d8c24a8000000	LEAQ 0xa8(SP), CX											
  print.go:314			0xe8e3f7		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8e3fc		4889fe			MOVQ DI, SI												
  print.go:314			0xe8e3ff		90			NOPL													
  print.go:314			0xe8e400		e85b1469ff		CALL fmt.Fprintln(SB)											
  user_controller.go:89		0xe8e405		488b8c24e0000000	MOVQ 0xe0(SP), CX											
  user_controller.go:89		0xe8e40d		4883790800		CMPQ 0x8(CX), $0x0											
  user_controller.go:89		0xe8e412		7412			JE 0xe8e426												
  user_controller.go:89		0xe8e414		4883791800		CMPQ 0x18(CX), $0x0											
  user_controller.go:89		0xe8e419		740b			JE 0xe8e426												
  user_controller.go:89		0xe8e41b		4883792800		CMPQ 0x28(CX), $0x0											
  user_controller.go:89		0xe8e420		0f8535010000		JNE 0xe8e55b												
  user_controller.go:90		0xe8e426		488d15f3441b00		LEAQ runtime.types+383264(SB), DX									
  user_controller.go:90		0xe8e42d		4889942498000000	MOVQ DX, 0x98(SP)											
  user_controller.go:90		0xe8e435		4c8d05b4aafd01		LEAQ CAS-Backend/biz/controller..stmp_323(SB), R8							
  user_controller.go:90		0xe8e43c		4c898424a0000000	MOVQ R8, 0xa0(SP)											
  print.go:314			0xe8e444		488b1d353c6802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8e44b		488d058ed6fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8e452		488d8c2498000000	LEAQ 0x98(SP), CX											
  print.go:314			0xe8e45a		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8e45f		4889fe			MOVQ DI, SI												
  print.go:314			0xe8e462		e8f91369ff		CALL fmt.Fprintln(SB)											
  user_controller.go:91		0xe8e467		e874cb5dff		CALL runtime.makemap_small(SB)										
  user_controller.go:91		0xe8e46c		48898424d8000000	MOVQ AX, 0xd8(SP)											
  user_controller.go:91		0xe8e474		4889c3			MOVQ AX, BX												
  user_controller.go:91		0xe8e477		488d0d0eb22d00		LEAQ go:string.*+4484(SB), CX										
  user_controller.go:91		0xe8e47e		bf04000000		MOVL $__subsystem__+1(SB), DI										
  user_controller.go:91		0xe8e483		488d05f6632100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:91		0xe8e48a		e891fb5dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:91		0xe8e48f		488d15ca461b00		LEAQ runtime.types+383840(SB), DX									
  user_controller.go:91		0xe8e496		488910			MOVQ DX, 0(AX)												
  user_controller.go:91		0xe8e499		833db0f66c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:91		0xe8e4a0		740c			JE 0xe8e4ae												
  user_controller.go:91		0xe8e4a2		488b5008		MOVQ 0x8(AX), DX											
  user_controller.go:91		0xe8e4a6		e8759f5eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:91		0xe8e4ab		498913			MOVQ DX, 0(R11)												
  user_controller.go:91		0xe8e4ae		488d150b66fd01		LEAQ runtime.gcbits.*(SB), DX										
  user_controller.go:91		0xe8e4b5		48895008		MOVQ DX, 0x8(AX)											
  user_controller.go:91		0xe8e4b9		488d05c0632100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:91		0xe8e4c0		488b9c24d8000000	MOVQ 0xd8(SP), BX											
  user_controller.go:91		0xe8e4c8		488d0d85a52d00		LEAQ go:string.*+1356(SB), CX										
  user_controller.go:91		0xe8e4cf		bf03000000		MOVL $__subsystem__(SB), DI										
  user_controller.go:91		0xe8e4d4		e847fb5dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:91		0xe8e4d9		488d1540441b00		LEAQ runtime.types+383264(SB), DX									
  user_controller.go:91		0xe8e4e0		488910			MOVQ DX, 0(AX)												
  user_controller.go:91		0xe8e4e3		833d66f66c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:91		0xe8e4ea		740c			JE 0xe8e4f8												
  user_controller.go:91		0xe8e4ec		488b4808		MOVQ 0x8(AX), CX											
  user_controller.go:91		0xe8e4f0		e82b9f5eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:91		0xe8e4f5		49890b			MOVQ CX, 0(R11)												
  user_controller.go:91		0xe8e4f8		488d0d01aafd01		LEAQ CAS-Backend/biz/controller..stmp_325(SB), CX							
  user_controller.go:91		0xe8e4ff		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8e503		488d0d76632100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8e50a		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  context.go:1005		0xe8e512		488b8c24d8000000	MOVQ 0xd8(SP), CX											
  context.go:1005		0xe8e51a		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  context.go:1005		0xe8e522		488d05b7d92300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8e529		488d9c24c8000000	LEAQ 0xc8(SP), BX											
  context.go:1005		0xe8e531		e86a0b58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8e536		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8e53b		488d0dee0cfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8e542		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8e545		488b8424f8000000	MOVQ 0xf8(SP), AX											
  context.go:1005		0xe8e54d		e80e12f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  user_controller.go:95		0xe8e552		4881c4e8000000		ADDQ $.file+155(SB), SP											
  user_controller.go:95		0xe8e559		5d			POPQ BP													
  user_controller.go:95		0xe8e55a		c3			RET													
  user_controller.go:97		0xe8e55b		440f117c2450		MOVUPS X15, 0x50(SP)											
  user_controller.go:97		0xe8e561		440f117c2460		MOVUPS X15, 0x60(SP)											
  user_controller.go:97		0xe8e567		440f117c2470		MOVUPS X15, 0x70(SP)											
  user_controller.go:97		0xe8e56d		440f11bc2480000000	MOVUPS X15, 0x80(SP)											
  user_controller.go:98		0xe8e576		488b11			MOVQ 0(CX), DX												
  user_controller.go:98		0xe8e579		4c8b5908		MOVQ 0x8(CX), R11											
  user_controller.go:98		0xe8e57d		4889542458		MOVQ DX, 0x58(SP)											
  user_controller.go:98		0xe8e582		4c895c2460		MOVQ R11, 0x60(SP)											
  user_controller.go:99		0xe8e587		488b7910		MOVQ 0x10(CX), DI											
  user_controller.go:99		0xe8e58b		488b7118		MOVQ 0x18(CX), SI											
  user_controller.go:99		0xe8e58f		48897c2468		MOVQ DI, 0x68(SP)											
  user_controller.go:99		0xe8e594		4889742470		MOVQ SI, 0x70(SP)											
  user_controller.go:100	0xe8e599		4c8b4120		MOVQ 0x20(CX), R8											
  user_controller.go:100	0xe8e59d		4c8b4928		MOVQ 0x28(CX), R9											
  user_controller.go:100	0xe8e5a1		4c89442478		MOVQ R8, 0x78(SP)											
  user_controller.go:100	0xe8e5a6		4c898c2480000000	MOVQ R9, 0x80(SP)											
  user_controller.go:102	0xe8e5ae		488b442450		MOVQ 0x50(SP), AX											
  user_controller.go:102	0xe8e5b3		488b5c2458		MOVQ 0x58(SP), BX											
  user_controller.go:102	0xe8e5b8		488b4c2460		MOVQ 0x60(SP), CX											
  user_controller.go:102	0xe8e5bd		4c8b942488000000	MOVQ 0x88(SP), R10											
  user_controller.go:102	0xe8e5c5		e836b1fbff		CALL CAS-Backend/biz/service.Register(SB)								
  user_controller.go:102	0xe8e5ca		84c0			TESTL AL, AL												
  user_controller.go:105	0xe8e5cc		0f84f8000000		JE 0xe8e6ca												
  user_controller.go:106	0xe8e5d2		e809ca5dff		CALL runtime.makemap_small(SB)										
  user_controller.go:106	0xe8e5d7		48898424d8000000	MOVQ AX, 0xd8(SP)											
  user_controller.go:106	0xe8e5df		4889c3			MOVQ AX, BX												
  user_controller.go:106	0xe8e5e2		488d0da3b02d00		LEAQ go:string.*+4484(SB), CX										
  user_controller.go:106	0xe8e5e9		bf04000000		MOVL $__subsystem__+1(SB), DI										
  user_controller.go:106	0xe8e5ee		488d058b622100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:106	0xe8e5f5		e826fa5dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:106	0xe8e5fa		488d0d5f451b00		LEAQ runtime.types+383840(SB), CX									
  user_controller.go:106	0xe8e601		488908			MOVQ CX, 0(AX)												
  user_controller.go:106	0xe8e604		833d45f56c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:106	0xe8e60b		740c			JE 0xe8e619												
  user_controller.go:106	0xe8e60d		488b5008		MOVQ 0x8(AX), DX											
  user_controller.go:106	0xe8e611		e80a9e5eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:106	0xe8e616		498913			MOVQ DX, 0(R11)												
  user_controller.go:106	0xe8e619		488d151092fd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  user_controller.go:106	0xe8e620		48895008		MOVQ DX, 0x8(AX)											
  user_controller.go:106	0xe8e624		488d0555622100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:106	0xe8e62b		488b9c24d8000000	MOVQ 0xd8(SP), BX											
  user_controller.go:106	0xe8e633		488d0d1aa42d00		LEAQ go:string.*+1356(SB), CX										
  user_controller.go:106	0xe8e63a		bf03000000		MOVL $__subsystem__(SB), DI										
  user_controller.go:106	0xe8e63f		90			NOPL													
  user_controller.go:106	0xe8e640		e8dbf95dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:106	0xe8e645		488d15d4421b00		LEAQ runtime.types+383264(SB), DX									
  user_controller.go:106	0xe8e64c		488910			MOVQ DX, 0(AX)												
  user_controller.go:106	0xe8e64f		833dfaf46c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:106	0xe8e656		7410			JE 0xe8e668												
  user_controller.go:106	0xe8e658		488b4808		MOVQ 0x8(AX), CX											
  user_controller.go:106	0xe8e65c		0f1f4000		NOPL 0(AX)												
  user_controller.go:106	0xe8e660		e8bb9d5eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:106	0xe8e665		49890b			MOVQ CX, 0(R11)												
  user_controller.go:106	0xe8e668		488d0da1a8fd01		LEAQ CAS-Backend/biz/controller..stmp_327(SB), CX							
  user_controller.go:106	0xe8e66f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8e673		488d0d06622100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8e67a		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  context.go:1005		0xe8e682		488b8c24d8000000	MOVQ 0xd8(SP), CX											
  context.go:1005		0xe8e68a		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  context.go:1005		0xe8e692		488d0547d82300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8e699		488d9c24c8000000	LEAQ 0xc8(SP), BX											
  context.go:1005		0xe8e6a1		e8fa0958ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8e6a6		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8e6ab		488d0d7e0bfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8e6b2		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8e6b5		488b8424f8000000	MOVQ 0xf8(SP), AX											
  context.go:1005		0xe8e6bd		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe8e6c0		e89b10f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  user_controller.go:119	0xe8e6c5		e9eb000000		JMP 0xe8e7b5												
  user_controller.go:111	0xe8e6ca		e811c95dff		CALL runtime.makemap_small(SB)										
  user_controller.go:111	0xe8e6cf		48898424d8000000	MOVQ AX, 0xd8(SP)											
  user_controller.go:111	0xe8e6d7		4889c3			MOVQ AX, BX												
  user_controller.go:111	0xe8e6da		488d0dabaf2d00		LEAQ go:string.*+4484(SB), CX										
  user_controller.go:111	0xe8e6e1		bf04000000		MOVL $__subsystem__+1(SB), DI										
  user_controller.go:111	0xe8e6e6		488d0593612100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:111	0xe8e6ed		e82ef95dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:111	0xe8e6f2		488d0d67441b00		LEAQ runtime.types+383840(SB), CX									
  user_controller.go:111	0xe8e6f9		488908			MOVQ CX, 0(AX)												
  user_controller.go:111	0xe8e6fc		833d4df46c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:111	0xe8e703		740c			JE 0xe8e711												
  user_controller.go:111	0xe8e705		488b5008		MOVQ 0x8(AX), DX											
  user_controller.go:111	0xe8e709		e8129d5eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:111	0xe8e70e		498913			MOVQ DX, 0(R11)												
  user_controller.go:111	0xe8e711		488d15a863fd01		LEAQ runtime.gcbits.*(SB), DX										
  user_controller.go:111	0xe8e718		48895008		MOVQ DX, 0x8(AX)											
  user_controller.go:111	0xe8e71c		488d055d612100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:111	0xe8e723		488b9c24d8000000	MOVQ 0xd8(SP), BX											
  user_controller.go:111	0xe8e72b		488d0d22a32d00		LEAQ go:string.*+1356(SB), CX										
  user_controller.go:111	0xe8e732		bf03000000		MOVL $__subsystem__(SB), DI										
  user_controller.go:111	0xe8e737		e8e4f85dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:111	0xe8e73c		488d15dd411b00		LEAQ runtime.types+383264(SB), DX									
  user_controller.go:111	0xe8e743		488910			MOVQ DX, 0(AX)												
  user_controller.go:111	0xe8e746		833d03f46c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:111	0xe8e74d		740c			JE 0xe8e75b												
  user_controller.go:111	0xe8e74f		488b4808		MOVQ 0x8(AX), CX											
  user_controller.go:111	0xe8e753		e8c89c5eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:111	0xe8e758		49890b			MOVQ CX, 0(R11)												
  user_controller.go:111	0xe8e75b		488d0dbea7fd01		LEAQ CAS-Backend/biz/controller..stmp_329(SB), CX							
  user_controller.go:111	0xe8e762		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8e766		488d0d13612100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8e76d		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  context.go:1005		0xe8e775		488b8c24d8000000	MOVQ 0xd8(SP), CX											
  context.go:1005		0xe8e77d		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  context.go:1005		0xe8e785		488d0554d72300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8e78c		488d9c24c8000000	LEAQ 0xc8(SP), BX											
  context.go:1005		0xe8e794		e8070958ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8e799		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8e79e		488d0d8b0afe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8e7a5		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8e7a8		488b8424f8000000	MOVQ 0xf8(SP), AX											
  context.go:1005		0xe8e7b0		e8ab0ff7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  user_controller.go:119	0xe8e7b5		4881c4e8000000		ADDQ $.file+155(SB), SP											
  user_controller.go:119	0xe8e7bc		5d			POPQ BP													
  user_controller.go:119	0xe8e7bd		c3			RET													
  context.go:752		0xe8e7be		48895c2448		MOVQ BX, 0x48(SP)											
  context.go:752		0xe8e7c3		4889442440		MOVQ AX, 0x40(SP)											
  user_controller.go:71		0xe8e7c8		488d1551411b00		LEAQ runtime.types+383264(SB), DX									
  user_controller.go:71		0xe8e7cf		48899424b8000000	MOVQ DX, 0xb8(SP)											
  user_controller.go:71		0xe8e7d7		488d15f29ffd01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  user_controller.go:71		0xe8e7de		48899424c0000000	MOVQ DX, 0xc0(SP)											
  print.go:314			0xe8e7e6		488b1d93386802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8e7ed		488d05ecd2fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8e7f4		488d8c24b8000000	LEAQ 0xb8(SP), CX											
  print.go:314			0xe8e7fc		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8e801		4889fe			MOVQ DI, SI												
  print.go:314			0xe8e804		e8571069ff		CALL fmt.Fprintln(SB)											
  user_controller.go:72		0xe8e809		488b8424f8000000	MOVQ 0xf8(SP), AX											
  user_controller.go:72		0xe8e811		bb90010000		MOVL $.file+323(SB), BX											
  user_controller.go:72		0xe8e816		488b4c2440		MOVQ 0x40(SP), CX											
  user_controller.go:72		0xe8e81b		488b7c2448		MOVQ 0x48(SP), DI											
  user_controller.go:72		0xe8e820		e87bc8f6ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  user_controller.go:73		0xe8e825		4881c4e8000000		ADDQ $.file+155(SB), SP											
  user_controller.go:73		0xe8e82c		5d			POPQ BP													
  user_controller.go:73		0xe8e82d		c3			RET													
  context.go:712		0xe8e82e		4d89ca			MOVQ R9, R10												
  context.go:712		0xe8e831		4d21c1			ANDQ R8, R9												
  context.go:712		0xe8e834		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe8e838		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe8e83d		0f1f00			NOPL 0(AX)												
  context.go:712		0xe8e840		4939db			CMPQ R11, BX												
  context.go:712		0xe8e843		7438			JE 0xe8e87d												
  context.go:712		0xe8e845		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe8e849		4d85db			TESTQ R11, R11												
  context.go:712		0xe8e84c		75e0			JNE 0xe8e82e												
  context.go:712		0xe8e84e		4889942490000000	MOVQ DX, 0x90(SP)											
  context.go:712		0xe8e856		488d0553cc1200		LEAQ CAS-Backend/biz/controller..typeAssert.40(SB), AX							
  context.go:712		0xe8e85d		0f1f00			NOPL 0(AX)												
  context.go:712		0xe8e860		e87b0a58ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe8e865		488b942490000000	MOVQ 0x90(SP), DX											
  context.go:712		0xe8e86d		4889c1			MOVQ AX, CX												
  context.go:752		0xe8e870		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:712		0xe8e878		e908fbffff		JMP 0xe8e385												
  context.go:712		0xe8e87d		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe8e882		e9fefaffff		JMP 0xe8e385												
  user_controller.go:67		0xe8e887		4889442408		MOVQ AX, 0x8(SP)											
  user_controller.go:67		0xe8e88c		e84f7c5eff		CALL runtime.morestack_noctxt.abi0(SB)									
  user_controller.go:67		0xe8e891		488b442408		MOVQ 0x8(SP), AX											
  user_controller.go:67		0xe8e896		e985faffff		JMP CAS-Backend/biz/controller.RegisterHandler(SB)							
  :-1				0xe8e89b		cc			INT $__subsystem__(SB)											
  :-1				0xe8e89c		cc			INT $__subsystem__(SB)											
  :-1				0xe8e89d		cc			INT $__subsystem__(SB)											
  :-1				0xe8e89e		cc			INT $__subsystem__(SB)											
  :-1				0xe8e89f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.LoginHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/user_controller.go
  user_controller.go:122	0xe8e8a0		4c8da42448ffffff	LEAQ 0xffffff48(SP), R12										
  user_controller.go:122	0xe8e8a8		4d3b6610		CMPQ R12, 0x10(R14)											
  user_controller.go:122	0xe8e8ac		0f86d5070000		JBE 0xe8f087												
  user_controller.go:122	0xe8e8b2		55			PUSHQ BP												
  user_controller.go:122	0xe8e8b3		4889e5			MOVQ SP, BP												
  user_controller.go:122	0xe8e8b6		4881ec30010000		SUBQ $.file+227(SB), SP											
  context.go:712		0xe8e8bd		4889842440010000	MOVQ AX, 0x140(SP)											
  user_controller.go:123	0xe8e8c5		488d0594f62200		LEAQ runtime.types+888672(SB), AX									
  user_controller.go:123	0xe8e8cc		e8cf2e58ff		CALL runtime.newobject(SB)										
  user_controller.go:123	0xe8e8d1		4889842428010000	MOVQ AX, 0x128(SP)											
  user_controller.go:123	0xe8e8d9		48c70000000000		MOVQ $0x0, 0(AX)											
  user_controller.go:123	0xe8e8e0		48c7401000000000	MOVQ $0x0, 0x10(AX)											
  context.go:712		0xe8e8e8		488b0df18e1200		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe8e8ef		488b15f28e1200		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe8e8f6		4885c9			TESTQ CX, CX												
  context.go:712		0xe8e8f9		7417			JE 0xe8e912												
  context.go:712		0xe8e8fb		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe8e8ff		488b35cacb1200		MOVQ CAS-Backend/biz/controller..typeAssert.41(SB), SI							
  context.go:712		0xe8e906		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe8e909		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe8e90d		e91d070000		JMP 0xe8f02f												
  context.go:752		0xe8e912		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe8e916		4c8b842440010000	MOVQ 0x140(SP), R8											
  context.go:752		0xe8e91e		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe8e922		488d0d777c1900		LEAQ runtime.types+267680(SB), CX									
  context.go:752		0xe8e929		4889c7			MOVQ AX, DI												
  context.go:752		0xe8e92c		4889d0			MOVQ DX, AX												
  context.go:752		0xe8e92f		ffd6			CALL SI													
  user_controller.go:124	0xe8e931		4885c0			TESTQ AX, AX												
  user_controller.go:124	0xe8e934		0f85d4060000		JNE 0xe8f00e												
  user_controller.go:128	0xe8e93a		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)											
  user_controller.go:128	0xe8e943		488d0516f62200		LEAQ runtime.types+888672(SB), AX									
  user_controller.go:128	0xe8e94a		488b9c2428010000	MOVQ 0x128(SP), BX											
  user_controller.go:128	0xe8e952		e8490758ff		CALL runtime.convT(SB)											
  user_controller.go:128	0xe8e957		488d0d02f62200		LEAQ runtime.types+888672(SB), CX									
  user_controller.go:128	0xe8e95e		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  user_controller.go:128	0xe8e966		48898424c0000000	MOVQ AX, 0xc0(SP)											
  print.go:314			0xe8e96e		488b1d0b376802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8e975		488d0564d1fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8e97c		488d8c24b8000000	LEAQ 0xb8(SP), CX											
  print.go:314			0xe8e984		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8e989		4889fe			MOVQ DI, SI												
  print.go:314			0xe8e98c		e8cf0e69ff		CALL fmt.Fprintln(SB)											
  user_controller.go:131	0xe8e991		488b8c2428010000	MOVQ 0x128(SP), CX											
  user_controller.go:131	0xe8e999		4883790800		CMPQ 0x8(CX), $0x0											
  user_controller.go:131	0xe8e99e		6690			NOPW													
  user_controller.go:131	0xe8e9a0		740b			JE 0xe8e9ad												
  user_controller.go:131	0xe8e9a2		4883791800		CMPQ 0x18(CX), $0x0											
  user_controller.go:131	0xe8e9a7		0f8541010000		JNE 0xe8eaee												
  user_controller.go:132	0xe8e9ad		488d156c3f1b00		LEAQ runtime.types+383264(SB), DX									
  user_controller.go:132	0xe8e9b4		48899424a8000000	MOVQ DX, 0xa8(SP)											
  user_controller.go:132	0xe8e9bc		4c8d056da5fd01		LEAQ CAS-Backend/biz/controller..stmp_330(SB), R8							
  user_controller.go:132	0xe8e9c3		4c898424b0000000	MOVQ R8, 0xb0(SP)											
  print.go:314			0xe8e9cb		488b1dae366802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8e9d2		488d0507d1fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8e9d9		488d8c24a8000000	LEAQ 0xa8(SP), CX											
  print.go:314			0xe8e9e1		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8e9e6		4889fe			MOVQ DI, SI												
  print.go:314			0xe8e9e9		e8720e69ff		CALL fmt.Fprintln(SB)											
  user_controller.go:133	0xe8e9ee		e8edc55dff		CALL runtime.makemap_small(SB)										
  user_controller.go:133	0xe8e9f3		4889842420010000	MOVQ AX, 0x120(SP)											
  user_controller.go:133	0xe8e9fb		4889c3			MOVQ AX, BX												
  user_controller.go:133	0xe8e9fe		488d0d87ac2d00		LEAQ go:string.*+4484(SB), CX										
  user_controller.go:133	0xe8ea05		bf04000000		MOVL $__subsystem__+1(SB), DI										
  user_controller.go:133	0xe8ea0a		488d056f5e2100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:133	0xe8ea11		e80af65dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:133	0xe8ea16		488d1543411b00		LEAQ runtime.types+383840(SB), DX									
  user_controller.go:133	0xe8ea1d		488910			MOVQ DX, 0(AX)												
  user_controller.go:133	0xe8ea20		833d29f16c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:133	0xe8ea27		740c			JE 0xe8ea35												
  user_controller.go:133	0xe8ea29		488b5008		MOVQ 0x8(AX), DX											
  user_controller.go:133	0xe8ea2d		e8ee995eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:133	0xe8ea32		498913			MOVQ DX, 0(R11)												
  user_controller.go:133	0xe8ea35		488d158460fd01		LEAQ runtime.gcbits.*(SB), DX										
  user_controller.go:133	0xe8ea3c		48895008		MOVQ DX, 0x8(AX)											
  user_controller.go:133	0xe8ea40		488d05395e2100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:133	0xe8ea47		488b9c2420010000	MOVQ 0x120(SP), BX											
  user_controller.go:133	0xe8ea4f		488d0dfe9f2d00		LEAQ go:string.*+1356(SB), CX										
  user_controller.go:133	0xe8ea56		bf03000000		MOVL $__subsystem__(SB), DI										
  user_controller.go:133	0xe8ea5b		0f1f440000		NOPL 0(AX)(AX*1)											
  user_controller.go:133	0xe8ea60		e8bbf55dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:133	0xe8ea65		488d15b43e1b00		LEAQ runtime.types+383264(SB), DX									
  user_controller.go:133	0xe8ea6c		488910			MOVQ DX, 0(AX)												
  user_controller.go:133	0xe8ea6f		833ddaf06c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:133	0xe8ea76		7410			JE 0xe8ea88												
  user_controller.go:133	0xe8ea78		488b4808		MOVQ 0x8(AX), CX											
  user_controller.go:133	0xe8ea7c		0f1f4000		NOPL 0(AX)												
  user_controller.go:133	0xe8ea80		e89b995eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:133	0xe8ea85		49890b			MOVQ CX, 0(R11)												
  user_controller.go:133	0xe8ea88		488d0db1a4fd01		LEAQ CAS-Backend/biz/controller..stmp_332(SB), CX							
  user_controller.go:133	0xe8ea8f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8ea93		488d0de65d2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8ea9a		48898c2408010000	MOVQ CX, 0x108(SP)											
  context.go:1005		0xe8eaa2		488b8c2420010000	MOVQ 0x120(SP), CX											
  context.go:1005		0xe8eaaa		48898c2410010000	MOVQ CX, 0x110(SP)											
  context.go:1005		0xe8eab2		488d0527d42300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8eab9		488d9c2408010000	LEAQ 0x108(SP), BX											
  context.go:1005		0xe8eac1		e8da0558ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8eac6		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8eacb		488d0d5e07fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8ead2		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8ead5		488b842440010000	MOVQ 0x140(SP), AX											
  context.go:1005		0xe8eadd		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe8eae0		e87b0cf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  user_controller.go:137	0xe8eae5		4881c430010000		ADDQ $.file+227(SB), SP											
  user_controller.go:137	0xe8eaec		5d			POPQ BP													
  user_controller.go:137	0xe8eaed		c3			RET													
  user_controller.go:141	0xe8eaee		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)											
  user_controller.go:141	0xe8eaf7		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)											
  user_controller.go:141	0xe8eb00		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)											
  user_controller.go:141	0xe8eb09		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)											
  user_controller.go:141	0xe8eb12		488b01			MOVQ 0(CX), AX												
  user_controller.go:141	0xe8eb15		488b5908		MOVQ 0x8(CX), BX											
  user_controller.go:141	0xe8eb19		488b5110		MOVQ 0x10(CX), DX											
  user_controller.go:141	0xe8eb1d		488b7918		MOVQ 0x18(CX), DI											
  user_controller.go:141	0xe8eb21		4889d1			MOVQ DX, CX												
  user_controller.go:141	0xe8eb24		e897aefbff		CALL CAS-Backend/biz/service.Login(SB)									
  user_controller.go:141	0xe8eb29		0f100424		MOVUPS 0(SP), X0											
  user_controller.go:141	0xe8eb2d		0f118424c8000000	MOVUPS X0, 0xc8(SP)											
  user_controller.go:141	0xe8eb35		0f10442410		MOVUPS 0x10(SP), X0											
  user_controller.go:141	0xe8eb3a		0f118424d8000000	MOVUPS X0, 0xd8(SP)											
  user_controller.go:141	0xe8eb42		0f10442420		MOVUPS 0x20(SP), X0											
  user_controller.go:141	0xe8eb47		0f118424e8000000	MOVUPS X0, 0xe8(SP)											
  user_controller.go:141	0xe8eb4f		0f10442430		MOVUPS 0x30(SP), X0											
  user_controller.go:141	0xe8eb54		0f118424f8000000	MOVUPS X0, 0xf8(SP)											
  user_controller.go:141	0xe8eb5c		0f108424c8000000	MOVUPS 0xc8(SP), X0											
  user_controller.go:141	0xe8eb64		0f11442460		MOVUPS X0, 0x60(SP)											
  user_controller.go:141	0xe8eb69		0f108424d8000000	MOVUPS 0xd8(SP), X0											
  user_controller.go:141	0xe8eb71		0f11442470		MOVUPS X0, 0x70(SP)											
  user_controller.go:141	0xe8eb76		0f108424e8000000	MOVUPS 0xe8(SP), X0											
  user_controller.go:141	0xe8eb7e		0f11842480000000	MOVUPS X0, 0x80(SP)											
  user_controller.go:141	0xe8eb86		0f108424f8000000	MOVUPS 0xf8(SP), X0											
  user_controller.go:141	0xe8eb8e		0f11842490000000	MOVUPS X0, 0x90(SP)											
  user_controller.go:141	0xe8eb96		84c0			TESTL AL, AL												
  user_controller.go:142	0xe8eb98		0f85fc010000		JNE 0xe8ed9a												
  user_controller.go:142	0xe8eb9e		6690			NOPW													
  user_controller.go:151	0xe8eba0		4883f901		CMPQ CX, $__minor_os_version__(SB)									
  user_controller.go:151	0xe8eba4		0f8500010000		JNE 0xe8ecaa												
  user_controller.go:151	0xe8ebaa		803b31			CMPB 0(BX), $__major_os_version__+43(SB)								
  user_controller.go:151	0xe8ebad		0f85f7000000		JNE 0xe8ecaa												
  user_controller.go:152	0xe8ebb3		e828c45dff		CALL runtime.makemap_small(SB)										
  user_controller.go:152	0xe8ebb8		4889842420010000	MOVQ AX, 0x120(SP)											
  user_controller.go:152	0xe8ebc0		4889c3			MOVQ AX, BX												
  user_controller.go:152	0xe8ebc3		488d0dc2aa2d00		LEAQ go:string.*+4484(SB), CX										
  user_controller.go:152	0xe8ebca		bf04000000		MOVL $__subsystem__+1(SB), DI										
  user_controller.go:152	0xe8ebcf		488d05aa5c2100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:152	0xe8ebd6		e845f45dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:152	0xe8ebdb		488d0d7e3f1b00		LEAQ runtime.types+383840(SB), CX									
  user_controller.go:152	0xe8ebe2		488908			MOVQ CX, 0(AX)												
  user_controller.go:152	0xe8ebe5		833d64ef6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:152	0xe8ebec		740c			JE 0xe8ebfa												
  user_controller.go:152	0xe8ebee		488b5008		MOVQ 0x8(AX), DX											
  user_controller.go:152	0xe8ebf2		e829985eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:152	0xe8ebf7		498913			MOVQ DX, 0(R11)												
  user_controller.go:152	0xe8ebfa		488d15bf5efd01		LEAQ runtime.gcbits.*(SB), DX										
  user_controller.go:152	0xe8ec01		48895008		MOVQ DX, 0x8(AX)											
  user_controller.go:152	0xe8ec05		488d05745c2100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:152	0xe8ec0c		488b9c2420010000	MOVQ 0x120(SP), BX											
  user_controller.go:152	0xe8ec14		488d0d399e2d00		LEAQ go:string.*+1356(SB), CX										
  user_controller.go:152	0xe8ec1b		bf03000000		MOVL $__subsystem__(SB), DI										
  user_controller.go:152	0xe8ec20		e8fbf35dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:152	0xe8ec25		488d15f43c1b00		LEAQ runtime.types+383264(SB), DX									
  user_controller.go:152	0xe8ec2c		488910			MOVQ DX, 0(AX)												
  user_controller.go:152	0xe8ec2f		833d1aef6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:152	0xe8ec36		7410			JE 0xe8ec48												
  user_controller.go:152	0xe8ec38		488b4808		MOVQ 0x8(AX), CX											
  user_controller.go:152	0xe8ec3c		0f1f4000		NOPL 0(AX)												
  user_controller.go:152	0xe8ec40		e8db975eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:152	0xe8ec45		49890b			MOVQ CX, 0(R11)												
  user_controller.go:152	0xe8ec48		488d0d01a3fd01		LEAQ CAS-Backend/biz/controller..stmp_335(SB), CX							
  user_controller.go:152	0xe8ec4f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8ec53		488d0d265c2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8ec5a		48898c2408010000	MOVQ CX, 0x108(SP)											
  context.go:1005		0xe8ec62		488b8c2420010000	MOVQ 0x120(SP), CX											
  context.go:1005		0xe8ec6a		48898c2410010000	MOVQ CX, 0x110(SP)											
  context.go:1005		0xe8ec72		488d0567d22300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8ec79		488d9c2408010000	LEAQ 0x108(SP), BX											
  context.go:1005		0xe8ec81		e81a0458ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8ec86		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8ec8b		488d0d9e05fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8ec92		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8ec95		488b842440010000	MOVQ 0x140(SP), AX											
  context.go:1005		0xe8ec9d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe8eca0		e8bb0af7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  user_controller.go:165	0xe8eca5		e95b030000		JMP 0xe8f005												
  user_controller.go:157	0xe8ecaa		e831c35dff		CALL runtime.makemap_small(SB)										
  user_controller.go:157	0xe8ecaf		4889842420010000	MOVQ AX, 0x120(SP)											
  user_controller.go:157	0xe8ecb7		4889c3			MOVQ AX, BX												
  user_controller.go:157	0xe8ecba		488d0dcba92d00		LEAQ go:string.*+4484(SB), CX										
  user_controller.go:157	0xe8ecc1		bf04000000		MOVL $__subsystem__+1(SB), DI										
  user_controller.go:157	0xe8ecc6		488d05b35b2100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:157	0xe8eccd		e84ef35dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:157	0xe8ecd2		488d0d873e1b00		LEAQ runtime.types+383840(SB), CX									
  user_controller.go:157	0xe8ecd9		488908			MOVQ CX, 0(AX)												
  user_controller.go:157	0xe8ecdc		833d6dee6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:157	0xe8ece3		740c			JE 0xe8ecf1												
  user_controller.go:157	0xe8ece5		488b5008		MOVQ 0x8(AX), DX											
  user_controller.go:157	0xe8ece9		e832975eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:157	0xe8ecee		498913			MOVQ DX, 0(R11)												
  user_controller.go:157	0xe8ecf1		488d15c85dfd01		LEAQ runtime.gcbits.*(SB), DX										
  user_controller.go:157	0xe8ecf8		48895008		MOVQ DX, 0x8(AX)											
  user_controller.go:157	0xe8ecfc		488d057d5b2100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:157	0xe8ed03		488b9c2420010000	MOVQ 0x120(SP), BX											
  user_controller.go:157	0xe8ed0b		488d0d429d2d00		LEAQ go:string.*+1356(SB), CX										
  user_controller.go:157	0xe8ed12		bf03000000		MOVL $__subsystem__(SB), DI										
  user_controller.go:157	0xe8ed17		e804f35dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:157	0xe8ed1c		488d15fd3b1b00		LEAQ runtime.types+383264(SB), DX									
  user_controller.go:157	0xe8ed23		488910			MOVQ DX, 0(AX)												
  user_controller.go:157	0xe8ed26		833d23ee6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:157	0xe8ed2d		740c			JE 0xe8ed3b												
  user_controller.go:157	0xe8ed2f		488b4808		MOVQ 0x8(AX), CX											
  user_controller.go:157	0xe8ed33		e8e8965eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:157	0xe8ed38		49890b			MOVQ CX, 0(R11)												
  user_controller.go:157	0xe8ed3b		488d0d1ea2fd01		LEAQ CAS-Backend/biz/controller..stmp_337(SB), CX							
  user_controller.go:157	0xe8ed42		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8ed46		488d0d335b2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8ed4d		48898c2408010000	MOVQ CX, 0x108(SP)											
  context.go:1005		0xe8ed55		488b8c2420010000	MOVQ 0x120(SP), CX											
  context.go:1005		0xe8ed5d		48898c2410010000	MOVQ CX, 0x110(SP)											
  context.go:1005		0xe8ed65		488d0574d12300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8ed6c		488d9c2408010000	LEAQ 0x108(SP), BX											
  context.go:1005		0xe8ed74		e8270358ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8ed79		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8ed7e		488d0dab04fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8ed85		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8ed88		488b842440010000	MOVQ 0x140(SP), AX											
  context.go:1005		0xe8ed90		e8cb09f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  user_controller.go:165	0xe8ed95		e96b020000		JMP 0xe8f005												
  user_controller.go:143	0xe8ed9a		e841c25dff		CALL runtime.makemap_small(SB)										
  user_controller.go:143	0xe8ed9f		4889842420010000	MOVQ AX, 0x120(SP)											
  user_controller.go:143	0xe8eda7		4889c3			MOVQ AX, BX												
  user_controller.go:143	0xe8edaa		488d0ddba82d00		LEAQ go:string.*+4484(SB), CX										
  user_controller.go:143	0xe8edb1		bf04000000		MOVL $__subsystem__+1(SB), DI										
  user_controller.go:143	0xe8edb6		488d05c35a2100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:143	0xe8edbd		0f1f00			NOPL 0(AX)												
  user_controller.go:143	0xe8edc0		e85bf25dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:143	0xe8edc5		488d0d943d1b00		LEAQ runtime.types+383840(SB), CX									
  user_controller.go:143	0xe8edcc		488908			MOVQ CX, 0(AX)												
  user_controller.go:143	0xe8edcf		833d7aed6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:143	0xe8edd6		7410			JE 0xe8ede8												
  user_controller.go:143	0xe8edd8		488b5008		MOVQ 0x8(AX), DX											
  user_controller.go:143	0xe8eddc		0f1f4000		NOPL 0(AX)												
  user_controller.go:143	0xe8ede0		e83b965eff		CALL runtime.gcWriteBarrier1(SB)									
  user_controller.go:143	0xe8ede5		498913			MOVQ DX, 0(R11)												
  user_controller.go:143	0xe8ede8		488d0d418afd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), CX								
  user_controller.go:143	0xe8edef		48894808		MOVQ CX, 0x8(AX)											
  user_controller.go:145	0xe8edf3		488b442460		MOVQ 0x60(SP), AX											
  user_controller.go:145	0xe8edf8		e8a3b25dff		CALL runtime.convT64(SB)										
  user_controller.go:145	0xe8edfd		4889842418010000	MOVQ AX, 0x118(SP)											
  user_controller.go:143	0xe8ee05		488b9c2420010000	MOVQ 0x120(SP), BX											
  user_controller.go:143	0xe8ee0d		488d0d86972d00		LEAQ go:string.*+146(SB), CX										
  user_controller.go:143	0xe8ee14		bf02000000		MOVL $__minor_os_version__+1(SB), DI									
  user_controller.go:143	0xe8ee19		488d05605a2100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:143	0xe8ee20		e8fbf15dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:143	0xe8ee25		488d0d343d1b00		LEAQ runtime.types+383840(SB), CX									
  user_controller.go:143	0xe8ee2c		488908			MOVQ CX, 0(AX)												
  user_controller.go:143	0xe8ee2f		833d1aed6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:143	0xe8ee36		750a			JNE 0xe8ee42												
  user_controller.go:143	0xe8ee38		488b942418010000	MOVQ 0x118(SP), DX											
  user_controller.go:143	0xe8ee40		eb18			JMP 0xe8ee5a												
  user_controller.go:143	0xe8ee42		e8f9955eff		CALL runtime.gcWriteBarrier2(SB)									
  user_controller.go:143	0xe8ee47		488b942418010000	MOVQ 0x118(SP), DX											
  user_controller.go:143	0xe8ee4f		498913			MOVQ DX, 0(R11)												
  user_controller.go:143	0xe8ee52		488b7008		MOVQ 0x8(AX), SI											
  user_controller.go:143	0xe8ee56		49897308		MOVQ SI, 0x8(R11)											
  user_controller.go:143	0xe8ee5a		48895008		MOVQ DX, 0x8(AX)											
  user_controller.go:146	0xe8ee5e		488b442468		MOVQ 0x68(SP), AX											
  user_controller.go:146	0xe8ee63		488b5c2470		MOVQ 0x70(SP), BX											
  user_controller.go:146	0xe8ee68		e8b3b25dff		CALL runtime.convTstring(SB)										
  user_controller.go:146	0xe8ee6d		4889842418010000	MOVQ AX, 0x118(SP)											
  user_controller.go:143	0xe8ee75		488b9c2420010000	MOVQ 0x120(SP), BX											
  user_controller.go:143	0xe8ee7d		488d0da4a62d00		LEAQ go:string.*+4128(SB), CX										
  user_controller.go:143	0xe8ee84		bf04000000		MOVL $__subsystem__+1(SB), DI										
  user_controller.go:143	0xe8ee89		488d05f0592100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:143	0xe8ee90		e88bf15dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:143	0xe8ee95		488d0d843a1b00		LEAQ runtime.types+383264(SB), CX									
  user_controller.go:143	0xe8ee9c		488908			MOVQ CX, 0(AX)												
  user_controller.go:143	0xe8ee9f		833daaec6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:143	0xe8eea6		750a			JNE 0xe8eeb2												
  user_controller.go:143	0xe8eea8		488b942418010000	MOVQ 0x118(SP), DX											
  user_controller.go:143	0xe8eeb0		eb18			JMP 0xe8eeca												
  user_controller.go:143	0xe8eeb2		e889955eff		CALL runtime.gcWriteBarrier2(SB)									
  user_controller.go:143	0xe8eeb7		488b942418010000	MOVQ 0x118(SP), DX											
  user_controller.go:143	0xe8eebf		498913			MOVQ DX, 0(R11)												
  user_controller.go:143	0xe8eec2		488b7008		MOVQ 0x8(AX), SI											
  user_controller.go:143	0xe8eec6		49897308		MOVQ SI, 0x8(R11)											
  user_controller.go:143	0xe8eeca		48895008		MOVQ DX, 0x8(AX)											
  user_controller.go:147	0xe8eece		488b442478		MOVQ 0x78(SP), AX											
  user_controller.go:147	0xe8eed3		488b9c2480000000	MOVQ 0x80(SP), BX											
  user_controller.go:147	0xe8eedb		0f1f440000		NOPL 0(AX)(AX*1)											
  user_controller.go:147	0xe8eee0		e83bb25dff		CALL runtime.convTstring(SB)										
  user_controller.go:147	0xe8eee5		4889842418010000	MOVQ AX, 0x118(SP)											
  user_controller.go:143	0xe8eeed		488b9c2420010000	MOVQ 0x120(SP), BX											
  user_controller.go:143	0xe8eef5		488d0d5f542e00		LEAQ go:string.*+48723(SB), CX										
  user_controller.go:143	0xe8eefc		bf08000000		MOVL $__major_os_version__+2(SB), DI									
  user_controller.go:143	0xe8ef01		488d0578592100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:143	0xe8ef08		e813f15dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:143	0xe8ef0d		488d0d0c3a1b00		LEAQ runtime.types+383264(SB), CX									
  user_controller.go:143	0xe8ef14		488908			MOVQ CX, 0(AX)												
  user_controller.go:143	0xe8ef17		833d32ec6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:143	0xe8ef1e		6690			NOPW													
  user_controller.go:143	0xe8ef20		750a			JNE 0xe8ef2c												
  user_controller.go:143	0xe8ef22		488b8c2418010000	MOVQ 0x118(SP), CX											
  user_controller.go:143	0xe8ef2a		eb18			JMP 0xe8ef44												
  user_controller.go:143	0xe8ef2c		e80f955eff		CALL runtime.gcWriteBarrier2(SB)									
  user_controller.go:143	0xe8ef31		488b8c2418010000	MOVQ 0x118(SP), CX											
  user_controller.go:143	0xe8ef39		49890b			MOVQ CX, 0(R11)												
  user_controller.go:143	0xe8ef3c		488b5008		MOVQ 0x8(AX), DX											
  user_controller.go:143	0xe8ef40		49895308		MOVQ DX, 0x8(R11)											
  user_controller.go:143	0xe8ef44		48894808		MOVQ CX, 0x8(AX)											
  user_controller.go:148	0xe8ef48		488b842498000000	MOVQ 0x98(SP), AX											
  user_controller.go:148	0xe8ef50		e84bb15dff		CALL runtime.convT64(SB)										
  user_controller.go:148	0xe8ef55		4889842418010000	MOVQ AX, 0x118(SP)											
  user_controller.go:143	0xe8ef5d		488b9c2420010000	MOVQ 0x120(SP), BX											
  user_controller.go:143	0xe8ef65		488d0d69b62d00		LEAQ go:string.*+8397(SB), CX										
  user_controller.go:143	0xe8ef6c		bf05000000		MOVL $__subsystem__+2(SB), DI										
  user_controller.go:143	0xe8ef71		488d0508592100		LEAQ runtime.types+784512(SB), AX									
  user_controller.go:143	0xe8ef78		e8a3f05dff		CALL runtime.mapassign_faststr(SB)									
  user_controller.go:143	0xe8ef7d		488d0ddc3b1b00		LEAQ runtime.types+383840(SB), CX									
  user_controller.go:143	0xe8ef84		488908			MOVQ CX, 0(AX)												
  user_controller.go:143	0xe8ef87		833dc2eb6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  user_controller.go:143	0xe8ef8e		750a			JNE 0xe8ef9a												
  user_controller.go:143	0xe8ef90		488b8c2418010000	MOVQ 0x118(SP), CX											
  user_controller.go:143	0xe8ef98		eb18			JMP 0xe8efb2												
  user_controller.go:143	0xe8ef9a		e8a1945eff		CALL runtime.gcWriteBarrier2(SB)									
  user_controller.go:143	0xe8ef9f		488b8c2418010000	MOVQ 0x118(SP), CX											
  user_controller.go:143	0xe8efa7		49890b			MOVQ CX, 0(R11)												
  user_controller.go:143	0xe8efaa		488b5008		MOVQ 0x8(AX), DX											
  user_controller.go:143	0xe8efae		49895308		MOVQ DX, 0x8(R11)											
  user_controller.go:143	0xe8efb2		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8efb6		488d0dc3582100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8efbd		48898c2408010000	MOVQ CX, 0x108(SP)											
  context.go:1005		0xe8efc5		488b8c2420010000	MOVQ 0x120(SP), CX											
  context.go:1005		0xe8efcd		48898c2410010000	MOVQ CX, 0x110(SP)											
  context.go:1005		0xe8efd5		488d0504cf2300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8efdc		488d9c2408010000	LEAQ 0x108(SP), BX											
  context.go:1005		0xe8efe4		e8b70058ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8efe9		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8efee		488d0d3b02fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8eff5		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8eff8		488b842440010000	MOVQ 0x140(SP), AX											
  context.go:1005		0xe8f000		e85b07f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  user_controller.go:165	0xe8f005		4881c430010000		ADDQ $.file+227(SB), SP											
  user_controller.go:165	0xe8f00c		5d			POPQ BP													
  user_controller.go:165	0xe8f00d		c3			RET													
  user_controller.go:125	0xe8f00e		4889c1			MOVQ AX, CX												
  user_controller.go:125	0xe8f011		4889df			MOVQ BX, DI												
  user_controller.go:125	0xe8f014		488b842440010000	MOVQ 0x140(SP), AX											
  user_controller.go:125	0xe8f01c		bb90010000		MOVL $.file+323(SB), BX											
  user_controller.go:125	0xe8f021		e87ac0f6ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  user_controller.go:126	0xe8f026		4881c430010000		ADDQ $.file+227(SB), SP											
  user_controller.go:126	0xe8f02d		5d			POPQ BP													
  user_controller.go:126	0xe8f02e		c3			RET													
  context.go:712		0xe8f02f		4d89ca			MOVQ R9, R10												
  context.go:712		0xe8f032		4d21c1			ANDQ R8, R9												
  context.go:712		0xe8f035		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe8f039		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe8f03e		6690			NOPW													
  context.go:712		0xe8f040		4939db			CMPQ R11, BX												
  context.go:712		0xe8f043		7438			JE 0xe8f07d												
  context.go:712		0xe8f045		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe8f049		4d85db			TESTQ R11, R11												
  context.go:712		0xe8f04c		75e1			JNE 0xe8f02f												
  context.go:712		0xe8f04e		48899424a0000000	MOVQ DX, 0xa0(SP)											
  context.go:712		0xe8f056		488d0573c41200		LEAQ CAS-Backend/biz/controller..typeAssert.41(SB), AX							
  context.go:712		0xe8f05d		0f1f00			NOPL 0(AX)												
  context.go:712		0xe8f060		e87b0258ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe8f065		488b9424a0000000	MOVQ 0xa0(SP), DX											
  context.go:712		0xe8f06d		4889c1			MOVQ AX, CX												
  context.go:752		0xe8f070		488b842428010000	MOVQ 0x128(SP), AX											
  context.go:712		0xe8f078		e995f8ffff		JMP 0xe8e912												
  context.go:712		0xe8f07d		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe8f082		e98bf8ffff		JMP 0xe8e912												
  user_controller.go:122	0xe8f087		4889442408		MOVQ AX, 0x8(SP)											
  user_controller.go:122	0xe8f08c		e84f745eff		CALL runtime.morestack_noctxt.abi0(SB)									
  user_controller.go:122	0xe8f091		488b442408		MOVQ 0x8(SP), AX											
  user_controller.go:122	0xe8f096		e905f8ffff		JMP CAS-Backend/biz/controller.LoginHandler(SB)								
  :-1				0xe8f09b		cc			INT $__subsystem__(SB)											
  :-1				0xe8f09c		cc			INT $__subsystem__(SB)											
  :-1				0xe8f09d		cc			INT $__subsystem__(SB)											
  :-1				0xe8f09e		cc			INT $__subsystem__(SB)											
  :-1				0xe8f09f		cc			INT $__subsystem__(SB)											

