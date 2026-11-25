TEXT CAS-Backend/pkg/agvcontrol.ParseCurrentLock(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/batch_data.go
  batch_data.go:38	0xe12900		493b6610		CMPQ SP, 0x10(R14)						
  batch_data.go:38	0xe12904		0f8606010000		JBE 0xe12a10							
  batch_data.go:38	0xe1290a		55			PUSHQ BP							
  batch_data.go:38	0xe1290b		4889e5			MOVQ SP, BP							
  batch_data.go:38	0xe1290e		4883ec20		SUBQ $__major_os_version__+26(SB), SP				
  batch_data.go:38	0xe12912		4889442430		MOVQ AX, 0x30(SP)						
  batch_data.go:38	0xe12917		48895c2438		MOVQ BX, 0x38(SP)						
  batch_data.go:38	0xe1291c		0f1f4000		NOPL 0(AX)							
  batch_data.go:39	0xe12920		4885c0			TESTQ AX, AX							
  batch_data.go:39	0xe12923		0f84da000000		JE 0xe12a03							
  batch_data.go:42	0xe12929		0f84ca000000		JE 0xe129f9							
  batch_data.go:42	0xe1292f		8b5010			MOVL 0x10(AX), DX						
  batch_data.go:42	0xe12932		83e207			ANDL $__major_os_version__+1(SB), DX				
  batch_data.go:42	0xe12935		488d0d84100602		LEAQ CAS-Backend/pkg/agvcontrol.ParseCurrentLock.jump8(SB), CX	
  batch_data.go:42	0xe1293c		ff24d1			JMP 0(CX)(DX*8)							
  batch_data.go:51	0xe1293f		488d151aa92800		LEAQ runtime.types+754272(SB), DX				
  batch_data.go:51	0xe12946		4839d0			CMPQ AX, DX							
  batch_data.go:51	0xe12949		0f85aa000000		JNE 0xe129f9							
  batch_data.go:51	0xe1294f		488b03			MOVQ 0(BX), AX							
  batch_data.go:51	0xe12952		488b5b08		MOVQ 0x8(BX), BX						
  batch_data.go:52	0xe12956		90			NOPL								
  decode.go:201		0xe12957		b90a000000		MOVL $__major_os_version__+4(SB), CX				
  decode.go:201		0xe1295c		bf40000000		MOVL $__major_os_version__+58(SB), DI				
  decode.go:201		0xe12961		e89a846dff		CALL strconv.ParseInt(SB)					
  batch_data.go:53	0xe12966		4885db			TESTQ BX, BX							
  batch_data.go:53	0xe12969		740a			JE 0xe12975							
  batch_data.go:54	0xe1296b		31c0			XORL AX, AX							
  batch_data.go:54	0xe1296d		31db			XORL BX, BX							
  batch_data.go:54	0xe1296f		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  batch_data.go:54	0xe12973		5d			POPQ BP								
  batch_data.go:54	0xe12974		c3			RET								
  batch_data.go:56	0xe12975		bb01000000		MOVL $__minor_os_version__(SB), BX				
  batch_data.go:56	0xe1297a		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  batch_data.go:56	0xe1297e		5d			POPQ BP								
  batch_data.go:56	0xe1297f		90			NOPL								
  batch_data.go:56	0xe12980		c3			RET								
  batch_data.go:47	0xe12981		488d0dd8012300		LEAQ runtime.types+383840(SB), CX				
  batch_data.go:47	0xe12988		4839c8			CMPQ AX, CX							
  batch_data.go:47	0xe1298b		756c			JNE 0xe129f9							
  batch_data.go:47	0xe1298d		488b03			MOVQ 0(BX), AX							
  batch_data.go:48	0xe12990		bb01000000		MOVL $__minor_os_version__(SB), BX				
  batch_data.go:48	0xe12995		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  batch_data.go:48	0xe12999		5d			POPQ BP								
  batch_data.go:48	0xe1299a		c3			RET								
  batch_data.go:49	0xe1299b		488d0d3e012300		LEAQ runtime.types+383712(SB), CX				
  batch_data.go:49	0xe129a2		4839c8			CMPQ AX, CX							
  batch_data.go:49	0xe129a5		7552			JNE 0xe129f9							
  batch_data.go:49	0xe129a7		488b03			MOVQ 0(BX), AX							
  batch_data.go:50	0xe129aa		bb01000000		MOVL $__minor_os_version__(SB), BX				
  batch_data.go:50	0xe129af		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  batch_data.go:50	0xe129b3		5d			POPQ BP								
  batch_data.go:50	0xe129b4		c3			RET								
  batch_data.go:43	0xe129b5		488d0d24032300		LEAQ runtime.types+384224(SB), CX				
  batch_data.go:43	0xe129bc		0f1f4000		NOPL 0(AX)							
  batch_data.go:43	0xe129c0		4839c8			CMPQ AX, CX							
  batch_data.go:43	0xe129c3		7534			JNE 0xe129f9							
  batch_data.go:43	0xe129c5		f20f1003		MOVSD_XMM 0(BX), X0						
  batch_data.go:44	0xe129c9		f2480f2cc0		CVTTSD2SIQ X0, AX						
  batch_data.go:44	0xe129ce		bb01000000		MOVL $__minor_os_version__(SB), BX				
  batch_data.go:44	0xe129d3		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  batch_data.go:44	0xe129d7		5d			POPQ BP								
  batch_data.go:44	0xe129d8		c3			RET								
  batch_data.go:45	0xe129d9		488d0dc0022300		LEAQ runtime.types+384160(SB), CX				
  batch_data.go:45	0xe129e0		4839c8			CMPQ AX, CX							
  batch_data.go:45	0xe129e3		7514			JNE 0xe129f9							
  batch_data.go:45	0xe129e5		f30f1003		MOVSS 0(BX), X0							
  batch_data.go:46	0xe129e9		f3480f2cc0		CVTTSS2SIQ X0, AX						
  batch_data.go:46	0xe129ee		bb01000000		MOVL $__minor_os_version__(SB), BX				
  batch_data.go:46	0xe129f3		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  batch_data.go:46	0xe129f7		5d			POPQ BP								
  batch_data.go:46	0xe129f8		c3			RET								
  batch_data.go:58	0xe129f9		31c0			XORL AX, AX							
  batch_data.go:58	0xe129fb		31db			XORL BX, BX							
  batch_data.go:58	0xe129fd		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  batch_data.go:58	0xe12a01		5d			POPQ BP								
  batch_data.go:58	0xe12a02		c3			RET								
  batch_data.go:40	0xe12a03		31c0			XORL AX, AX							
  batch_data.go:40	0xe12a05		bb01000000		MOVL $__minor_os_version__(SB), BX				
  batch_data.go:40	0xe12a0a		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  batch_data.go:40	0xe12a0e		5d			POPQ BP								
  batch_data.go:40	0xe12a0f		c3			RET								
  batch_data.go:38	0xe12a10		4889442408		MOVQ AX, 0x8(SP)						
  batch_data.go:38	0xe12a15		48895c2410		MOVQ BX, 0x10(SP)						
  batch_data.go:38	0xe12a1a		e8c13a66ff		CALL runtime.morestack_noctxt.abi0(SB)				
  batch_data.go:38	0xe12a1f		488b442408		MOVQ 0x8(SP), AX						
  batch_data.go:38	0xe12a24		488b5c2410		MOVQ 0x10(SP), BX						
  batch_data.go:38	0xe12a29		e9d2feffff		JMP CAS-Backend/pkg/agvcontrol.ParseCurrentLock(SB)		
  :-1			0xe12a2e		cc			INT $__subsystem__(SB)						
  :-1			0xe12a2f		cc			INT $__subsystem__(SB)						
  :-1			0xe12a30		cc			INT $__subsystem__(SB)						
  :-1			0xe12a31		cc			INT $__subsystem__(SB)						
  :-1			0xe12a32		cc			INT $__subsystem__(SB)						
  :-1			0xe12a33		cc			INT $__subsystem__(SB)						
  :-1			0xe12a34		cc			INT $__subsystem__(SB)						
  :-1			0xe12a35		cc			INT $__subsystem__(SB)						
  :-1			0xe12a36		cc			INT $__subsystem__(SB)						
  :-1			0xe12a37		cc			INT $__subsystem__(SB)						
  :-1			0xe12a38		cc			INT $__subsystem__(SB)						
  :-1			0xe12a39		cc			INT $__subsystem__(SB)						
  :-1			0xe12a3a		cc			INT $__subsystem__(SB)						
  :-1			0xe12a3b		cc			INT $__subsystem__(SB)						
  :-1			0xe12a3c		cc			INT $__subsystem__(SB)						
  :-1			0xe12a3d		cc			INT $__subsystem__(SB)						
  :-1			0xe12a3e		cc			INT $__subsystem__(SB)						
  :-1			0xe12a3f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/batch_data.go
  batch_data.go:69	0xe12a40		4c8da42460ffffff		LEAQ 0xffffff60(SP), R12							
  batch_data.go:69	0xe12a48		4d3b6610			CMPQ R12, 0x10(R14)								
  batch_data.go:69	0xe12a4c		0f86bf090000			JBE 0xe13411									
  batch_data.go:69	0xe12a52		55				PUSHQ BP									
  batch_data.go:69	0xe12a53		4889e5				MOVQ SP, BP									
  batch_data.go:69	0xe12a56		4881ec18010000			SUBQ $.file+203(SB), SP								
  batch_data.go:69	0xe12a5d		4889842428010000		MOVQ AX, 0x128(SP)								
  batch_data.go:69	0xe12a65		48899c2430010000		MOVQ BX, 0x130(SP)								
  batch_data.go:69	0xe12a6d		66440fd6bc2410010000		MOVQ X15, 0x110(SP)								
  batch_data.go:69	0xe12a77		c644243700			MOVB $0x0, 0x37(SP)								
  batch_data.go:69	0xe12a7c		48c784249800000000000000	MOVQ $0x0, 0x98(SP)								
  batch_data.go:69	0xe12a88		440f11bc2488000000		MOVUPS X15, 0x88(SP)								
  batch_data.go:70	0xe12a91		4885c0				TESTQ AX, AX									
  batch_data.go:70	0xe12a94		0f8461030000			JE 0xe12dfb									
  batch_data.go:70	0xe12a9a		4889842428010000		MOVQ AX, 0x128(SP)								
  batch_data.go:70	0xe12aa2		48899c2430010000		MOVQ BX, 0x130(SP)								
  batch_data.go:73	0xe12aaa		4885c9				TESTQ CX, CX									
  batch_data.go:73	0xe12aad		7516				JNE 0xe12ac5									
  batch_data.go:74	0xe12aaf		488d054a212900			LEAQ runtime.types+785408(SB), AX						
  batch_data.go:74	0xe12ab6		e8e5ec5fff			CALL runtime.newobject(SB)							
  batch_data.go:74	0xe12abb		48c70000000000			MOVQ $0x0, 0(AX)								
  batch_data.go:76	0xe12ac2		4889c1				MOVQ AX, CX									
  batch_data.go:76	0xe12ac5		488d0554442100			LEAQ runtime.types+270112(SB), AX						
  batch_data.go:76	0xe12acc		4889cb				MOVQ CX, BX									
  batch_data.go:76	0xe12acf		e8cca975ff			CALL encoding/json.Marshal(SB)							
  batch_data.go:77	0xe12ad4		4885ff				TESTQ DI, DI									
  batch_data.go:77	0xe12ad7		7476				JE 0xe12b4f									
  batch_data.go:78	0xe12ad9		440f11bc24e8000000		MOVUPS X15, 0xe8(SP)								
  batch_data.go:78	0xe12ae2		7404				JE 0xe12ae8									
  batch_data.go:78	0xe12ae4		488b7f08			MOVQ 0x8(DI), DI								
  batch_data.go:78	0xe12ae8		4889bc24e8000000		MOVQ DI, 0xe8(SP)								
  batch_data.go:78	0xe12af0		4889b424f0000000		MOVQ SI, 0xf0(SP)								
  batch_data.go:78	0xe12af8		488d053d113700			LEAQ go:string.*+112436(SB), AX							
  batch_data.go:78	0xe12aff		bb17000000			MOVL $__major_os_version__+17(SB), BX						
  batch_data.go:78	0xe12b04		488d8c24e8000000		LEAQ 0xe8(SP), CX								
  batch_data.go:78	0xe12b0c		bf01000000			MOVL $__minor_os_version__(SB), DI						
  batch_data.go:78	0xe12b11		4889fe				MOVQ DI, SI									
  batch_data.go:78	0xe12b14		e8a79870ff			CALL fmt.Errorf(SB)								
  batch_data.go:78	0xe12b19		48c784249800000000000000	MOVQ $0x0, 0x98(SP)								
  batch_data.go:78	0xe12b25		4889842488000000		MOVQ AX, 0x88(SP)								
  batch_data.go:78	0xe12b2d		48899c2490000000		MOVQ BX, 0x90(SP)								
  batch_data.go:78	0xe12b35		488b942498000000		MOVQ 0x98(SP), DX								
  batch_data.go:78	0xe12b3d		4889d9				MOVQ BX, CX									
  batch_data.go:78	0xe12b40		4889c3				MOVQ AX, BX									
  batch_data.go:78	0xe12b43		4889d0				MOVQ DX, AX									
  batch_data.go:78	0xe12b46		4881c418010000			ADDQ $.file+203(SB), SP								
  batch_data.go:78	0xe12b4d		5d				POPQ BP										
  batch_data.go:78	0xe12b4e		c3				RET										
  batch_data.go:76	0xe12b4f		48894c2470			MOVQ CX, 0x70(SP)								
  batch_data.go:76	0xe12b54		48895c2468			MOVQ BX, 0x68(SP)								
  batch_data.go:76	0xe12b59		48898424a0000000		MOVQ AX, 0xa0(SP)								
  batch_data.go:86	0xe12b61		48c74424485a010100		MOVQ $__dll_characteristics__+32762(SB), 0x48(SP)				
  batch_data.go:86	0xe12b6a		48c74424504c040000		MOVQ $__file_alignment__+588(SB), 0x50(SP)					
  batch_data.go:84	0xe12b73		895c244c			MOVL BX, 0x4c(SP)								
  batch_data.go:88	0xe12b77		488d0582572c00			LEAQ runtime.types+996096(SB), AX						
  batch_data.go:88	0xe12b7e		6690				NOPW										
  batch_data.go:88	0xe12b80		e81bec5fff			CALL runtime.newobject(SB)							
  batch_data.go:88	0xe12b85		4889842408010000		MOVQ AX, 0x108(SP)								
  batch_data.go:89	0xe12b8d		0f10442448			MOVUPS 0x48(SP), X0								
  batch_data.go:89	0xe12b92		0f11442458			MOVUPS X0, 0x58(SP)								
  batch_data.go:89	0xe12b97		4889c3				MOVQ AX, BX									
  batch_data.go:89	0xe12b9a		488d0d9f430602			LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  batch_data.go:89	0xe12ba1		488d3df8a67402			LEAQ unicode..stmp_365(SB), DI							
  batch_data.go:89	0xe12ba8		488d3511bd2f00			LEAQ runtime.types+1218752(SB), SI						
  batch_data.go:89	0xe12baf		4c8d442458			LEAQ 0x58(SP), R8								
  batch_data.go:89	0xe12bb4		488d05a5a40502			LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  batch_data.go:89	0xe12bbb		0f1f440000			NOPL 0(AX)(AX*1)								
  batch_data.go:89	0xe12bc0		e85bf574ff			CALL encoding/binary.Write(SB)							
  batch_data.go:89	0xe12bc5		4885c0				TESTQ AX, AX									
  batch_data.go:89	0xe12bc8		7477				JE 0xe12c41									
  batch_data.go:90	0xe12bca		440f11bc24e8000000		MOVUPS X15, 0xe8(SP)								
  batch_data.go:90	0xe12bd3		7404				JE 0xe12bd9									
  batch_data.go:90	0xe12bd5		488b4008			MOVQ 0x8(AX), AX								
  batch_data.go:90	0xe12bd9		48898424e8000000		MOVQ AX, 0xe8(SP)								
  batch_data.go:90	0xe12be1		48899c24f0000000		MOVQ BX, 0xf0(SP)								
  batch_data.go:90	0xe12be9		488d0594673700			LEAQ go:string.*+134780(SB), AX							
  batch_data.go:90	0xe12bf0		bb1c000000			MOVL $__major_os_version__+22(SB), BX						
  batch_data.go:90	0xe12bf5		488d8c24e8000000		LEAQ 0xe8(SP), CX								
  batch_data.go:90	0xe12bfd		bf01000000			MOVL $__minor_os_version__(SB), DI						
  batch_data.go:90	0xe12c02		4889fe				MOVQ DI, SI									
  batch_data.go:90	0xe12c05		e8b69770ff			CALL fmt.Errorf(SB)								
  batch_data.go:90	0xe12c0a		48c784249800000000000000	MOVQ $0x0, 0x98(SP)								
  batch_data.go:90	0xe12c16		4889842488000000		MOVQ AX, 0x88(SP)								
  batch_data.go:90	0xe12c1e		48899c2490000000		MOVQ BX, 0x90(SP)								
  batch_data.go:90	0xe12c26		488b942498000000		MOVQ 0x98(SP), DX								
  batch_data.go:90	0xe12c2e		4889d9				MOVQ BX, CX									
  batch_data.go:90	0xe12c31		4889c3				MOVQ AX, BX									
  batch_data.go:90	0xe12c34		4889d0				MOVQ DX, AX									
  batch_data.go:90	0xe12c37		4881c418010000			ADDQ $.file+203(SB), SP								
  batch_data.go:90	0xe12c3e		5d				POPQ BP										
  batch_data.go:90	0xe12c3f		90				NOPL										
  batch_data.go:90	0xe12c40		c3				RET										
  batch_data.go:92	0xe12c41		488b842408010000		MOVQ 0x108(SP), AX								
  batch_data.go:92	0xe12c49		488b9c24a0000000		MOVQ 0xa0(SP), BX								
  batch_data.go:92	0xe12c51		488b4c2468			MOVQ 0x68(SP), CX								
  batch_data.go:92	0xe12c56		488b7c2470			MOVQ 0x70(SP), DI								
  batch_data.go:92	0xe12c5b		0f1f440000			NOPL 0(AX)(AX*1)								
  batch_data.go:92	0xe12c60		e8bb9871ff			CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe12c65		488b942408010000		MOVQ 0x108(SP), DX								
  buffer.go:54		0xe12c6d		488b4a08			MOVQ 0x8(DX), CX								
  buffer.go:54		0xe12c71		488b4218			MOVQ 0x18(DX), AX								
  buffer.go:54		0xe12c75		4839c1				CMPQ CX, AX									
  buffer.go:54		0xe12c78		0f8267070000			JB 0xe133e5									
  batch_data.go:93	0xe12c7e		488bb42428010000		MOVQ 0x128(SP), SI								
  batch_data.go:93	0xe12c86		4c8b4650			MOVQ 0x50(SI), R8								
  buffer.go:54		0xe12c8a		4c8b0a				MOVQ 0(DX), R9									
  buffer.go:54		0xe12c8d		488b7a10			MOVQ 0x10(DX), DI								
  buffer.go:54		0xe12c91		4829c7				SUBQ AX, DI									
  buffer.go:54		0xe12c94		4829c1				SUBQ AX, CX									
  buffer.go:54		0xe12c97		4889fa				MOVQ DI, DX									
  buffer.go:54		0xe12c9a		48f7da				NEGQ DX										
  buffer.go:54		0xe12c9d		48c1fa3f			SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe12ca1		4821d0				ANDQ DX, AX									
  buffer.go:54		0xe12ca4		498d1c01			LEAQ 0(R9)(AX*1), BX								
  batch_data.go:93	0xe12ca8		488b842430010000		MOVQ 0x130(SP), AX								
  batch_data.go:93	0xe12cb0		41ffd0				CALL R8										
  batch_data.go:93	0xe12cb3		4885db				TESTQ BX, BX									
  batch_data.go:93	0xe12cb6		0f85c9000000			JNE 0xe12d85									
  batch_data.go:93	0xe12cbc		0f1f4000			NOPL 0(AX)									
  batch_data.go:97	0xe12cc0		e8dbb369ff			CALL time.Now(SB)								
  batch_data.go:97	0xe12cc5		48bf00f2052a01000000		MOVQ $0x12a05f200, DI								
  batch_data.go:97	0xe12ccf		e88c1869ff			CALL time.Time.Add(SB)								
  batch_data.go:97	0xe12cd4		488b942428010000		MOVQ 0x128(SP), DX								
  batch_data.go:97	0xe12cdc		488b7240			MOVQ 0x40(DX), SI								
  batch_data.go:97	0xe12ce0		4889cf				MOVQ CX, DI									
  batch_data.go:97	0xe12ce3		4889d9				MOVQ BX, CX									
  batch_data.go:97	0xe12ce6		4889c3				MOVQ AX, BX									
  batch_data.go:97	0xe12ce9		488b842430010000		MOVQ 0x130(SP), AX								
  batch_data.go:97	0xe12cf1		ffd6				CALL SI										
  batch_data.go:98	0xe12cf3		488d0546070000			LEAQ CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1.deferwrap1(SB), AX		
  batch_data.go:98	0xe12cfa		48898424b0000000		MOVQ AX, 0xb0(SP)								
  batch_data.go:98	0xe12d02		488b842428010000		MOVQ 0x128(SP), AX								
  batch_data.go:98	0xe12d0a		48898424b8000000		MOVQ AX, 0xb8(SP)								
  batch_data.go:98	0xe12d12		488b8c2430010000		MOVQ 0x130(SP), CX								
  batch_data.go:98	0xe12d1a		48898c24c0000000		MOVQ CX, 0xc0(SP)								
  batch_data.go:98	0xe12d22		488d9424b0000000		LEAQ 0xb0(SP), DX								
  batch_data.go:98	0xe12d2a		4889942410010000		MOVQ DX, 0x110(SP)								
  batch_data.go:98	0xe12d32		c644243701			MOVB $__minor_os_version__(SB), 0x37(SP)					
  batch_data.go:100	0xe12d37		bb10000000			MOVL $__major_os_version__+10(SB), BX						
  batch_data.go:100	0xe12d3c		488d055dfc2200			LEAQ runtime.types+383392(SB), AX						
  batch_data.go:100	0xe12d43		4889d9				MOVQ BX, CX									
  batch_data.go:100	0xe12d46		e815ee65ff			CALL runtime.makeslice(SB)							
  batch_data.go:100	0xe12d4b		48898424f8000000		MOVQ AX, 0xf8(SP)								
  batch_data.go:70	0xe12d53		488b8c2428010000		MOVQ 0x128(SP), CX								
  batch_data.go:70	0xe12d5b		0f1f440000			NOPL 0(AX)(AX*1)								
  batch_data.go:70	0xe12d60		4885c9				TESTQ CX, CX									
  batch_data.go:101	0xe12d63		0f84e0000000			JE 0xe12e49									
  batch_data.go:101	0xe12d69		488b5908			MOVQ 0x8(CX), BX								
  batch_data.go:101	0xe12d6d		488b15dc881a00			MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.0(SB), DX				
  batch_data.go:101	0xe12d74		4c8b0a				MOVQ 0(DX), R9									
  batch_data.go:101	0xe12d77		448b5110			MOVL 0x10(CX), R10								
  batch_data.go:101	0xe12d7b		0f1f440000			NOPL 0(AX)(AX*1)								
  batch_data.go:101	0xe12d80		e919060000			JMP 0xe1339e									
  batch_data.go:94	0xe12d85		440f11bc24e8000000		MOVUPS X15, 0xe8(SP)								
  batch_data.go:94	0xe12d8e		7404				JE 0xe12d94									
  batch_data.go:94	0xe12d90		488b5b08			MOVQ 0x8(BX), BX								
  batch_data.go:94	0xe12d94		48899c24e8000000		MOVQ BX, 0xe8(SP)								
  batch_data.go:94	0xe12d9c		48898c24f0000000		MOVQ CX, 0xf0(SP)								
  batch_data.go:94	0xe12da4		488d0560d13700			LEAQ go:string.*+162307(SB), AX							
  batch_data.go:94	0xe12dab		bb22000000			MOVL $__major_os_version__+28(SB), BX						
  batch_data.go:94	0xe12db0		488d8c24e8000000		LEAQ 0xe8(SP), CX								
  batch_data.go:94	0xe12db8		bf01000000			MOVL $__minor_os_version__(SB), DI						
  batch_data.go:94	0xe12dbd		4889fe				MOVQ DI, SI									
  batch_data.go:94	0xe12dc0		e8fb9570ff			CALL fmt.Errorf(SB)								
  batch_data.go:94	0xe12dc5		48c784249800000000000000	MOVQ $0x0, 0x98(SP)								
  batch_data.go:94	0xe12dd1		4889842488000000		MOVQ AX, 0x88(SP)								
  batch_data.go:94	0xe12dd9		48899c2490000000		MOVQ BX, 0x90(SP)								
  batch_data.go:94	0xe12de1		488b942498000000		MOVQ 0x98(SP), DX								
  batch_data.go:94	0xe12de9		4889d9				MOVQ BX, CX									
  batch_data.go:94	0xe12dec		4889c3				MOVQ AX, BX									
  batch_data.go:94	0xe12def		4889d0				MOVQ DX, AX									
  batch_data.go:94	0xe12df2		4881c418010000			ADDQ $.file+203(SB), SP								
  batch_data.go:94	0xe12df9		5d				POPQ BP										
  batch_data.go:94	0xe12dfa		c3				RET										
  batch_data.go:71	0xe12dfb		488d0554523600			LEAQ go:string.*+64334(SB), AX							
  batch_data.go:71	0xe12e02		bb0c000000			MOVL $__major_os_version__+6(SB), BX						
  batch_data.go:71	0xe12e07		31c9				XORL CX, CX									
  batch_data.go:71	0xe12e09		31ff				XORL DI, DI									
  batch_data.go:71	0xe12e0b		4889fe				MOVQ DI, SI									
  batch_data.go:71	0xe12e0e		e8ad9570ff			CALL fmt.Errorf(SB)								
  batch_data.go:71	0xe12e13		48c784249800000000000000	MOVQ $0x0, 0x98(SP)								
  batch_data.go:71	0xe12e1f		4889842488000000		MOVQ AX, 0x88(SP)								
  batch_data.go:71	0xe12e27		48899c2490000000		MOVQ BX, 0x90(SP)								
  batch_data.go:71	0xe12e2f		488b942498000000		MOVQ 0x98(SP), DX								
  batch_data.go:71	0xe12e37		4889d9				MOVQ BX, CX									
  batch_data.go:71	0xe12e3a		4889c3				MOVQ AX, BX									
  batch_data.go:71	0xe12e3d		4889d0				MOVQ DX, AX									
  batch_data.go:71	0xe12e40		4881c418010000			ADDQ $.file+203(SB), SP								
  batch_data.go:71	0xe12e47		5d				POPQ BP										
  batch_data.go:71	0xe12e48		c3				RET										
  io.go:354		0xe12e49		488b9c2430010000		MOVQ 0x130(SP), BX								
  io.go:354		0xe12e51		bf10000000			MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe12e56		4889fe				MOVQ DI, SI									
  io.go:354		0xe12e59		4989f0				MOVQ SI, R8									
  batch_data.go:100	0xe12e5c		4889c2				MOVQ AX, DX									
  io.go:354		0xe12e5f		4889c8				MOVQ CX, AX									
  io.go:354		0xe12e62		4889d1				MOVQ DX, CX									
  io.go:354		0xe12e65		e896fd69ff			CALL io.ReadAtLeast(SB)								
  batch_data.go:101	0xe12e6a		4885db				TESTQ BX, BX									
  batch_data.go:101	0xe12e6d		0f8491000000			JE 0xe12f04									
  batch_data.go:102	0xe12e73		440f11bc24e8000000		MOVUPS X15, 0xe8(SP)								
  batch_data.go:102	0xe12e7c		7404				JE 0xe12e82									
  batch_data.go:102	0xe12e7e		488b5b08			MOVQ 0x8(BX), BX								
  batch_data.go:102	0xe12e82		48899c24e8000000		MOVQ BX, 0xe8(SP)								
  batch_data.go:102	0xe12e8a		48898c24f0000000		MOVQ CX, 0xf0(SP)								
  batch_data.go:102	0xe12e92		488d051d303800			LEAQ go:string.*+186798(SB), AX							
  batch_data.go:102	0xe12e99		bb28000000			MOVL $__major_os_version__+34(SB), BX						
  batch_data.go:102	0xe12e9e		488d8c24e8000000		LEAQ 0xe8(SP), CX								
  batch_data.go:102	0xe12ea6		bf01000000			MOVL $__minor_os_version__(SB), DI						
  batch_data.go:102	0xe12eab		4889fe				MOVQ DI, SI									
  batch_data.go:102	0xe12eae		e80d9570ff			CALL fmt.Errorf(SB)								
  batch_data.go:102	0xe12eb3		48c784249800000000000000	MOVQ $0x0, 0x98(SP)								
  batch_data.go:102	0xe12ebf		4889842488000000		MOVQ AX, 0x88(SP)								
  batch_data.go:102	0xe12ec7		48899c2490000000		MOVQ BX, 0x90(SP)								
  batch_data.go:102	0xe12ecf		c644243700			MOVB $0x0, 0x37(SP)								
  batch_data.go:102	0xe12ed4		488b942410010000		MOVQ 0x110(SP), DX								
  batch_data.go:102	0xe12edc		4c8b02				MOVQ 0(DX), R8									
  batch_data.go:102	0xe12edf		90				NOPL										
  batch_data.go:102	0xe12ee0		41ffd0				CALL R8										
  batch_data.go:102	0xe12ee3		488b9c2488000000		MOVQ 0x88(SP), BX								
  batch_data.go:102	0xe12eeb		488b842498000000		MOVQ 0x98(SP), AX								
  batch_data.go:102	0xe12ef3		488b8c2490000000		MOVQ 0x90(SP), CX								
  batch_data.go:102	0xe12efb		4881c418010000			ADDQ $.file+203(SB), SP								
  batch_data.go:102	0xe12f02		5d				POPQ BP										
  batch_data.go:102	0xe12f03		c3				RET										
  batch_data.go:104	0xe12f04		440f117c2438			MOVUPS X15, 0x38(SP)								
  reader.go:159		0xe12f0a		488d05af542c00			LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe12f11		e88ae85fff			CALL runtime.newobject(SB)							
  reader.go:159		0xe12f16		48c7400810000000		MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe12f1e		48c7401010000000		MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe12f26		833d23ac740200			CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe12f2d		750a				JNE 0xe12f39									
  reader.go:159		0xe12f2f		488b9424f8000000		MOVQ 0xf8(SP), DX								
  reader.go:159		0xe12f37		eb10				JMP 0xe12f49									
  reader.go:159		0xe12f39		e8e25466ff			CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe12f3e		488b9424f8000000		MOVQ 0xf8(SP), DX								
  reader.go:159		0xe12f46		498913				MOVQ DX, 0(R11)									
  reader.go:159		0xe12f49		488910				MOVQ DX, 0(AX)									
  reader.go:159		0xe12f4c		48c7401800000000		MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe12f54		48c74020ffffffff		MOVQ $-0x1, 0x20(AX)								
  batch_data.go:105	0xe12f5c		4889c3				MOVQ AX, BX									
  batch_data.go:105	0xe12f5f		488d0dda3f0602			LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  batch_data.go:105	0xe12f66		488d3d33a37402			LEAQ unicode..stmp_365(SB), DI							
  batch_data.go:105	0xe12f6d		488d35ac3c2100			LEAQ runtime.types+269344(SB), SI						
  batch_data.go:105	0xe12f74		4c8d442438			LEAQ 0x38(SP), R8								
  batch_data.go:105	0xe12f79		488d05609b0502			LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  batch_data.go:105	0xe12f80		e8bbe274ff			CALL encoding/binary.Read(SB)							
  batch_data.go:105	0xe12f85		4885c0				TESTQ AX, AX									
  batch_data.go:105	0xe12f88		7564				JNE 0xe12fee									
  batch_data.go:109	0xe12f8a		8b4c243c			MOVL 0x3c(SP), CX								
  batch_data.go:109	0xe12f8e		85c9				TESTL CX, CX									
  batch_data.go:109	0xe12f90		7653				JBE 0xe12fe5									
  batch_data.go:110	0xe12f92		488d0507fa2200			LEAQ runtime.types+383392(SB), AX						
  batch_data.go:110	0xe12f99		89cb				MOVL CX, BX									
  batch_data.go:110	0xe12f9b		0f1f440000			NOPL 0(AX)(AX*1)								
  batch_data.go:110	0xe12fa0		e8bbeb65ff			CALL runtime.makeslice(SB)							
  batch_data.go:110	0xe12fa5		48898424f8000000		MOVQ AX, 0xf8(SP)								
  batch_data.go:110	0xe12fad		448b44243c			MOVL 0x3c(SP), R8								
  batch_data.go:110	0xe12fb2		4c89842480000000		MOVQ R8, 0x80(SP)								
  batch_data.go:70	0xe12fba		488b942428010000		MOVQ 0x128(SP), DX								
  batch_data.go:70	0xe12fc2		4885d2				TESTQ DX, DX									
  batch_data.go:111	0xe12fc5		0f84c0020000			JE 0xe1328b									
  batch_data.go:111	0xe12fcb		488b5a08			MOVQ 0x8(DX), BX								
  batch_data.go:111	0xe12fcf		4c8b0d9a861a00			MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.1(SB), R9				
  batch_data.go:111	0xe12fd6		4d8b11				MOVQ 0(R9), R10									
  batch_data.go:111	0xe12fd9		8b5210				MOVL 0x10(DX), DX								
  batch_data.go:111	0xe12fdc		0f1f4000			NOPL 0(AX)									
  batch_data.go:111	0xe12fe0		e96e030000			JMP 0xe13353									
  batch_data.go:111	0xe12fe5		31c0				XORL AX, AX									
  batch_data.go:111	0xe12fe7		31c9				XORL CX, CX									
  batch_data.go:109	0xe12fe9		e990000000			JMP 0xe1307e									
  batch_data.go:106	0xe12fee		440f11bc24e8000000		MOVUPS X15, 0xe8(SP)								
  batch_data.go:106	0xe12ff7		7404				JE 0xe12ffd									
  batch_data.go:106	0xe12ff9		488b4008			MOVQ 0x8(AX), AX								
  batch_data.go:106	0xe12ffd		48898424e8000000		MOVQ AX, 0xe8(SP)								
  batch_data.go:106	0xe13005		48899c24f0000000		MOVQ BX, 0xf0(SP)								
  batch_data.go:106	0xe1300d		488d05ca2e3800			LEAQ go:string.*+186838(SB), AX							
  batch_data.go:106	0xe13014		bb28000000			MOVL $__major_os_version__+34(SB), BX						
  batch_data.go:106	0xe13019		488d8c24e8000000		LEAQ 0xe8(SP), CX								
  batch_data.go:106	0xe13021		bf01000000			MOVL $__minor_os_version__(SB), DI						
  batch_data.go:106	0xe13026		4889fe				MOVQ DI, SI									
  batch_data.go:106	0xe13029		e8929370ff			CALL fmt.Errorf(SB)								
  batch_data.go:106	0xe1302e		48c784249800000000000000	MOVQ $0x0, 0x98(SP)								
  batch_data.go:106	0xe1303a		4889842488000000		MOVQ AX, 0x88(SP)								
  batch_data.go:106	0xe13042		48899c2490000000		MOVQ BX, 0x90(SP)								
  batch_data.go:106	0xe1304a		c644243700			MOVB $0x0, 0x37(SP)								
  batch_data.go:106	0xe1304f		488b942410010000		MOVQ 0x110(SP), DX								
  batch_data.go:106	0xe13057		4c8b02				MOVQ 0(DX), R8									
  batch_data.go:106	0xe1305a		41ffd0				CALL R8										
  batch_data.go:106	0xe1305d		488b9c2488000000		MOVQ 0x88(SP), BX								
  batch_data.go:106	0xe13065		488b842498000000		MOVQ 0x98(SP), AX								
  batch_data.go:106	0xe1306d		488b8c2490000000		MOVQ 0x90(SP), CX								
  batch_data.go:106	0xe13075		4881c418010000			ADDQ $.file+203(SB), SP								
  batch_data.go:106	0xe1307c		5d				POPQ BP										
  batch_data.go:106	0xe1307d		c3				RET										
  batch_data.go:116	0xe1307e		4889442478			MOVQ AX, 0x78(SP)								
  batch_data.go:116	0xe13083		48898c24a8000000		MOVQ CX, 0xa8(SP)								
  batch_data.go:115	0xe1308b		488d054e6b3100			LEAQ runtime.types+1330144(SB), AX						
  batch_data.go:115	0xe13092		e809e75fff			CALL runtime.newobject(SB)							
  batch_data.go:115	0xe13097		4889842400010000		MOVQ AX, 0x100(SP)								
  batch_data.go:116	0xe1309f		488b4c2478			MOVQ 0x78(SP), CX								
  batch_data.go:116	0xe130a4		4885c9				TESTQ CX, CX									
  batch_data.go:116	0xe130a7		0f84bc000000			JE 0xe13169									
  batch_data.go:117	0xe130ad		4889cb				MOVQ CX, BX									
  batch_data.go:117	0xe130b0		488d3da93e2100			LEAQ runtime.types+270176(SB), DI						
  batch_data.go:117	0xe130b7		4889c6				MOVQ AX, SI									
  batch_data.go:117	0xe130ba		488b8424a8000000		MOVQ 0xa8(SP), AX								
  batch_data.go:117	0xe130c2		e8194475ff			CALL encoding/json.Unmarshal(SB)						
  batch_data.go:117	0xe130c7		4885c0				TESTQ AX, AX									
  batch_data.go:117	0xe130ca		0f8491000000			JE 0xe13161									
  batch_data.go:118	0xe130d0		440f11bc24e8000000		MOVUPS X15, 0xe8(SP)								
  batch_data.go:118	0xe130d9		7404				JE 0xe130df									
  batch_data.go:118	0xe130db		488b4008			MOVQ 0x8(AX), AX								
  batch_data.go:118	0xe130df		48898424e8000000		MOVQ AX, 0xe8(SP)								
  batch_data.go:118	0xe130e7		48899c24f0000000		MOVQ BX, 0xf0(SP)								
  batch_data.go:118	0xe130ef		488d0512ab3700			LEAQ go:string.*+153344(SB), AX							
  batch_data.go:118	0xe130f6		bb20000000			MOVL $__major_os_version__+26(SB), BX						
  batch_data.go:118	0xe130fb		488d8c24e8000000		LEAQ 0xe8(SP), CX								
  batch_data.go:118	0xe13103		bf01000000			MOVL $__minor_os_version__(SB), DI						
  batch_data.go:118	0xe13108		4889fe				MOVQ DI, SI									
  batch_data.go:118	0xe1310b		e8b09270ff			CALL fmt.Errorf(SB)								
  batch_data.go:118	0xe13110		48c784249800000000000000	MOVQ $0x0, 0x98(SP)								
  batch_data.go:118	0xe1311c		4889842488000000		MOVQ AX, 0x88(SP)								
  batch_data.go:118	0xe13124		48899c2490000000		MOVQ BX, 0x90(SP)								
  batch_data.go:118	0xe1312c		c644243700			MOVB $0x0, 0x37(SP)								
  batch_data.go:118	0xe13131		488b942410010000		MOVQ 0x110(SP), DX								
  batch_data.go:118	0xe13139		4c8b02				MOVQ 0(DX), R8									
  batch_data.go:118	0xe1313c		41ffd0				CALL R8										
  batch_data.go:118	0xe1313f		488b9c2488000000		MOVQ 0x88(SP), BX								
  batch_data.go:118	0xe13147		488b842498000000		MOVQ 0x98(SP), AX								
  batch_data.go:118	0xe1314f		488b8c2490000000		MOVQ 0x90(SP), CX								
  batch_data.go:118	0xe13157		4881c418010000			ADDQ $.file+203(SB), SP								
  batch_data.go:118	0xe1315e		5d				POPQ BP										
  batch_data.go:118	0xe1315f		90				NOPL										
  batch_data.go:118	0xe13160		c3				RET										
  batch_data.go:121	0xe13161		488b842400010000		MOVQ 0x100(SP), AX								
  batch_data.go:121	0xe13169		48833800			CMPQ 0(AX), $0x0								
  batch_data.go:121	0xe1316d		0f84d4000000			JE 0xe13247									
  batch_data.go:122	0xe13173		440f11bc24c8000000		MOVUPS X15, 0xc8(SP)								
  batch_data.go:122	0xe1317c		440f11bc24d8000000		MOVUPS X15, 0xd8(SP)								
  batch_data.go:122	0xe13185		488b08				MOVQ 0(AX), CX									
  batch_data.go:122	0xe13188		4889c8				MOVQ CX, AX									
  batch_data.go:122	0xe1318b		e8106f65ff			CALL runtime.convT64(SB)							
  batch_data.go:122	0xe13190		488d0dc9f92200			LEAQ runtime.types+383840(SB), CX						
  batch_data.go:122	0xe13197		48898c24c8000000		MOVQ CX, 0xc8(SP)								
  batch_data.go:122	0xe1319f		48898424d0000000		MOVQ AX, 0xd0(SP)								
  batch_data.go:122	0xe131a7		488b8c2400010000		MOVQ 0x100(SP), CX								
  batch_data.go:122	0xe131af		488b4108			MOVQ 0x8(CX), AX								
  batch_data.go:122	0xe131b3		488b5910			MOVQ 0x10(CX), BX								
  batch_data.go:122	0xe131b7		e8646f65ff			CALL runtime.convTstring(SB)							
  batch_data.go:122	0xe131bc		488d0d5df72200			LEAQ runtime.types+383264(SB), CX						
  batch_data.go:122	0xe131c3		48898c24d8000000		MOVQ CX, 0xd8(SP)								
  batch_data.go:122	0xe131cb		48898424e0000000		MOVQ AX, 0xe0(SP)								
  batch_data.go:122	0xe131d3		488d054d993800			LEAQ go:string.*+214559(SB), AX							
  batch_data.go:122	0xe131da		bb31000000			MOVL $__major_os_version__+43(SB), BX						
  batch_data.go:122	0xe131df		488d8c24c8000000		LEAQ 0xc8(SP), CX								
  batch_data.go:122	0xe131e7		bf02000000			MOVL $__minor_os_version__+1(SB), DI						
  batch_data.go:122	0xe131ec		4889fe				MOVQ DI, SI									
  batch_data.go:122	0xe131ef		e8cc9170ff			CALL fmt.Errorf(SB)								
  batch_data.go:122	0xe131f4		488b8c2400010000		MOVQ 0x100(SP), CX								
  batch_data.go:122	0xe131fc		48898c2498000000		MOVQ CX, 0x98(SP)								
  batch_data.go:122	0xe13204		4889842488000000		MOVQ AX, 0x88(SP)								
  batch_data.go:122	0xe1320c		48899c2490000000		MOVQ BX, 0x90(SP)								
  batch_data.go:122	0xe13214		c644243700			MOVB $0x0, 0x37(SP)								
  batch_data.go:122	0xe13219		488b942410010000		MOVQ 0x110(SP), DX								
  batch_data.go:122	0xe13221		488b0a				MOVQ 0(DX), CX									
  batch_data.go:122	0xe13224		ffd1				CALL CX										
  batch_data.go:122	0xe13226		488b9c2488000000		MOVQ 0x88(SP), BX								
  batch_data.go:122	0xe1322e		488b842498000000		MOVQ 0x98(SP), AX								
  batch_data.go:122	0xe13236		488b8c2490000000		MOVQ 0x90(SP), CX								
  batch_data.go:122	0xe1323e		4881c418010000			ADDQ $.file+203(SB), SP								
  batch_data.go:122	0xe13245		5d				POPQ BP										
  batch_data.go:122	0xe13246		c3				RET										
  batch_data.go:124	0xe13247		4889842498000000		MOVQ AX, 0x98(SP)								
  batch_data.go:124	0xe1324f		440f11bc2488000000		MOVUPS X15, 0x88(SP)								
  batch_data.go:124	0xe13258		c644243700			MOVB $0x0, 0x37(SP)								
  batch_data.go:124	0xe1325d		488b942410010000		MOVQ 0x110(SP), DX								
  batch_data.go:124	0xe13265		488b02				MOVQ 0(DX), AX									
  batch_data.go:124	0xe13268		ffd0				CALL AX										
  batch_data.go:124	0xe1326a		488b9c2488000000		MOVQ 0x88(SP), BX								
  batch_data.go:124	0xe13272		488b842498000000		MOVQ 0x98(SP), AX								
  batch_data.go:124	0xe1327a		488b8c2490000000		MOVQ 0x90(SP), CX								
  batch_data.go:124	0xe13282		4881c418010000			ADDQ $.file+203(SB), SP								
  batch_data.go:124	0xe13289		5d				POPQ BP										
  batch_data.go:124	0xe1328a		c3				RET										
  io.go:354		0xe1328b		488b9c2430010000		MOVQ 0x130(SP), BX								
  io.go:354		0xe13293		4889c1				MOVQ AX, CX									
  io.go:354		0xe13296		4c89c7				MOVQ R8, DI									
  io.go:354		0xe13299		4889fe				MOVQ DI, SI									
  io.go:354		0xe1329c		4889d0				MOVQ DX, AX									
  io.go:354		0xe1329f		90				NOPL										
  io.go:354		0xe132a0		e85bf969ff			CALL io.ReadAtLeast(SB)								
  batch_data.go:111	0xe132a5		4885db				TESTQ BX, BX									
  batch_data.go:111	0xe132a8		0f8490000000			JE 0xe1333e									
  batch_data.go:112	0xe132ae		440f11bc24e8000000		MOVUPS X15, 0xe8(SP)								
  batch_data.go:112	0xe132b7		7404				JE 0xe132bd									
  batch_data.go:112	0xe132b9		488b5b08			MOVQ 0x8(BX), BX								
  batch_data.go:112	0xe132bd		48899c24e8000000		MOVQ BX, 0xe8(SP)								
  batch_data.go:112	0xe132c5		48898c24f0000000		MOVQ CX, 0xf0(SP)								
  batch_data.go:112	0xe132cd		488d0572f93700			LEAQ go:string.*+173886(SB), AX							
  batch_data.go:112	0xe132d4		bb25000000			MOVL $__major_os_version__+31(SB), BX						
  batch_data.go:112	0xe132d9		488d8c24e8000000		LEAQ 0xe8(SP), CX								
  batch_data.go:112	0xe132e1		bf01000000			MOVL $__minor_os_version__(SB), DI						
  batch_data.go:112	0xe132e6		4889fe				MOVQ DI, SI									
  batch_data.go:112	0xe132e9		e8d29070ff			CALL fmt.Errorf(SB)								
  batch_data.go:112	0xe132ee		48c784249800000000000000	MOVQ $0x0, 0x98(SP)								
  batch_data.go:112	0xe132fa		4889842488000000		MOVQ AX, 0x88(SP)								
  batch_data.go:112	0xe13302		48899c2490000000		MOVQ BX, 0x90(SP)								
  batch_data.go:112	0xe1330a		c644243700			MOVB $0x0, 0x37(SP)								
  batch_data.go:112	0xe1330f		488b942410010000		MOVQ 0x110(SP), DX								
  batch_data.go:112	0xe13317		4c8b02				MOVQ 0(DX), R8									
  batch_data.go:112	0xe1331a		41ffd0				CALL R8										
  batch_data.go:112	0xe1331d		488b9c2488000000		MOVQ 0x88(SP), BX								
  batch_data.go:112	0xe13325		488b842498000000		MOVQ 0x98(SP), AX								
  batch_data.go:112	0xe1332d		488b8c2490000000		MOVQ 0x90(SP), CX								
  batch_data.go:112	0xe13335		4881c418010000			ADDQ $.file+203(SB), SP								
  batch_data.go:112	0xe1333c		5d				POPQ BP										
  batch_data.go:112	0xe1333d		c3				RET										
  batch_data.go:116	0xe1333e		488b842480000000		MOVQ 0x80(SP), AX								
  batch_data.go:116	0xe13346		488b8c24f8000000		MOVQ 0xf8(SP), CX								
  batch_data.go:115	0xe1334e		e92bfdffff			JMP 0xe1307e									
  batch_data.go:111	0xe13353		4989d3				MOVQ DX, R11									
  batch_data.go:111	0xe13356		4c21d2				ANDQ R10, DX									
  batch_data.go:111	0xe13359		48c1e204			SHLQ $__subsystem__+1(SB), DX							
  batch_data.go:111	0xe1335d		4d8b641108			MOVQ 0x8(R9)(DX*1), R12								
  batch_data.go:111	0xe13362		4939dc				CMPQ R12, BX									
  batch_data.go:111	0xe13365		742d				JE 0xe13394									
  batch_data.go:111	0xe13367		498d5301			LEAQ 0x1(R11), DX								
  batch_data.go:111	0xe1336b		4d85e4				TESTQ R12, R12									
  batch_data.go:111	0xe1336e		75e3				JNE 0xe13353									
  batch_data.go:111	0xe13370		488d05f9821a00			LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.1(SB), AX				
  batch_data.go:111	0xe13377		e864bf5fff			CALL runtime.typeAssert(SB)							
  io.go:354		0xe1337c		4c8b842480000000		MOVQ 0x80(SP), R8								
  batch_data.go:111	0xe13384		4889c2				MOVQ AX, DX									
  io.go:354		0xe13387		488b8424f8000000		MOVQ 0xf8(SP), AX								
  batch_data.go:111	0xe1338f		e9f7feffff			JMP 0xe1328b									
  batch_data.go:111	0xe13394		498b541110			MOVQ 0x10(R9)(DX*1), DX								
  batch_data.go:111	0xe13399		e9edfeffff			JMP 0xe1328b									
  batch_data.go:101	0xe1339e		4d89d3				MOVQ R10, R11									
  batch_data.go:101	0xe133a1		4d21ca				ANDQ R9, R10									
  batch_data.go:101	0xe133a4		49c1e204			SHLQ $__subsystem__+1(SB), R10							
  batch_data.go:101	0xe133a8		4e8b641208			MOVQ 0x8(DX)(R10*1), R12							
  batch_data.go:101	0xe133ad		4939dc				CMPQ R12, BX									
  batch_data.go:101	0xe133b0		7425				JE 0xe133d7									
  batch_data.go:101	0xe133b2		4d8d5301			LEAQ 0x1(R11), R10								
  batch_data.go:101	0xe133b6		4d85e4				TESTQ R12, R12									
  batch_data.go:101	0xe133b9		75e3				JNE 0xe1339e									
  batch_data.go:101	0xe133bb		488d058e821a00			LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.0(SB), AX				
  batch_data.go:101	0xe133c2		e819bf5fff			CALL runtime.typeAssert(SB)							
  batch_data.go:101	0xe133c7		4889c1				MOVQ AX, CX									
  io.go:354		0xe133ca		488b8424f8000000		MOVQ 0xf8(SP), AX								
  batch_data.go:101	0xe133d2		e972faffff			JMP 0xe12e49									
  batch_data.go:101	0xe133d7		4a8b541210			MOVQ 0x10(DX)(R10*1), DX							
  batch_data.go:101	0xe133dc		4889d1				MOVQ DX, CX									
  batch_data.go:101	0xe133df		90				NOPL										
  batch_data.go:101	0xe133e0		e964faffff			JMP 0xe12e49									
  buffer.go:54		0xe133e5		e8b65466ff			CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe133ea		90				NOPL										
  buffer.go:54		0xe133eb		e8906762ff			CALL runtime.deferreturn(SB)							
  buffer.go:54		0xe133f0		488b842498000000		MOVQ 0x98(SP), AX								
  buffer.go:54		0xe133f8		488b9c2488000000		MOVQ 0x88(SP), BX								
  buffer.go:54		0xe13400		488b8c2490000000		MOVQ 0x90(SP), CX								
  buffer.go:54		0xe13408		4881c418010000			ADDQ $.file+203(SB), SP								
  buffer.go:54		0xe1340f		5d				POPQ BP										
  buffer.go:54		0xe13410		c3				RET										
  batch_data.go:69	0xe13411		4889442408			MOVQ AX, 0x8(SP)								
  batch_data.go:69	0xe13416		48895c2410			MOVQ BX, 0x10(SP)								
  batch_data.go:69	0xe1341b		48894c2418			MOVQ CX, 0x18(SP)								
  batch_data.go:69	0xe13420		e8bb3066ff			CALL runtime.morestack_noctxt.abi0(SB)						
  batch_data.go:69	0xe13425		488b442408			MOVQ 0x8(SP), AX								
  batch_data.go:69	0xe1342a		488b5c2410			MOVQ 0x10(SP), BX								
  batch_data.go:69	0xe1342f		488b4c2418			MOVQ 0x18(SP), CX								
  batch_data.go:69	0xe13434		e907f6ffff			JMP CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1(SB)				
  :-1			0xe13439		cc				INT $__subsystem__(SB)								
  :-1			0xe1343a		cc				INT $__subsystem__(SB)								
  :-1			0xe1343b		cc				INT $__subsystem__(SB)								
  :-1			0xe1343c		cc				INT $__subsystem__(SB)								
  :-1			0xe1343d		cc				INT $__subsystem__(SB)								
  :-1			0xe1343e		cc				INT $__subsystem__(SB)								
  :-1			0xe1343f		cc				INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/batch_data.go
  batch_data.go:98	0xe13440		493b6610		CMPQ SP, 0x10(R14)							
  batch_data.go:98	0xe13444		7625			JBE 0xe1346b								
  batch_data.go:98	0xe13446		55			PUSHQ BP								
  batch_data.go:98	0xe13447		4889e5			MOVQ SP, BP								
  batch_data.go:98	0xe1344a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  batch_data.go:98	0xe1344e		4d8b6620		MOVQ 0x20(R14), R12							
  batch_data.go:98	0xe13452		4d85e4			TESTQ R12, R12								
  batch_data.go:98	0xe13455		751b			JNE 0xe13472								
  batch_data.go:98	0xe13457		488b4208		MOVQ 0x8(DX), AX							
  batch_data.go:98	0xe1345b		488b5a10		MOVQ 0x10(DX), BX							
  batch_data.go:98	0xe1345f		90			NOPL									
  batch_data.go:98	0xe13460		e8dbeeffff		CALL CAS-Backend/pkg/agvcontrol.ClearConnDeadlines(SB)			
  batch_data.go:98	0xe13465		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  batch_data.go:98	0xe13469		5d			POPQ BP									
  batch_data.go:98	0xe1346a		c3			RET									
  batch_data.go:98	0xe1346b		e8f02f66ff		CALL runtime.morestack.abi0(SB)						
  batch_data.go:98	0xe13470		ebce			JMP CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1.deferwrap1(SB)	
  batch_data.go:98	0xe13472		4c8d6c2420		LEAQ 0x20(SP), R13							
  batch_data.go:98	0xe13477		4d392c24		CMPQ 0(R12), R13							
  batch_data.go:98	0xe1347b		75da			JNE 0xe13457								
  batch_data.go:98	0xe1347d		49892424		MOVQ SP, 0(R12)								
  batch_data.go:98	0xe13481		ebd4			JMP 0xe13457								
  :-1			0xe13483		cc			INT $__subsystem__(SB)							
  :-1			0xe13484		cc			INT $__subsystem__(SB)							
  :-1			0xe13485		cc			INT $__subsystem__(SB)							
  :-1			0xe13486		cc			INT $__subsystem__(SB)							
  :-1			0xe13487		cc			INT $__subsystem__(SB)							
  :-1			0xe13488		cc			INT $__subsystem__(SB)							
  :-1			0xe13489		cc			INT $__subsystem__(SB)							
  :-1			0xe1348a		cc			INT $__subsystem__(SB)							
  :-1			0xe1348b		cc			INT $__subsystem__(SB)							
  :-1			0xe1348c		cc			INT $__subsystem__(SB)							
  :-1			0xe1348d		cc			INT $__subsystem__(SB)							
  :-1			0xe1348e		cc			INT $__subsystem__(SB)							
  :-1			0xe1348f		cc			INT $__subsystem__(SB)							
  :-1			0xe13490		cc			INT $__subsystem__(SB)							
  :-1			0xe13491		cc			INT $__subsystem__(SB)							
  :-1			0xe13492		cc			INT $__subsystem__(SB)							
  :-1			0xe13493		cc			INT $__subsystem__(SB)							
  :-1			0xe13494		cc			INT $__subsystem__(SB)							
  :-1			0xe13495		cc			INT $__subsystem__(SB)							
  :-1			0xe13496		cc			INT $__subsystem__(SB)							
  :-1			0xe13497		cc			INT $__subsystem__(SB)							
  :-1			0xe13498		cc			INT $__subsystem__(SB)							
  :-1			0xe13499		cc			INT $__subsystem__(SB)							
  :-1			0xe1349a		cc			INT $__subsystem__(SB)							
  :-1			0xe1349b		cc			INT $__subsystem__(SB)							
  :-1			0xe1349c		cc			INT $__subsystem__(SB)							
  :-1			0xe1349d		cc			INT $__subsystem__(SB)							
  :-1			0xe1349e		cc			INT $__subsystem__(SB)							
  :-1			0xe1349f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1ForSchedule(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/batch_data.go
  batch_data.go:128	0xe134a0		493b6610		CMPQ SP, 0x10(R14)							
  batch_data.go:128	0xe134a4		0f8624010000		JBE 0xe135ce								
  batch_data.go:128	0xe134aa		55			PUSHQ BP								
  batch_data.go:128	0xe134ab		4889e5			MOVQ SP, BP								
  batch_data.go:128	0xe134ae		4883ec20		SUBQ $__major_os_version__+26(SB), SP					
  batch_data.go:129	0xe134b2		4889442430		MOVQ AX, 0x30(SP)							
  batch_data.go:129	0xe134b7		48895c2438		MOVQ BX, 0x38(SP)							
  batch_data.go:129	0xe134bc		488d053d172900		LEAQ runtime.types+785408(SB), AX					
  batch_data.go:129	0xe134c3		e8d8e25fff		CALL runtime.newobject(SB)						
  batch_data.go:129	0xe134c8		4889442418		MOVQ AX, 0x18(SP)							
  batch_data.go:130	0xe134cd		488d054c292400		LEAQ runtime.types+462368(SB), AX					
  batch_data.go:130	0xe134d4		e8c7e25fff		CALL runtime.newobject(SB)						
  batch_data.go:131	0xe134d9		48c740080c000000	MOVQ $__major_os_version__+6(SB), 0x8(AX)				
  batch_data.go:131	0xe134e1		488d0d7a4b3600		LEAQ go:string.*+64346(SB), CX						
  batch_data.go:131	0xe134e8		488908			MOVQ CX, 0(AX)								
  batch_data.go:132	0xe134eb		48c7401801000000	MOVQ $__minor_os_version__(SB), 0x18(AX)				
  batch_data.go:132	0xe134f3		488d0d13503500		LEAQ go:string.*+5(SB), CX						
  batch_data.go:132	0xe134fa		48894810		MOVQ CX, 0x10(AX)							
  batch_data.go:132	0xe134fe		48c7402801000000	MOVQ $__minor_os_version__(SB), 0x28(AX)				
  batch_data.go:132	0xe13506		488d0d1b1b0502		LEAQ runtime.gcbits.*+1384(SB), CX					
  batch_data.go:132	0xe1350d		48894820		MOVQ CX, 0x20(AX)							
  batch_data.go:132	0xe13511		48c740380f000000	MOVQ $__major_os_version__+9(SB), 0x38(AX)				
  batch_data.go:132	0xe13519		488d0d36753600		LEAQ go:string.*+75086(SB), CX						
  batch_data.go:132	0xe13520		48894830		MOVQ CX, 0x30(AX)							
  batch_data.go:132	0xe13524		48c740480d000000	MOVQ $__major_os_version__+7(SB), 0x48(AX)				
  batch_data.go:132	0xe1352c		488d0d1b5a3600		LEAQ go:string.*+68166(SB), CX						
  batch_data.go:132	0xe13533		48894840		MOVQ CX, 0x40(AX)							
  batch_data.go:133	0xe13537		48c7405807000000	MOVQ $__major_os_version__+1(SB), 0x58(AX)				
  batch_data.go:133	0xe1353f		488d0deaf73500		LEAQ go:string.*+43048(SB), CX						
  batch_data.go:133	0xe13546		48894850		MOVQ CX, 0x50(AX)							
  batch_data.go:133	0xe1354a		48c7406809000000	MOVQ $__major_os_version__+3(SB), 0x68(AX)				
  batch_data.go:133	0xe13552		488d0d481f3600		LEAQ go:string.*+53145(SB), CX						
  batch_data.go:133	0xe13559		48894860		MOVQ CX, 0x60(AX)							
  batch_data.go:133	0xe1355d		48c7407808000000	MOVQ $__major_os_version__+2(SB), 0x78(AX)				
  batch_data.go:133	0xe13565		488d0d0f0e3600		LEAQ go:string.*+48755(SB), CX						
  batch_data.go:133	0xe1356c		48894870		MOVQ CX, 0x70(AX)							
  batch_data.go:133	0xe13570		48c780880000000a000000	MOVQ $__major_os_version__+4(SB), 0x88(AX)				
  batch_data.go:133	0xe1357b		488d0dfc2d3600		LEAQ go:string.*+56950(SB), CX						
  batch_data.go:133	0xe13582		48898880000000		MOVQ CX, 0x80(AX)							
  batch_data.go:130	0xe13589		488b4c2418		MOVQ 0x18(SP), CX							
  batch_data.go:130	0xe1358e		48c7410809000000	MOVQ $__major_os_version__+3(SB), 0x8(CX)				
  batch_data.go:130	0xe13596		48c7411009000000	MOVQ $__major_os_version__+3(SB), 0x10(CX)				
  batch_data.go:130	0xe1359e		833daba5740200		CMPL runtime.writeBarrier(SB), $0x0					
  batch_data.go:130	0xe135a5		740f			JE 0xe135b6								
  batch_data.go:130	0xe135a7		e8944e66ff		CALL runtime.gcWriteBarrier2(SB)					
  batch_data.go:130	0xe135ac		498903			MOVQ AX, 0(R11)								
  batch_data.go:130	0xe135af		488b11			MOVQ 0(CX), DX								
  batch_data.go:130	0xe135b2		49895308		MOVQ DX, 0x8(R11)							
  batch_data.go:130	0xe135b6		488901			MOVQ AX, 0(CX)								
  batch_data.go:129	0xe135b9		488b442430		MOVQ 0x30(SP), AX							
  batch_data.go:129	0xe135be		488b5c2438		MOVQ 0x38(SP), BX							
  batch_data.go:129	0xe135c3		e878f4ffff		CALL CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1(SB)		
  batch_data.go:129	0xe135c8		4883c420		ADDQ $__major_os_version__+26(SB), SP					
  batch_data.go:129	0xe135cc		5d			POPQ BP									
  batch_data.go:129	0xe135cd		c3			RET									
  batch_data.go:128	0xe135ce		4889442408		MOVQ AX, 0x8(SP)							
  batch_data.go:128	0xe135d3		48895c2410		MOVQ BX, 0x10(SP)							
  batch_data.go:128	0xe135d8		e8032f66ff		CALL runtime.morestack_noctxt.abi0(SB)					
  batch_data.go:128	0xe135dd		488b442408		MOVQ 0x8(SP), AX							
  batch_data.go:128	0xe135e2		488b5c2410		MOVQ 0x10(SP), BX							
  batch_data.go:128	0xe135e7		e9b4feffff		JMP CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1ForSchedule(SB)	
  :-1			0xe135ec		cc			INT $__subsystem__(SB)							
  :-1			0xe135ed		cc			INT $__subsystem__(SB)							
  :-1			0xe135ee		cc			INT $__subsystem__(SB)							
  :-1			0xe135ef		cc			INT $__subsystem__(SB)							
  :-1			0xe135f0		cc			INT $__subsystem__(SB)							
  :-1			0xe135f1		cc			INT $__subsystem__(SB)							
  :-1			0xe135f2		cc			INT $__subsystem__(SB)							
  :-1			0xe135f3		cc			INT $__subsystem__(SB)							
  :-1			0xe135f4		cc			INT $__subsystem__(SB)							
  :-1			0xe135f5		cc			INT $__subsystem__(SB)							
  :-1			0xe135f6		cc			INT $__subsystem__(SB)							
  :-1			0xe135f7		cc			INT $__subsystem__(SB)							
  :-1			0xe135f8		cc			INT $__subsystem__(SB)							
  :-1			0xe135f9		cc			INT $__subsystem__(SB)							
  :-1			0xe135fa		cc			INT $__subsystem__(SB)							
  :-1			0xe135fb		cc			INT $__subsystem__(SB)							
  :-1			0xe135fc		cc			INT $__subsystem__(SB)							
  :-1			0xe135fd		cc			INT $__subsystem__(SB)							
  :-1			0xe135fe		cc			INT $__subsystem__(SB)							
  :-1			0xe135ff		cc			INT $__subsystem__(SB)							

