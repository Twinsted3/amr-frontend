TEXT CAS-Backend/biz/controller.MonitorTrafficPushHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/monitor_traffic_controller.go
  monitor_traffic_controller.go:19	0xe838a0		4c8d6424a0		LEAQ -0x60(SP), R12											
  monitor_traffic_controller.go:19	0xe838a5		4d3b6610		CMPQ R12, 0x10(R14)											
  monitor_traffic_controller.go:19	0xe838a9		0f86b8040000		JBE 0xe83d67												
  monitor_traffic_controller.go:19	0xe838af		55			PUSHQ BP												
  monitor_traffic_controller.go:19	0xe838b0		4889e5			MOVQ SP, BP												
  monitor_traffic_controller.go:19	0xe838b3		4881ecd8000000		SUBQ $.file+139(SB), SP											
  context.go:712			0xe838ba		48898424e8000000	MOVQ AX, 0xe8(SP)											
  monitor_traffic_controller.go:20	0xe838c2		488d05173b2700		LEAQ runtime.types+1123296(SB), AX									
  monitor_traffic_controller.go:20	0xe838c9		e8d2de58ff		CALL runtime.newobject(SB)										
  monitor_traffic_controller.go:20	0xe838ce		48898424d0000000	MOVQ AX, 0xd0(SP)											
  context.go:712			0xe838d6		488b0d033f1300		MOVQ github.com/gin-gonic/gin/binding.JSON(SB), CX							
  context.go:712			0xe838dd		488b15043f1300		MOVQ github.com/gin-gonic/gin/binding.JSON+8(SB), DX							
  context.go:712			0xe838e4		4885c9			TESTQ CX, CX												
  context.go:712			0xe838e7		741c			JE 0xe83905												
  context.go:712			0xe838e9		488b5908		MOVQ 0x8(CX), BX											
  context.go:712			0xe838ed		488b353c7a1300		MOVQ CAS-Backend/biz/controller..typeAssert.28(SB), SI							
  context.go:712			0xe838f4		4c8b06			MOVQ 0(SI), R8												
  context.go:712			0xe838f7		448b4910		MOVL 0x10(CX), R9											
  context.go:712			0xe838fb		0f1f440000		NOPL 0(AX)(AX*1)											
  context.go:712			0xe83900		e909040000		JMP 0xe83d0e												
  context.go:752			0xe83905		488b7118		MOVQ 0x18(CX), SI											
  context.go:752			0xe83909		4c8b8424e8000000	MOVQ 0xe8(SP), R8											
  context.go:752			0xe83911		498b5820		MOVQ 0x20(R8), BX											
  context.go:752			0xe83915		488d0d842e1a00		LEAQ runtime.types+268192(SB), CX									
  context.go:752			0xe8391c		4889c7			MOVQ AX, DI												
  context.go:752			0xe8391f		4889d0			MOVQ DX, AX												
  context.go:752			0xe83922		ffd6			CALL SI													
  monitor_traffic_controller.go:21	0xe83924		4885c0			TESTQ AX, AX												
  monitor_traffic_controller.go:21	0xe83927		0f85b4020000		JNE 0xe83be1												
  monitor_traffic_controller.go:25	0xe8392d		488b8c24d0000000	MOVQ 0xd0(SP), CX											
  monitor_traffic_controller.go:25	0xe83935		488b5108		MOVQ 0x8(CX), DX											
  monitor_traffic_controller.go:25	0xe83939		488b31			MOVQ 0(CX), SI												
  monitor_traffic_controller.go:25	0xe8393c		0f1f4000		NOPL 0(AX)												
  monitor_traffic_controller.go:26	0xe83940		4885d2			TESTQ DX, DX												
  monitor_traffic_controller.go:26	0xe83943		7514			JNE 0xe83959												
  monitor_traffic_controller.go:26	0xe83945		488b7918		MOVQ 0x18(CX), DI											
  monitor_traffic_controller.go:26	0xe83949		4885ff			TESTQ DI, DI												
  monitor_traffic_controller.go:26	0xe8394c		7406			JE 0xe83954												
  monitor_traffic_controller.go:26	0xe8394e		488b7110		MOVQ 0x10(CX), SI											
  monitor_traffic_controller.go:27	0xe83952		eb0c			JMP 0xe83960												
  monitor_traffic_controller.go:29	0xe83954		4889d7			MOVQ DX, DI												
  monitor_traffic_controller.go:26	0xe83957		eb07			JMP 0xe83960												
  monitor_traffic_controller.go:29	0xe83959		4889d7			MOVQ DX, DI												
  monitor_traffic_controller.go:29	0xe8395c		0f1f4000		NOPL 0(AX)												
  monitor_traffic_controller.go:29	0xe83960		4885ff			TESTQ DI, DI												
  monitor_traffic_controller.go:29	0xe83963		0f85f4000000		JNE 0xe83a5d												
  monitor_traffic_controller.go:30	0xe83969		e872765eff		CALL runtime.makemap_small(SB)										
  monitor_traffic_controller.go:30	0xe8396e		48898424b8000000	MOVQ AX, 0xb8(SP)											
  monitor_traffic_controller.go:30	0xe83976		4889c3			MOVQ AX, BX												
  monitor_traffic_controller.go:30	0xe83979		488d0d8df32e00		LEAQ go:string.*+43013(SB), CX										
  monitor_traffic_controller.go:30	0xe83980		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  monitor_traffic_controller.go:30	0xe83985		488d05f40e2200		LEAQ runtime.types+784512(SB), AX									
  monitor_traffic_controller.go:30	0xe8398c		e88fa65eff		CALL runtime.mapassign_faststr(SB)									
  monitor_traffic_controller.go:30	0xe83991		488d0d88f31b00		LEAQ runtime.types+384288(SB), CX									
  monitor_traffic_controller.go:30	0xe83998		488908			MOVQ CX, 0(AX)												
  monitor_traffic_controller.go:30	0xe8399b		833daea16d0200		CMPL runtime.writeBarrier(SB), $0x0									
  monitor_traffic_controller.go:30	0xe839a2		740c			JE 0xe839b0												
  monitor_traffic_controller.go:30	0xe839a4		488b5008		MOVQ 0x8(AX), DX											
  monitor_traffic_controller.go:30	0xe839a8		e8734a5fff		CALL runtime.gcWriteBarrier1(SB)									
  monitor_traffic_controller.go:30	0xe839ad		498913			MOVQ DX, 0(R11)												
  monitor_traffic_controller.go:30	0xe839b0		488d15696d0f00		LEAQ runtime.staticuint64s(SB), DX									
  monitor_traffic_controller.go:30	0xe839b7		48895008		MOVQ DX, 0x8(AX)											
  monitor_traffic_controller.go:30	0xe839bb		488d05be0e2200		LEAQ runtime.types+784512(SB), AX									
  monitor_traffic_controller.go:30	0xe839c2		488b9c24b8000000	MOVQ 0xb8(SP), BX											
  monitor_traffic_controller.go:30	0xe839ca		488d0d20f32e00		LEAQ go:string.*+42985(SB), CX										
  monitor_traffic_controller.go:30	0xe839d1		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  monitor_traffic_controller.go:30	0xe839d6		e845a65eff		CALL runtime.mapassign_faststr(SB)									
  monitor_traffic_controller.go:30	0xe839db		488d153eef1b00		LEAQ runtime.types+383264(SB), DX									
  monitor_traffic_controller.go:30	0xe839e2		488910			MOVQ DX, 0(AX)												
  monitor_traffic_controller.go:30	0xe839e5		833d64a16d0200		CMPL runtime.writeBarrier(SB), $0x0									
  monitor_traffic_controller.go:30	0xe839ec		740c			JE 0xe839fa												
  monitor_traffic_controller.go:30	0xe839ee		488b4808		MOVQ 0x8(AX), CX											
  monitor_traffic_controller.go:30	0xe839f2		e8294a5fff		CALL runtime.gcWriteBarrier1(SB)									
  monitor_traffic_controller.go:30	0xe839f7		49890b			MOVQ CX, 0(R11)												
  monitor_traffic_controller.go:30	0xe839fa		488d0d7f51fe01		LEAQ CAS-Backend/biz/controller..stmp_173(SB), CX							
  monitor_traffic_controller.go:30	0xe83a01		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005			0xe83a05		488d0d740e2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005			0xe83a0c		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005			0xe83a14		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  context.go:1005			0xe83a1c		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  context.go:1005			0xe83a24		488d05b5842400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005			0xe83a2b		488d9c24c0000000	LEAQ 0xc0(SP), BX											
  context.go:1005			0xe83a33		e868b658ff		CALL runtime.convT(SB)											
  context.go:1005			0xe83a38		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005			0xe83a3d		488d0decb7fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005			0xe83a44		4889c7			MOVQ AX, DI												
  context.go:1005			0xe83a47		488b8424e8000000	MOVQ 0xe8(SP), AX											
  context.go:1005			0xe83a4f		e80cbdf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  monitor_traffic_controller.go:31	0xe83a54		4881c4d8000000		ADDQ $.file+139(SB), SP											
  monitor_traffic_controller.go:31	0xe83a5b		5d			POPQ BP													
  monitor_traffic_controller.go:31	0xe83a5c		c3			RET													
  monitor_traffic_controller.go:34	0xe83a5d		4889f0			MOVQ SI, AX												
  monitor_traffic_controller.go:34	0xe83a60		4889fb			MOVQ DI, BX												
  monitor_traffic_controller.go:34	0xe83a63		e878ddfbff		CALL CAS-Backend/pkg/diapdu.ResolveCanonicalVehicleID(SB)						
  monitor_traffic_controller.go:34	0xe83a68		48898424a0000000	MOVQ AX, 0xa0(SP)											
  monitor_traffic_controller.go:34	0xe83a70		48895c2428		MOVQ BX, 0x28(SP)											
  monitor_traffic_controller.go:35	0xe83a75		488bb424d0000000	MOVQ 0xd0(SP), SI											
  monitor_traffic_controller.go:35	0xe83a7d		488b4e28		MOVQ 0x28(SI), CX											
  monitor_traffic_controller.go:35	0xe83a81		48894c2438		MOVQ CX, 0x38(SP)											
  monitor_traffic_controller.go:35	0xe83a86		4883c630		ADDQ $__major_os_version__+42(SB), SI									
  monitor_traffic_controller.go:35	0xe83a8a		488d7c2440		LEAQ 0x40(SP), DI											
  monitor_traffic_controller.go:35	0xe83a8f		660f1f840000000000	NOPW 0(AX)(AX*1)											
  monitor_traffic_controller.go:35	0xe83a98		0f1f840000000000	NOPL 0(AX)(AX*1)											
  monitor_traffic_controller.go:35	0xe83aa0		48896c24f0		MOVQ BP, -0x10(SP)											
  monitor_traffic_controller.go:35	0xe83aa5		488d6c24f0		LEAQ -0x10(SP), BP											
  monitor_traffic_controller.go:35	0xe83aaa		e89d535fff		CALL 0x478e4c												
  monitor_traffic_controller.go:35	0xe83aaf		488b6d00		MOVQ 0(BP), BP												
  monitor_traffic_controller.go:36	0xe83ab3		488d4c2438		LEAQ 0x38(SP), CX											
  monitor_traffic_controller.go:36	0xe83ab8		e8e344fbff		CALL CAS-Backend/pkg/diapdu.HandleMonitorPush(SB)							
  monitor_traffic_controller.go:36	0xe83abd		0f1f00			NOPL 0(AX)												
  monitor_traffic_controller.go:37	0xe83ac0		e81b755eff		CALL runtime.makemap_small(SB)										
  monitor_traffic_controller.go:37	0xe83ac5		48898424b8000000	MOVQ AX, 0xb8(SP)											
  monitor_traffic_controller.go:37	0xe83acd		4889c3			MOVQ AX, BX												
  monitor_traffic_controller.go:37	0xe83ad0		488d0d36f22e00		LEAQ go:string.*+43013(SB), CX										
  monitor_traffic_controller.go:37	0xe83ad7		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  monitor_traffic_controller.go:37	0xe83adc		488d059d0d2200		LEAQ runtime.types+784512(SB), AX									
  monitor_traffic_controller.go:37	0xe83ae3		e838a55eff		CALL runtime.mapassign_faststr(SB)									
  monitor_traffic_controller.go:37	0xe83ae8		488d0d31f21b00		LEAQ runtime.types+384288(SB), CX									
  monitor_traffic_controller.go:37	0xe83aef		488908			MOVQ CX, 0(AX)												
  monitor_traffic_controller.go:37	0xe83af2		833d57a06d0200		CMPL runtime.writeBarrier(SB), $0x0									
  monitor_traffic_controller.go:37	0xe83af9		740d			JE 0xe83b08												
  monitor_traffic_controller.go:37	0xe83afb		488b4808		MOVQ 0x8(AX), CX											
  monitor_traffic_controller.go:37	0xe83aff		90			NOPL													
  monitor_traffic_controller.go:37	0xe83b00		e81b495fff		CALL runtime.gcWriteBarrier1(SB)									
  monitor_traffic_controller.go:37	0xe83b05		49890b			MOVQ CX, 0(R11)												
  monitor_traffic_controller.go:37	0xe83b08		488d0d196c0f00		LEAQ runtime.staticuint64s+8(SB), CX									
  monitor_traffic_controller.go:37	0xe83b0f		48894808		MOVQ CX, 0x8(AX)											
  monitor_traffic_controller.go:37	0xe83b13		488b8424a0000000	MOVQ 0xa0(SP), AX											
  monitor_traffic_controller.go:37	0xe83b1b		488b5c2428		MOVQ 0x28(SP), BX											
  monitor_traffic_controller.go:37	0xe83b20		e8fb655eff		CALL runtime.convTstring(SB)										
  monitor_traffic_controller.go:37	0xe83b25		48898424b0000000	MOVQ AX, 0xb0(SP)											
  monitor_traffic_controller.go:37	0xe83b2d		488b9c24b8000000	MOVQ 0xb8(SP), BX											
  monitor_traffic_controller.go:37	0xe83b35		488d0dba442f00		LEAQ go:string.*+64238(SB), CX										
  monitor_traffic_controller.go:37	0xe83b3c		bf0c000000		MOVL $__major_os_version__+6(SB), DI									
  monitor_traffic_controller.go:37	0xe83b41		488d05380d2200		LEAQ runtime.types+784512(SB), AX									
  monitor_traffic_controller.go:37	0xe83b48		e8d3a45eff		CALL runtime.mapassign_faststr(SB)									
  monitor_traffic_controller.go:37	0xe83b4d		488d0dcced1b00		LEAQ runtime.types+383264(SB), CX									
  monitor_traffic_controller.go:37	0xe83b54		488908			MOVQ CX, 0(AX)												
  monitor_traffic_controller.go:37	0xe83b57		833df29f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  monitor_traffic_controller.go:37	0xe83b5e		6690			NOPW													
  monitor_traffic_controller.go:37	0xe83b60		750a			JNE 0xe83b6c												
  monitor_traffic_controller.go:37	0xe83b62		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  monitor_traffic_controller.go:37	0xe83b6a		eb18			JMP 0xe83b84												
  monitor_traffic_controller.go:37	0xe83b6c		e8cf485fff		CALL runtime.gcWriteBarrier2(SB)									
  monitor_traffic_controller.go:37	0xe83b71		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  monitor_traffic_controller.go:37	0xe83b79		49890b			MOVQ CX, 0(R11)												
  monitor_traffic_controller.go:37	0xe83b7c		488b5008		MOVQ 0x8(AX), DX											
  monitor_traffic_controller.go:37	0xe83b80		49895308		MOVQ DX, 0x8(R11)											
  monitor_traffic_controller.go:37	0xe83b84		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005			0xe83b88		488d0df10c2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005			0xe83b8f		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005			0xe83b97		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  context.go:1005			0xe83b9f		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  context.go:1005			0xe83ba7		488d0532832400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005			0xe83bae		488d9c24c0000000	LEAQ 0xc0(SP), BX											
  context.go:1005			0xe83bb6		e8e5b458ff		CALL runtime.convT(SB)											
  context.go:1005			0xe83bbb		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005			0xe83bc0		488d0d69b6fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005			0xe83bc7		4889c7			MOVQ AX, DI												
  context.go:1005			0xe83bca		488b8424e8000000	MOVQ 0xe8(SP), AX											
  context.go:1005			0xe83bd2		e889bbf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  monitor_traffic_controller.go:38	0xe83bd7		4881c4d8000000		ADDQ $.file+139(SB), SP											
  monitor_traffic_controller.go:38	0xe83bde		5d			POPQ BP													
  monitor_traffic_controller.go:38	0xe83bdf		90			NOPL													
  monitor_traffic_controller.go:38	0xe83be0		c3			RET													
  context.go:752			0xe83be1		4889442420		MOVQ AX, 0x20(SP)											
  context.go:752			0xe83be6		48895c2430		MOVQ BX, 0x30(SP)											
  monitor_traffic_controller.go:22	0xe83beb		e8f0735eff		CALL runtime.makemap_small(SB)										
  monitor_traffic_controller.go:22	0xe83bf0		48898424b8000000	MOVQ AX, 0xb8(SP)											
  monitor_traffic_controller.go:22	0xe83bf8		4889c3			MOVQ AX, BX												
  monitor_traffic_controller.go:22	0xe83bfb		488d0d0bf12e00		LEAQ go:string.*+43013(SB), CX										
  monitor_traffic_controller.go:22	0xe83c02		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  monitor_traffic_controller.go:22	0xe83c07		488d05720c2200		LEAQ runtime.types+784512(SB), AX									
  monitor_traffic_controller.go:22	0xe83c0e		e80da45eff		CALL runtime.mapassign_faststr(SB)									
  monitor_traffic_controller.go:22	0xe83c13		488d0d06f11b00		LEAQ runtime.types+384288(SB), CX									
  monitor_traffic_controller.go:22	0xe83c1a		488908			MOVQ CX, 0(AX)												
  monitor_traffic_controller.go:22	0xe83c1d		833d2c9f6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  monitor_traffic_controller.go:22	0xe83c24		740c			JE 0xe83c32												
  monitor_traffic_controller.go:22	0xe83c26		488b4808		MOVQ 0x8(AX), CX											
  monitor_traffic_controller.go:22	0xe83c2a		e8f1475fff		CALL runtime.gcWriteBarrier1(SB)									
  monitor_traffic_controller.go:22	0xe83c2f		49890b			MOVQ CX, 0(R11)												
  monitor_traffic_controller.go:22	0xe83c32		488d0de76a0f00		LEAQ runtime.staticuint64s(SB), CX									
  monitor_traffic_controller.go:22	0xe83c39		48894808		MOVQ CX, 0x8(AX)											
  monitor_traffic_controller.go:22	0xe83c3d		488b4c2420		MOVQ 0x20(SP), CX											
  monitor_traffic_controller.go:22	0xe83c42		488b4918		MOVQ 0x18(CX), CX											
  monitor_traffic_controller.go:22	0xe83c46		488b442430		MOVQ 0x30(SP), AX											
  monitor_traffic_controller.go:22	0xe83c4b		ffd1			CALL CX													
  monitor_traffic_controller.go:22	0xe83c4d		e8ce645eff		CALL runtime.convTstring(SB)										
  monitor_traffic_controller.go:22	0xe83c52		48898424b0000000	MOVQ AX, 0xb0(SP)											
  monitor_traffic_controller.go:22	0xe83c5a		488b9c24b8000000	MOVQ 0xb8(SP), BX											
  monitor_traffic_controller.go:22	0xe83c62		488d0d88f02e00		LEAQ go:string.*+42985(SB), CX										
  monitor_traffic_controller.go:22	0xe83c69		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  monitor_traffic_controller.go:22	0xe83c6e		488d050b0c2200		LEAQ runtime.types+784512(SB), AX									
  monitor_traffic_controller.go:22	0xe83c75		e8a6a35eff		CALL runtime.mapassign_faststr(SB)									
  monitor_traffic_controller.go:22	0xe83c7a		488d0d9fec1b00		LEAQ runtime.types+383264(SB), CX									
  monitor_traffic_controller.go:22	0xe83c81		488908			MOVQ CX, 0(AX)												
  monitor_traffic_controller.go:22	0xe83c84		833dc59e6d0200		CMPL runtime.writeBarrier(SB), $0x0									
  monitor_traffic_controller.go:22	0xe83c8b		750a			JNE 0xe83c97												
  monitor_traffic_controller.go:22	0xe83c8d		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  monitor_traffic_controller.go:22	0xe83c95		eb18			JMP 0xe83caf												
  monitor_traffic_controller.go:22	0xe83c97		e8a4475fff		CALL runtime.gcWriteBarrier2(SB)									
  monitor_traffic_controller.go:22	0xe83c9c		488b8c24b0000000	MOVQ 0xb0(SP), CX											
  monitor_traffic_controller.go:22	0xe83ca4		49890b			MOVQ CX, 0(R11)												
  monitor_traffic_controller.go:22	0xe83ca7		488b5008		MOVQ 0x8(AX), DX											
  monitor_traffic_controller.go:22	0xe83cab		49895308		MOVQ DX, 0x8(R11)											
  monitor_traffic_controller.go:22	0xe83caf		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005			0xe83cb3		488d0dc60b2200		LEAQ runtime.types+784512(SB), CX									
  context.go:1005			0xe83cba		48898c24c0000000	MOVQ CX, 0xc0(SP)											
  context.go:1005			0xe83cc2		488b8c24b8000000	MOVQ 0xb8(SP), CX											
  context.go:1005			0xe83cca		48898c24c8000000	MOVQ CX, 0xc8(SP)											
  context.go:1005			0xe83cd2		488d0507822400		LEAQ runtime.types+945888(SB), AX									
  context.go:1005			0xe83cd9		488d9c24c0000000	LEAQ 0xc0(SP), BX											
  context.go:1005			0xe83ce1		e8bab358ff		CALL runtime.convT(SB)											
  context.go:1005			0xe83ce6		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005			0xe83ceb		488d0d3eb5fe01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005			0xe83cf2		4889c7			MOVQ AX, DI												
  context.go:1005			0xe83cf5		488b8424e8000000	MOVQ 0xe8(SP), AX											
  context.go:1005			0xe83cfd		0f1f00			NOPL 0(AX)												
  context.go:1005			0xe83d00		e85bbaf7ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  monitor_traffic_controller.go:23	0xe83d05		4881c4d8000000		ADDQ $.file+139(SB), SP											
  monitor_traffic_controller.go:23	0xe83d0c		5d			POPQ BP													
  monitor_traffic_controller.go:23	0xe83d0d		c3			RET													
  context.go:712			0xe83d0e		4d89ca			MOVQ R9, R10												
  context.go:712			0xe83d11		4d21c1			ANDQ R8, R9												
  context.go:712			0xe83d14		49c1e104		SHLQ $__subsystem__+1(SB), R9										
  context.go:712			0xe83d18		4d8b5c3108		MOVQ 0x8(R9)(SI*1), R11											
  context.go:712			0xe83d1d		0f1f00			NOPL 0(AX)												
  context.go:712			0xe83d20		4939db			CMPQ R11, BX												
  context.go:712			0xe83d23		7438			JE 0xe83d5d												
  context.go:712			0xe83d25		4d8d4a01		LEAQ 0x1(R10), R9											
  context.go:712			0xe83d29		4d85db			TESTQ R11, R11												
  context.go:712			0xe83d2c		75e0			JNE 0xe83d0e												
  context.go:712			0xe83d2e		48899424a8000000	MOVQ DX, 0xa8(SP)											
  context.go:712			0xe83d36		488d05f3751300		LEAQ CAS-Backend/biz/controller..typeAssert.28(SB), AX							
  context.go:712			0xe83d3d		0f1f00			NOPL 0(AX)												
  context.go:712			0xe83d40		e89bb558ff		CALL runtime.typeAssert(SB)										
  context.go:752			0xe83d45		488b9424a8000000	MOVQ 0xa8(SP), DX											
  context.go:712			0xe83d4d		4889c1			MOVQ AX, CX												
  context.go:752			0xe83d50		488b8424d0000000	MOVQ 0xd0(SP), AX											
  context.go:712			0xe83d58		e9a8fbffff		JMP 0xe83905												
  context.go:712			0xe83d5d		498b4c3110		MOVQ 0x10(R9)(SI*1), CX											
  context.go:712			0xe83d62		e99efbffff		JMP 0xe83905												
  monitor_traffic_controller.go:19	0xe83d67		4889442408		MOVQ AX, 0x8(SP)											
  monitor_traffic_controller.go:19	0xe83d6c		e86f275fff		CALL runtime.morestack_noctxt.abi0(SB)									
  monitor_traffic_controller.go:19	0xe83d71		488b442408		MOVQ 0x8(SP), AX											
  monitor_traffic_controller.go:19	0xe83d76		e925fbffff		JMP CAS-Backend/biz/controller.MonitorTrafficPushHandler(SB)						
  :-1					0xe83d7b		cc			INT $__subsystem__(SB)											
  :-1					0xe83d7c		cc			INT $__subsystem__(SB)											
  :-1					0xe83d7d		cc			INT $__subsystem__(SB)											
  :-1					0xe83d7e		cc			INT $__subsystem__(SB)											
  :-1					0xe83d7f		cc			INT $__subsystem__(SB)											

