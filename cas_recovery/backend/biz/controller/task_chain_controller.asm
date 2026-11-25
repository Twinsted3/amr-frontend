TEXT CAS-Backend/biz/controller.NewTaskChainHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:26	0xe83d80		4c8d6424e0		LEAQ -0x20(SP), R12											
  task_chain_controller.go:26	0xe83d85		4d3b6610		CMPQ R12, 0x10(R14)											
  task_chain_controller.go:26	0xe83d89		0f868f070000		JBE 0xe8451e												
  task_chain_controller.go:26	0xe83d8f		55			PUSHQ BP												
  task_chain_controller.go:26	0xe83d90		4889e5			MOVQ SP, BP												
  task_chain_controller.go:26	0xe83d93		4881ec98000000		SUBQ $.file+75(SB), SP											
  context.go:712		0xe83d9a		48898424a8000000	MOVQ AX, 0xa8(SP)											
  task_chain_controller.go:27	0xe83da2		488d05d70d2800		LEAQ runtime.types+1178496(SB), AX									
  task_chain_controller.go:27	0xe83da9		e8f2d958ff		CALL runtime.newobject(SB)										
  task_chain_controller.go:27	0xe83dae		4889842490000000	MOVQ AX, 0x90(SP)											
  context.go:712		0xe83db6		488b0d233a1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe83dbd		488b15243a1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe83dc4		4885c9			TESTQ CX, CX												
  context.go:712		0xe83dc7		741c			JE 0xe83de5												
  context.go:712		0xe83dc9		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe83dcd		488b357c751300		MOVQ CAS-Backend/biz/controller..typeAssert.29(SB), SI							
  context.go:712		0xe83dd4		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe83dd7		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe83ddb		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe83de0		e9e9060000		JMP 0xe844ce												
  context.go:752		0xe83de5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe83de9		4c8b8424a8000000	MOVQ 0xa8(SP), R8											
  context.go:752		0xe83df1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe83df5		488d0d64281a00		LEAQ runtime.types+267872(SB), CX									
  context.go:752		0xe83dfc		4889c7			MOVQ AX, DI												
  context.go:752		0xe83dff		4889d0			MOVQ DX, AX												
  context.go:752		0xe83e02		ffd6			CALL SI													
  task_chain_controller.go:28	0xe83e04		4885c0			TESTQ AX, AX												
  task_chain_controller.go:28	0xe83e07		0f8441010000		JE 0xe83f4e												
  context.go:752		0xe83e0d		48895c2448		MOVQ BX, 0x48(SP)											
  context.go:752		0xe83e12		4889442428		MOVQ AX, 0x28(SP)											
  task_chain_controller.go:29	0xe83e17		e8c4715eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:29	0xe83e1c		4889842488000000	MOVQ AX, 0x88(SP)											
  task_chain_controller.go:29	0xe83e24		4889c3			MOVQ AX, BX												
  task_chain_controller.go:29	0xe83e27		488d0d5e582e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:29	0xe83e2e		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:29	0xe83e33		488d05460a2200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:29	0xe83e3a		e8e1a15eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:29	0xe83e3f		488d0d1aed1b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:29	0xe83e46		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:29	0xe83e49		833d009d6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:29	0xe83e50		740c			JE 0xe83e5e												
  task_chain_controller.go:29	0xe83e52		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:29	0xe83e56		e8c5455fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:29	0xe83e5b		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:29	0xe83e5e		488d0d5b0cfe01		LEAQ runtime.gcbits.*(SB), CX										
  task_chain_controller.go:29	0xe83e65		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:29	0xe83e69		488b4c2428		MOVQ 0x28(SP), CX											
  task_chain_controller.go:29	0xe83e6e		488b4918		MOVQ 0x18(CX), CX											
  task_chain_controller.go:29	0xe83e72		488b442448		MOVQ 0x48(SP), AX											
  task_chain_controller.go:29	0xe83e77		ffd1			CALL CX													
  task_chain_controller.go:29	0xe83e79		b914000000		MOVL $__major_os_version__+14(SB), CX									
  task_chain_controller.go:29	0xe83e7e		4889c7			MOVQ AX, DI												
  task_chain_controller.go:29	0xe83e81		4889de			MOVQ BX, SI												
  task_chain_controller.go:29	0xe83e84		31c0			XORL AX, AX												
  task_chain_controller.go:29	0xe83e86		488d1db1c52f00		LEAQ go:string.*+98102(SB), BX										
  task_chain_controller.go:29	0xe83e8d		e86e155dff		CALL runtime.concatstring2(SB)										
  task_chain_controller.go:29	0xe83e92		e889625eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:29	0xe83e97		4889842480000000	MOVQ AX, 0x80(SP)											
  task_chain_controller.go:29	0xe83e9f		488b9c2488000000	MOVQ 0x88(SP), BX											
  task_chain_controller.go:29	0xe83ea7		488d0da64b2e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:29	0xe83eae		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:29	0xe83eb3		488d05c6092200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:29	0xe83eba		e861a15eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:29	0xe83ebf		488d0d5aea1b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:29	0xe83ec6		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:29	0xe83ec9		833d809c6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:29	0xe83ed0		750e			JNE 0xe83ee0												
  task_chain_controller.go:29	0xe83ed2		488b8c2480000000	MOVQ 0x80(SP), CX											
  task_chain_controller.go:29	0xe83eda		eb1c			JMP 0xe83ef8												
  task_chain_controller.go:29	0xe83edc		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:29	0xe83ee0		e85b455fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:29	0xe83ee5		488b8c2480000000	MOVQ 0x80(SP), CX											
  task_chain_controller.go:29	0xe83eed		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:29	0xe83ef0		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:29	0xe83ef4		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:29	0xe83ef8		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe83efc		488d0d7d092200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe83f03		48894c2468		MOVQ CX, 0x68(SP)											
  context.go:1005		0xe83f08		488b8c2488000000	MOVQ 0x88(SP), CX											
  context.go:1005		0xe83f10		48894c2470		MOVQ CX, 0x70(SP)											
  context.go:1005		0xe83f15		488d05c47f2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe83f1c		488d5c2468		LEAQ 0x68(SP), BX											
  context.go:1005		0xe83f21		e87ab158ff		CALL runtime.convT(SB)											
  context.go:1005		0xe83f26		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005		0xe83f2b		488d0dfeb2fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe83f32		4889c7			MOVQ AX, DI												
  context.go:1005		0xe83f35		488b8424a8000000	MOVQ 0xa8(SP), AX											
  context.go:1005		0xe83f3d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe83f40		e81bb8f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:30	0xe83f45		4881c498000000		ADDQ $.file+75(SB), SP											
  task_chain_controller.go:30	0xe83f4c		5d			POPQ BP													
  task_chain_controller.go:30	0xe83f4d		c3			RET													
  task_chain_controller.go:32	0xe83f4e		488b8c2490000000	MOVQ 0x90(SP), CX											
  task_chain_controller.go:32	0xe83f56		488b4128		MOVQ 0x28(CX), AX											
  task_chain_controller.go:32	0xe83f5a		488b5930		MOVQ 0x30(CX), BX											
  task_chain_controller.go:32	0xe83f5e		6690			NOPW													
  task_chain_controller.go:32	0xe83f60		e85bea65ff		CALL strings.TrimSpace(SB)										
  task_chain_controller.go:32	0xe83f65		4885db			TESTQ BX, BX												
  task_chain_controller.go:32	0xe83f68		0f85f4000000		JNE 0xe84062												
  task_chain_controller.go:33	0xe83f6e		e86d705eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:33	0xe83f73		4889842488000000	MOVQ AX, 0x88(SP)											
  task_chain_controller.go:33	0xe83f7b		4889c3			MOVQ AX, BX												
  task_chain_controller.go:33	0xe83f7e		488d0d07572e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:33	0xe83f85		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:33	0xe83f8a		488d05ef082200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:33	0xe83f91		e88aa05eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:33	0xe83f96		488d0dc3eb1b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:33	0xe83f9d		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:33	0xe83fa0		833da99b6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:33	0xe83fa7		740c			JE 0xe83fb5												
  task_chain_controller.go:33	0xe83fa9		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:33	0xe83fad		e86e445fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:33	0xe83fb2		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:33	0xe83fb5		488d15040bfe01		LEAQ runtime.gcbits.*(SB), DX										
  task_chain_controller.go:33	0xe83fbc		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:33	0xe83fc0		488d05b9082200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:33	0xe83fc7		488b9c2488000000	MOVQ 0x88(SP), BX											
  task_chain_controller.go:33	0xe83fcf		488d0d7e4a2e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:33	0xe83fd6		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:33	0xe83fdb		0f1f440000		NOPL 0(AX)(AX*1)											
  task_chain_controller.go:33	0xe83fe0		e83ba05eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:33	0xe83fe5		488d1534e91b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:33	0xe83fec		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:33	0xe83fef		833d5a9b6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:33	0xe83ff6		7410			JE 0xe84008												
  task_chain_controller.go:33	0xe83ff8		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:33	0xe83ffc		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:33	0xe84000		e81b445fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:33	0xe84005		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:33	0xe84008		488d0d814bfe01		LEAQ CAS-Backend/biz/controller..stmp_177(SB), CX							
  task_chain_controller.go:33	0xe8400f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe84013		488d0d66082200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8401a		48894c2468		MOVQ CX, 0x68(SP)											
  context.go:1005		0xe8401f		488b8c2488000000	MOVQ 0x88(SP), CX											
  context.go:1005		0xe84027		48894c2470		MOVQ CX, 0x70(SP)											
  context.go:1005		0xe8402c		488d05ad7e2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe84033		488d5c2468		LEAQ 0x68(SP), BX											
  context.go:1005		0xe84038		e863b058ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8403d		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe84042		488d0de7b1fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe84049		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8404c		488b8424a8000000	MOVQ 0xa8(SP), AX											
  context.go:1005		0xe84054		e807b7f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:34	0xe84059		4881c498000000		ADDQ $.file+75(SB), SP											
  task_chain_controller.go:34	0xe84060		5d			POPQ BP													
  task_chain_controller.go:34	0xe84061		c3			RET													
  task_chain_controller.go:36	0xe84062		488b8c2490000000	MOVQ 0x90(SP), CX											
  task_chain_controller.go:36	0xe8406a		488b4128		MOVQ 0x28(CX), AX											
  task_chain_controller.go:36	0xe8406e		488b5930		MOVQ 0x30(CX), BX											
  task_chain_controller.go:36	0xe84072		e8a9def9ff		CALL CAS-Backend/pkg/agvcontrol.ParseForkliftTaskChainJSON(SB)						
  task_chain_controller.go:36	0xe84077		660f1f840000000000	NOPW 0(AX)(AX*1)											
  task_chain_controller.go:36	0xe84080		4885ff			TESTQ DI, DI												
  task_chain_controller.go:36	0xe84083		0f8425010000		JE 0xe841ae												
  task_chain_controller.go:36	0xe84089		48897c2430		MOVQ DI, 0x30(SP)											
  task_chain_controller.go:36	0xe8408e		4889742458		MOVQ SI, 0x58(SP)											
  task_chain_controller.go:37	0xe84093		e8486f5eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:37	0xe84098		4889842488000000	MOVQ AX, 0x88(SP)											
  task_chain_controller.go:37	0xe840a0		4889c3			MOVQ AX, BX												
  task_chain_controller.go:37	0xe840a3		488d0de2552e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:37	0xe840aa		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:37	0xe840af		488d05ca072200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:37	0xe840b6		e8659f5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:37	0xe840bb		488d0d9eea1b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:37	0xe840c2		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:37	0xe840c5		833d849a6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:37	0xe840cc		740c			JE 0xe840da												
  task_chain_controller.go:37	0xe840ce		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:37	0xe840d2		e849435fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:37	0xe840d7		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:37	0xe840da		488d0ddf09fe01		LEAQ runtime.gcbits.*(SB), CX										
  task_chain_controller.go:37	0xe840e1		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:37	0xe840e5		488b4c2430		MOVQ 0x30(SP), CX											
  task_chain_controller.go:37	0xe840ea		488b4918		MOVQ 0x18(CX), CX											
  task_chain_controller.go:37	0xe840ee		488b442458		MOVQ 0x58(SP), AX											
  task_chain_controller.go:37	0xe840f3		ffd1			CALL CX													
  task_chain_controller.go:37	0xe840f5		e826605eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:37	0xe840fa		4889842480000000	MOVQ AX, 0x80(SP)											
  task_chain_controller.go:37	0xe84102		488b9c2488000000	MOVQ 0x88(SP), BX											
  task_chain_controller.go:37	0xe8410a		488d0d43492e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:37	0xe84111		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:37	0xe84116		488d0563072200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:37	0xe8411d		0f1f00			NOPL 0(AX)												
  task_chain_controller.go:37	0xe84120		e8fb9e5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:37	0xe84125		488d0df4e71b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:37	0xe8412c		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:37	0xe8412f		833d1a9a6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:37	0xe84136		750a			JNE 0xe84142												
  task_chain_controller.go:37	0xe84138		488b8c2480000000	MOVQ 0x80(SP), CX											
  task_chain_controller.go:37	0xe84140		eb18			JMP 0xe8415a												
  task_chain_controller.go:37	0xe84142		e8f9425fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:37	0xe84147		488b8c2480000000	MOVQ 0x80(SP), CX											
  task_chain_controller.go:37	0xe8414f		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:37	0xe84152		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:37	0xe84156		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:37	0xe8415a		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8415e		488d0d1b072200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe84165		48894c2468		MOVQ CX, 0x68(SP)											
  context.go:1005		0xe8416a		488b8c2488000000	MOVQ 0x88(SP), CX											
  context.go:1005		0xe84172		48894c2470		MOVQ CX, 0x70(SP)											
  context.go:1005		0xe84177		488d05627d2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8417e		488d5c2468		LEAQ 0x68(SP), BX											
  context.go:1005		0xe84183		e818af58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe84188		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8418d		488d0d9cb0fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe84194		4889c7			MOVQ AX, DI												
  context.go:1005		0xe84197		488b8424a8000000	MOVQ 0xa8(SP), AX											
  context.go:1005		0xe8419f		90			NOPL													
  context.go:1005		0xe841a0		e8bbb5f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:38	0xe841a5		4881c498000000		ADDQ $.file+75(SB), SP											
  task_chain_controller.go:38	0xe841ac		5d			POPQ BP													
  task_chain_controller.go:38	0xe841ad		c3			RET													
  task_chain_controller.go:45	0xe841ae		e8ed9e62ff		CALL time.Now(SB)											
  task_chain_controller.go:45	0xe841b3		4889442440		MOVQ AX, 0x40(SP)											
  task_chain_controller.go:45	0xe841b8		48894c2478		MOVQ CX, 0x78(SP)											
  task_chain_controller.go:45	0xe841bd		48895c2438		MOVQ BX, 0x38(SP)											
  task_chain_controller.go:40	0xe841c2		488d0577d32900		LEAQ runtime.types+1295680(SB), AX									
  task_chain_controller.go:40	0xe841c9		e8d2d558ff		CALL runtime.newobject(SB)										
  task_chain_controller.go:41	0xe841ce		488b8c2490000000	MOVQ 0x90(SP), CX											
  task_chain_controller.go:41	0xe841d6		488b5110		MOVQ 0x10(CX), DX											
  task_chain_controller.go:41	0xe841da		488b5908		MOVQ 0x8(CX), BX											
  task_chain_controller.go:41	0xe841de		48895010		MOVQ DX, 0x10(AX)											
  task_chain_controller.go:41	0xe841e2		833d67996d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:41	0xe841e9		7408			JE 0xe841f3												
  task_chain_controller.go:41	0xe841eb		e830425fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:41	0xe841f0		49891b			MOVQ BX, 0(R11)												
  task_chain_controller.go:41	0xe841f3		48895808		MOVQ BX, 0x8(AX)											
  task_chain_controller.go:42	0xe841f7		488b5120		MOVQ 0x20(CX), DX											
  task_chain_controller.go:42	0xe841fb		488b5918		MOVQ 0x18(CX), BX											
  task_chain_controller.go:42	0xe841ff		48895020		MOVQ DX, 0x20(AX)											
  task_chain_controller.go:42	0xe84203		833d46996d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:42	0xe8420a		7408			JE 0xe84214												
  task_chain_controller.go:42	0xe8420c		e80f425fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:42	0xe84211		49891b			MOVQ BX, 0(R11)												
  task_chain_controller.go:42	0xe84214		48895818		MOVQ BX, 0x18(AX)											
  task_chain_controller.go:43	0xe84218		488b5130		MOVQ 0x30(CX), DX											
  task_chain_controller.go:43	0xe8421c		488b4928		MOVQ 0x28(CX), CX											
  task_chain_controller.go:43	0xe84220		48895030		MOVQ DX, 0x30(AX)											
  task_chain_controller.go:43	0xe84224		833d25996d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:43	0xe8422b		7408			JE 0xe84235												
  task_chain_controller.go:43	0xe8422d		e8ee415fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:43	0xe84232		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:43	0xe84235		48894828		MOVQ CX, 0x28(AX)											
  task_chain_controller.go:44	0xe84239		48c7403800000000	MOVQ $0x0, 0x38(AX)											
  task_chain_controller.go:45	0xe84241		488b4c2440		MOVQ 0x40(SP), CX											
  task_chain_controller.go:45	0xe84246		48894840		MOVQ CX, 0x40(AX)											
  task_chain_controller.go:45	0xe8424a		488b4c2438		MOVQ 0x38(SP), CX											
  task_chain_controller.go:45	0xe8424f		48894848		MOVQ CX, 0x48(AX)											
  task_chain_controller.go:45	0xe84253		833df6986d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:45	0xe8425a		7507			JNE 0xe84263												
  task_chain_controller.go:45	0xe8425c		488b4c2478		MOVQ 0x78(SP), CX											
  task_chain_controller.go:45	0xe84261		eb0d			JMP 0xe84270												
  task_chain_controller.go:45	0xe84263		e8b8415fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:45	0xe84268		488b4c2478		MOVQ 0x78(SP), CX											
  task_chain_controller.go:45	0xe8426d		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:40	0xe84270		4889442450		MOVQ AX, 0x50(SP)											
  task_chain_controller.go:45	0xe84275		48894850		MOVQ CX, 0x50(AX)											
  task_chain_controller.go:47	0xe84279		e8c226b1ff		CALL CAS-Backend/biz/dao.InsertTaskChain(SB)								
  task_chain_controller.go:47	0xe8427e		6690			NOPW													
  task_chain_controller.go:47	0xe84280		84c0			TESTL AL, AL												
  task_chain_controller.go:47	0xe84282		0f8459010000		JE 0xe843e1												
  task_chain_controller.go:51	0xe84288		e8536d5eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:51	0xe8428d		4889842488000000	MOVQ AX, 0x88(SP)											
  task_chain_controller.go:51	0xe84295		4889c3			MOVQ AX, BX												
  task_chain_controller.go:51	0xe84298		488d0ded532e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:51	0xe8429f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:51	0xe842a4		488d05d5052200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:51	0xe842ab		e8709d5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:51	0xe842b0		488d0da9e81b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:51	0xe842b7		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:51	0xe842ba		833d8f986d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:51	0xe842c1		740c			JE 0xe842cf												
  task_chain_controller.go:51	0xe842c3		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:51	0xe842c7		e854415fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:51	0xe842cc		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:51	0xe842cf		488d155a35fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_chain_controller.go:51	0xe842d6		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:51	0xe842da		488d059f052200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:51	0xe842e1		488b9c2488000000	MOVQ 0x88(SP), BX											
  task_chain_controller.go:51	0xe842e9		488d0d64472e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:51	0xe842f0		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:51	0xe842f5		e8269d5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:51	0xe842fa		488d151fe61b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:51	0xe84301		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:51	0xe84304		833d45986d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:51	0xe8430b		740c			JE 0xe84319												
  task_chain_controller.go:51	0xe8430d		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:51	0xe84311		e80a415fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:51	0xe84316		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:51	0xe84319		488d0d9048fe01		LEAQ CAS-Backend/biz/controller..stmp_182(SB), CX							
  task_chain_controller.go:51	0xe84320		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:51	0xe84324		488b4c2450		MOVQ 0x50(SP), CX											
  task_chain_controller.go:51	0xe84329		488b01			MOVQ 0(CX), AX												
  task_chain_controller.go:51	0xe8432c		e86f5d5eff		CALL runtime.convT64(SB)										
  task_chain_controller.go:51	0xe84331		4889842480000000	MOVQ AX, 0x80(SP)											
  task_chain_controller.go:51	0xe84339		488b9c2488000000	MOVQ 0x88(SP), BX											
  task_chain_controller.go:51	0xe84341		488d0d52422e00		LEAQ go:string.*+146(SB), CX										
  task_chain_controller.go:51	0xe84348		bf02000000		MOVL $__minor_os_version__+1(SB), DI									
  task_chain_controller.go:51	0xe8434d		488d052c052200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:51	0xe84354		e8c79c5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:51	0xe84359		488d0d00e81b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:51	0xe84360		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:51	0xe84363		833de6976d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:51	0xe8436a		750a			JNE 0xe84376												
  task_chain_controller.go:51	0xe8436c		488b8c2480000000	MOVQ 0x80(SP), CX											
  task_chain_controller.go:51	0xe84374		eb18			JMP 0xe8438e												
  task_chain_controller.go:51	0xe84376		e8c5405fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:51	0xe8437b		488b8c2480000000	MOVQ 0x80(SP), CX											
  task_chain_controller.go:51	0xe84383		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:51	0xe84386		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:51	0xe8438a		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:51	0xe8438e		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe84392		488d0de7042200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe84399		48894c2468		MOVQ CX, 0x68(SP)											
  context.go:1005		0xe8439e		488b8c2488000000	MOVQ 0x88(SP), CX											
  context.go:1005		0xe843a6		48894c2470		MOVQ CX, 0x70(SP)											
  context.go:1005		0xe843ab		488d052e7b2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe843b2		488d5c2468		LEAQ 0x68(SP), BX											
  context.go:1005		0xe843b7		e8e4ac58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe843bc		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe843c1		488d0d68aefe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe843c8		4889c7			MOVQ AX, DI												
  context.go:1005		0xe843cb		488b8424a8000000	MOVQ 0xa8(SP), AX											
  context.go:1005		0xe843d3		e888b3f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:52	0xe843d8		4881c498000000		ADDQ $.file+75(SB), SP											
  task_chain_controller.go:52	0xe843df		5d			POPQ BP													
  task_chain_controller.go:52	0xe843e0		c3			RET													
  task_chain_controller.go:48	0xe843e1		e8fa6b5eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:48	0xe843e6		4889842488000000	MOVQ AX, 0x88(SP)											
  task_chain_controller.go:48	0xe843ee		4889c3			MOVQ AX, BX												
  task_chain_controller.go:48	0xe843f1		488d0d94522e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:48	0xe843f8		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:48	0xe843fd		488d057c042200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:48	0xe84404		e8179c5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:48	0xe84409		488d0d50e71b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:48	0xe84410		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:48	0xe84413		833d36976d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:48	0xe8441a		740c			JE 0xe84428												
  task_chain_controller.go:48	0xe8441c		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:48	0xe84420		e8fb3f5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:48	0xe84425		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:48	0xe84428		488d159106fe01		LEAQ runtime.gcbits.*(SB), DX										
  task_chain_controller.go:48	0xe8442f		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:48	0xe84433		488d0546042200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:48	0xe8443a		488b9c2488000000	MOVQ 0x88(SP), BX											
  task_chain_controller.go:48	0xe84442		488d0d0b462e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:48	0xe84449		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:48	0xe8444e		e8cd9b5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:48	0xe84453		488d15c6e41b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:48	0xe8445a		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:48	0xe8445d		833dec966d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:48	0xe84464		740c			JE 0xe84472												
  task_chain_controller.go:48	0xe84466		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:48	0xe8446a		e8b13f5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:48	0xe8446f		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:48	0xe84472		488d0d2747fe01		LEAQ CAS-Backend/biz/controller..stmp_180(SB), CX							
  task_chain_controller.go:48	0xe84479		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8447d		488d0dfc032200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe84484		48894c2468		MOVQ CX, 0x68(SP)											
  context.go:1005		0xe84489		488b8c2488000000	MOVQ 0x88(SP), CX											
  context.go:1005		0xe84491		48894c2470		MOVQ CX, 0x70(SP)											
  context.go:1005		0xe84496		488d05437a2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8449d		488d5c2468		LEAQ 0x68(SP), BX											
  context.go:1005		0xe844a2		e8f9ab58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe844a7		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe844ac		488d0d7dadfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe844b3		4889c7			MOVQ AX, DI												
  context.go:1005		0xe844b6		488b8424a8000000	MOVQ 0xa8(SP), AX											
  context.go:1005		0xe844be		6690			NOPW													
  context.go:1005		0xe844c0		e89bb2f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:49	0xe844c5		4881c498000000		ADDQ $.file+75(SB), SP											
  task_chain_controller.go:49	0xe844cc		5d			POPQ BP													
  task_chain_controller.go:49	0xe844cd		c3			RET													
  context.go:712		0xe844ce		4d89ca			MOVQ R9, R10												
  context.go:712		0xe844d1		4d21c1			ANDQ R8, R9												
  context.go:712		0xe844d4		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe844d8		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe844dd		0f1f00			NOPL 0(AX)												
  context.go:712		0xe844e0		4939db			CMPQ R11, BX												
  context.go:712		0xe844e3		742f			JE 0xe84514												
  context.go:712		0xe844e5		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe844e9		4d85db			TESTQ R11, R11												
  context.go:712		0xe844ec		75e0			JNE 0xe844ce												
  context.go:712		0xe844ee		4889542460		MOVQ DX, 0x60(SP)											
  context.go:712		0xe844f3		488d05566e1300		LEAQ CAS-Backend/biz/controller..typeAssert.29(SB), AX							
  context.go:712		0xe844fa		e8e1ad58ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe844ff		488b542460		MOVQ 0x60(SP), DX											
  context.go:712		0xe84504		4889c1			MOVQ AX, CX												
  context.go:752		0xe84507		488b842490000000	MOVQ 0x90(SP), AX											
  context.go:712		0xe8450f		e9d1f8ffff		JMP 0xe83de5												
  context.go:712		0xe84514		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe84519		e9c7f8ffff		JMP 0xe83de5												
  task_chain_controller.go:26	0xe8451e		4889442408		MOVQ AX, 0x8(SP)											
  task_chain_controller.go:26	0xe84523		e8b81f5fff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_chain_controller.go:26	0xe84528		488b442408		MOVQ 0x8(SP), AX											
  task_chain_controller.go:26	0xe8452d		e94ef8ffff		JMP CAS-Backend/biz/controller.NewTaskChainHandler(SB)							
  :-1				0xe84532		cc			INT $__subsystem__(SB)											
  :-1				0xe84533		cc			INT $__subsystem__(SB)											
  :-1				0xe84534		cc			INT $__subsystem__(SB)											
  :-1				0xe84535		cc			INT $__subsystem__(SB)											
  :-1				0xe84536		cc			INT $__subsystem__(SB)											
  :-1				0xe84537		cc			INT $__subsystem__(SB)											
  :-1				0xe84538		cc			INT $__subsystem__(SB)											
  :-1				0xe84539		cc			INT $__subsystem__(SB)											
  :-1				0xe8453a		cc			INT $__subsystem__(SB)											
  :-1				0xe8453b		cc			INT $__subsystem__(SB)											
  :-1				0xe8453c		cc			INT $__subsystem__(SB)											
  :-1				0xe8453d		cc			INT $__subsystem__(SB)											
  :-1				0xe8453e		cc			INT $__subsystem__(SB)											
  :-1				0xe8453f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.UpdateTaskChainHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:54	0xe84540		4c8da42430ffffff	LEAQ 0xffffff30(SP), R12										
  task_chain_controller.go:54	0xe84548		4d3b6610		CMPQ R12, 0x10(R14)											
  task_chain_controller.go:54	0xe8454c		0f86c9090000		JBE 0xe84f1b												
  task_chain_controller.go:54	0xe84552		55			PUSHQ BP												
  task_chain_controller.go:54	0xe84553		4889e5			MOVQ SP, BP												
  task_chain_controller.go:54	0xe84556		4881ec48010000		SUBQ $.file+251(SB), SP											
  context.go:712		0xe8455d		4889842458010000	MOVQ AX, 0x158(SP)											
  task_chain_controller.go:55	0xe84565		488d0514062800		LEAQ runtime.types+1178496(SB), AX									
  task_chain_controller.go:55	0xe8456c		e82fd258ff		CALL runtime.newobject(SB)										
  task_chain_controller.go:55	0xe84571		4889842440010000	MOVQ AX, 0x140(SP)											
  context.go:712		0xe84579		488b0d60321300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe84580		488b1561321300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe84587		4885c9			TESTQ CX, CX												
  context.go:712		0xe8458a		7419			JE 0xe845a5												
  context.go:712		0xe8458c		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe84590		488b35d96d1300		MOVQ CAS-Backend/biz/controller..typeAssert.30(SB), SI							
  context.go:712		0xe84597		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe8459a		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe8459e		6690			NOPW													
  context.go:712		0xe845a0		e91e090000		JMP 0xe84ec3												
  context.go:752		0xe845a5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe845a9		4c8b842458010000	MOVQ 0x158(SP), R8											
  context.go:752		0xe845b1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe845b5		488d0da4201a00		LEAQ runtime.types+267872(SB), CX									
  context.go:752		0xe845bc		4889c7			MOVQ AX, DI												
  context.go:752		0xe845bf		4889d0			MOVQ DX, AX												
  context.go:752		0xe845c2		ffd6			CALL SI													
  task_chain_controller.go:56	0xe845c4		4885c0			TESTQ AX, AX												
  task_chain_controller.go:56	0xe845c7		0f85a1070000		JNE 0xe84d6e												
  task_chain_controller.go:60	0xe845cd		488b8c2440010000	MOVQ 0x140(SP), CX											
  task_chain_controller.go:60	0xe845d5		48833900		CMPQ 0(CX), $0x0											
  task_chain_controller.go:60	0xe845d9		0f8ff6000000		JG 0xe846d5												
  task_chain_controller.go:61	0xe845df		90			NOPL													
  task_chain_controller.go:61	0xe845e0		e8fb695eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:61	0xe845e5		4889842438010000	MOVQ AX, 0x138(SP)											
  task_chain_controller.go:61	0xe845ed		4889c3			MOVQ AX, BX												
  task_chain_controller.go:61	0xe845f0		488d0d95502e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:61	0xe845f7		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:61	0xe845fc		488d057d022200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:61	0xe84603		e8189a5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:61	0xe84608		488d0d51e51b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:61	0xe8460f		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:61	0xe84612		833d37956d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:61	0xe84619		740d			JE 0xe84628												
  task_chain_controller.go:61	0xe8461b		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:61	0xe8461f		90			NOPL													
  task_chain_controller.go:61	0xe84620		e8fb3d5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:61	0xe84625		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:61	0xe84628		488d159104fe01		LEAQ runtime.gcbits.*(SB), DX										
  task_chain_controller.go:61	0xe8462f		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:61	0xe84633		488d0546022200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:61	0xe8463a		488b9c2438010000	MOVQ 0x138(SP), BX											
  task_chain_controller.go:61	0xe84642		488d0d0b442e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:61	0xe84649		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:61	0xe8464e		e8cd995eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:61	0xe84653		488d15c6e21b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:61	0xe8465a		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:61	0xe8465d		833dec946d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:61	0xe84664		740c			JE 0xe84672												
  task_chain_controller.go:61	0xe84666		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:61	0xe8466a		e8b13d5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:61	0xe8466f		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:61	0xe84672		488d0d4745fe01		LEAQ CAS-Backend/biz/controller..stmp_185(SB), CX							
  task_chain_controller.go:61	0xe84679		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8467d		488d0dfc012200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe84684		48898c2420010000	MOVQ CX, 0x120(SP)											
  context.go:1005		0xe8468c		488b8c2438010000	MOVQ 0x138(SP), CX											
  context.go:1005		0xe84694		48898c2428010000	MOVQ CX, 0x128(SP)											
  context.go:1005		0xe8469c		488d053d782400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe846a3		488d9c2420010000	LEAQ 0x120(SP), BX											
  context.go:1005		0xe846ab		e8f0a958ff		CALL runtime.convT(SB)											
  context.go:1005		0xe846b0		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe846b5		488d0d74abfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe846bc		4889c7			MOVQ AX, DI												
  context.go:1005		0xe846bf		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe846c7		e894b0f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:62	0xe846cc		4881c448010000		ADDQ $.file+251(SB), SP											
  task_chain_controller.go:62	0xe846d3		5d			POPQ BP													
  task_chain_controller.go:62	0xe846d4		c3			RET													
  task_chain_controller.go:64	0xe846d5		488b4128		MOVQ 0x28(CX), AX											
  task_chain_controller.go:64	0xe846d9		488b5930		MOVQ 0x30(CX), BX											
  task_chain_controller.go:64	0xe846dd		0f1f00			NOPL 0(AX)												
  task_chain_controller.go:64	0xe846e0		e8dbe265ff		CALL strings.TrimSpace(SB)										
  task_chain_controller.go:64	0xe846e5		4885db			TESTQ BX, BX												
  task_chain_controller.go:64	0xe846e8		0f8500010000		JNE 0xe847ee												
  task_chain_controller.go:65	0xe846ee		e8ed685eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:65	0xe846f3		4889842438010000	MOVQ AX, 0x138(SP)											
  task_chain_controller.go:65	0xe846fb		4889c3			MOVQ AX, BX												
  task_chain_controller.go:65	0xe846fe		488d0d874f2e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:65	0xe84705		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:65	0xe8470a		488d056f012200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:65	0xe84711		e80a995eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:65	0xe84716		488d0d43e41b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:65	0xe8471d		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:65	0xe84720		833d29946d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:65	0xe84727		740c			JE 0xe84735												
  task_chain_controller.go:65	0xe84729		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:65	0xe8472d		e8ee3c5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:65	0xe84732		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:65	0xe84735		488d158403fe01		LEAQ runtime.gcbits.*(SB), DX										
  task_chain_controller.go:65	0xe8473c		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:65	0xe84740		488d0539012200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:65	0xe84747		488b9c2438010000	MOVQ 0x138(SP), BX											
  task_chain_controller.go:65	0xe8474f		488d0dfe422e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:65	0xe84756		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:65	0xe8475b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_chain_controller.go:65	0xe84760		e8bb985eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:65	0xe84765		488d15b4e11b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:65	0xe8476c		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:65	0xe8476f		833dda936d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:65	0xe84776		7410			JE 0xe84788												
  task_chain_controller.go:65	0xe84778		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:65	0xe8477c		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:65	0xe84780		e89b3c5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:65	0xe84785		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:65	0xe84788		488d0d0144fe01		LEAQ CAS-Backend/biz/controller..stmp_177(SB), CX							
  task_chain_controller.go:65	0xe8478f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe84793		488d0de6002200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8479a		48898c2420010000	MOVQ CX, 0x120(SP)											
  context.go:1005		0xe847a2		488b8c2438010000	MOVQ 0x138(SP), CX											
  context.go:1005		0xe847aa		48898c2428010000	MOVQ CX, 0x128(SP)											
  context.go:1005		0xe847b2		488d0527772400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe847b9		488d9c2420010000	LEAQ 0x120(SP), BX											
  context.go:1005		0xe847c1		e8daa858ff		CALL runtime.convT(SB)											
  context.go:1005		0xe847c6		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe847cb		488d0d5eaafe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe847d2		4889c7			MOVQ AX, DI												
  context.go:1005		0xe847d5		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe847dd		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe847e0		e87baff7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:66	0xe847e5		4881c448010000		ADDQ $.file+251(SB), SP											
  task_chain_controller.go:66	0xe847ec		5d			POPQ BP													
  task_chain_controller.go:66	0xe847ed		c3			RET													
  task_chain_controller.go:68	0xe847ee		488b8c2440010000	MOVQ 0x140(SP), CX											
  task_chain_controller.go:68	0xe847f6		488b4128		MOVQ 0x28(CX), AX											
  task_chain_controller.go:68	0xe847fa		488b5930		MOVQ 0x30(CX), BX											
  task_chain_controller.go:68	0xe847fe		6690			NOPW													
  task_chain_controller.go:68	0xe84800		e81bd7f9ff		CALL CAS-Backend/pkg/agvcontrol.ParseForkliftTaskChainJSON(SB)						
  task_chain_controller.go:68	0xe84805		4885ff			TESTQ DI, DI												
  task_chain_controller.go:68	0xe84808		0f8440010000		JE 0xe8494e												
  task_chain_controller.go:68	0xe8480e		4889bc2488000000	MOVQ DI, 0x88(SP)											
  task_chain_controller.go:68	0xe84816		4889b42498000000	MOVQ SI, 0x98(SP)											
  task_chain_controller.go:69	0xe8481e		6690			NOPW													
  task_chain_controller.go:69	0xe84820		e8bb675eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:69	0xe84825		4889842438010000	MOVQ AX, 0x138(SP)											
  task_chain_controller.go:69	0xe8482d		4889c3			MOVQ AX, BX												
  task_chain_controller.go:69	0xe84830		488d0d554e2e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:69	0xe84837		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:69	0xe8483c		488d053d002200		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:69	0xe84843		e8d8975eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:69	0xe84848		488d0d11e31b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:69	0xe8484f		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:69	0xe84852		833df7926d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:69	0xe84859		740d			JE 0xe84868												
  task_chain_controller.go:69	0xe8485b		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:69	0xe8485f		90			NOPL													
  task_chain_controller.go:69	0xe84860		e8bb3b5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:69	0xe84865		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:69	0xe84868		488d0d5102fe01		LEAQ runtime.gcbits.*(SB), CX										
  task_chain_controller.go:69	0xe8486f		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:69	0xe84873		488b8c2488000000	MOVQ 0x88(SP), CX											
  task_chain_controller.go:69	0xe8487b		488b4918		MOVQ 0x18(CX), CX											
  task_chain_controller.go:69	0xe8487f		488b842498000000	MOVQ 0x98(SP), AX											
  task_chain_controller.go:69	0xe84887		ffd1			CALL CX													
  task_chain_controller.go:69	0xe84889		e892585eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:69	0xe8488e		4889842430010000	MOVQ AX, 0x130(SP)											
  task_chain_controller.go:69	0xe84896		488b9c2438010000	MOVQ 0x138(SP), BX											
  task_chain_controller.go:69	0xe8489e		488d0daf412e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:69	0xe848a5		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:69	0xe848aa		488d05cfff2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:69	0xe848b1		e86a975eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:69	0xe848b6		488d0d63e01b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:69	0xe848bd		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:69	0xe848c0		833d89926d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:69	0xe848c7		750a			JNE 0xe848d3												
  task_chain_controller.go:69	0xe848c9		488b8c2430010000	MOVQ 0x130(SP), CX											
  task_chain_controller.go:69	0xe848d1		eb18			JMP 0xe848eb												
  task_chain_controller.go:69	0xe848d3		e8683b5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:69	0xe848d8		488b8c2430010000	MOVQ 0x130(SP), CX											
  task_chain_controller.go:69	0xe848e0		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:69	0xe848e3		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:69	0xe848e7		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:69	0xe848eb		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe848ef		488d0d8aff2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe848f6		48898c2420010000	MOVQ CX, 0x120(SP)											
  context.go:1005		0xe848fe		488b8c2438010000	MOVQ 0x138(SP), CX											
  context.go:1005		0xe84906		48898c2428010000	MOVQ CX, 0x128(SP)											
  context.go:1005		0xe8490e		488d05cb752400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe84915		488d9c2420010000	LEAQ 0x120(SP), BX											
  context.go:1005		0xe8491d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe84920		e87ba758ff		CALL runtime.convT(SB)											
  context.go:1005		0xe84925		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8492a		488d0dffa8fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe84931		4889c7			MOVQ AX, DI												
  context.go:1005		0xe84934		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe8493c		0f1f4000		NOPL 0(AX)												
  context.go:1005		0xe84940		e81baef7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:70	0xe84945		4881c448010000		ADDQ $.file+251(SB), SP											
  task_chain_controller.go:70	0xe8494c		5d			POPQ BP													
  task_chain_controller.go:70	0xe8494d		c3			RET													
  task_chain_controller.go:72	0xe8494e		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)											
  task_chain_controller.go:72	0xe84957		488dbc24b0000000	LEAQ 0xb0(SP), DI											
  task_chain_controller.go:72	0xe8495f		488d7ff0		LEAQ -0x10(DI), DI											
  task_chain_controller.go:72	0xe84963		48896c24f0		MOVQ BP, -0x10(SP)											
  task_chain_controller.go:72	0xe84968		488d6c24f0		LEAQ -0x10(SP), BP											
  task_chain_controller.go:72	0xe8496d		e874415fff		CALL 0x478ae6												
  task_chain_controller.go:72	0xe84972		488b6d00		MOVQ 0(BP), BP												
  task_chain_controller.go:72	0xe84976		488b8c2440010000	MOVQ 0x140(SP), CX											
  task_chain_controller.go:72	0xe8497e		488b01			MOVQ 0(CX), AX												
  task_chain_controller.go:72	0xe84981		e89a26b1ff		CALL CAS-Backend/biz/dao.Select1TaskChain(SB)								
  task_chain_controller.go:72	0xe84986		488b0c24		MOVQ 0(SP), CX												
  task_chain_controller.go:72	0xe8498a		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  task_chain_controller.go:72	0xe84992		488dbc24b0000000	LEAQ 0xb0(SP), DI											
  task_chain_controller.go:72	0xe8499a		488d742408		LEAQ 0x8(SP), SI											
  task_chain_controller.go:72	0xe8499f		90			NOPL													
  task_chain_controller.go:72	0xe849a0		48896c24f0		MOVQ BP, -0x10(SP)											
  task_chain_controller.go:72	0xe849a5		488d6c24f0		LEAQ -0x10(SP), BP											
  task_chain_controller.go:72	0xe849aa		e88f445fff		CALL 0x478e3e												
  task_chain_controller.go:72	0xe849af		488b6d00		MOVQ 0(BP), BP												
  task_chain_controller.go:72	0xe849b3		84c0			TESTL AL, AL												
  task_chain_controller.go:73	0xe849b5		0f84ba020000		JE 0xe84c75												
  task_chain_controller.go:77	0xe849bb		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)											
  task_chain_controller.go:77	0xe849c4		488dbc24b0000000	LEAQ 0xb0(SP), DI											
  task_chain_controller.go:77	0xe849cc		488d7ff0		LEAQ -0x10(DI), DI											
  task_chain_controller.go:77	0xe849d0		660f1f840000000000	NOPW 0(AX)(AX*1)											
  task_chain_controller.go:77	0xe849d9		0f1f8000000000		NOPL 0(AX)												
  task_chain_controller.go:77	0xe849e0		48896c24f0		MOVQ BP, -0x10(SP)											
  task_chain_controller.go:77	0xe849e5		488d6c24f0		LEAQ -0x10(SP), BP											
  task_chain_controller.go:77	0xe849ea		e8f7405fff		CALL 0x478ae6												
  task_chain_controller.go:77	0xe849ef		488b6d00		MOVQ 0(BP), BP												
  task_chain_controller.go:78	0xe849f3		488b842440010000	MOVQ 0x140(SP), AX											
  task_chain_controller.go:78	0xe849fb		488b08			MOVQ 0(AX), CX												
  task_chain_controller.go:78	0xe849fe		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  task_chain_controller.go:79	0xe84a06		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:79	0xe84a0a		488b5010		MOVQ 0x10(AX), DX											
  task_chain_controller.go:79	0xe84a0e		48898c24b0000000	MOVQ CX, 0xb0(SP)											
  task_chain_controller.go:79	0xe84a16		48899424b8000000	MOVQ DX, 0xb8(SP)											
  task_chain_controller.go:80	0xe84a1e		488b4818		MOVQ 0x18(AX), CX											
  task_chain_controller.go:80	0xe84a22		488b5020		MOVQ 0x20(AX), DX											
  task_chain_controller.go:80	0xe84a26		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  task_chain_controller.go:80	0xe84a2e		48899424c8000000	MOVQ DX, 0xc8(SP)											
  task_chain_controller.go:81	0xe84a36		488b4828		MOVQ 0x28(AX), CX											
  task_chain_controller.go:81	0xe84a3a		488b4030		MOVQ 0x30(AX), AX											
  task_chain_controller.go:81	0xe84a3e		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  task_chain_controller.go:81	0xe84a46		48898424d8000000	MOVQ AX, 0xd8(SP)											
  task_chain_controller.go:77	0xe84a4e		488b8424a8000000	MOVQ 0xa8(SP), AX											
  task_chain_controller.go:77	0xe84a56		48890424		MOVQ AX, 0(SP)												
  task_chain_controller.go:77	0xe84a5a		488d7c2408		LEAQ 0x8(SP), DI											
  task_chain_controller.go:77	0xe84a5f		488db424b0000000	LEAQ 0xb0(SP), SI											
  task_chain_controller.go:77	0xe84a67		48896c24f0		MOVQ BP, -0x10(SP)											
  task_chain_controller.go:77	0xe84a6c		488d6c24f0		LEAQ -0x10(SP), BP											
  task_chain_controller.go:77	0xe84a71		e8c8435fff		CALL 0x478e3e												
  task_chain_controller.go:77	0xe84a76		488b6d00		MOVQ 0(BP), BP												
  task_chain_controller.go:77	0xe84a7a		e86121b1ff		CALL CAS-Backend/biz/dao.UpdateTaskChain(SB)								
  task_chain_controller.go:77	0xe84a7f		90			NOPL													
  task_chain_controller.go:77	0xe84a80		84c0			TESTL AL, AL												
  task_chain_controller.go:77	0xe84a82		0f84f4000000		JE 0xe84b7c												
  task_chain_controller.go:86	0xe84a88		e853655eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:86	0xe84a8d		4889842438010000	MOVQ AX, 0x138(SP)											
  task_chain_controller.go:86	0xe84a95		4889c3			MOVQ AX, BX												
  task_chain_controller.go:86	0xe84a98		488d0ded4b2e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:86	0xe84a9f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:86	0xe84aa4		488d05d5fd2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:86	0xe84aab		e870955eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:86	0xe84ab0		488d0da9e01b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:86	0xe84ab7		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:86	0xe84aba		833d8f906d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:86	0xe84ac1		740c			JE 0xe84acf												
  task_chain_controller.go:86	0xe84ac3		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:86	0xe84ac7		e854395fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:86	0xe84acc		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:86	0xe84acf		488d155a2dfe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_chain_controller.go:86	0xe84ad6		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:86	0xe84ada		488d059ffd2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:86	0xe84ae1		488b9c2438010000	MOVQ 0x138(SP), BX											
  task_chain_controller.go:86	0xe84ae9		488d0d643f2e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:86	0xe84af0		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:86	0xe84af5		e826955eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:86	0xe84afa		488d151fde1b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:86	0xe84b01		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:86	0xe84b04		833d45906d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:86	0xe84b0b		740c			JE 0xe84b19												
  task_chain_controller.go:86	0xe84b0d		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:86	0xe84b11		e80a395fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:86	0xe84b16		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:86	0xe84b19		488d0dd040fe01		LEAQ CAS-Backend/biz/controller..stmp_194(SB), CX							
  task_chain_controller.go:86	0xe84b20		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe84b24		488d0d55fd2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe84b2b		48898c2420010000	MOVQ CX, 0x120(SP)											
  context.go:1005		0xe84b33		488b8c2438010000	MOVQ 0x138(SP), CX											
  context.go:1005		0xe84b3b		48898c2428010000	MOVQ CX, 0x128(SP)											
  context.go:1005		0xe84b43		488d0596732400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe84b4a		488d9c2420010000	LEAQ 0x120(SP), BX											
  context.go:1005		0xe84b52		e849a558ff		CALL runtime.convT(SB)											
  context.go:1005		0xe84b57		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe84b5c		488d0dcda6fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe84b63		4889c7			MOVQ AX, DI												
  context.go:1005		0xe84b66		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe84b6e		e8edabf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:87	0xe84b73		4881c448010000		ADDQ $.file+251(SB), SP											
  task_chain_controller.go:87	0xe84b7a		5d			POPQ BP													
  task_chain_controller.go:87	0xe84b7b		c3			RET													
  task_chain_controller.go:83	0xe84b7c		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:83	0xe84b80		e85b645eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:83	0xe84b85		4889842438010000	MOVQ AX, 0x138(SP)											
  task_chain_controller.go:83	0xe84b8d		4889c3			MOVQ AX, BX												
  task_chain_controller.go:83	0xe84b90		488d0df54a2e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:83	0xe84b97		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:83	0xe84b9c		488d05ddfc2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:83	0xe84ba3		e878945eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:83	0xe84ba8		488d0db1df1b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:83	0xe84baf		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:83	0xe84bb2		833d978f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:83	0xe84bb9		740d			JE 0xe84bc8												
  task_chain_controller.go:83	0xe84bbb		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:83	0xe84bbf		90			NOPL													
  task_chain_controller.go:83	0xe84bc0		e85b385fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:83	0xe84bc5		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:83	0xe84bc8		488d15f1fefd01		LEAQ runtime.gcbits.*(SB), DX										
  task_chain_controller.go:83	0xe84bcf		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:83	0xe84bd3		488d05a6fc2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:83	0xe84bda		488b9c2438010000	MOVQ 0x138(SP), BX											
  task_chain_controller.go:83	0xe84be2		488d0d6b3e2e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:83	0xe84be9		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:83	0xe84bee		e82d945eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:83	0xe84bf3		488d1526dd1b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:83	0xe84bfa		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:83	0xe84bfd		833d4c8f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:83	0xe84c04		740c			JE 0xe84c12												
  task_chain_controller.go:83	0xe84c06		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:83	0xe84c0a		e811385fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:83	0xe84c0f		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:83	0xe84c12		488d0dc73ffe01		LEAQ CAS-Backend/biz/controller..stmp_192(SB), CX							
  task_chain_controller.go:83	0xe84c19		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe84c1d		488d0d5cfc2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe84c24		48898c2420010000	MOVQ CX, 0x120(SP)											
  context.go:1005		0xe84c2c		488b8c2438010000	MOVQ 0x138(SP), CX											
  context.go:1005		0xe84c34		48898c2428010000	MOVQ CX, 0x128(SP)											
  context.go:1005		0xe84c3c		488d059d722400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe84c43		488d9c2420010000	LEAQ 0x120(SP), BX											
  context.go:1005		0xe84c4b		e850a458ff		CALL runtime.convT(SB)											
  context.go:1005		0xe84c50		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe84c55		488d0dd4a5fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe84c5c		4889c7			MOVQ AX, DI												
  context.go:1005		0xe84c5f		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe84c67		e8f4aaf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:84	0xe84c6c		4881c448010000		ADDQ $.file+251(SB), SP											
  task_chain_controller.go:84	0xe84c73		5d			POPQ BP													
  task_chain_controller.go:84	0xe84c74		c3			RET													
  task_chain_controller.go:74	0xe84c75		e866635eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:74	0xe84c7a		4889842438010000	MOVQ AX, 0x138(SP)											
  task_chain_controller.go:74	0xe84c82		4889c3			MOVQ AX, BX												
  task_chain_controller.go:74	0xe84c85		488d0d004a2e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:74	0xe84c8c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:74	0xe84c91		488d05e8fb2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:74	0xe84c98		e883935eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:74	0xe84c9d		488d0dbcde1b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:74	0xe84ca4		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:74	0xe84ca7		833da28e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:74	0xe84cae		740c			JE 0xe84cbc												
  task_chain_controller.go:74	0xe84cb0		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:74	0xe84cb4		e867375fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:74	0xe84cb9		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:74	0xe84cbc		488d15fdfdfd01		LEAQ runtime.gcbits.*(SB), DX										
  task_chain_controller.go:74	0xe84cc3		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:74	0xe84cc7		488d05b2fb2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:74	0xe84cce		488b9c2438010000	MOVQ 0x138(SP), BX											
  task_chain_controller.go:74	0xe84cd6		488d0d773d2e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:74	0xe84cdd		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:74	0xe84ce2		e839935eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:74	0xe84ce7		488d1532dc1b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:74	0xe84cee		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:74	0xe84cf1		833d588e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:74	0xe84cf8		740e			JE 0xe84d08												
  task_chain_controller.go:74	0xe84cfa		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:74	0xe84cfe		6690			NOPW													
  task_chain_controller.go:74	0xe84d00		e81b375fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:74	0xe84d05		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:74	0xe84d08		488d0dc13efe01		LEAQ CAS-Backend/biz/controller..stmp_190(SB), CX							
  task_chain_controller.go:74	0xe84d0f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe84d13		488d0d66fb2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe84d1a		48898c2420010000	MOVQ CX, 0x120(SP)											
  context.go:1005		0xe84d22		488b8c2438010000	MOVQ 0x138(SP), CX											
  context.go:1005		0xe84d2a		48898c2428010000	MOVQ CX, 0x128(SP)											
  context.go:1005		0xe84d32		488d05a7712400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe84d39		488d9c2420010000	LEAQ 0x120(SP), BX											
  context.go:1005		0xe84d41		e85aa358ff		CALL runtime.convT(SB)											
  context.go:1005		0xe84d46		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe84d4b		488d0ddea4fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe84d52		4889c7			MOVQ AX, DI												
  context.go:1005		0xe84d55		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe84d5d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe84d60		e8fba9f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:75	0xe84d65		4881c448010000		ADDQ $.file+251(SB), SP											
  task_chain_controller.go:75	0xe84d6c		5d			POPQ BP													
  task_chain_controller.go:75	0xe84d6d		c3			RET													
  context.go:752		0xe84d6e		4889842480000000	MOVQ AX, 0x80(SP)											
  context.go:752		0xe84d76		48899c2490000000	MOVQ BX, 0x90(SP)											
  task_chain_controller.go:57	0xe84d7e		6690			NOPW													
  task_chain_controller.go:57	0xe84d80		e85b625eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:57	0xe84d85		4889842438010000	MOVQ AX, 0x138(SP)											
  task_chain_controller.go:57	0xe84d8d		4889c3			MOVQ AX, BX												
  task_chain_controller.go:57	0xe84d90		488d0df5482e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:57	0xe84d97		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:57	0xe84d9c		488d05ddfa2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:57	0xe84da3		e878925eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:57	0xe84da8		488d0db1dd1b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:57	0xe84daf		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:57	0xe84db2		833d978d6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:57	0xe84db9		740d			JE 0xe84dc8												
  task_chain_controller.go:57	0xe84dbb		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:57	0xe84dbf		90			NOPL													
  task_chain_controller.go:57	0xe84dc0		e85b365fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:57	0xe84dc5		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:57	0xe84dc8		488d0df1fcfd01		LEAQ runtime.gcbits.*(SB), CX										
  task_chain_controller.go:57	0xe84dcf		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:57	0xe84dd3		488b8c2480000000	MOVQ 0x80(SP), CX											
  task_chain_controller.go:57	0xe84ddb		488b4918		MOVQ 0x18(CX), CX											
  task_chain_controller.go:57	0xe84ddf		488b842490000000	MOVQ 0x90(SP), AX											
  task_chain_controller.go:57	0xe84de7		ffd1			CALL CX													
  task_chain_controller.go:57	0xe84de9		b914000000		MOVL $__major_os_version__+14(SB), CX									
  task_chain_controller.go:57	0xe84dee		4889c7			MOVQ AX, DI												
  task_chain_controller.go:57	0xe84df1		4889de			MOVQ BX, SI												
  task_chain_controller.go:57	0xe84df4		31c0			XORL AX, AX												
  task_chain_controller.go:57	0xe84df6		488d1d41b62f00		LEAQ go:string.*+98102(SB), BX										
  task_chain_controller.go:57	0xe84dfd		0f1f00			NOPL 0(AX)												
  task_chain_controller.go:57	0xe84e00		e8fb055dff		CALL runtime.concatstring2(SB)										
  task_chain_controller.go:57	0xe84e05		e816535eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:57	0xe84e0a		4889842430010000	MOVQ AX, 0x130(SP)											
  task_chain_controller.go:57	0xe84e12		488b9c2438010000	MOVQ 0x138(SP), BX											
  task_chain_controller.go:57	0xe84e1a		488d0d333c2e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:57	0xe84e21		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:57	0xe84e26		488d0553fa2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:57	0xe84e2d		e8ee915eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:57	0xe84e32		488d0de7da1b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:57	0xe84e39		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:57	0xe84e3c		833d0d8d6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:57	0xe84e43		750a			JNE 0xe84e4f												
  task_chain_controller.go:57	0xe84e45		488b8c2430010000	MOVQ 0x130(SP), CX											
  task_chain_controller.go:57	0xe84e4d		eb18			JMP 0xe84e67												
  task_chain_controller.go:57	0xe84e4f		e8ec355fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:57	0xe84e54		488b8c2430010000	MOVQ 0x130(SP), CX											
  task_chain_controller.go:57	0xe84e5c		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:57	0xe84e5f		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:57	0xe84e63		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:57	0xe84e67		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe84e6b		488d0d0efa2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe84e72		48898c2420010000	MOVQ CX, 0x120(SP)											
  context.go:1005		0xe84e7a		488b8c2438010000	MOVQ 0x138(SP), CX											
  context.go:1005		0xe84e82		48898c2428010000	MOVQ CX, 0x128(SP)											
  context.go:1005		0xe84e8a		488d054f702400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe84e91		488d9c2420010000	LEAQ 0x120(SP), BX											
  context.go:1005		0xe84e99		e802a258ff		CALL runtime.convT(SB)											
  context.go:1005		0xe84e9e		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005		0xe84ea3		488d0d86a3fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe84eaa		4889c7			MOVQ AX, DI												
  context.go:1005		0xe84ead		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005		0xe84eb5		e8a6a8f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:58	0xe84eba		4881c448010000		ADDQ $.file+251(SB), SP											
  task_chain_controller.go:58	0xe84ec1		5d			POPQ BP													
  task_chain_controller.go:58	0xe84ec2		c3			RET													
  context.go:712		0xe84ec3		4d89ca			MOVQ R9, R10												
  context.go:712		0xe84ec6		4d21c1			ANDQ R8, R9												
  context.go:712		0xe84ec9		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe84ecd		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe84ed2		4939db			CMPQ R11, BX												
  context.go:712		0xe84ed5		743a			JE 0xe84f11												
  context.go:712		0xe84ed7		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe84edb		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712		0xe84ee0		4d85db			TESTQ R11, R11												
  context.go:712		0xe84ee3		75de			JNE 0xe84ec3												
  context.go:712		0xe84ee5		48899424a0000000	MOVQ DX, 0xa0(SP)											
  context.go:712		0xe84eed		488d057c641300		LEAQ CAS-Backend/biz/controller..typeAssert.30(SB), AX							
  context.go:712		0xe84ef4		e8e7a358ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe84ef9		488b9424a0000000	MOVQ 0xa0(SP), DX											
  context.go:712		0xe84f01		4889c1			MOVQ AX, CX												
  context.go:752		0xe84f04		488b842440010000	MOVQ 0x140(SP), AX											
  context.go:712		0xe84f0c		e994f6ffff		JMP 0xe845a5												
  context.go:712		0xe84f11		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe84f16		e98af6ffff		JMP 0xe845a5												
  task_chain_controller.go:54	0xe84f1b		4889442408		MOVQ AX, 0x8(SP)											
  task_chain_controller.go:54	0xe84f20		e8bb155fff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_chain_controller.go:54	0xe84f25		488b442408		MOVQ 0x8(SP), AX											
  task_chain_controller.go:54	0xe84f2a		e911f6ffff		JMP CAS-Backend/biz/controller.UpdateTaskChainHandler(SB)						
  :-1				0xe84f2f		cc			INT $__subsystem__(SB)											
  :-1				0xe84f30		cc			INT $__subsystem__(SB)											
  :-1				0xe84f31		cc			INT $__subsystem__(SB)											
  :-1				0xe84f32		cc			INT $__subsystem__(SB)											
  :-1				0xe84f33		cc			INT $__subsystem__(SB)											
  :-1				0xe84f34		cc			INT $__subsystem__(SB)											
  :-1				0xe84f35		cc			INT $__subsystem__(SB)											
  :-1				0xe84f36		cc			INT $__subsystem__(SB)											
  :-1				0xe84f37		cc			INT $__subsystem__(SB)											
  :-1				0xe84f38		cc			INT $__subsystem__(SB)											
  :-1				0xe84f39		cc			INT $__subsystem__(SB)											
  :-1				0xe84f3a		cc			INT $__subsystem__(SB)											
  :-1				0xe84f3b		cc			INT $__subsystem__(SB)											
  :-1				0xe84f3c		cc			INT $__subsystem__(SB)											
  :-1				0xe84f3d		cc			INT $__subsystem__(SB)											
  :-1				0xe84f3e		cc			INT $__subsystem__(SB)											
  :-1				0xe84f3f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.DeleteTaskChainHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:89	0xe84f40		493b6610		CMPQ SP, 0x10(R14)											
  task_chain_controller.go:89	0xe84f44		0f86e1020000		JBE 0xe8522b												
  task_chain_controller.go:89	0xe84f4a		55			PUSHQ BP												
  task_chain_controller.go:89	0xe84f4b		4889e5			MOVQ SP, BP												
  task_chain_controller.go:89	0xe84f4e		4883ec38		SUBQ $__major_os_version__+50(SB), SP									
  task_chain_controller.go:91	0xe84f52		4889442448		MOVQ AX, 0x48(SP)											
  task_chain_controller.go:90	0xe84f57		488d1d3c362e00		LEAQ go:string.*+146(SB), BX										
  task_chain_controller.go:90	0xe84f5e		b902000000		MOVL $__minor_os_version__+1(SB), CX									
  task_chain_controller.go:90	0xe84f63		e85870f7ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_chain_controller.go:90	0xe84f68		e8336366ff		CALL strconv.Atoi(SB)											
  task_chain_controller.go:91	0xe84f6d		4885db			TESTQ BX, BX												
  task_chain_controller.go:91	0xe84f70		750e			JNE 0xe84f80												
  task_chain_controller.go:91	0xe84f72		4885c0			TESTQ AX, AX												
  task_chain_controller.go:91	0xe84f75		0f8fe9000000		JG 0xe85064												
  task_chain_controller.go:91	0xe84f7b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_chain_controller.go:92	0xe84f80		e85b605eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:92	0xe84f85		4889442420		MOVQ AX, 0x20(SP)											
  task_chain_controller.go:92	0xe84f8a		4889c3			MOVQ AX, BX												
  task_chain_controller.go:92	0xe84f8d		488d0df8462e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:92	0xe84f94		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:92	0xe84f99		488d05e0f82100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:92	0xe84fa0		e87b905eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:92	0xe84fa5		488d0db4db1b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:92	0xe84fac		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:92	0xe84faf		833d9a8b6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:92	0xe84fb6		7410			JE 0xe84fc8												
  task_chain_controller.go:92	0xe84fb8		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:92	0xe84fbc		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:92	0xe84fc0		e85b345fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:92	0xe84fc5		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:92	0xe84fc8		488d15f1fafd01		LEAQ runtime.gcbits.*(SB), DX										
  task_chain_controller.go:92	0xe84fcf		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:92	0xe84fd3		488d05a6f82100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:92	0xe84fda		488b5c2420		MOVQ 0x20(SP), BX											
  task_chain_controller.go:92	0xe84fdf		488d0d6e3a2e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:92	0xe84fe6		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:92	0xe84feb		e830905eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:92	0xe84ff0		488d1529d91b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:92	0xe84ff7		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:92	0xe84ffa		833d4f8b6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:92	0xe85001		740c			JE 0xe8500f												
  task_chain_controller.go:92	0xe85003		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:92	0xe85007		e814345fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:92	0xe8500c		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:92	0xe8500f		488d0daa3bfe01		LEAQ CAS-Backend/biz/controller..stmp_185(SB), CX							
  task_chain_controller.go:92	0xe85016		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8501a		488d0d5ff82100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe85021		48894c2428		MOVQ CX, 0x28(SP)											
  context.go:1005		0xe85026		488b4c2420		MOVQ 0x20(SP), CX											
  context.go:1005		0xe8502b		48894c2430		MOVQ CX, 0x30(SP)											
  context.go:1005		0xe85030		488d05a96e2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe85037		488d5c2428		LEAQ 0x28(SP), BX											
  context.go:1005		0xe8503c		0f1f4000		NOPL 0(AX)												
  context.go:1005		0xe85040		e85ba058ff		CALL runtime.convT(SB)											
  context.go:1005		0xe85045		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005		0xe8504a		488d0ddfa1fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe85051		4889c7			MOVQ AX, DI												
  context.go:1005		0xe85054		488b442448		MOVQ 0x48(SP), AX											
  context.go:1005		0xe85059		e802a7f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:93	0xe8505e		4883c438		ADDQ $__major_os_version__+50(SB), SP									
  task_chain_controller.go:93	0xe85062		5d			POPQ BP													
  task_chain_controller.go:93	0xe85063		c3			RET													
  task_chain_controller.go:95	0xe85064		e8171ab1ff		CALL CAS-Backend/biz/dao.DeleteTaskChain(SB)								
  task_chain_controller.go:95	0xe85069		84c0			TESTL AL, AL												
  task_chain_controller.go:95	0xe8506b		0f84dc000000		JE 0xe8514d												
  task_chain_controller.go:99	0xe85071		e86a5f5eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:99	0xe85076		4889442420		MOVQ AX, 0x20(SP)											
  task_chain_controller.go:99	0xe8507b		4889c3			MOVQ AX, BX												
  task_chain_controller.go:99	0xe8507e		488d0d07462e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:99	0xe85085		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:99	0xe8508a		488d05eff72100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:99	0xe85091		e88a8f5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:99	0xe85096		488d0dc3da1b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:99	0xe8509d		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:99	0xe850a0		833da98a6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:99	0xe850a7		740c			JE 0xe850b5												
  task_chain_controller.go:99	0xe850a9		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:99	0xe850ad		e86e335fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:99	0xe850b2		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:99	0xe850b5		488d157427fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  task_chain_controller.go:99	0xe850bc		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:99	0xe850c0		488d05b9f72100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:99	0xe850c7		488b5c2420		MOVQ 0x20(SP), BX											
  task_chain_controller.go:99	0xe850cc		488d0d81392e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:99	0xe850d3		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:99	0xe850d8		e8438f5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:99	0xe850dd		488d153cd81b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:99	0xe850e4		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:99	0xe850e7		833d628a6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:99	0xe850ee		740c			JE 0xe850fc												
  task_chain_controller.go:99	0xe850f0		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:99	0xe850f4		e827335fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:99	0xe850f9		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:99	0xe850fc		488d0d0d3bfe01		LEAQ CAS-Backend/biz/controller..stmp_200(SB), CX							
  task_chain_controller.go:99	0xe85103		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe85107		488d0d72f72100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8510e		48894c2428		MOVQ CX, 0x28(SP)											
  context.go:1005		0xe85113		488b4c2420		MOVQ 0x20(SP), CX											
  context.go:1005		0xe85118		48894c2430		MOVQ CX, 0x30(SP)											
  context.go:1005		0xe8511d		488d05bc6d2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe85124		488d5c2428		LEAQ 0x28(SP), BX											
  context.go:1005		0xe85129		e8729f58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8512e		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe85133		488d0df6a0fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8513a		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8513d		488b442448		MOVQ 0x48(SP), AX											
  context.go:1005		0xe85142		e819a6f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:100	0xe85147		4883c438		ADDQ $__major_os_version__+50(SB), SP									
  task_chain_controller.go:100	0xe8514b		5d			POPQ BP													
  task_chain_controller.go:100	0xe8514c		c3			RET													
  task_chain_controller.go:96	0xe8514d		e88e5e5eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:96	0xe85152		4889442420		MOVQ AX, 0x20(SP)											
  task_chain_controller.go:96	0xe85157		4889c3			MOVQ AX, BX												
  task_chain_controller.go:96	0xe8515a		488d0d2b452e00		LEAQ go:string.*+4484(SB), CX										
  task_chain_controller.go:96	0xe85161		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:96	0xe85166		488d0513f72100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:96	0xe8516d		e8ae8e5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:96	0xe85172		488d0de7d91b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:96	0xe85179		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:96	0xe8517c		833dcd896d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:96	0xe85183		740c			JE 0xe85191												
  task_chain_controller.go:96	0xe85185		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:96	0xe85189		e892325fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:96	0xe8518e		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:96	0xe85191		488d1528f9fd01		LEAQ runtime.gcbits.*(SB), DX										
  task_chain_controller.go:96	0xe85198		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:96	0xe8519c		488d05ddf62100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:96	0xe851a3		488b5c2420		MOVQ 0x20(SP), BX											
  task_chain_controller.go:96	0xe851a8		488d0da5382e00		LEAQ go:string.*+1356(SB), CX										
  task_chain_controller.go:96	0xe851af		bf03000000		MOVL $__subsystem__(SB), DI										
  task_chain_controller.go:96	0xe851b4		e8678e5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:96	0xe851b9		488d1560d71b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:96	0xe851c0		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:96	0xe851c3		833d86896d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:96	0xe851ca		740c			JE 0xe851d8												
  task_chain_controller.go:96	0xe851cc		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:96	0xe851d0		e84b325fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:96	0xe851d5		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:96	0xe851d8		488d0d213afe01		LEAQ CAS-Backend/biz/controller..stmp_198(SB), CX							
  task_chain_controller.go:96	0xe851df		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe851e3		488d0d96f62100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe851ea		48894c2428		MOVQ CX, 0x28(SP)											
  context.go:1005		0xe851ef		488b4c2420		MOVQ 0x20(SP), CX											
  context.go:1005		0xe851f4		48894c2430		MOVQ CX, 0x30(SP)											
  context.go:1005		0xe851f9		488d05e06c2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe85200		488d5c2428		LEAQ 0x28(SP), BX											
  context.go:1005		0xe85205		e8969e58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8520a		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8520f		488d0d1aa0fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe85216		4889c7			MOVQ AX, DI												
  context.go:1005		0xe85219		488b442448		MOVQ 0x48(SP), AX											
  context.go:1005		0xe8521e		6690			NOPW													
  context.go:1005		0xe85220		e83ba5f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:97	0xe85225		4883c438		ADDQ $__major_os_version__+50(SB), SP									
  task_chain_controller.go:97	0xe85229		5d			POPQ BP													
  task_chain_controller.go:97	0xe8522a		c3			RET													
  task_chain_controller.go:89	0xe8522b		4889442408		MOVQ AX, 0x8(SP)											
  task_chain_controller.go:89	0xe85230		e8ab125fff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_chain_controller.go:89	0xe85235		488b442408		MOVQ 0x8(SP), AX											
  task_chain_controller.go:89	0xe8523a		e901fdffff		JMP CAS-Backend/biz/controller.DeleteTaskChainHandler(SB)						
  :-1				0xe8523f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.GetAllTaskChainHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:102	0xe85240		4c8da424f8feffff	LEAQ 0xfffffef8(SP), R12										
  task_chain_controller.go:102	0xe85248		4d3b6610		CMPQ R12, 0x10(R14)											
  task_chain_controller.go:102	0xe8524c		0f868f060000		JBE 0xe858e1												
  task_chain_controller.go:102	0xe85252		55			PUSHQ BP												
  task_chain_controller.go:102	0xe85253		4889e5			MOVQ SP, BP												
  task_chain_controller.go:102	0xe85256		4881ec80010000		SUBQ $.file+307(SB), SP											
  task_chain_controller.go:107	0xe8525d		4889842490010000	MOVQ AX, 0x190(SP)											
  task_chain_controller.go:103	0xe85265		488d1d24442e00		LEAQ go:string.*+4488(SB), BX										
  task_chain_controller.go:103	0xe8526c		b904000000		MOVL $__subsystem__+1(SB), CX										
  task_chain_controller.go:103	0xe85271		488d3d58fffd01		LEAQ runtime.gcbits.*+1808(SB), DI									
  task_chain_controller.go:103	0xe85278		be01000000		MOVL $__minor_os_version__(SB), SI									
  task_chain_controller.go:103	0xe8527d		0f1f00			NOPL 0(AX)												
  task_chain_controller.go:103	0xe85280		e8bb6df7ff		CALL github.com/gin-gonic/gin.(*Context).DefaultQuery(SB)						
  task_chain_controller.go:103	0xe85285		e8166066ff		CALL strconv.Atoi(SB)											
  task_chain_controller.go:103	0xe8528a		4889442450		MOVQ AX, 0x50(SP)											
  task_chain_controller.go:104	0xe8528f		488d1dfe432e00		LEAQ go:string.*+4492(SB), BX										
  task_chain_controller.go:104	0xe85296		b904000000		MOVL $__subsystem__+1(SB), CX										
  task_chain_controller.go:104	0xe8529b		488d3dfc322e00		LEAQ go:string.*+150(SB), DI										
  task_chain_controller.go:104	0xe852a2		be02000000		MOVL $__minor_os_version__+1(SB), SI									
  task_chain_controller.go:104	0xe852a7		488b842490010000	MOVQ 0x190(SP), AX											
  task_chain_controller.go:104	0xe852af		e88c6df7ff		CALL github.com/gin-gonic/gin.(*Context).DefaultQuery(SB)						
  task_chain_controller.go:104	0xe852b4		e8e75f66ff		CALL strconv.Atoi(SB)											
  task_chain_controller.go:104	0xe852b9		4889442448		MOVQ AX, 0x48(SP)											
  task_chain_controller.go:105	0xe852be		488d1dc4a12e00		LEAQ go:string.*+28545(SB), BX										
  task_chain_controller.go:105	0xe852c5		b906000000		MOVL $__major_os_version__(SB), CX									
  task_chain_controller.go:105	0xe852ca		488b842490010000	MOVQ 0x190(SP), AX											
  task_chain_controller.go:105	0xe852d2		e8e96cf7ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_chain_controller.go:106	0xe852d7		4889c1			MOVQ AX, CX												
  task_chain_controller.go:106	0xe852da		4889df			MOVQ BX, DI												
  task_chain_controller.go:106	0xe852dd		488b442450		MOVQ 0x50(SP), AX											
  task_chain_controller.go:106	0xe852e2		488b5c2448		MOVQ 0x48(SP), BX											
  task_chain_controller.go:106	0xe852e7		e8341fb1ff		CALL CAS-Backend/biz/dao.SelectAllTaskChain(SB)								
  task_chain_controller.go:106	0xe852ec		84c0			TESTL AL, AL												
  task_chain_controller.go:107	0xe852ee		743a			JE 0xe8532a												
  task_chain_controller.go:106	0xe852f0		48895c2440		MOVQ BX, 0x40(SP)											
  task_chain_controller.go:106	0xe852f5		48897c2458		MOVQ DI, 0x58(SP)											
  task_chain_controller.go:106	0xe852fa		48898c2488000000	MOVQ CX, 0x88(SP)											
  task_chain_controller.go:111	0xe85302		488d0577f82700		LEAQ runtime.types+1178496(SB), AX									
  task_chain_controller.go:111	0xe85309		31db			XORL BX, BX												
  task_chain_controller.go:111	0xe8530b		4889f9			MOVQ DI, CX												
  task_chain_controller.go:111	0xe8530e		e84dc85eff		CALL runtime.makeslice(SB)										
  task_chain_controller.go:112	0xe85313		488b942488000000	MOVQ 0x88(SP), DX											
  task_chain_controller.go:112	0xe8531b		488b4c2458		MOVQ 0x58(SP), CX											
  task_chain_controller.go:127	0xe85320		4889cb			MOVQ CX, BX												
  task_chain_controller.go:127	0xe85323		31f6			XORL SI, SI												
  task_chain_controller.go:112	0xe85325		e938010000		JMP 0xe85462												
  task_chain_controller.go:108	0xe8532a		e8b15c5eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:108	0xe8532f		4889842428010000	MOVQ AX, 0x128(SP)											
  task_chain_controller.go:108	0xe85337		4889c3			MOVQ AX, BX												
  task_chain_controller.go:108	0xe8533a		488d0dccd92e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:108	0xe85341		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:108	0xe85346		488d0533f52100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:108	0xe8534d		e8ce8c5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:108	0xe85352		488d0dc7d91b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:108	0xe85359		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:108	0xe8535c		833ded876d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:108	0xe85363		740c			JE 0xe85371												
  task_chain_controller.go:108	0xe85365		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:108	0xe85369		e8b2305fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:108	0xe8536e		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:108	0xe85371		488d15a8530f00		LEAQ runtime.staticuint64s(SB), DX									
  task_chain_controller.go:108	0xe85378		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:108	0xe8537c		488d05fdf42100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:108	0xe85383		488b9c2428010000	MOVQ 0x128(SP), BX											
  task_chain_controller.go:108	0xe8538b		488d0d5fd92e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:108	0xe85392		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:108	0xe85397		e8848c5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:108	0xe8539c		488d157dd51b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:108	0xe853a3		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:108	0xe853a6		833da3876d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:108	0xe853ad		740c			JE 0xe853bb												
  task_chain_controller.go:108	0xe853af		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:108	0xe853b3		e868305fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:108	0xe853b8		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:108	0xe853bb		488d0d5e38fe01		LEAQ CAS-Backend/biz/controller..stmp_202(SB), CX							
  task_chain_controller.go:108	0xe853c2		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe853c6		488d0db3f42100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe853cd		48898c2470010000	MOVQ CX, 0x170(SP)											
  context.go:1005		0xe853d5		488b8c2428010000	MOVQ 0x128(SP), CX											
  context.go:1005		0xe853dd		48898c2478010000	MOVQ CX, 0x178(SP)											
  context.go:1005		0xe853e5		488d05f46a2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe853ec		488d9c2470010000	LEAQ 0x170(SP), BX											
  context.go:1005		0xe853f4		e8a79c58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe853f9		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe853fe		488d0d2b9efe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe85405		4889c7			MOVQ AX, DI												
  context.go:1005		0xe85408		488b842490010000	MOVQ 0x190(SP), AX											
  context.go:1005		0xe85410		e84ba3f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:109	0xe85415		4881c480010000		ADDQ $.file+307(SB), SP											
  task_chain_controller.go:109	0xe8541c		5d			POPQ BP													
  task_chain_controller.go:109	0xe8541d		c3			RET													
  task_chain_controller.go:113	0xe8541e		4e8d0c08		LEAQ 0(AX)(R9*1), R9											
  task_chain_controller.go:113	0xe85422		4d8d4920		LEAQ 0x20(R9), R9											
  task_chain_controller.go:113	0xe85426		0f10842430010000	MOVUPS 0x130(SP), X0											
  task_chain_controller.go:113	0xe8542e		410f1102		MOVUPS X0, 0(R10)											
  task_chain_controller.go:113	0xe85432		0f10842440010000	MOVUPS 0x140(SP), X0											
  task_chain_controller.go:113	0xe8543a		410f114210		MOVUPS X0, 0x10(R10)											
  task_chain_controller.go:113	0xe8543f		0f10842450010000	MOVUPS 0x150(SP), X0											
  task_chain_controller.go:113	0xe85447		410f1101		MOVUPS X0, 0(R9)											
  task_chain_controller.go:113	0xe8544b		0f10842460010000	MOVUPS 0x160(SP), X0											
  task_chain_controller.go:113	0xe85453		410f114110		MOVUPS X0, 0x10(R9)											
  task_chain_controller.go:112	0xe85458		4883c278		ADDQ $.file+43(SB), DX											
  task_chain_controller.go:112	0xe8545c		48ffc9			DECQ CX													
  task_chain_controller.go:127	0xe8545f		4c89c6			MOVQ R8, SI												
  task_chain_controller.go:112	0xe85462		4885c9			TESTQ CX, CX												
  task_chain_controller.go:112	0xe85465		0f8eae010000		JLE 0xe85619												
  task_chain_controller.go:112	0xe8546b		48898c2480000000	MOVQ CX, 0x80(SP)											
  task_chain_controller.go:112	0xe85473		4889942420010000	MOVQ DX, 0x120(SP)											
  task_chain_controller.go:112	0xe8547b		4c8b02			MOVQ 0(DX), R8												
  task_chain_controller.go:112	0xe8547e		4c89842490000000	MOVQ R8, 0x90(SP)											
  task_chain_controller.go:112	0xe85486		4c8d4208		LEAQ 0x8(DX), R8											
  task_chain_controller.go:112	0xe8548a		488dbc2498000000	LEAQ 0x98(SP), DI											
  task_chain_controller.go:127	0xe85492		4989f1			MOVQ SI, R9												
  task_chain_controller.go:112	0xe85495		4c89c6			MOVQ R8, SI												
  task_chain_controller.go:112	0xe85498		0f1f840000000000	NOPL 0(AX)(AX*1)											
  task_chain_controller.go:112	0xe854a0		48896c24f0		MOVQ BP, -0x10(SP)											
  task_chain_controller.go:112	0xe854a5		488d6c24f0		LEAQ -0x10(SP), BP											
  task_chain_controller.go:112	0xe854aa		e88f395fff		CALL 0x478e3e												
  task_chain_controller.go:112	0xe854af		488b6d00		MOVQ 0(BP), BP												
  task_chain_controller.go:113	0xe854b3		4d8d4101		LEAQ 0x1(R9), R8											
  task_chain_controller.go:118	0xe854b7		440f11bc2430010000	MOVUPS X15, 0x130(SP)											
  task_chain_controller.go:118	0xe854c0		440f11bc2440010000	MOVUPS X15, 0x140(SP)											
  task_chain_controller.go:118	0xe854c9		440f11bc2450010000	MOVUPS X15, 0x150(SP)											
  task_chain_controller.go:118	0xe854d2		440f11bc2460010000	MOVUPS X15, 0x160(SP)											
  task_chain_controller.go:114	0xe854db		4c8b8c2490000000	MOVQ 0x90(SP), R9											
  task_chain_controller.go:114	0xe854e3		4c898c2430010000	MOVQ R9, 0x130(SP)											
  task_chain_controller.go:115	0xe854eb		4c8b8c2498000000	MOVQ 0x98(SP), R9											
  task_chain_controller.go:115	0xe854f3		4c8b9424a0000000	MOVQ 0xa0(SP), R10											
  task_chain_controller.go:115	0xe854fb		4c898c2438010000	MOVQ R9, 0x138(SP)											
  task_chain_controller.go:115	0xe85503		4c89942440010000	MOVQ R10, 0x140(SP)											
  task_chain_controller.go:116	0xe8550b		4c8b8c24a8000000	MOVQ 0xa8(SP), R9											
  task_chain_controller.go:116	0xe85513		4c8b9424b0000000	MOVQ 0xb0(SP), R10											
  task_chain_controller.go:116	0xe8551b		4c898c2448010000	MOVQ R9, 0x148(SP)											
  task_chain_controller.go:116	0xe85523		4c89942450010000	MOVQ R10, 0x150(SP)											
  task_chain_controller.go:117	0xe8552b		4c8b8c24b8000000	MOVQ 0xb8(SP), R9											
  task_chain_controller.go:117	0xe85533		4c8b9424c0000000	MOVQ 0xc0(SP), R10											
  task_chain_controller.go:117	0xe8553b		4c898c2458010000	MOVQ R9, 0x158(SP)											
  task_chain_controller.go:117	0xe85543		4c89942460010000	MOVQ R10, 0x160(SP)											
  task_chain_controller.go:118	0xe8554b		4c8b8c24c8000000	MOVQ 0xc8(SP), R9											
  task_chain_controller.go:118	0xe85553		4c898c2468010000	MOVQ R9, 0x168(SP)											
  task_chain_controller.go:118	0xe8555b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_chain_controller.go:113	0xe85560		4c39c3			CMPQ BX, R8												
  task_chain_controller.go:113	0xe85563		732d			JAE 0xe85592												
  task_chain_controller.go:113	0xe85565		4889d9			MOVQ BX, CX												
  task_chain_controller.go:113	0xe85568		bf01000000		MOVL $__minor_os_version__(SB), DI									
  task_chain_controller.go:113	0xe8556d		488d350cf62700		LEAQ runtime.types+1178496(SB), SI									
  task_chain_controller.go:113	0xe85574		4c89c3			MOVQ R8, BX												
  task_chain_controller.go:113	0xe85577		e8c4c65eff		CALL runtime.growslice(SB)										
  task_chain_controller.go:112	0xe8557c		488b942420010000	MOVQ 0x120(SP), DX											
  task_chain_controller.go:113	0xe85584		4989d8			MOVQ BX, R8												
  task_chain_controller.go:113	0xe85587		4889cb			MOVQ CX, BX												
  task_chain_controller.go:112	0xe8558a		488b8c2480000000	MOVQ 0x80(SP), CX											
  task_chain_controller.go:113	0xe85592		4d8d48ff		LEAQ -0x1(R8), R9											
  task_chain_controller.go:113	0xe85596		49c1e106		SHLQ $__major_os_version__(SB), R9									
  task_chain_controller.go:113	0xe8559a		4e8d1408		LEAQ 0(AX)(R9*1), R10											
  task_chain_controller.go:113	0xe8559e		833dab856d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:113	0xe855a5		0f8473feffff		JE 0xe8541e												
  task_chain_controller.go:113	0xe855ab		4889842408010000	MOVQ AX, 0x108(SP)											
  task_chain_controller.go:113	0xe855b3		4c89442460		MOVQ R8, 0x60(SP)											
  task_chain_controller.go:113	0xe855b8		48895c2468		MOVQ BX, 0x68(SP)											
  task_chain_controller.go:113	0xe855bd		4c89942418010000	MOVQ R10, 0x118(SP)											
  task_chain_controller.go:113	0xe855c5		4c894c2478		MOVQ R9, 0x78(SP)											
  task_chain_controller.go:113	0xe855ca		488d05aff52700		LEAQ runtime.types+1178496(SB), AX									
  task_chain_controller.go:113	0xe855d1		4c89d3			MOVQ R10, BX												
  task_chain_controller.go:113	0xe855d4		488d8c2430010000	LEAQ 0x130(SP), CX											
  task_chain_controller.go:113	0xe855dc		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:113	0xe855e0		e83bf958ff		CALL runtime.wbMove(SB)											
  task_chain_controller.go:113	0xe855e5		488b842408010000	MOVQ 0x108(SP), AX											
  task_chain_controller.go:112	0xe855ed		488b8c2480000000	MOVQ 0x80(SP), CX											
  task_chain_controller.go:112	0xe855f5		488b942420010000	MOVQ 0x120(SP), DX											
  task_chain_controller.go:127	0xe855fd		488b5c2468		MOVQ 0x68(SP), BX											
  task_chain_controller.go:127	0xe85602		4c8b442460		MOVQ 0x60(SP), R8											
  task_chain_controller.go:113	0xe85607		4c8b4c2478		MOVQ 0x78(SP), R9											
  task_chain_controller.go:113	0xe8560c		4c8b942418010000	MOVQ 0x118(SP), R10											
  task_chain_controller.go:113	0xe85614		e905feffff		JMP 0xe8541e												
  task_chain_controller.go:127	0xe85619		48895c2470		MOVQ BX, 0x70(SP)											
  task_chain_controller.go:127	0xe8561e		4889842410010000	MOVQ AX, 0x110(SP)											
  task_chain_controller.go:127	0xe85626		4889742460		MOVQ SI, 0x60(SP)											
  task_chain_controller.go:121	0xe8562b		e8b0595eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:121	0xe85630		4889842428010000	MOVQ AX, 0x128(SP)											
  task_chain_controller.go:121	0xe85638		4889c3			MOVQ AX, BX												
  task_chain_controller.go:121	0xe8563b		488d0dcbd62e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:121	0xe85642		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:121	0xe85647		488d0532f22100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:121	0xe8564e		e8cd895eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:121	0xe85653		488d0dc6d61b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:121	0xe8565a		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:121	0xe8565d		833dec846d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:121	0xe85664		740c			JE 0xe85672												
  task_chain_controller.go:121	0xe85666		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:121	0xe8566a		e8b12d5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:121	0xe8566f		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:121	0xe85672		488d15af500f00		LEAQ runtime.staticuint64s+8(SB), DX									
  task_chain_controller.go:121	0xe85679		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:121	0xe8567d		488d05fcf12100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:121	0xe85684		488b9c2428010000	MOVQ 0x128(SP), BX											
  task_chain_controller.go:121	0xe8568c		488d0d5ed62e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:121	0xe85693		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:121	0xe85698		e883895eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:121	0xe8569d		488d157cd21b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:121	0xe856a4		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:121	0xe856a7		833da2846d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:121	0xe856ae		740c			JE 0xe856bc												
  task_chain_controller.go:121	0xe856b0		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:121	0xe856b4		e8672d5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:121	0xe856b9		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:121	0xe856bc		488d0d6d35fe01		LEAQ CAS-Backend/biz/controller..stmp_204(SB), CX							
  task_chain_controller.go:121	0xe856c3		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:124	0xe856c7		488b442440		MOVQ 0x40(SP), AX											
  task_chain_controller.go:124	0xe856cc		e8cf495eff		CALL runtime.convT64(SB)										
  task_chain_controller.go:124	0xe856d1		4889842420010000	MOVQ AX, 0x120(SP)											
  task_chain_controller.go:121	0xe856d9		488b9c2428010000	MOVQ 0x128(SP), BX											
  task_chain_controller.go:121	0xe856e1		488d0d78502e00		LEAQ go:string.*+8792(SB), CX										
  task_chain_controller.go:121	0xe856e8		bf05000000		MOVL $__subsystem__+2(SB), DI										
  task_chain_controller.go:121	0xe856ed		488d058cf12100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:121	0xe856f4		e827895eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:121	0xe856f9		488d0de0d31b00		LEAQ runtime.types+383712(SB), CX									
  task_chain_controller.go:121	0xe85700		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:121	0xe85703		833d46846d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:121	0xe8570a		750a			JNE 0xe85716												
  task_chain_controller.go:121	0xe8570c		488b8c2420010000	MOVQ 0x120(SP), CX											
  task_chain_controller.go:121	0xe85714		eb18			JMP 0xe8572e												
  task_chain_controller.go:121	0xe85716		e8252d5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:121	0xe8571b		488b8c2420010000	MOVQ 0x120(SP), CX											
  task_chain_controller.go:121	0xe85723		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:121	0xe85726		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:121	0xe8572a		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:121	0xe8572e		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:125	0xe85732		488b442450		MOVQ 0x50(SP), AX											
  task_chain_controller.go:125	0xe85737		e864495eff		CALL runtime.convT64(SB)										
  task_chain_controller.go:125	0xe8573c		4889842420010000	MOVQ AX, 0x120(SP)											
  task_chain_controller.go:121	0xe85744		488b9c2428010000	MOVQ 0x128(SP), BX											
  task_chain_controller.go:121	0xe8574c		488d0d3d3f2e00		LEAQ go:string.*+4488(SB), CX										
  task_chain_controller.go:121	0xe85753		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:121	0xe85758		488d0521f12100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:121	0xe8575f		90			NOPL													
  task_chain_controller.go:121	0xe85760		e8bb885eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:121	0xe85765		488d0df4d31b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:121	0xe8576c		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:121	0xe8576f		833dda836d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:121	0xe85776		750a			JNE 0xe85782												
  task_chain_controller.go:121	0xe85778		488b942420010000	MOVQ 0x120(SP), DX											
  task_chain_controller.go:121	0xe85780		eb18			JMP 0xe8579a												
  task_chain_controller.go:121	0xe85782		e8b92c5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:121	0xe85787		488b942420010000	MOVQ 0x120(SP), DX											
  task_chain_controller.go:121	0xe8578f		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:121	0xe85792		488b5808		MOVQ 0x8(AX), BX											
  task_chain_controller.go:121	0xe85796		49895b08		MOVQ BX, 0x8(R11)											
  task_chain_controller.go:121	0xe8579a		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:126	0xe8579e		488b442448		MOVQ 0x48(SP), AX											
  task_chain_controller.go:126	0xe857a3		e8f8485eff		CALL runtime.convT64(SB)										
  task_chain_controller.go:126	0xe857a8		4889842420010000	MOVQ AX, 0x120(SP)											
  task_chain_controller.go:121	0xe857b0		488b9c2428010000	MOVQ 0x128(SP), BX											
  task_chain_controller.go:121	0xe857b8		488d0dd53e2e00		LEAQ go:string.*+4492(SB), CX										
  task_chain_controller.go:121	0xe857bf		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:121	0xe857c4		488d05b5f02100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:121	0xe857cb		e850885eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:121	0xe857d0		488d0d89d31b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:121	0xe857d7		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:121	0xe857da		833d6f836d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:121	0xe857e1		750a			JNE 0xe857ed												
  task_chain_controller.go:121	0xe857e3		488b942420010000	MOVQ 0x120(SP), DX											
  task_chain_controller.go:121	0xe857eb		eb18			JMP 0xe85805												
  task_chain_controller.go:121	0xe857ed		e84e2c5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:121	0xe857f2		488b942420010000	MOVQ 0x120(SP), DX											
  task_chain_controller.go:121	0xe857fa		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:121	0xe857fd		488b7008		MOVQ 0x8(AX), SI											
  task_chain_controller.go:121	0xe85801		49897308		MOVQ SI, 0x8(R11)											
  task_chain_controller.go:121	0xe85805		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:127	0xe85809		488b842410010000	MOVQ 0x110(SP), AX											
  task_chain_controller.go:127	0xe85811		488b5c2460		MOVQ 0x60(SP), BX											
  task_chain_controller.go:127	0xe85816		488b4c2470		MOVQ 0x70(SP), CX											
  task_chain_controller.go:127	0xe8581b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_chain_controller.go:127	0xe85820		e89b495eff		CALL runtime.convTslice(SB)										
  task_chain_controller.go:127	0xe85825		4889842420010000	MOVQ AX, 0x120(SP)											
  task_chain_controller.go:121	0xe8582d		488b9c2428010000	MOVQ 0x128(SP), BX											
  task_chain_controller.go:121	0xe85835		488d0d5c3e2e00		LEAQ go:string.*+4496(SB), CX										
  task_chain_controller.go:121	0xe8583c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  task_chain_controller.go:121	0xe85841		488d0538f02100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:121	0xe85848		e8d3875eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:121	0xe8584d		488d156c201b00		LEAQ runtime.types+338112(SB), DX									
  task_chain_controller.go:121	0xe85854		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:121	0xe85857		833df2826d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:121	0xe8585e		6690			NOPW													
  task_chain_controller.go:121	0xe85860		750a			JNE 0xe8586c												
  task_chain_controller.go:121	0xe85862		488b8c2420010000	MOVQ 0x120(SP), CX											
  task_chain_controller.go:121	0xe8586a		eb18			JMP 0xe85884												
  task_chain_controller.go:121	0xe8586c		e8cf2b5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:121	0xe85871		488b8c2420010000	MOVQ 0x120(SP), CX											
  task_chain_controller.go:121	0xe85879		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:121	0xe8587c		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:121	0xe85880		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:121	0xe85884		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe85888		488d0df1ef2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8588f		48898c2470010000	MOVQ CX, 0x170(SP)											
  context.go:1005		0xe85897		488b8c2428010000	MOVQ 0x128(SP), CX											
  context.go:1005		0xe8589f		48898c2478010000	MOVQ CX, 0x178(SP)											
  context.go:1005		0xe858a7		488d0532662400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe858ae		488d9c2470010000	LEAQ 0x170(SP), BX											
  context.go:1005		0xe858b6		e8e59758ff		CALL runtime.convT(SB)											
  context.go:1005		0xe858bb		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe858c0		488d0d6999fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe858c7		4889c7			MOVQ AX, DI												
  context.go:1005		0xe858ca		488b842490010000	MOVQ 0x190(SP), AX											
  context.go:1005		0xe858d2		e8899ef7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:129	0xe858d7		4881c480010000		ADDQ $.file+307(SB), SP											
  task_chain_controller.go:129	0xe858de		5d			POPQ BP													
  task_chain_controller.go:129	0xe858df		90			NOPL													
  task_chain_controller.go:129	0xe858e0		c3			RET													
  task_chain_controller.go:102	0xe858e1		4889442408		MOVQ AX, 0x8(SP)											
  task_chain_controller.go:102	0xe858e6		e8f50b5fff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_chain_controller.go:102	0xe858eb		488b442408		MOVQ 0x8(SP), AX											
  task_chain_controller.go:102	0xe858f0		e94bf9ffff		JMP CAS-Backend/biz/controller.GetAllTaskChainHandler(SB)						
  :-1				0xe858f5		cc			INT $__subsystem__(SB)											
  :-1				0xe858f6		cc			INT $__subsystem__(SB)											
  :-1				0xe858f7		cc			INT $__subsystem__(SB)											
  :-1				0xe858f8		cc			INT $__subsystem__(SB)											
  :-1				0xe858f9		cc			INT $__subsystem__(SB)											
  :-1				0xe858fa		cc			INT $__subsystem__(SB)											
  :-1				0xe858fb		cc			INT $__subsystem__(SB)											
  :-1				0xe858fc		cc			INT $__subsystem__(SB)											
  :-1				0xe858fd		cc			INT $__subsystem__(SB)											
  :-1				0xe858fe		cc			INT $__subsystem__(SB)											
  :-1				0xe858ff		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.ExcTaskChainHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:131	0xe85900		4c8da42408feffff	LEAQ 0xfffffe08(SP), R12										
  task_chain_controller.go:131	0xe85908		4d3b6610		CMPQ R12, 0x10(R14)											
  task_chain_controller.go:131	0xe8590c		0f86bf130000		JBE 0xe86cd1												
  task_chain_controller.go:131	0xe85912		55			PUSHQ BP												
  task_chain_controller.go:131	0xe85913		4889e5			MOVQ SP, BP												
  task_chain_controller.go:131	0xe85916		4881ec70020000		SUBQ $__file_alignment__+112(SB), SP									
  context.go:712		0xe8591d		4889842480020000	MOVQ AX, 0x280(SP)											
  task_chain_controller.go:132	0xe85925		488d0554f22700		LEAQ runtime.types+1178496(SB), AX									
  task_chain_controller.go:132	0xe8592c		e86fbe58ff		CALL runtime.newobject(SB)										
  task_chain_controller.go:132	0xe85931		4889842468020000	MOVQ AX, 0x268(SP)											
  context.go:712		0xe85939		488b0da01e1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe85940		488b15a11e1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe85947		4885c9			TESTQ CX, CX												
  context.go:712		0xe8594a		7419			JE 0xe85965												
  context.go:712		0xe8594c		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe85950		488b35395a1300		MOVQ CAS-Backend/biz/controller..typeAssert.31(SB), SI							
  context.go:712		0xe85957		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe8595a		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe8595e		6690			NOPW													
  context.go:712		0xe85960		e919130000		JMP 0xe86c7e												
  context.go:752		0xe85965		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe85969		4c8b842480020000	MOVQ 0x280(SP), R8											
  context.go:752		0xe85971		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe85975		488d0de40c1a00		LEAQ runtime.types+267872(SB), CX									
  context.go:752		0xe8597c		4889c7			MOVQ AX, DI												
  context.go:752		0xe8597f		4889d0			MOVQ DX, AX												
  context.go:752		0xe85982		ffd6			CALL SI													
  task_chain_controller.go:133	0xe85984		4885c0			TESTQ AX, AX												
  task_chain_controller.go:133	0xe85987		0f85210a0000		JNE 0xe863ae												
  task_chain_controller.go:138	0xe8598d		488b8c2468020000	MOVQ 0x268(SP), CX											
  task_chain_controller.go:138	0xe85995		488b4128		MOVQ 0x28(CX), AX											
  task_chain_controller.go:138	0xe85999		488b5930		MOVQ 0x30(CX), BX											
  task_chain_controller.go:138	0xe8599d		0f1f00			NOPL 0(AX)												
  task_chain_controller.go:138	0xe859a0		e81bd065ff		CALL strings.TrimSpace(SB)										
  task_chain_controller.go:139	0xe859a5		488b8c2468020000	MOVQ 0x268(SP), CX											
  task_chain_controller.go:139	0xe859ad		48833900		CMPQ 0(CX), $0x0											
  task_chain_controller.go:139	0xe859b1		0f8e31010000		JLE 0xe85ae8												
  task_chain_controller.go:138	0xe859b7		4889842488010000	MOVQ AX, 0x188(SP)											
  task_chain_controller.go:138	0xe859bf		48899c24c8000000	MOVQ BX, 0xc8(SP)											
  task_chain_controller.go:140	0xe859c7		440f11bc24e0010000	MOVUPS X15, 0x1e0(SP)											
  task_chain_controller.go:140	0xe859d0		488dbc24e8010000	LEAQ 0x1e8(SP), DI											
  task_chain_controller.go:140	0xe859d8		488d7ff0		LEAQ -0x10(DI), DI											
  task_chain_controller.go:140	0xe859dc		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:140	0xe859e0		48896c24f0		MOVQ BP, -0x10(SP)											
  task_chain_controller.go:140	0xe859e5		488d6c24f0		LEAQ -0x10(SP), BP											
  task_chain_controller.go:140	0xe859ea		e8f7305fff		CALL 0x478ae6												
  task_chain_controller.go:140	0xe859ef		488b6d00		MOVQ 0(BP), BP												
  task_chain_controller.go:140	0xe859f3		488b01			MOVQ 0(CX), AX												
  task_chain_controller.go:140	0xe859f6		e82516b1ff		CALL CAS-Backend/biz/dao.Select1TaskChain(SB)								
  task_chain_controller.go:140	0xe859fb		488b0c24		MOVQ 0(SP), CX												
  task_chain_controller.go:140	0xe859ff		48898c24e0010000	MOVQ CX, 0x1e0(SP)											
  task_chain_controller.go:140	0xe85a07		488dbc24e8010000	LEAQ 0x1e8(SP), DI											
  task_chain_controller.go:140	0xe85a0f		488d742408		LEAQ 0x8(SP), SI											
  task_chain_controller.go:140	0xe85a14		660f1f840000000000	NOPW 0(AX)(AX*1)											
  task_chain_controller.go:140	0xe85a1d		0f1f00			NOPL 0(AX)												
  task_chain_controller.go:140	0xe85a20		48896c24f0		MOVQ BP, -0x10(SP)											
  task_chain_controller.go:140	0xe85a25		488d6c24f0		LEAQ -0x10(SP), BP											
  task_chain_controller.go:140	0xe85a2a		e80f345fff		CALL 0x478e3e												
  task_chain_controller.go:140	0xe85a2f		488b6d00		MOVQ 0(BP), BP												
  task_chain_controller.go:140	0xe85a33		488b8c24e0010000	MOVQ 0x1e0(SP), CX											
  task_chain_controller.go:140	0xe85a3b		48898c2400010000	MOVQ CX, 0x100(SP)											
  task_chain_controller.go:140	0xe85a43		488dbc2408010000	LEAQ 0x108(SP), DI											
  task_chain_controller.go:140	0xe85a4b		488db424e8010000	LEAQ 0x1e8(SP), SI											
  task_chain_controller.go:140	0xe85a53		660f1f840000000000	NOPW 0(AX)(AX*1)											
  task_chain_controller.go:140	0xe85a5c		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:140	0xe85a60		48896c24f0		MOVQ BP, -0x10(SP)											
  task_chain_controller.go:140	0xe85a65		488d6c24f0		LEAQ -0x10(SP), BP											
  task_chain_controller.go:140	0xe85a6a		e8cf335fff		CALL 0x478e3e												
  task_chain_controller.go:140	0xe85a6f		488b6d00		MOVQ 0(BP), BP												
  task_chain_controller.go:140	0xe85a73		84c0			TESTL AL, AL												
  task_chain_controller.go:141	0xe85a75		0f843a080000		JE 0xe862b5												
  task_chain_controller.go:145	0xe85a7b		488b9424c8000000	MOVQ 0xc8(SP), DX											
  task_chain_controller.go:145	0xe85a83		4885d2			TESTQ DX, DX												
  task_chain_controller.go:145	0xe85a86		7512			JNE 0xe85a9a												
  task_chain_controller.go:146	0xe85a88		488b842428010000	MOVQ 0x128(SP), AX											
  task_chain_controller.go:146	0xe85a90		488b9c2430010000	MOVQ 0x130(SP), BX											
  task_chain_controller.go:146	0xe85a98		eb0b			JMP 0xe85aa5												
  task_chain_controller.go:152	0xe85a9a		4889d3			MOVQ DX, BX												
  task_chain_controller.go:152	0xe85a9d		488b842488010000	MOVQ 0x188(SP), AX											
  task_chain_controller.go:148	0xe85aa5		488b942468020000	MOVQ 0x268(SP), DX											
  task_chain_controller.go:148	0xe85aad		48837a1000		CMPQ 0x10(DX), $0x0											
  task_chain_controller.go:148	0xe85ab2		7531			JNE 0xe85ae5												
  task_chain_controller.go:149	0xe85ab4		488bb42410010000	MOVQ 0x110(SP), SI											
  task_chain_controller.go:149	0xe85abc		4c8b842408010000	MOVQ 0x108(SP), R8											
  task_chain_controller.go:149	0xe85ac4		48897210		MOVQ SI, 0x10(DX)											
  task_chain_controller.go:149	0xe85ac8		833d81806d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:149	0xe85acf		7410			JE 0xe85ae1												
  task_chain_controller.go:149	0xe85ad1		e86a295fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:149	0xe85ad6		4d8903			MOVQ R8, 0(R11)												
  task_chain_controller.go:149	0xe85ad9		488b7208		MOVQ 0x8(DX), SI											
  task_chain_controller.go:149	0xe85add		49897308		MOVQ SI, 0x8(R11)											
  task_chain_controller.go:149	0xe85ae1		4c894208		MOVQ R8, 0x8(DX)											
  task_chain_controller.go:228	0xe85ae5		4889d1			MOVQ DX, CX												
  task_chain_controller.go:152	0xe85ae8		4885db			TESTQ BX, BX												
  task_chain_controller.go:152	0xe85aeb		0f84d0060000		JE 0xe861c1												
  task_chain_controller.go:152	0xe85af1		4889842488010000	MOVQ AX, 0x188(SP)											
  task_chain_controller.go:152	0xe85af9		48899c24c8000000	MOVQ BX, 0xc8(SP)											
  task_controller.go:23		0xe85b01		488b1550096902		MOVQ CAS-Backend/config.Cfg+56(SB), DX									
  task_controller.go:23		0xe85b08		4885d2			TESTQ DX, DX												
  task_controller.go:23		0xe85b0b		7409			JE 0xe85b16												
  task_controller.go:23		0xe85b0d		488b353c096902		MOVQ CAS-Backend/config.Cfg+48(SB), SI									
  task_chain_controller.go:157	0xe85b14		eb24			JMP 0xe85b3a												
  task_controller.go:26		0xe85b16		488b15eb021300		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), DX							
  task_controller.go:26		0xe85b1d		0f1f00			NOPL 0(AX)												
  task_controller.go:26		0xe85b20		4885d2			TESTQ DX, DX												
  task_controller.go:26		0xe85b23		7409			JE 0xe85b2e												
  task_controller.go:26		0xe85b25		488b35d4021300		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), SI							
  task_chain_controller.go:157	0xe85b2c		eb0c			JMP 0xe85b3a												
  task_chain_controller.go:157	0xe85b2e		ba09000000		MOVL $__major_os_version__+3(SB), DX									
  task_chain_controller.go:157	0xe85b33		488d35c9f72e00		LEAQ go:string.*+52731(SB), SI										
  task_chain_controller.go:157	0xe85b3a		4889942488000000	MOVQ DX, 0x88(SP)											
  task_chain_controller.go:157	0xe85b42		4889b424d0000000	MOVQ SI, 0xd0(SP)											
  task_chain_controller.go:160	0xe85b4a		440f11bc2478010000	MOVUPS X15, 0x178(SP)											
  task_chain_controller.go:161	0xe85b53		4c8d0526120000		LEAQ CAS-Backend/biz/controller.ExcTaskChainHandler.func1(SB), R8					
  task_chain_controller.go:161	0xe85b5a		4c898424c0010000	MOVQ R8, 0x1c0(SP)											
  task_chain_controller.go:161	0xe85b62		4c8d842478010000	LEAQ 0x178(SP), R8											
  task_chain_controller.go:161	0xe85b6a		4c898424c8010000	MOVQ R8, 0x1c8(SP)											
  task_chain_controller.go:161	0xe85b72		4889f0			MOVQ SI, AX												
  task_chain_controller.go:161	0xe85b75		4889d3			MOVQ DX, BX												
  task_chain_controller.go:161	0xe85b78		b9044b0000		MOVL $__size_of_stack_commit__+15108(SB), CX								
  task_chain_controller.go:161	0xe85b7d		488dbc24c0010000	LEAQ 0x1c0(SP), DI											
  task_chain_controller.go:161	0xe85b85		e876daf8ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_chain_controller.go:176	0xe85b8a		4885c0			TESTQ AX, AX												
  task_chain_controller.go:176	0xe85b8d		0f842e020000		JE 0xe85dc1												
  task_chain_controller.go:161	0xe85b93		48899c24f8000000	MOVQ BX, 0xf8(SP)											
  task_chain_controller.go:161	0xe85b9b		48898424c0000000	MOVQ AX, 0xc0(SP)											
  task_chain_controller.go:177	0xe85ba3		488b4818		MOVQ 0x18(AX), CX											
  task_chain_controller.go:177	0xe85ba7		4889d8			MOVQ BX, AX												
  task_chain_controller.go:177	0xe85baa		ffd1			CALL CX													
  task_chain_controller.go:177	0xe85bac		48898424f0000000	MOVQ AX, 0xf0(SP)											
  task_chain_controller.go:177	0xe85bb4		48899c24b8000000	MOVQ BX, 0xb8(SP)											
  task_chain_controller.go:178	0xe85bbc		488b0d8d0f1300		MOVQ CAS-Backend/pkg/agvcontrol.ErrNoControlPermission(SB), CX						
  task_chain_controller.go:178	0xe85bc3		488b3d8e0f1300		MOVQ CAS-Backend/pkg/agvcontrol.ErrNoControlPermission+8(SB), DI					
  task_chain_controller.go:178	0xe85bca		488b8424c0000000	MOVQ 0xc0(SP), AX											
  task_chain_controller.go:178	0xe85bd2		488b9c24f8000000	MOVQ 0xf8(SP), BX											
  task_chain_controller.go:178	0xe85bda		e8c1f35fff		CALL errors.Is(SB)											
  task_chain_controller.go:178	0xe85bdf		88842487000000		MOVB AL, 0x87(SP)											
  task_chain_controller.go:181	0xe85be6		e8f5535eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:181	0xe85beb		4889842460020000	MOVQ AX, 0x260(SP)											
  task_chain_controller.go:181	0xe85bf3		4889c3			MOVQ AX, BX												
  task_chain_controller.go:181	0xe85bf6		488d0d10d12e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:181	0xe85bfd		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:181	0xe85c02		488d0577ec2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:181	0xe85c09		e812845eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:181	0xe85c0e		488d0d0bd11b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:181	0xe85c15		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:184	0xe85c18		0fb68c2487000000	MOVZX 0x87(SP), CX											
  task_chain_controller.go:184	0xe85c20		0fb6c9			MOVZX CL, CX												
  task_chain_controller.go:184	0xe85c23		4885c9			TESTQ CX, CX												
  task_chain_controller.go:184	0xe85c26		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  task_chain_controller.go:184	0xe85c2e		ba0f000000		MOVL $__major_os_version__+9(SB), DX									
  task_chain_controller.go:184	0xe85c33		480f45ca		CMOVNE DX, CX												
  task_chain_controller.go:184	0xe85c37		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  task_chain_controller.go:184	0xe85c3f		488b9424f0000000	MOVQ 0xf0(SP), DX											
  task_chain_controller.go:184	0xe85c47		488d1dbd4d2f00		LEAQ go:string.*+75011(SB), BX										
  task_chain_controller.go:184	0xe85c4e		480f45d3		CMOVNE BX, DX												
  task_chain_controller.go:184	0xe85c52		48899424f0000000	MOVQ DX, 0xf0(SP)											
  task_chain_controller.go:181	0xe85c5a		833def7e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:181	0xe85c61		740c			JE 0xe85c6f												
  task_chain_controller.go:181	0xe85c63		488b7008		MOVQ 0x8(AX), SI											
  task_chain_controller.go:181	0xe85c67		e8b4275fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:181	0xe85c6c		498933			MOVQ SI, 0(R11)												
  task_chain_controller.go:181	0xe85c6f		488d15aa4a0f00		LEAQ runtime.staticuint64s(SB), DX									
  task_chain_controller.go:181	0xe85c76		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:183	0xe85c7a		488d051f766d02		LEAQ unicode..stmp_365(SB), AX										
  task_chain_controller.go:183	0xe85c81		31db			XORL BX, BX												
  task_chain_controller.go:183	0xe85c83		4889d9			MOVQ BX, CX												
  task_chain_controller.go:183	0xe85c86		e835455eff		CALL runtime.convTslice(SB)										
  task_chain_controller.go:183	0xe85c8b		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:181	0xe85c93		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:181	0xe85c9b		488d0d79d02e00		LEAQ go:string.*+43027(SB), CX										
  task_chain_controller.go:181	0xe85ca2		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:181	0xe85ca7		488d05d2eb2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:181	0xe85cae		e86d835eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:181	0xe85cb3		488d15c62c1b00		LEAQ runtime.types+342400(SB), DX									
  task_chain_controller.go:181	0xe85cba		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:181	0xe85cbd		833d8c7e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:181	0xe85cc4		750a			JNE 0xe85cd0												
  task_chain_controller.go:181	0xe85cc6		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:181	0xe85cce		eb18			JMP 0xe85ce8												
  task_chain_controller.go:181	0xe85cd0		e86b275fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:181	0xe85cd5		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:181	0xe85cdd		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:181	0xe85ce0		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:181	0xe85ce4		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:181	0xe85ce8		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:184	0xe85cec		488b8424f0000000	MOVQ 0xf0(SP), AX											
  task_chain_controller.go:184	0xe85cf4		488b9c24b8000000	MOVQ 0xb8(SP), BX											
  task_chain_controller.go:184	0xe85cfc		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:184	0xe85d00		e81b445eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:184	0xe85d05		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:181	0xe85d0d		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:181	0xe85d15		488d0dd5cf2e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:181	0xe85d1c		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:181	0xe85d21		488d0558eb2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:181	0xe85d28		e8f3825eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:181	0xe85d2d		488d0deccb1b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:181	0xe85d34		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:181	0xe85d37		833d127e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:181	0xe85d3e		6690			NOPW													
  task_chain_controller.go:181	0xe85d40		750a			JNE 0xe85d4c												
  task_chain_controller.go:181	0xe85d42		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:181	0xe85d4a		eb18			JMP 0xe85d64												
  task_chain_controller.go:181	0xe85d4c		e8ef265fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:181	0xe85d51		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:181	0xe85d59		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:181	0xe85d5c		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:181	0xe85d60		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:181	0xe85d64		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe85d68		488d0d11eb2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe85d6f		48898c24d0010000	MOVQ CX, 0x1d0(SP)											
  context.go:1005		0xe85d77		488b8c2460020000	MOVQ 0x260(SP), CX											
  context.go:1005		0xe85d7f		48898c24d8010000	MOVQ CX, 0x1d8(SP)											
  context.go:1005		0xe85d87		488d0552612400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe85d8e		488d9c24d0010000	LEAQ 0x1d0(SP), BX											
  context.go:1005		0xe85d96		e8059358ff		CALL runtime.convT(SB)											
  context.go:1005		0xe85d9b		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe85da0		488d0d8994fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe85da7		4889c7			MOVQ AX, DI												
  context.go:1005		0xe85daa		488b842480020000	MOVQ 0x280(SP), AX											
  context.go:1005		0xe85db2		e8a999f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:178	0xe85db7		4881c470020000		ADDQ $__file_alignment__+112(SB), SP									
  task_chain_controller.go:178	0xe85dbe		5d			POPQ BP													
  task_chain_controller.go:178	0xe85dbf		90			NOPL													
  task_chain_controller.go:178	0xe85dc0		c3			RET													
  task_chain_controller.go:189	0xe85dc1		488b842488010000	MOVQ 0x188(SP), AX											
  task_chain_controller.go:189	0xe85dc9		488b9c24c8000000	MOVQ 0xc8(SP), BX											
  task_chain_controller.go:189	0xe85dd1		e84ac1f9ff		CALL CAS-Backend/pkg/agvcontrol.ParseForkliftTaskChainJSON(SB)						
  task_chain_controller.go:190	0xe85dd6		4885ff			TESTQ DI, DI												
  task_chain_controller.go:190	0xe85dd9		0f84af010000		JE 0xe85f8e												
  task_chain_controller.go:189	0xe85ddf		4889b424f8000000	MOVQ SI, 0xf8(SP)											
  task_chain_controller.go:189	0xe85de7		4889bc24c0000000	MOVQ DI, 0xc0(SP)											
  task_chain_controller.go:191	0xe85def		e8ec515eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:191	0xe85df4		4889842460020000	MOVQ AX, 0x260(SP)											
  task_chain_controller.go:191	0xe85dfc		4889c3			MOVQ AX, BX												
  task_chain_controller.go:191	0xe85dff		488d0d07cf2e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:191	0xe85e06		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:191	0xe85e0b		488d056eea2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:191	0xe85e12		e809825eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:191	0xe85e17		488d0d02cf1b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:191	0xe85e1e		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:191	0xe85e21		833d287d6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:191	0xe85e28		740c			JE 0xe85e36												
  task_chain_controller.go:191	0xe85e2a		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:191	0xe85e2e		e8ed255fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:191	0xe85e33		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:191	0xe85e36		488d15e3480f00		LEAQ runtime.staticuint64s(SB), DX									
  task_chain_controller.go:191	0xe85e3d		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:191	0xe85e41		488d0558746d02		LEAQ unicode..stmp_365(SB), AX										
  task_chain_controller.go:191	0xe85e48		31db			XORL BX, BX												
  task_chain_controller.go:191	0xe85e4a		4889d9			MOVQ BX, CX												
  task_chain_controller.go:191	0xe85e4d		e86e435eff		CALL runtime.convTslice(SB)										
  task_chain_controller.go:191	0xe85e52		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:191	0xe85e5a		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:191	0xe85e62		488d0db2ce2e00		LEAQ go:string.*+43027(SB), CX										
  task_chain_controller.go:191	0xe85e69		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:191	0xe85e6e		488d050bea2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:191	0xe85e75		e8a6815eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:191	0xe85e7a		488d15ff2a1b00		LEAQ runtime.types+342400(SB), DX									
  task_chain_controller.go:191	0xe85e81		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:191	0xe85e84		833dc57c6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:191	0xe85e8b		750a			JNE 0xe85e97												
  task_chain_controller.go:191	0xe85e8d		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:191	0xe85e95		eb18			JMP 0xe85eaf												
  task_chain_controller.go:191	0xe85e97		e8a4255fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:191	0xe85e9c		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:191	0xe85ea4		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:191	0xe85ea7		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:191	0xe85eab		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:191	0xe85eaf		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:191	0xe85eb3		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  task_chain_controller.go:191	0xe85ebb		488b4918		MOVQ 0x18(CX), CX											
  task_chain_controller.go:191	0xe85ebf		488b8424f8000000	MOVQ 0xf8(SP), AX											
  task_chain_controller.go:191	0xe85ec7		ffd1			CALL CX													
  task_chain_controller.go:191	0xe85ec9		e852425eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:191	0xe85ece		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:191	0xe85ed6		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:191	0xe85ede		488d0d0cce2e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:191	0xe85ee5		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:191	0xe85eea		488d058fe92100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:191	0xe85ef1		e82a815eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:191	0xe85ef6		488d0d23ca1b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:191	0xe85efd		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:191	0xe85f00		833d497c6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:191	0xe85f07		750a			JNE 0xe85f13												
  task_chain_controller.go:191	0xe85f09		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:191	0xe85f11		eb18			JMP 0xe85f2b												
  task_chain_controller.go:191	0xe85f13		e828255fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:191	0xe85f18		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:191	0xe85f20		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:191	0xe85f23		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:191	0xe85f27		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:191	0xe85f2b		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe85f2f		488d0d4ae92100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe85f36		48898c24d0010000	MOVQ CX, 0x1d0(SP)											
  context.go:1005		0xe85f3e		488b8c2460020000	MOVQ 0x260(SP), CX											
  context.go:1005		0xe85f46		48898c24d8010000	MOVQ CX, 0x1d8(SP)											
  context.go:1005		0xe85f4e		488d058b5f2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe85f55		488d9c24d0010000	LEAQ 0x1d0(SP), BX											
  context.go:1005		0xe85f5d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe85f60		e83b9158ff		CALL runtime.convT(SB)											
  context.go:1005		0xe85f65		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe85f6a		488d0dbf92fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe85f71		4889c7			MOVQ AX, DI												
  context.go:1005		0xe85f74		488b842480020000	MOVQ 0x280(SP), AX											
  context.go:1005		0xe85f7c		0f1f4000		NOPL 0(AX)												
  context.go:1005		0xe85f80		e8db97f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:192	0xe85f85		4881c470020000		ADDQ $__file_alignment__+112(SB), SP									
  task_chain_controller.go:192	0xe85f8c		5d			POPQ BP													
  task_chain_controller.go:192	0xe85f8d		c3			RET													
  task_chain_controller.go:195	0xe85f8e		488b942478010000	MOVQ 0x178(SP), DX											
  task_chain_controller.go:195	0xe85f96		4c8b842480010000	MOVQ 0x180(SP), R8											
  task_chain_controller.go:195	0xe85f9e		4889df			MOVQ BX, DI												
  task_chain_controller.go:195	0xe85fa1		4889ce			MOVQ CX, SI												
  task_chain_controller.go:195	0xe85fa4		4c89c3			MOVQ R8, BX												
  task_chain_controller.go:195	0xe85fa7		4889c1			MOVQ AX, CX												
  task_chain_controller.go:195	0xe85faa		4889d0			MOVQ DX, AX												
  task_chain_controller.go:195	0xe85fad		e8ce70faff		CALL CAS-Backend/pkg/diapdu.PrependApproachToTaskChain(SB)						
  task_chain_controller.go:196	0xe85fb2		4885f6			TESTQ SI, SI												
  task_chain_controller.go:196	0xe85fb5		755d			JNE 0xe86014												
  task_chain_controller.go:195	0xe85fb7		48898c2498000000	MOVQ CX, 0x98(SP)											
  task_chain_controller.go:195	0xe85fbf		4088bc2486000000	MOVB DI, 0x86(SP)											
  task_chain_controller.go:195	0xe85fc7		48898424d8000000	MOVQ AX, 0xd8(SP)											
  task_chain_controller.go:195	0xe85fcf		48899c2490000000	MOVQ BX, 0x90(SP)											
  task_chain_controller.go:201	0xe85fd7		e8c48062ff		CALL time.Now(SB)											
  task_chain_controller.go:201	0xe85fdc		488d3dd4392f00		LEAQ go:string.*+70831(SB), DI										
  task_chain_controller.go:201	0xe85fe3		be0e000000		MOVL $__major_os_version__+8(SB), SI									
  task_chain_controller.go:201	0xe85fe8		e8935361ff		CALL time.Time.Format(SB)										
  task_chain_controller.go:195	0xe85fed		0fb68c2486000000	MOVZX 0x86(SP), CX											
  task_chain_controller.go:195	0xe85ff5		84c9			TESTL CL, CL												
  task_chain_controller.go:202	0xe85ff7		0f84d2030000		JE 0xe863cf												
  task_chain_controller.go:203	0xe85ffd		488b9424d8000000	MOVQ 0xd8(SP), DX											
  task_chain_controller.go:203	0xe86005		4c8b842490000000	MOVQ 0x90(SP), R8											
  task_chain_controller.go:203	0xe8600d		31c9			XORL CX, CX												
  task_chain_controller.go:203	0xe8600f		e9390c0000		JMP 0xe86c4d												
  task_chain_controller.go:195	0xe86014		4889b424c0000000	MOVQ SI, 0xc0(SP)											
  task_chain_controller.go:195	0xe8601c		4c898424f8000000	MOVQ R8, 0xf8(SP)											
  task_chain_controller.go:197	0xe86024		e8b74f5eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:197	0xe86029		4889842460020000	MOVQ AX, 0x260(SP)											
  task_chain_controller.go:197	0xe86031		4889c3			MOVQ AX, BX												
  task_chain_controller.go:197	0xe86034		488d0dd2cc2e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:197	0xe8603b		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:197	0xe86040		488d0539e82100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:197	0xe86047		e8d47f5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:197	0xe8604c		488d0dcdcc1b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:197	0xe86053		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:197	0xe86056		833df37a6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:197	0xe8605d		740c			JE 0xe8606b												
  task_chain_controller.go:197	0xe8605f		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:197	0xe86063		e8b8235fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:197	0xe86068		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:197	0xe8606b		488d15ae460f00		LEAQ runtime.staticuint64s(SB), DX									
  task_chain_controller.go:197	0xe86072		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:197	0xe86076		488d0523726d02		LEAQ unicode..stmp_365(SB), AX										
  task_chain_controller.go:197	0xe8607d		31db			XORL BX, BX												
  task_chain_controller.go:197	0xe8607f		4889d9			MOVQ BX, CX												
  task_chain_controller.go:197	0xe86082		e839415eff		CALL runtime.convTslice(SB)										
  task_chain_controller.go:197	0xe86087		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:197	0xe8608f		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:197	0xe86097		488d0d7dcc2e00		LEAQ go:string.*+43027(SB), CX										
  task_chain_controller.go:197	0xe8609e		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:197	0xe860a3		488d05d6e72100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:197	0xe860aa		e8717f5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:197	0xe860af		488d15ca281b00		LEAQ runtime.types+342400(SB), DX									
  task_chain_controller.go:197	0xe860b6		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:197	0xe860b9		833d907a6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:197	0xe860c0		750a			JNE 0xe860cc												
  task_chain_controller.go:197	0xe860c2		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:197	0xe860ca		eb18			JMP 0xe860e4												
  task_chain_controller.go:197	0xe860cc		e86f235fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:197	0xe860d1		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:197	0xe860d9		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:197	0xe860dc		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:197	0xe860e0		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:197	0xe860e4		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:197	0xe860e8		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  task_chain_controller.go:197	0xe860f0		488b4918		MOVQ 0x18(CX), CX											
  task_chain_controller.go:197	0xe860f4		488b8424f8000000	MOVQ 0xf8(SP), AX											
  task_chain_controller.go:197	0xe860fc		ffd1			CALL CX													
  task_chain_controller.go:197	0xe860fe		6690			NOPW													
  task_chain_controller.go:197	0xe86100		e81b405eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:197	0xe86105		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:197	0xe8610d		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:197	0xe86115		488d0dd5cb2e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:197	0xe8611c		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:197	0xe86121		488d0558e72100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:197	0xe86128		e8f37e5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:197	0xe8612d		488d0decc71b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:197	0xe86134		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:197	0xe86137		833d127a6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:197	0xe8613e		6690			NOPW													
  task_chain_controller.go:197	0xe86140		750a			JNE 0xe8614c												
  task_chain_controller.go:197	0xe86142		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:197	0xe8614a		eb18			JMP 0xe86164												
  task_chain_controller.go:197	0xe8614c		e8ef225fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:197	0xe86151		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:197	0xe86159		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:197	0xe8615c		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:197	0xe86160		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:197	0xe86164		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe86168		488d0d11e72100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8616f		48898c24d0010000	MOVQ CX, 0x1d0(SP)											
  context.go:1005		0xe86177		488b8c2460020000	MOVQ 0x260(SP), CX											
  context.go:1005		0xe8617f		48898c24d8010000	MOVQ CX, 0x1d8(SP)											
  context.go:1005		0xe86187		488d05525d2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe8618e		488d9c24d0010000	LEAQ 0x1d0(SP), BX											
  context.go:1005		0xe86196		e8058f58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe8619b		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe861a0		488d0d8990fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe861a7		4889c7			MOVQ AX, DI												
  context.go:1005		0xe861aa		488b842480020000	MOVQ 0x280(SP), AX											
  context.go:1005		0xe861b2		e8a995f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:198	0xe861b7		4881c470020000		ADDQ $__file_alignment__+112(SB), SP									
  task_chain_controller.go:198	0xe861be		5d			POPQ BP													
  task_chain_controller.go:198	0xe861bf		90			NOPL													
  task_chain_controller.go:198	0xe861c0		c3			RET													
  task_chain_controller.go:153	0xe861c1		e81a4e5eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:153	0xe861c6		4889842460020000	MOVQ AX, 0x260(SP)											
  task_chain_controller.go:153	0xe861ce		4889c3			MOVQ AX, BX												
  task_chain_controller.go:153	0xe861d1		488d0d35cb2e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:153	0xe861d8		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:153	0xe861dd		488d059ce62100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:153	0xe861e4		e8377e5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:153	0xe861e9		488d0d30cb1b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:153	0xe861f0		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:153	0xe861f3		833d56796d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:153	0xe861fa		740c			JE 0xe86208												
  task_chain_controller.go:153	0xe861fc		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:153	0xe86200		e81b225fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:153	0xe86205		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:153	0xe86208		488d1511450f00		LEAQ runtime.staticuint64s(SB), DX									
  task_chain_controller.go:153	0xe8620f		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:153	0xe86213		488d0566e62100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:153	0xe8621a		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:153	0xe86222		488d0dc8ca2e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:153	0xe86229		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:153	0xe8622e		e8ed7d5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:153	0xe86233		488d15e6c61b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:153	0xe8623a		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:153	0xe8623d		833d0c796d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:153	0xe86244		740c			JE 0xe86252												
  task_chain_controller.go:153	0xe86246		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:153	0xe8624a		e8d1215fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:153	0xe8624f		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:153	0xe86252		488d0de729fe01		LEAQ CAS-Backend/biz/controller..stmp_209(SB), CX							
  task_chain_controller.go:153	0xe86259		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8625d		488d0d1ce62100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe86264		48898c24d0010000	MOVQ CX, 0x1d0(SP)											
  context.go:1005		0xe8626c		488b8c2460020000	MOVQ 0x260(SP), CX											
  context.go:1005		0xe86274		48898c24d8010000	MOVQ CX, 0x1d8(SP)											
  context.go:1005		0xe8627c		488d055d5c2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe86283		488d9c24d0010000	LEAQ 0x1d0(SP), BX											
  context.go:1005		0xe8628b		e8108e58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe86290		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe86295		488d0d948ffe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8629c		4889c7			MOVQ AX, DI												
  context.go:1005		0xe8629f		488b842480020000	MOVQ 0x280(SP), AX											
  context.go:1005		0xe862a7		e8b494f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:154	0xe862ac		4881c470020000		ADDQ $__file_alignment__+112(SB), SP									
  task_chain_controller.go:154	0xe862b3		5d			POPQ BP													
  task_chain_controller.go:154	0xe862b4		c3			RET													
  task_chain_controller.go:142	0xe862b5		e8264d5eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:142	0xe862ba		4889842460020000	MOVQ AX, 0x260(SP)											
  task_chain_controller.go:142	0xe862c2		4889c3			MOVQ AX, BX												
  task_chain_controller.go:142	0xe862c5		488d0d41ca2e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:142	0xe862cc		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:142	0xe862d1		488d05a8e52100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:142	0xe862d8		e8437d5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:142	0xe862dd		488d0d3cca1b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:142	0xe862e4		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:142	0xe862e7		833d62786d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:142	0xe862ee		740c			JE 0xe862fc												
  task_chain_controller.go:142	0xe862f0		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:142	0xe862f4		e827215fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:142	0xe862f9		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:142	0xe862fc		488d151d440f00		LEAQ runtime.staticuint64s(SB), DX									
  task_chain_controller.go:142	0xe86303		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:142	0xe86307		488d0572e52100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:142	0xe8630e		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:142	0xe86316		488d0dd4c92e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:142	0xe8631d		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:142	0xe86322		e8f97c5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:142	0xe86327		488d15f2c51b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:142	0xe8632e		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:142	0xe86331		833d18786d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:142	0xe86338		740e			JE 0xe86348												
  task_chain_controller.go:142	0xe8633a		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:142	0xe8633e		6690			NOPW													
  task_chain_controller.go:142	0xe86340		e8db205fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:142	0xe86345		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:142	0xe86348		488d0d8128fe01		LEAQ CAS-Backend/biz/controller..stmp_190(SB), CX							
  task_chain_controller.go:142	0xe8634f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe86353		488d0d26e52100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8635a		48898c24d0010000	MOVQ CX, 0x1d0(SP)											
  context.go:1005		0xe86362		488b8c2460020000	MOVQ 0x260(SP), CX											
  context.go:1005		0xe8636a		48898c24d8010000	MOVQ CX, 0x1d8(SP)											
  context.go:1005		0xe86372		488d05675b2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe86379		488d9c24d0010000	LEAQ 0x1d0(SP), BX											
  context.go:1005		0xe86381		e81a8d58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe86386		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8638b		488d0d9e8efe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe86392		4889c7			MOVQ AX, DI												
  context.go:1005		0xe86395		488b842480020000	MOVQ 0x280(SP), AX											
  context.go:1005		0xe8639d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe863a0		e8bb93f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:143	0xe863a5		4881c470020000		ADDQ $__file_alignment__+112(SB), SP									
  task_chain_controller.go:143	0xe863ac		5d			POPQ BP													
  task_chain_controller.go:143	0xe863ad		c3			RET													
  task_chain_controller.go:134	0xe863ae		4889c1			MOVQ AX, CX												
  task_chain_controller.go:134	0xe863b1		4889df			MOVQ BX, DI												
  task_chain_controller.go:134	0xe863b4		488b842480020000	MOVQ 0x280(SP), AX											
  task_chain_controller.go:134	0xe863bc		bb90010000		MOVL $.file+323(SB), BX											
  task_chain_controller.go:134	0xe863c1		e8da4cf7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  task_chain_controller.go:135	0xe863c6		4881c470020000		ADDQ $__file_alignment__+112(SB), SP									
  task_chain_controller.go:135	0xe863cd		5d			POPQ BP													
  task_chain_controller.go:135	0xe863ce		c3			RET													
  task_chain_controller.go:207	0xe863cf		488b8c2498000000	MOVQ 0x98(SP), CX											
  task_chain_controller.go:207	0xe863d7		4889c7			MOVQ AX, DI												
  task_chain_controller.go:207	0xe863da		4889de			MOVQ BX, SI												
  task_chain_controller.go:207	0xe863dd		488b8424d8000000	MOVQ 0xd8(SP), AX											
  task_chain_controller.go:207	0xe863e5		488b9c2490000000	MOVQ 0x90(SP), BX											
  task_chain_controller.go:207	0xe863ed		e82ebff9ff		CALL CAS-Backend/pkg/agvcontrol.AssignForkliftTaskIDs(SB)						
  task_chain_controller.go:207	0xe863f2		4889bc24e0000000	MOVQ DI, 0xe0(SP)											
  task_chain_controller.go:207	0xe863fa		4889b424a0000000	MOVQ SI, 0xa0(SP)											
  task_chain_controller.go:207	0xe86402		4c898424a8000000	MOVQ R8, 0xa8(SP)											
  task_chain_controller.go:208	0xe8640a		4d85c9			TESTQ R9, R9												
  task_chain_controller.go:208	0xe8640d		0f84bb010000		JE 0xe865ce												
  task_chain_controller.go:207	0xe86413		4c899424f8000000	MOVQ R10, 0xf8(SP)											
  task_chain_controller.go:207	0xe8641b		4c898c24c0000000	MOVQ R9, 0xc0(SP)											
  task_chain_controller.go:209	0xe86423		e8b84b5eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:209	0xe86428		4889842460020000	MOVQ AX, 0x260(SP)											
  task_chain_controller.go:209	0xe86430		4889c3			MOVQ AX, BX												
  task_chain_controller.go:209	0xe86433		488d0dd3c82e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:209	0xe8643a		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:209	0xe8643f		488d053ae42100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:209	0xe86446		e8d57b5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:209	0xe8644b		488d0dcec81b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:209	0xe86452		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:209	0xe86455		833df4766d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:209	0xe8645c		740c			JE 0xe8646a												
  task_chain_controller.go:209	0xe8645e		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:209	0xe86462		e8b91f5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:209	0xe86467		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:209	0xe8646a		488d15af420f00		LEAQ runtime.staticuint64s(SB), DX									
  task_chain_controller.go:209	0xe86471		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:209	0xe86475		488b8424e0000000	MOVQ 0xe0(SP), AX											
  task_chain_controller.go:209	0xe8647d		488b9c24a0000000	MOVQ 0xa0(SP), BX											
  task_chain_controller.go:209	0xe86485		488b8c24a8000000	MOVQ 0xa8(SP), CX											
  task_chain_controller.go:209	0xe8648d		e82e3d5eff		CALL runtime.convTslice(SB)										
  task_chain_controller.go:209	0xe86492		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:209	0xe8649a		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:209	0xe864a2		488d0d72c82e00		LEAQ go:string.*+43027(SB), CX										
  task_chain_controller.go:209	0xe864a9		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:209	0xe864ae		488d05cbe32100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:209	0xe864b5		e8667b5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:209	0xe864ba		488d15bf241b00		LEAQ runtime.types+342400(SB), DX									
  task_chain_controller.go:209	0xe864c1		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:209	0xe864c4		833d85766d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:209	0xe864cb		750a			JNE 0xe864d7												
  task_chain_controller.go:209	0xe864cd		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:209	0xe864d5		eb18			JMP 0xe864ef												
  task_chain_controller.go:209	0xe864d7		e8641f5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:209	0xe864dc		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:209	0xe864e4		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:209	0xe864e7		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:209	0xe864eb		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:209	0xe864ef		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:209	0xe864f3		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  task_chain_controller.go:209	0xe864fb		488b4918		MOVQ 0x18(CX), CX											
  task_chain_controller.go:209	0xe864ff		488b8424f8000000	MOVQ 0xf8(SP), AX											
  task_chain_controller.go:209	0xe86507		ffd1			CALL CX													
  task_chain_controller.go:209	0xe86509		e8123c5eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:209	0xe8650e		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:209	0xe86516		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:209	0xe8651e		488d0dccc72e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:209	0xe86525		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:209	0xe8652a		488d054fe32100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:209	0xe86531		e8ea7a5eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:209	0xe86536		488d0de3c31b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:209	0xe8653d		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:209	0xe86540		833d09766d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:209	0xe86547		750a			JNE 0xe86553												
  task_chain_controller.go:209	0xe86549		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:209	0xe86551		eb18			JMP 0xe8656b												
  task_chain_controller.go:209	0xe86553		e8e81e5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:209	0xe86558		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:209	0xe86560		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:209	0xe86563		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:209	0xe86567		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:209	0xe8656b		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe8656f		488d0d0ae32100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe86576		48898c24d0010000	MOVQ CX, 0x1d0(SP)											
  context.go:1005		0xe8657e		488b8c2460020000	MOVQ 0x260(SP), CX											
  context.go:1005		0xe86586		48898c24d8010000	MOVQ CX, 0x1d8(SP)											
  context.go:1005		0xe8658e		488d054b592400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe86595		488d9c24d0010000	LEAQ 0x1d0(SP), BX											
  context.go:1005		0xe8659d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe865a0		e8fb8a58ff		CALL runtime.convT(SB)											
  context.go:1005		0xe865a5		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe865aa		488d0d7f8cfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe865b1		4889c7			MOVQ AX, DI												
  context.go:1005		0xe865b4		488b842480020000	MOVQ 0x280(SP), AX											
  context.go:1005		0xe865bc		0f1f4000		NOPL 0(AX)												
  context.go:1005		0xe865c0		e89b91f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:210	0xe865c5		4881c470020000		ADDQ $__file_alignment__+112(SB), SP									
  task_chain_controller.go:210	0xe865cc		5d			POPQ BP													
  task_chain_controller.go:210	0xe865cd		c3			RET													
  task_chain_controller.go:213	0xe865ce		c684248500000000	MOVB $0x0, 0x85(SP)											
  task_chain_controller.go:214	0xe865d6		440f11bc2498010000	MOVUPS X15, 0x198(SP)											
  task_chain_controller.go:214	0xe865df		440f11bc24a0010000	MOVUPS X15, 0x1a0(SP)											
  task_chain_controller.go:214	0xe865e8		440f11bc24b0010000	MOVUPS X15, 0x1b0(SP)											
  task_chain_controller.go:214	0xe865f1		488d1508070000		LEAQ CAS-Backend/biz/controller.ExcTaskChainHandler.func2(SB), DX					
  task_chain_controller.go:214	0xe865f8		4889942498010000	MOVQ DX, 0x198(SP)											
  task_chain_controller.go:214	0xe86600		48899c24a8010000	MOVQ BX, 0x1a8(SP)											
  task_chain_controller.go:214	0xe86608		48898c24b0010000	MOVQ CX, 0x1b0(SP)											
  task_chain_controller.go:214	0xe86610		48898424a0010000	MOVQ AX, 0x1a0(SP)											
  task_chain_controller.go:214	0xe86618		488d942485000000	LEAQ 0x85(SP), DX											
  task_chain_controller.go:214	0xe86620		48899424b8010000	MOVQ DX, 0x1b8(SP)											
  task_chain_controller.go:214	0xe86628		488b8424d0000000	MOVQ 0xd0(SP), AX											
  task_chain_controller.go:214	0xe86630		488b9c2488000000	MOVQ 0x88(SP), BX											
  task_chain_controller.go:214	0xe86638		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX								
  task_chain_controller.go:214	0xe8663d		488dbc2498010000	LEAQ 0x198(SP), DI											
  task_chain_controller.go:214	0xe86645		e8b6cff8ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_chain_controller.go:219	0xe8664a		4885c0			TESTQ AX, AX												
  task_chain_controller.go:219	0xe8664d		0f8525040000		JNE 0xe86a78												
  task_chain_controller.go:219	0xe86653		80bc248500000000	CMPB 0x85(SP), $0x0											
  task_chain_controller.go:219	0xe8665b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_chain_controller.go:219	0xe86660		0f840d040000		JE 0xe86a73												
  task_chain_controller.go:228	0xe86666		488b8c2468020000	MOVQ 0x268(SP), CX											
  task_chain_controller.go:228	0xe8666e		488b01			MOVQ 0(CX), AX												
  task_chain_controller.go:228	0xe86671		4885c0			TESTQ AX, AX												
  task_chain_controller.go:228	0xe86674		7e17			JLE 0xe8668d												
  task_chain_controller.go:229	0xe86676		bb02000000		MOVL $__minor_os_version__+1(SB), BX									
  task_chain_controller.go:229	0xe8667b		0f1f440000		NOPL 0(AX)(AX*1)											
  task_chain_controller.go:229	0xe86680		e87b0eb1ff		CALL CAS-Backend/biz/dao.UpdateTaskChainStatusByID(SB)							
  task_chain_controller.go:229	0xe86685		84c0			TESTL AL, AL												
  task_chain_controller.go:229	0xe86687		0f8474020000		JE 0xe86901												
  task_chain_controller.go:238	0xe8668d		48c705506d6d0202000000	MOVQ $__minor_os_version__+1(SB), CAS-Backend/biz/controller.taskChainStatus(SB)			
  task_chain_controller.go:240	0xe86698		e843495eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:240	0xe8669d		4889842460020000	MOVQ AX, 0x260(SP)											
  task_chain_controller.go:240	0xe866a5		4889c3			MOVQ AX, BX												
  task_chain_controller.go:240	0xe866a8		488d0d5ec62e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:240	0xe866af		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:240	0xe866b4		488d05c5e12100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:240	0xe866bb		0f1f440000		NOPL 0(AX)(AX*1)											
  task_chain_controller.go:240	0xe866c0		e85b795eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:240	0xe866c5		488d0d54c61b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:240	0xe866cc		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:240	0xe866cf		833d7a746d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:240	0xe866d6		7410			JE 0xe866e8												
  task_chain_controller.go:240	0xe866d8		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:240	0xe866dc		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:240	0xe866e0		e83b1d5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:240	0xe866e5		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:240	0xe866e8		488d1539400f00		LEAQ runtime.staticuint64s+8(SB), DX									
  task_chain_controller.go:240	0xe866ef		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:242	0xe866f3		488b8424e0000000	MOVQ 0xe0(SP), AX											
  task_chain_controller.go:242	0xe866fb		488b9c24a0000000	MOVQ 0xa0(SP), BX											
  task_chain_controller.go:242	0xe86703		488b8c24a8000000	MOVQ 0xa8(SP), CX											
  task_chain_controller.go:242	0xe8670b		e8b03a5eff		CALL runtime.convTslice(SB)										
  task_chain_controller.go:242	0xe86710		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:240	0xe86718		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:240	0xe86720		488d0df4c52e00		LEAQ go:string.*+43027(SB), CX										
  task_chain_controller.go:240	0xe86727		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:240	0xe8672c		488d054de12100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:240	0xe86733		e8e8785eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:240	0xe86738		488d1541221b00		LEAQ runtime.types+342400(SB), DX									
  task_chain_controller.go:240	0xe8673f		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:240	0xe86742		833d07746d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:240	0xe86749		750a			JNE 0xe86755												
  task_chain_controller.go:240	0xe8674b		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:240	0xe86753		eb18			JMP 0xe8676d												
  task_chain_controller.go:240	0xe86755		e8e61c5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:240	0xe8675a		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:240	0xe86762		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:240	0xe86765		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:240	0xe86769		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:240	0xe8676d		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:243	0xe86771		488b8c2468020000	MOVQ 0x268(SP), CX											
  task_chain_controller.go:243	0xe86779		488b01			MOVQ 0(CX), AX												
  task_chain_controller.go:243	0xe8677c		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:243	0xe86780		e81b395eff		CALL runtime.convT64(SB)										
  task_chain_controller.go:243	0xe86785		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:240	0xe8678d		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:240	0xe86795		488d0dfe1d2e00		LEAQ go:string.*+146(SB), CX										
  task_chain_controller.go:240	0xe8679c		bf02000000		MOVL $__minor_os_version__+1(SB), DI									
  task_chain_controller.go:240	0xe867a1		488d05d8e02100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:240	0xe867a8		e873785eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:240	0xe867ad		488d0dacc31b00		LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:240	0xe867b4		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:240	0xe867b7		833d92736d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:240	0xe867be		6690			NOPW													
  task_chain_controller.go:240	0xe867c0		750a			JNE 0xe867cc												
  task_chain_controller.go:240	0xe867c2		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:240	0xe867ca		eb18			JMP 0xe867e4												
  task_chain_controller.go:240	0xe867cc		e86f1c5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:240	0xe867d1		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:240	0xe867d9		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:240	0xe867dc		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:240	0xe867e0		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:240	0xe867e4		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:244	0xe867e8		488b8c2468020000	MOVQ 0x268(SP), CX											
  task_chain_controller.go:244	0xe867f0		488b4108		MOVQ 0x8(CX), AX											
  task_chain_controller.go:244	0xe867f4		488b5910		MOVQ 0x10(CX), BX											
  task_chain_controller.go:244	0xe867f8		e823395eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:244	0xe867fd		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:240	0xe86805		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:240	0xe8680d		488d0da7ea2e00		LEAQ go:string.*+52659(SB), CX										
  task_chain_controller.go:240	0xe86814		bf09000000		MOVL $__major_os_version__+3(SB), DI									
  task_chain_controller.go:240	0xe86819		488d0560e02100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:240	0xe86820		e8fb775eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:240	0xe86825		488d0df4c01b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:240	0xe8682c		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:240	0xe8682f		833d1a736d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:240	0xe86836		750a			JNE 0xe86842												
  task_chain_controller.go:240	0xe86838		488b942458020000	MOVQ 0x258(SP), DX											
  task_chain_controller.go:240	0xe86840		eb18			JMP 0xe8685a												
  task_chain_controller.go:240	0xe86842		e8f91b5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:240	0xe86847		488b942458020000	MOVQ 0x258(SP), DX											
  task_chain_controller.go:240	0xe8684f		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:240	0xe86852		488b7008		MOVQ 0x8(AX), SI											
  task_chain_controller.go:240	0xe86856		49897308		MOVQ SI, 0x8(R11)											
  task_chain_controller.go:240	0xe8685a		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:240	0xe8685e		488d051be02100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:240	0xe86865		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:240	0xe8686d		488d0d7dc42e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:240	0xe86874		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:240	0xe86879		e8a2775eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:240	0xe8687e		488d159bc01b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:240	0xe86885		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:240	0xe86888		833dc1726d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:240	0xe8688f		740c			JE 0xe8689d												
  task_chain_controller.go:240	0xe86891		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:240	0xe86895		e8861b5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:240	0xe8689a		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:240	0xe8689d		488d0dbc23fe01		LEAQ CAS-Backend/biz/controller..stmp_218(SB), CX							
  task_chain_controller.go:240	0xe868a4		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe868a8		488d0dd1df2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe868af		48898c24d0010000	MOVQ CX, 0x1d0(SP)											
  context.go:1005		0xe868b7		488b8c2460020000	MOVQ 0x260(SP), CX											
  context.go:1005		0xe868bf		48898c24d8010000	MOVQ CX, 0x1d8(SP)											
  context.go:1005		0xe868c7		488d0512562400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe868ce		488d9c24d0010000	LEAQ 0x1d0(SP), BX											
  context.go:1005		0xe868d6		e8c58758ff		CALL runtime.convT(SB)											
  context.go:1005		0xe868db		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe868e0		488d0d4989fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe868e7		4889c7			MOVQ AX, DI												
  context.go:1005		0xe868ea		488b842480020000	MOVQ 0x280(SP), AX											
  context.go:1005		0xe868f2		e8698ef7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:247	0xe868f7		4881c470020000		ADDQ $__file_alignment__+112(SB), SP									
  task_chain_controller.go:247	0xe868fe		5d			POPQ BP													
  task_chain_controller.go:247	0xe868ff		90			NOPL													
  task_chain_controller.go:247	0xe86900		c3			RET													
  task_chain_controller.go:230	0xe86901		e8da465eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:230	0xe86906		4889842460020000	MOVQ AX, 0x260(SP)											
  task_chain_controller.go:230	0xe8690e		4889c3			MOVQ AX, BX												
  task_chain_controller.go:230	0xe86911		488d0df5c32e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:230	0xe86918		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:230	0xe8691d		488d055cdf2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:230	0xe86924		e8f7765eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:230	0xe86929		488d0df0c31b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:230	0xe86930		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:230	0xe86933		833d16726d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:230	0xe8693a		740c			JE 0xe86948												
  task_chain_controller.go:230	0xe8693c		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:230	0xe86940		e8db1a5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:230	0xe86945		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:230	0xe86948		488d15d13d0f00		LEAQ runtime.staticuint64s(SB), DX									
  task_chain_controller.go:230	0xe8694f		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:232	0xe86953		488b8424e0000000	MOVQ 0xe0(SP), AX											
  task_chain_controller.go:232	0xe8695b		488b9c24a0000000	MOVQ 0xa0(SP), BX											
  task_chain_controller.go:232	0xe86963		488b8c24a8000000	MOVQ 0xa8(SP), CX											
  task_chain_controller.go:232	0xe8696b		e850385eff		CALL runtime.convTslice(SB)										
  task_chain_controller.go:232	0xe86970		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:230	0xe86978		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:230	0xe86980		488d0d94c32e00		LEAQ go:string.*+43027(SB), CX										
  task_chain_controller.go:230	0xe86987		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:230	0xe8698c		488d05edde2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:230	0xe86993		e888765eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:230	0xe86998		488d15e11f1b00		LEAQ runtime.types+342400(SB), DX									
  task_chain_controller.go:230	0xe8699f		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:230	0xe869a2		833da7716d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:230	0xe869a9		750a			JNE 0xe869b5												
  task_chain_controller.go:230	0xe869ab		488b942458020000	MOVQ 0x258(SP), DX											
  task_chain_controller.go:230	0xe869b3		eb18			JMP 0xe869cd												
  task_chain_controller.go:230	0xe869b5		e8861a5fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:230	0xe869ba		488b942458020000	MOVQ 0x258(SP), DX											
  task_chain_controller.go:230	0xe869c2		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:230	0xe869c5		488b7008		MOVQ 0x8(AX), SI											
  task_chain_controller.go:230	0xe869c9		49897308		MOVQ SI, 0x8(R11)											
  task_chain_controller.go:230	0xe869cd		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:230	0xe869d1		488d05a8de2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:230	0xe869d8		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:230	0xe869e0		488d0d0ac32e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:230	0xe869e7		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:230	0xe869ec		e82f765eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:230	0xe869f1		488d1528bf1b00		LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:230	0xe869f8		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:230	0xe869fb		833d4e716d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:230	0xe86a02		740c			JE 0xe86a10												
  task_chain_controller.go:230	0xe86a04		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:230	0xe86a08		e8131a5fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:230	0xe86a0d		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:230	0xe86a10		488d0d3922fe01		LEAQ CAS-Backend/biz/controller..stmp_216(SB), CX							
  task_chain_controller.go:230	0xe86a17		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe86a1b		488d0d5ede2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe86a22		48898c24d0010000	MOVQ CX, 0x1d0(SP)											
  context.go:1005		0xe86a2a		488b8c2460020000	MOVQ 0x260(SP), CX											
  context.go:1005		0xe86a32		48898c24d8010000	MOVQ CX, 0x1d8(SP)											
  context.go:1005		0xe86a3a		488d059f542400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe86a41		488d9c24d0010000	LEAQ 0x1d0(SP), BX											
  context.go:1005		0xe86a49		e8528658ff		CALL runtime.convT(SB)											
  context.go:1005		0xe86a4e		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe86a53		488d0dd687fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe86a5a		4889c7			MOVQ AX, DI												
  context.go:1005		0xe86a5d		488b842480020000	MOVQ 0x280(SP), AX											
  context.go:1005		0xe86a65		e8f68cf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:235	0xe86a6a		4881c470020000		ADDQ $__file_alignment__+112(SB), SP									
  task_chain_controller.go:235	0xe86a71		5d			POPQ BP													
  task_chain_controller.go:235	0xe86a72		c3			RET													
  task_chain_controller.go:219	0xe86a73		4885c0			TESTQ AX, AX												
  task_chain_controller.go:221	0xe86a76		740c			JE 0xe86a84												
  task_chain_controller.go:222	0xe86a78		488b4818		MOVQ 0x18(AX), CX											
  task_chain_controller.go:222	0xe86a7c		4889d8			MOVQ BX, AX												
  task_chain_controller.go:222	0xe86a7f		90			NOPL													
  task_chain_controller.go:222	0xe86a80		ffd1			CALL CX													
  task_chain_controller.go:222	0xe86a82		eb0c			JMP 0xe86a90												
  task_chain_controller.go:222	0xe86a84		bb12000000		MOVL $__major_os_version__+12(SB), BX									
  task_chain_controller.go:222	0xe86a89		488d0572732f00		LEAQ go:string.*+88314(SB), AX										
  task_chain_controller.go:224	0xe86a90		48898424e8000000	MOVQ AX, 0xe8(SP)											
  task_chain_controller.go:224	0xe86a98		48899c24b0000000	MOVQ BX, 0xb0(SP)											
  task_chain_controller.go:224	0xe86aa0		e83b455eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:224	0xe86aa5		4889842460020000	MOVQ AX, 0x260(SP)											
  task_chain_controller.go:224	0xe86aad		4889c3			MOVQ AX, BX												
  task_chain_controller.go:224	0xe86ab0		488d0d56c22e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:224	0xe86ab7		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:224	0xe86abc		488d05bddd2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:224	0xe86ac3		e858755eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:224	0xe86ac8		488d0d51c21b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:224	0xe86acf		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:224	0xe86ad2		833d77706d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:224	0xe86ad9		740d			JE 0xe86ae8												
  task_chain_controller.go:224	0xe86adb		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:224	0xe86adf		90			NOPL													
  task_chain_controller.go:224	0xe86ae0		e83b195fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:224	0xe86ae5		498913			MOVQ DX, 0(R11)												
  task_chain_controller.go:224	0xe86ae8		488d15313c0f00		LEAQ runtime.staticuint64s(SB), DX									
  task_chain_controller.go:224	0xe86aef		48895008		MOVQ DX, 0x8(AX)											
  task_chain_controller.go:224	0xe86af3		488b8424e0000000	MOVQ 0xe0(SP), AX											
  task_chain_controller.go:224	0xe86afb		488b9c24a0000000	MOVQ 0xa0(SP), BX											
  task_chain_controller.go:224	0xe86b03		488b8c24a8000000	MOVQ 0xa8(SP), CX											
  task_chain_controller.go:224	0xe86b0b		e8b0365eff		CALL runtime.convTslice(SB)										
  task_chain_controller.go:224	0xe86b10		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:224	0xe86b18		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:224	0xe86b20		488d0df4c12e00		LEAQ go:string.*+43027(SB), CX										
  task_chain_controller.go:224	0xe86b27		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:224	0xe86b2c		488d054ddd2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:224	0xe86b33		e8e8745eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:224	0xe86b38		488d15411e1b00		LEAQ runtime.types+342400(SB), DX									
  task_chain_controller.go:224	0xe86b3f		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:224	0xe86b42		833d07706d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:224	0xe86b49		750a			JNE 0xe86b55												
  task_chain_controller.go:224	0xe86b4b		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:224	0xe86b53		eb18			JMP 0xe86b6d												
  task_chain_controller.go:224	0xe86b55		e8e6185fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:224	0xe86b5a		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:224	0xe86b62		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:224	0xe86b65		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:224	0xe86b69		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:224	0xe86b6d		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:224	0xe86b71		488b8424e8000000	MOVQ 0xe8(SP), AX											
  task_chain_controller.go:224	0xe86b79		488b9c24b0000000	MOVQ 0xb0(SP), BX											
  task_chain_controller.go:224	0xe86b81		e89a355eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:224	0xe86b86		4889842458020000	MOVQ AX, 0x258(SP)											
  task_chain_controller.go:224	0xe86b8e		488b9c2460020000	MOVQ 0x260(SP), BX											
  task_chain_controller.go:224	0xe86b96		488d0d54c12e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:224	0xe86b9d		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:224	0xe86ba2		488d05d7dc2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:224	0xe86ba9		e872745eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:224	0xe86bae		488d0d6bbd1b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:224	0xe86bb5		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:224	0xe86bb8		833d916f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:224	0xe86bbf		90			NOPL													
  task_chain_controller.go:224	0xe86bc0		750a			JNE 0xe86bcc												
  task_chain_controller.go:224	0xe86bc2		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:224	0xe86bca		eb18			JMP 0xe86be4												
  task_chain_controller.go:224	0xe86bcc		e86f185fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:224	0xe86bd1		488b8c2458020000	MOVQ 0x258(SP), CX											
  task_chain_controller.go:224	0xe86bd9		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:224	0xe86bdc		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:224	0xe86be0		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:224	0xe86be4		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe86be8		488d0d91dc2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe86bef		48898c24d0010000	MOVQ CX, 0x1d0(SP)											
  context.go:1005		0xe86bf7		488b8c2460020000	MOVQ 0x260(SP), CX											
  context.go:1005		0xe86bff		48898c24d8010000	MOVQ CX, 0x1d8(SP)											
  context.go:1005		0xe86c07		488d05d2522400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe86c0e		488d9c24d0010000	LEAQ 0x1d0(SP), BX											
  context.go:1005		0xe86c16		e8858458ff		CALL runtime.convT(SB)											
  context.go:1005		0xe86c1b		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe86c20		488d0d0986fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe86c27		4889c7			MOVQ AX, DI												
  context.go:1005		0xe86c2a		488b842480020000	MOVQ 0x280(SP), AX											
  context.go:1005		0xe86c32		e8298bf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:225	0xe86c37		4881c470020000		ADDQ $__file_alignment__+112(SB), SP									
  task_chain_controller.go:225	0xe86c3e		5d			POPQ BP													
  task_chain_controller.go:225	0xe86c3f		90			NOPL													
  task_chain_controller.go:225	0xe86c40		c3			RET													
  task_chain_controller.go:204	0xe86c41		4ac7440a2000000000	MOVQ $0x0, 0x20(DX)(R9*1)										
  task_chain_controller.go:203	0xe86c4a		48ffc1			INCQ CX													
  task_chain_controller.go:203	0xe86c4d		4939c8			CMPQ R8, CX												
  task_chain_controller.go:203	0xe86c50		0f8e79f7ffff		JLE 0xe863cf												
  task_chain_controller.go:204	0xe86c56		4c69c9e0000000		IMULQ $.file+147(SB), CX, R9										
  task_chain_controller.go:204	0xe86c5d		4ac7440a2800000000	MOVQ $0x0, 0x28(DX)(R9*1)										
  task_chain_controller.go:204	0xe86c66		833de36e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:204	0xe86c6d		74d2			JE 0xe86c41												
  task_chain_controller.go:204	0xe86c6f		4e8b540a20		MOVQ 0x20(DX)(R9*1), R10										
  task_chain_controller.go:204	0xe86c74		e8a7175fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:204	0xe86c79		4d8913			MOVQ R10, 0(R11)											
  task_chain_controller.go:204	0xe86c7c		ebc3			JMP 0xe86c41												
  context.go:712		0xe86c7e		4d89ca			MOVQ R9, R10												
  context.go:712		0xe86c81		4d21c1			ANDQ R8, R9												
  context.go:712		0xe86c84		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe86c88		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe86c8d		4939db			CMPQ R11, BX												
  context.go:712		0xe86c90		7435			JE 0xe86cc7												
  context.go:712		0xe86c92		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe86c96		4d85db			TESTQ R11, R11												
  context.go:712		0xe86c99		75e3			JNE 0xe86c7e												
  context.go:712		0xe86c9b		4889942490010000	MOVQ DX, 0x190(SP)											
  context.go:712		0xe86ca3		488d05e6461300		LEAQ CAS-Backend/biz/controller..typeAssert.31(SB), AX							
  context.go:712		0xe86caa		e8318658ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe86caf		488b942490010000	MOVQ 0x190(SP), DX											
  context.go:712		0xe86cb7		4889c1			MOVQ AX, CX												
  context.go:752		0xe86cba		488b842468020000	MOVQ 0x268(SP), AX											
  context.go:712		0xe86cc2		e99eecffff		JMP 0xe85965												
  context.go:712		0xe86cc7		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe86ccc		e994ecffff		JMP 0xe85965												
  task_chain_controller.go:131	0xe86cd1		4889442408		MOVQ AX, 0x8(SP)											
  task_chain_controller.go:131	0xe86cd6		e805f85eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_chain_controller.go:131	0xe86cdb		488b442408		MOVQ 0x8(SP), AX											
  task_chain_controller.go:131	0xe86ce0		e91becffff		JMP CAS-Backend/biz/controller.ExcTaskChainHandler(SB)							
  :-1				0xe86ce5		cc			INT $__subsystem__(SB)											
  :-1				0xe86ce6		cc			INT $__subsystem__(SB)											
  :-1				0xe86ce7		cc			INT $__subsystem__(SB)											
  :-1				0xe86ce8		cc			INT $__subsystem__(SB)											
  :-1				0xe86ce9		cc			INT $__subsystem__(SB)											
  :-1				0xe86cea		cc			INT $__subsystem__(SB)											
  :-1				0xe86ceb		cc			INT $__subsystem__(SB)											
  :-1				0xe86cec		cc			INT $__subsystem__(SB)											
  :-1				0xe86ced		cc			INT $__subsystem__(SB)											
  :-1				0xe86cee		cc			INT $__subsystem__(SB)											
  :-1				0xe86cef		cc			INT $__subsystem__(SB)											
  :-1				0xe86cf0		cc			INT $__subsystem__(SB)											
  :-1				0xe86cf1		cc			INT $__subsystem__(SB)											
  :-1				0xe86cf2		cc			INT $__subsystem__(SB)											
  :-1				0xe86cf3		cc			INT $__subsystem__(SB)											
  :-1				0xe86cf4		cc			INT $__subsystem__(SB)											
  :-1				0xe86cf5		cc			INT $__subsystem__(SB)											
  :-1				0xe86cf6		cc			INT $__subsystem__(SB)											
  :-1				0xe86cf7		cc			INT $__subsystem__(SB)											
  :-1				0xe86cf8		cc			INT $__subsystem__(SB)											
  :-1				0xe86cf9		cc			INT $__subsystem__(SB)											
  :-1				0xe86cfa		cc			INT $__subsystem__(SB)											
  :-1				0xe86cfb		cc			INT $__subsystem__(SB)											
  :-1				0xe86cfc		cc			INT $__subsystem__(SB)											
  :-1				0xe86cfd		cc			INT $__subsystem__(SB)											
  :-1				0xe86cfe		cc			INT $__subsystem__(SB)											
  :-1				0xe86cff		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.ExcTaskChainHandler.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:214	0xe86d00		493b6610		CMPQ SP, 0x10(R14)							
  task_chain_controller.go:214	0xe86d04		763f			JBE 0xe86d45								
  task_chain_controller.go:214	0xe86d06		55			PUSHQ BP								
  task_chain_controller.go:214	0xe86d07		4889e5			MOVQ SP, BP								
  task_chain_controller.go:214	0xe86d0a		4883ec30		SUBQ $__major_os_version__+42(SB), SP					
  task_chain_controller.go:214	0xe86d0e		4889442440		MOVQ AX, 0x40(SP)							
  task_chain_controller.go:214	0xe86d13		48895c2448		MOVQ BX, 0x48(SP)							
  task_chain_controller.go:214	0xe86d18		488b4a08		MOVQ 0x8(DX), CX							
  task_chain_controller.go:214	0xe86d1c		488b7a10		MOVQ 0x10(DX), DI							
  task_chain_controller.go:214	0xe86d20		488b7218		MOVQ 0x18(DX), SI							
  task_chain_controller.go:214	0xe86d24		488b5220		MOVQ 0x20(DX), DX							
  task_chain_controller.go:214	0xe86d28		4889542428		MOVQ DX, 0x28(SP)							
  task_chain_controller.go:215	0xe86d2d		e82e20f9ff		CALL CAS-Backend/pkg/agvcontrol.SendForkliftSpecifiedPathNavigation(SB)	
  task_chain_controller.go:216	0xe86d32		488b542428		MOVQ 0x28(SP), DX							
  task_chain_controller.go:216	0xe86d37		8802			MOVB AL, 0(DX)								
  task_chain_controller.go:217	0xe86d39		4889d8			MOVQ BX, AX								
  task_chain_controller.go:217	0xe86d3c		4889cb			MOVQ CX, BX								
  task_chain_controller.go:217	0xe86d3f		4883c430		ADDQ $__major_os_version__+42(SB), SP					
  task_chain_controller.go:217	0xe86d43		5d			POPQ BP									
  task_chain_controller.go:217	0xe86d44		c3			RET									
  task_chain_controller.go:214	0xe86d45		4889442408		MOVQ AX, 0x8(SP)							
  task_chain_controller.go:214	0xe86d4a		48895c2410		MOVQ BX, 0x10(SP)							
  task_chain_controller.go:214	0xe86d4f		e80cf75eff		CALL runtime.morestack.abi0(SB)						
  task_chain_controller.go:214	0xe86d54		488b442408		MOVQ 0x8(SP), AX							
  task_chain_controller.go:214	0xe86d59		488b5c2410		MOVQ 0x10(SP), BX							
  task_chain_controller.go:214	0xe86d5e		6690			NOPW									
  task_chain_controller.go:214	0xe86d60		eb9e			JMP CAS-Backend/biz/controller.ExcTaskChainHandler.func2(SB)		
  :-1				0xe86d62		cc			INT $__subsystem__(SB)							
  :-1				0xe86d63		cc			INT $__subsystem__(SB)							
  :-1				0xe86d64		cc			INT $__subsystem__(SB)							
  :-1				0xe86d65		cc			INT $__subsystem__(SB)							
  :-1				0xe86d66		cc			INT $__subsystem__(SB)							
  :-1				0xe86d67		cc			INT $__subsystem__(SB)							
  :-1				0xe86d68		cc			INT $__subsystem__(SB)							
  :-1				0xe86d69		cc			INT $__subsystem__(SB)							
  :-1				0xe86d6a		cc			INT $__subsystem__(SB)							
  :-1				0xe86d6b		cc			INT $__subsystem__(SB)							
  :-1				0xe86d6c		cc			INT $__subsystem__(SB)							
  :-1				0xe86d6d		cc			INT $__subsystem__(SB)							
  :-1				0xe86d6e		cc			INT $__subsystem__(SB)							
  :-1				0xe86d6f		cc			INT $__subsystem__(SB)							
  :-1				0xe86d70		cc			INT $__subsystem__(SB)							
  :-1				0xe86d71		cc			INT $__subsystem__(SB)							
  :-1				0xe86d72		cc			INT $__subsystem__(SB)							
  :-1				0xe86d73		cc			INT $__subsystem__(SB)							
  :-1				0xe86d74		cc			INT $__subsystem__(SB)							
  :-1				0xe86d75		cc			INT $__subsystem__(SB)							
  :-1				0xe86d76		cc			INT $__subsystem__(SB)							
  :-1				0xe86d77		cc			INT $__subsystem__(SB)							
  :-1				0xe86d78		cc			INT $__subsystem__(SB)							
  :-1				0xe86d79		cc			INT $__subsystem__(SB)							
  :-1				0xe86d7a		cc			INT $__subsystem__(SB)							
  :-1				0xe86d7b		cc			INT $__subsystem__(SB)							
  :-1				0xe86d7c		cc			INT $__subsystem__(SB)							
  :-1				0xe86d7d		cc			INT $__subsystem__(SB)							
  :-1				0xe86d7e		cc			INT $__subsystem__(SB)							
  :-1				0xe86d7f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.ExcTaskChainHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:161	0xe86d80		493b6610		CMPQ SP, 0x10(R14)							
  task_chain_controller.go:161	0xe86d84		0f86a7000000		JBE 0xe86e31								
  task_chain_controller.go:161	0xe86d8a		55			PUSHQ BP								
  task_chain_controller.go:161	0xe86d8b		4889e5			MOVQ SP, BP								
  task_chain_controller.go:161	0xe86d8e		4883ec20		SUBQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:163	0xe86d92		48895c2438		MOVQ BX, 0x38(SP)							
  task_chain_controller.go:163	0xe86d97		4889442430		MOVQ AX, 0x30(SP)							
  task_chain_controller.go:161	0xe86d9c		488b4a08		MOVQ 0x8(DX), CX							
  task_chain_controller.go:161	0xe86da0		48894c2418		MOVQ CX, 0x18(SP)							
  task_chain_controller.go:162	0xe86da5		e8d6caf8ff		CALL CAS-Backend/pkg/agvcontrol.QueryControlOwner(SB)			
  task_chain_controller.go:163	0xe86daa		4885db			TESTQ BX, BX								
  task_chain_controller.go:163	0xe86dad		7576			JNE 0xe86e25								
  task_chain_controller.go:166	0xe86daf		e84ccaf8ff		CALL CAS-Backend/pkg/agvcontrol.ControlOwnerAllowsManualDispatch(SB)	
  task_chain_controller.go:166	0xe86db4		84c0			TESTL AL, AL								
  task_chain_controller.go:166	0xe86db6		7459			JE 0xe86e11								
  task_chain_controller.go:169	0xe86db8		90			NOPL									
  kongzhi.go:1128		0xe86db9		488b442430		MOVQ 0x30(SP), AX							
  kongzhi.go:1128		0xe86dbe		488b5c2438		MOVQ 0x38(SP), BX							
  kongzhi.go:1128		0xe86dc3		31c9			XORL CX, CX								
  kongzhi.go:1128		0xe86dc5		e8f66af9ff		CALL CAS-Backend/pkg/agvcontrol.queryAMRLocation(SB)			
  task_chain_controller.go:170	0xe86dca		4885db			TESTQ BX, BX								
  task_chain_controller.go:170	0xe86dcd		7536			JNE 0xe86e05								
  task_chain_controller.go:173	0xe86dcf		488b4850		MOVQ 0x50(AX), CX							
  task_chain_controller.go:173	0xe86dd3		488b5048		MOVQ 0x48(AX), DX							
  task_chain_controller.go:173	0xe86dd7		488b742418		MOVQ 0x18(SP), SI							
  task_chain_controller.go:173	0xe86ddc		48894e08		MOVQ CX, 0x8(SI)							
  task_chain_controller.go:173	0xe86de0		833d696d6d0200		CMPL runtime.writeBarrier(SB), $0x0					
  task_chain_controller.go:173	0xe86de7		740f			JE 0xe86df8								
  task_chain_controller.go:173	0xe86de9		e852165fff		CALL runtime.gcWriteBarrier2(SB)					
  task_chain_controller.go:173	0xe86dee		498913			MOVQ DX, 0(R11)								
  task_chain_controller.go:173	0xe86df1		488b0e			MOVQ 0(SI), CX								
  task_chain_controller.go:173	0xe86df4		49894b08		MOVQ CX, 0x8(R11)							
  task_chain_controller.go:173	0xe86df8		488916			MOVQ DX, 0(SI)								
  task_chain_controller.go:174	0xe86dfb		31c0			XORL AX, AX								
  task_chain_controller.go:174	0xe86dfd		31db			XORL BX, BX								
  task_chain_controller.go:174	0xe86dff		4883c420		ADDQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:174	0xe86e03		5d			POPQ BP									
  task_chain_controller.go:174	0xe86e04		c3			RET									
  task_chain_controller.go:171	0xe86e05		4889d8			MOVQ BX, AX								
  task_chain_controller.go:171	0xe86e08		4889cb			MOVQ CX, BX								
  task_chain_controller.go:171	0xe86e0b		4883c420		ADDQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:171	0xe86e0f		5d			POPQ BP									
  task_chain_controller.go:171	0xe86e10		c3			RET									
  task_chain_controller.go:167	0xe86e11		488b0538fd1200		MOVQ CAS-Backend/pkg/agvcontrol.ErrNoControlPermission(SB), AX		
  task_chain_controller.go:167	0xe86e18		488b1d39fd1200		MOVQ CAS-Backend/pkg/agvcontrol.ErrNoControlPermission+8(SB), BX	
  task_chain_controller.go:167	0xe86e1f		4883c420		ADDQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:167	0xe86e23		5d			POPQ BP									
  task_chain_controller.go:167	0xe86e24		c3			RET									
  task_chain_controller.go:164	0xe86e25		4889d8			MOVQ BX, AX								
  task_chain_controller.go:164	0xe86e28		4889cb			MOVQ CX, BX								
  task_chain_controller.go:164	0xe86e2b		4883c420		ADDQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:164	0xe86e2f		5d			POPQ BP									
  task_chain_controller.go:164	0xe86e30		c3			RET									
  task_chain_controller.go:161	0xe86e31		4889442408		MOVQ AX, 0x8(SP)							
  task_chain_controller.go:161	0xe86e36		48895c2410		MOVQ BX, 0x10(SP)							
  task_chain_controller.go:161	0xe86e3b		0f1f440000		NOPL 0(AX)(AX*1)							
  task_chain_controller.go:161	0xe86e40		e81bf65eff		CALL runtime.morestack.abi0(SB)						
  task_chain_controller.go:161	0xe86e45		488b442408		MOVQ 0x8(SP), AX							
  task_chain_controller.go:161	0xe86e4a		488b5c2410		MOVQ 0x10(SP), BX							
  task_chain_controller.go:161	0xe86e4f		e92cffffff		JMP CAS-Backend/biz/controller.ExcTaskChainHandler.func1(SB)		
  :-1				0xe86e54		cc			INT $__subsystem__(SB)							
  :-1				0xe86e55		cc			INT $__subsystem__(SB)							
  :-1				0xe86e56		cc			INT $__subsystem__(SB)							
  :-1				0xe86e57		cc			INT $__subsystem__(SB)							
  :-1				0xe86e58		cc			INT $__subsystem__(SB)							
  :-1				0xe86e59		cc			INT $__subsystem__(SB)							
  :-1				0xe86e5a		cc			INT $__subsystem__(SB)							
  :-1				0xe86e5b		cc			INT $__subsystem__(SB)							
  :-1				0xe86e5c		cc			INT $__subsystem__(SB)							
  :-1				0xe86e5d		cc			INT $__subsystem__(SB)							
  :-1				0xe86e5e		cc			INT $__subsystem__(SB)							
  :-1				0xe86e5f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.taskChainStatusFromDB(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:249	0xe86e60		4c8da42408ffffff	LEAQ 0xffffff08(SP), R12					
  task_chain_controller.go:249	0xe86e68		4d3b6610		CMPQ R12, 0x10(R14)						
  task_chain_controller.go:249	0xe86e6c		0f8605010000		JBE 0xe86f77							
  task_chain_controller.go:249	0xe86e72		55			PUSHQ BP							
  task_chain_controller.go:249	0xe86e73		4889e5			MOVQ SP, BP							
  task_chain_controller.go:249	0xe86e76		4881ec70010000		SUBQ $.file+291(SB), SP						
  task_chain_controller.go:249	0xe86e7d		0f1f00			NOPL 0(AX)							
  task_chain_controller.go:250	0xe86e80		4885c0			TESTQ AX, AX							
  task_chain_controller.go:250	0xe86e83		0f8ede000000		JLE 0xe86f67							
  task_chain_controller.go:253	0xe86e89		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)						
  task_chain_controller.go:253	0xe86e92		488dbc2400010000	LEAQ 0x100(SP), DI						
  task_chain_controller.go:253	0xe86e9a		488d7ff0		LEAQ -0x10(DI), DI						
  task_chain_controller.go:253	0xe86e9e		6690			NOPW								
  task_chain_controller.go:253	0xe86ea0		48896c24f0		MOVQ BP, -0x10(SP)						
  task_chain_controller.go:253	0xe86ea5		488d6c24f0		LEAQ -0x10(SP), BP						
  task_chain_controller.go:253	0xe86eaa		e8371c5fff		CALL 0x478ae6							
  task_chain_controller.go:253	0xe86eaf		488b6d00		MOVQ 0(BP), BP							
  task_chain_controller.go:253	0xe86eb3		e86801b1ff		CALL CAS-Backend/biz/dao.Select1TaskChain(SB)			
  task_chain_controller.go:253	0xe86eb8		488b0c24		MOVQ 0(SP), CX							
  task_chain_controller.go:253	0xe86ebc		48898c24f8000000	MOVQ CX, 0xf8(SP)						
  task_chain_controller.go:253	0xe86ec4		488dbc2400010000	LEAQ 0x100(SP), DI						
  task_chain_controller.go:253	0xe86ecc		488d742408		LEAQ 0x8(SP), SI						
  task_chain_controller.go:253	0xe86ed1		660f1f840000000000	NOPW 0(AX)(AX*1)						
  task_chain_controller.go:253	0xe86eda		660f1f440000		NOPW 0(AX)(AX*1)						
  task_chain_controller.go:253	0xe86ee0		48896c24f0		MOVQ BP, -0x10(SP)						
  task_chain_controller.go:253	0xe86ee5		488d6c24f0		LEAQ -0x10(SP), BP						
  task_chain_controller.go:253	0xe86eea		e84f1f5fff		CALL 0x478e3e							
  task_chain_controller.go:253	0xe86eef		488b6d00		MOVQ 0(BP), BP							
  task_chain_controller.go:253	0xe86ef3		488b8c24f8000000	MOVQ 0xf8(SP), CX						
  task_chain_controller.go:253	0xe86efb		48898c2480000000	MOVQ CX, 0x80(SP)						
  task_chain_controller.go:253	0xe86f03		488dbc2488000000	LEAQ 0x88(SP), DI						
  task_chain_controller.go:253	0xe86f0b		488db42400010000	LEAQ 0x100(SP), SI						
  task_chain_controller.go:253	0xe86f13		660f1f840000000000	NOPW 0(AX)(AX*1)						
  task_chain_controller.go:253	0xe86f1c		0f1f4000		NOPL 0(AX)							
  task_chain_controller.go:253	0xe86f20		48896c24f0		MOVQ BP, -0x10(SP)						
  task_chain_controller.go:253	0xe86f25		488d6c24f0		LEAQ -0x10(SP), BP						
  task_chain_controller.go:253	0xe86f2a		e80f1f5fff		CALL 0x478e3e							
  task_chain_controller.go:253	0xe86f2f		488b6d00		MOVQ 0(BP), BP							
  task_chain_controller.go:253	0xe86f33		84c0			TESTL AL, AL							
  task_chain_controller.go:254	0xe86f35		7420			JE 0xe86f57							
  task_chain_controller.go:257	0xe86f37		488b8c24b8000000	MOVQ 0xb8(SP), CX						
  task_chain_controller.go:257	0xe86f3f		48890da2646d02		MOVQ CX, CAS-Backend/biz/controller.taskChainStatus(SB)		
  task_chain_controller.go:258	0xe86f46		488b8424b8000000	MOVQ 0xb8(SP), AX						
  task_chain_controller.go:258	0xe86f4e		4881c470010000		ADDQ $.file+291(SB), SP						
  task_chain_controller.go:258	0xe86f55		5d			POPQ BP								
  task_chain_controller.go:258	0xe86f56		c3			RET								
  task_chain_controller.go:255	0xe86f57		488b058a646d02		MOVQ CAS-Backend/biz/controller.taskChainStatus(SB), AX		
  task_chain_controller.go:255	0xe86f5e		4881c470010000		ADDQ $.file+291(SB), SP						
  task_chain_controller.go:255	0xe86f65		5d			POPQ BP								
  task_chain_controller.go:255	0xe86f66		c3			RET								
  task_chain_controller.go:251	0xe86f67		488b057a646d02		MOVQ CAS-Backend/biz/controller.taskChainStatus(SB), AX		
  task_chain_controller.go:251	0xe86f6e		4881c470010000		ADDQ $.file+291(SB), SP						
  task_chain_controller.go:251	0xe86f75		5d			POPQ BP								
  task_chain_controller.go:251	0xe86f76		c3			RET								
  task_chain_controller.go:249	0xe86f77		4889442408		MOVQ AX, 0x8(SP)						
  task_chain_controller.go:249	0xe86f7c		0f1f4000		NOPL 0(AX)							
  task_chain_controller.go:249	0xe86f80		e85bf55eff		CALL runtime.morestack_noctxt.abi0(SB)				
  task_chain_controller.go:249	0xe86f85		488b442408		MOVQ 0x8(SP), AX						
  task_chain_controller.go:249	0xe86f8a		e9d1feffff		JMP CAS-Backend/biz/controller.taskChainStatusFromDB(SB)	
  :-1				0xe86f8f		cc			INT $__subsystem__(SB)						
  :-1				0xe86f90		cc			INT $__subsystem__(SB)						
  :-1				0xe86f91		cc			INT $__subsystem__(SB)						
  :-1				0xe86f92		cc			INT $__subsystem__(SB)						
  :-1				0xe86f93		cc			INT $__subsystem__(SB)						
  :-1				0xe86f94		cc			INT $__subsystem__(SB)						
  :-1				0xe86f95		cc			INT $__subsystem__(SB)						
  :-1				0xe86f96		cc			INT $__subsystem__(SB)						
  :-1				0xe86f97		cc			INT $__subsystem__(SB)						
  :-1				0xe86f98		cc			INT $__subsystem__(SB)						
  :-1				0xe86f99		cc			INT $__subsystem__(SB)						
  :-1				0xe86f9a		cc			INT $__subsystem__(SB)						
  :-1				0xe86f9b		cc			INT $__subsystem__(SB)						
  :-1				0xe86f9c		cc			INT $__subsystem__(SB)						
  :-1				0xe86f9d		cc			INT $__subsystem__(SB)						
  :-1				0xe86f9e		cc			INT $__subsystem__(SB)						
  :-1				0xe86f9f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.normalizeTaskIDList(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:261	0xe86fa0		493b6610		CMPQ SP, 0x10(R14)					
  task_chain_controller.go:261	0xe86fa4		0f862f010000		JBE 0xe870d9						
  task_chain_controller.go:261	0xe86faa		55			PUSHQ BP						
  task_chain_controller.go:261	0xe86fab		4889e5			MOVQ SP, BP						
  task_chain_controller.go:261	0xe86fae		4883ec78		SUBQ $.file+43(SB), SP					
  task_chain_controller.go:263	0xe86fb2		4889842488000000	MOVQ AX, 0x88(SP)					
  task_chain_controller.go:263	0xe86fba		48899c2490000000	MOVQ BX, 0x90(SP)					
  task_chain_controller.go:262	0xe86fc2		4889d9			MOVQ BX, CX						
  task_chain_controller.go:262	0xe86fc5		31db			XORL BX, BX						
  task_chain_controller.go:262	0xe86fc7		488d0552b91b00		LEAQ runtime.types+383264(SB), AX			
  task_chain_controller.go:262	0xe86fce		e88dab5eff		CALL runtime.makeslice(SB)				
  task_chain_controller.go:263	0xe86fd3		488b942488000000	MOVQ 0x88(SP), DX					
  task_chain_controller.go:263	0xe86fdb		488b8c2490000000	MOVQ 0x90(SP), CX					
  task_chain_controller.go:266	0xe86fe3		4889cb			MOVQ CX, BX						
  task_chain_controller.go:266	0xe86fe6		31f6			XORL SI, SI						
  task_chain_controller.go:263	0xe86fe8		eb20			JMP 0xe8700a						
  task_chain_controller.go:263	0xe86fea		488b7c2470		MOVQ 0x70(SP), DI					
  task_chain_controller.go:263	0xe86fef		4883c710		ADDQ $__major_os_version__+10(SB), DI			
  task_chain_controller.go:263	0xe86ff3		4c8b442458		MOVQ 0x58(SP), R8					
  task_chain_controller.go:263	0xe86ff8		49ffc8			DECQ R8							
  task_chain_controller.go:266	0xe86ffb		4889cb			MOVQ CX, BX						
  task_chain_controller.go:266	0xe86ffe		4889f0			MOVQ SI, AX						
  task_chain_controller.go:266	0xe87001		4889d6			MOVQ DX, SI						
  task_chain_controller.go:263	0xe87004		4c89c1			MOVQ R8, CX						
  task_chain_controller.go:263	0xe87007		4889fa			MOVQ DI, DX						
  task_chain_controller.go:263	0xe8700a		4885c9			TESTQ CX, CX						
  task_chain_controller.go:263	0xe8700d		0f8eba000000		JLE 0xe870cd						
  task_chain_controller.go:263	0xe87013		48894c2458		MOVQ CX, 0x58(SP)					
  task_chain_controller.go:266	0xe87018		48895c2448		MOVQ BX, 0x48(SP)					
  task_chain_controller.go:266	0xe8701d		4889742440		MOVQ SI, 0x40(SP)					
  task_chain_controller.go:266	0xe87022		4889442460		MOVQ AX, 0x60(SP)					
  task_chain_controller.go:263	0xe87027		4889542470		MOVQ DX, 0x70(SP)					
  task_chain_controller.go:263	0xe8702c		488b02			MOVQ 0(DX), AX						
  task_chain_controller.go:263	0xe8702f		488b5a08		MOVQ 0x8(DX), BX					
  task_chain_controller.go:264	0xe87033		e888b965ff		CALL strings.TrimSpace(SB)				
  task_chain_controller.go:265	0xe87038		4885db			TESTQ BX, BX						
  task_chain_controller.go:265	0xe8703b		747c			JE 0xe870b9						
  task_chain_controller.go:266	0xe8703d		488b542440		MOVQ 0x40(SP), DX					
  task_chain_controller.go:266	0xe87042		48ffc2			INCQ DX							
  task_chain_controller.go:266	0xe87045		488b4c2448		MOVQ 0x48(SP), CX					
  task_chain_controller.go:266	0xe8704a		4839d1			CMPQ CX, DX						
  task_chain_controller.go:266	0xe8704d		7207			JB 0xe87056						
  task_chain_controller.go:266	0xe8704f		488b742460		MOVQ 0x60(SP), SI					
  task_chain_controller.go:266	0xe87054		eb33			JMP 0xe87089						
  task_chain_controller.go:264	0xe87056		4889442468		MOVQ AX, 0x68(SP)					
  task_chain_controller.go:264	0xe8705b		48895c2450		MOVQ BX, 0x50(SP)					
  task_chain_controller.go:266	0xe87060		488b442460		MOVQ 0x60(SP), AX					
  task_chain_controller.go:266	0xe87065		4889d3			MOVQ DX, BX						
  task_chain_controller.go:266	0xe87068		bf01000000		MOVL $__minor_os_version__(SB), DI			
  task_chain_controller.go:266	0xe8706d		488d35acb81b00		LEAQ runtime.types+383264(SB), SI			
  task_chain_controller.go:266	0xe87074		e8c7ab5eff		CALL runtime.growslice(SB)				
  task_chain_controller.go:266	0xe87079		4889c6			MOVQ AX, SI						
  task_chain_controller.go:266	0xe8707c		4889da			MOVQ BX, DX						
  task_chain_controller.go:266	0xe8707f		488b442468		MOVQ 0x68(SP), AX					
  task_chain_controller.go:266	0xe87084		488b5c2450		MOVQ 0x50(SP), BX					
  task_chain_controller.go:266	0xe87089		488d7aff		LEAQ -0x1(DX), DI					
  task_chain_controller.go:266	0xe8708d		48c1e704		SHLQ $__subsystem__+1(SB), DI				
  task_chain_controller.go:266	0xe87091		48895c3e08		MOVQ BX, 0x8(SI)(DI*1)					
  task_chain_controller.go:266	0xe87096		833db36a6d0200		CMPL runtime.writeBarrier(SB), $0x0			
  task_chain_controller.go:266	0xe8709d		7411			JE 0xe870b0						
  task_chain_controller.go:266	0xe8709f		90			NOPL							
  task_chain_controller.go:266	0xe870a0		e89b135fff		CALL runtime.gcWriteBarrier2(SB)			
  task_chain_controller.go:266	0xe870a5		498903			MOVQ AX, 0(R11)						
  task_chain_controller.go:266	0xe870a8		4c8b043e		MOVQ 0(SI)(DI*1), R8					
  task_chain_controller.go:266	0xe870ac		4d894308		MOVQ R8, 0x8(R11)					
  task_chain_controller.go:266	0xe870b0		4889043e		MOVQ AX, 0(SI)(DI*1)					
  task_chain_controller.go:266	0xe870b4		e931ffffff		JMP 0xe86fea						
  task_chain_controller.go:266	0xe870b9		488b542440		MOVQ 0x40(SP), DX					
  task_chain_controller.go:266	0xe870be		488b4c2448		MOVQ 0x48(SP), CX					
  task_chain_controller.go:266	0xe870c3		488b742460		MOVQ 0x60(SP), SI					
  task_chain_controller.go:265	0xe870c8		e91dffffff		JMP 0xe86fea						
  task_chain_controller.go:269	0xe870cd		4889d9			MOVQ BX, CX						
  task_chain_controller.go:269	0xe870d0		4889f3			MOVQ SI, BX						
  task_chain_controller.go:269	0xe870d3		4883c478		ADDQ $.file+43(SB), SP					
  task_chain_controller.go:269	0xe870d7		5d			POPQ BP							
  task_chain_controller.go:269	0xe870d8		c3			RET							
  task_chain_controller.go:261	0xe870d9		4889442408		MOVQ AX, 0x8(SP)					
  task_chain_controller.go:261	0xe870de		48895c2410		MOVQ BX, 0x10(SP)					
  task_chain_controller.go:261	0xe870e3		48894c2418		MOVQ CX, 0x18(SP)					
  task_chain_controller.go:261	0xe870e8		e8f3f35eff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_chain_controller.go:261	0xe870ed		488b442408		MOVQ 0x8(SP), AX					
  task_chain_controller.go:261	0xe870f2		488b5c2410		MOVQ 0x10(SP), BX					
  task_chain_controller.go:261	0xe870f7		488b4c2418		MOVQ 0x18(SP), CX					
  task_chain_controller.go:261	0xe870fc		0f1f4000		NOPL 0(AX)						
  task_chain_controller.go:261	0xe87100		e99bfeffff		JMP CAS-Backend/biz/controller.normalizeTaskIDList(SB)	
  :-1				0xe87105		cc			INT $__subsystem__(SB)					
  :-1				0xe87106		cc			INT $__subsystem__(SB)					
  :-1				0xe87107		cc			INT $__subsystem__(SB)					
  :-1				0xe87108		cc			INT $__subsystem__(SB)					
  :-1				0xe87109		cc			INT $__subsystem__(SB)					
  :-1				0xe8710a		cc			INT $__subsystem__(SB)					
  :-1				0xe8710b		cc			INT $__subsystem__(SB)					
  :-1				0xe8710c		cc			INT $__subsystem__(SB)					
  :-1				0xe8710d		cc			INT $__subsystem__(SB)					
  :-1				0xe8710e		cc			INT $__subsystem__(SB)					
  :-1				0xe8710f		cc			INT $__subsystem__(SB)					
  :-1				0xe87110		cc			INT $__subsystem__(SB)					
  :-1				0xe87111		cc			INT $__subsystem__(SB)					
  :-1				0xe87112		cc			INT $__subsystem__(SB)					
  :-1				0xe87113		cc			INT $__subsystem__(SB)					
  :-1				0xe87114		cc			INT $__subsystem__(SB)					
  :-1				0xe87115		cc			INT $__subsystem__(SB)					
  :-1				0xe87116		cc			INT $__subsystem__(SB)					
  :-1				0xe87117		cc			INT $__subsystem__(SB)					
  :-1				0xe87118		cc			INT $__subsystem__(SB)					
  :-1				0xe87119		cc			INT $__subsystem__(SB)					
  :-1				0xe8711a		cc			INT $__subsystem__(SB)					
  :-1				0xe8711b		cc			INT $__subsystem__(SB)					
  :-1				0xe8711c		cc			INT $__subsystem__(SB)					
  :-1				0xe8711d		cc			INT $__subsystem__(SB)					
  :-1				0xe8711e		cc			INT $__subsystem__(SB)					
  :-1				0xe8711f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.updateTaskChainStatusRecord(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:272	0xe87120		493b6610		CMPQ SP, 0x10(R14)						
  task_chain_controller.go:272	0xe87124		0f86ab000000		JBE 0xe871d5							
  task_chain_controller.go:272	0xe8712a		55			PUSHQ BP							
  task_chain_controller.go:272	0xe8712b		4889e5			MOVQ SP, BP							
  task_chain_controller.go:272	0xe8712e		4883ec28		SUBQ $__major_os_version__+34(SB), SP				
  task_chain_controller.go:273	0xe87132		4885c0			TESTQ AX, AX							
  task_chain_controller.go:273	0xe87135		0f8e88000000		JLE 0xe871c3							
  task_chain_controller.go:273	0xe8713b		4889442438		MOVQ AX, 0x38(SP)						
  task_chain_controller.go:273	0xe87140		48895c2440		MOVQ BX, 0x40(SP)						
  task_chain_controller.go:277	0xe87145		4883fb04		CMPQ BX, $__subsystem__+1(SB)					
  task_chain_controller.go:277	0xe87149		740c			JE 0xe87157							
  task_chain_controller.go:277	0xe8714b		4883fb05		CMPQ BX, $__subsystem__+2(SB)					
  task_chain_controller.go:277	0xe8714f		7406			JE 0xe87157							
  task_chain_controller.go:277	0xe87151		4883fb06		CMPQ BX, $__major_os_version__(SB)				
  task_chain_controller.go:277	0xe87155		7540			JNE 0xe87197							
  task_chain_controller.go:278	0xe87157		e8446f62ff		CALL time.Now(SB)						
  task_chain_controller.go:278	0xe8715c		4889df			MOVQ BX, DI							
  task_chain_controller.go:278	0xe8715f		4889ce			MOVQ CX, SI							
  task_chain_controller.go:278	0xe87162		488b5c2440		MOVQ 0x40(SP), BX						
  task_chain_controller.go:278	0xe87167		4889c1			MOVQ AX, CX							
  task_chain_controller.go:278	0xe8716a		488b442438		MOVQ 0x38(SP), AX						
  task_chain_controller.go:278	0xe8716f		e88c05b1ff		CALL CAS-Backend/biz/dao.UpdateTaskChainCompletion(SB)		
  task_chain_controller.go:278	0xe87174		84c0			TESTL AL, AL							
  task_chain_controller.go:278	0xe87176		7417			JE 0xe8718f							
  task_chain_controller.go:281	0xe87178		488b4c2440		MOVQ 0x40(SP), CX						
  task_chain_controller.go:281	0xe8717d		48890d64626d02		MOVQ CX, CAS-Backend/biz/controller.taskChainStatus(SB)		
  task_chain_controller.go:282	0xe87184		b801000000		MOVL $__minor_os_version__(SB), AX				
  task_chain_controller.go:282	0xe87189		4883c428		ADDQ $__major_os_version__+34(SB), SP				
  task_chain_controller.go:282	0xe8718d		5d			POPQ BP								
  task_chain_controller.go:282	0xe8718e		c3			RET								
  task_chain_controller.go:279	0xe8718f		31c0			XORL AX, AX							
  task_chain_controller.go:279	0xe87191		4883c428		ADDQ $__major_os_version__+34(SB), SP				
  task_chain_controller.go:279	0xe87195		5d			POPQ BP								
  task_chain_controller.go:279	0xe87196		c3			RET								
  task_chain_controller.go:284	0xe87197		e86403b1ff		CALL CAS-Backend/biz/dao.UpdateTaskChainStatusByID(SB)		
  task_chain_controller.go:284	0xe8719c		0f1f4000		NOPL 0(AX)							
  task_chain_controller.go:284	0xe871a0		84c0			TESTL AL, AL							
  task_chain_controller.go:284	0xe871a2		7417			JE 0xe871bb							
  task_chain_controller.go:287	0xe871a4		488b4c2440		MOVQ 0x40(SP), CX						
  task_chain_controller.go:287	0xe871a9		48890d38626d02		MOVQ CX, CAS-Backend/biz/controller.taskChainStatus(SB)		
  task_chain_controller.go:288	0xe871b0		b801000000		MOVL $__minor_os_version__(SB), AX				
  task_chain_controller.go:288	0xe871b5		4883c428		ADDQ $__major_os_version__+34(SB), SP				
  task_chain_controller.go:288	0xe871b9		5d			POPQ BP								
  task_chain_controller.go:288	0xe871ba		c3			RET								
  task_chain_controller.go:285	0xe871bb		31c0			XORL AX, AX							
  task_chain_controller.go:285	0xe871bd		4883c428		ADDQ $__major_os_version__+34(SB), SP				
  task_chain_controller.go:285	0xe871c1		5d			POPQ BP								
  task_chain_controller.go:285	0xe871c2		c3			RET								
  task_chain_controller.go:274	0xe871c3		48891d1e626d02		MOVQ BX, CAS-Backend/biz/controller.taskChainStatus(SB)		
  task_chain_controller.go:275	0xe871ca		b801000000		MOVL $__minor_os_version__(SB), AX				
  task_chain_controller.go:275	0xe871cf		4883c428		ADDQ $__major_os_version__+34(SB), SP				
  task_chain_controller.go:275	0xe871d3		5d			POPQ BP								
  task_chain_controller.go:275	0xe871d4		c3			RET								
  task_chain_controller.go:272	0xe871d5		4889442408		MOVQ AX, 0x8(SP)						
  task_chain_controller.go:272	0xe871da		48895c2410		MOVQ BX, 0x10(SP)						
  task_chain_controller.go:272	0xe871df		90			NOPL								
  task_chain_controller.go:272	0xe871e0		e8fbf25eff		CALL runtime.morestack_noctxt.abi0(SB)				
  task_chain_controller.go:272	0xe871e5		488b442408		MOVQ 0x8(SP), AX						
  task_chain_controller.go:272	0xe871ea		488b5c2410		MOVQ 0x10(SP), BX						
  task_chain_controller.go:272	0xe871ef		e92cffffff		JMP CAS-Backend/biz/controller.updateTaskChainStatusRecord(SB)	
  :-1				0xe871f4		cc			INT $__subsystem__(SB)						
  :-1				0xe871f5		cc			INT $__subsystem__(SB)						
  :-1				0xe871f6		cc			INT $__subsystem__(SB)						
  :-1				0xe871f7		cc			INT $__subsystem__(SB)						
  :-1				0xe871f8		cc			INT $__subsystem__(SB)						
  :-1				0xe871f9		cc			INT $__subsystem__(SB)						
  :-1				0xe871fa		cc			INT $__subsystem__(SB)						
  :-1				0xe871fb		cc			INT $__subsystem__(SB)						
  :-1				0xe871fc		cc			INT $__subsystem__(SB)						
  :-1				0xe871fd		cc			INT $__subsystem__(SB)						
  :-1				0xe871fe		cc			INT $__subsystem__(SB)						
  :-1				0xe871ff		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.TaskChainStatusHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:291	0xe87200		4c8da42478feffff		LEAQ 0xfffffe78(SP), R12										
  task_chain_controller.go:291	0xe87208		4d3b6610			CMPQ R12, 0x10(R14)											
  task_chain_controller.go:291	0xe8720c		0f86ef080000			JBE 0xe87b01												
  task_chain_controller.go:291	0xe87212		55				PUSHQ BP												
  task_chain_controller.go:291	0xe87213		4889e5				MOVQ SP, BP												
  task_chain_controller.go:291	0xe87216		4881ec00020000			SUBQ $__file_alignment__(SB), SP									
  task_controller.go:23		0xe8721d		4889842410020000		MOVQ AX, 0x210(SP)											
  task_chain_controller.go:292	0xe87225		488d1d27d12e00			LEAQ go:string.*+48715(SB), BX										
  task_chain_controller.go:292	0xe8722c		b908000000			MOVL $__major_os_version__+2(SB), CX									
  task_chain_controller.go:292	0xe87231		e88a4df7ff			CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_chain_controller.go:292	0xe87236		e8654066ff			CALL strconv.Atoi(SB)											
  task_chain_controller.go:292	0xe8723b		4889442458			MOVQ AX, 0x58(SP)											
  context.go:465		0xe87240		488d1dd4ba2e00			LEAQ go:string.*+43027(SB), BX										
  context.go:465		0xe87247		b907000000			MOVL $__major_os_version__+1(SB), CX									
  context.go:465		0xe8724c		488b842410020000		MOVQ 0x210(SP), AX											
  context.go:465		0xe87254		e8674ff7ff			CALL github.com/gin-gonic/gin.(*Context).GetQueryArray(SB)						
  task_chain_controller.go:293	0xe87259		e842fdffff			CALL CAS-Backend/biz/controller.normalizeTaskIDList(SB)							
  task_chain_controller.go:293	0xe8725e		4889842480000000		MOVQ AX, 0x80(SP)											
  task_chain_controller.go:293	0xe87266		48895c2440			MOVQ BX, 0x40(SP)											
  task_chain_controller.go:293	0xe8726b		48894c2448			MOVQ CX, 0x48(SP)											
  task_chain_controller.go:294	0xe87270		488b842410020000		MOVQ 0x210(SP), AX											
  task_chain_controller.go:294	0xe87278		488d1dd7f02e00			LEAQ go:string.*+56910(SB), BX										
  task_chain_controller.go:294	0xe8727f		b90a000000			MOVL $__major_os_version__+4(SB), CX									
  task_chain_controller.go:294	0xe87284		e8374df7ff			CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  task_chain_controller.go:294	0xe87289		4889842490000000		MOVQ AX, 0x90(SP)											
  task_chain_controller.go:294	0xe87291		48895c2450			MOVQ BX, 0x50(SP)											
  task_chain_controller.go:296	0xe87296		440f11bc2498000000		MOVUPS X15, 0x98(SP)											
  task_chain_controller.go:296	0xe8729f		440f11bc24a8000000		MOVUPS X15, 0xa8(SP)											
  task_chain_controller.go:296	0xe872a8		440f11bc24b8000000		MOVUPS X15, 0xb8(SP)											
  task_chain_controller.go:296	0xe872b1		488b442458			MOVQ 0x58(SP), AX											
  task_chain_controller.go:296	0xe872b6		e8e52d5eff			CALL runtime.convT64(SB)										
  task_chain_controller.go:296	0xe872bb		488d159eb81b00			LEAQ runtime.types+383840(SB), DX									
  task_chain_controller.go:296	0xe872c2		4889942498000000		MOVQ DX, 0x98(SP)											
  task_chain_controller.go:296	0xe872ca		48898424a0000000		MOVQ AX, 0xa0(SP)											
  task_chain_controller.go:296	0xe872d2		488b842480000000		MOVQ 0x80(SP), AX											
  task_chain_controller.go:296	0xe872da		488b5c2440			MOVQ 0x40(SP), BX											
  task_chain_controller.go:296	0xe872df		488b4c2448			MOVQ 0x48(SP), CX											
  task_chain_controller.go:296	0xe872e4		e8d72e5eff			CALL runtime.convTslice(SB)										
  task_chain_controller.go:296	0xe872e9		488d1590161b00			LEAQ runtime.types+342400(SB), DX									
  task_chain_controller.go:296	0xe872f0		48899424a8000000		MOVQ DX, 0xa8(SP)											
  task_chain_controller.go:296	0xe872f8		48898424b0000000		MOVQ AX, 0xb0(SP)											
  task_chain_controller.go:296	0xe87300		488b842490000000		MOVQ 0x90(SP), AX											
  task_chain_controller.go:296	0xe87308		488b5c2450			MOVQ 0x50(SP), BX											
  task_chain_controller.go:296	0xe8730d		e80e2e5eff			CALL runtime.convTstring(SB)										
  task_chain_controller.go:296	0xe87312		488d1507b61b00			LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:296	0xe87319		48899424b8000000		MOVQ DX, 0xb8(SP)											
  task_chain_controller.go:296	0xe87321		48898424c0000000		MOVQ AX, 0xc0(SP)											
  print.go:233			0xe87329		488b1d50ad6802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe87330		488d05a947fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe87337		488d0db3f03100			LEAQ go:string.*+253673(SB), CX										
  print.go:233			0xe8733e		bf44000000			MOVL $__major_os_version__+62(SB), DI									
  print.go:233			0xe87343		488db42498000000		LEAQ 0x98(SP), SI											
  print.go:233			0xe8734b		41b803000000			MOVL $__subsystem__(SB), R8										
  print.go:233			0xe87351		4d89c1				MOVQ R8, R9												
  print.go:233			0xe87354		e8c77e69ff			CALL fmt.Fprintf(SB)											
  task_chain_controller.go:302	0xe87359		48c784248800000000000000	MOVQ $0x0, 0x88(SP)											
  task_controller.go:23		0xe87365		488b15ecf06802			MOVQ CAS-Backend/config.Cfg+56(SB), DX									
  task_controller.go:23		0xe8736c		4885d2				TESTQ DX, DX												
  task_controller.go:23		0xe8736f		7409				JE 0xe8737a												
  task_controller.go:23		0xe87371		488b35d8f06802			MOVQ CAS-Backend/config.Cfg+48(SB), SI									
  task_chain_controller.go:303	0xe87378		eb21				JMP 0xe8739b												
  task_controller.go:26		0xe8737a		488b1587ea1200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), DX							
  task_controller.go:26		0xe87381		4885d2				TESTQ DX, DX												
  task_controller.go:26		0xe87384		7409				JE 0xe8738f												
  task_controller.go:26		0xe87386		488b3573ea1200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), SI							
  task_chain_controller.go:303	0xe8738d		eb0c				JMP 0xe8739b												
  task_chain_controller.go:303	0xe8738f		ba09000000			MOVL $__major_os_version__+3(SB), DX									
  task_chain_controller.go:303	0xe87394		488d3568df2e00			LEAQ go:string.*+52731(SB), SI										
  task_chain_controller.go:303	0xe8739b		440f11bc24d8000000		MOVUPS X15, 0xd8(SP)											
  task_chain_controller.go:303	0xe873a4		440f11bc24e0000000		MOVUPS X15, 0xe0(SP)											
  task_chain_controller.go:303	0xe873ad		440f11bc24f0000000		MOVUPS X15, 0xf0(SP)											
  task_chain_controller.go:303	0xe873b6		4c8d0563070000			LEAQ CAS-Backend/biz/controller.TaskChainStatusHandler.func1(SB), R8					
  task_chain_controller.go:303	0xe873bd		4c898424d8000000		MOVQ R8, 0xd8(SP)											
  task_chain_controller.go:303	0xe873c5		4c8b442440			MOVQ 0x40(SP), R8											
  task_chain_controller.go:303	0xe873ca		4c898424e8000000		MOVQ R8, 0xe8(SP)											
  task_chain_controller.go:303	0xe873d2		4c8b442448			MOVQ 0x48(SP), R8											
  task_chain_controller.go:303	0xe873d7		4c898424f0000000		MOVQ R8, 0xf0(SP)											
  task_chain_controller.go:303	0xe873df		4c8b842480000000		MOVQ 0x80(SP), R8											
  task_chain_controller.go:303	0xe873e7		4c898424e0000000		MOVQ R8, 0xe0(SP)											
  task_chain_controller.go:303	0xe873ef		4c8d842488000000		LEAQ 0x88(SP), R8											
  task_chain_controller.go:303	0xe873f7		4c898424f8000000		MOVQ R8, 0xf8(SP)											
  task_chain_controller.go:303	0xe873ff		4889f0				MOVQ SI, AX												
  task_chain_controller.go:303	0xe87402		4889d3				MOVQ DX, BX												
  task_chain_controller.go:303	0xe87405		b9044b0000			MOVL $__size_of_stack_commit__+15108(SB), CX								
  task_chain_controller.go:303	0xe8740a		488dbc24d8000000		LEAQ 0xd8(SP), DI											
  task_chain_controller.go:303	0xe87412		e8e9c1f8ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_chain_controller.go:311	0xe87417		4885c0				TESTQ AX, AX												
  task_chain_controller.go:311	0xe8741a		752b				JNE 0xe87447												
  task_chain_controller.go:317	0xe8741c		488b8c2488000000		MOVQ 0x88(SP), CX											
  task_chain_controller.go:317	0xe87424		488b91b8000000			MOVQ 0xb8(CX), DX											
  task_chain_controller.go:317	0xe8742b		4889542478			MOVQ DX, 0x78(SP)											
  task_chain_controller.go:317	0xe87430		488b89c0000000			MOVQ 0xc0(CX), CX											
  task_chain_controller.go:317	0xe87437		48894c2438			MOVQ CX, 0x38(SP)											
  task_chain_controller.go:318	0xe8743c		4889d6				MOVQ DX, SI												
  task_chain_controller.go:317	0xe8743f		4889c8				MOVQ CX, AX												
  task_chain_controller.go:318	0xe87442		e91e020000			JMP 0xe87665												
  task_chain_controller.go:312	0xe87447		440f11bc24f0010000		MOVUPS X15, 0x1f0(SP)											
  task_chain_controller.go:312	0xe87450		7404				JE 0xe87456												
  task_chain_controller.go:312	0xe87452		488b4008			MOVQ 0x8(AX), AX											
  task_chain_controller.go:312	0xe87456		48898424f0010000		MOVQ AX, 0x1f0(SP)											
  task_chain_controller.go:312	0xe8745e		48899c24f8010000		MOVQ BX, 0x1f8(SP)											
  print.go:233			0xe87466		488b1d13ac6802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe8746d		488d056c46fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe87474		488d0d53983000			LEAQ go:string.*+165830(SB), CX										
  print.go:233			0xe8747b		bf23000000			MOVL $__major_os_version__+29(SB), DI									
  print.go:233			0xe87480		488db424f0010000		LEAQ 0x1f0(SP), SI											
  print.go:233			0xe87488		41b801000000			MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe8748e		4d89c1				MOVQ R8, R9												
  print.go:233			0xe87491		e88a7d69ff			CALL fmt.Fprintf(SB)											
  task_chain_controller.go:313	0xe87496		e8453b5eff			CALL runtime.makemap_small(SB)										
  task_chain_controller.go:313	0xe8749b		4889842408010000		MOVQ AX, 0x108(SP)											
  task_chain_controller.go:313	0xe874a3		488b442458			MOVQ 0x58(SP), AX											
  task_chain_controller.go:313	0xe874a8		e8b3f9ffff			CALL CAS-Backend/biz/controller.taskChainStatusFromDB(SB)						
  task_chain_controller.go:313	0xe874ad		e8ee2b5eff			CALL runtime.convT64(SB)										
  task_chain_controller.go:313	0xe874b2		4889842400010000		MOVQ AX, 0x100(SP)											
  task_chain_controller.go:313	0xe874ba		488b9c2408010000		MOVQ 0x108(SP), BX											
  task_chain_controller.go:313	0xe874c2		488d0d9e7d2e00			LEAQ go:string.*+27999(SB), CX										
  task_chain_controller.go:313	0xe874c9		bf06000000			MOVL $__major_os_version__(SB), DI									
  task_chain_controller.go:313	0xe874ce		488d05abd32100			LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:313	0xe874d5		e8466b5eff			CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:313	0xe874da		488d157fb61b00			LEAQ runtime.types+383840(SB), DX									
  task_chain_controller.go:313	0xe874e1		488910				MOVQ DX, 0(AX)												
  task_chain_controller.go:313	0xe874e4		833d65666d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:313	0xe874eb		750a				JNE 0xe874f7												
  task_chain_controller.go:313	0xe874ed		488b8c2400010000		MOVQ 0x100(SP), CX											
  task_chain_controller.go:313	0xe874f5		eb18				JMP 0xe8750f												
  task_chain_controller.go:313	0xe874f7		e8440f5fff			CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:313	0xe874fc		488b8c2400010000		MOVQ 0x100(SP), CX											
  task_chain_controller.go:313	0xe87504		49890b				MOVQ CX, 0(R11)												
  task_chain_controller.go:313	0xe87507		488b5008			MOVQ 0x8(AX), DX											
  task_chain_controller.go:313	0xe8750b		49895308			MOVQ DX, 0x8(R11)											
  task_chain_controller.go:313	0xe8750f		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe87513		488d0d66d32100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe8751a		48898c24c8000000		MOVQ CX, 0xc8(SP)											
  context.go:1005		0xe87522		488b8c2408010000		MOVQ 0x108(SP), CX											
  context.go:1005		0xe8752a		48898c24d0000000		MOVQ CX, 0xd0(SP)											
  context.go:1005		0xe87532		488d05a7492400			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe87539		488d9c24c8000000		LEAQ 0xc8(SP), BX											
  context.go:1005		0xe87541		e85a7b58ff			CALL runtime.convT(SB)											
  context.go:1005		0xe87546		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe8754b		488d0dde7cfe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe87552		4889c7				MOVQ AX, DI												
  context.go:1005		0xe87555		488b842410020000		MOVQ 0x210(SP), AX											
  context.go:1005		0xe8755d		0f1f00				NOPL 0(AX)												
  context.go:1005		0xe87560		e8fb81f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:314	0xe87565		4881c400020000			ADDQ $__file_alignment__(SB), SP									
  task_chain_controller.go:314	0xe8756c		5d				POPQ BP													
  task_chain_controller.go:314	0xe8756d		c3				RET													
  task_chain_controller.go:318	0xe8756e		48894c2470			MOVQ CX, 0x70(SP)											
  task_chain_controller.go:318	0xe87573		4889942400010000		MOVQ DX, 0x100(SP)											
  task_chain_controller.go:318	0xe8757b		488b02				MOVQ 0(DX), AX												
  task_chain_controller.go:318	0xe8757e		488b5a08			MOVQ 0x8(DX), BX											
  task_chain_controller.go:318	0xe87582		488b4a10			MOVQ 0x10(DX), CX											
  task_chain_controller.go:318	0xe87586		48894c2468			MOVQ CX, 0x68(SP)											
  task_chain_controller.go:318	0xe8758b		488b7218			MOVQ 0x18(DX), SI											
  task_chain_controller.go:318	0xe8758f		4889742460			MOVQ SI, 0x60(SP)											
  task_chain_controller.go:319	0xe87594		440f11bc24c0010000		MOVUPS X15, 0x1c0(SP)											
  task_chain_controller.go:319	0xe8759d		440f11bc24d0010000		MOVUPS X15, 0x1d0(SP)											
  task_chain_controller.go:319	0xe875a6		440f11bc24e0010000		MOVUPS X15, 0x1e0(SP)											
  task_chain_controller.go:319	0xe875af		e86c2b5eff			CALL runtime.convTstring(SB)										
  task_chain_controller.go:319	0xe875b4		488d0d65b31b00			LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:319	0xe875bb		48898c24c0010000		MOVQ CX, 0x1c0(SP)											
  task_chain_controller.go:319	0xe875c3		48898424c8010000		MOVQ AX, 0x1c8(SP)											
  task_chain_controller.go:319	0xe875cb		488b442468			MOVQ 0x68(SP), AX											
  task_chain_controller.go:319	0xe875d0		e8cb2a5eff			CALL runtime.convT64(SB)										
  task_chain_controller.go:319	0xe875d5		488d0d84b51b00			LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:319	0xe875dc		48898c24d0010000		MOVQ CX, 0x1d0(SP)											
  task_chain_controller.go:319	0xe875e4		48898424d8010000		MOVQ AX, 0x1d8(SP)											
  task_chain_controller.go:319	0xe875ec		488b442460			MOVQ 0x60(SP), AX											
  task_chain_controller.go:319	0xe875f1		e8aa2a5eff			CALL runtime.convT64(SB)										
  task_chain_controller.go:319	0xe875f6		488d0d63b51b00			LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:319	0xe875fd		48898c24e0010000		MOVQ CX, 0x1e0(SP)											
  task_chain_controller.go:319	0xe87605		48898424e8010000		MOVQ AX, 0x1e8(SP)											
  print.go:233			0xe8760d		488b1d6caa6802			MOVQ os.Stdout(SB), BX											
  task_chain_controller.go:318	0xe87614		488b542470			MOVQ 0x70(SP), DX											
  task_chain_controller.go:318	0xe87619		48ffca				DECQ DX													
  task_chain_controller.go:318	0xe8761c		4889542470			MOVQ DX, 0x70(SP)											
  print.go:233			0xe87621		488d05b844fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe87628		bf2f000000			MOVL $__major_os_version__+41(SB), DI									
  print.go:233			0xe8762d		488db424c0010000		LEAQ 0x1c0(SP), SI											
  print.go:233			0xe87635		41b803000000			MOVL $__subsystem__(SB), R8										
  print.go:233			0xe8763b		4d89c1				MOVQ R8, R9												
  print.go:233			0xe8763e		488d0d443f3100			LEAQ go:string.*+209025(SB), CX										
  print.go:233			0xe87645		e8d67b69ff			CALL fmt.Fprintf(SB)											
  task_chain_controller.go:318	0xe8764a		488b942400010000		MOVQ 0x100(SP), DX											
  task_chain_controller.go:318	0xe87652		4883c220			ADDQ $__major_os_version__+26(SB), DX									
  task_chain_controller.go:328	0xe87656		488b442438			MOVQ 0x38(SP), AX											
  task_chain_controller.go:329	0xe8765b		488b742478			MOVQ 0x78(SP), SI											
  task_chain_controller.go:318	0xe87660		488b4c2470			MOVQ 0x70(SP), CX											
  task_chain_controller.go:318	0xe87665		4885c9				TESTQ CX, CX												
  task_chain_controller.go:318	0xe87668		0f8f00ffffff			JG 0xe8756e												
  task_chain_controller.go:321	0xe8766e		488dbc2470010000		LEAQ 0x170(SP), DI											
  task_chain_controller.go:321	0xe87676		488d7fd0			LEAQ -0x30(DI), DI											
  task_chain_controller.go:321	0xe8767a		660f1f440000			NOPW 0(AX)(AX*1)											
  task_chain_controller.go:321	0xe87680		48896c24f0			MOVQ BP, -0x10(SP)											
  task_chain_controller.go:321	0xe87685		488d6c24f0			LEAQ -0x10(SP), BP											
  task_chain_controller.go:321	0xe8768a		e861145fff			CALL 0x478af0												
  task_chain_controller.go:321	0xe8768f		488b6d00			MOVQ 0(BP), BP												
  task_chain_controller.go:322	0xe87693		488b8c2488000000		MOVQ 0x88(SP), CX											
  task_chain_controller.go:322	0xe8769b		488b5940			MOVQ 0x40(CX), BX											
  task_chain_controller.go:322	0xe8769f		488b4138			MOVQ 0x38(CX), AX											
  task_chain_controller.go:322	0xe876a3		e8782a5eff			CALL runtime.convTstring(SB)										
  task_chain_controller.go:322	0xe876a8		488d0d71b21b00			LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:322	0xe876af		48898c2470010000		MOVQ CX, 0x170(SP)											
  task_chain_controller.go:322	0xe876b7		4889842478010000		MOVQ AX, 0x178(SP)											
  task_chain_controller.go:323	0xe876bf		488b942488000000		MOVQ 0x88(SP), DX											
  task_chain_controller.go:323	0xe876c7		488b9a90000000			MOVQ 0x90(DX), BX											
  task_chain_controller.go:323	0xe876ce		488b8288000000			MOVQ 0x88(DX), AX											
  task_chain_controller.go:323	0xe876d5		e8462a5eff			CALL runtime.convTstring(SB)										
  task_chain_controller.go:323	0xe876da		488d0d3fb21b00			LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:323	0xe876e1		48898c2480010000		MOVQ CX, 0x180(SP)											
  task_chain_controller.go:323	0xe876e9		4889842488010000		MOVQ AX, 0x188(SP)											
  task_chain_controller.go:324	0xe876f1		488b942488000000		MOVQ 0x88(SP), DX											
  task_chain_controller.go:324	0xe876f9		488b9ab0000000			MOVQ 0xb0(DX), BX											
  task_chain_controller.go:324	0xe87700		488b82a8000000			MOVQ 0xa8(DX), AX											
  task_chain_controller.go:324	0xe87707		e8142a5eff			CALL runtime.convTstring(SB)										
  task_chain_controller.go:324	0xe8770c		488d0d0db21b00			LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:324	0xe87713		48898c2490010000		MOVQ CX, 0x190(SP)											
  task_chain_controller.go:324	0xe8771b		4889842498010000		MOVQ AX, 0x198(SP)											
  task_chain_controller.go:325	0xe87723		488b942488000000		MOVQ 0x88(SP), DX											
  task_chain_controller.go:325	0xe8772b		f30f104270			MOVSS 0x70(DX), X0											
  task_chain_controller.go:325	0xe87730		660f7ec0			MOVD X0, AX												
  task_chain_controller.go:325	0xe87734		e8e77a58ff			CALL runtime.convT32(SB)										
  task_chain_controller.go:325	0xe87739		488d0d60b51b00			LEAQ runtime.types+384160(SB), CX									
  task_chain_controller.go:325	0xe87740		48898c24a0010000		MOVQ CX, 0x1a0(SP)											
  task_chain_controller.go:325	0xe87748		48898424a8010000		MOVQ AX, 0x1a8(SP)											
  task_chain_controller.go:326	0xe87750		488b8c2488000000		MOVQ 0x88(SP), CX											
  task_chain_controller.go:326	0xe87758		488b4160			MOVQ 0x60(CX), AX											
  task_chain_controller.go:326	0xe8775c		488b5968			MOVQ 0x68(CX), BX											
  task_chain_controller.go:326	0xe87760		e8bb295eff			CALL runtime.convTstring(SB)										
  task_chain_controller.go:326	0xe87765		488d0db4b11b00			LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:326	0xe8776c		48898c24b0010000		MOVQ CX, 0x1b0(SP)											
  task_chain_controller.go:326	0xe87774		48898424b8010000		MOVQ AX, 0x1b8(SP)											
  print.go:233			0xe8777c		488b1dfda86802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe87783		488d055643fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe8778a		bf4b000000			MOVL $__major_os_version__+69(SB), DI									
  print.go:233			0xe8778f		488db42470010000		LEAQ 0x170(SP), SI											
  print.go:233			0xe87797		41b805000000			MOVL $__subsystem__+2(SB), R8										
  print.go:233			0xe8779d		4d89c1				MOVQ R8, R9												
  print.go:233			0xe877a0		488d0d9f093200			LEAQ go:string.*+261182(SB), CX										
  print.go:233			0xe877a7		e8747a69ff			CALL fmt.Fprintf(SB)											
  task_chain_controller.go:321	0xe877ac		488b4c2478			MOVQ 0x78(SP), CX											
  task_chain_controller.go:321	0xe877b1		488b542438			MOVQ 0x38(SP), DX											
  task_chain_controller.go:321	0xe877b6		31c0				XORL AX, AX												
  task_chain_controller.go:321	0xe877b8		eb06				JMP 0xe877c0												
  task_chain_controller.go:328	0xe877ba		488d4601			LEAQ 0x1(SI), AX											
  task_chain_controller.go:328	0xe877be		6690				NOPW													
  task_chain_controller.go:328	0xe877c0		4839d0				CMPQ AX, DX												
  task_chain_controller.go:328	0xe877c3		0f8d5c020000			JGE 0xe87a25												
  task_chain_controller.go:329	0xe877c9		4889c6				MOVQ AX, SI												
  task_chain_controller.go:329	0xe877cc		48c1e005			SHLQ $__subsystem__+2(SB), AX										
  task_chain_controller.go:329	0xe877d0		488b5c0110			MOVQ 0x10(CX)(AX*1), BX											
  task_chain_controller.go:329	0xe877d5		4883fb04			CMPQ BX, $__subsystem__+1(SB)										
  task_chain_controller.go:329	0xe877d9		750c				JNE 0xe877e7												
  task_chain_controller.go:330	0xe877db		488d7aff			LEAQ -0x1(DX), DI											
  task_chain_controller.go:330	0xe877df		90				NOPL													
  task_chain_controller.go:330	0xe877e0		4839fe				CMPQ SI, DI												
  task_chain_controller.go:330	0xe877e3		75d5				JNE 0xe877ba												
  task_chain_controller.go:330	0xe877e5		eb3e				JMP 0xe87825												
  task_chain_controller.go:329	0xe877e7		4889442470			MOVQ AX, 0x70(SP)											
  task_chain_controller.go:341	0xe877ec		4883fb03			CMPQ BX, $__subsystem__(SB)										
  task_chain_controller.go:341	0xe877f0		740e				JE 0xe87800												
  task_chain_controller.go:341	0xe877f2		4883fb05			CMPQ BX, $__subsystem__+2(SB)										
  task_chain_controller.go:341	0xe877f6		7408				JE 0xe87800												
  task_chain_controller.go:341	0xe877f8		4883fb06			CMPQ BX, $__major_os_version__(SB)									
  task_chain_controller.go:341	0xe877fc		750f				JNE 0xe8780d												
  task_chain_controller.go:341	0xe877fe		6690				NOPW													
  task_chain_controller.go:342	0xe87800		48391de15b6d02			CMPQ CAS-Backend/biz/controller.taskChainStatus(SB), BX							
  task_chain_controller.go:342	0xe87807		0f85b8000000			JNE 0xe878c5												
  task_chain_controller.go:352	0xe8780d		4883fb02			CMPQ BX, $__minor_os_version__+1(SB)									
  task_chain_controller.go:352	0xe87811		75a7				JNE 0xe877ba												
  task_chain_controller.go:353	0xe87813		48833dcd5b6d0202		CMPQ CAS-Backend/biz/controller.taskChainStatus(SB), $__minor_os_version__+1(SB)			
  task_chain_controller.go:353	0xe8781b		749d				JE 0xe877ba												
  task_chain_controller.go:353	0xe8781d		0f1f00				NOPL 0(AX)												
  task_chain_controller.go:353	0xe87820		e950010000			JMP 0xe87975												
  task_chain_controller.go:331	0xe87825		488b442458			MOVQ 0x58(SP), AX											
  task_chain_controller.go:331	0xe8782a		bb04000000			MOVL $__subsystem__+1(SB), BX										
  task_chain_controller.go:331	0xe8782f		e8ecf8ffff			CALL CAS-Backend/biz/controller.updateTaskChainStatusRecord(SB)						
  task_chain_controller.go:331	0xe87834		84c0				TESTL AL, AL												
  task_chain_controller.go:331	0xe87836		7446				JE 0xe8787e												
  task_chain_controller.go:332	0xe87838		488d15e1b01b00			LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:332	0xe8783f		4889942460010000		MOVQ DX, 0x160(SP)											
  task_chain_controller.go:332	0xe87847		488d152214fe01			LEAQ CAS-Backend/biz/controller..stmp_219(SB), DX							
  task_chain_controller.go:332	0xe8784e		4889942468010000		MOVQ DX, 0x168(SP)											
  print.go:314			0xe87856		488b1d23a86802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe8785d		488d057c42fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe87864		488d8c2460010000		LEAQ 0x160(SP), CX											
  print.go:314			0xe8786c		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe87871		4889fe				MOVQ DI, SI												
  print.go:314			0xe87874		e8e77f69ff			CALL fmt.Fprintln(SB)											
  task_chain_controller.go:336	0xe87879		e9a7010000			JMP 0xe87a25												
  task_chain_controller.go:334	0xe8787e		488d159bb01b00			LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:334	0xe87885		4889942450010000		MOVQ DX, 0x150(SP)											
  task_chain_controller.go:334	0xe8788d		488d15ec13fe01			LEAQ CAS-Backend/biz/controller..stmp_220(SB), DX							
  task_chain_controller.go:334	0xe87894		4889942458010000		MOVQ DX, 0x158(SP)											
  print.go:314			0xe8789c		488b1ddda76802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe878a3		488d053642fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe878aa		488d8c2450010000		LEAQ 0x150(SP), CX											
  print.go:314			0xe878b2		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe878b7		4889fe				MOVQ DI, SI												
  print.go:314			0xe878ba		e8a17f69ff			CALL fmt.Fprintln(SB)											
  print.go:314			0xe878bf		90				NOPL													
  task_chain_controller.go:336	0xe878c0		e960010000			JMP 0xe87a25												
  task_chain_controller.go:343	0xe878c5		488b442458			MOVQ 0x58(SP), AX											
  task_chain_controller.go:343	0xe878ca		e851f8ffff			CALL CAS-Backend/biz/controller.updateTaskChainStatusRecord(SB)						
  task_chain_controller.go:343	0xe878cf		84c0				TESTL AL, AL												
  task_chain_controller.go:343	0xe878d1		7446				JE 0xe87919												
  task_chain_controller.go:344	0xe878d3		488d1546b01b00			LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:344	0xe878da		4889942440010000		MOVQ DX, 0x140(SP)											
  task_chain_controller.go:344	0xe878e2		488d15a713fe01			LEAQ CAS-Backend/biz/controller..stmp_221(SB), DX							
  task_chain_controller.go:344	0xe878e9		4889942448010000		MOVQ DX, 0x148(SP)											
  print.go:314			0xe878f1		488b1d88a76802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe878f8		488d05e141fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe878ff		488d8c2440010000		LEAQ 0x140(SP), CX											
  print.go:314			0xe87907		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe8790c		4889fe				MOVQ DI, SI												
  print.go:314			0xe8790f		e84c7f69ff			CALL fmt.Fprintln(SB)											
  task_chain_controller.go:349	0xe87914		e90c010000			JMP 0xe87a25												
  task_chain_controller.go:346	0xe87919		488b542470			MOVQ 0x70(SP), DX											
  task_chain_controller.go:346	0xe8791e		4c8b442478			MOVQ 0x78(SP), R8											
  task_chain_controller.go:346	0xe87923		498b541010			MOVQ 0x10(R8)(DX*1), DX											
  task_chain_controller.go:346	0xe87928		488915b95a6d02			MOVQ DX, CAS-Backend/biz/controller.taskChainStatus(SB)							
  task_chain_controller.go:347	0xe8792f		488d15eaaf1b00			LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:347	0xe87936		4889942430010000		MOVQ DX, 0x130(SP)											
  task_chain_controller.go:347	0xe8793e		488d155b13fe01			LEAQ CAS-Backend/biz/controller..stmp_222(SB), DX							
  task_chain_controller.go:347	0xe87945		4889942438010000		MOVQ DX, 0x138(SP)											
  print.go:314			0xe8794d		488b1d2ca76802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe87954		488d058541fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe8795b		488d8c2430010000		LEAQ 0x130(SP), CX											
  print.go:314			0xe87963		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe87968		4889fe				MOVQ DI, SI												
  print.go:314			0xe8796b		e8f07e69ff			CALL fmt.Fprintln(SB)											
  task_chain_controller.go:349	0xe87970		e9b0000000			JMP 0xe87a25												
  task_chain_controller.go:354	0xe87975		488b442458			MOVQ 0x58(SP), AX											
  task_chain_controller.go:354	0xe8797a		bb02000000			MOVL $__minor_os_version__+1(SB), BX									
  task_chain_controller.go:354	0xe8797f		90				NOPL													
  task_chain_controller.go:354	0xe87980		e89bf7ffff			CALL CAS-Backend/biz/controller.updateTaskChainStatusRecord(SB)						
  task_chain_controller.go:354	0xe87985		84c0				TESTL AL, AL												
  task_chain_controller.go:354	0xe87987		7443				JE 0xe879cc												
  task_chain_controller.go:355	0xe87989		488d1590af1b00			LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:355	0xe87990		4889942420010000		MOVQ DX, 0x120(SP)											
  task_chain_controller.go:355	0xe87998		488d151113fe01			LEAQ CAS-Backend/biz/controller..stmp_223(SB), DX							
  task_chain_controller.go:355	0xe8799f		4889942428010000		MOVQ DX, 0x128(SP)											
  print.go:314			0xe879a7		488b1dd2a66802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe879ae		488d052b41fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe879b5		488d8c2420010000		LEAQ 0x120(SP), CX											
  print.go:314			0xe879bd		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe879c2		4889fe				MOVQ DI, SI												
  print.go:314			0xe879c5		e8967e69ff			CALL fmt.Fprintln(SB)											
  task_chain_controller.go:360	0xe879ca		eb59				JMP 0xe87a25												
  task_chain_controller.go:357	0xe879cc		488b542470			MOVQ 0x70(SP), DX											
  task_chain_controller.go:357	0xe879d1		4c8b442478			MOVQ 0x78(SP), R8											
  task_chain_controller.go:357	0xe879d6		498b541010			MOVQ 0x10(R8)(DX*1), DX											
  task_chain_controller.go:357	0xe879db		488915065a6d02			MOVQ DX, CAS-Backend/biz/controller.taskChainStatus(SB)							
  task_chain_controller.go:358	0xe879e2		488d1537af1b00			LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:358	0xe879e9		4889942410010000		MOVQ DX, 0x110(SP)											
  task_chain_controller.go:358	0xe879f1		488d15c812fe01			LEAQ CAS-Backend/biz/controller..stmp_224(SB), DX							
  task_chain_controller.go:358	0xe879f8		4889942418010000		MOVQ DX, 0x118(SP)											
  print.go:314			0xe87a00		488b1d79a66802			MOVQ os.Stdout(SB), BX											
  print.go:314			0xe87a07		488d05d240fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314			0xe87a0e		488d8c2410010000		LEAQ 0x110(SP), CX											
  print.go:314			0xe87a16		bf01000000			MOVL $__minor_os_version__(SB), DI									
  print.go:314			0xe87a1b		4889fe				MOVQ DI, SI												
  print.go:314			0xe87a1e		6690				NOPW													
  print.go:314			0xe87a20		e83b7e69ff			CALL fmt.Fprintln(SB)											
  task_chain_controller.go:365	0xe87a25		e8b6355eff			CALL runtime.makemap_small(SB)										
  task_chain_controller.go:365	0xe87a2a		4889842408010000		MOVQ AX, 0x108(SP)											
  task_chain_controller.go:365	0xe87a32		488b0daf596d02			MOVQ CAS-Backend/biz/controller.taskChainStatus(SB), CX							
  task_chain_controller.go:365	0xe87a39		4889c8				MOVQ CX, AX												
  task_chain_controller.go:365	0xe87a3c		0f1f4000			NOPL 0(AX)												
  task_chain_controller.go:365	0xe87a40		e85b265eff			CALL runtime.convT64(SB)										
  task_chain_controller.go:365	0xe87a45		4889842400010000		MOVQ AX, 0x100(SP)											
  task_chain_controller.go:365	0xe87a4d		488b9c2408010000		MOVQ 0x108(SP), BX											
  task_chain_controller.go:365	0xe87a55		488d0d0b782e00			LEAQ go:string.*+27999(SB), CX										
  task_chain_controller.go:365	0xe87a5c		bf06000000			MOVL $__major_os_version__(SB), DI									
  task_chain_controller.go:365	0xe87a61		488d0518ce2100			LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:365	0xe87a68		e8b3655eff			CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:365	0xe87a6d		488d0decb01b00			LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:365	0xe87a74		488908				MOVQ CX, 0(AX)												
  task_chain_controller.go:365	0xe87a77		833dd2606d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:365	0xe87a7e		6690				NOPW													
  task_chain_controller.go:365	0xe87a80		750a				JNE 0xe87a8c												
  task_chain_controller.go:365	0xe87a82		488b8c2400010000		MOVQ 0x100(SP), CX											
  task_chain_controller.go:365	0xe87a8a		eb18				JMP 0xe87aa4												
  task_chain_controller.go:365	0xe87a8c		e8af095fff			CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:365	0xe87a91		488b8c2400010000		MOVQ 0x100(SP), CX											
  task_chain_controller.go:365	0xe87a99		49890b				MOVQ CX, 0(R11)												
  task_chain_controller.go:365	0xe87a9c		488b5008			MOVQ 0x8(AX), DX											
  task_chain_controller.go:365	0xe87aa0		49895308			MOVQ DX, 0x8(R11)											
  task_chain_controller.go:365	0xe87aa4		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe87aa8		488d0dd1cd2100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe87aaf		48898c24c8000000		MOVQ CX, 0xc8(SP)											
  context.go:1005		0xe87ab7		488b8c2408010000		MOVQ 0x108(SP), CX											
  context.go:1005		0xe87abf		48898c24d0000000		MOVQ CX, 0xd0(SP)											
  context.go:1005		0xe87ac7		488d0512442400			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe87ace		488d9c24c8000000		LEAQ 0xc8(SP), BX											
  context.go:1005		0xe87ad6		e8c57558ff			CALL runtime.convT(SB)											
  context.go:1005		0xe87adb		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe87ae0		488d0d4977fe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe87ae7		4889c7				MOVQ AX, DI												
  context.go:1005		0xe87aea		488b842410020000		MOVQ 0x210(SP), AX											
  context.go:1005		0xe87af2		e8697cf7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:366	0xe87af7		4881c400020000			ADDQ $__file_alignment__(SB), SP									
  task_chain_controller.go:366	0xe87afe		5d				POPQ BP													
  task_chain_controller.go:366	0xe87aff		90				NOPL													
  task_chain_controller.go:366	0xe87b00		c3				RET													
  task_chain_controller.go:291	0xe87b01		4889442408			MOVQ AX, 0x8(SP)											
  task_chain_controller.go:291	0xe87b06		e8d5e95eff			CALL runtime.morestack_noctxt.abi0(SB)									
  task_chain_controller.go:291	0xe87b0b		488b442408			MOVQ 0x8(SP), AX											
  task_chain_controller.go:291	0xe87b10		e9ebf6ffff			JMP CAS-Backend/biz/controller.TaskChainStatusHandler(SB)						
  :-1				0xe87b15		cc				INT $__subsystem__(SB)											
  :-1				0xe87b16		cc				INT $__subsystem__(SB)											
  :-1				0xe87b17		cc				INT $__subsystem__(SB)											
  :-1				0xe87b18		cc				INT $__subsystem__(SB)											
  :-1				0xe87b19		cc				INT $__subsystem__(SB)											
  :-1				0xe87b1a		cc				INT $__subsystem__(SB)											
  :-1				0xe87b1b		cc				INT $__subsystem__(SB)											
  :-1				0xe87b1c		cc				INT $__subsystem__(SB)											
  :-1				0xe87b1d		cc				INT $__subsystem__(SB)											
  :-1				0xe87b1e		cc				INT $__subsystem__(SB)											
  :-1				0xe87b1f		cc				INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.TaskChainStatusHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:303	0xe87b20		493b6610		CMPQ SP, 0x10(R14)						
  task_chain_controller.go:303	0xe87b24		7670			JBE 0xe87b96							
  task_chain_controller.go:303	0xe87b26		55			PUSHQ BP							
  task_chain_controller.go:303	0xe87b27		4889e5			MOVQ SP, BP							
  task_chain_controller.go:303	0xe87b2a		4883ec30		SUBQ $__major_os_version__+42(SB), SP				
  task_chain_controller.go:303	0xe87b2e		4889442440		MOVQ AX, 0x40(SP)						
  task_chain_controller.go:303	0xe87b33		48895c2448		MOVQ BX, 0x48(SP)						
  task_chain_controller.go:303	0xe87b38		488b4a08		MOVQ 0x8(DX), CX						
  task_chain_controller.go:303	0xe87b3c		488b7a10		MOVQ 0x10(DX), DI						
  task_chain_controller.go:303	0xe87b40		488b7218		MOVQ 0x18(DX), SI						
  task_chain_controller.go:303	0xe87b44		488b5220		MOVQ 0x20(DX), DX						
  task_chain_controller.go:303	0xe87b48		4889542428		MOVQ DX, 0x28(SP)						
  task_chain_controller.go:304	0xe87b4d		e86e09f9ff		CALL CAS-Backend/pkg/agvcontrol.SendRobotTaskStatusReq(SB)	
  task_chain_controller.go:305	0xe87b52		4885db			TESTQ BX, BX							
  task_chain_controller.go:305	0xe87b55		7533			JNE 0xe87b8a							
  task_chain_controller.go:308	0xe87b57		833df25f6d0200		CMPL runtime.writeBarrier(SB), $0x0				
  task_chain_controller.go:308	0xe87b5e		6690			NOPW								
  task_chain_controller.go:308	0xe87b60		7507			JNE 0xe87b69							
  task_chain_controller.go:308	0xe87b62		488b4c2428		MOVQ 0x28(SP), CX						
  task_chain_controller.go:308	0xe87b67		eb14			JMP 0xe87b7d							
  task_chain_controller.go:308	0xe87b69		e8d2085fff		CALL runtime.gcWriteBarrier2(SB)				
  task_chain_controller.go:308	0xe87b6e		498903			MOVQ AX, 0(R11)							
  task_chain_controller.go:308	0xe87b71		488b4c2428		MOVQ 0x28(SP), CX						
  task_chain_controller.go:308	0xe87b76		488b11			MOVQ 0(CX), DX							
  task_chain_controller.go:308	0xe87b79		49895308		MOVQ DX, 0x8(R11)						
  task_chain_controller.go:308	0xe87b7d		488901			MOVQ AX, 0(CX)							
  task_chain_controller.go:309	0xe87b80		31c0			XORL AX, AX							
  task_chain_controller.go:309	0xe87b82		31db			XORL BX, BX							
  task_chain_controller.go:309	0xe87b84		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  task_chain_controller.go:309	0xe87b88		5d			POPQ BP								
  task_chain_controller.go:309	0xe87b89		c3			RET								
  task_chain_controller.go:306	0xe87b8a		4889d8			MOVQ BX, AX							
  task_chain_controller.go:306	0xe87b8d		4889cb			MOVQ CX, BX							
  task_chain_controller.go:306	0xe87b90		4883c430		ADDQ $__major_os_version__+42(SB), SP				
  task_chain_controller.go:306	0xe87b94		5d			POPQ BP								
  task_chain_controller.go:306	0xe87b95		c3			RET								
  task_chain_controller.go:303	0xe87b96		4889442408		MOVQ AX, 0x8(SP)						
  task_chain_controller.go:303	0xe87b9b		48895c2410		MOVQ BX, 0x10(SP)						
  task_chain_controller.go:303	0xe87ba0		e8bbe85eff		CALL runtime.morestack.abi0(SB)					
  task_chain_controller.go:303	0xe87ba5		488b442408		MOVQ 0x8(SP), AX						
  task_chain_controller.go:303	0xe87baa		488b5c2410		MOVQ 0x10(SP), BX						
  task_chain_controller.go:303	0xe87baf		e96cffffff		JMP CAS-Backend/biz/controller.TaskChainStatusHandler.func1(SB)	
  :-1				0xe87bb4		cc			INT $__subsystem__(SB)						
  :-1				0xe87bb5		cc			INT $__subsystem__(SB)						
  :-1				0xe87bb6		cc			INT $__subsystem__(SB)						
  :-1				0xe87bb7		cc			INT $__subsystem__(SB)						
  :-1				0xe87bb8		cc			INT $__subsystem__(SB)						
  :-1				0xe87bb9		cc			INT $__subsystem__(SB)						
  :-1				0xe87bba		cc			INT $__subsystem__(SB)						
  :-1				0xe87bbb		cc			INT $__subsystem__(SB)						
  :-1				0xe87bbc		cc			INT $__subsystem__(SB)						
  :-1				0xe87bbd		cc			INT $__subsystem__(SB)						
  :-1				0xe87bbe		cc			INT $__subsystem__(SB)						
  :-1				0xe87bbf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.PauseTaskChainHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:368	0xe87bc0		493b6610		CMPQ SP, 0x10(R14)							
  task_chain_controller.go:368	0xe87bc4		7626			JBE 0xe87bec								
  task_chain_controller.go:368	0xe87bc6		55			PUSHQ BP								
  task_chain_controller.go:368	0xe87bc7		4889e5			MOVQ SP, BP								
  task_chain_controller.go:368	0xe87bca		4883ec20		SUBQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:369	0xe87bce		488d1d0bfce401		LEAQ go:func.*+6136(SB), BX						
  task_chain_controller.go:369	0xe87bd5		488d0db9782e00		LEAQ go:string.*+28557(SB), CX						
  task_chain_controller.go:369	0xe87bdc		bf06000000		MOVL $__major_os_version__(SB), DI					
  task_chain_controller.go:369	0xe87be1		e89a000000		CALL CAS-Backend/biz/controller.runTaskChainNavigationCommand(SB)	
  task_chain_controller.go:370	0xe87be6		4883c420		ADDQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:370	0xe87bea		5d			POPQ BP									
  task_chain_controller.go:370	0xe87beb		c3			RET									
  task_chain_controller.go:368	0xe87bec		4889442408		MOVQ AX, 0x8(SP)							
  task_chain_controller.go:368	0xe87bf1		e8eae85eff		CALL runtime.morestack_noctxt.abi0(SB)					
  task_chain_controller.go:368	0xe87bf6		488b442408		MOVQ 0x8(SP), AX							
  task_chain_controller.go:368	0xe87bfb		ebc3			JMP CAS-Backend/biz/controller.PauseTaskChainHandler(SB)		
  :-1				0xe87bfd		cc			INT $__subsystem__(SB)							
  :-1				0xe87bfe		cc			INT $__subsystem__(SB)							
  :-1				0xe87bff		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.ResumeTaskChainHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:372	0xe87c00		493b6610		CMPQ SP, 0x10(R14)							
  task_chain_controller.go:372	0xe87c04		7626			JBE 0xe87c2c								
  task_chain_controller.go:372	0xe87c06		55			PUSHQ BP								
  task_chain_controller.go:372	0xe87c07		4889e5			MOVQ SP, BP								
  task_chain_controller.go:372	0xe87c0a		4883ec20		SUBQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:373	0xe87c0e		488d1dd3fbe401		LEAQ go:func.*+6144(SB), BX						
  task_chain_controller.go:373	0xe87c15		488d0d7f782e00		LEAQ go:string.*+28563(SB), CX						
  task_chain_controller.go:373	0xe87c1c		bf06000000		MOVL $__major_os_version__(SB), DI					
  task_chain_controller.go:373	0xe87c21		e83a050000		CALL CAS-Backend/biz/controller.runTaskChainNavigationControl(SB)	
  task_chain_controller.go:374	0xe87c26		4883c420		ADDQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:374	0xe87c2a		5d			POPQ BP									
  task_chain_controller.go:374	0xe87c2b		c3			RET									
  task_chain_controller.go:372	0xe87c2c		4889442408		MOVQ AX, 0x8(SP)							
  task_chain_controller.go:372	0xe87c31		e8aae85eff		CALL runtime.morestack_noctxt.abi0(SB)					
  task_chain_controller.go:372	0xe87c36		488b442408		MOVQ 0x8(SP), AX							
  task_chain_controller.go:372	0xe87c3b		ebc3			JMP CAS-Backend/biz/controller.ResumeTaskChainHandler(SB)		
  :-1				0xe87c3d		cc			INT $__subsystem__(SB)							
  :-1				0xe87c3e		cc			INT $__subsystem__(SB)							
  :-1				0xe87c3f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.CancelTaskChainHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:376	0xe87c40		493b6610		CMPQ SP, 0x10(R14)							
  task_chain_controller.go:376	0xe87c44		7626			JBE 0xe87c6c								
  task_chain_controller.go:376	0xe87c46		55			PUSHQ BP								
  task_chain_controller.go:376	0xe87c47		4889e5			MOVQ SP, BP								
  task_chain_controller.go:376	0xe87c4a		4883ec20		SUBQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:377	0xe87c4e		488d1d83fbe401		LEAQ go:func.*+6128(SB), BX						
  task_chain_controller.go:377	0xe87c55		488d0d45782e00		LEAQ go:string.*+28569(SB), CX						
  task_chain_controller.go:377	0xe87c5c		bf06000000		MOVL $__major_os_version__(SB), DI					
  task_chain_controller.go:377	0xe87c61		e81a000000		CALL CAS-Backend/biz/controller.runTaskChainNavigationCommand(SB)	
  task_chain_controller.go:378	0xe87c66		4883c420		ADDQ $__major_os_version__+26(SB), SP					
  task_chain_controller.go:378	0xe87c6a		5d			POPQ BP									
  task_chain_controller.go:378	0xe87c6b		c3			RET									
  task_chain_controller.go:376	0xe87c6c		4889442408		MOVQ AX, 0x8(SP)							
  task_chain_controller.go:376	0xe87c71		e86ae85eff		CALL runtime.morestack_noctxt.abi0(SB)					
  task_chain_controller.go:376	0xe87c76		488b442408		MOVQ 0x8(SP), AX							
  task_chain_controller.go:376	0xe87c7b		ebc3			JMP CAS-Backend/biz/controller.CancelTaskChainHandler(SB)		
  :-1				0xe87c7d		cc			INT $__subsystem__(SB)							
  :-1				0xe87c7e		cc			INT $__subsystem__(SB)							
  :-1				0xe87c7f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.runTaskChainNavigationCommand(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:380	0xe87c80		4c8d6424c0		LEAQ -0x40(SP), R12											
  task_chain_controller.go:380	0xe87c85		4d3b6610		CMPQ R12, 0x10(R14)											
  task_chain_controller.go:380	0xe87c89		0f8637040000		JBE 0xe880c6												
  task_chain_controller.go:380	0xe87c8f		55			PUSHQ BP												
  task_chain_controller.go:380	0xe87c90		4889e5			MOVQ SP, BP												
  task_chain_controller.go:380	0xe87c93		4881ecb8000000		SUBQ $.file+107(SB), SP											
  context.go:712		0xe87c9a		48898424c8000000	MOVQ AX, 0xc8(SP)											
  context.go:712		0xe87ca2		48899c24d0000000	MOVQ BX, 0xd0(SP)											
  context.go:712		0xe87caa		4889bc24e0000000	MOVQ DI, 0xe0(SP)											
  context.go:712		0xe87cb2		48898c24d8000000	MOVQ CX, 0xd8(SP)											
  task_chain_controller.go:381	0xe87cba		488d05bfce2700		LEAQ runtime.types+1178496(SB), AX									
  task_chain_controller.go:381	0xe87cc1		e8da9a58ff		CALL runtime.newobject(SB)										
  context.go:712		0xe87cc6		488b0d13fb1200		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe87ccd		488b1514fb1200		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe87cd4		4885c9			TESTQ CX, CX												
  context.go:712		0xe87cd7		7417			JE 0xe87cf0												
  context.go:712		0xe87cd9		488b5908		MOVQ 0x8(CX), BX											
  context.go:712		0xe87cdd		488b35cc361300		MOVQ CAS-Backend/biz/controller..typeAssert.32(SB), SI							
  context.go:712		0xe87ce4		4c8b06			MOVQ 0(SI), R8												
  context.go:712		0xe87ce7		448b4910		MOVL 0x10(CX), R9											
  context.go:712		0xe87ceb		e97f030000		JMP 0xe8806f												
  context.go:752		0xe87cf0		488b7118		MOVQ 0x18(CX), SI											
  context.go:752		0xe87cf4		4c8b8424c8000000	MOVQ 0xc8(SP), R8											
  context.go:752		0xe87cfc		498b5820		MOVQ 0x20(R8), BX											
  context.go:752		0xe87d00		488d0d59e91900		LEAQ runtime.types+267872(SB), CX									
  context.go:752		0xe87d07		4889c7			MOVQ AX, DI												
  context.go:752		0xe87d0a		4889d0			MOVQ DX, AX												
  context.go:752		0xe87d0d		ffd6			CALL SI													
  task_chain_controller.go:382	0xe87d0f		4885c0			TESTQ AX, AX												
  task_chain_controller.go:382	0xe87d12		0f8536030000		JNE 0xe8804e												
  task_controller.go:23		0xe87d18		488b1539e76802		MOVQ CAS-Backend/config.Cfg+56(SB), DX									
  task_controller.go:23		0xe87d1f		90			NOPL													
  task_controller.go:23		0xe87d20		4885d2			TESTQ DX, DX												
  task_controller.go:23		0xe87d23		7409			JE 0xe87d2e												
  task_controller.go:23		0xe87d25		488b3524e76802		MOVQ CAS-Backend/config.Cfg+48(SB), SI									
  task_chain_controller.go:387	0xe87d2c		eb21			JMP 0xe87d4f												
  task_controller.go:26		0xe87d2e		488b15d3e01200		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), DX							
  task_controller.go:26		0xe87d35		4885d2			TESTQ DX, DX												
  task_controller.go:26		0xe87d38		7409			JE 0xe87d43												
  task_controller.go:26		0xe87d3a		488b35bfe01200		MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), SI							
  task_chain_controller.go:387	0xe87d41		eb0c			JMP 0xe87d4f												
  task_chain_controller.go:387	0xe87d43		ba09000000		MOVL $__major_os_version__+3(SB), DX									
  task_chain_controller.go:387	0xe87d48		488d35b4d52e00		LEAQ go:string.*+52731(SB), SI										
  task_chain_controller.go:387	0xe87d4f		4c8d05aa030000		LEAQ CAS-Backend/biz/controller.runTaskChainNavigationCommand.func1(SB), R8				
  task_chain_controller.go:387	0xe87d56		4c89842490000000	MOVQ R8, 0x90(SP)											
  task_chain_controller.go:387	0xe87d5e		4c8b8424d0000000	MOVQ 0xd0(SP), R8											
  task_chain_controller.go:387	0xe87d66		4c89842498000000	MOVQ R8, 0x98(SP)											
  task_chain_controller.go:387	0xe87d6e		4889f0			MOVQ SI, AX												
  task_chain_controller.go:387	0xe87d71		4889d3			MOVQ DX, BX												
  task_chain_controller.go:387	0xe87d74		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX								
  task_chain_controller.go:387	0xe87d79		488dbc2490000000	LEAQ 0x90(SP), DI											
  task_chain_controller.go:387	0xe87d81		e87ab8f8ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_chain_controller.go:390	0xe87d86		4885c0			TESTQ AX, AX												
  task_chain_controller.go:390	0xe87d89		0f84b2010000		JE 0xe87f41												
  task_chain_controller.go:387	0xe87d8f		48895c2440		MOVQ BX, 0x40(SP)											
  task_chain_controller.go:387	0xe87d94		4889442438		MOVQ AX, 0x38(SP)											
  task_chain_controller.go:391	0xe87d99		440f117c2460		MOVUPS X15, 0x60(SP)											
  task_chain_controller.go:391	0xe87d9f		440f117c2470		MOVUPS X15, 0x70(SP)											
  task_chain_controller.go:391	0xe87da5		488b8424d8000000	MOVQ 0xd8(SP), AX											
  task_chain_controller.go:391	0xe87dad		488b9c24e0000000	MOVQ 0xe0(SP), BX											
  task_chain_controller.go:391	0xe87db5		e866235eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:391	0xe87dba		488d0d5fab1b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:391	0xe87dc1		48894c2460		MOVQ CX, 0x60(SP)											
  task_chain_controller.go:391	0xe87dc6		4889442468		MOVQ AX, 0x68(SP)											
  task_chain_controller.go:390	0xe87dcb		488b542438		MOVQ 0x38(SP), DX											
  task_chain_controller.go:390	0xe87dd0		4885d2			TESTQ DX, DX												
  task_chain_controller.go:391	0xe87dd3		7406			JE 0xe87ddb												
  task_chain_controller.go:391	0xe87dd5		488b4208		MOVQ 0x8(DX), AX											
  task_chain_controller.go:391	0xe87dd9		eb03			JMP 0xe87dde												
  task_chain_controller.go:391	0xe87ddb		4889d0			MOVQ DX, AX												
  task_chain_controller.go:391	0xe87dde		4889442470		MOVQ AX, 0x70(SP)											
  task_chain_controller.go:391	0xe87de3		488b542440		MOVQ 0x40(SP), DX											
  task_chain_controller.go:391	0xe87de8		4889542478		MOVQ DX, 0x78(SP)											
  print.go:233			0xe87ded		488b1d8ca26802		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe87df4		488d05e53cfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe87dfb		488d0df6143000		LEAQ go:string.*+134640(SB), CX										
  print.go:233			0xe87e02		bf1c000000		MOVL $__major_os_version__+22(SB), DI									
  print.go:233			0xe87e07		488d742460		LEAQ 0x60(SP), SI											
  print.go:233			0xe87e0c		41b802000000		MOVL $__minor_os_version__+1(SB), R8									
  print.go:233			0xe87e12		4d89c1			MOVQ R8, R9												
  print.go:233			0xe87e15		e8067469ff		CALL fmt.Fprintf(SB)											
  task_chain_controller.go:392	0xe87e1a		e8c1315eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:392	0xe87e1f		48898424a8000000	MOVQ AX, 0xa8(SP)											
  task_chain_controller.go:392	0xe87e27		4889c3			MOVQ AX, BX												
  task_chain_controller.go:392	0xe87e2a		488d0ddcae2e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:392	0xe87e31		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:392	0xe87e36		488d0543ca2100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:392	0xe87e3d		0f1f00			NOPL 0(AX)												
  task_chain_controller.go:392	0xe87e40		e8db615eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:392	0xe87e45		488d15d4ae1b00		LEAQ runtime.types+384288(SB), DX									
  task_chain_controller.go:392	0xe87e4c		488910			MOVQ DX, 0(AX)												
  task_chain_controller.go:392	0xe87e4f		833dfa5c6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:392	0xe87e56		7410			JE 0xe87e68												
  task_chain_controller.go:392	0xe87e58		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:392	0xe87e5c		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:392	0xe87e60		e8bb055fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:392	0xe87e65		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:392	0xe87e68		488d0db1280f00		LEAQ runtime.staticuint64s(SB), CX									
  task_chain_controller.go:392	0xe87e6f		48894808		MOVQ CX, 0x8(AX)											
  task_chain_controller.go:392	0xe87e73		488b4c2438		MOVQ 0x38(SP), CX											
  task_chain_controller.go:392	0xe87e78		488b4918		MOVQ 0x18(CX), CX											
  task_chain_controller.go:392	0xe87e7c		488b442440		MOVQ 0x40(SP), AX											
  task_chain_controller.go:392	0xe87e81		ffd1			CALL CX													
  task_chain_controller.go:392	0xe87e83		e898225eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:392	0xe87e88		48898424a0000000	MOVQ AX, 0xa0(SP)											
  task_chain_controller.go:392	0xe87e90		488b9c24a8000000	MOVQ 0xa8(SP), BX											
  task_chain_controller.go:392	0xe87e98		488d0d52ae2e00		LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:392	0xe87e9f		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:392	0xe87ea4		488d05d5c92100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:392	0xe87eab		e870615eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:392	0xe87eb0		488d0d69aa1b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:392	0xe87eb7		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:392	0xe87eba		833d8f5c6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:392	0xe87ec1		750a			JNE 0xe87ecd												
  task_chain_controller.go:392	0xe87ec3		488b8c24a0000000	MOVQ 0xa0(SP), CX											
  task_chain_controller.go:392	0xe87ecb		eb18			JMP 0xe87ee5												
  task_chain_controller.go:392	0xe87ecd		e86e055fff		CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:392	0xe87ed2		488b8c24a0000000	MOVQ 0xa0(SP), CX											
  task_chain_controller.go:392	0xe87eda		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:392	0xe87edd		488b5008		MOVQ 0x8(AX), DX											
  task_chain_controller.go:392	0xe87ee1		49895308		MOVQ DX, 0x8(R11)											
  task_chain_controller.go:392	0xe87ee5		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe87ee9		488d0d90c92100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe87ef0		48898c2480000000	MOVQ CX, 0x80(SP)											
  context.go:1005		0xe87ef8		488b8c24a8000000	MOVQ 0xa8(SP), CX											
  context.go:1005		0xe87f00		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005		0xe87f08		488d05d13f2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe87f0f		488d9c2480000000	LEAQ 0x80(SP), BX											
  context.go:1005		0xe87f17		e8847158ff		CALL runtime.convT(SB)											
  context.go:1005		0xe87f1c		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe87f21		488d0d0873fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe87f28		4889c7			MOVQ AX, DI												
  context.go:1005		0xe87f2b		488b8424c8000000	MOVQ 0xc8(SP), AX											
  context.go:1005		0xe87f33		e82878f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:393	0xe87f38		4881c4b8000000		ADDQ $.file+107(SB), SP											
  task_chain_controller.go:393	0xe87f3f		5d			POPQ BP													
  task_chain_controller.go:393	0xe87f40		c3			RET													
  task_chain_controller.go:396	0xe87f41		440f117c2450		MOVUPS X15, 0x50(SP)											
  task_chain_controller.go:396	0xe87f47		488b8424d8000000	MOVQ 0xd8(SP), AX											
  task_chain_controller.go:396	0xe87f4f		488b9c24e0000000	MOVQ 0xe0(SP), BX											
  task_chain_controller.go:396	0xe87f57		e8c4215eff		CALL runtime.convTstring(SB)										
  task_chain_controller.go:396	0xe87f5c		488d0dbda91b00		LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:396	0xe87f63		48894c2450		MOVQ CX, 0x50(SP)											
  task_chain_controller.go:396	0xe87f68		4889442458		MOVQ AX, 0x58(SP)											
  print.go:233			0xe87f6d		488b1d0ca16802		MOVQ os.Stdout(SB), BX											
  print.go:233			0xe87f74		488d05653bfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe87f7b		488d0db57b3100		LEAQ go:string.*+226863(SB), CX										
  print.go:233			0xe87f82		bf36000000		MOVL $__major_os_version__+48(SB), DI									
  print.go:233			0xe87f87		488d742450		LEAQ 0x50(SP), SI											
  print.go:233			0xe87f8c		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233			0xe87f92		4d89c1			MOVQ R8, R9												
  print.go:233			0xe87f95		e8867269ff		CALL fmt.Fprintf(SB)											
  task_chain_controller.go:397	0xe87f9a		e841305eff		CALL runtime.makemap_small(SB)										
  task_chain_controller.go:397	0xe87f9f		48898424a8000000	MOVQ AX, 0xa8(SP)											
  task_chain_controller.go:397	0xe87fa7		4889c3			MOVQ AX, BX												
  task_chain_controller.go:397	0xe87faa		488d0d5cad2e00		LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:397	0xe87fb1		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:397	0xe87fb6		488d05c3c82100		LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:397	0xe87fbd		0f1f00			NOPL 0(AX)												
  task_chain_controller.go:397	0xe87fc0		e85b605eff		CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:397	0xe87fc5		488d0d54ad1b00		LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:397	0xe87fcc		488908			MOVQ CX, 0(AX)												
  task_chain_controller.go:397	0xe87fcf		833d7a5b6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:397	0xe87fd6		7410			JE 0xe87fe8												
  task_chain_controller.go:397	0xe87fd8		488b4808		MOVQ 0x8(AX), CX											
  task_chain_controller.go:397	0xe87fdc		0f1f4000		NOPL 0(AX)												
  task_chain_controller.go:397	0xe87fe0		e83b045fff		CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:397	0xe87fe5		49890b			MOVQ CX, 0(R11)												
  task_chain_controller.go:397	0xe87fe8		488d0d39270f00		LEAQ runtime.staticuint64s+8(SB), CX									
  task_chain_controller.go:397	0xe87fef		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005		0xe87ff3		488d0d86c82100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe87ffa		48898c2480000000	MOVQ CX, 0x80(SP)											
  context.go:1005		0xe88002		488b8c24a8000000	MOVQ 0xa8(SP), CX											
  context.go:1005		0xe8800a		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005		0xe88012		488d05c73e2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe88019		488d9c2480000000	LEAQ 0x80(SP), BX											
  context.go:1005		0xe88021		e87a7058ff		CALL runtime.convT(SB)											
  context.go:1005		0xe88026		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005		0xe8802b		488d0dfe71fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe88032		4889c7			MOVQ AX, DI												
  context.go:1005		0xe88035		488b8424c8000000	MOVQ 0xc8(SP), AX											
  context.go:1005		0xe8803d		0f1f00			NOPL 0(AX)												
  context.go:1005		0xe88040		e81b77f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:398	0xe88045		4881c4b8000000		ADDQ $.file+107(SB), SP											
  task_chain_controller.go:398	0xe8804c		5d			POPQ BP													
  task_chain_controller.go:398	0xe8804d		c3			RET													
  task_chain_controller.go:383	0xe8804e		4889c1			MOVQ AX, CX												
  task_chain_controller.go:383	0xe88051		4889df			MOVQ BX, DI												
  task_chain_controller.go:383	0xe88054		488b8424c8000000	MOVQ 0xc8(SP), AX											
  task_chain_controller.go:383	0xe8805c		bb90010000		MOVL $.file+323(SB), BX											
  task_chain_controller.go:383	0xe88061		e83a30f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  task_chain_controller.go:384	0xe88066		4881c4b8000000		ADDQ $.file+107(SB), SP											
  task_chain_controller.go:384	0xe8806d		5d			POPQ BP													
  task_chain_controller.go:384	0xe8806e		c3			RET													
  context.go:712		0xe8806f		4d89ca			MOVQ R9, R10												
  context.go:712		0xe88072		4d21c1			ANDQ R8, R9												
  context.go:712		0xe88075		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe88079		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe8807e		6690			NOPW													
  context.go:712		0xe88080		4939db			CMPQ R11, BX												
  context.go:712		0xe88083		7437			JE 0xe880bc												
  context.go:712		0xe88085		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712		0xe88089		4d85db			TESTQ R11, R11												
  context.go:712		0xe8808c		75e1			JNE 0xe8806f												
  task_chain_controller.go:381	0xe8808e		48898424b0000000	MOVQ AX, 0xb0(SP)											
  context.go:712		0xe88096		4889542448		MOVQ DX, 0x48(SP)											
  context.go:712		0xe8809b		488d050e331300		LEAQ CAS-Backend/biz/controller..typeAssert.32(SB), AX							
  context.go:712		0xe880a2		e8397258ff		CALL runtime.typeAssert(SB)										
  context.go:752		0xe880a7		488b542448		MOVQ 0x48(SP), DX											
  context.go:712		0xe880ac		4889c1			MOVQ AX, CX												
  context.go:752		0xe880af		488b8424b0000000	MOVQ 0xb0(SP), AX											
  context.go:712		0xe880b7		e934fcffff		JMP 0xe87cf0												
  context.go:712		0xe880bc		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe880c1		e92afcffff		JMP 0xe87cf0												
  task_chain_controller.go:380	0xe880c6		4889442408		MOVQ AX, 0x8(SP)											
  task_chain_controller.go:380	0xe880cb		48895c2410		MOVQ BX, 0x10(SP)											
  task_chain_controller.go:380	0xe880d0		48894c2418		MOVQ CX, 0x18(SP)											
  task_chain_controller.go:380	0xe880d5		48897c2420		MOVQ DI, 0x20(SP)											
  task_chain_controller.go:380	0xe880da		e801e45eff		CALL runtime.morestack_noctxt.abi0(SB)									
  task_chain_controller.go:380	0xe880df		488b442408		MOVQ 0x8(SP), AX											
  task_chain_controller.go:380	0xe880e4		488b5c2410		MOVQ 0x10(SP), BX											
  task_chain_controller.go:380	0xe880e9		488b4c2418		MOVQ 0x18(SP), CX											
  task_chain_controller.go:380	0xe880ee		488b7c2420		MOVQ 0x20(SP), DI											
  task_chain_controller.go:380	0xe880f3		e988fbffff		JMP CAS-Backend/biz/controller.runTaskChainNavigationCommand(SB)					
  :-1				0xe880f8		cc			INT $__subsystem__(SB)											
  :-1				0xe880f9		cc			INT $__subsystem__(SB)											
  :-1				0xe880fa		cc			INT $__subsystem__(SB)											
  :-1				0xe880fb		cc			INT $__subsystem__(SB)											
  :-1				0xe880fc		cc			INT $__subsystem__(SB)											
  :-1				0xe880fd		cc			INT $__subsystem__(SB)											
  :-1				0xe880fe		cc			INT $__subsystem__(SB)											
  :-1				0xe880ff		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.runTaskChainNavigationCommand.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:387	0xe88100		493b6610		CMPQ SP, 0x10(R14)							
  task_chain_controller.go:387	0xe88104		7622			JBE 0xe88128								
  task_chain_controller.go:387	0xe88106		55			PUSHQ BP								
  task_chain_controller.go:387	0xe88107		4889e5			MOVQ SP, BP								
  task_chain_controller.go:387	0xe8810a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  task_chain_controller.go:387	0xe8810e		4889442420		MOVQ AX, 0x20(SP)							
  task_chain_controller.go:387	0xe88113		48895c2428		MOVQ BX, 0x28(SP)							
  task_chain_controller.go:387	0xe88118		488b5208		MOVQ 0x8(DX), DX							
  task_chain_controller.go:388	0xe8811c		488b0a			MOVQ 0(DX), CX								
  task_chain_controller.go:388	0xe8811f		90			NOPL									
  task_chain_controller.go:388	0xe88120		ffd1			CALL CX									
  task_chain_controller.go:388	0xe88122		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  task_chain_controller.go:388	0xe88126		5d			POPQ BP									
  task_chain_controller.go:388	0xe88127		c3			RET									
  task_chain_controller.go:387	0xe88128		4889442408		MOVQ AX, 0x8(SP)							
  task_chain_controller.go:387	0xe8812d		48895c2410		MOVQ BX, 0x10(SP)							
  task_chain_controller.go:387	0xe88132		e829e35eff		CALL runtime.morestack.abi0(SB)						
  task_chain_controller.go:387	0xe88137		488b442408		MOVQ 0x8(SP), AX							
  task_chain_controller.go:387	0xe8813c		488b5c2410		MOVQ 0x10(SP), BX							
  task_chain_controller.go:387	0xe88141		ebbd			JMP CAS-Backend/biz/controller.runTaskChainNavigationCommand.func1(SB)	
  :-1				0xe88143		cc			INT $__subsystem__(SB)							
  :-1				0xe88144		cc			INT $__subsystem__(SB)							
  :-1				0xe88145		cc			INT $__subsystem__(SB)							
  :-1				0xe88146		cc			INT $__subsystem__(SB)							
  :-1				0xe88147		cc			INT $__subsystem__(SB)							
  :-1				0xe88148		cc			INT $__subsystem__(SB)							
  :-1				0xe88149		cc			INT $__subsystem__(SB)							
  :-1				0xe8814a		cc			INT $__subsystem__(SB)							
  :-1				0xe8814b		cc			INT $__subsystem__(SB)							
  :-1				0xe8814c		cc			INT $__subsystem__(SB)							
  :-1				0xe8814d		cc			INT $__subsystem__(SB)							
  :-1				0xe8814e		cc			INT $__subsystem__(SB)							
  :-1				0xe8814f		cc			INT $__subsystem__(SB)							
  :-1				0xe88150		cc			INT $__subsystem__(SB)							
  :-1				0xe88151		cc			INT $__subsystem__(SB)							
  :-1				0xe88152		cc			INT $__subsystem__(SB)							
  :-1				0xe88153		cc			INT $__subsystem__(SB)							
  :-1				0xe88154		cc			INT $__subsystem__(SB)							
  :-1				0xe88155		cc			INT $__subsystem__(SB)							
  :-1				0xe88156		cc			INT $__subsystem__(SB)							
  :-1				0xe88157		cc			INT $__subsystem__(SB)							
  :-1				0xe88158		cc			INT $__subsystem__(SB)							
  :-1				0xe88159		cc			INT $__subsystem__(SB)							
  :-1				0xe8815a		cc			INT $__subsystem__(SB)							
  :-1				0xe8815b		cc			INT $__subsystem__(SB)							
  :-1				0xe8815c		cc			INT $__subsystem__(SB)							
  :-1				0xe8815d		cc			INT $__subsystem__(SB)							
  :-1				0xe8815e		cc			INT $__subsystem__(SB)							
  :-1				0xe8815f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.runTaskChainNavigationControl(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:400	0xe88160		4c8d6424b0			LEAQ -0x50(SP), R12											
  task_chain_controller.go:400	0xe88165		4d3b6610			CMPQ R12, 0x10(R14)											
  task_chain_controller.go:400	0xe88169		0f86ef050000			JBE 0xe8875e												
  task_chain_controller.go:400	0xe8816f		55				PUSHQ BP												
  task_chain_controller.go:400	0xe88170		4889e5				MOVQ SP, BP												
  task_chain_controller.go:400	0xe88173		4881ecc8000000			SUBQ $.file+123(SB), SP											
  context.go:712		0xe8817a		48898424d8000000		MOVQ AX, 0xd8(SP)											
  context.go:712		0xe88182		48899c24e0000000		MOVQ BX, 0xe0(SP)											
  context.go:712		0xe8818a		4889bc24f0000000		MOVQ DI, 0xf0(SP)											
  context.go:712		0xe88192		48898c24e8000000		MOVQ CX, 0xe8(SP)											
  task_chain_controller.go:401	0xe8819a		488d05dfc92700			LEAQ runtime.types+1178496(SB), AX									
  task_chain_controller.go:401	0xe881a1		e8fa9558ff			CALL runtime.newobject(SB)										
  task_chain_controller.go:401	0xe881a6		48898424c0000000		MOVQ AX, 0xc0(SP)											
  context.go:712		0xe881ae		488b0d2bf61200			MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712		0xe881b5		488b152cf61200			MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712		0xe881bc		0f1f4000			NOPL 0(AX)												
  context.go:712		0xe881c0		4885c9				TESTQ CX, CX												
  context.go:712		0xe881c3		7417				JE 0xe881dc												
  context.go:712		0xe881c5		488b5908			MOVQ 0x8(CX), BX											
  context.go:712		0xe881c9		488b3500321300			MOVQ CAS-Backend/biz/controller..typeAssert.33(SB), SI							
  context.go:712		0xe881d0		4c8b06				MOVQ 0(SI), R8												
  context.go:712		0xe881d3		448b4910			MOVL 0x10(CX), R9											
  context.go:712		0xe881d7		e933050000			JMP 0xe8870f												
  context.go:752		0xe881dc		488b7118			MOVQ 0x18(CX), SI											
  context.go:752		0xe881e0		4c8b8424d8000000		MOVQ 0xd8(SP), R8											
  context.go:752		0xe881e8		498b5820			MOVQ 0x20(R8), BX											
  context.go:752		0xe881ec		488d0d6de41900			LEAQ runtime.types+267872(SB), CX									
  context.go:752		0xe881f3		4889c7				MOVQ AX, DI												
  context.go:752		0xe881f6		4889d0				MOVQ DX, AX												
  context.go:752		0xe881f9		ffd6				CALL SI													
  context.go:752		0xe881fb		0f1f440000			NOPL 0(AX)(AX*1)											
  task_chain_controller.go:402	0xe88200		4885c0				TESTQ AX, AX												
  task_chain_controller.go:402	0xe88203		0f85e5040000			JNE 0xe886ee												
  task_chain_controller.go:407	0xe88209		48c744244800000000		MOVQ $0x0, 0x48(SP)											
  task_controller.go:23		0xe88212		488b153fe26802			MOVQ CAS-Backend/config.Cfg+56(SB), DX									
  task_controller.go:23		0xe88219		4885d2				TESTQ DX, DX												
  task_controller.go:23		0xe8821c		7409				JE 0xe88227												
  task_controller.go:23		0xe8821e		488b352be26802			MOVQ CAS-Backend/config.Cfg+48(SB), SI									
  task_chain_controller.go:408	0xe88225		eb21				JMP 0xe88248												
  task_controller.go:26		0xe88227		488b15dadb1200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost+8(SB), DX							
  task_controller.go:26		0xe8822e		4885d2				TESTQ DX, DX												
  task_controller.go:26		0xe88231		7409				JE 0xe8823c												
  task_controller.go:26		0xe88233		488b35c6db1200			MOVQ CAS-Backend/pkg/diapdu.diaoduVehicleHost(SB), SI							
  task_chain_controller.go:408	0xe8823a		eb0c				JMP 0xe88248												
  task_chain_controller.go:408	0xe8823c		ba09000000			MOVL $__major_os_version__+3(SB), DX									
  task_chain_controller.go:408	0xe88241		488d35bbd02e00			LEAQ go:string.*+52731(SB), SI										
  task_chain_controller.go:408	0xe88248		48c78424a800000000000000	MOVQ $0x0, 0xa8(SP)											
  task_chain_controller.go:408	0xe88254		4c8d0545050000			LEAQ CAS-Backend/biz/controller.runTaskChainNavigationControl.func1(SB), R8				
  task_chain_controller.go:408	0xe8825b		4c89842490000000		MOVQ R8, 0x90(SP)											
  task_chain_controller.go:408	0xe88263		4c8b8424e0000000		MOVQ 0xe0(SP), R8											
  task_chain_controller.go:408	0xe8826b		4c89842498000000		MOVQ R8, 0x98(SP)											
  task_chain_controller.go:408	0xe88273		4c8b8424c0000000		MOVQ 0xc0(SP), R8											
  task_chain_controller.go:408	0xe8827b		4c898424a0000000		MOVQ R8, 0xa0(SP)											
  task_chain_controller.go:408	0xe88283		4c8d4c2448			LEAQ 0x48(SP), R9											
  task_chain_controller.go:408	0xe88288		4c898c24a8000000		MOVQ R9, 0xa8(SP)											
  task_chain_controller.go:408	0xe88290		4889f0				MOVQ SI, AX												
  task_chain_controller.go:408	0xe88293		4889d3				MOVQ DX, BX												
  task_chain_controller.go:408	0xe88296		b9064b0000			MOVL $__size_of_stack_commit__+15110(SB), CX								
  task_chain_controller.go:408	0xe8829b		488dbc2490000000		LEAQ 0x90(SP), DI											
  task_chain_controller.go:408	0xe882a3		e858b3f8ff			CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  task_chain_controller.go:419	0xe882a8		4885c0				TESTQ AX, AX												
  task_chain_controller.go:419	0xe882ab		0f8585020000			JNE 0xe88536												
  task_chain_controller.go:425	0xe882b1		488b4c2448			MOVQ 0x48(SP), CX											
  task_chain_controller.go:425	0xe882b6		488b5958			MOVQ 0x58(CX), BX											
  task_chain_controller.go:425	0xe882ba		48895c2438			MOVQ BX, 0x38(SP)											
  task_chain_controller.go:426	0xe882bf		48891d22516d02			MOVQ BX, CAS-Backend/biz/controller.taskChainStatus(SB)							
  task_chain_controller.go:427	0xe882c6		488b8c24c0000000		MOVQ 0xc0(SP), CX											
  task_chain_controller.go:427	0xe882ce		488b01				MOVQ 0(CX), AX												
  task_chain_controller.go:427	0xe882d1		4885c0				TESTQ AX, AX												
  task_chain_controller.go:427	0xe882d4		0f8e47010000			JLE 0xe88421												
  task_chain_controller.go:427	0xe882da		660f1f440000			NOPW 0(AX)(AX*1)											
  task_chain_controller.go:428	0xe882e0		4883fb04			CMPQ BX, $__subsystem__+1(SB)										
  task_chain_controller.go:428	0xe882e4		740c				JE 0xe882f2												
  task_chain_controller.go:428	0xe882e6		4883fb05			CMPQ BX, $__subsystem__+2(SB)										
  task_chain_controller.go:428	0xe882ea		7406				JE 0xe882f2												
  task_chain_controller.go:428	0xe882ec		4883fb06			CMPQ BX, $__major_os_version__(SB)									
  task_chain_controller.go:428	0xe882f0		752e				JNE 0xe88320												
  task_chain_controller.go:429	0xe882f2		e8a95d62ff			CALL time.Now(SB)											
  task_chain_controller.go:429	0xe882f7		488b9424c0000000		MOVQ 0xc0(SP), DX											
  task_chain_controller.go:429	0xe882ff		488b12				MOVQ 0(DX), DX												
  task_chain_controller.go:429	0xe88302		4889df				MOVQ BX, DI												
  task_chain_controller.go:429	0xe88305		4889ce				MOVQ CX, SI												
  task_chain_controller.go:429	0xe88308		488b5c2438			MOVQ 0x38(SP), BX											
  task_chain_controller.go:429	0xe8830d		4889c1				MOVQ AX, CX												
  task_chain_controller.go:429	0xe88310		4889d0				MOVQ DX, AX												
  task_chain_controller.go:429	0xe88313		e8e8f3b0ff			CALL CAS-Backend/biz/dao.UpdateTaskChainCompletion(SB)							
  task_chain_controller.go:429	0xe88318		e904010000			JMP 0xe88421												
  task_chain_controller.go:429	0xe8831d		0f1f00				NOPL 0(AX)												
  task_chain_controller.go:430	0xe88320		e8dbf1b0ff			CALL CAS-Backend/biz/dao.UpdateTaskChainStatusByID(SB)							
  task_chain_controller.go:430	0xe88325		84c0				TESTL AL, AL												
  task_chain_controller.go:430	0xe88327		0f85f4000000			JNE 0xe88421												
  task_chain_controller.go:431	0xe8832d		e8ae2c5eff			CALL runtime.makemap_small(SB)										
  task_chain_controller.go:431	0xe88332		48898424b8000000		MOVQ AX, 0xb8(SP)											
  task_chain_controller.go:431	0xe8833a		4889c3				MOVQ AX, BX												
  task_chain_controller.go:431	0xe8833d		488d0dc9a92e00			LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:431	0xe88344		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:431	0xe88349		488d0530c52100			LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:431	0xe88350		e8cb5c5eff			CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:431	0xe88355		488d0dc4a91b00			LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:431	0xe8835c		488908				MOVQ CX, 0(AX)												
  task_chain_controller.go:431	0xe8835f		833dea576d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:431	0xe88366		740c				JE 0xe88374												
  task_chain_controller.go:431	0xe88368		488b5008			MOVQ 0x8(AX), DX											
  task_chain_controller.go:431	0xe8836c		e8af005fff			CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:431	0xe88371		498913				MOVQ DX, 0(R11)												
  task_chain_controller.go:431	0xe88374		488d15a5230f00			LEAQ runtime.staticuint64s(SB), DX									
  task_chain_controller.go:431	0xe8837b		48895008			MOVQ DX, 0x8(AX)											
  task_chain_controller.go:431	0xe8837f		488d05fac42100			LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:431	0xe88386		488b9c24b8000000		MOVQ 0xb8(SP), BX											
  task_chain_controller.go:431	0xe8838e		488d0d5ca92e00			LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:431	0xe88395		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:431	0xe8839a		e8815c5eff			CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:431	0xe8839f		488d157aa51b00			LEAQ runtime.types+383264(SB), DX									
  task_chain_controller.go:431	0xe883a6		488910				MOVQ DX, 0(AX)												
  task_chain_controller.go:431	0xe883a9		833da0576d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:431	0xe883b0		740c				JE 0xe883be												
  task_chain_controller.go:431	0xe883b2		488b4808			MOVQ 0x8(AX), CX											
  task_chain_controller.go:431	0xe883b6		e865005fff			CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:431	0xe883bb		49890b				MOVQ CX, 0(R11)												
  task_chain_controller.go:431	0xe883be		488d0d0b09fe01			LEAQ CAS-Backend/biz/controller..stmp_229(SB), CX							
  task_chain_controller.go:431	0xe883c5		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe883c9		488d0db0c42100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe883d0		48898c2480000000		MOVQ CX, 0x80(SP)											
  context.go:1005		0xe883d8		488b8c24b8000000		MOVQ 0xb8(SP), CX											
  context.go:1005		0xe883e0		48898c2488000000		MOVQ CX, 0x88(SP)											
  context.go:1005		0xe883e8		488d05f13a2400			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe883ef		488d9c2480000000		LEAQ 0x80(SP), BX											
  context.go:1005		0xe883f7		e8a46c58ff			CALL runtime.convT(SB)											
  context.go:1005		0xe883fc		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe88401		488d0d286efe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe88408		4889c7				MOVQ AX, DI												
  context.go:1005		0xe8840b		488b8424d8000000		MOVQ 0xd8(SP), AX											
  context.go:1005		0xe88413		e84873f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:432	0xe88418		4881c4c8000000			ADDQ $.file+123(SB), SP											
  task_chain_controller.go:432	0xe8841f		5d				POPQ BP													
  task_chain_controller.go:432	0xe88420		c3				RET													
  task_chain_controller.go:436	0xe88421		e8ba2b5eff			CALL runtime.makemap_small(SB)										
  task_chain_controller.go:436	0xe88426		48898424b8000000		MOVQ AX, 0xb8(SP)											
  task_chain_controller.go:436	0xe8842e		4889c3				MOVQ AX, BX												
  task_chain_controller.go:436	0xe88431		488d0dd5a82e00			LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:436	0xe88438		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:436	0xe8843d		488d053cc42100			LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:436	0xe88444		e8d75b5eff			CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:436	0xe88449		488d0dd0a81b00			LEAQ runtime.types+384288(SB), CX									
  task_chain_controller.go:436	0xe88450		488908				MOVQ CX, 0(AX)												
  task_chain_controller.go:436	0xe88453		833df6566d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:436	0xe8845a		740c				JE 0xe88468												
  task_chain_controller.go:436	0xe8845c		488b4808			MOVQ 0x8(AX), CX											
  task_chain_controller.go:436	0xe88460		e8bbff5eff			CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:436	0xe88465		49890b				MOVQ CX, 0(R11)												
  task_chain_controller.go:436	0xe88468		488d0db9220f00			LEAQ runtime.staticuint64s+8(SB), CX									
  task_chain_controller.go:436	0xe8846f		48894808			MOVQ CX, 0x8(AX)											
  task_chain_controller.go:436	0xe88473		488b442438			MOVQ 0x38(SP), AX											
  task_chain_controller.go:436	0xe88478		e8231c5eff			CALL runtime.convT64(SB)										
  task_chain_controller.go:436	0xe8847d		48898424b0000000		MOVQ AX, 0xb0(SP)											
  task_chain_controller.go:436	0xe88485		488b9c24b8000000		MOVQ 0xb8(SP), BX											
  task_chain_controller.go:436	0xe8848d		488d0dd36d2e00			LEAQ go:string.*+27999(SB), CX										
  task_chain_controller.go:436	0xe88494		bf06000000			MOVL $__major_os_version__(SB), DI									
  task_chain_controller.go:436	0xe88499		488d05e0c32100			LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:436	0xe884a0		e87b5b5eff			CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:436	0xe884a5		488d0db4a61b00			LEAQ runtime.types+383840(SB), CX									
  task_chain_controller.go:436	0xe884ac		488908				MOVQ CX, 0(AX)												
  task_chain_controller.go:436	0xe884af		833d9a566d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:436	0xe884b6		750a				JNE 0xe884c2												
  task_chain_controller.go:436	0xe884b8		488b8c24b0000000		MOVQ 0xb0(SP), CX											
  task_chain_controller.go:436	0xe884c0		eb18				JMP 0xe884da												
  task_chain_controller.go:436	0xe884c2		e879ff5eff			CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:436	0xe884c7		488b8c24b0000000		MOVQ 0xb0(SP), CX											
  task_chain_controller.go:436	0xe884cf		49890b				MOVQ CX, 0(R11)												
  task_chain_controller.go:436	0xe884d2		488b5008			MOVQ 0x8(AX), DX											
  task_chain_controller.go:436	0xe884d6		49895308			MOVQ DX, 0x8(R11)											
  task_chain_controller.go:436	0xe884da		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe884de		488d0d9bc32100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe884e5		48898c2480000000		MOVQ CX, 0x80(SP)											
  context.go:1005		0xe884ed		488b8c24b8000000		MOVQ 0xb8(SP), CX											
  context.go:1005		0xe884f5		48898c2488000000		MOVQ CX, 0x88(SP)											
  context.go:1005		0xe884fd		488d05dc392400			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe88504		488d9c2480000000		LEAQ 0x80(SP), BX											
  context.go:1005		0xe8850c		e88f6b58ff			CALL runtime.convT(SB)											
  context.go:1005		0xe88511		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe88516		488d0d136dfe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe8851d		4889c7				MOVQ AX, DI												
  context.go:1005		0xe88520		488b8424d8000000		MOVQ 0xd8(SP), AX											
  context.go:1005		0xe88528		e83372f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:437	0xe8852d		4881c4c8000000			ADDQ $.file+123(SB), SP											
  task_chain_controller.go:437	0xe88534		5d				POPQ BP													
  task_chain_controller.go:437	0xe88535		c3				RET													
  task_chain_controller.go:408	0xe88536		4889442440			MOVQ AX, 0x40(SP)											
  task_chain_controller.go:408	0xe8853b		48895c2450			MOVQ BX, 0x50(SP)											
  task_chain_controller.go:420	0xe88540		440f117c2460			MOVUPS X15, 0x60(SP)											
  task_chain_controller.go:420	0xe88546		440f117c2470			MOVUPS X15, 0x70(SP)											
  task_chain_controller.go:420	0xe8854c		488b8424e8000000		MOVQ 0xe8(SP), AX											
  task_chain_controller.go:420	0xe88554		488b9c24f0000000		MOVQ 0xf0(SP), BX											
  task_chain_controller.go:420	0xe8855c		0f1f4000			NOPL 0(AX)												
  task_chain_controller.go:420	0xe88560		e8bb1b5eff			CALL runtime.convTstring(SB)										
  task_chain_controller.go:420	0xe88565		488d0db4a31b00			LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:420	0xe8856c		48894c2460			MOVQ CX, 0x60(SP)											
  task_chain_controller.go:420	0xe88571		4889442468			MOVQ AX, 0x68(SP)											
  task_chain_controller.go:419	0xe88576		488b542440			MOVQ 0x40(SP), DX											
  task_chain_controller.go:419	0xe8857b		0f1f440000			NOPL 0(AX)(AX*1)											
  task_chain_controller.go:419	0xe88580		4885d2				TESTQ DX, DX												
  task_chain_controller.go:420	0xe88583		7406				JE 0xe8858b												
  task_chain_controller.go:420	0xe88585		488b4208			MOVQ 0x8(DX), AX											
  task_chain_controller.go:420	0xe88589		eb03				JMP 0xe8858e												
  task_chain_controller.go:420	0xe8858b		4889d0				MOVQ DX, AX												
  task_chain_controller.go:420	0xe8858e		4889442470			MOVQ AX, 0x70(SP)											
  task_chain_controller.go:420	0xe88593		488b542450			MOVQ 0x50(SP), DX											
  task_chain_controller.go:420	0xe88598		4889542478			MOVQ DX, 0x78(SP)											
  print.go:233			0xe8859d		488b1ddc9a6802			MOVQ os.Stdout(SB), BX											
  print.go:233			0xe885a4		488d053535fe01			LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233			0xe885ab		488d0d460d3000			LEAQ go:string.*+134640(SB), CX										
  print.go:233			0xe885b2		bf1c000000			MOVL $__major_os_version__+22(SB), DI									
  print.go:233			0xe885b7		488d742460			LEAQ 0x60(SP), SI											
  print.go:233			0xe885bc		41b802000000			MOVL $__minor_os_version__+1(SB), R8									
  print.go:233			0xe885c2		4d89c1				MOVQ R8, R9												
  print.go:233			0xe885c5		e8566c69ff			CALL fmt.Fprintf(SB)											
  task_chain_controller.go:421	0xe885ca		e8112a5eff			CALL runtime.makemap_small(SB)										
  task_chain_controller.go:421	0xe885cf		48898424b8000000		MOVQ AX, 0xb8(SP)											
  task_chain_controller.go:421	0xe885d7		4889c3				MOVQ AX, BX												
  task_chain_controller.go:421	0xe885da		488d0d2ca72e00			LEAQ go:string.*+43013(SB), CX										
  task_chain_controller.go:421	0xe885e1		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:421	0xe885e6		488d0593c22100			LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:421	0xe885ed		e82e5a5eff			CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:421	0xe885f2		488d1527a71b00			LEAQ runtime.types+384288(SB), DX									
  task_chain_controller.go:421	0xe885f9		488910				MOVQ DX, 0(AX)												
  task_chain_controller.go:421	0xe885fc		833d4d556d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:421	0xe88603		740c				JE 0xe88611												
  task_chain_controller.go:421	0xe88605		488b4808			MOVQ 0x8(AX), CX											
  task_chain_controller.go:421	0xe88609		e812fe5eff			CALL runtime.gcWriteBarrier1(SB)									
  task_chain_controller.go:421	0xe8860e		49890b				MOVQ CX, 0(R11)												
  task_chain_controller.go:421	0xe88611		488d0d08210f00			LEAQ runtime.staticuint64s(SB), CX									
  task_chain_controller.go:421	0xe88618		48894808			MOVQ CX, 0x8(AX)											
  task_chain_controller.go:421	0xe8861c		488b4c2440			MOVQ 0x40(SP), CX											
  task_chain_controller.go:421	0xe88621		488b4918			MOVQ 0x18(CX), CX											
  task_chain_controller.go:421	0xe88625		488b442450			MOVQ 0x50(SP), AX											
  task_chain_controller.go:421	0xe8862a		ffd1				CALL CX													
  task_chain_controller.go:421	0xe8862c		e8ef1a5eff			CALL runtime.convTstring(SB)										
  task_chain_controller.go:421	0xe88631		48898424b0000000		MOVQ AX, 0xb0(SP)											
  task_chain_controller.go:421	0xe88639		488b9c24b8000000		MOVQ 0xb8(SP), BX											
  task_chain_controller.go:421	0xe88641		488d0da9a62e00			LEAQ go:string.*+42985(SB), CX										
  task_chain_controller.go:421	0xe88648		bf07000000			MOVL $__major_os_version__+1(SB), DI									
  task_chain_controller.go:421	0xe8864d		488d052cc22100			LEAQ runtime.types+784512(SB), AX									
  task_chain_controller.go:421	0xe88654		e8c7595eff			CALL runtime.mapassign_faststr(SB)									
  task_chain_controller.go:421	0xe88659		488d0dc0a21b00			LEAQ runtime.types+383264(SB), CX									
  task_chain_controller.go:421	0xe88660		488908				MOVQ CX, 0(AX)												
  task_chain_controller.go:421	0xe88663		833de6546d0200			CMPL runtime.writeBarrier(SB), $0x0									
  task_chain_controller.go:421	0xe8866a		750a				JNE 0xe88676												
  task_chain_controller.go:421	0xe8866c		488b8c24b0000000		MOVQ 0xb0(SP), CX											
  task_chain_controller.go:421	0xe88674		eb18				JMP 0xe8868e												
  task_chain_controller.go:421	0xe88676		e8c5fd5eff			CALL runtime.gcWriteBarrier2(SB)									
  task_chain_controller.go:421	0xe8867b		488b8c24b0000000		MOVQ 0xb0(SP), CX											
  task_chain_controller.go:421	0xe88683		49890b				MOVQ CX, 0(R11)												
  task_chain_controller.go:421	0xe88686		488b5008			MOVQ 0x8(AX), DX											
  task_chain_controller.go:421	0xe8868a		49895308			MOVQ DX, 0x8(R11)											
  task_chain_controller.go:421	0xe8868e		48894808			MOVQ CX, 0x8(AX)											
  context.go:1005		0xe88692		488d0de7c12100			LEAQ runtime.types+784512(SB), CX									
  context.go:1005		0xe88699		48898c2480000000		MOVQ CX, 0x80(SP)											
  context.go:1005		0xe886a1		488b8c24b8000000		MOVQ 0xb8(SP), CX											
  context.go:1005		0xe886a9		48898c2488000000		MOVQ CX, 0x88(SP)											
  context.go:1005		0xe886b1		488d0528382400			LEAQ runtime.types+945888(SB), AX									
  context.go:1005		0xe886b8		488d9c2480000000		LEAQ 0x80(SP), BX											
  context.go:1005		0xe886c0		e8db6958ff			CALL runtime.convT(SB)											
  context.go:1005		0xe886c5		bbc8000000			MOVL $.file+123(SB), BX											
  context.go:1005		0xe886ca		488d0d5f6bfe01			LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005		0xe886d1		4889c7				MOVQ AX, DI												
  context.go:1005		0xe886d4		488b8424d8000000		MOVQ 0xd8(SP), AX											
  context.go:1005		0xe886dc		0f1f4000			NOPL 0(AX)												
  context.go:1005		0xe886e0		e87b70f7ff			CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  task_chain_controller.go:422	0xe886e5		4881c4c8000000			ADDQ $.file+123(SB), SP											
  task_chain_controller.go:422	0xe886ec		5d				POPQ BP													
  task_chain_controller.go:422	0xe886ed		c3				RET													
  task_chain_controller.go:403	0xe886ee		4889c1				MOVQ AX, CX												
  task_chain_controller.go:403	0xe886f1		4889df				MOVQ BX, DI												
  task_chain_controller.go:403	0xe886f4		488b8424d8000000		MOVQ 0xd8(SP), AX											
  task_chain_controller.go:403	0xe886fc		bb90010000			MOVL $.file+323(SB), BX											
  task_chain_controller.go:403	0xe88701		e89a29f7ff			CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  task_chain_controller.go:404	0xe88706		4881c4c8000000			ADDQ $.file+123(SB), SP											
  task_chain_controller.go:404	0xe8870d		5d				POPQ BP													
  task_chain_controller.go:404	0xe8870e		c3				RET													
  context.go:712		0xe8870f		4d89ca				MOVQ R9, R10												
  context.go:712		0xe88712		4d21c1				ANDQ R8, R9												
  context.go:712		0xe88715		49c1e104			SHLQ $__subsystem__+1(SB), R9										
  context.go:712		0xe88719		4d8b5c3108			MOVQ 0x8(R9)(SI*1), R11											
  context.go:712		0xe8871e		6690				NOPW													
  context.go:712		0xe88720		4939db				CMPQ R11, BX												
  context.go:712		0xe88723		742f				JE 0xe88754												
  context.go:712		0xe88725		4d8d4a01			LEAQ 0x1(R10), R9											
  context.go:712		0xe88729		4d85db				TESTQ R11, R11												
  context.go:712		0xe8872c		75e1				JNE 0xe8870f												
  context.go:712		0xe8872e		4889542458			MOVQ DX, 0x58(SP)											
  context.go:712		0xe88733		488d05962c1300			LEAQ CAS-Backend/biz/controller..typeAssert.33(SB), AX							
  context.go:712		0xe8873a		e8a16b58ff			CALL runtime.typeAssert(SB)										
  context.go:752		0xe8873f		488b542458			MOVQ 0x58(SP), DX											
  context.go:712		0xe88744		4889c1				MOVQ AX, CX												
  context.go:752		0xe88747		488b8424c0000000		MOVQ 0xc0(SP), AX											
  context.go:712		0xe8874f		e988faffff			JMP 0xe881dc												
  context.go:712		0xe88754		498b4c3110			MOVQ 0x10(R9)(SI*1), CX											
  context.go:712		0xe88759		e97efaffff			JMP 0xe881dc												
  task_chain_controller.go:400	0xe8875e		4889442408			MOVQ AX, 0x8(SP)											
  task_chain_controller.go:400	0xe88763		48895c2410			MOVQ BX, 0x10(SP)											
  task_chain_controller.go:400	0xe88768		48894c2418			MOVQ CX, 0x18(SP)											
  task_chain_controller.go:400	0xe8876d		48897c2420			MOVQ DI, 0x20(SP)											
  task_chain_controller.go:400	0xe88772		e869dd5eff			CALL runtime.morestack_noctxt.abi0(SB)									
  task_chain_controller.go:400	0xe88777		488b442408			MOVQ 0x8(SP), AX											
  task_chain_controller.go:400	0xe8877c		488b5c2410			MOVQ 0x10(SP), BX											
  task_chain_controller.go:400	0xe88781		488b4c2418			MOVQ 0x18(SP), CX											
  task_chain_controller.go:400	0xe88786		488b7c2420			MOVQ 0x20(SP), DI											
  task_chain_controller.go:400	0xe8878b		e9d0f9ffff			JMP CAS-Backend/biz/controller.runTaskChainNavigationControl(SB)					
  :-1				0xe88790		cc				INT $__subsystem__(SB)											
  :-1				0xe88791		cc				INT $__subsystem__(SB)											
  :-1				0xe88792		cc				INT $__subsystem__(SB)											
  :-1				0xe88793		cc				INT $__subsystem__(SB)											
  :-1				0xe88794		cc				INT $__subsystem__(SB)											
  :-1				0xe88795		cc				INT $__subsystem__(SB)											
  :-1				0xe88796		cc				INT $__subsystem__(SB)											
  :-1				0xe88797		cc				INT $__subsystem__(SB)											
  :-1				0xe88798		cc				INT $__subsystem__(SB)											
  :-1				0xe88799		cc				INT $__subsystem__(SB)											
  :-1				0xe8879a		cc				INT $__subsystem__(SB)											
  :-1				0xe8879b		cc				INT $__subsystem__(SB)											
  :-1				0xe8879c		cc				INT $__subsystem__(SB)											
  :-1				0xe8879d		cc				INT $__subsystem__(SB)											
  :-1				0xe8879e		cc				INT $__subsystem__(SB)											
  :-1				0xe8879f		cc				INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.runTaskChainNavigationControl.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/task_chain_controller.go
  task_chain_controller.go:408	0xe887a0		493b6610		CMPQ SP, 0x10(R14)							
  task_chain_controller.go:408	0xe887a4		0f86a3000000		JBE 0xe8884d								
  task_chain_controller.go:408	0xe887aa		55			PUSHQ BP								
  task_chain_controller.go:408	0xe887ab		4889e5			MOVQ SP, BP								
  task_chain_controller.go:408	0xe887ae		4883ec38		SUBQ $__major_os_version__+50(SB), SP					
  task_chain_controller.go:409	0xe887b2		48895c2450		MOVQ BX, 0x50(SP)							
  task_chain_controller.go:409	0xe887b7		4889442448		MOVQ AX, 0x48(SP)							
  task_chain_controller.go:408	0xe887bc		488b4a08		MOVQ 0x8(DX), CX							
  task_chain_controller.go:409	0xe887c0		488b31			MOVQ 0(CX), SI								
  task_chain_controller.go:408	0xe887c3		488b7a10		MOVQ 0x10(DX), DI							
  task_chain_controller.go:408	0xe887c7		48897c2430		MOVQ DI, 0x30(SP)							
  task_chain_controller.go:408	0xe887cc		4c8b4218		MOVQ 0x18(DX), R8							
  task_chain_controller.go:408	0xe887d0		4c89442428		MOVQ R8, 0x28(SP)							
  task_chain_controller.go:409	0xe887d5		4889ca			MOVQ CX, DX								
  task_chain_controller.go:409	0xe887d8		ffd6			CALL SI									
  task_chain_controller.go:409	0xe887da		4885c0			TESTQ AX, AX								
  task_chain_controller.go:409	0xe887dd		7568			JNE 0xe88847								
  task_chain_controller.go:412	0xe887df		488b542430		MOVQ 0x30(SP), DX							
  task_chain_controller.go:412	0xe887e4		488b4a08		MOVQ 0x8(DX), CX							
  task_chain_controller.go:412	0xe887e8		488b7a10		MOVQ 0x10(DX), DI							
  task_chain_controller.go:412	0xe887ec		488b442448		MOVQ 0x48(SP), AX							
  task_chain_controller.go:412	0xe887f1		488b5c2450		MOVQ 0x50(SP), BX							
  task_chain_controller.go:412	0xe887f6		be01000000		MOVL $__minor_os_version__(SB), SI					
  task_chain_controller.go:412	0xe887fb		0f1f440000		NOPL 0(AX)(AX*1)							
  task_chain_controller.go:412	0xe88800		e87bf4f8ff		CALL CAS-Backend/pkg/agvcontrol.SendRobotTaskListStatusReq(SB)		
  task_chain_controller.go:413	0xe88805		4885db			TESTQ BX, BX								
  task_chain_controller.go:413	0xe88808		7531			JNE 0xe8883b								
  task_chain_controller.go:416	0xe8880a		833d3f536d0200		CMPL runtime.writeBarrier(SB), $0x0					
  task_chain_controller.go:416	0xe88811		7507			JNE 0xe8881a								
  task_chain_controller.go:416	0xe88813		488b4c2428		MOVQ 0x28(SP), CX							
  task_chain_controller.go:416	0xe88818		eb14			JMP 0xe8882e								
  task_chain_controller.go:416	0xe8881a		e821fc5eff		CALL runtime.gcWriteBarrier2(SB)					
  task_chain_controller.go:416	0xe8881f		498903			MOVQ AX, 0(R11)								
  task_chain_controller.go:416	0xe88822		488b4c2428		MOVQ 0x28(SP), CX							
  task_chain_controller.go:416	0xe88827		488b11			MOVQ 0(CX), DX								
  task_chain_controller.go:416	0xe8882a		49895308		MOVQ DX, 0x8(R11)							
  task_chain_controller.go:416	0xe8882e		488901			MOVQ AX, 0(CX)								
  task_chain_controller.go:417	0xe88831		31c0			XORL AX, AX								
  task_chain_controller.go:417	0xe88833		31db			XORL BX, BX								
  task_chain_controller.go:417	0xe88835		4883c438		ADDQ $__major_os_version__+50(SB), SP					
  task_chain_controller.go:417	0xe88839		5d			POPQ BP									
  task_chain_controller.go:417	0xe8883a		c3			RET									
  task_chain_controller.go:414	0xe8883b		4889d8			MOVQ BX, AX								
  task_chain_controller.go:414	0xe8883e		4889cb			MOVQ CX, BX								
  task_chain_controller.go:414	0xe88841		4883c438		ADDQ $__major_os_version__+50(SB), SP					
  task_chain_controller.go:414	0xe88845		5d			POPQ BP									
  task_chain_controller.go:414	0xe88846		c3			RET									
  task_chain_controller.go:410	0xe88847		4883c438		ADDQ $__major_os_version__+50(SB), SP					
  task_chain_controller.go:410	0xe8884b		5d			POPQ BP									
  task_chain_controller.go:410	0xe8884c		c3			RET									
  task_chain_controller.go:408	0xe8884d		4889442408		MOVQ AX, 0x8(SP)							
  task_chain_controller.go:408	0xe88852		48895c2410		MOVQ BX, 0x10(SP)							
  task_chain_controller.go:408	0xe88857		e804dc5eff		CALL runtime.morestack.abi0(SB)						
  task_chain_controller.go:408	0xe8885c		488b442408		MOVQ 0x8(SP), AX							
  task_chain_controller.go:408	0xe88861		488b5c2410		MOVQ 0x10(SP), BX							
  task_chain_controller.go:408	0xe88866		e935ffffff		JMP CAS-Backend/biz/controller.runTaskChainNavigationControl.func1(SB)	
  :-1				0xe8886b		cc			INT $__subsystem__(SB)							
  :-1				0xe8886c		cc			INT $__subsystem__(SB)							
  :-1				0xe8886d		cc			INT $__subsystem__(SB)							
  :-1				0xe8886e		cc			INT $__subsystem__(SB)							
  :-1				0xe8886f		cc			INT $__subsystem__(SB)							
  :-1				0xe88870		cc			INT $__subsystem__(SB)							
  :-1				0xe88871		cc			INT $__subsystem__(SB)							
  :-1				0xe88872		cc			INT $__subsystem__(SB)							
  :-1				0xe88873		cc			INT $__subsystem__(SB)							
  :-1				0xe88874		cc			INT $__subsystem__(SB)							
  :-1				0xe88875		cc			INT $__subsystem__(SB)							
  :-1				0xe88876		cc			INT $__subsystem__(SB)							
  :-1				0xe88877		cc			INT $__subsystem__(SB)							
  :-1				0xe88878		cc			INT $__subsystem__(SB)							
  :-1				0xe88879		cc			INT $__subsystem__(SB)							
  :-1				0xe8887a		cc			INT $__subsystem__(SB)							
  :-1				0xe8887b		cc			INT $__subsystem__(SB)							
  :-1				0xe8887c		cc			INT $__subsystem__(SB)							
  :-1				0xe8887d		cc			INT $__subsystem__(SB)							
  :-1				0xe8887e		cc			INT $__subsystem__(SB)							
  :-1				0xe8887f		cc			INT $__subsystem__(SB)							

