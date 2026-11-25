TEXT CAS-Backend/biz/controller.VehicleRuntimePushHandler(SB) D:/CodeEnv_code/cas-backend/biz/controller/vehicle_runtime_controller.go
  vehicle_runtime_controller.go:16	0xe90480		4c8d6424d8		LEAQ -0x28(SP), R12											
  vehicle_runtime_controller.go:16	0xe90485		4d3b6610		CMPQ R12, 0x10(R14)											
  vehicle_runtime_controller.go:16	0xe90489		0f8616060000		JBE 0xe90aa5												
  vehicle_runtime_controller.go:16	0xe9048f		55			PUSHQ BP												
  vehicle_runtime_controller.go:16	0xe90490		4889e5			MOVQ SP, BP												
  vehicle_runtime_controller.go:16	0xe90493		4881eca0000000		SUBQ $.file+83(SB), SP											
  vehicle_runtime_controller.go:17	0xe9049a		48898424b0000000	MOVQ AX, 0xb0(SP)											
  vehicle_runtime_controller.go:17	0xe904a2		488b4820		MOVQ 0x20(AX), CX											
  vehicle_runtime_controller.go:17	0xe904a6		488b5140		MOVQ 0x40(CX), DX											
  vehicle_runtime_controller.go:17	0xe904aa		488b5948		MOVQ 0x48(CX), BX											
  vehicle_runtime_controller.go:17	0xe904ae		4885d2			TESTQ DX, DX												
  vehicle_runtime_controller.go:17	0xe904b1		7416			JE 0xe904c9												
  vehicle_runtime_controller.go:17	0xe904b3		488b4a08		MOVQ 0x8(DX), CX											
  vehicle_runtime_controller.go:17	0xe904b7		488b3572b01200		MOVQ CAS-Backend/biz/controller..typeAssert.44(SB), SI							
  vehicle_runtime_controller.go:17	0xe904be		488b3e			MOVQ 0(SI), DI												
  vehicle_runtime_controller.go:17	0xe904c1		8b5210			MOVL 0x10(DX), DX											
  vehicle_runtime_controller.go:17	0xe904c4		e991050000		JMP 0xe90a5a												
  vehicle_runtime_controller.go:17	0xe904c9		4889d0			MOVQ DX, AX												
  vehicle_runtime_controller.go:17	0xe904cc		e82f3562ff		CALL io.ReadAll(SB)											
  vehicle_runtime_controller.go:18	0xe904d1		4885ff			TESTQ DI, DI												
  vehicle_runtime_controller.go:18	0xe904d4		0f8421010000		JE 0xe905fb												
  vehicle_runtime_controller.go:17	0xe904da		48897c2430		MOVQ DI, 0x30(SP)											
  vehicle_runtime_controller.go:17	0xe904df		4889742458		MOVQ SI, 0x58(SP)											
  vehicle_runtime_controller.go:19	0xe904e4		e8f7aa5dff		CALL runtime.makemap_small(SB)										
  vehicle_runtime_controller.go:19	0xe904e9		4889842480000000	MOVQ AX, 0x80(SP)											
  vehicle_runtime_controller.go:19	0xe904f1		4889c3			MOVQ AX, BX												
  vehicle_runtime_controller.go:19	0xe904f4		488d0d12282e00		LEAQ go:string.*+43013(SB), CX										
  vehicle_runtime_controller.go:19	0xe904fb		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  vehicle_runtime_controller.go:19	0xe90500		488d0579432100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_controller.go:19	0xe90507		e814db5dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_controller.go:19	0xe9050c		488d0d0d281b00		LEAQ runtime.types+384288(SB), CX									
  vehicle_runtime_controller.go:19	0xe90513		488908			MOVQ CX, 0(AX)												
  vehicle_runtime_controller.go:19	0xe90516		833d33d66c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_controller.go:19	0xe9051d		740c			JE 0xe9052b												
  vehicle_runtime_controller.go:19	0xe9051f		488b4808		MOVQ 0x8(AX), CX											
  vehicle_runtime_controller.go:19	0xe90523		e8f87e5eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_runtime_controller.go:19	0xe90528		49890b			MOVQ CX, 0(R11)												
  vehicle_runtime_controller.go:19	0xe9052b		488d0deea10e00		LEAQ runtime.staticuint64s(SB), CX									
  vehicle_runtime_controller.go:19	0xe90532		48894808		MOVQ CX, 0x8(AX)											
  vehicle_runtime_controller.go:19	0xe90536		488b4c2430		MOVQ 0x30(SP), CX											
  vehicle_runtime_controller.go:19	0xe9053b		488b4918		MOVQ 0x18(CX), CX											
  vehicle_runtime_controller.go:19	0xe9053f		488b442458		MOVQ 0x58(SP), AX											
  vehicle_runtime_controller.go:19	0xe90544		ffd1			CALL CX													
  vehicle_runtime_controller.go:19	0xe90546		e8d59b5dff		CALL runtime.convTstring(SB)										
  vehicle_runtime_controller.go:19	0xe9054b		4889442478		MOVQ AX, 0x78(SP)											
  vehicle_runtime_controller.go:19	0xe90550		488b9c2480000000	MOVQ 0x80(SP), BX											
  vehicle_runtime_controller.go:19	0xe90558		488d0d92272e00		LEAQ go:string.*+42985(SB), CX										
  vehicle_runtime_controller.go:19	0xe9055f		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  vehicle_runtime_controller.go:19	0xe90564		488d0515432100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_controller.go:19	0xe9056b		e8b0da5dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_controller.go:19	0xe90570		488d0da9231b00		LEAQ runtime.types+383264(SB), CX									
  vehicle_runtime_controller.go:19	0xe90577		488908			MOVQ CX, 0(AX)												
  vehicle_runtime_controller.go:19	0xe9057a		833dcfd56c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_controller.go:19	0xe90581		7507			JNE 0xe9058a												
  vehicle_runtime_controller.go:19	0xe90583		488b4c2478		MOVQ 0x78(SP), CX											
  vehicle_runtime_controller.go:19	0xe90588		eb15			JMP 0xe9059f												
  vehicle_runtime_controller.go:19	0xe9058a		e8b17e5eff		CALL runtime.gcWriteBarrier2(SB)									
  vehicle_runtime_controller.go:19	0xe9058f		488b4c2478		MOVQ 0x78(SP), CX											
  vehicle_runtime_controller.go:19	0xe90594		49890b			MOVQ CX, 0(R11)												
  vehicle_runtime_controller.go:19	0xe90597		488b5008		MOVQ 0x8(AX), DX											
  vehicle_runtime_controller.go:19	0xe9059b		49895308		MOVQ DX, 0x8(R11)											
  vehicle_runtime_controller.go:19	0xe9059f		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005			0xe905a3		488d0dd6422100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005			0xe905aa		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005			0xe905b2		488b8c2480000000	MOVQ 0x80(SP), CX											
  context.go:1005			0xe905ba		48898c2490000000	MOVQ CX, 0x90(SP)											
  context.go:1005			0xe905c2		488d0517b92300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005			0xe905c9		488d9c2488000000	LEAQ 0x88(SP), BX											
  context.go:1005			0xe905d1		e8caea57ff		CALL runtime.convT(SB)											
  context.go:1005			0xe905d6		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005			0xe905db		488d0d4eecfd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005			0xe905e2		4889c7			MOVQ AX, DI												
  context.go:1005			0xe905e5		488b8424b0000000	MOVQ 0xb0(SP), AX											
  context.go:1005			0xe905ed		e86ef1f6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_runtime_controller.go:20	0xe905f2		4881c4a0000000		ADDQ $.file+83(SB), SP											
  vehicle_runtime_controller.go:20	0xe905f9		5d			POPQ BP													
  vehicle_runtime_controller.go:20	0xe905fa		c3			RET													
  vehicle_runtime_controller.go:17	0xe905fb		4889442468		MOVQ AX, 0x68(SP)											
  vehicle_runtime_controller.go:17	0xe90600		48895c2440		MOVQ BX, 0x40(SP)											
  vehicle_runtime_controller.go:17	0xe90605		48894c2448		MOVQ CX, 0x48(SP)											
  vehicle_runtime_controller.go:22	0xe9060a		488d056f4b2a00		LEAQ runtime.types+1376640(SB), AX									
  vehicle_runtime_controller.go:22	0xe90611		e88a1158ff		CALL runtime.newobject(SB)										
  vehicle_runtime_controller.go:22	0xe90616		4889842498000000	MOVQ AX, 0x98(SP)											
  vehicle_runtime_controller.go:23	0xe9061e		488b5c2440		MOVQ 0x40(SP), BX											
  vehicle_runtime_controller.go:23	0xe90623		488b4c2448		MOVQ 0x48(SP), CX											
  vehicle_runtime_controller.go:23	0xe90628		488d3df13b1900		LEAQ runtime.types+258592(SB), DI									
  vehicle_runtime_controller.go:23	0xe9062f		4889c6			MOVQ AX, SI												
  vehicle_runtime_controller.go:23	0xe90632		488b442468		MOVQ 0x68(SP), AX											
  vehicle_runtime_controller.go:23	0xe90637		e8a46e6dff		CALL encoding/json.Unmarshal(SB)									
  vehicle_runtime_controller.go:23	0xe9063c		0f1f4000		NOPL 0(AX)												
  vehicle_runtime_controller.go:23	0xe90640		4885c0			TESTQ AX, AX												
  vehicle_runtime_controller.go:23	0xe90643		0f85e8020000		JNE 0xe90931												
  vehicle_runtime_controller.go:27	0xe90649		488b842498000000	MOVQ 0x98(SP), AX											
  vehicle_runtime_controller.go:27	0xe90651		4883780800		CMPQ 0x8(AX), $0x0											
  vehicle_runtime_controller.go:27	0xe90656		0f85f9000000		JNE 0xe90755												
  vehicle_runtime_controller.go:28	0xe9065c		0f1f4000		NOPL 0(AX)												
  vehicle_runtime_controller.go:28	0xe90660		e87ba95dff		CALL runtime.makemap_small(SB)										
  vehicle_runtime_controller.go:28	0xe90665		4889842480000000	MOVQ AX, 0x80(SP)											
  vehicle_runtime_controller.go:28	0xe9066d		4889c3			MOVQ AX, BX												
  vehicle_runtime_controller.go:28	0xe90670		488d0d96262e00		LEAQ go:string.*+43013(SB), CX										
  vehicle_runtime_controller.go:28	0xe90677		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  vehicle_runtime_controller.go:28	0xe9067c		488d05fd412100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_controller.go:28	0xe90683		e898d95dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_controller.go:28	0xe90688		488d0d91261b00		LEAQ runtime.types+384288(SB), CX									
  vehicle_runtime_controller.go:28	0xe9068f		488908			MOVQ CX, 0(AX)												
  vehicle_runtime_controller.go:28	0xe90692		833db7d46c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_controller.go:28	0xe90699		740d			JE 0xe906a8												
  vehicle_runtime_controller.go:28	0xe9069b		488b5008		MOVQ 0x8(AX), DX											
  vehicle_runtime_controller.go:28	0xe9069f		90			NOPL													
  vehicle_runtime_controller.go:28	0xe906a0		e87b7d5eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_runtime_controller.go:28	0xe906a5		498913			MOVQ DX, 0(R11)												
  vehicle_runtime_controller.go:28	0xe906a8		488d1571a00e00		LEAQ runtime.staticuint64s(SB), DX									
  vehicle_runtime_controller.go:28	0xe906af		48895008		MOVQ DX, 0x8(AX)											
  vehicle_runtime_controller.go:28	0xe906b3		488d05c6412100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_controller.go:28	0xe906ba		488b9c2480000000	MOVQ 0x80(SP), BX											
  vehicle_runtime_controller.go:28	0xe906c2		488d0d28262e00		LEAQ go:string.*+42985(SB), CX										
  vehicle_runtime_controller.go:28	0xe906c9		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  vehicle_runtime_controller.go:28	0xe906ce		e84dd95dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_controller.go:28	0xe906d3		488d1546221b00		LEAQ runtime.types+383264(SB), DX									
  vehicle_runtime_controller.go:28	0xe906da		488910			MOVQ DX, 0(AX)												
  vehicle_runtime_controller.go:28	0xe906dd		833d6cd46c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_controller.go:28	0xe906e4		740c			JE 0xe906f2												
  vehicle_runtime_controller.go:28	0xe906e6		488b4808		MOVQ 0x8(AX), CX											
  vehicle_runtime_controller.go:28	0xe906ea		e8317d5eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_runtime_controller.go:28	0xe906ef		49890b			MOVQ CX, 0(R11)												
  vehicle_runtime_controller.go:28	0xe906f2		488d0dd788fd01		LEAQ CAS-Backend/biz/controller..stmp_360(SB), CX							
  vehicle_runtime_controller.go:28	0xe906f9		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005			0xe906fd		488d0d7c412100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005			0xe90704		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005			0xe9070c		488b8c2480000000	MOVQ 0x80(SP), CX											
  context.go:1005			0xe90714		48898c2490000000	MOVQ CX, 0x90(SP)											
  context.go:1005			0xe9071c		488d05bdb72300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005			0xe90723		488d9c2488000000	LEAQ 0x88(SP), BX											
  context.go:1005			0xe9072b		e870e957ff		CALL runtime.convT(SB)											
  context.go:1005			0xe90730		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005			0xe90735		488d0df4eafd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005			0xe9073c		4889c7			MOVQ AX, DI												
  context.go:1005			0xe9073f		488b8424b0000000	MOVQ 0xb0(SP), AX											
  context.go:1005			0xe90747		e814f0f6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_runtime_controller.go:29	0xe9074c		4881c4a0000000		ADDQ $.file+83(SB), SP											
  vehicle_runtime_controller.go:29	0xe90753		5d			POPQ BP													
  vehicle_runtime_controller.go:29	0xe90754		c3			RET													
  vehicle_runtime_controller.go:31	0xe90755		e80615fbff		CALL CAS-Backend/pkg/diapdu.HandleVehicleRuntimePush(SB)						
  vehicle_runtime_controller.go:31	0xe9075a		4889442460		MOVQ AX, 0x60(SP)											
  vehicle_runtime_controller.go:31	0xe9075f		48895c2438		MOVQ BX, 0x38(SP)											
  vehicle_runtime_controller.go:32	0xe90764		e877a85dff		CALL runtime.makemap_small(SB)										
  vehicle_runtime_controller.go:32	0xe90769		4889842480000000	MOVQ AX, 0x80(SP)											
  vehicle_runtime_controller.go:32	0xe90771		4889c3			MOVQ AX, BX												
  vehicle_runtime_controller.go:32	0xe90774		488d0d92252e00		LEAQ go:string.*+43013(SB), CX										
  vehicle_runtime_controller.go:32	0xe9077b		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  vehicle_runtime_controller.go:32	0xe90780		488d05f9402100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_controller.go:32	0xe90787		e894d85dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_controller.go:32	0xe9078c		488d0d8d251b00		LEAQ runtime.types+384288(SB), CX									
  vehicle_runtime_controller.go:32	0xe90793		488908			MOVQ CX, 0(AX)												
  vehicle_runtime_controller.go:32	0xe90796		833db3d36c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_controller.go:32	0xe9079d		740c			JE 0xe907ab												
  vehicle_runtime_controller.go:32	0xe9079f		488b5008		MOVQ 0x8(AX), DX											
  vehicle_runtime_controller.go:32	0xe907a3		e8787c5eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_runtime_controller.go:32	0xe907a8		498913			MOVQ DX, 0(R11)												
  vehicle_runtime_controller.go:32	0xe907ab		488d15769f0e00		LEAQ runtime.staticuint64s+8(SB), DX									
  vehicle_runtime_controller.go:32	0xe907b2		48895008		MOVQ DX, 0x8(AX)											
  vehicle_runtime_controller.go:32	0xe907b6		488d05c3402100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_controller.go:32	0xe907bd		488b9c2480000000	MOVQ 0x80(SP), BX											
  vehicle_runtime_controller.go:32	0xe907c5		488d0d973b2e00		LEAQ go:string.*+48731(SB), CX										
  vehicle_runtime_controller.go:32	0xe907cc		bf08000000		MOVL $__major_os_version__+2(SB), DI									
  vehicle_runtime_controller.go:32	0xe907d1		e84ad85dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_controller.go:32	0xe907d6		488d1543251b00		LEAQ runtime.types+384288(SB), DX									
  vehicle_runtime_controller.go:32	0xe907dd		488910			MOVQ DX, 0(AX)												
  vehicle_runtime_controller.go:32	0xe907e0		833d69d36c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_controller.go:32	0xe907e7		740c			JE 0xe907f5												
  vehicle_runtime_controller.go:32	0xe907e9		488b4808		MOVQ 0x8(AX), CX											
  vehicle_runtime_controller.go:32	0xe907ed		e82e7c5eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_runtime_controller.go:32	0xe907f2		49890b			MOVQ CX, 0(R11)												
  vehicle_runtime_controller.go:32	0xe907f5		488d0d2c9f0e00		LEAQ runtime.staticuint64s+8(SB), CX									
  vehicle_runtime_controller.go:32	0xe907fc		48894808		MOVQ CX, 0x8(AX)											
  vehicle_runtime_controller.go:35	0xe90800		488b8c2498000000	MOVQ 0x98(SP), CX											
  vehicle_runtime_controller.go:35	0xe90808		488b01			MOVQ 0(CX), AX												
  vehicle_runtime_controller.go:35	0xe9080b		488b5908		MOVQ 0x8(CX), BX											
  vehicle_runtime_controller.go:35	0xe9080f		e80c995dff		CALL runtime.convTstring(SB)										
  vehicle_runtime_controller.go:35	0xe90814		4889442478		MOVQ AX, 0x78(SP)											
  vehicle_runtime_controller.go:32	0xe90819		488b9c2480000000	MOVQ 0x80(SP), BX											
  vehicle_runtime_controller.go:32	0xe90821		488d0d385b2e00		LEAQ go:string.*+56920(SB), CX										
  vehicle_runtime_controller.go:32	0xe90828		bf0a000000		MOVL $__major_os_version__+4(SB), DI									
  vehicle_runtime_controller.go:32	0xe9082d		488d054c402100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_controller.go:32	0xe90834		e8e7d75dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_controller.go:32	0xe90839		488d0de0201b00		LEAQ runtime.types+383264(SB), CX									
  vehicle_runtime_controller.go:32	0xe90840		488908			MOVQ CX, 0(AX)												
  vehicle_runtime_controller.go:32	0xe90843		833d06d36c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_controller.go:32	0xe9084a		7507			JNE 0xe90853												
  vehicle_runtime_controller.go:32	0xe9084c		488b542478		MOVQ 0x78(SP), DX											
  vehicle_runtime_controller.go:32	0xe90851		eb15			JMP 0xe90868												
  vehicle_runtime_controller.go:32	0xe90853		e8e87b5eff		CALL runtime.gcWriteBarrier2(SB)									
  vehicle_runtime_controller.go:32	0xe90858		488b542478		MOVQ 0x78(SP), DX											
  vehicle_runtime_controller.go:32	0xe9085d		498913			MOVQ DX, 0(R11)												
  vehicle_runtime_controller.go:32	0xe90860		488b7008		MOVQ 0x8(AX), SI											
  vehicle_runtime_controller.go:32	0xe90864		49897308		MOVQ SI, 0x8(R11)											
  vehicle_runtime_controller.go:32	0xe90868		48895008		MOVQ DX, 0x8(AX)											
  vehicle_runtime_controller.go:36	0xe9086c		488b442460		MOVQ 0x60(SP), AX											
  vehicle_runtime_controller.go:36	0xe90871		488b5c2438		MOVQ 0x38(SP), BX											
  vehicle_runtime_controller.go:36	0xe90876		e8a5985dff		CALL runtime.convTstring(SB)										
  vehicle_runtime_controller.go:36	0xe9087b		4889442478		MOVQ AX, 0x78(SP)											
  vehicle_runtime_controller.go:32	0xe90880		488b9c2480000000	MOVQ 0x80(SP), BX											
  vehicle_runtime_controller.go:32	0xe90888		488d0d67772e00		LEAQ go:string.*+64238(SB), CX										
  vehicle_runtime_controller.go:32	0xe9088f		bf0c000000		MOVL $__major_os_version__+6(SB), DI									
  vehicle_runtime_controller.go:32	0xe90894		488d05e53f2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_controller.go:32	0xe9089b		0f1f440000		NOPL 0(AX)(AX*1)											
  vehicle_runtime_controller.go:32	0xe908a0		e87bd75dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_controller.go:32	0xe908a5		488d0d74201b00		LEAQ runtime.types+383264(SB), CX									
  vehicle_runtime_controller.go:32	0xe908ac		488908			MOVQ CX, 0(AX)												
  vehicle_runtime_controller.go:32	0xe908af		833d9ad26c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_controller.go:32	0xe908b6		7508			JNE 0xe908c0												
  vehicle_runtime_controller.go:32	0xe908b8		488b4c2478		MOVQ 0x78(SP), CX											
  vehicle_runtime_controller.go:32	0xe908bd		eb16			JMP 0xe908d5												
  vehicle_runtime_controller.go:32	0xe908bf		90			NOPL													
  vehicle_runtime_controller.go:32	0xe908c0		e87b7b5eff		CALL runtime.gcWriteBarrier2(SB)									
  vehicle_runtime_controller.go:32	0xe908c5		488b4c2478		MOVQ 0x78(SP), CX											
  vehicle_runtime_controller.go:32	0xe908ca		49890b			MOVQ CX, 0(R11)												
  vehicle_runtime_controller.go:32	0xe908cd		488b5008		MOVQ 0x8(AX), DX											
  vehicle_runtime_controller.go:32	0xe908d1		49895308		MOVQ DX, 0x8(R11)											
  vehicle_runtime_controller.go:32	0xe908d5		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005			0xe908d9		488d0da03f2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005			0xe908e0		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005			0xe908e8		488b8c2480000000	MOVQ 0x80(SP), CX											
  context.go:1005			0xe908f0		48898c2490000000	MOVQ CX, 0x90(SP)											
  context.go:1005			0xe908f8		488d05e1b52300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005			0xe908ff		488d9c2488000000	LEAQ 0x88(SP), BX											
  context.go:1005			0xe90907		e894e757ff		CALL runtime.convT(SB)											
  context.go:1005			0xe9090c		bbc8000000		MOVL $.file+123(SB), BX											
  context.go:1005			0xe90911		488d0d18e9fd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005			0xe90918		4889c7			MOVQ AX, DI												
  context.go:1005			0xe9091b		488b8424b0000000	MOVQ 0xb0(SP), AX											
  context.go:1005			0xe90923		e838eef6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_runtime_controller.go:38	0xe90928		4881c4a0000000		ADDQ $.file+83(SB), SP											
  vehicle_runtime_controller.go:38	0xe9092f		5d			POPQ BP													
  vehicle_runtime_controller.go:38	0xe90930		c3			RET													
  vehicle_runtime_controller.go:23	0xe90931		4889442428		MOVQ AX, 0x28(SP)											
  vehicle_runtime_controller.go:23	0xe90936		48895c2450		MOVQ BX, 0x50(SP)											
  vehicle_runtime_controller.go:24	0xe9093b		0f1f440000		NOPL 0(AX)(AX*1)											
  vehicle_runtime_controller.go:24	0xe90940		e89ba65dff		CALL runtime.makemap_small(SB)										
  vehicle_runtime_controller.go:24	0xe90945		4889842480000000	MOVQ AX, 0x80(SP)											
  vehicle_runtime_controller.go:24	0xe9094d		4889c3			MOVQ AX, BX												
  vehicle_runtime_controller.go:24	0xe90950		488d0db6232e00		LEAQ go:string.*+43013(SB), CX										
  vehicle_runtime_controller.go:24	0xe90957		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  vehicle_runtime_controller.go:24	0xe9095c		488d051d3f2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_controller.go:24	0xe90963		e8b8d65dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_controller.go:24	0xe90968		488d0db1231b00		LEAQ runtime.types+384288(SB), CX									
  vehicle_runtime_controller.go:24	0xe9096f		488908			MOVQ CX, 0(AX)												
  vehicle_runtime_controller.go:24	0xe90972		833dd7d16c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_controller.go:24	0xe90979		740d			JE 0xe90988												
  vehicle_runtime_controller.go:24	0xe9097b		488b4808		MOVQ 0x8(AX), CX											
  vehicle_runtime_controller.go:24	0xe9097f		90			NOPL													
  vehicle_runtime_controller.go:24	0xe90980		e89b7a5eff		CALL runtime.gcWriteBarrier1(SB)									
  vehicle_runtime_controller.go:24	0xe90985		49890b			MOVQ CX, 0(R11)												
  vehicle_runtime_controller.go:24	0xe90988		488d0d919d0e00		LEAQ runtime.staticuint64s(SB), CX									
  vehicle_runtime_controller.go:24	0xe9098f		48894808		MOVQ CX, 0x8(AX)											
  vehicle_runtime_controller.go:24	0xe90993		488b4c2428		MOVQ 0x28(SP), CX											
  vehicle_runtime_controller.go:24	0xe90998		488b4918		MOVQ 0x18(CX), CX											
  vehicle_runtime_controller.go:24	0xe9099c		488b442450		MOVQ 0x50(SP), AX											
  vehicle_runtime_controller.go:24	0xe909a1		ffd1			CALL CX													
  vehicle_runtime_controller.go:24	0xe909a3		e878975dff		CALL runtime.convTstring(SB)										
  vehicle_runtime_controller.go:24	0xe909a8		4889442478		MOVQ AX, 0x78(SP)											
  vehicle_runtime_controller.go:24	0xe909ad		488b9c2480000000	MOVQ 0x80(SP), BX											
  vehicle_runtime_controller.go:24	0xe909b5		488d0d35232e00		LEAQ go:string.*+42985(SB), CX										
  vehicle_runtime_controller.go:24	0xe909bc		bf07000000		MOVL $__major_os_version__+1(SB), DI									
  vehicle_runtime_controller.go:24	0xe909c1		488d05b83e2100		LEAQ runtime.types+784512(SB), AX									
  vehicle_runtime_controller.go:24	0xe909c8		e853d65dff		CALL runtime.mapassign_faststr(SB)									
  vehicle_runtime_controller.go:24	0xe909cd		488d0d4c1f1b00		LEAQ runtime.types+383264(SB), CX									
  vehicle_runtime_controller.go:24	0xe909d4		488908			MOVQ CX, 0(AX)												
  vehicle_runtime_controller.go:24	0xe909d7		833d72d16c0200		CMPL runtime.writeBarrier(SB), $0x0									
  vehicle_runtime_controller.go:24	0xe909de		6690			NOPW													
  vehicle_runtime_controller.go:24	0xe909e0		7507			JNE 0xe909e9												
  vehicle_runtime_controller.go:24	0xe909e2		488b4c2478		MOVQ 0x78(SP), CX											
  vehicle_runtime_controller.go:24	0xe909e7		eb15			JMP 0xe909fe												
  vehicle_runtime_controller.go:24	0xe909e9		e8527a5eff		CALL runtime.gcWriteBarrier2(SB)									
  vehicle_runtime_controller.go:24	0xe909ee		488b4c2478		MOVQ 0x78(SP), CX											
  vehicle_runtime_controller.go:24	0xe909f3		49890b			MOVQ CX, 0(R11)												
  vehicle_runtime_controller.go:24	0xe909f6		488b5008		MOVQ 0x8(AX), DX											
  vehicle_runtime_controller.go:24	0xe909fa		49895308		MOVQ DX, 0x8(R11)											
  vehicle_runtime_controller.go:24	0xe909fe		48894808		MOVQ CX, 0x8(AX)											
  context.go:1005			0xe90a02		488d0d773e2100		LEAQ runtime.types+784512(SB), CX									
  context.go:1005			0xe90a09		48898c2488000000	MOVQ CX, 0x88(SP)											
  context.go:1005			0xe90a11		488b8c2480000000	MOVQ 0x80(SP), CX											
  context.go:1005			0xe90a19		48898c2490000000	MOVQ CX, 0x90(SP)											
  context.go:1005			0xe90a21		488d05b8b42300		LEAQ runtime.types+945888(SB), AX									
  context.go:1005			0xe90a28		488d9c2488000000	LEAQ 0x88(SP), BX											
  context.go:1005			0xe90a30		e86be657ff		CALL runtime.convT(SB)											
  context.go:1005			0xe90a35		bb90010000		MOVL $.file+323(SB), BX											
  context.go:1005			0xe90a3a		488d0defe7fd01		LEAQ go:itab.github.com/gin-gonic/gin/render.JSON,github.com/gin-gonic/gin/render.Render(SB), CX	
  context.go:1005			0xe90a41		4889c7			MOVQ AX, DI												
  context.go:1005			0xe90a44		488b8424b0000000	MOVQ 0xb0(SP), AX											
  context.go:1005			0xe90a4c		e80fedf6ff		CALL github.com/gin-gonic/gin.(*Context).Render(SB)							
  vehicle_runtime_controller.go:25	0xe90a51		4881c4a0000000		ADDQ $.file+83(SB), SP											
  vehicle_runtime_controller.go:25	0xe90a58		5d			POPQ BP													
  vehicle_runtime_controller.go:25	0xe90a59		c3			RET													
  vehicle_runtime_controller.go:17	0xe90a5a		4989d0			MOVQ DX, R8												
  vehicle_runtime_controller.go:17	0xe90a5d		4821fa			ANDQ DI, DX												
  vehicle_runtime_controller.go:17	0xe90a60		48c1e204		SHLQ $__subsystem__+1(SB), DX										
  vehicle_runtime_controller.go:17	0xe90a64		4c8b4c3208		MOVQ 0x8(DX)(SI*1), R9											
  vehicle_runtime_controller.go:17	0xe90a69		4939c9			CMPQ R9, CX												
  vehicle_runtime_controller.go:17	0xe90a6c		742a			JE 0xe90a98												
  vehicle_runtime_controller.go:17	0xe90a6e		498d5001		LEAQ 0x1(R8), DX											
  vehicle_runtime_controller.go:17	0xe90a72		4d85c9			TESTQ R9, R9												
  vehicle_runtime_controller.go:17	0xe90a75		75e3			JNE 0xe90a5a												
  vehicle_runtime_controller.go:17	0xe90a77		48895c2470		MOVQ BX, 0x70(SP)											
  vehicle_runtime_controller.go:17	0xe90a7c		488d05adaa1200		LEAQ CAS-Backend/biz/controller..typeAssert.44(SB), AX							
  vehicle_runtime_controller.go:17	0xe90a83		4889cb			MOVQ CX, BX												
  vehicle_runtime_controller.go:17	0xe90a86		e855e857ff		CALL runtime.typeAssert(SB)										
  vehicle_runtime_controller.go:17	0xe90a8b		488b5c2470		MOVQ 0x70(SP), BX											
  vehicle_runtime_controller.go:17	0xe90a90		4889c2			MOVQ AX, DX												
  vehicle_runtime_controller.go:17	0xe90a93		e931faffff		JMP 0xe904c9												
  vehicle_runtime_controller.go:17	0xe90a98		488b543210		MOVQ 0x10(DX)(SI*1), DX											
  vehicle_runtime_controller.go:17	0xe90a9d		0f1f00			NOPL 0(AX)												
  vehicle_runtime_controller.go:17	0xe90aa0		e924faffff		JMP 0xe904c9												
  vehicle_runtime_controller.go:16	0xe90aa5		4889442408		MOVQ AX, 0x8(SP)											
  vehicle_runtime_controller.go:16	0xe90aaa		e8315a5eff		CALL runtime.morestack_noctxt.abi0(SB)									
  vehicle_runtime_controller.go:16	0xe90aaf		488b442408		MOVQ 0x8(SP), AX											
  vehicle_runtime_controller.go:16	0xe90ab4		e9c7f9ffff		JMP CAS-Backend/biz/controller.VehicleRuntimePushHandler(SB)						
  :-1					0xe90ab9		cc			INT $__subsystem__(SB)											
  :-1					0xe90aba		cc			INT $__subsystem__(SB)											
  :-1					0xe90abb		cc			INT $__subsystem__(SB)											
  :-1					0xe90abc		cc			INT $__subsystem__(SB)											
  :-1					0xe90abd		cc			INT $__subsystem__(SB)											
  :-1					0xe90abe		cc			INT $__subsystem__(SB)											
  :-1					0xe90abf		cc			INT $__subsystem__(SB)											

