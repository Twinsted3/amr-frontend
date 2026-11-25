TEXT CAS-Backend/biz/controller.NewTaskHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:56		0xe88880		4c8da42430feffff	LEAQ 0xfffffe30(SP), R12										
  task_controller.go:56		0xe88888		4d3b6610		CMPQ R12, 0x10(R14)											
  task_controller.go:56		0xe8888c		0f86b5050000		JBE 0xe88e47												
  task_controller.go:56		0xe88892		55			PUSHQ BP												
  task_controller.go:56		0xe88893		4889e5			MOVQ SP, BP												
  task_controller.go:56		0xe88896		4881ec48020000		SUBQ $__file_alignment__+72(SB), SP									
  context.go:712		0xe8889d		4889842458020000	MOVQ AX, 0x258(SP)											
  task_controller.go:57		0xe888a5		488d05b43e2b00		LEAQ runtime.types+1406816(SB), AX									
  task_controller.go:57		0xe888ac		e8ef8e58ff		CALL runtime.newobject(SB)										
  task_controller.go:57		0xe888b1		4889842440020000	MOVQ AX, 0x240(SP)											
  context.go:712		0xe888b9		488b0d20ef1200		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe888c0		488b1521ef1200		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe888c7		4885c9			TESTQ CX, CX												
  context.go:712		0xe888ca		7419			JE 0xe888e5												
  context.go:712		0xe888cc		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe888d0		488b35192b1300		MOVQ CAS-Backend/biz/controller..typeAssert.34(SB), SI							
  context.go:712		0xe888d7		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe888da		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe888de		6690			NOPW													
  context.go:712		0xe888e0		e90c050000		JMP 0xe88df1												
  context.go:752		0xe888e5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe888e9		4c8b842458020000	MOVQ 0x258(SP), R8											
  context.go:752		0xe888f1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe888f5		488d0da4dd1900		LEAQ runtime.types+267936(SB), CX									
  context.go:752		0xe888fc		4889c7			MOVQ AX, DI												
  context.go:752		0xe888ff		4889d0			MOVQ DX, AX												
  context.go:752		0xe88902		ffd6			CALL SI													
  task_controller.go:59		0xe88904		4885c0			TESTQ AX, AX												
  task_controller.go:59		0xe88907		0f8568040000		JNE 0xe88d75												
  task_controller.go:65		0xe8890d		440f11bc2410020000	MOVUPS X15, 0x210(SP)											
  task_controller.go:65		0xe88916		488d05433e2b00		LEAQ runtime.types+1406816(SB), AX									
  task_controller.go:65		0xe8891d		488b9c2440020000	MOVQ 0x240(SP), BX											
  task_controller.go:65		0xe88925		e8766758ff		CALL runtime.convT(SB)											
  task_controller.go:65		0xe8892a		488d0d2f3e2b00		LEAQ runtime.types+1406816(SB), CX									
  task_controller.go:65		0xe88931		48898c2410020000	MOVQ CX, 0x210(SP)											
  task_controller.go:65		0xe88939		4889842418020000	MOVQ AX, 0x218(SP)											
  print.go:314			0xe88941		488b1d38976802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe88948		488d059131fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8894f		488d8c2410020000	LEAQ 0x210(SP), CX											
  print.go:314			0xe88957		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8895c		4889fe			MOVQ DI, SI												
  print.go:314			0xe8895f		90			NOPL													
  print.go:314			0xe88960		e8fb6e69ff		CALL fmt.Fprintln(SB)											
  task_controller.go:67		0xe88965		488dbc2400010000	LEAQ 0x100(SP), DI											
  task_controller.go:67		0xe8896d		488d7ff0		LEAQ -0x10(DI), DI											
  task_controller.go:67		0xe88971		660f1f840000000000	NOPW 0(AX)(AX*1)											
  task_controller.go:67		0xe8897a		660f1f440000		NOPW 0(AX)(AX*1)											
  task_controller.go:67		0xe88980		48896c24f0		MOVQ BP, -0x10(SP)											
  task_controller.go:67		0xe88985		488d6c24f0		LEAQ -0x10(SP), BP											
  task_controller.go:67		0xe8898a		e829015fff		CALL 0x478ab8												
  task_controller.go:67		0xe8898f		488b6d00		MOVQ 0(BP), BP												
  task_controller.go:68		0xe88993		488b8c2440020000	MOVQ 0x240(SP), CX											
  task_controller.go:68		0xe8899b		488b11			MOVQ 0(CX), DX												
  task_controller.go:68		0xe8899e		4889942400010000	MOVQ DX, 0x100(SP)											
  task_controller.go:69		0xe889a6		488b5108		MOVQ 0x8(CX), DX											
  task_controller.go:69		0xe889aa		488b7110		MOVQ 0x10(CX), SI											
  task_controller.go:69		0xe889ae		4889942408010000	MOVQ DX, 0x108(SP)											
  task_controller.go:69		0xe889b6		4889b42410010000	MOVQ SI, 0x110(SP)											
  task_controller.go:70		0xe889be		488b5118		MOVQ 0x18(CX), DX											
  task_controller.go:70		0xe889c2		4889942418010000	MOVQ DX, 0x118(SP)											
  task_controller.go:71		0xe889ca		488b5120		MOVQ 0x20(CX), DX											
  task_controller.go:71		0xe889ce		488b7128		MOVQ 0x28(CX), SI											
  task_controller.go:71		0xe889d2		4889942420010000	MOVQ DX, 0x120(SP)											
  task_controller.go:71		0xe889da		4889b42428010000	MOVQ SI, 0x128(SP)											
  task_controller.go:72		0xe889e2		488b5130		MOVQ 0x30(CX), DX											
  task_controller.go:72		0xe889e6		4889942430010000	MOVQ DX, 0x130(SP)											
  task_controller.go:73		0xe889ee		488b5138		MOVQ 0x38(CX), DX											
  task_controller.go:73		0xe889f2		488b7140		MOVQ 0x40(CX), SI											
  task_controller.go:73		0xe889f6		4889942438010000	MOVQ DX, 0x138(SP)											
  task_controller.go:73		0xe889fe		4889b42440010000	MOVQ SI, 0x140(SP)											
  task_controller.go:74		0xe88a06		488b5148		MOVQ 0x48(CX), DX											
  task_controller.go:74		0xe88a0a		488b7150		MOVQ 0x50(CX), SI											
  task_controller.go:74		0xe88a0e		488b7958		MOVQ 0x58(CX), DI											
  task_controller.go:74		0xe88a12		4889942448010000	MOVQ DX, 0x148(SP)											
  task_controller.go:74		0xe88a1a		4889b42450010000	MOVQ SI, 0x150(SP)											
  task_controller.go:74		0xe88a22		4889bc2458010000	MOVQ DI, 0x158(SP)											
  task_controller.go:76		0xe88a2a		0fb65178		MOVZX 0x78(CX), DX											
  task_controller.go:76		0xe88a2e		88942478010000		MOVB DL, 0x178(SP)											
  task_controller.go:77		0xe88a35		488b9180000000		MOVQ 0x80(CX), DX											
  task_controller.go:77		0xe88a3c		488bb188000000		MOVQ 0x88(CX), SI											
  task_controller.go:77		0xe88a43		4889942480010000	MOVQ DX, 0x180(SP)											
  task_controller.go:77		0xe88a4b		4889b42488010000	MOVQ SI, 0x188(SP)											
  task_controller.go:78		0xe88a53		488b9190000000		MOVQ 0x90(CX), DX											
  task_controller.go:78		0xe88a5a		488bb198000000		MOVQ 0x98(CX), SI											
  task_controller.go:78		0xe88a61		4889942490010000	MOVQ DX, 0x190(SP)											
  task_controller.go:78		0xe88a69		4889b42498010000	MOVQ SI, 0x198(SP)											
  task_controller.go:79		0xe88a71		488b91a0000000		MOVQ 0xa0(CX), DX											
  task_controller.go:79		0xe88a78		488bb1a8000000		MOVQ 0xa8(CX), SI											
  task_controller.go:79		0xe88a7f		48899424a0010000	MOVQ DX, 0x1a0(SP)											
  task_controller.go:79		0xe88a87		4889b424a8010000	MOVQ SI, 0x1a8(SP)											
  task_controller.go:80		0xe88a8f		488b91b0000000		MOVQ 0xb0(CX), DX											
  task_controller.go:80		0xe88a96		488bb1b8000000		MOVQ 0xb8(CX), SI											
  task_controller.go:80		0xe88a9d		48899424b0010000	MOVQ DX, 0x1b0(SP)											
  task_controller.go:80		0xe88aa5		4889b424b8010000	MOVQ SI, 0x1b8(SP)											
  task_controller.go:82		0xe88aad		488b91d8000000		MOVQ 0xd8(CX), DX											
  task_controller.go:82		0xe88ab4		488bb1e0000000		MOVQ 0xe0(CX), SI											
  task_controller.go:82		0xe88abb		48899424c0010000	MOVQ DX, 0x1c0(SP)											
  task_controller.go:82		0xe88ac3		4889b424c8010000	MOVQ SI, 0x1c8(SP)											
  task_controller.go:83		0xe88acb		488b91c0000000		MOVQ 0xc0(CX), DX											
  task_controller.go:83		0xe88ad2		488bb1c8000000		MOVQ 0xc8(CX), SI											
  task_controller.go:83		0xe88ad9		48899424d0010000	MOVQ DX, 0x1d0(SP)											
  task_controller.go:83		0xe88ae1		4889b424d8010000	MOVQ SI, 0x1d8(SP)											
  task_controller.go:84		0xe88ae9		0fb691d0000000		MOVZX 0xd0(CX), DX											
  task_controller.go:84		0xe88af0		889424e0010000		MOVB DL, 0x1e0(SP)											
  task_controller.go:85		0xe88af7		f20f1081f8000000	MOVSD_XMM 0xf8(CX), X0											
  task_controller.go:85		0xe88aff		f20f118424e8010000	MOVSD_XMM X0, 0x1e8(SP)											
  task_controller.go:87		0xe88b08		440f11bc2400020000	MOVUPS X15, 0x200(SP)											
  task_controller.go:87		0xe88b11		488b81b0000000		MOVQ 0xb0(CX), AX											
  task_controller.go:87		0xe88b18		488b99b8000000		MOVQ 0xb8(CX), BX											
  task_controller.go:87		0xe88b1f		90			NOPL													
  task_controller.go:87		0xe88b20		e8fb155eff		CALL runtime.convTstring(SB)										
  task_controller.go:87		0xe88b25		488d0df49d1b00		LEAQ runtime.types+383264(SB), CX									
  task_controller.go:87		0xe88b2c		48898c2400020000	MOVQ CX, 0x200(SP)											
  task_controller.go:87		0xe88b34		4889842408020000	MOVQ AX, 0x208(SP)											
  print.go:314			0xe88b3c		488b1d3d956802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe88b43		488d05962ffe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe88b4a		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe88b4f		4889fe			MOVQ DI, SI												
  print.go:314			0xe88b52		488d8c2400020000	LEAQ 0x200(SP), CX											
  print.go:314			0xe88b5a		e8016d69ff		CALL fmt.Fprintln(SB)											
  task_controller.go:89		0xe88b5f		4889e7			MOVQ SP, DI												
  task_controller.go:89		0xe88b62		488db42400010000	LEAQ 0x100(SP), SI											
  task_controller.go:89		0xe88b6a		48896c24f0		MOVQ BP, -0x10(SP)											
  task_controller.go:89		0xe88b6f		488d6c24f0		LEAQ -0x10(SP), BP											
  task_controller.go:89		0xe88b74		e855025fff		CALL 0x478dce												
  task_controller.go:89		0xe88b79		488b6d00		MOVQ 0(BP), BP												
  task_controller.go:89		0xe88b7d		0f1f00			NOPL 0(AX)												
  task_controller.go:89		0xe88b80		e81b06fcff		CALL CAS-Backend/biz/service.AddTask(SB)								
  task_controller.go:89		0xe88b85		84c0			TESTL AL, AL												
  task_controller.go:92		0xe88b87		0f84f0000000		JE 0xe88c7d												
  task_controller.go:93		0xe88b8d		e84e245eff		CALL runtime.makemap_small(SB)										
  task_controller.go:93		0xe88b92		48898424f8010000	MOVQ AX, 0x1f8(SP)											
  task_controller.go:93		0xe88b9a		4889c3			MOVQ AX, BX												
  task_controller.go:93		0xe88b9d		488d0de80a2e00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:93		0xe88ba4		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:93		0xe88ba9		488d05d0bc2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:93		0xe88bb0		e86b545eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:93		0xe88bb5		488d0da49f1b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:93		0xe88bbc		488908			MOVQ CX, 0(AX)												
  task_controller.go:93		0xe88bbf		833d8a4f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:93		0xe88bc6		740c			JE 0xe88bd4												
  task_controller.go:93		0xe88bc8		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:93		0xe88bcc		e84ff85eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:93		0xe88bd1		498913			MOVQ DX, 0(R11)												
  task_controller.go:93		0xe88bd4		488d1555ecfd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_controller.go:93		0xe88bdb		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:93		0xe88bdf		488d059abc2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:93		0xe88be6		488b9c24f8010000	MOVQ 0x1f8(SP), BX											
  task_controller.go:93		0xe88bee		488d0d5ffe2d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:93		0xe88bf5		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:93		0xe88bfa		e821545eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:93		0xe88bff		488d151a9d1b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:93		0xe88c06		488910			MOVQ DX, 0(AX)												
  task_controller.go:93		0xe88c09		833d404f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:93		0xe88c10		740c			JE 0xe88c1e												
  task_controller.go:93		0xe88c12		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:93		0xe88c16		e805f85eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:93		0xe88c1b		49890b			MOVQ CX, 0(R11)												
  task_controller.go:93		0xe88c1e		488d0dbb00fe01		LEAQ CAS-Backend/biz/controller..stmp_233(SB), CX							
  task_controller.go:93		0xe88c25		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe88c29		488d0d50bc2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe88c30		48898c2430020000	MOVQ CX, 0x230(SP)											
  context.go:1005		0xe88c38		488b8c24f8010000	MOVQ 0x1f8(SP), CX											
  context.go:1005		0xe88c40		48898c2438020000	MOVQ CX, 0x238(SP)											
  context.go:1005		0xe88c48		488d0591322400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe88c4f		488d9c2430020000	LEAQ 0x230(SP), BX											
  context.go:1005		0xe88c57		e8446458ff		CALL runtime.convT(SB)											
  context.go:1005		0xe88c5c		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe88c61		488d0dc865fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe88c68		4889c7			MOVQ AX, DI												
  context.go:1005		0xe88c6b		488b842458020000	MOVQ 0x258(SP), AX											
  context.go:1005		0xe88c73		e8e86af7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:103	0xe88c78		e9ef000000		JMP 0xe88d6c												
  task_controller.go:98		0xe88c7d		0f1f00			NOPL 0(AX)												
  task_controller.go:98		0xe88c80		e85b235eff		CALL runtime.makemap_small(SB)										
  task_controller.go:98		0xe88c85		48898424f8010000	MOVQ AX, 0x1f8(SP)											
  task_controller.go:98		0xe88c8d		4889c3			MOVQ AX, BX												
  task_controller.go:98		0xe88c90		488d0df5092e00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:98		0xe88c97		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:98		0xe88c9c		488d05ddbb2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:98		0xe88ca3		e878535eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:98		0xe88ca8		488d0db19e1b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:98		0xe88caf		488908			MOVQ CX, 0(AX)												
  task_controller.go:98		0xe88cb2		833d974e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:98		0xe88cb9		740d			JE 0xe88cc8												
  task_controller.go:98		0xe88cbb		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:98		0xe88cbf		90			NOPL													
  task_controller.go:98		0xe88cc0		e85bf75eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:98		0xe88cc5		498913			MOVQ DX, 0(R11)												
  task_controller.go:98		0xe88cc8		488d15f1bdfd01		LEAQ runtime.gcbits.*(SB), DX										
  task_controller.go:98		0xe88ccf		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:98		0xe88cd3		488d05a6bb2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:98		0xe88cda		488b9c24f8010000	MOVQ 0x1f8(SP), BX											
  task_controller.go:98		0xe88ce2		488d0d6bfd2d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:98		0xe88ce9		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:98		0xe88cee		e82d535eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:98		0xe88cf3		488d15269c1b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:98		0xe88cfa		488910			MOVQ DX, 0(AX)												
  task_controller.go:98		0xe88cfd		833d4c4e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:98		0xe88d04		740c			JE 0xe88d12												
  task_controller.go:98		0xe88d06		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:98		0xe88d0a		e811f75eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:98		0xe88d0f		49890b			MOVQ CX, 0(R11)												
  task_controller.go:98		0xe88d12		488d0dd7fffd01		LEAQ CAS-Backend/biz/controller..stmp_235(SB), CX							
  task_controller.go:98		0xe88d19		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe88d1d		488d0d5cbb2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe88d24		48898c2430020000	MOVQ CX, 0x230(SP)											
  context.go:1005		0xe88d2c		488b8c24f8010000	MOVQ 0x1f8(SP), CX											
  context.go:1005		0xe88d34		48898c2438020000	MOVQ CX, 0x238(SP)											
  context.go:1005		0xe88d3c		488d059d312400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe88d43		488d9c2430020000	LEAQ 0x230(SP), BX											
  context.go:1005		0xe88d4b		e8506358ff		CALL runtime.convT(SB)											
  context.go:1005		0xe88d50		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe88d55		488d0dd464fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe88d5c		4889c7			MOVQ AX, DI												
  context.go:1005		0xe88d5f		488b842458020000	MOVQ 0x258(SP), AX											
  context.go:1005		0xe88d67		e8f469f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:103	0xe88d6c		4881c448020000		ADDQ $__file_alignment__+72(SB), SP									
  task_controller.go:103	0xe88d73		5d			POPQ BP													
  task_controller.go:103	0xe88d74		c3			RET													
  context.go:752		0xe88d75		48898424f0000000	MOVQ AX, 0xf0(SP)											
  context.go:752		0xe88d7d		48899c24f8000000	MOVQ BX, 0xf8(SP)											
  task_controller.go:60		0xe88d85		488d15949b1b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:60		0xe88d8c		4889942420020000	MOVQ DX, 0x220(SP)											
  task_controller.go:60		0xe88d94		488d1535fafd01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  task_controller.go:60		0xe88d9b		4889942428020000	MOVQ DX, 0x228(SP)											
  print.go:314			0xe88da3		488b1dd6926802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe88daa		488d052f2dfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe88db1		488d8c2420020000	LEAQ 0x220(SP), CX											
  print.go:314			0xe88db9		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe88dbe		4889fe			MOVQ DI, SI												
  print.go:314			0xe88dc1		e89a6a69ff		CALL fmt.Fprintln(SB)											
  task_controller.go:61		0xe88dc6		488b842458020000	MOVQ 0x258(SP), AX											
  task_controller.go:61		0xe88dce		bb90010000		MOVL $.file+323(SB), BX											
  task_controller.go:61		0xe88dd3		488b8c24f0000000	MOVQ 0xf0(SP), CX											
  task_controller.go:61		0xe88ddb		488bbc24f8000000	MOVQ 0xf8(SP), DI											
  task_controller.go:61		0xe88de3		e8b822f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  task_controller.go:62		0xe88de8		4881c448020000		ADDQ $__file_alignment__+72(SB), SP									
  task_controller.go:62		0xe88def		5d			POPQ BP													
  task_controller.go:62		0xe88df0		c3			RET													
  context.go:712		0xe88df1		4d89ca			MOVQ R9, R10												
  context.go:712		0xe88df4		4d21c1			ANDQ R8, R9												
  context.go:712		0xe88df7		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe88dfb		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe88e00		4939db			CMPQ R11, BX												
  context.go:712		0xe88e03		7438			JE 0xe88e3d												
  context.go:712		0xe88e05		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe88e09		4d85db			TESTQ R11, R11												
  context.go:712		0xe88e0c		75e3			JNE 0xe88df1												
  context.go:712		0xe88e0e		48899424f0010000	MOVQ DX, 0x1f0(SP)											
  context.go:712		0xe88e16		488d05d3251300		LEAQ CAS-Backend/biz/controller..typeAssert.34(SB), AX							
  context.go:712		0xe88e1d		0f1f00			NOPL 0(AX)												
  context.go:712		0xe88e20		e8bb6458ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe88e25		488b9424f0010000	MOVQ 0x1f0(SP), DX											
  context.go:712		0xe88e2d		4889c1			MOVQ AX, CX												
  context.go:752		0xe88e30		488b842440020000	MOVQ 0x240(SP), AX											
  context.go:712		0xe88e38		e9a8faffff		JMP 0xe888e5												
  context.go:712		0xe88e3d		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe88e42		e99efaffff		JMP 0xe888e5												
  task_controller.go:56		0xe88e47		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:56		0xe88e4c		e88fd65eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:56		0xe88e51		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:56		0xe88e56		e925faffff		JMP CAS-Backend/biz/controller.NewTaskHandler(SB)							
  :-1				0xe88e5b		cc			INT $__subsystem__(SB)											
  :-1				0xe88e5c		cc			INT $__subsystem__(SB)											
  :-1				0xe88e5d		cc			INT $__subsystem__(SB)											
  :-1				0xe88e5e		cc			INT $__subsystem__(SB)											
  :-1				0xe88e5f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.DeleteTaskHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:105	0xe88e60		493b6610		CMPQ SP, 0x10(R14)											
  task_controller.go:105	0xe88e64		0f86fa010000		JBE 0xe89064												
  task_controller.go:105	0xe88e6a		55			PUSHQ BP												
  task_controller.go:105	0xe88e6b		4889e5			MOVQ SP, BP												
  task_controller.go:105	0xe88e6e		4883ec38		SUBQ $__major_os_version__+50(SB), SP									
  task_controller.go:110	0xe88e72		4889442448		MOVQ AX, 0x48(SP)											
  task_controller.go:106	0xe88e77		488d1d1cf72d00		LEAQ go:string.*+146(SB), BX										
  task_controller.go:106	0xe88e7e		b902000000		MOVL $__minor_os_version__+1(SB), CX									
  task_controller.go:106	0xe88e83		e83831f7ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_controller.go:108	0xe88e88		e8132466ff		CALL strconv.Atoi(SB)											
  task_controller.go:110	0xe88e8d		4885db			TESTQ BX, BX												
  task_controller.go:110	0xe88e90		0f8495000000		JE 0xe88f2b												
  task_controller.go:111	0xe88e96		e845215eff		CALL runtime.makemap_small(SB)										
  task_controller.go:111	0xe88e9b		4889442420		MOVQ AX, 0x20(SP)											
  task_controller.go:111	0xe88ea0		4889c3			MOVQ AX, BX												
  task_controller.go:111	0xe88ea3		488d0d17172e00		LEAQ go:string.*+8377(SB), CX										
  task_controller.go:111	0xe88eaa		bf05000000		MOVL $__subsystem__+2(SB), DI										
  task_controller.go:111	0xe88eaf		488d05cab92100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:111	0xe88eb6		e865515eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:111	0xe88ebb		488d0d5e9a1b00		LEAQ runtime.types+383264(SB), CX									
  task_controller.go:111	0xe88ec2		488908			MOVQ CX, 0(AX)												
  task_controller.go:111	0xe88ec5		833d844c6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:111	0xe88ecc		740c			JE 0xe88eda												
  task_controller.go:111	0xe88ece		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:111	0xe88ed2		e849f55eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:111	0xe88ed7		49890b			MOVQ CX, 0(R11)												
  task_controller.go:111	0xe88eda		488d0d1ffefd01		LEAQ CAS-Backend/biz/controller..stmp_236(SB), CX							
  task_controller.go:111	0xe88ee1		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe88ee5		488d0d94b92100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe88eec		48894c2428		MOVQ CX, 0x28(SP)											
  context.go:1005		0xe88ef1		488b4c2420		MOVQ 0x20(SP), CX											
  context.go:1005		0xe88ef6		48894c2430		MOVQ CX, 0x30(SP)											
  context.go:1005		0xe88efb		488d05de2f2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe88f02		488d5c2428		LEAQ 0x28(SP), BX											
  context.go:1005		0xe88f07		e8946158ff		CALL runtime.convT(SB)											
  context.go:1005		0xe88f0c		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005		0xe88f11		488d0d1863fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe88f18		4889c7			MOVQ AX, DI												
  context.go:1005		0xe88f1b		488b442448		MOVQ 0x48(SP), AX											
  context.go:1005		0xe88f20		e83b68f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:112	0xe88f25		4883c438		ADDQ $__major_os_version__+50(SB), SP									
  task_controller.go:112	0xe88f29		5d			POPQ BP													
  task_controller.go:112	0xe88f2a		c3			RET													
  task_controller.go:114	0xe88f2b		e85004fcff		CALL CAS-Backend/biz/service.DelTask(SB)								
  task_controller.go:114	0xe88f30		84c0			TESTL AL, AL												
  task_controller.go:115	0xe88f32		0f8494000000		JE 0xe88fcc												
  task_controller.go:116	0xe88f38		e8a3205eff		CALL runtime.makemap_small(SB)										
  task_controller.go:116	0xe88f3d		4889442420		MOVQ AX, 0x20(SP)											
  task_controller.go:116	0xe88f42		4889c3			MOVQ AX, BX												
  task_controller.go:116	0xe88f45		488d0d40072e00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:116	0xe88f4c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:116	0xe88f51		488d0528b92100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:116	0xe88f58		e8c3505eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:116	0xe88f5d		488d0dfc9b1b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:116	0xe88f64		488908			MOVQ CX, 0(AX)												
  task_controller.go:116	0xe88f67		833de24b6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:116	0xe88f6e		740c			JE 0xe88f7c												
  task_controller.go:116	0xe88f70		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:116	0xe88f74		e8a7f45eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:116	0xe88f79		49890b			MOVQ CX, 0(R11)												
  task_controller.go:116	0xe88f7c		488d0dade8fd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), CX								
  task_controller.go:116	0xe88f83		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe88f87		488d0df2b82100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe88f8e		48894c2428		MOVQ CX, 0x28(SP)											
  context.go:1005		0xe88f93		488b4c2420		MOVQ 0x20(SP), CX											
  context.go:1005		0xe88f98		48894c2430		MOVQ CX, 0x30(SP)											
  context.go:1005		0xe88f9d		488d053c2f2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe88fa4		488d5c2428		LEAQ 0x28(SP), BX											
  context.go:1005		0xe88fa9		e8f26058ff		CALL runtime.convT(SB)											
  context.go:1005		0xe88fae		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe88fb3		488d0d7662fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe88fba		4889c7			MOVQ AX, DI												
  context.go:1005		0xe88fbd		488b442448		MOVQ 0x48(SP), AX											
  context.go:1005		0xe88fc2		e89967f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:124	0xe88fc7		e992000000		JMP 0xe8905e												
  task_controller.go:120	0xe88fcc		e80f205eff		CALL runtime.makemap_small(SB)										
  task_controller.go:120	0xe88fd1		4889442420		MOVQ AX, 0x20(SP)											
  task_controller.go:120	0xe88fd6		4889c3			MOVQ AX, BX												
  task_controller.go:120	0xe88fd9		488d0dac062e00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:120	0xe88fe0		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:120	0xe88fe5		488d0594b82100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:120	0xe88fec		e82f505eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:120	0xe88ff1		488d0d689b1b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:120	0xe88ff8		488908			MOVQ CX, 0(AX)												
  task_controller.go:120	0xe88ffb		833d4e4b6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:120	0xe89002		740c			JE 0xe89010												
  task_controller.go:120	0xe89004		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:120	0xe89008		e813f45eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:120	0xe8900d		49890b			MOVQ CX, 0(R11)												
  task_controller.go:120	0xe89010		488d0da9bafd01		LEAQ runtime.gcbits.*(SB), CX										
  task_controller.go:120	0xe89017		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8901b		488d0d5eb82100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe89022		48894c2428		MOVQ CX, 0x28(SP)											
  context.go:1005		0xe89027		488b4c2420		MOVQ 0x20(SP), CX											
  context.go:1005		0xe8902c		48894c2430		MOVQ CX, 0x30(SP)											
  context.go:1005		0xe89031		488d05a82e2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe89038		488d5c2428		LEAQ 0x28(SP), BX											
  context.go:1005		0xe8903d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe89040		e85b6058ff		CALL runtime.convT(SB)											
  context.go:1005		0xe89045		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8904a		488d0ddf61fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe89051		4889c7			MOVQ AX, DI												
  context.go:1005		0xe89054		488b442448		MOVQ 0x48(SP), AX											
  context.go:1005		0xe89059		e80267f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:124	0xe8905e		4883c438		ADDQ $__major_os_version__+50(SB), SP									
  task_controller.go:124	0xe89062		5d			POPQ BP													
  task_controller.go:124	0xe89063		c3			RET													
  task_controller.go:105	0xe89064		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:105	0xe89069		e872d45eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:105	0xe8906e		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:105	0xe89073		e9e8fdffff		JMP CAS-Backend/biz/controller.DeleteTaskHandler(SB)							
  :-1				0xe89078		cc			INT $__subsystem__(SB)											
  :-1				0xe89079		cc			INT $__subsystem__(SB)											
  :-1				0xe8907a		cc			INT $__subsystem__(SB)											
  :-1				0xe8907b		cc			INT $__subsystem__(SB)											
  :-1				0xe8907c		cc			INT $__subsystem__(SB)											
  :-1				0xe8907d		cc			INT $__subsystem__(SB)											
  :-1				0xe8907e		cc			INT $__subsystem__(SB)											
  :-1				0xe8907f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.GuaqiTaskHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:126	0xe89080		493b6610		CMPQ SP, 0x10(R14)											
  task_controller.go:126	0xe89084		0f86ef010000		JBE 0xe89279												
  task_controller.go:126	0xe8908a		55			PUSHQ BP												
  task_controller.go:126	0xe8908b		4889e5			MOVQ SP, BP												
  task_controller.go:126	0xe8908e		4883ec38		SUBQ $__major_os_version__+50(SB), SP									
  task_controller.go:130	0xe89092		4889442448		MOVQ AX, 0x48(SP)											
  task_controller.go:128	0xe89097		488d1dfcf42d00		LEAQ go:string.*+146(SB), BX										
  task_controller.go:128	0xe8909e		b902000000		MOVL $__minor_os_version__+1(SB), CX									
  task_controller.go:128	0xe890a3		e8182ff7ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_controller.go:129	0xe890a8		e8f32166ff		CALL strconv.Atoi(SB)											
  task_controller.go:130	0xe890ad		e8eefefbff		CALL CAS-Backend/biz/service.GuaqiTask(SB)								
  task_controller.go:130	0xe890b2		84c0			TESTL AL, AL												
  task_controller.go:130	0xe890b4		0f84de000000		JE 0xe89198												
  task_controller.go:132	0xe890ba		e8211f5eff		CALL runtime.makemap_small(SB)										
  task_controller.go:132	0xe890bf		4889442420		MOVQ AX, 0x20(SP)											
  task_controller.go:132	0xe890c4		4889c3			MOVQ AX, BX												
  task_controller.go:132	0xe890c7		488d0dbe052e00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:132	0xe890ce		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:132	0xe890d3		488d05a6b72100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:132	0xe890da		e8414f5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:132	0xe890df		488d0d7a9a1b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:132	0xe890e6		488908			MOVQ CX, 0(AX)												
  task_controller.go:132	0xe890e9		833d604a6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:132	0xe890f0		740c			JE 0xe890fe												
  task_controller.go:132	0xe890f2		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:132	0xe890f6		e825f35eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:132	0xe890fb		498913			MOVQ DX, 0(R11)												
  task_controller.go:132	0xe890fe		488d152be7fd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_controller.go:132	0xe89105		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:132	0xe89109		488d0570b72100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:132	0xe89110		488b5c2420		MOVQ 0x20(SP), BX											
  task_controller.go:132	0xe89115		488d0d38f92d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:132	0xe8911c		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:132	0xe89121		e8fa4e5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:132	0xe89126		488d15f3971b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:132	0xe8912d		488910			MOVQ DX, 0(AX)												
  task_controller.go:132	0xe89130		833d194a6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:132	0xe89137		740f			JE 0xe89148												
  task_controller.go:132	0xe89139		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:132	0xe8913d		0f1f00			NOPL 0(AX)												
  task_controller.go:132	0xe89140		e8dbf25eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:132	0xe89145		49890b			MOVQ CX, 0(R11)												
  task_controller.go:132	0xe89148		488d0dc1fbfd01		LEAQ CAS-Backend/biz/controller..stmp_240(SB), CX							
  task_controller.go:132	0xe8914f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe89153		488d0d26b72100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8915a		48894c2428		MOVQ CX, 0x28(SP)											
  context.go:1005		0xe8915f		488b4c2420		MOVQ 0x20(SP), CX											
  context.go:1005		0xe89164		48894c2430		MOVQ CX, 0x30(SP)											
  context.go:1005		0xe89169		488d05702d2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe89170		488d5c2428		LEAQ 0x28(SP), BX											
  context.go:1005		0xe89175		e8265f58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8917a		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8917f		488d0daa60fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe89186		4889c7			MOVQ AX, DI												
  context.go:1005		0xe89189		488b442448		MOVQ 0x48(SP), AX											
  context.go:1005		0xe8918e		e8cd65f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:142	0xe89193		e9db000000		JMP 0xe89273												
  task_controller.go:137	0xe89198		e8431e5eff		CALL runtime.makemap_small(SB)										
  task_controller.go:137	0xe8919d		4889442420		MOVQ AX, 0x20(SP)											
  task_controller.go:137	0xe891a2		4889c3			MOVQ AX, BX												
  task_controller.go:137	0xe891a5		488d0de0042e00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:137	0xe891ac		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:137	0xe891b1		488d05c8b62100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:137	0xe891b8		e8634e5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:137	0xe891bd		488d0d9c991b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:137	0xe891c4		488908			MOVQ CX, 0(AX)												
  task_controller.go:137	0xe891c7		833d82496d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:137	0xe891ce		740c			JE 0xe891dc												
  task_controller.go:137	0xe891d0		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:137	0xe891d4		e847f25eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:137	0xe891d9		498913			MOVQ DX, 0(R11)												
  task_controller.go:137	0xe891dc		488d15ddb8fd01		LEAQ runtime.gcbits.*(SB), DX										
  task_controller.go:137	0xe891e3		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:137	0xe891e7		488d0592b62100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:137	0xe891ee		488b5c2420		MOVQ 0x20(SP), BX											
  task_controller.go:137	0xe891f3		488d0d5af82d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:137	0xe891fa		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:137	0xe891ff		90			NOPL													
  task_controller.go:137	0xe89200		e81b4e5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:137	0xe89205		488d1514971b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:137	0xe8920c		488910			MOVQ DX, 0(AX)												
  task_controller.go:137	0xe8920f		833d3a496d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:137	0xe89216		7410			JE 0xe89228												
  task_controller.go:137	0xe89218		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:137	0xe8921c		0f1f4000		NOPL 0(AX)												
  task_controller.go:137	0xe89220		e8fbf15eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:137	0xe89225		49890b			MOVQ CX, 0(R11)												
  task_controller.go:137	0xe89228		488d0df1fafd01		LEAQ CAS-Backend/biz/controller..stmp_242(SB), CX							
  task_controller.go:137	0xe8922f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe89233		488d0d46b62100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8923a		48894c2428		MOVQ CX, 0x28(SP)											
  context.go:1005		0xe8923f		488b4c2420		MOVQ 0x20(SP), CX											
  context.go:1005		0xe89244		48894c2430		MOVQ CX, 0x30(SP)											
  context.go:1005		0xe89249		488d05902c2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe89250		488d5c2428		LEAQ 0x28(SP), BX											
  context.go:1005		0xe89255		e8465e58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8925a		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8925f		488d0dca5ffe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe89266		4889c7			MOVQ AX, DI												
  context.go:1005		0xe89269		488b442448		MOVQ 0x48(SP), AX											
  context.go:1005		0xe8926e		e8ed64f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:142	0xe89273		4883c438		ADDQ $__major_os_version__+50(SB), SP									
  task_controller.go:142	0xe89277		5d			POPQ BP													
  task_controller.go:142	0xe89278		c3			RET													
  task_controller.go:126	0xe89279		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:126	0xe8927e		6690			NOPW													
  task_controller.go:126	0xe89280		e85bd25eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:126	0xe89285		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:126	0xe8928a		e9f1fdffff		JMP CAS-Backend/biz/controller.GuaqiTaskHandler(SB)							
  :-1				0xe8928f		cc			INT $__subsystem__(SB)											
  :-1				0xe89290		cc			INT $__subsystem__(SB)											
  :-1				0xe89291		cc			INT $__subsystem__(SB)											
  :-1				0xe89292		cc			INT $__subsystem__(SB)											
  :-1				0xe89293		cc			INT $__subsystem__(SB)											
  :-1				0xe89294		cc			INT $__subsystem__(SB)											
  :-1				0xe89295		cc			INT $__subsystem__(SB)											
  :-1				0xe89296		cc			INT $__subsystem__(SB)											
  :-1				0xe89297		cc			INT $__subsystem__(SB)											
  :-1				0xe89298		cc			INT $__subsystem__(SB)											
  :-1				0xe89299		cc			INT $__subsystem__(SB)											
  :-1				0xe8929a		cc			INT $__subsystem__(SB)											
  :-1				0xe8929b		cc			INT $__subsystem__(SB)											
  :-1				0xe8929c		cc			INT $__subsystem__(SB)											
  :-1				0xe8929d		cc			INT $__subsystem__(SB)											
  :-1				0xe8929e		cc			INT $__subsystem__(SB)											
  :-1				0xe8929f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.HuifuTaskHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:144	0xe892a0		493b6610		CMPQ SP, 0x10(R14)											
  task_controller.go:144	0xe892a4		0f86ef010000		JBE 0xe89499												
  task_controller.go:144	0xe892aa		55			PUSHQ BP												
  task_controller.go:144	0xe892ab		4889e5			MOVQ SP, BP												
  task_controller.go:144	0xe892ae		4883ec38		SUBQ $__major_os_version__+50(SB), SP									
  task_controller.go:147	0xe892b2		4889442448		MOVQ AX, 0x48(SP)											
  task_controller.go:145	0xe892b7		488d1ddcf22d00		LEAQ go:string.*+146(SB), BX										
  task_controller.go:145	0xe892be		b902000000		MOVL $__minor_os_version__+1(SB), CX									
  task_controller.go:145	0xe892c3		e8f82cf7ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_controller.go:146	0xe892c8		e8d31f66ff		CALL strconv.Atoi(SB)											
  task_controller.go:147	0xe892cd		e8cefdfbff		CALL CAS-Backend/biz/service.HuifuTask(SB)								
  task_controller.go:147	0xe892d2		84c0			TESTL AL, AL												
  task_controller.go:147	0xe892d4		0f84de000000		JE 0xe893b8												
  task_controller.go:149	0xe892da		e8011d5eff		CALL runtime.makemap_small(SB)										
  task_controller.go:149	0xe892df		4889442420		MOVQ AX, 0x20(SP)											
  task_controller.go:149	0xe892e4		4889c3			MOVQ AX, BX												
  task_controller.go:149	0xe892e7		488d0d9e032e00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:149	0xe892ee		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:149	0xe892f3		488d0586b52100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:149	0xe892fa		e8214d5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:149	0xe892ff		488d0d5a981b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:149	0xe89306		488908			MOVQ CX, 0(AX)												
  task_controller.go:149	0xe89309		833d40486d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:149	0xe89310		740c			JE 0xe8931e												
  task_controller.go:149	0xe89312		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:149	0xe89316		e805f15eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:149	0xe8931b		498913			MOVQ DX, 0(R11)												
  task_controller.go:149	0xe8931e		488d150be5fd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_controller.go:149	0xe89325		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:149	0xe89329		488d0550b52100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:149	0xe89330		488b5c2420		MOVQ 0x20(SP), BX											
  task_controller.go:149	0xe89335		488d0d18f72d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:149	0xe8933c		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:149	0xe89341		e8da4c5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:149	0xe89346		488d15d3951b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:149	0xe8934d		488910			MOVQ DX, 0(AX)												
  task_controller.go:149	0xe89350		833df9476d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:149	0xe89357		740f			JE 0xe89368												
  task_controller.go:149	0xe89359		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:149	0xe8935d		0f1f00			NOPL 0(AX)												
  task_controller.go:149	0xe89360		e8bbf05eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:149	0xe89365		49890b			MOVQ CX, 0(R11)												
  task_controller.go:149	0xe89368		488d0dc1f9fd01		LEAQ CAS-Backend/biz/controller..stmp_244(SB), CX							
  task_controller.go:149	0xe8936f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe89373		488d0d06b52100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8937a		48894c2428		MOVQ CX, 0x28(SP)											
  context.go:1005		0xe8937f		488b4c2420		MOVQ 0x20(SP), CX											
  context.go:1005		0xe89384		48894c2430		MOVQ CX, 0x30(SP)											
  context.go:1005		0xe89389		488d05502b2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe89390		488d5c2428		LEAQ 0x28(SP), BX											
  context.go:1005		0xe89395		e8065d58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8939a		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8939f		488d0d8a5efe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe893a6		4889c7			MOVQ AX, DI												
  context.go:1005		0xe893a9		488b442448		MOVQ 0x48(SP), AX											
  context.go:1005		0xe893ae		e8ad63f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:159	0xe893b3		e9db000000		JMP 0xe89493												
  task_controller.go:154	0xe893b8		e8231c5eff		CALL runtime.makemap_small(SB)										
  task_controller.go:154	0xe893bd		4889442420		MOVQ AX, 0x20(SP)											
  task_controller.go:154	0xe893c2		4889c3			MOVQ AX, BX												
  task_controller.go:154	0xe893c5		488d0dc0022e00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:154	0xe893cc		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:154	0xe893d1		488d05a8b42100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:154	0xe893d8		e8434c5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:154	0xe893dd		488d0d7c971b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:154	0xe893e4		488908			MOVQ CX, 0(AX)												
  task_controller.go:154	0xe893e7		833d62476d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:154	0xe893ee		740c			JE 0xe893fc												
  task_controller.go:154	0xe893f0		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:154	0xe893f4		e827f05eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:154	0xe893f9		498913			MOVQ DX, 0(R11)												
  task_controller.go:154	0xe893fc		488d15bdb6fd01		LEAQ runtime.gcbits.*(SB), DX										
  task_controller.go:154	0xe89403		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:154	0xe89407		488d0572b42100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:154	0xe8940e		488b5c2420		MOVQ 0x20(SP), BX											
  task_controller.go:154	0xe89413		488d0d3af62d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:154	0xe8941a		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:154	0xe8941f		90			NOPL													
  task_controller.go:154	0xe89420		e8fb4b5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:154	0xe89425		488d15f4941b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:154	0xe8942c		488910			MOVQ DX, 0(AX)												
  task_controller.go:154	0xe8942f		833d1a476d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:154	0xe89436		7410			JE 0xe89448												
  task_controller.go:154	0xe89438		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:154	0xe8943c		0f1f4000		NOPL 0(AX)												
  task_controller.go:154	0xe89440		e8dbef5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:154	0xe89445		49890b			MOVQ CX, 0(R11)												
  task_controller.go:154	0xe89448		488d0df1f8fd01		LEAQ CAS-Backend/biz/controller..stmp_246(SB), CX							
  task_controller.go:154	0xe8944f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe89453		488d0d26b42100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8945a		48894c2428		MOVQ CX, 0x28(SP)											
  context.go:1005		0xe8945f		488b4c2420		MOVQ 0x20(SP), CX											
  context.go:1005		0xe89464		48894c2430		MOVQ CX, 0x30(SP)											
  context.go:1005		0xe89469		488d05702a2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe89470		488d5c2428		LEAQ 0x28(SP), BX											
  context.go:1005		0xe89475		e8265c58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8947a		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8947f		488d0daa5dfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe89486		4889c7			MOVQ AX, DI												
  context.go:1005		0xe89489		488b442448		MOVQ 0x48(SP), AX											
  context.go:1005		0xe8948e		e8cd62f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:159	0xe89493		4883c438		ADDQ $__major_os_version__+50(SB), SP									
  task_controller.go:159	0xe89497		5d			POPQ BP													
  task_controller.go:159	0xe89498		c3			RET													
  task_controller.go:144	0xe89499		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:144	0xe8949e		6690			NOPW													
  task_controller.go:144	0xe894a0		e83bd05eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:144	0xe894a5		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:144	0xe894aa		e9f1fdffff		JMP CAS-Backend/biz/controller.HuifuTaskHandler(SB)							
  :-1				0xe894af		cc			INT $__subsystem__(SB)											
  :-1				0xe894b0		cc			INT $__subsystem__(SB)											
  :-1				0xe894b1		cc			INT $__subsystem__(SB)											
  :-1				0xe894b2		cc			INT $__subsystem__(SB)											
  :-1				0xe894b3		cc			INT $__subsystem__(SB)											
  :-1				0xe894b4		cc			INT $__subsystem__(SB)											
  :-1				0xe894b5		cc			INT $__subsystem__(SB)											
  :-1				0xe894b6		cc			INT $__subsystem__(SB)											
  :-1				0xe894b7		cc			INT $__subsystem__(SB)											
  :-1				0xe894b8		cc			INT $__subsystem__(SB)											
  :-1				0xe894b9		cc			INT $__subsystem__(SB)											
  :-1				0xe894ba		cc			INT $__subsystem__(SB)											
  :-1				0xe894bb		cc			INT $__subsystem__(SB)											
  :-1				0xe894bc		cc			INT $__subsystem__(SB)											
  :-1				0xe894bd		cc			INT $__subsystem__(SB)											
  :-1				0xe894be		cc			INT $__subsystem__(SB)											
  :-1				0xe894bf		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.GetAutoTaskScheduleStatusHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:162	0xe894c0		493b6610		CMPQ SP, 0x10(R14)											
  task_controller.go:162	0xe894c4		0f8651010000		JBE 0xe8961b												
  task_controller.go:162	0xe894ca		55			PUSHQ BP												
  task_controller.go:162	0xe894cb		4889e5			MOVQ SP, BP												
  task_controller.go:162	0xe894ce		4883ec48		SUBQ $__major_os_version__+66(SB), SP									
  task_controller.go:169	0xe894d2		4889442458		MOVQ AX, 0x58(SP)											
  task_controller.go:163	0xe894d7		e8041b5eff		CALL runtime.makemap_small(SB)										
  task_controller.go:163	0xe894dc		4889442430		MOVQ AX, 0x30(SP)											
  task_controller.go:163	0xe894e1		4889c3			MOVQ AX, BX												
  task_controller.go:163	0xe894e4		488d0da1012e00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:163	0xe894eb		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:163	0xe894f0		488d0589b32100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:163	0xe894f7		e8244b5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:163	0xe894fc		488d0d5d961b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:163	0xe89503		488908			MOVQ CX, 0(AX)												
  task_controller.go:163	0xe89506		833d43466d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:163	0xe8950d		740c			JE 0xe8951b												
  task_controller.go:163	0xe8950f		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:163	0xe89513		e808ef5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:163	0xe89518		49890b			MOVQ CX, 0(R11)												
  task_controller.go:163	0xe8951b		488d0d0ee3fd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), CX								
  task_controller.go:163	0xe89522		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:165	0xe89526		e8b51a5eff		CALL runtime.makemap_small(SB)										
  task_controller.go:165	0xe8952b		4889442428		MOVQ AX, 0x28(SP)											
  task_controller.go:166	0xe89530		e84bc8faff		CALL CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning(SB)						
  task_controller.go:166	0xe89535		88442427		MOVB AL, 0x27(SP)											
  task_controller.go:165	0xe89539		488b5c2428		MOVQ 0x28(SP), BX											
  task_controller.go:165	0xe8953e		488d0ddd972e00		LEAQ go:string.*+43034(SB), CX										
  task_controller.go:165	0xe89545		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:165	0xe8954a		488d052fb32100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:165	0xe89551		e8ca4a5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:165	0xe89556		488d0dc3971b00		LEAQ runtime.types+384288(SB), CX									
  task_controller.go:165	0xe8955d		488908			MOVQ CX, 0(AX)												
  task_controller.go:166	0xe89560		0fb64c2427		MOVZX 0x27(SP), CX											
  task_controller.go:166	0xe89565		0fb6c9			MOVZX CL, CX												
  task_controller.go:166	0xe89568		488d15b1110f00		LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:166	0xe8956f		488d0cca		LEAQ 0(DX)(CX*8), CX											
  task_controller.go:165	0xe89573		833dd6456d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:165	0xe8957a		740c			JE 0xe89588												
  task_controller.go:165	0xe8957c		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:165	0xe89580		e89bee5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:165	0xe89585		498913			MOVQ DX, 0(R11)												
  task_controller.go:165	0xe89588		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:163	0xe8958c		488d05edb22100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:163	0xe89593		488b5c2430		MOVQ 0x30(SP), BX											
  task_controller.go:163	0xe89598		488d0df9002e00		LEAQ go:string.*+4496(SB), CX										
  task_controller.go:163	0xe8959f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:163	0xe895a4		e8774a5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:163	0xe895a9		488d15d0b22100		LEAQ runtime.types+784512(SB), DX									
  task_controller.go:163	0xe895b0		488910			MOVQ DX, 0(AX)												
  task_controller.go:163	0xe895b3		833d96456d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:163	0xe895ba		7507			JNE 0xe895c3												
  task_controller.go:163	0xe895bc		488b4c2428		MOVQ 0x28(SP), CX											
  task_controller.go:163	0xe895c1		eb15			JMP 0xe895d8												
  task_controller.go:163	0xe895c3		e878ee5eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:163	0xe895c8		488b4c2428		MOVQ 0x28(SP), CX											
  task_controller.go:163	0xe895cd		49890b			MOVQ CX, 0(R11)												
  task_controller.go:163	0xe895d0		488b7008		MOVQ 0x8(AX), SI											
  task_controller.go:163	0xe895d4		49897308		MOVQ SI, 0x8(R11)											
  task_controller.go:163	0xe895d8		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe895dc		4889542438		MOVQ DX, 0x38(SP)											
  context.go:1005		0xe895e1		488b4c2430		MOVQ 0x30(SP), CX											
  context.go:1005		0xe895e6		48894c2440		MOVQ CX, 0x40(SP)											
  context.go:1005		0xe895eb		488d05ee282400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe895f2		488d5c2438		LEAQ 0x38(SP), BX											
  context.go:1005		0xe895f7		e8a45a58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe895fc		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe89601		488d0d285cfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe89608		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8960b		488b442458		MOVQ 0x58(SP), AX											
  context.go:1005		0xe89610		e84b61f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:169	0xe89615		4883c448		ADDQ $__major_os_version__+66(SB), SP									
  task_controller.go:169	0xe89619		5d			POPQ BP													
  task_controller.go:169	0xe8961a		c3			RET													
  task_controller.go:162	0xe8961b		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:162	0xe89620		e8bbce5eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:162	0xe89625		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:162	0xe8962a		e991feffff		JMP CAS-Backend/biz/controller.GetAutoTaskScheduleStatusHandler(SB)					
  :-1				0xe8962f		cc			INT $__subsystem__(SB)											
  :-1				0xe89630		cc			INT $__subsystem__(SB)											
  :-1				0xe89631		cc			INT $__subsystem__(SB)											
  :-1				0xe89632		cc			INT $__subsystem__(SB)											
  :-1				0xe89633		cc			INT $__subsystem__(SB)											
  :-1				0xe89634		cc			INT $__subsystem__(SB)											
  :-1				0xe89635		cc			INT $__subsystem__(SB)											
  :-1				0xe89636		cc			INT $__subsystem__(SB)											
  :-1				0xe89637		cc			INT $__subsystem__(SB)											
  :-1				0xe89638		cc			INT $__subsystem__(SB)											
  :-1				0xe89639		cc			INT $__subsystem__(SB)											
  :-1				0xe8963a		cc			INT $__subsystem__(SB)											
  :-1				0xe8963b		cc			INT $__subsystem__(SB)											
  :-1				0xe8963c		cc			INT $__subsystem__(SB)											
  :-1				0xe8963d		cc			INT $__subsystem__(SB)											
  :-1				0xe8963e		cc			INT $__subsystem__(SB)											
  :-1				0xe8963f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.AutoTaskScheduleHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:172	0xe89640		493b6610		CMPQ SP, 0x10(R14)											
  task_controller.go:172	0xe89644		0f86ee040000		JBE 0xe89b38												
  task_controller.go:172	0xe8964a		55			PUSHQ BP												
  task_controller.go:172	0xe8964b		4889e5			MOVQ SP, BP												
  task_controller.go:172	0xe8964e		4883ec60		SUBQ $.file+19(SB), SP											
  task_controller.go:174	0xe89652		4889442470		MOVQ AX, 0x70(SP)											
  task_controller.go:173	0xe89657		bb005ed0b2		MOVL $-0x4d2fa200, BX											
  task_controller.go:173	0xe8965c		48b800f2052a01000000	MOVQ $0x12a05f200, AX											
  task_controller.go:173	0xe89666		e815befaff		CALL CAS-Backend/pkg/diapdu.StartAutoTaskScheduler(SB)							
  task_controller.go:174	0xe8966b		4885db			TESTQ BX, BX												
  task_controller.go:174	0xe8966e		0f85fd020000		JNE 0xe89971												
  task_controller.go:173	0xe89674		84c0			TESTL AL, AL												
  task_controller.go:182	0xe89676		0f847e010000		JE 0xe897fa												
  task_controller.go:182	0xe8967c		0f1f4000		NOPL 0(AX)												
  task_controller.go:183	0xe89680		e85b195eff		CALL runtime.makemap_small(SB)										
  task_controller.go:183	0xe89685		4889442448		MOVQ AX, 0x48(SP)											
  task_controller.go:183	0xe8968a		4889c3			MOVQ AX, BX												
  task_controller.go:183	0xe8968d		488d0df8ff2d00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:183	0xe89694		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:183	0xe89699		488d05e0b12100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:183	0xe896a0		e87b495eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:183	0xe896a5		488d0db4941b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:183	0xe896ac		488908			MOVQ CX, 0(AX)												
  task_controller.go:183	0xe896af		833d9a446d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:183	0xe896b6		7410			JE 0xe896c8												
  task_controller.go:183	0xe896b8		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:183	0xe896bc		0f1f4000		NOPL 0(AX)												
  task_controller.go:183	0xe896c0		e85bed5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:183	0xe896c5		498913			MOVQ DX, 0(R11)												
  task_controller.go:183	0xe896c8		488d1561e1fd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_controller.go:183	0xe896cf		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:183	0xe896d3		488d05a6b12100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:183	0xe896da		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:183	0xe896df		488d0d6ef32d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:183	0xe896e6		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:183	0xe896eb		e830495eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:183	0xe896f0		488d1529921b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:183	0xe896f7		488910			MOVQ DX, 0(AX)												
  task_controller.go:183	0xe896fa		833d4f446d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:183	0xe89701		740c			JE 0xe8970f												
  task_controller.go:183	0xe89703		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:183	0xe89707		e814ed5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:183	0xe8970c		49890b			MOVQ CX, 0(R11)												
  task_controller.go:183	0xe8970f		488d0d3af6fd01		LEAQ CAS-Backend/biz/controller..stmp_250(SB), CX							
  task_controller.go:183	0xe89716		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:186	0xe8971a		e8c1185eff		CALL runtime.makemap_small(SB)										
  task_controller.go:186	0xe8971f		4889442440		MOVQ AX, 0x40(SP)											
  task_controller.go:186	0xe89724		4889c3			MOVQ AX, BX												
  task_controller.go:186	0xe89727		488d0df4952e00		LEAQ go:string.*+43034(SB), CX										
  task_controller.go:186	0xe8972e		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:186	0xe89733		488d0546b12100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:186	0xe8973a		e8e1485eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:186	0xe8973f		488d0dda951b00		LEAQ runtime.types+384288(SB), CX									
  task_controller.go:186	0xe89746		488908			MOVQ CX, 0(AX)												
  task_controller.go:186	0xe89749		833d00446d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:186	0xe89750		740c			JE 0xe8975e												
  task_controller.go:186	0xe89752		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:186	0xe89756		e8c5ec5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:186	0xe8975b		498913			MOVQ DX, 0(R11)												
  task_controller.go:186	0xe8975e		488d15c30f0f00		LEAQ runtime.staticuint64s+8(SB), DX									
  task_controller.go:186	0xe89765		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:183	0xe89769		488d0510b12100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:183	0xe89770		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:183	0xe89775		488d0d1cff2d00		LEAQ go:string.*+4496(SB), CX										
  task_controller.go:183	0xe8977c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:183	0xe89781		e89a485eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:183	0xe89786		488d15f3b02100		LEAQ runtime.types+784512(SB), DX									
  task_controller.go:183	0xe8978d		488910			MOVQ DX, 0(AX)												
  task_controller.go:183	0xe89790		833db9436d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:183	0xe89797		7509			JNE 0xe897a2												
  task_controller.go:183	0xe89799		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:183	0xe8979e		6690			NOPW													
  task_controller.go:183	0xe897a0		eb15			JMP 0xe897b7												
  task_controller.go:183	0xe897a2		e899ec5eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:183	0xe897a7		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:183	0xe897ac		49890b			MOVQ CX, 0(R11)												
  task_controller.go:183	0xe897af		488b7008		MOVQ 0x8(AX), SI											
  task_controller.go:183	0xe897b3		49897308		MOVQ SI, 0x8(R11)											
  task_controller.go:183	0xe897b7		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe897bb		4889542450		MOVQ DX, 0x50(SP)											
  context.go:1005		0xe897c0		488b4c2448		MOVQ 0x48(SP), CX											
  context.go:1005		0xe897c5		48894c2458		MOVQ CX, 0x58(SP)											
  context.go:1005		0xe897ca		488d050f272400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe897d1		488d5c2450		LEAQ 0x50(SP), BX											
  context.go:1005		0xe897d6		e8c55858ff		CALL runtime.convT(SB)											
  context.go:1005		0xe897db		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe897e0		488d0d495afe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe897e7		4889c7			MOVQ AX, DI												
  context.go:1005		0xe897ea		488b442470		MOVQ 0x70(SP), AX											
  context.go:1005		0xe897ef		e86c5ff7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:188	0xe897f4		4883c460		ADDQ $.file+19(SB), SP											
  task_controller.go:188	0xe897f8		5d			POPQ BP													
  task_controller.go:188	0xe897f9		c3			RET													
  task_controller.go:190	0xe897fa		e8e1175eff		CALL runtime.makemap_small(SB)										
  task_controller.go:190	0xe897ff		4889442448		MOVQ AX, 0x48(SP)											
  task_controller.go:190	0xe89804		4889c3			MOVQ AX, BX												
  task_controller.go:190	0xe89807		488d0d7efe2d00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:190	0xe8980e		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:190	0xe89813		488d0566b02100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:190	0xe8981a		e801485eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:190	0xe8981f		488d0d3a931b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:190	0xe89826		488908			MOVQ CX, 0(AX)												
  task_controller.go:190	0xe89829		833d20436d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:190	0xe89830		740c			JE 0xe8983e												
  task_controller.go:190	0xe89832		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:190	0xe89836		e8e5eb5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:190	0xe8983b		498913			MOVQ DX, 0(R11)												
  task_controller.go:190	0xe8983e		488d15ebdffd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_controller.go:190	0xe89845		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:190	0xe89849		488d0530b02100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:190	0xe89850		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:190	0xe89855		488d0df8f12d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:190	0xe8985c		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:190	0xe89861		e8ba475eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:190	0xe89866		488d15b3901b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:190	0xe8986d		488910			MOVQ DX, 0(AX)												
  task_controller.go:190	0xe89870		833dd9426d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:190	0xe89877		740f			JE 0xe89888												
  task_controller.go:190	0xe89879		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:190	0xe8987d		0f1f00			NOPL 0(AX)												
  task_controller.go:190	0xe89880		e89beb5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:190	0xe89885		49890b			MOVQ CX, 0(R11)												
  task_controller.go:190	0xe89888		488d0dd1f4fd01		LEAQ CAS-Backend/biz/controller..stmp_253(SB), CX							
  task_controller.go:190	0xe8988f		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:193	0xe89893		e848175eff		CALL runtime.makemap_small(SB)										
  task_controller.go:193	0xe89898		4889442440		MOVQ AX, 0x40(SP)											
  task_controller.go:193	0xe8989d		4889c3			MOVQ AX, BX												
  task_controller.go:193	0xe898a0		488d0d7b942e00		LEAQ go:string.*+43034(SB), CX										
  task_controller.go:193	0xe898a7		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:193	0xe898ac		488d05cdaf2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:193	0xe898b3		e868475eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:193	0xe898b8		488d0d61941b00		LEAQ runtime.types+384288(SB), CX									
  task_controller.go:193	0xe898bf		488908			MOVQ CX, 0(AX)												
  task_controller.go:193	0xe898c2		833d87426d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:193	0xe898c9		740c			JE 0xe898d7												
  task_controller.go:193	0xe898cb		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:193	0xe898cf		e84ceb5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:193	0xe898d4		498913			MOVQ DX, 0(R11)												
  task_controller.go:193	0xe898d7		488d154a0e0f00		LEAQ runtime.staticuint64s+8(SB), DX									
  task_controller.go:193	0xe898de		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:190	0xe898e2		488d0597af2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:190	0xe898e9		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:190	0xe898ee		488d0da3fd2d00		LEAQ go:string.*+4496(SB), CX										
  task_controller.go:190	0xe898f5		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:190	0xe898fa		e821475eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:190	0xe898ff		488d157aaf2100		LEAQ runtime.types+784512(SB), DX									
  task_controller.go:190	0xe89906		488910			MOVQ DX, 0(AX)												
  task_controller.go:190	0xe89909		833d40426d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:190	0xe89910		7507			JNE 0xe89919												
  task_controller.go:190	0xe89912		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:190	0xe89917		eb15			JMP 0xe8992e												
  task_controller.go:190	0xe89919		e822eb5eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:190	0xe8991e		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:190	0xe89923		49890b			MOVQ CX, 0(R11)												
  task_controller.go:190	0xe89926		488b7008		MOVQ 0x8(AX), SI											
  task_controller.go:190	0xe8992a		49897308		MOVQ SI, 0x8(R11)											
  task_controller.go:190	0xe8992e		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe89932		4889542450		MOVQ DX, 0x50(SP)											
  context.go:1005		0xe89937		488b4c2448		MOVQ 0x48(SP), CX											
  context.go:1005		0xe8993c		48894c2458		MOVQ CX, 0x58(SP)											
  context.go:1005		0xe89941		488d0598252400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe89948		488d5c2450		LEAQ 0x50(SP), BX											
  context.go:1005		0xe8994d		e84e5758ff		CALL runtime.convT(SB)											
  context.go:1005		0xe89952		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe89957		488d0dd258fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8995e		4889c7			MOVQ AX, DI												
  context.go:1005		0xe89961		488b442470		MOVQ 0x70(SP), AX											
  context.go:1005		0xe89966		e8f55df7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:195	0xe8996b		4883c460		ADDQ $.file+19(SB), SP											
  task_controller.go:195	0xe8996f		5d			POPQ BP													
  task_controller.go:195	0xe89970		c3			RET													
  task_controller.go:173	0xe89971		48894c2430		MOVQ CX, 0x30(SP)											
  task_controller.go:173	0xe89976		48895c2428		MOVQ BX, 0x28(SP)											
  task_controller.go:175	0xe8997b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_controller.go:175	0xe89980		e85b165eff		CALL runtime.makemap_small(SB)										
  task_controller.go:175	0xe89985		4889442448		MOVQ AX, 0x48(SP)											
  task_controller.go:175	0xe8998a		4889c3			MOVQ AX, BX												
  task_controller.go:175	0xe8998d		488d0df8fc2d00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:175	0xe89994		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:175	0xe89999		488d05e0ae2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:175	0xe899a0		e87b465eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:175	0xe899a5		488d0db4911b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:175	0xe899ac		488908			MOVQ CX, 0(AX)												
  task_controller.go:175	0xe899af		833d9a416d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:175	0xe899b6		7410			JE 0xe899c8												
  task_controller.go:175	0xe899b8		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:175	0xe899bc		0f1f4000		NOPL 0(AX)												
  task_controller.go:175	0xe899c0		e85bea5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:175	0xe899c5		49890b			MOVQ CX, 0(R11)												
  task_controller.go:175	0xe899c8		488d0df1b0fd01		LEAQ runtime.gcbits.*(SB), CX										
  task_controller.go:175	0xe899cf		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:177	0xe899d3		488b4c2428		MOVQ 0x28(SP), CX											
  task_controller.go:177	0xe899d8		488b4918		MOVQ 0x18(CX), CX											
  task_controller.go:177	0xe899dc		488b442430		MOVQ 0x30(SP), AX											
  task_controller.go:177	0xe899e1		ffd1			CALL CX													
  task_controller.go:177	0xe899e3		e838075eff		CALL runtime.convTstring(SB)										
  task_controller.go:177	0xe899e8		4889442438		MOVQ AX, 0x38(SP)											
  task_controller.go:175	0xe899ed		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:175	0xe899f2		488d0d5bf02d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:175	0xe899f9		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:175	0xe899fe		488d057bae2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:175	0xe89a05		e816465eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:175	0xe89a0a		488d0d0f8f1b00		LEAQ runtime.types+383264(SB), CX									
  task_controller.go:175	0xe89a11		488908			MOVQ CX, 0(AX)												
  task_controller.go:175	0xe89a14		833d35416d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:175	0xe89a1b		7507			JNE 0xe89a24												
  task_controller.go:175	0xe89a1d		488b4c2438		MOVQ 0x38(SP), CX											
  task_controller.go:175	0xe89a22		eb15			JMP 0xe89a39												
  task_controller.go:175	0xe89a24		e817ea5eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:175	0xe89a29		488b4c2438		MOVQ 0x38(SP), CX											
  task_controller.go:175	0xe89a2e		49890b			MOVQ CX, 0(R11)												
  task_controller.go:175	0xe89a31		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:175	0xe89a35		49895308		MOVQ DX, 0x8(R11)											
  task_controller.go:175	0xe89a39		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:178	0xe89a3d		0f1f00			NOPL 0(AX)												
  task_controller.go:178	0xe89a40		e89b155eff		CALL runtime.makemap_small(SB)										
  task_controller.go:178	0xe89a45		4889442440		MOVQ AX, 0x40(SP)											
  task_controller.go:178	0xe89a4a		e831c3faff		CALL CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning(SB)						
  task_controller.go:178	0xe89a4f		88442427		MOVB AL, 0x27(SP)											
  task_controller.go:178	0xe89a53		488b5c2440		MOVQ 0x40(SP), BX											
  task_controller.go:178	0xe89a58		488d0dc3922e00		LEAQ go:string.*+43034(SB), CX										
  task_controller.go:178	0xe89a5f		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:178	0xe89a64		488d0515ae2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:178	0xe89a6b		e8b0455eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:178	0xe89a70		488d0da9921b00		LEAQ runtime.types+384288(SB), CX									
  task_controller.go:178	0xe89a77		488908			MOVQ CX, 0(AX)												
  task_controller.go:178	0xe89a7a		0fb64c2427		MOVZX 0x27(SP), CX											
  task_controller.go:178	0xe89a7f		0fb6c9			MOVZX CL, CX												
  task_controller.go:178	0xe89a82		488d15970c0f00		LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:178	0xe89a89		488d0cca		LEAQ 0(DX)(CX*8), CX											
  task_controller.go:178	0xe89a8d		833dbc406d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:178	0xe89a94		740c			JE 0xe89aa2												
  task_controller.go:178	0xe89a96		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:178	0xe89a9a		e881e95eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:178	0xe89a9f		498913			MOVQ DX, 0(R11)												
  task_controller.go:178	0xe89aa2		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:175	0xe89aa6		488d05d3ad2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:175	0xe89aad		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:175	0xe89ab2		488d0ddffb2d00		LEAQ go:string.*+4496(SB), CX										
  task_controller.go:175	0xe89ab9		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:175	0xe89abe		6690			NOPW													
  task_controller.go:175	0xe89ac0		e85b455eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:175	0xe89ac5		488d15b4ad2100		LEAQ runtime.types+784512(SB), DX									
  task_controller.go:175	0xe89acc		488910			MOVQ DX, 0(AX)												
  task_controller.go:175	0xe89acf		833d7a406d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:175	0xe89ad6		7508			JNE 0xe89ae0												
  task_controller.go:175	0xe89ad8		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:175	0xe89add		eb16			JMP 0xe89af5												
  task_controller.go:175	0xe89adf		90			NOPL													
  task_controller.go:175	0xe89ae0		e85be95eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:175	0xe89ae5		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:175	0xe89aea		49890b			MOVQ CX, 0(R11)												
  task_controller.go:175	0xe89aed		488b7008		MOVQ 0x8(AX), SI											
  task_controller.go:175	0xe89af1		49897308		MOVQ SI, 0x8(R11)											
  task_controller.go:175	0xe89af5		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe89af9		4889542450		MOVQ DX, 0x50(SP)											
  context.go:1005		0xe89afe		488b4c2448		MOVQ 0x48(SP), CX											
  context.go:1005		0xe89b03		48894c2458		MOVQ CX, 0x58(SP)											
  context.go:1005		0xe89b08		488d05d1232400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe89b0f		488d5c2450		LEAQ 0x50(SP), BX											
  context.go:1005		0xe89b14		e8875558ff		CALL runtime.convT(SB)											
  context.go:1005		0xe89b19		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe89b1e		488d0d0b57fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe89b25		4889c7			MOVQ AX, DI												
  context.go:1005		0xe89b28		488b442470		MOVQ 0x70(SP), AX											
  context.go:1005		0xe89b2d		e82e5cf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:180	0xe89b32		4883c460		ADDQ $.file+19(SB), SP											
  task_controller.go:180	0xe89b36		5d			POPQ BP													
  task_controller.go:180	0xe89b37		c3			RET													
  task_controller.go:172	0xe89b38		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:172	0xe89b3d		0f1f00			NOPL 0(AX)												
  task_controller.go:172	0xe89b40		e89bc95eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:172	0xe89b45		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:172	0xe89b4a		e9f1faffff		JMP CAS-Backend/biz/controller.AutoTaskScheduleHandler(SB)						
  :-1				0xe89b4f		cc			INT $__subsystem__(SB)											
  :-1				0xe89b50		cc			INT $__subsystem__(SB)											
  :-1				0xe89b51		cc			INT $__subsystem__(SB)											
  :-1				0xe89b52		cc			INT $__subsystem__(SB)											
  :-1				0xe89b53		cc			INT $__subsystem__(SB)											
  :-1				0xe89b54		cc			INT $__subsystem__(SB)											
  :-1				0xe89b55		cc			INT $__subsystem__(SB)											
  :-1				0xe89b56		cc			INT $__subsystem__(SB)											
  :-1				0xe89b57		cc			INT $__subsystem__(SB)											
  :-1				0xe89b58		cc			INT $__subsystem__(SB)											
  :-1				0xe89b59		cc			INT $__subsystem__(SB)											
  :-1				0xe89b5a		cc			INT $__subsystem__(SB)											
  :-1				0xe89b5b		cc			INT $__subsystem__(SB)											
  :-1				0xe89b5c		cc			INT $__subsystem__(SB)											
  :-1				0xe89b5d		cc			INT $__subsystem__(SB)											
  :-1				0xe89b5e		cc			INT $__subsystem__(SB)											
  :-1				0xe89b5f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.StopAutoTaskScheduleHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:198	0xe89b60		493b6610		CMPQ SP, 0x10(R14)											
  task_controller.go:198	0xe89b64		0f86d2040000		JBE 0xe8a03c												
  task_controller.go:198	0xe89b6a		55			PUSHQ BP												
  task_controller.go:198	0xe89b6b		4889e5			MOVQ SP, BP												
  task_controller.go:198	0xe89b6e		4883ec60		SUBQ $.file+19(SB), SP											
  task_controller.go:200	0xe89b72		4889442470		MOVQ AX, 0x70(SP)											
  task_controller.go:199	0xe89b77		e8c4bffaff		CALL CAS-Backend/pkg/diapdu.StopAutoTaskScheduler(SB)							
  task_controller.go:199	0xe89b7c		0f1f4000		NOPL 0(AX)												
  task_controller.go:200	0xe89b80		4885db			TESTQ BX, BX												
  task_controller.go:200	0xe89b83		0f85fb020000		JNE 0xe89e84												
  task_controller.go:199	0xe89b89		84c0			TESTL AL, AL												
  task_controller.go:208	0xe89b8b		0f8474010000		JE 0xe89d05												
  task_controller.go:216	0xe89b91		e84a145eff		CALL runtime.makemap_small(SB)										
  task_controller.go:216	0xe89b96		4889442448		MOVQ AX, 0x48(SP)											
  task_controller.go:216	0xe89b9b		4889c3			MOVQ AX, BX												
  task_controller.go:216	0xe89b9e		488d0de7fa2d00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:216	0xe89ba5		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:216	0xe89baa		488d05cfac2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:216	0xe89bb1		e86a445eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:216	0xe89bb6		488d0da38f1b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:216	0xe89bbd		488908			MOVQ CX, 0(AX)												
  task_controller.go:216	0xe89bc0		833d893f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:216	0xe89bc7		740c			JE 0xe89bd5												
  task_controller.go:216	0xe89bc9		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:216	0xe89bcd		e84ee85eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:216	0xe89bd2		498913			MOVQ DX, 0(R11)												
  task_controller.go:216	0xe89bd5		488d1554dcfd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_controller.go:216	0xe89bdc		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:216	0xe89be0		488d0599ac2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:216	0xe89be7		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:216	0xe89bec		488d0d61ee2d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:216	0xe89bf3		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:216	0xe89bf8		e823445eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:216	0xe89bfd		488d151c8d1b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:216	0xe89c04		488910			MOVQ DX, 0(AX)												
  task_controller.go:216	0xe89c07		833d423f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:216	0xe89c0e		740c			JE 0xe89c1c												
  task_controller.go:216	0xe89c10		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:216	0xe89c14		e807e85eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:216	0xe89c19		49890b			MOVQ CX, 0(R11)												
  task_controller.go:216	0xe89c1c		488d0d4de2fd01		LEAQ CAS-Backend/pkg/diapdu..stmp_26(SB), CX								
  task_controller.go:216	0xe89c23		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:219	0xe89c27		e8b4135eff		CALL runtime.makemap_small(SB)										
  task_controller.go:219	0xe89c2c		4889442440		MOVQ AX, 0x40(SP)											
  task_controller.go:219	0xe89c31		4889c3			MOVQ AX, BX												
  task_controller.go:219	0xe89c34		488d0de7902e00		LEAQ go:string.*+43034(SB), CX										
  task_controller.go:219	0xe89c3b		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:219	0xe89c40		488d0539ac2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:219	0xe89c47		e8d4435eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:219	0xe89c4c		488d0dcd901b00		LEAQ runtime.types+384288(SB), CX									
  task_controller.go:219	0xe89c53		488908			MOVQ CX, 0(AX)												
  task_controller.go:219	0xe89c56		833df33e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:219	0xe89c5d		740c			JE 0xe89c6b												
  task_controller.go:219	0xe89c5f		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:219	0xe89c63		e8b8e75eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:219	0xe89c68		498913			MOVQ DX, 0(R11)												
  task_controller.go:219	0xe89c6b		488d15ae0a0f00		LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:219	0xe89c72		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:216	0xe89c76		488d0503ac2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:216	0xe89c7d		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:216	0xe89c82		488d0d0ffa2d00		LEAQ go:string.*+4496(SB), CX										
  task_controller.go:216	0xe89c89		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:216	0xe89c8e		e88d435eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:216	0xe89c93		488d15e6ab2100		LEAQ runtime.types+784512(SB), DX									
  task_controller.go:216	0xe89c9a		488910			MOVQ DX, 0(AX)												
  task_controller.go:216	0xe89c9d		833dac3e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:216	0xe89ca4		7507			JNE 0xe89cad												
  task_controller.go:216	0xe89ca6		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:216	0xe89cab		eb15			JMP 0xe89cc2												
  task_controller.go:216	0xe89cad		e88ee75eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:216	0xe89cb2		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:216	0xe89cb7		49890b			MOVQ CX, 0(R11)												
  task_controller.go:216	0xe89cba		488b7008		MOVQ 0x8(AX), SI											
  task_controller.go:216	0xe89cbe		49897308		MOVQ SI, 0x8(R11)											
  task_controller.go:216	0xe89cc2		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe89cc6		4889542450		MOVQ DX, 0x50(SP)											
  context.go:1005		0xe89ccb		488b4c2448		MOVQ 0x48(SP), CX											
  context.go:1005		0xe89cd0		48894c2458		MOVQ CX, 0x58(SP)											
  context.go:1005		0xe89cd5		488d0504222400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe89cdc		488d5c2450		LEAQ 0x50(SP), BX											
  context.go:1005		0xe89ce1		e8ba5358ff		CALL runtime.convT(SB)											
  context.go:1005		0xe89ce6		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe89ceb		488d0d3e55fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe89cf2		4889c7			MOVQ AX, DI												
  context.go:1005		0xe89cf5		488b442470		MOVQ 0x70(SP), AX											
  context.go:1005		0xe89cfa		e8615af7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:221	0xe89cff		4883c460		ADDQ $.file+19(SB), SP											
  task_controller.go:221	0xe89d03		5d			POPQ BP													
  task_controller.go:221	0xe89d04		c3			RET													
  task_controller.go:209	0xe89d05		e8d6125eff		CALL runtime.makemap_small(SB)										
  task_controller.go:209	0xe89d0a		4889442448		MOVQ AX, 0x48(SP)											
  task_controller.go:209	0xe89d0f		4889c3			MOVQ AX, BX												
  task_controller.go:209	0xe89d12		488d0d73f92d00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:209	0xe89d19		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:209	0xe89d1e		488d055bab2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:209	0xe89d25		e8f6425eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:209	0xe89d2a		488d0d2f8e1b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:209	0xe89d31		488908			MOVQ CX, 0(AX)												
  task_controller.go:209	0xe89d34		833d153e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:209	0xe89d3b		740c			JE 0xe89d49												
  task_controller.go:209	0xe89d3d		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:209	0xe89d41		e8dae65eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:209	0xe89d46		498913			MOVQ DX, 0(R11)												
  task_controller.go:209	0xe89d49		488d15e0dafd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_controller.go:209	0xe89d50		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:209	0xe89d54		488d0525ab2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:209	0xe89d5b		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:209	0xe89d60		488d0dedec2d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:209	0xe89d67		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:209	0xe89d6c		e8af425eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:209	0xe89d71		488d15a88b1b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:209	0xe89d78		488910			MOVQ DX, 0(AX)												
  task_controller.go:209	0xe89d7b		833dce3d6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:209	0xe89d82		740c			JE 0xe89d90												
  task_controller.go:209	0xe89d84		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:209	0xe89d88		e893e65eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:209	0xe89d8d		49890b			MOVQ CX, 0(R11)												
  task_controller.go:209	0xe89d90		488d0dd9effd01		LEAQ CAS-Backend/biz/controller..stmp_257(SB), CX							
  task_controller.go:209	0xe89d97		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:212	0xe89d9b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_controller.go:212	0xe89da0		e83b125eff		CALL runtime.makemap_small(SB)										
  task_controller.go:212	0xe89da5		4889442440		MOVQ AX, 0x40(SP)											
  task_controller.go:212	0xe89daa		4889c3			MOVQ AX, BX												
  task_controller.go:212	0xe89dad		488d0d6e8f2e00		LEAQ go:string.*+43034(SB), CX										
  task_controller.go:212	0xe89db4		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:212	0xe89db9		488d05c0aa2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:212	0xe89dc0		e85b425eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:212	0xe89dc5		488d0d548f1b00		LEAQ runtime.types+384288(SB), CX									
  task_controller.go:212	0xe89dcc		488908			MOVQ CX, 0(AX)												
  task_controller.go:212	0xe89dcf		833d7a3d6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:212	0xe89dd6		7410			JE 0xe89de8												
  task_controller.go:212	0xe89dd8		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:212	0xe89ddc		0f1f4000		NOPL 0(AX)												
  task_controller.go:212	0xe89de0		e83be65eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:212	0xe89de5		498913			MOVQ DX, 0(R11)												
  task_controller.go:212	0xe89de8		488d1531090f00		LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:212	0xe89def		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:209	0xe89df3		488d0586aa2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:209	0xe89dfa		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:209	0xe89dff		488d0d92f82d00		LEAQ go:string.*+4496(SB), CX										
  task_controller.go:209	0xe89e06		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:209	0xe89e0b		e810425eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:209	0xe89e10		488d1569aa2100		LEAQ runtime.types+784512(SB), DX									
  task_controller.go:209	0xe89e17		488910			MOVQ DX, 0(AX)												
  task_controller.go:209	0xe89e1a		833d2f3d6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:209	0xe89e21		7507			JNE 0xe89e2a												
  task_controller.go:209	0xe89e23		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:209	0xe89e28		eb15			JMP 0xe89e3f												
  task_controller.go:209	0xe89e2a		e811e65eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:209	0xe89e2f		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:209	0xe89e34		49890b			MOVQ CX, 0(R11)												
  task_controller.go:209	0xe89e37		488b7008		MOVQ 0x8(AX), SI											
  task_controller.go:209	0xe89e3b		49897308		MOVQ SI, 0x8(R11)											
  task_controller.go:209	0xe89e3f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe89e43		4889542450		MOVQ DX, 0x50(SP)											
  context.go:1005		0xe89e48		488b4c2448		MOVQ 0x48(SP), CX											
  context.go:1005		0xe89e4d		48894c2458		MOVQ CX, 0x58(SP)											
  context.go:1005		0xe89e52		488d0587202400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe89e59		488d5c2450		LEAQ 0x50(SP), BX											
  context.go:1005		0xe89e5e		6690			NOPW													
  context.go:1005		0xe89e60		e83b5258ff		CALL runtime.convT(SB)											
  context.go:1005		0xe89e65		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe89e6a		488d0dbf53fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe89e71		4889c7			MOVQ AX, DI												
  context.go:1005		0xe89e74		488b442470		MOVQ 0x70(SP), AX											
  context.go:1005		0xe89e79		e8e258f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:214	0xe89e7e		4883c460		ADDQ $.file+19(SB), SP											
  task_controller.go:214	0xe89e82		5d			POPQ BP													
  task_controller.go:214	0xe89e83		c3			RET													
  task_controller.go:199	0xe89e84		48894c2430		MOVQ CX, 0x30(SP)											
  task_controller.go:199	0xe89e89		48895c2428		MOVQ BX, 0x28(SP)											
  task_controller.go:201	0xe89e8e		e84d115eff		CALL runtime.makemap_small(SB)										
  task_controller.go:201	0xe89e93		4889442448		MOVQ AX, 0x48(SP)											
  task_controller.go:201	0xe89e98		4889c3			MOVQ AX, BX												
  task_controller.go:201	0xe89e9b		488d0deaf72d00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:201	0xe89ea2		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:201	0xe89ea7		488d05d2a92100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:201	0xe89eae		e86d415eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:201	0xe89eb3		488d0da68c1b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:201	0xe89eba		488908			MOVQ CX, 0(AX)												
  task_controller.go:201	0xe89ebd		833d8c3c6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:201	0xe89ec4		740c			JE 0xe89ed2												
  task_controller.go:201	0xe89ec6		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:201	0xe89eca		e851e55eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:201	0xe89ecf		49890b			MOVQ CX, 0(R11)												
  task_controller.go:201	0xe89ed2		488d0de7abfd01		LEAQ runtime.gcbits.*(SB), CX										
  task_controller.go:201	0xe89ed9		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:203	0xe89edd		488b4c2428		MOVQ 0x28(SP), CX											
  task_controller.go:203	0xe89ee2		488b4918		MOVQ 0x18(CX), CX											
  task_controller.go:203	0xe89ee6		488b442430		MOVQ 0x30(SP), AX											
  task_controller.go:203	0xe89eeb		ffd1			CALL CX													
  task_controller.go:203	0xe89eed		e82e025eff		CALL runtime.convTstring(SB)										
  task_controller.go:203	0xe89ef2		4889442438		MOVQ AX, 0x38(SP)											
  task_controller.go:201	0xe89ef7		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:201	0xe89efc		488d0d51eb2d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:201	0xe89f03		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:201	0xe89f08		488d0571a92100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:201	0xe89f0f		e80c415eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:201	0xe89f14		488d0d058a1b00		LEAQ runtime.types+383264(SB), CX									
  task_controller.go:201	0xe89f1b		488908			MOVQ CX, 0(AX)												
  task_controller.go:201	0xe89f1e		833d2b3c6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:201	0xe89f25		7507			JNE 0xe89f2e												
  task_controller.go:201	0xe89f27		488b4c2438		MOVQ 0x38(SP), CX											
  task_controller.go:201	0xe89f2c		eb15			JMP 0xe89f43												
  task_controller.go:201	0xe89f2e		e80de55eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:201	0xe89f33		488b4c2438		MOVQ 0x38(SP), CX											
  task_controller.go:201	0xe89f38		49890b			MOVQ CX, 0(R11)												
  task_controller.go:201	0xe89f3b		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:201	0xe89f3f		49895308		MOVQ DX, 0x8(R11)											
  task_controller.go:201	0xe89f43		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:204	0xe89f47		e894105eff		CALL runtime.makemap_small(SB)										
  task_controller.go:204	0xe89f4c		4889442440		MOVQ AX, 0x40(SP)											
  task_controller.go:204	0xe89f51		e82abefaff		CALL CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning(SB)						
  task_controller.go:204	0xe89f56		88442427		MOVB AL, 0x27(SP)											
  task_controller.go:204	0xe89f5a		488b5c2440		MOVQ 0x40(SP), BX											
  task_controller.go:204	0xe89f5f		488d0dbc8d2e00		LEAQ go:string.*+43034(SB), CX										
  task_controller.go:204	0xe89f66		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:204	0xe89f6b		488d050ea92100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:204	0xe89f72		e8a9405eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:204	0xe89f77		488d0da28d1b00		LEAQ runtime.types+384288(SB), CX									
  task_controller.go:204	0xe89f7e		488908			MOVQ CX, 0(AX)												
  task_controller.go:204	0xe89f81		0fb64c2427		MOVZX 0x27(SP), CX											
  task_controller.go:204	0xe89f86		0fb6c9			MOVZX CL, CX												
  task_controller.go:204	0xe89f89		488d1590070f00		LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:204	0xe89f90		488d0cca		LEAQ 0(DX)(CX*8), CX											
  task_controller.go:204	0xe89f94		833db53b6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:204	0xe89f9b		740c			JE 0xe89fa9												
  task_controller.go:204	0xe89f9d		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:204	0xe89fa1		e87ae45eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:204	0xe89fa6		498913			MOVQ DX, 0(R11)												
  task_controller.go:204	0xe89fa9		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:201	0xe89fad		488d05cca82100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:201	0xe89fb4		488b5c2448		MOVQ 0x48(SP), BX											
  task_controller.go:201	0xe89fb9		488d0dd8f62d00		LEAQ go:string.*+4496(SB), CX										
  task_controller.go:201	0xe89fc0		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:201	0xe89fc5		e856405eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:201	0xe89fca		488d15afa82100		LEAQ runtime.types+784512(SB), DX									
  task_controller.go:201	0xe89fd1		488910			MOVQ DX, 0(AX)												
  task_controller.go:201	0xe89fd4		833d753b6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:201	0xe89fdb		7507			JNE 0xe89fe4												
  task_controller.go:201	0xe89fdd		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:201	0xe89fe2		eb15			JMP 0xe89ff9												
  task_controller.go:201	0xe89fe4		e857e45eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:201	0xe89fe9		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:201	0xe89fee		49890b			MOVQ CX, 0(R11)												
  task_controller.go:201	0xe89ff1		488b7008		MOVQ 0x8(AX), SI											
  task_controller.go:201	0xe89ff5		49897308		MOVQ SI, 0x8(R11)											
  task_controller.go:201	0xe89ff9		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe89ffd		4889542450		MOVQ DX, 0x50(SP)											
  context.go:1005		0xe8a002		488b4c2448		MOVQ 0x48(SP), CX											
  context.go:1005		0xe8a007		48894c2458		MOVQ CX, 0x58(SP)											
  context.go:1005		0xe8a00c		488d05cd1e2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8a013		488d5c2450		LEAQ 0x50(SP), BX											
  context.go:1005		0xe8a018		e8835058ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8a01d		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8a022		488d0d0752fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8a029		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8a02c		488b442470		MOVQ 0x70(SP), AX											
  context.go:1005		0xe8a031		e82a57f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:206	0xe8a036		4883c460		ADDQ $.file+19(SB), SP											
  task_controller.go:206	0xe8a03a		5d			POPQ BP													
  task_controller.go:206	0xe8a03b		c3			RET													
  task_controller.go:198	0xe8a03c		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:198	0xe8a041		e89ac45eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:198	0xe8a046		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:198	0xe8a04b		e910fbffff		JMP CAS-Backend/biz/controller.StopAutoTaskScheduleHandler(SB)						
  :-1				0xe8a050		cc			INT $__subsystem__(SB)											
  :-1				0xe8a051		cc			INT $__subsystem__(SB)											
  :-1				0xe8a052		cc			INT $__subsystem__(SB)											
  :-1				0xe8a053		cc			INT $__subsystem__(SB)											
  :-1				0xe8a054		cc			INT $__subsystem__(SB)											
  :-1				0xe8a055		cc			INT $__subsystem__(SB)											
  :-1				0xe8a056		cc			INT $__subsystem__(SB)											
  :-1				0xe8a057		cc			INT $__subsystem__(SB)											
  :-1				0xe8a058		cc			INT $__subsystem__(SB)											
  :-1				0xe8a059		cc			INT $__subsystem__(SB)											
  :-1				0xe8a05a		cc			INT $__subsystem__(SB)											
  :-1				0xe8a05b		cc			INT $__subsystem__(SB)											
  :-1				0xe8a05c		cc			INT $__subsystem__(SB)											
  :-1				0xe8a05d		cc			INT $__subsystem__(SB)											
  :-1				0xe8a05e		cc			INT $__subsystem__(SB)											
  :-1				0xe8a05f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.UpdateTaskHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:223	0xe8a060		4c8da42440feffff	LEAQ 0xfffffe40(SP), R12										
  task_controller.go:223	0xe8a068		4d3b6610		CMPQ R12, 0x10(R14)											
  task_controller.go:223	0xe8a06c		0f8675050000		JBE 0xe8a5e7												
  task_controller.go:223	0xe8a072		55			PUSHQ BP												
  task_controller.go:223	0xe8a073		4889e5			MOVQ SP, BP												
  task_controller.go:223	0xe8a076		4881ec38020000		SUBQ $__file_alignment__+56(SB), SP									
  context.go:712		0xe8a07d		4889842448020000	MOVQ AX, 0x248(SP)											
  task_controller.go:224	0xe8a085		488d05d4262b00		LEAQ runtime.types+1406816(SB), AX									
  task_controller.go:224	0xe8a08c		e80f7758ff		CALL runtime.newobject(SB)										
  task_controller.go:224	0xe8a091		4889842430020000	MOVQ AX, 0x230(SP)											
  context.go:712		0xe8a099		488b0d40d71200		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe8a0a0		488b1541d71200		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe8a0a7		4885c9			TESTQ CX, CX												
  context.go:712		0xe8a0aa		7419			JE 0xe8a0c5												
  context.go:712		0xe8a0ac		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe8a0b0		488b3559131300		MOVQ CAS-Backend/biz/controller..typeAssert.35(SB), SI							
  context.go:712		0xe8a0b7		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe8a0ba		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe8a0be		6690			NOPW													
  context.go:712		0xe8a0c0		e9cc040000		JMP 0xe8a591												
  context.go:752		0xe8a0c5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe8a0c9		4c8b842448020000	MOVQ 0x248(SP), R8											
  context.go:752		0xe8a0d1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe8a0d5		488d0dc4c51900		LEAQ runtime.types+267936(SB), CX									
  context.go:752		0xe8a0dc		4889c7			MOVQ AX, DI												
  context.go:752		0xe8a0df		4889d0			MOVQ DX, AX												
  context.go:752		0xe8a0e2		ffd6			CALL SI													
  task_controller.go:226	0xe8a0e4		4885c0			TESTQ AX, AX												
  task_controller.go:226	0xe8a0e7		0f8528040000		JNE 0xe8a515												
  task_controller.go:232	0xe8a0ed		440f11bc2400020000	MOVUPS X15, 0x200(SP)											
  task_controller.go:232	0xe8a0f6		488d0563262b00		LEAQ runtime.types+1406816(SB), AX									
  task_controller.go:232	0xe8a0fd		488b9c2430020000	MOVQ 0x230(SP), BX											
  task_controller.go:232	0xe8a105		e8964f58ff		CALL runtime.convT(SB)											
  task_controller.go:232	0xe8a10a		488d0d4f262b00		LEAQ runtime.types+1406816(SB), CX									
  task_controller.go:232	0xe8a111		48898c2400020000	MOVQ CX, 0x200(SP)											
  task_controller.go:232	0xe8a119		4889842408020000	MOVQ AX, 0x208(SP)											
  print.go:314			0xe8a121		488b1d587f6802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8a128		488d05b119fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8a12f		488d8c2400020000	LEAQ 0x200(SP), CX											
  print.go:314			0xe8a137		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8a13c		4889fe			MOVQ DI, SI												
  print.go:314			0xe8a13f		90			NOPL													
  print.go:314			0xe8a140		e81b5769ff		CALL fmt.Fprintln(SB)											
  task_controller.go:234	0xe8a145		488dbc2400010000	LEAQ 0x100(SP), DI											
  task_controller.go:234	0xe8a14d		488d7ff0		LEAQ -0x10(DI), DI											
  task_controller.go:234	0xe8a151		660f1f840000000000	NOPW 0(AX)(AX*1)											
  task_controller.go:234	0xe8a15a		660f1f440000		NOPW 0(AX)(AX*1)											
  task_controller.go:234	0xe8a160		48896c24f0		MOVQ BP, -0x10(SP)											
  task_controller.go:234	0xe8a165		488d6c24f0		LEAQ -0x10(SP), BP											
  task_controller.go:234	0xe8a16a		e849e95eff		CALL 0x478ab8												
  task_controller.go:234	0xe8a16f		488b6d00		MOVQ 0(BP), BP												
  task_controller.go:235	0xe8a173		488b8c2430020000	MOVQ 0x230(SP), CX											
  task_controller.go:235	0xe8a17b		488b11			MOVQ 0(CX), DX												
  task_controller.go:235	0xe8a17e		4889942400010000	MOVQ DX, 0x100(SP)											
  task_controller.go:236	0xe8a186		488b5108		MOVQ 0x8(CX), DX											
  task_controller.go:236	0xe8a18a		488b7110		MOVQ 0x10(CX), SI											
  task_controller.go:236	0xe8a18e		4889942408010000	MOVQ DX, 0x108(SP)											
  task_controller.go:236	0xe8a196		4889b42410010000	MOVQ SI, 0x110(SP)											
  task_controller.go:237	0xe8a19e		488b5118		MOVQ 0x18(CX), DX											
  task_controller.go:237	0xe8a1a2		4889942418010000	MOVQ DX, 0x118(SP)											
  task_controller.go:238	0xe8a1aa		488b5120		MOVQ 0x20(CX), DX											
  task_controller.go:238	0xe8a1ae		488b7128		MOVQ 0x28(CX), SI											
  task_controller.go:238	0xe8a1b2		4889942420010000	MOVQ DX, 0x120(SP)											
  task_controller.go:238	0xe8a1ba		4889b42428010000	MOVQ SI, 0x128(SP)											
  task_controller.go:239	0xe8a1c2		488b5130		MOVQ 0x30(CX), DX											
  task_controller.go:239	0xe8a1c6		4889942430010000	MOVQ DX, 0x130(SP)											
  task_controller.go:240	0xe8a1ce		488b5138		MOVQ 0x38(CX), DX											
  task_controller.go:240	0xe8a1d2		488b7140		MOVQ 0x40(CX), SI											
  task_controller.go:240	0xe8a1d6		4889942438010000	MOVQ DX, 0x138(SP)											
  task_controller.go:240	0xe8a1de		4889b42440010000	MOVQ SI, 0x140(SP)											
  task_controller.go:241	0xe8a1e6		488b5148		MOVQ 0x48(CX), DX											
  task_controller.go:241	0xe8a1ea		488b7150		MOVQ 0x50(CX), SI											
  task_controller.go:241	0xe8a1ee		488b7958		MOVQ 0x58(CX), DI											
  task_controller.go:241	0xe8a1f2		4889942448010000	MOVQ DX, 0x148(SP)											
  task_controller.go:241	0xe8a1fa		4889b42450010000	MOVQ SI, 0x150(SP)											
  task_controller.go:241	0xe8a202		4889bc2458010000	MOVQ DI, 0x158(SP)											
  task_controller.go:243	0xe8a20a		0fb65178		MOVZX 0x78(CX), DX											
  task_controller.go:243	0xe8a20e		88942478010000		MOVB DL, 0x178(SP)											
  task_controller.go:244	0xe8a215		488b9180000000		MOVQ 0x80(CX), DX											
  task_controller.go:244	0xe8a21c		488bb188000000		MOVQ 0x88(CX), SI											
  task_controller.go:244	0xe8a223		4889942480010000	MOVQ DX, 0x180(SP)											
  task_controller.go:244	0xe8a22b		4889b42488010000	MOVQ SI, 0x188(SP)											
  task_controller.go:245	0xe8a233		488b9190000000		MOVQ 0x90(CX), DX											
  task_controller.go:245	0xe8a23a		488bb198000000		MOVQ 0x98(CX), SI											
  task_controller.go:245	0xe8a241		4889942490010000	MOVQ DX, 0x190(SP)											
  task_controller.go:245	0xe8a249		4889b42498010000	MOVQ SI, 0x198(SP)											
  task_controller.go:246	0xe8a251		488b91a0000000		MOVQ 0xa0(CX), DX											
  task_controller.go:246	0xe8a258		488bb1a8000000		MOVQ 0xa8(CX), SI											
  task_controller.go:246	0xe8a25f		48899424a0010000	MOVQ DX, 0x1a0(SP)											
  task_controller.go:246	0xe8a267		4889b424a8010000	MOVQ SI, 0x1a8(SP)											
  task_controller.go:247	0xe8a26f		488b91b0000000		MOVQ 0xb0(CX), DX											
  task_controller.go:247	0xe8a276		488bb1b8000000		MOVQ 0xb8(CX), SI											
  task_controller.go:247	0xe8a27d		48899424b0010000	MOVQ DX, 0x1b0(SP)											
  task_controller.go:247	0xe8a285		4889b424b8010000	MOVQ SI, 0x1b8(SP)											
  task_controller.go:249	0xe8a28d		488b91c0000000		MOVQ 0xc0(CX), DX											
  task_controller.go:249	0xe8a294		488bb1c8000000		MOVQ 0xc8(CX), SI											
  task_controller.go:249	0xe8a29b		48899424d0010000	MOVQ DX, 0x1d0(SP)											
  task_controller.go:249	0xe8a2a3		4889b424d8010000	MOVQ SI, 0x1d8(SP)											
  task_controller.go:250	0xe8a2ab		0fb691d0000000		MOVZX 0xd0(CX), DX											
  task_controller.go:250	0xe8a2b2		889424e0010000		MOVB DL, 0x1e0(SP)											
  task_controller.go:251	0xe8a2b9		488b91d8000000		MOVQ 0xd8(CX), DX											
  task_controller.go:251	0xe8a2c0		488bb1e0000000		MOVQ 0xe0(CX), SI											
  task_controller.go:251	0xe8a2c7		48899424c0010000	MOVQ DX, 0x1c0(SP)											
  task_controller.go:251	0xe8a2cf		4889b424c8010000	MOVQ SI, 0x1c8(SP)											
  task_controller.go:252	0xe8a2d7		f20f1081f8000000	MOVSD_XMM 0xf8(CX), X0											
  task_controller.go:252	0xe8a2df		f20f118424e8010000	MOVSD_XMM X0, 0x1e8(SP)											
  task_controller.go:254	0xe8a2e8		4889e7			MOVQ SP, DI												
  task_controller.go:254	0xe8a2eb		488db42400010000	LEAQ 0x100(SP), SI											
  task_controller.go:254	0xe8a2f3		660f1f840000000000	NOPW 0(AX)(AX*1)											
  task_controller.go:254	0xe8a2fc		0f1f4000		NOPL 0(AX)												
  task_controller.go:254	0xe8a300		48896c24f0		MOVQ BP, -0x10(SP)											
  task_controller.go:254	0xe8a305		488d6c24f0		LEAQ -0x10(SP), BP											
  task_controller.go:254	0xe8a30a		e8bfea5eff		CALL 0x478dce												
  task_controller.go:254	0xe8a30f		488b6d00		MOVQ 0(BP), BP												
  task_controller.go:254	0xe8a313		e868f1fbff		CALL CAS-Backend/biz/service.UpdateTask(SB)								
  task_controller.go:254	0xe8a318		0f1f840000000000	NOPL 0(AX)(AX*1)											
  task_controller.go:254	0xe8a320		84c0			TESTL AL, AL												
  task_controller.go:257	0xe8a322		0f84f0000000		JE 0xe8a418												
  task_controller.go:258	0xe8a328		e8b30c5eff		CALL runtime.makemap_small(SB)										
  task_controller.go:258	0xe8a32d		48898424f8010000	MOVQ AX, 0x1f8(SP)											
  task_controller.go:258	0xe8a335		4889c3			MOVQ AX, BX												
  task_controller.go:258	0xe8a338		488d0d4df32d00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:258	0xe8a33f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:258	0xe8a344		488d0535a52100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:258	0xe8a34b		e8d03c5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:258	0xe8a350		488d0d09881b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:258	0xe8a357		488908			MOVQ CX, 0(AX)												
  task_controller.go:258	0xe8a35a		833def376d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:258	0xe8a361		740c			JE 0xe8a36f												
  task_controller.go:258	0xe8a363		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:258	0xe8a367		e8b4e05eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:258	0xe8a36c		498913			MOVQ DX, 0(R11)												
  task_controller.go:258	0xe8a36f		488d15bad4fd01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_controller.go:258	0xe8a376		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:258	0xe8a37a		488d05ffa42100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:258	0xe8a381		488b9c24f8010000	MOVQ 0x1f8(SP), BX											
  task_controller.go:258	0xe8a389		488d0dc4e62d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:258	0xe8a390		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:258	0xe8a395		e8863c5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:258	0xe8a39a		488d157f851b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:258	0xe8a3a1		488910			MOVQ DX, 0(AX)												
  task_controller.go:258	0xe8a3a4		833da5376d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:258	0xe8a3ab		740c			JE 0xe8a3b9												
  task_controller.go:258	0xe8a3ad		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:258	0xe8a3b1		e86ae05eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:258	0xe8a3b6		49890b			MOVQ CX, 0(R11)												
  task_controller.go:258	0xe8a3b9		488d0dc0e9fd01		LEAQ CAS-Backend/biz/controller..stmp_264(SB), CX							
  task_controller.go:258	0xe8a3c0		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8a3c4		488d0db5a42100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8a3cb		48898c2420020000	MOVQ CX, 0x220(SP)											
  context.go:1005		0xe8a3d3		488b8c24f8010000	MOVQ 0x1f8(SP), CX											
  context.go:1005		0xe8a3db		48898c2428020000	MOVQ CX, 0x228(SP)											
  context.go:1005		0xe8a3e3		488d05f61a2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8a3ea		488d9c2420020000	LEAQ 0x220(SP), BX											
  context.go:1005		0xe8a3f2		e8a94c58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8a3f7		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8a3fc		488d0d2d4efe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8a403		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8a406		488b842448020000	MOVQ 0x248(SP), AX											
  context.go:1005		0xe8a40e		e84d53f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:268	0xe8a413		e9f4000000		JMP 0xe8a50c												
  task_controller.go:263	0xe8a418		e8c30b5eff		CALL runtime.makemap_small(SB)										
  task_controller.go:263	0xe8a41d		48898424f8010000	MOVQ AX, 0x1f8(SP)											
  task_controller.go:263	0xe8a425		4889c3			MOVQ AX, BX												
  task_controller.go:263	0xe8a428		488d0d5df22d00		LEAQ go:string.*+4484(SB), CX										
  task_controller.go:263	0xe8a42f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:263	0xe8a434		488d0545a42100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:263	0xe8a43b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_controller.go:263	0xe8a440		e8db3b5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:263	0xe8a445		488d0d14871b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:263	0xe8a44c		488908			MOVQ CX, 0(AX)												
  task_controller.go:263	0xe8a44f		833dfa366d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:263	0xe8a456		7410			JE 0xe8a468												
  task_controller.go:263	0xe8a458		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:263	0xe8a45c		0f1f4000		NOPL 0(AX)												
  task_controller.go:263	0xe8a460		e8bbdf5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:263	0xe8a465		498913			MOVQ DX, 0(R11)												
  task_controller.go:263	0xe8a468		488d1551a6fd01		LEAQ runtime.gcbits.*(SB), DX										
  task_controller.go:263	0xe8a46f		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:263	0xe8a473		488d0506a42100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:263	0xe8a47a		488b9c24f8010000	MOVQ 0x1f8(SP), BX											
  task_controller.go:263	0xe8a482		488d0dcbe52d00		LEAQ go:string.*+1356(SB), CX										
  task_controller.go:263	0xe8a489		bf03000000		MOVL $__subsystem__(SB), DI										
  task_controller.go:263	0xe8a48e		e88d3b5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:263	0xe8a493		488d1586841b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:263	0xe8a49a		488910			MOVQ DX, 0(AX)												
  task_controller.go:263	0xe8a49d		833dac366d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:263	0xe8a4a4		740c			JE 0xe8a4b2												
  task_controller.go:263	0xe8a4a6		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:263	0xe8a4aa		e871df5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:263	0xe8a4af		49890b			MOVQ CX, 0(R11)												
  task_controller.go:263	0xe8a4b2		488d0dd7e8fd01		LEAQ CAS-Backend/biz/controller..stmp_266(SB), CX							
  task_controller.go:263	0xe8a4b9		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8a4bd		488d0dbca32100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8a4c4		48898c2420020000	MOVQ CX, 0x220(SP)											
  context.go:1005		0xe8a4cc		488b8c24f8010000	MOVQ 0x1f8(SP), CX											
  context.go:1005		0xe8a4d4		48898c2428020000	MOVQ CX, 0x228(SP)											
  context.go:1005		0xe8a4dc		488d05fd192400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8a4e3		488d9c2420020000	LEAQ 0x220(SP), BX											
  context.go:1005		0xe8a4eb		e8b04b58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8a4f0		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8a4f5		488d0d344dfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8a4fc		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8a4ff		488b842448020000	MOVQ 0x248(SP), AX											
  context.go:1005		0xe8a507		e85452f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:268	0xe8a50c		4881c438020000		ADDQ $__file_alignment__+56(SB), SP									
  task_controller.go:268	0xe8a513		5d			POPQ BP													
  task_controller.go:268	0xe8a514		c3			RET													
  context.go:752		0xe8a515		48899c24f8000000	MOVQ BX, 0xf8(SP)											
  context.go:752		0xe8a51d		48898424f0000000	MOVQ AX, 0xf0(SP)											
  task_controller.go:227	0xe8a525		488d15f4831b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:227	0xe8a52c		4889942410020000	MOVQ DX, 0x210(SP)											
  task_controller.go:227	0xe8a534		488d1595e2fd01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  task_controller.go:227	0xe8a53b		4889942418020000	MOVQ DX, 0x218(SP)											
  print.go:314			0xe8a543		488b1d367b6802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8a54a		488d058f15fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8a551		488d8c2410020000	LEAQ 0x210(SP), CX											
  print.go:314			0xe8a559		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8a55e		4889fe			MOVQ DI, SI												
  print.go:314			0xe8a561		e8fa5269ff		CALL fmt.Fprintln(SB)											
  task_controller.go:228	0xe8a566		488b842448020000	MOVQ 0x248(SP), AX											
  task_controller.go:228	0xe8a56e		bb90010000		MOVL $.file+323(SB), BX											
  task_controller.go:228	0xe8a573		488b8c24f0000000	MOVQ 0xf0(SP), CX											
  task_controller.go:228	0xe8a57b		488bbc24f8000000	MOVQ 0xf8(SP), DI											
  task_controller.go:228	0xe8a583		e8180bf7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  task_controller.go:229	0xe8a588		4881c438020000		ADDQ $__file_alignment__+56(SB), SP									
  task_controller.go:229	0xe8a58f		5d			POPQ BP													
  task_controller.go:229	0xe8a590		c3			RET													
  context.go:712		0xe8a591		4d89ca			MOVQ R9, R10												
  context.go:712		0xe8a594		4d21c1			ANDQ R8, R9												
  context.go:712		0xe8a597		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe8a59b		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe8a5a0		4939db			CMPQ R11, BX												
  context.go:712		0xe8a5a3		7438			JE 0xe8a5dd												
  context.go:712		0xe8a5a5		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe8a5a9		4d85db			TESTQ R11, R11												
  context.go:712		0xe8a5ac		75e3			JNE 0xe8a591												
  context.go:712		0xe8a5ae		48899424f0010000	MOVQ DX, 0x1f0(SP)											
  context.go:712		0xe8a5b6		488d05530e1300		LEAQ CAS-Backend/biz/controller..typeAssert.35(SB), AX							
  context.go:712		0xe8a5bd		0f1f00			NOPL 0(AX)												
  context.go:712		0xe8a5c0		e81b4d58ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe8a5c5		488b9424f0010000	MOVQ 0x1f0(SP), DX											
  context.go:712		0xe8a5cd		4889c1			MOVQ AX, CX												
  context.go:752		0xe8a5d0		488b842430020000	MOVQ 0x230(SP), AX											
  context.go:712		0xe8a5d8		e9e8faffff		JMP 0xe8a0c5												
  context.go:712		0xe8a5dd		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe8a5e2		e9defaffff		JMP 0xe8a0c5												
  task_controller.go:223	0xe8a5e7		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:223	0xe8a5ec		e8efbe5eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:223	0xe8a5f1		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:223	0xe8a5f6		e965faffff		JMP CAS-Backend/biz/controller.UpdateTaskHandler(SB)							
  :-1				0xe8a5fb		cc			INT $__subsystem__(SB)											
  :-1				0xe8a5fc		cc			INT $__subsystem__(SB)											
  :-1				0xe8a5fd		cc			INT $__subsystem__(SB)											
  :-1				0xe8a5fe		cc			INT $__subsystem__(SB)											
  :-1				0xe8a5ff		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.GetAllTaskHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:299	0xe8a600		4c8da42480fdffff	LEAQ 0xfffffd80(SP), R12										
  task_controller.go:299	0xe8a608		4d3b6610		CMPQ R12, 0x10(R14)											
  task_controller.go:299	0xe8a60c		0f86c2080000		JBE 0xe8aed4												
  task_controller.go:299	0xe8a612		55			PUSHQ BP												
  task_controller.go:299	0xe8a613		4889e5			MOVQ SP, BP												
  task_controller.go:299	0xe8a616		4881ecf8020000		SUBQ $__file_alignment__+248(SB), SP									
  task_controller.go:311	0xe8a61d		4889842408030000	MOVQ AX, 0x308(SP)											
  task_controller.go:302	0xe8a625		488d1d64f02d00		LEAQ go:string.*+4488(SB), BX										
  task_controller.go:302	0xe8a62c		b904000000		MOVL $__subsystem__+1(SB), CX										
  task_controller.go:302	0xe8a631		488d3d98abfd01		LEAQ runtime.gcbits.*+1808(SB), DI									
  task_controller.go:302	0xe8a638		be01000000		MOVL $__minor_os_version__(SB), SI									
  task_controller.go:302	0xe8a63d		0f1f00			NOPL 0(AX)												
  task_controller.go:302	0xe8a640		e8fb19f7ff		CALL github.com/gin-gonic/gin.(*Context).DefaultQuery(SB)						
  task_controller.go:302	0xe8a645		48898424c8020000	MOVQ AX, 0x2c8(SP)											
  task_controller.go:302	0xe8a64d		48899c2490000000	MOVQ BX, 0x90(SP)											
  task_controller.go:303	0xe8a655		b904000000		MOVL $__subsystem__+1(SB), CX										
  task_controller.go:303	0xe8a65a		488d3d3ddf2d00		LEAQ go:string.*+150(SB), DI										
  task_controller.go:303	0xe8a661		be02000000		MOVL $__minor_os_version__+1(SB), SI									
  task_controller.go:303	0xe8a666		488b842408030000	MOVQ 0x308(SP), AX											
  task_controller.go:303	0xe8a66e		488d1d1ff02d00		LEAQ go:string.*+4492(SB), BX										
  task_controller.go:303	0xe8a675		e8c619f7ff		CALL github.com/gin-gonic/gin.(*Context).DefaultQuery(SB)						
  task_controller.go:303	0xe8a67a		48898424a8010000	MOVQ AX, 0x1a8(SP)											
  task_controller.go:303	0xe8a682		48895c2460		MOVQ BX, 0x60(SP)											
  task_controller.go:304	0xe8a687		b906000000		MOVL $__major_os_version__(SB), CX									
  task_controller.go:304	0xe8a68c		488b842408030000	MOVQ 0x308(SP), AX											
  task_controller.go:304	0xe8a694		488d1dee4d2e00		LEAQ go:string.*+28545(SB), BX										
  task_controller.go:304	0xe8a69b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_controller.go:304	0xe8a6a0		e81b19f7ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_controller.go:304	0xe8a6a5		48898424b0010000	MOVQ AX, 0x1b0(SP)											
  task_controller.go:304	0xe8a6ad		48895c2468		MOVQ BX, 0x68(SP)											
  task_controller.go:305	0xe8a6b2		b906000000		MOVL $__major_os_version__(SB), CX									
  task_controller.go:305	0xe8a6b7		488b842408030000	MOVQ 0x308(SP), AX											
  task_controller.go:305	0xe8a6bf		488d1da14b2e00		LEAQ go:string.*+27999(SB), BX										
  task_controller.go:305	0xe8a6c6		e8f518f7ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_controller.go:305	0xe8a6cb		48898424a0010000	MOVQ AX, 0x1a0(SP)											
  task_controller.go:305	0xe8a6d3		48895c2450		MOVQ BX, 0x50(SP)											
  task_controller.go:306	0xe8a6d8		b908000000		MOVL $__major_os_version__+2(SB), CX									
  task_controller.go:306	0xe8a6dd		488b842408030000	MOVQ 0x308(SP), AX											
  task_controller.go:306	0xe8a6e5		488d1d979b2e00		LEAQ go:string.*+48507(SB), BX										
  task_controller.go:306	0xe8a6ec		e8cf18f7ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_controller.go:306	0xe8a6f1		48898424c0020000	MOVQ AX, 0x2c0(SP)											
  task_controller.go:306	0xe8a6f9		48899c2480000000	MOVQ BX, 0x80(SP)											
  task_controller.go:307	0xe8a701		488b8424c8020000	MOVQ 0x2c8(SP), AX											
  task_controller.go:307	0xe8a709		488b9c2490000000	MOVQ 0x90(SP), BX											
  task_controller.go:307	0xe8a711		e88a0b66ff		CALL strconv.Atoi(SB)											
  task_controller.go:307	0xe8a716		4889842488000000	MOVQ AX, 0x88(SP)											
  task_controller.go:308	0xe8a71e		488b5c2460		MOVQ 0x60(SP), BX											
  task_controller.go:308	0xe8a723		488b8424a8010000	MOVQ 0x1a8(SP), AX											
  task_controller.go:308	0xe8a72b		e8700b66ff		CALL strconv.Atoi(SB)											
  task_controller.go:308	0xe8a730		4889442458		MOVQ AX, 0x58(SP)											
  task_controller.go:310	0xe8a735		4889c3			MOVQ AX, BX												
  task_controller.go:310	0xe8a738		488b8c24b0010000	MOVQ 0x1b0(SP), CX											
  task_controller.go:310	0xe8a740		488b7c2468		MOVQ 0x68(SP), DI											
  task_controller.go:310	0xe8a745		488bb424a0010000	MOVQ 0x1a0(SP), SI											
  task_controller.go:310	0xe8a74d		4c8b442450		MOVQ 0x50(SP), R8											
  task_controller.go:310	0xe8a752		4c8b8c24c0020000	MOVQ 0x2c0(SP), R9											
  task_controller.go:310	0xe8a75a		4c8b942480000000	MOVQ 0x80(SP), R10											
  task_controller.go:310	0xe8a762		488b842488000000	MOVQ 0x88(SP), AX											
  task_controller.go:310	0xe8a76a		e851eefbff		CALL CAS-Backend/biz/service.SlAllTask(SB)								
  task_controller.go:310	0xe8a76f		84c0			TESTL AL, AL												
  task_controller.go:311	0xe8a771		7413			JE 0xe8a786												
  task_controller.go:310	0xe8a773		48899c2498000000	MOVQ BX, 0x98(SP)											
  task_controller.go:436	0xe8a77b		31c0			XORL AX, AX												
  task_controller.go:436	0xe8a77d		31d2			XORL DX, DX												
  task_controller.go:436	0xe8a77f		31f6			XORL SI, SI												
  task_controller.go:436	0xe8a781		e97b010000		JMP 0xe8a901												
  task_controller.go:323	0xe8a786		e855085eff		CALL runtime.makemap_small(SB)										
  task_controller.go:323	0xe8a78b		48898424e0020000	MOVQ AX, 0x2e0(SP)											
  task_controller.go:323	0xe8a793		4889c3			MOVQ AX, BX												
  task_controller.go:323	0xe8a796		488d0df24c2e00		LEAQ go:string.*+28551(SB), CX										
  task_controller.go:323	0xe8a79d		bf06000000		MOVL $__major_os_version__(SB), DI									
  task_controller.go:323	0xe8a7a2		488d05d7a02100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:323	0xe8a7a9		e872385eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:323	0xe8a7ae		488d0d6b851b00		LEAQ runtime.types+384288(SB), CX									
  task_controller.go:323	0xe8a7b5		488908			MOVQ CX, 0(AX)												
  task_controller.go:323	0xe8a7b8		833d91336d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:323	0xe8a7bf		90			NOPL													
  task_controller.go:323	0xe8a7c0		740c			JE 0xe8a7ce												
  task_controller.go:323	0xe8a7c2		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:323	0xe8a7c6		e855dc5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:323	0xe8a7cb		498913			MOVQ DX, 0(R11)												
  task_controller.go:323	0xe8a7ce		488d154bff0e00		LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:323	0xe8a7d5		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:323	0xe8a7d9		488d05a0a02100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:323	0xe8a7e0		488b9c24e0020000	MOVQ 0x2e0(SP), BX											
  task_controller.go:323	0xe8a7e8		488d0d02852e00		LEAQ go:string.*+42985(SB), CX										
  task_controller.go:323	0xe8a7ef		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:323	0xe8a7f4		e827385eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:323	0xe8a7f9		488d1520811b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:323	0xe8a800		488910			MOVQ DX, 0(AX)												
  task_controller.go:323	0xe8a803		833d46336d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:323	0xe8a80a		740c			JE 0xe8a818												
  task_controller.go:323	0xe8a80c		488b7008		MOVQ 0x8(AX), SI											
  task_controller.go:323	0xe8a810		e80bdc5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:323	0xe8a815		498933			MOVQ SI, 0(R11)												
  task_controller.go:323	0xe8a818		488d1591e5fd01		LEAQ CAS-Backend/biz/controller..stmp_276(SB), DX							
  task_controller.go:323	0xe8a81f		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:323	0xe8a823		488d0556a02100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:323	0xe8a82a		488b9c24e0020000	MOVQ 0x2e0(SP), BX											
  task_controller.go:323	0xe8a832		488d0d88fd2d00		LEAQ go:string.*+8377(SB), CX										
  task_controller.go:323	0xe8a839		bf05000000		MOVL $__subsystem__+2(SB), DI										
  task_controller.go:323	0xe8a83e		6690			NOPW													
  task_controller.go:323	0xe8a840		e8db375eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:323	0xe8a845		488d15d4801b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:323	0xe8a84c		488910			MOVQ DX, 0(AX)												
  task_controller.go:323	0xe8a84f		833dfa326d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:323	0xe8a856		7410			JE 0xe8a868												
  task_controller.go:323	0xe8a858		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:323	0xe8a85c		0f1f4000		NOPL 0(AX)												
  task_controller.go:323	0xe8a860		e8bbdb5eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:323	0xe8a865		49890b			MOVQ CX, 0(R11)												
  task_controller.go:323	0xe8a868		488d0dc1e1fd01		LEAQ CAS-Backend/biz/controller..stmp_96(SB), CX							
  task_controller.go:323	0xe8a86f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8a873		488d0d06a02100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8a87a		48898c24e8020000	MOVQ CX, 0x2e8(SP)											
  context.go:1005		0xe8a882		488b8c24e0020000	MOVQ 0x2e0(SP), CX											
  context.go:1005		0xe8a88a		48898c24f0020000	MOVQ CX, 0x2f0(SP)											
  context.go:1005		0xe8a892		488d0547162400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8a899		488d9c24e8020000	LEAQ 0x2e8(SP), BX											
  context.go:1005		0xe8a8a1		e8fa4758ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8a8a6		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8a8ab		488d0d7e49fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8a8b2		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8a8b5		488b842408030000	MOVQ 0x308(SP), AX											
  context.go:1005		0xe8a8bd		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe8a8c0		e89b4ef7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:329	0xe8a8c5		4881c4f8020000		ADDQ $__file_alignment__+248(SB), SP									
  task_controller.go:329	0xe8a8cc		5d			POPQ BP													
  task_controller.go:329	0xe8a8cd		c3			RET													
  task_controller.go:484	0xe8a8ce		488db424c0010000	LEAQ 0x1c0(SP), SI											
  task_controller.go:484	0xe8a8d6		660f1f840000000000	NOPW 0(AX)(AX*1)											
  task_controller.go:484	0xe8a8df		90			NOPL													
  task_controller.go:484	0xe8a8e0		48896c24f0		MOVQ BP, -0x10(SP)											
  task_controller.go:484	0xe8a8e5		488d6c24f0		LEAQ -0x10(SP), BP											
  task_controller.go:484	0xe8a8ea		e8d1e45eff		CALL 0x478dc0												
  task_controller.go:484	0xe8a8ef		488b6d00		MOVQ 0(BP), BP												
  task_controller.go:436	0xe8a8f3		4881c1f0000000		ADDQ $.file+163(SB), CX											
  task_controller.go:436	0xe8a8fa		498d78ff		LEAQ -0x1(R8), DI											
  task_controller.go:313	0xe8a8fe		4c89ce			MOVQ R9, SI												
  task_controller.go:436	0xe8a901		4885ff			TESTQ DI, DI												
  task_controller.go:436	0xe8a904		0f8efb020000		JLE 0xe8ac05												
  task_controller.go:436	0xe8a90a		4889bc24a0000000	MOVQ DI, 0xa0(SP)											
  task_controller.go:436	0xe8a912		48898c24d8020000	MOVQ CX, 0x2d8(SP)											
  task_controller.go:436	0xe8a91a		4989f8			MOVQ DI, R8												
  task_controller.go:436	0xe8a91d		488dbc24a8000000	LEAQ 0xa8(SP), DI											
  task_controller.go:313	0xe8a925		4989f1			MOVQ SI, R9												
  task_controller.go:436	0xe8a928		4889ce			MOVQ CX, SI												
  task_controller.go:436	0xe8a92b		48896c24f0		MOVQ BP, -0x10(SP)											
  task_controller.go:436	0xe8a930		488d6c24f0		LEAQ -0x10(SP), BP											
  task_controller.go:436	0xe8a935		e894e45eff		CALL 0x478dce												
  task_controller.go:436	0xe8a93a		488b6d00		MOVQ 0(BP), BP												
  task_controller.go:451	0xe8a93e		488dbc24c0010000	LEAQ 0x1c0(SP), DI											
  task_controller.go:451	0xe8a946		48896c24f0		MOVQ BP, -0x10(SP)											
  task_controller.go:451	0xe8a94b		488d6c24f0		LEAQ -0x10(SP), BP											
  task_controller.go:451	0xe8a950		e85fe15eff		CALL 0x478ab4												
  task_controller.go:451	0xe8a955		488b6d00		MOVQ 0(BP), BP												
  task_controller.go:438	0xe8a959		4c8b9424a8000000	MOVQ 0xa8(SP), R10											
  task_controller.go:438	0xe8a961		4c899424c0010000	MOVQ R10, 0x1c0(SP)											
  task_controller.go:439	0xe8a969		4c8b9424b0000000	MOVQ 0xb0(SP), R10											
  task_controller.go:439	0xe8a971		4c8b9c24b8000000	MOVQ 0xb8(SP), R11											
  task_controller.go:439	0xe8a979		4c899424c8010000	MOVQ R10, 0x1c8(SP)											
  task_controller.go:439	0xe8a981		4c899c24d0010000	MOVQ R11, 0x1d0(SP)											
  task_controller.go:440	0xe8a989		4c8b9424c0000000	MOVQ 0xc0(SP), R10											
  task_controller.go:440	0xe8a991		4c899424d8010000	MOVQ R10, 0x1d8(SP)											
  task_controller.go:441	0xe8a999		4c8b9424c8000000	MOVQ 0xc8(SP), R10											
  task_controller.go:441	0xe8a9a1		4c8b9c24d0000000	MOVQ 0xd0(SP), R11											
  task_controller.go:441	0xe8a9a9		4c899424e0010000	MOVQ R10, 0x1e0(SP)											
  task_controller.go:441	0xe8a9b1		4c899c24e8010000	MOVQ R11, 0x1e8(SP)											
  task_controller.go:442	0xe8a9b9		4c8b9424d8000000	MOVQ 0xd8(SP), R10											
  task_controller.go:442	0xe8a9c1		4c899424f0010000	MOVQ R10, 0x1f0(SP)											
  task_controller.go:443	0xe8a9c9		440fb6942420010000	MOVZX 0x120(SP), R10											
  task_controller.go:443	0xe8a9d2		4488942438020000	MOVB R10, 0x238(SP)											
  task_controller.go:444	0xe8a9da		4c8b942428010000	MOVQ 0x128(SP), R10											
  task_controller.go:444	0xe8a9e2		4c8b9c2430010000	MOVQ 0x130(SP), R11											
  task_controller.go:444	0xe8a9ea		4c89942440020000	MOVQ R10, 0x240(SP)											
  task_controller.go:444	0xe8a9f2		4c899c2448020000	MOVQ R11, 0x248(SP)											
  task_controller.go:445	0xe8a9fa		4c8b9424f0000000	MOVQ 0xf0(SP), R10											
  task_controller.go:445	0xe8aa02		4c8b9c24f8000000	MOVQ 0xf8(SP), R11											
  task_controller.go:445	0xe8aa0a		4c8ba42400010000	MOVQ 0x100(SP), R12											
  task_controller.go:445	0xe8aa12		4c89942408020000	MOVQ R10, 0x208(SP)											
  task_controller.go:445	0xe8aa1a		4c899c2410020000	MOVQ R11, 0x210(SP)											
  task_controller.go:445	0xe8aa22		4c89a42418020000	MOVQ R12, 0x218(SP)											
  task_controller.go:446	0xe8aa2a		4c8b942408010000	MOVQ 0x108(SP), R10											
  task_controller.go:446	0xe8aa32		4c8b9c2410010000	MOVQ 0x110(SP), R11											
  task_controller.go:446	0xe8aa3a		4c8ba42418010000	MOVQ 0x118(SP), R12											
  task_controller.go:446	0xe8aa42		4c89942420020000	MOVQ R10, 0x220(SP)											
  task_controller.go:446	0xe8aa4a		4c899c2428020000	MOVQ R11, 0x228(SP)											
  task_controller.go:446	0xe8aa52		4c89a42430020000	MOVQ R12, 0x230(SP)											
  task_controller.go:447	0xe8aa5a		4c8b942468010000	MOVQ 0x168(SP), R10											
  task_controller.go:447	0xe8aa62		4c8b9c2470010000	MOVQ 0x170(SP), R11											
  task_controller.go:447	0xe8aa6a		4c89942498020000	MOVQ R10, 0x298(SP)											
  task_controller.go:447	0xe8aa72		4c899c24a0020000	MOVQ R11, 0x2a0(SP)											
  task_controller.go:448	0xe8aa7a		4c8b942458010000	MOVQ 0x158(SP), R10											
  task_controller.go:448	0xe8aa82		4c8b9c2460010000	MOVQ 0x160(SP), R11											
  task_controller.go:448	0xe8aa8a		4c89942470020000	MOVQ R10, 0x270(SP)											
  task_controller.go:448	0xe8aa92		4c899c2478020000	MOVQ R11, 0x278(SP)											
  task_controller.go:449	0xe8aa9a		4c8b942478010000	MOVQ 0x178(SP), R10											
  task_controller.go:449	0xe8aaa2		4c8b9c2480010000	MOVQ 0x180(SP), R11											
  task_controller.go:449	0xe8aaaa		4c89942480020000	MOVQ R10, 0x280(SP)											
  task_controller.go:449	0xe8aab2		4c899c2488020000	MOVQ R11, 0x288(SP)											
  task_controller.go:450	0xe8aaba		440fb6942488010000	MOVZX 0x188(SP), R10											
  task_controller.go:450	0xe8aac3		4488942490020000	MOVB R10, 0x290(SP)											
  task_controller.go:451	0xe8aacb		f20f10842490010000	MOVSD_XMM 0x190(SP), X0											
  task_controller.go:451	0xe8aad4		f20f118424b8020000	MOVSD_XMM X0, 0x2b8(SP)											
  task_controller.go:461	0xe8aadd		4c8b9424e0000000	MOVQ 0xe0(SP), R10											
  task_controller.go:461	0xe8aae5		4c8b9c24e8000000	MOVQ 0xe8(SP), R11											
  task_controller.go:461	0xe8aaed		4c899424f8010000	MOVQ R10, 0x1f8(SP)											
  task_controller.go:461	0xe8aaf5		4c899c2400020000	MOVQ R11, 0x200(SP)											
  task_controller.go:462	0xe8aafd		4c8b942438010000	MOVQ 0x138(SP), R10											
  task_controller.go:462	0xe8ab05		4c8b9c2440010000	MOVQ 0x140(SP), R11											
  task_controller.go:462	0xe8ab0d		4c89942450020000	MOVQ R10, 0x250(SP)											
  task_controller.go:462	0xe8ab15		4c899c2458020000	MOVQ R11, 0x258(SP)											
  task_controller.go:463	0xe8ab1d		4c8b942448010000	MOVQ 0x148(SP), R10											
  task_controller.go:463	0xe8ab25		4c8b9c2450010000	MOVQ 0x150(SP), R11											
  task_controller.go:463	0xe8ab2d		4c89942460020000	MOVQ R10, 0x260(SP)											
  task_controller.go:463	0xe8ab35		4c899c2468020000	MOVQ R11, 0x268(SP)											
  task_controller.go:484	0xe8ab3d		49ffc1			INCQ R9													
  task_controller.go:484	0xe8ab40		4c39c8			CMPQ AX, R9												
  task_controller.go:484	0xe8ab43		733b			JAE 0xe8ab80												
  task_controller.go:484	0xe8ab45		4c89cb			MOVQ R9, BX												
  task_controller.go:484	0xe8ab48		4889c1			MOVQ AX, CX												
  task_controller.go:484	0xe8ab4b		bf01000000		MOVL $__minor_os_version__(SB), DI									
  task_controller.go:484	0xe8ab50		488d35091c2b00		LEAQ runtime.types+1406816(SB), SI									
  task_controller.go:484	0xe8ab57		4889d0			MOVQ DX, AX												
  task_controller.go:484	0xe8ab5a		e8e1705eff		CALL runtime.growslice(SB)										
  task_controller.go:436	0xe8ab5f		4c8b8424a0000000	MOVQ 0xa0(SP), R8											
  task_controller.go:484	0xe8ab67		4989d9			MOVQ BX, R9												
  task_controller.go:484	0xe8ab6a		4889c2			MOVQ AX, DX												
  task_controller.go:484	0xe8ab6d		4889c8			MOVQ CX, AX												
  task_controller.go:436	0xe8ab70		488b8c24d8020000	MOVQ 0x2d8(SP), CX											
  task_controller.go:317	0xe8ab78		488b9c2498000000	MOVQ 0x98(SP), BX											
  task_controller.go:484	0xe8ab80		4d8d51ff		LEAQ -0x1(R9), R10											
  task_controller.go:484	0xe8ab84		49c1e208		SHLQ $__major_os_version__+2(SB), R10									
  task_controller.go:484	0xe8ab88		4a8d3c12		LEAQ 0(DX)(R10*1), DI											
  task_controller.go:484	0xe8ab8c		833dbd2f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:484	0xe8ab93		0f8435fdffff		JE 0xe8a8ce												
  task_controller.go:484	0xe8ab99		48899424b8010000	MOVQ DX, 0x1b8(SP)											
  task_controller.go:484	0xe8aba1		4c894c2470		MOVQ R9, 0x70(SP)											
  task_controller.go:484	0xe8aba6		4889442478		MOVQ AX, 0x78(SP)											
  task_controller.go:484	0xe8abab		4889bc24d0020000	MOVQ DI, 0x2d0(SP)											
  task_controller.go:484	0xe8abb3		488d05a61b2b00		LEAQ runtime.types+1406816(SB), AX									
  task_controller.go:484	0xe8abba		4889fb			MOVQ DI, BX												
  task_controller.go:484	0xe8abbd		488d8c24c0010000	LEAQ 0x1c0(SP), CX											
  task_controller.go:484	0xe8abc5		e856a358ff		CALL runtime.wbMove(SB)											
  task_controller.go:313	0xe8abca		488b442478		MOVQ 0x78(SP), AX											
  task_controller.go:436	0xe8abcf		488b8c24d8020000	MOVQ 0x2d8(SP), CX											
  task_controller.go:313	0xe8abd7		488b9424b8010000	MOVQ 0x1b8(SP), DX											
  task_controller.go:317	0xe8abdf		488b9c2498000000	MOVQ 0x98(SP), BX											
  task_controller.go:484	0xe8abe7		488bbc24d0020000	MOVQ 0x2d0(SP), DI											
  task_controller.go:436	0xe8abef		4c8b8424a0000000	MOVQ 0xa0(SP), R8											
  task_controller.go:313	0xe8abf7		4c8b4c2470		MOVQ 0x70(SP), R9											
  task_controller.go:313	0xe8abfc		0f1f4000		NOPL 0(AX)												
  task_controller.go:484	0xe8ac00		e9c9fcffff		JMP 0xe8a8ce												
  task_controller.go:313	0xe8ac05		4889742440		MOVQ SI, 0x40(SP)											
  task_controller.go:313	0xe8ac0a		4889942498010000	MOVQ DX, 0x198(SP)											
  task_controller.go:313	0xe8ac12		4889442448		MOVQ AX, 0x48(SP)											
  task_controller.go:314	0xe8ac17		e8c4035eff		CALL runtime.makemap_small(SB)										
  task_controller.go:314	0xe8ac1c		48898424e0020000	MOVQ AX, 0x2e0(SP)											
  task_controller.go:314	0xe8ac24		4889c3			MOVQ AX, BX												
  task_controller.go:314	0xe8ac27		488d0d61482e00		LEAQ go:string.*+28551(SB), CX										
  task_controller.go:314	0xe8ac2e		bf06000000		MOVL $__major_os_version__(SB), DI									
  task_controller.go:314	0xe8ac33		488d05469c2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:314	0xe8ac3a		e8e1335eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:314	0xe8ac3f		488d0dda801b00		LEAQ runtime.types+384288(SB), CX									
  task_controller.go:314	0xe8ac46		488908			MOVQ CX, 0(AX)												
  task_controller.go:314	0xe8ac49		833d002f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:314	0xe8ac50		740c			JE 0xe8ac5e												
  task_controller.go:314	0xe8ac52		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:314	0xe8ac56		e8c5d75eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:314	0xe8ac5b		498913			MOVQ DX, 0(R11)												
  task_controller.go:314	0xe8ac5e		488d15c3fa0e00		LEAQ runtime.staticuint64s+8(SB), DX									
  task_controller.go:314	0xe8ac65		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:314	0xe8ac69		488d05109c2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:314	0xe8ac70		488b9c24e0020000	MOVQ 0x2e0(SP), BX											
  task_controller.go:314	0xe8ac78		488d0d72802e00		LEAQ go:string.*+42985(SB), CX										
  task_controller.go:314	0xe8ac7f		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:314	0xe8ac84		e897335eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:314	0xe8ac89		488d15907c1b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:314	0xe8ac90		488910			MOVQ DX, 0(AX)												
  task_controller.go:314	0xe8ac93		833db62e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:314	0xe8ac9a		740c			JE 0xe8aca8												
  task_controller.go:314	0xe8ac9c		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:314	0xe8aca0		e87bd75eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:314	0xe8aca5		49890b			MOVQ CX, 0(R11)												
  task_controller.go:314	0xe8aca8		488d0df1e0fd01		LEAQ CAS-Backend/biz/controller..stmp_274(SB), CX							
  task_controller.go:314	0xe8acaf		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:317	0xe8acb3		488b842498000000	MOVQ 0x98(SP), AX											
  task_controller.go:317	0xe8acbb		0f1f440000		NOPL 0(AX)(AX*1)											
  task_controller.go:317	0xe8acc0		e8dbf35dff		CALL runtime.convT64(SB)										
  task_controller.go:317	0xe8acc5		48898424d8020000	MOVQ AX, 0x2d8(SP)											
  task_controller.go:314	0xe8accd		488b9c24e0020000	MOVQ 0x2e0(SP), BX											
  task_controller.go:314	0xe8acd5		488d0d84fa2d00		LEAQ go:string.*+8792(SB), CX										
  task_controller.go:314	0xe8acdc		bf05000000		MOVL $__subsystem__+2(SB), DI										
  task_controller.go:314	0xe8ace1		488d05989b2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:314	0xe8ace8		e833335eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:314	0xe8aced		488d0dec7d1b00		LEAQ runtime.types+383712(SB), CX									
  task_controller.go:314	0xe8acf4		488908			MOVQ CX, 0(AX)												
  task_controller.go:314	0xe8acf7		833d522e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:314	0xe8acfe		6690			NOPW													
  task_controller.go:314	0xe8ad00		750a			JNE 0xe8ad0c												
  task_controller.go:314	0xe8ad02		488b8c24d8020000	MOVQ 0x2d8(SP), CX											
  task_controller.go:314	0xe8ad0a		eb18			JMP 0xe8ad24												
  task_controller.go:314	0xe8ad0c		e82fd75eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:314	0xe8ad11		488b8c24d8020000	MOVQ 0x2d8(SP), CX											
  task_controller.go:314	0xe8ad19		49890b			MOVQ CX, 0(R11)												
  task_controller.go:314	0xe8ad1c		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:314	0xe8ad20		49895308		MOVQ DX, 0x8(R11)											
  task_controller.go:314	0xe8ad24		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:318	0xe8ad28		488b842488000000	MOVQ 0x88(SP), AX											
  task_controller.go:318	0xe8ad30		e86bf35dff		CALL runtime.convT64(SB)										
  task_controller.go:318	0xe8ad35		48898424d8020000	MOVQ AX, 0x2d8(SP)											
  task_controller.go:314	0xe8ad3d		488b9c24e0020000	MOVQ 0x2e0(SP), BX											
  task_controller.go:314	0xe8ad45		488d0d44e92d00		LEAQ go:string.*+4488(SB), CX										
  task_controller.go:314	0xe8ad4c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:314	0xe8ad51		488d05289b2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:314	0xe8ad58		e8c3325eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:314	0xe8ad5d		488d0dfc7d1b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:314	0xe8ad64		488908			MOVQ CX, 0(AX)												
  task_controller.go:314	0xe8ad67		833de22d6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:314	0xe8ad6e		750a			JNE 0xe8ad7a												
  task_controller.go:314	0xe8ad70		488b9424d8020000	MOVQ 0x2d8(SP), DX											
  task_controller.go:314	0xe8ad78		eb18			JMP 0xe8ad92												
  task_controller.go:314	0xe8ad7a		e8c1d65eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:314	0xe8ad7f		488b9424d8020000	MOVQ 0x2d8(SP), DX											
  task_controller.go:314	0xe8ad87		498913			MOVQ DX, 0(R11)												
  task_controller.go:314	0xe8ad8a		488b5808		MOVQ 0x8(AX), BX											
  task_controller.go:314	0xe8ad8e		49895b08		MOVQ BX, 0x8(R11)											
  task_controller.go:314	0xe8ad92		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:319	0xe8ad96		488b442458		MOVQ 0x58(SP), AX											
  task_controller.go:319	0xe8ad9b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_controller.go:319	0xe8ada0		e8fbf25dff		CALL runtime.convT64(SB)										
  task_controller.go:319	0xe8ada5		48898424d8020000	MOVQ AX, 0x2d8(SP)											
  task_controller.go:314	0xe8adad		488b9c24e0020000	MOVQ 0x2e0(SP), BX											
  task_controller.go:314	0xe8adb5		488d0dd8e82d00		LEAQ go:string.*+4492(SB), CX										
  task_controller.go:314	0xe8adbc		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:314	0xe8adc1		488d05b89a2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:314	0xe8adc8		e853325eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:314	0xe8adcd		488d0d8c7d1b00		LEAQ runtime.types+383840(SB), CX									
  task_controller.go:314	0xe8add4		488908			MOVQ CX, 0(AX)												
  task_controller.go:314	0xe8add7		833d722d6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:314	0xe8adde		6690			NOPW													
  task_controller.go:314	0xe8ade0		750a			JNE 0xe8adec												
  task_controller.go:314	0xe8ade2		488b9424d8020000	MOVQ 0x2d8(SP), DX											
  task_controller.go:314	0xe8adea		eb18			JMP 0xe8ae04												
  task_controller.go:314	0xe8adec		e84fd65eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:314	0xe8adf1		488b9424d8020000	MOVQ 0x2d8(SP), DX											
  task_controller.go:314	0xe8adf9		498913			MOVQ DX, 0(R11)												
  task_controller.go:314	0xe8adfc		488b7008		MOVQ 0x8(AX), SI											
  task_controller.go:314	0xe8ae00		49897308		MOVQ SI, 0x8(R11)											
  task_controller.go:314	0xe8ae04		48895008		MOVQ DX, 0x8(AX)											
  task_controller.go:320	0xe8ae08		488b842498010000	MOVQ 0x198(SP), AX											
  task_controller.go:320	0xe8ae10		488b5c2440		MOVQ 0x40(SP), BX											
  task_controller.go:320	0xe8ae15		488b4c2448		MOVQ 0x48(SP), CX											
  task_controller.go:320	0xe8ae1a		e8a1f35dff		CALL runtime.convTslice(SB)										
  task_controller.go:320	0xe8ae1f		48898424d8020000	MOVQ AX, 0x2d8(SP)											
  task_controller.go:314	0xe8ae27		488b9c24e0020000	MOVQ 0x2e0(SP), BX											
  task_controller.go:314	0xe8ae2f		488d0d62e82d00		LEAQ go:string.*+4496(SB), CX										
  task_controller.go:314	0xe8ae36		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_controller.go:314	0xe8ae3b		488d053e9a2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:314	0xe8ae42		e8d9315eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:314	0xe8ae47		488d15b2ca1a00		LEAQ runtime.types+338176(SB), DX									
  task_controller.go:314	0xe8ae4e		488910			MOVQ DX, 0(AX)												
  task_controller.go:314	0xe8ae51		833df82c6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:314	0xe8ae58		750a			JNE 0xe8ae64												
  task_controller.go:314	0xe8ae5a		488b8c24d8020000	MOVQ 0x2d8(SP), CX											
  task_controller.go:314	0xe8ae62		eb18			JMP 0xe8ae7c												
  task_controller.go:314	0xe8ae64		e8d7d55eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:314	0xe8ae69		488b8c24d8020000	MOVQ 0x2d8(SP), CX											
  task_controller.go:314	0xe8ae71		49890b			MOVQ CX, 0(R11)												
  task_controller.go:314	0xe8ae74		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:314	0xe8ae78		49895308		MOVQ DX, 0x8(R11)											
  task_controller.go:314	0xe8ae7c		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8ae80		488d0df9992100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8ae87		48898c24e8020000	MOVQ CX, 0x2e8(SP)											
  context.go:1005		0xe8ae8f		488b8c24e0020000	MOVQ 0x2e0(SP), CX											
  context.go:1005		0xe8ae97		48898c24f0020000	MOVQ CX, 0x2f0(SP)											
  context.go:1005		0xe8ae9f		488d053a102400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8aea6		488d9c24e8020000	LEAQ 0x2e8(SP), BX											
  context.go:1005		0xe8aeae		e8ed4158ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8aeb3		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8aeb8		488d0d7143fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8aebf		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8aec2		488b842408030000	MOVQ 0x308(SP), AX											
  context.go:1005		0xe8aeca		e89148f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:329	0xe8aecf		e9f1f9ffff		JMP 0xe8a8c5												
  task_controller.go:299	0xe8aed4		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:299	0xe8aed9		e802b65eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:299	0xe8aede		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:299	0xe8aee3		e918f7ffff		JMP CAS-Backend/biz/controller.GetAllTaskHandler(SB)							
  :-1				0xe8aee8		cc			INT $__subsystem__(SB)											
  :-1				0xe8aee9		cc			INT $__subsystem__(SB)											
  :-1				0xe8aeea		cc			INT $__subsystem__(SB)											
  :-1				0xe8aeeb		cc			INT $__subsystem__(SB)											
  :-1				0xe8aeec		cc			INT $__subsystem__(SB)											
  :-1				0xe8aeed		cc			INT $__subsystem__(SB)											
  :-1				0xe8aeee		cc			INT $__subsystem__(SB)											
  :-1				0xe8aeef		cc			INT $__subsystem__(SB)											
  :-1				0xe8aef0		cc			INT $__subsystem__(SB)											
  :-1				0xe8aef1		cc			INT $__subsystem__(SB)											
  :-1				0xe8aef2		cc			INT $__subsystem__(SB)											
  :-1				0xe8aef3		cc			INT $__subsystem__(SB)											
  :-1				0xe8aef4		cc			INT $__subsystem__(SB)											
  :-1				0xe8aef5		cc			INT $__subsystem__(SB)											
  :-1				0xe8aef6		cc			INT $__subsystem__(SB)											
  :-1				0xe8aef7		cc			INT $__subsystem__(SB)											
  :-1				0xe8aef8		cc			INT $__subsystem__(SB)											
  :-1				0xe8aef9		cc			INT $__subsystem__(SB)											
  :-1				0xe8aefa		cc			INT $__subsystem__(SB)											
  :-1				0xe8aefb		cc			INT $__subsystem__(SB)											
  :-1				0xe8aefc		cc			INT $__subsystem__(SB)											
  :-1				0xe8aefd		cc			INT $__subsystem__(SB)											
  :-1				0xe8aefe		cc			INT $__subsystem__(SB)											
  :-1				0xe8aeff		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.TaskStatusHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:673	0xe8af00		4c8da42418feffff		LEAQ 0xfffffe18(SP), R12										
  task_controller.go:673	0xe8af08		4d3b6610			CMPQ R12, 0x10(R14)											
  task_controller.go:673	0xe8af0c		0f86cf0c0000			JBE 0xe8bbe1												
  task_controller.go:673	0xe8af12		55				PUSHQ BP												
  task_controller.go:673	0xe8af13		4889e5				MOVQ SP, BP												
  task_controller.go:673	0xe8af16		4881ec60020000			SUBQ $__file_alignment__+96(SB), SP									
  task_controller.go:682	0xe8af1d		4889842470020000		MOVQ AX, 0x270(SP)											
  task_controller.go:674	0xe8af25		488d1dfd7d2e00			LEAQ go:string.*+43041(SB), BX										
  task_controller.go:674	0xe8af2c		b907000000			MOVL $__major_os_version__+1(SB), CX									
  task_controller.go:674	0xe8af31		e88a10f7ff			CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_controller.go:675	0xe8af36		e8650366ff			CALL strconv.Atoi(SB)											
  task_controller.go:675	0xe8af3b		4889442458			MOVQ AX, 0x58(SP)											
  task_controller.go:676	0xe8af40		90				NOPL													
  context.go:465		0xe8af41		488d1dd37d2e00			LEAQ go:string.*+43027(SB), BX										
  context.go:465		0xe8af48		b907000000			MOVL $__major_os_version__+1(SB), CX									
  context.go:465		0xe8af4d		488b842470020000		MOVQ 0x270(SP), AX											
  context.go:465		0xe8af55		e86612f7ff			CALL github.com/gin-gonic/gin.(*Context).GetQueryArray(SB)						
  context.go:465		0xe8af5a		4889842480000000		MOVQ AX, 0x80(SP)											
  context.go:465		0xe8af62		48895c2438			MOVQ BX, 0x38(SP)											
  context.go:465		0xe8af67		48894c2440			MOVQ CX, 0x40(SP)											
  task_controller.go:677	0xe8af6c		488b842470020000		MOVQ 0x270(SP), AX											
  task_controller.go:677	0xe8af74		488d1d0ba52e00			LEAQ go:string.*+53118(SB), BX										
  task_controller.go:677	0xe8af7b		b909000000			MOVL $__major_os_version__+3(SB), CX									
  task_controller.go:677	0xe8af80		e83b10f7ff			CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_controller.go:677	0xe8af85		4889842490000000		MOVQ AX, 0x90(SP)											
  task_controller.go:677	0xe8af8d		48895c2450			MOVQ BX, 0x50(SP)											
  task_controller.go:679	0xe8af92		440f11bc24d8010000		MOVUPS X15, 0x1d8(SP)											
  task_controller.go:679	0xe8af9b		440f11bc24e8010000		MOVUPS X15, 0x1e8(SP)											
  task_controller.go:679	0xe8afa4		440f11bc24f8010000		MOVUPS X15, 0x1f8(SP)											
  task_controller.go:679	0xe8afad		488b442458			MOVQ 0x58(SP), AX											
  task_controller.go:679	0xe8afb2		e8e9f05dff			CALL runtime.convT64(SB)										
  task_controller.go:679	0xe8afb7		488d15a27b1b00			LEAQ runtime.types+383840(SB), DX									
  task_controller.go:679	0xe8afbe		48899424d8010000		MOVQ DX, 0x1d8(SP)											
  task_controller.go:679	0xe8afc6		48898424e0010000		MOVQ AX, 0x1e0(SP)											
  task_controller.go:679	0xe8afce		488b842480000000		MOVQ 0x80(SP), AX											
  task_controller.go:679	0xe8afd6		488b5c2438			MOVQ 0x38(SP), BX											
  task_controller.go:679	0xe8afdb		488b4c2440			MOVQ 0x40(SP), CX											
  task_controller.go:679	0xe8afe0		e8dbf15dff			CALL runtime.convTslice(SB)										
  task_controller.go:679	0xe8afe5		488d1594d91a00			LEAQ runtime.types+342400(SB), DX									
  task_controller.go:679	0xe8afec		48899424e8010000		MOVQ DX, 0x1e8(SP)											
  task_controller.go:679	0xe8aff4		48898424f0010000		MOVQ AX, 0x1f0(SP)											
  task_controller.go:679	0xe8affc		488b842490000000		MOVQ 0x90(SP), AX											
  task_controller.go:679	0xe8b004		488b5c2450			MOVQ 0x50(SP), BX											
  task_controller.go:679	0xe8b009		e812f15dff			CALL runtime.convTstring(SB)										
  task_controller.go:679	0xe8b00e		488d150b791b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:679	0xe8b015		48899424f8010000		MOVQ DX, 0x1f8(SP)											
  task_controller.go:679	0xe8b01d		4889842400020000		MOVQ AX, 0x200(SP)											
  print.go:233			0xe8b025		488b1d54706802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8b02c		488d05ad0afe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8b033		488d0dc7973100			LEAQ go:string.*+246521(SB), CX										
  print.go:233			0xe8b03a		bf3f000000			MOVL $__major_os_version__+57(SB), DI									
  print.go:233			0xe8b03f		488db424d8010000		LEAQ 0x1d8(SP), SI											
  print.go:233			0xe8b047		41b803000000			MOVL $__subsystem__(SB), R8										
  print.go:233			0xe8b04d		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8b050		e8cb4169ff			CALL fmt.Fprintf(SB)											
  task_controller.go:682	0xe8b055		488b542438			MOVQ 0x38(SP), DX											
  task_controller.go:682	0xe8b05a		660f1f440000			NOPW 0(AX)(AX*1)											
  task_controller.go:682	0xe8b060		4885d2				TESTQ DX, DX												
  task_controller.go:682	0xe8b063		0f8585030000			JNE 0xe8b3ee												
  task_controller.go:682	0xe8b069		488b742450			MOVQ 0x50(SP), SI											
  task_controller.go:682	0xe8b06e		4885f6				TESTQ SI, SI												
  task_controller.go:682	0xe8b071		0f8477030000			JE 0xe8b3ee												
  task_controller.go:683	0xe8b077		48c78424a000000000000000	MOVQ $0x0, 0xa0(SP)											
  task_controller.go:23		0xe8b083		488b15ceb36802			MOVQ CAS-Backend/config.Cfg+56(SB), DX									
  task_controller.go:23		0xe8b08a		4885d2				TESTQ DX, DX												
  task_controller.go:23		0xe8b08d		7409				JE 0xe8b098												
  task_controller.go:23		0xe8b08f		4c8b05bab36802			MOVQ CAS-Backend/config.Cfg+48(SB), R8									
  task_controller.go:684	0xe8b096		eb22				JMP 0xe8b0ba												
  task_controller.go:26		0xe8b098		488b1569ad1200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), DX							
  task_controller.go:26		0xe8b09f		90				NOPL													
  task_controller.go:26		0xe8b0a0		4885d2				TESTQ DX, DX												
  task_controller.go:26		0xe8b0a3		7409				JE 0xe8b0ae												
  task_controller.go:26		0xe8b0a5		4c8b0554ad1200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), R8							
  task_controller.go:684	0xe8b0ac		eb0c				JMP 0xe8b0ba												
  task_controller.go:684	0xe8b0ae		ba09000000			MOVL $__major_os_version__+3(SB), DX									
  task_controller.go:684	0xe8b0b3		4c8d0549a22e00			LEAQ go:string.*+52731(SB), R8										
  task_controller.go:684	0xe8b0ba		48c784245802000000000000	MOVQ $0x0, 0x258(SP)											
  task_controller.go:684	0xe8b0c6		4c8d0dd30b0000			LEAQ CAS-Backend/biz/controller.TaskStatusHandler.func1(SB), R9						
  task_controller.go:684	0xe8b0cd		4c898c2440020000		MOVQ R9, 0x240(SP)											
  task_controller.go:684	0xe8b0d5		4889b42450020000		MOVQ SI, 0x250(SP)											
  task_controller.go:684	0xe8b0dd		4c8b8c2490000000		MOVQ 0x90(SP), R9											
  task_controller.go:684	0xe8b0e5		4c898c2448020000		MOVQ R9, 0x248(SP)											
  task_controller.go:684	0xe8b0ed		4c8d9424a0000000		LEAQ 0xa0(SP), R10											
  task_controller.go:684	0xe8b0f5		4c89942458020000		MOVQ R10, 0x258(SP)											
  task_controller.go:684	0xe8b0fd		4c89c0				MOVQ R8, AX												
  task_controller.go:684	0xe8b100		4889d3				MOVQ DX, BX												
  task_controller.go:684	0xe8b103		b9064b0000			MOVL $__size_of_stack_commit__+15110(SB), CX								
  task_controller.go:684	0xe8b108		488dbc2440020000		LEAQ 0x240(SP), DI											
  task_controller.go:684	0xe8b110		e8eb84f8ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_controller.go:692	0xe8b115		4885c0				TESTQ AX, AX												
  task_controller.go:692	0xe8b118		0f8424010000			JE 0xe8b242												
  task_controller.go:693	0xe8b11e		440f11bc24c8010000		MOVUPS X15, 0x1c8(SP)											
  task_controller.go:693	0xe8b127		7404				JE 0xe8b12d												
  task_controller.go:693	0xe8b129		488b4008			MOVQ 0x8(AX), AX											
  task_controller.go:693	0xe8b12d		48898424c8010000		MOVQ AX, 0x1c8(SP)											
  task_controller.go:693	0xe8b135		48899c24d0010000		MOVQ BX, 0x1d0(SP)											
  print.go:233			0xe8b13d		488b1d3c6f6802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8b144		488d059509fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8b14b		488d0d4fbc3000			LEAQ go:string.*+190617(SB), CX										
  print.go:233			0xe8b152		bf29000000			MOVL $__major_os_version__+35(SB), DI									
  print.go:233			0xe8b157		488db424c8010000		LEAQ 0x1c8(SP), SI											
  print.go:233			0xe8b15f		41b801000000			MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8b165		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8b168		e8b34069ff			CALL fmt.Fprintf(SB)											
  task_controller.go:694	0xe8b16d		e86efe5dff			CALL runtime.makemap_small(SB)										
  task_controller.go:694	0xe8b172		48898424b0000000		MOVQ AX, 0xb0(SP)											
  task_controller.go:694	0xe8b17a		488b156f226d02			MOVQ CAS-Backend/biz/controller.taskstatus(SB), DX							
  task_controller.go:694	0xe8b181		4889d0				MOVQ DX, AX												
  task_controller.go:694	0xe8b184		e817ef5dff			CALL runtime.convT64(SB)										
  task_controller.go:694	0xe8b189		48898424a8000000		MOVQ AX, 0xa8(SP)											
  task_controller.go:694	0xe8b191		488b9c24b0000000		MOVQ 0xb0(SP), BX											
  task_controller.go:694	0xe8b199		488d0dc7402e00			LEAQ go:string.*+27999(SB), CX										
  task_controller.go:694	0xe8b1a0		bf06000000			MOVL $__major_os_version__(SB), DI									
  task_controller.go:694	0xe8b1a5		488d05d4962100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:694	0xe8b1ac		e86f2e5eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:694	0xe8b1b1		488d15a8791b00			LEAQ runtime.types+383840(SB), DX									
  task_controller.go:694	0xe8b1b8		488910				MOVQ DX, 0(AX)												
  task_controller.go:694	0xe8b1bb		833d8e296d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:694	0xe8b1c2		750a				JNE 0xe8b1ce												
  task_controller.go:694	0xe8b1c4		488b8c24a8000000		MOVQ 0xa8(SP), CX											
  task_controller.go:694	0xe8b1cc		eb18				JMP 0xe8b1e6												
  task_controller.go:694	0xe8b1ce		e86dd25eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:694	0xe8b1d3		488b8c24a8000000		MOVQ 0xa8(SP), CX											
  task_controller.go:694	0xe8b1db		49890b				MOVQ CX, 0(R11)												
  task_controller.go:694	0xe8b1de		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:694	0xe8b1e2		49895308			MOVQ DX, 0x8(R11)											
  task_controller.go:694	0xe8b1e6		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8b1ea		488d0d8f962100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8b1f1		48898c2430020000		MOVQ CX, 0x230(SP)											
  context.go:1005		0xe8b1f9		488b8c24b0000000		MOVQ 0xb0(SP), CX											
  context.go:1005		0xe8b201		48898c2438020000		MOVQ CX, 0x238(SP)											
  context.go:1005		0xe8b209		488d05d00c2400			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8b210		488d9c2430020000		LEAQ 0x230(SP), BX											
  context.go:1005		0xe8b218		e8833e58ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8b21d		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8b222		488d0d0740fe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8b229		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8b22c		488b842470020000		MOVQ 0x270(SP), AX											
  context.go:1005		0xe8b234		e82745f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:695	0xe8b239		4881c460020000			ADDQ $__file_alignment__+96(SB), SP									
  task_controller.go:695	0xe8b240		5d				POPQ BP													
  task_controller.go:695	0xe8b241		c3				RET													
  task_controller.go:697	0xe8b242		488b8c24a0000000		MOVQ 0xa0(SP), CX											
  task_controller.go:697	0xe8b24a		488b4958			MOVQ 0x58(CX), CX											
  task_controller.go:697	0xe8b24e		48894c2460			MOVQ CX, 0x60(SP)											
  task_controller.go:698	0xe8b253		440f11bc24a8010000		MOVUPS X15, 0x1a8(SP)											
  task_controller.go:698	0xe8b25c		440f11bc24b8010000		MOVUPS X15, 0x1b8(SP)											
  task_controller.go:698	0xe8b265		488b842490000000		MOVQ 0x90(SP), AX											
  task_controller.go:698	0xe8b26d		488b5c2450			MOVQ 0x50(SP), BX											
  task_controller.go:698	0xe8b272		e8a9ee5dff			CALL runtime.convTstring(SB)										
  task_controller.go:698	0xe8b277		488d0da2761b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:698	0xe8b27e		48898c24a8010000		MOVQ CX, 0x1a8(SP)											
  task_controller.go:698	0xe8b286		48898424b0010000		MOVQ AX, 0x1b0(SP)											
  task_controller.go:698	0xe8b28e		488b442460			MOVQ 0x60(SP), AX											
  task_controller.go:698	0xe8b293		e808ee5dff			CALL runtime.convT64(SB)										
  task_controller.go:698	0xe8b298		488d0dc1781b00			LEAQ runtime.types+383840(SB), CX									
  task_controller.go:698	0xe8b29f		48898c24b8010000		MOVQ CX, 0x1b8(SP)											
  task_controller.go:698	0xe8b2a7		48898424c0010000		MOVQ AX, 0x1c0(SP)											
  print.go:233			0xe8b2af		488b1dca6d6802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8b2b6		488d052308fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8b2bd		bf26000000			MOVL $__major_os_version__+32(SB), DI									
  print.go:233			0xe8b2c2		488db424a8010000		LEAQ 0x1a8(SP), SI											
  print.go:233			0xe8b2ca		41b802000000			MOVL $__minor_os_version__+1(SB), R8									
  print.go:233			0xe8b2d0		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8b2d3		488d0d238b3000			LEAQ go:string.*+178421(SB), CX										
  print.go:233			0xe8b2da		e8413f69ff			CALL fmt.Fprintf(SB)											
  task_controller.go:699	0xe8b2df		488b442458			MOVQ 0x58(SP), AX											
  task_controller.go:699	0xe8b2e4		4885c0				TESTQ AX, AX												
  task_controller.go:699	0xe8b2e7		7e27				JLE 0xe8b310												
  task_controller.go:699	0xe8b2e9		488b5c2460			MOVQ 0x60(SP), BX											
  task_controller.go:699	0xe8b2ee		48391dfb206d02			CMPQ CAS-Backend/biz/controller.taskstatus(SB), BX							
  task_controller.go:699	0xe8b2f5		7419				JE 0xe8b310												
  task_controller.go:700	0xe8b2f7		e844e1b0ff			CALL CAS-Backend/biz/dao.UpdateTaskStatusByID(SB)							
  task_controller.go:700	0xe8b2fc		0f1f4000			NOPL 0(AX)												
  task_controller.go:700	0xe8b300		84c0				TESTL AL, AL												
  task_controller.go:700	0xe8b302		740c				JE 0xe8b310												
  task_controller.go:701	0xe8b304		488b442460			MOVQ 0x60(SP), AX											
  task_controller.go:701	0xe8b309		488905e0206d02			MOVQ AX, CAS-Backend/biz/controller.taskstatus(SB)							
  task_controller.go:704	0xe8b310		e8cbfc5dff			CALL runtime.makemap_small(SB)										
  task_controller.go:704	0xe8b315		48898424b0000000		MOVQ AX, 0xb0(SP)											
  task_controller.go:704	0xe8b31d		488b0dcc206d02			MOVQ CAS-Backend/biz/controller.taskstatus(SB), CX							
  task_controller.go:704	0xe8b324		4889c8				MOVQ CX, AX												
  task_controller.go:704	0xe8b327		e874ed5dff			CALL runtime.convT64(SB)										
  task_controller.go:704	0xe8b32c		48898424a8000000		MOVQ AX, 0xa8(SP)											
  task_controller.go:704	0xe8b334		488b9c24b0000000		MOVQ 0xb0(SP), BX											
  task_controller.go:704	0xe8b33c		488d0d243f2e00			LEAQ go:string.*+27999(SB), CX										
  task_controller.go:704	0xe8b343		bf06000000			MOVL $__major_os_version__(SB), DI									
  task_controller.go:704	0xe8b348		488d0531952100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:704	0xe8b34f		e8cc2c5eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:704	0xe8b354		488d0d05781b00			LEAQ runtime.types+383840(SB), CX									
  task_controller.go:704	0xe8b35b		488908				MOVQ CX, 0(AX)												
  task_controller.go:704	0xe8b35e		833deb276d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:704	0xe8b365		750a				JNE 0xe8b371												
  task_controller.go:704	0xe8b367		488b8c24a8000000		MOVQ 0xa8(SP), CX											
  task_controller.go:704	0xe8b36f		eb18				JMP 0xe8b389												
  task_controller.go:704	0xe8b371		e8cad05eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:704	0xe8b376		488b8c24a8000000		MOVQ 0xa8(SP), CX											
  task_controller.go:704	0xe8b37e		49890b				MOVQ CX, 0(R11)												
  task_controller.go:704	0xe8b381		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:704	0xe8b385		49895308			MOVQ DX, 0x8(R11)											
  task_controller.go:704	0xe8b389		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8b38d		488d0dec942100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8b394		48898c2430020000		MOVQ CX, 0x230(SP)											
  context.go:1005		0xe8b39c		488b8c24b0000000		MOVQ 0xb0(SP), CX											
  context.go:1005		0xe8b3a4		48898c2438020000		MOVQ CX, 0x238(SP)											
  context.go:1005		0xe8b3ac		488d052d0b2400			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8b3b3		488d9c2430020000		LEAQ 0x230(SP), BX											
  context.go:1005		0xe8b3bb		0f1f440000			NOPL 0(AX)(AX*1)											
  context.go:1005		0xe8b3c0		e8db3c58ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8b3c5		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8b3ca		488d0d5f3efe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8b3d1		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8b3d4		488b842470020000		MOVQ 0x270(SP), AX											
  context.go:1005		0xe8b3dc		0f1f4000			NOPL 0(AX)												
  context.go:1005		0xe8b3e0		e87b43f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:705	0xe8b3e5		4881c460020000			ADDQ $__file_alignment__+96(SB), SP									
  task_controller.go:705	0xe8b3ec		5d				POPQ BP													
  task_controller.go:705	0xe8b3ed		c3				RET													
  task_controller.go:708	0xe8b3ee		48c784249800000000000000	MOVQ $0x0, 0x98(SP)											
  task_controller.go:23		0xe8b3fa		488b3557b06802			MOVQ CAS-Backend/config.Cfg+56(SB), SI									
  task_controller.go:23		0xe8b401		4885f6				TESTQ SI, SI												
  task_controller.go:23		0xe8b404		7409				JE 0xe8b40f												
  task_controller.go:23		0xe8b406		4c8b0543b06802			MOVQ CAS-Backend/config.Cfg+48(SB), R8									
  task_controller.go:709	0xe8b40d		eb21				JMP 0xe8b430												
  task_controller.go:26		0xe8b40f		488b35f2a91200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), SI							
  task_controller.go:26		0xe8b416		4885f6				TESTQ SI, SI												
  task_controller.go:26		0xe8b419		7409				JE 0xe8b424												
  task_controller.go:26		0xe8b41b		4c8b05dea91200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), R8							
  task_controller.go:709	0xe8b422		eb0c				JMP 0xe8b430												
  task_controller.go:709	0xe8b424		be09000000			MOVL $__major_os_version__+3(SB), SI									
  task_controller.go:709	0xe8b429		4c8d05d39e2e00			LEAQ go:string.*+52731(SB), R8										
  task_controller.go:709	0xe8b430		440f11bc2408020000		MOVUPS X15, 0x208(SP)											
  task_controller.go:709	0xe8b439		440f11bc2410020000		MOVUPS X15, 0x210(SP)											
  task_controller.go:709	0xe8b442		440f11bc2420020000		MOVUPS X15, 0x220(SP)											
  task_controller.go:709	0xe8b44b		4c8d0dae070000			LEAQ CAS-Backend/biz/controller.TaskStatusHandler.func2(SB), R9						
  task_controller.go:709	0xe8b452		4c898c2408020000		MOVQ R9, 0x208(SP)											
  task_controller.go:709	0xe8b45a		4889942418020000		MOVQ DX, 0x218(SP)											
  task_controller.go:709	0xe8b462		488b542440			MOVQ 0x40(SP), DX											
  task_controller.go:709	0xe8b467		4889942420020000		MOVQ DX, 0x220(SP)											
  task_controller.go:709	0xe8b46f		488b942480000000		MOVQ 0x80(SP), DX											
  task_controller.go:709	0xe8b477		4889942410020000		MOVQ DX, 0x210(SP)											
  task_controller.go:709	0xe8b47f		488d942498000000		LEAQ 0x98(SP), DX											
  task_controller.go:709	0xe8b487		4889942428020000		MOVQ DX, 0x228(SP)											
  task_controller.go:709	0xe8b48f		4c89c0				MOVQ R8, AX												
  task_controller.go:709	0xe8b492		4889f3				MOVQ SI, BX												
  task_controller.go:709	0xe8b495		b9044b0000			MOVL $__size_of_stack_commit__+15108(SB), CX								
  task_controller.go:709	0xe8b49a		488dbc2408020000		LEAQ 0x208(SP), DI											
  task_controller.go:709	0xe8b4a2		e85981f8ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_controller.go:717	0xe8b4a7		4885c0				TESTQ AX, AX												
  task_controller.go:717	0xe8b4aa		752e				JNE 0xe8b4da												
  task_controller.go:725	0xe8b4ac		488b8c2498000000		MOVQ 0x98(SP), CX											
  task_controller.go:725	0xe8b4b4		488b91b8000000			MOVQ 0xb8(CX), DX											
  task_controller.go:725	0xe8b4bb		4889942488000000		MOVQ DX, 0x88(SP)											
  task_controller.go:725	0xe8b4c3		488b89c0000000			MOVQ 0xc0(CX), CX											
  task_controller.go:725	0xe8b4ca		48894c2448			MOVQ CX, 0x48(SP)											
  task_controller.go:726	0xe8b4cf		4889d6				MOVQ DX, SI												
  task_controller.go:725	0xe8b4d2		4889c8				MOVQ CX, AX												
  task_controller.go:726	0xe8b4d5		e926020000			JMP 0xe8b700												
  task_controller.go:718	0xe8b4da		440f11bc2498010000		MOVUPS X15, 0x198(SP)											
  task_controller.go:718	0xe8b4e3		7404				JE 0xe8b4e9												
  task_controller.go:718	0xe8b4e5		488b4008			MOVQ 0x8(AX), AX											
  task_controller.go:718	0xe8b4e9		4889842498010000		MOVQ AX, 0x198(SP)											
  task_controller.go:718	0xe8b4f1		48899c24a0010000		MOVQ BX, 0x1a0(SP)											
  print.go:233			0xe8b4f9		488b1d806b6802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8b500		488d05d905fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8b507		488d0d9a263000			LEAQ go:string.*+153248(SB), CX										
  print.go:233			0xe8b50e		bf20000000			MOVL $__major_os_version__+26(SB), DI									
  print.go:233			0xe8b513		488db42498010000		LEAQ 0x198(SP), SI											
  print.go:233			0xe8b51b		41b801000000			MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8b521		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8b524		e8f73c69ff			CALL fmt.Fprintf(SB)											
  task_controller.go:719	0xe8b529		e8b2fa5dff			CALL runtime.makemap_small(SB)										
  task_controller.go:719	0xe8b52e		48898424b0000000		MOVQ AX, 0xb0(SP)											
  task_controller.go:720	0xe8b536		488b15b31e6d02			MOVQ CAS-Backend/biz/controller.taskstatus(SB), DX							
  task_controller.go:720	0xe8b53d		4889d0				MOVQ DX, AX												
  task_controller.go:720	0xe8b540		e85beb5dff			CALL runtime.convT64(SB)										
  task_controller.go:720	0xe8b545		48898424a8000000		MOVQ AX, 0xa8(SP)											
  task_controller.go:719	0xe8b54d		488b9c24b0000000		MOVQ 0xb0(SP), BX											
  task_controller.go:719	0xe8b555		488d0d0b3d2e00			LEAQ go:string.*+27999(SB), CX										
  task_controller.go:719	0xe8b55c		bf06000000			MOVL $__major_os_version__(SB), DI									
  task_controller.go:719	0xe8b561		488d0518932100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:719	0xe8b568		e8b32a5eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:719	0xe8b56d		488d15ec751b00			LEAQ runtime.types+383840(SB), DX									
  task_controller.go:719	0xe8b574		488910				MOVQ DX, 0(AX)												
  task_controller.go:719	0xe8b577		833dd2256d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:719	0xe8b57e		6690				NOPW													
  task_controller.go:719	0xe8b580		750a				JNE 0xe8b58c												
  task_controller.go:719	0xe8b582		488b8c24a8000000		MOVQ 0xa8(SP), CX											
  task_controller.go:719	0xe8b58a		eb18				JMP 0xe8b5a4												
  task_controller.go:719	0xe8b58c		e8afce5eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:719	0xe8b591		488b8c24a8000000		MOVQ 0xa8(SP), CX											
  task_controller.go:719	0xe8b599		49890b				MOVQ CX, 0(R11)												
  task_controller.go:719	0xe8b59c		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:719	0xe8b5a0		49895308			MOVQ DX, 0x8(R11)											
  task_controller.go:719	0xe8b5a4		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8b5a8		488d0dd1922100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8b5af		48898c2430020000		MOVQ CX, 0x230(SP)											
  context.go:1005		0xe8b5b7		488b8c24b0000000		MOVQ 0xb0(SP), CX											
  context.go:1005		0xe8b5bf		48898c2438020000		MOVQ CX, 0x238(SP)											
  context.go:1005		0xe8b5c7		488d0512092400			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8b5ce		488d9c2430020000		LEAQ 0x230(SP), BX											
  context.go:1005		0xe8b5d6		e8c53a58ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8b5db		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8b5e0		488d0d493cfe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8b5e7		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8b5ea		488b842470020000		MOVQ 0x270(SP), AX											
  context.go:1005		0xe8b5f2		e86941f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:722	0xe8b5f7		4881c460020000			ADDQ $__file_alignment__+96(SB), SP									
  task_controller.go:722	0xe8b5fe		5d				POPQ BP													
  task_controller.go:722	0xe8b5ff		90				NOPL													
  task_controller.go:722	0xe8b600		c3				RET													
  task_controller.go:726	0xe8b601		48894c2478			MOVQ CX, 0x78(SP)											
  task_controller.go:726	0xe8b606		48899424a8000000		MOVQ DX, 0xa8(SP)											
  task_controller.go:726	0xe8b60e		488b02				MOVQ 0(DX), AX												
  task_controller.go:726	0xe8b611		488b5a08			MOVQ 0x8(DX), BX											
  task_controller.go:726	0xe8b615		488b4a10			MOVQ 0x10(DX), CX											
  task_controller.go:726	0xe8b619		48894c2470			MOVQ CX, 0x70(SP)											
  task_controller.go:726	0xe8b61e		488b7218			MOVQ 0x18(DX), SI											
  task_controller.go:726	0xe8b622		4889742468			MOVQ SI, 0x68(SP)											
  task_controller.go:727	0xe8b627		440f11bc2468010000		MOVUPS X15, 0x168(SP)											
  task_controller.go:727	0xe8b630		440f11bc2478010000		MOVUPS X15, 0x178(SP)											
  task_controller.go:727	0xe8b639		440f11bc2488010000		MOVUPS X15, 0x188(SP)											
  task_controller.go:727	0xe8b642		e8d9ea5dff			CALL runtime.convTstring(SB)										
  task_controller.go:727	0xe8b647		488d0dd2721b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:727	0xe8b64e		48898c2468010000		MOVQ CX, 0x168(SP)											
  task_controller.go:727	0xe8b656		4889842470010000		MOVQ AX, 0x170(SP)											
  task_controller.go:727	0xe8b65e		488b442470			MOVQ 0x70(SP), AX											
  task_controller.go:727	0xe8b663		e838ea5dff			CALL runtime.convT64(SB)										
  task_controller.go:727	0xe8b668		488d0df1741b00			LEAQ runtime.types+383840(SB), CX									
  task_controller.go:727	0xe8b66f		48898c2478010000		MOVQ CX, 0x178(SP)											
  task_controller.go:727	0xe8b677		4889842480010000		MOVQ AX, 0x180(SP)											
  task_controller.go:727	0xe8b67f		488b442468			MOVQ 0x68(SP), AX											
  task_controller.go:727	0xe8b684		e817ea5dff			CALL runtime.convT64(SB)										
  task_controller.go:727	0xe8b689		488d0dd0741b00			LEAQ runtime.types+383840(SB), CX									
  task_controller.go:727	0xe8b690		48898c2488010000		MOVQ CX, 0x188(SP)											
  task_controller.go:727	0xe8b698		4889842490010000		MOVQ AX, 0x190(SP)											
  print.go:233			0xe8b6a0		488b1dd9696802			MOVQ os.Stdout(SB), BX											
  task_controller.go:726	0xe8b6a7		488b542478			MOVQ 0x78(SP), DX											
  task_controller.go:726	0xe8b6ac		48ffca				DECQ DX													
  task_controller.go:726	0xe8b6af		4889542478			MOVQ DX, 0x78(SP)											
  print.go:233			0xe8b6b4		488d052504fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8b6bb		bf2c000000			MOVL $__major_os_version__+38(SB), DI									
  print.go:233			0xe8b6c0		488db42468010000		LEAQ 0x168(SP), SI											
  print.go:233			0xe8b6c8		41b803000000			MOVL $__subsystem__(SB), R8										
  print.go:233			0xe8b6ce		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8b6d1		488d0dcfdc3000			LEAQ go:string.*+200351(SB), CX										
  print.go:233			0xe8b6d8		e8433b69ff			CALL fmt.Fprintf(SB)											
  task_controller.go:726	0xe8b6dd		488b9424a8000000		MOVQ 0xa8(SP), DX											
  task_controller.go:726	0xe8b6e5		4883c220			ADDQ $__major_os_version__+26(SB), DX									
  task_controller.go:736	0xe8b6e9		488b442448			MOVQ 0x48(SP), AX											
  task_controller.go:738	0xe8b6ee		488bb42488000000		MOVQ 0x88(SP), SI											
  task_controller.go:726	0xe8b6f6		488b4c2478			MOVQ 0x78(SP), CX											
  task_controller.go:726	0xe8b6fb		0f1f440000			NOPL 0(AX)(AX*1)											
  task_controller.go:726	0xe8b700		4885c9				TESTQ CX, CX												
  task_controller.go:726	0xe8b703		0f8ff8feffff			JG 0xe8b601												
  task_controller.go:729	0xe8b709		488dbc2418010000		LEAQ 0x118(SP), DI											
  task_controller.go:729	0xe8b711		488d7fd0			LEAQ -0x30(DI), DI											
  task_controller.go:729	0xe8b715		660f1f840000000000		NOPW 0(AX)(AX*1)											
  task_controller.go:729	0xe8b71e		6690				NOPW													
  task_controller.go:729	0xe8b720		48896c24f0			MOVQ BP, -0x10(SP)											
  task_controller.go:729	0xe8b725		488d6c24f0			LEAQ -0x10(SP), BP											
  task_controller.go:729	0xe8b72a		e8c1d35eff			CALL 0x478af0												
  task_controller.go:729	0xe8b72f		488b6d00			MOVQ 0(BP), BP												
  task_controller.go:730	0xe8b733		488b8c2498000000		MOVQ 0x98(SP), CX											
  task_controller.go:730	0xe8b73b		488b5940			MOVQ 0x40(CX), BX											
  task_controller.go:730	0xe8b73f		488b4138			MOVQ 0x38(CX), AX											
  task_controller.go:730	0xe8b743		e8d8e95dff			CALL runtime.convTstring(SB)										
  task_controller.go:730	0xe8b748		488d0dd1711b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:730	0xe8b74f		48898c2418010000		MOVQ CX, 0x118(SP)											
  task_controller.go:730	0xe8b757		4889842420010000		MOVQ AX, 0x120(SP)											
  task_controller.go:731	0xe8b75f		488b942498000000		MOVQ 0x98(SP), DX											
  task_controller.go:731	0xe8b767		488b9a90000000			MOVQ 0x90(DX), BX											
  task_controller.go:731	0xe8b76e		488b8288000000			MOVQ 0x88(DX), AX											
  task_controller.go:731	0xe8b775		e8a6e95dff			CALL runtime.convTstring(SB)										
  task_controller.go:731	0xe8b77a		488d0d9f711b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:731	0xe8b781		48898c2428010000		MOVQ CX, 0x128(SP)											
  task_controller.go:731	0xe8b789		4889842430010000		MOVQ AX, 0x130(SP)											
  task_controller.go:732	0xe8b791		488b942498000000		MOVQ 0x98(SP), DX											
  task_controller.go:732	0xe8b799		488b9ab0000000			MOVQ 0xb0(DX), BX											
  task_controller.go:732	0xe8b7a0		488b82a8000000			MOVQ 0xa8(DX), AX											
  task_controller.go:732	0xe8b7a7		e874e95dff			CALL runtime.convTstring(SB)										
  task_controller.go:732	0xe8b7ac		488d0d6d711b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:732	0xe8b7b3		48898c2438010000		MOVQ CX, 0x138(SP)											
  task_controller.go:732	0xe8b7bb		4889842440010000		MOVQ AX, 0x140(SP)											
  task_controller.go:733	0xe8b7c3		488b942498000000		MOVQ 0x98(SP), DX											
  task_controller.go:733	0xe8b7cb		f30f104270			MOVSS 0x70(DX), X0											
  task_controller.go:733	0xe8b7d0		660f7ec0			MOVD X0, AX												
  task_controller.go:733	0xe8b7d4		e8473a58ff			CALL runtime.convT32(SB)										
  task_controller.go:733	0xe8b7d9		488d0dc0741b00			LEAQ runtime.types+384160(SB), CX									
  task_controller.go:733	0xe8b7e0		48898c2448010000		MOVQ CX, 0x148(SP)											
  task_controller.go:733	0xe8b7e8		4889842450010000		MOVQ AX, 0x150(SP)											
  task_controller.go:734	0xe8b7f0		488b8c2498000000		MOVQ 0x98(SP), CX											
  task_controller.go:734	0xe8b7f8		488b4160			MOVQ 0x60(CX), AX											
  task_controller.go:734	0xe8b7fc		488b5968			MOVQ 0x68(CX), BX											
  task_controller.go:734	0xe8b800		e81be95dff			CALL runtime.convTstring(SB)										
  task_controller.go:734	0xe8b805		488d0d14711b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:734	0xe8b80c		48898c2458010000		MOVQ CX, 0x158(SP)											
  task_controller.go:734	0xe8b814		4889842460010000		MOVQ AX, 0x160(SP)											
  print.go:233			0xe8b81c		488b1d5d686802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8b823		488d05b602fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8b82a		bf48000000			MOVL $__major_os_version__+66(SB), DI									
  print.go:233			0xe8b82f		488db42418010000		LEAQ 0x118(SP), SI											
  print.go:233			0xe8b837		41b805000000			MOVL $__subsystem__+2(SB), R8										
  print.go:233			0xe8b83d		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8b840		488d0db6be3100			LEAQ go:string.*+258549(SB), CX										
  print.go:233			0xe8b847		e8d43969ff			CALL fmt.Fprintf(SB)											
  task_controller.go:729	0xe8b84c		488b4c2448			MOVQ 0x48(SP), CX											
  task_controller.go:729	0xe8b851		488b942488000000		MOVQ 0x88(SP), DX											
  task_controller.go:729	0xe8b859		31c0				XORL AX, AX												
  task_controller.go:729	0xe8b85b		eb04				JMP 0xe8b861												
  task_controller.go:736	0xe8b85d		488d4601			LEAQ 0x1(SI), AX											
  task_controller.go:736	0xe8b861		4839c8				CMPQ AX, CX												
  task_controller.go:736	0xe8b864		0f8d9b020000			JGE 0xe8bb05												
  task_controller.go:738	0xe8b86a		4889c6				MOVQ AX, SI												
  task_controller.go:738	0xe8b86d		48c1e005			SHLQ $__subsystem__+2(SB), AX										
  task_controller.go:738	0xe8b871		488b5c1010			MOVQ 0x10(AX)(DX*1), BX											
  task_controller.go:738	0xe8b876		4883fb04			CMPQ BX, $__subsystem__+1(SB)										
  task_controller.go:738	0xe8b87a		750b				JNE 0xe8b887												
  task_controller.go:739	0xe8b87c		488d79ff			LEAQ -0x1(CX), DI											
  task_controller.go:739	0xe8b880		4839fe				CMPQ SI, DI												
  task_controller.go:739	0xe8b883		75d8				JNE 0xe8b85d												
  task_controller.go:739	0xe8b885		eb3e				JMP 0xe8b8c5												
  task_controller.go:738	0xe8b887		4889442478			MOVQ AX, 0x78(SP)											
  task_controller.go:753	0xe8b88c		4883fb03			CMPQ BX, $__subsystem__(SB)										
  task_controller.go:753	0xe8b890		740e				JE 0xe8b8a0												
  task_controller.go:753	0xe8b892		4883fb05			CMPQ BX, $__subsystem__+2(SB)										
  task_controller.go:753	0xe8b896		7408				JE 0xe8b8a0												
  task_controller.go:753	0xe8b898		4883fb06			CMPQ BX, $__major_os_version__(SB)									
  task_controller.go:753	0xe8b89c		750f				JNE 0xe8b8ad												
  task_controller.go:753	0xe8b89e		6690				NOPW													
  task_controller.go:754	0xe8b8a0		48391d491b6d02			CMPQ CAS-Backend/biz/controller.taskstatus(SB), BX							
  task_controller.go:754	0xe8b8a7		0f85c3000000			JNE 0xe8b970												
  task_controller.go:768	0xe8b8ad		4883fb02			CMPQ BX, $__minor_os_version__+1(SB)									
  task_controller.go:768	0xe8b8b1		75aa				JNE 0xe8b85d												
  task_controller.go:769	0xe8b8b3		48833d351b6d0202		CMPQ CAS-Backend/biz/controller.taskstatus(SB), $__minor_os_version__+1(SB)				
  task_controller.go:769	0xe8b8bb		74a0				JE 0xe8b85d												
  task_controller.go:769	0xe8b8bd		0f1f00				NOPL 0(AX)												
  task_controller.go:769	0xe8b8c0		e977010000			JMP 0xe8ba3c												
  task_controller.go:740	0xe8b8c5		48c705201b6d0204000000		MOVQ $__subsystem__+1(SB), CAS-Backend/biz/controller.taskstatus(SB)					
  task_controller.go:741	0xe8b8d0		488b442458			MOVQ 0x58(SP), AX											
  task_controller.go:741	0xe8b8d5		bb04000000			MOVL $__subsystem__+1(SB), BX										
  task_controller.go:741	0xe8b8da		e861dbb0ff			CALL CAS-Backend/biz/dao.UpdateTaskStatusByID(SB)							
  task_controller.go:741	0xe8b8df		90				NOPL													
  task_controller.go:741	0xe8b8e0		84c0				TESTL AL, AL												
  task_controller.go:742	0xe8b8e2		7446				JE 0xe8b92a												
  task_controller.go:743	0xe8b8e4		488d1535701b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:743	0xe8b8eb		4889942408010000		MOVQ DX, 0x108(SP)											
  task_controller.go:743	0xe8b8f3		488d15c6d4fd01			LEAQ CAS-Backend/biz/controller..stmp_281(SB), DX							
  task_controller.go:743	0xe8b8fa		4889942410010000		MOVQ DX, 0x110(SP)											
  print.go:314			0xe8b902		488b1d77676802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8b909		488d05d001fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8b910		488d8c2408010000		LEAQ 0x108(SP), CX											
  print.go:314			0xe8b918		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8b91d		4889fe				MOVQ DI, SI												
  print.go:314			0xe8b920		e83b3f69ff			CALL fmt.Fprintln(SB)											
  task_controller.go:744	0xe8b925		e9db010000			JMP 0xe8bb05												
  task_controller.go:746	0xe8b92a		488d15ef6f1b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:746	0xe8b931		48899424f8000000		MOVQ DX, 0xf8(SP)											
  task_controller.go:746	0xe8b939		488d1590d4fd01			LEAQ CAS-Backend/biz/controller..stmp_282(SB), DX							
  task_controller.go:746	0xe8b940		4889942400010000		MOVQ DX, 0x100(SP)											
  print.go:314			0xe8b948		488b1d31676802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8b94f		488d058a01fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8b956		488d8c24f8000000		LEAQ 0xf8(SP), CX											
  print.go:314			0xe8b95e		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8b963		4889fe				MOVQ DI, SI												
  print.go:314			0xe8b966		e8f53e69ff			CALL fmt.Fprintln(SB)											
  task_controller.go:747	0xe8b96b		e995010000			JMP 0xe8bb05												
  task_controller.go:755	0xe8b970		488b442458			MOVQ 0x58(SP), AX											
  task_controller.go:755	0xe8b975		e8c6dab0ff			CALL CAS-Backend/biz/dao.UpdateTaskStatusByID(SB)							
  task_controller.go:755	0xe8b97a		84c0				TESTL AL, AL												
  task_controller.go:756	0xe8b97c		745f				JE 0xe8b9dd												
  task_controller.go:757	0xe8b97e		488b942488000000		MOVQ 0x88(SP), DX											
  task_controller.go:757	0xe8b986		4c8b442478			MOVQ 0x78(SP), R8											
  task_controller.go:757	0xe8b98b		498b541010			MOVQ 0x10(R8)(DX*1), DX											
  task_controller.go:757	0xe8b990		488915591a6d02			MOVQ DX, CAS-Backend/biz/controller.taskstatus(SB)							
  task_controller.go:758	0xe8b997		488d15826f1b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:758	0xe8b99e		48899424e8000000		MOVQ DX, 0xe8(SP)											
  task_controller.go:758	0xe8b9a6		488d1533d4fd01			LEAQ CAS-Backend/biz/controller..stmp_283(SB), DX							
  task_controller.go:758	0xe8b9ad		48899424f0000000		MOVQ DX, 0xf0(SP)											
  print.go:314			0xe8b9b5		488b1dc4666802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8b9bc		488d051d01fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8b9c3		488d8c24e8000000		LEAQ 0xe8(SP), CX											
  print.go:314			0xe8b9cb		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8b9d0		4889fe				MOVQ DI, SI												
  print.go:314			0xe8b9d3		e8883e69ff			CALL fmt.Fprintln(SB)											
  task_controller.go:759	0xe8b9d8		e928010000			JMP 0xe8bb05												
  task_controller.go:761	0xe8b9dd		488b942488000000		MOVQ 0x88(SP), DX											
  task_controller.go:761	0xe8b9e5		4c8b442478			MOVQ 0x78(SP), R8											
  task_controller.go:761	0xe8b9ea		498b541010			MOVQ 0x10(R8)(DX*1), DX											
  task_controller.go:761	0xe8b9ef		488915fa196d02			MOVQ DX, CAS-Backend/biz/controller.taskstatus(SB)							
  task_controller.go:762	0xe8b9f6		488d15236f1b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:762	0xe8b9fd		48899424d8000000		MOVQ DX, 0xd8(SP)											
  task_controller.go:762	0xe8ba05		488d15e4d3fd01			LEAQ CAS-Backend/biz/controller..stmp_284(SB), DX							
  task_controller.go:762	0xe8ba0c		48899424e0000000		MOVQ DX, 0xe0(SP)											
  print.go:314			0xe8ba14		488b1d65666802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8ba1b		488d05be00fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8ba22		488d8c24d8000000		LEAQ 0xd8(SP), CX											
  print.go:314			0xe8ba2a		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8ba2f		4889fe				MOVQ DI, SI												
  print.go:314			0xe8ba32		e8293e69ff			CALL fmt.Fprintln(SB)											
  task_controller.go:763	0xe8ba37		e9c9000000			JMP 0xe8bb05												
  task_controller.go:770	0xe8ba3c		488b442458			MOVQ 0x58(SP), AX											
  task_controller.go:770	0xe8ba41		bb02000000			MOVL $__minor_os_version__+1(SB), BX									
  task_controller.go:770	0xe8ba46		e8f5d9b0ff			CALL CAS-Backend/biz/dao.UpdateTaskStatusByID(SB)							
  task_controller.go:770	0xe8ba4b		84c0				TESTL AL, AL												
  task_controller.go:771	0xe8ba4d		745c				JE 0xe8baab												
  task_controller.go:772	0xe8ba4f		488b942488000000		MOVQ 0x88(SP), DX											
  task_controller.go:772	0xe8ba57		4c8b442478			MOVQ 0x78(SP), R8											
  task_controller.go:772	0xe8ba5c		498b541010			MOVQ 0x10(R8)(DX*1), DX											
  task_controller.go:772	0xe8ba61		48891588196d02			MOVQ DX, CAS-Backend/biz/controller.taskstatus(SB)							
  task_controller.go:773	0xe8ba68		488d15b16e1b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:773	0xe8ba6f		48899424c8000000		MOVQ DX, 0xc8(SP)											
  task_controller.go:773	0xe8ba77		488d1582d3fd01			LEAQ CAS-Backend/biz/controller..stmp_285(SB), DX							
  task_controller.go:773	0xe8ba7e		48899424d0000000		MOVQ DX, 0xd0(SP)											
  print.go:314			0xe8ba86		488b1df3656802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8ba8d		488d054c00fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8ba94		488d8c24c8000000		LEAQ 0xc8(SP), CX											
  print.go:314			0xe8ba9c		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8baa1		4889fe				MOVQ DI, SI												
  print.go:314			0xe8baa4		e8b73d69ff			CALL fmt.Fprintln(SB)											
  task_controller.go:774	0xe8baa9		eb5a				JMP 0xe8bb05												
  task_controller.go:776	0xe8baab		488b942488000000		MOVQ 0x88(SP), DX											
  task_controller.go:776	0xe8bab3		4c8b442478			MOVQ 0x78(SP), R8											
  task_controller.go:776	0xe8bab8		498b541010			MOVQ 0x10(R8)(DX*1), DX											
  task_controller.go:776	0xe8babd		4889152c196d02			MOVQ DX, CAS-Backend/biz/controller.taskstatus(SB)							
  task_controller.go:777	0xe8bac4		488d15556e1b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:777	0xe8bacb		48899424b8000000		MOVQ DX, 0xb8(SP)											
  task_controller.go:777	0xe8bad3		488d1536d3fd01			LEAQ CAS-Backend/biz/controller..stmp_286(SB), DX							
  task_controller.go:777	0xe8bada		48899424c0000000		MOVQ DX, 0xc0(SP)											
  print.go:314			0xe8bae2		488b1d97656802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8bae9		488d05f0fffd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8baf0		488d8c24b8000000		LEAQ 0xb8(SP), CX											
  print.go:314			0xe8baf8		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8bafd		4889fe				MOVQ DI, SI												
  print.go:314			0xe8bb00		e85b3d69ff			CALL fmt.Fprintln(SB)											
  task_controller.go:801	0xe8bb05		e8d6f45dff			CALL runtime.makemap_small(SB)										
  task_controller.go:801	0xe8bb0a		48898424b0000000		MOVQ AX, 0xb0(SP)											
  task_controller.go:803	0xe8bb12		488b0dd7186d02			MOVQ CAS-Backend/biz/controller.taskstatus(SB), CX							
  task_controller.go:803	0xe8bb19		4889c8				MOVQ CX, AX												
  task_controller.go:803	0xe8bb1c		0f1f4000			NOPL 0(AX)												
  task_controller.go:803	0xe8bb20		e87be55dff			CALL runtime.convT64(SB)										
  task_controller.go:803	0xe8bb25		48898424a8000000		MOVQ AX, 0xa8(SP)											
  task_controller.go:801	0xe8bb2d		488b9c24b0000000		MOVQ 0xb0(SP), BX											
  task_controller.go:801	0xe8bb35		488d0d2b372e00			LEAQ go:string.*+27999(SB), CX										
  task_controller.go:801	0xe8bb3c		bf06000000			MOVL $__major_os_version__(SB), DI									
  task_controller.go:801	0xe8bb41		488d05388d2100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:801	0xe8bb48		e8d3245eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:801	0xe8bb4d		488d0d0c701b00			LEAQ runtime.types+383840(SB), CX									
  task_controller.go:801	0xe8bb54		488908				MOVQ CX, 0(AX)												
  task_controller.go:801	0xe8bb57		833df21f6d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:801	0xe8bb5e		6690				NOPW													
  task_controller.go:801	0xe8bb60		750a				JNE 0xe8bb6c												
  task_controller.go:801	0xe8bb62		488b8c24a8000000		MOVQ 0xa8(SP), CX											
  task_controller.go:801	0xe8bb6a		eb18				JMP 0xe8bb84												
  task_controller.go:801	0xe8bb6c		e8cfc85eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:801	0xe8bb71		488b8c24a8000000		MOVQ 0xa8(SP), CX											
  task_controller.go:801	0xe8bb79		49890b				MOVQ CX, 0(R11)												
  task_controller.go:801	0xe8bb7c		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:801	0xe8bb80		49895308			MOVQ DX, 0x8(R11)											
  task_controller.go:801	0xe8bb84		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8bb88		488d0df18c2100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8bb8f		48898c2430020000		MOVQ CX, 0x230(SP)											
  context.go:1005		0xe8bb97		488b8c24b0000000		MOVQ 0xb0(SP), CX											
  context.go:1005		0xe8bb9f		48898c2438020000		MOVQ CX, 0x238(SP)											
  context.go:1005		0xe8bba7		488d0532032400			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8bbae		488d9c2430020000		LEAQ 0x230(SP), BX											
  context.go:1005		0xe8bbb6		e8e53458ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8bbbb		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8bbc0		488d0d6936fe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8bbc7		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8bbca		488b842470020000		MOVQ 0x270(SP), AX											
  context.go:1005		0xe8bbd2		e8893bf7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:806	0xe8bbd7		4881c460020000			ADDQ $__file_alignment__+96(SB), SP									
  task_controller.go:806	0xe8bbde		5d				POPQ BP													
  task_controller.go:806	0xe8bbdf		90				NOPL													
  task_controller.go:806	0xe8bbe0		c3				RET													
  task_controller.go:673	0xe8bbe1		4889442408			MOVQ AX, 0x8(SP)											
  task_controller.go:673	0xe8bbe6		e8f5a85eff			CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:673	0xe8bbeb		488b442408			MOVQ 0x8(SP), AX											
  task_controller.go:673	0xe8bbf0		e90bf3ffff			JMP CAS-Backend/biz/controller.TaskStatusHandler(SB)							
  :-1				0xe8bbf5		cc				INT $__subsystem__(SB)											
  :-1				0xe8bbf6		cc				INT $__subsystem__(SB)											
  :-1				0xe8bbf7		cc				INT $__subsystem__(SB)											
  :-1				0xe8bbf8		cc				INT $__subsystem__(SB)											
  :-1				0xe8bbf9		cc				INT $__subsystem__(SB)											
  :-1				0xe8bbfa		cc				INT $__subsystem__(SB)											
  :-1				0xe8bbfb		cc				INT $__subsystem__(SB)											
  :-1				0xe8bbfc		cc				INT $__subsystem__(SB)											
  :-1				0xe8bbfd		cc				INT $__subsystem__(SB)											
  :-1				0xe8bbfe		cc				INT $__subsystem__(SB)											
  :-1				0xe8bbff		cc				INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.TaskStatusHandler.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:709	0xe8bc00		493b6610		CMPQ SP, 0x10(R14)						
  task_controller.go:709	0xe8bc04		7670			JBE 0xe8bc76							
  task_controller.go:709	0xe8bc06		55			PUSHQ BP							
  task_controller.go:709	0xe8bc07		4889e5			MOVQ SP, BP							
  task_controller.go:709	0xe8bc0a		4883ec30		SUBQ $__major_os_version__+42(SB), SP				
  task_controller.go:709	0xe8bc0e		4889442440		MOVQ AX, 0x40(SP)						
  task_controller.go:709	0xe8bc13		48895c2448		MOVQ BX, 0x48(SP)						
  task_controller.go:709	0xe8bc18		488b4a08		MOVQ 0x8(DX), CX						
  task_controller.go:709	0xe8bc1c		488b7a10		MOVQ 0x10(DX), DI						
  task_controller.go:709	0xe8bc20		488b7218		MOVQ 0x18(DX), SI						
  task_controller.go:709	0xe8bc24		488b5220		MOVQ 0x20(DX), DX						
  task_controller.go:709	0xe8bc28		4889542428		MOVQ DX, 0x28(SP)						
  task_controller.go:710	0xe8bc2d		e88ec8f8ff		CALL CAS-Backend/pkg/agvcontrol.SendRobotTaskStatusReq(SB)	
  task_controller.go:711	0xe8bc32		4885db			TESTQ BX, BX							
  task_controller.go:711	0xe8bc35		7533			JNE 0xe8bc6a							
  task_controller.go:714	0xe8bc37		833d121f6d0200		CMPL runtime.writeBarrier(SB), $0x0				
  task_controller.go:714	0xe8bc3e		6690			NOPW								
  task_controller.go:714	0xe8bc40		7507			JNE 0xe8bc49							
  task_controller.go:714	0xe8bc42		488b4c2428		MOVQ 0x28(SP), CX						
  task_controller.go:714	0xe8bc47		eb14			JMP 0xe8bc5d							
  task_controller.go:714	0xe8bc49		e8f2c75eff		CALL runtime.gcWriteBarrier2(SB)				
  task_controller.go:714	0xe8bc4e		498903			MOVQ AX, 0(R11)							
  task_controller.go:714	0xe8bc51		488b4c2428		MOVQ 0x28(SP), CX						
  task_controller.go:714	0xe8bc56		488b11			MOVQ 0(CX), DX							
  task_controller.go:714	0xe8bc59		49895308		MOVQ DX, 0x8(R11)						
  task_controller.go:714	0xe8bc5d		488901			MOVQ AX, 0(CX)							
  task_controller.go:715	0xe8bc60		31c0			XORL AX, AX							
  task_controller.go:715	0xe8bc62		31db			XORL BX, BX							
  task_controller.go:715	0xe8bc64		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  task_controller.go:715	0xe8bc68		5d			POPQ BP								
  task_controller.go:715	0xe8bc69		c3			RET								
  task_controller.go:712	0xe8bc6a		4889d8			MOVQ BX, AX							
  task_controller.go:712	0xe8bc6d		4889cb			MOVQ CX, BX							
  task_controller.go:712	0xe8bc70		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  task_controller.go:712	0xe8bc74		5d			POPQ BP								
  task_controller.go:712	0xe8bc75		c3			RET								
  task_controller.go:709	0xe8bc76		4889442408		MOVQ AX, 0x8(SP)						
  task_controller.go:709	0xe8bc7b		48895c2410		MOVQ BX, 0x10(SP)						
  task_controller.go:709	0xe8bc80		e8dba75eff		CALL runtime.morestack.abi0(SB)					
  task_controller.go:709	0xe8bc85		488b442408		MOVQ 0x8(SP), AX						
  task_controller.go:709	0xe8bc8a		488b5c2410		MOVQ 0x10(SP), BX						
  task_controller.go:709	0xe8bc8f		e96cffffff		JMP CAS-Backend/biz/controller.TaskStatusHandler.func2(SB)	
  :-1				0xe8bc94		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc95		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc96		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc97		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc98		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc99		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc9a		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc9b		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc9c		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc9d		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc9e		cc			INT $__subsystem__(SB)						
  :-1				0xe8bc9f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.TaskStatusHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:684	0xe8bca0		493b6610		CMPQ SP, 0x10(R14)						
  task_controller.go:684	0xe8bca4		7670			JBE 0xe8bd16							
  task_controller.go:684	0xe8bca6		55			PUSHQ BP							
  task_controller.go:684	0xe8bca7		4889e5			MOVQ SP, BP							
  task_controller.go:684	0xe8bcaa		4883ec30		SUBQ $__major_os_version__+42(SB), SP				
  task_controller.go:684	0xe8bcae		4889442440		MOVQ AX, 0x40(SP)						
  task_controller.go:684	0xe8bcb3		48895c2448		MOVQ BX, 0x48(SP)						
  task_controller.go:684	0xe8bcb8		488b4a08		MOVQ 0x8(DX), CX						
  task_controller.go:684	0xe8bcbc		488b7a10		MOVQ 0x10(DX), DI						
  task_controller.go:684	0xe8bcc0		488b5218		MOVQ 0x18(DX), DX						
  task_controller.go:684	0xe8bcc4		4889542428		MOVQ DX, 0x28(SP)						
  task_controller.go:685	0xe8bcc9		be01000000		MOVL $__minor_os_version__(SB), SI				
  task_controller.go:685	0xe8bcce		e8adbff8ff		CALL CAS-Backend/pkg/agvcontrol.SendRobotTaskListStatusReq(SB)	
  task_controller.go:686	0xe8bcd3		4885db			TESTQ BX, BX							
  task_controller.go:686	0xe8bcd6		7532			JNE 0xe8bd0a							
  task_controller.go:689	0xe8bcd8		833d711e6d0200		CMPL runtime.writeBarrier(SB), $0x0				
  task_controller.go:689	0xe8bcdf		90			NOPL								
  task_controller.go:689	0xe8bce0		7507			JNE 0xe8bce9							
  task_controller.go:689	0xe8bce2		488b4c2428		MOVQ 0x28(SP), CX						
  task_controller.go:689	0xe8bce7		eb14			JMP 0xe8bcfd							
  task_controller.go:689	0xe8bce9		e852c75eff		CALL runtime.gcWriteBarrier2(SB)				
  task_controller.go:689	0xe8bcee		498903			MOVQ AX, 0(R11)							
  task_controller.go:689	0xe8bcf1		488b4c2428		MOVQ 0x28(SP), CX						
  task_controller.go:689	0xe8bcf6		488b11			MOVQ 0(CX), DX							
  task_controller.go:689	0xe8bcf9		49895308		MOVQ DX, 0x8(R11)						
  task_controller.go:689	0xe8bcfd		488901			MOVQ AX, 0(CX)							
  task_controller.go:690	0xe8bd00		31c0			XORL AX, AX							
  task_controller.go:690	0xe8bd02		31db			XORL BX, BX							
  task_controller.go:690	0xe8bd04		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  task_controller.go:690	0xe8bd08		5d			POPQ BP								
  task_controller.go:690	0xe8bd09		c3			RET								
  task_controller.go:687	0xe8bd0a		4889d8			MOVQ BX, AX							
  task_controller.go:687	0xe8bd0d		4889cb			MOVQ CX, BX							
  task_controller.go:687	0xe8bd10		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  task_controller.go:687	0xe8bd14		5d			POPQ BP								
  task_controller.go:687	0xe8bd15		c3			RET								
  task_controller.go:684	0xe8bd16		4889442408		MOVQ AX, 0x8(SP)						
  task_controller.go:684	0xe8bd1b		48895c2410		MOVQ BX, 0x10(SP)						
  task_controller.go:684	0xe8bd20		e83ba75eff		CALL runtime.morestack.abi0(SB)					
  task_controller.go:684	0xe8bd25		488b442408		MOVQ 0x8(SP), AX						
  task_controller.go:684	0xe8bd2a		488b5c2410		MOVQ 0x10(SP), BX						
  task_controller.go:684	0xe8bd2f		e96cffffff		JMP CAS-Backend/biz/controller.TaskStatusHandler.func1(SB)	
  :-1				0xe8bd34		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd35		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd36		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd37		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd38		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd39		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd3a		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd3b		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd3c		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd3d		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd3e		cc			INT $__subsystem__(SB)						
  :-1				0xe8bd3f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.PauseNavigationHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:808	0xe8bd40		4c8d6424b0		LEAQ -0x50(SP), R12											
  task_controller.go:808	0xe8bd45		4d3b6610		CMPQ R12, 0x10(R14)											
  task_controller.go:808	0xe8bd49		0f8660040000		JBE 0xe8c1af												
  task_controller.go:808	0xe8bd4f		55			PUSHQ BP												
  task_controller.go:808	0xe8bd50		4889e5			MOVQ SP, BP												
  task_controller.go:808	0xe8bd53		4881ecc8000000		SUBQ $.file+123(SB), SP											
  context.go:712		0xe8bd5a		48898424d8000000	MOVQ AX, 0xd8(SP)											
  task_controller.go:809	0xe8bd62		488d05f7092b00		LEAQ runtime.types+1406816(SB), AX									
  task_controller.go:809	0xe8bd69		e8325a58ff		CALL runtime.newobject(SB)										
  task_controller.go:809	0xe8bd6e		48898424c0000000	MOVQ AX, 0xc0(SP)											
  context.go:712		0xe8bd76		488b0d63ba1200		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe8bd7d		488b1564ba1200		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe8bd84		4885c9			TESTQ CX, CX												
  context.go:712		0xe8bd87		741c			JE 0xe8bda5												
  context.go:712		0xe8bd89		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe8bd8d		488b359cf61200		MOVQ CAS-Backend/biz/controller..typeAssert.36(SB), SI							
  context.go:712		0xe8bd94		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe8bd97		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe8bd9b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe8bda0		e9bc030000		JMP 0xe8c161												
  context.go:752		0xe8bda5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe8bda9		4c8b8424d8000000	MOVQ 0xd8(SP), R8											
  context.go:752		0xe8bdb1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe8bdb5		488d0de4a81900		LEAQ runtime.types+267936(SB), CX									
  context.go:752		0xe8bdbc		4889c7			MOVQ AX, DI												
  context.go:752		0xe8bdbf		4889d0			MOVQ DX, AX												
  context.go:752		0xe8bdc2		ffd6			CALL SI													
  task_controller.go:811	0xe8bdc4		4885c0			TESTQ AX, AX												
  task_controller.go:811	0xe8bdc7		0f8524030000		JNE 0xe8c0f1												
  task_controller.go:817	0xe8bdcd		440f11bc2480000000	MOVUPS X15, 0x80(SP)											
  task_controller.go:817	0xe8bdd6		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  task_controller.go:817	0xe8bdde		488b81d8000000		MOVQ 0xd8(CX), AX											
  task_controller.go:817	0xe8bde5		488b99e0000000		MOVQ 0xe0(CX), BX											
  task_controller.go:817	0xe8bdec		e82fe35dff		CALL runtime.convTstring(SB)										
  task_controller.go:817	0xe8bdf1		488d0d286b1b00		LEAQ runtime.types+383264(SB), CX									
  task_controller.go:817	0xe8bdf8		48898c2480000000	MOVQ CX, 0x80(SP)											
  task_controller.go:817	0xe8be00		4889842488000000	MOVQ AX, 0x88(SP)											
  print.go:314			0xe8be08		488b1d71626802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8be0f		488d05cafcfd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8be16		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8be1b		4889fe			MOVQ DI, SI												
  print.go:314			0xe8be1e		488d8c2480000000	LEAQ 0x80(SP), CX											
  print.go:314			0xe8be26		e8353a69ff		CALL fmt.Fprintln(SB)											
  task_controller.go:23		0xe8be2b		488b0d26a66802		MOVQ CAS-Backend/config.Cfg+56(SB), CX									
  task_controller.go:23		0xe8be32		4885c9			TESTQ CX, CX												
  task_controller.go:23		0xe8be35		740b			JE 0xe8be42												
  task_controller.go:23		0xe8be37		488b1512a66802		MOVQ CAS-Backend/config.Cfg+48(SB), DX									
  task_controller.go:23		0xe8be3e		6690			NOPW													
  task_controller.go:818	0xe8be40		eb27			JMP 0xe8be69												
  task_controller.go:26		0xe8be42		488b15bf9f1200		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), DX							
  task_controller.go:26		0xe8be49		4885d2			TESTQ DX, DX												
  task_controller.go:26		0xe8be4c		740f			JE 0xe8be5d												
  task_controller.go:26		0xe8be4e		488b35ab9f1200		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), SI							
  task_controller.go:818	0xe8be55		4889d1			MOVQ DX, CX												
  task_controller.go:818	0xe8be58		4889f2			MOVQ SI, DX												
  task_controller.go:818	0xe8be5b		eb0c			JMP 0xe8be69												
  task_controller.go:818	0xe8be5d		b909000000		MOVL $__major_os_version__+3(SB), CX									
  task_controller.go:818	0xe8be62		488d159a942e00		LEAQ go:string.*+52731(SB), DX										
  task_controller.go:818	0xe8be69		4889d0			MOVQ DX, AX												
  task_controller.go:818	0xe8be6c		4889cb			MOVQ CX, BX												
  task_controller.go:818	0xe8be6f		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX								
  task_controller.go:818	0xe8be74		488d3d35b9e401		LEAQ go:func.*+6088(SB), DI										
  task_controller.go:818	0xe8be7b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_controller.go:818	0xe8be80		e87b77f8ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_controller.go:821	0xe8be85		4885c0			TESTQ AX, AX												
  task_controller.go:821	0xe8be88		0f8480010000		JE 0xe8c00e												
  task_controller.go:818	0xe8be8e		4889442440		MOVQ AX, 0x40(SP)											
  task_controller.go:822	0xe8be93		440f117c2470		MOVUPS X15, 0x70(SP)											
  task_controller.go:822	0xe8be99		7407			JE 0xe8bea2												
  task_controller.go:822	0xe8be9b		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:822	0xe8be9f		90			NOPL													
  task_controller.go:822	0xe8bea0		eb03			JMP 0xe8bea5												
  task_controller.go:822	0xe8bea2		4889c2			MOVQ AX, DX												
  task_controller.go:818	0xe8bea5		48895c2450		MOVQ BX, 0x50(SP)											
  task_controller.go:822	0xe8beaa		4889542470		MOVQ DX, 0x70(SP)											
  task_controller.go:822	0xe8beaf		48895c2478		MOVQ BX, 0x78(SP)											
  print.go:233			0xe8beb4		488b15c5616802		MOVQ os.Stdout(SB), DX											
  print.go:233			0xe8bebb		488d051efcfd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8bec2		488d0d007d2f00		LEAQ go:string.*+112321(SB), CX										
  print.go:233			0xe8bec9		bf17000000		MOVL $__major_os_version__+17(SB), DI									
  print.go:233			0xe8bece		488d742470		LEAQ 0x70(SP), SI											
  print.go:233			0xe8bed3		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8bed9		4d89c1			MOVQ R8, R9												
  print.go:233			0xe8bedc		4889d3			MOVQ DX, BX												
  print.go:233			0xe8bedf		90			NOPL													
  print.go:233			0xe8bee0		e83b3369ff		CALL fmt.Fprintf(SB)											
  task_controller.go:823	0xe8bee5		e8f6f05dff		CALL runtime.makemap_small(SB)										
  task_controller.go:823	0xe8beea		48898424b8000000	MOVQ AX, 0xb8(SP)											
  task_controller.go:823	0xe8bef2		4889c3			MOVQ AX, BX												
  task_controller.go:823	0xe8bef5		488d0d116e2e00		LEAQ go:string.*+43013(SB), CX										
  task_controller.go:823	0xe8befc		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:823	0xe8bf01		488d0578892100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:823	0xe8bf08		e813215eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:823	0xe8bf0d		488d150c6e1b00		LEAQ runtime.types+384288(SB), DX									
  task_controller.go:823	0xe8bf14		488910			MOVQ DX, 0(AX)												
  task_controller.go:823	0xe8bf17		833d321c6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:823	0xe8bf1e		6690			NOPW													
  task_controller.go:823	0xe8bf20		740c			JE 0xe8bf2e												
  task_controller.go:823	0xe8bf22		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:823	0xe8bf26		e8f5c45eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:823	0xe8bf2b		49890b			MOVQ CX, 0(R11)												
  task_controller.go:823	0xe8bf2e		488d0debe70e00		LEAQ runtime.staticuint64s(SB), CX									
  task_controller.go:823	0xe8bf35		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:823	0xe8bf39		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:823	0xe8bf3e		488b4918		MOVQ 0x18(CX), CX											
  task_controller.go:823	0xe8bf42		488b442450		MOVQ 0x50(SP), AX											
  task_controller.go:823	0xe8bf47		ffd1			CALL CX													
  task_controller.go:823	0xe8bf49		e8d2e15dff		CALL runtime.convTstring(SB)										
  task_controller.go:823	0xe8bf4e		48898424b0000000	MOVQ AX, 0xb0(SP)											
  task_controller.go:823	0xe8bf56		488b9c24b8000000	MOVQ 0xb8(SP), BX											
  task_controller.go:823	0xe8bf5e		488d0d8c6d2e00		LEAQ go:string.*+42985(SB), CX										
  task_controller.go:823	0xe8bf65		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:823	0xe8bf6a		488d050f892100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:823	0xe8bf71		e8aa205eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:823	0xe8bf76		488d0da3691b00		LEAQ runtime.types+383264(SB), CX									
  task_controller.go:823	0xe8bf7d		488908			MOVQ CX, 0(AX)												
  task_controller.go:823	0xe8bf80		833dc91b6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:823	0xe8bf87		750a			JNE 0xe8bf93												
  task_controller.go:823	0xe8bf89		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  task_controller.go:823	0xe8bf91		eb18			JMP 0xe8bfab												
  task_controller.go:823	0xe8bf93		e8a8c45eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:823	0xe8bf98		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  task_controller.go:823	0xe8bfa0		49890b			MOVQ CX, 0(R11)												
  task_controller.go:823	0xe8bfa3		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:823	0xe8bfa7		49895308		MOVQ DX, 0x8(R11)											
  task_controller.go:823	0xe8bfab		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8bfaf		488d0dca882100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8bfb6		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005		0xe8bfbe		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  context.go:1005		0xe8bfc6		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  context.go:1005		0xe8bfce		488d050bff2300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8bfd5		488d9c24a0000000	LEAQ 0xa0(SP), BX											
  context.go:1005		0xe8bfdd		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe8bfe0		e8bb3058ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8bfe5		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8bfea		488d0d3f32fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8bff1		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8bff4		488b8424d8000000	MOVQ 0xd8(SP), AX											
  context.go:1005		0xe8bffc		0f1f4000		NOPL 0(AX)												
  context.go:1005		0xe8c000		e85b37f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:824	0xe8c005		4881c4c8000000		ADDQ $.file+123(SB), SP											
  task_controller.go:824	0xe8c00c		5d			POPQ BP													
  task_controller.go:824	0xe8c00d		c3			RET													
  task_controller.go:826	0xe8c00e		488d150b691b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:826	0xe8c015		4889542460		MOVQ DX, 0x60(SP)											
  task_controller.go:826	0xe8c01a		488d15ffcdfd01		LEAQ CAS-Backend/biz/controller..stmp_289(SB), DX							
  task_controller.go:826	0xe8c021		4889542468		MOVQ DX, 0x68(SP)											
  print.go:314			0xe8c026		488b1d53606802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8c02d		488d05acfafd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8c034		488d4c2460		LEAQ 0x60(SP), CX											
  print.go:314			0xe8c039		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8c03e		4889fe			MOVQ DI, SI												
  print.go:314			0xe8c041		e81a3869ff		CALL fmt.Fprintln(SB)											
  task_controller.go:827	0xe8c046		e895ef5dff		CALL runtime.makemap_small(SB)										
  task_controller.go:827	0xe8c04b		48898424b8000000	MOVQ AX, 0xb8(SP)											
  task_controller.go:827	0xe8c053		4889c3			MOVQ AX, BX												
  task_controller.go:827	0xe8c056		488d0db06c2e00		LEAQ go:string.*+43013(SB), CX										
  task_controller.go:827	0xe8c05d		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:827	0xe8c062		488d0517882100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:827	0xe8c069		e8b21f5eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:827	0xe8c06e		488d15ab6c1b00		LEAQ runtime.types+384288(SB), DX									
  task_controller.go:827	0xe8c075		488910			MOVQ DX, 0(AX)												
  task_controller.go:827	0xe8c078		833dd11a6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:827	0xe8c07f		90			NOPL													
  task_controller.go:827	0xe8c080		740c			JE 0xe8c08e												
  task_controller.go:827	0xe8c082		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:827	0xe8c086		e895c35eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:827	0xe8c08b		49890b			MOVQ CX, 0(R11)												
  task_controller.go:827	0xe8c08e		488d0d93e60e00		LEAQ runtime.staticuint64s+8(SB), CX									
  task_controller.go:827	0xe8c095		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8c099		488d0de0872100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8c0a0		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005		0xe8c0a8		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  context.go:1005		0xe8c0b0		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  context.go:1005		0xe8c0b8		488d0521fe2300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8c0bf		488d9c24a0000000	LEAQ 0xa0(SP), BX											
  context.go:1005		0xe8c0c7		e8d42f58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8c0cc		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8c0d1		488d0d5831fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8c0d8		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8c0db		488b8424d8000000	MOVQ 0xd8(SP), AX											
  context.go:1005		0xe8c0e3		e87836f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:828	0xe8c0e8		4881c4c8000000		ADDQ $.file+123(SB), SP											
  task_controller.go:828	0xe8c0ef		5d			POPQ BP													
  task_controller.go:828	0xe8c0f0		c3			RET													
  context.go:752		0xe8c0f1		4889442438		MOVQ AX, 0x38(SP)											
  context.go:752		0xe8c0f6		48895c2448		MOVQ BX, 0x48(SP)											
  task_controller.go:812	0xe8c0fb		488d151e681b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:812	0xe8c102		4889942490000000	MOVQ DX, 0x90(SP)											
  task_controller.go:812	0xe8c10a		488d15bfc6fd01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  task_controller.go:812	0xe8c111		4889942498000000	MOVQ DX, 0x98(SP)											
  print.go:314			0xe8c119		488b1d605f6802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8c120		488d05b9f9fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8c127		488d8c2490000000	LEAQ 0x90(SP), CX											
  print.go:314			0xe8c12f		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8c134		4889fe			MOVQ DI, SI												
  print.go:314			0xe8c137		e8243769ff		CALL fmt.Fprintln(SB)											
  task_controller.go:813	0xe8c13c		488b8424d8000000	MOVQ 0xd8(SP), AX											
  task_controller.go:813	0xe8c144		bb90010000		MOVL $.file+323(SB), BX											
  task_controller.go:813	0xe8c149		488b4c2438		MOVQ 0x38(SP), CX											
  task_controller.go:813	0xe8c14e		488b7c2448		MOVQ 0x48(SP), DI											
  task_controller.go:813	0xe8c153		e848eff6ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  task_controller.go:814	0xe8c158		4881c4c8000000		ADDQ $.file+123(SB), SP											
  task_controller.go:814	0xe8c15f		5d			POPQ BP													
  task_controller.go:814	0xe8c160		c3			RET													
  context.go:712		0xe8c161		4d89ca			MOVQ R9, R10												
  context.go:712		0xe8c164		4d21c1			ANDQ R8, R9												
  context.go:712		0xe8c167		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe8c16b		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe8c170		4939db			CMPQ R11, BX												
  context.go:712		0xe8c173		7430			JE 0xe8c1a5												
  context.go:712		0xe8c175		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe8c179		4d85db			TESTQ R11, R11												
  context.go:712		0xe8c17c		75e3			JNE 0xe8c161												
  context.go:712		0xe8c17e		4889542458		MOVQ DX, 0x58(SP)											
  context.go:712		0xe8c183		488d05a6f21200		LEAQ CAS-Backend/biz/controller..typeAssert.36(SB), AX							
  context.go:712		0xe8c18a		e8513158ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe8c18f		488b542458		MOVQ 0x58(SP), DX											
  context.go:712		0xe8c194		4889c1			MOVQ AX, CX												
  context.go:752		0xe8c197		488b8424c0000000	MOVQ 0xc0(SP), AX											
  context.go:752		0xe8c19f		90			NOPL													
  context.go:712		0xe8c1a0		e900fcffff		JMP 0xe8bda5												
  context.go:712		0xe8c1a5		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe8c1aa		e9f6fbffff		JMP 0xe8bda5												
  task_controller.go:808	0xe8c1af		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:808	0xe8c1b4		e827a35eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:808	0xe8c1b9		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:808	0xe8c1be		6690			NOPW													
  task_controller.go:808	0xe8c1c0		e97bfbffff		JMP CAS-Backend/biz/controller.PauseNavigationHandler(SB)						
  :-1				0xe8c1c5		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1c6		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1c7		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1c8		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1c9		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1ca		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1cb		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1cc		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1cd		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1ce		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1cf		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1d0		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1d1		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1d2		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1d3		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1d4		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1d5		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1d6		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1d7		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1d8		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1d9		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1da		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1db		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1dc		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1dd		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1de		cc			INT $__subsystem__(SB)											
  :-1				0xe8c1df		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.ResumeNavigationHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:830	0xe8c1e0		4c8da42478ffffff		LEAQ 0xffffff78(SP), R12										
  task_controller.go:830	0xe8c1e8		4d3b6610			CMPQ R12, 0x10(R14)											
  task_controller.go:830	0xe8c1ec		0f86cc050000			JBE 0xe8c7be												
  task_controller.go:830	0xe8c1f2		55				PUSHQ BP												
  task_controller.go:830	0xe8c1f3		4889e5				MOVQ SP, BP												
  task_controller.go:830	0xe8c1f6		4881ec00010000			SUBQ $.file+179(SB), SP											
  context.go:712		0xe8c1fd		4889842410010000		MOVQ AX, 0x110(SP)											
  task_controller.go:831	0xe8c205		488d0554052b00			LEAQ runtime.types+1406816(SB), AX									
  task_controller.go:831	0xe8c20c		e88f5558ff			CALL runtime.newobject(SB)										
  task_controller.go:831	0xe8c211		48898424f8000000		MOVQ AX, 0xf8(SP)											
  context.go:712		0xe8c219		488b0dc0b51200			MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe8c220		488b15c1b51200			MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe8c227		4885c9				TESTQ CX, CX												
  context.go:712		0xe8c22a		7419				JE 0xe8c245												
  context.go:712		0xe8c22c		488b5908			MOVQ 0x8(CX), BX											
  context.go:712		0xe8c230		488b3519f21200			MOVQ CAS-Backend/biz/controller..typeAssert.37(SB), SI							
  context.go:712		0xe8c237		4c8b06				MOVQ 0(SI), R8												
  context.go:712		0xe8c23a		448b4910			MOVL 0x10(CX), R9											
  context.go:712		0xe8c23e		6690				NOPW													
  context.go:712		0xe8c240		e929050000			JMP 0xe8c76e												
  context.go:752		0xe8c245		488b7118			MOVQ 0x18(CX), SI											
  context.go:752		0xe8c249		4c8b842410010000		MOVQ 0x110(SP), R8											
  context.go:752		0xe8c251		498b5820			MOVQ 0x20(R8), BX											
  context.go:752		0xe8c255		488d0d44a41900			LEAQ runtime.types+267936(SB), CX									
  context.go:752		0xe8c25c		4889c7				MOVQ AX, DI												
  context.go:752		0xe8c25f		4889d0				MOVQ DX, AX												
  context.go:752		0xe8c262		ffd6				CALL SI													
  task_controller.go:833	0xe8c264		4885c0				TESTQ AX, AX												
  task_controller.go:833	0xe8c267		0f858b040000			JNE 0xe8c6f8												
  task_controller.go:839	0xe8c26d		440f11bc2498000000		MOVUPS X15, 0x98(SP)											
  task_controller.go:839	0xe8c276		488b8c24f8000000		MOVQ 0xf8(SP), CX											
  task_controller.go:839	0xe8c27e		488b81d8000000			MOVQ 0xd8(CX), AX											
  task_controller.go:839	0xe8c285		488b99e0000000			MOVQ 0xe0(CX), BX											
  task_controller.go:839	0xe8c28c		e88fde5dff			CALL runtime.convTstring(SB)										
  task_controller.go:839	0xe8c291		488d0d88661b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:839	0xe8c298		48898c2498000000		MOVQ CX, 0x98(SP)											
  task_controller.go:839	0xe8c2a0		48898424a0000000		MOVQ AX, 0xa0(SP)											
  print.go:314			0xe8c2a8		488b1dd15d6802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8c2af		488d052af8fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8c2b6		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8c2bb		4889fe				MOVQ DI, SI												
  print.go:314			0xe8c2be		488d8c2498000000		LEAQ 0x98(SP), CX											
  print.go:314			0xe8c2c6		e8953569ff			CALL fmt.Fprintln(SB)											
  task_controller.go:840	0xe8c2cb		48c744244800000000		MOVQ $0x0, 0x48(SP)											
  task_controller.go:23		0xe8c2d4		488b0d7da16802			MOVQ CAS-Backend/config.Cfg+56(SB), CX									
  task_controller.go:23		0xe8c2db		0f1f440000			NOPL 0(AX)(AX*1)											
  task_controller.go:23		0xe8c2e0		4885c9				TESTQ CX, CX												
  task_controller.go:23		0xe8c2e3		7409				JE 0xe8c2ee												
  task_controller.go:23		0xe8c2e5		488b1564a16802			MOVQ CAS-Backend/config.Cfg+48(SB), DX									
  task_controller.go:841	0xe8c2ec		eb27				JMP 0xe8c315												
  task_controller.go:26		0xe8c2ee		488b15139b1200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), DX							
  task_controller.go:26		0xe8c2f5		4885d2				TESTQ DX, DX												
  task_controller.go:26		0xe8c2f8		740f				JE 0xe8c309												
  task_controller.go:26		0xe8c2fa		488b35ff9a1200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), SI							
  task_controller.go:841	0xe8c301		4889d1				MOVQ DX, CX												
  task_controller.go:841	0xe8c304		4889f2				MOVQ SI, DX												
  task_controller.go:841	0xe8c307		eb0c				JMP 0xe8c315												
  task_controller.go:841	0xe8c309		b909000000			MOVL $__major_os_version__+3(SB), CX									
  task_controller.go:841	0xe8c30e		488d15ee8f2e00			LEAQ go:string.*+52731(SB), DX										
  task_controller.go:841	0xe8c315		48c78424d800000000000000	MOVQ $0x0, 0xd8(SP)											
  task_controller.go:841	0xe8c321		488d35b8040000			LEAQ CAS-Backend/biz/controller.ResumeNavigationHandler.func1(SB), SI					
  task_controller.go:841	0xe8c328		4889b424c8000000		MOVQ SI, 0xc8(SP)											
  task_controller.go:841	0xe8c330		488bb424f8000000		MOVQ 0xf8(SP), SI											
  task_controller.go:841	0xe8c338		4889b424d0000000		MOVQ SI, 0xd0(SP)											
  task_controller.go:841	0xe8c340		4c8d442448			LEAQ 0x48(SP), R8											
  task_controller.go:841	0xe8c345		4c898424d8000000		MOVQ R8, 0xd8(SP)											
  task_controller.go:841	0xe8c34d		4889d0				MOVQ DX, AX												
  task_controller.go:841	0xe8c350		4889cb				MOVQ CX, BX												
  task_controller.go:841	0xe8c353		b9064b0000			MOVL $__size_of_stack_commit__+15110(SB), CX								
  task_controller.go:841	0xe8c358		488dbc24c8000000		LEAQ 0xc8(SP), DI											
  task_controller.go:841	0xe8c360		e89b72f8ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_controller.go:852	0xe8c365		4885c0				TESTQ AX, AX												
  task_controller.go:852	0xe8c368		0f8400010000			JE 0xe8c46e												
  task_controller.go:853	0xe8c36e		440f11bc2488000000		MOVUPS X15, 0x88(SP)											
  task_controller.go:853	0xe8c377		7404				JE 0xe8c37d												
  task_controller.go:853	0xe8c379		488b4008			MOVQ 0x8(AX), AX											
  task_controller.go:853	0xe8c37d		4889842488000000		MOVQ AX, 0x88(SP)											
  task_controller.go:853	0xe8c385		48899c2490000000		MOVQ BX, 0x90(SP)											
  print.go:233			0xe8c38d		488b1dec5c6802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8c394		488d0545f7fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8c39b		488d0d3e782f00			LEAQ go:string.*+112344(SB), CX										
  print.go:233			0xe8c3a2		bf17000000			MOVL $__major_os_version__+17(SB), DI									
  print.go:233			0xe8c3a7		488db42488000000		LEAQ 0x88(SP), SI											
  print.go:233			0xe8c3af		41b801000000			MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8c3b5		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8c3b8		e8632e69ff			CALL fmt.Fprintf(SB)											
  print.go:233			0xe8c3bd		0f1f00				NOPL 0(AX)												
  task_controller.go:854	0xe8c3c0		e81bec5dff			CALL runtime.makemap_small(SB)										
  task_controller.go:854	0xe8c3c5		48898424e0000000		MOVQ AX, 0xe0(SP)											
  task_controller.go:854	0xe8c3cd		4889c3				MOVQ AX, BX												
  task_controller.go:854	0xe8c3d0		488d0d36692e00			LEAQ go:string.*+43013(SB), CX										
  task_controller.go:854	0xe8c3d7		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:854	0xe8c3dc		488d059d842100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:854	0xe8c3e3		e8381c5eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:854	0xe8c3e8		488d1531691b00			LEAQ runtime.types+384288(SB), DX									
  task_controller.go:854	0xe8c3ef		488910				MOVQ DX, 0(AX)												
  task_controller.go:854	0xe8c3f2		833d57176d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:854	0xe8c3f9		740d				JE 0xe8c408												
  task_controller.go:854	0xe8c3fb		488b4808			MOVQ 0x8(AX), CX											
  task_controller.go:854	0xe8c3ff		90				NOPL													
  task_controller.go:854	0xe8c400		e81bc05eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:854	0xe8c405		49890b				MOVQ CX, 0(R11)												
  task_controller.go:854	0xe8c408		488d0d11e30e00			LEAQ runtime.staticuint64s(SB), CX									
  task_controller.go:854	0xe8c40f		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8c413		488d0d66842100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8c41a		48898c24b8000000		MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe8c422		488b8c24e0000000		MOVQ 0xe0(SP), CX											
  context.go:1005		0xe8c42a		48898c24c0000000		MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe8c432		488d05a7fa2300			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8c439		488d9c24b8000000		LEAQ 0xb8(SP), BX											
  context.go:1005		0xe8c441		e85a2c58ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8c446		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8c44b		488d0dde2dfe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8c452		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8c455		488b842410010000		MOVQ 0x110(SP), AX											
  context.go:1005		0xe8c45d		0f1f00				NOPL 0(AX)												
  context.go:1005		0xe8c460		e8fb32f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:855	0xe8c465		4881c400010000			ADDQ $.file+179(SB), SP											
  task_controller.go:855	0xe8c46c		5d				POPQ BP													
  task_controller.go:855	0xe8c46d		c3				RET													
  task_controller.go:857	0xe8c46e		488d15ab641b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:857	0xe8c475		4889542478			MOVQ DX, 0x78(SP)											
  task_controller.go:857	0xe8c47a		4c8d05afc9fd01			LEAQ CAS-Backend/biz/controller..stmp_293(SB), R8							
  task_controller.go:857	0xe8c481		4c89842480000000		MOVQ R8, 0x80(SP)											
  print.go:314			0xe8c489		488b1df05b6802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8c490		488d0549f6fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8c497		488d4c2478			LEAQ 0x78(SP), CX											
  print.go:314			0xe8c49c		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8c4a1		4889fe				MOVQ DI, SI												
  print.go:314			0xe8c4a4		e8b73369ff			CALL fmt.Fprintln(SB)											
  task_controller.go:858	0xe8c4a9		488b542448			MOVQ 0x48(SP), DX											
  task_controller.go:858	0xe8c4ae		488b5258			MOVQ 0x58(DX), DX											
  task_controller.go:858	0xe8c4b2		488915370f6d02			MOVQ DX, CAS-Backend/biz/controller.taskstatus(SB)							
  task_controller.go:859	0xe8c4b9		440f117c2468			MOVUPS X15, 0x68(SP)											
  task_controller.go:859	0xe8c4bf		488b052a0f6d02			MOVQ CAS-Backend/biz/controller.taskstatus(SB), AX							
  task_controller.go:859	0xe8c4c6		e8d5db5dff			CALL runtime.convT64(SB)										
  task_controller.go:859	0xe8c4cb		488d158e661b00			LEAQ runtime.types+383840(SB), DX									
  task_controller.go:859	0xe8c4d2		4889542468			MOVQ DX, 0x68(SP)											
  task_controller.go:859	0xe8c4d7		4889442470			MOVQ AX, 0x70(SP)											
  print.go:233			0xe8c4dc		488b1d9d5b6802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8c4e3		488d05f6f5fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8c4ea		488d0d4eac2e00			LEAQ go:string.*+60471(SB), CX										
  print.go:233			0xe8c4f1		bf0b000000			MOVL $__major_os_version__+5(SB), DI									
  print.go:233			0xe8c4f6		488d742468			LEAQ 0x68(SP), SI											
  print.go:233			0xe8c4fb		41b801000000			MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8c501		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8c504		e8172d69ff			CALL fmt.Fprintf(SB)											
  task_controller.go:860	0xe8c509		488b1de00e6d02			MOVQ CAS-Backend/biz/controller.taskstatus(SB), BX							
  task_controller.go:860	0xe8c510		488b9424f8000000		MOVQ 0xf8(SP), DX											
  task_controller.go:860	0xe8c518		488b02				MOVQ 0(DX), AX												
  task_controller.go:860	0xe8c51b		0f1f440000			NOPL 0(AX)(AX*1)											
  task_controller.go:860	0xe8c520		e81bcfb0ff			CALL CAS-Backend/biz/dao.UpdateTaskStatusByID(SB)							
  task_controller.go:860	0xe8c525		84c0				TESTL AL, AL												
  task_controller.go:861	0xe8c527		0f84e0000000			JE 0xe8c60d												
  task_controller.go:862	0xe8c52d		488d15ec631b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:862	0xe8c534		4889542458			MOVQ DX, 0x58(SP)											
  task_controller.go:862	0xe8c539		488d1500c9fd01			LEAQ CAS-Backend/biz/controller..stmp_294(SB), DX							
  task_controller.go:862	0xe8c540		4889542460			MOVQ DX, 0x60(SP)											
  print.go:314			0xe8c545		488b1d345b6802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8c54c		488d058df5fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8c553		488d4c2458			LEAQ 0x58(SP), CX											
  print.go:314			0xe8c558		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8c55d		4889fe				MOVQ DI, SI												
  print.go:314			0xe8c560		e8fb3269ff			CALL fmt.Fprintln(SB)											
  task_controller.go:863	0xe8c565		e876ea5dff			CALL runtime.makemap_small(SB)										
  task_controller.go:863	0xe8c56a		48898424e0000000		MOVQ AX, 0xe0(SP)											
  task_controller.go:863	0xe8c572		4889c3				MOVQ AX, BX												
  task_controller.go:863	0xe8c575		488d0d91672e00			LEAQ go:string.*+43013(SB), CX										
  task_controller.go:863	0xe8c57c		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:863	0xe8c581		488d05f8822100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:863	0xe8c588		e8931a5eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:863	0xe8c58d		488d158c671b00			LEAQ runtime.types+384288(SB), DX									
  task_controller.go:863	0xe8c594		488910				MOVQ DX, 0(AX)												
  task_controller.go:863	0xe8c597		833db2156d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:863	0xe8c59e		6690				NOPW													
  task_controller.go:863	0xe8c5a0		740c				JE 0xe8c5ae												
  task_controller.go:863	0xe8c5a2		488b4808			MOVQ 0x8(AX), CX											
  task_controller.go:863	0xe8c5a6		e875be5eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:863	0xe8c5ab		49890b				MOVQ CX, 0(R11)												
  task_controller.go:863	0xe8c5ae		488d0d73e10e00			LEAQ runtime.staticuint64s+8(SB), CX									
  task_controller.go:863	0xe8c5b5		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8c5b9		488d0dc0822100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8c5c0		48898c24b8000000		MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe8c5c8		488b8c24e0000000		MOVQ 0xe0(SP), CX											
  context.go:1005		0xe8c5d0		48898c24c0000000		MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe8c5d8		488d0501f92300			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8c5df		488d9c24b8000000		LEAQ 0xb8(SP), BX											
  context.go:1005		0xe8c5e7		e8b42a58ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8c5ec		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8c5f1		488d0d382cfe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8c5f8		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8c5fb		488b842410010000		MOVQ 0x110(SP), AX											
  context.go:1005		0xe8c603		e85831f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:868	0xe8c608		e9e2000000			JMP 0xe8c6ef												
  task_controller.go:865	0xe8c60d		488d150c631b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:865	0xe8c614		48899424e8000000		MOVQ DX, 0xe8(SP)											
  task_controller.go:865	0xe8c61c		488d152dc8fd01			LEAQ CAS-Backend/biz/controller..stmp_296(SB), DX							
  task_controller.go:865	0xe8c623		48899424f0000000		MOVQ DX, 0xf0(SP)											
  print.go:314			0xe8c62b		488b1d4e5a6802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8c632		488d05a7f4fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8c639		488d8c24e8000000		LEAQ 0xe8(SP), CX											
  print.go:314			0xe8c641		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8c646		4889fe				MOVQ DI, SI												
  print.go:314			0xe8c649		e8123269ff			CALL fmt.Fprintln(SB)											
  task_controller.go:866	0xe8c64e		e88de95dff			CALL runtime.makemap_small(SB)										
  task_controller.go:866	0xe8c653		48898424e0000000		MOVQ AX, 0xe0(SP)											
  task_controller.go:866	0xe8c65b		4889c3				MOVQ AX, BX												
  task_controller.go:866	0xe8c65e		488d0da8662e00			LEAQ go:string.*+43013(SB), CX										
  task_controller.go:866	0xe8c665		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:866	0xe8c66a		488d050f822100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:866	0xe8c671		e8aa195eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:866	0xe8c676		488d15a3661b00			LEAQ runtime.types+384288(SB), DX									
  task_controller.go:866	0xe8c67d		488910				MOVQ DX, 0(AX)												
  task_controller.go:866	0xe8c680		833dc9146d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:866	0xe8c687		740c				JE 0xe8c695												
  task_controller.go:866	0xe8c689		488b4808			MOVQ 0x8(AX), CX											
  task_controller.go:866	0xe8c68d		e88ebd5eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:866	0xe8c692		49890b				MOVQ CX, 0(R11)												
  task_controller.go:866	0xe8c695		488d0d84e00e00			LEAQ runtime.staticuint64s(SB), CX									
  task_controller.go:866	0xe8c69c		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8c6a0		488d0dd9812100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8c6a7		48898c24b8000000		MOVQ CX, 0xb8(SP)											
  context.go:1005		0xe8c6af		488b8c24e0000000		MOVQ 0xe0(SP), CX											
  context.go:1005		0xe8c6b7		48898c24c0000000		MOVQ CX, 0xc0(SP)											
  context.go:1005		0xe8c6bf		488d051af82300			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8c6c6		488d9c24b8000000		LEAQ 0xb8(SP), BX											
  context.go:1005		0xe8c6ce		e8cd2958ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8c6d3		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8c6d8		488d0d512bfe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8c6df		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8c6e2		488b842410010000		MOVQ 0x110(SP), AX											
  context.go:1005		0xe8c6ea		e87130f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:868	0xe8c6ef		4881c400010000			ADDQ $.file+179(SB), SP											
  task_controller.go:868	0xe8c6f6		5d				POPQ BP													
  task_controller.go:868	0xe8c6f7		c3				RET													
  context.go:752		0xe8c6f8		4889442438			MOVQ AX, 0x38(SP)											
  context.go:752		0xe8c6fd		48895c2440			MOVQ BX, 0x40(SP)											
  task_controller.go:834	0xe8c702		488d1517621b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:834	0xe8c709		48899424a8000000		MOVQ DX, 0xa8(SP)											
  task_controller.go:834	0xe8c711		488d15b8c0fd01			LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  task_controller.go:834	0xe8c718		48899424b0000000		MOVQ DX, 0xb0(SP)											
  print.go:314			0xe8c720		488b1d59596802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8c727		488d05b2f3fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8c72e		488d8c24a8000000		LEAQ 0xa8(SP), CX											
  print.go:314			0xe8c736		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8c73b		4889fe				MOVQ DI, SI												
  print.go:314			0xe8c73e		6690				NOPW													
  print.go:314			0xe8c740		e81b3169ff			CALL fmt.Fprintln(SB)											
  task_controller.go:835	0xe8c745		488b842410010000		MOVQ 0x110(SP), AX											
  task_controller.go:835	0xe8c74d		bb90010000			MOVL $.file+323(SB), BX											
  task_controller.go:835	0xe8c752		488b4c2438			MOVQ 0x38(SP), CX											
  task_controller.go:835	0xe8c757		488b7c2440			MOVQ 0x40(SP), DI											
  task_controller.go:835	0xe8c75c		0f1f4000			NOPL 0(AX)												
  task_controller.go:835	0xe8c760		e83be9f6ff			CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  task_controller.go:836	0xe8c765		4881c400010000			ADDQ $.file+179(SB), SP											
  task_controller.go:836	0xe8c76c		5d				POPQ BP													
  task_controller.go:836	0xe8c76d		c3				RET													
  context.go:712		0xe8c76e		4d89ca				MOVQ R9, R10												
  context.go:712		0xe8c771		4d21c1				ANDQ R8, R9												
  context.go:712		0xe8c774		49c1e104			SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe8c778		4d8b5c3108			MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe8c77d		0f1f00				NOPL 0(AX)												
  context.go:712		0xe8c780		4939db				CMPQ R11, BX												
  context.go:712		0xe8c783		742f				JE 0xe8c7b4												
  context.go:712		0xe8c785		4d8d4a01			LEAQ 0x1(R10), R9											
  context.go:712		0xe8c789		4d85db				TESTQ R11, R11												
  context.go:712		0xe8c78c		75e0				JNE 0xe8c76e												
  context.go:712		0xe8c78e		4889542450			MOVQ DX, 0x50(SP)											
  context.go:712		0xe8c793		488d05b6ec1200			LEAQ CAS-Backend/biz/controller..typeAssert.37(SB), AX							
  context.go:712		0xe8c79a		e8412b58ff			CALL runtime.typeAssert(SB)										
  context.go:752		0xe8c79f		488b542450			MOVQ 0x50(SP), DX											
  context.go:712		0xe8c7a4		4889c1				MOVQ AX, CX												
  context.go:752		0xe8c7a7		488b8424f8000000		MOVQ 0xf8(SP), AX											
  context.go:712		0xe8c7af		e991faffff			JMP 0xe8c245												
  context.go:712		0xe8c7b4		498b4c3110			MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe8c7b9		e987faffff			JMP 0xe8c245												
  task_controller.go:830	0xe8c7be		4889442408			MOVQ AX, 0x8(SP)											
  task_controller.go:830	0xe8c7c3		e8189d5eff			CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:830	0xe8c7c8		488b442408			MOVQ 0x8(SP), AX											
  task_controller.go:830	0xe8c7cd		e90efaffff			JMP CAS-Backend/biz/controller.ResumeNavigationHandler(SB)						
  :-1				0xe8c7d2		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7d3		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7d4		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7d5		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7d6		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7d7		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7d8		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7d9		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7da		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7db		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7dc		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7dd		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7de		cc				INT $__subsystem__(SB)											
  :-1				0xe8c7df		cc				INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.ResumeNavigationHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:841	0xe8c7e0		493b6610		CMPQ SP, 0x10(R14)							
  task_controller.go:841	0xe8c7e4		0f869e000000		JBE 0xe8c888								
  task_controller.go:841	0xe8c7ea		55			PUSHQ BP								
  task_controller.go:841	0xe8c7eb		4889e5			MOVQ SP, BP								
  task_controller.go:841	0xe8c7ee		4883ec38		SUBQ $__major_os_version__+50(SB), SP					
  task_controller.go:842	0xe8c7f2		48895c2450		MOVQ BX, 0x50(SP)							
  task_controller.go:842	0xe8c7f7		4889442448		MOVQ AX, 0x48(SP)							
  task_controller.go:841	0xe8c7fc		488b4a10		MOVQ 0x10(DX), CX							
  task_controller.go:841	0xe8c800		48894c2428		MOVQ CX, 0x28(SP)							
  task_controller.go:841	0xe8c805		488b5208		MOVQ 0x8(DX), DX							
  task_controller.go:841	0xe8c809		4889542430		MOVQ DX, 0x30(SP)							
  task_controller.go:842	0xe8c80e		e84d9bf8ff		CALL CAS-Backend/pkg/agvcontrol.SendResumeNavigation(SB)		
  task_controller.go:842	0xe8c813		4885c0			TESTQ AX, AX								
  task_controller.go:842	0xe8c816		756a			JNE 0xe8c882								
  task_controller.go:845	0xe8c818		488b542430		MOVQ 0x30(SP), DX							
  task_controller.go:845	0xe8c81d		488b8ad8000000		MOVQ 0xd8(DX), CX							
  task_controller.go:845	0xe8c824		488bbae0000000		MOVQ 0xe0(DX), DI							
  task_controller.go:845	0xe8c82b		488b442448		MOVQ 0x48(SP), AX							
  task_controller.go:845	0xe8c830		488b5c2450		MOVQ 0x50(SP), BX							
  task_controller.go:845	0xe8c835		be01000000		MOVL $__minor_os_version__(SB), SI					
  task_controller.go:845	0xe8c83a		e841b4f8ff		CALL CAS-Backend/pkg/agvcontrol.SendRobotTaskListStatusReq(SB)		
  task_controller.go:845	0xe8c83f		90			NOPL									
  task_controller.go:846	0xe8c840		4885db			TESTQ BX, BX								
  task_controller.go:846	0xe8c843		7531			JNE 0xe8c876								
  task_controller.go:849	0xe8c845		833d04136d0200		CMPL runtime.writeBarrier(SB), $0x0					
  task_controller.go:849	0xe8c84c		7507			JNE 0xe8c855								
  task_controller.go:849	0xe8c84e		488b4c2428		MOVQ 0x28(SP), CX							
  task_controller.go:849	0xe8c853		eb14			JMP 0xe8c869								
  task_controller.go:849	0xe8c855		e8e6bb5eff		CALL runtime.gcWriteBarrier2(SB)					
  task_controller.go:849	0xe8c85a		498903			MOVQ AX, 0(R11)								
  task_controller.go:849	0xe8c85d		488b4c2428		MOVQ 0x28(SP), CX							
  task_controller.go:849	0xe8c862		488b11			MOVQ 0(CX), DX								
  task_controller.go:849	0xe8c865		49895308		MOVQ DX, 0x8(R11)							
  task_controller.go:849	0xe8c869		488901			MOVQ AX, 0(CX)								
  task_controller.go:850	0xe8c86c		31c0			XORL AX, AX								
  task_controller.go:850	0xe8c86e		31db			XORL BX, BX								
  task_controller.go:850	0xe8c870		4883c438		ADDQ $__major_os_version__+50(SB), SP					
  task_controller.go:850	0xe8c874		5d			POPQ BP									
  task_controller.go:850	0xe8c875		c3			RET									
  task_controller.go:847	0xe8c876		4889d8			MOVQ BX, AX								
  task_controller.go:847	0xe8c879		4889cb			MOVQ CX, BX								
  task_controller.go:847	0xe8c87c		4883c438		ADDQ $__major_os_version__+50(SB), SP					
  task_controller.go:847	0xe8c880		5d			POPQ BP									
  task_controller.go:847	0xe8c881		c3			RET									
  task_controller.go:843	0xe8c882		4883c438		ADDQ $__major_os_version__+50(SB), SP					
  task_controller.go:843	0xe8c886		5d			POPQ BP									
  task_controller.go:843	0xe8c887		c3			RET									
  task_controller.go:841	0xe8c888		4889442408		MOVQ AX, 0x8(SP)							
  task_controller.go:841	0xe8c88d		48895c2410		MOVQ BX, 0x10(SP)							
  task_controller.go:841	0xe8c892		e8c99b5eff		CALL runtime.morestack.abi0(SB)						
  task_controller.go:841	0xe8c897		488b442408		MOVQ 0x8(SP), AX							
  task_controller.go:841	0xe8c89c		488b5c2410		MOVQ 0x10(SP), BX							
  task_controller.go:841	0xe8c8a1		e93affffff		JMP CAS-Backend/biz/controller.ResumeNavigationHandler.func1(SB)	
  :-1				0xe8c8a6		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8a7		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8a8		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8a9		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8aa		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8ab		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8ac		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8ad		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8ae		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8af		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8b0		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8b1		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8b2		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8b3		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8b4		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8b5		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8b6		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8b7		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8b8		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8b9		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8ba		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8bb		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8bc		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8bd		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8be		cc			INT $__subsystem__(SB)							
  :-1				0xe8c8bf		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.CancelNavigationHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:870	0xe8c8c0		4c8d6424b0		LEAQ -0x50(SP), R12											
  task_controller.go:870	0xe8c8c5		4d3b6610		CMPQ R12, 0x10(R14)											
  task_controller.go:870	0xe8c8c9		0f8660040000		JBE 0xe8cd2f												
  task_controller.go:870	0xe8c8cf		55			PUSHQ BP												
  task_controller.go:870	0xe8c8d0		4889e5			MOVQ SP, BP												
  task_controller.go:870	0xe8c8d3		4881ecc8000000		SUBQ $.file+123(SB), SP											
  context.go:712		0xe8c8da		48898424d8000000	MOVQ AX, 0xd8(SP)											
  task_controller.go:871	0xe8c8e2		488d0577fe2a00		LEAQ runtime.types+1406816(SB), AX									
  task_controller.go:871	0xe8c8e9		e8b24e58ff		CALL runtime.newobject(SB)										
  task_controller.go:871	0xe8c8ee		48898424c0000000	MOVQ AX, 0xc0(SP)											
  context.go:712		0xe8c8f6		488b0de3ae1200		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe8c8fd		488b15e4ae1200		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe8c904		4885c9			TESTQ CX, CX												
  context.go:712		0xe8c907		741c			JE 0xe8c925												
  context.go:712		0xe8c909		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe8c90d		488b355ceb1200		MOVQ CAS-Backend/biz/controller..typeAssert.38(SB), SI							
  context.go:712		0xe8c914		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe8c917		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe8c91b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe8c920		e9bc030000		JMP 0xe8cce1												
  context.go:752		0xe8c925		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe8c929		4c8b8424d8000000	MOVQ 0xd8(SP), R8											
  context.go:752		0xe8c931		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe8c935		488d0d649d1900		LEAQ runtime.types+267936(SB), CX									
  context.go:752		0xe8c93c		4889c7			MOVQ AX, DI												
  context.go:752		0xe8c93f		4889d0			MOVQ DX, AX												
  context.go:752		0xe8c942		ffd6			CALL SI													
  task_controller.go:873	0xe8c944		4885c0			TESTQ AX, AX												
  task_controller.go:873	0xe8c947		0f8524030000		JNE 0xe8cc71												
  task_controller.go:879	0xe8c94d		440f11bc2480000000	MOVUPS X15, 0x80(SP)											
  task_controller.go:879	0xe8c956		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  task_controller.go:879	0xe8c95e		488b81d8000000		MOVQ 0xd8(CX), AX											
  task_controller.go:879	0xe8c965		488b99e0000000		MOVQ 0xe0(CX), BX											
  task_controller.go:879	0xe8c96c		e8afd75dff		CALL runtime.convTstring(SB)										
  task_controller.go:879	0xe8c971		488d0da85f1b00		LEAQ runtime.types+383264(SB), CX									
  task_controller.go:879	0xe8c978		48898c2480000000	MOVQ CX, 0x80(SP)											
  task_controller.go:879	0xe8c980		4889842488000000	MOVQ AX, 0x88(SP)											
  print.go:314			0xe8c988		488b1df1566802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8c98f		488d054af1fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8c996		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8c99b		4889fe			MOVQ DI, SI												
  print.go:314			0xe8c99e		488d8c2480000000	LEAQ 0x80(SP), CX											
  print.go:314			0xe8c9a6		e8b52e69ff		CALL fmt.Fprintln(SB)											
  task_controller.go:23		0xe8c9ab		488b0da69a6802		MOVQ CAS-Backend/config.Cfg+56(SB), CX									
  task_controller.go:23		0xe8c9b2		4885c9			TESTQ CX, CX												
  task_controller.go:23		0xe8c9b5		740b			JE 0xe8c9c2												
  task_controller.go:23		0xe8c9b7		488b15929a6802		MOVQ CAS-Backend/config.Cfg+48(SB), DX									
  task_controller.go:23		0xe8c9be		6690			NOPW													
  task_controller.go:880	0xe8c9c0		eb27			JMP 0xe8c9e9												
  task_controller.go:26		0xe8c9c2		488b153f941200		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), DX							
  task_controller.go:26		0xe8c9c9		4885d2			TESTQ DX, DX												
  task_controller.go:26		0xe8c9cc		740f			JE 0xe8c9dd												
  task_controller.go:26		0xe8c9ce		488b352b941200		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), SI							
  task_controller.go:880	0xe8c9d5		4889d1			MOVQ DX, CX												
  task_controller.go:880	0xe8c9d8		4889f2			MOVQ SI, DX												
  task_controller.go:880	0xe8c9db		eb0c			JMP 0xe8c9e9												
  task_controller.go:880	0xe8c9dd		b909000000		MOVL $__major_os_version__+3(SB), CX									
  task_controller.go:880	0xe8c9e2		488d151a892e00		LEAQ go:string.*+52731(SB), DX										
  task_controller.go:880	0xe8c9e9		4889d0			MOVQ DX, AX												
  task_controller.go:880	0xe8c9ec		4889cb			MOVQ CX, BX												
  task_controller.go:880	0xe8c9ef		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX								
  task_controller.go:880	0xe8c9f4		488d3d95ade401		LEAQ go:func.*+6056(SB), DI										
  task_controller.go:880	0xe8c9fb		0f1f440000		NOPL 0(AX)(AX*1)											
  task_controller.go:880	0xe8ca00		e8fb6bf8ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_controller.go:883	0xe8ca05		4885c0			TESTQ AX, AX												
  task_controller.go:883	0xe8ca08		0f8480010000		JE 0xe8cb8e												
  task_controller.go:880	0xe8ca0e		4889442440		MOVQ AX, 0x40(SP)											
  task_controller.go:884	0xe8ca13		440f117c2470		MOVUPS X15, 0x70(SP)											
  task_controller.go:884	0xe8ca19		7407			JE 0xe8ca22												
  task_controller.go:884	0xe8ca1b		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:884	0xe8ca1f		90			NOPL													
  task_controller.go:884	0xe8ca20		eb03			JMP 0xe8ca25												
  task_controller.go:884	0xe8ca22		4889c2			MOVQ AX, DX												
  task_controller.go:880	0xe8ca25		48895c2450		MOVQ BX, 0x50(SP)											
  task_controller.go:884	0xe8ca2a		4889542470		MOVQ DX, 0x70(SP)											
  task_controller.go:884	0xe8ca2f		48895c2478		MOVQ BX, 0x78(SP)											
  print.go:233			0xe8ca34		488b1545566802		MOVQ os.Stdout(SB), DX											
  print.go:233			0xe8ca3b		488d059ef0fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8ca42		488d0dae712f00		LEAQ go:string.*+112367(SB), CX										
  print.go:233			0xe8ca49		bf17000000		MOVL $__major_os_version__+17(SB), DI									
  print.go:233			0xe8ca4e		488d742470		LEAQ 0x70(SP), SI											
  print.go:233			0xe8ca53		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8ca59		4d89c1			MOVQ R8, R9												
  print.go:233			0xe8ca5c		4889d3			MOVQ DX, BX												
  print.go:233			0xe8ca5f		90			NOPL													
  print.go:233			0xe8ca60		e8bb2769ff		CALL fmt.Fprintf(SB)											
  task_controller.go:885	0xe8ca65		e876e55dff		CALL runtime.makemap_small(SB)										
  task_controller.go:885	0xe8ca6a		48898424b8000000	MOVQ AX, 0xb8(SP)											
  task_controller.go:885	0xe8ca72		4889c3			MOVQ AX, BX												
  task_controller.go:885	0xe8ca75		488d0d91622e00		LEAQ go:string.*+43013(SB), CX										
  task_controller.go:885	0xe8ca7c		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:885	0xe8ca81		488d05f87d2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:885	0xe8ca88		e893155eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:885	0xe8ca8d		488d158c621b00		LEAQ runtime.types+384288(SB), DX									
  task_controller.go:885	0xe8ca94		488910			MOVQ DX, 0(AX)												
  task_controller.go:885	0xe8ca97		833db2106d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:885	0xe8ca9e		6690			NOPW													
  task_controller.go:885	0xe8caa0		740c			JE 0xe8caae												
  task_controller.go:885	0xe8caa2		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:885	0xe8caa6		e875b95eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:885	0xe8caab		49890b			MOVQ CX, 0(R11)												
  task_controller.go:885	0xe8caae		488d0d6bdc0e00		LEAQ runtime.staticuint64s(SB), CX									
  task_controller.go:885	0xe8cab5		48894808		MOVQ CX, 0x8(AX)											
  task_controller.go:885	0xe8cab9		488b4c2440		MOVQ 0x40(SP), CX											
  task_controller.go:885	0xe8cabe		488b4918		MOVQ 0x18(CX), CX											
  task_controller.go:885	0xe8cac2		488b442450		MOVQ 0x50(SP), AX											
  task_controller.go:885	0xe8cac7		ffd1			CALL CX													
  task_controller.go:885	0xe8cac9		e852d65dff		CALL runtime.convTstring(SB)										
  task_controller.go:885	0xe8cace		48898424b0000000	MOVQ AX, 0xb0(SP)											
  task_controller.go:885	0xe8cad6		488b9c24b8000000	MOVQ 0xb8(SP), BX											
  task_controller.go:885	0xe8cade		488d0d0c622e00		LEAQ go:string.*+42985(SB), CX										
  task_controller.go:885	0xe8cae5		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:885	0xe8caea		488d058f7d2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:885	0xe8caf1		e82a155eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:885	0xe8caf6		488d0d235e1b00		LEAQ runtime.types+383264(SB), CX									
  task_controller.go:885	0xe8cafd		488908			MOVQ CX, 0(AX)												
  task_controller.go:885	0xe8cb00		833d49106d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:885	0xe8cb07		750a			JNE 0xe8cb13												
  task_controller.go:885	0xe8cb09		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  task_controller.go:885	0xe8cb11		eb18			JMP 0xe8cb2b												
  task_controller.go:885	0xe8cb13		e828b95eff		CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:885	0xe8cb18		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  task_controller.go:885	0xe8cb20		49890b			MOVQ CX, 0(R11)												
  task_controller.go:885	0xe8cb23		488b5008		MOVQ 0x8(AX), DX											
  task_controller.go:885	0xe8cb27		49895308		MOVQ DX, 0x8(R11)											
  task_controller.go:885	0xe8cb2b		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8cb2f		488d0d4a7d2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8cb36		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005		0xe8cb3e		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  context.go:1005		0xe8cb46		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  context.go:1005		0xe8cb4e		488d058bf32300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8cb55		488d9c24a0000000	LEAQ 0xa0(SP), BX											
  context.go:1005		0xe8cb5d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe8cb60		e83b2558ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8cb65		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8cb6a		488d0dbf26fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8cb71		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8cb74		488b8424d8000000	MOVQ 0xd8(SP), AX											
  context.go:1005		0xe8cb7c		0f1f4000		NOPL 0(AX)												
  context.go:1005		0xe8cb80		e8db2bf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:886	0xe8cb85		4881c4c8000000		ADDQ $.file+123(SB), SP											
  task_controller.go:886	0xe8cb8c		5d			POPQ BP													
  task_controller.go:886	0xe8cb8d		c3			RET													
  task_controller.go:888	0xe8cb8e		488d158b5d1b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:888	0xe8cb95		4889542460		MOVQ DX, 0x60(SP)											
  task_controller.go:888	0xe8cb9a		488d15bfc2fd01		LEAQ CAS-Backend/biz/controller..stmp_300(SB), DX							
  task_controller.go:888	0xe8cba1		4889542468		MOVQ DX, 0x68(SP)											
  print.go:314			0xe8cba6		488b1dd3546802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8cbad		488d052ceffd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8cbb4		488d4c2460		LEAQ 0x60(SP), CX											
  print.go:314			0xe8cbb9		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8cbbe		4889fe			MOVQ DI, SI												
  print.go:314			0xe8cbc1		e89a2c69ff		CALL fmt.Fprintln(SB)											
  task_controller.go:889	0xe8cbc6		e815e45dff		CALL runtime.makemap_small(SB)										
  task_controller.go:889	0xe8cbcb		48898424b8000000	MOVQ AX, 0xb8(SP)											
  task_controller.go:889	0xe8cbd3		4889c3			MOVQ AX, BX												
  task_controller.go:889	0xe8cbd6		488d0d30612e00		LEAQ go:string.*+43013(SB), CX										
  task_controller.go:889	0xe8cbdd		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:889	0xe8cbe2		488d05977c2100		LEAQ runtime.types+784512(SB), AX									
  task_controller.go:889	0xe8cbe9		e832145eff		CALL runtime.mapassign_faststr(SB)									
  task_controller.go:889	0xe8cbee		488d152b611b00		LEAQ runtime.types+384288(SB), DX									
  task_controller.go:889	0xe8cbf5		488910			MOVQ DX, 0(AX)												
  task_controller.go:889	0xe8cbf8		833d510f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:889	0xe8cbff		90			NOPL													
  task_controller.go:889	0xe8cc00		740c			JE 0xe8cc0e												
  task_controller.go:889	0xe8cc02		488b4808		MOVQ 0x8(AX), CX											
  task_controller.go:889	0xe8cc06		e815b85eff		CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:889	0xe8cc0b		49890b			MOVQ CX, 0(R11)												
  task_controller.go:889	0xe8cc0e		488d0d13db0e00		LEAQ runtime.staticuint64s+8(SB), CX									
  task_controller.go:889	0xe8cc15		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8cc19		488d0d607c2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8cc20		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005		0xe8cc28		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  context.go:1005		0xe8cc30		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  context.go:1005		0xe8cc38		488d05a1f22300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8cc3f		488d9c24a0000000	LEAQ 0xa0(SP), BX											
  context.go:1005		0xe8cc47		e8542458ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8cc4c		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8cc51		488d0dd825fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8cc58		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8cc5b		488b8424d8000000	MOVQ 0xd8(SP), AX											
  context.go:1005		0xe8cc63		e8f82af7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:890	0xe8cc68		4881c4c8000000		ADDQ $.file+123(SB), SP											
  task_controller.go:890	0xe8cc6f		5d			POPQ BP													
  task_controller.go:890	0xe8cc70		c3			RET													
  context.go:752		0xe8cc71		4889442438		MOVQ AX, 0x38(SP)											
  context.go:752		0xe8cc76		48895c2448		MOVQ BX, 0x48(SP)											
  task_controller.go:874	0xe8cc7b		488d159e5c1b00		LEAQ runtime.types+383264(SB), DX									
  task_controller.go:874	0xe8cc82		4889942490000000	MOVQ DX, 0x90(SP)											
  task_controller.go:874	0xe8cc8a		488d153fbbfd01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  task_controller.go:874	0xe8cc91		4889942498000000	MOVQ DX, 0x98(SP)											
  print.go:314			0xe8cc99		488b1de0536802		MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8cca0		488d0539eefd01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8cca7		488d8c2490000000	LEAQ 0x90(SP), CX											
  print.go:314			0xe8ccaf		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8ccb4		4889fe			MOVQ DI, SI												
  print.go:314			0xe8ccb7		e8a42b69ff		CALL fmt.Fprintln(SB)											
  task_controller.go:875	0xe8ccbc		488b8424d8000000	MOVQ 0xd8(SP), AX											
  task_controller.go:875	0xe8ccc4		bb90010000		MOVL $.file+323(SB), BX											
  task_controller.go:875	0xe8ccc9		488b4c2438		MOVQ 0x38(SP), CX											
  task_controller.go:875	0xe8ccce		488b7c2448		MOVQ 0x48(SP), DI											
  task_controller.go:875	0xe8ccd3		e8c8e3f6ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  task_controller.go:876	0xe8ccd8		4881c4c8000000		ADDQ $.file+123(SB), SP											
  task_controller.go:876	0xe8ccdf		5d			POPQ BP													
  task_controller.go:876	0xe8cce0		c3			RET													
  context.go:712		0xe8cce1		4d89ca			MOVQ R9, R10												
  context.go:712		0xe8cce4		4d21c1			ANDQ R8, R9												
  context.go:712		0xe8cce7		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe8cceb		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe8ccf0		4939db			CMPQ R11, BX												
  context.go:712		0xe8ccf3		7430			JE 0xe8cd25												
  context.go:712		0xe8ccf5		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe8ccf9		4d85db			TESTQ R11, R11												
  context.go:712		0xe8ccfc		75e3			JNE 0xe8cce1												
  context.go:712		0xe8ccfe		4889542458		MOVQ DX, 0x58(SP)											
  context.go:712		0xe8cd03		488d0566e71200		LEAQ CAS-Backend/biz/controller..typeAssert.38(SB), AX							
  context.go:712		0xe8cd0a		e8d12558ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe8cd0f		488b542458		MOVQ 0x58(SP), DX											
  context.go:712		0xe8cd14		4889c1			MOVQ AX, CX												
  context.go:752		0xe8cd17		488b8424c0000000	MOVQ 0xc0(SP), AX											
  context.go:752		0xe8cd1f		90			NOPL													
  context.go:712		0xe8cd20		e900fcffff		JMP 0xe8c925												
  context.go:712		0xe8cd25		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe8cd2a		e9f6fbffff		JMP 0xe8c925												
  task_controller.go:870	0xe8cd2f		4889442408		MOVQ AX, 0x8(SP)											
  task_controller.go:870	0xe8cd34		e8a7975eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:870	0xe8cd39		488b442408		MOVQ 0x8(SP), AX											
  task_controller.go:870	0xe8cd3e		6690			NOPW													
  task_controller.go:870	0xe8cd40		e97bfbffff		JMP CAS-Backend/biz/controller.CancelNavigationHandler(SB)						
  :-1				0xe8cd45		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd46		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd47		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd48		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd49		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd4a		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd4b		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd4c		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd4d		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd4e		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd4f		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd50		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd51		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd52		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd53		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd54		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd55		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd56		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd57		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd58		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd59		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd5a		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd5b		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd5c		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd5d		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd5e		cc			INT $__subsystem__(SB)											
  :-1				0xe8cd5f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.ExcTaskHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:897	0xe8cd60		4c8da424f0fbffff		LEAQ 0xfffffbf0(SP), R12										
  task_controller.go:897	0xe8cd68		4d3b6610			CMPQ R12, 0x10(R14)											
  task_controller.go:897	0xe8cd6c		0f86d5130000			JBE 0xe8e147												
  task_controller.go:897	0xe8cd72		55				PUSHQ BP												
  task_controller.go:897	0xe8cd73		4889e5				MOVQ SP, BP												
  task_controller.go:897	0xe8cd76		4881ec88040000			SUBQ $__file_alignment__+648(SB), SP									
  context.go:712		0xe8cd7d		4889842498040000		MOVQ AX, 0x498(SP)											
  task_controller.go:898	0xe8cd85		488d05d4f92a00			LEAQ runtime.types+1406816(SB), AX									
  task_controller.go:898	0xe8cd8c		e80f4a58ff			CALL runtime.newobject(SB)										
  task_controller.go:898	0xe8cd91		4889842480040000		MOVQ AX, 0x480(SP)											
  context.go:712		0xe8cd99		488b0d40aa1200			MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe8cda0		488b1541aa1200			MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe8cda7		4885c9				TESTQ CX, CX												
  context.go:712		0xe8cdaa		7419				JE 0xe8cdc5												
  context.go:712		0xe8cdac		488b5908			MOVQ 0x8(CX), BX											
  context.go:712		0xe8cdb0		488b35d9e61200			MOVQ CAS-Backend/biz/controller..typeAssert.39(SB), SI							
  context.go:712		0xe8cdb7		4c8b06				MOVQ 0(SI), R8												
  context.go:712		0xe8cdba		448b4910			MOVL 0x10(CX), R9											
  context.go:712		0xe8cdbe		6690				NOPW													
  context.go:712		0xe8cdc0		e92c130000			JMP 0xe8e0f1												
  context.go:752		0xe8cdc5		488b7118			MOVQ 0x18(CX), SI											
  context.go:752		0xe8cdc9		4c8b842498040000		MOVQ 0x498(SP), R8											
  context.go:752		0xe8cdd1		498b5820			MOVQ 0x20(R8), BX											
  context.go:752		0xe8cdd5		488d0dc4981900			LEAQ runtime.types+267936(SB), CX									
  context.go:752		0xe8cddc		4889c7				MOVQ AX, DI												
  context.go:752		0xe8cddf		4889d0				MOVQ DX, AX												
  context.go:752		0xe8cde2		ffd6				CALL SI													
  task_controller.go:900	0xe8cde4		4885c0				TESTQ AX, AX												
  task_controller.go:900	0xe8cde7		0f8588120000			JNE 0xe8e075												
  task_controller.go:906	0xe8cded		440f11bc2428030000		MOVUPS X15, 0x328(SP)											
  task_controller.go:906	0xe8cdf6		488b8c2480040000		MOVQ 0x480(SP), CX											
  task_controller.go:906	0xe8cdfe		488b81c0000000			MOVQ 0xc0(CX), AX											
  task_controller.go:906	0xe8ce05		488b99c8000000			MOVQ 0xc8(CX), BX											
  task_controller.go:906	0xe8ce0c		e80fd35dff			CALL runtime.convTstring(SB)										
  task_controller.go:906	0xe8ce11		488d0d085b1b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:906	0xe8ce18		48898c2428030000		MOVQ CX, 0x328(SP)											
  task_controller.go:906	0xe8ce20		4889842430030000		MOVQ AX, 0x330(SP)											
  print.go:233			0xe8ce28		488b1d51526802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8ce2f		488d05aaecfd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8ce36		bf15000000			MOVL $__major_os_version__+15(SB), DI									
  print.go:233			0xe8ce3b		488db42428030000		LEAQ 0x328(SP), SI											
  print.go:233			0xe8ce43		41b801000000			MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8ce49		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8ce4c		488d0d66492f00			LEAQ go:string.*+103089(SB), CX										
  print.go:233			0xe8ce53		e8c82369ff			CALL fmt.Fprintf(SB)											
  task_controller.go:23		0xe8ce58		488b0df9956802			MOVQ CAS-Backend/config.Cfg+56(SB), CX									
  task_controller.go:23		0xe8ce5f		90				NOPL													
  task_controller.go:23		0xe8ce60		4885c9				TESTQ CX, CX												
  task_controller.go:23		0xe8ce63		7409				JE 0xe8ce6e												
  task_controller.go:23		0xe8ce65		488b15e4956802			MOVQ CAS-Backend/config.Cfg+48(SB), DX									
  task_controller.go:908	0xe8ce6c		eb21				JMP 0xe8ce8f												
  task_controller.go:26		0xe8ce6e		488b0d938f1200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), CX							
  task_controller.go:26		0xe8ce75		4885c9				TESTQ CX, CX												
  task_controller.go:26		0xe8ce78		7409				JE 0xe8ce83												
  task_controller.go:26		0xe8ce7a		488b157f8f1200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), DX							
  task_controller.go:908	0xe8ce81		eb0c				JMP 0xe8ce8f												
  task_controller.go:908	0xe8ce83		b909000000			MOVL $__major_os_version__+3(SB), CX									
  task_controller.go:908	0xe8ce88		488d1574842e00			LEAQ go:string.*+52731(SB), DX										
  task_controller.go:908	0xe8ce8f		4889942448010000		MOVQ DX, 0x148(SP)											
  task_controller.go:908	0xe8ce97		48898c2400010000		MOVQ CX, 0x100(SP)											
  task_controller.go:909	0xe8ce9f		440f11bc2418030000		MOVUPS X15, 0x318(SP)											
  task_controller.go:909	0xe8cea8		4889d0				MOVQ DX, AX												
  task_controller.go:909	0xe8ceab		4889cb				MOVQ CX, BX												
  task_controller.go:909	0xe8ceae		e86dd25dff			CALL runtime.convTstring(SB)										
  task_controller.go:909	0xe8ceb3		488d0d665a1b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:909	0xe8ceba		48898c2418030000		MOVQ CX, 0x318(SP)											
  task_controller.go:909	0xe8cec2		4889842420030000		MOVQ AX, 0x320(SP)											
  print.go:233			0xe8ceca		488b1daf516802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8ced1		488d0508ecfd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8ced8		bf0e000000			MOVL $__major_os_version__+8(SB), DI									
  print.go:233			0xe8cedd		488db42418030000		LEAQ 0x318(SP), SI											
  print.go:233			0xe8cee5		41b801000000			MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8ceeb		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8ceee		488d0d9ecc2e00			LEAQ go:string.*+71307(SB), CX										
  print.go:233			0xe8cef5		e8262369ff			CALL fmt.Fprintf(SB)											
  task_controller.go:926	0xe8cefa		48c784245801000000000000	MOVQ $0x0, 0x158(SP)											
  task_controller.go:927	0xe8cf06		488d0dd3120000			LEAQ CAS-Backend/biz/controller.ExcTaskHandler.func1(SB), CX						
  task_controller.go:927	0xe8cf0d		48898c2470040000		MOVQ CX, 0x470(SP)											
  task_controller.go:927	0xe8cf15		488d8c2458010000		LEAQ 0x158(SP), CX											
  task_controller.go:927	0xe8cf1d		48898c2478040000		MOVQ CX, 0x478(SP)											
  task_controller.go:927	0xe8cf25		488b842448010000		MOVQ 0x148(SP), AX											
  task_controller.go:927	0xe8cf2d		488b9c2400010000		MOVQ 0x100(SP), BX											
  task_controller.go:927	0xe8cf35		b9044b0000			MOVL $__size_of_stack_commit__+15108(SB), CX								
  task_controller.go:927	0xe8cf3a		488dbc2470040000		LEAQ 0x470(SP), DI											
  task_controller.go:927	0xe8cf42		e8b966f8ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_controller.go:944	0xe8cf47		4885c0				TESTQ AX, AX												
  task_controller.go:944	0xe8cf4a		0f849e030000			JE 0xe8d2ee												
  task_controller.go:927	0xe8cf50		48899c2478010000		MOVQ BX, 0x178(SP)											
  task_controller.go:927	0xe8cf58		4889842440010000		MOVQ AX, 0x140(SP)											
  task_controller.go:945	0xe8cf60		488b0de99b1200			MOVQ CAS-Backend/pkg/agvcontrol.ErrNoControlPermission(SB), CX						
  task_controller.go:945	0xe8cf67		488b3dea9b1200			MOVQ CAS-Backend/pkg/agvcontrol.ErrNoControlPermission+8(SB), DI					
  task_controller.go:945	0xe8cf6e		e82d805fff			CALL errors.Is(SB)											
  task_controller.go:945	0xe8cf73		84c0				TESTL AL, AL												
  task_controller.go:945	0xe8cf75		0f8506020000			JNE 0xe8d181												
  task_controller.go:953	0xe8cf7b		440f11bc2408030000		MOVUPS X15, 0x308(SP)											
  task_controller.go:944	0xe8cf84		488b942440010000		MOVQ 0x140(SP), DX											
  task_controller.go:944	0xe8cf8c		4885d2				TESTQ DX, DX												
  task_controller.go:953	0xe8cf8f		7406				JE 0xe8cf97												
  task_controller.go:953	0xe8cf91		488b4208			MOVQ 0x8(DX), AX											
  task_controller.go:953	0xe8cf95		eb03				JMP 0xe8cf9a												
  task_controller.go:953	0xe8cf97		4889d0				MOVQ DX, AX												
  task_controller.go:953	0xe8cf9a		4889842408030000		MOVQ AX, 0x308(SP)											
  task_controller.go:953	0xe8cfa2		488b942478010000		MOVQ 0x178(SP), DX											
  task_controller.go:953	0xe8cfaa		4889942410030000		MOVQ DX, 0x310(SP)											
  print.go:233			0xe8cfb2		488b1dc7506802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8cfb9		488d0520ebfd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8cfc0		488d0d222f3000			LEAQ go:string.*+162273(SB), CX										
  print.go:233			0xe8cfc7		bf22000000			MOVL $__major_os_version__+28(SB), DI									
  print.go:233			0xe8cfcc		488db42408030000		LEAQ 0x308(SP), SI											
  print.go:233			0xe8cfd4		41b801000000			MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8cfda		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8cfdd		0f1f00				NOPL 0(AX)												
  print.go:233			0xe8cfe0		e83b2269ff			CALL fmt.Fprintf(SB)											
  task_controller.go:954	0xe8cfe5		e8f6df5dff			CALL runtime.makemap_small(SB)										
  task_controller.go:954	0xe8cfea		4889842480020000		MOVQ AX, 0x280(SP)											
  task_controller.go:954	0xe8cff2		4889c3				MOVQ AX, BX												
  task_controller.go:954	0xe8cff5		488d0d115d2e00			LEAQ go:string.*+43013(SB), CX										
  task_controller.go:954	0xe8cffc		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:954	0xe8d001		488d0578782100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:954	0xe8d008		e813105eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:954	0xe8d00d		488d150c5d1b00			LEAQ runtime.types+384288(SB), DX									
  task_controller.go:954	0xe8d014		488910				MOVQ DX, 0(AX)												
  task_controller.go:954	0xe8d017		833d320b6d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:954	0xe8d01e		6690				NOPW													
  task_controller.go:954	0xe8d020		740c				JE 0xe8d02e												
  task_controller.go:954	0xe8d022		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:954	0xe8d026		e8f5b35eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:954	0xe8d02b		498913				MOVQ DX, 0(R11)												
  task_controller.go:954	0xe8d02e		488d15ebd60e00			LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:954	0xe8d035		48895008			MOVQ DX, 0x8(AX)											
  task_controller.go:956	0xe8d039		488d0560026d02			LEAQ unicode..stmp_365(SB), AX										
  task_controller.go:956	0xe8d040		31db				XORL BX, BX												
  task_controller.go:956	0xe8d042		4889d9				MOVQ BX, CX												
  task_controller.go:956	0xe8d045		e876d15dff			CALL runtime.convTslice(SB)										
  task_controller.go:956	0xe8d04a		4889842478020000		MOVQ AX, 0x278(SP)											
  task_controller.go:954	0xe8d052		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:954	0xe8d05a		488d0dba5c2e00			LEAQ go:string.*+43027(SB), CX										
  task_controller.go:954	0xe8d061		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:954	0xe8d066		488d0513782100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:954	0xe8d06d		e8ae0f5eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:954	0xe8d072		488d1507b91a00			LEAQ runtime.types+342400(SB), DX									
  task_controller.go:954	0xe8d079		488910				MOVQ DX, 0(AX)												
  task_controller.go:954	0xe8d07c		833dcd0a6d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:954	0xe8d083		750a				JNE 0xe8d08f												
  task_controller.go:954	0xe8d085		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:954	0xe8d08d		eb18				JMP 0xe8d0a7												
  task_controller.go:954	0xe8d08f		e8acb35eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:954	0xe8d094		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:954	0xe8d09c		49890b				MOVQ CX, 0(R11)												
  task_controller.go:954	0xe8d09f		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:954	0xe8d0a3		49895308			MOVQ DX, 0x8(R11)											
  task_controller.go:954	0xe8d0a7		48894808			MOVQ CX, 0x8(AX)											
  task_controller.go:957	0xe8d0ab		488b8c2440010000		MOVQ 0x140(SP), CX											
  task_controller.go:957	0xe8d0b3		488b4918			MOVQ 0x18(CX), CX											
  task_controller.go:957	0xe8d0b7		488b842478010000		MOVQ 0x178(SP), AX											
  task_controller.go:957	0xe8d0bf		90				NOPL													
  task_controller.go:957	0xe8d0c0		ffd1				CALL CX													
  task_controller.go:957	0xe8d0c2		e859d05dff			CALL runtime.convTstring(SB)										
  task_controller.go:957	0xe8d0c7		4889842478020000		MOVQ AX, 0x278(SP)											
  task_controller.go:954	0xe8d0cf		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:954	0xe8d0d7		488d0d135c2e00			LEAQ go:string.*+42985(SB), CX										
  task_controller.go:954	0xe8d0de		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:954	0xe8d0e3		488d0596772100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:954	0xe8d0ea		e8310f5eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:954	0xe8d0ef		488d0d2a581b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:954	0xe8d0f6		488908				MOVQ CX, 0(AX)												
  task_controller.go:954	0xe8d0f9		833d500a6d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:954	0xe8d100		750a				JNE 0xe8d10c												
  task_controller.go:954	0xe8d102		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:954	0xe8d10a		eb18				JMP 0xe8d124												
  task_controller.go:954	0xe8d10c		e82fb35eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:954	0xe8d111		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:954	0xe8d119		49890b				MOVQ CX, 0(R11)												
  task_controller.go:954	0xe8d11c		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:954	0xe8d120		49895308			MOVQ DX, 0x8(R11)											
  task_controller.go:954	0xe8d124		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8d128		488d0d51772100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8d12f		48898c2460040000		MOVQ CX, 0x460(SP)											
  context.go:1005		0xe8d137		488b8c2480020000		MOVQ 0x280(SP), CX											
  context.go:1005		0xe8d13f		48898c2468040000		MOVQ CX, 0x468(SP)											
  context.go:1005		0xe8d147		488d0592ed2300			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8d14e		488d9c2460040000		LEAQ 0x460(SP), BX											
  context.go:1005		0xe8d156		e8451f58ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8d15b		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8d160		488d0dc920fe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8d167		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8d16a		488b842498040000		MOVQ 0x498(SP), AX											
  context.go:1005		0xe8d172		e8e925f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:959	0xe8d177		4881c488040000			ADDQ $__file_alignment__+648(SB), SP									
  task_controller.go:959	0xe8d17e		5d				POPQ BP													
  task_controller.go:959	0xe8d17f		90				NOPL													
  task_controller.go:959	0xe8d180		c3				RET													
  task_controller.go:946	0xe8d181		e85ade5dff			CALL runtime.makemap_small(SB)										
  task_controller.go:946	0xe8d186		4889842480020000		MOVQ AX, 0x280(SP)											
  task_controller.go:946	0xe8d18e		4889c3				MOVQ AX, BX												
  task_controller.go:946	0xe8d191		488d0d755b2e00			LEAQ go:string.*+43013(SB), CX										
  task_controller.go:946	0xe8d198		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:946	0xe8d19d		488d05dc762100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:946	0xe8d1a4		e8770e5eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:946	0xe8d1a9		488d0d705b1b00			LEAQ runtime.types+384288(SB), CX									
  task_controller.go:946	0xe8d1b0		488908				MOVQ CX, 0(AX)												
  task_controller.go:946	0xe8d1b3		833d96096d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:946	0xe8d1ba		740c				JE 0xe8d1c8												
  task_controller.go:946	0xe8d1bc		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:946	0xe8d1c0		e85bb25eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:946	0xe8d1c5		498913				MOVQ DX, 0(R11)												
  task_controller.go:946	0xe8d1c8		488d1551d50e00			LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:946	0xe8d1cf		48895008			MOVQ DX, 0x8(AX)											
  task_controller.go:948	0xe8d1d3		488d05c6006d02			LEAQ unicode..stmp_365(SB), AX										
  task_controller.go:948	0xe8d1da		31db				XORL BX, BX												
  task_controller.go:948	0xe8d1dc		4889d9				MOVQ BX, CX												
  task_controller.go:948	0xe8d1df		90				NOPL													
  task_controller.go:948	0xe8d1e0		e8dbcf5dff			CALL runtime.convTslice(SB)										
  task_controller.go:948	0xe8d1e5		4889842478020000		MOVQ AX, 0x278(SP)											
  task_controller.go:946	0xe8d1ed		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:946	0xe8d1f5		488d0d1f5b2e00			LEAQ go:string.*+43027(SB), CX										
  task_controller.go:946	0xe8d1fc		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:946	0xe8d201		488d0578762100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:946	0xe8d208		e8130e5eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:946	0xe8d20d		488d156cb71a00			LEAQ runtime.types+342400(SB), DX									
  task_controller.go:946	0xe8d214		488910				MOVQ DX, 0(AX)												
  task_controller.go:946	0xe8d217		833d32096d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:946	0xe8d21e		6690				NOPW													
  task_controller.go:946	0xe8d220		750a				JNE 0xe8d22c												
  task_controller.go:946	0xe8d222		488b942478020000		MOVQ 0x278(SP), DX											
  task_controller.go:946	0xe8d22a		eb18				JMP 0xe8d244												
  task_controller.go:946	0xe8d22c		e80fb25eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:946	0xe8d231		488b942478020000		MOVQ 0x278(SP), DX											
  task_controller.go:946	0xe8d239		498913				MOVQ DX, 0(R11)												
  task_controller.go:946	0xe8d23c		488b7008			MOVQ 0x8(AX), SI											
  task_controller.go:946	0xe8d240		49897308			MOVQ SI, 0x8(R11)											
  task_controller.go:946	0xe8d244		48895008			MOVQ DX, 0x8(AX)											
  task_controller.go:946	0xe8d248		488d0531762100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:946	0xe8d24f		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:946	0xe8d257		488d0d935a2e00			LEAQ go:string.*+42985(SB), CX										
  task_controller.go:946	0xe8d25e		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:946	0xe8d263		e8b80d5eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:946	0xe8d268		488d15b1561b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:946	0xe8d26f		488910				MOVQ DX, 0(AX)												
  task_controller.go:946	0xe8d272		833dd7086d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:946	0xe8d279		740d				JE 0xe8d288												
  task_controller.go:946	0xe8d27b		488b4808			MOVQ 0x8(AX), CX											
  task_controller.go:946	0xe8d27f		90				NOPL													
  task_controller.go:946	0xe8d280		e89bb15eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:946	0xe8d285		49890b				MOVQ CX, 0(R11)												
  task_controller.go:946	0xe8d288		488d0de1bbfd01			LEAQ CAS-Backend/biz/controller..stmp_304(SB), CX							
  task_controller.go:946	0xe8d28f		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8d293		488d0de6752100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8d29a		48898c2460040000		MOVQ CX, 0x460(SP)											
  context.go:1005		0xe8d2a2		488b8c2480020000		MOVQ 0x280(SP), CX											
  context.go:1005		0xe8d2aa		48898c2468040000		MOVQ CX, 0x468(SP)											
  context.go:1005		0xe8d2b2		488d0527ec2300			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8d2b9		488d9c2460040000		LEAQ 0x460(SP), BX											
  context.go:1005		0xe8d2c1		e8da1d58ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8d2c6		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8d2cb		488d0d5e1ffe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8d2d2		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8d2d5		488b842498040000		MOVQ 0x498(SP), AX											
  context.go:1005		0xe8d2dd		0f1f00				NOPL 0(AX)												
  context.go:1005		0xe8d2e0		e87b24f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:951	0xe8d2e5		4881c488040000			ADDQ $__file_alignment__+648(SB), SP									
  task_controller.go:951	0xe8d2ec		5d				POPQ BP													
  task_controller.go:951	0xe8d2ed		c3				RET													
  task_controller.go:964	0xe8d2ee		440f11bc24f8020000		MOVUPS X15, 0x2f8(SP)											
  task_controller.go:964	0xe8d2f7		488b8c2458010000		MOVQ 0x158(SP), CX											
  task_controller.go:964	0xe8d2ff		488b4148			MOVQ 0x48(CX), AX											
  task_controller.go:964	0xe8d303		488b5950			MOVQ 0x50(CX), BX											
  task_controller.go:964	0xe8d307		e814ce5dff			CALL runtime.convTstring(SB)										
  task_controller.go:964	0xe8d30c		488d0d0d561b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:964	0xe8d313		48898c24f8020000		MOVQ CX, 0x2f8(SP)											
  task_controller.go:964	0xe8d31b		4889842400030000		MOVQ AX, 0x300(SP)											
  print.go:314			0xe8d323		488b1d564d6802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8d32a		488d05afe7fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8d331		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8d336		4889fe				MOVQ DI, SI												
  print.go:314			0xe8d339		488d8c24f8020000		LEAQ 0x2f8(SP), CX											
  print.go:314			0xe8d341		e81a2569ff			CALL fmt.Fprintln(SB)											
  task_controller.go:966	0xe8d346		e8550d62ff			CALL time.Now(SB)											
  task_controller.go:966	0xe8d34b		488d3d65c62e00			LEAQ go:string.*+70831(SB), DI										
  task_controller.go:966	0xe8d352		be0e000000			MOVL $__major_os_version__+8(SB), SI									
  task_controller.go:966	0xe8d357		e824e060ff			CALL time.Time.Format(SB)										
  task_controller.go:967	0xe8d35c		488b8c2480040000		MOVQ 0x480(SP), CX											
  task_controller.go:967	0xe8d364		f20f1081f8000000		MOVSD_XMM 0xf8(CX), X0											
  task_controller.go:968	0xe8d36c		0f57c9				XORPS X1, X1												
  task_controller.go:968	0xe8d36f		660f2ec1			UCOMISD X1, X0												
  task_controller.go:968	0xe8d373		0f85d7000000			JNE 0xe8d450												
  task_controller.go:968	0xe8d379		0f8ad1000000			JP 0xe8d450												
  task_controller.go:968	0xe8d37f		48833900			CMPQ 0(CX), $0x0											
  task_controller.go:968	0xe8d383		0f8ec7000000			JLE 0xe8d450												
  task_controller.go:967	0xe8d389		f20f11842438010000		MOVSD_XMM X0, 0x138(SP)											
  task_controller.go:966	0xe8d392		48899c2410010000		MOVQ BX, 0x110(SP)											
  task_controller.go:966	0xe8d39a		4889842460010000		MOVQ AX, 0x160(SP)											
  task_controller.go:969	0xe8d3a2		488dbc2470030000		LEAQ 0x370(SP), DI											
  task_controller.go:969	0xe8d3aa		488d7ff0			LEAQ -0x10(DI), DI											
  task_controller.go:969	0xe8d3ae		660f1f840000000000		NOPW 0(AX)(AX*1)											
  task_controller.go:969	0xe8d3b7		660f1f840000000000		NOPW 0(AX)(AX*1)											
  task_controller.go:969	0xe8d3c0		48896c24f0			MOVQ BP, -0x10(SP)											
  task_controller.go:969	0xe8d3c5		488d6c24f0			LEAQ -0x10(SP), BP											
  task_controller.go:969	0xe8d3ca		e8e9b65eff			CALL 0x478ab8												
  task_controller.go:969	0xe8d3cf		488b6d00			MOVQ 0(BP), BP												
  task_controller.go:969	0xe8d3d3		488b01				MOVQ 0(CX), AX												
  task_controller.go:969	0xe8d3d6		e8c5b2b0ff			CALL CAS-Backend/biz/dao.Select1_task(SB)								
  task_controller.go:969	0xe8d3db		488dbc2470030000		LEAQ 0x370(SP), DI											
  task_controller.go:969	0xe8d3e3		4889e6				MOVQ SP, SI												
  task_controller.go:969	0xe8d3e6		48896c24f0			MOVQ BP, -0x10(SP)											
  task_controller.go:969	0xe8d3eb		488d6c24f0			LEAQ -0x10(SP), BP											
  task_controller.go:969	0xe8d3f0		e8d9b95eff			CALL 0x478dce												
  task_controller.go:969	0xe8d3f5		488b6d00			MOVQ 0(BP), BP												
  task_controller.go:969	0xe8d3f9		488dbc2480010000		LEAQ 0x180(SP), DI											
  task_controller.go:969	0xe8d401		488db42470030000		LEAQ 0x370(SP), SI											
  task_controller.go:969	0xe8d409		48896c24f0			MOVQ BP, -0x10(SP)											
  task_controller.go:969	0xe8d40e		488d6c24f0			LEAQ -0x10(SP), BP											
  task_controller.go:969	0xe8d413		e8b6b95eff			CALL 0x478dce												
  task_controller.go:969	0xe8d418		488b6d00			MOVQ 0(BP), BP												
  task_controller.go:969	0xe8d41c		0f1f4000			NOPL 0(AX)												
  task_controller.go:969	0xe8d420		84c0				TESTL AL, AL												
  task_controller.go:969	0xe8d422		740b				JE 0xe8d42f												
  task_controller.go:970	0xe8d424		f20f10842468020000		MOVSD_XMM 0x268(SP), X0											
  task_controller.go:970	0xe8d42d		eb09				JMP 0xe8d438												
  task_controller.go:979	0xe8d42f		f20f10842438010000		MOVSD_XMM 0x138(SP), X0											
  task_controller.go:973	0xe8d438		488b842460010000		MOVQ 0x160(SP), AX											
  task_controller.go:975	0xe8d440		488b8c2480040000		MOVQ 0x480(SP), CX											
  task_controller.go:973	0xe8d448		488b9c2410010000		MOVQ 0x110(SP), BX											
  task_controller.go:979	0xe8d450		440f11bc2470030000		MOVUPS X15, 0x370(SP)											
  task_controller.go:979	0xe8d459		488dbc2478030000		LEAQ 0x378(SP), DI											
  task_controller.go:979	0xe8d461		488d7fd0			LEAQ -0x30(DI), DI											
  task_controller.go:979	0xe8d465		48896c24f0			MOVQ BP, -0x10(SP)											
  task_controller.go:979	0xe8d46a		488d6c24f0			LEAQ -0x10(SP), BP											
  task_controller.go:979	0xe8d46f		e87cb65eff			CALL 0x478af0												
  task_controller.go:979	0xe8d474		488b6d00			MOVQ 0(BP), BP												
  task_controller.go:974	0xe8d478		488b942458010000		MOVQ 0x158(SP), DX											
  task_controller.go:974	0xe8d480		4c8b4248			MOVQ 0x48(DX), R8											
  task_controller.go:974	0xe8d484		488b5250			MOVQ 0x50(DX), DX											
  task_controller.go:974	0xe8d488		4c89842470030000		MOVQ R8, 0x370(SP)											
  task_controller.go:974	0xe8d490		4889942478030000		MOVQ DX, 0x378(SP)											
  task_controller.go:975	0xe8d498		488b9190000000			MOVQ 0x90(CX), DX											
  task_controller.go:975	0xe8d49f		4c8b8198000000			MOVQ 0x98(CX), R8											
  task_controller.go:975	0xe8d4a6		4889942480030000		MOVQ DX, 0x380(SP)											
  task_controller.go:975	0xe8d4ae		4c89842488030000		MOVQ R8, 0x388(SP)											
  task_controller.go:976	0xe8d4b6		488b91a0000000			MOVQ 0xa0(CX), DX											
  task_controller.go:976	0xe8d4bd		4c8b81a8000000			MOVQ 0xa8(CX), R8											
  task_controller.go:976	0xe8d4c4		4889942490030000		MOVQ DX, 0x390(SP)											
  task_controller.go:976	0xe8d4cc		4c89842498030000		MOVQ R8, 0x398(SP)											
  task_controller.go:977	0xe8d4d4		488b91b0000000			MOVQ 0xb0(CX), DX											
  task_controller.go:977	0xe8d4db		4c8b81b8000000			MOVQ 0xb8(CX), R8											
  task_controller.go:977	0xe8d4e2		48899424a0030000		MOVQ DX, 0x3a0(SP)											
  task_controller.go:977	0xe8d4ea		4c898424a8030000		MOVQ R8, 0x3a8(SP)											
  task_controller.go:978	0xe8d4f2		488b91c0000000			MOVQ 0xc0(CX), DX											
  task_controller.go:978	0xe8d4f9		4c8b81c8000000			MOVQ 0xc8(CX), R8											
  task_controller.go:978	0xe8d500		48899424b0030000		MOVQ DX, 0x3b0(SP)											
  task_controller.go:978	0xe8d508		4c898424b8030000		MOVQ R8, 0x3b8(SP)											
  task_controller.go:979	0xe8d510		f20f118424c0030000		MOVSD_XMM X0, 0x3c0(SP)											
  task_controller.go:973	0xe8d519		488b942470030000		MOVQ 0x370(SP), DX											
  task_controller.go:973	0xe8d521		48891424			MOVQ DX, 0(SP)												
  task_controller.go:973	0xe8d525		488d7c2408			LEAQ 0x8(SP), DI											
  task_controller.go:973	0xe8d52a		488db42478030000		LEAQ 0x378(SP), SI											
  task_controller.go:973	0xe8d532		660f1f840000000000		NOPW 0(AX)(AX*1)											
  task_controller.go:973	0xe8d53b		0f1f440000			NOPL 0(AX)(AX*1)											
  task_controller.go:973	0xe8d540		48896c24f0			MOVQ BP, -0x10(SP)											
  task_controller.go:973	0xe8d545		488d6c24f0			LEAQ -0x10(SP), BP											
  task_controller.go:973	0xe8d54a		e80bb95eff			CALL 0x478e5a												
  task_controller.go:973	0xe8d54f		488b6d00			MOVQ 0(BP), BP												
  task_controller.go:973	0xe8d553		e8a8b9f9ff			CALL CAS-Backend/pkg/diapdu.BuildExcNavigationTasks(SB)							
  task_controller.go:973	0xe8d558		4889842470030000		MOVQ AX, 0x370(SP)											
  task_controller.go:973	0xe8d560		48899c2478030000		MOVQ BX, 0x378(SP)											
  task_controller.go:973	0xe8d568		48898c2480030000		MOVQ CX, 0x380(SP)											
  task_controller.go:973	0xe8d570		4889bc2488030000		MOVQ DI, 0x388(SP)											
  task_controller.go:973	0xe8d578		4889b42490030000		MOVQ SI, 0x390(SP)											
  task_controller.go:973	0xe8d580		4c89842498030000		MOVQ R8, 0x398(SP)											
  task_controller.go:973	0xe8d588		44888c24a0030000		MOVB R9, 0x3a0(SP)											
  task_controller.go:973	0xe8d590		488b8c2470030000		MOVQ 0x370(SP), CX											
  task_controller.go:973	0xe8d598		48898c2480010000		MOVQ CX, 0x180(SP)											
  task_controller.go:973	0xe8d5a0		0f10842478030000		MOVUPS 0x378(SP), X0											
  task_controller.go:973	0xe8d5a8		0f11842488010000		MOVUPS X0, 0x188(SP)											
  task_controller.go:973	0xe8d5b0		0f10842488030000		MOVUPS 0x388(SP), X0											
  task_controller.go:973	0xe8d5b8		0f11842498010000		MOVUPS X0, 0x198(SP)											
  task_controller.go:973	0xe8d5c0		0f10842498030000		MOVUPS 0x398(SP), X0											
  task_controller.go:973	0xe8d5c8		0f118424a8010000		MOVUPS X0, 0x1a8(SP)											
  task_controller.go:981	0xe8d5d0		80bc24b001000000		CMPB 0x1b0(SP), $0x0											
  task_controller.go:981	0xe8d5d8		0f84a0090000			JE 0xe8df7e												
  task_controller.go:985	0xe8d5de		488b942480010000		MOVQ 0x180(SP), DX											
  task_controller.go:985	0xe8d5e6		4889942468010000		MOVQ DX, 0x168(SP)											
  task_controller.go:985	0xe8d5ee		4c8b842488010000		MOVQ 0x188(SP), R8											
  task_controller.go:985	0xe8d5f6		4c89842418010000		MOVQ R8, 0x118(SP)											
  task_controller.go:985	0xe8d5fe		4c8b8c2490010000		MOVQ 0x190(SP), R9											
  task_controller.go:985	0xe8d606		4c898c2420010000		MOVQ R9, 0x120(SP)											
  task_controller.go:986	0xe8d60e		4c8b942498010000		MOVQ 0x198(SP), R10											
  task_controller.go:986	0xe8d616		4c89942470010000		MOVQ R10, 0x170(SP)											
  task_controller.go:986	0xe8d61e		4c8b9c24a0010000		MOVQ 0x1a0(SP), R11											
  task_controller.go:986	0xe8d626		4c899c2428010000		MOVQ R11, 0x128(SP)											
  task_controller.go:986	0xe8d62e		4c8ba424a8010000		MOVQ 0x1a8(SP), R12											
  task_controller.go:986	0xe8d636		4c89a42430010000		MOVQ R12, 0x130(SP)											
  task_controller.go:988	0xe8d63e		4c8d2ddb521b00			LEAQ runtime.types+383264(SB), R13									
  task_controller.go:988	0xe8d645		4c89ac24e8020000		MOVQ R13, 0x2e8(SP)											
  task_controller.go:988	0xe8d64d		4c8d3d3cb8fd01			LEAQ CAS-Backend/biz/controller..stmp_308(SB), R15							
  task_controller.go:988	0xe8d654		4c89bc24f0020000		MOVQ R15, 0x2f0(SP)											
  print.go:314			0xe8d65c		488b1d1d4a6802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8d663		488d0576e4fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8d66a		488d8c24e8020000		LEAQ 0x2e8(SP), CX											
  print.go:314			0xe8d672		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8d677		4889fe				MOVQ DI, SI												
  print.go:314			0xe8d67a		e8e12169ff			CALL fmt.Fprintln(SB)											
  task_controller.go:990	0xe8d67f		440f11bc24d8020000		MOVUPS X15, 0x2d8(SP)											
  task_controller.go:990	0xe8d688		488b842468010000		MOVQ 0x168(SP), AX											
  task_controller.go:990	0xe8d690		488b9c2418010000		MOVQ 0x118(SP), BX											
  task_controller.go:990	0xe8d698		488b8c2420010000		MOVQ 0x120(SP), CX											
  task_controller.go:990	0xe8d6a0		e81bcb5dff			CALL runtime.convTslice(SB)										
  task_controller.go:990	0xe8d6a5		488d15f4791a00			LEAQ runtime.types+327840(SB), DX									
  task_controller.go:990	0xe8d6ac		48899424d8020000		MOVQ DX, 0x2d8(SP)											
  task_controller.go:990	0xe8d6b4		48898424e0020000		MOVQ AX, 0x2e0(SP)											
  print.go:314			0xe8d6bc		488b1dbd496802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8d6c3		488d0516e4fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8d6ca		488d8c24d8020000		LEAQ 0x2d8(SP), CX											
  print.go:314			0xe8d6d2		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8d6d7		4889fe				MOVQ DI, SI												
  print.go:314			0xe8d6da		e8812169ff			CALL fmt.Fprintln(SB)											
  task_controller.go:991	0xe8d6df		440f11bc24c8020000		MOVUPS X15, 0x2c8(SP)											
  task_controller.go:991	0xe8d6e8		488b842470010000		MOVQ 0x170(SP), AX											
  task_controller.go:991	0xe8d6f0		488b9c2428010000		MOVQ 0x128(SP), BX											
  task_controller.go:991	0xe8d6f8		488b8c2430010000		MOVQ 0x130(SP), CX											
  task_controller.go:991	0xe8d700		e8bbca5dff			CALL runtime.convTslice(SB)										
  task_controller.go:991	0xe8d705		488d1574b21a00			LEAQ runtime.types+342400(SB), DX									
  task_controller.go:991	0xe8d70c		48899424c8020000		MOVQ DX, 0x2c8(SP)											
  task_controller.go:991	0xe8d714		48898424d0020000		MOVQ AX, 0x2d0(SP)											
  print.go:314			0xe8d71c		488b1d5d496802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8d723		488d05b6e3fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8d72a		488d8c24c8020000		LEAQ 0x2c8(SP), CX											
  print.go:314			0xe8d732		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8d737		4889fe				MOVQ DI, SI												
  print.go:314			0xe8d73a		e8212169ff			CALL fmt.Fprintln(SB)											
  task_controller.go:1027	0xe8d73f		c68424ff00000000		MOVB $0x0, 0xff(SP)											
  task_controller.go:1028	0xe8d747		440f11bc2448030000		MOVUPS X15, 0x348(SP)											
  task_controller.go:1028	0xe8d750		440f11bc2450030000		MOVUPS X15, 0x350(SP)											
  task_controller.go:1028	0xe8d759		440f11bc2460030000		MOVUPS X15, 0x360(SP)											
  task_controller.go:1028	0xe8d762		488d15f7090000			LEAQ CAS-Backend/biz/controller.ExcTaskHandler.func2(SB), DX						
  task_controller.go:1028	0xe8d769		4889942448030000		MOVQ DX, 0x348(SP)											
  task_controller.go:1028	0xe8d771		488b942418010000		MOVQ 0x118(SP), DX											
  task_controller.go:1028	0xe8d779		4889942458030000		MOVQ DX, 0x358(SP)											
  task_controller.go:1028	0xe8d781		488b942420010000		MOVQ 0x120(SP), DX											
  task_controller.go:1028	0xe8d789		4889942460030000		MOVQ DX, 0x360(SP)											
  task_controller.go:1028	0xe8d791		488b942468010000		MOVQ 0x168(SP), DX											
  task_controller.go:1028	0xe8d799		4889942450030000		MOVQ DX, 0x350(SP)											
  task_controller.go:1028	0xe8d7a1		488d9424ff000000		LEAQ 0xff(SP), DX											
  task_controller.go:1028	0xe8d7a9		4889942468030000		MOVQ DX, 0x368(SP)											
  task_controller.go:1028	0xe8d7b1		488b842448010000		MOVQ 0x148(SP), AX											
  task_controller.go:1028	0xe8d7b9		488b9c2400010000		MOVQ 0x100(SP), BX											
  task_controller.go:1028	0xe8d7c1		b9064b0000			MOVL $__size_of_stack_commit__+15110(SB), CX								
  task_controller.go:1028	0xe8d7c6		488dbc2448030000		LEAQ 0x348(SP), DI											
  task_controller.go:1028	0xe8d7ce		e82d5ef8ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_controller.go:1051	0xe8d7d3		4885c0				TESTQ AX, AX												
  task_controller.go:1051	0xe8d7d6		0f8418020000			JE 0xe8d9f4												
  task_controller.go:1028	0xe8d7dc		4889842440010000		MOVQ AX, 0x140(SP)											
  task_controller.go:1052	0xe8d7e4		440f11bc24b8020000		MOVUPS X15, 0x2b8(SP)											
  task_controller.go:1052	0xe8d7ed		7406				JE 0xe8d7f5												
  task_controller.go:1052	0xe8d7ef		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:1052	0xe8d7f3		eb03				JMP 0xe8d7f8												
  task_controller.go:1052	0xe8d7f5		4889c2				MOVQ AX, DX												
  task_controller.go:1028	0xe8d7f8		48899c2478010000		MOVQ BX, 0x178(SP)											
  task_controller.go:1052	0xe8d800		48899424b8020000		MOVQ DX, 0x2b8(SP)											
  task_controller.go:1052	0xe8d808		48899c24c0020000		MOVQ BX, 0x2c0(SP)											
  print.go:233			0xe8d810		488b1569486802			MOVQ os.Stdout(SB), DX											
  print.go:233			0xe8d817		488d05c2e2fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8d81e		488d0deb062f00			LEAQ go:string.*+88584(SB), CX										
  print.go:233			0xe8d825		bf12000000			MOVL $__major_os_version__+12(SB), DI									
  print.go:233			0xe8d82a		488db424b8020000		LEAQ 0x2b8(SP), SI											
  print.go:233			0xe8d832		41b801000000			MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8d838		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8d83b		4889d3				MOVQ DX, BX												
  print.go:233			0xe8d83e		6690				NOPW													
  print.go:233			0xe8d840		e8db1969ff			CALL fmt.Fprintf(SB)											
  task_controller.go:1053	0xe8d845		e896d75dff			CALL runtime.makemap_small(SB)										
  task_controller.go:1053	0xe8d84a		4889842480020000		MOVQ AX, 0x280(SP)											
  task_controller.go:1053	0xe8d852		4889c3				MOVQ AX, BX												
  task_controller.go:1053	0xe8d855		488d0db1542e00			LEAQ go:string.*+43013(SB), CX										
  task_controller.go:1053	0xe8d85c		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1053	0xe8d861		488d0518702100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1053	0xe8d868		e8b3075eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1053	0xe8d86d		488d15ac541b00			LEAQ runtime.types+384288(SB), DX									
  task_controller.go:1053	0xe8d874		488910				MOVQ DX, 0(AX)												
  task_controller.go:1053	0xe8d877		833dd2026d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1053	0xe8d87e		6690				NOPW													
  task_controller.go:1053	0xe8d880		740c				JE 0xe8d88e												
  task_controller.go:1053	0xe8d882		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:1053	0xe8d886		e895ab5eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:1053	0xe8d88b		498913				MOVQ DX, 0(R11)												
  task_controller.go:1053	0xe8d88e		488d158bce0e00			LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:1053	0xe8d895		48895008			MOVQ DX, 0x8(AX)											
  task_controller.go:1055	0xe8d899		488b842470010000		MOVQ 0x170(SP), AX											
  task_controller.go:1055	0xe8d8a1		488b9c2428010000		MOVQ 0x128(SP), BX											
  task_controller.go:1055	0xe8d8a9		488b8c2430010000		MOVQ 0x130(SP), CX											
  task_controller.go:1055	0xe8d8b1		e80ac95dff			CALL runtime.convTslice(SB)										
  task_controller.go:1055	0xe8d8b6		4889842478020000		MOVQ AX, 0x278(SP)											
  task_controller.go:1053	0xe8d8be		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:1053	0xe8d8c6		488d0d4e542e00			LEAQ go:string.*+43027(SB), CX										
  task_controller.go:1053	0xe8d8cd		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1053	0xe8d8d2		488d05a76f2100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1053	0xe8d8d9		e842075eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1053	0xe8d8de		488d159bb01a00			LEAQ runtime.types+342400(SB), DX									
  task_controller.go:1053	0xe8d8e5		488910				MOVQ DX, 0(AX)												
  task_controller.go:1053	0xe8d8e8		833d61026d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1053	0xe8d8ef		750f				JNE 0xe8d900												
  task_controller.go:1053	0xe8d8f1		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:1053	0xe8d8f9		eb1d				JMP 0xe8d918												
  task_controller.go:1053	0xe8d8fb		0f1f440000			NOPL 0(AX)(AX*1)											
  task_controller.go:1053	0xe8d900		e83bab5eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:1053	0xe8d905		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:1053	0xe8d90d		49890b				MOVQ CX, 0(R11)												
  task_controller.go:1053	0xe8d910		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:1053	0xe8d914		49895308			MOVQ DX, 0x8(R11)											
  task_controller.go:1053	0xe8d918		48894808			MOVQ CX, 0x8(AX)											
  task_controller.go:1056	0xe8d91c		488b8c2440010000		MOVQ 0x140(SP), CX											
  task_controller.go:1056	0xe8d924		488b4918			MOVQ 0x18(CX), CX											
  task_controller.go:1056	0xe8d928		488b842478010000		MOVQ 0x178(SP), AX											
  task_controller.go:1056	0xe8d930		ffd1				CALL CX													
  task_controller.go:1056	0xe8d932		e8e9c75dff			CALL runtime.convTstring(SB)										
  task_controller.go:1056	0xe8d937		4889842478020000		MOVQ AX, 0x278(SP)											
  task_controller.go:1053	0xe8d93f		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:1053	0xe8d947		488d0da3532e00			LEAQ go:string.*+42985(SB), CX										
  task_controller.go:1053	0xe8d94e		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1053	0xe8d953		488d05266f2100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1053	0xe8d95a		e8c1065eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1053	0xe8d95f		488d0dba4f1b00			LEAQ runtime.types+383264(SB), CX									
  task_controller.go:1053	0xe8d966		488908				MOVQ CX, 0(AX)												
  task_controller.go:1053	0xe8d969		833de0016d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1053	0xe8d970		750e				JNE 0xe8d980												
  task_controller.go:1053	0xe8d972		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:1053	0xe8d97a		eb1c				JMP 0xe8d998												
  task_controller.go:1053	0xe8d97c		0f1f4000			NOPL 0(AX)												
  task_controller.go:1053	0xe8d980		e8bbaa5eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:1053	0xe8d985		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:1053	0xe8d98d		49890b				MOVQ CX, 0(R11)												
  task_controller.go:1053	0xe8d990		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:1053	0xe8d994		49895308			MOVQ DX, 0x8(R11)											
  task_controller.go:1053	0xe8d998		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8d99c		488d0ddd6e2100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8d9a3		48898c2460040000		MOVQ CX, 0x460(SP)											
  context.go:1005		0xe8d9ab		488b8c2480020000		MOVQ 0x280(SP), CX											
  context.go:1005		0xe8d9b3		48898c2468040000		MOVQ CX, 0x468(SP)											
  context.go:1005		0xe8d9bb		488d051ee52300			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8d9c2		488d9c2460040000		LEAQ 0x460(SP), BX											
  context.go:1005		0xe8d9ca		e8d11658ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8d9cf		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8d9d4		488d0d5518fe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8d9db		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8d9de		488b842498040000		MOVQ 0x498(SP), AX											
  context.go:1005		0xe8d9e6		e8751df7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:1058	0xe8d9eb		4881c488040000			ADDQ $__file_alignment__+648(SB), SP									
  task_controller.go:1058	0xe8d9f2		5d				POPQ BP													
  task_controller.go:1058	0xe8d9f3		c3				RET													
  task_controller.go:1060	0xe8d9f4		80bc24ff00000000		CMPB 0xff(SP), $0x0											
  task_controller.go:1060	0xe8d9fc		0f1f4000			NOPL 0(AX)												
  task_controller.go:1060	0xe8da00		0f84bb030000			JE 0xe8ddc1												
  task_controller.go:1070	0xe8da06		48c705dff96c0202000000		MOVQ $__minor_os_version__+1(SB), CAS-Backend/biz/controller.taskstatus(SB)				
  task_controller.go:1071	0xe8da11		488b8c2480040000		MOVQ 0x480(SP), CX											
  task_controller.go:1071	0xe8da19		488b01				MOVQ 0(CX), AX												
  task_controller.go:1071	0xe8da1c		bb02000000			MOVL $__minor_os_version__+1(SB), BX									
  task_controller.go:1071	0xe8da21		e81abab0ff			CALL CAS-Backend/biz/dao.UpdateTaskStatusByID(SB)							
  task_controller.go:1071	0xe8da26		84c0				TESTL AL, AL												
  task_controller.go:1072	0xe8da28		0f84e0010000			JE 0xe8dc0e												
  task_controller.go:1082	0xe8da2e		488d15eb4e1b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:1082	0xe8da35		4889942488020000		MOVQ DX, 0x288(SP)											
  task_controller.go:1082	0xe8da3d		488d159cb4fd01			LEAQ CAS-Backend/biz/controller..stmp_316(SB), DX							
  task_controller.go:1082	0xe8da44		4889942490020000		MOVQ DX, 0x290(SP)											
  print.go:314			0xe8da4c		488b1d2d466802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8da53		488d0586e0fd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8da5a		488d8c2488020000		LEAQ 0x288(SP), CX											
  print.go:314			0xe8da62		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8da67		4889fe				MOVQ DI, SI												
  print.go:314			0xe8da6a		e8f11d69ff			CALL fmt.Fprintln(SB)											
  task_controller.go:1083	0xe8da6f		e86cd55dff			CALL runtime.makemap_small(SB)										
  task_controller.go:1083	0xe8da74		4889842480020000		MOVQ AX, 0x280(SP)											
  task_controller.go:1083	0xe8da7c		4889c3				MOVQ AX, BX												
  task_controller.go:1083	0xe8da7f		488d0d87522e00			LEAQ go:string.*+43013(SB), CX										
  task_controller.go:1083	0xe8da86		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1083	0xe8da8b		488d05ee6d2100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1083	0xe8da92		e889055eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1083	0xe8da97		488d1582521b00			LEAQ runtime.types+384288(SB), DX									
  task_controller.go:1083	0xe8da9e		488910				MOVQ DX, 0(AX)												
  task_controller.go:1083	0xe8daa1		833da8006d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1083	0xe8daa8		740c				JE 0xe8dab6												
  task_controller.go:1083	0xe8daaa		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:1083	0xe8daae		e86da95eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:1083	0xe8dab3		498913				MOVQ DX, 0(R11)												
  task_controller.go:1083	0xe8dab6		488d156bcc0e00			LEAQ runtime.staticuint64s+8(SB), DX									
  task_controller.go:1083	0xe8dabd		48895008			MOVQ DX, 0x8(AX)											
  task_controller.go:1085	0xe8dac1		488b842470010000		MOVQ 0x170(SP), AX											
  task_controller.go:1085	0xe8dac9		488b9c2428010000		MOVQ 0x128(SP), BX											
  task_controller.go:1085	0xe8dad1		488b8c2430010000		MOVQ 0x130(SP), CX											
  task_controller.go:1085	0xe8dad9		e8e2c65dff			CALL runtime.convTslice(SB)										
  task_controller.go:1085	0xe8dade		4889842478020000		MOVQ AX, 0x278(SP)											
  task_controller.go:1083	0xe8dae6		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:1083	0xe8daee		488d0d26522e00			LEAQ go:string.*+43027(SB), CX										
  task_controller.go:1083	0xe8daf5		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1083	0xe8dafa		488d057f6d2100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1083	0xe8db01		e81a055eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1083	0xe8db06		488d1573ae1a00			LEAQ runtime.types+342400(SB), DX									
  task_controller.go:1083	0xe8db0d		488910				MOVQ DX, 0(AX)												
  task_controller.go:1083	0xe8db10		833d39006d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1083	0xe8db17		750a				JNE 0xe8db23												
  task_controller.go:1083	0xe8db19		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:1083	0xe8db21		eb18				JMP 0xe8db3b												
  task_controller.go:1083	0xe8db23		e818a95eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:1083	0xe8db28		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:1083	0xe8db30		49890b				MOVQ CX, 0(R11)												
  task_controller.go:1083	0xe8db33		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:1083	0xe8db37		49895308			MOVQ DX, 0x8(R11)											
  task_controller.go:1083	0xe8db3b		48894808			MOVQ CX, 0x8(AX)											
  task_controller.go:1086	0xe8db3f		488b8c2480040000		MOVQ 0x480(SP), CX											
  task_controller.go:1086	0xe8db47		488b01				MOVQ 0(CX), AX												
  task_controller.go:1086	0xe8db4a		e851c55dff			CALL runtime.convT64(SB)										
  task_controller.go:1086	0xe8db4f		4889842478020000		MOVQ AX, 0x278(SP)											
  task_controller.go:1083	0xe8db57		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:1083	0xe8db5f		488d0d34aa2d00			LEAQ go:string.*+146(SB), CX										
  task_controller.go:1083	0xe8db66		bf02000000			MOVL $__minor_os_version__+1(SB), DI									
  task_controller.go:1083	0xe8db6b		488d050e6d2100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1083	0xe8db72		e8a9045eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1083	0xe8db77		488d0de24f1b00			LEAQ runtime.types+383840(SB), CX									
  task_controller.go:1083	0xe8db7e		488908				MOVQ CX, 0(AX)												
  task_controller.go:1083	0xe8db81		833dc8ff6c0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1083	0xe8db88		750a				JNE 0xe8db94												
  task_controller.go:1083	0xe8db8a		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:1083	0xe8db92		eb18				JMP 0xe8dbac												
  task_controller.go:1083	0xe8db94		e8a7a85eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:1083	0xe8db99		488b8c2478020000		MOVQ 0x278(SP), CX											
  task_controller.go:1083	0xe8dba1		49890b				MOVQ CX, 0(R11)												
  task_controller.go:1083	0xe8dba4		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:1083	0xe8dba8		49895308			MOVQ DX, 0x8(R11)											
  task_controller.go:1083	0xe8dbac		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8dbb0		488d0dc96c2100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8dbb7		48898c2460040000		MOVQ CX, 0x460(SP)											
  context.go:1005		0xe8dbbf		488b8c2480020000		MOVQ 0x280(SP), CX											
  context.go:1005		0xe8dbc7		48898c2468040000		MOVQ CX, 0x468(SP)											
  context.go:1005		0xe8dbcf		488d050ae32300			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8dbd6		488d9c2460040000		LEAQ 0x460(SP), BX											
  context.go:1005		0xe8dbde		6690				NOPW													
  context.go:1005		0xe8dbe0		e8bb1458ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8dbe5		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8dbea		488d0d3f16fe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8dbf1		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8dbf4		488b842498040000		MOVQ 0x498(SP), AX											
  context.go:1005		0xe8dbfc		0f1f4000			NOPL 0(AX)												
  context.go:1005		0xe8dc00		e85b1bf7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:1089	0xe8dc05		4881c488040000			ADDQ $__file_alignment__+648(SB), SP									
  task_controller.go:1089	0xe8dc0c		5d				POPQ BP													
  task_controller.go:1089	0xe8dc0d		c3				RET													
  task_controller.go:1073	0xe8dc0e		488d150b4d1b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:1073	0xe8dc15		4889942498020000		MOVQ DX, 0x298(SP)											
  task_controller.go:1073	0xe8dc1d		4c8d059cb2fd01			LEAQ CAS-Backend/biz/controller..stmp_313(SB), R8							
  task_controller.go:1073	0xe8dc24		4c898424a0020000		MOVQ R8, 0x2a0(SP)											
  print.go:314			0xe8dc2c		488b1d4d446802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8dc33		488d05a6defd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8dc3a		488d8c2498020000		LEAQ 0x298(SP), CX											
  print.go:314			0xe8dc42		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8dc47		4889fe				MOVQ DI, SI												
  print.go:314			0xe8dc4a		e8111c69ff			CALL fmt.Fprintln(SB)											
  task_controller.go:1074	0xe8dc4f		e88cd35dff			CALL runtime.makemap_small(SB)										
  task_controller.go:1074	0xe8dc54		4889842480020000		MOVQ AX, 0x280(SP)											
  task_controller.go:1074	0xe8dc5c		4889c3				MOVQ AX, BX												
  task_controller.go:1074	0xe8dc5f		488d0da7502e00			LEAQ go:string.*+43013(SB), CX										
  task_controller.go:1074	0xe8dc66		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1074	0xe8dc6b		488d050e6c2100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1074	0xe8dc72		e8a9035eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1074	0xe8dc77		488d15a2501b00			LEAQ runtime.types+384288(SB), DX									
  task_controller.go:1074	0xe8dc7e		488910				MOVQ DX, 0(AX)												
  task_controller.go:1074	0xe8dc81		833dc8fe6c0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1074	0xe8dc88		740c				JE 0xe8dc96												
  task_controller.go:1074	0xe8dc8a		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:1074	0xe8dc8e		e88da75eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:1074	0xe8dc93		498913				MOVQ DX, 0(R11)												
  task_controller.go:1074	0xe8dc96		488d1583ca0e00			LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:1074	0xe8dc9d		48895008			MOVQ DX, 0x8(AX)											
  task_controller.go:1076	0xe8dca1		488b842470010000		MOVQ 0x170(SP), AX											
  task_controller.go:1076	0xe8dca9		488b9c2428010000		MOVQ 0x128(SP), BX											
  task_controller.go:1076	0xe8dcb1		488b8c2430010000		MOVQ 0x130(SP), CX											
  task_controller.go:1076	0xe8dcb9		e802c55dff			CALL runtime.convTslice(SB)										
  task_controller.go:1076	0xe8dcbe		4889842478020000		MOVQ AX, 0x278(SP)											
  task_controller.go:1074	0xe8dcc6		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:1074	0xe8dcce		488d0d46502e00			LEAQ go:string.*+43027(SB), CX										
  task_controller.go:1074	0xe8dcd5		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1074	0xe8dcda		488d059f6b2100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1074	0xe8dce1		e83a035eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1074	0xe8dce6		488d1593ac1a00			LEAQ runtime.types+342400(SB), DX									
  task_controller.go:1074	0xe8dced		488910				MOVQ DX, 0(AX)												
  task_controller.go:1074	0xe8dcf0		833d59fe6c0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1074	0xe8dcf7		750a				JNE 0xe8dd03												
  task_controller.go:1074	0xe8dcf9		488b942478020000		MOVQ 0x278(SP), DX											
  task_controller.go:1074	0xe8dd01		eb18				JMP 0xe8dd1b												
  task_controller.go:1074	0xe8dd03		e838a75eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:1074	0xe8dd08		488b942478020000		MOVQ 0x278(SP), DX											
  task_controller.go:1074	0xe8dd10		498913				MOVQ DX, 0(R11)												
  task_controller.go:1074	0xe8dd13		488b7008			MOVQ 0x8(AX), SI											
  task_controller.go:1074	0xe8dd17		49897308			MOVQ SI, 0x8(R11)											
  task_controller.go:1074	0xe8dd1b		48895008			MOVQ DX, 0x8(AX)											
  task_controller.go:1074	0xe8dd1f		488d055a6b2100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1074	0xe8dd26		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:1074	0xe8dd2e		488d0dbc4f2e00			LEAQ go:string.*+42985(SB), CX										
  task_controller.go:1074	0xe8dd35		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1074	0xe8dd3a		e8e1025eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1074	0xe8dd3f		488d15da4b1b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:1074	0xe8dd46		488910				MOVQ DX, 0(AX)												
  task_controller.go:1074	0xe8dd49		833d00fe6c0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1074	0xe8dd50		740c				JE 0xe8dd5e												
  task_controller.go:1074	0xe8dd52		488b4808			MOVQ 0x8(AX), CX											
  task_controller.go:1074	0xe8dd56		e8c5a65eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:1074	0xe8dd5b		49890b				MOVQ CX, 0(R11)												
  task_controller.go:1074	0xe8dd5e		488d0d6bb1fd01			LEAQ CAS-Backend/biz/controller..stmp_315(SB), CX							
  task_controller.go:1074	0xe8dd65		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8dd69		488d0d106b2100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8dd70		48898c2460040000		MOVQ CX, 0x460(SP)											
  context.go:1005		0xe8dd78		488b8c2480020000		MOVQ 0x280(SP), CX											
  context.go:1005		0xe8dd80		48898c2468040000		MOVQ CX, 0x468(SP)											
  context.go:1005		0xe8dd88		488d0551e12300			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8dd8f		488d9c2460040000		LEAQ 0x460(SP), BX											
  context.go:1005		0xe8dd97		e8041358ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8dd9c		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8dda1		488d0d8814fe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8dda8		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8ddab		488b842498040000		MOVQ 0x498(SP), AX											
  context.go:1005		0xe8ddb3		e8a819f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:1079	0xe8ddb8		4881c488040000			ADDQ $__file_alignment__+648(SB), SP									
  task_controller.go:1079	0xe8ddbf		5d				POPQ BP													
  task_controller.go:1079	0xe8ddc0		c3				RET													
  task_controller.go:1061	0xe8ddc1		488d15584b1b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:1061	0xe8ddc8		48899424a8020000		MOVQ DX, 0x2a8(SP)											
  task_controller.go:1061	0xe8ddd0		4c8d05c9b0fd01			LEAQ CAS-Backend/biz/controller..stmp_310(SB), R8							
  task_controller.go:1061	0xe8ddd7		4c898424b0020000		MOVQ R8, 0x2b0(SP)											
  print.go:314			0xe8dddf		488b1d9a426802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8dde6		488d05f3dcfd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8dded		488d8c24a8020000		LEAQ 0x2a8(SP), CX											
  print.go:314			0xe8ddf5		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8ddfa		4889fe				MOVQ DI, SI												
  print.go:314			0xe8ddfd		0f1f00				NOPL 0(AX)												
  print.go:314			0xe8de00		e85b1a69ff			CALL fmt.Fprintln(SB)											
  task_controller.go:1062	0xe8de05		e8d6d15dff			CALL runtime.makemap_small(SB)										
  task_controller.go:1062	0xe8de0a		4889842480020000		MOVQ AX, 0x280(SP)											
  task_controller.go:1062	0xe8de12		4889c3				MOVQ AX, BX												
  task_controller.go:1062	0xe8de15		488d0df14e2e00			LEAQ go:string.*+43013(SB), CX										
  task_controller.go:1062	0xe8de1c		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1062	0xe8de21		488d05586a2100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1062	0xe8de28		e8f3015eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1062	0xe8de2d		488d15ec4e1b00			LEAQ runtime.types+384288(SB), DX									
  task_controller.go:1062	0xe8de34		488910				MOVQ DX, 0(AX)												
  task_controller.go:1062	0xe8de37		833d12fd6c0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1062	0xe8de3e		6690				NOPW													
  task_controller.go:1062	0xe8de40		740c				JE 0xe8de4e												
  task_controller.go:1062	0xe8de42		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:1062	0xe8de46		e8d5a55eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:1062	0xe8de4b		498913				MOVQ DX, 0(R11)												
  task_controller.go:1062	0xe8de4e		488d15cbc80e00			LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:1062	0xe8de55		48895008			MOVQ DX, 0x8(AX)											
  task_controller.go:1064	0xe8de59		488b842470010000		MOVQ 0x170(SP), AX											
  task_controller.go:1064	0xe8de61		488b9c2428010000		MOVQ 0x128(SP), BX											
  task_controller.go:1064	0xe8de69		488b8c2430010000		MOVQ 0x130(SP), CX											
  task_controller.go:1064	0xe8de71		e84ac35dff			CALL runtime.convTslice(SB)										
  task_controller.go:1064	0xe8de76		4889842478020000		MOVQ AX, 0x278(SP)											
  task_controller.go:1062	0xe8de7e		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:1062	0xe8de86		488d0d8e4e2e00			LEAQ go:string.*+43027(SB), CX										
  task_controller.go:1062	0xe8de8d		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1062	0xe8de92		488d05e7692100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1062	0xe8de99		e882015eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1062	0xe8de9e		488d15dbaa1a00			LEAQ runtime.types+342400(SB), DX									
  task_controller.go:1062	0xe8dea5		488910				MOVQ DX, 0(AX)												
  task_controller.go:1062	0xe8dea8		833da1fc6c0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1062	0xe8deaf		750f				JNE 0xe8dec0												
  task_controller.go:1062	0xe8deb1		488b942478020000		MOVQ 0x278(SP), DX											
  task_controller.go:1062	0xe8deb9		eb1d				JMP 0xe8ded8												
  task_controller.go:1062	0xe8debb		0f1f440000			NOPL 0(AX)(AX*1)											
  task_controller.go:1062	0xe8dec0		e87ba55eff			CALL runtime.gcWriteBarrier2(SB)									
  task_controller.go:1062	0xe8dec5		488b942478020000		MOVQ 0x278(SP), DX											
  task_controller.go:1062	0xe8decd		498913				MOVQ DX, 0(R11)												
  task_controller.go:1062	0xe8ded0		488b7008			MOVQ 0x8(AX), SI											
  task_controller.go:1062	0xe8ded4		49897308			MOVQ SI, 0x8(R11)											
  task_controller.go:1062	0xe8ded8		48895008			MOVQ DX, 0x8(AX)											
  task_controller.go:1062	0xe8dedc		488d059d692100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:1062	0xe8dee3		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:1062	0xe8deeb		488d0dff4d2e00			LEAQ go:string.*+42985(SB), CX										
  task_controller.go:1062	0xe8def2		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:1062	0xe8def7		e824015eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:1062	0xe8defc		488d151d4a1b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:1062	0xe8df03		488910				MOVQ DX, 0(AX)												
  task_controller.go:1062	0xe8df06		833d43fc6c0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:1062	0xe8df0d		740c				JE 0xe8df1b												
  task_controller.go:1062	0xe8df0f		488b4808			MOVQ 0x8(AX), CX											
  task_controller.go:1062	0xe8df13		e808a55eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:1062	0xe8df18		49890b				MOVQ CX, 0(R11)												
  task_controller.go:1062	0xe8df1b		488d0d8eaffd01			LEAQ CAS-Backend/biz/controller..stmp_312(SB), CX							
  task_controller.go:1062	0xe8df22		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8df26		488d0d53692100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8df2d		48898c2460040000		MOVQ CX, 0x460(SP)											
  context.go:1005		0xe8df35		488b8c2480020000		MOVQ 0x280(SP), CX											
  context.go:1005		0xe8df3d		48898c2468040000		MOVQ CX, 0x468(SP)											
  context.go:1005		0xe8df45		488d0594df2300			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8df4c		488d9c2460040000		LEAQ 0x460(SP), BX											
  context.go:1005		0xe8df54		e8471158ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8df59		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8df5e		488d0dcb12fe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8df65		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8df68		488b842498040000		MOVQ 0x498(SP), AX											
  context.go:1005		0xe8df70		e8eb17f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:1067	0xe8df75		4881c488040000			ADDQ $__file_alignment__+648(SB), SP									
  task_controller.go:1067	0xe8df7c		5d				POPQ BP													
  task_controller.go:1067	0xe8df7d		c3				RET													
  task_controller.go:982	0xe8df7e		6690				NOPW													
  task_controller.go:982	0xe8df80		e85bd05dff			CALL runtime.makemap_small(SB)										
  task_controller.go:982	0xe8df85		4889842480020000		MOVQ AX, 0x280(SP)											
  task_controller.go:982	0xe8df8d		4889c3				MOVQ AX, BX												
  task_controller.go:982	0xe8df90		488d0d764d2e00			LEAQ go:string.*+43013(SB), CX										
  task_controller.go:982	0xe8df97		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:982	0xe8df9c		488d05dd682100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:982	0xe8dfa3		e878005eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:982	0xe8dfa8		488d0d714d1b00			LEAQ runtime.types+384288(SB), CX									
  task_controller.go:982	0xe8dfaf		488908				MOVQ CX, 0(AX)												
  task_controller.go:982	0xe8dfb2		833d97fb6c0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:982	0xe8dfb9		740d				JE 0xe8dfc8												
  task_controller.go:982	0xe8dfbb		488b5008			MOVQ 0x8(AX), DX											
  task_controller.go:982	0xe8dfbf		90				NOPL													
  task_controller.go:982	0xe8dfc0		e85ba45eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:982	0xe8dfc5		498913				MOVQ DX, 0(R11)												
  task_controller.go:982	0xe8dfc8		488d1551c70e00			LEAQ runtime.staticuint64s(SB), DX									
  task_controller.go:982	0xe8dfcf		48895008			MOVQ DX, 0x8(AX)											
  task_controller.go:982	0xe8dfd3		488d05a6682100			LEAQ runtime.types+784512(SB), AX									
  task_controller.go:982	0xe8dfda		488b9c2480020000		MOVQ 0x280(SP), BX											
  task_controller.go:982	0xe8dfe2		488d0d084d2e00			LEAQ go:string.*+42985(SB), CX										
  task_controller.go:982	0xe8dfe9		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_controller.go:982	0xe8dfee		e82d005eff			CALL runtime.mapassign_faststr(SB)									
  task_controller.go:982	0xe8dff3		488d1526491b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:982	0xe8dffa		488910				MOVQ DX, 0(AX)												
  task_controller.go:982	0xe8dffd		833d4cfb6c0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_controller.go:982	0xe8e004		740c				JE 0xe8e012												
  task_controller.go:982	0xe8e006		488b4808			MOVQ 0x8(AX), CX											
  task_controller.go:982	0xe8e00a		e811a45eff			CALL runtime.gcWriteBarrier1(SB)									
  task_controller.go:982	0xe8e00f		49890b				MOVQ CX, 0(R11)												
  task_controller.go:982	0xe8e012		488d0d67aefd01			LEAQ CAS-Backend/biz/controller..stmp_307(SB), CX							
  task_controller.go:982	0xe8e019		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8e01d		488d0d5c682100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8e024		48898c2460040000		MOVQ CX, 0x460(SP)											
  context.go:1005		0xe8e02c		488b8c2480020000		MOVQ 0x280(SP), CX											
  context.go:1005		0xe8e034		48898c2468040000		MOVQ CX, 0x468(SP)											
  context.go:1005		0xe8e03c		488d059dde2300			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8e043		488d9c2460040000		LEAQ 0x460(SP), BX											
  context.go:1005		0xe8e04b		e8501058ff			CALL runtime.convT(SB)											
  context.go:1005		0xe8e050		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8e055		488d0dd411fe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8e05c		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8e05f		488b842498040000		MOVQ 0x498(SP), AX											
  context.go:1005		0xe8e067		e8f416f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_controller.go:983	0xe8e06c		4881c488040000			ADDQ $__file_alignment__+648(SB), SP									
  task_controller.go:983	0xe8e073		5d				POPQ BP													
  task_controller.go:983	0xe8e074		c3				RET													
  context.go:752		0xe8e075		48899c2450010000		MOVQ BX, 0x150(SP)											
  context.go:752		0xe8e07d		4889842408010000		MOVQ AX, 0x108(SP)											
  task_controller.go:901	0xe8e085		488d1594481b00			LEAQ runtime.types+383264(SB), DX									
  task_controller.go:901	0xe8e08c		4889942438030000		MOVQ DX, 0x338(SP)											
  task_controller.go:901	0xe8e094		488d1535a7fd01			LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  task_controller.go:901	0xe8e09b		4889942440030000		MOVQ DX, 0x340(SP)											
  print.go:314			0xe8e0a3		488b1dd63f6802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8e0aa		488d052fdafd01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8e0b1		488d8c2438030000		LEAQ 0x338(SP), CX											
  print.go:314			0xe8e0b9		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8e0be		4889fe				MOVQ DI, SI												
  print.go:314			0xe8e0c1		e89a1769ff			CALL fmt.Fprintln(SB)											
  task_controller.go:902	0xe8e0c6		488b842498040000		MOVQ 0x498(SP), AX											
  task_controller.go:902	0xe8e0ce		bb90010000			MOVL $.file+323(SB), BX											
  task_controller.go:902	0xe8e0d3		488b8c2408010000		MOVQ 0x108(SP), CX											
  task_controller.go:902	0xe8e0db		488bbc2450010000		MOVQ 0x150(SP), DI											
  task_controller.go:902	0xe8e0e3		e8b8cff6ff			CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  task_controller.go:903	0xe8e0e8		4881c488040000			ADDQ $__file_alignment__+648(SB), SP									
  task_controller.go:903	0xe8e0ef		5d				POPQ BP													
  task_controller.go:903	0xe8e0f0		c3				RET													
  context.go:712		0xe8e0f1		4d89ca				MOVQ R9, R10												
  context.go:712		0xe8e0f4		4d21c1				ANDQ R8, R9												
  context.go:712		0xe8e0f7		49c1e104			SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe8e0fb		4d8b5c3108			MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe8e100		4939db				CMPQ R11, BX												
  context.go:712		0xe8e103		7438				JE 0xe8e13d												
  context.go:712		0xe8e105		4d8d4a01			LEAQ 0x1(R10), R9											
  context.go:712		0xe8e109		4d85db				TESTQ R11, R11												
  context.go:712		0xe8e10c		75e3				JNE 0xe8e0f1												
  context.go:712		0xe8e10e		4889942470020000		MOVQ DX, 0x270(SP)											
  context.go:712		0xe8e116		488d0573d31200			LEAQ CAS-Backend/biz/controller..typeAssert.39(SB), AX							
  context.go:712		0xe8e11d		0f1f00				NOPL 0(AX)												
  context.go:712		0xe8e120		e8bb1158ff			CALL runtime.typeAssert(SB)										
  context.go:752		0xe8e125		488b942470020000		MOVQ 0x270(SP), DX											
  context.go:712		0xe8e12d		4889c1				MOVQ AX, CX												
  context.go:752		0xe8e130		488b842480040000		MOVQ 0x480(SP), AX											
  context.go:712		0xe8e138		e988ecffff			JMP 0xe8cdc5												
  context.go:712		0xe8e13d		498b4c3110			MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe8e142		e97eecffff			JMP 0xe8cdc5												
  task_controller.go:897	0xe8e147		4889442408			MOVQ AX, 0x8(SP)											
  task_controller.go:897	0xe8e14c		e88f835eff			CALL runtime.morestack_noctxt.abi0(SB)									
  task_controller.go:897	0xe8e151		488b442408			MOVQ 0x8(SP), AX											
  task_controller.go:897	0xe8e156		e905ecffff			JMP CAS-Backend/biz/controller.ExcTaskHandler(SB)							
  :-1				0xe8e15b		cc				INT $__subsystem__(SB)											
  :-1				0xe8e15c		cc				INT $__subsystem__(SB)											
  :-1				0xe8e15d		cc				INT $__subsystem__(SB)											
  :-1				0xe8e15e		cc				INT $__subsystem__(SB)											
  :-1				0xe8e15f		cc				INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.ExcTaskHandler.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:1028	0xe8e160		493b6610		CMPQ SP, 0x10(R14)							
  task_controller.go:1028	0xe8e164		763f			JBE 0xe8e1a5								
  task_controller.go:1028	0xe8e166		55			PUSHQ BP								
  task_controller.go:1028	0xe8e167		4889e5			MOVQ SP, BP								
  task_controller.go:1028	0xe8e16a		4883ec30		SUBQ $__major_os_version__+42(SB), SP					
  task_controller.go:1028	0xe8e16e		4889442440		MOVQ AX, 0x40(SP)							
  task_controller.go:1028	0xe8e173		48895c2448		MOVQ BX, 0x48(SP)							
  task_controller.go:1028	0xe8e178		488b4a08		MOVQ 0x8(DX), CX							
  task_controller.go:1028	0xe8e17c		488b7a10		MOVQ 0x10(DX), DI							
  task_controller.go:1028	0xe8e180		488b7218		MOVQ 0x18(DX), SI							
  task_controller.go:1028	0xe8e184		488b5220		MOVQ 0x20(DX), DX							
  task_controller.go:1028	0xe8e188		4889542428		MOVQ DX, 0x28(SP)							
  task_controller.go:1029	0xe8e18d		e8ceabf8ff		CALL CAS-Backend/pkg/agvcontrol.SendForkliftSpecifiedPathNavigation(SB)	
  task_controller.go:1030	0xe8e192		488b542428		MOVQ 0x28(SP), DX							
  task_controller.go:1030	0xe8e197		8802			MOVB AL, 0(DX)								
  task_controller.go:1031	0xe8e199		4889d8			MOVQ BX, AX								
  task_controller.go:1031	0xe8e19c		4889cb			MOVQ CX, BX								
  task_controller.go:1031	0xe8e19f		4883c430		ADDQ $__major_os_version__+42(SB), SP					
  task_controller.go:1031	0xe8e1a3		5d			POPQ BP									
  task_controller.go:1031	0xe8e1a4		c3			RET									
  task_controller.go:1028	0xe8e1a5		4889442408		MOVQ AX, 0x8(SP)							
  task_controller.go:1028	0xe8e1aa		48895c2410		MOVQ BX, 0x10(SP)							
  task_controller.go:1028	0xe8e1af		e8ac825eff		CALL runtime.morestack.abi0(SB)						
  task_controller.go:1028	0xe8e1b4		488b442408		MOVQ 0x8(SP), AX							
  task_controller.go:1028	0xe8e1b9		488b5c2410		MOVQ 0x10(SP), BX							
  task_controller.go:1028	0xe8e1be		6690			NOPW									
  task_controller.go:1028	0xe8e1c0		eb9e			JMP CAS-Backend/biz/controller.ExcTaskHandler.func2(SB)			
  :-1				0xe8e1c2		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1c3		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1c4		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1c5		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1c6		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1c7		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1c8		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1c9		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1ca		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1cb		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1cc		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1cd		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1ce		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1cf		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1d0		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1d1		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1d2		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1d3		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1d4		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1d5		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1d6		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1d7		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1d8		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1d9		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1da		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1db		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1dc		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1dd		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1de		cc			INT $__subsystem__(SB)							
  :-1				0xe8e1df		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.ExcTaskHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:927	0xe8e1e0		493b6610		CMPQ SP, 0x10(R14)							
  task_controller.go:927	0xe8e1e4		0f86fd000000		JBE 0xe8e2e7								
  task_controller.go:927	0xe8e1ea		55			PUSHQ BP								
  task_controller.go:927	0xe8e1eb		4889e5			MOVQ SP, BP								
  task_controller.go:927	0xe8e1ee		4883ec48		SUBQ $__major_os_version__+66(SB), SP					
  task_controller.go:929	0xe8e1f2		4889442458		MOVQ AX, 0x58(SP)							
  task_controller.go:929	0xe8e1f7		48895c2460		MOVQ BX, 0x60(SP)							
  task_controller.go:927	0xe8e1fc		488b4a08		MOVQ 0x8(DX), CX							
  task_controller.go:927	0xe8e200		48894c2440		MOVQ CX, 0x40(SP)							
  task_controller.go:928	0xe8e205		e87656f8ff		CALL CAS-Backend/pkg/agvcontrol.QueryControlOwner(SB)			
  task_controller.go:929	0xe8e20a		4885db			TESTQ BX, BX								
  task_controller.go:929	0xe8e20d		0f85c8000000		JNE 0xe8e2db								
  task_controller.go:928	0xe8e213		4889442428		MOVQ AX, 0x28(SP)							
  task_controller.go:932	0xe8e218		488b4828		MOVQ 0x28(AX), CX							
  task_controller.go:932	0xe8e21c		488b5830		MOVQ 0x30(AX), BX							
  task_controller.go:932	0xe8e220		4889c8			MOVQ CX, AX								
  task_controller.go:932	0xe8e223		e8d846f8ff		CALL CAS-Backend/pkg/agvcontrol.ParseCurrentLock(SB)			
  task_controller.go:933	0xe8e228		440f117c2430		MOVUPS X15, 0x30(SP)							
  task_controller.go:933	0xe8e22e		e86dbe5dff		CALL runtime.convT64(SB)						
  task_controller.go:933	0xe8e233		488d0d26491b00		LEAQ runtime.types+383840(SB), CX					
  task_controller.go:933	0xe8e23a		48894c2430		MOVQ CX, 0x30(SP)							
  task_controller.go:933	0xe8e23f		4889442438		MOVQ AX, 0x38(SP)							
  print.go:314			0xe8e244		488b1d353e6802		MOVQ os.Stdout(SB), BX							
  print.go:314			0xe8e24b		488d058ed8fd01		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314			0xe8e252		488d4c2430		LEAQ 0x30(SP), CX							
  print.go:314			0xe8e257		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314			0xe8e25c		4889fe			MOVQ DI, SI								
  print.go:314			0xe8e25f		90			NOPL									
  print.go:314			0xe8e260		e8fb1569ff		CALL fmt.Fprintln(SB)							
  task_controller.go:934	0xe8e265		488b442428		MOVQ 0x28(SP), AX							
  task_controller.go:934	0xe8e26a		e89155f8ff		CALL CAS-Backend/pkg/agvcontrol.ControlOwnerAllowsManualDispatch(SB)	
  task_controller.go:934	0xe8e26f		84c0			TESTL AL, AL								
  task_controller.go:934	0xe8e271		7454			JE 0xe8e2c7								
  task_controller.go:937	0xe8e273		90			NOPL									
  kongzhi.go:1128		0xe8e274		488b442458		MOVQ 0x58(SP), AX							
  kongzhi.go:1128		0xe8e279		488b5c2460		MOVQ 0x60(SP), BX							
  kongzhi.go:1128		0xe8e27e		31c9			XORL CX, CX								
  kongzhi.go:1128		0xe8e280		e83bf6f8ff		CALL CAS-Backend/pkg/agvcontrol.queryAMRLocation(SB)			
  task_controller.go:938	0xe8e285		4885db			TESTQ BX, BX								
  task_controller.go:938	0xe8e288		7531			JNE 0xe8e2bb								
  task_controller.go:941	0xe8e28a		833dbff86c0200		CMPL runtime.writeBarrier(SB), $0x0					
  task_controller.go:941	0xe8e291		7507			JNE 0xe8e29a								
  task_controller.go:941	0xe8e293		488b4c2440		MOVQ 0x40(SP), CX							
  task_controller.go:941	0xe8e298		eb14			JMP 0xe8e2ae								
  task_controller.go:941	0xe8e29a		e8a1a15eff		CALL runtime.gcWriteBarrier2(SB)					
  task_controller.go:941	0xe8e29f		498903			MOVQ AX, 0(R11)								
  task_controller.go:941	0xe8e2a2		488b4c2440		MOVQ 0x40(SP), CX							
  task_controller.go:941	0xe8e2a7		488b11			MOVQ 0(CX), DX								
  task_controller.go:941	0xe8e2aa		49895308		MOVQ DX, 0x8(R11)							
  task_controller.go:941	0xe8e2ae		488901			MOVQ AX, 0(CX)								
  task_controller.go:942	0xe8e2b1		31c0			XORL AX, AX								
  task_controller.go:942	0xe8e2b3		31db			XORL BX, BX								
  task_controller.go:942	0xe8e2b5		4883c448		ADDQ $__major_os_version__+66(SB), SP					
  task_controller.go:942	0xe8e2b9		5d			POPQ BP									
  task_controller.go:942	0xe8e2ba		c3			RET									
  task_controller.go:939	0xe8e2bb		4889d8			MOVQ BX, AX								
  task_controller.go:939	0xe8e2be		4889cb			MOVQ CX, BX								
  task_controller.go:939	0xe8e2c1		4883c448		ADDQ $__major_os_version__+66(SB), SP					
  task_controller.go:939	0xe8e2c5		5d			POPQ BP									
  task_controller.go:939	0xe8e2c6		c3			RET									
  task_controller.go:935	0xe8e2c7		488b0582881200		MOVQ CAS-Backend/pkg/agvcontrol.ErrNoControlPermission(SB), AX		
  task_controller.go:935	0xe8e2ce		488b1d83881200		MOVQ CAS-Backend/pkg/agvcontrol.ErrNoControlPermission+8(SB), BX	
  task_controller.go:935	0xe8e2d5		4883c448		ADDQ $__major_os_version__+66(SB), SP					
  task_controller.go:935	0xe8e2d9		5d			POPQ BP									
  task_controller.go:935	0xe8e2da		c3			RET									
  task_controller.go:930	0xe8e2db		4889d8			MOVQ BX, AX								
  task_controller.go:930	0xe8e2de		4889cb			MOVQ CX, BX								
  task_controller.go:930	0xe8e2e1		4883c448		ADDQ $__major_os_version__+66(SB), SP					
  task_controller.go:930	0xe8e2e5		5d			POPQ BP									
  task_controller.go:930	0xe8e2e6		c3			RET									
  task_controller.go:927	0xe8e2e7		4889442408		MOVQ AX, 0x8(SP)							
  task_controller.go:927	0xe8e2ec		48895c2410		MOVQ BX, 0x10(SP)							
  task_controller.go:927	0xe8e2f1		e86a815eff		CALL runtime.morestack.abi0(SB)						
  task_controller.go:927	0xe8e2f6		488b442408		MOVQ 0x8(SP), AX							
  task_controller.go:927	0xe8e2fb		488b5c2410		MOVQ 0x10(SP), BX							
  task_controller.go:927	0xe8e300		e9dbfeffff		JMP CAS-Backend/biz/controller.ExcTaskHandler.func1(SB)			
  :-1				0xe8e305		cc			INT $__subsystem__(SB)							
  :-1				0xe8e306		cc			INT $__subsystem__(SB)							
  :-1				0xe8e307		cc			INT $__subsystem__(SB)							
  :-1				0xe8e308		cc			INT $__subsystem__(SB)							
  :-1				0xe8e309		cc			INT $__subsystem__(SB)							
  :-1				0xe8e30a		cc			INT $__subsystem__(SB)							
  :-1				0xe8e30b		cc			INT $__subsystem__(SB)							
  :-1				0xe8e30c		cc			INT $__subsystem__(SB)							
  :-1				0xe8e30d		cc			INT $__subsystem__(SB)							
  :-1				0xe8e30e		cc			INT $__subsystem__(SB)							
  :-1				0xe8e30f		cc			INT $__subsystem__(SB)							
  :-1				0xe8e310		cc			INT $__subsystem__(SB)							
  :-1				0xe8e311		cc			INT $__subsystem__(SB)							
  :-1				0xe8e312		cc			INT $__subsystem__(SB)							
  :-1				0xe8e313		cc			INT $__subsystem__(SB)							
  :-1				0xe8e314		cc			INT $__subsystem__(SB)							
  :-1				0xe8e315		cc			INT $__subsystem__(SB)							
  :-1				0xe8e316		cc			INT $__subsystem__(SB)							
  :-1				0xe8e317		cc			INT $__subsystem__(SB)							
  :-1				0xe8e318		cc			INT $__subsystem__(SB)							
  :-1				0xe8e319		cc			INT $__subsystem__(SB)							
  :-1				0xe8e31a		cc			INT $__subsystem__(SB)							
  :-1				0xe8e31b		cc			INT $__subsystem__(SB)							
  :-1				0xe8e31c		cc			INT $__subsystem__(SB)							
  :-1				0xe8e31d		cc			INT $__subsystem__(SB)							
  :-1				0xe8e31e		cc			INT $__subsystem__(SB)							
  :-1				0xe8e31f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.CancelNavigationHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:880	0xe91600		493b6610		CMPQ SP, 0x10(R14)							
  task_controller.go:880	0xe91604		761d			JBE 0xe91623								
  task_controller.go:880	0xe91606		55			PUSHQ BP								
  task_controller.go:880	0xe91607		4889e5			MOVQ SP, BP								
  task_controller.go:880	0xe9160a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  task_controller.go:880	0xe9160e		4889442420		MOVQ AX, 0x20(SP)							
  task_controller.go:880	0xe91613		48895c2428		MOVQ BX, 0x28(SP)							
  task_controller.go:881	0xe91618		e84350f8ff		CALL CAS-Backend/pkg/agvcontrol.SendCancelNavigation(SB)		
  task_controller.go:881	0xe9161d		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  task_controller.go:881	0xe91621		5d			POPQ BP									
  task_controller.go:881	0xe91622		c3			RET									
  task_controller.go:880	0xe91623		4889442408		MOVQ AX, 0x8(SP)							
  task_controller.go:880	0xe91628		48895c2410		MOVQ BX, 0x10(SP)							
  task_controller.go:880	0xe9162d		e8ae4e5eff		CALL runtime.morestack_noctxt.abi0(SB)					
  task_controller.go:880	0xe91632		488b442408		MOVQ 0x8(SP), AX							
  task_controller.go:880	0xe91637		488b5c2410		MOVQ 0x10(SP), BX							
  task_controller.go:880	0xe9163c		ebc2			JMP CAS-Backend/biz/controller.CancelNavigationHandler.func1(SB)	
  :-1				0xe9163e		cc			INT $__subsystem__(SB)							
  :-1				0xe9163f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.PauseNavigationHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_controller.go
  task_controller.go:818	0xe91640		493b6610		CMPQ SP, 0x10(R14)						
  task_controller.go:818	0xe91644		761d			JBE 0xe91663							
  task_controller.go:818	0xe91646		55			PUSHQ BP							
  task_controller.go:818	0xe91647		4889e5			MOVQ SP, BP							
  task_controller.go:818	0xe9164a		4883ec10		SUBQ $__major_os_version__+10(SB), SP				
  task_controller.go:818	0xe9164e		4889442420		MOVQ AX, 0x20(SP)						
  task_controller.go:818	0xe91653		48895c2428		MOVQ BX, 0x28(SP)						
  task_controller.go:819	0xe91658		e86349f8ff		CALL CAS-Backend/pkg/agvcontrol.SendPauseNavigation(SB)		
  task_controller.go:819	0xe9165d		4883c410		ADDQ $__major_os_version__+10(SB), SP				
  task_controller.go:819	0xe91661		5d			POPQ BP								
  task_controller.go:819	0xe91662		c3			RET								
  task_controller.go:818	0xe91663		4889442408		MOVQ AX, 0x8(SP)						
  task_controller.go:818	0xe91668		48895c2410		MOVQ BX, 0x10(SP)						
  task_controller.go:818	0xe9166d		e86e4e5eff		CALL runtime.morestack_noctxt.abi0(SB)				
  task_controller.go:818	0xe91672		488b442408		MOVQ 0x8(SP), AX						
  task_controller.go:818	0xe91677		488b5c2410		MOVQ 0x10(SP), BX						
  task_controller.go:818	0xe9167c		ebc2			JMP CAS-Backend/biz/controller.PauseNavigationHandler.func1(SB)	
  :-1				0xe9167e		cc			INT $__subsystem__(SB)						
  :-1				0xe9167f		cc			INT $__subsystem__(SB)						

