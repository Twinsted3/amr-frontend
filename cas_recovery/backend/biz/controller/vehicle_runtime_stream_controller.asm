TEXT CAS-Backend/biz/controller.init.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_runtime_stream_controller.go
  vehicle_runtime_stream_controller.go:13	0xe76520		b801000000		MOVL $__minor_os_version__(SB), AX	
  vehicle_runtime_stream_controller.go:13	0xe76525		c3			RET					
  :-1						0xe76526		cc			INT $__subsystem__(SB)			
  :-1						0xe76527		cc			INT $__subsystem__(SB)			
  :-1						0xe76528		cc			INT $__subsystem__(SB)			
  :-1						0xe76529		cc			INT $__subsystem__(SB)			
  :-1						0xe7652a		cc			INT $__subsystem__(SB)			
  :-1						0xe7652b		cc			INT $__subsystem__(SB)			
  :-1						0xe7652c		cc			INT $__subsystem__(SB)			
  :-1						0xe7652d		cc			INT $__subsystem__(SB)			
  :-1						0xe7652e		cc			INT $__subsystem__(SB)			
  :-1						0xe7652f		cc			INT $__subsystem__(SB)			
  :-1						0xe76530		cc			INT $__subsystem__(SB)			
  :-1						0xe76531		cc			INT $__subsystem__(SB)			
  :-1						0xe76532		cc			INT $__subsystem__(SB)			
  :-1						0xe76533		cc			INT $__subsystem__(SB)			
  :-1						0xe76534		cc			INT $__subsystem__(SB)			
  :-1						0xe76535		cc			INT $__subsystem__(SB)			
  :-1						0xe76536		cc			INT $__subsystem__(SB)			
  :-1						0xe76537		cc			INT $__subsystem__(SB)			
  :-1						0xe76538		cc			INT $__subsystem__(SB)			
  :-1						0xe76539		cc			INT $__subsystem__(SB)			
  :-1						0xe7653a		cc			INT $__subsystem__(SB)			
  :-1						0xe7653b		cc			INT $__subsystem__(SB)			
  :-1						0xe7653c		cc			INT $__subsystem__(SB)			
  :-1						0xe7653d		cc			INT $__subsystem__(SB)			
  :-1						0xe7653e		cc			INT $__subsystem__(SB)			
  :-1						0xe7653f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/controller.VehicleRuntimeWSHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_runtime_stream_controller.go
  vehicle_runtime_stream_controller.go:18	0xe90ac0		4c8da42458ffffff	LEAQ 0xffffff58(SP), R12										
  vehicle_runtime_stream_controller.go:18	0xe90ac8		4d3b6610		CMPQ R12, 0x10(R14)											
  vehicle_runtime_stream_controller.go:18	0xe90acc		0f868c040000		JBE 0xe90f5e												
  vehicle_runtime_stream_controller.go:18	0xe90ad2		55			PUSHQ BP												
  vehicle_runtime_stream_controller.go:18	0xe90ad3		4889e5			MOVQ SP, BP												
  vehicle_runtime_stream_controller.go:18	0xe90ad6		4881ec20010000		SUBQ $.file+211(SB), SP											
  vehicle_runtime_stream_controller.go:18	0xe90add		440f11bc2410010000	MOVUPS X15, 0x110(SP)											
  vehicle_runtime_stream_controller.go:20	0xe90ae6		4889842430010000	MOVQ AX, 0x130(SP)											
  vehicle_runtime_stream_controller.go:18	0xe90aee		c644243700		MOVB $0x0, 0x37(SP)											
  vehicle_runtime_stream_controller.go:19	0xe90af3		488d1d95492e00		LEAQ go:string.*+53127(SB), BX										
  vehicle_runtime_stream_controller.go:19	0xe90afa		b909000000		MOVL $__major_os_version__+3(SB), CX									
  vehicle_runtime_stream_controller.go:19	0xe90aff		90			NOPL													
  vehicle_runtime_stream_controller.go:19	0xe90b00		e8bbb4f6ff		CALL github.com/gin-gonic/gin.(*Context).Query(SB)							
  vehicle_runtime_stream_controller.go:20	0xe90b05		4885db			TESTQ BX, BX												
  vehicle_runtime_stream_controller.go:20	0xe90b08		743b			JE 0xe90b45												
  vehicle_runtime_stream_controller.go:19	0xe90b0a		4889442470		MOVQ AX, 0x70(SP)											
  vehicle_runtime_stream_controller.go:19	0xe90b0f		48895c2440		MOVQ BX, 0x40(SP)											
  vehicle_runtime_stream_controller.go:24	0xe90b14		488b942430010000	MOVQ 0x130(SP), DX											
  vehicle_runtime_stream_controller.go:24	0xe90b1c		4c8b4228		MOVQ 0x28(DX), R8											
  vehicle_runtime_stream_controller.go:24	0xe90b20		488b4a30		MOVQ 0x30(DX), CX											
  vehicle_runtime_stream_controller.go:24	0xe90b24		4d85c0			TESTQ R8, R8												
  vehicle_runtime_stream_controller.go:24	0xe90b27		0f84c4000000		JE 0xe90bf1												
  vehicle_runtime_stream_controller.go:24	0xe90b2d		4d8b4808		MOVQ 0x8(R8), R9											
  vehicle_runtime_stream_controller.go:24	0xe90b31		4c8b1518aa1200		MOVQ CAS-Backend/biz/controller..typeAssert.45(SB), R10							
  vehicle_runtime_stream_controller.go:24	0xe90b38		4d8b1a			MOVQ 0(R10), R11											
  vehicle_runtime_stream_controller.go:24	0xe90b3b		458b4010		MOVL 0x10(R8), R8											
  vehicle_runtime_stream_controller.go:24	0xe90b3f		90			NOPL													
  vehicle_runtime_stream_controller.go:24	0xe90b40		e9b4030000		JMP 0xe90ef9												
  vehicle_runtime_stream_controller.go:21	0xe90b45		e896a45dff		CALL runtime.makemap_small(SB)										
  vehicle_runtime_stream_controller.go:21	0xe90b4a		48898424a8000000	MOVQ AX, 0xa8(SP)											
  vehicle_runtime_stream_controller.go:21	0xe90b52		4889c3			MOVQ AX, BX												
  vehicle_runtime_stream_controller.go:21	0xe90b55		488d0d659a2d00		LEAQ go:string.*+8377(SB), CX										
  vehicle_runtime_stream_controller.go:21	0xe90b5c		bf05000000		MOVL $__subsystem__+2(SB), DI										
  vehicle_runtime_stream_controller.go:21	0xe90b61		488d05183d2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_stream_controller.go:21	0xe90b68		e8b3d45dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_stream_controller.go:21	0xe90b6d		488d0dac1d1b00		LEAQ runtime.types+383264(SB), CX									
  vehicle_runtime_stream_controller.go:21	0xe90b74		488908			MOVQ CX, 0(AX)												
  vehicle_runtime_stream_controller.go:21	0xe90b77		833dd2cf6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_stream_controller.go:21	0xe90b7e		6690			NOPW													
  vehicle_runtime_stream_controller.go:21	0xe90b80		740c			JE 0xe90b8e												
  vehicle_runtime_stream_controller.go:21	0xe90b82		488b4808		MOVQ 0x8(AX), CX											
  vehicle_runtime_stream_controller.go:21	0xe90b86		e895785eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_runtime_stream_controller.go:21	0xe90b8b		49890b			MOVQ CX, 0(R11)												
  vehicle_runtime_stream_controller.go:21	0xe90b8e		488d0d4b84fd01		LEAQ CAS-Backend/biz/controller..stmp_363(SB), CX							
  vehicle_runtime_stream_controller.go:21	0xe90b95		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005				0xe90b99		488d0de03c2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005				0xe90ba0		48898c2400010000	MOVQ CX, 0x100(SP)											
  context.go:1005				0xe90ba8		488b8c24a8000000	MOVQ 0xa8(SP), CX											
  context.go:1005				0xe90bb0		48898c2408010000	MOVQ CX, 0x108(SP)											
  context.go:1005				0xe90bb8		488d0521b32300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005				0xe90bbf		488d9c2400010000	LEAQ 0x100(SP), BX											
  context.go:1005				0xe90bc7		e8d4e457ff		CALL runtime.convT(SB)											
  context.go:1005				0xe90bcc		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005				0xe90bd1		488d0d58e6fd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005				0xe90bd8		4889c7			MOVQ AX, DI												
  context.go:1005				0xe90bdb		488b842430010000	MOVQ 0x130(SP), AX											
  context.go:1005				0xe90be3		e878ebf6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_runtime_stream_controller.go:22	0xe90be8		4881c420010000		ADDQ $.file+211(SB), SP											
  vehicle_runtime_stream_controller.go:22	0xe90bef		5d			POPQ BP													
  vehicle_runtime_stream_controller.go:22	0xe90bf0		c3			RET													
  vehicle_runtime_stream_controller.go:24	0xe90bf1		488b7a20		MOVQ 0x20(DX), DI											
  vehicle_runtime_stream_controller.go:24	0xe90bf5		488d0544481400		LEAQ CAS-Backend/biz/controller.vehicleRuntimeUpgrader(SB), AX						
  vehicle_runtime_stream_controller.go:24	0xe90bfc		4c89c3			MOVQ R8, BX												
  vehicle_runtime_stream_controller.go:24	0xe90bff		31f6			XORL SI, SI												
  vehicle_runtime_stream_controller.go:24	0xe90c01		e8ba27feff		CALL github.com/gorilla/websocket.(*Upgrader).Upgrade(SB)						
  vehicle_runtime_stream_controller.go:25	0xe90c06		4885db			TESTQ BX, BX												
  vehicle_runtime_stream_controller.go:25	0xe90c09		0f8524010000		JNE 0xe90d33												
  vehicle_runtime_stream_controller.go:24	0xe90c0f		4889442468		MOVQ AX, 0x68(SP)											
  vehicle_runtime_stream_controller.go:28	0xe90c14		488d1585090000		LEAQ CAS-Backend/biz/controller.VehicleRuntimeWSHandler.deferwrap1(SB), DX				
  vehicle_runtime_stream_controller.go:28	0xe90c1b		48899424f0000000	MOVQ DX, 0xf0(SP)											
  vehicle_runtime_stream_controller.go:28	0xe90c23		48898424f8000000	MOVQ AX, 0xf8(SP)											
  vehicle_runtime_stream_controller.go:28	0xe90c2b		488d9424f0000000	LEAQ 0xf0(SP), DX											
  vehicle_runtime_stream_controller.go:28	0xe90c33		4889942410010000	MOVQ DX, 0x110(SP)											
  vehicle_runtime_stream_controller.go:28	0xe90c3b		c644243701		MOVB $__minor_os_version__(SB), 0x37(SP)								
  vehicle_runtime_stream_controller.go:30	0xe90c40		488d1579040000		LEAQ CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func1(SB), DX					
  vehicle_runtime_stream_controller.go:30	0xe90c47		48899424e0000000	MOVQ DX, 0xe0(SP)											
  vehicle_runtime_stream_controller.go:30	0xe90c4f		48898424e8000000	MOVQ AX, 0xe8(SP)											
  vehicle_runtime_stream_controller.go:50	0xe90c57		488b15123f1200		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), DX						
  vehicle_runtime_stream_controller.go:50	0xe90c5e		488b5c2470		MOVQ 0x70(SP), BX											
  vehicle_runtime_stream_controller.go:50	0xe90c63		488b4c2440		MOVQ 0x40(SP), CX											
  vehicle_runtime_stream_controller.go:50	0xe90c68		4889d0			MOVQ DX, AX												
  vehicle_runtime_stream_controller.go:50	0xe90c6b		e8501bfbff		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).FreshByQuery(SB)					
  vehicle_runtime_stream_controller.go:50	0xe90c70		84db			TESTL BL, BL												
  vehicle_runtime_stream_controller.go:50	0xe90c72		7412			JE 0xe90c86												
  vehicle_runtime_stream_controller.go:51	0xe90c74		488b8c24e0000000	MOVQ 0xe0(SP), CX											
  vehicle_runtime_stream_controller.go:51	0xe90c7c		488d9424e0000000	LEAQ 0xe0(SP), DX											
  vehicle_runtime_stream_controller.go:51	0xe90c84		ffd1			CALL CX													
  vehicle_runtime_stream_controller.go:54	0xe90c86		488d0513591b00		LEAQ runtime.types+398752(SB), AX									
  vehicle_runtime_stream_controller.go:54	0xe90c8d		31db			XORL BX, BX												
  vehicle_runtime_stream_controller.go:54	0xe90c8f		e8ac8c57ff		CALL runtime.makechan(SB)										
  vehicle_runtime_stream_controller.go:54	0xe90c94		4889842490000000	MOVQ AX, 0x90(SP)											
  vehicle_runtime_stream_controller.go:55	0xe90c9c		488d057de02300		LEAQ runtime.types+957728(SB), AX									
  vehicle_runtime_stream_controller.go:55	0xe90ca3		e8f80a58ff		CALL runtime.newobject(SB)										
  vehicle_runtime_stream_controller.go:55	0xe90ca8		488d0d31030000		LEAQ CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func2(SB), CX					
  vehicle_runtime_stream_controller.go:55	0xe90caf		488908			MOVQ CX, 0(AX)												
  vehicle_runtime_stream_controller.go:55	0xe90cb2		833d97ce6c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_stream_controller.go:55	0xe90cb9		750f			JNE 0xe90cca												
  vehicle_runtime_stream_controller.go:55	0xe90cbb		488b8c2490000000	MOVQ 0x90(SP), CX											
  vehicle_runtime_stream_controller.go:55	0xe90cc3		488b542468		MOVQ 0x68(SP), DX											
  vehicle_runtime_stream_controller.go:55	0xe90cc8		eb19			JMP 0xe90ce3												
  vehicle_runtime_stream_controller.go:55	0xe90cca		e871775eff		CALL runtime.gcWriteBarrier2(SB)									
  vehicle_runtime_stream_controller.go:55	0xe90ccf		488b8c2490000000	MOVQ 0x90(SP), CX											
  vehicle_runtime_stream_controller.go:55	0xe90cd7		49890b			MOVQ CX, 0(R11)												
  vehicle_runtime_stream_controller.go:55	0xe90cda		488b542468		MOVQ 0x68(SP), DX											
  vehicle_runtime_stream_controller.go:55	0xe90cdf		49895308		MOVQ DX, 0x8(R11)											
  vehicle_runtime_stream_controller.go:55	0xe90ce3		48894808		MOVQ CX, 0x8(AX)											
  vehicle_runtime_stream_controller.go:55	0xe90ce7		48895010		MOVQ DX, 0x10(AX)											
  vehicle_runtime_stream_controller.go:55	0xe90ceb		e850685bff		CALL runtime.newproc(SB)										
  vehicle_runtime_stream_controller.go:65	0xe90cf0		b8002d3101		MOVL $go:string.*+1746936(SB), AX									
  vehicle_runtime_stream_controller.go:65	0xe90cf5		e8e61f61ff		CALL time.NewTicker(SB)											
  vehicle_runtime_stream_controller.go:65	0xe90cfa		4889442478		MOVQ AX, 0x78(SP)											
  vehicle_runtime_stream_controller.go:66	0xe90cff		488d0d7a020000		LEAQ CAS-Backend/biz/controller.VehicleRuntimeWSHandler.deferwrap2(SB), CX				
  vehicle_runtime_stream_controller.go:66	0xe90d06		48898c24d0000000	MOVQ CX, 0xd0(SP)											
  vehicle_runtime_stream_controller.go:66	0xe90d0e		48898424d8000000	MOVQ AX, 0xd8(SP)											
  vehicle_runtime_stream_controller.go:66	0xe90d16		488d8c24d0000000	LEAQ 0xd0(SP), CX											
  vehicle_runtime_stream_controller.go:66	0xe90d1e		48898c2418010000	MOVQ CX, 0x118(SP)											
  vehicle_runtime_stream_controller.go:66	0xe90d26		c644243703		MOVB $__subsystem__(SB), 0x37(SP)									
  vehicle_runtime_stream_controller.go:66	0xe90d2b		31c9			XORL CX, CX												
  vehicle_runtime_stream_controller.go:66	0xe90d2d		31d2			XORL DX, DX												
  vehicle_runtime_stream_controller.go:66	0xe90d2f		31db			XORL BX, BX												
  vehicle_runtime_stream_controller.go:68	0xe90d31		eb17			JMP 0xe90d4a												
  vehicle_runtime_stream_controller.go:26	0xe90d33		4881c420010000		ADDQ $.file+211(SB), SP											
  vehicle_runtime_stream_controller.go:26	0xe90d3a		5d			POPQ BP													
  vehicle_runtime_stream_controller.go:26	0xe90d3b		c3			RET													
  vehicle_runtime_stream_controller.go:77	0xe90d3c		4889d3			MOVQ DX, BX												
  vehicle_runtime_stream_controller.go:77	0xe90d3f		4889ca			MOVQ CX, DX												
  vehicle_runtime_stream_controller.go:77	0xe90d42		4889c1			MOVQ AX, CX												
  vehicle_runtime_stream_controller.go:72	0xe90d45		488b442478		MOVQ 0x78(SP), AX											
  vehicle_runtime_stream_controller.go:77	0xe90d4a		48899c2488000000	MOVQ BX, 0x88(SP)											
  vehicle_runtime_stream_controller.go:77	0xe90d52		48894c2450		MOVQ CX, 0x50(SP)											
  vehicle_runtime_stream_controller.go:77	0xe90d57		4889542448		MOVQ DX, 0x48(SP)											
  vehicle_runtime_stream_controller.go:72	0xe90d5c		4c8b08			MOVQ 0(AX), R9												
  vehicle_runtime_stream_controller.go:69	0xe90d5f		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)											
  vehicle_runtime_stream_controller.go:69	0xe90d68		440f11bc24c0000000	MOVUPS X15, 0xc0(SP)											
  vehicle_runtime_stream_controller.go:70	0xe90d71		4c8b942490000000	MOVQ 0x90(SP), R10											
  vehicle_runtime_stream_controller.go:70	0xe90d79		4c899424c0000000	MOVQ R10, 0xc0(SP)											
  vehicle_runtime_stream_controller.go:72	0xe90d81		4c898c24b0000000	MOVQ R9, 0xb0(SP)											
  vehicle_runtime_stream_controller.go:69	0xe90d89		31ff			XORL DI, DI												
  vehicle_runtime_stream_controller.go:69	0xe90d8b		be02000000		MOVL $__minor_os_version__+1(SB), SI									
  vehicle_runtime_stream_controller.go:69	0xe90d90		41b801000000		MOVL $__minor_os_version__(SB), R8									
  vehicle_runtime_stream_controller.go:69	0xe90d96		488d8424b0000000	LEAQ 0xb0(SP), AX											
  vehicle_runtime_stream_controller.go:69	0xe90d9e		488d5c2438		LEAQ 0x38(SP), BX											
  vehicle_runtime_stream_controller.go:69	0xe90da3		31c9			XORL CX, CX												
  vehicle_runtime_stream_controller.go:69	0xe90da5		e856d75bff		CALL runtime.selectgo(SB)										
  vehicle_runtime_stream_controller.go:72	0xe90daa		4885c0			TESTQ AX, AX												
  vehicle_runtime_stream_controller.go:72	0xe90dad		0f8519010000		JNE 0xe90ecc												
  vehicle_runtime_stream_controller.go:73	0xe90db3		488b05b63d1200		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), AX						
  vehicle_runtime_stream_controller.go:73	0xe90dba		488b5c2470		MOVQ 0x70(SP), BX											
  vehicle_runtime_stream_controller.go:73	0xe90dbf		488b4c2440		MOVQ 0x40(SP), CX											
  vehicle_runtime_stream_controller.go:73	0xe90dc4		e8f719fbff		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).FreshByQuery(SB)					
  vehicle_runtime_stream_controller.go:73	0xe90dc9		84db			TESTL BL, BL												
  vehicle_runtime_stream_controller.go:74	0xe90dcb		0f84b7000000		JE 0xe90e88												
  vehicle_runtime_stream_controller.go:74	0xe90dd1		4885c0			TESTQ AX, AX												
  vehicle_runtime_stream_controller.go:74	0xe90dd4		0f84ae000000		JE 0xe90e88												
  vehicle_runtime_stream_controller.go:73	0xe90dda		4889842480000000	MOVQ AX, 0x80(SP)											
  vehicle_runtime_stream_controller.go:77	0xe90de2		488b88f8000000		MOVQ 0xf8(AX), CX											
  vehicle_runtime_stream_controller.go:77	0xe90de9		488b90e8000000		MOVQ 0xe8(AX), DX											
  vehicle_runtime_stream_controller.go:77	0xe90df0		488b98f0000000		MOVQ 0xf0(AX), BX											
  vehicle_runtime_stream_controller.go:77	0xe90df7		488b7c2448		MOVQ 0x48(SP), DI											
  vehicle_runtime_stream_controller.go:77	0xe90dfc		488b742450		MOVQ 0x50(SP), SI											
  vehicle_runtime_stream_controller.go:77	0xe90e01		4c8b842488000000	MOVQ 0x88(SP), R8											
  vehicle_runtime_stream_controller.go:77	0xe90e09		4889d0			MOVQ DX, AX												
  vehicle_runtime_stream_controller.go:77	0xe90e0c		e82f2161ff		CALL time.Time.After(SB)										
  vehicle_runtime_stream_controller.go:77	0xe90e11		84c0			TESTL AL, AL												
  vehicle_runtime_stream_controller.go:77	0xe90e13		7517			JNE 0xe90e2c												
  vehicle_runtime_stream_controller.go:77	0xe90e15		488b442450		MOVQ 0x50(SP), AX											
  vehicle_runtime_stream_controller.go:77	0xe90e1a		488b4c2448		MOVQ 0x48(SP), CX											
  vehicle_runtime_stream_controller.go:77	0xe90e1f		488b942488000000	MOVQ 0x88(SP), DX											
  vehicle_runtime_stream_controller.go:78	0xe90e27		e910ffffff		JMP 0xe90d3c												
  vehicle_runtime_stream_controller.go:81	0xe90e2c		488b8c24e0000000	MOVQ 0xe0(SP), CX											
  vehicle_runtime_stream_controller.go:80	0xe90e34		488b842480000000	MOVQ 0x80(SP), AX											
  vehicle_runtime_stream_controller.go:80	0xe90e3c		488b98f8000000		MOVQ 0xf8(AX), BX											
  vehicle_runtime_stream_controller.go:80	0xe90e43		48899c24a0000000	MOVQ BX, 0xa0(SP)											
  vehicle_runtime_stream_controller.go:80	0xe90e4b		488bb0e8000000		MOVQ 0xe8(AX), SI											
  vehicle_runtime_stream_controller.go:80	0xe90e52		4889742460		MOVQ SI, 0x60(SP)											
  vehicle_runtime_stream_controller.go:80	0xe90e57		488bb8f0000000		MOVQ 0xf0(AX), DI											
  vehicle_runtime_stream_controller.go:80	0xe90e5e		48897c2458		MOVQ DI, 0x58(SP)											
  vehicle_runtime_stream_controller.go:81	0xe90e63		488d9424e0000000	LEAQ 0xe0(SP), DX											
  vehicle_runtime_stream_controller.go:81	0xe90e6b		ffd1			CALL CX													
  vehicle_runtime_stream_controller.go:81	0xe90e6d		84c0			TESTL AL, AL												
  vehicle_runtime_stream_controller.go:81	0xe90e6f		742e			JE 0xe90e9f												
  vehicle_runtime_stream_controller.go:77	0xe90e71		488b442458		MOVQ 0x58(SP), AX											
  vehicle_runtime_stream_controller.go:77	0xe90e76		488b4c2460		MOVQ 0x60(SP), CX											
  vehicle_runtime_stream_controller.go:77	0xe90e7b		488b9424a0000000	MOVQ 0xa0(SP), DX											
  vehicle_runtime_stream_controller.go:72	0xe90e83		e9b4feffff		JMP 0xe90d3c												
  vehicle_runtime_stream_controller.go:77	0xe90e88		488b442450		MOVQ 0x50(SP), AX											
  vehicle_runtime_stream_controller.go:77	0xe90e8d		488b4c2448		MOVQ 0x48(SP), CX											
  vehicle_runtime_stream_controller.go:77	0xe90e92		488b942488000000	MOVQ 0x88(SP), DX											
  vehicle_runtime_stream_controller.go:75	0xe90e9a		e99dfeffff		JMP 0xe90d3c												
  vehicle_runtime_stream_controller.go:82	0xe90e9f		c644243701		MOVB $__minor_os_version__(SB), 0x37(SP)								
  vehicle_runtime_stream_controller.go:82	0xe90ea4		488b942418010000	MOVQ 0x118(SP), DX											
  vehicle_runtime_stream_controller.go:82	0xe90eac		488b02			MOVQ 0(DX), AX												
  vehicle_runtime_stream_controller.go:82	0xe90eaf		ffd0			CALL AX													
  vehicle_runtime_stream_controller.go:82	0xe90eb1		c644243700		MOVB $0x0, 0x37(SP)											
  vehicle_runtime_stream_controller.go:82	0xe90eb6		488b942410010000	MOVQ 0x110(SP), DX											
  vehicle_runtime_stream_controller.go:82	0xe90ebe		488b02			MOVQ 0(DX), AX												
  vehicle_runtime_stream_controller.go:82	0xe90ec1		ffd0			CALL AX													
  vehicle_runtime_stream_controller.go:82	0xe90ec3		4881c420010000		ADDQ $.file+211(SB), SP											
  vehicle_runtime_stream_controller.go:82	0xe90eca		5d			POPQ BP													
  vehicle_runtime_stream_controller.go:82	0xe90ecb		c3			RET													
  vehicle_runtime_stream_controller.go:71	0xe90ecc		c644243701		MOVB $__minor_os_version__(SB), 0x37(SP)								
  vehicle_runtime_stream_controller.go:71	0xe90ed1		488b942418010000	MOVQ 0x118(SP), DX											
  vehicle_runtime_stream_controller.go:71	0xe90ed9		488b02			MOVQ 0(DX), AX												
  vehicle_runtime_stream_controller.go:71	0xe90edc		ffd0			CALL AX													
  vehicle_runtime_stream_controller.go:71	0xe90ede		c644243700		MOVB $0x0, 0x37(SP)											
  vehicle_runtime_stream_controller.go:71	0xe90ee3		488b942410010000	MOVQ 0x110(SP), DX											
  vehicle_runtime_stream_controller.go:71	0xe90eeb		488b02			MOVQ 0(DX), AX												
  vehicle_runtime_stream_controller.go:71	0xe90eee		ffd0			CALL AX													
  vehicle_runtime_stream_controller.go:71	0xe90ef0		4881c420010000		ADDQ $.file+211(SB), SP											
  vehicle_runtime_stream_controller.go:71	0xe90ef7		5d			POPQ BP													
  vehicle_runtime_stream_controller.go:71	0xe90ef8		c3			RET													
  vehicle_runtime_stream_controller.go:24	0xe90ef9		4d89c4			MOVQ R8, R12												
  vehicle_runtime_stream_controller.go:24	0xe90efc		4d21d8			ANDQ R11, R8												
  vehicle_runtime_stream_controller.go:24	0xe90eff		49c1e004		SHLQ $__subsystem__+1(SB), R8										
  vehicle_runtime_stream_controller.go:24	0xe90f03		4f8b6c1008		MOVQ 0x8(R8)(R10*1), R13										
  vehicle_runtime_stream_controller.go:24	0xe90f08		4d39cd			CMPQ R13, R9												
  vehicle_runtime_stream_controller.go:24	0xe90f0b		7439			JE 0xe90f46												
  vehicle_runtime_stream_controller.go:24	0xe90f0d		4d8d442401		LEAQ 0x1(R12), R8											
  vehicle_runtime_stream_controller.go:24	0xe90f12		4d85ed			TESTQ R13, R13												
  vehicle_runtime_stream_controller.go:24	0xe90f15		75e2			JNE 0xe90ef9												
  vehicle_runtime_stream_controller.go:24	0xe90f17		48898c2498000000	MOVQ CX, 0x98(SP)											
  vehicle_runtime_stream_controller.go:24	0xe90f1f		488d052aa61200		LEAQ CAS-Backend/biz/controller..typeAssert.45(SB), AX							
  vehicle_runtime_stream_controller.go:24	0xe90f26		4c89cb			MOVQ R9, BX												
  vehicle_runtime_stream_controller.go:24	0xe90f29		e8b2e357ff		CALL runtime.typeAssert(SB)										
  vehicle_runtime_stream_controller.go:24	0xe90f2e		488b8c2498000000	MOVQ 0x98(SP), CX											
  vehicle_runtime_stream_controller.go:24	0xe90f36		488b942430010000	MOVQ 0x130(SP), DX											
  vehicle_runtime_stream_controller.go:24	0xe90f3e		4989c0			MOVQ AX, R8												
  vehicle_runtime_stream_controller.go:24	0xe90f41		e9abfcffff		JMP 0xe90bf1												
  vehicle_runtime_stream_controller.go:24	0xe90f46		4f8b441010		MOVQ 0x10(R8)(R10*1), R8										
  vehicle_runtime_stream_controller.go:24	0xe90f4b		e9a1fcffff		JMP 0xe90bf1												
  vehicle_runtime_stream_controller.go:24	0xe90f50		e82b8c5aff		CALL runtime.deferreturn(SB)										
  vehicle_runtime_stream_controller.go:24	0xe90f55		4881c420010000		ADDQ $.file+211(SB), SP											
  vehicle_runtime_stream_controller.go:24	0xe90f5c		5d			POPQ BP													
  vehicle_runtime_stream_controller.go:24	0xe90f5d		c3			RET													
  vehicle_runtime_stream_controller.go:18	0xe90f5e		4889442408		MOVQ AX, 0x8(SP)											
  vehicle_runtime_stream_controller.go:18	0xe90f63		e878555eff		CALL runtime.morestack_noctxt.abi0(SB)									
  vehicle_runtime_stream_controller.go:18	0xe90f68		488b442408		MOVQ 0x8(SP), AX											
  vehicle_runtime_stream_controller.go:18	0xe90f6d		e94efbffff		JMP CAS-Backend/biz/controller.VehicleRuntimeWSHandler(SB)						
  :-1						0xe90f72		cc			INT $__subsystem__(SB)											
  :-1						0xe90f73		cc			INT $__subsystem__(SB)											
  :-1						0xe90f74		cc			INT $__subsystem__(SB)											
  :-1						0xe90f75		cc			INT $__subsystem__(SB)											
  :-1						0xe90f76		cc			INT $__subsystem__(SB)											
  :-1						0xe90f77		cc			INT $__subsystem__(SB)											
  :-1						0xe90f78		cc			INT $__subsystem__(SB)											
  :-1						0xe90f79		cc			INT $__subsystem__(SB)											
  :-1						0xe90f7a		cc			INT $__subsystem__(SB)											
  :-1						0xe90f7b		cc			INT $__subsystem__(SB)											
  :-1						0xe90f7c		cc			INT $__subsystem__(SB)											
  :-1						0xe90f7d		cc			INT $__subsystem__(SB)											
  :-1						0xe90f7e		cc			INT $__subsystem__(SB)											
  :-1						0xe90f7f		cc			INT $__subsystem__(SB)											

