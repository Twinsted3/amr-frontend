TEXT CAS-Backend/biz/controller.GetAllMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:29	0xe7dc40		4c8da424d8feffff	LEAQ 0xfffffed8(SP), R12										
  map_controller.go:29	0xe7dc48		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:29	0xe7dc4c		0f8618070000		JBE 0xe7e36a												
  map_controller.go:29	0xe7dc52		55			PUSHQ BP												
  map_controller.go:29	0xe7dc53		4889e5			MOVQ SP, BP												
  map_controller.go:29	0xe7dc56		4881eca0010000		SUBQ $.file+339(SB), SP											
  map_controller.go:40	0xe7dc5d		48898424b0010000	MOVQ AX, 0x1b0(SP)											
  map_controller.go:32	0xe7dc65		488d1d24ba2e00		LEAQ go:string.*+4488(SB), BX										
  map_controller.go:32	0xe7dc6c		b904000000		MOVL $__subsystem__+1(SB), CX										
  map_controller.go:32	0xe7dc71		488d3d5875fe01		LEAQ runtime.gcbits.*+1808(SB), DI									
  map_controller.go:32	0xe7dc78		be01000000		MOVL $__minor_os_version__(SB), SI									
  map_controller.go:32	0xe7dc7d		0f1f00			NOPL 0(AX)												
  map_controller.go:32	0xe7dc80		e8bbe3f7ff		CALL github.com/gin-gonic/gin.(*Context).DefaultQuery(SB)						
  map_controller.go:32	0xe7dc85		4889842420010000	MOVQ AX, 0x120(SP)											
  map_controller.go:32	0xe7dc8d		48895c2470		MOVQ BX, 0x70(SP)											
  map_controller.go:33	0xe7dc92		b904000000		MOVL $__subsystem__+1(SB), CX										
  map_controller.go:33	0xe7dc97		488d3d8a70fe01		LEAQ runtime.gcbits.*+616(SB), DI									
  map_controller.go:33	0xe7dc9e		be01000000		MOVL $__minor_os_version__(SB), SI									
  map_controller.go:33	0xe7dca3		488b8424b0010000	MOVQ 0x1b0(SP), AX											
  map_controller.go:33	0xe7dcab		488d1de2b92e00		LEAQ go:string.*+4492(SB), BX										
  map_controller.go:33	0xe7dcb2		e889e3f7ff		CALL github.com/gin-gonic/gin.(*Context).DefaultQuery(SB)						
  map_controller.go:33	0xe7dcb7		48898424a0000000	MOVQ AX, 0xa0(SP)											
  map_controller.go:33	0xe7dcbf		48895c2448		MOVQ BX, 0x48(SP)											
  map_controller.go:34	0xe7dcc4		b906000000		MOVL $__major_os_version__(SB), CX									
  map_controller.go:34	0xe7dcc9		488b8424b0010000	MOVQ 0x1b0(SP), AX											
  map_controller.go:34	0xe7dcd1		488d1db1172f00		LEAQ go:string.*+28545(SB), BX										
  map_controller.go:34	0xe7dcd8		e8e3e2f7ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  map_controller.go:34	0xe7dcdd		48898424a8000000	MOVQ AX, 0xa8(SP)											
  map_controller.go:34	0xe7dce5		48895c2450		MOVQ BX, 0x50(SP)											
  map_controller.go:36	0xe7dcea		488b842420010000	MOVQ 0x120(SP), AX											
  map_controller.go:36	0xe7dcf2		488b5c2470		MOVQ 0x70(SP), BX											
  map_controller.go:36	0xe7dcf7		e8a4d566ff		CALL strconv.Atoi(SB)											
  map_controller.go:36	0xe7dcfc		4889442468		MOVQ AX, 0x68(SP)											
  map_controller.go:37	0xe7dd01		488b5c2448		MOVQ 0x48(SP), BX											
  map_controller.go:37	0xe7dd06		488b8424a0000000	MOVQ 0xa0(SP), AX											
  map_controller.go:37	0xe7dd0e		e88dd566ff		CALL strconv.Atoi(SB)											
  map_controller.go:37	0xe7dd13		4889442440		MOVQ AX, 0x40(SP)											
  map_controller.go:39	0xe7dd18		4889c3			MOVQ AX, BX												
  map_controller.go:39	0xe7dd1b		488b8c24a8000000	MOVQ 0xa8(SP), CX											
  map_controller.go:39	0xe7dd23		488b7c2450		MOVQ 0x50(SP), DI											
  map_controller.go:39	0xe7dd28		488b442468		MOVQ 0x68(SP), AX											
  map_controller.go:39	0xe7dd2d		e86eb1fcff		CALL CAS-Backend/biz/service.SlAllMap(SB)								
  map_controller.go:39	0xe7dd32		84c0			TESTL AL, AL												
  map_controller.go:40	0xe7dd34		7410			JE 0xe7dd46												
  map_controller.go:39	0xe7dd36		48895c2478		MOVQ BX, 0x78(SP)											
  map_controller.go:63	0xe7dd3b		31c0			XORL AX, AX												
  map_controller.go:63	0xe7dd3d		31d2			XORL DX, DX												
  map_controller.go:63	0xe7dd3f		31f6			XORL SI, SI												
  map_controller.go:63	0xe7dd41		e983010000		JMP 0xe7dec9												
  map_controller.go:52	0xe7dd46		e895d25eff		CALL runtime.makemap_small(SB)										
  map_controller.go:52	0xe7dd4b		4889842488010000	MOVQ AX, 0x188(SP)											
  map_controller.go:52	0xe7dd53		4889c3			MOVQ AX, BX												
  map_controller.go:52	0xe7dd56		488d0d32172f00		LEAQ go:string.*+28551(SB), CX										
  map_controller.go:52	0xe7dd5d		bf06000000		MOVL $__major_os_version__(SB), DI									
  map_controller.go:52	0xe7dd62		488d05176b2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:52	0xe7dd69		e8b2025fff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:52	0xe7dd6e		488d0dab4f1c00		LEAQ runtime.types+384288(SB), CX									
  map_controller.go:52	0xe7dd75		488908			MOVQ CX, 0(AX)												
  map_controller.go:52	0xe7dd78		833dd1fd6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:52	0xe7dd7f		90			NOPL													
  map_controller.go:52	0xe7dd80		740c			JE 0xe7dd8e												
  map_controller.go:52	0xe7dd82		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:52	0xe7dd86		e895a65fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:52	0xe7dd8b		498913			MOVQ DX, 0(R11)												
  map_controller.go:52	0xe7dd8e		488d158bc90f00		LEAQ runtime.staticuint64s(SB), DX									
  map_controller.go:52	0xe7dd95		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:52	0xe7dd99		488d05e06a2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:52	0xe7dda0		488b9c2488010000	MOVQ 0x188(SP), BX											
  map_controller.go:52	0xe7dda8		488d0d424f2f00		LEAQ go:string.*+42985(SB), CX										
  map_controller.go:52	0xe7ddaf		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:52	0xe7ddb4		e867025fff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:52	0xe7ddb9		488d15604b1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:52	0xe7ddc0		488910			MOVQ DX, 0(AX)												
  map_controller.go:52	0xe7ddc3		833d86fd6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:52	0xe7ddca		740c			JE 0xe7ddd8												
  map_controller.go:52	0xe7ddcc		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:52	0xe7ddd0		e84ba65fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:52	0xe7ddd5		498933			MOVQ SI, 0(R11)												
  map_controller.go:52	0xe7ddd8		488d1541acfe01		LEAQ CAS-Backend/biz/controller..stmp_95(SB), DX							
  map_controller.go:52	0xe7dddf		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:52	0xe7dde3		488d05966a2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:52	0xe7ddea		488b9c2488010000	MOVQ 0x188(SP), BX											
  map_controller.go:52	0xe7ddf2		488d0dc8c72e00		LEAQ go:string.*+8377(SB), CX										
  map_controller.go:52	0xe7ddf9		bf05000000		MOVL $__subsystem__+2(SB), DI										
  map_controller.go:52	0xe7ddfe		6690			NOPW													
  map_controller.go:52	0xe7de00		e81b025fff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:52	0xe7de05		488d15144b1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:52	0xe7de0c		488910			MOVQ DX, 0(AX)												
  map_controller.go:52	0xe7de0f		833d3afd6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:52	0xe7de16		7410			JE 0xe7de28												
  map_controller.go:52	0xe7de18		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:52	0xe7de1c		0f1f4000		NOPL 0(AX)												
  map_controller.go:52	0xe7de20		e8fba55fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:52	0xe7de25		49890b			MOVQ CX, 0(R11)												
  map_controller.go:52	0xe7de28		488d0d01acfe01		LEAQ CAS-Backend/biz/controller..stmp_96(SB), CX							
  map_controller.go:52	0xe7de2f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7de33		488d0d466a2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7de3a		48898c2490010000	MOVQ CX, 0x190(SP)											
  context.go:1005	0xe7de42		488b8c2488010000	MOVQ 0x188(SP), CX											
  context.go:1005	0xe7de4a		48898c2498010000	MOVQ CX, 0x198(SP)											
  context.go:1005	0xe7de52		488d0587e02400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7de59		488d9c2490010000	LEAQ 0x190(SP), BX											
  context.go:1005	0xe7de61		e83a1259ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7de66		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe7de6b		488d0dbe13ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7de72		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7de75		488b8424b0010000	MOVQ 0x1b0(SP), AX											
  context.go:1005	0xe7de7d		0f1f00			NOPL 0(AX)												
  context.go:1005	0xe7de80		e8db18f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:58	0xe7de85		4881c4a0010000		ADDQ $.file+339(SB), SP											
  map_controller.go:58	0xe7de8c		5d			POPQ BP													
  map_controller.go:58	0xe7de8d		c3			RET													
  map_controller.go:72	0xe7de8e		498d3c12		LEAQ 0(R10)(DX*1), DI											
  map_controller.go:72	0xe7de92		488d7fa0		LEAQ -0x60(DI), DI											
  map_controller.go:72	0xe7de96		4c8b9c24b8000000	MOVQ 0xb8(SP), R11											
  map_controller.go:72	0xe7de9e		4d895c1298		MOVQ R11, -0x68(R10)(DX*1)										
  map_controller.go:72	0xe7dea3		488db424c0000000	LEAQ 0xc0(SP), SI											
  map_controller.go:72	0xe7deab		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:72	0xe7deb0		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:72	0xe7deb5		e892af5fff		CALL 0x478e4c												
  map_controller.go:72	0xe7deba		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:63	0xe7debe		4883c150		ADDQ $.file+3(SB), CX											
  map_controller.go:63	0xe7dec2		498d78ff		LEAQ -0x1(R8), DI											
  map_controller.go:42	0xe7dec6		4c89ce			MOVQ R9, SI												
  map_controller.go:63	0xe7dec9		4885ff			TESTQ DI, DI												
  map_controller.go:63	0xe7decc		0f8ec9010000		JLE 0xe7e09b												
  map_controller.go:63	0xe7ded2		4889bc2498000000	MOVQ DI, 0x98(SP)											
  map_controller.go:63	0xe7deda		48898c2480010000	MOVQ CX, 0x180(SP)											
  map_controller.go:63	0xe7dee2		4989f8			MOVQ DI, R8												
  map_controller.go:63	0xe7dee5		488dbc2430010000	LEAQ 0x130(SP), DI											
  map_controller.go:42	0xe7deed		4989f1			MOVQ SI, R9												
  map_controller.go:63	0xe7def0		4889ce			MOVQ CX, SI												
  map_controller.go:63	0xe7def3		660f1f840000000000	NOPW 0(AX)(AX*1)											
  map_controller.go:63	0xe7defc		0f1f4000		NOPL 0(AX)												
  map_controller.go:63	0xe7df00		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:63	0xe7df05		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:63	0xe7df0a		e84baf5fff		CALL 0x478e5a												
  map_controller.go:63	0xe7df0f		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:69	0xe7df13		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)											
  map_controller.go:69	0xe7df1c		488dbc24c0000000	LEAQ 0xc0(SP), DI											
  map_controller.go:69	0xe7df24		488d7fe0		LEAQ -0x20(DI), DI											
  map_controller.go:69	0xe7df28		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:69	0xe7df2d		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:69	0xe7df32		e8b4ab5fff		CALL 0x478aeb												
  map_controller.go:69	0xe7df37		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:65	0xe7df3b		4c8b942430010000	MOVQ 0x130(SP), R10											
  map_controller.go:65	0xe7df43		4c899424b8000000	MOVQ R10, 0xb8(SP)											
  map_controller.go:66	0xe7df4b		4c8b942438010000	MOVQ 0x138(SP), R10											
  map_controller.go:66	0xe7df53		4c8b9c2440010000	MOVQ 0x140(SP), R11											
  map_controller.go:66	0xe7df5b		4c899424c0000000	MOVQ R10, 0xc0(SP)											
  map_controller.go:66	0xe7df63		4c899c24c8000000	MOVQ R11, 0xc8(SP)											
  map_controller.go:67	0xe7df6b		4c8b942448010000	MOVQ 0x148(SP), R10											
  map_controller.go:67	0xe7df73		4c8b9c2450010000	MOVQ 0x150(SP), R11											
  map_controller.go:67	0xe7df7b		4c899424d0000000	MOVQ R10, 0xd0(SP)											
  map_controller.go:67	0xe7df83		4c899c24d8000000	MOVQ R11, 0xd8(SP)											
  map_controller.go:68	0xe7df8b		4c8b942458010000	MOVQ 0x158(SP), R10											
  map_controller.go:68	0xe7df93		4c8b9c2460010000	MOVQ 0x160(SP), R11											
  map_controller.go:68	0xe7df9b		4c899424e0000000	MOVQ R10, 0xe0(SP)											
  map_controller.go:68	0xe7dfa3		4c899c24e8000000	MOVQ R11, 0xe8(SP)											
  map_controller.go:69	0xe7dfab		4c8b942468010000	MOVQ 0x168(SP), R10											
  map_controller.go:69	0xe7dfb3		4c8b9c2470010000	MOVQ 0x170(SP), R11											
  map_controller.go:69	0xe7dfbb		4c8ba42478010000	MOVQ 0x178(SP), R12											
  map_controller.go:69	0xe7dfc3		4c899424f0000000	MOVQ R10, 0xf0(SP)											
  map_controller.go:69	0xe7dfcb		4c899c24f8000000	MOVQ R11, 0xf8(SP)											
  map_controller.go:69	0xe7dfd3		4c89a42400010000	MOVQ R12, 0x100(SP)											
  map_controller.go:72	0xe7dfdb		49ffc1			INCQ R9													
  map_controller.go:72	0xe7dfde		6690			NOPW													
  map_controller.go:72	0xe7dfe0		4c39c8			CMPQ AX, R9												
  map_controller.go:72	0xe7dfe3		7338			JAE 0xe7e01d												
  map_controller.go:72	0xe7dfe5		4c89cb			MOVQ R9, BX												
  map_controller.go:72	0xe7dfe8		4889c1			MOVQ AX, CX												
  map_controller.go:72	0xe7dfeb		bf01000000		MOVL $__minor_os_version__(SB), DI									
  map_controller.go:72	0xe7dff0		488d35c9052900		LEAQ runtime.types+1217984(SB), SI									
  map_controller.go:72	0xe7dff7		4889d0			MOVQ DX, AX												
  map_controller.go:72	0xe7dffa		e8413c5fff		CALL runtime.growslice(SB)										
  map_controller.go:63	0xe7dfff		4c8b842498000000	MOVQ 0x98(SP), R8											
  map_controller.go:72	0xe7e007		4889c2			MOVQ AX, DX												
  map_controller.go:72	0xe7e00a		4989d9			MOVQ BX, R9												
  map_controller.go:72	0xe7e00d		4889c8			MOVQ CX, AX												
  map_controller.go:63	0xe7e010		488b8c2480010000	MOVQ 0x180(SP), CX											
  map_controller.go:46	0xe7e018		488b5c2478		MOVQ 0x78(SP), BX											
  map_controller.go:72	0xe7e01d		4d6bd168		IMULQ $.file+27(SB), R9, R10										
  map_controller.go:72	0xe7e021		4d8d1c12		LEAQ 0(R10)(DX*1), R11											
  map_controller.go:72	0xe7e025		4d8d5b98		LEAQ -0x68(R11), R11											
  map_controller.go:72	0xe7e029		833d20fb6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:72	0xe7e030		0f8458feffff		JE 0xe7de8e												
  map_controller.go:72	0xe7e036		48899424b0000000	MOVQ DX, 0xb0(SP)											
  map_controller.go:72	0xe7e03e		4c894c2458		MOVQ R9, 0x58(SP)											
  map_controller.go:72	0xe7e043		4889442460		MOVQ AX, 0x60(SP)											
  map_controller.go:72	0xe7e048		4c89942490000000	MOVQ R10, 0x90(SP)											
  map_controller.go:72	0xe7e050		488d0569052900		LEAQ runtime.types+1217984(SB), AX									
  map_controller.go:72	0xe7e057		4c89db			MOVQ R11, BX												
  map_controller.go:72	0xe7e05a		488d8c24b8000000	LEAQ 0xb8(SP), CX											
  map_controller.go:72	0xe7e062		e8b96e59ff		CALL runtime.wbMove(SB)											
  map_controller.go:42	0xe7e067		488b442460		MOVQ 0x60(SP), AX											
  map_controller.go:63	0xe7e06c		488b8c2480010000	MOVQ 0x180(SP), CX											
  map_controller.go:72	0xe7e074		488b9424b0000000	MOVQ 0xb0(SP), DX											
  map_controller.go:46	0xe7e07c		488b5c2478		MOVQ 0x78(SP), BX											
  map_controller.go:63	0xe7e081		4c8b842498000000	MOVQ 0x98(SP), R8											
  map_controller.go:42	0xe7e089		4c8b4c2458		MOVQ 0x58(SP), R9											
  map_controller.go:72	0xe7e08e		4c8b942490000000	MOVQ 0x90(SP), R10											
  map_controller.go:72	0xe7e096		e9f3fdffff		JMP 0xe7de8e												
  map_controller.go:42	0xe7e09b		4889842488000000	MOVQ AX, 0x88(SP)											
  map_controller.go:42	0xe7e0a3		4889b42480000000	MOVQ SI, 0x80(SP)											
  map_controller.go:42	0xe7e0ab		4889942428010000	MOVQ DX, 0x128(SP)											
  map_controller.go:43	0xe7e0b3		e828cf5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:43	0xe7e0b8		4889842488010000	MOVQ AX, 0x188(SP)											
  map_controller.go:43	0xe7e0c0		4889c3			MOVQ AX, BX												
  map_controller.go:43	0xe7e0c3		488d0dc5132f00		LEAQ go:string.*+28551(SB), CX										
  map_controller.go:43	0xe7e0ca		bf06000000		MOVL $__major_os_version__(SB), DI									
  map_controller.go:43	0xe7e0cf		488d05aa672200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:43	0xe7e0d6		e845ff5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:43	0xe7e0db		488d0d3e4c1c00		LEAQ runtime.types+384288(SB), CX									
  map_controller.go:43	0xe7e0e2		488908			MOVQ CX, 0(AX)												
  map_controller.go:43	0xe7e0e5		833d64fa6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:43	0xe7e0ec		740c			JE 0xe7e0fa												
  map_controller.go:43	0xe7e0ee		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:43	0xe7e0f2		e829a35fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:43	0xe7e0f7		498913			MOVQ DX, 0(R11)												
  map_controller.go:43	0xe7e0fa		488d1527c60f00		LEAQ runtime.staticuint64s+8(SB), DX									
  map_controller.go:43	0xe7e101		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:43	0xe7e105		488d0574672200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:43	0xe7e10c		488b9c2488010000	MOVQ 0x188(SP), BX											
  map_controller.go:43	0xe7e114		488d0dd64b2f00		LEAQ go:string.*+42985(SB), CX										
  map_controller.go:43	0xe7e11b		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:43	0xe7e120		e8fbfe5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:43	0xe7e125		488d15f4471c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:43	0xe7e12c		488910			MOVQ DX, 0(AX)												
  map_controller.go:43	0xe7e12f		833d1afa6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:43	0xe7e136		7410			JE 0xe7e148												
  map_controller.go:43	0xe7e138		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:43	0xe7e13c		0f1f4000		NOPL 0(AX)												
  map_controller.go:43	0xe7e140		e8dba25fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:43	0xe7e145		49890b			MOVQ CX, 0(R11)												
  map_controller.go:43	0xe7e148		488d0dc1a8fe01		LEAQ CAS-Backend/biz/controller..stmp_93(SB), CX							
  map_controller.go:43	0xe7e14f		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:46	0xe7e153		488b442478		MOVQ 0x78(SP), AX											
  map_controller.go:46	0xe7e158		e843bf5eff		CALL runtime.convT64(SB)										
  map_controller.go:46	0xe7e15d		4889842480010000	MOVQ AX, 0x180(SP)											
  map_controller.go:43	0xe7e165		488b9c2488010000	MOVQ 0x188(SP), BX											
  map_controller.go:43	0xe7e16d		488d0decc52e00		LEAQ go:string.*+8792(SB), CX										
  map_controller.go:43	0xe7e174		bf05000000		MOVL $__subsystem__+2(SB), DI										
  map_controller.go:43	0xe7e179		488d0500672200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:43	0xe7e180		e89bfe5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:43	0xe7e185		488d0d54491c00		LEAQ runtime.types+383712(SB), CX									
  map_controller.go:43	0xe7e18c		488908			MOVQ CX, 0(AX)												
  map_controller.go:43	0xe7e18f		833dbaf96d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:43	0xe7e196		750a			JNE 0xe7e1a2												
  map_controller.go:43	0xe7e198		488b8c2480010000	MOVQ 0x180(SP), CX											
  map_controller.go:43	0xe7e1a0		eb18			JMP 0xe7e1ba												
  map_controller.go:43	0xe7e1a2		e899a25fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:43	0xe7e1a7		488b8c2480010000	MOVQ 0x180(SP), CX											
  map_controller.go:43	0xe7e1af		49890b			MOVQ CX, 0(R11)												
  map_controller.go:43	0xe7e1b2		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:43	0xe7e1b6		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:43	0xe7e1ba		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:47	0xe7e1be		488b442468		MOVQ 0x68(SP), AX											
  map_controller.go:47	0xe7e1c3		e8d8be5eff		CALL runtime.convT64(SB)										
  map_controller.go:47	0xe7e1c8		4889842480010000	MOVQ AX, 0x180(SP)											
  map_controller.go:43	0xe7e1d0		488b9c2488010000	MOVQ 0x188(SP), BX											
  map_controller.go:43	0xe7e1d8		488d0db1b42e00		LEAQ go:string.*+4488(SB), CX										
  map_controller.go:43	0xe7e1df		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:43	0xe7e1e4		488d0595662200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:43	0xe7e1eb		e830fe5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:43	0xe7e1f0		488d0d69491c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:43	0xe7e1f7		488908			MOVQ CX, 0(AX)												
  map_controller.go:43	0xe7e1fa		833d4ff96d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:43	0xe7e201		750a			JNE 0xe7e20d												
  map_controller.go:43	0xe7e203		488b942480010000	MOVQ 0x180(SP), DX											
  map_controller.go:43	0xe7e20b		eb18			JMP 0xe7e225												
  map_controller.go:43	0xe7e20d		e82ea25fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:43	0xe7e212		488b942480010000	MOVQ 0x180(SP), DX											
  map_controller.go:43	0xe7e21a		498913			MOVQ DX, 0(R11)												
  map_controller.go:43	0xe7e21d		488b5808		MOVQ 0x8(AX), BX											
  map_controller.go:43	0xe7e221		49895b08		MOVQ BX, 0x8(R11)											
  map_controller.go:43	0xe7e225		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:48	0xe7e229		488b442440		MOVQ 0x40(SP), AX											
  map_controller.go:48	0xe7e22e		e86dbe5eff		CALL runtime.convT64(SB)										
  map_controller.go:48	0xe7e233		4889842480010000	MOVQ AX, 0x180(SP)											
  map_controller.go:43	0xe7e23b		488b9c2488010000	MOVQ 0x188(SP), BX											
  map_controller.go:43	0xe7e243		488d0d4ab42e00		LEAQ go:string.*+4492(SB), CX										
  map_controller.go:43	0xe7e24a		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:43	0xe7e24f		488d052a662200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:43	0xe7e256		e8c5fd5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:43	0xe7e25b		488d0dfe481c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:43	0xe7e262		488908			MOVQ CX, 0(AX)												
  map_controller.go:43	0xe7e265		833de4f86d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:43	0xe7e26c		750a			JNE 0xe7e278												
  map_controller.go:43	0xe7e26e		488b942480010000	MOVQ 0x180(SP), DX											
  map_controller.go:43	0xe7e276		eb18			JMP 0xe7e290												
  map_controller.go:43	0xe7e278		e8c3a15fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:43	0xe7e27d		488b942480010000	MOVQ 0x180(SP), DX											
  map_controller.go:43	0xe7e285		498913			MOVQ DX, 0(R11)												
  map_controller.go:43	0xe7e288		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:43	0xe7e28c		49897308		MOVQ SI, 0x8(R11)											
  map_controller.go:43	0xe7e290		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:49	0xe7e294		488b842428010000	MOVQ 0x128(SP), AX											
  map_controller.go:49	0xe7e29c		488b9c2480000000	MOVQ 0x80(SP), BX											
  map_controller.go:49	0xe7e2a4		488b8c2488000000	MOVQ 0x88(SP), CX											
  map_controller.go:49	0xe7e2ac		e80fbf5eff		CALL runtime.convTslice(SB)										
  map_controller.go:49	0xe7e2b1		4889842480010000	MOVQ AX, 0x180(SP)											
  map_controller.go:43	0xe7e2b9		488b9c2488010000	MOVQ 0x188(SP), BX											
  map_controller.go:43	0xe7e2c1		488d0dd0b32e00		LEAQ go:string.*+4496(SB), CX										
  map_controller.go:43	0xe7e2c8		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:43	0xe7e2cd		488d05ac652200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:43	0xe7e2d4		e847fd5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:43	0xe7e2d9		488d15a0951b00		LEAQ runtime.types+338048(SB), DX									
  map_controller.go:43	0xe7e2e0		488910			MOVQ DX, 0(AX)												
  map_controller.go:43	0xe7e2e3		833d66f86d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:43	0xe7e2ea		750a			JNE 0xe7e2f6												
  map_controller.go:43	0xe7e2ec		488b8c2480010000	MOVQ 0x180(SP), CX											
  map_controller.go:43	0xe7e2f4		eb18			JMP 0xe7e30e												
  map_controller.go:43	0xe7e2f6		e845a15fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:43	0xe7e2fb		488b8c2480010000	MOVQ 0x180(SP), CX											
  map_controller.go:43	0xe7e303		49890b			MOVQ CX, 0(R11)												
  map_controller.go:43	0xe7e306		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:43	0xe7e30a		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:43	0xe7e30e		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7e312		488d0d67652200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7e319		48898c2490010000	MOVQ CX, 0x190(SP)											
  context.go:1005	0xe7e321		488b8c2488010000	MOVQ 0x188(SP), CX											
  context.go:1005	0xe7e329		48898c2498010000	MOVQ CX, 0x198(SP)											
  context.go:1005	0xe7e331		488d05a8db2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7e338		488d9c2490010000	LEAQ 0x190(SP), BX											
  context.go:1005	0xe7e340		e85b0d59ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7e345		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe7e34a		488d0ddf0eff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7e351		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7e354		488b8424b0010000	MOVQ 0x1b0(SP), AX											
  context.go:1005	0xe7e35c		0f1f4000		NOPL 0(AX)												
  context.go:1005	0xe7e360		e8fb13f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:58	0xe7e365		e91bfbffff		JMP 0xe7de85												
  map_controller.go:29	0xe7e36a		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:29	0xe7e36f		e86c815fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:29	0xe7e374		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:29	0xe7e379		e9c2f8ffff		JMP CAS-Backend/biz/controller.GetAllMapHandler(SB)							
  :-1			0xe7e37e		cc			INT $__subsystem__(SB)											
  :-1			0xe7e37f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.UpdateMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:78	0xe7e380		4c8da42468ffffff	LEAQ 0xffffff68(SP), R12										
  map_controller.go:78	0xe7e388		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:78	0xe7e38c		0f8675040000		JBE 0xe7e807												
  map_controller.go:78	0xe7e392		55			PUSHQ BP												
  map_controller.go:78	0xe7e393		4889e5			MOVQ SP, BP												
  map_controller.go:78	0xe7e396		4881ec10010000		SUBQ $.file+195(SB), SP											
  context.go:712	0xe7e39d		4889842420010000	MOVQ AX, 0x120(SP)											
  map_controller.go:79	0xe7e3a5		488d0514022900		LEAQ runtime.types+1217984(SB), AX									
  map_controller.go:79	0xe7e3ac		e8ef3359ff		CALL runtime.newobject(SB)										
  map_controller.go:79	0xe7e3b1		4889842408010000	MOVQ AX, 0x108(SP)											
  context.go:712	0xe7e3b9		488b0d20941300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712	0xe7e3c0		488b1521941300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712	0xe7e3c7		4885c9			TESTQ CX, CX												
  context.go:712	0xe7e3ca		7419			JE 0xe7e3e5												
  context.go:712	0xe7e3cc		488b5908		MOVQ 0x8(CX), BX											
  context.go:712	0xe7e3d0		488b3519ce1300		MOVQ CAS-Backend/biz/controller..typeAssert.18(SB), SI							
  context.go:712	0xe7e3d7		4c8b06			MOVQ 0(SI), R8												
  context.go:712	0xe7e3da		448b4910		MOVL 0x10(CX), R9											
  context.go:712	0xe7e3de		6690			NOPW													
  context.go:712	0xe7e3e0		e9c9030000		JMP 0xe7e7ae												
  context.go:752	0xe7e3e5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752	0xe7e3e9		4c8b842420010000	MOVQ 0x120(SP), R8											
  context.go:752	0xe7e3f1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752	0xe7e3f5		488d0de4811a00		LEAQ runtime.types+267744(SB), CX									
  context.go:752	0xe7e3fc		4889c7			MOVQ AX, DI												
  context.go:752	0xe7e3ff		4889d0			MOVQ DX, AX												
  context.go:752	0xe7e402		ffd6			CALL SI													
  map_controller.go:81	0xe7e404		4885c0			TESTQ AX, AX												
  map_controller.go:81	0xe7e407		0f8528030000		JNE 0xe7e735												
  map_controller.go:87	0xe7e40d		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)											
  map_controller.go:87	0xe7e416		488d05a3012900		LEAQ runtime.types+1217984(SB), AX									
  map_controller.go:87	0xe7e41d		488b9c2408010000	MOVQ 0x108(SP), BX											
  map_controller.go:87	0xe7e425		e8760c59ff		CALL runtime.convT(SB)											
  map_controller.go:87	0xe7e42a		488d0d8f012900		LEAQ runtime.types+1217984(SB), CX									
  map_controller.go:87	0xe7e431		48898c24d8000000	MOVQ CX, 0xd8(SP)											
  map_controller.go:87	0xe7e439		48898424e0000000	MOVQ AX, 0xe0(SP)											
  print.go:314		0xe7e441		488b1d383c6902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe7e448		488d0591d6fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe7e44f		488d8c24d8000000	LEAQ 0xd8(SP), CX											
  print.go:314		0xe7e457		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe7e45c		4889fe			MOVQ DI, SI												
  print.go:314		0xe7e45f		90			NOPL													
  print.go:314		0xe7e460		e8fb136aff		CALL fmt.Fprintln(SB)											
  map_controller.go:89	0xe7e465		488d7c2478		LEAQ 0x78(SP), DI											
  map_controller.go:89	0xe7e46a		488d7fd0		LEAQ -0x30(DI), DI											
  map_controller.go:89	0xe7e46e		660f1f840000000000	NOPW 0(AX)(AX*1)											
  map_controller.go:89	0xe7e477		660f1f840000000000	NOPW 0(AX)(AX*1)											
  map_controller.go:89	0xe7e480		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:89	0xe7e485		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:89	0xe7e48a		e861a65fff		CALL 0x478af0												
  map_controller.go:89	0xe7e48f		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:90	0xe7e493		488b8c2408010000	MOVQ 0x108(SP), CX											
  map_controller.go:90	0xe7e49b		488b11			MOVQ 0(CX), DX												
  map_controller.go:90	0xe7e49e		4889542478		MOVQ DX, 0x78(SP)											
  map_controller.go:91	0xe7e4a3		488b5108		MOVQ 0x8(CX), DX											
  map_controller.go:91	0xe7e4a7		488b7110		MOVQ 0x10(CX), SI											
  map_controller.go:91	0xe7e4ab		4889942480000000	MOVQ DX, 0x80(SP)											
  map_controller.go:91	0xe7e4b3		4889b42488000000	MOVQ SI, 0x88(SP)											
  map_controller.go:92	0xe7e4bb		488b5118		MOVQ 0x18(CX), DX											
  map_controller.go:92	0xe7e4bf		488b7120		MOVQ 0x20(CX), SI											
  map_controller.go:92	0xe7e4c3		4889942490000000	MOVQ DX, 0x90(SP)											
  map_controller.go:92	0xe7e4cb		4889b42498000000	MOVQ SI, 0x98(SP)											
  map_controller.go:93	0xe7e4d3		488b5128		MOVQ 0x28(CX), DX											
  map_controller.go:93	0xe7e4d7		488b7130		MOVQ 0x30(CX), SI											
  map_controller.go:93	0xe7e4db		48899424a0000000	MOVQ DX, 0xa0(SP)											
  map_controller.go:93	0xe7e4e3		4889b424a8000000	MOVQ SI, 0xa8(SP)											
  map_controller.go:94	0xe7e4eb		488b5138		MOVQ 0x38(CX), DX											
  map_controller.go:94	0xe7e4ef		488b7140		MOVQ 0x40(CX), SI											
  map_controller.go:94	0xe7e4f3		488b7948		MOVQ 0x48(CX), DI											
  map_controller.go:94	0xe7e4f7		48899424b0000000	MOVQ DX, 0xb0(SP)											
  map_controller.go:94	0xe7e4ff		4889b424b8000000	MOVQ SI, 0xb8(SP)											
  map_controller.go:94	0xe7e507		4889bc24c0000000	MOVQ DI, 0xc0(SP)											
  map_controller.go:96	0xe7e50f		488b4150		MOVQ 0x50(CX), AX											
  map_controller.go:96	0xe7e513		488b5958		MOVQ 0x58(CX), BX											
  map_controller.go:96	0xe7e517		488b4960		MOVQ 0x60(CX), CX											
  map_controller.go:96	0xe7e51b		4889e7			MOVQ SP, DI												
  map_controller.go:96	0xe7e51e		488d742478		LEAQ 0x78(SP), SI											
  map_controller.go:96	0xe7e523		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:96	0xe7e528		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:96	0xe7e52d		e828a95fff		CALL 0x478e5a												
  map_controller.go:96	0xe7e532		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:96	0xe7e536		e8e57ab1ff		CALL CAS-Backend/biz/dao.Update_map(SB)									
  map_controller.go:96	0xe7e53b		0f1f440000		NOPL 0(AX)(AX*1)											
  map_controller.go:96	0xe7e540		84c0			TESTL AL, AL												
  map_controller.go:99	0xe7e542		0f84f0000000		JE 0xe7e638												
  map_controller.go:100	0xe7e548		e893ca5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:100	0xe7e54d		48898424d0000000	MOVQ AX, 0xd0(SP)											
  map_controller.go:100	0xe7e555		4889c3			MOVQ AX, BX												
  map_controller.go:100	0xe7e558		488d0d2db12e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:100	0xe7e55f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:100	0xe7e564		488d0515632200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:100	0xe7e56b		e8b0fa5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:100	0xe7e570		488d0de9451c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:100	0xe7e577		488908			MOVQ CX, 0(AX)												
  map_controller.go:100	0xe7e57a		833dcff56d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:100	0xe7e581		740c			JE 0xe7e58f												
  map_controller.go:100	0xe7e583		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:100	0xe7e587		e8949e5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:100	0xe7e58c		498913			MOVQ DX, 0(R11)												
  map_controller.go:100	0xe7e58f		488d159a92fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  map_controller.go:100	0xe7e596		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:100	0xe7e59a		488d05df622200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:100	0xe7e5a1		488b9c24d0000000	MOVQ 0xd0(SP), BX											
  map_controller.go:100	0xe7e5a9		488d0da4a42e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:100	0xe7e5b0		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:100	0xe7e5b5		e866fa5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:100	0xe7e5ba		488d155f431c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:100	0xe7e5c1		488910			MOVQ DX, 0(AX)												
  map_controller.go:100	0xe7e5c4		833d85f56d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:100	0xe7e5cb		740c			JE 0xe7e5d9												
  map_controller.go:100	0xe7e5cd		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:100	0xe7e5d1		e84a9e5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:100	0xe7e5d6		49890b			MOVQ CX, 0(R11)												
  map_controller.go:100	0xe7e5d9		488d0d60a4fe01		LEAQ CAS-Backend/biz/controller..stmp_101(SB), CX							
  map_controller.go:100	0xe7e5e0		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7e5e4		488d0d95622200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7e5eb		48898c24f8000000	MOVQ CX, 0xf8(SP)											
  context.go:1005	0xe7e5f3		488b8c24d0000000	MOVQ 0xd0(SP), CX											
  context.go:1005	0xe7e5fb		48898c2400010000	MOVQ CX, 0x100(SP)											
  context.go:1005	0xe7e603		488d05d6d82400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7e60a		488d9c24f8000000	LEAQ 0xf8(SP), BX											
  context.go:1005	0xe7e612		e8890a59ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7e617		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe7e61c		488d0d0d0cff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7e623		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7e626		488b842420010000	MOVQ 0x120(SP), AX											
  context.go:1005	0xe7e62e		e82d11f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:110	0xe7e633		e9f4000000		JMP 0xe7e72c												
  map_controller.go:105	0xe7e638		e8a3c95eff		CALL runtime.makemap_small(SB)										
  map_controller.go:105	0xe7e63d		48898424d0000000	MOVQ AX, 0xd0(SP)											
  map_controller.go:105	0xe7e645		4889c3			MOVQ AX, BX												
  map_controller.go:105	0xe7e648		488d0d3db02e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:105	0xe7e64f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:105	0xe7e654		488d0525622200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:105	0xe7e65b		0f1f440000		NOPL 0(AX)(AX*1)											
  map_controller.go:105	0xe7e660		e8bbf95eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:105	0xe7e665		488d0df4441c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:105	0xe7e66c		488908			MOVQ CX, 0(AX)												
  map_controller.go:105	0xe7e66f		833ddaf46d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:105	0xe7e676		7410			JE 0xe7e688												
  map_controller.go:105	0xe7e678		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:105	0xe7e67c		0f1f4000		NOPL 0(AX)												
  map_controller.go:105	0xe7e680		e89b9d5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:105	0xe7e685		498913			MOVQ DX, 0(R11)												
  map_controller.go:105	0xe7e688		488d153164fe01		LEAQ runtime.gcbits.*(SB), DX										
  map_controller.go:105	0xe7e68f		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:105	0xe7e693		488d05e6612200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:105	0xe7e69a		488b9c24d0000000	MOVQ 0xd0(SP), BX											
  map_controller.go:105	0xe7e6a2		488d0daba32e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:105	0xe7e6a9		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:105	0xe7e6ae		e86df95eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:105	0xe7e6b3		488d1566421c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:105	0xe7e6ba		488910			MOVQ DX, 0(AX)												
  map_controller.go:105	0xe7e6bd		833d8cf46d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:105	0xe7e6c4		740c			JE 0xe7e6d2												
  map_controller.go:105	0xe7e6c6		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:105	0xe7e6ca		e8519d5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:105	0xe7e6cf		49890b			MOVQ CX, 0(R11)												
  map_controller.go:105	0xe7e6d2		488d0d77a3fe01		LEAQ CAS-Backend/biz/controller..stmp_103(SB), CX							
  map_controller.go:105	0xe7e6d9		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7e6dd		488d0d9c612200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7e6e4		48898c24f8000000	MOVQ CX, 0xf8(SP)											
  context.go:1005	0xe7e6ec		488b8c24d0000000	MOVQ 0xd0(SP), CX											
  context.go:1005	0xe7e6f4		48898c2400010000	MOVQ CX, 0x100(SP)											
  context.go:1005	0xe7e6fc		488d05ddd72400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7e703		488d9c24f8000000	LEAQ 0xf8(SP), BX											
  context.go:1005	0xe7e70b		e8900959ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7e710		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe7e715		488d0d140bff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7e71c		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7e71f		488b842420010000	MOVQ 0x120(SP), AX											
  context.go:1005	0xe7e727		e83410f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:110	0xe7e72c		4881c410010000		ADDQ $.file+195(SB), SP											
  map_controller.go:110	0xe7e733		5d			POPQ BP													
  map_controller.go:110	0xe7e734		c3			RET													
  context.go:752	0xe7e735		48895c2470		MOVQ BX, 0x70(SP)											
  context.go:752	0xe7e73a		4889442468		MOVQ AX, 0x68(SP)											
  map_controller.go:82	0xe7e73f		488d15da411c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:82	0xe7e746		48899424e8000000	MOVQ DX, 0xe8(SP)											
  map_controller.go:82	0xe7e74e		488d157ba0fe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  map_controller.go:82	0xe7e755		48899424f0000000	MOVQ DX, 0xf0(SP)											
  print.go:314		0xe7e75d		488b1d1c396902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe7e764		488d0575d3fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe7e76b		488d8c24e8000000	LEAQ 0xe8(SP), CX											
  print.go:314		0xe7e773		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe7e778		4889fe			MOVQ DI, SI												
  print.go:314		0xe7e77b		0f1f440000		NOPL 0(AX)(AX*1)											
  print.go:314		0xe7e780		e8db106aff		CALL fmt.Fprintln(SB)											
  map_controller.go:83	0xe7e785		488b842420010000	MOVQ 0x120(SP), AX											
  map_controller.go:83	0xe7e78d		bb90010000		MOVL $.file+323(SB), BX											
  map_controller.go:83	0xe7e792		488b4c2468		MOVQ 0x68(SP), CX											
  map_controller.go:83	0xe7e797		488b7c2470		MOVQ 0x70(SP), DI											
  map_controller.go:83	0xe7e79c		0f1f4000		NOPL 0(AX)												
  map_controller.go:83	0xe7e7a0		e8fbc8f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  map_controller.go:84	0xe7e7a5		4881c410010000		ADDQ $.file+195(SB), SP											
  map_controller.go:84	0xe7e7ac		5d			POPQ BP													
  map_controller.go:84	0xe7e7ad		c3			RET													
  context.go:712	0xe7e7ae		4d89ca			MOVQ R9, R10												
  context.go:712	0xe7e7b1		4d21c1			ANDQ R8, R9												
  context.go:712	0xe7e7b4		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712	0xe7e7b8		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712	0xe7e7bd		0f1f00			NOPL 0(AX)												
  context.go:712	0xe7e7c0		4939db			CMPQ R11, BX												
  context.go:712	0xe7e7c3		7438			JE 0xe7e7fd												
  context.go:712	0xe7e7c5		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712	0xe7e7c9		4d85db			TESTQ R11, R11												
  context.go:712	0xe7e7cc		75e0			JNE 0xe7e7ae												
  context.go:712	0xe7e7ce		48899424c8000000	MOVQ DX, 0xc8(SP)											
  context.go:712	0xe7e7d6		488d0513ca1300		LEAQ CAS-Backend/biz/controller..typeAssert.18(SB), AX							
  context.go:712	0xe7e7dd		0f1f00			NOPL 0(AX)												
  context.go:712	0xe7e7e0		e8fb0a59ff		CALL runtime.typeAssert(SB)										
  context.go:752	0xe7e7e5		488b9424c8000000	MOVQ 0xc8(SP), DX											
  context.go:712	0xe7e7ed		4889c1			MOVQ AX, CX												
  context.go:752	0xe7e7f0		488b842408010000	MOVQ 0x108(SP), AX											
  context.go:712	0xe7e7f8		e9e8fbffff		JMP 0xe7e3e5												
  context.go:712	0xe7e7fd		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712	0xe7e802		e9defbffff		JMP 0xe7e3e5												
  map_controller.go:78	0xe7e807		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:78	0xe7e80c		e8cf7c5fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:78	0xe7e811		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:78	0xe7e816		e965fbffff		JMP CAS-Backend/biz/controller.UpdateMapHandler(SB)							
  :-1			0xe7e81b		cc			INT $__subsystem__(SB)											
  :-1			0xe7e81c		cc			INT $__subsystem__(SB)											
  :-1			0xe7e81d		cc			INT $__subsystem__(SB)											
  :-1			0xe7e81e		cc			INT $__subsystem__(SB)											
  :-1			0xe7e81f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.GetMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:112	0xe7e820		4c8da42400ffffff	LEAQ 0xffffff00(SP), R12										
  map_controller.go:112	0xe7e828		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:112	0xe7e82c		0f8635070000		JBE 0xe7ef67												
  map_controller.go:112	0xe7e832		55			PUSHQ BP												
  map_controller.go:112	0xe7e833		4889e5			MOVQ SP, BP												
  map_controller.go:112	0xe7e836		4881ec78010000		SUBQ $.file+299(SB), SP											
  map_controller.go:112	0xe7e83d		66440fd6bc2470010000	MOVQ X15, 0x170(SP)											
  map_controller.go:116	0xe7e847		4889842488010000	MOVQ AX, 0x188(SP)											
  map_controller.go:112	0xe7e84f		c644245f00		MOVB $0x0, 0x5f(SP)											
  map_controller.go:114	0xe7e854		488d1d3f9d2e00		LEAQ go:string.*+146(SB), BX										
  map_controller.go:114	0xe7e85b		b902000000		MOVL $__minor_os_version__+1(SB), CX									
  map_controller.go:114	0xe7e860		e85bd7f7ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  map_controller.go:115	0xe7e865		e836ca66ff		CALL strconv.Atoi(SB)											
  map_controller.go:116	0xe7e86a		4885db			TESTQ BX, BX												
  map_controller.go:116	0xe7e86d		0f84aa000000		JE 0xe7e91d												
  map_controller.go:117	0xe7e873		e868c75eff		CALL runtime.makemap_small(SB)										
  map_controller.go:117	0xe7e878		4889842468010000	MOVQ AX, 0x168(SP)											
  map_controller.go:117	0xe7e880		4889c3			MOVQ AX, BX												
  map_controller.go:117	0xe7e883		488d0d37bd2e00		LEAQ go:string.*+8377(SB), CX										
  map_controller.go:117	0xe7e88a		bf05000000		MOVL $__subsystem__+2(SB), DI										
  map_controller.go:117	0xe7e88f		488d05ea5f2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:117	0xe7e896		e885f75eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:117	0xe7e89b		488d0d7e401c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:117	0xe7e8a2		488908			MOVQ CX, 0(AX)												
  map_controller.go:117	0xe7e8a5		833da4f26d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:117	0xe7e8ac		740c			JE 0xe7e8ba												
  map_controller.go:117	0xe7e8ae		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:117	0xe7e8b2		e8699b5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:117	0xe7e8b7		49890b			MOVQ CX, 0(R11)												
  map_controller.go:117	0xe7e8ba		488d0d9fa1fe01		LEAQ CAS-Backend/biz/controller..stmp_104(SB), CX							
  map_controller.go:117	0xe7e8c1		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7e8c5		488d0db45f2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7e8cc		48898c2448010000	MOVQ CX, 0x148(SP)											
  context.go:1005	0xe7e8d4		488b8c2468010000	MOVQ 0x168(SP), CX											
  context.go:1005	0xe7e8dc		48898c2450010000	MOVQ CX, 0x150(SP)											
  context.go:1005	0xe7e8e4		488d05f5d52400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7e8eb		488d9c2448010000	LEAQ 0x148(SP), BX											
  context.go:1005	0xe7e8f3		e8a80759ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7e8f8		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005	0xe7e8fd		488d0d2c09ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7e904		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7e907		488b842488010000	MOVQ 0x188(SP), AX											
  context.go:1005	0xe7e90f		e84c0ef8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:118	0xe7e914		4881c478010000		ADDQ $.file+299(SB), SP											
  map_controller.go:118	0xe7e91b		5d			POPQ BP													
  map_controller.go:118	0xe7e91c		c3			RET													
  map_controller.go:120	0xe7e91d		488dbc2480000000	LEAQ 0x80(SP), DI											
  map_controller.go:120	0xe7e925		488d7fd0		LEAQ -0x30(DI), DI											
  map_controller.go:120	0xe7e929		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:120	0xe7e92e		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:120	0xe7e933		e8b8a15fff		CALL 0x478af0												
  map_controller.go:120	0xe7e938		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:121	0xe7e93c		488dbc24f8000000	LEAQ 0xf8(SP), DI											
  map_controller.go:121	0xe7e944		488d7fd0		LEAQ -0x30(DI), DI											
  map_controller.go:121	0xe7e948		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:121	0xe7e94d		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:121	0xe7e952		e899a15fff		CALL 0x478af0												
  map_controller.go:121	0xe7e957		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:121	0xe7e95b		0f1f440000		NOPL 0(AX)(AX*1)											
  map_controller.go:121	0xe7e960		e8fb6bb1ff		CALL CAS-Backend/biz/dao.GetMap(SB)									
  map_controller.go:121	0xe7e965		488dbc24f8000000	LEAQ 0xf8(SP), DI											
  map_controller.go:121	0xe7e96d		4889e6			MOVQ SP, SI												
  map_controller.go:121	0xe7e970		660f1f840000000000	NOPW 0(AX)(AX*1)											
  map_controller.go:121	0xe7e979		0f1f8000000000		NOPL 0(AX)												
  map_controller.go:121	0xe7e980		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:121	0xe7e985		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:121	0xe7e98a		e8cba45fff		CALL 0x478e5a												
  map_controller.go:121	0xe7e98f		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:121	0xe7e993		488dbc2480000000	LEAQ 0x80(SP), DI											
  map_controller.go:121	0xe7e99b		488db424f8000000	LEAQ 0xf8(SP), SI											
  map_controller.go:121	0xe7e9a3		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:121	0xe7e9a8		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:121	0xe7e9ad		e8a8a45fff		CALL 0x478e5a												
  map_controller.go:121	0xe7e9b2		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:121	0xe7e9b6		84c0			TESTL AL, AL												
  map_controller.go:124	0xe7e9b8		0f84c5030000		JE 0xe7ed83												
  map_controller.go:127	0xe7e9be		488b842498000000	MOVQ 0x98(SP), AX											
  map_controller.go:127	0xe7e9c6		488b9c24a0000000	MOVQ 0xa0(SP), BX											
  file.go:365		0xe7e9ce		31c9			XORL CX, CX												
  file.go:365		0xe7e9d0		31ff			XORL DI, DI												
  file.go:365		0xe7e9d2		e8c90065ff		CALL os.OpenFile(SB)											
  file.go:365		0xe7e9d7		660f1f840000000000	NOPW 0(AX)(AX*1)											
  map_controller.go:128	0xe7e9e0		4885db			TESTQ BX, BX												
  map_controller.go:128	0xe7e9e3		0f84aa000000		JE 0xe7ea93												
  map_controller.go:129	0xe7e9e9		e8f2c55eff		CALL runtime.makemap_small(SB)										
  map_controller.go:129	0xe7e9ee		4889842468010000	MOVQ AX, 0x168(SP)											
  map_controller.go:129	0xe7e9f6		4889c3			MOVQ AX, BX												
  map_controller.go:129	0xe7e9f9		488d0dc1bb2e00		LEAQ go:string.*+8377(SB), CX										
  map_controller.go:129	0xe7ea00		bf05000000		MOVL $__subsystem__+2(SB), DI										
  map_controller.go:129	0xe7ea05		488d05745e2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:129	0xe7ea0c		e80ff65eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:129	0xe7ea11		488d0d083f1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:129	0xe7ea18		488908			MOVQ CX, 0(AX)												
  map_controller.go:129	0xe7ea1b		833d2ef16d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:129	0xe7ea22		740c			JE 0xe7ea30												
  map_controller.go:129	0xe7ea24		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:129	0xe7ea28		e8f3995fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:129	0xe7ea2d		49890b			MOVQ CX, 0(R11)												
  map_controller.go:129	0xe7ea30		488d0d39a0fe01		LEAQ CAS-Backend/biz/controller..stmp_105(SB), CX							
  map_controller.go:129	0xe7ea37		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7ea3b		488d0d3e5e2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7ea42		48898c2448010000	MOVQ CX, 0x148(SP)											
  context.go:1005	0xe7ea4a		488b8c2468010000	MOVQ 0x168(SP), CX											
  context.go:1005	0xe7ea52		48898c2450010000	MOVQ CX, 0x150(SP)											
  context.go:1005	0xe7ea5a		488d057fd42400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7ea61		488d9c2448010000	LEAQ 0x148(SP), BX											
  context.go:1005	0xe7ea69		e8320659ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7ea6e		bbf4010000		MOVL $.file+423(SB), BX											
  context.go:1005	0xe7ea73		488d0db607ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7ea7a		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7ea7d		488b842488010000	MOVQ 0x188(SP), AX											
  context.go:1005	0xe7ea85		e8d60cf8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:130	0xe7ea8a		4881c478010000		ADDQ $.file+299(SB), SP											
  map_controller.go:130	0xe7ea91		5d			POPQ BP													
  map_controller.go:130	0xe7ea92		c3			RET													
  file.go:365		0xe7ea93		4889442478		MOVQ AX, 0x78(SP)											
  map_controller.go:132	0xe7ea98		488d0de1040000		LEAQ CAS-Backend/biz/controller.GetMapHandler.deferwrap1(SB), CX					
  map_controller.go:132	0xe7ea9f		48898c24d8000000	MOVQ CX, 0xd8(SP)											
  map_controller.go:132	0xe7eaa7		48898424e0000000	MOVQ AX, 0xe0(SP)											
  map_controller.go:132	0xe7eaaf		488d8c24d8000000	LEAQ 0xd8(SP), CX											
  map_controller.go:132	0xe7eab7		48898c2470010000	MOVQ CX, 0x170(SP)											
  map_controller.go:132	0xe7eabf		c644245f01		MOVB $__minor_os_version__(SB), 0x5f(SP)								
  map_controller.go:134	0xe7eac4		e8774265ff		CALL os.(*File).Stat(SB)										
  map_controller.go:135	0xe7eac9		4885c9			TESTQ CX, CX												
  map_controller.go:135	0xe7eacc		0f85f3010000		JNE 0xe7ecc5												
  map_controller.go:134	0xe7ead2		48899c24d0000000	MOVQ BX, 0xd0(SP)											
  map_controller.go:134	0xe7eada		4889442460		MOVQ AX, 0x60(SP)											
  map_controller.go:140	0xe7eadf		488b842488010000	MOVQ 0x188(SP), AX											
  map_controller.go:140	0xe7eae7		488d1d54073000		LEAQ go:string.*+93498(SB), BX										
  map_controller.go:140	0xe7eaee		b913000000		MOVL $__major_os_version__+13(SB), CX									
  map_controller.go:140	0xe7eaf3		488d3d2da42f00		LEAQ go:string.*+68127(SB), DI										
  map_controller.go:140	0xe7eafa		be0d000000		MOVL $__major_os_version__+7(SB), SI									
  map_controller.go:140	0xe7eaff		90			NOPL													
  map_controller.go:140	0xe7eb00		e83b06f8ff		CALL github.com/gin-gonic/gin.(*Context).Header(SB)							
  map_controller.go:141	0xe7eb05		488b842488010000	MOVQ 0x188(SP), AX											
  map_controller.go:141	0xe7eb0d		488d1d1e922f00		LEAQ go:string.*+63530(SB), BX										
  map_controller.go:141	0xe7eb14		b90c000000		MOVL $__major_os_version__+6(SB), CX									
  map_controller.go:141	0xe7eb19		488d3dc2613000		LEAQ go:string.*+116698(SB), DI										
  map_controller.go:141	0xe7eb20		be18000000		MOVL $__major_os_version__+18(SB), SI									
  map_controller.go:141	0xe7eb25		e81606f8ff		CALL github.com/gin-gonic/gin.(*Context).Header(SB)							
  map_controller.go:142	0xe7eb2a		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)											
  map_controller.go:142	0xe7eb33		488b842488000000	MOVQ 0x88(SP), AX											
  map_controller.go:142	0xe7eb3b		488b9c2490000000	MOVQ 0x90(SP), BX											
  map_controller.go:142	0xe7eb43		e8d8b55eff		CALL runtime.convTstring(SB)										
  map_controller.go:142	0xe7eb48		488d15d13d1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:142	0xe7eb4f		48899424e8000000	MOVQ DX, 0xe8(SP)											
  map_controller.go:142	0xe7eb57		48898424f0000000	MOVQ AX, 0xf0(SP)											
  map_controller.go:142	0xe7eb5f		488d054c503000		LEAQ go:string.*+112298(SB), AX										
  map_controller.go:142	0xe7eb66		bb17000000		MOVL $__major_os_version__+17(SB), BX									
  map_controller.go:142	0xe7eb6b		488d8c24e8000000	LEAQ 0xe8(SP), CX											
  map_controller.go:142	0xe7eb73		bf01000000		MOVL $__minor_os_version__(SB), DI									
  map_controller.go:142	0xe7eb78		4889fe			MOVQ DI, SI												
  map_controller.go:142	0xe7eb7b		0f1f440000		NOPL 0(AX)(AX*1)											
  map_controller.go:142	0xe7eb80		e8bb076aff		CALL fmt.Sprintf(SB)											
  map_controller.go:142	0xe7eb85		b913000000		MOVL $__major_os_version__+13(SB), CX									
  map_controller.go:142	0xe7eb8a		4889c7			MOVQ AX, DI												
  map_controller.go:142	0xe7eb8d		4889de			MOVQ BX, SI												
  map_controller.go:142	0xe7eb90		488b842488010000	MOVQ 0x188(SP), AX											
  map_controller.go:142	0xe7eb98		488d1d6a063000		LEAQ go:string.*+93441(SB), BX										
  map_controller.go:142	0xe7eb9f		90			NOPL													
  map_controller.go:142	0xe7eba0		e89b05f8ff		CALL github.com/gin-gonic/gin.(*Context).Header(SB)							
  map_controller.go:143	0xe7eba5		488b542460		MOVQ 0x60(SP), DX											
  map_controller.go:143	0xe7ebaa		488b5238		MOVQ 0x38(DX), DX											
  map_controller.go:143	0xe7ebae		488b8424d0000000	MOVQ 0xd0(SP), AX											
  map_controller.go:143	0xe7ebb6		ffd2			CALL DX													
  map_controller.go:143	0xe7ebb8		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)											
  map_controller.go:143	0xe7ebc1		e8dab45eff		CALL runtime.convT64(SB)										
  map_controller.go:143	0xe7ebc6		488d15133f1c00		LEAQ runtime.types+383712(SB), DX									
  map_controller.go:143	0xe7ebcd		48899424e8000000	MOVQ DX, 0xe8(SP)											
  map_controller.go:143	0xe7ebd5		48898424f0000000	MOVQ AX, 0xf0(SP)											
  map_controller.go:143	0xe7ebdd		488d0558992e00		LEAQ go:string.*+52(SB), AX										
  map_controller.go:143	0xe7ebe4		bb02000000		MOVL $__minor_os_version__+1(SB), BX									
  map_controller.go:143	0xe7ebe9		488d8c24e8000000	LEAQ 0xe8(SP), CX											
  map_controller.go:143	0xe7ebf1		bf01000000		MOVL $__minor_os_version__(SB), DI									
  map_controller.go:143	0xe7ebf6		4889fe			MOVQ DI, SI												
  map_controller.go:143	0xe7ebf9		e842076aff		CALL fmt.Sprintf(SB)											
  map_controller.go:143	0xe7ebfe		b90e000000		MOVL $__major_os_version__+8(SB), CX									
  map_controller.go:143	0xe7ec03		4889c7			MOVQ AX, DI												
  map_controller.go:143	0xe7ec06		4889de			MOVQ BX, SI												
  map_controller.go:143	0xe7ec09		488b842488010000	MOVQ 0x188(SP), AX											
  map_controller.go:143	0xe7ec11		488d1dbbad2f00		LEAQ go:string.*+70859(SB), BX										
  map_controller.go:143	0xe7ec18		e82305f8ff		CALL github.com/gin-gonic/gin.(*Context).Header(SB)							
  map_controller.go:144	0xe7ec1d		488b842488010000	MOVQ 0x188(SP), AX											
  map_controller.go:144	0xe7ec25		488d1da9a12f00		LEAQ go:string.*+67789(SB), BX										
  map_controller.go:144	0xe7ec2c		b90d000000		MOVL $__major_os_version__+7(SB), CX									
  map_controller.go:144	0xe7ec31		488d3d50203100		LEAQ go:string.*+165760(SB), DI										
  map_controller.go:144	0xe7ec38		be23000000		MOVL $__major_os_version__+29(SB), SI									
  map_controller.go:144	0xe7ec3d		0f1f00			NOPL 0(AX)												
  map_controller.go:144	0xe7ec40		e8fb04f8ff		CALL github.com/gin-gonic/gin.(*Context).Header(SB)							
  map_controller.go:145	0xe7ec45		488b842488010000	MOVQ 0x188(SP), AX											
  map_controller.go:145	0xe7ec4d		488d1dff072f00		LEAQ go:string.*+28491(SB), BX										
  map_controller.go:145	0xe7ec54		b906000000		MOVL $__major_os_version__(SB), CX									
  map_controller.go:145	0xe7ec59		488d3d63562f00		LEAQ go:string.*+48571(SB), DI										
  map_controller.go:145	0xe7ec60		be08000000		MOVL $__major_os_version__+2(SB), SI									
  map_controller.go:145	0xe7ec65		e8d604f8ff		CALL github.com/gin-gonic/gin.(*Context).Header(SB)							
  map_controller.go:146	0xe7ec6a		488b842488010000	MOVQ 0x188(SP), AX											
  map_controller.go:146	0xe7ec72		488d1d7f402f00		LEAQ go:string.*+42992(SB), BX										
  map_controller.go:146	0xe7ec79		b907000000		MOVL $__major_os_version__+1(SB), CX									
  map_controller.go:146	0xe7ec7e		488d3da360fe01		LEAQ runtime.gcbits.*+616(SB), DI									
  map_controller.go:146	0xe7ec85		be01000000		MOVL $__minor_os_version__(SB), SI									
  map_controller.go:146	0xe7ec8a		e8b104f8ff		CALL github.com/gin-gonic/gin.(*Context).Header(SB)							
  map_controller.go:149	0xe7ec8f		e80cf462ff		CALL time.Now(SB)											
  map_controller.go:149	0xe7ec94		488b942488010000	MOVQ 0x188(SP), DX											
  map_controller.go:149	0xe7ec9c		4c8b4228		MOVQ 0x28(DX), R8											
  map_controller.go:149	0xe7eca0		4c8b4a30		MOVQ 0x30(DX), R9											
  map_controller.go:149	0xe7eca4		4d85c0			TESTQ R8, R8												
  map_controller.go:149	0xe7eca7		0f84e4010000		JE 0xe7ee91												
  map_controller.go:149	0xe7ecad		4d8b5808		MOVQ 0x8(R8), R11											
  map_controller.go:149	0xe7ecb1		4c8b2558c51300		MOVQ CAS-Backend/biz/controller..typeAssert.19(SB), R12							
  map_controller.go:149	0xe7ecb8		4d8b2c24		MOVQ 0(R12), R13											
  map_controller.go:149	0xe7ecbc		458b7810		MOVL 0x10(R8), R15											
  map_controller.go:149	0xe7ecc0		e919020000		JMP 0xe7eede												
  map_controller.go:136	0xe7ecc5		e816c35eff		CALL runtime.makemap_small(SB)										
  map_controller.go:136	0xe7ecca		4889842468010000	MOVQ AX, 0x168(SP)											
  map_controller.go:136	0xe7ecd2		4889c3			MOVQ AX, BX												
  map_controller.go:136	0xe7ecd5		488d0de5b82e00		LEAQ go:string.*+8377(SB), CX										
  map_controller.go:136	0xe7ecdc		bf05000000		MOVL $__subsystem__+2(SB), DI										
  map_controller.go:136	0xe7ece1		488d05985b2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:136	0xe7ece8		e833f35eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:136	0xe7eced		488d0d2c3c1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:136	0xe7ecf4		488908			MOVQ CX, 0(AX)												
  map_controller.go:136	0xe7ecf7		833d52ee6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:136	0xe7ecfe		6690			NOPW													
  map_controller.go:136	0xe7ed00		740c			JE 0xe7ed0e												
  map_controller.go:136	0xe7ed02		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:136	0xe7ed06		e815975fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:136	0xe7ed0b		49890b			MOVQ CX, 0(R11)												
  map_controller.go:136	0xe7ed0e		488d0d6b9dfe01		LEAQ CAS-Backend/biz/controller..stmp_106(SB), CX							
  map_controller.go:136	0xe7ed15		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7ed19		488d0d605b2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7ed20		48898c2448010000	MOVQ CX, 0x148(SP)											
  context.go:1005	0xe7ed28		488b8c2468010000	MOVQ 0x168(SP), CX											
  context.go:1005	0xe7ed30		48898c2450010000	MOVQ CX, 0x150(SP)											
  context.go:1005	0xe7ed38		488d05a1d12400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7ed3f		488d9c2448010000	LEAQ 0x148(SP), BX											
  context.go:1005	0xe7ed47		e8540359ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7ed4c		bbf4010000		MOVL $.file+423(SB), BX											
  context.go:1005	0xe7ed51		488d0dd804ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7ed58		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7ed5b		488b842488010000	MOVQ 0x188(SP), AX											
  context.go:1005	0xe7ed63		e8f809f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:137	0xe7ed68		c644245f00		MOVB $0x0, 0x5f(SP)											
  map_controller.go:137	0xe7ed6d		488b942470010000	MOVQ 0x170(SP), DX											
  map_controller.go:137	0xe7ed75		488b0a			MOVQ 0(DX), CX												
  map_controller.go:137	0xe7ed78		ffd1			CALL CX													
  map_controller.go:137	0xe7ed7a		4881c478010000		ADDQ $.file+299(SB), SP											
  map_controller.go:137	0xe7ed81		5d			POPQ BP													
  map_controller.go:137	0xe7ed82		c3			RET													
  map_controller.go:155	0xe7ed83		e858c25eff		CALL runtime.makemap_small(SB)										
  map_controller.go:155	0xe7ed88		4889842468010000	MOVQ AX, 0x168(SP)											
  map_controller.go:155	0xe7ed90		4889c3			MOVQ AX, BX												
  map_controller.go:155	0xe7ed93		488d0df2a82e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:155	0xe7ed9a		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:155	0xe7ed9f		488d05da5a2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:155	0xe7eda6		e875f25eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:155	0xe7edab		488d0dae3d1c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:155	0xe7edb2		488908			MOVQ CX, 0(AX)												
  map_controller.go:155	0xe7edb5		833d94ed6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:155	0xe7edbc		740c			JE 0xe7edca												
  map_controller.go:155	0xe7edbe		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:155	0xe7edc2		e859965fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:155	0xe7edc7		498913			MOVQ DX, 0(R11)												
  map_controller.go:155	0xe7edca		488d15ef5cfe01		LEAQ runtime.gcbits.*(SB), DX										
  map_controller.go:155	0xe7edd1		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:155	0xe7edd5		488d05a45a2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:155	0xe7eddc		488b9c2468010000	MOVQ 0x168(SP), BX											
  map_controller.go:155	0xe7ede4		488d0d699c2e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:155	0xe7edeb		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:155	0xe7edf0		e82bf25eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:155	0xe7edf5		488d15243b1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:155	0xe7edfc		488910			MOVQ DX, 0(AX)												
  map_controller.go:155	0xe7edff		833d4aed6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:155	0xe7ee06		740c			JE 0xe7ee14												
  map_controller.go:155	0xe7ee08		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:155	0xe7ee0c		e80f965fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:155	0xe7ee11		49890b			MOVQ CX, 0(R11)												
  map_controller.go:155	0xe7ee14		488d0d059cfe01		LEAQ CAS-Backend/biz/controller..stmp_95(SB), CX							
  map_controller.go:155	0xe7ee1b		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7ee1f		488d0d5a5a2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7ee26		48898c2448010000	MOVQ CX, 0x148(SP)											
  context.go:1005	0xe7ee2e		488b8c2468010000	MOVQ 0x168(SP), CX											
  context.go:1005	0xe7ee36		48898c2450010000	MOVQ CX, 0x150(SP)											
  context.go:1005	0xe7ee3e		488d059bd02400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7ee45		488d9c2448010000	LEAQ 0x148(SP), BX											
  context.go:1005	0xe7ee4d		e84e0259ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7ee52		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe7ee57		488d0dd203ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7ee5e		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7ee61		488b842488010000	MOVQ 0x188(SP), AX											
  context.go:1005	0xe7ee69		e8f208f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  context.go:1005	0xe7ee6e		31c0			XORL AX, AX												
  map_controller.go:160	0xe7ee70		a801			TESTL $__minor_os_version__(SB), AL									
  map_controller.go:160	0xe7ee72		7414			JE 0xe7ee88												
  map_controller.go:160	0xe7ee74		83e0fe			ANDL $-0x2, AX												
  map_controller.go:160	0xe7ee77		8844245f		MOVB AL, 0x5f(SP)											
  map_controller.go:160	0xe7ee7b		488b942470010000	MOVQ 0x170(SP), DX											
  map_controller.go:160	0xe7ee83		488b02			MOVQ 0(DX), AX												
  map_controller.go:160	0xe7ee86		ffd0			CALL AX													
  map_controller.go:160	0xe7ee88		4881c478010000		ADDQ $.file+299(SB), SP											
  map_controller.go:160	0xe7ee8f		5d			POPQ BP													
  map_controller.go:160	0xe7ee90		c3			RET													
  map_controller.go:149	0xe7ee91		488b5220		MOVQ 0x20(DX), DX											
  map_controller.go:149	0xe7ee95		488bbc2488000000	MOVQ 0x88(SP), DI											
  map_controller.go:149	0xe7ee9d		488bb42490000000	MOVQ 0x90(SP), SI											
  map_controller.go:149	0xe7eea5		4c8d1d3411ff01		LEAQ go:itab.*os.File,io.ReadSeeker(SB), R11								
  map_controller.go:149	0xe7eeac		4c891c24		MOVQ R11, 0(SP)												
  map_controller.go:149	0xe7eeb0		4c8b5c2478		MOVQ 0x78(SP), R11											
  map_controller.go:149	0xe7eeb5		4c895c2408		MOVQ R11, 0x8(SP)											
  map_controller.go:149	0xe7eeba		4989ca			MOVQ CX, R10												
  map_controller.go:149	0xe7eebd		4889d1			MOVQ DX, CX												
  map_controller.go:149	0xe7eec0		4889c2			MOVQ AX, DX												
  map_controller.go:149	0xe7eec3		4c89c0			MOVQ R8, AX												
  map_controller.go:149	0xe7eec6		4989db			MOVQ BX, R11												
  map_controller.go:149	0xe7eec9		4c89cb			MOVQ R9, BX												
  map_controller.go:149	0xe7eecc		4989d0			MOVQ DX, R8												
  map_controller.go:149	0xe7eecf		4d89d9			MOVQ R11, R9												
  map_controller.go:149	0xe7eed2		e8092093ff		CALL net/http.ServeContent(SB)										
  map_controller.go:149	0xe7eed7		b801000000		MOVL $__minor_os_version__(SB), AX									
  map_controller.go:149	0xe7eedc		eb92			JMP 0xe7ee70												
  map_controller.go:149	0xe7eede		4c89fe			MOVQ R15, SI												
  map_controller.go:149	0xe7eee1		4d21ef			ANDQ R13, R15												
  map_controller.go:149	0xe7eee4		49c1e704		SHLQ $__subsystem__+1(SB), R15										
  map_controller.go:149	0xe7eee8		4b8b7c2708		MOVQ 0x8(R15)(R12*1), DI										
  map_controller.go:149	0xe7eeed		4c39df			CMPQ DI, R11												
  map_controller.go:149	0xe7eef0		745d			JE 0xe7ef4f												
  map_controller.go:149	0xe7eef2		4c8d7e01		LEAQ 0x1(SI), R15											
  map_controller.go:149	0xe7eef6		4885ff			TESTQ DI, DI												
  map_controller.go:149	0xe7eef9		75e3			JNE 0xe7eede												
  map_controller.go:149	0xe7eefb		48898c2460010000	MOVQ CX, 0x160(SP)											
  map_controller.go:149	0xe7ef03		48895c2470		MOVQ BX, 0x70(SP)											
  map_controller.go:149	0xe7ef08		4889442468		MOVQ AX, 0x68(SP)											
  map_controller.go:149	0xe7ef0d		4c898c2458010000	MOVQ R9, 0x158(SP)											
  map_controller.go:149	0xe7ef15		488d05f4c21300		LEAQ CAS-Backend/biz/controller..typeAssert.19(SB), AX							
  map_controller.go:149	0xe7ef1c		4c89db			MOVQ R11, BX												
  map_controller.go:149	0xe7ef1f		90			NOPL													
  map_controller.go:149	0xe7ef20		e8bb0359ff		CALL runtime.typeAssert(SB)										
  map_controller.go:149	0xe7ef25		488b8c2460010000	MOVQ 0x160(SP), CX											
  map_controller.go:149	0xe7ef2d		488b942488010000	MOVQ 0x188(SP), DX											
  map_controller.go:149	0xe7ef35		488b5c2470		MOVQ 0x70(SP), BX											
  map_controller.go:149	0xe7ef3a		4c8b8c2458010000	MOVQ 0x158(SP), R9											
  map_controller.go:149	0xe7ef42		4989c0			MOVQ AX, R8												
  map_controller.go:149	0xe7ef45		488b442468		MOVQ 0x68(SP), AX											
  map_controller.go:149	0xe7ef4a		e942ffffff		JMP 0xe7ee91												
  map_controller.go:149	0xe7ef4f		4f8b442710		MOVQ 0x10(R15)(R12*1), R8										
  map_controller.go:149	0xe7ef54		e938ffffff		JMP 0xe7ee91												
  map_controller.go:149	0xe7ef59		e822ac5bff		CALL runtime.deferreturn(SB)										
  map_controller.go:149	0xe7ef5e		4881c478010000		ADDQ $.file+299(SB), SP											
  map_controller.go:149	0xe7ef65		5d			POPQ BP													
  map_controller.go:149	0xe7ef66		c3			RET													
  map_controller.go:112	0xe7ef67		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:112	0xe7ef6c		e86f755fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:112	0xe7ef71		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:112	0xe7ef76		e9a5f8ffff		JMP CAS-Backend/biz/controller.GetMapHandler(SB)							
  :-1			0xe7ef7b		cc			INT $__subsystem__(SB)											
  :-1			0xe7ef7c		cc			INT $__subsystem__(SB)											
  :-1			0xe7ef7d		cc			INT $__subsystem__(SB)											
  :-1			0xe7ef7e		cc			INT $__subsystem__(SB)											
  :-1			0xe7ef7f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.GetMapHandler.deferwrap1(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:132	0xe7ef80		493b6610		CMPQ SP, 0x10(R14)						
  map_controller.go:132	0xe7ef84		762d			JBE 0xe7efb3							
  map_controller.go:132	0xe7ef86		55			PUSHQ BP							
  map_controller.go:132	0xe7ef87		4889e5			MOVQ SP, BP							
  map_controller.go:132	0xe7ef8a		4883ec08		SUBQ $__major_os_version__+2(SB), SP				
  map_controller.go:132	0xe7ef8e		4d8b6620		MOVQ 0x20(R14), R12						
  map_controller.go:132	0xe7ef92		4d85e4			TESTQ R12, R12							
  map_controller.go:132	0xe7ef95		7523			JNE 0xe7efba							
  map_controller.go:132	0xe7ef97		488b4a08		MOVQ 0x8(DX), CX						
  map_controller.go:132	0xe7ef9b		0f1f440000		NOPL 0(AX)(AX*1)						
  file_posix.go:20	0xe7efa0		4885c9			TESTQ CX, CX							
  file_posix.go:20	0xe7efa3		7408			JE 0xe7efad							
  file_posix.go:23	0xe7efa5		488b01			MOVQ 0(CX), AX							
  file_posix.go:23	0xe7efa8		e8d31465ff		CALL os.(*file).close(SB)					
  map_controller.go:132	0xe7efad		4883c408		ADDQ $__major_os_version__+2(SB), SP				
  map_controller.go:132	0xe7efb1		5d			POPQ BP								
  map_controller.go:132	0xe7efb2		c3			RET								
  map_controller.go:132	0xe7efb3		e8a8745fff		CALL runtime.morestack.abi0(SB)					
  map_controller.go:132	0xe7efb8		ebc6			JMP CAS-Backend/biz/controller.GetMapHandler.deferwrap1(SB)	
  map_controller.go:132	0xe7efba		4c8d6c2418		LEAQ 0x18(SP), R13						
  map_controller.go:132	0xe7efbf		90			NOPL								
  map_controller.go:132	0xe7efc0		4d392c24		CMPQ 0(R12), R13						
  map_controller.go:132	0xe7efc4		75d1			JNE 0xe7ef97							
  map_controller.go:132	0xe7efc6		49892424		MOVQ SP, 0(R12)							
  map_controller.go:132	0xe7efca		ebcb			JMP 0xe7ef97							
  :-1			0xe7efcc		cc			INT $__subsystem__(SB)						
  :-1			0xe7efcd		cc			INT $__subsystem__(SB)						
  :-1			0xe7efce		cc			INT $__subsystem__(SB)						
  :-1			0xe7efcf		cc			INT $__subsystem__(SB)						
  :-1			0xe7efd0		cc			INT $__subsystem__(SB)						
  :-1			0xe7efd1		cc			INT $__subsystem__(SB)						
  :-1			0xe7efd2		cc			INT $__subsystem__(SB)						
  :-1			0xe7efd3		cc			INT $__subsystem__(SB)						
  :-1			0xe7efd4		cc			INT $__subsystem__(SB)						
  :-1			0xe7efd5		cc			INT $__subsystem__(SB)						
  :-1			0xe7efd6		cc			INT $__subsystem__(SB)						
  :-1			0xe7efd7		cc			INT $__subsystem__(SB)						
  :-1			0xe7efd8		cc			INT $__subsystem__(SB)						
  :-1			0xe7efd9		cc			INT $__subsystem__(SB)						
  :-1			0xe7efda		cc			INT $__subsystem__(SB)						
  :-1			0xe7efdb		cc			INT $__subsystem__(SB)						
  :-1			0xe7efdc		cc			INT $__subsystem__(SB)						
  :-1			0xe7efdd		cc			INT $__subsystem__(SB)						
  :-1			0xe7efde		cc			INT $__subsystem__(SB)						
  :-1			0xe7efdf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.DeleteMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:162	0xe7efe0		4c8d6424f8		LEAQ -0x8(SP), R12											
  map_controller.go:162	0xe7efe5		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:162	0xe7efe9		0f86ec020000		JBE 0xe7f2db												
  map_controller.go:162	0xe7efef		55			PUSHQ BP												
  map_controller.go:162	0xe7eff0		4889e5			MOVQ SP, BP												
  map_controller.go:162	0xe7eff3		4883c480		ADDQ $-0x80, SP												
  context.go:712	0xe7eff7		4889842490000000	MOVQ AX, 0x90(SP)											
  map_controller.go:163	0xe7efff		488d051a832700		LEAQ runtime.types+1123104(SB), AX									
  map_controller.go:163	0xe7f006		e8952759ff		CALL runtime.newobject(SB)										
  map_controller.go:163	0xe7f00b		4889442478		MOVQ AX, 0x78(SP)											
  context.go:712	0xe7f010		488b0dc9871300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712	0xe7f017		488b15ca871300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712	0xe7f01e		6690			NOPW													
  context.go:712	0xe7f020		4885c9			TESTQ CX, CX												
  context.go:712	0xe7f023		7417			JE 0xe7f03c												
  context.go:712	0xe7f025		488b5908		MOVQ 0x8(CX), BX											
  context.go:712	0xe7f029		488b3500c21300		MOVQ CAS-Backend/biz/controller..typeAssert.20(SB), SI							
  context.go:712	0xe7f030		4c8b06			MOVQ 0(SI), R8												
  context.go:712	0xe7f033		448b4910		MOVL 0x10(CX), R9											
  context.go:712	0xe7f037		e953020000		JMP 0xe7f28f												
  context.go:752	0xe7f03c		488b7118		MOVQ 0x18(CX), SI											
  context.go:752	0xe7f040		4c8b842490000000	MOVQ 0x90(SP), R8											
  context.go:752	0xe7f048		498b5820		MOVQ 0x20(R8), BX											
  context.go:752	0xe7f04c		488d0d0d771a00		LEAQ runtime.types+268128(SB), CX									
  context.go:752	0xe7f053		4889c7			MOVQ AX, DI												
  context.go:752	0xe7f056		4889d0			MOVQ DX, AX												
  context.go:752	0xe7f059		ffd6			CALL SI													
  context.go:752	0xe7f05b		0f1f440000		NOPL 0(AX)(AX*1)											
  map_controller.go:165	0xe7f060		4885c0			TESTQ AX, AX												
  map_controller.go:165	0xe7f063		0f85c2010000		JNE 0xe7f22b												
  map_controller.go:171	0xe7f069		440f117c2448		MOVUPS X15, 0x48(SP)											
  map_controller.go:171	0xe7f06f		488b4c2478		MOVQ 0x78(SP), CX											
  map_controller.go:171	0xe7f074		488b4108		MOVQ 0x8(CX), AX											
  map_controller.go:171	0xe7f078		488b5910		MOVQ 0x10(CX), BX											
  map_controller.go:171	0xe7f07c		0f1f4000		NOPL 0(AX)												
  map_controller.go:171	0xe7f080		e89bb05eff		CALL runtime.convTstring(SB)										
  map_controller.go:171	0xe7f085		488d0d94381c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:171	0xe7f08c		48894c2448		MOVQ CX, 0x48(SP)											
  map_controller.go:171	0xe7f091		4889442450		MOVQ AX, 0x50(SP)											
  print.go:314		0xe7f096		488b1de32f6902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe7f09d		488d053ccafe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe7f0a4		488d4c2448		LEAQ 0x48(SP), CX											
  print.go:314		0xe7f0a9		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe7f0ae		4889fe			MOVQ DI, SI												
  print.go:314		0xe7f0b1		e8aa076aff		CALL fmt.Fprintln(SB)											
  map_controller.go:172	0xe7f0b6		488b4c2478		MOVQ 0x78(SP), CX											
  map_controller.go:172	0xe7f0bb		488b4128		MOVQ 0x28(CX), AX											
  map_controller.go:172	0xe7f0bf		488b5930		MOVQ 0x30(CX), BX											
  map_controller.go:172	0xe7f0c3		e8d8c166ff		CALL strconv.Atoi(SB)											
  map_controller.go:173	0xe7f0c8		488b4c2478		MOVQ 0x78(SP), CX											
  map_controller.go:173	0xe7f0cd		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:173	0xe7f0d1		488b4920		MOVQ 0x20(CX), CX											
  map_controller.go:173	0xe7f0d5		e8866cb1ff		CALL CAS-Backend/biz/dao.Delete_map(SB)									
  map_controller.go:173	0xe7f0da		660f1f440000		NOPW 0(AX)(AX*1)											
  map_controller.go:173	0xe7f0e0		84c0			TESTL AL, AL												
  map_controller.go:174	0xe7f0e2		0f84a2000000		JE 0xe7f18a												
  map_controller.go:175	0xe7f0e8		e8f3be5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:175	0xe7f0ed		4889442440		MOVQ AX, 0x40(SP)											
  map_controller.go:175	0xe7f0f2		4889c3			MOVQ AX, BX												
  map_controller.go:175	0xe7f0f5		488d0d90a52e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:175	0xe7f0fc		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:175	0xe7f101		488d0578572200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:175	0xe7f108		e813ef5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:175	0xe7f10d		488d0d4c3a1c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:175	0xe7f114		488908			MOVQ CX, 0(AX)												
  map_controller.go:175	0xe7f117		833d32ea6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:175	0xe7f11e		6690			NOPW													
  map_controller.go:175	0xe7f120		740c			JE 0xe7f12e												
  map_controller.go:175	0xe7f122		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:175	0xe7f126		e8f5925fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:175	0xe7f12b		49890b			MOVQ CX, 0(R11)												
  map_controller.go:175	0xe7f12e		488d0dfb86fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), CX								
  map_controller.go:175	0xe7f135		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7f139		488d0d40572200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7f140		48894c2468		MOVQ CX, 0x68(SP)											
  context.go:1005	0xe7f145		488b4c2440		MOVQ 0x40(SP), CX											
  context.go:1005	0xe7f14a		48894c2470		MOVQ CX, 0x70(SP)											
  context.go:1005	0xe7f14f		488d058acd2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7f156		488d5c2468		LEAQ 0x68(SP), BX											
  context.go:1005	0xe7f15b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:1005	0xe7f160		e83bff58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7f165		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe7f16a		488d0dbf00ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7f171		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7f174		488b842490000000	MOVQ 0x90(SP), AX											
  context.go:1005	0xe7f17c		0f1f4000		NOPL 0(AX)												
  context.go:1005	0xe7f180		e8db05f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:183	0xe7f185		e99b000000		JMP 0xe7f225												
  map_controller.go:179	0xe7f18a		e851be5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:179	0xe7f18f		4889442440		MOVQ AX, 0x40(SP)											
  map_controller.go:179	0xe7f194		4889c3			MOVQ AX, BX												
  map_controller.go:179	0xe7f197		488d0deea42e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:179	0xe7f19e		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:179	0xe7f1a3		488d05d6562200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:179	0xe7f1aa		e871ee5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:179	0xe7f1af		488d0daa391c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:179	0xe7f1b6		488908			MOVQ CX, 0(AX)												
  map_controller.go:179	0xe7f1b9		833d90e96d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:179	0xe7f1c0		740c			JE 0xe7f1ce												
  map_controller.go:179	0xe7f1c2		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:179	0xe7f1c6		e855925fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:179	0xe7f1cb		49890b			MOVQ CX, 0(R11)												
  map_controller.go:179	0xe7f1ce		488d0deb58fe01		LEAQ runtime.gcbits.*(SB), CX										
  map_controller.go:179	0xe7f1d5		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7f1d9		488d0da0562200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7f1e0		48894c2468		MOVQ CX, 0x68(SP)											
  context.go:1005	0xe7f1e5		488b4c2440		MOVQ 0x40(SP), CX											
  context.go:1005	0xe7f1ea		48894c2470		MOVQ CX, 0x70(SP)											
  context.go:1005	0xe7f1ef		488d05eacc2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7f1f6		488d5c2468		LEAQ 0x68(SP), BX											
  context.go:1005	0xe7f1fb		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:1005	0xe7f200		e89bfe58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7f205		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe7f20a		488d0d1f00ff01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7f211		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7f214		488b842490000000	MOVQ 0x90(SP), AX											
  context.go:1005	0xe7f21c		0f1f4000		NOPL 0(AX)												
  context.go:1005	0xe7f220		e83b05f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:183	0xe7f225		4883ec80		SUBQ $-0x80, SP												
  map_controller.go:183	0xe7f229		5d			POPQ BP													
  map_controller.go:183	0xe7f22a		c3			RET													
  context.go:752	0xe7f22b		48895c2430		MOVQ BX, 0x30(SP)											
  context.go:752	0xe7f230		4889442428		MOVQ AX, 0x28(SP)											
  map_controller.go:166	0xe7f235		488d15e4361c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:166	0xe7f23c		4889542458		MOVQ DX, 0x58(SP)											
  map_controller.go:166	0xe7f241		488d158895fe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  map_controller.go:166	0xe7f248		4889542460		MOVQ DX, 0x60(SP)											
  print.go:314		0xe7f24d		488b1d2c2e6902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe7f254		488d0585c8fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe7f25b		488d4c2458		LEAQ 0x58(SP), CX											
  print.go:314		0xe7f260		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe7f265		4889fe			MOVQ DI, SI												
  print.go:314		0xe7f268		e8f3056aff		CALL fmt.Fprintln(SB)											
  map_controller.go:167	0xe7f26d		488b842490000000	MOVQ 0x90(SP), AX											
  map_controller.go:167	0xe7f275		bb90010000		MOVL $.file+323(SB), BX											
  map_controller.go:167	0xe7f27a		488b4c2428		MOVQ 0x28(SP), CX											
  map_controller.go:167	0xe7f27f		488b7c2430		MOVQ 0x30(SP), DI											
  map_controller.go:167	0xe7f284		e817bef7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  map_controller.go:168	0xe7f289		4883ec80		SUBQ $-0x80, SP												
  map_controller.go:168	0xe7f28d		5d			POPQ BP													
  map_controller.go:168	0xe7f28e		c3			RET													
  context.go:712	0xe7f28f		4d89ca			MOVQ R9, R10												
  context.go:712	0xe7f292		4d21c1			ANDQ R8, R9												
  context.go:712	0xe7f295		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712	0xe7f299		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712	0xe7f29e		6690			NOPW													
  context.go:712	0xe7f2a0		4939db			CMPQ R11, BX												
  context.go:712	0xe7f2a3		742c			JE 0xe7f2d1												
  context.go:712	0xe7f2a5		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712	0xe7f2a9		4d85db			TESTQ R11, R11												
  context.go:712	0xe7f2ac		75e1			JNE 0xe7f28f												
  context.go:712	0xe7f2ae		4889542438		MOVQ DX, 0x38(SP)											
  context.go:712	0xe7f2b3		488d0576bf1300		LEAQ CAS-Backend/biz/controller..typeAssert.20(SB), AX							
  context.go:712	0xe7f2ba		e8210059ff		CALL runtime.typeAssert(SB)										
  context.go:752	0xe7f2bf		488b542438		MOVQ 0x38(SP), DX											
  context.go:712	0xe7f2c4		4889c1			MOVQ AX, CX												
  context.go:752	0xe7f2c7		488b442478		MOVQ 0x78(SP), AX											
  context.go:712	0xe7f2cc		e96bfdffff		JMP 0xe7f03c												
  context.go:712	0xe7f2d1		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712	0xe7f2d6		e961fdffff		JMP 0xe7f03c												
  map_controller.go:162	0xe7f2db		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:162	0xe7f2e0		e8fb715fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:162	0xe7f2e5		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:162	0xe7f2ea		e9f1fcffff		JMP CAS-Backend/biz/controller.DeleteMapHandler(SB)							
  :-1			0xe7f2ef		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2f0		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2f1		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2f2		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2f3		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2f4		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2f5		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2f6		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2f7		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2f8		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2f9		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2fa		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2fb		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2fc		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2fd		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2fe		cc			INT $__subsystem__(SB)											
  :-1			0xe7f2ff		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.nextSequentialMapVersion(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:193	0xe7f300		493b6610		CMPQ SP, 0x10(R14)						
  map_controller.go:193	0xe7f304		0f86c7000000		JBE 0xe7f3d1							
  map_controller.go:193	0xe7f30a		55			PUSHQ BP							
  map_controller.go:193	0xe7f30b		4889e5			MOVQ SP, BP							
  map_controller.go:193	0xe7f30e		4883ec38		SUBQ $__major_os_version__+50(SB), SP				
  map_controller.go:193	0xe7f312		4889442448		MOVQ AX, 0x48(SP)						
  map_controller.go:194	0xe7f317		e8a43666ff		CALL strings.TrimSpace(SB)					
  map_controller.go:194	0xe7f31c		0f1f4000		NOPL 0(AX)							
  map_controller.go:195	0xe7f320		4885db			TESTQ BX, BX							
  map_controller.go:195	0xe7f323		0f8496000000		JE 0xe7f3bf							
  map_controller.go:198	0xe7f329		e8722266ff		CALL strings.ToUpper(SB)					
  map_controller.go:199	0xe7f32e		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)				
  map_controller.go:199	0xe7f332		7c05			JL 0xe7f339							
  map_controller.go:199	0xe7f334		803856			CMPB 0(AX), $.file+9(SB)					
  map_controller.go:199	0xe7f337		7412			JE 0xe7f34b							
  map_controller.go:200	0xe7f339		488d055c922e00		LEAQ go:string.*+148(SB), AX					
  map_controller.go:200	0xe7f340		bb02000000		MOVL $__minor_os_version__+1(SB), BX				
  map_controller.go:200	0xe7f345		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  map_controller.go:200	0xe7f349		5d			POPQ BP								
  map_controller.go:200	0xe7f34a		c3			RET								
  map_controller.go:202	0xe7f34b		48ffc0			INCQ AX								
  map_controller.go:202	0xe7f34e		48ffcb			DECQ BX								
  map_controller.go:202	0xe7f351		e86a3666ff		CALL strings.TrimSpace(SB)					
  map_controller.go:202	0xe7f356		e845bf66ff		CALL strconv.Atoi(SB)						
  map_controller.go:202	0xe7f35b		0f1f440000		NOPL 0(AX)(AX*1)						
  map_controller.go:203	0xe7f360		4885db			TESTQ BX, BX							
  map_controller.go:203	0xe7f363		7505			JNE 0xe7f36a							
  map_controller.go:203	0xe7f365		4885c0			TESTQ AX, AX							
  map_controller.go:203	0xe7f368		7f12			JG 0xe7f37c							
  map_controller.go:204	0xe7f36a		488d052b922e00		LEAQ go:string.*+148(SB), AX					
  map_controller.go:204	0xe7f371		bb02000000		MOVL $__minor_os_version__+1(SB), BX				
  map_controller.go:204	0xe7f376		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  map_controller.go:204	0xe7f37a		5d			POPQ BP								
  map_controller.go:204	0xe7f37b		c3			RET								
  map_controller.go:206	0xe7f37c		440f117c2428		MOVUPS X15, 0x28(SP)						
  map_controller.go:206	0xe7f382		48ffc0			INCQ AX								
  map_controller.go:206	0xe7f385		e816ad5eff		CALL runtime.convT64(SB)					
  map_controller.go:206	0xe7f38a		488d0dcf371c00		LEAQ runtime.types+383840(SB), CX				
  map_controller.go:206	0xe7f391		48894c2428		MOVQ CX, 0x28(SP)						
  map_controller.go:206	0xe7f396		4889442430		MOVQ AX, 0x30(SP)						
  map_controller.go:206	0xe7f39b		488d05f9972e00		LEAQ go:string.*+1683(SB), AX					
  map_controller.go:206	0xe7f3a2		bb03000000		MOVL $__subsystem__(SB), BX					
  map_controller.go:206	0xe7f3a7		488d4c2428		LEAQ 0x28(SP), CX						
  map_controller.go:206	0xe7f3ac		bf01000000		MOVL $__minor_os_version__(SB), DI				
  map_controller.go:206	0xe7f3b1		4889fe			MOVQ DI, SI							
  map_controller.go:206	0xe7f3b4		e887ff69ff		CALL fmt.Sprintf(SB)						
  map_controller.go:206	0xe7f3b9		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  map_controller.go:206	0xe7f3bd		5d			POPQ BP								
  map_controller.go:206	0xe7f3be		c3			RET								
  map_controller.go:196	0xe7f3bf		488d054a912e00		LEAQ go:string.*+8(SB), AX					
  map_controller.go:196	0xe7f3c6		bb02000000		MOVL $__minor_os_version__+1(SB), BX				
  map_controller.go:196	0xe7f3cb		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  map_controller.go:196	0xe7f3cf		5d			POPQ BP								
  map_controller.go:196	0xe7f3d0		c3			RET								
  map_controller.go:193	0xe7f3d1		4889442408		MOVQ AX, 0x8(SP)						
  map_controller.go:193	0xe7f3d6		48895c2410		MOVQ BX, 0x10(SP)						
  map_controller.go:193	0xe7f3db		0f1f440000		NOPL 0(AX)(AX*1)						
  map_controller.go:193	0xe7f3e0		e8fb705fff		CALL runtime.morestack_noctxt.abi0(SB)				
  map_controller.go:193	0xe7f3e5		488b442408		MOVQ 0x8(SP), AX						
  map_controller.go:193	0xe7f3ea		488b5c2410		MOVQ 0x10(SP), BX						
  map_controller.go:193	0xe7f3ef		e90cffffff		JMP CAS-Backend/biz/controller.nextSequentialMapVersion(SB)	
  :-1			0xe7f3f4		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3f5		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3f6		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3f7		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3f8		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3f9		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3fa		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3fb		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3fc		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3fd		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3fe		cc			INT $__subsystem__(SB)						
  :-1			0xe7f3ff		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.normalizeMapVersion(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:210	0xe7f400		493b6610		CMPQ SP, 0x10(R14)					
  map_controller.go:210	0xe7f404		0f86ae000000		JBE 0xe7f4b8						
  map_controller.go:210	0xe7f40a		55			PUSHQ BP						
  map_controller.go:210	0xe7f40b		4889e5			MOVQ SP, BP						
  map_controller.go:210	0xe7f40e		4883ec38		SUBQ $__major_os_version__+50(SB), SP			
  map_controller.go:210	0xe7f412		4889442448		MOVQ AX, 0x48(SP)					
  map_controller.go:211	0xe7f417		e8a43566ff		CALL strings.TrimSpace(SB)				
  map_controller.go:211	0xe7f41c		0f1f4000		NOPL 0(AX)						
  map_controller.go:212	0xe7f420		4885db			TESTQ BX, BX						
  map_controller.go:212	0xe7f423		0f847d000000		JE 0xe7f4a6						
  map_controller.go:215	0xe7f429		e8722166ff		CALL strings.ToUpper(SB)				
  map_controller.go:216	0xe7f42e		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)			
  map_controller.go:216	0xe7f432		7c60			JL 0xe7f494						
  map_controller.go:216	0xe7f434		803856			CMPB 0(AX), $.file+9(SB)				
  map_controller.go:216	0xe7f437		755b			JNE 0xe7f494						
  map_controller.go:217	0xe7f439		48ffc0			INCQ AX							
  map_controller.go:217	0xe7f43c		48ffcb			DECQ BX							
  map_controller.go:217	0xe7f43f		90			NOPL							
  map_controller.go:217	0xe7f440		e87b3566ff		CALL strings.TrimSpace(SB)				
  map_controller.go:217	0xe7f445		e856be66ff		CALL strconv.Atoi(SB)					
  map_controller.go:217	0xe7f44a		4885db			TESTQ BX, BX						
  map_controller.go:217	0xe7f44d		7545			JNE 0xe7f494						
  map_controller.go:217	0xe7f44f		4885c0			TESTQ AX, AX						
  map_controller.go:217	0xe7f452		7e40			JLE 0xe7f494						
  map_controller.go:218	0xe7f454		440f117c2428		MOVUPS X15, 0x28(SP)					
  map_controller.go:218	0xe7f45a		e841ac5eff		CALL runtime.convT64(SB)				
  map_controller.go:218	0xe7f45f		488d0dfa361c00		LEAQ runtime.types+383840(SB), CX			
  map_controller.go:218	0xe7f466		48894c2428		MOVQ CX, 0x28(SP)					
  map_controller.go:218	0xe7f46b		4889442430		MOVQ AX, 0x30(SP)					
  map_controller.go:218	0xe7f470		488d0524972e00		LEAQ go:string.*+1683(SB), AX				
  map_controller.go:218	0xe7f477		bb03000000		MOVL $__subsystem__(SB), BX				
  map_controller.go:218	0xe7f47c		488d4c2428		LEAQ 0x28(SP), CX					
  map_controller.go:218	0xe7f481		bf01000000		MOVL $__minor_os_version__(SB), DI			
  map_controller.go:218	0xe7f486		4889fe			MOVQ DI, SI						
  map_controller.go:218	0xe7f489		e8b2fe69ff		CALL fmt.Sprintf(SB)					
  map_controller.go:218	0xe7f48e		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  map_controller.go:218	0xe7f492		5d			POPQ BP							
  map_controller.go:218	0xe7f493		c3			RET							
  map_controller.go:221	0xe7f494		488d0575902e00		LEAQ go:string.*+8(SB), AX				
  map_controller.go:221	0xe7f49b		bb02000000		MOVL $__minor_os_version__+1(SB), BX			
  map_controller.go:221	0xe7f4a0		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  map_controller.go:221	0xe7f4a4		5d			POPQ BP							
  map_controller.go:221	0xe7f4a5		c3			RET							
  map_controller.go:213	0xe7f4a6		488d0563902e00		LEAQ go:string.*+8(SB), AX				
  map_controller.go:213	0xe7f4ad		bb02000000		MOVL $__minor_os_version__+1(SB), BX			
  map_controller.go:213	0xe7f4b2		4883c438		ADDQ $__major_os_version__+50(SB), SP			
  map_controller.go:213	0xe7f4b6		5d			POPQ BP							
  map_controller.go:213	0xe7f4b7		c3			RET							
  map_controller.go:210	0xe7f4b8		4889442408		MOVQ AX, 0x8(SP)					
  map_controller.go:210	0xe7f4bd		48895c2410		MOVQ BX, 0x10(SP)					
  map_controller.go:210	0xe7f4c2		e819705fff		CALL runtime.morestack_noctxt.abi0(SB)			
  map_controller.go:210	0xe7f4c7		488b442408		MOVQ 0x8(SP), AX					
  map_controller.go:210	0xe7f4cc		488b5c2410		MOVQ 0x10(SP), BX					
  map_controller.go:210	0xe7f4d1		e92affffff		JMP CAS-Backend/biz/controller.normalizeMapVersion(SB)	
  :-1			0xe7f4d6		cc			INT $__subsystem__(SB)					
  :-1			0xe7f4d7		cc			INT $__subsystem__(SB)					
  :-1			0xe7f4d8		cc			INT $__subsystem__(SB)					
  :-1			0xe7f4d9		cc			INT $__subsystem__(SB)					
  :-1			0xe7f4da		cc			INT $__subsystem__(SB)					
  :-1			0xe7f4db		cc			INT $__subsystem__(SB)					
  :-1			0xe7f4dc		cc			INT $__subsystem__(SB)					
  :-1			0xe7f4dd		cc			INT $__subsystem__(SB)					
  :-1			0xe7f4de		cc			INT $__subsystem__(SB)					
  :-1			0xe7f4df		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.Jieshoutuisong(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:224	0xe7f4e0		4c8da424d8fdffff	LEAQ 0xfffffdd8(SP), R12										
  map_controller.go:224	0xe7f4e8		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:224	0xe7f4ec		0f869d0f0000		JBE 0xe8048f												
  map_controller.go:224	0xe7f4f2		55			PUSHQ BP												
  map_controller.go:224	0xe7f4f3		4889e5			MOVQ SP, BP												
  map_controller.go:224	0xe7f4f6		4881eca0020000		SUBQ $__file_alignment__+160(SB), SP									
  map_controller.go:237	0xe7f4fd		48898424b0020000	MOVQ AX, 0x2b0(SP)											
  map_controller.go:236	0xe7f505		488d1df3372f00		LEAQ go:string.*+42999(SB), BX										
  map_controller.go:236	0xe7f50c		b907000000		MOVL $__major_os_version__+1(SB), CX									
  map_controller.go:236	0xe7f511		e84ad7f7ff		CALL github.com/gin-gonic/gin.(*Context).FormFile(SB)							
  map_controller.go:237	0xe7f516		4885db			TESTQ BX, BX												
  map_controller.go:237	0xe7f519		0f84f5000000		JE 0xe7f614												
  map_controller.go:236	0xe7f51f		48898c2468010000	MOVQ CX, 0x168(SP)											
  map_controller.go:236	0xe7f527		48899c24a8000000	MOVQ BX, 0xa8(SP)											
  map_controller.go:238	0xe7f52f		e8acba5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:238	0xe7f534		48898424a8010000	MOVQ AX, 0x1a8(SP)											
  map_controller.go:238	0xe7f53c		488b8c24a8000000	MOVQ 0xa8(SP), CX											
  map_controller.go:238	0xe7f544		488b4918		MOVQ 0x18(CX), CX											
  map_controller.go:238	0xe7f548		488b842468010000	MOVQ 0x168(SP), AX											
  map_controller.go:238	0xe7f550		ffd1			CALL CX													
  map_controller.go:238	0xe7f552		e8c9ab5eff		CALL runtime.convTstring(SB)										
  map_controller.go:238	0xe7f557		48898424a0010000	MOVQ AX, 0x1a0(SP)											
  map_controller.go:238	0xe7f55f		488b9c24a8010000	MOVQ 0x1a8(SP), BX											
  map_controller.go:238	0xe7f567		488d0d53b02e00		LEAQ go:string.*+8377(SB), CX										
  map_controller.go:238	0xe7f56e		bf05000000		MOVL $__subsystem__+2(SB), DI										
  map_controller.go:238	0xe7f573		488d0506532200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:238	0xe7f57a		e8a1ea5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:238	0xe7f57f		488d0d9a331c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:238	0xe7f586		488908			MOVQ CX, 0(AX)												
  map_controller.go:238	0xe7f589		833dc0e56d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:238	0xe7f590		750e			JNE 0xe7f5a0												
  map_controller.go:238	0xe7f592		488b8c24a0010000	MOVQ 0x1a0(SP), CX											
  map_controller.go:238	0xe7f59a		eb1c			JMP 0xe7f5b8												
  map_controller.go:238	0xe7f59c		0f1f4000		NOPL 0(AX)												
  map_controller.go:238	0xe7f5a0		e89b8e5fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:238	0xe7f5a5		488b8c24a0010000	MOVQ 0x1a0(SP), CX											
  map_controller.go:238	0xe7f5ad		49890b			MOVQ CX, 0(R11)												
  map_controller.go:238	0xe7f5b0		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:238	0xe7f5b4		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:238	0xe7f5b8		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7f5bc		488d0dbd522200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7f5c3		48898c2470010000	MOVQ CX, 0x170(SP)											
  context.go:1005	0xe7f5cb		488b8c24a8010000	MOVQ 0x1a8(SP), CX											
  context.go:1005	0xe7f5d3		48898c2478010000	MOVQ CX, 0x178(SP)											
  context.go:1005	0xe7f5db		488d05fec82400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7f5e2		488d9c2470010000	LEAQ 0x170(SP), BX											
  context.go:1005	0xe7f5ea		e8b1fa58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7f5ef		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005	0xe7f5f4		488d0d35fcfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7f5fb		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7f5fe		488b8424b0020000	MOVQ 0x2b0(SP), AX											
  context.go:1005	0xe7f606		e85501f8ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:239	0xe7f60b		4881c4a0020000		ADDQ $__file_alignment__+160(SB), SP									
  map_controller.go:239	0xe7f612		5d			POPQ BP													
  map_controller.go:239	0xe7f613		c3			RET													
  map_controller.go:236	0xe7f614		4889842400010000	MOVQ AX, 0x100(SP)											
  map_controller.go:241	0xe7f61c		440f11bc2420020000	MOVUPS X15, 0x220(SP)											
  map_controller.go:241	0xe7f625		488b08			MOVQ 0(AX), CX												
  map_controller.go:241	0xe7f628		488b5808		MOVQ 0x8(AX), BX											
  map_controller.go:241	0xe7f62c		4889c8			MOVQ CX, AX												
  map_controller.go:241	0xe7f62f		e8ecaa5eff		CALL runtime.convTstring(SB)										
  map_controller.go:241	0xe7f634		488d0de5321c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:241	0xe7f63b		48898c2420020000	MOVQ CX, 0x220(SP)											
  map_controller.go:241	0xe7f643		4889842428020000	MOVQ AX, 0x228(SP)											
  print.go:314		0xe7f64b		488b1d2e2a6902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe7f652		488d0587c4fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe7f659		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe7f65e		4889fe			MOVQ DI, SI												
  print.go:314		0xe7f661		488d8c2420020000	LEAQ 0x220(SP), CX											
  print.go:314		0xe7f669		e8f2016aff		CALL fmt.Fprintln(SB)											
  map_controller.go:244	0xe7f66e		488b0d7b671300		MOVQ CAS-Backend/biz/dao.MapPath(SB), CX								
  map_controller.go:244	0xe7f675		48898c24d8000000	MOVQ CX, 0xd8(SP)											
  map_controller.go:244	0xe7f67d		488b1574671300		MOVQ CAS-Backend/biz/dao.MapPath+8(SB), DX								
  map_controller.go:244	0xe7f684		4889942480000000	MOVQ DX, 0x80(SP)											
  map_controller.go:253	0xe7f68c		488bb42400010000	MOVQ 0x100(SP), SI											
  map_controller.go:253	0xe7f694		488b06			MOVQ 0(SI), AX												
  map_controller.go:253	0xe7f697		488b5e08		MOVQ 0x8(SI), BX											
  path.go:456		0xe7f69b		0f1f440000		NOPL 0(AX)(AX*1)											
  path.go:456		0xe7f6a0		e8dbc263ff		CALL internal/filepathlite.Base(SB)									
  path.go:456		0xe7f6a5		48898424c8000000	MOVQ AX, 0xc8(SP)											
  path.go:456		0xe7f6ad		48895c2470		MOVQ BX, 0x70(SP)											
  map_controller.go:254	0xe7f6b2		440f11bc2400020000	MOVUPS X15, 0x200(SP)											
  map_controller.go:254	0xe7f6bb		440f11bc2410020000	MOVUPS X15, 0x210(SP)											
  map_controller.go:254	0xe7f6c4		488b8c2480000000	MOVQ 0x80(SP), CX											
  map_controller.go:254	0xe7f6cc		48898c2408020000	MOVQ CX, 0x208(SP)											
  map_controller.go:254	0xe7f6d4		488b8c24d8000000	MOVQ 0xd8(SP), CX											
  map_controller.go:254	0xe7f6dc		48898c2400020000	MOVQ CX, 0x200(SP)											
  map_controller.go:254	0xe7f6e4		48899c2418020000	MOVQ BX, 0x218(SP)											
  map_controller.go:254	0xe7f6ec		4889842410020000	MOVQ AX, 0x210(SP)											
  path.go:131		0xe7f6f4		b902000000		MOVL $__minor_os_version__+1(SB), CX									
  path.go:131		0xe7f6f9		488d842400020000	LEAQ 0x200(SP), AX											
  path.go:131		0xe7f701		4889cb			MOVQ CX, BX												
  path.go:131		0xe7f704		e8775066ff		CALL path/filepath.join(SB)										
  path.go:131		0xe7f709		48898424c0000000	MOVQ AX, 0xc0(SP)											
  path.go:131		0xe7f711		48895c2468		MOVQ BX, 0x68(SP)											
  map_controller.go:257	0xe7f716		4889c1			MOVQ AX, CX												
  map_controller.go:257	0xe7f719		4889df			MOVQ BX, DI												
  map_controller.go:257	0xe7f71c		488b8424b0020000	MOVQ 0x2b0(SP), AX											
  map_controller.go:257	0xe7f724		488b9c2400010000	MOVQ 0x100(SP), BX											
  map_controller.go:257	0xe7f72c		e88fd6f7ff		CALL github.com/gin-gonic/gin.(*Context).SaveUploadedFile(SB)						
  map_controller.go:257	0xe7f731		4885c0			TESTQ AX, AX												
  map_controller.go:257	0xe7f734		0f853b0c0000		JNE 0xe80375												
  strings.go:1082	0xe7f73a		90			NOPL													
  strings.go:21		0xe7f73b		488b4c2470		MOVQ 0x70(SP), CX											
  strings.go:21		0xe7f740		4883f905		CMPQ CX, $__subsystem__+2(SB)										
  strings.go:21		0xe7f744		7d04			JGE 0xe7f74a												
  strings.go:21		0xe7f746		31c0			XORL AX, AX												
  strings.go:21		0xe7f748		eb26			JMP 0xe7f770												
  strings.go:21		0xe7f74a		488b9424c8000000	MOVQ 0xc8(SP), DX											
  strings.go:21		0xe7f752		488d0411		LEAQ 0(CX)(DX*1), AX											
  strings.go:21		0xe7f756		488d40fb		LEAQ -0x5(AX), AX											
  strings.go:21		0xe7f75a		488d1d65ae2e00		LEAQ go:string.*+8382(SB), BX										
  strings.go:21		0xe7f761		b905000000		MOVL $__subsystem__+2(SB), CX										
  strings.go:21		0xe7f766		e8f53658ff		CALL runtime.memequal(SB)										
  strings.go:138	0xe7f76b		488b4c2470		MOVQ 0x70(SP), CX											
  strings.go:137	0xe7f770		84c0			TESTL AL, AL												
  strings.go:137	0xe7f772		7411			JE 0xe7f785												
  strings.go:138	0xe7f774		488d41fb		LEAQ -0x5(CX), AX											
  strings.go:138	0xe7f778		4839c1			CMPQ CX, AX												
  strings.go:138	0xe7f77b		730b			JAE 0xe7f788												
  strings.go:138	0xe7f77d		0f1f00			NOPL 0(AX)												
  strings.go:138	0xe7f780		e9fe0c0000		JMP 0xe80483												
  map_controller.go:264	0xe7f785		4889c8			MOVQ CX, AX												
  map_controller.go:264	0xe7f788		4889442460		MOVQ AX, 0x60(SP)											
  map_controller.go:265	0xe7f78d		e80ee962ff		CALL time.Now(SB)											
  map_controller.go:265	0xe7f792		48898424b8000000	MOVQ AX, 0xb8(SP)											
  map_controller.go:265	0xe7f79a		48899c24b0000000	MOVQ BX, 0xb0(SP)											
  map_controller.go:265	0xe7f7a2		48898c2498010000	MOVQ CX, 0x198(SP)											
  context.go:503	0xe7f7aa		488b8424b0020000	MOVQ 0x2b0(SP), AX											
  context.go:503	0xe7f7b2		488d1d0f332f00		LEAQ go:string.*+42432(SB), BX										
  context.go:503	0xe7f7b9		b907000000		MOVL $__major_os_version__+1(SB), CX									
  context.go:503	0xe7f7be		6690			NOPW													
  context.go:503	0xe7f7c0		e85bcdf7ff		CALL github.com/gin-gonic/gin.(*Context).GetPostForm(SB)						
  map_controller.go:266	0xe7f7c5		e8f63166ff		CALL strings.TrimSpace(SB)										
  map_controller.go:266	0xe7f7ca		48898424d0000000	MOVQ AX, 0xd0(SP)											
  map_controller.go:266	0xe7f7d2		48895c2478		MOVQ BX, 0x78(SP)											
  map_controller.go:268	0xe7f7d7		e84451b1ff		CALL CAS-Backend/biz/dao.InitDB(SB)									
  map_controller.go:271	0xe7f7dc		488dbc2448020000	LEAQ 0x248(SP), DI											
  map_controller.go:271	0xe7f7e4		488d7fd0		LEAQ -0x30(DI), DI											
  map_controller.go:271	0xe7f7e8		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:271	0xe7f7ed		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:271	0xe7f7f2		e8f9925fff		CALL 0x478af0												
  map_controller.go:271	0xe7f7f7		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:271	0xe7f7fb		488b8424c8000000	MOVQ 0xc8(SP), AX											
  map_controller.go:271	0xe7f803		488b5c2460		MOVQ 0x60(SP), BX											
  map_controller.go:271	0xe7f808		e8135fb1ff		CALL CAS-Backend/biz/dao.GetMapByName(SB)								
  map_controller.go:271	0xe7f80d		488dbc2448020000	LEAQ 0x248(SP), DI											
  map_controller.go:271	0xe7f815		4889e6			MOVQ SP, SI												
  map_controller.go:271	0xe7f818		0f1f840000000000	NOPL 0(AX)(AX*1)											
  map_controller.go:271	0xe7f820		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:271	0xe7f825		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:271	0xe7f82a		e82b965fff		CALL 0x478e5a												
  map_controller.go:271	0xe7f82f		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:271	0xe7f833		488dbc2408010000	LEAQ 0x108(SP), DI											
  map_controller.go:271	0xe7f83b		488db42448020000	LEAQ 0x248(SP), SI											
  map_controller.go:271	0xe7f843		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:271	0xe7f848		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:271	0xe7f84d		e808965fff		CALL 0x478e5a												
  map_controller.go:271	0xe7f852		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:271	0xe7f856		84c0			TESTL AL, AL												
  map_controller.go:271	0xe7f858		0f849d060000		JE 0xe7fefb												
  map_controller.go:273	0xe7f85e		488b5c2478		MOVQ 0x78(SP), BX											
  map_controller.go:273	0xe7f863		4885db			TESTQ BX, BX												
  map_controller.go:273	0xe7f866		7517			JNE 0xe7f87f												
  map_controller.go:274	0xe7f868		488b842430010000	MOVQ 0x130(SP), AX											
  map_controller.go:274	0xe7f870		488b9c2438010000	MOVQ 0x138(SP), BX											
  map_controller.go:274	0xe7f878		e883faffff		CALL CAS-Backend/biz/controller.nextSequentialMapVersion(SB)						
  map_controller.go:274	0xe7f87d		eb0d			JMP 0xe7f88c												
  map_controller.go:276	0xe7f87f		488b8424d0000000	MOVQ 0xd0(SP), AX											
  map_controller.go:276	0xe7f887		e874fbffff		CALL CAS-Backend/biz/controller.normalizeMapVersion(SB)							
  map_controller.go:283	0xe7f88c		48899c2490000000	MOVQ BX, 0x90(SP)											
  map_controller.go:283	0xe7f894		48898424f8000000	MOVQ AX, 0xf8(SP)											
  map_controller.go:278	0xe7f89c		488b8c2428010000	MOVQ 0x128(SP), CX											
  map_controller.go:278	0xe7f8a4		4885c9			TESTQ CX, CX												
  map_controller.go:278	0xe7f8a7		745c			JE 0xe7f905												
  map_controller.go:278	0xe7f8a9		488b542468		MOVQ 0x68(SP), DX											
  map_controller.go:278	0xe7f8ae		4839ca			CMPQ DX, CX												
  map_controller.go:278	0xe7f8b1		7407			JE 0xe7f8ba												
  map_controller.go:278	0xe7f8b3		b901000000		MOVL $__minor_os_version__(SB), CX									
  map_controller.go:278	0xe7f8b8		eb2f			JMP 0xe7f8e9												
  map_controller.go:278	0xe7f8ba		488b842420010000	MOVQ 0x120(SP), AX											
  map_controller.go:278	0xe7f8c2		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:278	0xe7f8ca		e8913558ff		CALL runtime.memequal(SB)										
  map_controller.go:278	0xe7f8cf		83f001			XORL $__minor_os_version__(SB), AX									
  map_controller.go:282	0xe7f8d2		488b542468		MOVQ 0x68(SP), DX											
  map_controller.go:283	0xe7f8d7		488b9c2490000000	MOVQ 0x90(SP), BX											
  map_controller.go:278	0xe7f8df		89c1			MOVL AX, CX												
  map_controller.go:283	0xe7f8e1		488b8424f8000000	MOVQ 0xf8(SP), AX											
  map_controller.go:278	0xe7f8e9		84c9			TESTL CL, CL												
  map_controller.go:278	0xe7f8eb		7418			JE 0xe7f905												
  map_controller.go:279	0xe7f8ed		488b842420010000	MOVQ 0x120(SP), AX											
  map_controller.go:279	0xe7f8f5		488b9c2428010000	MOVQ 0x128(SP), BX											
  map_controller.go:279	0xe7f8fd		0f1f00			NOPL 0(AX)												
  map_controller.go:279	0xe7f900		e81b0e65ff		CALL os.Remove(SB)											
  map_controller.go:281	0xe7f905		488d05b4c72800		LEAQ runtime.types+1208512(SB), AX									
  map_controller.go:281	0xe7f90c		e88f1e59ff		CALL runtime.newobject(SB)										
  map_controller.go:281	0xe7f911		4889842490010000	MOVQ AX, 0x190(SP)											
  map_controller.go:281	0xe7f919		488b0d20276902		MOVQ runtime.bss(SB), CX										
  chainable_api.go:19	0xe7f920		4889c8			MOVQ CX, AX												
  chainable_api.go:19	0xe7f923		e8588eaaff		CALL gorm.io/gorm.(*DB).getInstance(SB)									
  chainable_api.go:19	0xe7f928		48898424e0000000	MOVQ AX, 0xe0(SP)											
  chainable_api.go:20	0xe7f930		488b4820		MOVQ 0x20(AX), CX											
  chainable_api.go:20	0xe7f934		488d1505351f00		LEAQ runtime.types+581184(SB), DX									
  chainable_api.go:20	0xe7f93b		48895120		MOVQ DX, 0x20(CX)											
  chainable_api.go:20	0xe7f93f		833d0ae26d0200		CMPL runtime.writeBarrier(SB), $0x0									
  chainable_api.go:20	0xe7f946		750a			JNE 0xe7f952												
  chainable_api.go:20	0xe7f948		488b942490010000	MOVQ 0x190(SP), DX											
  chainable_api.go:20	0xe7f950		eb18			JMP 0xe7f96a												
  chainable_api.go:20	0xe7f952		e8e98a5fff		CALL runtime.gcWriteBarrier2(SB)									
  chainable_api.go:20	0xe7f957		488b942490010000	MOVQ 0x190(SP), DX											
  chainable_api.go:20	0xe7f95f		498913			MOVQ DX, 0(R11)												
  chainable_api.go:20	0xe7f962		488b5928		MOVQ 0x28(CX), BX											
  chainable_api.go:20	0xe7f966		49895b08		MOVQ BX, 0x8(R11)											
  chainable_api.go:20	0xe7f96a		48895128		MOVQ DX, 0x28(CX)											
  map_controller.go:281	0xe7f96e		488d052be51c00		LEAQ runtime.types+429728(SB), AX									
  map_controller.go:281	0xe7f975		e8261e59ff		CALL runtime.newobject(SB)										
  map_controller.go:281	0xe7f97a		4889842488010000	MOVQ AX, 0x188(SP)											
  map_controller.go:281	0xe7f982		488b8c2408010000	MOVQ 0x108(SP), CX											
  map_controller.go:281	0xe7f98a		4889c8			MOVQ CX, AX												
  map_controller.go:281	0xe7f98d		e80ea75eff		CALL runtime.convT64(SB)										
  map_controller.go:281	0xe7f992		488d0dc7311c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:281	0xe7f999		488bbc2488010000	MOVQ 0x188(SP), DI											
  map_controller.go:281	0xe7f9a1		48890f			MOVQ CX, 0(DI)												
  map_controller.go:281	0xe7f9a4		833da5e16d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:281	0xe7f9ab		7410			JE 0xe7f9bd												
  map_controller.go:281	0xe7f9ad		e88e8a5fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:281	0xe7f9b2		498903			MOVQ AX, 0(R11)												
  map_controller.go:281	0xe7f9b5		488b5708		MOVQ 0x8(DI), DX											
  map_controller.go:281	0xe7f9b9		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:281	0xe7f9bd		48894708		MOVQ AX, 0x8(DI)											
  map_controller.go:281	0xe7f9c1		488b8424e0000000	MOVQ 0xe0(SP), AX											
  map_controller.go:281	0xe7f9c9		488d1d502f1c00		LEAQ runtime.types+383264(SB), BX									
  map_controller.go:281	0xe7f9d0		488d0d8983fe01		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX								
  map_controller.go:281	0xe7f9d7		be01000000		MOVL $__minor_os_version__(SB), SI									
  map_controller.go:281	0xe7f9dc		4989f0			MOVQ SI, R8												
  map_controller.go:281	0xe7f9df		90			NOPL													
  map_controller.go:281	0xe7f9e0		e8bbe7a9ff		CALL gorm.io/gorm.(*DB).Where(SB)									
  map_controller.go:281	0xe7f9e5		4889842480010000	MOVQ AX, 0x180(SP)											
  map_controller.go:281	0xe7f9ed		e8eeb55eff		CALL runtime.makemap_small(SB)										
  map_controller.go:281	0xe7f9f2		48898424a8010000	MOVQ AX, 0x1a8(SP)											
  map_controller.go:282	0xe7f9fa		488b5c2468		MOVQ 0x68(SP), BX											
  map_controller.go:282	0xe7f9ff		488b8424c0000000	MOVQ 0xc0(SP), AX											
  map_controller.go:282	0xe7fa07		e814a75eff		CALL runtime.convTstring(SB)										
  map_controller.go:282	0xe7fa0c		48898424a0010000	MOVQ AX, 0x1a0(SP)											
  map_controller.go:281	0xe7fa14		488b9c24a8010000	MOVQ 0x1a8(SP), BX											
  map_controller.go:281	0xe7fa1c		488d0d099b2e00		LEAQ go:string.*+4132(SB), CX										
  map_controller.go:281	0xe7fa23		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:281	0xe7fa28		488d0591da1f00		LEAQ runtime.types+623808(SB), AX									
  map_controller.go:281	0xe7fa2f		e8ece55eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:281	0xe7fa34		488d15e52e1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:281	0xe7fa3b		488910			MOVQ DX, 0(AX)												
  map_controller.go:281	0xe7fa3e		833d0be16d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:281	0xe7fa45		750a			JNE 0xe7fa51												
  map_controller.go:281	0xe7fa47		488b8c24a0010000	MOVQ 0x1a0(SP), CX											
  map_controller.go:281	0xe7fa4f		eb18			JMP 0xe7fa69												
  map_controller.go:281	0xe7fa51		e8ea895fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:281	0xe7fa56		488b8c24a0010000	MOVQ 0x1a0(SP), CX											
  map_controller.go:281	0xe7fa5e		49890b			MOVQ CX, 0(R11)												
  map_controller.go:281	0xe7fa61		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:281	0xe7fa65		49897308		MOVQ SI, 0x8(R11)											
  map_controller.go:281	0xe7fa69		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:283	0xe7fa6d		488b8424f8000000	MOVQ 0xf8(SP), AX											
  map_controller.go:283	0xe7fa75		488b9c2490000000	MOVQ 0x90(SP), BX											
  map_controller.go:283	0xe7fa7d		0f1f00			NOPL 0(AX)												
  map_controller.go:283	0xe7fa80		e89ba65eff		CALL runtime.convTstring(SB)										
  map_controller.go:283	0xe7fa85		48898424a0010000	MOVQ AX, 0x1a0(SP)											
  map_controller.go:281	0xe7fa8d		488b9c24a8010000	MOVQ 0x1a8(SP), BX											
  map_controller.go:281	0xe7fa95		488d0d2c302f00		LEAQ go:string.*+42432(SB), CX										
  map_controller.go:281	0xe7fa9c		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:281	0xe7faa1		488d0518da1f00		LEAQ runtime.types+623808(SB), AX									
  map_controller.go:281	0xe7faa8		e873e55eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:281	0xe7faad		488d0d6c2e1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:281	0xe7fab4		488908			MOVQ CX, 0(AX)												
  map_controller.go:281	0xe7fab7		833d92e06d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:281	0xe7fabe		6690			NOPW													
  map_controller.go:281	0xe7fac0		750a			JNE 0xe7facc												
  map_controller.go:281	0xe7fac2		488b9424a0010000	MOVQ 0x1a0(SP), DX											
  map_controller.go:281	0xe7faca		eb18			JMP 0xe7fae4												
  map_controller.go:281	0xe7facc		e86f895fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:281	0xe7fad1		488b9424a0010000	MOVQ 0x1a0(SP), DX											
  map_controller.go:281	0xe7fad9		498913			MOVQ DX, 0(R11)												
  map_controller.go:281	0xe7fadc		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:281	0xe7fae0		49897308		MOVQ SI, 0x8(R11)											
  map_controller.go:281	0xe7fae4		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:284	0xe7fae8		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  map_controller.go:284	0xe7faf0		48898c2430020000	MOVQ CX, 0x230(SP)											
  map_controller.go:284	0xe7faf8		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  map_controller.go:284	0xe7fb00		48898c2438020000	MOVQ CX, 0x238(SP)											
  map_controller.go:284	0xe7fb08		488b8c2498010000	MOVQ 0x198(SP), CX											
  map_controller.go:284	0xe7fb10		48898c2440020000	MOVQ CX, 0x240(SP)											
  map_controller.go:284	0xe7fb18		488d05c1072d00		LEAQ runtime.types+1487584(SB), AX									
  map_controller.go:284	0xe7fb1f		488d9c2430020000	LEAQ 0x230(SP), BX											
  map_controller.go:284	0xe7fb27		e874f558ff		CALL runtime.convT(SB)											
  map_controller.go:284	0xe7fb2c		48898424a0010000	MOVQ AX, 0x1a0(SP)											
  map_controller.go:281	0xe7fb34		488b9c24a8010000	MOVQ 0x1a8(SP), BX											
  map_controller.go:281	0xe7fb3c		488d0d38452f00		LEAQ go:string.*+47987(SB), CX										
  map_controller.go:281	0xe7fb43		bf08000000		MOVL $__major_os_version__+2(SB), DI									
  map_controller.go:281	0xe7fb48		488d0571d91f00		LEAQ runtime.types+623808(SB), AX									
  map_controller.go:281	0xe7fb4f		e8cce45eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:281	0xe7fb54		488d0d85072d00		LEAQ runtime.types+1487584(SB), CX									
  map_controller.go:281	0xe7fb5b		488908			MOVQ CX, 0(AX)												
  map_controller.go:281	0xe7fb5e		833debdf6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:281	0xe7fb65		750a			JNE 0xe7fb71												
  map_controller.go:281	0xe7fb67		488b9424a0010000	MOVQ 0x1a0(SP), DX											
  map_controller.go:281	0xe7fb6f		eb18			JMP 0xe7fb89												
  map_controller.go:281	0xe7fb71		e8ca885fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:281	0xe7fb76		488b9424a0010000	MOVQ 0x1a0(SP), DX											
  map_controller.go:281	0xe7fb7e		498913			MOVQ DX, 0(R11)												
  map_controller.go:281	0xe7fb81		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:281	0xe7fb85		49897308		MOVQ SI, 0x8(R11)											
  map_controller.go:281	0xe7fb89		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:281	0xe7fb8d		488b842480010000	MOVQ 0x180(SP), AX											
  map_controller.go:281	0xe7fb95		488d1d24d91f00		LEAQ runtime.types+623808(SB), BX									
  map_controller.go:281	0xe7fb9c		488b8c24a8010000	MOVQ 0x1a8(SP), CX											
  map_controller.go:281	0xe7fba4		e85732aaff		CALL gorm.io/gorm.(*DB).Updates(SB)									
  map_controller.go:286	0xe7fba9		4883780800		CMPQ 0x8(AX), $0x0											
  map_controller.go:286	0xe7fbae		0f84ba010000		JE 0xe7fd6e												
  map_controller.go:287	0xe7fbb4		440f11bc24f0010000	MOVUPS X15, 0x1f0(SP)											
  map_controller.go:287	0xe7fbbd		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:287	0xe7fbc1		4885d2			TESTQ DX, DX												
  map_controller.go:287	0xe7fbc4		7404			JE 0xe7fbca												
  map_controller.go:287	0xe7fbc6		488b5208		MOVQ 0x8(DX), DX											
  map_controller.go:281	0xe7fbca		48898424e8000000	MOVQ AX, 0xe8(SP)											
  map_controller.go:287	0xe7fbd2		4c8b5010		MOVQ 0x10(AX), R10											
  map_controller.go:287	0xe7fbd6		48899424f0010000	MOVQ DX, 0x1f0(SP)											
  map_controller.go:287	0xe7fbde		4c899424f8010000	MOVQ R10, 0x1f8(SP)											
  print.go:233		0xe7fbe6		488b1d93246902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe7fbed		488d0da42b3000		LEAQ go:string.*+107152(SB), CX										
  print.go:233		0xe7fbf4		bf16000000		MOVL $__major_os_version__+16(SB), DI									
  print.go:233		0xe7fbf9		488db424f0010000	LEAQ 0x1f0(SP), SI											
  print.go:233		0xe7fc01		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe7fc07		4d89c1			MOVQ R8, R9												
  print.go:233		0xe7fc0a		488d05cfbefe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe7fc11		e80af669ff		CALL fmt.Fprintf(SB)											
  map_controller.go:288	0xe7fc16		488b8424c0000000	MOVQ 0xc0(SP), AX											
  map_controller.go:288	0xe7fc1e		488b5c2468		MOVQ 0x68(SP), BX											
  map_controller.go:288	0xe7fc23		e8f80a65ff		CALL os.Remove(SB)											
  map_controller.go:289	0xe7fc28		e8b3b35eff		CALL runtime.makemap_small(SB)										
  map_controller.go:289	0xe7fc2d		48898424a8010000	MOVQ AX, 0x1a8(SP)											
  map_controller.go:289	0xe7fc35		4889c3			MOVQ AX, BX												
  map_controller.go:289	0xe7fc38		488d0d4d9a2e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:289	0xe7fc3f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:289	0xe7fc44		488d05354c2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:289	0xe7fc4b		e8d0e35eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:289	0xe7fc50		488d15092f1c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:289	0xe7fc57		488910			MOVQ DX, 0(AX)												
  map_controller.go:289	0xe7fc5a		833defde6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:289	0xe7fc61		740c			JE 0xe7fc6f												
  map_controller.go:289	0xe7fc63		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:289	0xe7fc67		e8b4875fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:289	0xe7fc6c		49890b			MOVQ CX, 0(R11)												
  map_controller.go:289	0xe7fc6f		488d0d4a4efe01		LEAQ runtime.gcbits.*(SB), CX										
  map_controller.go:289	0xe7fc76		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:291	0xe7fc7a		488b8c24e8000000	MOVQ 0xe8(SP), CX											
  map_controller.go:291	0xe7fc82		488b5108		MOVQ 0x8(CX), DX											
  map_controller.go:291	0xe7fc86		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:291	0xe7fc8a		488b4a18		MOVQ 0x18(DX), CX											
  map_controller.go:291	0xe7fc8e		ffd1			CALL CX													
  map_controller.go:291	0xe7fc90		b90e000000		MOVL $__major_os_version__+8(SB), CX									
  map_controller.go:291	0xe7fc95		4889c7			MOVQ AX, DI												
  map_controller.go:291	0xe7fc98		4889de			MOVQ BX, SI												
  map_controller.go:291	0xe7fc9b		31c0			XORL AX, AX												
  map_controller.go:291	0xe7fc9d		488d1dd39e2f00		LEAQ go:string.*+71279(SB), BX										
  map_controller.go:291	0xe7fca4		e857575dff		CALL runtime.concatstring2(SB)										
  map_controller.go:291	0xe7fca9		e872a45eff		CALL runtime.convTstring(SB)										
  map_controller.go:291	0xe7fcae		48898424a0010000	MOVQ AX, 0x1a0(SP)											
  map_controller.go:289	0xe7fcb6		488b9c24a8010000	MOVQ 0x1a8(SP), BX											
  map_controller.go:289	0xe7fcbe		488d0d8f8d2e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:289	0xe7fcc5		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:289	0xe7fcca		488d05af4b2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:289	0xe7fcd1		e84ae35eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:289	0xe7fcd6		488d0d432c1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:289	0xe7fcdd		488908			MOVQ CX, 0(AX)												
  map_controller.go:289	0xe7fce0		833d69de6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:289	0xe7fce7		750a			JNE 0xe7fcf3												
  map_controller.go:289	0xe7fce9		488b8c24a0010000	MOVQ 0x1a0(SP), CX											
  map_controller.go:289	0xe7fcf1		eb18			JMP 0xe7fd0b												
  map_controller.go:289	0xe7fcf3		e848875fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:289	0xe7fcf8		488b8c24a0010000	MOVQ 0x1a0(SP), CX											
  map_controller.go:289	0xe7fd00		49890b			MOVQ CX, 0(R11)												
  map_controller.go:289	0xe7fd03		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:289	0xe7fd07		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:289	0xe7fd0b		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7fd0f		488d0d6a4b2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7fd16		48898c2470010000	MOVQ CX, 0x170(SP)											
  context.go:1005	0xe7fd1e		488b8c24a8010000	MOVQ 0x1a8(SP), CX											
  context.go:1005	0xe7fd26		48898c2478010000	MOVQ CX, 0x178(SP)											
  context.go:1005	0xe7fd2e		488d05abc12400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7fd35		488d9c2470010000	LEAQ 0x170(SP), BX											
  context.go:1005	0xe7fd3d		0f1f00			NOPL 0(AX)												
  context.go:1005	0xe7fd40		e85bf358ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7fd45		bbf4010000		MOVL $.file+423(SB), BX											
  context.go:1005	0xe7fd4a		488d0ddff4fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7fd51		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7fd54		488b8424b0020000	MOVQ 0x2b0(SP), AX											
  context.go:1005	0xe7fd5c		0f1f4000		NOPL 0(AX)												
  context.go:1005	0xe7fd60		e8fbf9f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:293	0xe7fd65		4881c4a0020000		ADDQ $__file_alignment__+160(SB), SP									
  map_controller.go:293	0xe7fd6c		5d			POPQ BP													
  map_controller.go:293	0xe7fd6d		c3			RET													
  map_controller.go:295	0xe7fd6e		440f11bc24d0010000	MOVUPS X15, 0x1d0(SP)											
  map_controller.go:295	0xe7fd77		440f11bc24e0010000	MOVUPS X15, 0x1e0(SP)											
  map_controller.go:295	0xe7fd80		488b8424c8000000	MOVQ 0xc8(SP), AX											
  map_controller.go:295	0xe7fd88		488b5c2460		MOVQ 0x60(SP), BX											
  map_controller.go:295	0xe7fd8d		e88ea35eff		CALL runtime.convTstring(SB)										
  map_controller.go:295	0xe7fd92		488d0d872b1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:295	0xe7fd99		48898c24d0010000	MOVQ CX, 0x1d0(SP)											
  map_controller.go:295	0xe7fda1		48898424d8010000	MOVQ AX, 0x1d8(SP)											
  map_controller.go:295	0xe7fda9		488b8424f8000000	MOVQ 0xf8(SP), AX											
  map_controller.go:295	0xe7fdb1		488b9c2490000000	MOVQ 0x90(SP), BX											
  map_controller.go:295	0xe7fdb9		e862a35eff		CALL runtime.convTstring(SB)										
  map_controller.go:295	0xe7fdbe		488d0d5b2b1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:295	0xe7fdc5		48898c24e0010000	MOVQ CX, 0x1e0(SP)											
  map_controller.go:295	0xe7fdcd		48898424e8010000	MOVQ AX, 0x1e8(SP)											
  print.go:233		0xe7fdd5		488b1da4226902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe7fddc		488d05fdbcfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe7fde3		bf24000000		MOVL $__major_os_version__+30(SB), DI									
  print.go:233		0xe7fde8		488db424d0010000	LEAQ 0x1d0(SP), SI											
  print.go:233		0xe7fdf0		41b802000000		MOVL $__minor_os_version__+1(SB), R8									
  print.go:233		0xe7fdf6		4d89c1			MOVQ R8, R9												
  print.go:233		0xe7fdf9		488d0d22203100		LEAQ go:string.*+170266(SB), CX										
  print.go:233		0xe7fe00		e81bf469ff		CALL fmt.Fprintf(SB)											
  map_controller.go:296	0xe7fe05		e8d6b15eff		CALL runtime.makemap_small(SB)										
  map_controller.go:296	0xe7fe0a		48898424a8010000	MOVQ AX, 0x1a8(SP)											
  map_controller.go:296	0xe7fe12		4889c3			MOVQ AX, BX												
  map_controller.go:296	0xe7fe15		488d0d70982e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:296	0xe7fe1c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:296	0xe7fe21		488d05584a2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:296	0xe7fe28		e8f3e15eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:296	0xe7fe2d		488d0d2c2d1c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:296	0xe7fe34		488908			MOVQ CX, 0(AX)												
  map_controller.go:296	0xe7fe37		833d12dd6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:296	0xe7fe3e		6690			NOPW													
  map_controller.go:296	0xe7fe40		740c			JE 0xe7fe4e												
  map_controller.go:296	0xe7fe42		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:296	0xe7fe46		e8d5855fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:296	0xe7fe4b		498913			MOVQ DX, 0(R11)												
  map_controller.go:296	0xe7fe4e		488d15db79fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  map_controller.go:296	0xe7fe55		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:296	0xe7fe59		488d05204a2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:296	0xe7fe60		488b9c24a8010000	MOVQ 0x1a8(SP), BX											
  map_controller.go:296	0xe7fe68		488d0de58b2e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:296	0xe7fe6f		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:296	0xe7fe74		e8a7e15eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:296	0xe7fe79		488d15a02a1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:296	0xe7fe80		488910			MOVQ DX, 0(AX)												
  map_controller.go:296	0xe7fe83		833dc6dc6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:296	0xe7fe8a		740c			JE 0xe7fe98												
  map_controller.go:296	0xe7fe8c		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:296	0xe7fe90		e88b855fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:296	0xe7fe95		49890b			MOVQ CX, 0(R11)												
  map_controller.go:296	0xe7fe98		488d0df18bfe01		LEAQ CAS-Backend/biz/controller..stmp_115(SB), CX							
  map_controller.go:296	0xe7fe9f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe7fea3		488d0dd6492200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe7feaa		48898c2470010000	MOVQ CX, 0x170(SP)											
  context.go:1005	0xe7feb2		488b8c24a8010000	MOVQ 0x1a8(SP), CX											
  context.go:1005	0xe7feba		48898c2478010000	MOVQ CX, 0x178(SP)											
  context.go:1005	0xe7fec2		488d0517c02400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe7fec9		488d9c2470010000	LEAQ 0x170(SP), BX											
  context.go:1005	0xe7fed1		e8caf158ff		CALL runtime.convT(SB)											
  context.go:1005	0xe7fed6		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe7fedb		488d0d4ef3fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe7fee2		4889c7			MOVQ AX, DI												
  context.go:1005	0xe7fee5		488b8424b0020000	MOVQ 0x2b0(SP), AX											
  context.go:1005	0xe7feed		e86ef8f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:300	0xe7fef2		4881c4a0020000		ADDQ $__file_alignment__+160(SB), SP									
  map_controller.go:300	0xe7fef9		5d			POPQ BP													
  map_controller.go:300	0xe7fefa		c3			RET													
  map_controller.go:304	0xe7fefb		488b8424d0000000	MOVQ 0xd0(SP), AX											
  map_controller.go:304	0xe7ff03		488b5c2478		MOVQ 0x78(SP), BX											
  map_controller.go:304	0xe7ff08		e8f3f4ffff		CALL CAS-Backend/biz/controller.normalizeMapVersion(SB)							
  map_controller.go:304	0xe7ff0d		48898424f0000000	MOVQ AX, 0xf0(SP)											
  map_controller.go:304	0xe7ff15		48899c2488000000	MOVQ BX, 0x88(SP)											
  map_controller.go:305	0xe7ff1d		488d059cc12800		LEAQ runtime.types+1208512(SB), AX									
  map_controller.go:305	0xe7ff24		e8771859ff		CALL runtime.newobject(SB)										
  map_controller.go:305	0xe7ff29		488dbc2448020000	LEAQ 0x248(SP), DI											
  map_controller.go:305	0xe7ff31		488d7fd0		LEAQ -0x30(DI), DI											
  map_controller.go:305	0xe7ff35		660f1f840000000000	NOPW 0(AX)(AX*1)											
  map_controller.go:305	0xe7ff3e		6690			NOPW													
  map_controller.go:305	0xe7ff40		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:305	0xe7ff45		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:305	0xe7ff4a		e8a18b5fff		CALL 0x478af0												
  map_controller.go:305	0xe7ff4f		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:306	0xe7ff53		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:306	0xe7ff5b		48898c2450020000	MOVQ CX, 0x250(SP)											
  map_controller.go:306	0xe7ff63		488b542460		MOVQ 0x60(SP), DX											
  map_controller.go:306	0xe7ff68		4889942458020000	MOVQ DX, 0x258(SP)											
  map_controller.go:307	0xe7ff70		488bb424c0000000	MOVQ 0xc0(SP), SI											
  map_controller.go:307	0xe7ff78		4889b42460020000	MOVQ SI, 0x260(SP)											
  map_controller.go:307	0xe7ff80		488b7c2468		MOVQ 0x68(SP), DI											
  map_controller.go:307	0xe7ff85		4889bc2468020000	MOVQ DI, 0x268(SP)											
  map_controller.go:308	0xe7ff8d		4c8b8424f0000000	MOVQ 0xf0(SP), R8											
  map_controller.go:308	0xe7ff95		4c89842470020000	MOVQ R8, 0x270(SP)											
  map_controller.go:308	0xe7ff9d		4c8b842488000000	MOVQ 0x88(SP), R8											
  map_controller.go:308	0xe7ffa5		4c89842478020000	MOVQ R8, 0x278(SP)											
  map_controller.go:309	0xe7ffad		4c8b8424b8000000	MOVQ 0xb8(SP), R8											
  map_controller.go:309	0xe7ffb5		4c89842480020000	MOVQ R8, 0x280(SP)											
  map_controller.go:309	0xe7ffbd		4c8b8424b0000000	MOVQ 0xb0(SP), R8											
  map_controller.go:309	0xe7ffc5		4c89842488020000	MOVQ R8, 0x288(SP)											
  map_controller.go:309	0xe7ffcd		4c8b842498010000	MOVQ 0x198(SP), R8											
  map_controller.go:309	0xe7ffd5		4c89842490020000	MOVQ R8, 0x290(SP)											
  map_controller.go:305	0xe7ffdd		833d6cdb6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:305	0xe7ffe4		7427			JE 0xe8000d												
  map_controller.go:305	0xe7ffe6		4889842498020000	MOVQ AX, 0x298(SP)											
  map_controller.go:305	0xe7ffee		4889c3			MOVQ AX, BX												
  map_controller.go:305	0xe7fff1		488d8c2448020000	LEAQ 0x248(SP), CX											
  map_controller.go:305	0xe7fff9		488d05c0c02800		LEAQ runtime.types+1208512(SB), AX									
  map_controller.go:305	0xe80000		e81b4f59ff		CALL runtime.wbMove(SB)											
  map_controller.go:305	0xe80005		488b842498020000	MOVQ 0x298(SP), AX											
  map_controller.go:305	0xe8000d		4889c7			MOVQ AX, DI												
  map_controller.go:305	0xe80010		488db42448020000	LEAQ 0x248(SP), SI											
  map_controller.go:305	0xe80018		0f1f840000000000	NOPL 0(AX)(AX*1)											
  map_controller.go:305	0xe80020		48896c24f0		MOVQ BP, -0x10(SP)											
  map_controller.go:305	0xe80025		488d6c24f0		LEAQ -0x10(SP), BP											
  map_controller.go:305	0xe8002a		e82b8e5fff		CALL 0x478e5a												
  map_controller.go:305	0xe8002f		488b6d00		MOVQ 0(BP), BP												
  map_controller.go:311	0xe80033		488b1506206902		MOVQ runtime.bss(SB), DX										
  map_controller.go:311	0xe8003a		488d1dff2d1f00		LEAQ runtime.types+581184(SB), BX									
  map_controller.go:311	0xe80041		4889c1			MOVQ AX, CX												
  map_controller.go:311	0xe80044		4889d0			MOVQ DX, AX												
  map_controller.go:311	0xe80047		e8f4f9a9ff		CALL gorm.io/gorm.(*DB).Create(SB)									
  map_controller.go:311	0xe8004c		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:311	0xe80050		4c8b4010		MOVQ 0x10(AX), R8											
  map_controller.go:311	0xe80054		4885d2			TESTQ DX, DX												
  map_controller.go:311	0xe80057		0f84b9010000		JE 0xe80216												
  map_controller.go:311	0xe8005d		4889942498000000	MOVQ DX, 0x98(SP)											
  map_controller.go:312	0xe80065		440f11bc24c0010000	MOVUPS X15, 0x1c0(SP)											
  map_controller.go:312	0xe8006e		7406			JE 0xe80076												
  map_controller.go:312	0xe80070		4c8b5208		MOVQ 0x8(DX), R10											
  map_controller.go:312	0xe80074		eb03			JMP 0xe80079												
  map_controller.go:312	0xe80076		4989d2			MOVQ DX, R10												
  map_controller.go:311	0xe80079		4c89842458010000	MOVQ R8, 0x158(SP)											
  map_controller.go:312	0xe80081		4c899424c0010000	MOVQ R10, 0x1c0(SP)											
  map_controller.go:312	0xe80089		4c898424c8010000	MOVQ R8, 0x1c8(SP)											
  print.go:233		0xe80091		488b1de81f6902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe80098		488d0541bafe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe8009f		488d0dfdb62f00		LEAQ go:string.*+78491(SB), CX										
  print.go:233		0xe800a6		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233		0xe800ab		488db424c0010000	LEAQ 0x1c0(SP), SI											
  print.go:233		0xe800b3		41b901000000		MOVL $__minor_os_version__(SB), R9									
  print.go:233		0xe800b9		4d89c8			MOVQ R9, R8												
  print.go:233		0xe800bc		0f1f4000		NOPL 0(AX)												
  print.go:233		0xe800c0		e85bf169ff		CALL fmt.Fprintf(SB)											
  map_controller.go:313	0xe800c5		488b8424c0000000	MOVQ 0xc0(SP), AX											
  map_controller.go:313	0xe800cd		488b5c2468		MOVQ 0x68(SP), BX											
  map_controller.go:313	0xe800d2		e8490665ff		CALL os.Remove(SB)											
  map_controller.go:314	0xe800d7		e804af5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:314	0xe800dc		48898424a8010000	MOVQ AX, 0x1a8(SP)											
  map_controller.go:314	0xe800e4		4889c3			MOVQ AX, BX												
  map_controller.go:314	0xe800e7		488d0d9e952e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:314	0xe800ee		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:314	0xe800f3		488d0586472200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:314	0xe800fa		e821df5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:314	0xe800ff		488d155a2a1c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:314	0xe80106		488910			MOVQ DX, 0(AX)												
  map_controller.go:314	0xe80109		833d40da6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:314	0xe80110		740c			JE 0xe8011e												
  map_controller.go:314	0xe80112		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:314	0xe80116		e805835fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:314	0xe8011b		49890b			MOVQ CX, 0(R11)												
  map_controller.go:314	0xe8011e		488d0d9b49fe01		LEAQ runtime.gcbits.*(SB), CX										
  map_controller.go:314	0xe80125		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:316	0xe80129		488b8c2498000000	MOVQ 0x98(SP), CX											
  map_controller.go:316	0xe80131		488b4918		MOVQ 0x18(CX), CX											
  map_controller.go:316	0xe80135		488b842458010000	MOVQ 0x158(SP), AX											
  map_controller.go:316	0xe8013d		ffd1			CALL CX													
  map_controller.go:316	0xe8013f		b90e000000		MOVL $__major_os_version__+8(SB), CX									
  map_controller.go:316	0xe80144		4889c7			MOVQ AX, DI												
  map_controller.go:316	0xe80147		4889de			MOVQ BX, SI												
  map_controller.go:316	0xe8014a		31c0			XORL AX, AX												
  map_controller.go:316	0xe8014c		488d1d329a2f00		LEAQ go:string.*+71293(SB), BX										
  map_controller.go:316	0xe80153		e8a8525dff		CALL runtime.concatstring2(SB)										
  map_controller.go:316	0xe80158		e8c39f5eff		CALL runtime.convTstring(SB)										
  map_controller.go:316	0xe8015d		48898424a0010000	MOVQ AX, 0x1a0(SP)											
  map_controller.go:314	0xe80165		488b9c24a8010000	MOVQ 0x1a8(SP), BX											
  map_controller.go:314	0xe8016d		488d0de0882e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:314	0xe80174		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:314	0xe80179		488d0500472200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:314	0xe80180		e89bde5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:314	0xe80185		488d0d94271c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:314	0xe8018c		488908			MOVQ CX, 0(AX)												
  map_controller.go:314	0xe8018f		833dbad96d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:314	0xe80196		750a			JNE 0xe801a2												
  map_controller.go:314	0xe80198		488b8c24a0010000	MOVQ 0x1a0(SP), CX											
  map_controller.go:314	0xe801a0		eb18			JMP 0xe801ba												
  map_controller.go:314	0xe801a2		e899825fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:314	0xe801a7		488b8c24a0010000	MOVQ 0x1a0(SP), CX											
  map_controller.go:314	0xe801af		49890b			MOVQ CX, 0(R11)												
  map_controller.go:314	0xe801b2		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:314	0xe801b6		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:314	0xe801ba		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe801be		488d0dbb462200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe801c5		48898c2470010000	MOVQ CX, 0x170(SP)											
  context.go:1005	0xe801cd		488b8c24a8010000	MOVQ 0x1a8(SP), CX											
  context.go:1005	0xe801d5		48898c2478010000	MOVQ CX, 0x178(SP)											
  context.go:1005	0xe801dd		488d05fcbc2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe801e4		488d9c2470010000	LEAQ 0x170(SP), BX											
  context.go:1005	0xe801ec		e8afee58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe801f1		bbf4010000		MOVL $.file+423(SB), BX											
  context.go:1005	0xe801f6		488d0d33f0fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe801fd		4889c7			MOVQ AX, DI												
  context.go:1005	0xe80200		488b8424b0020000	MOVQ 0x2b0(SP), AX											
  context.go:1005	0xe80208		e853f5f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:318	0xe8020d		4881c4a0020000		ADDQ $__file_alignment__+160(SB), SP									
  map_controller.go:318	0xe80214		5d			POPQ BP													
  map_controller.go:318	0xe80215		c3			RET													
  map_controller.go:320	0xe80216		440f11bc24b0010000	MOVUPS X15, 0x1b0(SP)											
  map_controller.go:320	0xe8021f		488b8424c8000000	MOVQ 0xc8(SP), AX											
  map_controller.go:320	0xe80227		488b5c2460		MOVQ 0x60(SP), BX											
  map_controller.go:320	0xe8022c		e8ef9e5eff		CALL runtime.convTstring(SB)										
  map_controller.go:320	0xe80231		488d0de8261c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:320	0xe80238		48898c24b0010000	MOVQ CX, 0x1b0(SP)											
  map_controller.go:320	0xe80240		48898424b8010000	MOVQ AX, 0x1b8(SP)											
  print.go:233		0xe80248		488b1d311e6902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe8024f		488d058ab8fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe80256		bf1c000000		MOVL $__major_os_version__+22(SB), DI									
  print.go:233		0xe8025b		488db424b0010000	LEAQ 0x1b0(SP), SI											
  print.go:233		0xe80263		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe80269		4d89c1			MOVQ R8, R9												
  print.go:233		0xe8026c		488d0d69903000		LEAQ go:string.*+134612(SB), CX										
  print.go:233		0xe80273		e8a8ef69ff		CALL fmt.Fprintf(SB)											
  map_controller.go:321	0xe80278		e863ad5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:321	0xe8027d		48898424a8010000	MOVQ AX, 0x1a8(SP)											
  map_controller.go:321	0xe80285		4889c3			MOVQ AX, BX												
  map_controller.go:321	0xe80288		488d0dfd932e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:321	0xe8028f		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:321	0xe80294		488d05e5452200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:321	0xe8029b		0f1f440000		NOPL 0(AX)(AX*1)											
  map_controller.go:321	0xe802a0		e87bdd5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:321	0xe802a5		488d0db4281c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:321	0xe802ac		488908			MOVQ CX, 0(AX)												
  map_controller.go:321	0xe802af		833d9ad86d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:321	0xe802b6		7410			JE 0xe802c8												
  map_controller.go:321	0xe802b8		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:321	0xe802bc		0f1f4000		NOPL 0(AX)												
  map_controller.go:321	0xe802c0		e85b815fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:321	0xe802c5		498913			MOVQ DX, 0(R11)												
  map_controller.go:321	0xe802c8		488d156175fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  map_controller.go:321	0xe802cf		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:321	0xe802d3		488d05a6452200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:321	0xe802da		488b9c24a8010000	MOVQ 0x1a8(SP), BX											
  map_controller.go:321	0xe802e2		488d0d6b872e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:321	0xe802e9		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:321	0xe802ee		e82ddd5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:321	0xe802f3		488d1526261c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:321	0xe802fa		488910			MOVQ DX, 0(AX)												
  map_controller.go:321	0xe802fd		833d4cd86d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:321	0xe80304		740c			JE 0xe80312												
  map_controller.go:321	0xe80306		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:321	0xe8030a		e811815fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:321	0xe8030f		49890b			MOVQ CX, 0(R11)												
  map_controller.go:321	0xe80312		488d0d8787fe01		LEAQ CAS-Backend/biz/controller..stmp_118(SB), CX							
  map_controller.go:321	0xe80319		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe8031d		488d0d5c452200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe80324		48898c2470010000	MOVQ CX, 0x170(SP)											
  context.go:1005	0xe8032c		488b8c24a8010000	MOVQ 0x1a8(SP), CX											
  context.go:1005	0xe80334		48898c2478010000	MOVQ CX, 0x178(SP)											
  context.go:1005	0xe8033c		488d059dbb2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe80343		488d9c2470010000	LEAQ 0x170(SP), BX											
  context.go:1005	0xe8034b		e850ed58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe80350		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe80355		488d0dd4eefe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe8035c		4889c7			MOVQ AX, DI												
  context.go:1005	0xe8035f		488b8424b0020000	MOVQ 0x2b0(SP), AX											
  context.go:1005	0xe80367		e8f4f3f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:325	0xe8036c		4881c4a0020000		ADDQ $__file_alignment__+160(SB), SP									
  map_controller.go:325	0xe80373		5d			POPQ BP													
  map_controller.go:325	0xe80374		c3			RET													
  map_controller.go:257	0xe80375		48898424a0000000	MOVQ AX, 0xa0(SP)											
  map_controller.go:257	0xe8037d		48899c2460010000	MOVQ BX, 0x160(SP)											
  map_controller.go:258	0xe80385		e856ac5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:258	0xe8038a		48898424a8010000	MOVQ AX, 0x1a8(SP)											
  map_controller.go:259	0xe80392		488b8c24a0000000	MOVQ 0xa0(SP), CX											
  map_controller.go:259	0xe8039a		488b4918		MOVQ 0x18(CX), CX											
  map_controller.go:259	0xe8039e		488b842460010000	MOVQ 0x160(SP), AX											
  map_controller.go:259	0xe803a6		ffd1			CALL CX													
  map_controller.go:259	0xe803a8		b914000000		MOVL $__major_os_version__+14(SB), CX									
  map_controller.go:259	0xe803ad		4889c7			MOVQ AX, DI												
  map_controller.go:259	0xe803b0		4889de			MOVQ BX, SI												
  map_controller.go:259	0xe803b3		31c0			XORL AX, AX												
  map_controller.go:259	0xe803b5		488d1d96003000		LEAQ go:string.*+98122(SB), BX										
  map_controller.go:259	0xe803bc		0f1f4000		NOPL 0(AX)												
  map_controller.go:259	0xe803c0		e83b505dff		CALL runtime.concatstring2(SB)										
  map_controller.go:259	0xe803c5		e8569d5eff		CALL runtime.convTstring(SB)										
  map_controller.go:259	0xe803ca		48898424a0010000	MOVQ AX, 0x1a0(SP)											
  map_controller.go:258	0xe803d2		488b9c24a8010000	MOVQ 0x1a8(SP), BX											
  map_controller.go:258	0xe803da		488d0de0a12e00		LEAQ go:string.*+8377(SB), CX										
  map_controller.go:258	0xe803e1		bf05000000		MOVL $__subsystem__+2(SB), DI										
  map_controller.go:258	0xe803e6		488d0593442200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:258	0xe803ed		e82edc5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:258	0xe803f2		488d0d27251c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:258	0xe803f9		488908			MOVQ CX, 0(AX)												
  map_controller.go:258	0xe803fc		833d4dd76d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:258	0xe80403		750a			JNE 0xe8040f												
  map_controller.go:258	0xe80405		488b8c24a0010000	MOVQ 0x1a0(SP), CX											
  map_controller.go:258	0xe8040d		eb18			JMP 0xe80427												
  map_controller.go:258	0xe8040f		e82c805fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:258	0xe80414		488b8c24a0010000	MOVQ 0x1a0(SP), CX											
  map_controller.go:258	0xe8041c		49890b			MOVQ CX, 0(R11)												
  map_controller.go:258	0xe8041f		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:258	0xe80423		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:258	0xe80427		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe8042b		488d0d4e442200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe80432		48898c2470010000	MOVQ CX, 0x170(SP)											
  context.go:1005	0xe8043a		488b8c24a8010000	MOVQ 0x1a8(SP), CX											
  context.go:1005	0xe80442		48898c2478010000	MOVQ CX, 0x178(SP)											
  context.go:1005	0xe8044a		488d058fba2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe80451		488d9c2470010000	LEAQ 0x170(SP), BX											
  context.go:1005	0xe80459		e842ec58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe8045e		bbf4010000		MOVL $.file+423(SB), BX											
  context.go:1005	0xe80463		488d0dc6edfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe8046a		4889c7			MOVQ AX, DI												
  context.go:1005	0xe8046d		488b8424b0020000	MOVQ 0x2b0(SP), AX											
  context.go:1005	0xe80475		e8e6f2f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:261	0xe8047a		4881c4a0020000		ADDQ $__file_alignment__+160(SB), SP									
  map_controller.go:261	0xe80481		5d			POPQ BP													
  map_controller.go:261	0xe80482		c3			RET													
  strings.go:138	0xe80483		4889ca			MOVQ CX, DX												
  strings.go:138	0xe80486		4889c1			MOVQ AX, CX												
  strings.go:138	0xe80489		e892835fff		CALL runtime.panicSliceAlen(SB)										
  strings.go:138	0xe8048e		90			NOPL													
  map_controller.go:224	0xe8048f		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:224	0xe80494		e847605fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:224	0xe80499		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:224	0xe8049e		6690			NOPW													
  map_controller.go:224	0xe804a0		e93bf0ffff		JMP CAS-Backend/biz/controller.Jieshoutuisong(SB)							
  :-1			0xe804a5		cc			INT $__subsystem__(SB)											
  :-1			0xe804a6		cc			INT $__subsystem__(SB)											
  :-1			0xe804a7		cc			INT $__subsystem__(SB)											
  :-1			0xe804a8		cc			INT $__subsystem__(SB)											
  :-1			0xe804a9		cc			INT $__subsystem__(SB)											
  :-1			0xe804aa		cc			INT $__subsystem__(SB)											
  :-1			0xe804ab		cc			INT $__subsystem__(SB)											
  :-1			0xe804ac		cc			INT $__subsystem__(SB)											
  :-1			0xe804ad		cc			INT $__subsystem__(SB)											
  :-1			0xe804ae		cc			INT $__subsystem__(SB)											
  :-1			0xe804af		cc			INT $__subsystem__(SB)											
  :-1			0xe804b0		cc			INT $__subsystem__(SB)											
  :-1			0xe804b1		cc			INT $__subsystem__(SB)											
  :-1			0xe804b2		cc			INT $__subsystem__(SB)											
  :-1			0xe804b3		cc			INT $__subsystem__(SB)											
  :-1			0xe804b4		cc			INT $__subsystem__(SB)											
  :-1			0xe804b5		cc			INT $__subsystem__(SB)											
  :-1			0xe804b6		cc			INT $__subsystem__(SB)											
  :-1			0xe804b7		cc			INT $__subsystem__(SB)											
  :-1			0xe804b8		cc			INT $__subsystem__(SB)											
  :-1			0xe804b9		cc			INT $__subsystem__(SB)											
  :-1			0xe804ba		cc			INT $__subsystem__(SB)											
  :-1			0xe804bb		cc			INT $__subsystem__(SB)											
  :-1			0xe804bc		cc			INT $__subsystem__(SB)											
  :-1			0xe804bd		cc			INT $__subsystem__(SB)											
  :-1			0xe804be		cc			INT $__subsystem__(SB)											
  :-1			0xe804bf		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.QMapRHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:357	0xe804c0		4c8d6424a8		LEAQ -0x58(SP), R12											
  map_controller.go:357	0xe804c5		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:357	0xe804c9		0f8620050000		JBE 0xe809ef												
  map_controller.go:357	0xe804cf		55			PUSHQ BP												
  map_controller.go:357	0xe804d0		4889e5			MOVQ SP, BP												
  map_controller.go:357	0xe804d3		4881ecd0000000		SUBQ $.file+131(SB), SP											
  context.go:712	0xe804da		48898424e0000000	MOVQ AX, 0xe0(SP)											
  map_controller.go:358	0xe804e2		488d0557e12900		LEAQ runtime.types+1283648(SB), AX									
  map_controller.go:358	0xe804e9		e8b21259ff		CALL runtime.newobject(SB)										
  map_controller.go:358	0xe804ee		48898424c8000000	MOVQ AX, 0xc8(SP)											
  context.go:712	0xe804f6		488b0de3721300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712	0xe804fd		488b15e4721300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712	0xe80504		4885c9			TESTQ CX, CX												
  context.go:712	0xe80507		741c			JE 0xe80525												
  context.go:712	0xe80509		488b5908		MOVQ 0x8(CX), BX											
  context.go:712	0xe8050d		488b353cad1300		MOVQ CAS-Backend/biz/controller..typeAssert.21(SB), SI							
  context.go:712	0xe80514		4c8b06			MOVQ 0(SI), R8												
  context.go:712	0xe80517		448b4910		MOVL 0x10(CX), R9											
  context.go:712	0xe8051b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712	0xe80520		e979040000		JMP 0xe8099e												
  context.go:752	0xe80525		488b7118		MOVQ 0x18(CX), SI											
  context.go:752	0xe80529		4c8b8424e0000000	MOVQ 0xe0(SP), R8											
  context.go:752	0xe80531		498b5820		MOVQ 0x20(R8), BX											
  context.go:752	0xe80535		488d0da4611a00		LEAQ runtime.types+268000(SB), CX									
  context.go:752	0xe8053c		4889c7			MOVQ AX, DI												
  context.go:752	0xe8053f		4889d0			MOVQ DX, AX												
  context.go:752	0xe80542		ffd6			CALL SI													
  map_controller.go:360	0xe80544		4885c0			TESTQ AX, AX												
  map_controller.go:360	0xe80547		0f85e1030000		JNE 0xe8092e												
  map_controller.go:367	0xe8054d		440f117c2478		MOVUPS X15, 0x78(SP)											
  map_controller.go:367	0xe80553		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:367	0xe8055b		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:367	0xe8055f		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:367	0xe80563		e8b89b5eff		CALL runtime.convTstring(SB)										
  map_controller.go:367	0xe80568		488d0db1231c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:367	0xe8056f		48894c2478		MOVQ CX, 0x78(SP)											
  map_controller.go:367	0xe80574		4889842480000000	MOVQ AX, 0x80(SP)											
  print.go:314		0xe8057c		488b1dfd1a6902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe80583		488d0556b5fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe8058a		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe8058f		4889fe			MOVQ DI, SI												
  print.go:314		0xe80592		488d4c2478		LEAQ 0x78(SP), CX											
  print.go:314		0xe80597		e8c4f269ff		CALL fmt.Fprintln(SB)											
  map_controller.go:369	0xe8059c		48c744244800000000	MOVQ $0x0, 0x48(SP)											
  map_controller.go:370	0xe805a5		488d0d74040000		LEAQ CAS-Backend/biz/controller.QMapRHandler.func1(SB), CX						
  map_controller.go:370	0xe805ac		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  map_controller.go:370	0xe805b4		488d4c2448		LEAQ 0x48(SP), CX											
  map_controller.go:370	0xe805b9		48898c24b0000000	MOVQ CX, 0xb0(SP)											
  map_controller.go:370	0xe805c1		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:370	0xe805c9		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:370	0xe805cd		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:370	0xe805d1		b9044b0000		MOVL $__size_of_stack_commit__+15108(SB), CX								
  map_controller.go:370	0xe805d6		488dbc24a8000000	LEAQ 0xa8(SP), DI											
  map_controller.go:370	0xe805de		6690			NOPW													
  map_controller.go:370	0xe805e0		e81b30f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  map_controller.go:378	0xe805e5		4885c0			TESTQ AX, AX												
  map_controller.go:378	0xe805e8		0f8483010000		JE 0xe80771												
  map_controller.go:379	0xe805ee		440f117c2468		MOVUPS X15, 0x68(SP)											
  map_controller.go:379	0xe805f4		7404			JE 0xe805fa												
  map_controller.go:379	0xe805f6		488b4008		MOVQ 0x8(AX), AX											
  map_controller.go:379	0xe805fa		4889442468		MOVQ AX, 0x68(SP)											
  map_controller.go:379	0xe805ff		48895c2470		MOVQ BX, 0x70(SP)											
  print.go:233		0xe80604		488b1d751a6902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe8060b		488d05ceb4fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe80612		488d0d9ab12f00		LEAQ go:string.*+78507(SB), CX										
  print.go:233		0xe80619		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233		0xe8061e		488d742468		LEAQ 0x68(SP), SI											
  print.go:233		0xe80623		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe80629		4d89c1			MOVQ R8, R9												
  print.go:233		0xe8062c		e8efeb69ff		CALL fmt.Fprintf(SB)											
  map_controller.go:380	0xe80631		e8aaa95eff		CALL runtime.makemap_small(SB)										
  map_controller.go:380	0xe80636		48898424c0000000	MOVQ AX, 0xc0(SP)											
  map_controller.go:380	0xe8063e		4889c3			MOVQ AX, BX												
  map_controller.go:380	0xe80641		488d0d44902e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:380	0xe80648		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:380	0xe8064d		488d052c422200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:380	0xe80654		e8c7d95eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:380	0xe80659		488d1500251c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:380	0xe80660		488910			MOVQ DX, 0(AX)												
  map_controller.go:380	0xe80663		833de6d46d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:380	0xe8066a		740c			JE 0xe80678												
  map_controller.go:380	0xe8066c		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:380	0xe80670		e8ab7d5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:380	0xe80675		498913			MOVQ DX, 0(R11)												
  map_controller.go:380	0xe80678		488d154144fe01		LEAQ runtime.gcbits.*(SB), DX										
  map_controller.go:380	0xe8067f		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:380	0xe80683		488d05f6412200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:380	0xe8068a		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:380	0xe80692		488d0dbb832e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:380	0xe80699		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:380	0xe8069e		6690			NOPW													
  map_controller.go:380	0xe806a0		e87bd95eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:380	0xe806a5		488d1574221c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:380	0xe806ac		488910			MOVQ DX, 0(AX)												
  map_controller.go:380	0xe806af		833d9ad46d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:380	0xe806b6		7410			JE 0xe806c8												
  map_controller.go:380	0xe806b8		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:380	0xe806bc		0f1f4000		NOPL 0(AX)												
  map_controller.go:380	0xe806c0		e85b7d5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:380	0xe806c5		498933			MOVQ SI, 0(R11)												
  map_controller.go:380	0xe806c8		488d15e183fe01		LEAQ CAS-Backend/biz/controller..stmp_121(SB), DX							
  map_controller.go:380	0xe806cf		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:380	0xe806d3		488d05a6412200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:380	0xe806da		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:380	0xe806e2		488d0daf8f2e00		LEAQ go:string.*+4496(SB), CX										
  map_controller.go:380	0xe806e9		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:380	0xe806ee		e82dd95eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:380	0xe806f3		488d1526221c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:380	0xe806fa		488910			MOVQ DX, 0(AX)												
  map_controller.go:380	0xe806fd		833d4cd46d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:380	0xe80704		740c			JE 0xe80712												
  map_controller.go:380	0xe80706		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:380	0xe8070a		e8117d5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:380	0xe8070f		49890b			MOVQ CX, 0(R11)												
  map_controller.go:380	0xe80712		488d0de77cfe01		LEAQ net/http..stmp_239(SB), CX										
  map_controller.go:380	0xe80719		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe8071d		488d0d5c412200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe80724		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005	0xe8072c		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  context.go:1005	0xe80734		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005	0xe8073c		488d059db72400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe80743		488d9c2498000000	LEAQ 0x98(SP), BX											
  context.go:1005	0xe8074b		e850e958ff		CALL runtime.convT(SB)											
  context.go:1005	0xe80750		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe80755		488d0dd4eafe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe8075c		4889c7			MOVQ AX, DI												
  context.go:1005	0xe8075f		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:1005	0xe80767		e8f4eff7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:395	0xe8076c		e9b4010000		JMP 0xe80925												
  map_controller.go:387	0xe80771		440f117c2458		MOVUPS X15, 0x58(SP)											
  map_controller.go:387	0xe80777		488b4c2448		MOVQ 0x48(SP), CX											
  map_controller.go:387	0xe8077c		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:387	0xe80780		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:387	0xe80784		e897995eff		CALL runtime.convTstring(SB)										
  map_controller.go:387	0xe80789		488d0d90211c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:387	0xe80790		48894c2458		MOVQ CX, 0x58(SP)											
  map_controller.go:387	0xe80795		4889442460		MOVQ AX, 0x60(SP)											
  print.go:314		0xe8079a		488b1ddf186902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe807a1		488d0538b3fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe807a8		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe807ad		4889fe			MOVQ DI, SI												
  print.go:314		0xe807b0		488d4c2458		LEAQ 0x58(SP), CX											
  print.go:314		0xe807b5		e8a6f069ff		CALL fmt.Fprintln(SB)											
  map_controller.go:388	0xe807ba		e821a85eff		CALL runtime.makemap_small(SB)										
  map_controller.go:388	0xe807bf		48898424c0000000	MOVQ AX, 0xc0(SP)											
  map_controller.go:388	0xe807c7		4889c3			MOVQ AX, BX												
  map_controller.go:388	0xe807ca		488d0dbb8e2e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:388	0xe807d1		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:388	0xe807d6		488d05a3402200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:388	0xe807dd		0f1f00			NOPL 0(AX)												
  map_controller.go:388	0xe807e0		e83bd85eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:388	0xe807e5		488d0d74231c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:388	0xe807ec		488908			MOVQ CX, 0(AX)												
  map_controller.go:388	0xe807ef		833d5ad36d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:388	0xe807f6		7410			JE 0xe80808												
  map_controller.go:388	0xe807f8		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:388	0xe807fc		0f1f4000		NOPL 0(AX)												
  map_controller.go:388	0xe80800		e81b7c5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:388	0xe80805		498913			MOVQ DX, 0(R11)												
  map_controller.go:388	0xe80808		488d152170fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  map_controller.go:388	0xe8080f		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:388	0xe80813		488d0566402200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:388	0xe8081a		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:388	0xe80822		488d0d2b822e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:388	0xe80829		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:388	0xe8082e		e8edd75eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:388	0xe80833		488d15e6201c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:388	0xe8083a		488910			MOVQ DX, 0(AX)												
  map_controller.go:388	0xe8083d		833d0cd36d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:388	0xe80844		740c			JE 0xe80852												
  map_controller.go:388	0xe80846		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:388	0xe8084a		e8d17b5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:388	0xe8084f		49890b			MOVQ CX, 0(R11)												
  map_controller.go:388	0xe80852		488d0d6782fe01		LEAQ CAS-Backend/biz/controller..stmp_124(SB), CX							
  map_controller.go:388	0xe80859		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:391	0xe8085d		488b4c2448		MOVQ 0x48(SP), CX											
  map_controller.go:391	0xe80862		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:391	0xe80866		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:391	0xe8086a		e8b1985eff		CALL runtime.convTstring(SB)										
  map_controller.go:391	0xe8086f		48898424b8000000	MOVQ AX, 0xb8(SP)											
  map_controller.go:388	0xe80877		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:388	0xe8087f		488d0d128e2e00		LEAQ go:string.*+4496(SB), CX										
  map_controller.go:388	0xe80886		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:388	0xe8088b		488d05ee3f2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:388	0xe80892		e889d75eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:388	0xe80897		488d0d82201c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:388	0xe8089e		488908			MOVQ CX, 0(AX)												
  map_controller.go:388	0xe808a1		833da8d26d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:388	0xe808a8		750a			JNE 0xe808b4												
  map_controller.go:388	0xe808aa		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  map_controller.go:388	0xe808b2		eb18			JMP 0xe808cc												
  map_controller.go:388	0xe808b4		e8877b5fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:388	0xe808b9		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  map_controller.go:388	0xe808c1		49890b			MOVQ CX, 0(R11)												
  map_controller.go:388	0xe808c4		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:388	0xe808c8		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:388	0xe808cc		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe808d0		488d0da93f2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe808d7		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005	0xe808df		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  context.go:1005	0xe808e7		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005	0xe808ef		488d05eab52400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe808f6		488d9c2498000000	LEAQ 0x98(SP), BX											
  context.go:1005	0xe808fe		6690			NOPW													
  context.go:1005	0xe80900		e89be758ff		CALL runtime.convT(SB)											
  context.go:1005	0xe80905		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe8090a		488d0d1fe9fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe80911		4889c7			MOVQ AX, DI												
  context.go:1005	0xe80914		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:1005	0xe8091c		0f1f4000		NOPL 0(AX)												
  context.go:1005	0xe80920		e83beef7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:395	0xe80925		4881c4d0000000		ADDQ $.file+131(SB), SP											
  map_controller.go:395	0xe8092c		5d			POPQ BP													
  map_controller.go:395	0xe8092d		c3			RET													
  context.go:752	0xe8092e		4889442438		MOVQ AX, 0x38(SP)											
  context.go:752	0xe80933		48895c2440		MOVQ BX, 0x40(SP)											
  map_controller.go:362	0xe80938		488d15e11f1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:362	0xe8093f		4889942488000000	MOVQ DX, 0x88(SP)											
  map_controller.go:362	0xe80947		488d15827efe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  map_controller.go:362	0xe8094e		4889942490000000	MOVQ DX, 0x90(SP)											
  print.go:314		0xe80956		488b1d23176902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe8095d		488d057cb1fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe80964		488d8c2488000000	LEAQ 0x88(SP), CX											
  print.go:314		0xe8096c		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe80971		4889fe			MOVQ DI, SI												
  print.go:314		0xe80974		e8e7ee69ff		CALL fmt.Fprintln(SB)											
  map_controller.go:363	0xe80979		488b8424e0000000	MOVQ 0xe0(SP), AX											
  map_controller.go:363	0xe80981		bb90010000		MOVL $.file+323(SB), BX											
  map_controller.go:363	0xe80986		488b4c2438		MOVQ 0x38(SP), CX											
  map_controller.go:363	0xe8098b		488b7c2440		MOVQ 0x40(SP), DI											
  map_controller.go:363	0xe80990		e80ba7f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  map_controller.go:364	0xe80995		4881c4d0000000		ADDQ $.file+131(SB), SP											
  map_controller.go:364	0xe8099c		5d			POPQ BP													
  map_controller.go:364	0xe8099d		c3			RET													
  context.go:712	0xe8099e		4d89ca			MOVQ R9, R10												
  context.go:712	0xe809a1		4d21c1			ANDQ R8, R9												
  context.go:712	0xe809a4		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712	0xe809a8		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712	0xe809ad		4939db			CMPQ R11, BX												
  context.go:712	0xe809b0		7433			JE 0xe809e5												
  context.go:712	0xe809b2		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712	0xe809b6		4d85db			TESTQ R11, R11												
  context.go:712	0xe809b9		75e3			JNE 0xe8099e												
  context.go:712	0xe809bb		4889542450		MOVQ DX, 0x50(SP)											
  context.go:712	0xe809c0		488d0589a81300		LEAQ CAS-Backend/biz/controller..typeAssert.21(SB), AX							
  context.go:712	0xe809c7		e814e958ff		CALL runtime.typeAssert(SB)										
  context.go:752	0xe809cc		488b542450		MOVQ 0x50(SP), DX											
  context.go:712	0xe809d1		4889c1			MOVQ AX, CX												
  context.go:752	0xe809d4		488b8424c8000000	MOVQ 0xc8(SP), AX											
  context.go:752	0xe809dc		0f1f4000		NOPL 0(AX)												
  context.go:712	0xe809e0		e940fbffff		JMP 0xe80525												
  context.go:712	0xe809e5		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712	0xe809ea		e936fbffff		JMP 0xe80525												
  map_controller.go:357	0xe809ef		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:357	0xe809f4		e8e75a5fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:357	0xe809f9		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:357	0xe809fe		6690			NOPW													
  map_controller.go:357	0xe80a00		e9bbfaffff		JMP CAS-Backend/biz/controller.QMapRHandler(SB)								
  :-1			0xe80a05		cc			INT $__subsystem__(SB)											
  :-1			0xe80a06		cc			INT $__subsystem__(SB)											
  :-1			0xe80a07		cc			INT $__subsystem__(SB)											
  :-1			0xe80a08		cc			INT $__subsystem__(SB)											
  :-1			0xe80a09		cc			INT $__subsystem__(SB)											
  :-1			0xe80a0a		cc			INT $__subsystem__(SB)											
  :-1			0xe80a0b		cc			INT $__subsystem__(SB)											
  :-1			0xe80a0c		cc			INT $__subsystem__(SB)											
  :-1			0xe80a0d		cc			INT $__subsystem__(SB)											
  :-1			0xe80a0e		cc			INT $__subsystem__(SB)											
  :-1			0xe80a0f		cc			INT $__subsystem__(SB)											
  :-1			0xe80a10		cc			INT $__subsystem__(SB)											
  :-1			0xe80a11		cc			INT $__subsystem__(SB)											
  :-1			0xe80a12		cc			INT $__subsystem__(SB)											
  :-1			0xe80a13		cc			INT $__subsystem__(SB)											
  :-1			0xe80a14		cc			INT $__subsystem__(SB)											
  :-1			0xe80a15		cc			INT $__subsystem__(SB)											
  :-1			0xe80a16		cc			INT $__subsystem__(SB)											
  :-1			0xe80a17		cc			INT $__subsystem__(SB)											
  :-1			0xe80a18		cc			INT $__subsystem__(SB)											
  :-1			0xe80a19		cc			INT $__subsystem__(SB)											
  :-1			0xe80a1a		cc			INT $__subsystem__(SB)											
  :-1			0xe80a1b		cc			INT $__subsystem__(SB)											
  :-1			0xe80a1c		cc			INT $__subsystem__(SB)											
  :-1			0xe80a1d		cc			INT $__subsystem__(SB)											
  :-1			0xe80a1e		cc			INT $__subsystem__(SB)											
  :-1			0xe80a1f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.QMapRHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:370	0xe80a20		493b6610		CMPQ SP, 0x10(R14)					
  map_controller.go:370	0xe80a24		7667			JBE 0xe80a8d						
  map_controller.go:370	0xe80a26		55			PUSHQ BP						
  map_controller.go:370	0xe80a27		4889e5			MOVQ SP, BP						
  map_controller.go:370	0xe80a2a		4883ec18		SUBQ $__major_os_version__+18(SB), SP			
  map_controller.go:370	0xe80a2e		4889442428		MOVQ AX, 0x28(SP)					
  map_controller.go:370	0xe80a33		48895c2430		MOVQ BX, 0x30(SP)					
  map_controller.go:370	0xe80a38		488b4a08		MOVQ 0x8(DX), CX					
  map_controller.go:370	0xe80a3c		48894c2410		MOVQ CX, 0x10(SP)					
  map_controller.go:371	0xe80a41		e8baddf9ff		CALL CAS-Backend/pkg/agvcontrol.SendSltMapRequest(SB)	
  map_controller.go:372	0xe80a46		4885db			TESTQ BX, BX						
  map_controller.go:372	0xe80a49		7536			JNE 0xe80a81						
  map_controller.go:375	0xe80a4b		833dfed06d0200		CMPL runtime.writeBarrier(SB), $0x0			
  map_controller.go:375	0xe80a52		750c			JNE 0xe80a60						
  map_controller.go:375	0xe80a54		488b4c2410		MOVQ 0x10(SP), CX					
  map_controller.go:375	0xe80a59		eb19			JMP 0xe80a74						
  map_controller.go:375	0xe80a5b		0f1f440000		NOPL 0(AX)(AX*1)					
  map_controller.go:375	0xe80a60		e8db795fff		CALL runtime.gcWriteBarrier2(SB)			
  map_controller.go:375	0xe80a65		498903			MOVQ AX, 0(R11)						
  map_controller.go:375	0xe80a68		488b4c2410		MOVQ 0x10(SP), CX					
  map_controller.go:375	0xe80a6d		488b11			MOVQ 0(CX), DX						
  map_controller.go:375	0xe80a70		49895308		MOVQ DX, 0x8(R11)					
  map_controller.go:375	0xe80a74		488901			MOVQ AX, 0(CX)						
  map_controller.go:376	0xe80a77		31c0			XORL AX, AX						
  map_controller.go:376	0xe80a79		31db			XORL BX, BX						
  map_controller.go:376	0xe80a7b		4883c418		ADDQ $__major_os_version__+18(SB), SP			
  map_controller.go:376	0xe80a7f		5d			POPQ BP							
  map_controller.go:376	0xe80a80		c3			RET							
  map_controller.go:373	0xe80a81		4889d8			MOVQ BX, AX						
  map_controller.go:373	0xe80a84		4889cb			MOVQ CX, BX						
  map_controller.go:373	0xe80a87		4883c418		ADDQ $__major_os_version__+18(SB), SP			
  map_controller.go:373	0xe80a8b		5d			POPQ BP							
  map_controller.go:373	0xe80a8c		c3			RET							
  map_controller.go:370	0xe80a8d		4889442408		MOVQ AX, 0x8(SP)					
  map_controller.go:370	0xe80a92		48895c2410		MOVQ BX, 0x10(SP)					
  map_controller.go:370	0xe80a97		e8c4595fff		CALL runtime.morestack.abi0(SB)				
  map_controller.go:370	0xe80a9c		488b442408		MOVQ 0x8(SP), AX					
  map_controller.go:370	0xe80aa1		488b5c2410		MOVQ 0x10(SP), BX					
  map_controller.go:370	0xe80aa6		e975ffffff		JMP CAS-Backend/biz/controller.QMapRHandler.func1(SB)	
  :-1			0xe80aab		cc			INT $__subsystem__(SB)					
  :-1			0xe80aac		cc			INT $__subsystem__(SB)					
  :-1			0xe80aad		cc			INT $__subsystem__(SB)					
  :-1			0xe80aae		cc			INT $__subsystem__(SB)					
  :-1			0xe80aaf		cc			INT $__subsystem__(SB)					
  :-1			0xe80ab0		cc			INT $__subsystem__(SB)					
  :-1			0xe80ab1		cc			INT $__subsystem__(SB)					
  :-1			0xe80ab2		cc			INT $__subsystem__(SB)					
  :-1			0xe80ab3		cc			INT $__subsystem__(SB)					
  :-1			0xe80ab4		cc			INT $__subsystem__(SB)					
  :-1			0xe80ab5		cc			INT $__subsystem__(SB)					
  :-1			0xe80ab6		cc			INT $__subsystem__(SB)					
  :-1			0xe80ab7		cc			INT $__subsystem__(SB)					
  :-1			0xe80ab8		cc			INT $__subsystem__(SB)					
  :-1			0xe80ab9		cc			INT $__subsystem__(SB)					
  :-1			0xe80aba		cc			INT $__subsystem__(SB)					
  :-1			0xe80abb		cc			INT $__subsystem__(SB)					
  :-1			0xe80abc		cc			INT $__subsystem__(SB)					
  :-1			0xe80abd		cc			INT $__subsystem__(SB)					
  :-1			0xe80abe		cc			INT $__subsystem__(SB)					
  :-1			0xe80abf		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.DownloadMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:403	0xe80ac0		4c8d6424a8		LEAQ -0x58(SP), R12											
  map_controller.go:403	0xe80ac5		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:403	0xe80ac9		0f8660040000		JBE 0xe80f2f												
  map_controller.go:403	0xe80acf		55			PUSHQ BP												
  map_controller.go:403	0xe80ad0		4889e5			MOVQ SP, BP												
  map_controller.go:403	0xe80ad3		4881ecd0000000		SUBQ $.file+131(SB), SP											
  context.go:712	0xe80ada		48898424e0000000	MOVQ AX, 0xe0(SP)											
  map_controller.go:404	0xe80ae2		488d0517512500		LEAQ runtime.types+986112(SB), AX									
  map_controller.go:404	0xe80ae9		e8b20c59ff		CALL runtime.newobject(SB)										
  map_controller.go:404	0xe80aee		48898424c8000000	MOVQ AX, 0xc8(SP)											
  context.go:712	0xe80af6		488b0de36c1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712	0xe80afd		488b15e46c1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712	0xe80b04		4885c9			TESTQ CX, CX												
  context.go:712	0xe80b07		741c			JE 0xe80b25												
  context.go:712	0xe80b09		488b5908		MOVQ 0x8(CX), BX											
  context.go:712	0xe80b0d		488b355ca71300		MOVQ CAS-Backend/biz/controller..typeAssert.22(SB), SI							
  context.go:712	0xe80b14		4c8b06			MOVQ 0(SI), R8												
  context.go:712	0xe80b17		448b4910		MOVL 0x10(CX), R9											
  context.go:712	0xe80b1b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712	0xe80b20		e9b9030000		JMP 0xe80ede												
  context.go:752	0xe80b25		488b7118		MOVQ 0x18(CX), SI											
  context.go:752	0xe80b29		4c8b8424e0000000	MOVQ 0xe0(SP), R8											
  context.go:752	0xe80b31		498b5820		MOVQ 0x20(R8), BX											
  context.go:752	0xe80b35		488d0de45b1a00		LEAQ runtime.types+268064(SB), CX									
  context.go:752	0xe80b3c		4889c7			MOVQ AX, DI												
  context.go:752	0xe80b3f		4889d0			MOVQ DX, AX												
  context.go:752	0xe80b42		ffd6			CALL SI													
  map_controller.go:406	0xe80b44		4885c0			TESTQ AX, AX												
  map_controller.go:406	0xe80b47		0f8521030000		JNE 0xe80e6e												
  map_controller.go:412	0xe80b4d		440f117c2478		MOVUPS X15, 0x78(SP)											
  map_controller.go:412	0xe80b53		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:412	0xe80b5b		488b4120		MOVQ 0x20(CX), AX											
  map_controller.go:412	0xe80b5f		488b5928		MOVQ 0x28(CX), BX											
  map_controller.go:412	0xe80b63		e8b8955eff		CALL runtime.convTstring(SB)										
  map_controller.go:412	0xe80b68		488d0db11d1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:412	0xe80b6f		48894c2478		MOVQ CX, 0x78(SP)											
  map_controller.go:412	0xe80b74		4889842480000000	MOVQ AX, 0x80(SP)											
  print.go:233		0xe80b7c		488b1dfd146902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe80b83		488d0556affe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe80b8a		bf11000000		MOVL $__major_os_version__+11(SB), DI									
  print.go:233		0xe80b8f		488d742478		LEAQ 0x78(SP), SI											
  print.go:233		0xe80b94		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe80b9a		4d89c1			MOVQ R8, R9												
  print.go:233		0xe80b9d		488d0dedc02f00		LEAQ go:string.*+83849(SB), CX										
  print.go:233		0xe80ba4		e877e669ff		CALL fmt.Fprintf(SB)											
  map_controller.go:414	0xe80ba9		c644243f00		MOVB $0x0, 0x3f(SP)											
  map_controller.go:415	0xe80bae		488d0dab030000		LEAQ CAS-Backend/biz/controller.DownloadMapHandler.func1(SB), CX					
  map_controller.go:415	0xe80bb5		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  map_controller.go:415	0xe80bbd		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:415	0xe80bc5		48898c24b0000000	MOVQ CX, 0xb0(SP)											
  map_controller.go:415	0xe80bcd		488d54243f		LEAQ 0x3f(SP), DX											
  map_controller.go:415	0xe80bd2		48899424b8000000	MOVQ DX, 0xb8(SP)											
  map_controller.go:415	0xe80bda		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:415	0xe80bde		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:415	0xe80be2		b9074b0000		MOVL $__size_of_stack_commit__+15111(SB), CX								
  map_controller.go:415	0xe80be7		488dbc24a8000000	LEAQ 0xa8(SP), DI											
  map_controller.go:415	0xe80bef		e80c2af9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  map_controller.go:420	0xe80bf4		807c243f00		CMPB 0x3f(SP), $0x0											
  map_controller.go:420	0xe80bf9		0f8538010000		JNE 0xe80d37												
  map_controller.go:421	0xe80bff		440f117c2468		MOVUPS X15, 0x68(SP)											
  map_controller.go:421	0xe80c05		4885c0			TESTQ AX, AX												
  map_controller.go:421	0xe80c08		7404			JE 0xe80c0e												
  map_controller.go:421	0xe80c0a		488b4008		MOVQ 0x8(AX), AX											
  map_controller.go:421	0xe80c0e		4889442468		MOVQ AX, 0x68(SP)											
  map_controller.go:421	0xe80c13		48895c2470		MOVQ BX, 0x70(SP)											
  print.go:233		0xe80c18		488b1d61146902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe80c1f		488d05baaefe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe80c26		488d0da6ae2f00		LEAQ go:string.*+79307(SB), CX										
  print.go:233		0xe80c2d		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233		0xe80c32		488d742468		LEAQ 0x68(SP), SI											
  print.go:233		0xe80c37		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe80c3d		4d89c1			MOVQ R8, R9												
  print.go:233		0xe80c40		e8dbe569ff		CALL fmt.Fprintf(SB)											
  map_controller.go:422	0xe80c45		e896a35eff		CALL runtime.makemap_small(SB)										
  map_controller.go:422	0xe80c4a		48898424c0000000	MOVQ AX, 0xc0(SP)											
  map_controller.go:422	0xe80c52		4889c3			MOVQ AX, BX												
  map_controller.go:422	0xe80c55		488d0d308a2e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:422	0xe80c5c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:422	0xe80c61		488d05183c2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:422	0xe80c68		e8b3d35eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:422	0xe80c6d		488d15ec1e1c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:422	0xe80c74		488910			MOVQ DX, 0(AX)												
  map_controller.go:422	0xe80c77		833dd2ce6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:422	0xe80c7e		6690			NOPW													
  map_controller.go:422	0xe80c80		740c			JE 0xe80c8e												
  map_controller.go:422	0xe80c82		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:422	0xe80c86		e895775fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:422	0xe80c8b		498913			MOVQ DX, 0(R11)												
  map_controller.go:422	0xe80c8e		488d152b3efe01		LEAQ runtime.gcbits.*(SB), DX										
  map_controller.go:422	0xe80c95		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:422	0xe80c99		488d05e03b2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:422	0xe80ca0		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:422	0xe80ca8		488d0da57d2e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:422	0xe80caf		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:422	0xe80cb4		e867d35eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:422	0xe80cb9		488d15601c1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:422	0xe80cc0		488910			MOVQ DX, 0(AX)												
  map_controller.go:422	0xe80cc3		833d86ce6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:422	0xe80cca		740c			JE 0xe80cd8												
  map_controller.go:422	0xe80ccc		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:422	0xe80cd0		e84b775fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:422	0xe80cd5		49890b			MOVQ CX, 0(R11)												
  map_controller.go:422	0xe80cd8		488d0df17dfe01		LEAQ CAS-Backend/biz/controller..stmp_127(SB), CX							
  map_controller.go:422	0xe80cdf		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe80ce3		488d0d963b2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe80cea		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005	0xe80cf2		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  context.go:1005	0xe80cfa		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005	0xe80d02		488d05d7b12400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe80d09		488d9c2498000000	LEAQ 0x98(SP), BX											
  context.go:1005	0xe80d11		e88ae358ff		CALL runtime.convT(SB)											
  context.go:1005	0xe80d16		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe80d1b		488d0d0ee5fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe80d22		4889c7			MOVQ AX, DI												
  context.go:1005	0xe80d25		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:1005	0xe80d2d		e82eeaf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:435	0xe80d32		e92e010000		JMP 0xe80e65												
  map_controller.go:428	0xe80d37		488d15e21b1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:428	0xe80d3e		4889542458		MOVQ DX, 0x58(SP)											
  map_controller.go:428	0xe80d43		4c8d05967dfe01		LEAQ CAS-Backend/biz/controller..stmp_128(SB), R8							
  map_controller.go:428	0xe80d4a		4c89442460		MOVQ R8, 0x60(SP)											
  print.go:314		0xe80d4f		488b1d2a136902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe80d56		488d0583adfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe80d5d		488d4c2458		LEAQ 0x58(SP), CX											
  print.go:314		0xe80d62		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe80d67		4889fe			MOVQ DI, SI												
  print.go:314		0xe80d6a		e8f1ea69ff		CALL fmt.Fprintln(SB)											
  map_controller.go:429	0xe80d6f		e86ca25eff		CALL runtime.makemap_small(SB)										
  map_controller.go:429	0xe80d74		48898424c0000000	MOVQ AX, 0xc0(SP)											
  map_controller.go:429	0xe80d7c		4889c3			MOVQ AX, BX												
  map_controller.go:429	0xe80d7f		488d0d06892e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:429	0xe80d86		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:429	0xe80d8b		488d05ee3a2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:429	0xe80d92		e889d25eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:429	0xe80d97		488d15c21d1c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:429	0xe80d9e		488910			MOVQ DX, 0(AX)												
  map_controller.go:429	0xe80da1		833da8cd6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:429	0xe80da8		740c			JE 0xe80db6												
  map_controller.go:429	0xe80daa		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:429	0xe80dae		e86d765fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:429	0xe80db3		498913			MOVQ DX, 0(R11)												
  map_controller.go:429	0xe80db6		488d15736afe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  map_controller.go:429	0xe80dbd		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:429	0xe80dc1		488d05b83a2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:429	0xe80dc8		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:429	0xe80dd0		488d0d7d7c2e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:429	0xe80dd7		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:429	0xe80ddc		0f1f4000		NOPL 0(AX)												
  map_controller.go:429	0xe80de0		e83bd25eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:429	0xe80de5		488d15341b1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:429	0xe80dec		488910			MOVQ DX, 0(AX)												
  map_controller.go:429	0xe80def		833d5acd6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:429	0xe80df6		7410			JE 0xe80e08												
  map_controller.go:429	0xe80df8		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:429	0xe80dfc		0f1f4000		NOPL 0(AX)												
  map_controller.go:429	0xe80e00		e81b765fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:429	0xe80e05		49890b			MOVQ CX, 0(R11)												
  map_controller.go:429	0xe80e08		488d0dd17cfe01		LEAQ CAS-Backend/biz/controller..stmp_128(SB), CX							
  map_controller.go:429	0xe80e0f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe80e13		488d0d663a2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe80e1a		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005	0xe80e22		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  context.go:1005	0xe80e2a		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005	0xe80e32		488d05a7b02400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe80e39		488d9c2498000000	LEAQ 0x98(SP), BX											
  context.go:1005	0xe80e41		e85ae258ff		CALL runtime.convT(SB)											
  context.go:1005	0xe80e46		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe80e4b		488d0ddee3fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe80e52		4889c7			MOVQ AX, DI												
  context.go:1005	0xe80e55		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:1005	0xe80e5d		0f1f00			NOPL 0(AX)												
  context.go:1005	0xe80e60		e8fbe8f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:435	0xe80e65		4881c4d0000000		ADDQ $.file+131(SB), SP											
  map_controller.go:435	0xe80e6c		5d			POPQ BP													
  map_controller.go:435	0xe80e6d		c3			RET													
  context.go:752	0xe80e6e		48895c2448		MOVQ BX, 0x48(SP)											
  context.go:752	0xe80e73		4889442440		MOVQ AX, 0x40(SP)											
  map_controller.go:407	0xe80e78		488d15a11a1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:407	0xe80e7f		4889942488000000	MOVQ DX, 0x88(SP)											
  map_controller.go:407	0xe80e87		488d154279fe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  map_controller.go:407	0xe80e8e		4889942490000000	MOVQ DX, 0x90(SP)											
  print.go:314		0xe80e96		488b1de3116902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe80e9d		488d053cacfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe80ea4		488d8c2488000000	LEAQ 0x88(SP), CX											
  print.go:314		0xe80eac		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe80eb1		4889fe			MOVQ DI, SI												
  print.go:314		0xe80eb4		e8a7e969ff		CALL fmt.Fprintln(SB)											
  map_controller.go:408	0xe80eb9		488b8424e0000000	MOVQ 0xe0(SP), AX											
  map_controller.go:408	0xe80ec1		bb90010000		MOVL $.file+323(SB), BX											
  map_controller.go:408	0xe80ec6		488b4c2440		MOVQ 0x40(SP), CX											
  map_controller.go:408	0xe80ecb		488b7c2448		MOVQ 0x48(SP), DI											
  map_controller.go:408	0xe80ed0		e8cba1f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  map_controller.go:409	0xe80ed5		4881c4d0000000		ADDQ $.file+131(SB), SP											
  map_controller.go:409	0xe80edc		5d			POPQ BP													
  map_controller.go:409	0xe80edd		c3			RET													
  context.go:712	0xe80ede		4d89ca			MOVQ R9, R10												
  context.go:712	0xe80ee1		4d21c1			ANDQ R8, R9												
  context.go:712	0xe80ee4		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712	0xe80ee8		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712	0xe80eed		4939db			CMPQ R11, BX												
  context.go:712	0xe80ef0		7433			JE 0xe80f25												
  context.go:712	0xe80ef2		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712	0xe80ef6		4d85db			TESTQ R11, R11												
  context.go:712	0xe80ef9		75e3			JNE 0xe80ede												
  context.go:712	0xe80efb		4889542450		MOVQ DX, 0x50(SP)											
  context.go:712	0xe80f00		488d0569a31300		LEAQ CAS-Backend/biz/controller..typeAssert.22(SB), AX							
  context.go:712	0xe80f07		e8d4e358ff		CALL runtime.typeAssert(SB)										
  context.go:752	0xe80f0c		488b542450		MOVQ 0x50(SP), DX											
  context.go:712	0xe80f11		4889c1			MOVQ AX, CX												
  context.go:752	0xe80f14		488b8424c8000000	MOVQ 0xc8(SP), AX											
  context.go:752	0xe80f1c		0f1f4000		NOPL 0(AX)												
  context.go:712	0xe80f20		e900fcffff		JMP 0xe80b25												
  context.go:712	0xe80f25		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712	0xe80f2a		e9f6fbffff		JMP 0xe80b25												
  map_controller.go:403	0xe80f2f		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:403	0xe80f34		e8a7555fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:403	0xe80f39		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:403	0xe80f3e		6690			NOPW													
  map_controller.go:403	0xe80f40		e97bfbffff		JMP CAS-Backend/biz/controller.DownloadMapHandler(SB)							
  :-1			0xe80f45		cc			INT $__subsystem__(SB)											
  :-1			0xe80f46		cc			INT $__subsystem__(SB)											
  :-1			0xe80f47		cc			INT $__subsystem__(SB)											
  :-1			0xe80f48		cc			INT $__subsystem__(SB)											
  :-1			0xe80f49		cc			INT $__subsystem__(SB)											
  :-1			0xe80f4a		cc			INT $__subsystem__(SB)											
  :-1			0xe80f4b		cc			INT $__subsystem__(SB)											
  :-1			0xe80f4c		cc			INT $__subsystem__(SB)											
  :-1			0xe80f4d		cc			INT $__subsystem__(SB)											
  :-1			0xe80f4e		cc			INT $__subsystem__(SB)											
  :-1			0xe80f4f		cc			INT $__subsystem__(SB)											
  :-1			0xe80f50		cc			INT $__subsystem__(SB)											
  :-1			0xe80f51		cc			INT $__subsystem__(SB)											
  :-1			0xe80f52		cc			INT $__subsystem__(SB)											
  :-1			0xe80f53		cc			INT $__subsystem__(SB)											
  :-1			0xe80f54		cc			INT $__subsystem__(SB)											
  :-1			0xe80f55		cc			INT $__subsystem__(SB)											
  :-1			0xe80f56		cc			INT $__subsystem__(SB)											
  :-1			0xe80f57		cc			INT $__subsystem__(SB)											
  :-1			0xe80f58		cc			INT $__subsystem__(SB)											
  :-1			0xe80f59		cc			INT $__subsystem__(SB)											
  :-1			0xe80f5a		cc			INT $__subsystem__(SB)											
  :-1			0xe80f5b		cc			INT $__subsystem__(SB)											
  :-1			0xe80f5c		cc			INT $__subsystem__(SB)											
  :-1			0xe80f5d		cc			INT $__subsystem__(SB)											
  :-1			0xe80f5e		cc			INT $__subsystem__(SB)											
  :-1			0xe80f5f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.DownloadMapHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:415	0xe80f60		493b6610		CMPQ SP, 0x10(R14)						
  map_controller.go:415	0xe80f64		763f			JBE 0xe80fa5							
  map_controller.go:415	0xe80f66		55			PUSHQ BP							
  map_controller.go:415	0xe80f67		4889e5			MOVQ SP, BP							
  map_controller.go:415	0xe80f6a		4883ec28		SUBQ $__major_os_version__+34(SB), SP				
  map_controller.go:415	0xe80f6e		4889442438		MOVQ AX, 0x38(SP)						
  map_controller.go:415	0xe80f73		48895c2440		MOVQ BX, 0x40(SP)						
  map_controller.go:415	0xe80f78		488b7210		MOVQ 0x10(DX), SI						
  map_controller.go:415	0xe80f7c		4889742420		MOVQ SI, 0x20(SP)						
  map_controller.go:415	0xe80f81		488b5208		MOVQ 0x8(DX), DX						
  map_controller.go:416	0xe80f85		488b4a20		MOVQ 0x20(DX), CX						
  map_controller.go:416	0xe80f89		488b7a28		MOVQ 0x28(DX), DI						
  map_controller.go:416	0xe80f8d		e86edff9ff		CALL CAS-Backend/pkg/agvcontrol.DownloadMapRequest(SB)		
  map_controller.go:417	0xe80f92		488b542420		MOVQ 0x20(SP), DX						
  map_controller.go:417	0xe80f97		8802			MOVB AL, 0(DX)							
  map_controller.go:418	0xe80f99		4889d8			MOVQ BX, AX							
  map_controller.go:418	0xe80f9c		4889cb			MOVQ CX, BX							
  map_controller.go:418	0xe80f9f		4883c428		ADDQ $__major_os_version__+34(SB), SP				
  map_controller.go:418	0xe80fa3		5d			POPQ BP								
  map_controller.go:418	0xe80fa4		c3			RET								
  map_controller.go:415	0xe80fa5		4889442408		MOVQ AX, 0x8(SP)						
  map_controller.go:415	0xe80faa		48895c2410		MOVQ BX, 0x10(SP)						
  map_controller.go:415	0xe80faf		e8ac545fff		CALL runtime.morestack.abi0(SB)					
  map_controller.go:415	0xe80fb4		488b442408		MOVQ 0x8(SP), AX						
  map_controller.go:415	0xe80fb9		488b5c2410		MOVQ 0x10(SP), BX						
  map_controller.go:415	0xe80fbe		6690			NOPW								
  map_controller.go:415	0xe80fc0		eb9e			JMP CAS-Backend/biz/controller.DownloadMapHandler.func1(SB)	
  :-1			0xe80fc2		cc			INT $__subsystem__(SB)						
  :-1			0xe80fc3		cc			INT $__subsystem__(SB)						
  :-1			0xe80fc4		cc			INT $__subsystem__(SB)						
  :-1			0xe80fc5		cc			INT $__subsystem__(SB)						
  :-1			0xe80fc6		cc			INT $__subsystem__(SB)						
  :-1			0xe80fc7		cc			INT $__subsystem__(SB)						
  :-1			0xe80fc8		cc			INT $__subsystem__(SB)						
  :-1			0xe80fc9		cc			INT $__subsystem__(SB)						
  :-1			0xe80fca		cc			INT $__subsystem__(SB)						
  :-1			0xe80fcb		cc			INT $__subsystem__(SB)						
  :-1			0xe80fcc		cc			INT $__subsystem__(SB)						
  :-1			0xe80fcd		cc			INT $__subsystem__(SB)						
  :-1			0xe80fce		cc			INT $__subsystem__(SB)						
  :-1			0xe80fcf		cc			INT $__subsystem__(SB)						
  :-1			0xe80fd0		cc			INT $__subsystem__(SB)						
  :-1			0xe80fd1		cc			INT $__subsystem__(SB)						
  :-1			0xe80fd2		cc			INT $__subsystem__(SB)						
  :-1			0xe80fd3		cc			INT $__subsystem__(SB)						
  :-1			0xe80fd4		cc			INT $__subsystem__(SB)						
  :-1			0xe80fd5		cc			INT $__subsystem__(SB)						
  :-1			0xe80fd6		cc			INT $__subsystem__(SB)						
  :-1			0xe80fd7		cc			INT $__subsystem__(SB)						
  :-1			0xe80fd8		cc			INT $__subsystem__(SB)						
  :-1			0xe80fd9		cc			INT $__subsystem__(SB)						
  :-1			0xe80fda		cc			INT $__subsystem__(SB)						
  :-1			0xe80fdb		cc			INT $__subsystem__(SB)						
  :-1			0xe80fdc		cc			INT $__subsystem__(SB)						
  :-1			0xe80fdd		cc			INT $__subsystem__(SB)						
  :-1			0xe80fde		cc			INT $__subsystem__(SB)						
  :-1			0xe80fdf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.UploadMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:444	0xe80fe0		4c8d6424a8		LEAQ -0x58(SP), R12											
  map_controller.go:444	0xe80fe5		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:444	0xe80fe9		0f86af040000		JBE 0xe8149e												
  map_controller.go:444	0xe80fef		55			PUSHQ BP												
  map_controller.go:444	0xe80ff0		4889e5			MOVQ SP, BP												
  map_controller.go:444	0xe80ff3		4881ecd0000000		SUBQ $.file+131(SB), SP											
  context.go:712	0xe80ffa		48898424e0000000	MOVQ AX, 0xe0(SP)											
  map_controller.go:445	0xe81002		488d05b74c2500		LEAQ runtime.types+986304(SB), AX									
  map_controller.go:445	0xe81009		e8920759ff		CALL runtime.newobject(SB)										
  map_controller.go:445	0xe8100e		48898424c8000000	MOVQ AX, 0xc8(SP)											
  context.go:712	0xe81016		488b0dc3671300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712	0xe8101d		488b15c4671300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712	0xe81024		4885c9			TESTQ CX, CX												
  context.go:712	0xe81027		741c			JE 0xe81045												
  context.go:712	0xe81029		488b5908		MOVQ 0x8(CX), BX											
  context.go:712	0xe8102d		488b355ca21300		MOVQ CAS-Backend/biz/controller..typeAssert.23(SB), SI							
  context.go:712	0xe81034		4c8b06			MOVQ 0(SI), R8												
  context.go:712	0xe81037		448b4910		MOVL 0x10(CX), R9											
  context.go:712	0xe8103b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712	0xe81040		e909040000		JMP 0xe8144e												
  context.go:752	0xe81045		488b7118		MOVQ 0x18(CX), SI											
  context.go:752	0xe81049		4c8b8424e0000000	MOVQ 0xe0(SP), R8											
  context.go:752	0xe81051		498b5820		MOVQ 0x20(R8), BX											
  context.go:752	0xe81055		488d0d84571a00		LEAQ runtime.types+268256(SB), CX									
  context.go:752	0xe8105c		4889c7			MOVQ AX, DI												
  context.go:752	0xe8105f		4889d0			MOVQ DX, AX												
  context.go:752	0xe81062		ffd6			CALL SI													
  map_controller.go:447	0xe81064		4885c0			TESTQ AX, AX												
  map_controller.go:447	0xe81067		0f856e030000		JNE 0xe813db												
  map_controller.go:453	0xe8106d		440f11bc2480000000	MOVUPS X15, 0x80(SP)											
  map_controller.go:453	0xe81076		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:453	0xe8107e		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:453	0xe81082		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:453	0xe81086		e895905eff		CALL runtime.convTstring(SB)										
  map_controller.go:453	0xe8108b		488d0d8e181c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:453	0xe81092		48898c2480000000	MOVQ CX, 0x80(SP)											
  map_controller.go:453	0xe8109a		4889842488000000	MOVQ AX, 0x88(SP)											
  print.go:233		0xe810a2		488b1dd70f6902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe810a9		488d0530aafe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe810b0		bf11000000		MOVL $__major_os_version__+11(SB), DI									
  print.go:233		0xe810b5		488db42480000000	LEAQ 0x80(SP), SI											
  print.go:233		0xe810bd		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe810c3		4d89c1			MOVQ R8, R9												
  print.go:233		0xe810c6		488d0dc4bb2f00		LEAQ go:string.*+83849(SB), CX										
  print.go:233		0xe810cd		e84ee169ff		CALL fmt.Fprintf(SB)											
  map_controller.go:454	0xe810d2		440f117c2470		MOVUPS X15, 0x70(SP)											
  map_controller.go:454	0xe810d8		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:454	0xe810e0		488b4120		MOVQ 0x20(CX), AX											
  map_controller.go:454	0xe810e4		488b5928		MOVQ 0x28(CX), BX											
  map_controller.go:454	0xe810e8		e833905eff		CALL runtime.convTstring(SB)										
  map_controller.go:454	0xe810ed		488d0d2c181c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:454	0xe810f4		48894c2470		MOVQ CX, 0x70(SP)											
  map_controller.go:454	0xe810f9		4889442478		MOVQ AX, 0x78(SP)											
  print.go:233		0xe810fe		488b1d7b0f6902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe81105		488d05d4a9fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe8110c		bf11000000		MOVL $__major_os_version__+11(SB), DI									
  print.go:233		0xe81111		488d742470		LEAQ 0x70(SP), SI											
  print.go:233		0xe81116		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe8111c		4d89c1			MOVQ R8, R9												
  print.go:233		0xe8111f		488d0d7cbb2f00		LEAQ go:string.*+83866(SB), CX										
  print.go:233		0xe81126		e8f5e069ff		CALL fmt.Fprintf(SB)											
  map_controller.go:456	0xe8112b		488d0d8e030000		LEAQ CAS-Backend/biz/controller.UploadMapHandler.func1(SB), CX						
  map_controller.go:456	0xe81132		48898c24b0000000	MOVQ CX, 0xb0(SP)											
  map_controller.go:456	0xe8113a		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:456	0xe81142		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  map_controller.go:456	0xe8114a		488b01			MOVQ 0(CX), AX												
  map_controller.go:456	0xe8114d		488b5908		MOVQ 0x8(CX), BX											
  map_controller.go:456	0xe81151		b9074b0000		MOVL $__size_of_stack_commit__+15111(SB), CX								
  map_controller.go:456	0xe81156		488dbc24b0000000	LEAQ 0xb0(SP), DI											
  map_controller.go:456	0xe8115e		6690			NOPW													
  map_controller.go:456	0xe81160		e89b24f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  map_controller.go:459	0xe81165		4885c0			TESTQ AX, AX												
  map_controller.go:459	0xe81168		0f843c010000		JE 0xe812aa												
  map_controller.go:466	0xe8116e		440f117c2450		MOVUPS X15, 0x50(SP)											
  map_controller.go:466	0xe81174		7404			JE 0xe8117a												
  map_controller.go:466	0xe81176		488b4008		MOVQ 0x8(AX), AX											
  map_controller.go:466	0xe8117a		4889442450		MOVQ AX, 0x50(SP)											
  map_controller.go:466	0xe8117f		48895c2458		MOVQ BX, 0x58(SP)											
  print.go:233		0xe81184		488b1df50e6902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe8118b		488d054ea9fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe81192		488d0d4aa92f00		LEAQ go:string.*+79323(SB), CX										
  print.go:233		0xe81199		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233		0xe8119e		488d742450		LEAQ 0x50(SP), SI											
  print.go:233		0xe811a3		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe811a9		4d89c1			MOVQ R8, R9												
  print.go:233		0xe811ac		e86fe069ff		CALL fmt.Fprintf(SB)											
  map_controller.go:467	0xe811b1		e82a9e5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:467	0xe811b6		48898424c0000000	MOVQ AX, 0xc0(SP)											
  map_controller.go:467	0xe811be		4889c3			MOVQ AX, BX												
  map_controller.go:467	0xe811c1		488d0dc4842e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:467	0xe811c8		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:467	0xe811cd		488d05ac362200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:467	0xe811d4		e847ce5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:467	0xe811d9		488d1580191c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:467	0xe811e0		488910			MOVQ DX, 0(AX)												
  map_controller.go:467	0xe811e3		833d66c96d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:467	0xe811ea		740c			JE 0xe811f8												
  map_controller.go:467	0xe811ec		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:467	0xe811f0		e82b725fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:467	0xe811f5		498913			MOVQ DX, 0(R11)												
  map_controller.go:467	0xe811f8		488d15c138fe01		LEAQ runtime.gcbits.*(SB), DX										
  map_controller.go:467	0xe811ff		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:467	0xe81203		488d0576362200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:467	0xe8120a		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:467	0xe81212		488d0d3b782e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:467	0xe81219		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:467	0xe8121e		6690			NOPW													
  map_controller.go:467	0xe81220		e8fbcd5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:467	0xe81225		488d15f4161c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:467	0xe8122c		488910			MOVQ DX, 0(AX)												
  map_controller.go:467	0xe8122f		833d1ac96d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:467	0xe81236		7410			JE 0xe81248												
  map_controller.go:467	0xe81238		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:467	0xe8123c		0f1f4000		NOPL 0(AX)												
  map_controller.go:467	0xe81240		e8db715fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:467	0xe81245		49890b			MOVQ CX, 0(R11)												
  map_controller.go:467	0xe81248		488d0db178fe01		LEAQ CAS-Backend/biz/controller..stmp_136(SB), CX							
  map_controller.go:467	0xe8124f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe81253		488d0d26362200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe8125a		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005	0xe81262		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  context.go:1005	0xe8126a		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  context.go:1005	0xe81272		488d0567ac2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe81279		488d9c24a0000000	LEAQ 0xa0(SP), BX											
  context.go:1005	0xe81281		e81ade58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe81286		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe8128b		488d0d9edffe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe81292		4889c7			MOVQ AX, DI												
  context.go:1005	0xe81295		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:1005	0xe8129d		0f1f00			NOPL 0(AX)												
  context.go:1005	0xe812a0		e8bbe4f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:473	0xe812a5		e928010000		JMP 0xe813d2												
  map_controller.go:460	0xe812aa		488d156f161c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:460	0xe812b1		4889542460		MOVQ DX, 0x60(SP)											
  map_controller.go:460	0xe812b6		4c8d053378fe01		LEAQ CAS-Backend/biz/controller..stmp_132(SB), R8							
  map_controller.go:460	0xe812bd		4c89442468		MOVQ R8, 0x68(SP)											
  print.go:314		0xe812c2		488b1db70d6902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe812c9		488d0510a8fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe812d0		488d4c2460		LEAQ 0x60(SP), CX											
  print.go:314		0xe812d5		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe812da		4889fe			MOVQ DI, SI												
  print.go:314		0xe812dd		0f1f00			NOPL 0(AX)												
  print.go:314		0xe812e0		e87be569ff		CALL fmt.Fprintln(SB)											
  map_controller.go:461	0xe812e5		e8f69c5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:461	0xe812ea		48898424c0000000	MOVQ AX, 0xc0(SP)											
  map_controller.go:461	0xe812f2		4889c3			MOVQ AX, BX												
  map_controller.go:461	0xe812f5		488d0d90832e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:461	0xe812fc		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:461	0xe81301		488d0578352200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:461	0xe81308		e813cd5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:461	0xe8130d		488d154c181c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:461	0xe81314		488910			MOVQ DX, 0(AX)												
  map_controller.go:461	0xe81317		833d32c86d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:461	0xe8131e		6690			NOPW													
  map_controller.go:461	0xe81320		740c			JE 0xe8132e												
  map_controller.go:461	0xe81322		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:461	0xe81326		e8f5705fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:461	0xe8132b		498913			MOVQ DX, 0(R11)												
  map_controller.go:461	0xe8132e		488d15fb64fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  map_controller.go:461	0xe81335		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:461	0xe81339		488d0540352200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:461	0xe81340		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:461	0xe81348		488d0d05772e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:461	0xe8134f		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:461	0xe81354		e8c7cc5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:461	0xe81359		488d15c0151c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:461	0xe81360		488910			MOVQ DX, 0(AX)												
  map_controller.go:461	0xe81363		833de6c76d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:461	0xe8136a		740c			JE 0xe81378												
  map_controller.go:461	0xe8136c		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:461	0xe81370		e8ab705fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:461	0xe81375		49890b			MOVQ CX, 0(R11)												
  map_controller.go:461	0xe81378		488d0d7177fe01		LEAQ CAS-Backend/biz/controller..stmp_132(SB), CX							
  map_controller.go:461	0xe8137f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe81383		488d0df6342200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe8138a		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005	0xe81392		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  context.go:1005	0xe8139a		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  context.go:1005	0xe813a2		488d0537ab2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe813a9		488d9c24a0000000	LEAQ 0xa0(SP), BX											
  context.go:1005	0xe813b1		e8eadc58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe813b6		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe813bb		488d0d6edefe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe813c2		4889c7			MOVQ AX, DI												
  context.go:1005	0xe813c5		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:1005	0xe813cd		e88ee3f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:473	0xe813d2		4881c4d0000000		ADDQ $.file+131(SB), SP											
  map_controller.go:473	0xe813d9		5d			POPQ BP													
  map_controller.go:473	0xe813da		c3			RET													
  context.go:752	0xe813db		4889442438		MOVQ AX, 0x38(SP)											
  context.go:752	0xe813e0		48895c2440		MOVQ BX, 0x40(SP)											
  map_controller.go:448	0xe813e5		488d1534151c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:448	0xe813ec		4889942490000000	MOVQ DX, 0x90(SP)											
  map_controller.go:448	0xe813f4		488d15d573fe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  map_controller.go:448	0xe813fb		4889942498000000	MOVQ DX, 0x98(SP)											
  print.go:314		0xe81403		488b1d760c6902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe8140a		488d05cfa6fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe81411		488d8c2490000000	LEAQ 0x90(SP), CX											
  print.go:314		0xe81419		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe8141e		4889fe			MOVQ DI, SI												
  print.go:314		0xe81421		e83ae469ff		CALL fmt.Fprintln(SB)											
  map_controller.go:449	0xe81426		488b8424e0000000	MOVQ 0xe0(SP), AX											
  map_controller.go:449	0xe8142e		bb90010000		MOVL $.file+323(SB), BX											
  map_controller.go:449	0xe81433		488b4c2438		MOVQ 0x38(SP), CX											
  map_controller.go:449	0xe81438		488b7c2440		MOVQ 0x40(SP), DI											
  map_controller.go:449	0xe8143d		0f1f00			NOPL 0(AX)												
  map_controller.go:449	0xe81440		e85b9cf7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  map_controller.go:450	0xe81445		4881c4d0000000		ADDQ $.file+131(SB), SP											
  map_controller.go:450	0xe8144c		5d			POPQ BP													
  map_controller.go:450	0xe8144d		c3			RET													
  context.go:712	0xe8144e		4d89ca			MOVQ R9, R10												
  context.go:712	0xe81451		4d21c1			ANDQ R8, R9												
  context.go:712	0xe81454		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712	0xe81458		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712	0xe8145d		0f1f00			NOPL 0(AX)												
  context.go:712	0xe81460		4939db			CMPQ R11, BX												
  context.go:712	0xe81463		742f			JE 0xe81494												
  context.go:712	0xe81465		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712	0xe81469		4d85db			TESTQ R11, R11												
  context.go:712	0xe8146c		75e0			JNE 0xe8144e												
  context.go:712	0xe8146e		4889542448		MOVQ DX, 0x48(SP)											
  context.go:712	0xe81473		488d05169e1300		LEAQ CAS-Backend/biz/controller..typeAssert.23(SB), AX							
  context.go:712	0xe8147a		e861de58ff		CALL runtime.typeAssert(SB)										
  context.go:752	0xe8147f		488b542448		MOVQ 0x48(SP), DX											
  context.go:712	0xe81484		4889c1			MOVQ AX, CX												
  context.go:752	0xe81487		488b8424c8000000	MOVQ 0xc8(SP), AX											
  context.go:712	0xe8148f		e9b1fbffff		JMP 0xe81045												
  context.go:712	0xe81494		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712	0xe81499		e9a7fbffff		JMP 0xe81045												
  map_controller.go:444	0xe8149e		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:444	0xe814a3		e838505fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:444	0xe814a8		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:444	0xe814ad		e92efbffff		JMP CAS-Backend/biz/controller.UploadMapHandler(SB)							
  :-1			0xe814b2		cc			INT $__subsystem__(SB)											
  :-1			0xe814b3		cc			INT $__subsystem__(SB)											
  :-1			0xe814b4		cc			INT $__subsystem__(SB)											
  :-1			0xe814b5		cc			INT $__subsystem__(SB)											
  :-1			0xe814b6		cc			INT $__subsystem__(SB)											
  :-1			0xe814b7		cc			INT $__subsystem__(SB)											
  :-1			0xe814b8		cc			INT $__subsystem__(SB)											
  :-1			0xe814b9		cc			INT $__subsystem__(SB)											
  :-1			0xe814ba		cc			INT $__subsystem__(SB)											
  :-1			0xe814bb		cc			INT $__subsystem__(SB)											
  :-1			0xe814bc		cc			INT $__subsystem__(SB)											
  :-1			0xe814bd		cc			INT $__subsystem__(SB)											
  :-1			0xe814be		cc			INT $__subsystem__(SB)											
  :-1			0xe814bf		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.UploadMapHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:456	0xe814c0		493b6610		CMPQ SP, 0x10(R14)						
  map_controller.go:456	0xe814c4		7629			JBE 0xe814ef							
  map_controller.go:456	0xe814c6		55			PUSHQ BP							
  map_controller.go:456	0xe814c7		4889e5			MOVQ SP, BP							
  map_controller.go:456	0xe814ca		4883ec20		SUBQ $__major_os_version__+26(SB), SP				
  map_controller.go:456	0xe814ce		4889442430		MOVQ AX, 0x30(SP)						
  map_controller.go:456	0xe814d3		48895c2438		MOVQ BX, 0x38(SP)						
  map_controller.go:456	0xe814d8		488b5208		MOVQ 0x8(DX), DX						
  map_controller.go:457	0xe814dc		488b4a20		MOVQ 0x20(DX), CX						
  map_controller.go:457	0xe814e0		488b7a28		MOVQ 0x28(DX), DI						
  map_controller.go:457	0xe814e4		e897f6f9ff		CALL CAS-Backend/pkg/agvcontrol.SendUploadMapCommand(SB)	
  map_controller.go:457	0xe814e9		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  map_controller.go:457	0xe814ed		5d			POPQ BP								
  map_controller.go:457	0xe814ee		c3			RET								
  map_controller.go:456	0xe814ef		4889442408		MOVQ AX, 0x8(SP)						
  map_controller.go:456	0xe814f4		48895c2410		MOVQ BX, 0x10(SP)						
  map_controller.go:456	0xe814f9		e8624f5fff		CALL runtime.morestack.abi0(SB)					
  map_controller.go:456	0xe814fe		488b442408		MOVQ 0x8(SP), AX						
  map_controller.go:456	0xe81503		488b5c2410		MOVQ 0x10(SP), BX						
  map_controller.go:456	0xe81508		ebb6			JMP CAS-Backend/biz/controller.UploadMapHandler.func1(SB)	
  :-1			0xe8150a		cc			INT $__subsystem__(SB)						
  :-1			0xe8150b		cc			INT $__subsystem__(SB)						
  :-1			0xe8150c		cc			INT $__subsystem__(SB)						
  :-1			0xe8150d		cc			INT $__subsystem__(SB)						
  :-1			0xe8150e		cc			INT $__subsystem__(SB)						
  :-1			0xe8150f		cc			INT $__subsystem__(SB)						
  :-1			0xe81510		cc			INT $__subsystem__(SB)						
  :-1			0xe81511		cc			INT $__subsystem__(SB)						
  :-1			0xe81512		cc			INT $__subsystem__(SB)						
  :-1			0xe81513		cc			INT $__subsystem__(SB)						
  :-1			0xe81514		cc			INT $__subsystem__(SB)						
  :-1			0xe81515		cc			INT $__subsystem__(SB)						
  :-1			0xe81516		cc			INT $__subsystem__(SB)						
  :-1			0xe81517		cc			INT $__subsystem__(SB)						
  :-1			0xe81518		cc			INT $__subsystem__(SB)						
  :-1			0xe81519		cc			INT $__subsystem__(SB)						
  :-1			0xe8151a		cc			INT $__subsystem__(SB)						
  :-1			0xe8151b		cc			INT $__subsystem__(SB)						
  :-1			0xe8151c		cc			INT $__subsystem__(SB)						
  :-1			0xe8151d		cc			INT $__subsystem__(SB)						
  :-1			0xe8151e		cc			INT $__subsystem__(SB)						
  :-1			0xe8151f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.LoadMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:475	0xe81520		4c8da42430ffffff	LEAQ 0xffffff30(SP), R12										
  map_controller.go:475	0xe81528		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:475	0xe8152c		0f867f070000		JBE 0xe81cb1												
  map_controller.go:475	0xe81532		55			PUSHQ BP												
  map_controller.go:475	0xe81533		4889e5			MOVQ SP, BP												
  map_controller.go:475	0xe81536		4881ec48010000		SUBQ $.file+251(SB), SP											
  context.go:712	0xe8153d		4889842458010000	MOVQ AX, 0x158(SP)											
  map_controller.go:476	0xe81545		488d0574472500		LEAQ runtime.types+986304(SB), AX									
  map_controller.go:476	0xe8154c		e84f0259ff		CALL runtime.newobject(SB)										
  map_controller.go:476	0xe81551		4889842440010000	MOVQ AX, 0x140(SP)											
  context.go:712	0xe81559		488b0d80621300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712	0xe81560		488b1581621300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712	0xe81567		4885c9			TESTQ CX, CX												
  context.go:712	0xe8156a		7419			JE 0xe81585												
  context.go:712	0xe8156c		488b5908		MOVQ 0x8(CX), BX											
  context.go:712	0xe81570		488b35399d1300		MOVQ CAS-Backend/biz/controller..typeAssert.24(SB), SI							
  context.go:712	0xe81577		4c8b06			MOVQ 0(SI), R8												
  context.go:712	0xe8157a		448b4910		MOVL 0x10(CX), R9											
  context.go:712	0xe8157e		6690			NOPW													
  context.go:712	0xe81580		e9d9060000		JMP 0xe81c5e												
  context.go:752	0xe81585		488b7118		MOVQ 0x18(CX), SI											
  context.go:752	0xe81589		4c8b842458010000	MOVQ 0x158(SP), R8											
  context.go:752	0xe81591		498b5820		MOVQ 0x20(R8), BX											
  context.go:752	0xe81595		488d0d44521a00		LEAQ runtime.types+268256(SB), CX									
  context.go:752	0xe8159c		4889c7			MOVQ AX, DI												
  context.go:752	0xe8159f		4889d0			MOVQ DX, AX												
  context.go:752	0xe815a2		ffd6			CALL SI													
  map_controller.go:478	0xe815a4		4885c0			TESTQ AX, AX												
  map_controller.go:478	0xe815a7		0f8541060000		JNE 0xe81bee												
  map_controller.go:484	0xe815ad		440f11bc24c0000000	MOVUPS X15, 0xc0(SP)											
  map_controller.go:484	0xe815b6		488b8c2440010000	MOVQ 0x140(SP), CX											
  map_controller.go:484	0xe815be		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:484	0xe815c2		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:484	0xe815c6		e8558b5eff		CALL runtime.convTstring(SB)										
  map_controller.go:484	0xe815cb		488d0d4e131c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:484	0xe815d2		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  map_controller.go:484	0xe815da		48898424c8000000	MOVQ AX, 0xc8(SP)											
  print.go:233		0xe815e2		488b1d970a6902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe815e9		488d05f0a4fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe815f0		bf11000000		MOVL $__major_os_version__+11(SB), DI									
  print.go:233		0xe815f5		488db424c0000000	LEAQ 0xc0(SP), SI											
  print.go:233		0xe815fd		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe81603		4d89c1			MOVQ R8, R9												
  print.go:233		0xe81606		488d0d84b62f00		LEAQ go:string.*+83849(SB), CX										
  print.go:233		0xe8160d		e80edc69ff		CALL fmt.Fprintf(SB)											
  map_controller.go:486	0xe81612		c644243f00		MOVB $0x0, 0x3f(SP)											
  map_controller.go:487	0xe81617		488d0dc2060000		LEAQ CAS-Backend/biz/controller.LoadMapHandler.func1(SB), CX						
  map_controller.go:487	0xe8161e		48898c24f0000000	MOVQ CX, 0xf0(SP)											
  map_controller.go:487	0xe81626		488b8c2440010000	MOVQ 0x140(SP), CX											
  map_controller.go:487	0xe8162e		48898c24f8000000	MOVQ CX, 0xf8(SP)											
  map_controller.go:487	0xe81636		488d54243f		LEAQ 0x3f(SP), DX											
  map_controller.go:487	0xe8163b		4889942400010000	MOVQ DX, 0x100(SP)											
  map_controller.go:487	0xe81643		488b01			MOVQ 0(CX), AX												
  map_controller.go:487	0xe81646		488b5908		MOVQ 0x8(CX), BX											
  map_controller.go:487	0xe8164a		488dbc24f0000000	LEAQ 0xf0(SP), DI											
  map_controller.go:487	0xe81652		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX								
  map_controller.go:487	0xe81657		e8a41ff9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  map_controller.go:492	0xe8165c		807c243f00		CMPB 0x3f(SP), $0x0											
  map_controller.go:492	0xe81661		0f854a010000		JNE 0xe817b1												
  map_controller.go:510	0xe81667		440f11bc2490000000	MOVUPS X15, 0x90(SP)											
  map_controller.go:510	0xe81670		4885c0			TESTQ AX, AX												
  map_controller.go:510	0xe81673		7404			JE 0xe81679												
  map_controller.go:510	0xe81675		488b4008		MOVQ 0x8(AX), AX											
  map_controller.go:510	0xe81679		4889842490000000	MOVQ AX, 0x90(SP)											
  map_controller.go:510	0xe81681		48899c2498000000	MOVQ BX, 0x98(SP)											
  print.go:233		0xe81689		488b1df0096902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe81690		488d0549a4fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe81697		488d0d55a42f00		LEAQ go:string.*+79339(SB), CX										
  print.go:233		0xe8169e		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233		0xe816a3		488db42490000000	LEAQ 0x90(SP), SI											
  print.go:233		0xe816ab		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe816b1		4d89c1			MOVQ R8, R9												
  print.go:233		0xe816b4		e867db69ff		CALL fmt.Fprintf(SB)											
  map_controller.go:511	0xe816b9		e822995eff		CALL runtime.makemap_small(SB)										
  map_controller.go:511	0xe816be		4889842410010000	MOVQ AX, 0x110(SP)											
  map_controller.go:511	0xe816c6		4889c3			MOVQ AX, BX												
  map_controller.go:511	0xe816c9		488d0dbc7f2e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:511	0xe816d0		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:511	0xe816d5		488d05a4312200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:511	0xe816dc		0f1f4000		NOPL 0(AX)												
  map_controller.go:511	0xe816e0		e83bc95eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:511	0xe816e5		488d1574141c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:511	0xe816ec		488910			MOVQ DX, 0(AX)												
  map_controller.go:511	0xe816ef		833d5ac46d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:511	0xe816f6		7410			JE 0xe81708												
  map_controller.go:511	0xe816f8		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:511	0xe816fc		0f1f4000		NOPL 0(AX)												
  map_controller.go:511	0xe81700		e81b6d5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:511	0xe81705		498913			MOVQ DX, 0(R11)												
  map_controller.go:511	0xe81708		488d15b133fe01		LEAQ runtime.gcbits.*(SB), DX										
  map_controller.go:511	0xe8170f		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:511	0xe81713		488d0566312200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:511	0xe8171a		488b9c2410010000	MOVQ 0x110(SP), BX											
  map_controller.go:511	0xe81722		488d0d2b732e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:511	0xe81729		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:511	0xe8172e		e8edc85eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:511	0xe81733		488d15e6111c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:511	0xe8173a		488910			MOVQ DX, 0(AX)												
  map_controller.go:511	0xe8173d		833d0cc46d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:511	0xe81744		740c			JE 0xe81752												
  map_controller.go:511	0xe81746		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:511	0xe8174a		e8d16c5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:511	0xe8174f		49890b			MOVQ CX, 0(R11)												
  map_controller.go:511	0xe81752		488d0dc773fe01		LEAQ CAS-Backend/biz/controller..stmp_143(SB), CX							
  map_controller.go:511	0xe81759		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe8175d		488d0d1c312200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe81764		48898c24e0000000	MOVQ CX, 0xe0(SP)											
  context.go:1005	0xe8176c		488b8c2410010000	MOVQ 0x110(SP), CX											
  context.go:1005	0xe81774		48898c24e8000000	MOVQ CX, 0xe8(SP)											
  context.go:1005	0xe8177c		488d055da72400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe81783		488d9c24e0000000	LEAQ 0xe0(SP), BX											
  context.go:1005	0xe8178b		e810d958ff		CALL runtime.convT(SB)											
  context.go:1005	0xe81790		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe81795		488d0d94dafe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe8179c		4889c7			MOVQ AX, DI												
  context.go:1005	0xe8179f		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005	0xe817a7		e8b4dff7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:517	0xe817ac		e934040000		JMP 0xe81be5												
  map_controller.go:493	0xe817b1		488d1568111c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:493	0xe817b8		48899424b0000000	MOVQ DX, 0xb0(SP)											
  map_controller.go:493	0xe817c0		4c8d054973fe01		LEAQ CAS-Backend/biz/controller..stmp_138(SB), R8							
  map_controller.go:493	0xe817c7		4c898424b8000000	MOVQ R8, 0xb8(SP)											
  print.go:314		0xe817cf		488b1daa086902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe817d6		488d0503a3fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe817dd		488d8c24b0000000	LEAQ 0xb0(SP), CX											
  print.go:314		0xe817e5		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe817ea		4889fe			MOVQ DI, SI												
  print.go:314		0xe817ed		e86ee069ff		CALL fmt.Fprintln(SB)											
  map_controller.go:494	0xe817f2		488b942440010000	MOVQ 0x140(SP), DX											
  map_controller.go:494	0xe817fa		488b4210		MOVQ 0x10(DX), AX											
  map_controller.go:494	0xe817fe		488b5a18		MOVQ 0x18(DX), BX											
  map_controller.go:494	0xe81802		488b4a20		MOVQ 0x20(DX), CX											
  map_controller.go:494	0xe81806		488b7a28		MOVQ 0x28(DX), DI											
  map_controller.go:494	0xe8180a		e87125faff		CALL CAS-Backend/pkg/diapdu.ReloadActiveMapFromLocalFile(SB)						
  map_controller.go:494	0xe8180f		4885c0			TESTQ AX, AX												
  map_controller.go:494	0xe81812		0f841e020000		JE 0xe81a36												
  map_controller.go:494	0xe81818		4889442448		MOVQ AX, 0x48(SP)											
  map_controller.go:495	0xe8181d		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)											
  map_controller.go:495	0xe81826		7406			JE 0xe8182e												
  map_controller.go:495	0xe81828		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:495	0xe8182c		eb03			JMP 0xe81831												
  map_controller.go:495	0xe8182e		4889c2			MOVQ AX, DX												
  map_controller.go:494	0xe81831		48899c2480000000	MOVQ BX, 0x80(SP)											
  map_controller.go:495	0xe81839		48899424a0000000	MOVQ DX, 0xa0(SP)											
  map_controller.go:495	0xe81841		48899c24a8000000	MOVQ BX, 0xa8(SP)											
  print.go:233		0xe81849		488b1530086902		MOVQ os.Stdout(SB), DX											
  print.go:233		0xe81850		488d0589a2fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe81857		488d0d4df43000		LEAQ go:string.*+165795(SB), CX										
  print.go:233		0xe8185e		bf23000000		MOVL $__major_os_version__+29(SB), DI									
  print.go:233		0xe81863		488db424a0000000	LEAQ 0xa0(SP), SI											
  print.go:233		0xe8186b		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe81871		4d89c1			MOVQ R8, R9												
  print.go:233		0xe81874		4889d3			MOVQ DX, BX												
  print.go:233		0xe81877		e8a4d969ff		CALL fmt.Fprintf(SB)											
  print.go:233		0xe8187c		0f1f4000		NOPL 0(AX)												
  map_controller.go:496	0xe81880		e85b975eff		CALL runtime.makemap_small(SB)										
  map_controller.go:496	0xe81885		4889842410010000	MOVQ AX, 0x110(SP)											
  map_controller.go:496	0xe8188d		4889c3			MOVQ AX, BX												
  map_controller.go:496	0xe81890		488d0df57d2e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:496	0xe81897		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:496	0xe8189c		488d05dd2f2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:496	0xe818a3		e878c75eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:496	0xe818a8		488d15b1121c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:496	0xe818af		488910			MOVQ DX, 0(AX)												
  map_controller.go:496	0xe818b2		833d97c26d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:496	0xe818b9		740d			JE 0xe818c8												
  map_controller.go:496	0xe818bb		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:496	0xe818bf		90			NOPL													
  map_controller.go:496	0xe818c0		e85b6b5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:496	0xe818c5		49890b			MOVQ CX, 0(R11)												
  map_controller.go:496	0xe818c8		488d0d615ffe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), CX								
  map_controller.go:496	0xe818cf		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:498	0xe818d3		488b4c2448		MOVQ 0x48(SP), CX											
  map_controller.go:498	0xe818d8		488b4918		MOVQ 0x18(CX), CX											
  map_controller.go:498	0xe818dc		488b842480000000	MOVQ 0x80(SP), AX											
  map_controller.go:498	0xe818e4		ffd1			CALL CX													
  map_controller.go:498	0xe818e6		b938000000		MOVL $__major_os_version__+50(SB), CX									
  map_controller.go:498	0xe818eb		4889c7			MOVQ AX, DI												
  map_controller.go:498	0xe818ee		4889de			MOVQ BX, SI												
  map_controller.go:498	0xe818f1		31c0			XORL AX, AX												
  map_controller.go:498	0xe818f3		488d1db8f63100		LEAQ go:string.*+232106(SB), BX										
  map_controller.go:498	0xe818fa		e8013b5dff		CALL runtime.concatstring2(SB)										
  map_controller.go:498	0xe818ff		90			NOPL													
  map_controller.go:498	0xe81900		e81b885eff		CALL runtime.convTstring(SB)										
  map_controller.go:498	0xe81905		4889842408010000	MOVQ AX, 0x108(SP)											
  map_controller.go:496	0xe8190d		488b9c2410010000	MOVQ 0x110(SP), BX											
  map_controller.go:496	0xe81915		488d0d38712e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:496	0xe8191c		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:496	0xe81921		488d05582f2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:496	0xe81928		e8f3c65eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:496	0xe8192d		488d0dec0f1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:496	0xe81934		488908			MOVQ CX, 0(AX)												
  map_controller.go:496	0xe81937		833d12c26d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:496	0xe8193e		6690			NOPW													
  map_controller.go:496	0xe81940		750a			JNE 0xe8194c												
  map_controller.go:496	0xe81942		488b942408010000	MOVQ 0x108(SP), DX											
  map_controller.go:496	0xe8194a		eb18			JMP 0xe81964												
  map_controller.go:496	0xe8194c		e8ef6a5fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:496	0xe81951		488b942408010000	MOVQ 0x108(SP), DX											
  map_controller.go:496	0xe81959		498913			MOVQ DX, 0(R11)												
  map_controller.go:496	0xe8195c		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:496	0xe81960		49897308		MOVQ SI, 0x8(R11)											
  map_controller.go:496	0xe81964		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:499	0xe81968		488b8c2440010000	MOVQ 0x140(SP), CX											
  map_controller.go:499	0xe81970		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:499	0xe81974		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:499	0xe81978		e8a3875eff		CALL runtime.convTstring(SB)										
  map_controller.go:499	0xe8197d		4889842408010000	MOVQ AX, 0x108(SP)											
  map_controller.go:496	0xe81985		488b9c2410010000	MOVQ 0x110(SP), BX											
  map_controller.go:496	0xe8198d		488d0d72132f00		LEAQ go:string.*+43006(SB), CX										
  map_controller.go:496	0xe81994		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:496	0xe81999		488d05e02e2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:496	0xe819a0		e87bc65eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:496	0xe819a5		488d0d740f1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:496	0xe819ac		488908			MOVQ CX, 0(AX)												
  map_controller.go:496	0xe819af		833d9ac16d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:496	0xe819b6		750a			JNE 0xe819c2												
  map_controller.go:496	0xe819b8		488b8c2408010000	MOVQ 0x108(SP), CX											
  map_controller.go:496	0xe819c0		eb18			JMP 0xe819da												
  map_controller.go:496	0xe819c2		e8796a5fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:496	0xe819c7		488b8c2408010000	MOVQ 0x108(SP), CX											
  map_controller.go:496	0xe819cf		49890b			MOVQ CX, 0(R11)												
  map_controller.go:496	0xe819d2		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:496	0xe819d6		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:496	0xe819da		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe819de		488d0d9b2e2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe819e5		48898c24e0000000	MOVQ CX, 0xe0(SP)											
  context.go:1005	0xe819ed		488b8c2410010000	MOVQ 0x110(SP), CX											
  context.go:1005	0xe819f5		48898c24e8000000	MOVQ CX, 0xe8(SP)											
  context.go:1005	0xe819fd		488d05dca42400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe81a04		488d9c24e0000000	LEAQ 0xe0(SP), BX											
  context.go:1005	0xe81a0c		e88fd658ff		CALL runtime.convT(SB)											
  context.go:1005	0xe81a11		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe81a16		488d0d13d8fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe81a1d		4889c7			MOVQ AX, DI												
  context.go:1005	0xe81a20		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005	0xe81a28		e833ddf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:501	0xe81a2d		4881c448010000		ADDQ $.file+251(SB), SP											
  map_controller.go:501	0xe81a34		5d			POPQ BP													
  map_controller.go:501	0xe81a35		c3			RET													
  map_controller.go:503	0xe81a36		e8e51bfaff		CALL CAS-Backend/pkg/diapdu.GetActiveMapInfo(SB)							
  map_controller.go:503	0xe81a3b		88842418010000		MOVB AL, 0x118(SP)											
  map_controller.go:503	0xe81a42		48899c2420010000	MOVQ BX, 0x120(SP)											
  map_controller.go:503	0xe81a4a		48898c2428010000	MOVQ CX, 0x128(SP)											
  map_controller.go:503	0xe81a52		4889bc2430010000	MOVQ DI, 0x130(SP)											
  map_controller.go:503	0xe81a5a		4889b42438010000	MOVQ SI, 0x138(SP)											
  map_controller.go:503	0xe81a62		488b842418010000	MOVQ 0x118(SP), AX											
  map_controller.go:503	0xe81a6a		4889442458		MOVQ AX, 0x58(SP)											
  map_controller.go:503	0xe81a6f		0f10842420010000	MOVUPS 0x120(SP), X0											
  map_controller.go:503	0xe81a77		0f11442460		MOVUPS X0, 0x60(SP)											
  map_controller.go:503	0xe81a7c		0f10842430010000	MOVUPS 0x130(SP), X0											
  map_controller.go:503	0xe81a84		0f11442470		MOVUPS X0, 0x70(SP)											
  map_controller.go:504	0xe81a89		e852955eff		CALL runtime.makemap_small(SB)										
  map_controller.go:504	0xe81a8e		4889842410010000	MOVQ AX, 0x110(SP)											
  map_controller.go:504	0xe81a96		4889c3			MOVQ AX, BX												
  map_controller.go:504	0xe81a99		488d0dec7b2e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:504	0xe81aa0		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:504	0xe81aa5		488d05d42d2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:504	0xe81aac		e86fc55eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:504	0xe81ab1		488d0da8101c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:504	0xe81ab8		488908			MOVQ CX, 0(AX)												
  map_controller.go:504	0xe81abb		833d8ec06d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:504	0xe81ac2		740c			JE 0xe81ad0												
  map_controller.go:504	0xe81ac4		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:504	0xe81ac8		e853695fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:504	0xe81acd		498913			MOVQ DX, 0(R11)												
  map_controller.go:504	0xe81ad0		488d15595dfe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  map_controller.go:504	0xe81ad7		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:504	0xe81adb		488d059e2d2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:504	0xe81ae2		488b9c2410010000	MOVQ 0x110(SP), BX											
  map_controller.go:504	0xe81aea		488d0d636f2e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:504	0xe81af1		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:504	0xe81af6		e825c55eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:504	0xe81afb		488d151e0e1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:504	0xe81b02		488910			MOVQ DX, 0(AX)												
  map_controller.go:504	0xe81b05		833d44c06d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:504	0xe81b0c		740c			JE 0xe81b1a												
  map_controller.go:504	0xe81b0e		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:504	0xe81b12		e809695fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:504	0xe81b17		49890b			MOVQ CX, 0(R11)												
  map_controller.go:504	0xe81b1a		488d0def6ffe01		LEAQ CAS-Backend/biz/controller..stmp_138(SB), CX							
  map_controller.go:504	0xe81b21		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:507	0xe81b25		488b442460		MOVQ 0x60(SP), AX											
  map_controller.go:507	0xe81b2a		488b5c2468		MOVQ 0x68(SP), BX											
  map_controller.go:507	0xe81b2f		e8ec855eff		CALL runtime.convTstring(SB)										
  map_controller.go:507	0xe81b34		4889842408010000	MOVQ AX, 0x108(SP)											
  map_controller.go:504	0xe81b3c		488b9c2410010000	MOVQ 0x110(SP), BX											
  map_controller.go:504	0xe81b44		488d0dbb112f00		LEAQ go:string.*+43006(SB), CX										
  map_controller.go:504	0xe81b4b		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:504	0xe81b50		488d05292d2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:504	0xe81b57		e8c4c45eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:504	0xe81b5c		488d0dbd0d1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:504	0xe81b63		488908			MOVQ CX, 0(AX)												
  map_controller.go:504	0xe81b66		833de3bf6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:504	0xe81b6d		750a			JNE 0xe81b79												
  map_controller.go:504	0xe81b6f		488b8c2408010000	MOVQ 0x108(SP), CX											
  map_controller.go:504	0xe81b77		eb18			JMP 0xe81b91												
  map_controller.go:504	0xe81b79		e8c2685fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:504	0xe81b7e		488b8c2408010000	MOVQ 0x108(SP), CX											
  map_controller.go:504	0xe81b86		49890b			MOVQ CX, 0(R11)												
  map_controller.go:504	0xe81b89		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:504	0xe81b8d		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:504	0xe81b91		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe81b95		488d0de42c2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe81b9c		48898c24e0000000	MOVQ CX, 0xe0(SP)											
  context.go:1005	0xe81ba4		488b8c2410010000	MOVQ 0x110(SP), CX											
  context.go:1005	0xe81bac		48898c24e8000000	MOVQ CX, 0xe8(SP)											
  context.go:1005	0xe81bb4		488d0525a32400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe81bbb		488d9c24e0000000	LEAQ 0xe0(SP), BX											
  context.go:1005	0xe81bc3		e8d8d458ff		CALL runtime.convT(SB)											
  context.go:1005	0xe81bc8		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe81bcd		488d0d5cd6fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe81bd4		4889c7			MOVQ AX, DI												
  context.go:1005	0xe81bd7		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005	0xe81bdf		90			NOPL													
  context.go:1005	0xe81be0		e87bdbf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:517	0xe81be5		4881c448010000		ADDQ $.file+251(SB), SP											
  map_controller.go:517	0xe81bec		5d			POPQ BP													
  map_controller.go:517	0xe81bed		c3			RET													
  context.go:752	0xe81bee		48895c2450		MOVQ BX, 0x50(SP)											
  context.go:752	0xe81bf3		4889442440		MOVQ AX, 0x40(SP)											
  map_controller.go:479	0xe81bf8		488d15210d1c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:479	0xe81bff		48899424d0000000	MOVQ DX, 0xd0(SP)											
  map_controller.go:479	0xe81c07		488d15c26bfe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  map_controller.go:479	0xe81c0e		48899424d8000000	MOVQ DX, 0xd8(SP)											
  print.go:314		0xe81c16		488b1d63046902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe81c1d		488d05bc9efe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe81c24		488d8c24d0000000	LEAQ 0xd0(SP), CX											
  print.go:314		0xe81c2c		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe81c31		4889fe			MOVQ DI, SI												
  print.go:314		0xe81c34		e827dc69ff		CALL fmt.Fprintln(SB)											
  map_controller.go:480	0xe81c39		488b842458010000	MOVQ 0x158(SP), AX											
  map_controller.go:480	0xe81c41		bb90010000		MOVL $.file+323(SB), BX											
  map_controller.go:480	0xe81c46		488b4c2440		MOVQ 0x40(SP), CX											
  map_controller.go:480	0xe81c4b		488b7c2450		MOVQ 0x50(SP), DI											
  map_controller.go:480	0xe81c50		e84b94f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  map_controller.go:481	0xe81c55		4881c448010000		ADDQ $.file+251(SB), SP											
  map_controller.go:481	0xe81c5c		5d			POPQ BP													
  map_controller.go:481	0xe81c5d		c3			RET													
  context.go:712	0xe81c5e		4d89ca			MOVQ R9, R10												
  context.go:712	0xe81c61		4d21c1			ANDQ R8, R9												
  context.go:712	0xe81c64		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712	0xe81c68		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712	0xe81c6d		4939db			CMPQ R11, BX												
  context.go:712	0xe81c70		7435			JE 0xe81ca7												
  context.go:712	0xe81c72		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712	0xe81c76		4d85db			TESTQ R11, R11												
  context.go:712	0xe81c79		75e3			JNE 0xe81c5e												
  context.go:712	0xe81c7b		4889942488000000	MOVQ DX, 0x88(SP)											
  context.go:712	0xe81c83		488d0526961300		LEAQ CAS-Backend/biz/controller..typeAssert.24(SB), AX							
  context.go:712	0xe81c8a		e851d658ff		CALL runtime.typeAssert(SB)										
  context.go:752	0xe81c8f		488b942488000000	MOVQ 0x88(SP), DX											
  context.go:712	0xe81c97		4889c1			MOVQ AX, CX												
  context.go:752	0xe81c9a		488b842440010000	MOVQ 0x140(SP), AX											
  context.go:712	0xe81ca2		e9def8ffff		JMP 0xe81585												
  context.go:712	0xe81ca7		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712	0xe81cac		e9d4f8ffff		JMP 0xe81585												
  map_controller.go:475	0xe81cb1		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:475	0xe81cb6		e825485fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:475	0xe81cbb		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:475	0xe81cc0		e95bf8ffff		JMP CAS-Backend/biz/controller.LoadMapHandler(SB)							
  :-1			0xe81cc5		cc			INT $__subsystem__(SB)											
  :-1			0xe81cc6		cc			INT $__subsystem__(SB)											
  :-1			0xe81cc7		cc			INT $__subsystem__(SB)											
  :-1			0xe81cc8		cc			INT $__subsystem__(SB)											
  :-1			0xe81cc9		cc			INT $__subsystem__(SB)											
  :-1			0xe81cca		cc			INT $__subsystem__(SB)											
  :-1			0xe81ccb		cc			INT $__subsystem__(SB)											
  :-1			0xe81ccc		cc			INT $__subsystem__(SB)											
  :-1			0xe81ccd		cc			INT $__subsystem__(SB)											
  :-1			0xe81cce		cc			INT $__subsystem__(SB)											
  :-1			0xe81ccf		cc			INT $__subsystem__(SB)											
  :-1			0xe81cd0		cc			INT $__subsystem__(SB)											
  :-1			0xe81cd1		cc			INT $__subsystem__(SB)											
  :-1			0xe81cd2		cc			INT $__subsystem__(SB)											
  :-1			0xe81cd3		cc			INT $__subsystem__(SB)											
  :-1			0xe81cd4		cc			INT $__subsystem__(SB)											
  :-1			0xe81cd5		cc			INT $__subsystem__(SB)											
  :-1			0xe81cd6		cc			INT $__subsystem__(SB)											
  :-1			0xe81cd7		cc			INT $__subsystem__(SB)											
  :-1			0xe81cd8		cc			INT $__subsystem__(SB)											
  :-1			0xe81cd9		cc			INT $__subsystem__(SB)											
  :-1			0xe81cda		cc			INT $__subsystem__(SB)											
  :-1			0xe81cdb		cc			INT $__subsystem__(SB)											
  :-1			0xe81cdc		cc			INT $__subsystem__(SB)											
  :-1			0xe81cdd		cc			INT $__subsystem__(SB)											
  :-1			0xe81cde		cc			INT $__subsystem__(SB)											
  :-1			0xe81cdf		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.LoadMapHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:487	0xe81ce0		493b6610		CMPQ SP, 0x10(R14)					
  map_controller.go:487	0xe81ce4		763f			JBE 0xe81d25						
  map_controller.go:487	0xe81ce6		55			PUSHQ BP						
  map_controller.go:487	0xe81ce7		4889e5			MOVQ SP, BP						
  map_controller.go:487	0xe81cea		4883ec28		SUBQ $__major_os_version__+34(SB), SP			
  map_controller.go:487	0xe81cee		4889442438		MOVQ AX, 0x38(SP)					
  map_controller.go:487	0xe81cf3		48895c2440		MOVQ BX, 0x40(SP)					
  map_controller.go:487	0xe81cf8		488b7210		MOVQ 0x10(DX), SI					
  map_controller.go:487	0xe81cfc		4889742420		MOVQ SI, 0x20(SP)					
  map_controller.go:487	0xe81d01		488b5208		MOVQ 0x8(DX), DX					
  map_controller.go:488	0xe81d05		488b4a10		MOVQ 0x10(DX), CX					
  map_controller.go:488	0xe81d09		488b7a18		MOVQ 0x18(DX), DI					
  map_controller.go:488	0xe81d0d		e80ee7f9ff		CALL CAS-Backend/pkg/agvcontrol.LoadMapRequest(SB)	
  map_controller.go:489	0xe81d12		488b542420		MOVQ 0x20(SP), DX					
  map_controller.go:489	0xe81d17		8802			MOVB AL, 0(DX)						
  map_controller.go:490	0xe81d19		4889d8			MOVQ BX, AX						
  map_controller.go:490	0xe81d1c		4889cb			MOVQ CX, BX						
  map_controller.go:490	0xe81d1f		4883c428		ADDQ $__major_os_version__+34(SB), SP			
  map_controller.go:490	0xe81d23		5d			POPQ BP							
  map_controller.go:490	0xe81d24		c3			RET							
  map_controller.go:487	0xe81d25		4889442408		MOVQ AX, 0x8(SP)					
  map_controller.go:487	0xe81d2a		48895c2410		MOVQ BX, 0x10(SP)					
  map_controller.go:487	0xe81d2f		e82c475fff		CALL runtime.morestack.abi0(SB)				
  map_controller.go:487	0xe81d34		488b442408		MOVQ 0x8(SP), AX					
  map_controller.go:487	0xe81d39		488b5c2410		MOVQ 0x10(SP), BX					
  map_controller.go:487	0xe81d3e		6690			NOPW							
  map_controller.go:487	0xe81d40		eb9e			JMP CAS-Backend/biz/controller.LoadMapHandler.func1(SB)	
  :-1			0xe81d42		cc			INT $__subsystem__(SB)					
  :-1			0xe81d43		cc			INT $__subsystem__(SB)					
  :-1			0xe81d44		cc			INT $__subsystem__(SB)					
  :-1			0xe81d45		cc			INT $__subsystem__(SB)					
  :-1			0xe81d46		cc			INT $__subsystem__(SB)					
  :-1			0xe81d47		cc			INT $__subsystem__(SB)					
  :-1			0xe81d48		cc			INT $__subsystem__(SB)					
  :-1			0xe81d49		cc			INT $__subsystem__(SB)					
  :-1			0xe81d4a		cc			INT $__subsystem__(SB)					
  :-1			0xe81d4b		cc			INT $__subsystem__(SB)					
  :-1			0xe81d4c		cc			INT $__subsystem__(SB)					
  :-1			0xe81d4d		cc			INT $__subsystem__(SB)					
  :-1			0xe81d4e		cc			INT $__subsystem__(SB)					
  :-1			0xe81d4f		cc			INT $__subsystem__(SB)					
  :-1			0xe81d50		cc			INT $__subsystem__(SB)					
  :-1			0xe81d51		cc			INT $__subsystem__(SB)					
  :-1			0xe81d52		cc			INT $__subsystem__(SB)					
  :-1			0xe81d53		cc			INT $__subsystem__(SB)					
  :-1			0xe81d54		cc			INT $__subsystem__(SB)					
  :-1			0xe81d55		cc			INT $__subsystem__(SB)					
  :-1			0xe81d56		cc			INT $__subsystem__(SB)					
  :-1			0xe81d57		cc			INT $__subsystem__(SB)					
  :-1			0xe81d58		cc			INT $__subsystem__(SB)					
  :-1			0xe81d59		cc			INT $__subsystem__(SB)					
  :-1			0xe81d5a		cc			INT $__subsystem__(SB)					
  :-1			0xe81d5b		cc			INT $__subsystem__(SB)					
  :-1			0xe81d5c		cc			INT $__subsystem__(SB)					
  :-1			0xe81d5d		cc			INT $__subsystem__(SB)					
  :-1			0xe81d5e		cc			INT $__subsystem__(SB)					
  :-1			0xe81d5f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.UploadLoadMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:519	0xe81d60		4c8da42430ffffff	LEAQ 0xffffff30(SP), R12										
  map_controller.go:519	0xe81d68		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:519	0xe81d6c		0f86d5070000		JBE 0xe82547												
  map_controller.go:519	0xe81d72		55			PUSHQ BP												
  map_controller.go:519	0xe81d73		4889e5			MOVQ SP, BP												
  map_controller.go:519	0xe81d76		4881ec48010000		SUBQ $.file+251(SB), SP											
  context.go:712	0xe81d7d		4889842458010000	MOVQ AX, 0x158(SP)											
  map_controller.go:520	0xe81d85		488d05343f2500		LEAQ runtime.types+986304(SB), AX									
  map_controller.go:520	0xe81d8c		e80ffa58ff		CALL runtime.newobject(SB)										
  map_controller.go:520	0xe81d91		4889842440010000	MOVQ AX, 0x140(SP)											
  context.go:712	0xe81d99		488b0d405a1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712	0xe81da0		488b15415a1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712	0xe81da7		4885c9			TESTQ CX, CX												
  context.go:712	0xe81daa		7419			JE 0xe81dc5												
  context.go:712	0xe81dac		488b5908		MOVQ 0x8(CX), BX											
  context.go:712	0xe81db0		488b3519951300		MOVQ CAS-Backend/biz/controller..typeAssert.25(SB), SI							
  context.go:712	0xe81db7		4c8b06			MOVQ 0(SI), R8												
  context.go:712	0xe81dba		448b4910		MOVL 0x10(CX), R9											
  context.go:712	0xe81dbe		6690			NOPW													
  context.go:712	0xe81dc0		e92c070000		JMP 0xe824f1												
  context.go:752	0xe81dc5		488b7118		MOVQ 0x18(CX), SI											
  context.go:752	0xe81dc9		4c8b842458010000	MOVQ 0x158(SP), R8											
  context.go:752	0xe81dd1		498b5820		MOVQ 0x20(R8), BX											
  context.go:752	0xe81dd5		488d0d044a1a00		LEAQ runtime.types+268256(SB), CX									
  context.go:752	0xe81ddc		4889c7			MOVQ AX, DI												
  context.go:752	0xe81ddf		4889d0			MOVQ DX, AX												
  context.go:752	0xe81de2		ffd6			CALL SI													
  map_controller.go:522	0xe81de4		4885c0			TESTQ AX, AX												
  map_controller.go:522	0xe81de7		0f8594060000		JNE 0xe82481												
  map_controller.go:528	0xe81ded		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)											
  map_controller.go:528	0xe81df6		488b8c2440010000	MOVQ 0x140(SP), CX											
  map_controller.go:528	0xe81dfe		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:528	0xe81e02		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:528	0xe81e06		e815835eff		CALL runtime.convTstring(SB)										
  map_controller.go:528	0xe81e0b		488d0d0e0b1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:528	0xe81e12		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  map_controller.go:528	0xe81e1a		48898424d0000000	MOVQ AX, 0xd0(SP)											
  print.go:233		0xe81e22		488b1d57026902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe81e29		488d05b09cfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe81e30		bf11000000		MOVL $__major_os_version__+11(SB), DI									
  print.go:233		0xe81e35		488db424c8000000	LEAQ 0xc8(SP), SI											
  print.go:233		0xe81e3d		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe81e43		4d89c1			MOVQ R8, R9												
  print.go:233		0xe81e46		488d0d44ae2f00		LEAQ go:string.*+83849(SB), CX										
  print.go:233		0xe81e4d		e8ced369ff		CALL fmt.Fprintf(SB)											
  map_controller.go:529	0xe81e52		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)											
  map_controller.go:529	0xe81e5b		488b8c2440010000	MOVQ 0x140(SP), CX											
  map_controller.go:529	0xe81e63		488b4120		MOVQ 0x20(CX), AX											
  map_controller.go:529	0xe81e67		488b5928		MOVQ 0x28(CX), BX											
  map_controller.go:529	0xe81e6b		e8b0825eff		CALL runtime.convTstring(SB)										
  map_controller.go:529	0xe81e70		488d0da90a1c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:529	0xe81e77		48898c24b8000000	MOVQ CX, 0xb8(SP)											
  map_controller.go:529	0xe81e7f		48898424c0000000	MOVQ AX, 0xc0(SP)											
  print.go:233		0xe81e87		488b1df2016902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe81e8e		488d054b9cfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe81e95		bf11000000		MOVL $__major_os_version__+11(SB), DI									
  print.go:233		0xe81e9a		488db424b8000000	LEAQ 0xb8(SP), SI											
  print.go:233		0xe81ea2		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe81ea8		4d89c1			MOVQ R8, R9												
  print.go:233		0xe81eab		488d0d01ae2f00		LEAQ go:string.*+83883(SB), CX										
  print.go:233		0xe81eb2		e869d369ff		CALL fmt.Fprintf(SB)											
  map_controller.go:531	0xe81eb7		488d0da2060000		LEAQ CAS-Backend/biz/controller.UploadLoadMapHandler.func1(SB), CX					
  map_controller.go:531	0xe81ebe		48898c24f8000000	MOVQ CX, 0xf8(SP)											
  map_controller.go:531	0xe81ec6		488b8c2440010000	MOVQ 0x140(SP), CX											
  map_controller.go:531	0xe81ece		48898c2400010000	MOVQ CX, 0x100(SP)											
  map_controller.go:531	0xe81ed6		488b01			MOVQ 0(CX), AX												
  map_controller.go:531	0xe81ed9		488b5908		MOVQ 0x8(CX), BX											
  map_controller.go:531	0xe81edd		488dbc24f8000000	LEAQ 0xf8(SP), DI											
  map_controller.go:531	0xe81ee5		b9054b0000		MOVL $__size_of_stack_commit__+15109(SB), CX								
  map_controller.go:531	0xe81eea		e81117f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  map_controller.go:534	0xe81eef		4885c0			TESTQ AX, AX												
  map_controller.go:534	0xe81ef2		0f8443010000		JE 0xe8203b												
  map_controller.go:535	0xe81ef8		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)											
  map_controller.go:535	0xe81f01		7404			JE 0xe81f07												
  map_controller.go:535	0xe81f03		488b4008		MOVQ 0x8(AX), AX											
  map_controller.go:535	0xe81f07		48898424a8000000	MOVQ AX, 0xa8(SP)											
  map_controller.go:535	0xe81f0f		48899c24b0000000	MOVQ BX, 0xb0(SP)											
  print.go:233		0xe81f17		488b1d62016902		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe81f1e		488d05bb9bfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe81f25		488d0d0c3f3000		LEAQ go:string.*+121136(SB), CX										
  print.go:233		0xe81f2c		bf19000000		MOVL $__major_os_version__+19(SB), DI									
  print.go:233		0xe81f31		488db424a8000000	LEAQ 0xa8(SP), SI											
  print.go:233		0xe81f39		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe81f3f		4d89c1			MOVQ R8, R9												
  print.go:233		0xe81f42		e8d9d269ff		CALL fmt.Fprintf(SB)											
  map_controller.go:536	0xe81f47		e894905eff		CALL runtime.makemap_small(SB)										
  map_controller.go:536	0xe81f4c		4889842410010000	MOVQ AX, 0x110(SP)											
  map_controller.go:536	0xe81f54		4889c3			MOVQ AX, BX												
  map_controller.go:536	0xe81f57		488d0d2e772e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:536	0xe81f5e		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:536	0xe81f63		488d0516292200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:536	0xe81f6a		e8b1c05eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:536	0xe81f6f		488d15ea0b1c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:536	0xe81f76		488910			MOVQ DX, 0(AX)												
  map_controller.go:536	0xe81f79		833dd0bb6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:536	0xe81f80		740c			JE 0xe81f8e												
  map_controller.go:536	0xe81f82		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:536	0xe81f86		e895645fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:536	0xe81f8b		498913			MOVQ DX, 0(R11)												
  map_controller.go:536	0xe81f8e		488d152b2bfe01		LEAQ runtime.gcbits.*(SB), DX										
  map_controller.go:536	0xe81f95		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:536	0xe81f99		488d05e0282200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:536	0xe81fa0		488b9c2410010000	MOVQ 0x110(SP), BX											
  map_controller.go:536	0xe81fa8		488d0da56a2e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:536	0xe81faf		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:536	0xe81fb4		e867c05eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:536	0xe81fb9		488d1560091c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:536	0xe81fc0		488910			MOVQ DX, 0(AX)												
  map_controller.go:536	0xe81fc3		833d86bb6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:536	0xe81fca		740c			JE 0xe81fd8												
  map_controller.go:536	0xe81fcc		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:536	0xe81fd0		e84b645fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:536	0xe81fd5		49890b			MOVQ CX, 0(R11)												
  map_controller.go:536	0xe81fd8		488d0d516bfe01		LEAQ CAS-Backend/biz/controller..stmp_146(SB), CX							
  map_controller.go:536	0xe81fdf		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe81fe3		488d0d96282200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe81fea		48898c24e8000000	MOVQ CX, 0xe8(SP)											
  context.go:1005	0xe81ff2		488b8c2410010000	MOVQ 0x110(SP), CX											
  context.go:1005	0xe81ffa		48898c24f0000000	MOVQ CX, 0xf0(SP)											
  context.go:1005	0xe82002		488d05d79e2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe82009		488d9c24e8000000	LEAQ 0xe8(SP), BX											
  context.go:1005	0xe82011		e88ad058ff		CALL runtime.convT(SB)											
  context.go:1005	0xe82016		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe8201b		488d0d0ed2fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe82022		4889c7			MOVQ AX, DI												
  context.go:1005	0xe82025		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005	0xe8202d		e82ed7f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:540	0xe82032		4881c448010000		ADDQ $.file+251(SB), SP											
  map_controller.go:540	0xe82039		5d			POPQ BP													
  map_controller.go:540	0xe8203a		c3			RET													
  map_controller.go:542	0xe8203b		488d15de081c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:542	0xe82042		4889942498000000	MOVQ DX, 0x98(SP)											
  map_controller.go:542	0xe8204a		4c8d05ef6afe01		LEAQ CAS-Backend/biz/controller..stmp_147(SB), R8							
  map_controller.go:542	0xe82051		4c898424a0000000	MOVQ R8, 0xa0(SP)											
  print.go:314		0xe82059		488b1d20006902		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe82060		488d05799afe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe82067		488d8c2498000000	LEAQ 0x98(SP), CX											
  print.go:314		0xe8206f		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe82074		4889fe			MOVQ DI, SI												
  print.go:314		0xe82077		e8e4d769ff		CALL fmt.Fprintln(SB)											
  map_controller.go:543	0xe8207c		488b942440010000	MOVQ 0x140(SP), DX											
  map_controller.go:543	0xe82084		488b4210		MOVQ 0x10(DX), AX											
  map_controller.go:543	0xe82088		488b5a18		MOVQ 0x18(DX), BX											
  map_controller.go:543	0xe8208c		488b4a20		MOVQ 0x20(DX), CX											
  map_controller.go:543	0xe82090		488b7a28		MOVQ 0x28(DX), DI											
  map_controller.go:543	0xe82094		e8e71cfaff		CALL CAS-Backend/pkg/diapdu.ReloadActiveMapFromLocalFile(SB)						
  map_controller.go:543	0xe82099		0f1f8000000000		NOPL 0(AX)												
  map_controller.go:543	0xe820a0		4885c0			TESTQ AX, AX												
  map_controller.go:543	0xe820a3		0f8418020000		JE 0xe822c1												
  map_controller.go:543	0xe820a9		4889442440		MOVQ AX, 0x40(SP)											
  map_controller.go:544	0xe820ae		440f11bc2488000000	MOVUPS X15, 0x88(SP)											
  map_controller.go:544	0xe820b7		7406			JE 0xe820bf												
  map_controller.go:544	0xe820b9		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:544	0xe820bd		eb03			JMP 0xe820c2												
  map_controller.go:544	0xe820bf		4889c2			MOVQ AX, DX												
  map_controller.go:543	0xe820c2		48895c2478		MOVQ BX, 0x78(SP)											
  map_controller.go:544	0xe820c7		4889942488000000	MOVQ DX, 0x88(SP)											
  map_controller.go:544	0xe820cf		48899c2490000000	MOVQ BX, 0x90(SP)											
  print.go:233		0xe820d7		488b15a2ff6802		MOVQ os.Stdout(SB), DX											
  print.go:233		0xe820de		488d05fb99fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe820e5		488d0dbfeb3000		LEAQ go:string.*+165795(SB), CX										
  print.go:233		0xe820ec		bf23000000		MOVL $__major_os_version__+29(SB), DI									
  print.go:233		0xe820f1		488db42488000000	LEAQ 0x88(SP), SI											
  print.go:233		0xe820f9		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe820ff		4d89c1			MOVQ R8, R9												
  print.go:233		0xe82102		4889d3			MOVQ DX, BX												
  print.go:233		0xe82105		e816d169ff		CALL fmt.Fprintf(SB)											
  map_controller.go:545	0xe8210a		e8d18e5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:545	0xe8210f		4889842410010000	MOVQ AX, 0x110(SP)											
  map_controller.go:545	0xe82117		4889c3			MOVQ AX, BX												
  map_controller.go:545	0xe8211a		488d0d6b752e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:545	0xe82121		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:545	0xe82126		488d0553272200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:545	0xe8212d		e8eebe5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:545	0xe82132		488d15270a1c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:545	0xe82139		488910			MOVQ DX, 0(AX)												
  map_controller.go:545	0xe8213c		833d0dba6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:545	0xe82143		740c			JE 0xe82151												
  map_controller.go:545	0xe82145		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:545	0xe82149		e8d2625fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:545	0xe8214e		49890b			MOVQ CX, 0(R11)												
  map_controller.go:545	0xe82151		488d0dd856fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), CX								
  map_controller.go:545	0xe82158		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:547	0xe8215c		488b4c2440		MOVQ 0x40(SP), CX											
  map_controller.go:547	0xe82161		488b4918		MOVQ 0x18(CX), CX											
  map_controller.go:547	0xe82165		488b442478		MOVQ 0x78(SP), AX											
  map_controller.go:547	0xe8216a		ffd1			CALL CX													
  map_controller.go:547	0xe8216c		b93e000000		MOVL $__major_os_version__+56(SB), CX									
  map_controller.go:547	0xe82171		4889c7			MOVQ AX, DI												
  map_controller.go:547	0xe82174		4889de			MOVQ BX, SI												
  map_controller.go:547	0xe82177		31c0			XORL AX, AX												
  map_controller.go:547	0xe82179		488d1d401e3200		LEAQ go:string.*+244408(SB), BX										
  map_controller.go:547	0xe82180		e87b325dff		CALL runtime.concatstring2(SB)										
  map_controller.go:547	0xe82185		e8967f5eff		CALL runtime.convTstring(SB)										
  map_controller.go:547	0xe8218a		4889842408010000	MOVQ AX, 0x108(SP)											
  map_controller.go:545	0xe82192		488b9c2410010000	MOVQ 0x110(SP), BX											
  map_controller.go:545	0xe8219a		488d0db3682e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:545	0xe821a1		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:545	0xe821a6		488d05d3262200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:545	0xe821ad		e86ebe5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:545	0xe821b2		488d0d67071c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:545	0xe821b9		488908			MOVQ CX, 0(AX)												
  map_controller.go:545	0xe821bc		833d8db96d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:545	0xe821c3		750a			JNE 0xe821cf												
  map_controller.go:545	0xe821c5		488b942408010000	MOVQ 0x108(SP), DX											
  map_controller.go:545	0xe821cd		eb18			JMP 0xe821e7												
  map_controller.go:545	0xe821cf		e86c625fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:545	0xe821d4		488b942408010000	MOVQ 0x108(SP), DX											
  map_controller.go:545	0xe821dc		498913			MOVQ DX, 0(R11)												
  map_controller.go:545	0xe821df		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:545	0xe821e3		49897308		MOVQ SI, 0x8(R11)											
  map_controller.go:545	0xe821e7		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:548	0xe821eb		488b8c2440010000	MOVQ 0x140(SP), CX											
  map_controller.go:548	0xe821f3		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:548	0xe821f7		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:548	0xe821fb		0f1f440000		NOPL 0(AX)(AX*1)											
  map_controller.go:548	0xe82200		e81b7f5eff		CALL runtime.convTstring(SB)										
  map_controller.go:548	0xe82205		4889842408010000	MOVQ AX, 0x108(SP)											
  map_controller.go:545	0xe8220d		488b9c2410010000	MOVQ 0x110(SP), BX											
  map_controller.go:545	0xe82215		488d0dea0a2f00		LEAQ go:string.*+43006(SB), CX										
  map_controller.go:545	0xe8221c		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:545	0xe82221		488d0558262200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:545	0xe82228		e8f3bd5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:545	0xe8222d		488d0dec061c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:545	0xe82234		488908			MOVQ CX, 0(AX)												
  map_controller.go:545	0xe82237		833d12b96d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:545	0xe8223e		6690			NOPW													
  map_controller.go:545	0xe82240		750a			JNE 0xe8224c												
  map_controller.go:545	0xe82242		488b8c2408010000	MOVQ 0x108(SP), CX											
  map_controller.go:545	0xe8224a		eb18			JMP 0xe82264												
  map_controller.go:545	0xe8224c		e8ef615fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:545	0xe82251		488b8c2408010000	MOVQ 0x108(SP), CX											
  map_controller.go:545	0xe82259		49890b			MOVQ CX, 0(R11)												
  map_controller.go:545	0xe8225c		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:545	0xe82260		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:545	0xe82264		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe82268		488d0d11262200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe8226f		48898c24e8000000	MOVQ CX, 0xe8(SP)											
  context.go:1005	0xe82277		488b8c2410010000	MOVQ 0x110(SP), CX											
  context.go:1005	0xe8227f		48898c24f0000000	MOVQ CX, 0xf0(SP)											
  context.go:1005	0xe82287		488d05529c2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe8228e		488d9c24e8000000	LEAQ 0xe8(SP), BX											
  context.go:1005	0xe82296		e805ce58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe8229b		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe822a0		488d0d89cffe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe822a7		4889c7			MOVQ AX, DI												
  context.go:1005	0xe822aa		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005	0xe822b2		e8a9d4f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:550	0xe822b7		4881c448010000		ADDQ $.file+251(SB), SP											
  map_controller.go:550	0xe822be		5d			POPQ BP													
  map_controller.go:550	0xe822bf		90			NOPL													
  map_controller.go:550	0xe822c0		c3			RET													
  map_controller.go:552	0xe822c1		e85a13faff		CALL CAS-Backend/pkg/diapdu.GetActiveMapInfo(SB)							
  map_controller.go:552	0xe822c6		88842418010000		MOVB AL, 0x118(SP)											
  map_controller.go:552	0xe822cd		48899c2420010000	MOVQ BX, 0x120(SP)											
  map_controller.go:552	0xe822d5		48898c2428010000	MOVQ CX, 0x128(SP)											
  map_controller.go:552	0xe822dd		4889bc2430010000	MOVQ DI, 0x130(SP)											
  map_controller.go:552	0xe822e5		4889b42438010000	MOVQ SI, 0x138(SP)											
  map_controller.go:552	0xe822ed		488b842418010000	MOVQ 0x118(SP), AX											
  map_controller.go:552	0xe822f5		4889442450		MOVQ AX, 0x50(SP)											
  map_controller.go:552	0xe822fa		0f10842420010000	MOVUPS 0x120(SP), X0											
  map_controller.go:552	0xe82302		0f11442458		MOVUPS X0, 0x58(SP)											
  map_controller.go:552	0xe82307		0f10842430010000	MOVUPS 0x130(SP), X0											
  map_controller.go:552	0xe8230f		0f11442468		MOVUPS X0, 0x68(SP)											
  map_controller.go:553	0xe82314		e8c78c5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:553	0xe82319		4889842410010000	MOVQ AX, 0x110(SP)											
  map_controller.go:553	0xe82321		4889c3			MOVQ AX, BX												
  map_controller.go:553	0xe82324		488d0d61732e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:553	0xe8232b		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:553	0xe82330		488d0549252200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:553	0xe82337		e8e4bc5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:553	0xe8233c		488d0d1d081c00		LEAQ runtime.types+383840(SB), CX									
  map_controller.go:553	0xe82343		488908			MOVQ CX, 0(AX)												
  map_controller.go:553	0xe82346		833d03b86d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:553	0xe8234d		740c			JE 0xe8235b												
  map_controller.go:553	0xe8234f		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:553	0xe82353		e8c8605fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:553	0xe82358		498913			MOVQ DX, 0(R11)												
  map_controller.go:553	0xe8235b		488d15ce54fe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  map_controller.go:553	0xe82362		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:553	0xe82366		488d0513252200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:553	0xe8236d		488b9c2410010000	MOVQ 0x110(SP), BX											
  map_controller.go:553	0xe82375		488d0dd8662e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:553	0xe8237c		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:553	0xe82381		e89abc5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:553	0xe82386		488d1593051c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:553	0xe8238d		488910			MOVQ DX, 0(AX)												
  map_controller.go:553	0xe82390		833db9b76d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:553	0xe82397		740f			JE 0xe823a8												
  map_controller.go:553	0xe82399		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:553	0xe8239d		0f1f00			NOPL 0(AX)												
  map_controller.go:553	0xe823a0		e87b605fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:553	0xe823a5		49890b			MOVQ CX, 0(R11)												
  map_controller.go:553	0xe823a8		488d0d9167fe01		LEAQ CAS-Backend/biz/controller..stmp_147(SB), CX							
  map_controller.go:553	0xe823af		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:556	0xe823b3		488b442458		MOVQ 0x58(SP), AX											
  map_controller.go:556	0xe823b8		488b5c2460		MOVQ 0x60(SP), BX											
  map_controller.go:556	0xe823bd		0f1f00			NOPL 0(AX)												
  map_controller.go:556	0xe823c0		e85b7d5eff		CALL runtime.convTstring(SB)										
  map_controller.go:556	0xe823c5		4889842408010000	MOVQ AX, 0x108(SP)											
  map_controller.go:553	0xe823cd		488b9c2410010000	MOVQ 0x110(SP), BX											
  map_controller.go:553	0xe823d5		488d0d2a092f00		LEAQ go:string.*+43006(SB), CX										
  map_controller.go:553	0xe823dc		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:553	0xe823e1		488d0598242200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:553	0xe823e8		e833bc5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:553	0xe823ed		488d0d2c051c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:553	0xe823f4		488908			MOVQ CX, 0(AX)												
  map_controller.go:553	0xe823f7		833d52b76d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:553	0xe823fe		6690			NOPW													
  map_controller.go:553	0xe82400		750a			JNE 0xe8240c												
  map_controller.go:553	0xe82402		488b8c2408010000	MOVQ 0x108(SP), CX											
  map_controller.go:553	0xe8240a		eb18			JMP 0xe82424												
  map_controller.go:553	0xe8240c		e82f605fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:553	0xe82411		488b8c2408010000	MOVQ 0x108(SP), CX											
  map_controller.go:553	0xe82419		49890b			MOVQ CX, 0(R11)												
  map_controller.go:553	0xe8241c		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:553	0xe82420		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:553	0xe82424		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe82428		488d0d51242200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe8242f		48898c24e8000000	MOVQ CX, 0xe8(SP)											
  context.go:1005	0xe82437		488b8c2410010000	MOVQ 0x110(SP), CX											
  context.go:1005	0xe8243f		48898c24f0000000	MOVQ CX, 0xf0(SP)											
  context.go:1005	0xe82447		488d05929a2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe8244e		488d9c24e8000000	LEAQ 0xe8(SP), BX											
  context.go:1005	0xe82456		e845cc58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe8245b		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe82460		488d0dc9cdfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe82467		4889c7			MOVQ AX, DI												
  context.go:1005	0xe8246a		488b842458010000	MOVQ 0x158(SP), AX											
  context.go:1005	0xe82472		e8e9d2f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:559	0xe82477		4881c448010000		ADDQ $.file+251(SB), SP											
  map_controller.go:559	0xe8247e		5d			POPQ BP													
  map_controller.go:559	0xe8247f		90			NOPL													
  map_controller.go:559	0xe82480		c3			RET													
  context.go:752	0xe82481		48895c2448		MOVQ BX, 0x48(SP)											
  context.go:752	0xe82486		4889442438		MOVQ AX, 0x38(SP)											
  map_controller.go:523	0xe8248b		488d158e041c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:523	0xe82492		48899424d8000000	MOVQ DX, 0xd8(SP)											
  map_controller.go:523	0xe8249a		488d152f63fe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  map_controller.go:523	0xe824a1		48899424e0000000	MOVQ DX, 0xe0(SP)											
  print.go:314		0xe824a9		488b1dd0fb6802		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe824b0		488d052996fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe824b7		488d8c24d8000000	LEAQ 0xd8(SP), CX											
  print.go:314		0xe824bf		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe824c4		4889fe			MOVQ DI, SI												
  print.go:314		0xe824c7		e894d369ff		CALL fmt.Fprintln(SB)											
  map_controller.go:524	0xe824cc		488b842458010000	MOVQ 0x158(SP), AX											
  map_controller.go:524	0xe824d4		bb90010000		MOVL $.file+323(SB), BX											
  map_controller.go:524	0xe824d9		488b4c2438		MOVQ 0x38(SP), CX											
  map_controller.go:524	0xe824de		488b7c2448		MOVQ 0x48(SP), DI											
  map_controller.go:524	0xe824e3		e8b88bf7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  map_controller.go:525	0xe824e8		4881c448010000		ADDQ $.file+251(SB), SP											
  map_controller.go:525	0xe824ef		5d			POPQ BP													
  map_controller.go:525	0xe824f0		c3			RET													
  context.go:712	0xe824f1		4d89ca			MOVQ R9, R10												
  context.go:712	0xe824f4		4d21c1			ANDQ R8, R9												
  context.go:712	0xe824f7		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712	0xe824fb		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712	0xe82500		4939db			CMPQ R11, BX												
  context.go:712	0xe82503		7438			JE 0xe8253d												
  context.go:712	0xe82505		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712	0xe82509		4d85db			TESTQ R11, R11												
  context.go:712	0xe8250c		75e3			JNE 0xe824f1												
  context.go:712	0xe8250e		4889942480000000	MOVQ DX, 0x80(SP)											
  context.go:712	0xe82516		488d05b38d1300		LEAQ CAS-Backend/biz/controller..typeAssert.25(SB), AX							
  context.go:712	0xe8251d		0f1f00			NOPL 0(AX)												
  context.go:712	0xe82520		e8bbcd58ff		CALL runtime.typeAssert(SB)										
  context.go:752	0xe82525		488b942480000000	MOVQ 0x80(SP), DX											
  context.go:712	0xe8252d		4889c1			MOVQ AX, CX												
  context.go:752	0xe82530		488b842440010000	MOVQ 0x140(SP), AX											
  context.go:712	0xe82538		e988f8ffff		JMP 0xe81dc5												
  context.go:712	0xe8253d		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712	0xe82542		e97ef8ffff		JMP 0xe81dc5												
  map_controller.go:519	0xe82547		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:519	0xe8254c		e88f3f5fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:519	0xe82551		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:519	0xe82556		e905f8ffff		JMP CAS-Backend/biz/controller.UploadLoadMapHandler(SB)							
  :-1			0xe8255b		cc			INT $__subsystem__(SB)											
  :-1			0xe8255c		cc			INT $__subsystem__(SB)											
  :-1			0xe8255d		cc			INT $__subsystem__(SB)											
  :-1			0xe8255e		cc			INT $__subsystem__(SB)											
  :-1			0xe8255f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.UploadLoadMapHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:531	0xe82560		493b6610		CMPQ SP, 0x10(R14)						
  map_controller.go:531	0xe82564		7629			JBE 0xe8258f							
  map_controller.go:531	0xe82566		55			PUSHQ BP							
  map_controller.go:531	0xe82567		4889e5			MOVQ SP, BP							
  map_controller.go:531	0xe8256a		4883ec20		SUBQ $__major_os_version__+26(SB), SP				
  map_controller.go:531	0xe8256e		4889442430		MOVQ AX, 0x30(SP)						
  map_controller.go:531	0xe82573		48895c2438		MOVQ BX, 0x38(SP)						
  map_controller.go:531	0xe82578		488b5208		MOVQ 0x8(DX), DX						
  map_controller.go:532	0xe8257c		488b4a20		MOVQ 0x20(DX), CX						
  map_controller.go:532	0xe82580		488b7a28		MOVQ 0x28(DX), DI						
  map_controller.go:532	0xe82584		e897d1f9ff		CALL CAS-Backend/pkg/agvcontrol.SendUploadAndLoadMapCommand(SB)	
  map_controller.go:532	0xe82589		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  map_controller.go:532	0xe8258d		5d			POPQ BP								
  map_controller.go:532	0xe8258e		c3			RET								
  map_controller.go:531	0xe8258f		4889442408		MOVQ AX, 0x8(SP)						
  map_controller.go:531	0xe82594		48895c2410		MOVQ BX, 0x10(SP)						
  map_controller.go:531	0xe82599		e8c23e5fff		CALL runtime.morestack.abi0(SB)					
  map_controller.go:531	0xe8259e		488b442408		MOVQ 0x8(SP), AX						
  map_controller.go:531	0xe825a3		488b5c2410		MOVQ 0x10(SP), BX						
  map_controller.go:531	0xe825a8		ebb6			JMP CAS-Backend/biz/controller.UploadLoadMapHandler.func1(SB)	
  :-1			0xe825aa		cc			INT $__subsystem__(SB)						
  :-1			0xe825ab		cc			INT $__subsystem__(SB)						
  :-1			0xe825ac		cc			INT $__subsystem__(SB)						
  :-1			0xe825ad		cc			INT $__subsystem__(SB)						
  :-1			0xe825ae		cc			INT $__subsystem__(SB)						
  :-1			0xe825af		cc			INT $__subsystem__(SB)						
  :-1			0xe825b0		cc			INT $__subsystem__(SB)						
  :-1			0xe825b1		cc			INT $__subsystem__(SB)						
  :-1			0xe825b2		cc			INT $__subsystem__(SB)						
  :-1			0xe825b3		cc			INT $__subsystem__(SB)						
  :-1			0xe825b4		cc			INT $__subsystem__(SB)						
  :-1			0xe825b5		cc			INT $__subsystem__(SB)						
  :-1			0xe825b6		cc			INT $__subsystem__(SB)						
  :-1			0xe825b7		cc			INT $__subsystem__(SB)						
  :-1			0xe825b8		cc			INT $__subsystem__(SB)						
  :-1			0xe825b9		cc			INT $__subsystem__(SB)						
  :-1			0xe825ba		cc			INT $__subsystem__(SB)						
  :-1			0xe825bb		cc			INT $__subsystem__(SB)						
  :-1			0xe825bc		cc			INT $__subsystem__(SB)						
  :-1			0xe825bd		cc			INT $__subsystem__(SB)						
  :-1			0xe825be		cc			INT $__subsystem__(SB)						
  :-1			0xe825bf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.DelVehMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:561	0xe825c0		4c8d6424a8		LEAQ -0x58(SP), R12											
  map_controller.go:561	0xe825c5		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:561	0xe825c9		0f8660040000		JBE 0xe82a2f												
  map_controller.go:561	0xe825cf		55			PUSHQ BP												
  map_controller.go:561	0xe825d0		4889e5			MOVQ SP, BP												
  map_controller.go:561	0xe825d3		4881ecd0000000		SUBQ $.file+131(SB), SP											
  context.go:712	0xe825da		48898424e0000000	MOVQ AX, 0xe0(SP)											
  map_controller.go:562	0xe825e2		488d05d7362500		LEAQ runtime.types+986304(SB), AX									
  map_controller.go:562	0xe825e9		e8b2f158ff		CALL runtime.newobject(SB)										
  map_controller.go:562	0xe825ee		48898424c8000000	MOVQ AX, 0xc8(SP)											
  context.go:712	0xe825f6		488b0de3511300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712	0xe825fd		488b15e4511300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712	0xe82604		4885c9			TESTQ CX, CX												
  context.go:712	0xe82607		741c			JE 0xe82625												
  context.go:712	0xe82609		488b5908		MOVQ 0x8(CX), BX											
  context.go:712	0xe8260d		488b35dc8c1300		MOVQ CAS-Backend/biz/controller..typeAssert.26(SB), SI							
  context.go:712	0xe82614		4c8b06			MOVQ 0(SI), R8												
  context.go:712	0xe82617		448b4910		MOVL 0x10(CX), R9											
  context.go:712	0xe8261b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712	0xe82620		e9b9030000		JMP 0xe829de												
  context.go:752	0xe82625		488b7118		MOVQ 0x18(CX), SI											
  context.go:752	0xe82629		4c8b8424e0000000	MOVQ 0xe0(SP), R8											
  context.go:752	0xe82631		498b5820		MOVQ 0x20(R8), BX											
  context.go:752	0xe82635		488d0da4411a00		LEAQ runtime.types+268256(SB), CX									
  context.go:752	0xe8263c		4889c7			MOVQ AX, DI												
  context.go:752	0xe8263f		4889d0			MOVQ DX, AX												
  context.go:752	0xe82642		ffd6			CALL SI													
  map_controller.go:564	0xe82644		4885c0			TESTQ AX, AX												
  map_controller.go:564	0xe82647		0f8521030000		JNE 0xe8296e												
  map_controller.go:570	0xe8264d		440f117c2478		MOVUPS X15, 0x78(SP)											
  map_controller.go:570	0xe82653		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:570	0xe8265b		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:570	0xe8265f		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:570	0xe82663		e8b87a5eff		CALL runtime.convTstring(SB)										
  map_controller.go:570	0xe82668		488d0db1021c00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:570	0xe8266f		48894c2478		MOVQ CX, 0x78(SP)											
  map_controller.go:570	0xe82674		4889842480000000	MOVQ AX, 0x80(SP)											
  print.go:233		0xe8267c		488b1dfdf96802		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe82683		488d055694fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe8268a		bf11000000		MOVL $__major_os_version__+11(SB), DI									
  print.go:233		0xe8268f		488d742478		LEAQ 0x78(SP), SI											
  print.go:233		0xe82694		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe8269a		4d89c1			MOVQ R8, R9												
  print.go:233		0xe8269d		488d0deda52f00		LEAQ go:string.*+83849(SB), CX										
  print.go:233		0xe826a4		e877cb69ff		CALL fmt.Fprintf(SB)											
  map_controller.go:572	0xe826a9		c644243f00		MOVB $0x0, 0x3f(SP)											
  map_controller.go:573	0xe826ae		488d0dab030000		LEAQ CAS-Backend/biz/controller.DelVehMapHandler.func1(SB), CX						
  map_controller.go:573	0xe826b5		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  map_controller.go:573	0xe826bd		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:573	0xe826c5		48898c24b0000000	MOVQ CX, 0xb0(SP)											
  map_controller.go:573	0xe826cd		488d54243f		LEAQ 0x3f(SP), DX											
  map_controller.go:573	0xe826d2		48899424b8000000	MOVQ DX, 0xb8(SP)											
  map_controller.go:573	0xe826da		488b01			MOVQ 0(CX), AX												
  map_controller.go:573	0xe826dd		488b5908		MOVQ 0x8(CX), BX											
  map_controller.go:573	0xe826e1		b9074b0000		MOVL $__size_of_stack_commit__+15111(SB), CX								
  map_controller.go:573	0xe826e6		488dbc24a8000000	LEAQ 0xa8(SP), DI											
  map_controller.go:573	0xe826ee		e80d0ff9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  map_controller.go:578	0xe826f3		807c243f00		CMPB 0x3f(SP), $0x0											
  map_controller.go:578	0xe826f8		0f8539010000		JNE 0xe82837												
  map_controller.go:586	0xe826fe		440f117c2458		MOVUPS X15, 0x58(SP)											
  map_controller.go:586	0xe82704		4885c0			TESTQ AX, AX												
  map_controller.go:586	0xe82707		7404			JE 0xe8270d												
  map_controller.go:586	0xe82709		488b4008		MOVQ 0x8(AX), AX											
  map_controller.go:586	0xe8270d		4889442458		MOVQ AX, 0x58(SP)											
  map_controller.go:586	0xe82712		48895c2460		MOVQ BX, 0x60(SP)											
  print.go:233		0xe82717		488b1d62f96802		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe8271e		488d05bb93fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe82725		488d0dd0822f00		LEAQ go:string.*+74996(SB), CX										
  print.go:233		0xe8272c		bf0f000000		MOVL $__major_os_version__+9(SB), DI									
  print.go:233		0xe82731		488d742458		LEAQ 0x58(SP), SI											
  print.go:233		0xe82736		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe8273c		4d89c1			MOVQ R8, R9												
  print.go:233		0xe8273f		90			NOPL													
  print.go:233		0xe82740		e8dbca69ff		CALL fmt.Fprintf(SB)											
  map_controller.go:587	0xe82745		e896885eff		CALL runtime.makemap_small(SB)										
  map_controller.go:587	0xe8274a		48898424c0000000	MOVQ AX, 0xc0(SP)											
  map_controller.go:587	0xe82752		4889c3			MOVQ AX, BX												
  map_controller.go:587	0xe82755		488d0d306f2e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:587	0xe8275c		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:587	0xe82761		488d0518212200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:587	0xe82768		e8b3b85eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:587	0xe8276d		488d15ec031c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:587	0xe82774		488910			MOVQ DX, 0(AX)												
  map_controller.go:587	0xe82777		833dd2b36d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:587	0xe8277e		6690			NOPW													
  map_controller.go:587	0xe82780		740c			JE 0xe8278e												
  map_controller.go:587	0xe82782		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:587	0xe82786		e8955c5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:587	0xe8278b		498913			MOVQ DX, 0(R11)												
  map_controller.go:587	0xe8278e		488d152b23fe01		LEAQ runtime.gcbits.*(SB), DX										
  map_controller.go:587	0xe82795		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:587	0xe82799		488d05e0202200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:587	0xe827a0		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:587	0xe827a8		488d0da5622e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:587	0xe827af		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:587	0xe827b4		e867b85eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:587	0xe827b9		488d1560011c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:587	0xe827c0		488910			MOVQ DX, 0(AX)												
  map_controller.go:587	0xe827c3		833d86b36d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:587	0xe827ca		740c			JE 0xe827d8												
  map_controller.go:587	0xe827cc		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:587	0xe827d0		e84b5c5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:587	0xe827d5		49890b			MOVQ CX, 0(R11)												
  map_controller.go:587	0xe827d8		488d0d8163fe01		LEAQ CAS-Backend/biz/controller..stmp_156(SB), CX							
  map_controller.go:587	0xe827df		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe827e3		488d0d96202200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe827ea		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005	0xe827f2		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  context.go:1005	0xe827fa		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005	0xe82802		488d05d7962400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe82809		488d9c2498000000	LEAQ 0x98(SP), BX											
  context.go:1005	0xe82811		e88ac858ff		CALL runtime.convT(SB)											
  context.go:1005	0xe82816		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe8281b		488d0d0ecafe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe82822		4889c7			MOVQ AX, DI												
  context.go:1005	0xe82825		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:1005	0xe8282d		e82ecff7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:593	0xe82832		e92e010000		JMP 0xe82965												
  map_controller.go:579	0xe82837		488d15e2001c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:579	0xe8283e		4889542468		MOVQ DX, 0x68(SP)											
  map_controller.go:579	0xe82843		4c8d050663fe01		LEAQ CAS-Backend/biz/controller..stmp_152(SB), R8							
  map_controller.go:579	0xe8284a		4c89442470		MOVQ R8, 0x70(SP)											
  print.go:314		0xe8284f		488b1d2af86802		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe82856		488d058392fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe8285d		488d4c2468		LEAQ 0x68(SP), CX											
  print.go:314		0xe82862		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe82867		4889fe			MOVQ DI, SI												
  print.go:314		0xe8286a		e8f1cf69ff		CALL fmt.Fprintln(SB)											
  map_controller.go:581	0xe8286f		e86c875eff		CALL runtime.makemap_small(SB)										
  map_controller.go:581	0xe82874		48898424c0000000	MOVQ AX, 0xc0(SP)											
  map_controller.go:581	0xe8287c		4889c3			MOVQ AX, BX												
  map_controller.go:581	0xe8287f		488d0d066e2e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:581	0xe82886		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:581	0xe8288b		488d05ee1f2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:581	0xe82892		e889b75eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:581	0xe82897		488d15c2021c00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:581	0xe8289e		488910			MOVQ DX, 0(AX)												
  map_controller.go:581	0xe828a1		833da8b26d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:581	0xe828a8		740c			JE 0xe828b6												
  map_controller.go:581	0xe828aa		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:581	0xe828ae		e86d5b5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:581	0xe828b3		498913			MOVQ DX, 0(R11)												
  map_controller.go:581	0xe828b6		488d15734ffe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  map_controller.go:581	0xe828bd		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:581	0xe828c1		488d05b81f2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:581	0xe828c8		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:581	0xe828d0		488d0d7d612e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:581	0xe828d7		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:581	0xe828dc		0f1f4000		NOPL 0(AX)												
  map_controller.go:581	0xe828e0		e83bb75eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:581	0xe828e5		488d1534001c00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:581	0xe828ec		488910			MOVQ DX, 0(AX)												
  map_controller.go:581	0xe828ef		833d5ab26d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:581	0xe828f6		7410			JE 0xe82908												
  map_controller.go:581	0xe828f8		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:581	0xe828fc		0f1f4000		NOPL 0(AX)												
  map_controller.go:581	0xe82900		e81b5b5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:581	0xe82905		49890b			MOVQ CX, 0(R11)												
  map_controller.go:581	0xe82908		488d0d4162fe01		LEAQ CAS-Backend/biz/controller..stmp_152(SB), CX							
  map_controller.go:581	0xe8290f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe82913		488d0d661f2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe8291a		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005	0xe82922		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  context.go:1005	0xe8292a		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005	0xe82932		488d05a7952400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe82939		488d9c2498000000	LEAQ 0x98(SP), BX											
  context.go:1005	0xe82941		e85ac758ff		CALL runtime.convT(SB)											
  context.go:1005	0xe82946		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe8294b		488d0ddec8fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe82952		4889c7			MOVQ AX, DI												
  context.go:1005	0xe82955		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:1005	0xe8295d		0f1f00			NOPL 0(AX)												
  context.go:1005	0xe82960		e8fbcdf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:593	0xe82965		4881c4d0000000		ADDQ $.file+131(SB), SP											
  map_controller.go:593	0xe8296c		5d			POPQ BP													
  map_controller.go:593	0xe8296d		c3			RET													
  context.go:752	0xe8296e		48895c2448		MOVQ BX, 0x48(SP)											
  context.go:752	0xe82973		4889442440		MOVQ AX, 0x40(SP)											
  map_controller.go:565	0xe82978		488d15a1ff1b00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:565	0xe8297f		4889942488000000	MOVQ DX, 0x88(SP)											
  map_controller.go:565	0xe82987		488d15425efe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  map_controller.go:565	0xe8298e		4889942490000000	MOVQ DX, 0x90(SP)											
  print.go:314		0xe82996		488b1de3f66802		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe8299d		488d053c91fe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe829a4		488d8c2488000000	LEAQ 0x88(SP), CX											
  print.go:314		0xe829ac		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe829b1		4889fe			MOVQ DI, SI												
  print.go:314		0xe829b4		e8a7ce69ff		CALL fmt.Fprintln(SB)											
  map_controller.go:566	0xe829b9		488b8424e0000000	MOVQ 0xe0(SP), AX											
  map_controller.go:566	0xe829c1		bb90010000		MOVL $.file+323(SB), BX											
  map_controller.go:566	0xe829c6		488b4c2440		MOVQ 0x40(SP), CX											
  map_controller.go:566	0xe829cb		488b7c2448		MOVQ 0x48(SP), DI											
  map_controller.go:566	0xe829d0		e8cb86f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  map_controller.go:567	0xe829d5		4881c4d0000000		ADDQ $.file+131(SB), SP											
  map_controller.go:567	0xe829dc		5d			POPQ BP													
  map_controller.go:567	0xe829dd		c3			RET													
  context.go:712	0xe829de		4d89ca			MOVQ R9, R10												
  context.go:712	0xe829e1		4d21c1			ANDQ R8, R9												
  context.go:712	0xe829e4		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712	0xe829e8		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712	0xe829ed		4939db			CMPQ R11, BX												
  context.go:712	0xe829f0		7433			JE 0xe82a25												
  context.go:712	0xe829f2		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712	0xe829f6		4d85db			TESTQ R11, R11												
  context.go:712	0xe829f9		75e3			JNE 0xe829de												
  context.go:712	0xe829fb		4889542450		MOVQ DX, 0x50(SP)											
  context.go:712	0xe82a00		488d05e9881300		LEAQ CAS-Backend/biz/controller..typeAssert.26(SB), AX							
  context.go:712	0xe82a07		e8d4c858ff		CALL runtime.typeAssert(SB)										
  context.go:752	0xe82a0c		488b542450		MOVQ 0x50(SP), DX											
  context.go:712	0xe82a11		4889c1			MOVQ AX, CX												
  context.go:752	0xe82a14		488b8424c8000000	MOVQ 0xc8(SP), AX											
  context.go:752	0xe82a1c		0f1f4000		NOPL 0(AX)												
  context.go:712	0xe82a20		e900fcffff		JMP 0xe82625												
  context.go:712	0xe82a25		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712	0xe82a2a		e9f6fbffff		JMP 0xe82625												
  map_controller.go:561	0xe82a2f		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:561	0xe82a34		e8a73a5fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:561	0xe82a39		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:561	0xe82a3e		6690			NOPW													
  map_controller.go:561	0xe82a40		e97bfbffff		JMP CAS-Backend/biz/controller.DelVehMapHandler(SB)							
  :-1			0xe82a45		cc			INT $__subsystem__(SB)											
  :-1			0xe82a46		cc			INT $__subsystem__(SB)											
  :-1			0xe82a47		cc			INT $__subsystem__(SB)											
  :-1			0xe82a48		cc			INT $__subsystem__(SB)											
  :-1			0xe82a49		cc			INT $__subsystem__(SB)											
  :-1			0xe82a4a		cc			INT $__subsystem__(SB)											
  :-1			0xe82a4b		cc			INT $__subsystem__(SB)											
  :-1			0xe82a4c		cc			INT $__subsystem__(SB)											
  :-1			0xe82a4d		cc			INT $__subsystem__(SB)											
  :-1			0xe82a4e		cc			INT $__subsystem__(SB)											
  :-1			0xe82a4f		cc			INT $__subsystem__(SB)											
  :-1			0xe82a50		cc			INT $__subsystem__(SB)											
  :-1			0xe82a51		cc			INT $__subsystem__(SB)											
  :-1			0xe82a52		cc			INT $__subsystem__(SB)											
  :-1			0xe82a53		cc			INT $__subsystem__(SB)											
  :-1			0xe82a54		cc			INT $__subsystem__(SB)											
  :-1			0xe82a55		cc			INT $__subsystem__(SB)											
  :-1			0xe82a56		cc			INT $__subsystem__(SB)											
  :-1			0xe82a57		cc			INT $__subsystem__(SB)											
  :-1			0xe82a58		cc			INT $__subsystem__(SB)											
  :-1			0xe82a59		cc			INT $__subsystem__(SB)											
  :-1			0xe82a5a		cc			INT $__subsystem__(SB)											
  :-1			0xe82a5b		cc			INT $__subsystem__(SB)											
  :-1			0xe82a5c		cc			INT $__subsystem__(SB)											
  :-1			0xe82a5d		cc			INT $__subsystem__(SB)											
  :-1			0xe82a5e		cc			INT $__subsystem__(SB)											
  :-1			0xe82a5f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.DelVehMapHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:573	0xe82a60		493b6610		CMPQ SP, 0x10(R14)						
  map_controller.go:573	0xe82a64		763f			JBE 0xe82aa5							
  map_controller.go:573	0xe82a66		55			PUSHQ BP							
  map_controller.go:573	0xe82a67		4889e5			MOVQ SP, BP							
  map_controller.go:573	0xe82a6a		4883ec28		SUBQ $__major_os_version__+34(SB), SP				
  map_controller.go:573	0xe82a6e		4889442438		MOVQ AX, 0x38(SP)						
  map_controller.go:573	0xe82a73		48895c2440		MOVQ BX, 0x40(SP)						
  map_controller.go:573	0xe82a78		488b7210		MOVQ 0x10(DX), SI						
  map_controller.go:573	0xe82a7c		4889742420		MOVQ SI, 0x20(SP)						
  map_controller.go:573	0xe82a81		488b5208		MOVQ 0x8(DX), DX						
  map_controller.go:574	0xe82a85		488b4a10		MOVQ 0x10(DX), CX						
  map_controller.go:574	0xe82a89		488b7a18		MOVQ 0x18(DX), DI						
  map_controller.go:574	0xe82a8d		e82eedf9ff		CALL CAS-Backend/pkg/agvcontrol.DelMapRequest(SB)		
  map_controller.go:575	0xe82a92		488b542420		MOVQ 0x20(SP), DX						
  map_controller.go:575	0xe82a97		8802			MOVB AL, 0(DX)							
  map_controller.go:576	0xe82a99		4889d8			MOVQ BX, AX							
  map_controller.go:576	0xe82a9c		4889cb			MOVQ CX, BX							
  map_controller.go:576	0xe82a9f		4883c428		ADDQ $__major_os_version__+34(SB), SP				
  map_controller.go:576	0xe82aa3		5d			POPQ BP								
  map_controller.go:576	0xe82aa4		c3			RET								
  map_controller.go:573	0xe82aa5		4889442408		MOVQ AX, 0x8(SP)						
  map_controller.go:573	0xe82aaa		48895c2410		MOVQ BX, 0x10(SP)						
  map_controller.go:573	0xe82aaf		e8ac395fff		CALL runtime.morestack.abi0(SB)					
  map_controller.go:573	0xe82ab4		488b442408		MOVQ 0x8(SP), AX						
  map_controller.go:573	0xe82ab9		488b5c2410		MOVQ 0x10(SP), BX						
  map_controller.go:573	0xe82abe		6690			NOPW								
  map_controller.go:573	0xe82ac0		eb9e			JMP CAS-Backend/biz/controller.DelVehMapHandler.func1(SB)	
  :-1			0xe82ac2		cc			INT $__subsystem__(SB)						
  :-1			0xe82ac3		cc			INT $__subsystem__(SB)						
  :-1			0xe82ac4		cc			INT $__subsystem__(SB)						
  :-1			0xe82ac5		cc			INT $__subsystem__(SB)						
  :-1			0xe82ac6		cc			INT $__subsystem__(SB)						
  :-1			0xe82ac7		cc			INT $__subsystem__(SB)						
  :-1			0xe82ac8		cc			INT $__subsystem__(SB)						
  :-1			0xe82ac9		cc			INT $__subsystem__(SB)						
  :-1			0xe82aca		cc			INT $__subsystem__(SB)						
  :-1			0xe82acb		cc			INT $__subsystem__(SB)						
  :-1			0xe82acc		cc			INT $__subsystem__(SB)						
  :-1			0xe82acd		cc			INT $__subsystem__(SB)						
  :-1			0xe82ace		cc			INT $__subsystem__(SB)						
  :-1			0xe82acf		cc			INT $__subsystem__(SB)						
  :-1			0xe82ad0		cc			INT $__subsystem__(SB)						
  :-1			0xe82ad1		cc			INT $__subsystem__(SB)						
  :-1			0xe82ad2		cc			INT $__subsystem__(SB)						
  :-1			0xe82ad3		cc			INT $__subsystem__(SB)						
  :-1			0xe82ad4		cc			INT $__subsystem__(SB)						
  :-1			0xe82ad5		cc			INT $__subsystem__(SB)						
  :-1			0xe82ad6		cc			INT $__subsystem__(SB)						
  :-1			0xe82ad7		cc			INT $__subsystem__(SB)						
  :-1			0xe82ad8		cc			INT $__subsystem__(SB)						
  :-1			0xe82ad9		cc			INT $__subsystem__(SB)						
  :-1			0xe82ada		cc			INT $__subsystem__(SB)						
  :-1			0xe82adb		cc			INT $__subsystem__(SB)						
  :-1			0xe82adc		cc			INT $__subsystem__(SB)						
  :-1			0xe82add		cc			INT $__subsystem__(SB)						
  :-1			0xe82ade		cc			INT $__subsystem__(SB)						
  :-1			0xe82adf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/controller.QMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:595	0xe82ae0		4c8d6424a8		LEAQ -0x58(SP), R12											
  map_controller.go:595	0xe82ae5		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:595	0xe82ae9		0f8620050000		JBE 0xe8300f												
  map_controller.go:595	0xe82aef		55			PUSHQ BP												
  map_controller.go:595	0xe82af0		4889e5			MOVQ SP, BP												
  map_controller.go:595	0xe82af3		4881ecd0000000		SUBQ $.file+131(SB), SP											
  context.go:712	0xe82afa		48898424e0000000	MOVQ AX, 0xe0(SP)											
  map_controller.go:596	0xe82b02		488d0537bb2900		LEAQ runtime.types+1283648(SB), AX									
  map_controller.go:596	0xe82b09		e892ec58ff		CALL runtime.newobject(SB)										
  map_controller.go:596	0xe82b0e		48898424c8000000	MOVQ AX, 0xc8(SP)											
  context.go:712	0xe82b16		488b0dc34c1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712	0xe82b1d		488b15c44c1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712	0xe82b24		4885c9			TESTQ CX, CX												
  context.go:712	0xe82b27		741c			JE 0xe82b45												
  context.go:712	0xe82b29		488b5908		MOVQ 0x8(CX), BX											
  context.go:712	0xe82b2d		488b35dc871300		MOVQ CAS-Backend/biz/controller..typeAssert.27(SB), SI							
  context.go:712	0xe82b34		4c8b06			MOVQ 0(SI), R8												
  context.go:712	0xe82b37		448b4910		MOVL 0x10(CX), R9											
  context.go:712	0xe82b3b		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712	0xe82b40		e979040000		JMP 0xe82fbe												
  context.go:752	0xe82b45		488b7118		MOVQ 0x18(CX), SI											
  context.go:752	0xe82b49		4c8b8424e0000000	MOVQ 0xe0(SP), R8											
  context.go:752	0xe82b51		498b5820		MOVQ 0x20(R8), BX											
  context.go:752	0xe82b55		488d0d843b1a00		LEAQ runtime.types+268000(SB), CX									
  context.go:752	0xe82b5c		4889c7			MOVQ AX, DI												
  context.go:752	0xe82b5f		4889d0			MOVQ DX, AX												
  context.go:752	0xe82b62		ffd6			CALL SI													
  map_controller.go:598	0xe82b64		4885c0			TESTQ AX, AX												
  map_controller.go:598	0xe82b67		0f85e1030000		JNE 0xe82f4e												
  map_controller.go:604	0xe82b6d		440f117c2478		MOVUPS X15, 0x78(SP)											
  map_controller.go:604	0xe82b73		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:604	0xe82b7b		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:604	0xe82b7f		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:604	0xe82b83		e898755eff		CALL runtime.convTstring(SB)										
  map_controller.go:604	0xe82b88		488d0d91fd1b00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:604	0xe82b8f		48894c2478		MOVQ CX, 0x78(SP)											
  map_controller.go:604	0xe82b94		4889842480000000	MOVQ AX, 0x80(SP)											
  print.go:314		0xe82b9c		488b1dddf46802		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe82ba3		488d05368ffe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe82baa		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe82baf		4889fe			MOVQ DI, SI												
  print.go:314		0xe82bb2		488d4c2478		LEAQ 0x78(SP), CX											
  print.go:314		0xe82bb7		e8a4cc69ff		CALL fmt.Fprintln(SB)											
  map_controller.go:606	0xe82bbc		48c744244800000000	MOVQ $0x0, 0x48(SP)											
  map_controller.go:607	0xe82bc5		488d0d74040000		LEAQ CAS-Backend/biz/controller.QMapHandler.func1(SB), CX						
  map_controller.go:607	0xe82bcc		48898c24a8000000	MOVQ CX, 0xa8(SP)											
  map_controller.go:607	0xe82bd4		488d4c2448		LEAQ 0x48(SP), CX											
  map_controller.go:607	0xe82bd9		48898c24b0000000	MOVQ CX, 0xb0(SP)											
  map_controller.go:607	0xe82be1		488b8c24c8000000	MOVQ 0xc8(SP), CX											
  map_controller.go:607	0xe82be9		488b4110		MOVQ 0x10(CX), AX											
  map_controller.go:607	0xe82bed		488b5918		MOVQ 0x18(CX), BX											
  map_controller.go:607	0xe82bf1		b9044b0000		MOVL $__size_of_stack_commit__+15108(SB), CX								
  map_controller.go:607	0xe82bf6		488dbc24a8000000	LEAQ 0xa8(SP), DI											
  map_controller.go:607	0xe82bfe		6690			NOPW													
  map_controller.go:607	0xe82c00		e8fb09f9ff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)								
  map_controller.go:615	0xe82c05		4885c0			TESTQ AX, AX												
  map_controller.go:615	0xe82c08		0f8483010000		JE 0xe82d91												
  map_controller.go:616	0xe82c0e		440f117c2468		MOVUPS X15, 0x68(SP)											
  map_controller.go:616	0xe82c14		7404			JE 0xe82c1a												
  map_controller.go:616	0xe82c16		488b4008		MOVQ 0x8(AX), AX											
  map_controller.go:616	0xe82c1a		4889442468		MOVQ AX, 0x68(SP)											
  map_controller.go:616	0xe82c1f		48895c2470		MOVQ BX, 0x70(SP)											
  print.go:233		0xe82c24		488b1d55f46802		MOVQ os.Stdout(SB), BX											
  print.go:233		0xe82c2b		488d05ae8efe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:233		0xe82c32		488d0d7a8b2f00		LEAQ go:string.*+78507(SB), CX										
  print.go:233		0xe82c39		bf10000000		MOVL $__major_os_version__+10(SB), DI									
  print.go:233		0xe82c3e		488d742468		LEAQ 0x68(SP), SI											
  print.go:233		0xe82c43		41b801000000		MOVL $__minor_os_version__(SB), R8									
  print.go:233		0xe82c49		4d89c1			MOVQ R8, R9												
  print.go:233		0xe82c4c		e8cfc569ff		CALL fmt.Fprintf(SB)											
  map_controller.go:617	0xe82c51		e88a835eff		CALL runtime.makemap_small(SB)										
  map_controller.go:617	0xe82c56		48898424c0000000	MOVQ AX, 0xc0(SP)											
  map_controller.go:617	0xe82c5e		4889c3			MOVQ AX, BX												
  map_controller.go:617	0xe82c61		488d0d246a2e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:617	0xe82c68		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:617	0xe82c6d		488d050c1c2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:617	0xe82c74		e8a7b35eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:617	0xe82c79		488d15e0fe1b00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:617	0xe82c80		488910			MOVQ DX, 0(AX)												
  map_controller.go:617	0xe82c83		833dc6ae6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:617	0xe82c8a		740c			JE 0xe82c98												
  map_controller.go:617	0xe82c8c		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:617	0xe82c90		e88b575fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:617	0xe82c95		498913			MOVQ DX, 0(R11)												
  map_controller.go:617	0xe82c98		488d15211efe01		LEAQ runtime.gcbits.*(SB), DX										
  map_controller.go:617	0xe82c9f		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:617	0xe82ca3		488d05d61b2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:617	0xe82caa		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:617	0xe82cb2		488d0d9b5d2e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:617	0xe82cb9		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:617	0xe82cbe		6690			NOPW													
  map_controller.go:617	0xe82cc0		e85bb35eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:617	0xe82cc5		488d1554fc1b00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:617	0xe82ccc		488910			MOVQ DX, 0(AX)												
  map_controller.go:617	0xe82ccf		833d7aae6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:617	0xe82cd6		7410			JE 0xe82ce8												
  map_controller.go:617	0xe82cd8		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:617	0xe82cdc		0f1f4000		NOPL 0(AX)												
  map_controller.go:617	0xe82ce0		e83b575fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:617	0xe82ce5		498933			MOVQ SI, 0(R11)												
  map_controller.go:617	0xe82ce8		488d15c15dfe01		LEAQ CAS-Backend/biz/controller..stmp_121(SB), DX							
  map_controller.go:617	0xe82cef		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:617	0xe82cf3		488d05861b2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:617	0xe82cfa		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:617	0xe82d02		488d0d8f692e00		LEAQ go:string.*+4496(SB), CX										
  map_controller.go:617	0xe82d09		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:617	0xe82d0e		e80db35eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:617	0xe82d13		488d1506fc1b00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:617	0xe82d1a		488910			MOVQ DX, 0(AX)												
  map_controller.go:617	0xe82d1d		833d2cae6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:617	0xe82d24		740c			JE 0xe82d32												
  map_controller.go:617	0xe82d26		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:617	0xe82d2a		e8f1565fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:617	0xe82d2f		49890b			MOVQ CX, 0(R11)												
  map_controller.go:617	0xe82d32		488d0dc756fe01		LEAQ net/http..stmp_239(SB), CX										
  map_controller.go:617	0xe82d39		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe82d3d		488d0d3c1b2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe82d44		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005	0xe82d4c		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  context.go:1005	0xe82d54		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005	0xe82d5c		488d057d912400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe82d63		488d9c2498000000	LEAQ 0x98(SP), BX											
  context.go:1005	0xe82d6b		e830c358ff		CALL runtime.convT(SB)											
  context.go:1005	0xe82d70		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe82d75		488d0db4c4fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe82d7c		4889c7			MOVQ AX, DI												
  context.go:1005	0xe82d7f		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:1005	0xe82d87		e8d4c9f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:632	0xe82d8c		e9b4010000		JMP 0xe82f45												
  map_controller.go:624	0xe82d91		440f117c2458		MOVUPS X15, 0x58(SP)											
  map_controller.go:624	0xe82d97		488b542448		MOVQ 0x48(SP), DX											
  map_controller.go:624	0xe82d9c		488b4220		MOVQ 0x20(DX), AX											
  map_controller.go:624	0xe82da0		488b5a28		MOVQ 0x28(DX), BX											
  map_controller.go:624	0xe82da4		488b4a30		MOVQ 0x30(DX), CX											
  map_controller.go:624	0xe82da8		e813745eff		CALL runtime.convTslice(SB)										
  map_controller.go:624	0xe82dad		488d15cc5b1b00		LEAQ runtime.types+342400(SB), DX									
  map_controller.go:624	0xe82db4		4889542458		MOVQ DX, 0x58(SP)											
  map_controller.go:624	0xe82db9		4889442460		MOVQ AX, 0x60(SP)											
  print.go:314		0xe82dbe		488b1dbbf26802		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe82dc5		488d05148dfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe82dcc		488d4c2458		LEAQ 0x58(SP), CX											
  print.go:314		0xe82dd1		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe82dd6		4889fe			MOVQ DI, SI												
  print.go:314		0xe82dd9		e882ca69ff		CALL fmt.Fprintln(SB)											
  print.go:314		0xe82dde		6690			NOPW													
  map_controller.go:625	0xe82de0		e8fb815eff		CALL runtime.makemap_small(SB)										
  map_controller.go:625	0xe82de5		48898424c0000000	MOVQ AX, 0xc0(SP)											
  map_controller.go:625	0xe82ded		4889c3			MOVQ AX, BX												
  map_controller.go:625	0xe82df0		488d0d95682e00		LEAQ go:string.*+4484(SB), CX										
  map_controller.go:625	0xe82df7		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:625	0xe82dfc		488d057d1a2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:625	0xe82e03		e818b25eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:625	0xe82e08		488d1551fd1b00		LEAQ runtime.types+383840(SB), DX									
  map_controller.go:625	0xe82e0f		488910			MOVQ DX, 0(AX)												
  map_controller.go:625	0xe82e12		833d37ad6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:625	0xe82e19		740d			JE 0xe82e28												
  map_controller.go:625	0xe82e1b		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:625	0xe82e1f		90			NOPL													
  map_controller.go:625	0xe82e20		e8fb555fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:625	0xe82e25		498913			MOVQ DX, 0(R11)												
  map_controller.go:625	0xe82e28		488d15014afe01		LEAQ CAS-Backend/biz/dao..stmp_21(SB), DX								
  map_controller.go:625	0xe82e2f		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:625	0xe82e33		488d05461a2200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:625	0xe82e3a		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:625	0xe82e42		488d0d0b5c2e00		LEAQ go:string.*+1356(SB), CX										
  map_controller.go:625	0xe82e49		bf03000000		MOVL $__subsystem__(SB), DI										
  map_controller.go:625	0xe82e4e		e8cdb15eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:625	0xe82e53		488d15c6fa1b00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:625	0xe82e5a		488910			MOVQ DX, 0(AX)												
  map_controller.go:625	0xe82e5d		833decac6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:625	0xe82e64		740c			JE 0xe82e72												
  map_controller.go:625	0xe82e66		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:625	0xe82e6a		e8b1555fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:625	0xe82e6f		498913			MOVQ DX, 0(R11)												
  map_controller.go:625	0xe82e72		488d15475cfe01		LEAQ CAS-Backend/biz/controller..stmp_124(SB), DX							
  map_controller.go:625	0xe82e79		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:628	0xe82e7d		488b542448		MOVQ 0x48(SP), DX											
  map_controller.go:628	0xe82e82		488b4220		MOVQ 0x20(DX), AX											
  map_controller.go:628	0xe82e86		488b5a28		MOVQ 0x28(DX), BX											
  map_controller.go:628	0xe82e8a		488b4a30		MOVQ 0x30(DX), CX											
  map_controller.go:628	0xe82e8e		e82d735eff		CALL runtime.convTslice(SB)										
  map_controller.go:628	0xe82e93		48898424b8000000	MOVQ AX, 0xb8(SP)											
  map_controller.go:625	0xe82e9b		488b9c24c0000000	MOVQ 0xc0(SP), BX											
  map_controller.go:625	0xe82ea3		488d0dee672e00		LEAQ go:string.*+4496(SB), CX										
  map_controller.go:625	0xe82eaa		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:625	0xe82eaf		488d05ca192200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:625	0xe82eb6		e865b15eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:625	0xe82ebb		488d15be5a1b00		LEAQ runtime.types+342400(SB), DX									
  map_controller.go:625	0xe82ec2		488910			MOVQ DX, 0(AX)												
  map_controller.go:625	0xe82ec5		833d84ac6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:625	0xe82ecc		750a			JNE 0xe82ed8												
  map_controller.go:625	0xe82ece		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  map_controller.go:625	0xe82ed6		eb18			JMP 0xe82ef0												
  map_controller.go:625	0xe82ed8		e863555fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:625	0xe82edd		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  map_controller.go:625	0xe82ee5		49890b			MOVQ CX, 0(R11)												
  map_controller.go:625	0xe82ee8		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:625	0xe82eec		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:625	0xe82ef0		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe82ef4		488d0d85192200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe82efb		48898c2498000000	MOVQ CX, 0x98(SP)											
  context.go:1005	0xe82f03		488b8c24c0000000	MOVQ 0xc0(SP), CX											
  context.go:1005	0xe82f0b		48898c24a0000000	MOVQ CX, 0xa0(SP)											
  context.go:1005	0xe82f13		488d05c68f2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe82f1a		488d9c2498000000	LEAQ 0x98(SP), BX											
  context.go:1005	0xe82f22		e879c158ff		CALL runtime.convT(SB)											
  context.go:1005	0xe82f27		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe82f2c		488d0dfdc2fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe82f33		4889c7			MOVQ AX, DI												
  context.go:1005	0xe82f36		488b8424e0000000	MOVQ 0xe0(SP), AX											
  context.go:1005	0xe82f3e		6690			NOPW													
  context.go:1005	0xe82f40		e81bc8f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:632	0xe82f45		4881c4d0000000		ADDQ $.file+131(SB), SP											
  map_controller.go:632	0xe82f4c		5d			POPQ BP													
  map_controller.go:632	0xe82f4d		c3			RET													
  context.go:752	0xe82f4e		4889442438		MOVQ AX, 0x38(SP)											
  context.go:752	0xe82f53		48895c2440		MOVQ BX, 0x40(SP)											
  map_controller.go:599	0xe82f58		488d15c1f91b00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:599	0xe82f5f		4889942488000000	MOVQ DX, 0x88(SP)											
  map_controller.go:599	0xe82f67		488d156258fe01		LEAQ CAS-Backend/biz/controller..stmp_2(SB), DX								
  map_controller.go:599	0xe82f6e		4889942490000000	MOVQ DX, 0x90(SP)											
  print.go:314		0xe82f76		488b1d03f16802		MOVQ os.Stdout(SB), BX											
  print.go:314		0xe82f7d		488d055c8bfe01		LEAQ go:itab.*os.File,io.Writer(SB), AX									
  print.go:314		0xe82f84		488d8c2488000000	LEAQ 0x88(SP), CX											
  print.go:314		0xe82f8c		bf01000000		MOVL $__minor_os_version__(SB), DI									
  print.go:314		0xe82f91		4889fe			MOVQ DI, SI												
  print.go:314		0xe82f94		e8c7c869ff		CALL fmt.Fprintln(SB)											
  map_controller.go:600	0xe82f99		488b8424e0000000	MOVQ 0xe0(SP), AX											
  map_controller.go:600	0xe82fa1		bb90010000		MOVL $.file+323(SB), BX											
  map_controller.go:600	0xe82fa6		488b4c2438		MOVQ 0x38(SP), CX											
  map_controller.go:600	0xe82fab		488b7c2440		MOVQ 0x40(SP), DI											
  map_controller.go:600	0xe82fb0		e8eb80f7ff		CALL github.com/gin-gonic/gin.(*Context).AbortWithError(SB)						
  map_controller.go:601	0xe82fb5		4881c4d0000000		ADDQ $.file+131(SB), SP											
  map_controller.go:601	0xe82fbc		5d			POPQ BP													
  map_controller.go:601	0xe82fbd		c3			RET													
  context.go:712	0xe82fbe		4d89ca			MOVQ R9, R10												
  context.go:712	0xe82fc1		4d21c1			ANDQ R8, R9												
  context.go:712	0xe82fc4		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712	0xe82fc8		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712	0xe82fcd		4939db			CMPQ R11, BX												
  context.go:712	0xe82fd0		7433			JE 0xe83005												
  context.go:712	0xe82fd2		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712	0xe82fd6		4d85db			TESTQ R11, R11												
  context.go:712	0xe82fd9		75e3			JNE 0xe82fbe												
  context.go:712	0xe82fdb		4889542450		MOVQ DX, 0x50(SP)											
  context.go:712	0xe82fe0		488d0529831300		LEAQ CAS-Backend/biz/controller..typeAssert.27(SB), AX							
  context.go:712	0xe82fe7		e8f4c258ff		CALL runtime.typeAssert(SB)										
  context.go:752	0xe82fec		488b542450		MOVQ 0x50(SP), DX											
  context.go:712	0xe82ff1		4889c1			MOVQ AX, CX												
  context.go:752	0xe82ff4		488b8424c8000000	MOVQ 0xc8(SP), AX											
  context.go:752	0xe82ffc		0f1f4000		NOPL 0(AX)												
  context.go:712	0xe83000		e940fbffff		JMP 0xe82b45												
  context.go:712	0xe83005		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712	0xe8300a		e936fbffff		JMP 0xe82b45												
  map_controller.go:595	0xe8300f		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:595	0xe83014		e8c7345fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:595	0xe83019		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:595	0xe8301e		6690			NOPW													
  map_controller.go:595	0xe83020		e9bbfaffff		JMP CAS-Backend/biz/controller.QMapHandler(SB)								
  :-1			0xe83025		cc			INT $__subsystem__(SB)											
  :-1			0xe83026		cc			INT $__subsystem__(SB)											
  :-1			0xe83027		cc			INT $__subsystem__(SB)											
  :-1			0xe83028		cc			INT $__subsystem__(SB)											
  :-1			0xe83029		cc			INT $__subsystem__(SB)											
  :-1			0xe8302a		cc			INT $__subsystem__(SB)											
  :-1			0xe8302b		cc			INT $__subsystem__(SB)											
  :-1			0xe8302c		cc			INT $__subsystem__(SB)											
  :-1			0xe8302d		cc			INT $__subsystem__(SB)											
  :-1			0xe8302e		cc			INT $__subsystem__(SB)											
  :-1			0xe8302f		cc			INT $__subsystem__(SB)											
  :-1			0xe83030		cc			INT $__subsystem__(SB)											
  :-1			0xe83031		cc			INT $__subsystem__(SB)											
  :-1			0xe83032		cc			INT $__subsystem__(SB)											
  :-1			0xe83033		cc			INT $__subsystem__(SB)											
  :-1			0xe83034		cc			INT $__subsystem__(SB)											
  :-1			0xe83035		cc			INT $__subsystem__(SB)											
  :-1			0xe83036		cc			INT $__subsystem__(SB)											
  :-1			0xe83037		cc			INT $__subsystem__(SB)											
  :-1			0xe83038		cc			INT $__subsystem__(SB)											
  :-1			0xe83039		cc			INT $__subsystem__(SB)											
  :-1			0xe8303a		cc			INT $__subsystem__(SB)											
  :-1			0xe8303b		cc			INT $__subsystem__(SB)											
  :-1			0xe8303c		cc			INT $__subsystem__(SB)											
  :-1			0xe8303d		cc			INT $__subsystem__(SB)											
  :-1			0xe8303e		cc			INT $__subsystem__(SB)											
  :-1			0xe8303f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.QMapHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:607	0xe83040		493b6610		CMPQ SP, 0x10(R14)					
  map_controller.go:607	0xe83044		7667			JBE 0xe830ad						
  map_controller.go:607	0xe83046		55			PUSHQ BP						
  map_controller.go:607	0xe83047		4889e5			MOVQ SP, BP						
  map_controller.go:607	0xe8304a		4883ec18		SUBQ $__major_os_version__+18(SB), SP			
  map_controller.go:607	0xe8304e		4889442428		MOVQ AX, 0x28(SP)					
  map_controller.go:607	0xe83053		48895c2430		MOVQ BX, 0x30(SP)					
  map_controller.go:607	0xe83058		488b4a08		MOVQ 0x8(DX), CX					
  map_controller.go:607	0xe8305c		48894c2410		MOVQ CX, 0x10(SP)					
  map_controller.go:608	0xe83061		e89ab7f9ff		CALL CAS-Backend/pkg/agvcontrol.SendSltMapRequest(SB)	
  map_controller.go:609	0xe83066		4885db			TESTQ BX, BX						
  map_controller.go:609	0xe83069		7536			JNE 0xe830a1						
  map_controller.go:612	0xe8306b		833ddeaa6d0200		CMPL runtime.writeBarrier(SB), $0x0			
  map_controller.go:612	0xe83072		750c			JNE 0xe83080						
  map_controller.go:612	0xe83074		488b4c2410		MOVQ 0x10(SP), CX					
  map_controller.go:612	0xe83079		eb19			JMP 0xe83094						
  map_controller.go:612	0xe8307b		0f1f440000		NOPL 0(AX)(AX*1)					
  map_controller.go:612	0xe83080		e8bb535fff		CALL runtime.gcWriteBarrier2(SB)			
  map_controller.go:612	0xe83085		498903			MOVQ AX, 0(R11)						
  map_controller.go:612	0xe83088		488b4c2410		MOVQ 0x10(SP), CX					
  map_controller.go:612	0xe8308d		488b11			MOVQ 0(CX), DX						
  map_controller.go:612	0xe83090		49895308		MOVQ DX, 0x8(R11)					
  map_controller.go:612	0xe83094		488901			MOVQ AX, 0(CX)						
  map_controller.go:613	0xe83097		31c0			XORL AX, AX						
  map_controller.go:613	0xe83099		31db			XORL BX, BX						
  map_controller.go:613	0xe8309b		4883c418		ADDQ $__major_os_version__+18(SB), SP			
  map_controller.go:613	0xe8309f		5d			POPQ BP							
  map_controller.go:613	0xe830a0		c3			RET							
  map_controller.go:610	0xe830a1		4889d8			MOVQ BX, AX						
  map_controller.go:610	0xe830a4		4889cb			MOVQ CX, BX						
  map_controller.go:610	0xe830a7		4883c418		ADDQ $__major_os_version__+18(SB), SP			
  map_controller.go:610	0xe830ab		5d			POPQ BP							
  map_controller.go:610	0xe830ac		c3			RET							
  map_controller.go:607	0xe830ad		4889442408		MOVQ AX, 0x8(SP)					
  map_controller.go:607	0xe830b2		48895c2410		MOVQ BX, 0x10(SP)					
  map_controller.go:607	0xe830b7		e8a4335fff		CALL runtime.morestack.abi0(SB)				
  map_controller.go:607	0xe830bc		488b442408		MOVQ 0x8(SP), AX					
  map_controller.go:607	0xe830c1		488b5c2410		MOVQ 0x10(SP), BX					
  map_controller.go:607	0xe830c6		e975ffffff		JMP CAS-Backend/biz/controller.QMapHandler.func1(SB)	
  :-1			0xe830cb		cc			INT $__subsystem__(SB)					
  :-1			0xe830cc		cc			INT $__subsystem__(SB)					
  :-1			0xe830cd		cc			INT $__subsystem__(SB)					
  :-1			0xe830ce		cc			INT $__subsystem__(SB)					
  :-1			0xe830cf		cc			INT $__subsystem__(SB)					
  :-1			0xe830d0		cc			INT $__subsystem__(SB)					
  :-1			0xe830d1		cc			INT $__subsystem__(SB)					
  :-1			0xe830d2		cc			INT $__subsystem__(SB)					
  :-1			0xe830d3		cc			INT $__subsystem__(SB)					
  :-1			0xe830d4		cc			INT $__subsystem__(SB)					
  :-1			0xe830d5		cc			INT $__subsystem__(SB)					
  :-1			0xe830d6		cc			INT $__subsystem__(SB)					
  :-1			0xe830d7		cc			INT $__subsystem__(SB)					
  :-1			0xe830d8		cc			INT $__subsystem__(SB)					
  :-1			0xe830d9		cc			INT $__subsystem__(SB)					
  :-1			0xe830da		cc			INT $__subsystem__(SB)					
  :-1			0xe830db		cc			INT $__subsystem__(SB)					
  :-1			0xe830dc		cc			INT $__subsystem__(SB)					
  :-1			0xe830dd		cc			INT $__subsystem__(SB)					
  :-1			0xe830de		cc			INT $__subsystem__(SB)					
  :-1			0xe830df		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/controller.GetOverviewMapHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/map_controller.go
  map_controller.go:635	0xe830e0		4c8d642498		LEAQ -0x68(SP), R12											
  map_controller.go:635	0xe830e5		4d3b6610		CMPQ R12, 0x10(R14)											
  map_controller.go:635	0xe830e9		0f8685070000		JBE 0xe83874												
  map_controller.go:635	0xe830ef		55			PUSHQ BP												
  map_controller.go:635	0xe830f0		4889e5			MOVQ SP, BP												
  map_controller.go:635	0xe830f3		4881ece0000000		SUBQ $.file+147(SB), SP											
  map_controller.go:637	0xe830fa		48898424f0000000	MOVQ AX, 0xf0(SP)											
  map_controller.go:636	0xe83102		e81905faff		CALL CAS-Backend/pkg/diapdu.GetActiveMapInfo(SB)							
  map_controller.go:636	0xe83107		888424a0000000		MOVB AL, 0xa0(SP)											
  map_controller.go:636	0xe8310e		48899c24a8000000	MOVQ BX, 0xa8(SP)											
  map_controller.go:636	0xe83116		48898c24b0000000	MOVQ CX, 0xb0(SP)											
  map_controller.go:636	0xe8311e		4889bc24b8000000	MOVQ DI, 0xb8(SP)											
  map_controller.go:636	0xe83126		4889b424c0000000	MOVQ SI, 0xc0(SP)											
  map_controller.go:636	0xe8312e		488b8424a0000000	MOVQ 0xa0(SP), AX											
  map_controller.go:636	0xe83136		4889442450		MOVQ AX, 0x50(SP)											
  map_controller.go:636	0xe8313b		0f108424a8000000	MOVUPS 0xa8(SP), X0											
  map_controller.go:636	0xe83143		0f11442458		MOVUPS X0, 0x58(SP)											
  map_controller.go:636	0xe83148		0f108424b8000000	MOVUPS 0xb8(SP), X0											
  map_controller.go:636	0xe83150		0f11442468		MOVUPS X0, 0x68(SP)											
  map_controller.go:637	0xe83155		807c245000		CMPB 0x50(SP), $0x0											
  map_controller.go:637	0xe8315a		660f1f440000		NOPW 0(AX)(AX*1)											
  map_controller.go:637	0xe83160		0f845c050000		JE 0xe836c2												
  map_controller.go:647	0xe83166		e85506faff		CALL CAS-Backend/pkg/diapdu.ReadActiveMapFile(SB)							
  map_controller.go:648	0xe8316b		4885ff			TESTQ DI, DI												
  map_controller.go:648	0xe8316e		0f847a010000		JE 0xe832ee												
  map_controller.go:647	0xe83174		4889b42480000000	MOVQ SI, 0x80(SP)											
  map_controller.go:647	0xe8317c		48897c2440		MOVQ DI, 0x40(SP)											
  map_controller.go:649	0xe83181		e85a7e5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:649	0xe83186		4889842498000000	MOVQ AX, 0x98(SP)											
  map_controller.go:649	0xe8318e		4889c3			MOVQ AX, BX												
  map_controller.go:649	0xe83191		488d0d75fb2e00		LEAQ go:string.*+43013(SB), CX										
  map_controller.go:649	0xe83198		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:649	0xe8319d		488d05dc162200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:649	0xe831a4		e877ae5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:649	0xe831a9		488d0d70fb1b00		LEAQ runtime.types+384288(SB), CX									
  map_controller.go:649	0xe831b0		488908			MOVQ CX, 0(AX)												
  map_controller.go:649	0xe831b3		833d96a96d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:649	0xe831ba		740c			JE 0xe831c8												
  map_controller.go:649	0xe831bc		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:649	0xe831c0		e85b525fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:649	0xe831c5		498913			MOVQ DX, 0(R11)												
  map_controller.go:649	0xe831c8		488d1551750f00		LEAQ runtime.staticuint64s(SB), DX									
  map_controller.go:649	0xe831cf		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:649	0xe831d3		488d05a6162200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:649	0xe831da		488b9c2498000000	MOVQ 0x98(SP), BX											
  map_controller.go:649	0xe831e2		488d0d7c752e00		LEAQ go:string.*+8797(SB), CX										
  map_controller.go:649	0xe831e9		bf05000000		MOVL $__subsystem__+2(SB), DI										
  map_controller.go:649	0xe831ee		e82dae5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:649	0xe831f3		488d1526fb1b00		LEAQ runtime.types+384288(SB), DX									
  map_controller.go:649	0xe831fa		488910			MOVQ DX, 0(AX)												
  map_controller.go:649	0xe831fd		833d4ca96d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:649	0xe83204		740c			JE 0xe83212												
  map_controller.go:649	0xe83206		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:649	0xe8320a		e811525fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:649	0xe8320f		49890b			MOVQ CX, 0(R11)												
  map_controller.go:649	0xe83212		488d0d07750f00		LEAQ runtime.staticuint64s(SB), CX									
  map_controller.go:649	0xe83219		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:652	0xe8321d		488b4c2440		MOVQ 0x40(SP), CX											
  map_controller.go:652	0xe83222		488b4918		MOVQ 0x18(CX), CX											
  map_controller.go:652	0xe83226		488b842480000000	MOVQ 0x80(SP), AX											
  map_controller.go:652	0xe8322e		ffd1			CALL CX													
  map_controller.go:652	0xe83230		e8eb6e5eff		CALL runtime.convTstring(SB)										
  map_controller.go:652	0xe83235		4889842490000000	MOVQ AX, 0x90(SP)											
  map_controller.go:649	0xe8323d		488b9c2498000000	MOVQ 0x98(SP), BX											
  map_controller.go:649	0xe83245		488d0da5fa2e00		LEAQ go:string.*+42985(SB), CX										
  map_controller.go:649	0xe8324c		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:649	0xe83251		488d0528162200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:649	0xe83258		e8c3ad5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:649	0xe8325d		488d0dbcf61b00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:649	0xe83264		488908			MOVQ CX, 0(AX)												
  map_controller.go:649	0xe83267		833de2a86d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:649	0xe8326e		750a			JNE 0xe8327a												
  map_controller.go:649	0xe83270		488b8c2490000000	MOVQ 0x90(SP), CX											
  map_controller.go:649	0xe83278		eb18			JMP 0xe83292												
  map_controller.go:649	0xe8327a		e8c1515fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:649	0xe8327f		488b8c2490000000	MOVQ 0x90(SP), CX											
  map_controller.go:649	0xe83287		49890b			MOVQ CX, 0(R11)												
  map_controller.go:649	0xe8328a		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:649	0xe8328e		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:649	0xe83292		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe83296		488d0de3152200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe8329d		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  context.go:1005	0xe832a5		488b8c2498000000	MOVQ 0x98(SP), CX											
  context.go:1005	0xe832ad		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  context.go:1005	0xe832b5		488d05248c2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe832bc		488d9c24c8000000	LEAQ 0xc8(SP), BX											
  context.go:1005	0xe832c4		e8d7bd58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe832c9		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe832ce		488d0d5bbffe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe832d5		4889c7			MOVQ AX, DI												
  context.go:1005	0xe832d8		488b8424f0000000	MOVQ 0xf0(SP), AX											
  context.go:1005	0xe832e0		e87bc4f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:654	0xe832e5		4881c4e0000000		ADDQ $.file+147(SB), SP											
  map_controller.go:654	0xe832ec		5d			POPQ BP													
  map_controller.go:654	0xe832ed		c3			RET													
  map_controller.go:647	0xe832ee		48894c2430		MOVQ CX, 0x30(SP)											
  map_controller.go:647	0xe832f3		48895c2428		MOVQ BX, 0x28(SP)											
  map_controller.go:647	0xe832f8		4889442448		MOVQ AX, 0x48(SP)											
  map_controller.go:657	0xe832fd		488d05bca11f00		LEAQ runtime.types+623808(SB), AX									
  map_controller.go:657	0xe83304		e897e458ff		CALL runtime.newobject(SB)										
  map_controller.go:657	0xe83309		48898424d8000000	MOVQ AX, 0xd8(SP)											
  map_controller.go:658	0xe83311		488b5c2428		MOVQ 0x28(SP), BX											
  map_controller.go:658	0xe83316		488b4c2430		MOVQ 0x30(SP), CX											
  map_controller.go:658	0xe8331b		488d3d7e171b00		LEAQ runtime.types+326304(SB), DI									
  map_controller.go:658	0xe83322		4889c6			MOVQ AX, SI												
  map_controller.go:658	0xe83325		488b442448		MOVQ 0x48(SP), AX											
  map_controller.go:658	0xe8332a		e8b1416eff		CALL encoding/json.Unmarshal(SB)									
  map_controller.go:658	0xe8332f		4885c0			TESTQ AX, AX												
  map_controller.go:658	0xe83332		0f8449010000		JE 0xe83481												
  map_controller.go:658	0xe83338		48895c2478		MOVQ BX, 0x78(SP)											
  map_controller.go:658	0xe8333d		4889442438		MOVQ AX, 0x38(SP)											
  map_controller.go:659	0xe83342		e8997c5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:659	0xe83347		4889842498000000	MOVQ AX, 0x98(SP)											
  map_controller.go:659	0xe8334f		4889c3			MOVQ AX, BX												
  map_controller.go:659	0xe83352		488d0db4f92e00		LEAQ go:string.*+43013(SB), CX										
  map_controller.go:659	0xe83359		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:659	0xe8335e		488d051b152200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:659	0xe83365		e8b6ac5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:659	0xe8336a		488d0daff91b00		LEAQ runtime.types+384288(SB), CX									
  map_controller.go:659	0xe83371		488908			MOVQ CX, 0(AX)												
  map_controller.go:659	0xe83374		833dd5a76d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:659	0xe8337b		740c			JE 0xe83389												
  map_controller.go:659	0xe8337d		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:659	0xe83381		e89a505fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:659	0xe83386		49890b			MOVQ CX, 0(R11)												
  map_controller.go:659	0xe83389		488d0d90730f00		LEAQ runtime.staticuint64s(SB), CX									
  map_controller.go:659	0xe83390		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:661	0xe83394		488b4c2438		MOVQ 0x38(SP), CX											
  map_controller.go:661	0xe83399		488b4918		MOVQ 0x18(CX), CX											
  map_controller.go:661	0xe8339d		488b442478		MOVQ 0x78(SP), AX											
  map_controller.go:661	0xe833a2		ffd1			CALL CX													
  map_controller.go:661	0xe833a4		b91a000000		MOVL $__major_os_version__+20(SB), CX									
  map_controller.go:661	0xe833a9		4889c7			MOVQ AX, DI												
  map_controller.go:661	0xe833ac		4889de			MOVQ BX, SI												
  map_controller.go:661	0xe833af		31c0			XORL AX, AX												
  map_controller.go:661	0xe833b1		488d1da23b3000		LEAQ go:string.*+125522(SB), BX										
  map_controller.go:661	0xe833b8		e843205dff		CALL runtime.concatstring2(SB)										
  map_controller.go:661	0xe833bd		0f1f00			NOPL 0(AX)												
  map_controller.go:661	0xe833c0		e85b6d5eff		CALL runtime.convTstring(SB)										
  map_controller.go:661	0xe833c5		4889842490000000	MOVQ AX, 0x90(SP)											
  map_controller.go:659	0xe833cd		488b9c2498000000	MOVQ 0x98(SP), BX											
  map_controller.go:659	0xe833d5		488d0d15f92e00		LEAQ go:string.*+42985(SB), CX										
  map_controller.go:659	0xe833dc		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:659	0xe833e1		488d0598142200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:659	0xe833e8		e833ac5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:659	0xe833ed		488d0d2cf51b00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:659	0xe833f4		488908			MOVQ CX, 0(AX)												
  map_controller.go:659	0xe833f7		833d52a76d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:659	0xe833fe		6690			NOPW													
  map_controller.go:659	0xe83400		750a			JNE 0xe8340c												
  map_controller.go:659	0xe83402		488b8c2490000000	MOVQ 0x90(SP), CX											
  map_controller.go:659	0xe8340a		eb18			JMP 0xe83424												
  map_controller.go:659	0xe8340c		e82f505fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:659	0xe83411		488b8c2490000000	MOVQ 0x90(SP), CX											
  map_controller.go:659	0xe83419		49890b			MOVQ CX, 0(R11)												
  map_controller.go:659	0xe8341c		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:659	0xe83420		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:659	0xe83424		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe83428		488d0d51142200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe8342f		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  context.go:1005	0xe83437		488b8c2498000000	MOVQ 0x98(SP), CX											
  context.go:1005	0xe8343f		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  context.go:1005	0xe83447		488d05928a2400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe8344e		488d9c24c8000000	LEAQ 0xc8(SP), BX											
  context.go:1005	0xe83456		e845bc58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe8345b		bbf4010000		MOVL $.file+423(SB), BX											
  context.go:1005	0xe83460		488d0dc9bdfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe83467		4889c7			MOVQ AX, DI												
  context.go:1005	0xe8346a		488b8424f0000000	MOVQ 0xf0(SP), AX											
  context.go:1005	0xe83472		e8e9c2f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:663	0xe83477		4881c4e0000000		ADDQ $.file+147(SB), SP											
  map_controller.go:663	0xe8347e		5d			POPQ BP													
  map_controller.go:663	0xe8347f		90			NOPL													
  map_controller.go:663	0xe83480		c3			RET													
  map_controller.go:666	0xe83481		e85a7b5eff		CALL runtime.makemap_small(SB)										
  map_controller.go:666	0xe83486		4889842498000000	MOVQ AX, 0x98(SP)											
  map_controller.go:666	0xe8348e		4889c3			MOVQ AX, BX												
  map_controller.go:666	0xe83491		488d0d75f82e00		LEAQ go:string.*+43013(SB), CX										
  map_controller.go:666	0xe83498		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:666	0xe8349d		488d05dc132200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:666	0xe834a4		e877ab5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:666	0xe834a9		488d0d70f81b00		LEAQ runtime.types+384288(SB), CX									
  map_controller.go:666	0xe834b0		488908			MOVQ CX, 0(AX)												
  map_controller.go:666	0xe834b3		833d96a66d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:666	0xe834ba		740c			JE 0xe834c8												
  map_controller.go:666	0xe834bc		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:666	0xe834c0		e85b4f5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:666	0xe834c5		498913			MOVQ DX, 0(R11)												
  map_controller.go:666	0xe834c8		488d1559720f00		LEAQ runtime.staticuint64s+8(SB), DX									
  map_controller.go:666	0xe834cf		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:666	0xe834d3		488d05a6132200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:666	0xe834da		488b9c2498000000	MOVQ 0x98(SP), BX											
  map_controller.go:666	0xe834e2		488d0d7c722e00		LEAQ go:string.*+8797(SB), CX										
  map_controller.go:666	0xe834e9		bf05000000		MOVL $__subsystem__+2(SB), DI										
  map_controller.go:666	0xe834ee		e82dab5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:666	0xe834f3		488d1526f81b00		LEAQ runtime.types+384288(SB), DX									
  map_controller.go:666	0xe834fa		488910			MOVQ DX, 0(AX)												
  map_controller.go:666	0xe834fd		833d4ca66d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:666	0xe83504		740c			JE 0xe83512												
  map_controller.go:666	0xe83506		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:666	0xe8350a		e8114f5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:666	0xe8350f		49890b			MOVQ CX, 0(R11)												
  map_controller.go:666	0xe83512		488d0d0f720f00		LEAQ runtime.staticuint64s+8(SB), CX									
  map_controller.go:666	0xe83519		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:669	0xe8351d		488b442458		MOVQ 0x58(SP), AX											
  map_controller.go:669	0xe83522		488b5c2460		MOVQ 0x60(SP), BX											
  map_controller.go:669	0xe83527		e8f46b5eff		CALL runtime.convTstring(SB)										
  map_controller.go:669	0xe8352c		4889842490000000	MOVQ AX, 0x90(SP)											
  map_controller.go:666	0xe83534		488b9c2498000000	MOVQ 0x98(SP), BX											
  map_controller.go:666	0xe8353c		488d0dc3f72e00		LEAQ go:string.*+43006(SB), CX										
  map_controller.go:666	0xe83543		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:666	0xe83548		488d0531132200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:666	0xe8354f		e8ccaa5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:666	0xe83554		488d0dc5f31b00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:666	0xe8355b		488908			MOVQ CX, 0(AX)												
  map_controller.go:666	0xe8355e		833deba56d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:666	0xe83565		750a			JNE 0xe83571												
  map_controller.go:666	0xe83567		488b942490000000	MOVQ 0x90(SP), DX											
  map_controller.go:666	0xe8356f		eb18			JMP 0xe83589												
  map_controller.go:666	0xe83571		e8ca4e5fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:666	0xe83576		488b942490000000	MOVQ 0x90(SP), DX											
  map_controller.go:666	0xe8357e		498913			MOVQ DX, 0(R11)												
  map_controller.go:666	0xe83581		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:666	0xe83585		49897308		MOVQ SI, 0x8(R11)											
  map_controller.go:666	0xe83589		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:670	0xe8358d		488b442468		MOVQ 0x68(SP), AX											
  map_controller.go:670	0xe83592		488b5c2470		MOVQ 0x70(SP), BX											
  map_controller.go:670	0xe83597		e8846b5eff		CALL runtime.convTstring(SB)										
  map_controller.go:670	0xe8359c		4889842490000000	MOVQ AX, 0x90(SP)											
  map_controller.go:666	0xe835a4		488b9c2498000000	MOVQ 0x98(SP), BX											
  map_controller.go:666	0xe835ac		488d0d61f72e00		LEAQ go:string.*+43020(SB), CX										
  map_controller.go:666	0xe835b3		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:666	0xe835b8		488d05c1122200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:666	0xe835bf		90			NOPL													
  map_controller.go:666	0xe835c0		e85baa5eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:666	0xe835c5		488d0d54f31b00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:666	0xe835cc		488908			MOVQ CX, 0(AX)												
  map_controller.go:666	0xe835cf		833d7aa56d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:666	0xe835d6		750a			JNE 0xe835e2												
  map_controller.go:666	0xe835d8		488b942490000000	MOVQ 0x90(SP), DX											
  map_controller.go:666	0xe835e0		eb18			JMP 0xe835fa												
  map_controller.go:666	0xe835e2		e8594e5fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:666	0xe835e7		488b942490000000	MOVQ 0x90(SP), DX											
  map_controller.go:666	0xe835ef		498913			MOVQ DX, 0(R11)												
  map_controller.go:666	0xe835f2		488b7008		MOVQ 0x8(AX), SI											
  map_controller.go:666	0xe835f6		49897308		MOVQ SI, 0x8(R11)											
  map_controller.go:666	0xe835fa		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:671	0xe835fe		488b9424d8000000	MOVQ 0xd8(SP), DX											
  map_controller.go:671	0xe83606		488b12			MOVQ 0(DX), DX												
  map_controller.go:671	0xe83609		4889942488000000	MOVQ DX, 0x88(SP)											
  map_controller.go:666	0xe83611		488d0568122200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:666	0xe83618		488b9c2498000000	MOVQ 0x98(SP), BX											
  map_controller.go:666	0xe83620		488d0d71602e00		LEAQ go:string.*+4496(SB), CX										
  map_controller.go:666	0xe83627		bf04000000		MOVL $__subsystem__+1(SB), DI										
  map_controller.go:666	0xe8362c		e8efa95eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:666	0xe83631		488d15889e1f00		LEAQ runtime.types+623808(SB), DX									
  map_controller.go:666	0xe83638		488910			MOVQ DX, 0(AX)												
  map_controller.go:666	0xe8363b		833d0ea56d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:666	0xe83642		750a			JNE 0xe8364e												
  map_controller.go:666	0xe83644		488b8c2488000000	MOVQ 0x88(SP), CX											
  map_controller.go:666	0xe8364c		eb18			JMP 0xe83666												
  map_controller.go:666	0xe8364e		e8ed4d5fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:666	0xe83653		488b8c2488000000	MOVQ 0x88(SP), CX											
  map_controller.go:666	0xe8365b		49890b			MOVQ CX, 0(R11)												
  map_controller.go:666	0xe8365e		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:666	0xe83662		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:666	0xe83666		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe8366a		488d0d0f122200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe83671		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  context.go:1005	0xe83679		488b8c2498000000	MOVQ 0x98(SP), CX											
  context.go:1005	0xe83681		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  context.go:1005	0xe83689		488d0550882400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe83690		488d9c24c8000000	LEAQ 0xc8(SP), BX											
  context.go:1005	0xe83698		e803ba58ff		CALL runtime.convT(SB)											
  context.go:1005	0xe8369d		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe836a2		488d0d87bbfe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe836a9		4889c7			MOVQ AX, DI												
  context.go:1005	0xe836ac		488b8424f0000000	MOVQ 0xf0(SP), AX											
  context.go:1005	0xe836b4		e8a7c0f7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:673	0xe836b9		4881c4e0000000		ADDQ $.file+147(SB), SP											
  map_controller.go:673	0xe836c0		5d			POPQ BP													
  map_controller.go:673	0xe836c1		c3			RET													
  map_controller.go:638	0xe836c2		e819795eff		CALL runtime.makemap_small(SB)										
  map_controller.go:638	0xe836c7		4889842498000000	MOVQ AX, 0x98(SP)											
  map_controller.go:638	0xe836cf		4889c3			MOVQ AX, BX												
  map_controller.go:638	0xe836d2		488d0d34f62e00		LEAQ go:string.*+43013(SB), CX										
  map_controller.go:638	0xe836d9		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:638	0xe836de		488d059b112200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:638	0xe836e5		e836a95eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:638	0xe836ea		488d0d2ff61b00		LEAQ runtime.types+384288(SB), CX									
  map_controller.go:638	0xe836f1		488908			MOVQ CX, 0(AX)												
  map_controller.go:638	0xe836f4		833d55a46d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:638	0xe836fb		740c			JE 0xe83709												
  map_controller.go:638	0xe836fd		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:638	0xe83701		e81a4d5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:638	0xe83706		498913			MOVQ DX, 0(R11)												
  map_controller.go:638	0xe83709		488d1510700f00		LEAQ runtime.staticuint64s(SB), DX									
  map_controller.go:638	0xe83710		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:638	0xe83714		488d0565112200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:638	0xe8371b		488b9c2498000000	MOVQ 0x98(SP), BX											
  map_controller.go:638	0xe83723		488d0d3b702e00		LEAQ go:string.*+8797(SB), CX										
  map_controller.go:638	0xe8372a		bf05000000		MOVL $__subsystem__+2(SB), DI										
  map_controller.go:638	0xe8372f		e8eca85eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:638	0xe83734		488d15e5f51b00		LEAQ runtime.types+384288(SB), DX									
  map_controller.go:638	0xe8373b		488910			MOVQ DX, 0(AX)												
  map_controller.go:638	0xe8373e		833d0ba46d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:638	0xe83745		740c			JE 0xe83753												
  map_controller.go:638	0xe83747		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:638	0xe8374b		e8d04c5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:638	0xe83750		498913			MOVQ DX, 0(R11)												
  map_controller.go:638	0xe83753		488d15c66f0f00		LEAQ runtime.staticuint64s(SB), DX									
  map_controller.go:638	0xe8375a		48895008		MOVQ DX, 0x8(AX)											
  map_controller.go:638	0xe8375e		488d051b112200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:638	0xe83765		488b9c2498000000	MOVQ 0x98(SP), BX											
  map_controller.go:638	0xe8376d		488d0d7df52e00		LEAQ go:string.*+42985(SB), CX										
  map_controller.go:638	0xe83774		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:638	0xe83779		e8a2a85eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:638	0xe8377e		488d159bf11b00		LEAQ runtime.types+383264(SB), DX									
  map_controller.go:638	0xe83785		488910			MOVQ DX, 0(AX)												
  map_controller.go:638	0xe83788		833dc1a36d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:638	0xe8378f		740c			JE 0xe8379d												
  map_controller.go:638	0xe83791		488b4808		MOVQ 0x8(AX), CX											
  map_controller.go:638	0xe83795		e8864c5fff		CALL runtime.gcWriteBarrier1(SB)									
  map_controller.go:638	0xe8379a		49890b			MOVQ CX, 0(R11)												
  map_controller.go:638	0xe8379d		488d0dcc53fe01		LEAQ CAS-Backend/biz/controller..stmp_165(SB), CX							
  map_controller.go:638	0xe837a4		48894808		MOVQ CX, 0x8(AX)											
  map_controller.go:642	0xe837a8		488b442458		MOVQ 0x58(SP), AX											
  map_controller.go:642	0xe837ad		488b5c2460		MOVQ 0x60(SP), BX											
  map_controller.go:642	0xe837b2		e869695eff		CALL runtime.convTstring(SB)										
  map_controller.go:642	0xe837b7		4889842490000000	MOVQ AX, 0x90(SP)											
  map_controller.go:638	0xe837bf		488b9c2498000000	MOVQ 0x98(SP), BX											
  map_controller.go:638	0xe837c7		488d0d38f52e00		LEAQ go:string.*+43006(SB), CX										
  map_controller.go:638	0xe837ce		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  map_controller.go:638	0xe837d3		488d05a6102200		LEAQ runtime.types+784512(SB), AX									
  map_controller.go:638	0xe837da		e841a85eff		CALL runtime.mapassign_faststr(SB)									
  map_controller.go:638	0xe837df		488d0d3af11b00		LEAQ runtime.types+383264(SB), CX									
  map_controller.go:638	0xe837e6		488908			MOVQ CX, 0(AX)												
  map_controller.go:638	0xe837e9		833d60a36d0200		CMPL runtime.writeBarrier(SB), $0x0									
  map_controller.go:638	0xe837f0		750e			JNE 0xe83800												
  map_controller.go:638	0xe837f2		488b8c2490000000	MOVQ 0x90(SP), CX											
  map_controller.go:638	0xe837fa		eb1c			JMP 0xe83818												
  map_controller.go:638	0xe837fc		0f1f4000		NOPL 0(AX)												
  map_controller.go:638	0xe83800		e83b4c5fff		CALL runtime.gcWriteBarrier2(SB)									
  map_controller.go:638	0xe83805		488b8c2490000000	MOVQ 0x90(SP), CX											
  map_controller.go:638	0xe8380d		49890b			MOVQ CX, 0(R11)												
  map_controller.go:638	0xe83810		488b5008		MOVQ 0x8(AX), DX											
  map_controller.go:638	0xe83814		49895308		MOVQ DX, 0x8(R11)											
  map_controller.go:638	0xe83818		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005	0xe8381c		488d0d5d102200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005	0xe83823		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  context.go:1005	0xe8382b		488b8c2498000000	MOVQ 0x98(SP), CX											
  context.go:1005	0xe83833		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  context.go:1005	0xe8383b		488d059e862400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005	0xe83842		488d9c24c8000000	LEAQ 0xc8(SP), BX											
  context.go:1005	0xe8384a		e851b858ff		CALL runtime.convT(SB)											
  context.go:1005	0xe8384f		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005	0xe83854		488d0dd5b9fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005	0xe8385b		4889c7			MOVQ AX, DI												
  context.go:1005	0xe8385e		488b8424f0000000	MOVQ 0xf0(SP), AX											
  context.go:1005	0xe83866		e8f5bef7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  map_controller.go:644	0xe8386b		4881c4e0000000		ADDQ $.file+147(SB), SP											
  map_controller.go:644	0xe83872		5d			POPQ BP													
  map_controller.go:644	0xe83873		c3			RET													
  map_controller.go:635	0xe83874		4889442408		MOVQ AX, 0x8(SP)											
  map_controller.go:635	0xe83879		e8622c5fff		CALL runtime.morestack_noctxt.abi0(SB)									
  map_controller.go:635	0xe8387e		488b442408		MOVQ 0x8(SP), AX											
  map_controller.go:635	0xe83883		e958f8ffff		JMP CAS-Backend/biz/controller.GetOverviewMapHandler(SB)						
  :-1			0xe83888		cc			INT $__subsystem__(SB)											
  :-1			0xe83889		cc			INT $__subsystem__(SB)											
  :-1			0xe8388a		cc			INT $__subsystem__(SB)											
  :-1			0xe8388b		cc			INT $__subsystem__(SB)											
  :-1			0xe8388c		cc			INT $__subsystem__(SB)											
  :-1			0xe8388d		cc			INT $__subsystem__(SB)											
  :-1			0xe8388e		cc			INT $__subsystem__(SB)											
  :-1			0xe8388f		cc			INT $__subsystem__(SB)											
  :-1			0xe83890		cc			INT $__subsystem__(SB)											
  :-1			0xe83891		cc			INT $__subsystem__(SB)											
  :-1			0xe83892		cc			INT $__subsystem__(SB)											
  :-1			0xe83893		cc			INT $__subsystem__(SB)											
  :-1			0xe83894		cc			INT $__subsystem__(SB)											
  :-1			0xe83895		cc			INT $__subsystem__(SB)											
  :-1			0xe83896		cc			INT $__subsystem__(SB)											
  :-1			0xe83897		cc			INT $__subsystem__(SB)											
  :-1			0xe83898		cc			INT $__subsystem__(SB)											
  :-1			0xe83899		cc			INT $__subsystem__(SB)											
  :-1			0xe8389a		cc			INT $__subsystem__(SB)											
  :-1			0xe8389b		cc			INT $__subsystem__(SB)											
  :-1			0xe8389c		cc			INT $__subsystem__(SB)											
  :-1			0xe8389d		cc			INT $__subsystem__(SB)											
  :-1			0xe8389e		cc			INT $__subsystem__(SB)											
  :-1			0xe8389f		cc			INT $__subsystem__(SB)											

