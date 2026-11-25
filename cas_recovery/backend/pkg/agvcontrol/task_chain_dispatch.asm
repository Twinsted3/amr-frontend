TEXT CAS-Backend/pkg/agvcontrol.ParseForkliftTaskChainJSON(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/task_chain_dispatch.go
  task_chain_dispatch.go:12	0xe21f20		4c8da42450feffff	LEAQ 0xfffffe50(SP), R12					
  task_chain_dispatch.go:12	0xe21f28		4d3b6610		CMPQ R12, 0x10(R14)						
  task_chain_dispatch.go:12	0xe21f2c		0f86bf030000		JBE 0xe222f1							
  task_chain_dispatch.go:12	0xe21f32		55			PUSHQ BP							
  task_chain_dispatch.go:12	0xe21f33		4889e5			MOVQ SP, BP							
  task_chain_dispatch.go:12	0xe21f36		4881ec28020000		SUBQ $__file_alignment__+40(SB), SP				
  task_chain_dispatch.go:12	0xe21f3d		4889842438020000	MOVQ AX, 0x238(SP)						
  task_chain_dispatch.go:13	0xe21f45		e8760a6cff		CALL strings.TrimSpace(SB)					
  task_chain_dispatch.go:14	0xe21f4a		4885db			TESTQ BX, BX							
  task_chain_dispatch.go:14	0xe21f4d		0f84fd000000		JE 0xe22050							
  task_chain_dispatch.go:13	0xe21f53		4889842408010000	MOVQ AX, 0x108(SP)						
  task_chain_dispatch.go:13	0xe21f5b		48899c24f8000000	MOVQ BX, 0xf8(SP)						
  task_chain_dispatch.go:17	0xe21f63		488d0536312100		LEAQ runtime.types+327840(SB), AX				
  task_chain_dispatch.go:17	0xe21f6a		e831f85eff		CALL runtime.newobject(SB)					
  task_chain_dispatch.go:17	0xe21f6f		4889842420020000	MOVQ AX, 0x220(SP)						
  task_chain_dispatch.go:17	0xe21f77		48c70000000000		MOVQ $0x0, 0(AX)						
  task_chain_dispatch.go:18	0xe21f7e		488b9c2408010000	MOVQ 0x108(SP), BX						
  task_chain_dispatch.go:18	0xe21f86		488b8c24f8000000	MOVQ 0xf8(SP), CX						
  task_chain_dispatch.go:18	0xe21f8e		31c0			XORL AX, AX							
  task_chain_dispatch.go:18	0xe21f90		e8ab3863ff		CALL runtime.stringtoslicebyte(SB)				
  task_chain_dispatch.go:18	0xe21f95		488d3dc4302100		LEAQ runtime.types+327776(SB), DI				
  task_chain_dispatch.go:18	0xe21f9c		488bb42420020000	MOVQ 0x220(SP), SI						
  task_chain_dispatch.go:18	0xe21fa4		e8375574ff		CALL encoding/json.Unmarshal(SB)				
  task_chain_dispatch.go:18	0xe21fa9		4885c0			TESTQ AX, AX							
  task_chain_dispatch.go:18	0xe21fac		7456			JE 0xe22004							
  task_chain_dispatch.go:19	0xe21fae		440f11bc2410020000	MOVUPS X15, 0x210(SP)						
  task_chain_dispatch.go:19	0xe21fb7		7404			JE 0xe21fbd							
  task_chain_dispatch.go:19	0xe21fb9		488b4008		MOVQ 0x8(AX), AX						
  task_chain_dispatch.go:19	0xe21fbd		4889842410020000	MOVQ AX, 0x210(SP)						
  task_chain_dispatch.go:19	0xe21fc5		48899c2418020000	MOVQ BX, 0x218(SP)						
  task_chain_dispatch.go:19	0xe21fcd		488d0575ac3600		LEAQ go:string.*+149313(SB), AX					
  task_chain_dispatch.go:19	0xe21fd4		bb1f000000		MOVL $__major_os_version__+25(SB), BX				
  task_chain_dispatch.go:19	0xe21fd9		488d8c2410020000	LEAQ 0x210(SP), CX						
  task_chain_dispatch.go:19	0xe21fe1		bf01000000		MOVL $__minor_os_version__(SB), DI				
  task_chain_dispatch.go:19	0xe21fe6		4889fe			MOVQ DI, SI							
  task_chain_dispatch.go:19	0xe21fe9		e8d2a36fff		CALL fmt.Errorf(SB)						
  task_chain_dispatch.go:19	0xe21fee		31c9			XORL CX, CX							
  task_chain_dispatch.go:19	0xe21ff0		4889c7			MOVQ AX, DI							
  task_chain_dispatch.go:19	0xe21ff3		4889de			MOVQ BX, SI							
  task_chain_dispatch.go:19	0xe21ff6		31c0			XORL AX, AX							
  task_chain_dispatch.go:19	0xe21ff8		4889cb			MOVQ CX, BX							
  task_chain_dispatch.go:19	0xe21ffb		4881c428020000		ADDQ $__file_alignment__+40(SB), SP				
  task_chain_dispatch.go:19	0xe22002		5d			POPQ BP								
  task_chain_dispatch.go:19	0xe22003		c3			RET								
  task_chain_dispatch.go:21	0xe22004		488b942420020000	MOVQ 0x220(SP), DX						
  task_chain_dispatch.go:21	0xe2200c		4c8b4208		MOVQ 0x8(DX), R8						
  task_chain_dispatch.go:21	0xe22010		4d85c0			TESTQ R8, R8							
  task_chain_dispatch.go:21	0xe22013		740d			JE 0xe22022							
  task_chain_dispatch.go:21	0xe22015		4c898424f8000000	MOVQ R8, 0xf8(SP)						
  task_chain_dispatch.go:21	0xe2201d		31c0			XORL AX, AX							
  task_chain_dispatch.go:21	0xe2201f		90			NOPL								
  task_chain_dispatch.go:24	0xe22020		eb7e			JMP 0xe220a0							
  task_chain_dispatch.go:22	0xe22022		488d0565fe3600		LEAQ go:string.*+170374(SB), AX					
  task_chain_dispatch.go:22	0xe22029		bb24000000		MOVL $__major_os_version__+30(SB), BX				
  task_chain_dispatch.go:22	0xe2202e		31c9			XORL CX, CX							
  task_chain_dispatch.go:22	0xe22030		31ff			XORL DI, DI							
  task_chain_dispatch.go:22	0xe22032		4889fe			MOVQ DI, SI							
  task_chain_dispatch.go:22	0xe22035		e886a36fff		CALL fmt.Errorf(SB)						
  task_chain_dispatch.go:22	0xe2203a		31c9			XORL CX, CX							
  task_chain_dispatch.go:22	0xe2203c		4889c7			MOVQ AX, DI							
  task_chain_dispatch.go:22	0xe2203f		4889de			MOVQ BX, SI							
  task_chain_dispatch.go:22	0xe22042		31c0			XORL AX, AX							
  task_chain_dispatch.go:22	0xe22044		4889cb			MOVQ CX, BX							
  task_chain_dispatch.go:22	0xe22047		4881c428020000		ADDQ $__file_alignment__+40(SB), SP				
  task_chain_dispatch.go:22	0xe2204e		5d			POPQ BP								
  task_chain_dispatch.go:22	0xe2204f		c3			RET								
  task_chain_dispatch.go:15	0xe22050		488d0538f73500		LEAQ go:string.*+103047(SB), AX					
  task_chain_dispatch.go:15	0xe22057		bb15000000		MOVL $__major_os_version__+15(SB), BX				
  task_chain_dispatch.go:15	0xe2205c		31c9			XORL CX, CX							
  task_chain_dispatch.go:15	0xe2205e		31ff			XORL DI, DI							
  task_chain_dispatch.go:15	0xe22060		4889fe			MOVQ DI, SI							
  task_chain_dispatch.go:15	0xe22063		e858a36fff		CALL fmt.Errorf(SB)						
  task_chain_dispatch.go:15	0xe22068		31c9			XORL CX, CX							
  task_chain_dispatch.go:15	0xe2206a		4889c7			MOVQ AX, DI							
  task_chain_dispatch.go:15	0xe2206d		4889de			MOVQ BX, SI							
  task_chain_dispatch.go:15	0xe22070		31c0			XORL AX, AX							
  task_chain_dispatch.go:15	0xe22072		4889cb			MOVQ CX, BX							
  task_chain_dispatch.go:15	0xe22075		4881c428020000		ADDQ $__file_alignment__+40(SB), SP				
  task_chain_dispatch.go:15	0xe2207c		5d			POPQ BP								
  task_chain_dispatch.go:15	0xe2207d		c3			RET								
  task_chain_dispatch.go:24	0xe2207e		488b8424e0000000	MOVQ 0xe0(SP), AX						
  task_chain_dispatch.go:24	0xe22086		48ffc0			INCQ AX								
  task_chain_dispatch.go:24	0xe22089		4c8b8424f8000000	MOVQ 0xf8(SP), R8						
  task_chain_dispatch.go:24	0xe22091		488b942420020000	MOVQ 0x220(SP), DX						
  task_chain_dispatch.go:24	0xe22099		0f1f8000000000		NOPL 0(AX)							
  task_chain_dispatch.go:24	0xe220a0		4c39c0			CMPQ AX, R8							
  task_chain_dispatch.go:24	0xe220a3		0f8d1f020000		JGE 0xe222c8							
  task_chain_dispatch.go:25	0xe220a9		488b4a08		MOVQ 0x8(DX), CX						
  task_chain_dispatch.go:25	0xe220ad		4839c8			CMPQ AX, CX							
  task_chain_dispatch.go:25	0xe220b0		0f8335020000		JAE 0xe222eb							
  task_chain_dispatch.go:24	0xe220b6		48898424e0000000	MOVQ AX, 0xe0(SP)						
  task_chain_dispatch.go:25	0xe220be		4869c8e0000000		IMULQ $.file+147(SB), AX, CX					
  task_chain_dispatch.go:25	0xe220c5		48898c24f0000000	MOVQ CX, 0xf0(SP)						
  task_chain_dispatch.go:25	0xe220cd		488b32			MOVQ 0(DX), SI							
  task_chain_dispatch.go:25	0xe220d0		488b3c0e		MOVQ 0(SI)(CX*1), DI						
  task_chain_dispatch.go:25	0xe220d4		488b5c0e08		MOVQ 0x8(SI)(CX*1), BX						
  task_chain_dispatch.go:25	0xe220d9		4889f8			MOVQ DI, AX							
  task_chain_dispatch.go:25	0xe220dc		0f1f4000		NOPL 0(AX)							
  task_chain_dispatch.go:25	0xe220e0		e8db086cff		CALL strings.TrimSpace(SB)					
  task_chain_dispatch.go:25	0xe220e5		4885db			TESTQ BX, BX							
  task_chain_dispatch.go:25	0xe220e8		7507			JNE 0xe220f1							
  task_chain_dispatch.go:25	0xe220ea		b901000000		MOVL $__minor_os_version__(SB), CX				
  task_chain_dispatch.go:25	0xe220ef		eb3d			JMP 0xe2212e							
  task_chain_dispatch.go:25	0xe220f1		488b942420020000	MOVQ 0x220(SP), DX						
  task_chain_dispatch.go:25	0xe220f9		488b4a08		MOVQ 0x8(DX), CX						
  task_chain_dispatch.go:25	0xe220fd		488b8424e0000000	MOVQ 0xe0(SP), AX						
  task_chain_dispatch.go:25	0xe22105		4839c8			CMPQ AX, CX							
  task_chain_dispatch.go:25	0xe22108		0f83d8010000		JAE 0xe222e6							
  task_chain_dispatch.go:25	0xe2210e		488b0a			MOVQ 0(DX), CX							
  task_chain_dispatch.go:25	0xe22111		488bb424f0000000	MOVQ 0xf0(SP), SI						
  task_chain_dispatch.go:25	0xe22119		488b443110		MOVQ 0x10(CX)(SI*1), AX						
  task_chain_dispatch.go:25	0xe2211e		488b5c3118		MOVQ 0x18(CX)(SI*1), BX						
  task_chain_dispatch.go:25	0xe22123		e898086cff		CALL strings.TrimSpace(SB)					
  task_chain_dispatch.go:25	0xe22128		4885db			TESTQ BX, BX							
  task_chain_dispatch.go:25	0xe2212b		0f94c1			SETE CL								
  task_chain_dispatch.go:25	0xe2212e		84c9			TESTL CL, CL							
  task_chain_dispatch.go:25	0xe22130		0f852b010000		JNE 0xe22261							
  task_chain_dispatch.go:28	0xe22136		488b942420020000	MOVQ 0x220(SP), DX						
  task_chain_dispatch.go:28	0xe2213e		488b4a08		MOVQ 0x8(DX), CX						
  task_chain_dispatch.go:28	0xe22142		488b8424e0000000	MOVQ 0xe0(SP), AX						
  task_chain_dispatch.go:28	0xe2214a		4839c8			CMPQ AX, CX							
  task_chain_dispatch.go:28	0xe2214d		0f838e010000		JAE 0xe222e1							
  task_chain_dispatch.go:28	0xe22153		488b02			MOVQ 0(DX), AX							
  task_chain_dispatch.go:28	0xe22156		488b8c24f0000000	MOVQ 0xf0(SP), CX						
  task_chain_dispatch.go:28	0xe2215e		488d3408		LEAQ 0(AX)(CX*1), SI						
  task_chain_dispatch.go:28	0xe22162		488dbc2410010000	LEAQ 0x110(SP), DI						
  task_chain_dispatch.go:28	0xe2216a		48896c24f0		MOVQ BP, -0x10(SP)						
  task_chain_dispatch.go:28	0xe2216f		488d6c24f0		LEAQ -0x10(SP), BP						
  task_chain_dispatch.go:28	0xe22174		e8636c65ff		CALL 0x478ddc							
  task_chain_dispatch.go:28	0xe22179		488b6d00		MOVQ 0(BP), BP							
  task_chain_dispatch.go:28	0xe2217d		4889e7			MOVQ SP, DI							
  task_chain_dispatch.go:28	0xe22180		488db42410010000	LEAQ 0x110(SP), SI						
  task_chain_dispatch.go:28	0xe22188		48896c24f0		MOVQ BP, -0x10(SP)						
  task_chain_dispatch.go:28	0xe2218d		488d6c24f0		LEAQ -0x10(SP), BP						
  task_chain_dispatch.go:28	0xe22192		e8456c65ff		CALL 0x478ddc							
  task_chain_dispatch.go:28	0xe22197		488b6d00		MOVQ 0(BP), BP							
  task_chain_dispatch.go:28	0xe2219b		0f1f440000		NOPL 0(AX)(AX*1)						
  task_chain_dispatch.go:28	0xe221a0		e85b75ffff		CALL CAS-Backend/pkg/agvcontrol.validateForkliftOperation(SB)	
  task_chain_dispatch.go:28	0xe221a5		4885c0			TESTQ AX, AX							
  task_chain_dispatch.go:28	0xe221a8		0f84d0feffff		JE 0xe2207e							
  task_chain_dispatch.go:28	0xe221ae		48898424e8000000	MOVQ AX, 0xe8(SP)						
  task_chain_dispatch.go:28	0xe221b6		48899c2400010000	MOVQ BX, 0x100(SP)						
  task_chain_dispatch.go:29	0xe221be		440f11bc24f0010000	MOVUPS X15, 0x1f0(SP)						
  task_chain_dispatch.go:29	0xe221c7		440f11bc2400020000	MOVUPS X15, 0x200(SP)						
  task_chain_dispatch.go:29	0xe221d0		488b8424e0000000	MOVQ 0xe0(SP), AX						
  task_chain_dispatch.go:29	0xe221d8		48ffc0			INCQ AX								
  task_chain_dispatch.go:29	0xe221db		0f1f440000		NOPL 0(AX)(AX*1)						
  task_chain_dispatch.go:29	0xe221e0		e8bb7e64ff		CALL runtime.convT64(SB)					
  task_chain_dispatch.go:29	0xe221e5		488d0d74092200		LEAQ runtime.types+383840(SB), CX				
  task_chain_dispatch.go:29	0xe221ec		48898c24f0010000	MOVQ CX, 0x1f0(SP)						
  task_chain_dispatch.go:29	0xe221f4		48898424f8010000	MOVQ AX, 0x1f8(SP)						
  task_chain_dispatch.go:28	0xe221fc		488b8c24e8000000	MOVQ 0xe8(SP), CX						
  task_chain_dispatch.go:28	0xe22204		4885c9			TESTQ CX, CX							
  task_chain_dispatch.go:29	0xe22207		7406			JE 0xe2220f							
  task_chain_dispatch.go:29	0xe22209		488b4108		MOVQ 0x8(CX), AX						
  task_chain_dispatch.go:29	0xe2220d		eb03			JMP 0xe22212							
  task_chain_dispatch.go:29	0xe2220f		4889c8			MOVQ CX, AX							
  task_chain_dispatch.go:29	0xe22212		4889842400020000	MOVQ AX, 0x200(SP)						
  task_chain_dispatch.go:29	0xe2221a		488b942400010000	MOVQ 0x100(SP), DX						
  task_chain_dispatch.go:29	0xe22222		4889942408020000	MOVQ DX, 0x208(SP)						
  task_chain_dispatch.go:29	0xe2222a		488d0529eb3600		LEAQ go:string.*+165970(SB), AX					
  task_chain_dispatch.go:29	0xe22231		bb23000000		MOVL $__major_os_version__+29(SB), BX				
  task_chain_dispatch.go:29	0xe22236		488d8c24f0010000	LEAQ 0x1f0(SP), CX						
  task_chain_dispatch.go:29	0xe2223e		bf02000000		MOVL $__minor_os_version__+1(SB), DI				
  task_chain_dispatch.go:29	0xe22243		4889fe			MOVQ DI, SI							
  task_chain_dispatch.go:29	0xe22246		e875a16fff		CALL fmt.Errorf(SB)						
  task_chain_dispatch.go:29	0xe2224b		31c9			XORL CX, CX							
  task_chain_dispatch.go:29	0xe2224d		4889c7			MOVQ AX, DI							
  task_chain_dispatch.go:29	0xe22250		4889de			MOVQ BX, SI							
  task_chain_dispatch.go:29	0xe22253		31c0			XORL AX, AX							
  task_chain_dispatch.go:29	0xe22255		4889cb			MOVQ CX, BX							
  task_chain_dispatch.go:29	0xe22258		4881c428020000		ADDQ $__file_alignment__+40(SB), SP				
  task_chain_dispatch.go:29	0xe2225f		5d			POPQ BP								
  task_chain_dispatch.go:29	0xe22260		c3			RET								
  task_chain_dispatch.go:26	0xe22261		440f11bc2410020000	MOVUPS X15, 0x210(SP)						
  task_chain_dispatch.go:26	0xe2226a		488b8424e0000000	MOVQ 0xe0(SP), AX						
  task_chain_dispatch.go:26	0xe22272		48ffc0			INCQ AX								
  task_chain_dispatch.go:26	0xe22275		e8267e64ff		CALL runtime.convT64(SB)					
  task_chain_dispatch.go:26	0xe2227a		488d0ddf082200		LEAQ runtime.types+383840(SB), CX				
  task_chain_dispatch.go:26	0xe22281		48898c2410020000	MOVQ CX, 0x210(SP)						
  task_chain_dispatch.go:26	0xe22289		4889842418020000	MOVQ AX, 0x218(SP)						
  task_chain_dispatch.go:26	0xe22291		488d0562593700		LEAQ go:string.*+194290(SB), AX					
  task_chain_dispatch.go:26	0xe22298		bb2a000000		MOVL $__major_os_version__+36(SB), BX				
  task_chain_dispatch.go:26	0xe2229d		488d8c2410020000	LEAQ 0x210(SP), CX						
  task_chain_dispatch.go:26	0xe222a5		bf01000000		MOVL $__minor_os_version__(SB), DI				
  task_chain_dispatch.go:26	0xe222aa		4889fe			MOVQ DI, SI							
  task_chain_dispatch.go:26	0xe222ad		e80ea16fff		CALL fmt.Errorf(SB)						
  task_chain_dispatch.go:26	0xe222b2		31c9			XORL CX, CX							
  task_chain_dispatch.go:26	0xe222b4		4889c7			MOVQ AX, DI							
  task_chain_dispatch.go:26	0xe222b7		4889de			MOVQ BX, SI							
  task_chain_dispatch.go:26	0xe222ba		31c0			XORL AX, AX							
  task_chain_dispatch.go:26	0xe222bc		4889cb			MOVQ CX, BX							
  task_chain_dispatch.go:26	0xe222bf		4881c428020000		ADDQ $__file_alignment__+40(SB), SP				
  task_chain_dispatch.go:26	0xe222c6		5d			POPQ BP								
  task_chain_dispatch.go:26	0xe222c7		c3			RET								
  task_chain_dispatch.go:32	0xe222c8		488b02			MOVQ 0(DX), AX							
  task_chain_dispatch.go:32	0xe222cb		488b5a08		MOVQ 0x8(DX), BX						
  task_chain_dispatch.go:32	0xe222cf		488b4a10		MOVQ 0x10(DX), CX						
  task_chain_dispatch.go:32	0xe222d3		31ff			XORL DI, DI							
  task_chain_dispatch.go:32	0xe222d5		31f6			XORL SI, SI							
  task_chain_dispatch.go:32	0xe222d7		4881c428020000		ADDQ $__file_alignment__+40(SB), SP				
  task_chain_dispatch.go:32	0xe222de		5d			POPQ BP								
  task_chain_dispatch.go:32	0xe222df		90			NOPL								
  task_chain_dispatch.go:32	0xe222e0		c3			RET								
  task_chain_dispatch.go:28	0xe222e1		e8fa6465ff		CALL runtime.panicIndex(SB)					
  task_chain_dispatch.go:25	0xe222e6		e8f56465ff		CALL runtime.panicIndex(SB)					
  task_chain_dispatch.go:25	0xe222eb		e8f06465ff		CALL runtime.panicIndex(SB)					
  task_chain_dispatch.go:25	0xe222f0		90			NOPL								
  task_chain_dispatch.go:12	0xe222f1		4889442408		MOVQ AX, 0x8(SP)						
  task_chain_dispatch.go:12	0xe222f6		48895c2410		MOVQ BX, 0x10(SP)						
  task_chain_dispatch.go:12	0xe222fb		0f1f440000		NOPL 0(AX)(AX*1)						
  task_chain_dispatch.go:12	0xe22300		e8db4165ff		CALL runtime.morestack_noctxt.abi0(SB)				
  task_chain_dispatch.go:12	0xe22305		488b442408		MOVQ 0x8(SP), AX						
  task_chain_dispatch.go:12	0xe2230a		488b5c2410		MOVQ 0x10(SP), BX						
  task_chain_dispatch.go:12	0xe2230f		e90cfcffff		JMP CAS-Backend/pkg/agvcontrol.ParseForkliftTaskChainJSON(SB)	
  :-1				0xe22314		cc			INT $__subsystem__(SB)						
  :-1				0xe22315		cc			INT $__subsystem__(SB)						
  :-1				0xe22316		cc			INT $__subsystem__(SB)						
  :-1				0xe22317		cc			INT $__subsystem__(SB)						
  :-1				0xe22318		cc			INT $__subsystem__(SB)						
  :-1				0xe22319		cc			INT $__subsystem__(SB)						
  :-1				0xe2231a		cc			INT $__subsystem__(SB)						
  :-1				0xe2231b		cc			INT $__subsystem__(SB)						
  :-1				0xe2231c		cc			INT $__subsystem__(SB)						
  :-1				0xe2231d		cc			INT $__subsystem__(SB)						
  :-1				0xe2231e		cc			INT $__subsystem__(SB)						
  :-1				0xe2231f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/agvcontrol.AssignForkliftTaskIDs(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/task_chain_dispatch.go
  task_chain_dispatch.go:36	0xe22320		4c8da42430ffffff	LEAQ 0xffffff30(SP), R12					
  task_chain_dispatch.go:36	0xe22328		4d3b6610		CMPQ R12, 0x10(R14)						
  task_chain_dispatch.go:36	0xe2232c		0f8698020000		JBE 0xe225ca							
  task_chain_dispatch.go:36	0xe22332		55			PUSHQ BP							
  task_chain_dispatch.go:36	0xe22333		4889e5			MOVQ SP, BP							
  task_chain_dispatch.go:36	0xe22336		4881ec48010000		SUBQ $.file+251(SB), SP						
  task_chain_dispatch.go:36	0xe2233d		4889842458010000	MOVQ AX, 0x158(SP)						
  task_chain_dispatch.go:36	0xe22345		4889bc2470010000	MOVQ DI, 0x170(SP)						
  task_chain_dispatch.go:37	0xe2234d		4885db			TESTQ BX, BX							
  task_chain_dispatch.go:37	0xe22350		0f848c000000		JE 0xe223e2							
  task_chain_dispatch.go:37	0xe22356		48899c2460010000	MOVQ BX, 0x160(SP)						
  task_chain_dispatch.go:37	0xe2235e		4889842458010000	MOVQ AX, 0x158(SP)						
  task_chain_dispatch.go:40	0xe22366		4885f6			TESTQ SI, SI							
  task_chain_dispatch.go:40	0xe22369		7528			JNE 0xe22393							
  task_chain_dispatch.go:41	0xe2236b		e830bd68ff		CALL time.Now(SB)						
  task_chain_dispatch.go:41	0xe22370		488d3d40763500		LEAQ go:string.*+70831(SB), DI					
  task_chain_dispatch.go:41	0xe22377		be0e000000		MOVL $__major_os_version__+8(SB), SI				
  task_chain_dispatch.go:41	0xe2237c		0f1f4000		NOPL 0(AX)							
  task_chain_dispatch.go:41	0xe22380		e8fb8f67ff		CALL time.Time.Format(SB)					
  task_chain_dispatch.go:48	0xe22385		4889de			MOVQ BX, SI							
  task_chain_dispatch.go:48	0xe22388		4889c7			MOVQ AX, DI							
  task_chain_dispatch.go:43	0xe2238b		488b9c2460010000	MOVQ 0x160(SP), BX						
  task_chain_dispatch.go:48	0xe22393		4889742438		MOVQ SI, 0x38(SP)						
  task_chain_dispatch.go:48	0xe22398		4889bc2440010000	MOVQ DI, 0x140(SP)						
  task_chain_dispatch.go:43	0xe223a0		488d05d9fd3100		LEAQ runtime.types+1429888(SB), AX				
  task_chain_dispatch.go:43	0xe223a7		4889d9			MOVQ BX, CX							
  task_chain_dispatch.go:43	0xe223aa		e8b1f764ff		CALL runtime.makeslice(SB)					
  task_chain_dispatch.go:43	0xe223af		4889842438010000	MOVQ AX, 0x138(SP)						
  task_chain_dispatch.go:44	0xe223b7		488b9c2460010000	MOVQ 0x160(SP), BX						
  task_chain_dispatch.go:44	0xe223bf		4889d9			MOVQ BX, CX							
  task_chain_dispatch.go:44	0xe223c2		488d0557052200		LEAQ runtime.types+383264(SB), AX				
  task_chain_dispatch.go:44	0xe223c9		e892f764ff		CALL runtime.makeslice(SB)					
  task_chain_dispatch.go:44	0xe223ce		4889842430010000	MOVQ AX, 0x130(SP)						
  task_chain_dispatch.go:45	0xe223d6		488b942458010000	MOVQ 0x158(SP), DX						
  task_chain_dispatch.go:45	0xe223de		31c9			XORL CX, CX							
  task_chain_dispatch.go:45	0xe223e0		eb54			JMP 0xe22436							
  task_chain_dispatch.go:38	0xe223e2		488d057c863500		LEAQ go:string.*+75101(SB), AX					
  task_chain_dispatch.go:38	0xe223e9		bb0f000000		MOVL $__major_os_version__+9(SB), BX				
  task_chain_dispatch.go:38	0xe223ee		31c9			XORL CX, CX							
  task_chain_dispatch.go:38	0xe223f0		31ff			XORL DI, DI							
  task_chain_dispatch.go:38	0xe223f2		4889fe			MOVQ DI, SI							
  task_chain_dispatch.go:38	0xe223f5		e8c69f6fff		CALL fmt.Errorf(SB)						
  task_chain_dispatch.go:38	0xe223fa		31c9			XORL CX, CX							
  task_chain_dispatch.go:38	0xe223fc		31ff			XORL DI, DI							
  task_chain_dispatch.go:38	0xe223fe		4889ce			MOVQ CX, SI							
  task_chain_dispatch.go:38	0xe22401		4989c8			MOVQ CX, R8							
  task_chain_dispatch.go:38	0xe22404		4989c1			MOVQ AX, R9							
  task_chain_dispatch.go:38	0xe22407		4989da			MOVQ BX, R10							
  task_chain_dispatch.go:38	0xe2240a		31c0			XORL AX, AX							
  task_chain_dispatch.go:38	0xe2240c		4889cb			MOVQ CX, BX							
  task_chain_dispatch.go:38	0xe2240f		4881c448010000		ADDQ $.file+251(SB), SP						
  task_chain_dispatch.go:38	0xe22416		5d			POPQ BP								
  task_chain_dispatch.go:38	0xe22417		c3			RET								
  task_chain_dispatch.go:50	0xe22418		4e893c1f		MOVQ R15, 0(DI)(R11*1)						
  task_chain_dispatch.go:45	0xe2241c		4c8b9c2428010000	MOVQ 0x128(SP), R11						
  task_chain_dispatch.go:45	0xe22424		4981c3e0000000		ADDQ $.file+147(SB), R11					
  task_chain_dispatch.go:45	0xe2242b		498d4c2401		LEAQ 0x1(R12), CX						
  task_chain_dispatch.go:52	0xe22430		4889f8			MOVQ DI, AX							
  task_chain_dispatch.go:45	0xe22433		4c89da			MOVQ R11, DX							
  task_chain_dispatch.go:45	0xe22436		4c8b842460010000	MOVQ 0x160(SP), R8						
  task_chain_dispatch.go:45	0xe2243e		6690			NOPW								
  task_chain_dispatch.go:45	0xe22440		4939c8			CMPQ R8, CX							
  task_chain_dispatch.go:45	0xe22443		0f8e5e010000		JLE 0xe225a7							
  task_chain_dispatch.go:45	0xe22449		48894c2428		MOVQ CX, 0x28(SP)						
  task_chain_dispatch.go:45	0xe2244e		4889942428010000	MOVQ DX, 0x128(SP)						
  task_chain_dispatch.go:45	0xe22456		488d7c2440		LEAQ 0x40(SP), DI						
  task_chain_dispatch.go:45	0xe2245b		4889d6			MOVQ DX, SI							
  task_chain_dispatch.go:45	0xe2245e		6690			NOPW								
  task_chain_dispatch.go:45	0xe22460		48896c24f0		MOVQ BP, -0x10(SP)						
  task_chain_dispatch.go:45	0xe22465		488d6c24f0		LEAQ -0x10(SP), BP						
  task_chain_dispatch.go:45	0xe2246a		e86d6965ff		CALL 0x478ddc							
  task_chain_dispatch.go:45	0xe2246f		488b6d00		MOVQ 0(BP), BP							
  task_chain_dispatch.go:46	0xe22473		4c69c9e0000000		IMULQ $.file+147(SB), CX, R9					
  task_chain_dispatch.go:46	0xe2247a		4c894c2430		MOVQ R9, 0x30(SP)						
  task_chain_dispatch.go:46	0xe2247f		4c8b942438010000	MOVQ 0x138(SP), R10						
  task_chain_dispatch.go:46	0xe22487		4b8d3c0a		LEAQ 0(R10)(R9*1), DI						
  task_chain_dispatch.go:46	0xe2248b		833dbeb6730200		CMPL runtime.writeBarrier(SB), $0x0				
  task_chain_dispatch.go:46	0xe22492		7431			JE 0xe224c5							
  task_chain_dispatch.go:46	0xe22494		4889bc2420010000	MOVQ DI, 0x120(SP)						
  task_chain_dispatch.go:46	0xe2249c		488d05ddfc3100		LEAQ runtime.types+1429888(SB), AX				
  task_chain_dispatch.go:46	0xe224a3		4889fb			MOVQ DI, BX							
  task_chain_dispatch.go:46	0xe224a6		488d4c2440		LEAQ 0x40(SP), CX						
  task_chain_dispatch.go:46	0xe224ab		e8702a5fff		CALL runtime.wbMove(SB)						
  task_chain_dispatch.go:46	0xe224b0		488bbc2420010000	MOVQ 0x120(SP), DI						
  task_chain_dispatch.go:47	0xe224b8		4c8b4c2430		MOVQ 0x30(SP), R9						
  task_chain_dispatch.go:47	0xe224bd		4c8b942438010000	MOVQ 0x138(SP), R10						
  task_chain_dispatch.go:46	0xe224c5		488d742440		LEAQ 0x40(SP), SI						
  task_chain_dispatch.go:46	0xe224ca		48896c24f0		MOVQ BP, -0x10(SP)						
  task_chain_dispatch.go:46	0xe224cf		488d6c24f0		LEAQ -0x10(SP), BP						
  task_chain_dispatch.go:46	0xe224d4		e8036965ff		CALL 0x478ddc							
  task_chain_dispatch.go:46	0xe224d9		488b6d00		MOVQ 0(BP), BP							
  task_chain_dispatch.go:47	0xe224dd		4b8b441120		MOVQ 0x20(R9)(R10*1), AX					
  task_chain_dispatch.go:47	0xe224e2		4b8b5c1128		MOVQ 0x28(R9)(R10*1), BX					
  task_chain_dispatch.go:47	0xe224e7		e8d4046cff		CALL strings.TrimSpace(SB)					
  task_chain_dispatch.go:47	0xe224ec		4885db			TESTQ BX, BX							
  task_chain_dispatch.go:47	0xe224ef		7411			JE 0xe22502							
  task_chain_dispatch.go:50	0xe224f1		488b4c2430		MOVQ 0x30(SP), CX						
  task_chain_dispatch.go:50	0xe224f6		488b942438010000	MOVQ 0x138(SP), DX						
  task_chain_dispatch.go:50	0xe224fe		6690			NOPW								
  task_chain_dispatch.go:47	0xe22500		eb5a			JMP 0xe2255c							
  itoa.go:35			0xe22502		488b442428		MOVQ 0x28(SP), AX						
  itoa.go:35			0xe22507		bb0a000000		MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35			0xe2250c		e8afd36cff		CALL strconv.FormatInt(SB)					
  task_chain_dispatch.go:48	0xe22511		488b4c2438		MOVQ 0x38(SP), CX						
  task_chain_dispatch.go:48	0xe22516		4889c7			MOVQ AX, DI							
  task_chain_dispatch.go:48	0xe22519		4889de			MOVQ BX, SI							
  task_chain_dispatch.go:48	0xe2251c		31c0			XORL AX, AX							
  task_chain_dispatch.go:48	0xe2251e		488b9c2440010000	MOVQ 0x140(SP), BX						
  task_chain_dispatch.go:48	0xe22526		e8d52e63ff		CALL runtime.concatstring2(SB)					
  task_chain_dispatch.go:48	0xe2252b		488b4c2430		MOVQ 0x30(SP), CX						
  task_chain_dispatch.go:48	0xe22530		488b942438010000	MOVQ 0x138(SP), DX						
  task_chain_dispatch.go:48	0xe22538		48895c0a28		MOVQ BX, 0x28(DX)(CX*1)						
  task_chain_dispatch.go:48	0xe2253d		833d0cb6730200		CMPL runtime.writeBarrier(SB), $0x0				
  task_chain_dispatch.go:48	0xe22544		7411			JE 0xe22557							
  task_chain_dispatch.go:48	0xe22546		e8f55e65ff		CALL runtime.gcWriteBarrier2(SB)				
  task_chain_dispatch.go:48	0xe2254b		498903			MOVQ AX, 0(R11)							
  task_chain_dispatch.go:48	0xe2254e		4c8b640a20		MOVQ 0x20(DX)(CX*1), R12					
  task_chain_dispatch.go:48	0xe22553		4d896308		MOVQ R12, 0x8(R11)						
  task_chain_dispatch.go:48	0xe22557		4889440a20		MOVQ AX, 0x20(DX)(CX*1)						
  task_chain_dispatch.go:50	0xe2255c		4c8b5c2428		MOVQ 0x28(SP), R11						
  task_chain_dispatch.go:50	0xe22561		4d89dc			MOVQ R11, R12							
  task_chain_dispatch.go:50	0xe22564		49c1e304		SHLQ $__subsystem__+1(SB), R11					
  task_chain_dispatch.go:50	0xe22568		4c8b6c1128		MOVQ 0x28(CX)(DX*1), R13					
  task_chain_dispatch.go:50	0xe2256d		4c8b7c1120		MOVQ 0x20(CX)(DX*1), R15					
  task_chain_dispatch.go:50	0xe22572		488bbc2430010000	MOVQ 0x130(SP), DI						
  task_chain_dispatch.go:50	0xe2257a		4e896c1f08		MOVQ R13, 0x8(DI)(R11*1)					
  task_chain_dispatch.go:50	0xe2257f		833dcab5730200		CMPL runtime.writeBarrier(SB), $0x0				
  task_chain_dispatch.go:50	0xe22586		0f848cfeffff		JE 0xe22418							
  task_chain_dispatch.go:50	0xe2258c		4c89d8			MOVQ R11, AX							
  task_chain_dispatch.go:50	0xe2258f		e8ac5e65ff		CALL runtime.gcWriteBarrier2(SB)				
  task_chain_dispatch.go:50	0xe22594		4d893b			MOVQ R15, 0(R11)						
  task_chain_dispatch.go:50	0xe22597		4c8b2c07		MOVQ 0(DI)(AX*1), R13						
  task_chain_dispatch.go:50	0xe2259b		4d896b08		MOVQ R13, 0x8(R11)						
  task_chain_dispatch.go:50	0xe2259f		4989c3			MOVQ AX, R11							
  task_chain_dispatch.go:50	0xe225a2		e971feffff		JMP 0xe22418							
  task_chain_dispatch.go:52	0xe225a7		4c89c3			MOVQ R8, BX							
  task_chain_dispatch.go:52	0xe225aa		4889d9			MOVQ BX, CX							
  task_chain_dispatch.go:52	0xe225ad		4889c7			MOVQ AX, DI							
  task_chain_dispatch.go:52	0xe225b0		4889ce			MOVQ CX, SI							
  task_chain_dispatch.go:52	0xe225b3		4531c9			XORL R9, R9							
  task_chain_dispatch.go:52	0xe225b6		4531d2			XORL R10, R10							
  task_chain_dispatch.go:52	0xe225b9		488b842438010000	MOVQ 0x138(SP), AX						
  task_chain_dispatch.go:52	0xe225c1		4881c448010000		ADDQ $.file+251(SB), SP						
  task_chain_dispatch.go:52	0xe225c8		5d			POPQ BP								
  task_chain_dispatch.go:52	0xe225c9		c3			RET								
  task_chain_dispatch.go:36	0xe225ca		4889442408		MOVQ AX, 0x8(SP)						
  task_chain_dispatch.go:36	0xe225cf		48895c2410		MOVQ BX, 0x10(SP)						
  task_chain_dispatch.go:36	0xe225d4		48894c2418		MOVQ CX, 0x18(SP)						
  task_chain_dispatch.go:36	0xe225d9		48897c2420		MOVQ DI, 0x20(SP)						
  task_chain_dispatch.go:36	0xe225de		4889742428		MOVQ SI, 0x28(SP)						
  task_chain_dispatch.go:36	0xe225e3		e8f83e65ff		CALL runtime.morestack_noctxt.abi0(SB)				
  task_chain_dispatch.go:36	0xe225e8		488b442408		MOVQ 0x8(SP), AX						
  task_chain_dispatch.go:36	0xe225ed		488b5c2410		MOVQ 0x10(SP), BX						
  task_chain_dispatch.go:36	0xe225f2		488b4c2418		MOVQ 0x18(SP), CX						
  task_chain_dispatch.go:36	0xe225f7		488b7c2420		MOVQ 0x20(SP), DI						
  task_chain_dispatch.go:36	0xe225fc		488b742428		MOVQ 0x28(SP), SI						
  task_chain_dispatch.go:36	0xe22601		e91afdffff		JMP CAS-Backend/pkg/agvcontrol.AssignForkliftTaskIDs(SB)	
  :-1				0xe22606		cc			INT $__subsystem__(SB)						
  :-1				0xe22607		cc			INT $__subsystem__(SB)						
  :-1				0xe22608		cc			INT $__subsystem__(SB)						
  :-1				0xe22609		cc			INT $__subsystem__(SB)						
  :-1				0xe2260a		cc			INT $__subsystem__(SB)						
  :-1				0xe2260b		cc			INT $__subsystem__(SB)						
  :-1				0xe2260c		cc			INT $__subsystem__(SB)						
  :-1				0xe2260d		cc			INT $__subsystem__(SB)						
  :-1				0xe2260e		cc			INT $__subsystem__(SB)						
  :-1				0xe2260f		cc			INT $__subsystem__(SB)						
  :-1				0xe22610		cc			INT $__subsystem__(SB)						
  :-1				0xe22611		cc			INT $__subsystem__(SB)						
  :-1				0xe22612		cc			INT $__subsystem__(SB)						
  :-1				0xe22613		cc			INT $__subsystem__(SB)						
  :-1				0xe22614		cc			INT $__subsystem__(SB)						
  :-1				0xe22615		cc			INT $__subsystem__(SB)						
  :-1				0xe22616		cc			INT $__subsystem__(SB)						
  :-1				0xe22617		cc			INT $__subsystem__(SB)						
  :-1				0xe22618		cc			INT $__subsystem__(SB)						
  :-1				0xe22619		cc			INT $__subsystem__(SB)						
  :-1				0xe2261a		cc			INT $__subsystem__(SB)						
  :-1				0xe2261b		cc			INT $__subsystem__(SB)						
  :-1				0xe2261c		cc			INT $__subsystem__(SB)						
  :-1				0xe2261d		cc			INT $__subsystem__(SB)						
  :-1				0xe2261e		cc			INT $__subsystem__(SB)						
  :-1				0xe2261f		cc			INT $__subsystem__(SB)						

