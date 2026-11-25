TEXT CAS-Backend/biz/controller.NewVehHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_controller.go
  vehicle_controller.go:24	0xe8f0a0		4c8da42430ffffff	LEAQ 0xffffff30(SP), R12										
  vehicle_controller.go:24	0xe8f0a8		4d3b6610		CMPQ R12, 0x10(R14)											
  vehicle_controller.go:24	0xe8f0ac		0f86b5040000		JBE 0xe8f567												
  vehicle_controller.go:24	0xe8f0b2		55			PUSHQ BP												
  vehicle_controller.go:24	0xe8f0b3		4889e5			MOVQ SP, BP												
  vehicle_controller.go:24	0xe8f0b6		4881ec48010000		SUBQ $.file+251(SB), SP											
  context.go:712		0xe8f0bd		4889842458010000	MOVQ AX, 0x158(SP)											
  vehicle_controller.go:25	0xe8f0c5		488d0574f52800		LEAQ runtime.types+1283648(SB), AX									
  vehicle_controller.go:25	0xe8f0cc		e8cf2658ff		CALL runtime.newobject(SB)										
  vehicle_controller.go:25	0xe8f0d1		4889842440010000	MOVQ AX, 0x140(SP)											
  context.go:712		0xe8f0d9		488b0d00871200		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe8f0e0		488b1501871200		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe8f0e7		4885c9			TESTQ CX, CX												
  context.go:712		0xe8f0ea		7419			JE 0xe8f105												
  context.go:712		0xe8f0ec		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe8f0f0		488b35f9c31200		MOVQ CAS-Backend/biz/controller..typeAssert.42(SB), SI							
  context.go:712		0xe8f0f7		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe8f0fa		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe8f0fe		6690			NOPW													
  context.go:712		0xe8f100		e909040000		JMP 0xe8f50e												
  context.go:752		0xe8f105		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe8f109		4c8b842458010000	MOVQ 0x158(SP), R8											
  context.go:752		0xe8f111		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe8f115		488d0dc4751900		LEAQ runtime.types+268000(SB), CX									
  context.go:752		0xe8f11c		4889c7			MOVQ AX, DI												
  context.go:752		0xe8f11f		4889d0			MOVQ DX, AX												
  context.go:752		0xe8f122		ffd6			CALL SI													
  vehicle_controller.go:27	0xe8f124		4885c0			TESTQ AX, AX												
  vehicle_controller.go:27	0xe8f127		0f8568030000		JNE 0xe8f495												
  vehicle_controller.go:33	0xe8f12d		440f11bc2410010000	MOVUPS X15, 0x110(SP)											
  vehicle_controller.go:33	0xe8f136		488d0503f52800		LEAQ runtime.types+1283648(SB), AX									
  vehicle_controller.go:33	0xe8f13d		488b9c2440010000	MOVQ 0x140(SP), BX											
  vehicle_controller.go:33	0xe8f145		e856ff57ff		CALL runtime.convT(SB)											
  vehicle_controller.go:33	0xe8f14a		488d0deff42800		LEAQ runtime.types+1283648(SB), CX									
  vehicle_controller.go:33	0xe8f151		48898c2410010000	MOVQ CX, 0x110(SP)											
  vehicle_controller.go:33	0xe8f159		4889842418010000	MOVQ AX, 0x118(SP)											
  print.go:314			0xe8f161		488b1d182f6802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8f168		488d0571c9fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8f16f		488d8c2410010000	LEAQ 0x110(SP), CX											
  print.go:314			0xe8f177		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8f17c		4889fe			MOVQ DI, SI												
  print.go:314			0xe8f17f		90			NOPL													
  print.go:314			0xe8f180		e8db0669ff		CALL fmt.Fprintln(SB)											
  vehicle_controller.go:35	0xe8f185		440f11bc2488000000	MOVUPS X15, 0x88(SP)											
  vehicle_controller.go:35	0xe8f18e		488dbc2490000000	LEAQ 0x90(SP), DI											
  vehicle_controller.go:35	0xe8f196		488d7ff0		LEAQ -0x10(DI), DI											
  vehicle_controller.go:35	0xe8f19a		660f1f440000		NOPW 0(AX)(AX*1)											
  vehicle_controller.go:35	0xe8f1a0		48896c24f0		MOVQ BP, -0x10(SP)											
  vehicle_controller.go:35	0xe8f1a5		488d6c24f0		LEAQ -0x10(SP), BP											
  vehicle_controller.go:35	0xe8f1aa		e837995eff		CALL 0x478ae6												
  vehicle_controller.go:35	0xe8f1af		488b6d00		MOVQ 0(BP), BP												
  vehicle_controller.go:36	0xe8f1b3		488b8c2440010000	MOVQ 0x140(SP), CX											
  vehicle_controller.go:36	0xe8f1bb		488b11			MOVQ 0(CX), DX												
  vehicle_controller.go:36	0xe8f1be		488b7108		MOVQ 0x8(CX), SI											
  vehicle_controller.go:36	0xe8f1c2		4889942488000000	MOVQ DX, 0x88(SP)											
  vehicle_controller.go:36	0xe8f1ca		4889b42490000000	MOVQ SI, 0x90(SP)											
  vehicle_controller.go:37	0xe8f1d2		488b5110		MOVQ 0x10(CX), DX											
  vehicle_controller.go:37	0xe8f1d6		488b7118		MOVQ 0x18(CX), SI											
  vehicle_controller.go:37	0xe8f1da		4889942498000000	MOVQ DX, 0x98(SP)											
  vehicle_controller.go:37	0xe8f1e2		4889b424a0000000	MOVQ SI, 0xa0(SP)											
  vehicle_controller.go:38	0xe8f1ea		488b5120		MOVQ 0x20(CX), DX											
  vehicle_controller.go:38	0xe8f1ee		48899424a8000000	MOVQ DX, 0xa8(SP)											
  vehicle_controller.go:39	0xe8f1f6		488b5128		MOVQ 0x28(CX), DX											
  vehicle_controller.go:39	0xe8f1fa		488b7130		MOVQ 0x30(CX), SI											
  vehicle_controller.go:39	0xe8f1fe		48899424b0000000	MOVQ DX, 0xb0(SP)											
  vehicle_controller.go:39	0xe8f206		4889b424b8000000	MOVQ SI, 0xb8(SP)											
  vehicle_controller.go:40	0xe8f20e		488b5138		MOVQ 0x38(CX), DX											
  vehicle_controller.go:40	0xe8f212		488b7140		MOVQ 0x40(CX), SI											
  vehicle_controller.go:40	0xe8f216		48899424c0000000	MOVQ DX, 0xc0(SP)											
  vehicle_controller.go:40	0xe8f21e		4889b424c8000000	MOVQ SI, 0xc8(SP)											
  vehicle_controller.go:41	0xe8f226		488b5148		MOVQ 0x48(CX), DX											
  vehicle_controller.go:41	0xe8f22a		488b7150		MOVQ 0x50(CX), SI											
  vehicle_controller.go:41	0xe8f22e		48899424d0000000	MOVQ DX, 0xd0(SP)											
  vehicle_controller.go:41	0xe8f236		4889b424d8000000	MOVQ SI, 0xd8(SP)											
  vehicle_controller.go:42	0xe8f23e		488b5158		MOVQ 0x58(CX), DX											
  vehicle_controller.go:42	0xe8f242		488b7160		MOVQ 0x60(CX), SI											
  vehicle_controller.go:42	0xe8f246		48899424e0000000	MOVQ DX, 0xe0(SP)											
  vehicle_controller.go:42	0xe8f24e		4889b424e8000000	MOVQ SI, 0xe8(SP)											
  vehicle_controller.go:43	0xe8f256		488b5168		MOVQ 0x68(CX), DX											
  vehicle_controller.go:43	0xe8f25a		488b4970		MOVQ 0x70(CX), CX											
  vehicle_controller.go:43	0xe8f25e		48899424f0000000	MOVQ DX, 0xf0(SP)											
  vehicle_controller.go:43	0xe8f266		48898c24f8000000	MOVQ CX, 0xf8(SP)											
  vehicle_controller.go:46	0xe8f26e		488b8c2488000000	MOVQ 0x88(SP), CX											
  vehicle_controller.go:46	0xe8f276		48890c24		MOVQ CX, 0(SP)												
  vehicle_controller.go:46	0xe8f27a		488d7c2408		LEAQ 0x8(SP), DI											
  vehicle_controller.go:46	0xe8f27f		488db42490000000	LEAQ 0x90(SP), SI											
  vehicle_controller.go:46	0xe8f287		48896c24f0		MOVQ BP, -0x10(SP)											
  vehicle_controller.go:46	0xe8f28c		488d6c24f0		LEAQ -0x10(SP), BP											
  vehicle_controller.go:46	0xe8f291		e8a89b5eff		CALL 0x478e3e												
  vehicle_controller.go:46	0xe8f296		488b6d00		MOVQ 0(BP), BP												
  vehicle_controller.go:46	0xe8f29a		e881aafbff		CALL CAS-Backend/biz/service.AddVeh(SB)									
  vehicle_controller.go:46	0xe8f29f		90			NOPL													
  vehicle_controller.go:46	0xe8f2a0		84c0			TESTL AL, AL												
  vehicle_controller.go:49	0xe8f2a2		0f84f0000000		JE 0xe8f398												
  vehicle_controller.go:50	0xe8f2a8		e833bd5dff		CALL runtime.makemap_small(SB)										
  vehicle_controller.go:50	0xe8f2ad		4889842408010000	MOVQ AX, 0x108(SP)											
  vehicle_controller.go:50	0xe8f2b5		4889c3			MOVQ AX, BX												
  vehicle_controller.go:50	0xe8f2b8		488d0dcda32d00		LEAQ go:string.*+4484(SB), CX										
  vehicle_controller.go:50	0xe8f2bf		bf04000000		MOVL $__subsystem__+1(SB), DI										
  vehicle_controller.go:50	0xe8f2c4		488d05b5552100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:50	0xe8f2cb		e850ed5dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:50	0xe8f2d0		488d0d89381b00		LEAQ runtime.types+383840(SB), CX									
  vehicle_controller.go:50	0xe8f2d7		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:50	0xe8f2da		833d6fe86c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:50	0xe8f2e1		740c			JE 0xe8f2ef												
  vehicle_controller.go:50	0xe8f2e3		488b5008		MOVQ 0x8(AX), DX											
  vehicle_controller.go:50	0xe8f2e7		e834915eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:50	0xe8f2ec		498913			MOVQ DX, 0(R11)												
  vehicle_controller.go:50	0xe8f2ef		488d153a85fd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  vehicle_controller.go:50	0xe8f2f6		48895008		MOVQ DX, 0x8(AX)											
  vehicle_controller.go:50	0xe8f2fa		488d057f552100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:50	0xe8f301		488b9c2408010000	MOVQ 0x108(SP), BX											
  vehicle_controller.go:50	0xe8f309		488d0d44972d00		LEAQ go:string.*+1356(SB), CX										
  vehicle_controller.go:50	0xe8f310		bf03000000		MOVL $__subsystem__(SB), DI										
  vehicle_controller.go:50	0xe8f315		e806ed5dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:50	0xe8f31a		488d15ff351b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_controller.go:50	0xe8f321		488910			MOVQ DX, 0(AX)												
  vehicle_controller.go:50	0xe8f324		833d25e86c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:50	0xe8f32b		740c			JE 0xe8f339												
  vehicle_controller.go:50	0xe8f32d		488b4808		MOVQ 0x8(AX), CX											
  vehicle_controller.go:50	0xe8f331		e8ea905eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:50	0xe8f336		49890b			MOVQ CX, 0(R11)												
  vehicle_controller.go:50	0xe8f339		488d0d309cfd01		LEAQ CAS-Backend/biz/controller..stmp_340(SB), CX							
  vehicle_controller.go:50	0xe8f340		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8f344		488d0d35552100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8f34b		48898c2430010000	MOVQ CX, 0x130(SP)											
  context.go:1005		0xe8f353		488b8c2408010000	MOVQ 0x108(SP), CX											
  context.go:1005		0xe8f35b		48898c2438010000	MOVQ CX, 0x138(SP)											
  context.go:1005		0xe8f363		488d0576cb2300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8f36a		488d9c2430010000	LEAQ 0x130(SP), BX											
  context.go:1005		0xe8f372		e829fd57ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8f377		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8f37c		488d0dadfefd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8f383		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8f386		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe8f38e		e8cd03f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_controller.go:60	0xe8f393		e9f4000000		JMP 0xe8f48c												
  vehicle_controller.go:55	0xe8f398		e843bc5dff		CALL runtime.makemap_small(SB)										
  vehicle_controller.go:55	0xe8f39d		4889842408010000	MOVQ AX, 0x108(SP)											
  vehicle_controller.go:55	0xe8f3a5		4889c3			MOVQ AX, BX												
  vehicle_controller.go:55	0xe8f3a8		488d0ddda22d00		LEAQ go:string.*+4484(SB), CX										
  vehicle_controller.go:55	0xe8f3af		bf04000000		MOVL $__subsystem__+1(SB), DI										
  vehicle_controller.go:55	0xe8f3b4		488d05c5542100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:55	0xe8f3bb		0f1f440000		NOPL 0(AX)(AX*1)											
  vehicle_controller.go:55	0xe8f3c0		e85bec5dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:55	0xe8f3c5		488d0d94371b00		LEAQ runtime.types+383840(SB), CX									
  vehicle_controller.go:55	0xe8f3cc		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:55	0xe8f3cf		833d7ae76c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:55	0xe8f3d6		7410			JE 0xe8f3e8												
  vehicle_controller.go:55	0xe8f3d8		488b5008		MOVQ 0x8(AX), DX											
  vehicle_controller.go:55	0xe8f3dc		0f1f4000		NOPL 0(AX)												
  vehicle_controller.go:55	0xe8f3e0		e83b905eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:55	0xe8f3e5		498913			MOVQ DX, 0(R11)												
  vehicle_controller.go:55	0xe8f3e8		488d15d156fd01		LEAQ runtime.gcbits.*(SB), DX										
  vehicle_controller.go:55	0xe8f3ef		48895008		MOVQ DX, 0x8(AX)											
  vehicle_controller.go:55	0xe8f3f3		488d0586542100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:55	0xe8f3fa		488b9c2408010000	MOVQ 0x108(SP), BX											
  vehicle_controller.go:55	0xe8f402		488d0d4b962d00		LEAQ go:string.*+1356(SB), CX										
  vehicle_controller.go:55	0xe8f409		bf03000000		MOVL $__subsystem__(SB), DI										
  vehicle_controller.go:55	0xe8f40e		e80dec5dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:55	0xe8f413		488d1506351b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_controller.go:55	0xe8f41a		488910			MOVQ DX, 0(AX)												
  vehicle_controller.go:55	0xe8f41d		833d2ce76c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:55	0xe8f424		740c			JE 0xe8f432												
  vehicle_controller.go:55	0xe8f426		488b4808		MOVQ 0x8(AX), CX											
  vehicle_controller.go:55	0xe8f42a		e8f18f5eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:55	0xe8f42f		49890b			MOVQ CX, 0(R11)												
  vehicle_controller.go:55	0xe8f432		488d0d479bfd01		LEAQ CAS-Backend/biz/controller..stmp_342(SB), CX							
  vehicle_controller.go:55	0xe8f439		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8f43d		488d0d3c542100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8f444		48898c2430010000	MOVQ CX, 0x130(SP)											
  context.go:1005		0xe8f44c		488b8c2408010000	MOVQ 0x108(SP), CX											
  context.go:1005		0xe8f454		48898c2438010000	MOVQ CX, 0x138(SP)											
  context.go:1005		0xe8f45c		488d057dca2300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8f463		488d9c2430010000	LEAQ 0x130(SP), BX											
  context.go:1005		0xe8f46b		e830fc57ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8f470		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8f475		488d0db4fdfd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8f47c		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8f47f		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe8f487		e8d402f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_controller.go:60	0xe8f48c		4881c448010000		ADDQ $.file+251(SB), SP											
  vehicle_controller.go:60	0xe8f493		5d			POPQ BP													
  vehicle_controller.go:60	0xe8f494		c3			RET													
  context.go:752		0xe8f495		48899c2480000000	MOVQ BX, 0x80(SP)											
  context.go:752		0xe8f49d		4889442478		MOVQ AX, 0x78(SP)											
  vehicle_controller.go:28	0xe8f4a2		488d1577341b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_controller.go:28	0xe8f4a9		4889942420010000	MOVQ DX, 0x120(SP)											
  vehicle_controller.go:28	0xe8f4b1		488d151893fd01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  vehicle_controller.go:28	0xe8f4b8		4889942428010000	MOVQ DX, 0x128(SP)											
  print.go:314			0xe8f4c0		488b1db92b6802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8f4c7		488d0512c6fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8f4ce		488d8c2420010000	LEAQ 0x120(SP), CX											
  print.go:314			0xe8f4d6		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8f4db		4889fe			MOVQ DI, SI												
  print.go:314			0xe8f4de		6690			NOPW													
  print.go:314			0xe8f4e0		e87b0369ff		CALL fmt.Fprintln(SB)											
  vehicle_controller.go:29	0xe8f4e5		488b842458010000	MOVQ 0x158(SP), AX											
  vehicle_controller.go:29	0xe8f4ed		bb90010000		MOVL $.file+323(SB), BX											
  vehicle_controller.go:29	0xe8f4f2		488b4c2478		MOVQ 0x78(SP), CX											
  vehicle_controller.go:29	0xe8f4f7		488bbc2480000000	MOVQ 0x80(SP), DI											
  vehicle_controller.go:29	0xe8f4ff		90			NOPL													
  vehicle_controller.go:29	0xe8f500		e89bbbf6ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  vehicle_controller.go:30	0xe8f505		4881c448010000		ADDQ $.file+251(SB), SP											
  vehicle_controller.go:30	0xe8f50c		5d			POPQ BP													
  vehicle_controller.go:30	0xe8f50d		c3			RET													
  context.go:712		0xe8f50e		4d89ca			MOVQ R9, R10												
  context.go:712		0xe8f511		4d21c1			ANDQ R8, R9												
  context.go:712		0xe8f514		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe8f518		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe8f51d		0f1f00			NOPL 0(AX)												
  context.go:712		0xe8f520		4939db			CMPQ R11, BX												
  context.go:712		0xe8f523		7438			JE 0xe8f55d												
  context.go:712		0xe8f525		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe8f529		4d85db			TESTQ R11, R11												
  context.go:712		0xe8f52c		75e0			JNE 0xe8f50e												
  context.go:712		0xe8f52e		4889942400010000	MOVQ DX, 0x100(SP)											
  context.go:712		0xe8f536		488d05b3bf1200		LEAQ CAS-Backend/biz/controller..typeAssert.42(SB), AX							
  context.go:712		0xe8f53d		0f1f00			NOPL 0(AX)												
  context.go:712		0xe8f540		e89bfd57ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe8f545		488b942400010000	MOVQ 0x100(SP), DX											
  context.go:712		0xe8f54d		4889c1			MOVQ AX, CX												
  context.go:752		0xe8f550		488b842440010000	MOVQ 0x140(SP), AX											
  context.go:712		0xe8f558		e9a8fbffff		JMP 0xe8f105												
  context.go:712		0xe8f55d		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe8f562		e99efbffff		JMP 0xe8f105												
  vehicle_controller.go:24	0xe8f567		4889442408		MOVQ AX, 0x8(SP)											
  vehicle_controller.go:24	0xe8f56c		e86f6f5eff		CALL runtime.morestack_noctxt.abi0(SB)									
  vehicle_controller.go:24	0xe8f571		488b442408		MOVQ 0x8(SP), AX											
  vehicle_controller.go:24	0xe8f576		e925fbffff		JMP CAS-Backend/biz/controller.NewVehHandler(SB)							
  :-1				0xe8f57b		cc			INT $__subsystem__(SB)											
  :-1				0xe8f57c		cc			INT $__subsystem__(SB)											
  :-1				0xe8f57d		cc			INT $__subsystem__(SB)											
  :-1				0xe8f57e		cc			INT $__subsystem__(SB)											
  :-1				0xe8f57f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.GetAllVehHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_controller.go
  vehicle_controller.go:62	0xe8f580		4c8da42480feffff	LEAQ 0xfffffe80(SP), R12										
  vehicle_controller.go:62	0xe8f588		4d3b6610		CMPQ R12, 0x10(R14)											
  vehicle_controller.go:62	0xe8f58c		0f860a080000		JBE 0xe8fd9c												
  vehicle_controller.go:62	0xe8f592		55			PUSHQ BP												
  vehicle_controller.go:62	0xe8f593		4889e5			MOVQ SP, BP												
  vehicle_controller.go:62	0xe8f596		4881ecf8010000		SUBQ $.file+427(SB), SP											
  vehicle_controller.go:75	0xe8f59d		4889842408020000	MOVQ AX, 0x208(SP)											
  vehicle_controller.go:65	0xe8f5a5		488d1de4a02d00		LEAQ go:string.*+4488(SB), BX										
  vehicle_controller.go:65	0xe8f5ac		b904000000		MOVL $__subsystem__+1(SB), CX										
  vehicle_controller.go:65	0xe8f5b1		488d3d185cfd01		LEAQ runtime.gcbits.*+1808(SB), DI									
  vehicle_controller.go:65	0xe8f5b8		be01000000		MOVL $__minor_os_version__(SB), SI									
  vehicle_controller.go:65	0xe8f5bd		0f1f00			NOPL 0(AX)												
  vehicle_controller.go:65	0xe8f5c0		e87bcaf6ff		CALL github.com/gin-gonic/gin.(*Context).DefaultQuery(SB)						
  vehicle_controller.go:65	0xe8f5c5		48898424c8010000	MOVQ AX, 0x1c8(SP)											
  vehicle_controller.go:65	0xe8f5cd		48899c2488000000	MOVQ BX, 0x88(SP)											
  vehicle_controller.go:66	0xe8f5d5		b904000000		MOVL $__subsystem__+1(SB), CX										
  vehicle_controller.go:66	0xe8f5da		488d3dbd8f2d00		LEAQ go:string.*+150(SB), DI										
  vehicle_controller.go:66	0xe8f5e1		be02000000		MOVL $__minor_os_version__+1(SB), SI									
  vehicle_controller.go:66	0xe8f5e6		488b842408020000	MOVQ 0x208(SP), AX											
  vehicle_controller.go:66	0xe8f5ee		488d1d9fa02d00		LEAQ go:string.*+4492(SB), BX										
  vehicle_controller.go:66	0xe8f5f5		e846caf6ff		CALL github.com/gin-gonic/gin.(*Context).DefaultQuery(SB)						
  vehicle_controller.go:66	0xe8f5fa		4889842430010000	MOVQ AX, 0x130(SP)											
  vehicle_controller.go:66	0xe8f602		48895c2458		MOVQ BX, 0x58(SP)											
  vehicle_controller.go:67	0xe8f607		b906000000		MOVL $__major_os_version__(SB), CX									
  vehicle_controller.go:67	0xe8f60c		488b842408020000	MOVQ 0x208(SP), AX											
  vehicle_controller.go:67	0xe8f614		488d1d6efe2d00		LEAQ go:string.*+28545(SB), BX										
  vehicle_controller.go:67	0xe8f61b		0f1f440000		NOPL 0(AX)(AX*1)											
  vehicle_controller.go:67	0xe8f620		e89bc9f6ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  vehicle_controller.go:67	0xe8f625		4889842438010000	MOVQ AX, 0x138(SP)											
  vehicle_controller.go:67	0xe8f62d		48895c2460		MOVQ BX, 0x60(SP)											
  vehicle_controller.go:68	0xe8f632		b902000000		MOVL $__minor_os_version__+1(SB), CX									
  vehicle_controller.go:68	0xe8f637		488b842408020000	MOVQ 0x208(SP), AX											
  vehicle_controller.go:68	0xe8f63f		488d1dce8e2d00		LEAQ go:string.*+12(SB), BX										
  vehicle_controller.go:68	0xe8f646		e875c9f6ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  vehicle_controller.go:68	0xe8f64b		48898424d0010000	MOVQ AX, 0x1d0(SP)											
  vehicle_controller.go:68	0xe8f653		48899c2498000000	MOVQ BX, 0x98(SP)											
  vehicle_controller.go:69	0xe8f65b		b904000000		MOVL $__subsystem__+1(SB), CX										
  vehicle_controller.go:69	0xe8f660		488b842408020000	MOVQ 0x208(SP), AX											
  vehicle_controller.go:69	0xe8f668		488d1dc19e2d00		LEAQ go:string.*+4136(SB), BX										
  vehicle_controller.go:69	0xe8f66f		e84cc9f6ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  vehicle_controller.go:69	0xe8f674		48898424c0010000	MOVQ AX, 0x1c0(SP)											
  vehicle_controller.go:69	0xe8f67c		48895c2478		MOVQ BX, 0x78(SP)											
  vehicle_controller.go:70	0xe8f681		488b8424c8010000	MOVQ 0x1c8(SP), AX											
  vehicle_controller.go:70	0xe8f689		488b9c2488000000	MOVQ 0x88(SP), BX											
  vehicle_controller.go:70	0xe8f691		e80abc65ff		CALL strconv.Atoi(SB)											
  vehicle_controller.go:70	0xe8f696		4889842480000000	MOVQ AX, 0x80(SP)											
  vehicle_controller.go:71	0xe8f69e		488b5c2458		MOVQ 0x58(SP), BX											
  vehicle_controller.go:71	0xe8f6a3		488b842430010000	MOVQ 0x130(SP), AX											
  vehicle_controller.go:71	0xe8f6ab		e8f0bb65ff		CALL strconv.Atoi(SB)											
  vehicle_controller.go:71	0xe8f6b0		4889442450		MOVQ AX, 0x50(SP)											
  vehicle_controller.go:72	0xe8f6b5		488b5c2478		MOVQ 0x78(SP), BX											
  vehicle_controller.go:72	0xe8f6ba		488b8424c0010000	MOVQ 0x1c0(SP), AX											
  vehicle_controller.go:72	0xe8f6c2		e8d9bb65ff		CALL strconv.Atoi(SB)											
  vehicle_controller.go:74	0xe8f6c7		488b5c2450		MOVQ 0x50(SP), BX											
  vehicle_controller.go:74	0xe8f6cc		488b8c2438010000	MOVQ 0x138(SP), CX											
  vehicle_controller.go:74	0xe8f6d4		488b7c2460		MOVQ 0x60(SP), DI											
  vehicle_controller.go:74	0xe8f6d9		488bb424d0010000	MOVQ 0x1d0(SP), SI											
  vehicle_controller.go:74	0xe8f6e1		4c8b842498000000	MOVQ 0x98(SP), R8											
  vehicle_controller.go:74	0xe8f6e9		4989c1			MOVQ AX, R9												
  vehicle_controller.go:74	0xe8f6ec		488b842480000000	MOVQ 0x80(SP), AX											
  vehicle_controller.go:74	0xe8f6f4		e827aafbff		CALL CAS-Backend/biz/service.SlAllVeh(SB)								
  vehicle_controller.go:74	0xe8f6f9		84c0			TESTL AL, AL												
  vehicle_controller.go:75	0xe8f6fb		7413			JE 0xe8f710												
  vehicle_controller.go:74	0xe8f6fd		48899c2490000000	MOVQ BX, 0x90(SP)											
  vehicle_controller.go:99	0xe8f705		31c0			XORL AX, AX												
  vehicle_controller.go:99	0xe8f707		31d2			XORL DX, DX												
  vehicle_controller.go:99	0xe8f709		31f6			XORL SI, SI												
  vehicle_controller.go:99	0xe8f70b		e990010000		JMP 0xe8f8a0												
  vehicle_controller.go:87	0xe8f710		e8cbb85dff		CALL runtime.makemap_small(SB)										
  vehicle_controller.go:87	0xe8f715		48898424e0010000	MOVQ AX, 0x1e0(SP)											
  vehicle_controller.go:87	0xe8f71d		4889c3			MOVQ AX, BX												
  vehicle_controller.go:87	0xe8f720		488d0d68fd2d00		LEAQ go:string.*+28551(SB), CX										
  vehicle_controller.go:87	0xe8f727		bf06000000		MOVL $__major_os_version__(SB), DI									
  vehicle_controller.go:87	0xe8f72c		488d054d512100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:87	0xe8f733		e8e8e85dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:87	0xe8f738		488d0de1351b00		LEAQ runtime.types+384288(SB), CX									
  vehicle_controller.go:87	0xe8f73f		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:87	0xe8f742		833d07e46c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:87	0xe8f749		740c			JE 0xe8f757												
  vehicle_controller.go:87	0xe8f74b		488b5008		MOVQ 0x8(AX), DX											
  vehicle_controller.go:87	0xe8f74f		e8cc8c5eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:87	0xe8f754		498913			MOVQ DX, 0(R11)												
  vehicle_controller.go:87	0xe8f757		488d15c2af0e00		LEAQ runtime.staticuint64s(SB), DX									
  vehicle_controller.go:87	0xe8f75e		48895008		MOVQ DX, 0x8(AX)											
  vehicle_controller.go:87	0xe8f762		488d0517512100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:87	0xe8f769		488b9c24e0010000	MOVQ 0x1e0(SP), BX											
  vehicle_controller.go:87	0xe8f771		488d0d79352e00		LEAQ go:string.*+42985(SB), CX										
  vehicle_controller.go:87	0xe8f778		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  vehicle_controller.go:87	0xe8f77d		0f1f00			NOPL 0(AX)												
  vehicle_controller.go:87	0xe8f780		e89be85dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:87	0xe8f785		488d1594311b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_controller.go:87	0xe8f78c		488910			MOVQ DX, 0(AX)												
  vehicle_controller.go:87	0xe8f78f		833dbae36c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:87	0xe8f796		7410			JE 0xe8f7a8												
  vehicle_controller.go:87	0xe8f798		488b7008		MOVQ 0x8(AX), SI											
  vehicle_controller.go:87	0xe8f79c		0f1f4000		NOPL 0(AX)												
  vehicle_controller.go:87	0xe8f7a0		e87b8c5eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:87	0xe8f7a5		498933			MOVQ SI, 0(R11)												
  vehicle_controller.go:87	0xe8f7a8		488d15f197fd01		LEAQ CAS-Backend/biz/controller..stmp_346(SB), DX							
  vehicle_controller.go:87	0xe8f7af		48895008		MOVQ DX, 0x8(AX)											
  vehicle_controller.go:87	0xe8f7b3		488d05c6502100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:87	0xe8f7ba		488b9c24e0010000	MOVQ 0x1e0(SP), BX											
  vehicle_controller.go:87	0xe8f7c2		488d0df8ad2d00		LEAQ go:string.*+8377(SB), CX										
  vehicle_controller.go:87	0xe8f7c9		bf05000000		MOVL $__subsystem__+2(SB), DI										
  vehicle_controller.go:87	0xe8f7ce		e84de85dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:87	0xe8f7d3		488d1546311b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_controller.go:87	0xe8f7da		488910			MOVQ DX, 0(AX)												
  vehicle_controller.go:87	0xe8f7dd		833d6ce36c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:87	0xe8f7e4		740c			JE 0xe8f7f2												
  vehicle_controller.go:87	0xe8f7e6		488b4808		MOVQ 0x8(AX), CX											
  vehicle_controller.go:87	0xe8f7ea		e8318c5eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:87	0xe8f7ef		49890b			MOVQ CX, 0(R11)												
  vehicle_controller.go:87	0xe8f7f2		488d0d3792fd01		LEAQ CAS-Backend/biz/controller..stmp_96(SB), CX							
  vehicle_controller.go:87	0xe8f7f9		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8f7fd		488d0d7c502100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8f804		48898c24e8010000	MOVQ CX, 0x1e8(SP)											
  context.go:1005		0xe8f80c		488b8c24e0010000	MOVQ 0x1e0(SP), CX											
  context.go:1005		0xe8f814		48898c24f0010000	MOVQ CX, 0x1f0(SP)											
  context.go:1005		0xe8f81c		488d05bdc62300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8f823		488d9c24e8010000	LEAQ 0x1e8(SP), BX											
  context.go:1005		0xe8f82b		e870f857ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8f830		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8f835		488d0df4f9fd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8f83c		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8f83f		488b842408020000	MOVQ 0x208(SP), AX											
  context.go:1005		0xe8f847		e814fff6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_controller.go:93	0xe8f84c		4881c4f8010000		ADDQ $.file+427(SB), SP											
  vehicle_controller.go:93	0xe8f853		5d			POPQ BP													
  vehicle_controller.go:93	0xe8f854		c3			RET													
  vehicle_controller.go:111	0xe8f855		498d3c12		LEAQ 0(R10)(DX*1), DI											
  vehicle_controller.go:111	0xe8f859		488d7f90		LEAQ -0x70(DI), DI											
  vehicle_controller.go:111	0xe8f85d		4c8b9c2448010000	MOVQ 0x148(SP), R11											
  vehicle_controller.go:111	0xe8f865		4d895c1288		MOVQ R11, -0x78(R10)(DX*1)										
  vehicle_controller.go:111	0xe8f86a		488db42450010000	LEAQ 0x150(SP), SI											
  vehicle_controller.go:111	0xe8f872		660f1f840000000000	NOPW 0(AX)(AX*1)											
  vehicle_controller.go:111	0xe8f87b		0f1f440000		NOPL 0(AX)(AX*1)											
  vehicle_controller.go:111	0xe8f880		48896c24f0		MOVQ BP, -0x10(SP)											
  vehicle_controller.go:111	0xe8f885		488d6c24f0		LEAQ -0x10(SP), BP											
  vehicle_controller.go:111	0xe8f88a		e8af955eff		CALL 0x478e3e												
  vehicle_controller.go:111	0xe8f88f		488b6d00		MOVQ 0(BP), BP												
  vehicle_controller.go:99	0xe8f893		4883c178		ADDQ $.file+43(SB), CX											
  vehicle_controller.go:99	0xe8f897		498d79ff		LEAQ -0x1(R9), DI											
  vehicle_controller.go:77	0xe8f89b		4c89c6			MOVQ R8, SI												
  vehicle_controller.go:77	0xe8f89e		6690			NOPW													
  vehicle_controller.go:99	0xe8f8a0		4885ff			TESTQ DI, DI												
  vehicle_controller.go:99	0xe8f8a3		0f8e27020000		JLE 0xe8fad0												
  vehicle_controller.go:99	0xe8f8a9		4889bc24a8000000	MOVQ DI, 0xa8(SP)											
  vehicle_controller.go:99	0xe8f8b1		48898c24d8010000	MOVQ CX, 0x1d8(SP)											
  vehicle_controller.go:99	0xe8f8b9		4c8b01			MOVQ 0(CX), R8												
  vehicle_controller.go:99	0xe8f8bc		4c898424b8000000	MOVQ R8, 0xb8(SP)											
  vehicle_controller.go:99	0xe8f8c4		4c8d4108		LEAQ 0x8(CX), R8											
  vehicle_controller.go:99	0xe8f8c8		4989f9			MOVQ DI, R9												
  vehicle_controller.go:99	0xe8f8cb		488dbc24c0000000	LEAQ 0xc0(SP), DI											
  vehicle_controller.go:77	0xe8f8d3		4989f2			MOVQ SI, R10												
  vehicle_controller.go:99	0xe8f8d6		4c89c6			MOVQ R8, SI												
  vehicle_controller.go:99	0xe8f8d9		0f1f8000000000		NOPL 0(AX)												
  vehicle_controller.go:99	0xe8f8e0		48896c24f0		MOVQ BP, -0x10(SP)											
  vehicle_controller.go:99	0xe8f8e5		488d6c24f0		LEAQ -0x10(SP), BP											
  vehicle_controller.go:99	0xe8f8ea		e84f955eff		CALL 0x478e3e												
  vehicle_controller.go:99	0xe8f8ef		488b6d00		MOVQ 0(BP), BP												
  vehicle_controller.go:108	0xe8f8f3		440f11bc2448010000	MOVUPS X15, 0x148(SP)											
  vehicle_controller.go:108	0xe8f8fc		488dbc2450010000	LEAQ 0x150(SP), DI											
  vehicle_controller.go:108	0xe8f904		488d7ff0		LEAQ -0x10(DI), DI											
  vehicle_controller.go:108	0xe8f908		48896c24f0		MOVQ BP, -0x10(SP)											
  vehicle_controller.go:108	0xe8f90d		488d6c24f0		LEAQ -0x10(SP), BP											
  vehicle_controller.go:108	0xe8f912		e8cf915eff		CALL 0x478ae6												
  vehicle_controller.go:108	0xe8f917		488b6d00		MOVQ 0(BP), BP												
  vehicle_controller.go:101	0xe8f91b		4c8b8424b8000000	MOVQ 0xb8(SP), R8											
  vehicle_controller.go:101	0xe8f923		4c8b9c24c0000000	MOVQ 0xc0(SP), R11											
  vehicle_controller.go:101	0xe8f92b		4c89842448010000	MOVQ R8, 0x148(SP)											
  vehicle_controller.go:101	0xe8f933		4c899c2450010000	MOVQ R11, 0x150(SP)											
  vehicle_controller.go:102	0xe8f93b		4c8b8424c8000000	MOVQ 0xc8(SP), R8											
  vehicle_controller.go:102	0xe8f943		4c8b9c24d0000000	MOVQ 0xd0(SP), R11											
  vehicle_controller.go:102	0xe8f94b		4c89842458010000	MOVQ R8, 0x158(SP)											
  vehicle_controller.go:102	0xe8f953		4c899c2460010000	MOVQ R11, 0x160(SP)											
  vehicle_controller.go:103	0xe8f95b		4c8b8424d8000000	MOVQ 0xd8(SP), R8											
  vehicle_controller.go:103	0xe8f963		4c89842468010000	MOVQ R8, 0x168(SP)											
  vehicle_controller.go:104	0xe8f96b		4c8b8424e0000000	MOVQ 0xe0(SP), R8											
  vehicle_controller.go:104	0xe8f973		4c8b9c24e8000000	MOVQ 0xe8(SP), R11											
  vehicle_controller.go:104	0xe8f97b		4c89842470010000	MOVQ R8, 0x170(SP)											
  vehicle_controller.go:104	0xe8f983		4c899c2478010000	MOVQ R11, 0x178(SP)											
  vehicle_controller.go:105	0xe8f98b		4c8b8424f0000000	MOVQ 0xf0(SP), R8											
  vehicle_controller.go:105	0xe8f993		4c8b9c24f8000000	MOVQ 0xf8(SP), R11											
  vehicle_controller.go:105	0xe8f99b		4c89842480010000	MOVQ R8, 0x180(SP)											
  vehicle_controller.go:105	0xe8f9a3		4c899c2488010000	MOVQ R11, 0x188(SP)											
  vehicle_controller.go:106	0xe8f9ab		4c8b842400010000	MOVQ 0x100(SP), R8											
  vehicle_controller.go:106	0xe8f9b3		4c8b9c2408010000	MOVQ 0x108(SP), R11											
  vehicle_controller.go:106	0xe8f9bb		4c89842490010000	MOVQ R8, 0x190(SP)											
  vehicle_controller.go:106	0xe8f9c3		4c899c2498010000	MOVQ R11, 0x198(SP)											
  vehicle_controller.go:107	0xe8f9cb		4c8b842410010000	MOVQ 0x110(SP), R8											
  vehicle_controller.go:107	0xe8f9d3		4c8b9c2418010000	MOVQ 0x118(SP), R11											
  vehicle_controller.go:107	0xe8f9db		4c898424a0010000	MOVQ R8, 0x1a0(SP)											
  vehicle_controller.go:107	0xe8f9e3		4c899c24a8010000	MOVQ R11, 0x1a8(SP)											
  vehicle_controller.go:108	0xe8f9eb		4c8b842420010000	MOVQ 0x120(SP), R8											
  vehicle_controller.go:108	0xe8f9f3		4c8b9c2428010000	MOVQ 0x128(SP), R11											
  vehicle_controller.go:108	0xe8f9fb		4c898424b0010000	MOVQ R8, 0x1b0(SP)											
  vehicle_controller.go:108	0xe8fa03		4c899c24b8010000	MOVQ R11, 0x1b8(SP)											
  vehicle_controller.go:111	0xe8fa0b		4d8d4201		LEAQ 0x1(R10), R8											
  vehicle_controller.go:111	0xe8fa0f		4c39c0			CMPQ AX, R8												
  vehicle_controller.go:111	0xe8fa12		733b			JAE 0xe8fa4f												
  vehicle_controller.go:111	0xe8fa14		4c89c3			MOVQ R8, BX												
  vehicle_controller.go:111	0xe8fa17		4889c1			MOVQ AX, CX												
  vehicle_controller.go:111	0xe8fa1a		bf01000000		MOVL $__minor_os_version__(SB), DI									
  vehicle_controller.go:111	0xe8fa1f		488d351aec2800		LEAQ runtime.types+1283648(SB), SI									
  vehicle_controller.go:111	0xe8fa26		4889d0			MOVQ DX, AX												
  vehicle_controller.go:111	0xe8fa29		e812225eff		CALL runtime.growslice(SB)										
  vehicle_controller.go:99	0xe8fa2e		4c8b8c24a8000000	MOVQ 0xa8(SP), R9											
  vehicle_controller.go:111	0xe8fa36		4889c2			MOVQ AX, DX												
  vehicle_controller.go:111	0xe8fa39		4989d8			MOVQ BX, R8												
  vehicle_controller.go:111	0xe8fa3c		4889c8			MOVQ CX, AX												
  vehicle_controller.go:99	0xe8fa3f		488b8c24d8010000	MOVQ 0x1d8(SP), CX											
  vehicle_controller.go:81	0xe8fa47		488b9c2490000000	MOVQ 0x90(SP), BX											
  vehicle_controller.go:111	0xe8fa4f		4d6bd078		IMULQ $.file+43(SB), R8, R10										
  vehicle_controller.go:111	0xe8fa53		4d8d1c12		LEAQ 0(R10)(DX*1), R11											
  vehicle_controller.go:111	0xe8fa57		4d8d5b88		LEAQ -0x78(R11), R11											
  vehicle_controller.go:111	0xe8fa5b		833deee06c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:111	0xe8fa62		0f84edfdffff		JE 0xe8f855												
  vehicle_controller.go:111	0xe8fa68		4889942440010000	MOVQ DX, 0x140(SP)											
  vehicle_controller.go:111	0xe8fa70		4c89442468		MOVQ R8, 0x68(SP)											
  vehicle_controller.go:111	0xe8fa75		4889442470		MOVQ AX, 0x70(SP)											
  vehicle_controller.go:111	0xe8fa7a		4c899424a0000000	MOVQ R10, 0xa0(SP)											
  vehicle_controller.go:111	0xe8fa82		488d05b7eb2800		LEAQ runtime.types+1283648(SB), AX									
  vehicle_controller.go:111	0xe8fa89		4c89db			MOVQ R11, BX												
  vehicle_controller.go:111	0xe8fa8c		488d8c2448010000	LEAQ 0x148(SP), CX											
  vehicle_controller.go:111	0xe8fa94		e8875458ff		CALL runtime.wbMove(SB)											
  vehicle_controller.go:77	0xe8fa99		488b442470		MOVQ 0x70(SP), AX											
  vehicle_controller.go:99	0xe8fa9e		488b8c24d8010000	MOVQ 0x1d8(SP), CX											
  vehicle_controller.go:111	0xe8faa6		488b942440010000	MOVQ 0x140(SP), DX											
  vehicle_controller.go:81	0xe8faae		488b9c2490000000	MOVQ 0x90(SP), BX											
  vehicle_controller.go:77	0xe8fab6		4c8b442468		MOVQ 0x68(SP), R8											
  vehicle_controller.go:99	0xe8fabb		4c8b8c24a8000000	MOVQ 0xa8(SP), R9											
  vehicle_controller.go:111	0xe8fac3		4c8b9424a0000000	MOVQ 0xa0(SP), R10											
  vehicle_controller.go:111	0xe8facb		e985fdffff		JMP 0xe8f855												
  vehicle_controller.go:77	0xe8fad0		48899424b0000000	MOVQ DX, 0xb0(SP)											
  vehicle_controller.go:77	0xe8fad8		4889742440		MOVQ SI, 0x40(SP)											
  vehicle_controller.go:77	0xe8fadd		4889442448		MOVQ AX, 0x48(SP)											
  vehicle_controller.go:78	0xe8fae2		e8f9b45dff		CALL runtime.makemap_small(SB)										
  vehicle_controller.go:78	0xe8fae7		48898424e0010000	MOVQ AX, 0x1e0(SP)											
  vehicle_controller.go:78	0xe8faef		4889c3			MOVQ AX, BX												
  vehicle_controller.go:78	0xe8faf2		488d0d96f92d00		LEAQ go:string.*+28551(SB), CX										
  vehicle_controller.go:78	0xe8faf9		bf06000000		MOVL $__major_os_version__(SB), DI									
  vehicle_controller.go:78	0xe8fafe		488d057b4d2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:78	0xe8fb05		e816e55dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:78	0xe8fb0a		488d0d0f321b00		LEAQ runtime.types+384288(SB), CX									
  vehicle_controller.go:78	0xe8fb11		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:78	0xe8fb14		833d35e06c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:78	0xe8fb1b		740c			JE 0xe8fb29												
  vehicle_controller.go:78	0xe8fb1d		488b5008		MOVQ 0x8(AX), DX											
  vehicle_controller.go:78	0xe8fb21		e8fa885eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:78	0xe8fb26		498913			MOVQ DX, 0(R11)												
  vehicle_controller.go:78	0xe8fb29		488d15f8ab0e00		LEAQ runtime.staticuint64s+8(SB), DX									
  vehicle_controller.go:78	0xe8fb30		48895008		MOVQ DX, 0x8(AX)											
  vehicle_controller.go:78	0xe8fb34		488d05454d2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:78	0xe8fb3b		488b9c24e0010000	MOVQ 0x1e0(SP), BX											
  vehicle_controller.go:78	0xe8fb43		488d0da7312e00		LEAQ go:string.*+42985(SB), CX										
  vehicle_controller.go:78	0xe8fb4a		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  vehicle_controller.go:78	0xe8fb4f		e8cce45dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:78	0xe8fb54		488d15c52d1b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_controller.go:78	0xe8fb5b		488910			MOVQ DX, 0(AX)												
  vehicle_controller.go:78	0xe8fb5e		833debdf6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:78	0xe8fb65		740c			JE 0xe8fb73												
  vehicle_controller.go:78	0xe8fb67		488b4808		MOVQ 0x8(AX), CX											
  vehicle_controller.go:78	0xe8fb6b		e8b0885eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:78	0xe8fb70		49890b			MOVQ CX, 0(R11)												
  vehicle_controller.go:78	0xe8fb73		488d0d1694fd01		LEAQ CAS-Backend/biz/controller..stmp_344(SB), CX							
  vehicle_controller.go:78	0xe8fb7a		48894808		MOVQ CX, 0x8(AX)											
  vehicle_controller.go:81	0xe8fb7e		488b842490000000	MOVQ 0x90(SP), AX											
  vehicle_controller.go:81	0xe8fb86		e815a55dff		CALL runtime.convT64(SB)										
  vehicle_controller.go:81	0xe8fb8b		48898424d8010000	MOVQ AX, 0x1d8(SP)											
  vehicle_controller.go:78	0xe8fb93		488b9c24e0010000	MOVQ 0x1e0(SP), BX											
  vehicle_controller.go:78	0xe8fb9b		488d0dbeab2d00		LEAQ go:string.*+8792(SB), CX										
  vehicle_controller.go:78	0xe8fba2		bf05000000		MOVL $__subsystem__+2(SB), DI										
  vehicle_controller.go:78	0xe8fba7		488d05d24c2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:78	0xe8fbae		e86de45dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:78	0xe8fbb3		488d0d262f1b00		LEAQ runtime.types+383712(SB), CX									
  vehicle_controller.go:78	0xe8fbba		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:78	0xe8fbbd		833d8cdf6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:78	0xe8fbc4		750a			JNE 0xe8fbd0												
  vehicle_controller.go:78	0xe8fbc6		488b8c24d8010000	MOVQ 0x1d8(SP), CX											
  vehicle_controller.go:78	0xe8fbce		eb18			JMP 0xe8fbe8												
  vehicle_controller.go:78	0xe8fbd0		e86b885eff		CALL runtime.gcWriteBarrier2(SB)									
  vehicle_controller.go:78	0xe8fbd5		488b8c24d8010000	MOVQ 0x1d8(SP), CX											
  vehicle_controller.go:78	0xe8fbdd		49890b			MOVQ CX, 0(R11)												
  vehicle_controller.go:78	0xe8fbe0		488b5008		MOVQ 0x8(AX), DX											
  vehicle_controller.go:78	0xe8fbe4		49895308		MOVQ DX, 0x8(R11)											
  vehicle_controller.go:78	0xe8fbe8		48894808		MOVQ CX, 0x8(AX)											
  vehicle_controller.go:82	0xe8fbec		488b842480000000	MOVQ 0x80(SP), AX											
  vehicle_controller.go:82	0xe8fbf4		e8a7a45dff		CALL runtime.convT64(SB)										
  vehicle_controller.go:82	0xe8fbf9		48898424d8010000	MOVQ AX, 0x1d8(SP)											
  vehicle_controller.go:78	0xe8fc01		488b9c24e0010000	MOVQ 0x1e0(SP), BX											
  vehicle_controller.go:78	0xe8fc09		488d0d809a2d00		LEAQ go:string.*+4488(SB), CX										
  vehicle_controller.go:78	0xe8fc10		bf04000000		MOVL $__subsystem__+1(SB), DI										
  vehicle_controller.go:78	0xe8fc15		488d05644c2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:78	0xe8fc1c		0f1f4000		NOPL 0(AX)												
  vehicle_controller.go:78	0xe8fc20		e8fbe35dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:78	0xe8fc25		488d0d342f1b00		LEAQ runtime.types+383840(SB), CX									
  vehicle_controller.go:78	0xe8fc2c		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:78	0xe8fc2f		833d1adf6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:78	0xe8fc36		750a			JNE 0xe8fc42												
  vehicle_controller.go:78	0xe8fc38		488b9424d8010000	MOVQ 0x1d8(SP), DX											
  vehicle_controller.go:78	0xe8fc40		eb18			JMP 0xe8fc5a												
  vehicle_controller.go:78	0xe8fc42		e8f9875eff		CALL runtime.gcWriteBarrier2(SB)									
  vehicle_controller.go:78	0xe8fc47		488b9424d8010000	MOVQ 0x1d8(SP), DX											
  vehicle_controller.go:78	0xe8fc4f		498913			MOVQ DX, 0(R11)												
  vehicle_controller.go:78	0xe8fc52		488b5808		MOVQ 0x8(AX), BX											
  vehicle_controller.go:78	0xe8fc56		49895b08		MOVQ BX, 0x8(R11)											
  vehicle_controller.go:78	0xe8fc5a		48895008		MOVQ DX, 0x8(AX)											
  vehicle_controller.go:83	0xe8fc5e		488b442450		MOVQ 0x50(SP), AX											
  vehicle_controller.go:83	0xe8fc63		e838a45dff		CALL runtime.convT64(SB)										
  vehicle_controller.go:83	0xe8fc68		48898424d8010000	MOVQ AX, 0x1d8(SP)											
  vehicle_controller.go:78	0xe8fc70		488b9c24e0010000	MOVQ 0x1e0(SP), BX											
  vehicle_controller.go:78	0xe8fc78		488d0d159a2d00		LEAQ go:string.*+4492(SB), CX										
  vehicle_controller.go:78	0xe8fc7f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  vehicle_controller.go:78	0xe8fc84		488d05f54b2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:78	0xe8fc8b		e890e35dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:78	0xe8fc90		488d0dc92e1b00		LEAQ runtime.types+383840(SB), CX									
  vehicle_controller.go:78	0xe8fc97		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:78	0xe8fc9a		833dafde6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:78	0xe8fca1		750a			JNE 0xe8fcad												
  vehicle_controller.go:78	0xe8fca3		488b9424d8010000	MOVQ 0x1d8(SP), DX											
  vehicle_controller.go:78	0xe8fcab		eb18			JMP 0xe8fcc5												
  vehicle_controller.go:78	0xe8fcad		e88e875eff		CALL runtime.gcWriteBarrier2(SB)									
  vehicle_controller.go:78	0xe8fcb2		488b9424d8010000	MOVQ 0x1d8(SP), DX											
  vehicle_controller.go:78	0xe8fcba		498913			MOVQ DX, 0(R11)												
  vehicle_controller.go:78	0xe8fcbd		488b7008		MOVQ 0x8(AX), SI											
  vehicle_controller.go:78	0xe8fcc1		49897308		MOVQ SI, 0x8(R11)											
  vehicle_controller.go:78	0xe8fcc5		48895008		MOVQ DX, 0x8(AX)											
  vehicle_controller.go:84	0xe8fcc9		488b8424b0000000	MOVQ 0xb0(SP), AX											
  vehicle_controller.go:84	0xe8fcd1		488b5c2440		MOVQ 0x40(SP), BX											
  vehicle_controller.go:84	0xe8fcd6		488b4c2448		MOVQ 0x48(SP), CX											
  vehicle_controller.go:84	0xe8fcdb		0f1f440000		NOPL 0(AX)(AX*1)											
  vehicle_controller.go:84	0xe8fce0		e8dba45dff		CALL runtime.convTslice(SB)										
  vehicle_controller.go:84	0xe8fce5		48898424d8010000	MOVQ AX, 0x1d8(SP)											
  vehicle_controller.go:78	0xe8fced		488b9c24e0010000	MOVQ 0x1e0(SP), BX											
  vehicle_controller.go:78	0xe8fcf5		488d0d9c992d00		LEAQ go:string.*+4496(SB), CX										
  vehicle_controller.go:78	0xe8fcfc		bf04000000		MOVL $__subsystem__+1(SB), DI										
  vehicle_controller.go:78	0xe8fd01		488d05784b2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:78	0xe8fd08		e813e35dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:78	0xe8fd0d		488d152c7c1a00		LEAQ runtime.types+338240(SB), DX									
  vehicle_controller.go:78	0xe8fd14		488910			MOVQ DX, 0(AX)												
  vehicle_controller.go:78	0xe8fd17		833d32de6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:78	0xe8fd1e		6690			NOPW													
  vehicle_controller.go:78	0xe8fd20		750a			JNE 0xe8fd2c												
  vehicle_controller.go:78	0xe8fd22		488b8c24d8010000	MOVQ 0x1d8(SP), CX											
  vehicle_controller.go:78	0xe8fd2a		eb18			JMP 0xe8fd44												
  vehicle_controller.go:78	0xe8fd2c		e80f875eff		CALL runtime.gcWriteBarrier2(SB)									
  vehicle_controller.go:78	0xe8fd31		488b8c24d8010000	MOVQ 0x1d8(SP), CX											
  vehicle_controller.go:78	0xe8fd39		49890b			MOVQ CX, 0(R11)												
  vehicle_controller.go:78	0xe8fd3c		488b5008		MOVQ 0x8(AX), DX											
  vehicle_controller.go:78	0xe8fd40		49895308		MOVQ DX, 0x8(R11)											
  vehicle_controller.go:78	0xe8fd44		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8fd48		488d0d314b2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8fd4f		48898c24e8010000	MOVQ CX, 0x1e8(SP)											
  context.go:1005		0xe8fd57		488b8c24e0010000	MOVQ 0x1e0(SP), CX											
  context.go:1005		0xe8fd5f		48898c24f0010000	MOVQ CX, 0x1f0(SP)											
  context.go:1005		0xe8fd67		488d0572c12300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8fd6e		488d9c24e8010000	LEAQ 0x1e8(SP), BX											
  context.go:1005		0xe8fd76		e825f357ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8fd7b		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8fd80		488d0da9f4fd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8fd87		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8fd8a		488b842408020000	MOVQ 0x208(SP), AX											
  context.go:1005		0xe8fd92		e8c9f9f6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_controller.go:93	0xe8fd97		e9b0faffff		JMP 0xe8f84c												
  vehicle_controller.go:62	0xe8fd9c		4889442408		MOVQ AX, 0x8(SP)											
  vehicle_controller.go:62	0xe8fda1		e83a675eff		CALL runtime.morestack_noctxt.abi0(SB)									
  vehicle_controller.go:62	0xe8fda6		488b442408		MOVQ 0x8(SP), AX											
  vehicle_controller.go:62	0xe8fdab		e9d0f7ffff		JMP CAS-Backend/biz/controller.GetAllVehHandler(SB)							
  :-1				0xe8fdb0		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdb1		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdb2		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdb3		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdb4		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdb5		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdb6		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdb7		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdb8		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdb9		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdba		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdbb		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdbc		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdbd		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdbe		cc			INT $__subsystem__(SB)											
  :-1				0xe8fdbf		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.DeleteVehHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_controller.go
  vehicle_controller.go:117	0xe8fdc0		493b6610		CMPQ SP, 0x10(R14)											
  vehicle_controller.go:117	0xe8fdc4		0f86b0010000		JBE 0xe8ff7a												
  vehicle_controller.go:117	0xe8fdca		55			PUSHQ BP												
  vehicle_controller.go:117	0xe8fdcb		4889e5			MOVQ SP, BP												
  vehicle_controller.go:117	0xe8fdce		4883ec60		SUBQ $.file+19(SB), SP											
  vehicle_controller.go:128	0xe8fdd2		4889442470		MOVQ AX, 0x70(SP)											
  vehicle_controller.go:118	0xe8fdd7		488d1dbc872d00		LEAQ go:string.*+146(SB), BX										
  vehicle_controller.go:118	0xe8fdde		b902000000		MOVL $__minor_os_version__+1(SB), CX									
  vehicle_controller.go:118	0xe8fde3		e8d8c1f6ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  vehicle_controller.go:118	0xe8fde8		4889442430		MOVQ AX, 0x30(SP)											
  vehicle_controller.go:118	0xe8fded		48895c2428		MOVQ BX, 0x28(SP)											
  vehicle_controller.go:119	0xe8fdf2		440f117c2440		MOVUPS X15, 0x40(SP)											
  vehicle_controller.go:119	0xe8fdf8		e823a35dff		CALL runtime.convTstring(SB)										
  vehicle_controller.go:119	0xe8fdfd		488d151c2b1b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_controller.go:119	0xe8fe04		4889542440		MOVQ DX, 0x40(SP)											
  vehicle_controller.go:119	0xe8fe09		4889442448		MOVQ AX, 0x48(SP)											
  print.go:314			0xe8fe0e		488b1d6b226802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8fe15		488d05c4bcfd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8fe1c		488d4c2440		LEAQ 0x40(SP), CX											
  print.go:314			0xe8fe21		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8fe26		4889fe			MOVQ DI, SI												
  print.go:314			0xe8fe29		e832fa68ff		CALL fmt.Fprintln(SB)											
  vehicle_controller.go:127	0xe8fe2e		488b442430		MOVQ 0x30(SP), AX											
  vehicle_controller.go:127	0xe8fe33		488b5c2428		MOVQ 0x28(SP), BX											
  vehicle_controller.go:127	0xe8fe38		e863a0fbff		CALL CAS-Backend/biz/service.DelVeh(SB)									
  vehicle_controller.go:127	0xe8fe3d		0f1f00			NOPL 0(AX)												
  vehicle_controller.go:127	0xe8fe40		84c0			TESTL AL, AL												
  vehicle_controller.go:128	0xe8fe42		0f849d000000		JE 0xe8fee5												
  vehicle_controller.go:129	0xe8fe48		e893b15dff		CALL runtime.makemap_small(SB)										
  vehicle_controller.go:129	0xe8fe4d		4889442438		MOVQ AX, 0x38(SP)											
  vehicle_controller.go:129	0xe8fe52		4889c3			MOVQ AX, BX												
  vehicle_controller.go:129	0xe8fe55		488d0d30982d00		LEAQ go:string.*+4484(SB), CX										
  vehicle_controller.go:129	0xe8fe5c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  vehicle_controller.go:129	0xe8fe61		488d05184a2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:129	0xe8fe68		e8b3e15dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:129	0xe8fe6d		488d0dec2c1b00		LEAQ runtime.types+383840(SB), CX									
  vehicle_controller.go:129	0xe8fe74		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:129	0xe8fe77		833dd2dc6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:129	0xe8fe7e		6690			NOPW													
  vehicle_controller.go:129	0xe8fe80		740c			JE 0xe8fe8e												
  vehicle_controller.go:129	0xe8fe82		488b4808		MOVQ 0x8(AX), CX											
  vehicle_controller.go:129	0xe8fe86		e895855eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:129	0xe8fe8b		49890b			MOVQ CX, 0(R11)												
  vehicle_controller.go:129	0xe8fe8e		488d0d9b79fd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), CX								
  vehicle_controller.go:129	0xe8fe95		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8fe99		488d0de0492100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8fea0		48894c2450		MOVQ CX, 0x50(SP)											
  context.go:1005		0xe8fea5		488b4c2438		MOVQ 0x38(SP), CX											
  context.go:1005		0xe8feaa		48894c2458		MOVQ CX, 0x58(SP)											
  context.go:1005		0xe8feaf		488d052ac02300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8feb6		488d5c2450		LEAQ 0x50(SP), BX											
  context.go:1005		0xe8febb		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:1005		0xe8fec0		e8dbf157ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8fec5		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8feca		488d0d5ff3fd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8fed1		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8fed4		488b442470		MOVQ 0x70(SP), AX											
  context.go:1005		0xe8fed9		e882f8f6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  context.go:1005		0xe8fede		6690			NOPW													
  vehicle_controller.go:137	0xe8fee0		e98f000000		JMP 0xe8ff74												
  vehicle_controller.go:133	0xe8fee5		e8f6b05dff		CALL runtime.makemap_small(SB)										
  vehicle_controller.go:133	0xe8feea		4889442438		MOVQ AX, 0x38(SP)											
  vehicle_controller.go:133	0xe8feef		4889c3			MOVQ AX, BX												
  vehicle_controller.go:133	0xe8fef2		488d0d93972d00		LEAQ go:string.*+4484(SB), CX										
  vehicle_controller.go:133	0xe8fef9		bf04000000		MOVL $__subsystem__+1(SB), DI										
  vehicle_controller.go:133	0xe8fefe		488d057b492100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:133	0xe8ff05		e816e15dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:133	0xe8ff0a		488d0d4f2c1b00		LEAQ runtime.types+383840(SB), CX									
  vehicle_controller.go:133	0xe8ff11		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:133	0xe8ff14		833d35dc6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:133	0xe8ff1b		740c			JE 0xe8ff29												
  vehicle_controller.go:133	0xe8ff1d		488b4808		MOVQ 0x8(AX), CX											
  vehicle_controller.go:133	0xe8ff21		e8fa845eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:133	0xe8ff26		49890b			MOVQ CX, 0(R11)												
  vehicle_controller.go:133	0xe8ff29		488d0d904bfd01		LEAQ runtime.gcbits.*(SB), CX										
  vehicle_controller.go:133	0xe8ff30		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8ff34		488d0d45492100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8ff3b		48894c2450		MOVQ CX, 0x50(SP)											
  context.go:1005		0xe8ff40		488b4c2438		MOVQ 0x38(SP), CX											
  context.go:1005		0xe8ff45		48894c2458		MOVQ CX, 0x58(SP)											
  context.go:1005		0xe8ff4a		488d058fbf2300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8ff51		488d5c2450		LEAQ 0x50(SP), BX											
  context.go:1005		0xe8ff56		e845f157ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8ff5b		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8ff60		488d0dc9f2fd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8ff67		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8ff6a		488b442470		MOVQ 0x70(SP), AX											
  context.go:1005		0xe8ff6f		e8ecf7f6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_controller.go:137	0xe8ff74		4883c460		ADDQ $.file+19(SB), SP											
  vehicle_controller.go:137	0xe8ff78		5d			POPQ BP													
  vehicle_controller.go:137	0xe8ff79		c3			RET													
  vehicle_controller.go:117	0xe8ff7a		4889442408		MOVQ AX, 0x8(SP)											
  vehicle_controller.go:117	0xe8ff7f		90			NOPL													
  vehicle_controller.go:117	0xe8ff80		e85b655eff		CALL runtime.morestack_noctxt.abi0(SB)									
  vehicle_controller.go:117	0xe8ff85		488b442408		MOVQ 0x8(SP), AX											
  vehicle_controller.go:117	0xe8ff8a		e931feffff		JMP CAS-Backend/biz/controller.DeleteVehHandler(SB)							
  :-1				0xe8ff8f		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff90		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff91		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff92		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff93		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff94		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff95		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff96		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff97		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff98		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff99		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff9a		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff9b		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff9c		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff9d		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff9e		cc			INT $__subsystem__(SB)											
  :-1				0xe8ff9f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.UpdateVehHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_controller.go
  vehicle_controller.go:139	0xe8ffa0		4c8da42430ffffff	LEAQ 0xffffff30(SP), R12										
  vehicle_controller.go:139	0xe8ffa8		4d3b6610		CMPQ R12, 0x10(R14)											
  vehicle_controller.go:139	0xe8ffac		0f86b5040000		JBE 0xe90467												
  vehicle_controller.go:139	0xe8ffb2		55			PUSHQ BP												
  vehicle_controller.go:139	0xe8ffb3		4889e5			MOVQ SP, BP												
  vehicle_controller.go:139	0xe8ffb6		4881ec48010000		SUBQ $.file+251(SB), SP											
  context.go:712		0xe8ffbd		4889842458010000	MOVQ AX, 0x158(SP)											
  vehicle_controller.go:140	0xe8ffc5		488d0574e62800		LEAQ runtime.types+1283648(SB), AX									
  vehicle_controller.go:140	0xe8ffcc		e8cf1758ff		CALL runtime.newobject(SB)										
  vehicle_controller.go:140	0xe8ffd1		4889842440010000	MOVQ AX, 0x140(SP)											
  context.go:712		0xe8ffd9		488b0d00781200		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe8ffe0		488b1501781200		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe8ffe7		4885c9			TESTQ CX, CX												
  context.go:712		0xe8ffea		7419			JE 0xe90005												
  context.go:712		0xe8ffec		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe8fff0		488b3519b51200		MOVQ CAS-Backend/biz/controller..typeAssert.43(SB), SI							
  context.go:712		0xe8fff7		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe8fffa		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe8fffe		6690			NOPW													
  context.go:712		0xe90000		e909040000		JMP 0xe9040e												
  context.go:752		0xe90005		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe90009		4c8b842458010000	MOVQ 0x158(SP), R8											
  context.go:752		0xe90011		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe90015		488d0dc4661900		LEAQ runtime.types+268000(SB), CX									
  context.go:752		0xe9001c		4889c7			MOVQ AX, DI												
  context.go:752		0xe9001f		4889d0			MOVQ DX, AX												
  context.go:752		0xe90022		ffd6			CALL SI													
  vehicle_controller.go:142	0xe90024		4885c0			TESTQ AX, AX												
  vehicle_controller.go:142	0xe90027		0f8568030000		JNE 0xe90395												
  vehicle_controller.go:148	0xe9002d		440f11bc2410010000	MOVUPS X15, 0x110(SP)											
  vehicle_controller.go:148	0xe90036		488d0503e62800		LEAQ runtime.types+1283648(SB), AX									
  vehicle_controller.go:148	0xe9003d		488b9c2440010000	MOVQ 0x140(SP), BX											
  vehicle_controller.go:148	0xe90045		e856f057ff		CALL runtime.convT(SB)											
  vehicle_controller.go:148	0xe9004a		488d0defe52800		LEAQ runtime.types+1283648(SB), CX									
  vehicle_controller.go:148	0xe90051		48898c2410010000	MOVQ CX, 0x110(SP)											
  vehicle_controller.go:148	0xe90059		4889842418010000	MOVQ AX, 0x118(SP)											
  print.go:314			0xe90061		488b1d18206802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe90068		488d0571bafd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe9006f		488d8c2410010000	LEAQ 0x110(SP), CX											
  print.go:314			0xe90077		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe9007c		4889fe			MOVQ DI, SI												
  print.go:314			0xe9007f		90			NOPL													
  print.go:314			0xe90080		e8dbf768ff		CALL fmt.Fprintln(SB)											
  vehicle_controller.go:150	0xe90085		440f11bc2488000000	MOVUPS X15, 0x88(SP)											
  vehicle_controller.go:150	0xe9008e		488dbc2490000000	LEAQ 0x90(SP), DI											
  vehicle_controller.go:150	0xe90096		488d7ff0		LEAQ -0x10(DI), DI											
  vehicle_controller.go:150	0xe9009a		660f1f440000		NOPW 0(AX)(AX*1)											
  vehicle_controller.go:150	0xe900a0		48896c24f0		MOVQ BP, -0x10(SP)											
  vehicle_controller.go:150	0xe900a5		488d6c24f0		LEAQ -0x10(SP), BP											
  vehicle_controller.go:150	0xe900aa		e8378a5eff		CALL 0x478ae6												
  vehicle_controller.go:150	0xe900af		488b6d00		MOVQ 0(BP), BP												
  vehicle_controller.go:151	0xe900b3		488b8c2440010000	MOVQ 0x140(SP), CX											
  vehicle_controller.go:151	0xe900bb		488b11			MOVQ 0(CX), DX												
  vehicle_controller.go:151	0xe900be		488b7108		MOVQ 0x8(CX), SI											
  vehicle_controller.go:151	0xe900c2		4889942488000000	MOVQ DX, 0x88(SP)											
  vehicle_controller.go:151	0xe900ca		4889b42490000000	MOVQ SI, 0x90(SP)											
  vehicle_controller.go:152	0xe900d2		488b5110		MOVQ 0x10(CX), DX											
  vehicle_controller.go:152	0xe900d6		488b7118		MOVQ 0x18(CX), SI											
  vehicle_controller.go:152	0xe900da		4889942498000000	MOVQ DX, 0x98(SP)											
  vehicle_controller.go:152	0xe900e2		4889b424a0000000	MOVQ SI, 0xa0(SP)											
  vehicle_controller.go:153	0xe900ea		488b5128		MOVQ 0x28(CX), DX											
  vehicle_controller.go:153	0xe900ee		488b7130		MOVQ 0x30(CX), SI											
  vehicle_controller.go:153	0xe900f2		48899424b0000000	MOVQ DX, 0xb0(SP)											
  vehicle_controller.go:153	0xe900fa		4889b424b8000000	MOVQ SI, 0xb8(SP)											
  vehicle_controller.go:154	0xe90102		488b5138		MOVQ 0x38(CX), DX											
  vehicle_controller.go:154	0xe90106		488b7140		MOVQ 0x40(CX), SI											
  vehicle_controller.go:154	0xe9010a		48899424c0000000	MOVQ DX, 0xc0(SP)											
  vehicle_controller.go:154	0xe90112		4889b424c8000000	MOVQ SI, 0xc8(SP)											
  vehicle_controller.go:155	0xe9011a		488b5148		MOVQ 0x48(CX), DX											
  vehicle_controller.go:155	0xe9011e		488b7150		MOVQ 0x50(CX), SI											
  vehicle_controller.go:155	0xe90122		48899424d0000000	MOVQ DX, 0xd0(SP)											
  vehicle_controller.go:155	0xe9012a		4889b424d8000000	MOVQ SI, 0xd8(SP)											
  vehicle_controller.go:156	0xe90132		488b5158		MOVQ 0x58(CX), DX											
  vehicle_controller.go:156	0xe90136		488b7160		MOVQ 0x60(CX), SI											
  vehicle_controller.go:156	0xe9013a		48899424e0000000	MOVQ DX, 0xe0(SP)											
  vehicle_controller.go:156	0xe90142		4889b424e8000000	MOVQ SI, 0xe8(SP)											
  vehicle_controller.go:157	0xe9014a		488b5168		MOVQ 0x68(CX), DX											
  vehicle_controller.go:157	0xe9014e		488b7170		MOVQ 0x70(CX), SI											
  vehicle_controller.go:157	0xe90152		48899424f0000000	MOVQ DX, 0xf0(SP)											
  vehicle_controller.go:157	0xe9015a		4889b424f8000000	MOVQ SI, 0xf8(SP)											
  vehicle_controller.go:158	0xe90162		488b4920		MOVQ 0x20(CX), CX											
  vehicle_controller.go:158	0xe90166		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  vehicle_controller.go:160	0xe9016e		488b8c2488000000	MOVQ 0x88(SP), CX											
  vehicle_controller.go:160	0xe90176		48890c24		MOVQ CX, 0(SP)												
  vehicle_controller.go:160	0xe9017a		488d7c2408		LEAQ 0x8(SP), DI											
  vehicle_controller.go:160	0xe9017f		488db42490000000	LEAQ 0x90(SP), SI											
  vehicle_controller.go:160	0xe90187		48896c24f0		MOVQ BP, -0x10(SP)											
  vehicle_controller.go:160	0xe9018c		488d6c24f0		LEAQ -0x10(SP), BP											
  vehicle_controller.go:160	0xe90191		e8a88c5eff		CALL 0x478e3e												
  vehicle_controller.go:160	0xe90196		488b6d00		MOVQ 0(BP), BP												
  vehicle_controller.go:160	0xe9019a		e8219efbff		CALL CAS-Backend/biz/service.UpdateVeh(SB)								
  vehicle_controller.go:160	0xe9019f		90			NOPL													
  vehicle_controller.go:160	0xe901a0		84c0			TESTL AL, AL												
  vehicle_controller.go:163	0xe901a2		0f84f0000000		JE 0xe90298												
  vehicle_controller.go:164	0xe901a8		e833ae5dff		CALL runtime.makemap_small(SB)										
  vehicle_controller.go:164	0xe901ad		4889842408010000	MOVQ AX, 0x108(SP)											
  vehicle_controller.go:164	0xe901b5		4889c3			MOVQ AX, BX												
  vehicle_controller.go:164	0xe901b8		488d0dcd942d00		LEAQ go:string.*+4484(SB), CX										
  vehicle_controller.go:164	0xe901bf		bf04000000		MOVL $__subsystem__+1(SB), DI										
  vehicle_controller.go:164	0xe901c4		488d05b5462100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:164	0xe901cb		e850de5dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:164	0xe901d0		488d0d89291b00		LEAQ runtime.types+383840(SB), CX									
  vehicle_controller.go:164	0xe901d7		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:164	0xe901da		833d6fd96c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:164	0xe901e1		740c			JE 0xe901ef												
  vehicle_controller.go:164	0xe901e3		488b5008		MOVQ 0x8(AX), DX											
  vehicle_controller.go:164	0xe901e7		e834825eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:164	0xe901ec		498913			MOVQ DX, 0(R11)												
  vehicle_controller.go:164	0xe901ef		488d153a76fd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  vehicle_controller.go:164	0xe901f6		48895008		MOVQ DX, 0x8(AX)											
  vehicle_controller.go:164	0xe901fa		488d057f462100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:164	0xe90201		488b9c2408010000	MOVQ 0x108(SP), BX											
  vehicle_controller.go:164	0xe90209		488d0d44882d00		LEAQ go:string.*+1356(SB), CX										
  vehicle_controller.go:164	0xe90210		bf03000000		MOVL $__subsystem__(SB), DI										
  vehicle_controller.go:164	0xe90215		e806de5dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:164	0xe9021a		488d15ff261b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_controller.go:164	0xe90221		488910			MOVQ DX, 0(AX)												
  vehicle_controller.go:164	0xe90224		833d25d96c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:164	0xe9022b		740c			JE 0xe90239												
  vehicle_controller.go:164	0xe9022d		488b4808		MOVQ 0x8(AX), CX											
  vehicle_controller.go:164	0xe90231		e8ea815eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:164	0xe90236		49890b			MOVQ CX, 0(R11)												
  vehicle_controller.go:164	0xe90239		488d0d708dfd01		LEAQ CAS-Backend/biz/controller..stmp_354(SB), CX							
  vehicle_controller.go:164	0xe90240		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe90244		488d0d35462100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe9024b		48898c2430010000	MOVQ CX, 0x130(SP)											
  context.go:1005		0xe90253		488b8c2408010000	MOVQ 0x108(SP), CX											
  context.go:1005		0xe9025b		48898c2438010000	MOVQ CX, 0x138(SP)											
  context.go:1005		0xe90263		488d0576bc2300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe9026a		488d9c2430010000	LEAQ 0x130(SP), BX											
  context.go:1005		0xe90272		e829ee57ff		CALL runtime.convT(SB)											
  context.go:1005		0xe90277		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe9027c		488d0dadeffd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe90283		4889c7			MOVQ AX, DI												
  context.go:1005		0xe90286		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe9028e		e8cdf4f6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_controller.go:174	0xe90293		e9f4000000		JMP 0xe9038c												
  vehicle_controller.go:169	0xe90298		e843ad5dff		CALL runtime.makemap_small(SB)										
  vehicle_controller.go:169	0xe9029d		4889842408010000	MOVQ AX, 0x108(SP)											
  vehicle_controller.go:169	0xe902a5		4889c3			MOVQ AX, BX												
  vehicle_controller.go:169	0xe902a8		488d0ddd932d00		LEAQ go:string.*+4484(SB), CX										
  vehicle_controller.go:169	0xe902af		bf04000000		MOVL $__subsystem__+1(SB), DI										
  vehicle_controller.go:169	0xe902b4		488d05c5452100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:169	0xe902bb		0f1f440000		NOPL 0(AX)(AX*1)											
  vehicle_controller.go:169	0xe902c0		e85bdd5dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:169	0xe902c5		488d0d94281b00		LEAQ runtime.types+383840(SB), CX									
  vehicle_controller.go:169	0xe902cc		488908			MOVQ CX, 0(AX)												
  vehicle_controller.go:169	0xe902cf		833d7ad86c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:169	0xe902d6		7410			JE 0xe902e8												
  vehicle_controller.go:169	0xe902d8		488b5008		MOVQ 0x8(AX), DX											
  vehicle_controller.go:169	0xe902dc		0f1f4000		NOPL 0(AX)												
  vehicle_controller.go:169	0xe902e0		e83b815eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:169	0xe902e5		498913			MOVQ DX, 0(R11)												
  vehicle_controller.go:169	0xe902e8		488d15d147fd01		LEAQ runtime.gcbits.*(SB), DX										
  vehicle_controller.go:169	0xe902ef		48895008		MOVQ DX, 0x8(AX)											
  vehicle_controller.go:169	0xe902f3		488d0586452100		LEAQ runtime.types+784512(SB), AX									
  vehicle_controller.go:169	0xe902fa		488b9c2408010000	MOVQ 0x108(SP), BX											
  vehicle_controller.go:169	0xe90302		488d0d4b872d00		LEAQ go:string.*+1356(SB), CX										
  vehicle_controller.go:169	0xe90309		bf03000000		MOVL $__subsystem__(SB), DI										
  vehicle_controller.go:169	0xe9030e		e80ddd5dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_controller.go:169	0xe90313		488d1506261b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_controller.go:169	0xe9031a		488910			MOVQ DX, 0(AX)												
  vehicle_controller.go:169	0xe9031d		833d2cd86c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_controller.go:169	0xe90324		740c			JE 0xe90332												
  vehicle_controller.go:169	0xe90326		488b4808		MOVQ 0x8(AX), CX											
  vehicle_controller.go:169	0xe9032a		e8f1805eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_controller.go:169	0xe9032f		49890b			MOVQ CX, 0(R11)												
  vehicle_controller.go:169	0xe90332		488d0d878cfd01		LEAQ CAS-Backend/biz/controller..stmp_356(SB), CX							
  vehicle_controller.go:169	0xe90339		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe9033d		488d0d3c452100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe90344		48898c2430010000	MOVQ CX, 0x130(SP)											
  context.go:1005		0xe9034c		488b8c2408010000	MOVQ 0x108(SP), CX											
  context.go:1005		0xe90354		48898c2438010000	MOVQ CX, 0x138(SP)											
  context.go:1005		0xe9035c		488d057dbb2300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe90363		488d9c2430010000	LEAQ 0x130(SP), BX											
  context.go:1005		0xe9036b		e830ed57ff		CALL runtime.convT(SB)											
  context.go:1005		0xe90370		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe90375		488d0db4eefd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe9037c		4889c7			MOVQ AX, DI												
  context.go:1005		0xe9037f		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe90387		e8d4f3f6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_controller.go:174	0xe9038c		4881c448010000		ADDQ $.file+251(SB), SP											
  vehicle_controller.go:174	0xe90393		5d			POPQ BP													
  vehicle_controller.go:174	0xe90394		c3			RET													
  context.go:752		0xe90395		48899c2480000000	MOVQ BX, 0x80(SP)											
  context.go:752		0xe9039d		4889442478		MOVQ AX, 0x78(SP)											
  vehicle_controller.go:143	0xe903a2		488d1577251b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_controller.go:143	0xe903a9		4889942420010000	MOVQ DX, 0x120(SP)											
  vehicle_controller.go:143	0xe903b1		488d151884fd01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  vehicle_controller.go:143	0xe903b8		4889942428010000	MOVQ DX, 0x128(SP)											
  print.go:314			0xe903c0		488b1db91c6802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe903c7		488d0512b7fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe903ce		488d8c2420010000	LEAQ 0x120(SP), CX											
  print.go:314			0xe903d6		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe903db		4889fe			MOVQ DI, SI												
  print.go:314			0xe903de		6690			NOPW													
  print.go:314			0xe903e0		e87bf468ff		CALL fmt.Fprintln(SB)											
  vehicle_controller.go:144	0xe903e5		488b842458010000	MOVQ 0x158(SP), AX											
  vehicle_controller.go:144	0xe903ed		bb90010000		MOVL $.file+323(SB), BX											
  vehicle_controller.go:144	0xe903f2		488b4c2478		MOVQ 0x78(SP), CX											
  vehicle_controller.go:144	0xe903f7		488bbc2480000000	MOVQ 0x80(SP), DI											
  vehicle_controller.go:144	0xe903ff		90			NOPL													
  vehicle_controller.go:144	0xe90400		e89bacf6ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  vehicle_controller.go:145	0xe90405		4881c448010000		ADDQ $.file+251(SB), SP											
  vehicle_controller.go:145	0xe9040c		5d			POPQ BP													
  vehicle_controller.go:145	0xe9040d		c3			RET													
  context.go:712		0xe9040e		4d89ca			MOVQ R9, R10												
  context.go:712		0xe90411		4d21c1			ANDQ R8, R9												
  context.go:712		0xe90414		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe90418		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe9041d		0f1f00			NOPL 0(AX)												
  context.go:712		0xe90420		4939db			CMPQ R11, BX												
  context.go:712		0xe90423		7438			JE 0xe9045d												
  context.go:712		0xe90425		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe90429		4d85db			TESTQ R11, R11												
  context.go:712		0xe9042c		75e0			JNE 0xe9040e												
  context.go:712		0xe9042e		4889942400010000	MOVQ DX, 0x100(SP)											
  context.go:712		0xe90436		488d05d3b01200		LEAQ CAS-Backend/biz/controller..typeAssert.43(SB), AX							
  context.go:712		0xe9043d		0f1f00			NOPL 0(AX)												
  context.go:712		0xe90440		e89bee57ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe90445		488b942400010000	MOVQ 0x100(SP), DX											
  context.go:712		0xe9044d		4889c1			MOVQ AX, CX												
  context.go:752		0xe90450		488b842440010000	MOVQ 0x140(SP), AX											
  context.go:712		0xe90458		e9a8fbffff		JMP 0xe90005												
  context.go:712		0xe9045d		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe90462		e99efbffff		JMP 0xe90005												
  vehicle_controller.go:139	0xe90467		4889442408		MOVQ AX, 0x8(SP)											
  vehicle_controller.go:139	0xe9046c		e86f605eff		CALL runtime.morestack_noctxt.abi0(SB)									
  vehicle_controller.go:139	0xe90471		488b442408		MOVQ 0x8(SP), AX											
  vehicle_controller.go:139	0xe90476		e925fbffff		JMP CAS-Backend/biz/controller.UpdateVehHandler(SB)							
  :-1				0xe9047b		cc			INT $__subsystem__(SB)											
  :-1				0xe9047c		cc			INT $__subsystem__(SB)											
  :-1				0xe9047d		cc			INT $__subsystem__(SB)											
  :-1				0xe9047e		cc			INT $__subsystem__(SB)											
  :-1				0xe9047f		cc			INT $__subsystem__(SB)											

