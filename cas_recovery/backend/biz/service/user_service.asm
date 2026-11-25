TEXT CAS-Backend/biz/service.Register(SB) D:/CodeEnv_code/cas-backend/biz/service/user_service.go
  user_service.go:33	0xe49700		4c8d6424c8		LEAQ -0x38(SP), R12						
  user_service.go:33	0xe49705		4d3b6610		CMPQ R12, 0x10(R14)						
  user_service.go:33	0xe49709		0f8653020000		JBE 0xe49962							
  user_service.go:33	0xe4970f		55			PUSHQ BP							
  user_service.go:33	0xe49710		4889e5			MOVQ SP, BP							
  user_service.go:33	0xe49713		4881ecb0000000		SUBQ $.file+99(SB), SP						
  user_service.go:33	0xe4971a		48898424c0000000	MOVQ AX, 0xc0(SP)						
  user_service.go:33	0xe49722		48899c24c8000000	MOVQ BX, 0xc8(SP)						
  user_service.go:33	0xe4972a		48898c24d0000000	MOVQ CX, 0xd0(SP)						
  user_service.go:33	0xe49732		4889bc24d8000000	MOVQ DI, 0xd8(SP)						
  user_service.go:33	0xe4973a		4889b424e0000000	MOVQ SI, 0xe0(SP)						
  user_service.go:33	0xe49742		4c898424e8000000	MOVQ R8, 0xe8(SP)						
  user_service.go:33	0xe4974a		4c898c24f0000000	MOVQ R9, 0xf0(SP)						
  user_service.go:33	0xe49752		4c899424f8000000	MOVQ R10, 0xf8(SP)						
  user_service.go:34	0xe4975a		488b8424d8000000	MOVQ 0xd8(SP), AX						
  user_service.go:34	0xe49762		4889f3			MOVQ SI, BX							
  user_service.go:34	0xe49765		e8f60ab5ff		CALL CAS-Backend/biz/dao.IsExist_user(SB)			
  user_service.go:34	0xe4976a		84c0			TESTL AL, AL							
  user_service.go:34	0xe4976c		0f8580010000		JNE 0xe498f2							
  user_service.go:40	0xe49772		488b9c24e8000000	MOVQ 0xe8(SP), BX						
  user_service.go:40	0xe4977a		488b8c24f0000000	MOVQ 0xf0(SP), CX						
  user_service.go:15	0xe49782		488d442448		LEAQ 0x48(SP), AX						
  user_service.go:15	0xe49787		e8b4c060ff		CALL runtime.stringtoslicebyte(SB)				
  user_service.go:15	0xe4978c		bf0a000000		MOVL $__major_os_version__+4(SB), DI				
  user_service.go:15	0xe49791		e8cae6ffff		CALL golang.org/x/crypto/bcrypt.GenerateFromPassword(SB)	
  user_service.go:15	0xe49796		48897c2468		MOVQ DI, 0x68(SP)						
  user_service.go:15	0xe4979b		4889742478		MOVQ SI, 0x78(SP)						
  user_service.go:16	0xe497a0		4889d9			MOVQ BX, CX							
  user_service.go:16	0xe497a3		4889c3			MOVQ AX, BX							
  user_service.go:16	0xe497a6		31c0			XORL AX, AX							
  user_service.go:16	0xe497a8		e8d38e62ff		CALL runtime.slicebytetostring(SB)				
  user_service.go:41	0xe497ad		488b542468		MOVQ 0x68(SP), DX						
  user_service.go:41	0xe497b2		4885d2			TESTQ DX, DX							
  user_service.go:41	0xe497b5		7464			JE 0xe4981b							
  user_service.go:42	0xe497b7		440f11bc2490000000	MOVUPS X15, 0x90(SP)						
  user_service.go:42	0xe497c0		7406			JE 0xe497c8							
  user_service.go:42	0xe497c2		488b7a08		MOVQ 0x8(DX), DI						
  user_service.go:42	0xe497c6		eb03			JMP 0xe497cb							
  user_service.go:42	0xe497c8		4889d7			MOVQ DX, DI							
  user_service.go:42	0xe497cb		4889bc2490000000	MOVQ DI, 0x90(SP)						
  user_service.go:42	0xe497d3		488b542478		MOVQ 0x78(SP), DX						
  user_service.go:42	0xe497d8		4889942498000000	MOVQ DX, 0x98(SP)						
  print.go:233		0xe497e0		488b1d99886c02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe497e7		488d05f2220202		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe497ee		488d0d4dde3300		LEAQ go:string.*+127290(SB), CX					
  print.go:233		0xe497f5		bf1a000000		MOVL $__major_os_version__+20(SB), DI				
  print.go:233		0xe497fa		488db42490000000	LEAQ 0x90(SP), SI						
  print.go:233		0xe49802		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233		0xe49808		4d89c1			MOVQ R8, R9							
  print.go:233		0xe4980b		e8105a6dff		CALL fmt.Fprintf(SB)						
  user_service.go:43	0xe49810		31c0			XORL AX, AX							
  user_service.go:43	0xe49812		4881c4b0000000		ADDQ $.file+99(SB), SP						
  user_service.go:43	0xe49819		5d			POPQ BP								
  user_service.go:43	0xe4981a		c3			RET								
  user_service.go:46	0xe4981b		48c744247000000000	MOVQ $0x0, 0x70(SP)						
  user_service.go:46	0xe49824		488b9424f8000000	MOVQ 0xf8(SP), DX						
  user_service.go:46	0xe4982c		4889542470		MOVQ DX, 0x70(SP)						
  user_service.go:46	0xe49831		488b9424d8000000	MOVQ 0xd8(SP), DX						
  user_service.go:46	0xe49839		4c8ba424e0000000	MOVQ 0xe0(SP), R12						
  user_service.go:46	0xe49841		488b8c24c8000000	MOVQ 0xc8(SP), CX						
  user_service.go:46	0xe49849		488bbc24d0000000	MOVQ 0xd0(SP), DI						
  user_service.go:46	0xe49851		4889c6			MOVQ AX, SI							
  user_service.go:46	0xe49854		4989d8			MOVQ BX, R8							
  user_service.go:46	0xe49857		4c8d4c2470		LEAQ 0x70(SP), R9						
  user_service.go:46	0xe4985c		41ba01000000		MOVL $__minor_os_version__(SB), R10				
  user_service.go:46	0xe49862		4d89d3			MOVQ R10, R11							
  user_service.go:46	0xe49865		4889d0			MOVQ DX, AX							
  user_service.go:46	0xe49868		4c89e3			MOVQ R12, BX							
  user_service.go:46	0xe4986b		e85007b5ff		CALL CAS-Backend/biz/dao.Insert_user(SB)			
  user_service.go:46	0xe49870		84c0			TESTL AL, AL							
  user_service.go:46	0xe49872		7473			JE 0xe498e7							
  user_service.go:47	0xe49874		440f11bc2480000000	MOVUPS X15, 0x80(SP)						
  user_service.go:47	0xe4987d		488b8424c8000000	MOVQ 0xc8(SP), AX						
  user_service.go:47	0xe49885		488b9c24d0000000	MOVQ 0xd0(SP), BX						
  user_service.go:47	0xe4988d		e88e0862ff		CALL runtime.convTstring(SB)					
  user_service.go:47	0xe49892		488d0d87901f00		LEAQ runtime.types+383264(SB), CX				
  user_service.go:47	0xe49899		48898c2480000000	MOVQ CX, 0x80(SP)						
  user_service.go:47	0xe498a1		4889842488000000	MOVQ AX, 0x88(SP)						
  print.go:233		0xe498a9		488b1dd0876c02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe498b0		488d0529220202		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe498b7		488d0d46973300		LEAQ go:string.*+109308(SB), CX					
  print.go:233		0xe498be		bf16000000		MOVL $__major_os_version__+16(SB), DI				
  print.go:233		0xe498c3		488db42480000000	LEAQ 0x80(SP), SI						
  print.go:233		0xe498cb		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233		0xe498d1		4d89c1			MOVQ R8, R9							
  print.go:233		0xe498d4		e847596dff		CALL fmt.Fprintf(SB)						
  user_service.go:48	0xe498d9		b801000000		MOVL $__minor_os_version__(SB), AX				
  user_service.go:48	0xe498de		4881c4b0000000		ADDQ $.file+99(SB), SP						
  user_service.go:48	0xe498e5		5d			POPQ BP								
  user_service.go:48	0xe498e6		c3			RET								
  user_service.go:50	0xe498e7		31c0			XORL AX, AX							
  user_service.go:50	0xe498e9		4881c4b0000000		ADDQ $.file+99(SB), SP						
  user_service.go:50	0xe498f0		5d			POPQ BP								
  user_service.go:50	0xe498f1		c3			RET								
  user_service.go:35	0xe498f2		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)						
  user_service.go:35	0xe498fb		488b8424d8000000	MOVQ 0xd8(SP), AX						
  user_service.go:35	0xe49903		488b9c24e0000000	MOVQ 0xe0(SP), BX						
  user_service.go:35	0xe4990b		e8100862ff		CALL runtime.convTstring(SB)					
  user_service.go:35	0xe49910		488d0d09901f00		LEAQ runtime.types+383264(SB), CX				
  user_service.go:35	0xe49917		48898c24a0000000	MOVQ CX, 0xa0(SP)						
  user_service.go:35	0xe4991f		48898424a8000000	MOVQ AX, 0xa8(SP)						
  print.go:233		0xe49927		488b1d52876c02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe4992e		488d05ab210202		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe49935		488d0dcdda3400		LEAQ go:string.*+192257(SB), CX					
  print.go:233		0xe4993c		bf29000000		MOVL $__major_os_version__+35(SB), DI				
  print.go:233		0xe49941		488db424a0000000	LEAQ 0xa0(SP), SI						
  print.go:233		0xe49949		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233		0xe4994f		4d89c1			MOVQ R8, R9							
  print.go:233		0xe49952		e8c9586dff		CALL fmt.Fprintf(SB)						
  user_service.go:36	0xe49957		31c0			XORL AX, AX							
  user_service.go:36	0xe49959		4881c4b0000000		ADDQ $.file+99(SB), SP						
  user_service.go:36	0xe49960		5d			POPQ BP								
  user_service.go:36	0xe49961		c3			RET								
  user_service.go:33	0xe49962		4889442408		MOVQ AX, 0x8(SP)						
  user_service.go:33	0xe49967		48895c2410		MOVQ BX, 0x10(SP)						
  user_service.go:33	0xe4996c		48894c2418		MOVQ CX, 0x18(SP)						
  user_service.go:33	0xe49971		48897c2420		MOVQ DI, 0x20(SP)						
  user_service.go:33	0xe49976		4889742428		MOVQ SI, 0x28(SP)						
  user_service.go:33	0xe4997b		4c89442430		MOVQ R8, 0x30(SP)						
  user_service.go:33	0xe49980		4c894c2438		MOVQ R9, 0x38(SP)						
  user_service.go:33	0xe49985		4c89542440		MOVQ R10, 0x40(SP)						
  user_service.go:33	0xe4998a		e851cb62ff		CALL runtime.morestack_noctxt.abi0(SB)				
  user_service.go:33	0xe4998f		488b442408		MOVQ 0x8(SP), AX						
  user_service.go:33	0xe49994		488b5c2410		MOVQ 0x10(SP), BX						
  user_service.go:33	0xe49999		488b4c2418		MOVQ 0x18(SP), CX						
  user_service.go:33	0xe4999e		488b7c2420		MOVQ 0x20(SP), DI						
  user_service.go:33	0xe499a3		488b742428		MOVQ 0x28(SP), SI						
  user_service.go:33	0xe499a8		4c8b442430		MOVQ 0x30(SP), R8						
  user_service.go:33	0xe499ad		4c8b4c2438		MOVQ 0x38(SP), R9						
  user_service.go:33	0xe499b2		4c8b542440		MOVQ 0x40(SP), R10						
  user_service.go:33	0xe499b7		e944fdffff		JMP CAS-Backend/biz/service.Register(SB)			
  :-1			0xe499bc		cc			INT $__subsystem__(SB)						
  :-1			0xe499bd		cc			INT $__subsystem__(SB)						
  :-1			0xe499be		cc			INT $__subsystem__(SB)						
  :-1			0xe499bf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/service.Login(SB) D:/CodeEnv_code/cas-backend/biz/service/user_service.go
  user_service.go:57	0xe499c0		4c8da42470ffffff	LEAQ 0xffffff70(SP), R12					
  user_service.go:57	0xe499c8		4d3b6610		CMPQ R12, 0x10(R14)						
  user_service.go:57	0xe499cc		0f861b030000		JBE 0xe49ced							
  user_service.go:57	0xe499d2		55			PUSHQ BP							
  user_service.go:57	0xe499d3		4889e5			MOVQ SP, BP							
  user_service.go:57	0xe499d6		4881ec08010000		SUBQ $.file+187(SB), SP						
  user_service.go:59	0xe499dd		48898c2468010000	MOVQ CX, 0x168(SP)						
  user_service.go:59	0xe499e5		48899c2460010000	MOVQ BX, 0x160(SP)						
  user_service.go:59	0xe499ed		4889842458010000	MOVQ AX, 0x158(SP)						
  user_service.go:59	0xe499f5		4889bc2470010000	MOVQ DI, 0x170(SP)						
  user_service.go:57	0xe499fd		440f11bc2418010000	MOVUPS X15, 0x118(SP)						
  user_service.go:57	0xe49a06		440f11bc2428010000	MOVUPS X15, 0x128(SP)						
  user_service.go:57	0xe49a0f		440f11bc2438010000	MOVUPS X15, 0x138(SP)						
  user_service.go:57	0xe49a18		440f11bc2448010000	MOVUPS X15, 0x148(SP)						
  user_service.go:58	0xe49a21		440f117c2460		MOVUPS X15, 0x60(SP)						
  user_service.go:58	0xe49a27		440f117c2470		MOVUPS X15, 0x70(SP)						
  user_service.go:58	0xe49a2d		440f11bc2480000000	MOVUPS X15, 0x80(SP)						
  user_service.go:58	0xe49a36		440f11bc2490000000	MOVUPS X15, 0x90(SP)						
  user_service.go:59	0xe49a3f		90			NOPL								
  user_service.go:59	0xe49a40		e81b08b5ff		CALL CAS-Backend/biz/dao.IsExist_user(SB)			
  user_service.go:59	0xe49a45		84c0			TESTL AL, AL							
  user_service.go:59	0xe49a47		0f8424020000		JE 0xe49c71							
  user_service.go:60	0xe49a4d		488b842458010000	MOVQ 0x158(SP), AX						
  user_service.go:60	0xe49a55		488b9c2460010000	MOVQ 0x160(SP), BX						
  user_service.go:60	0xe49a5d		0f1f00			NOPL 0(AX)							
  user_service.go:60	0xe49a60		e8db09b5ff		CALL CAS-Backend/biz/dao.Select1_user(SB)			
  user_service.go:60	0xe49a65		48898424a8000000	MOVQ AX, 0xa8(SP)						
  user_service.go:60	0xe49a6d		48899c24b0000000	MOVQ BX, 0xb0(SP)						
  user_service.go:60	0xe49a75		48898c24b8000000	MOVQ CX, 0xb8(SP)						
  user_service.go:60	0xe49a7d		4889bc24c0000000	MOVQ DI, 0xc0(SP)						
  user_service.go:60	0xe49a85		4889b424c8000000	MOVQ SI, 0xc8(SP)						
  user_service.go:60	0xe49a8d		4c898424d0000000	MOVQ R8, 0xd0(SP)						
  user_service.go:60	0xe49a95		4c898c24d8000000	MOVQ R9, 0xd8(SP)						
  user_service.go:60	0xe49a9d		4c899424e0000000	MOVQ R10, 0xe0(SP)						
  user_service.go:60	0xe49aa5		0f108424a8000000	MOVUPS 0xa8(SP), X0						
  user_service.go:60	0xe49aad		0f11442460		MOVUPS X0, 0x60(SP)						
  user_service.go:60	0xe49ab2		0f108424b8000000	MOVUPS 0xb8(SP), X0						
  user_service.go:60	0xe49aba		0f11442470		MOVUPS X0, 0x70(SP)						
  user_service.go:60	0xe49abf		0f108424c8000000	MOVUPS 0xc8(SP), X0						
  user_service.go:60	0xe49ac7		0f11842480000000	MOVUPS X0, 0x80(SP)						
  user_service.go:60	0xe49acf		0f108424d8000000	MOVUPS 0xd8(SP), X0						
  user_service.go:60	0xe49ad7		0f11842490000000	MOVUPS X0, 0x90(SP)						
  user_service.go:62	0xe49adf		488b8c2488000000	MOVQ 0x88(SP), CX						
  user_service.go:62	0xe49ae7		48898c24a0000000	MOVQ CX, 0xa0(SP)						
  user_service.go:62	0xe49aef		488b942490000000	MOVQ 0x90(SP), DX						
  user_service.go:62	0xe49af7		4889542458		MOVQ DX, 0x58(SP)						
  user_service.go:22	0xe49afc		488d442438		LEAQ 0x38(SP), AX						
  user_service.go:22	0xe49b01		488b9c2468010000	MOVQ 0x168(SP), BX						
  user_service.go:22	0xe49b09		488b8c2470010000	MOVQ 0x170(SP), CX						
  user_service.go:22	0xe49b11		e82abd60ff		CALL runtime.stringtoslicebyte(SB)				
  user_service.go:22	0xe49b16		488b9424a0000000	MOVQ 0xa0(SP), DX						
  user_service.go:22	0xe49b1e		4885d2			TESTQ DX, DX							
  user_service.go:22	0xe49b21		488d3578377102		LEAQ unicode..stmp_365(SB), SI					
  user_service.go:22	0xe49b28		480f45f2		CMOVNE DX, SI							
  user_service.go:22	0xe49b2c		4889c7			MOVQ AX, DI							
  user_service.go:22	0xe49b2f		4989c8			MOVQ CX, R8							
  user_service.go:22	0xe49b32		4889f0			MOVQ SI, AX							
  user_service.go:22	0xe49b35		488b4c2458		MOVQ 0x58(SP), CX						
  user_service.go:22	0xe49b3a		4889de			MOVQ BX, SI							
  user_service.go:22	0xe49b3d		4889cb			MOVQ CX, BX							
  user_service.go:22	0xe49b40		e8bbe3ffff		CALL golang.org/x/crypto/bcrypt.CompareHashAndPassword(SB)	
  user_service.go:23	0xe49b45		4885c0			TESTQ AX, AX							
  user_service.go:22	0xe49b48		7479			JE 0xe49bc3							
  print.go:233		0xe49b4a		488b1d2f856c02		MOVQ os.Stdout(SB), BX						
  user_service.go:63	0xe49b51		90			NOPL								
  print.go:233		0xe49b52		488d05871f0202		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe49b59		488d0dac003400		LEAQ go:string.*+136964(SB), CX					
  print.go:233		0xe49b60		bf1c000000		MOVL $__major_os_version__+22(SB), DI				
  print.go:233		0xe49b65		31f6			XORL SI, SI							
  print.go:233		0xe49b67		4531c0			XORL R8, R8							
  print.go:233		0xe49b6a		4d89c1			MOVQ R8, R9							
  print.go:233		0xe49b6d		e8ae566dff		CALL fmt.Fprintf(SB)						
  user_service.go:64	0xe49b72		0f10442460		MOVUPS 0x60(SP), X0						
  user_service.go:64	0xe49b77		0f11842418010000	MOVUPS X0, 0x118(SP)						
  user_service.go:64	0xe49b7f		0f10442470		MOVUPS 0x70(SP), X0						
  user_service.go:64	0xe49b84		0f11842428010000	MOVUPS X0, 0x128(SP)						
  user_service.go:64	0xe49b8c		0f10842480000000	MOVUPS 0x80(SP), X0						
  user_service.go:64	0xe49b94		0f11842438010000	MOVUPS X0, 0x138(SP)						
  user_service.go:64	0xe49b9c		0f10842490000000	MOVUPS 0x90(SP), X0						
  user_service.go:64	0xe49ba4		0f11842448010000	MOVUPS X0, 0x148(SP)						
  user_service.go:64	0xe49bac		31c0			XORL AX, AX							
  user_service.go:64	0xe49bae		488d1d1bb60102		LEAQ runtime.gcbits.*+1808(SB), BX				
  user_service.go:64	0xe49bb5		b901000000		MOVL $__minor_os_version__(SB), CX				
  user_service.go:64	0xe49bba		4881c408010000		ADDQ $.file+187(SB), SP						
  user_service.go:64	0xe49bc1		5d			POPQ BP								
  user_service.go:64	0xe49bc2		c3			RET								
  user_service.go:66	0xe49bc3		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)						
  user_service.go:66	0xe49bcc		488b442468		MOVQ 0x68(SP), AX						
  user_service.go:66	0xe49bd1		488b5c2470		MOVQ 0x70(SP), BX						
  user_service.go:66	0xe49bd6		e8450562ff		CALL runtime.convTstring(SB)					
  user_service.go:66	0xe49bdb		488d0d3e8d1f00		LEAQ runtime.types+383264(SB), CX				
  user_service.go:66	0xe49be2		48898c24f8000000	MOVQ CX, 0xf8(SP)						
  user_service.go:66	0xe49bea		4889842400010000	MOVQ AX, 0x100(SP)						
  print.go:233		0xe49bf2		488b1d87846c02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe49bf9		488d05e01e0202		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe49c00		488d0d7ca73300		LEAQ go:string.*+114299(SB), CX					
  print.go:233		0xe49c07		bf17000000		MOVL $__major_os_version__+17(SB), DI				
  print.go:233		0xe49c0c		488db424f8000000	LEAQ 0xf8(SP), SI						
  print.go:233		0xe49c14		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233		0xe49c1a		4d89c1			MOVQ R8, R9							
  print.go:233		0xe49c1d		0f1f00			NOPL 0(AX)							
  print.go:233		0xe49c20		e8fb556dff		CALL fmt.Fprintf(SB)						
  user_service.go:67	0xe49c25		0f10442460		MOVUPS 0x60(SP), X0						
  user_service.go:67	0xe49c2a		0f11842418010000	MOVUPS X0, 0x118(SP)						
  user_service.go:67	0xe49c32		0f10442470		MOVUPS 0x70(SP), X0						
  user_service.go:67	0xe49c37		0f11842428010000	MOVUPS X0, 0x128(SP)						
  user_service.go:67	0xe49c3f		0f10842480000000	MOVUPS 0x80(SP), X0						
  user_service.go:67	0xe49c47		0f11842438010000	MOVUPS X0, 0x138(SP)						
  user_service.go:67	0xe49c4f		0f10842490000000	MOVUPS 0x90(SP), X0						
  user_service.go:67	0xe49c57		0f11842448010000	MOVUPS X0, 0x148(SP)						
  user_service.go:67	0xe49c5f		b801000000		MOVL $__minor_os_version__(SB), AX				
  user_service.go:67	0xe49c64		31db			XORL BX, BX							
  user_service.go:67	0xe49c66		31c9			XORL CX, CX							
  user_service.go:67	0xe49c68		4881c408010000		ADDQ $.file+187(SB), SP						
  user_service.go:67	0xe49c6f		5d			POPQ BP								
  user_service.go:67	0xe49c70		c3			RET								
  user_service.go:69	0xe49c71		488d15a88c1f00		LEAQ runtime.types+383264(SB), DX				
  user_service.go:69	0xe49c78		48899424e8000000	MOVQ DX, 0xe8(SP)						
  user_service.go:69	0xe49c80		488d1559040202		LEAQ CAS-Backend/biz/service..stmp_0(SB), DX			
  user_service.go:69	0xe49c87		48899424f0000000	MOVQ DX, 0xf0(SP)						
  print.go:314		0xe49c8f		488b1dea836c02		MOVQ os.Stdout(SB), BX						
  print.go:314		0xe49c96		488d05431e0202		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe49c9d		488d8c24e8000000	LEAQ 0xe8(SP), CX						
  print.go:314		0xe49ca5		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe49caa		4889fe			MOVQ DI, SI							
  print.go:314		0xe49cad		e8ae5b6dff		CALL fmt.Fprintln(SB)						
  user_service.go:70	0xe49cb2		440f11bc2418010000	MOVUPS X15, 0x118(SP)						
  user_service.go:70	0xe49cbb		440f11bc2428010000	MOVUPS X15, 0x128(SP)						
  user_service.go:70	0xe49cc4		440f11bc2438010000	MOVUPS X15, 0x138(SP)						
  user_service.go:70	0xe49ccd		440f11bc2448010000	MOVUPS X15, 0x148(SP)						
  user_service.go:70	0xe49cd6		31c0			XORL AX, AX							
  user_service.go:70	0xe49cd8		488d1df9ad0102		LEAQ runtime.gcbits.*+24(SB), BX				
  user_service.go:70	0xe49cdf		b901000000		MOVL $__minor_os_version__(SB), CX				
  user_service.go:70	0xe49ce4		4881c408010000		ADDQ $.file+187(SB), SP						
  user_service.go:70	0xe49ceb		5d			POPQ BP								
  user_service.go:70	0xe49cec		c3			RET								
  user_service.go:57	0xe49ced		4889442448		MOVQ AX, 0x48(SP)						
  user_service.go:57	0xe49cf2		48895c2450		MOVQ BX, 0x50(SP)						
  user_service.go:57	0xe49cf7		48894c2458		MOVQ CX, 0x58(SP)						
  user_service.go:57	0xe49cfc		48897c2460		MOVQ DI, 0x60(SP)						
  user_service.go:57	0xe49d01		e8dac762ff		CALL runtime.morestack_noctxt.abi0(SB)				
  user_service.go:57	0xe49d06		488b442448		MOVQ 0x48(SP), AX						
  user_service.go:57	0xe49d0b		488b5c2450		MOVQ 0x50(SP), BX						
  user_service.go:57	0xe49d10		488b4c2458		MOVQ 0x58(SP), CX						
  user_service.go:57	0xe49d15		488b7c2460		MOVQ 0x60(SP), DI						
  user_service.go:57	0xe49d1a		e9a1fcffff		JMP CAS-Backend/biz/service.Login(SB)				
  :-1			0xe49d1f		cc			INT $__subsystem__(SB)						