TEXT CAS-Backend/biz/controller.VehicleRuntimeWSHandler.deferwrap2(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_runtime_stream_controller.go
  vehicle_runtime_stream_controller.go:66	0xe90f80		493b6610		CMPQ SP, 0x10(R14)							
  vehicle_runtime_stream_controller.go:66	0xe90f84		7627			JBE 0xe90fad								
  vehicle_runtime_stream_controller.go:66	0xe90f86		55			PUSHQ BP								
  vehicle_runtime_stream_controller.go:66	0xe90f87		4889e5			MOVQ SP, BP								
  vehicle_runtime_stream_controller.go:66	0xe90f8a		4883ec08		SUBQ $__major_os_version__+2(SB), SP					
  vehicle_runtime_stream_controller.go:66	0xe90f8e		4d8b6620		MOVQ 0x20(R14), R12							
  vehicle_runtime_stream_controller.go:66	0xe90f92		4d85e4			TESTQ R12, R12								
  vehicle_runtime_stream_controller.go:66	0xe90f95		751d			JNE 0xe90fb4								
  vehicle_runtime_stream_controller.go:66	0xe90f97		488b4208		MOVQ 0x8(DX), AX							
  tick.go:53					0xe90f9b		80780800		CMPB 0x8(AX), $0x0							
  tick.go:53					0xe90f9f		90			NOPL									
  tick.go:53					0xe90fa0		7405			JE 0xe90fa7								
  tick.go:59					0xe90fa2		e8d9335eff		CALL time.stopTimer(SB)							
  vehicle_runtime_stream_controller.go:66	0xe90fa7		4883c408		ADDQ $__major_os_version__+2(SB), SP					
  vehicle_runtime_stream_controller.go:66	0xe90fab		5d			POPQ BP									
  vehicle_runtime_stream_controller.go:66	0xe90fac		c3			RET									
  vehicle_runtime_stream_controller.go:66	0xe90fad		e8ae545eff		CALL runtime.morestack.abi0(SB)						
  vehicle_runtime_stream_controller.go:66	0xe90fb2		ebcc			JMP CAS-Backend/biz/controller.VehicleRuntimeWSHandler.deferwrap2(SB)	
  vehicle_runtime_stream_controller.go:66	0xe90fb4		4c8d6c2418		LEAQ 0x18(SP), R13							
  vehicle_runtime_stream_controller.go:66	0xe90fb9		4d392c24		CMPQ 0(R12), R13							
  vehicle_runtime_stream_controller.go:66	0xe90fbd		75d8			JNE 0xe90f97								
  vehicle_runtime_stream_controller.go:66	0xe90fbf		49892424		MOVQ SP, 0(R12)								
  vehicle_runtime_stream_controller.go:66	0xe90fc3		ebd2			JMP 0xe90f97								
  :-1						0xe90fc5		cc			INT $__subsystem__(SB)							
  :-1						0xe90fc6		cc			INT $__subsystem__(SB)							
  :-1						0xe90fc7		cc			INT $__subsystem__(SB)							
  :-1						0xe90fc8		cc			INT $__subsystem__(SB)							
  :-1						0xe90fc9		cc			INT $__subsystem__(SB)							
  :-1						0xe90fca		cc			INT $__subsystem__(SB)							
  :-1						0xe90fcb		cc			INT $__subsystem__(SB)							
  :-1						0xe90fcc		cc			INT $__subsystem__(SB)							
  :-1						0xe90fcd		cc			INT $__subsystem__(SB)							
  :-1						0xe90fce		cc			INT $__subsystem__(SB)							
  :-1						0xe90fcf		cc			INT $__subsystem__(SB)							
  :-1						0xe90fd0		cc			INT $__subsystem__(SB)							
  :-1						0xe90fd1		cc			INT $__subsystem__(SB)							
  :-1						0xe90fd2		cc			INT $__subsystem__(SB)							
  :-1						0xe90fd3		cc			INT $__subsystem__(SB)							
  :-1						0xe90fd4		cc			INT $__subsystem__(SB)							
  :-1						0xe90fd5		cc			INT $__subsystem__(SB)							
  :-1						0xe90fd6		cc			INT $__subsystem__(SB)							
  :-1						0xe90fd7		cc			INT $__subsystem__(SB)							
  :-1						0xe90fd8		cc			INT $__subsystem__(SB)							
  :-1						0xe90fd9		cc			INT $__subsystem__(SB)							
  :-1						0xe90fda		cc			INT $__subsystem__(SB)							
  :-1						0xe90fdb		cc			INT $__subsystem__(SB)							
  :-1						0xe90fdc		cc			INT $__subsystem__(SB)							
  :-1						0xe90fdd		cc			INT $__subsystem__(SB)							
  :-1						0xe90fde		cc			INT $__subsystem__(SB)							
  :-1						0xe90fdf		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func2(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_runtime_stream_controller.go
  vehicle_runtime_stream_controller.go:55	0xe90fe0		493b6610		CMPQ SP, 0x10(R14)									
  vehicle_runtime_stream_controller.go:55	0xe90fe4		7672			JBE 0xe91058										
  vehicle_runtime_stream_controller.go:55	0xe90fe6		55			PUSHQ BP										
  vehicle_runtime_stream_controller.go:55	0xe90fe7		4889e5			MOVQ SP, BP										
  vehicle_runtime_stream_controller.go:55	0xe90fea		4883ec30		SUBQ $__major_os_version__+42(SB), SP							
  vehicle_runtime_stream_controller.go:55	0xe90fee		66440fd67c2428		MOVQ X15, 0x28(SP)									
  vehicle_runtime_stream_controller.go:55	0xe90ff5		c644240f00		MOVB $0x0, 0xf(SP)									
  vehicle_runtime_stream_controller.go:55	0xe90ffa		488b4a08		MOVQ 0x8(DX), CX									
  vehicle_runtime_stream_controller.go:55	0xe90ffe		488b4210		MOVQ 0x10(DX), AX									
  vehicle_runtime_stream_controller.go:55	0xe91002		4889442410		MOVQ AX, 0x10(SP)									
  vehicle_runtime_stream_controller.go:56	0xe91007		488d1552000000		LEAQ CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func2.deferwrap1(SB), DX	
  vehicle_runtime_stream_controller.go:56	0xe9100e		4889542418		MOVQ DX, 0x18(SP)									
  vehicle_runtime_stream_controller.go:56	0xe91013		48894c2420		MOVQ CX, 0x20(SP)									
  vehicle_runtime_stream_controller.go:56	0xe91018		488d4c2418		LEAQ 0x18(SP), CX									
  vehicle_runtime_stream_controller.go:56	0xe9101d		48894c2428		MOVQ CX, 0x28(SP)									
  vehicle_runtime_stream_controller.go:56	0xe91022		c644240f01		MOVB $__minor_os_version__(SB), 0xf(SP)							
  vehicle_runtime_stream_controller.go:57	0xe91027		eb05			JMP 0xe9102e										
  vehicle_runtime_stream_controller.go:58	0xe91029		488b442410		MOVQ 0x10(SP), AX									
  vehicle_runtime_stream_controller.go:58	0xe9102e		e8cd07feff		CALL github.com/gorilla/websocket.(*Conn).ReadMessage(SB)				
  vehicle_runtime_stream_controller.go:58	0xe91033		4885f6			TESTQ SI, SI										
  vehicle_runtime_stream_controller.go:58	0xe91036		74f1			JE 0xe91029										
  vehicle_runtime_stream_controller.go:59	0xe91038		c644240f00		MOVB $0x0, 0xf(SP)									
  vehicle_runtime_stream_controller.go:59	0xe9103d		488b542428		MOVQ 0x28(SP), DX									
  vehicle_runtime_stream_controller.go:59	0xe91042		488b02			MOVQ 0(DX), AX										
  vehicle_runtime_stream_controller.go:59	0xe91045		ffd0			CALL AX											
  vehicle_runtime_stream_controller.go:59	0xe91047		4883c430		ADDQ $__major_os_version__+42(SB), SP							
  vehicle_runtime_stream_controller.go:59	0xe9104b		5d			POPQ BP											
  vehicle_runtime_stream_controller.go:59	0xe9104c		c3			RET											
  vehicle_runtime_stream_controller.go:59	0xe9104d		e82e8b5aff		CALL runtime.deferreturn(SB)								
  vehicle_runtime_stream_controller.go:59	0xe91052		4883c430		ADDQ $__major_os_version__+42(SB), SP							
  vehicle_runtime_stream_controller.go:59	0xe91056		5d			POPQ BP											
  vehicle_runtime_stream_controller.go:59	0xe91057		c3			RET											
  vehicle_runtime_stream_controller.go:55	0xe91058		e803545eff		CALL runtime.morestack.abi0(SB)								
  vehicle_runtime_stream_controller.go:55	0xe9105d		eb81			JMP CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func2(SB)			
  :-1						0xe9105f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func2.deferwrap1(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_runtime_stream_controller.go
  vehicle_runtime_stream_controller.go:56	0xe91060		493b6610		CMPQ SP, 0x10(R14)								
  vehicle_runtime_stream_controller.go:56	0xe91064		7625			JBE 0xe9108b									
  vehicle_runtime_stream_controller.go:56	0xe91066		55			PUSHQ BP									
  vehicle_runtime_stream_controller.go:56	0xe91067		4889e5			MOVQ SP, BP									
  vehicle_runtime_stream_controller.go:56	0xe9106a		4883ec08		SUBQ $__major_os_version__+2(SB), SP						
  vehicle_runtime_stream_controller.go:56	0xe9106e		4d8b6620		MOVQ 0x20(R14), R12								
  vehicle_runtime_stream_controller.go:56	0xe91072		4d85e4			TESTQ R12, R12									
  vehicle_runtime_stream_controller.go:56	0xe91075		751b			JNE 0xe91092									
  vehicle_runtime_stream_controller.go:56	0xe91077		488b4208		MOVQ 0x8(DX), AX								
  vehicle_runtime_stream_controller.go:56	0xe9107b		0f1f440000		NOPL 0(AX)(AX*1)								
  vehicle_runtime_stream_controller.go:56	0xe91080		e8fb9357ff		CALL runtime.closechan(SB)							
  vehicle_runtime_stream_controller.go:56	0xe91085		4883c408		ADDQ $__major_os_version__+2(SB), SP						
  vehicle_runtime_stream_controller.go:56	0xe91089		5d			POPQ BP										
  vehicle_runtime_stream_controller.go:56	0xe9108a		c3			RET										
  vehicle_runtime_stream_controller.go:56	0xe9108b		e8d0535eff		CALL runtime.morestack.abi0(SB)							
  vehicle_runtime_stream_controller.go:56	0xe91090		ebce			JMP CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func2.deferwrap1(SB)	
  vehicle_runtime_stream_controller.go:56	0xe91092		4c8d6c2418		LEAQ 0x18(SP), R13								
  vehicle_runtime_stream_controller.go:56	0xe91097		4d392c24		CMPQ 0(R12), R13								
  vehicle_runtime_stream_controller.go:56	0xe9109b		75da			JNE 0xe91077									
  vehicle_runtime_stream_controller.go:56	0xe9109d		49892424		MOVQ SP, 0(R12)									
  vehicle_runtime_stream_controller.go:56	0xe910a1		ebd4			JMP 0xe91077									
  :-1						0xe910a3		cc			INT $__subsystem__(SB)								
  :-1						0xe910a4		cc			INT $__subsystem__(SB)								
  :-1						0xe910a5		cc			INT $__subsystem__(SB)								
  :-1						0xe910a6		cc			INT $__subsystem__(SB)								
  :-1						0xe910a7		cc			INT $__subsystem__(SB)								
  :-1						0xe910a8		cc			INT $__subsystem__(SB)								
  :-1						0xe910a9		cc			INT $__subsystem__(SB)								
  :-1						0xe910aa		cc			INT $__subsystem__(SB)								
  :-1						0xe910ab		cc			INT $__subsystem__(SB)								
  :-1						0xe910ac		cc			INT $__subsystem__(SB)								
  :-1						0xe910ad		cc			INT $__subsystem__(SB)								
  :-1						0xe910ae		cc			INT $__subsystem__(SB)								
  :-1						0xe910af		cc			INT $__subsystem__(SB)								
  :-1						0xe910b0		cc			INT $__subsystem__(SB)								
  :-1						0xe910b1		cc			INT $__subsystem__(SB)								
  :-1						0xe910b2		cc			INT $__subsystem__(SB)								
  :-1						0xe910b3		cc			INT $__subsystem__(SB)								
  :-1						0xe910b4		cc			INT $__subsystem__(SB)								
  :-1						0xe910b5		cc			INT $__subsystem__(SB)								
  :-1						0xe910b6		cc			INT $__subsystem__(SB)								
  :-1						0xe910b7		cc			INT $__subsystem__(SB)								
  :-1						0xe910b8		cc			INT $__subsystem__(SB)								
  :-1						0xe910b9		cc			INT $__subsystem__(SB)								
  :-1						0xe910ba		cc			INT $__subsystem__(SB)								
  :-1						0xe910bb		cc			INT $__subsystem__(SB)								
  :-1						0xe910bc		cc			INT $__subsystem__(SB)								
  :-1						0xe910bd		cc			INT $__subsystem__(SB)								
  :-1						0xe910be		cc			INT $__subsystem__(SB)								
  :-1						0xe910bf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func1(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_runtime_stream_controller.go
  vehicle_runtime_stream_controller.go:30	0xe910c0		493b6610		CMPQ SP, 0x10(R14)							
  vehicle_runtime_stream_controller.go:30	0xe910c4		0f86b7040000		JBE 0xe91581								
  vehicle_runtime_stream_controller.go:30	0xe910ca		55			PUSHQ BP								
  vehicle_runtime_stream_controller.go:30	0xe910cb		4889e5			MOVQ SP, BP								
  vehicle_runtime_stream_controller.go:30	0xe910ce		4883ec40		SUBQ $__major_os_version__+58(SB), SP					
  vehicle_runtime_stream_controller.go:30	0xe910d2		488b5208		MOVQ 0x8(DX), DX							
  vehicle_runtime_stream_controller.go:31	0xe910d6		4885c0			TESTQ AX, AX								
  vehicle_runtime_stream_controller.go:31	0xe910d9		0f849a040000		JE 0xe91579								
  vehicle_runtime_stream_controller.go:31	0xe910df		4889442450		MOVQ AX, 0x50(SP)							
  vehicle_runtime_stream_controller.go:30	0xe910e4		4889542428		MOVQ DX, 0x28(SP)							
  vehicle_runtime_stream_controller.go:34	0xe910e9		488d0590372100		LEAQ runtime.types+784512(SB), AX					
  vehicle_runtime_stream_controller.go:34	0xe910f0		bb09000000		MOVL $__major_os_version__+3(SB), BX					
  vehicle_runtime_stream_controller.go:34	0xe910f5		31c9			XORL CX, CX								
  vehicle_runtime_stream_controller.go:34	0xe910f7		e8249f5dff		CALL runtime.makemap(SB)						
  vehicle_runtime_stream_controller.go:34	0xe910fc		4889442438		MOVQ AX, 0x38(SP)							
  vehicle_runtime_stream_controller.go:35	0xe91101		488b542450		MOVQ 0x50(SP), DX							
  vehicle_runtime_stream_controller.go:35	0xe91106		488b7210		MOVQ 0x10(DX), SI							
  vehicle_runtime_stream_controller.go:35	0xe9110a		488b5a18		MOVQ 0x18(DX), BX							
  vehicle_runtime_stream_controller.go:35	0xe9110e		4889f0			MOVQ SI, AX								
  vehicle_runtime_stream_controller.go:35	0xe91111		e80a905dff		CALL runtime.convTstring(SB)						
  vehicle_runtime_stream_controller.go:35	0xe91116		4889442430		MOVQ AX, 0x30(SP)							
  vehicle_runtime_stream_controller.go:34	0xe9111b		488b5c2438		MOVQ 0x38(SP), BX							
  vehicle_runtime_stream_controller.go:34	0xe91120		488d0d68432e00		LEAQ go:string.*+53127(SB), CX						
  vehicle_runtime_stream_controller.go:34	0xe91127		bf09000000		MOVL $__major_os_version__+3(SB), DI					
  vehicle_runtime_stream_controller.go:34	0xe9112c		488d054d372100		LEAQ runtime.types+784512(SB), AX					
  vehicle_runtime_stream_controller.go:34	0xe91133		e8e8ce5dff		CALL runtime.mapassign_faststr(SB)					
  vehicle_runtime_stream_controller.go:34	0xe91138		488d15e1171b00		LEAQ runtime.types+383264(SB), DX					
  vehicle_runtime_stream_controller.go:34	0xe9113f		488910			MOVQ DX, 0(AX)								
  vehicle_runtime_stream_controller.go:34	0xe91142		833d07ca6c0200		CMPL runtime.writeBarrier(SB), $0x0					
  vehicle_runtime_stream_controller.go:34	0xe91149		7507			JNE 0xe91152								
  vehicle_runtime_stream_controller.go:34	0xe9114b		488b4c2430		MOVQ 0x30(SP), CX							
  vehicle_runtime_stream_controller.go:34	0xe91150		eb15			JMP 0xe91167								
  vehicle_runtime_stream_controller.go:34	0xe91152		e8e9725eff		CALL runtime.gcWriteBarrier2(SB)					
  vehicle_runtime_stream_controller.go:34	0xe91157		488b4c2430		MOVQ 0x30(SP), CX							
  vehicle_runtime_stream_controller.go:34	0xe9115c		49890b			MOVQ CX, 0(R11)								
  vehicle_runtime_stream_controller.go:34	0xe9115f		488b7008		MOVQ 0x8(AX), SI							
  vehicle_runtime_stream_controller.go:34	0xe91163		49897308		MOVQ SI, 0x8(R11)							
  vehicle_runtime_stream_controller.go:34	0xe91167		48894808		MOVQ CX, 0x8(AX)							
  vehicle_runtime_stream_controller.go:36	0xe9116b		488b4c2450		MOVQ 0x50(SP), CX							
  vehicle_runtime_stream_controller.go:36	0xe91170		488b01			MOVQ 0(CX), AX								
  vehicle_runtime_stream_controller.go:36	0xe91173		488b5908		MOVQ 0x8(CX), BX							
  vehicle_runtime_stream_controller.go:36	0xe91177		e8a48f5dff		CALL runtime.convTstring(SB)						
  vehicle_runtime_stream_controller.go:36	0xe9117c		4889442430		MOVQ AX, 0x30(SP)							
  vehicle_runtime_stream_controller.go:34	0xe91181		488b5c2438		MOVQ 0x38(SP), BX							
  vehicle_runtime_stream_controller.go:34	0xe91186		488d0d1ae32d00		LEAQ go:string.*+28575(SB), CX						
  vehicle_runtime_stream_controller.go:34	0xe9118d		bf06000000		MOVL $__major_os_version__(SB), DI					
  vehicle_runtime_stream_controller.go:34	0xe91192		488d05e7362100		LEAQ runtime.types+784512(SB), AX					
  vehicle_runtime_stream_controller.go:34	0xe91199		e882ce5dff		CALL runtime.mapassign_faststr(SB)					
  vehicle_runtime_stream_controller.go:34	0xe9119e		488d0d7b171b00		LEAQ runtime.types+383264(SB), CX					
  vehicle_runtime_stream_controller.go:34	0xe911a5		488908			MOVQ CX, 0(AX)								
  vehicle_runtime_stream_controller.go:34	0xe911a8		833da1c96c0200		CMPL runtime.writeBarrier(SB), $0x0					
  vehicle_runtime_stream_controller.go:34	0xe911af		7507			JNE 0xe911b8								
  vehicle_runtime_stream_controller.go:34	0xe911b1		488b4c2430		MOVQ 0x30(SP), CX							
  vehicle_runtime_stream_controller.go:34	0xe911b6		eb15			JMP 0xe911cd								
  vehicle_runtime_stream_controller.go:34	0xe911b8		e883725eff		CALL runtime.gcWriteBarrier2(SB)					
  vehicle_runtime_stream_controller.go:34	0xe911bd		488b4c2430		MOVQ 0x30(SP), CX							
  vehicle_runtime_stream_controller.go:34	0xe911c2		49890b			MOVQ CX, 0(R11)								
  vehicle_runtime_stream_controller.go:34	0xe911c5		488b5008		MOVQ 0x8(AX), DX							
  vehicle_runtime_stream_controller.go:34	0xe911c9		49895308		MOVQ DX, 0x8(R11)							
  vehicle_runtime_stream_controller.go:34	0xe911cd		48894808		MOVQ CX, 0x8(AX)							
  vehicle_runtime_stream_controller.go:37	0xe911d1		488b4c2450		MOVQ 0x50(SP), CX							
  vehicle_runtime_stream_controller.go:37	0xe911d6		f20f104120		MOVSD_XMM 0x20(CX), X0							
  vehicle_runtime_stream_controller.go:37	0xe911db		66480f7ec0		MOVQ X0, AX								
  vehicle_runtime_stream_controller.go:37	0xe911e0		e8bb8e5dff		CALL runtime.convT64(SB)						
  vehicle_runtime_stream_controller.go:37	0xe911e5		4889442430		MOVQ AX, 0x30(SP)							
  vehicle_runtime_stream_controller.go:34	0xe911ea		488b5c2438		MOVQ 0x38(SP), BX							
  vehicle_runtime_stream_controller.go:34	0xe911ef		488d0d17732d00		LEAQ go:string.*+5(SB), CX						
  vehicle_runtime_stream_controller.go:34	0xe911f6		bf01000000		MOVL $__minor_os_version__(SB), DI					
  vehicle_runtime_stream_controller.go:34	0xe911fb		488d057e362100		LEAQ runtime.types+784512(SB), AX					
  vehicle_runtime_stream_controller.go:34	0xe91202		e819ce5dff		CALL runtime.mapassign_faststr(SB)					
  vehicle_runtime_stream_controller.go:34	0xe91207		488d0dd21a1b00		LEAQ runtime.types+384224(SB), CX					
  vehicle_runtime_stream_controller.go:34	0xe9120e		488908			MOVQ CX, 0(AX)								
  vehicle_runtime_stream_controller.go:34	0xe91211		833d38c96c0200		CMPL runtime.writeBarrier(SB), $0x0					
  vehicle_runtime_stream_controller.go:34	0xe91218		7508			JNE 0xe91222								
  vehicle_runtime_stream_controller.go:34	0xe9121a		488b542430		MOVQ 0x30(SP), DX							
  vehicle_runtime_stream_controller.go:34	0xe9121f		90			NOPL									
  vehicle_runtime_stream_controller.go:34	0xe91220		eb15			JMP 0xe91237								
  vehicle_runtime_stream_controller.go:34	0xe91222		e819725eff		CALL runtime.gcWriteBarrier2(SB)					
  vehicle_runtime_stream_controller.go:34	0xe91227		488b542430		MOVQ 0x30(SP), DX							
  vehicle_runtime_stream_controller.go:34	0xe9122c		498913			MOVQ DX, 0(R11)								
  vehicle_runtime_stream_controller.go:34	0xe9122f		488b5808		MOVQ 0x8(AX), BX							
  vehicle_runtime_stream_controller.go:34	0xe91233		49895b08		MOVQ BX, 0x8(R11)							
  vehicle_runtime_stream_controller.go:34	0xe91237		48895008		MOVQ DX, 0x8(AX)							
  vehicle_runtime_stream_controller.go:38	0xe9123b		488b4c2450		MOVQ 0x50(SP), CX							
  vehicle_runtime_stream_controller.go:38	0xe91240		f20f104128		MOVSD_XMM 0x28(CX), X0							
  vehicle_runtime_stream_controller.go:38	0xe91245		66480f7ec0		MOVQ X0, AX								
  vehicle_runtime_stream_controller.go:38	0xe9124a		e8518e5dff		CALL runtime.convT64(SB)						
  vehicle_runtime_stream_controller.go:38	0xe9124f		4889442430		MOVQ AX, 0x30(SP)							
  vehicle_runtime_stream_controller.go:34	0xe91254		488b5c2438		MOVQ 0x38(SP), BX							
  vehicle_runtime_stream_controller.go:34	0xe91259		488d0dc83dfd01		LEAQ runtime.gcbits.*+1384(SB), CX					
  vehicle_runtime_stream_controller.go:34	0xe91260		bf01000000		MOVL $__minor_os_version__(SB), DI					
  vehicle_runtime_stream_controller.go:34	0xe91265		488d0514362100		LEAQ runtime.types+784512(SB), AX					
  vehicle_runtime_stream_controller.go:34	0xe9126c		e8afcd5dff		CALL runtime.mapassign_faststr(SB)					
  vehicle_runtime_stream_controller.go:34	0xe91271		488d0d681a1b00		LEAQ runtime.types+384224(SB), CX					
  vehicle_runtime_stream_controller.go:34	0xe91278		488908			MOVQ CX, 0(AX)								
  vehicle_runtime_stream_controller.go:34	0xe9127b		833dcec86c0200		CMPL runtime.writeBarrier(SB), $0x0					
  vehicle_runtime_stream_controller.go:34	0xe91282		7507			JNE 0xe9128b								
  vehicle_runtime_stream_controller.go:34	0xe91284		488b542430		MOVQ 0x30(SP), DX							
  vehicle_runtime_stream_controller.go:34	0xe91289		eb15			JMP 0xe912a0								
  vehicle_runtime_stream_controller.go:34	0xe9128b		e8b0715eff		CALL runtime.gcWriteBarrier2(SB)					
  vehicle_runtime_stream_controller.go:34	0xe91290		488b542430		MOVQ 0x30(SP), DX							
  vehicle_runtime_stream_controller.go:34	0xe91295		498913			MOVQ DX, 0(R11)								
  vehicle_runtime_stream_controller.go:34	0xe91298		488b5808		MOVQ 0x8(AX), BX							
  vehicle_runtime_stream_controller.go:34	0xe9129c		49895b08		MOVQ BX, 0x8(R11)							
  vehicle_runtime_stream_controller.go:34	0xe912a0		48895008		MOVQ DX, 0x8(AX)							
  vehicle_runtime_stream_controller.go:39	0xe912a4		488b4c2450		MOVQ 0x50(SP), CX							
  vehicle_runtime_stream_controller.go:39	0xe912a9		f20f104130		MOVSD_XMM 0x30(CX), X0							
  vehicle_runtime_stream_controller.go:39	0xe912ae		66480f7ec0		MOVQ X0, AX								
  vehicle_runtime_stream_controller.go:39	0xe912b3		e8e88d5dff		CALL runtime.convT64(SB)						
  vehicle_runtime_stream_controller.go:39	0xe912b8		4889442430		MOVQ AX, 0x30(SP)							
  vehicle_runtime_stream_controller.go:34	0xe912bd		488b5c2438		MOVQ 0x38(SP), BX							
  vehicle_runtime_stream_controller.go:34	0xe912c2		488d0da1942d00		LEAQ go:string.*+8802(SB), CX						
  vehicle_runtime_stream_controller.go:34	0xe912c9		bf05000000		MOVL $__subsystem__+2(SB), DI						
  vehicle_runtime_stream_controller.go:34	0xe912ce		488d05ab352100		LEAQ runtime.types+784512(SB), AX					
  vehicle_runtime_stream_controller.go:34	0xe912d5		e846cd5dff		CALL runtime.mapassign_faststr(SB)					
  vehicle_runtime_stream_controller.go:34	0xe912da		488d0dff191b00		LEAQ runtime.types+384224(SB), CX					
  vehicle_runtime_stream_controller.go:34	0xe912e1		488908			MOVQ CX, 0(AX)								
  vehicle_runtime_stream_controller.go:34	0xe912e4		833d65c86c0200		CMPL runtime.writeBarrier(SB), $0x0					
  vehicle_runtime_stream_controller.go:34	0xe912eb		7507			JNE 0xe912f4								
  vehicle_runtime_stream_controller.go:34	0xe912ed		488b542430		MOVQ 0x30(SP), DX							
  vehicle_runtime_stream_controller.go:34	0xe912f2		eb15			JMP 0xe91309								
  vehicle_runtime_stream_controller.go:34	0xe912f4		e847715eff		CALL runtime.gcWriteBarrier2(SB)					
  vehicle_runtime_stream_controller.go:34	0xe912f9		488b542430		MOVQ 0x30(SP), DX							
  vehicle_runtime_stream_controller.go:34	0xe912fe		498913			MOVQ DX, 0(R11)								
  vehicle_runtime_stream_controller.go:34	0xe91301		488b7008		MOVQ 0x8(AX), SI							
  vehicle_runtime_stream_controller.go:34	0xe91305		49897308		MOVQ SI, 0x8(R11)							
  vehicle_runtime_stream_controller.go:34	0xe91309		48895008		MOVQ DX, 0x8(AX)							
  vehicle_runtime_stream_controller.go:40	0xe9130d		488b542450		MOVQ 0x50(SP), DX							
  vehicle_runtime_stream_controller.go:40	0xe91312		0fb6b2b8000000		MOVZX 0xb8(DX), SI							
  vehicle_runtime_stream_controller.go:40	0xe91319		4889742420		MOVQ SI, 0x20(SP)							
  vehicle_runtime_stream_controller.go:34	0xe9131e		488d055b352100		LEAQ runtime.types+784512(SB), AX					
  vehicle_runtime_stream_controller.go:34	0xe91325		488b5c2438		MOVQ 0x38(SP), BX							
  vehicle_runtime_stream_controller.go:34	0xe9132a		488d0dff192e00		LEAQ go:string.*+43048(SB), CX						
  vehicle_runtime_stream_controller.go:34	0xe91331		bf07000000		MOVL $__major_os_version__+1(SB), DI					
  vehicle_runtime_stream_controller.go:34	0xe91336		e8e5cc5dff		CALL runtime.mapassign_faststr(SB)					
  vehicle_runtime_stream_controller.go:34	0xe9133b		488d15de191b00		LEAQ runtime.types+384288(SB), DX					
  vehicle_runtime_stream_controller.go:34	0xe91342		488910			MOVQ DX, 0(AX)								
  vehicle_runtime_stream_controller.go:40	0xe91345		488b542420		MOVQ 0x20(SP), DX							
  vehicle_runtime_stream_controller.go:40	0xe9134a		488d35cf930e00		LEAQ runtime.staticuint64s(SB), SI					
  vehicle_runtime_stream_controller.go:40	0xe91351		488d14d6		LEAQ 0(SI)(DX*8), DX							
  vehicle_runtime_stream_controller.go:34	0xe91355		833df4c76c0200		CMPL runtime.writeBarrier(SB), $0x0					
  vehicle_runtime_stream_controller.go:34	0xe9135c		740c			JE 0xe9136a								
  vehicle_runtime_stream_controller.go:34	0xe9135e		488b4808		MOVQ 0x8(AX), CX							
  vehicle_runtime_stream_controller.go:34	0xe91362		e8b9705eff		CALL runtime.gcWriteBarrier1(SB)					
  vehicle_runtime_stream_controller.go:34	0xe91367		49890b			MOVQ CX, 0(R11)								
  vehicle_runtime_stream_controller.go:34	0xe9136a		48895008		MOVQ DX, 0x8(AX)							
  vehicle_runtime_stream_controller.go:41	0xe9136e		488b4c2450		MOVQ 0x50(SP), CX							
  vehicle_runtime_stream_controller.go:41	0xe91373		f20f1081c0000000	MOVSD_XMM 0xc0(CX), X0							
  vehicle_runtime_stream_controller.go:41	0xe9137b		66480f7ec0		MOVQ X0, AX								
  vehicle_runtime_stream_controller.go:41	0xe91380		e81b8d5dff		CALL runtime.convT64(SB)						
  vehicle_runtime_stream_controller.go:41	0xe91385		4889442430		MOVQ AX, 0x30(SP)							
  vehicle_runtime_stream_controller.go:34	0xe9138a		488b5c2438		MOVQ 0x38(SP), BX							
  vehicle_runtime_stream_controller.go:34	0xe9138f		488d0da1192e00		LEAQ go:string.*+43055(SB), CX						
  vehicle_runtime_stream_controller.go:34	0xe91396		bf07000000		MOVL $__major_os_version__+1(SB), DI					
  vehicle_runtime_stream_controller.go:34	0xe9139b		488d05de342100		LEAQ runtime.types+784512(SB), AX					
  vehicle_runtime_stream_controller.go:34	0xe913a2		e879cc5dff		CALL runtime.mapassign_faststr(SB)					
  vehicle_runtime_stream_controller.go:34	0xe913a7		488d0d32191b00		LEAQ runtime.types+384224(SB), CX					
  vehicle_runtime_stream_controller.go:34	0xe913ae		488908			MOVQ CX, 0(AX)								
  vehicle_runtime_stream_controller.go:34	0xe913b1		833d98c76c0200		CMPL runtime.writeBarrier(SB), $0x0					
  vehicle_runtime_stream_controller.go:34	0xe913b8		7508			JNE 0xe913c2								
  vehicle_runtime_stream_controller.go:34	0xe913ba		488b542430		MOVQ 0x30(SP), DX							
  vehicle_runtime_stream_controller.go:34	0xe913bf		90			NOPL									
  vehicle_runtime_stream_controller.go:34	0xe913c0		eb15			JMP 0xe913d7								
  vehicle_runtime_stream_controller.go:34	0xe913c2		e879705eff		CALL runtime.gcWriteBarrier2(SB)					
  vehicle_runtime_stream_controller.go:34	0xe913c7		488b542430		MOVQ 0x30(SP), DX							
  vehicle_runtime_stream_controller.go:34	0xe913cc		498913			MOVQ DX, 0(R11)								
  vehicle_runtime_stream_controller.go:34	0xe913cf		488b5808		MOVQ 0x8(AX), BX							
  vehicle_runtime_stream_controller.go:34	0xe913d3		49895b08		MOVQ BX, 0x8(R11)							
  vehicle_runtime_stream_controller.go:34	0xe913d7		48895008		MOVQ DX, 0x8(AX)							
  vehicle_runtime_stream_controller.go:42	0xe913db		488b4c2450		MOVQ 0x50(SP), CX							
  vehicle_runtime_stream_controller.go:42	0xe913e0		f20f1081c8000000	MOVSD_XMM 0xc8(CX), X0							
  vehicle_runtime_stream_controller.go:42	0xe913e8		66480f7ec0		MOVQ X0, AX								
  vehicle_runtime_stream_controller.go:42	0xe913ed		e8ae8c5dff		CALL runtime.convT64(SB)						
  vehicle_runtime_stream_controller.go:42	0xe913f2		4889442430		MOVQ AX, 0x30(SP)							
  vehicle_runtime_stream_controller.go:34	0xe913f7		488b5c2438		MOVQ 0x38(SP), BX							
  vehicle_runtime_stream_controller.go:34	0xe913fc		488d0d3b192e00		LEAQ go:string.*+43062(SB), CX						
  vehicle_runtime_stream_controller.go:34	0xe91403		bf07000000		MOVL $__major_os_version__+1(SB), DI					
  vehicle_runtime_stream_controller.go:34	0xe91408		488d0571342100		LEAQ runtime.types+784512(SB), AX					
  vehicle_runtime_stream_controller.go:34	0xe9140f		e80ccc5dff		CALL runtime.mapassign_faststr(SB)					
  vehicle_runtime_stream_controller.go:34	0xe91414		488d0dc5181b00		LEAQ runtime.types+384224(SB), CX					
  vehicle_runtime_stream_controller.go:34	0xe9141b		488908			MOVQ CX, 0(AX)								
  vehicle_runtime_stream_controller.go:34	0xe9141e		833d2bc76c0200		CMPL runtime.writeBarrier(SB), $0x0					
  vehicle_runtime_stream_controller.go:34	0xe91425		7507			JNE 0xe9142e								
  vehicle_runtime_stream_controller.go:34	0xe91427		488b4c2430		MOVQ 0x30(SP), CX							
  vehicle_runtime_stream_controller.go:34	0xe9142c		eb15			JMP 0xe91443								
  vehicle_runtime_stream_controller.go:34	0xe9142e		e80d705eff		CALL runtime.gcWriteBarrier2(SB)					
  vehicle_runtime_stream_controller.go:34	0xe91433		488b4c2430		MOVQ 0x30(SP), CX							
  vehicle_runtime_stream_controller.go:34	0xe91438		49890b			MOVQ CX, 0(R11)								
  vehicle_runtime_stream_controller.go:34	0xe9143b		488b5008		MOVQ 0x8(AX), DX							
  vehicle_runtime_stream_controller.go:34	0xe9143f		49895308		MOVQ DX, 0x8(R11)							
  vehicle_runtime_stream_controller.go:34	0xe91443		48894808		MOVQ CX, 0x8(AX)							
  vehicle_runtime_stream_controller.go:43	0xe91447		488b4c2450		MOVQ 0x50(SP), CX							
  vehicle_runtime_stream_controller.go:43	0xe9144c		488b91e8000000		MOVQ 0xe8(CX), DX							
  time.go:181					0xe91453		480fbae23f		BTQ $__major_os_version__+57(SB), DX					
  time.go:181					0xe91458		7319			JAE 0xe91473								
  time.go:182					0xe9145a		4889d1			MOVQ DX, CX								
  time.go:182					0xe9145d		48d1e2			SHLQ $__minor_os_version__(SB), DX					
  time.go:182					0xe91460		48c1ea1f		SHRQ $__major_os_version__+25(SB), DX					
  time.go:182					0xe91464		48bb807fb1d70d000000	MOVQ $0xdd7b17f80, BX							
  time.go:182					0xe9146e		4801da			ADDQ BX, DX								
  time.go:188					0xe91471		eb10			JMP 0xe91483								
  vehicle_runtime_stream_controller.go:43	0xe91473		488b89f0000000		MOVQ 0xf0(CX), CX							
  time.go:176					0xe9147a		4889c8			MOVQ CX, AX								
  time.go:176					0xe9147d		4889d1			MOVQ DX, CX								
  time.go:188					0xe91480		4889c2			MOVQ AX, DX								
  time.go:1251					0xe91483		4869d2e8030000		IMULQ $__file_alignment__+488(SB), DX, DX				
  time.go:176					0xe9148a		81e1ffffff3f		ANDL $0x3fffffff, CX							
  time.go:1251					0xe91490		4863c9			MOVSXD CX, CX								
  time.go:1251					0xe91493		4889cb			MOVQ CX, BX								
  time.go:1251					0xe91496		48c1f93f		SARQ $__major_os_version__+57(SB), CX					
  time.go:1251					0xe9149a		48b8db34b6d782de1b43	MOVQ $0x431bde82d7b634db, AX						
  time.go:1251					0xe914a4		4889d6			MOVQ DX, SI								
  time.go:1251					0xe914a7		48f7eb			IMULQ BX								
  time.go:1251					0xe914aa		48c1fa12		SARQ $__major_os_version__+12(SB), DX					
  time.go:1251					0xe914ae		4829ca			SUBQ CX, DX								
  time.go:1251					0xe914b1		488d0c16		LEAQ 0(SI)(DX*1), CX							
  time.go:1251					0xe914b5		48ba0028d3ed7cc7ffff	MOVQ $0xffffc77cedd32800, DX						
  time.go:1251					0xe914bf		488d040a		LEAQ 0(DX)(CX*1), AX							
  vehicle_runtime_stream_controller.go:43	0xe914c3		e8d88b5dff		CALL runtime.convT64(SB)						
  vehicle_runtime_stream_controller.go:43	0xe914c8		4889442430		MOVQ AX, 0x30(SP)							
  vehicle_runtime_stream_controller.go:34	0xe914cd		488b5c2438		MOVQ 0x38(SP), BX							
  vehicle_runtime_stream_controller.go:34	0xe914d2		488d0d41702d00		LEAQ go:string.*+18(SB), CX						
  vehicle_runtime_stream_controller.go:34	0xe914d9		bf02000000		MOVL $__minor_os_version__+1(SB), DI					
  vehicle_runtime_stream_controller.go:34	0xe914de		488d059b332100		LEAQ runtime.types+784512(SB), AX					
  vehicle_runtime_stream_controller.go:34	0xe914e5		e836cb5dff		CALL runtime.mapassign_faststr(SB)					
  vehicle_runtime_stream_controller.go:34	0xe914ea		488d0def151b00		LEAQ runtime.types+383712(SB), CX					
  vehicle_runtime_stream_controller.go:34	0xe914f1		488908			MOVQ CX, 0(AX)								
  vehicle_runtime_stream_controller.go:34	0xe914f4		833d55c66c0200		CMPL runtime.writeBarrier(SB), $0x0					
  vehicle_runtime_stream_controller.go:34	0xe914fb		7507			JNE 0xe91504								
  vehicle_runtime_stream_controller.go:34	0xe914fd		488b4c2430		MOVQ 0x30(SP), CX							
  vehicle_runtime_stream_controller.go:34	0xe91502		eb15			JMP 0xe91519								
  vehicle_runtime_stream_controller.go:34	0xe91504		e8376f5eff		CALL runtime.gcWriteBarrier2(SB)					
  vehicle_runtime_stream_controller.go:34	0xe91509		488b4c2430		MOVQ 0x30(SP), CX							
  vehicle_runtime_stream_controller.go:34	0xe9150e		49890b			MOVQ CX, 0(R11)								
  vehicle_runtime_stream_controller.go:34	0xe91511		488b5008		MOVQ 0x8(AX), DX							
  vehicle_runtime_stream_controller.go:34	0xe91515		49895308		MOVQ DX, 0x8(R11)							
  vehicle_runtime_stream_controller.go:34	0xe91519		48894808		MOVQ CX, 0x8(AX)							
  vehicle_runtime_stream_controller.go:45	0xe9151d		0f1f00			NOPL 0(AX)								
  vehicle_runtime_stream_controller.go:45	0xe91520		e87bcb61ff		CALL time.Now(SB)							
  vehicle_runtime_stream_controller.go:45	0xe91525		bf005ed0b2		MOVL $-0x4d2fa200, DI							
  vehicle_runtime_stream_controller.go:45	0xe9152a		e8313061ff		CALL time.Time.Add(SB)							
  conn.go:788					0xe9152f		488b542428		MOVQ 0x28(SP), DX							
  conn.go:788					0xe91534		48894260		MOVQ AX, 0x60(DX)							
  conn.go:788					0xe91538		48895a68		MOVQ BX, 0x68(DX)							
  conn.go:788					0xe9153c		833d0dc66c0200		CMPL runtime.writeBarrier(SB), $0x0					
  conn.go:788					0xe91543		7410			JE 0xe91555								
  conn.go:788					0xe91545		e8f66e5eff		CALL runtime.gcWriteBarrier2(SB)					
  conn.go:788					0xe9154a		49890b			MOVQ CX, 0(R11)								
  conn.go:788					0xe9154d		488b7270		MOVQ 0x70(DX), SI							
  conn.go:788					0xe91551		49897308		MOVQ SI, 0x8(R11)							
  conn.go:788					0xe91555		48894a70		MOVQ CX, 0x70(DX)							
  vehicle_runtime_stream_controller.go:46	0xe91559		4889d0			MOVQ DX, AX								
  vehicle_runtime_stream_controller.go:46	0xe9155c		488d1d1d332100		LEAQ runtime.types+784512(SB), BX					
  vehicle_runtime_stream_controller.go:46	0xe91563		488b4c2438		MOVQ 0x38(SP), CX							
  vehicle_runtime_stream_controller.go:46	0xe91568		e8f309feff		CALL github.com/gorilla/websocket.(*Conn).WriteJSON(SB)			
  vehicle_runtime_stream_controller.go:46	0xe9156d		4885c0			TESTQ AX, AX								
  vehicle_runtime_stream_controller.go:46	0xe91570		0f94c0			SETE AL									
  vehicle_runtime_stream_controller.go:46	0xe91573		4883c440		ADDQ $__major_os_version__+58(SB), SP					
  vehicle_runtime_stream_controller.go:46	0xe91577		5d			POPQ BP									
  vehicle_runtime_stream_controller.go:46	0xe91578		c3			RET									
  vehicle_runtime_stream_controller.go:32	0xe91579		31c0			XORL AX, AX								
  vehicle_runtime_stream_controller.go:32	0xe9157b		4883c440		ADDQ $__major_os_version__+58(SB), SP					
  vehicle_runtime_stream_controller.go:32	0xe9157f		5d			POPQ BP									
  vehicle_runtime_stream_controller.go:32	0xe91580		c3			RET									
  vehicle_runtime_stream_controller.go:30	0xe91581		4889442408		MOVQ AX, 0x8(SP)							
  vehicle_runtime_stream_controller.go:30	0xe91586		e8d54e5eff		CALL runtime.morestack.abi0(SB)						
  vehicle_runtime_stream_controller.go:30	0xe9158b		488b442408		MOVQ 0x8(SP), AX							
  vehicle_runtime_stream_controller.go:30	0xe91590		e92bfbffff		JMP CAS-Backend/biz/controller.VehicleRuntimeWSHandler.func1(SB)	
  :-1						0xe91595		cc			INT $__subsystem__(SB)							
  :-1						0xe91596		cc			INT $__subsystem__(SB)							
  :-1						0xe91597		cc			INT $__subsystem__(SB)							
  :-1						0xe91598		cc			INT $__subsystem__(SB)							
  :-1						0xe91599		cc			INT $__subsystem__(SB)							
  :-1						0xe9159a		cc			INT $__subsystem__(SB)							
  :-1						0xe9159b		cc			INT $__subsystem__(SB)							
  :-1						0xe9159c		cc			INT $__subsystem__(SB)							
  :-1						0xe9159d		cc			INT $__subsystem__(SB)							
  :-1						0xe9159e		cc			INT $__subsystem__(SB)							
  :-1						0xe9159f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/biz/controller.VehicleRuntimeWSHandler.deferwrap1(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_runtime_stream_controller.go
  vehicle_runtime_stream_controller.go:28	0xe915a0		493b6610		CMPQ SP, 0x10(R14)							
  vehicle_runtime_stream_controller.go:28	0xe915a4		7628			JBE 0xe915ce								
  vehicle_runtime_stream_controller.go:28	0xe915a6		55			PUSHQ BP								
  vehicle_runtime_stream_controller.go:28	0xe915a7		4889e5			MOVQ SP, BP								
  vehicle_runtime_stream_controller.go:28	0xe915aa		4883ec08		SUBQ $__major_os_version__+2(SB), SP					
  vehicle_runtime_stream_controller.go:28	0xe915ae		4d8b6620		MOVQ 0x20(R14), R12							
  vehicle_runtime_stream_controller.go:28	0xe915b2		4d85e4			TESTQ R12, R12								
  vehicle_runtime_stream_controller.go:28	0xe915b5		751e			JNE 0xe915d5								
  vehicle_runtime_stream_controller.go:28	0xe915b7		488b4a08		MOVQ 0x8(DX), CX							
  conn.go:345					0xe915bb		488b11			MOVQ 0(CX), DX								
  conn.go:345					0xe915be		488b4108		MOVQ 0x8(CX), AX							
  conn.go:345					0xe915c2		488b4a18		MOVQ 0x18(DX), CX							
  conn.go:345					0xe915c6		ffd1			CALL CX									
  vehicle_runtime_stream_controller.go:28	0xe915c8		4883c408		ADDQ $__major_os_version__+2(SB), SP					
  vehicle_runtime_stream_controller.go:28	0xe915cc		5d			POPQ BP									
  vehicle_runtime_stream_controller.go:28	0xe915cd		c3			RET									
  vehicle_runtime_stream_controller.go:28	0xe915ce		e88d4e5eff		CALL runtime.morestack.abi0(SB)						
  vehicle_runtime_stream_controller.go:28	0xe915d3		ebcb			JMP CAS-Backend/biz/controller.VehicleRuntimeWSHandler.deferwrap1(SB)	
  vehicle_runtime_stream_controller.go:28	0xe915d5		4c8d6c2418		LEAQ 0x18(SP), R13							
  vehicle_runtime_stream_controller.go:28	0xe915da		660f1f440000		NOPW 0(AX)(AX*1)							
  vehicle_runtime_stream_controller.go:28	0xe915e0		4d392c24		CMPQ 0(R12), R13							
  vehicle_runtime_stream_controller.go:28	0xe915e4		75d1			JNE 0xe915b7								
  vehicle_runtime_stream_controller.go:28	0xe915e6		49892424		MOVQ SP, 0(R12)								
  vehicle_runtime_stream_controller.go:28	0xe915ea		ebcb			JMP 0xe915b7								
  :-1						0xe915ec		cc			INT $__subsystem__(SB)							
  :-1						0xe915ed		cc			INT $__subsystem__(SB)							
  :-1						0xe915ee		cc			INT $__subsystem__(SB)							
  :-1						0xe915ef		cc			INT $__subsystem__(SB)							
  :-1						0xe915f0		cc			INT $__subsystem__(SB)							
  :-1						0xe915f1		cc			INT $__subsystem__(SB)							
  :-1						0xe915f2		cc			INT $__subsystem__(SB)							
  :-1						0xe915f3		cc			INT $__subsystem__(SB)							
  :-1						0xe915f4		cc			INT $__subsystem__(SB)							
  :-1						0xe915f5		cc			INT $__subsystem__(SB)							
  :-1						0xe915f6		cc			INT $__subsystem__(SB)							
  :-1						0xe915f7		cc			INT $__subsystem__(SB)							
  :-1						0xe915f8		cc			INT $__subsystem__(SB)							
  :-1						0xe915f9		cc			INT $__subsystem__(SB)							
  :-1						0xe915fa		cc			INT $__subsystem__(SB)							
  :-1						0xe915fb		cc			INT $__subsystem__(SB)							
  :-1						0xe915fc		cc			INT $__subsystem__(SB)							
  :-1						0xe915fd		cc			INT $__subsystem__(SB)							
  :-1						0xe915fe		cc			INT $__subsystem__(SB)							
  :-1						0xe915ff		cc			INT $__subsystem__(SB)							

