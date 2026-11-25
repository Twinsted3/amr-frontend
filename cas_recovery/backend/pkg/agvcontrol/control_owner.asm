TEXT CAS-Backend/pkg/agvcontrol.ControlOwnerAllowsManualDispatch(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/control_owner.go
  control_owner.go:47	0xe13800		493b6610		CMPQ SP, 0x10(R14)							
  control_owner.go:47	0xe13804		764a			JBE 0xe13850								
  control_owner.go:47	0xe13806		55			PUSHQ BP								
  control_owner.go:47	0xe13807		4889e5			MOVQ SP, BP								
  control_owner.go:47	0xe1380a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  control_owner.go:48	0xe1380e		4885c0			TESTQ AX, AX								
  control_owner.go:48	0xe13811		7435			JE 0xe13848								
  control_owner.go:51	0xe13813		488b4828		MOVQ 0x28(AX), CX							
  control_owner.go:51	0xe13817		488b5830		MOVQ 0x30(AX), BX							
  control_owner.go:42	0xe1381b		4889c8			MOVQ CX, AX								
  control_owner.go:42	0xe1381e		6690			NOPW									
  control_owner.go:42	0xe13820		e8dbf0ffff		CALL CAS-Backend/pkg/agvcontrol.ParseCurrentLock(SB)			
  control_owner.go:42	0xe13825		84db			TESTL BL, BL								
  control_owner.go:43	0xe13827		7415			JE 0xe1383e								
  control_owner.go:43	0xe13829		4885c0			TESTQ AX, AX								
  control_owner.go:43	0xe1382c		7507			JNE 0xe13835								
  control_owner.go:43	0xe1382e		b901000000		MOVL $__minor_os_version__(SB), CX					
  control_owner.go:43	0xe13833		eb0b			JMP 0xe13840								
  control_owner.go:43	0xe13835		4883f802		CMPQ AX, $__minor_os_version__+1(SB)					
  control_owner.go:43	0xe13839		0f94c1			SETE CL									
  control_owner.go:43	0xe1383c		eb02			JMP 0xe13840								
  control_owner.go:43	0xe1383e		31c9			XORL CX, CX								
  control_owner.go:51	0xe13840		89c8			MOVL CX, AX								
  control_owner.go:51	0xe13842		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  control_owner.go:51	0xe13846		5d			POPQ BP									
  control_owner.go:51	0xe13847		c3			RET									
  control_owner.go:49	0xe13848		31c0			XORL AX, AX								
  control_owner.go:49	0xe1384a		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  control_owner.go:49	0xe1384e		5d			POPQ BP									
  control_owner.go:49	0xe1384f		c3			RET									
  control_owner.go:47	0xe13850		4889442408		MOVQ AX, 0x8(SP)							
  control_owner.go:47	0xe13855		e8862c66ff		CALL runtime.morestack_noctxt.abi0(SB)					
  control_owner.go:47	0xe1385a		488b442408		MOVQ 0x8(SP), AX							
  control_owner.go:47	0xe1385f		90			NOPL									
  control_owner.go:47	0xe13860		eb9e			JMP CAS-Backend/pkg/agvcontrol.ControlOwnerAllowsManualDispatch(SB)	
  :-1			0xe13862		cc			INT $__subsystem__(SB)							
  :-1			0xe13863		cc			INT $__subsystem__(SB)							
  :-1			0xe13864		cc			INT $__subsystem__(SB)							
  :-1			0xe13865		cc			INT $__subsystem__(SB)							
  :-1			0xe13866		cc			INT $__subsystem__(SB)							
  :-1			0xe13867		cc			INT $__subsystem__(SB)							
  :-1			0xe13868		cc			INT $__subsystem__(SB)							
  :-1			0xe13869		cc			INT $__subsystem__(SB)							
  :-1			0xe1386a		cc			INT $__subsystem__(SB)							
  :-1			0xe1386b		cc			INT $__subsystem__(SB)							
  :-1			0xe1386c		cc			INT $__subsystem__(SB)							
  :-1			0xe1386d		cc			INT $__subsystem__(SB)							
  :-1			0xe1386e		cc			INT $__subsystem__(SB)							
  :-1			0xe1386f		cc			INT $__subsystem__(SB)							
  :-1			0xe13870		cc			INT $__subsystem__(SB)							
  :-1			0xe13871		cc			INT $__subsystem__(SB)							
  :-1			0xe13872		cc			INT $__subsystem__(SB)							
  :-1			0xe13873		cc			INT $__subsystem__(SB)							
  :-1			0xe13874		cc			INT $__subsystem__(SB)							
  :-1			0xe13875		cc			INT $__subsystem__(SB)							
  :-1			0xe13876		cc			INT $__subsystem__(SB)							
  :-1			0xe13877		cc			INT $__subsystem__(SB)							
  :-1			0xe13878		cc			INT $__subsystem__(SB)							
  :-1			0xe13879		cc			INT $__subsystem__(SB)							
  :-1			0xe1387a		cc			INT $__subsystem__(SB)							
  :-1			0xe1387b		cc			INT $__subsystem__(SB)							
  :-1			0xe1387c		cc			INT $__subsystem__(SB)							
  :-1			0xe1387d		cc			INT $__subsystem__(SB)							
  :-1			0xe1387e		cc			INT $__subsystem__(SB)							
  :-1			0xe1387f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/agvcontrol.QueryControlOwner(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/control_owner.go
  control_owner.go:55	0xe13880		4c8da42478ffffff		LEAQ 0xffffff78(SP), R12							
  control_owner.go:55	0xe13888		4d3b6610			CMPQ R12, 0x10(R14)								
  control_owner.go:55	0xe1388c		0f86c9080000			JBE 0xe1415b									
  control_owner.go:55	0xe13892		55				PUSHQ BP									
  control_owner.go:55	0xe13893		4889e5				MOVQ SP, BP									
  control_owner.go:55	0xe13896		4881ec00010000			SUBQ $.file+179(SB), SP								
  control_owner.go:55	0xe1389d		4889842410010000		MOVQ AX, 0x110(SP)								
  control_owner.go:55	0xe138a5		48899c2418010000		MOVQ BX, 0x118(SP)								
  control_owner.go:55	0xe138ad		66440fd6bc24f8000000		MOVQ X15, 0xf8(SP)								
  control_owner.go:55	0xe138b7		c644243700			MOVB $0x0, 0x37(SP)								
  control_owner.go:55	0xe138bc		48c784248800000000000000	MOVQ $0x0, 0x88(SP)								
  control_owner.go:55	0xe138c8		440f117c2478			MOVUPS X15, 0x78(SP)								
  control_owner.go:56	0xe138ce		4885c0				TESTQ AX, AX									
  control_owner.go:56	0xe138d1		0f848b020000			JE 0xe13b62									
  control_owner.go:56	0xe138d7		4889842410010000		MOVQ AX, 0x110(SP)								
  control_owner.go:56	0xe138df		48899c2418010000		MOVQ BX, 0x118(SP)								
  control_owner.go:66	0xe138e7		48c74424485a010100		MOVQ $__dll_characteristics__+32762(SB), 0x48(SP)				
  control_owner.go:66	0xe138f0		48c744245024040000		MOVQ $__file_alignment__+548(SB), 0x50(SP)					
  control_owner.go:64	0xe138f9		c744244c02000000		MOVL $__minor_os_version__+1(SB), 0x4c(SP)					
  control_owner.go:68	0xe13901		488d05f8492c00			LEAQ runtime.types+996096(SB), AX						
  control_owner.go:68	0xe13908		e893de5fff			CALL runtime.newobject(SB)							
  control_owner.go:68	0xe1390d		48898424f0000000		MOVQ AX, 0xf0(SP)								
  control_owner.go:69	0xe13915		0f10442448			MOVUPS 0x48(SP), X0								
  control_owner.go:69	0xe1391a		0f11442458			MOVUPS X0, 0x58(SP)								
  control_owner.go:69	0xe1391f		4889c3				MOVQ AX, BX									
  control_owner.go:69	0xe13922		488d0d17360602			LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  control_owner.go:69	0xe13929		488d3d70997402			LEAQ unicode..stmp_365(SB), DI							
  control_owner.go:69	0xe13930		488d3589af2f00			LEAQ runtime.types+1218752(SB), SI						
  control_owner.go:69	0xe13937		4c8d442458			LEAQ 0x58(SP), R8								
  control_owner.go:69	0xe1393c		488d051d970502			LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  control_owner.go:69	0xe13943		e8d8e774ff			CALL encoding/binary.Write(SB)							
  control_owner.go:69	0xe13948		4885c0				TESTQ AX, AX									
  control_owner.go:69	0xe1394b		7474				JE 0xe139c1									
  control_owner.go:70	0xe1394d		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)								
  control_owner.go:70	0xe13956		7404				JE 0xe1395c									
  control_owner.go:70	0xe13958		488b4008			MOVQ 0x8(AX), AX								
  control_owner.go:70	0xe1395c		48898424d0000000		MOVQ AX, 0xd0(SP)								
  control_owner.go:70	0xe13964		48899c24d8000000		MOVQ BX, 0xd8(SP)								
  control_owner.go:70	0xe1396c		488d05115a3700			LEAQ go:string.*+134780(SB), AX							
  control_owner.go:70	0xe13973		bb1c000000			MOVL $__major_os_version__+22(SB), BX						
  control_owner.go:70	0xe13978		488d8c24d0000000		LEAQ 0xd0(SP), CX								
  control_owner.go:70	0xe13980		bf01000000			MOVL $__minor_os_version__(SB), DI						
  control_owner.go:70	0xe13985		4889fe				MOVQ DI, SI									
  control_owner.go:70	0xe13988		e8338a70ff			CALL fmt.Errorf(SB)								
  control_owner.go:70	0xe1398d		48c784248800000000000000	MOVQ $0x0, 0x88(SP)								
  control_owner.go:70	0xe13999		4889442478			MOVQ AX, 0x78(SP)								
  control_owner.go:70	0xe1399e		48899c2480000000		MOVQ BX, 0x80(SP)								
  control_owner.go:70	0xe139a6		488b942488000000		MOVQ 0x88(SP), DX								
  control_owner.go:70	0xe139ae		4889d9				MOVQ BX, CX									
  control_owner.go:70	0xe139b1		4889c3				MOVQ AX, BX									
  control_owner.go:70	0xe139b4		4889d0				MOVQ DX, AX									
  control_owner.go:70	0xe139b7		4881c400010000			ADDQ $.file+179(SB), SP								
  control_owner.go:70	0xe139be		5d				POPQ BP										
  control_owner.go:70	0xe139bf		90				NOPL										
  control_owner.go:70	0xe139c0		c3				RET										
  control_owner.go:72	0xe139c1		488b8424f0000000		MOVQ 0xf0(SP), AX								
  control_owner.go:72	0xe139c9		488d1da44b3500			LEAQ go:string.*+108(SB), BX							
  control_owner.go:72	0xe139d0		b902000000			MOVL $__minor_os_version__+1(SB), CX						
  control_owner.go:72	0xe139d5		4889cf				MOVQ CX, DI									
  control_owner.go:72	0xe139d8		e8438b71ff			CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe139dd		488b9424f0000000		MOVQ 0xf0(SP), DX								
  buffer.go:54		0xe139e5		488b4a08			MOVQ 0x8(DX), CX								
  buffer.go:54		0xe139e9		488b4218			MOVQ 0x18(DX), AX								
  buffer.go:54		0xe139ed		4839c1				CMPQ CX, AX									
  buffer.go:54		0xe139f0		0f823c070000			JB 0xe14132									
  control_owner.go:73	0xe139f6		488bb42410010000		MOVQ 0x110(SP), SI								
  control_owner.go:73	0xe139fe		4c8b4650			MOVQ 0x50(SI), R8								
  buffer.go:54		0xe13a02		4c8b0a				MOVQ 0(DX), R9									
  buffer.go:54		0xe13a05		488b7a10			MOVQ 0x10(DX), DI								
  buffer.go:54		0xe13a09		4829c7				SUBQ AX, DI									
  buffer.go:54		0xe13a0c		4829c1				SUBQ AX, CX									
  buffer.go:54		0xe13a0f		4889fa				MOVQ DI, DX									
  buffer.go:54		0xe13a12		48f7da				NEGQ DX										
  buffer.go:54		0xe13a15		48c1fa3f			SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe13a19		4821d0				ANDQ DX, AX									
  buffer.go:54		0xe13a1c		498d1c01			LEAQ 0(R9)(AX*1), BX								
  control_owner.go:73	0xe13a20		488b842418010000		MOVQ 0x118(SP), AX								
  control_owner.go:73	0xe13a28		41ffd0				CALL R8										
  control_owner.go:73	0xe13a2b		4885db				TESTQ BX, BX									
  control_owner.go:73	0xe13a2e		0f85bb000000			JNE 0xe13aef									
  control_owner.go:77	0xe13a34		e867a669ff			CALL time.Now(SB)								
  control_owner.go:77	0xe13a39		48bf00f2052a01000000		MOVQ $0x12a05f200, DI								
  control_owner.go:77	0xe13a43		e8180b69ff			CALL time.Time.Add(SB)								
  control_owner.go:77	0xe13a48		488b942410010000		MOVQ 0x110(SP), DX								
  control_owner.go:77	0xe13a50		488b7240			MOVQ 0x40(DX), SI								
  control_owner.go:77	0xe13a54		4889cf				MOVQ CX, DI									
  control_owner.go:77	0xe13a57		4889d9				MOVQ BX, CX									
  control_owner.go:77	0xe13a5a		4889c3				MOVQ AX, BX									
  control_owner.go:77	0xe13a5d		488b842418010000		MOVQ 0x118(SP), AX								
  control_owner.go:77	0xe13a65		ffd6				CALL SI										
  control_owner.go:78	0xe13a67		488d0512070000			LEAQ CAS-Backend/pkg/agvcontrol.QueryControlOwner.deferwrap1(SB), AX		
  control_owner.go:78	0xe13a6e		4889842498000000		MOVQ AX, 0x98(SP)								
  control_owner.go:78	0xe13a76		488b842410010000		MOVQ 0x110(SP), AX								
  control_owner.go:78	0xe13a7e		48898424a0000000		MOVQ AX, 0xa0(SP)								
  control_owner.go:78	0xe13a86		488b8c2418010000		MOVQ 0x118(SP), CX								
  control_owner.go:78	0xe13a8e		48898c24a8000000		MOVQ CX, 0xa8(SP)								
  control_owner.go:78	0xe13a96		488d942498000000		LEAQ 0x98(SP), DX								
  control_owner.go:78	0xe13a9e		48899424f8000000		MOVQ DX, 0xf8(SP)								
  control_owner.go:78	0xe13aa6		c644243701			MOVB $__minor_os_version__(SB), 0x37(SP)					
  control_owner.go:80	0xe13aab		bb10000000			MOVL $__major_os_version__+10(SB), BX						
  control_owner.go:80	0xe13ab0		488d05e9ee2200			LEAQ runtime.types+383392(SB), AX						
  control_owner.go:80	0xe13ab7		4889d9				MOVQ BX, CX									
  control_owner.go:80	0xe13aba		e8a1e065ff			CALL runtime.makeslice(SB)							
  control_owner.go:80	0xe13abf		48898424e0000000		MOVQ AX, 0xe0(SP)								
  control_owner.go:56	0xe13ac7		488b8c2410010000		MOVQ 0x110(SP), CX								
  control_owner.go:56	0xe13acf		4885c9				TESTQ CX, CX									
  control_owner.go:81	0xe13ad2		0f84d5000000			JE 0xe13bad									
  control_owner.go:81	0xe13ad8		488b5908			MOVQ 0x8(CX), BX								
  control_owner.go:81	0xe13adc		488b15ad7b1a00			MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.6(SB), DX				
  control_owner.go:81	0xe13ae3		4c8b0a				MOVQ 0(DX), R9									
  control_owner.go:81	0xe13ae6		448b5110			MOVL 0x10(CX), R10								
  control_owner.go:81	0xe13aea		e9f6050000			JMP 0xe140e5									
  control_owner.go:74	0xe13aef		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)								
  control_owner.go:74	0xe13af8		7404				JE 0xe13afe									
  control_owner.go:74	0xe13afa		488b5b08			MOVQ 0x8(BX), BX								
  control_owner.go:74	0xe13afe		48899c24d0000000		MOVQ BX, 0xd0(SP)								
  control_owner.go:74	0xe13b06		48898c24d8000000		MOVQ CX, 0xd8(SP)								
  control_owner.go:74	0xe13b0e		488d0556f13700			LEAQ go:string.*+173923(SB), AX							
  control_owner.go:74	0xe13b15		bb25000000			MOVL $__major_os_version__+31(SB), BX						
  control_owner.go:74	0xe13b1a		488d8c24d0000000		LEAQ 0xd0(SP), CX								
  control_owner.go:74	0xe13b22		bf01000000			MOVL $__minor_os_version__(SB), DI						
  control_owner.go:74	0xe13b27		4889fe				MOVQ DI, SI									
  control_owner.go:74	0xe13b2a		e8918870ff			CALL fmt.Errorf(SB)								
  control_owner.go:74	0xe13b2f		48c784248800000000000000	MOVQ $0x0, 0x88(SP)								
  control_owner.go:74	0xe13b3b		4889442478			MOVQ AX, 0x78(SP)								
  control_owner.go:74	0xe13b40		48899c2480000000		MOVQ BX, 0x80(SP)								
  control_owner.go:74	0xe13b48		488b942488000000		MOVQ 0x88(SP), DX								
  control_owner.go:74	0xe13b50		4889d9				MOVQ BX, CX									
  control_owner.go:74	0xe13b53		4889c3				MOVQ AX, BX									
  control_owner.go:74	0xe13b56		4889d0				MOVQ DX, AX									
  control_owner.go:74	0xe13b59		4881c400010000			ADDQ $.file+179(SB), SP								
  control_owner.go:74	0xe13b60		5d				POPQ BP										
  control_owner.go:74	0xe13b61		c3				RET										
  control_owner.go:57	0xe13b62		488d05ed443600			LEAQ go:string.*+64334(SB), AX							
  control_owner.go:57	0xe13b69		bb0c000000			MOVL $__major_os_version__+6(SB), BX						
  control_owner.go:57	0xe13b6e		31c9				XORL CX, CX									
  control_owner.go:57	0xe13b70		31ff				XORL DI, DI									
  control_owner.go:57	0xe13b72		4889fe				MOVQ DI, SI									
  control_owner.go:57	0xe13b75		e8468870ff			CALL fmt.Errorf(SB)								
  control_owner.go:57	0xe13b7a		48c784248800000000000000	MOVQ $0x0, 0x88(SP)								
  control_owner.go:57	0xe13b86		4889442478			MOVQ AX, 0x78(SP)								
  control_owner.go:57	0xe13b8b		48899c2480000000		MOVQ BX, 0x80(SP)								
  control_owner.go:57	0xe13b93		488b942488000000		MOVQ 0x88(SP), DX								
  control_owner.go:57	0xe13b9b		4889d9				MOVQ BX, CX									
  control_owner.go:57	0xe13b9e		4889c3				MOVQ AX, BX									
  control_owner.go:57	0xe13ba1		4889d0				MOVQ DX, AX									
  control_owner.go:57	0xe13ba4		4881c400010000			ADDQ $.file+179(SB), SP								
  control_owner.go:57	0xe13bab		5d				POPQ BP										
  control_owner.go:57	0xe13bac		c3				RET										
  io.go:354		0xe13bad		488b9c2418010000		MOVQ 0x118(SP), BX								
  io.go:354		0xe13bb5		bf10000000			MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe13bba		4889fe				MOVQ DI, SI									
  io.go:354		0xe13bbd		4989f0				MOVQ SI, R8									
  control_owner.go:80	0xe13bc0		4889c2				MOVQ AX, DX									
  io.go:354		0xe13bc3		4889c8				MOVQ CX, AX									
  io.go:354		0xe13bc6		4889d1				MOVQ DX, CX									
  io.go:354		0xe13bc9		e832f069ff			CALL io.ReadAtLeast(SB)								
  control_owner.go:81	0xe13bce		4885db				TESTQ BX, BX									
  control_owner.go:81	0xe13bd1		0f848a000000			JE 0xe13c61									
  control_owner.go:82	0xe13bd7		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)								
  control_owner.go:82	0xe13be0		7404				JE 0xe13be6									
  control_owner.go:82	0xe13be2		488b5b08			MOVQ 0x8(BX), BX								
  control_owner.go:82	0xe13be6		48899c24d0000000		MOVQ BX, 0xd0(SP)								
  control_owner.go:82	0xe13bee		48898c24d8000000		MOVQ CX, 0xd8(SP)								
  control_owner.go:82	0xe13bf6		488d0593f03700			LEAQ go:string.*+173960(SB), AX							
  control_owner.go:82	0xe13bfd		bb25000000			MOVL $__major_os_version__+31(SB), BX						
  control_owner.go:82	0xe13c02		488d8c24d0000000		LEAQ 0xd0(SP), CX								
  control_owner.go:82	0xe13c0a		bf01000000			MOVL $__minor_os_version__(SB), DI						
  control_owner.go:82	0xe13c0f		4889fe				MOVQ DI, SI									
  control_owner.go:82	0xe13c12		e8a98770ff			CALL fmt.Errorf(SB)								
  control_owner.go:82	0xe13c17		48c784248800000000000000	MOVQ $0x0, 0x88(SP)								
  control_owner.go:82	0xe13c23		4889442478			MOVQ AX, 0x78(SP)								
  control_owner.go:82	0xe13c28		48899c2480000000		MOVQ BX, 0x80(SP)								
  control_owner.go:82	0xe13c30		c644243700			MOVB $0x0, 0x37(SP)								
  control_owner.go:82	0xe13c35		488b9424f8000000		MOVQ 0xf8(SP), DX								
  control_owner.go:82	0xe13c3d		4c8b02				MOVQ 0(DX), R8									
  control_owner.go:82	0xe13c40		41ffd0				CALL R8										
  control_owner.go:82	0xe13c43		488b5c2478			MOVQ 0x78(SP), BX								
  control_owner.go:82	0xe13c48		488b842488000000		MOVQ 0x88(SP), AX								
  control_owner.go:82	0xe13c50		488b8c2480000000		MOVQ 0x80(SP), CX								
  control_owner.go:82	0xe13c58		4881c400010000			ADDQ $.file+179(SB), SP								
  control_owner.go:82	0xe13c5f		5d				POPQ BP										
  control_owner.go:82	0xe13c60		c3				RET										
  control_owner.go:84	0xe13c61		440f117c2438			MOVUPS X15, 0x38(SP)								
  reader.go:159		0xe13c67		488d0552472c00			LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe13c6e		e82ddb5fff			CALL runtime.newobject(SB)							
  reader.go:159		0xe13c73		48c7400810000000		MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe13c7b		48c7401010000000		MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe13c83		833dc69e740200			CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe13c8a		750a				JNE 0xe13c96									
  reader.go:159		0xe13c8c		488b9424e0000000		MOVQ 0xe0(SP), DX								
  reader.go:159		0xe13c94		eb10				JMP 0xe13ca6									
  reader.go:159		0xe13c96		e8854766ff			CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe13c9b		488b9424e0000000		MOVQ 0xe0(SP), DX								
  reader.go:159		0xe13ca3		498913				MOVQ DX, 0(R11)									
  reader.go:159		0xe13ca6		488910				MOVQ DX, 0(AX)									
  reader.go:159		0xe13ca9		48c7401800000000		MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe13cb1		48c74020ffffffff		MOVQ $-0x1, 0x20(AX)								
  control_owner.go:85	0xe13cb9		4889c3				MOVQ AX, BX									
  control_owner.go:85	0xe13cbc		488d0d7d320602			LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  control_owner.go:85	0xe13cc3		488d3dd6957402			LEAQ unicode..stmp_365(SB), DI							
  control_owner.go:85	0xe13cca		488d354f2f2100			LEAQ runtime.types+269344(SB), SI						
  control_owner.go:85	0xe13cd1		4c8d442438			LEAQ 0x38(SP), R8								
  control_owner.go:85	0xe13cd6		488d05038e0502			LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  control_owner.go:85	0xe13cdd		0f1f00				NOPL 0(AX)									
  control_owner.go:85	0xe13ce0		e85bd574ff			CALL encoding/binary.Read(SB)							
  control_owner.go:85	0xe13ce5		4885c0				TESTQ AX, AX									
  control_owner.go:85	0xe13ce8		755e				JNE 0xe13d48									
  control_owner.go:89	0xe13cea		8b4c243c			MOVL 0x3c(SP), CX								
  control_owner.go:89	0xe13cee		85c9				TESTL CX, CX									
  control_owner.go:89	0xe13cf0		764d				JBE 0xe13d3f									
  control_owner.go:90	0xe13cf2		488d05a7ec2200			LEAQ runtime.types+383392(SB), AX						
  control_owner.go:90	0xe13cf9		89cb				MOVL CX, BX									
  control_owner.go:90	0xe13cfb		0f1f440000			NOPL 0(AX)(AX*1)								
  control_owner.go:90	0xe13d00		e85bde65ff			CALL runtime.makeslice(SB)							
  control_owner.go:90	0xe13d05		48898424e0000000		MOVQ AX, 0xe0(SP)								
  control_owner.go:90	0xe13d0d		448b44243c			MOVL 0x3c(SP), R8								
  control_owner.go:90	0xe13d12		4c89442470			MOVQ R8, 0x70(SP)								
  control_owner.go:56	0xe13d17		488b942410010000		MOVQ 0x110(SP), DX								
  control_owner.go:56	0xe13d1f		90				NOPL										
  control_owner.go:56	0xe13d20		4885d2				TESTQ DX, DX									
  control_owner.go:91	0xe13d23		0f84b2020000			JE 0xe13fdb									
  control_owner.go:91	0xe13d29		488b5a08			MOVQ 0x8(DX), BX								
  control_owner.go:91	0xe13d2d		4c8b0d7c791a00			MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.7(SB), R9				
  control_owner.go:91	0xe13d34		4d8b11				MOVQ 0(R9), R10									
  control_owner.go:91	0xe13d37		8b5210				MOVL 0x10(DX), DX								
  control_owner.go:91	0xe13d3a		e95a030000			JMP 0xe14099									
  control_owner.go:91	0xe13d3f		31c0				XORL AX, AX									
  control_owner.go:91	0xe13d41		31c9				XORL CX, CX									
  control_owner.go:89	0xe13d43		e98a000000			JMP 0xe13dd2									
  control_owner.go:86	0xe13d48		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)								
  control_owner.go:86	0xe13d51		7404				JE 0xe13d57									
  control_owner.go:86	0xe13d53		488b4008			MOVQ 0x8(AX), AX								
  control_owner.go:86	0xe13d57		48898424d0000000		MOVQ AX, 0xd0(SP)								
  control_owner.go:86	0xe13d5f		48899c24d8000000		MOVQ BX, 0xd8(SP)								
  control_owner.go:86	0xe13d67		488d0547ef3700			LEAQ go:string.*+173997(SB), AX							
  control_owner.go:86	0xe13d6e		bb25000000			MOVL $__major_os_version__+31(SB), BX						
  control_owner.go:86	0xe13d73		488d8c24d0000000		LEAQ 0xd0(SP), CX								
  control_owner.go:86	0xe13d7b		bf01000000			MOVL $__minor_os_version__(SB), DI						
  control_owner.go:86	0xe13d80		4889fe				MOVQ DI, SI									
  control_owner.go:86	0xe13d83		e8388670ff			CALL fmt.Errorf(SB)								
  control_owner.go:86	0xe13d88		48c784248800000000000000	MOVQ $0x0, 0x88(SP)								
  control_owner.go:86	0xe13d94		4889442478			MOVQ AX, 0x78(SP)								
  control_owner.go:86	0xe13d99		48899c2480000000		MOVQ BX, 0x80(SP)								
  control_owner.go:86	0xe13da1		c644243700			MOVB $0x0, 0x37(SP)								
  control_owner.go:86	0xe13da6		488b9424f8000000		MOVQ 0xf8(SP), DX								
  control_owner.go:86	0xe13dae		4c8b02				MOVQ 0(DX), R8									
  control_owner.go:86	0xe13db1		41ffd0				CALL R8										
  control_owner.go:86	0xe13db4		488b5c2478			MOVQ 0x78(SP), BX								
  control_owner.go:86	0xe13db9		488b842488000000		MOVQ 0x88(SP), AX								
  control_owner.go:86	0xe13dc1		488b8c2480000000		MOVQ 0x80(SP), CX								
  control_owner.go:86	0xe13dc9		4881c400010000			ADDQ $.file+179(SB), SP								
  control_owner.go:86	0xe13dd0		5d				POPQ BP										
  control_owner.go:86	0xe13dd1		c3				RET										
  control_owner.go:96	0xe13dd2		4889442468			MOVQ AX, 0x68(SP)								
  control_owner.go:96	0xe13dd7		48898c2490000000		MOVQ CX, 0x90(SP)								
  control_owner.go:95	0xe13ddf		488d057a5c3100			LEAQ runtime.types+1329760(SB), AX						
  control_owner.go:95	0xe13de6		e8b5d95fff			CALL runtime.newobject(SB)							
  control_owner.go:95	0xe13deb		48898424e8000000		MOVQ AX, 0xe8(SP)								
  control_owner.go:96	0xe13df3		488b4c2468			MOVQ 0x68(SP), CX								
  control_owner.go:96	0xe13df8		0f1f840000000000		NOPL 0(AX)(AX*1)								
  control_owner.go:96	0xe13e00		4885c9				TESTQ CX, CX									
  control_owner.go:96	0xe13e03		0f84b7000000			JE 0xe13ec0									
  control_owner.go:97	0xe13e09		4889cb				MOVQ CX, BX									
  control_owner.go:97	0xe13e0c		488d3d4d302100			LEAQ runtime.types+269920(SB), DI						
  control_owner.go:97	0xe13e13		4889c6				MOVQ AX, SI									
  control_owner.go:97	0xe13e16		488b842490000000		MOVQ 0x90(SP), AX								
  control_owner.go:97	0xe13e1e		6690				NOPW										
  control_owner.go:97	0xe13e20		e8bb3675ff			CALL encoding/json.Unmarshal(SB)						
  control_owner.go:97	0xe13e25		4885c0				TESTQ AX, AX									
  control_owner.go:97	0xe13e28		0f848a000000			JE 0xe13eb8									
  control_owner.go:98	0xe13e2e		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)								
  control_owner.go:98	0xe13e37		7404				JE 0xe13e3d									
  control_owner.go:98	0xe13e39		488b4008			MOVQ 0x8(AX), AX								
  control_owner.go:98	0xe13e3d		48898424d0000000		MOVQ AX, 0xd0(SP)								
  control_owner.go:98	0xe13e45		48899c24d8000000		MOVQ BX, 0xd8(SP)								
  control_owner.go:98	0xe13e4d		488d059dce3700			LEAQ go:string.*+165865(SB), AX							
  control_owner.go:98	0xe13e54		bb23000000			MOVL $__major_os_version__+29(SB), BX						
  control_owner.go:98	0xe13e59		488d8c24d0000000		LEAQ 0xd0(SP), CX								
  control_owner.go:98	0xe13e61		bf01000000			MOVL $__minor_os_version__(SB), DI						
  control_owner.go:98	0xe13e66		4889fe				MOVQ DI, SI									
  control_owner.go:98	0xe13e69		e8528570ff			CALL fmt.Errorf(SB)								
  control_owner.go:98	0xe13e6e		48c784248800000000000000	MOVQ $0x0, 0x88(SP)								
  control_owner.go:98	0xe13e7a		4889442478			MOVQ AX, 0x78(SP)								
  control_owner.go:98	0xe13e7f		48899c2480000000		MOVQ BX, 0x80(SP)								
  control_owner.go:98	0xe13e87		c644243700			MOVB $0x0, 0x37(SP)								
  control_owner.go:98	0xe13e8c		488b9424f8000000		MOVQ 0xf8(SP), DX								
  control_owner.go:98	0xe13e94		4c8b02				MOVQ 0(DX), R8									
  control_owner.go:98	0xe13e97		41ffd0				CALL R8										
  control_owner.go:98	0xe13e9a		488b5c2478			MOVQ 0x78(SP), BX								
  control_owner.go:98	0xe13e9f		488b842488000000		MOVQ 0x88(SP), AX								
  control_owner.go:98	0xe13ea7		488b8c2480000000		MOVQ 0x80(SP), CX								
  control_owner.go:98	0xe13eaf		4881c400010000			ADDQ $.file+179(SB), SP								
  control_owner.go:98	0xe13eb6		5d				POPQ BP										
  control_owner.go:98	0xe13eb7		c3				RET										
  control_owner.go:101	0xe13eb8		488b8424e8000000		MOVQ 0xe8(SP), AX								
  control_owner.go:101	0xe13ec0		4883786000			CMPQ 0x60(AX), $0x0								
  control_owner.go:101	0xe13ec5		0f84d2000000			JE 0xe13f9d									
  control_owner.go:102	0xe13ecb		440f11bc24b0000000		MOVUPS X15, 0xb0(SP)								
  control_owner.go:102	0xe13ed4		440f11bc24c0000000		MOVUPS X15, 0xc0(SP)								
  control_owner.go:102	0xe13edd		488b4860			MOVQ 0x60(AX), CX								
  control_owner.go:102	0xe13ee1		4889c8				MOVQ CX, AX									
  control_owner.go:102	0xe13ee4		e8b76165ff			CALL runtime.convT64(SB)							
  control_owner.go:102	0xe13ee9		488d0d70ec2200			LEAQ runtime.types+383840(SB), CX						
  control_owner.go:102	0xe13ef0		48898c24b0000000		MOVQ CX, 0xb0(SP)								
  control_owner.go:102	0xe13ef8		48898424b8000000		MOVQ AX, 0xb8(SP)								
  control_owner.go:102	0xe13f00		488b8c24e8000000		MOVQ 0xe8(SP), CX								
  control_owner.go:102	0xe13f08		488b4178			MOVQ 0x78(CX), AX								
  control_owner.go:102	0xe13f0c		488b9980000000			MOVQ 0x80(CX), BX								
  control_owner.go:102	0xe13f13		e8086265ff			CALL runtime.convTstring(SB)							
  control_owner.go:102	0xe13f18		488d0d01ea2200			LEAQ runtime.types+383264(SB), CX						
  control_owner.go:102	0xe13f1f		48898c24c0000000		MOVQ CX, 0xc0(SP)								
  control_owner.go:102	0xe13f27		48898424c8000000		MOVQ AX, 0xc8(SP)								
  control_owner.go:102	0xe13f2f		488d05e4693800			LEAQ go:string.*+205842(SB), AX							
  control_owner.go:102	0xe13f36		bb2e000000			MOVL $__major_os_version__+40(SB), BX						
  control_owner.go:102	0xe13f3b		488d8c24b0000000		LEAQ 0xb0(SP), CX								
  control_owner.go:102	0xe13f43		bf02000000			MOVL $__minor_os_version__+1(SB), DI						
  control_owner.go:102	0xe13f48		4889fe				MOVQ DI, SI									
  control_owner.go:102	0xe13f4b		e8708470ff			CALL fmt.Errorf(SB)								
  control_owner.go:102	0xe13f50		488b8c24e8000000		MOVQ 0xe8(SP), CX								
  control_owner.go:102	0xe13f58		48898c2488000000		MOVQ CX, 0x88(SP)								
  control_owner.go:102	0xe13f60		4889442478			MOVQ AX, 0x78(SP)								
  control_owner.go:102	0xe13f65		48899c2480000000		MOVQ BX, 0x80(SP)								
  control_owner.go:102	0xe13f6d		c644243700			MOVB $0x0, 0x37(SP)								
  control_owner.go:102	0xe13f72		488b9424f8000000		MOVQ 0xf8(SP), DX								
  control_owner.go:102	0xe13f7a		488b0a				MOVQ 0(DX), CX									
  control_owner.go:102	0xe13f7d		ffd1				CALL CX										
  control_owner.go:102	0xe13f7f		488b5c2478			MOVQ 0x78(SP), BX								
  control_owner.go:102	0xe13f84		488b842488000000		MOVQ 0x88(SP), AX								
  control_owner.go:102	0xe13f8c		488b8c2480000000		MOVQ 0x80(SP), CX								
  control_owner.go:102	0xe13f94		4881c400010000			ADDQ $.file+179(SB), SP								
  control_owner.go:102	0xe13f9b		5d				POPQ BP										
  control_owner.go:102	0xe13f9c		c3				RET										
  control_owner.go:104	0xe13f9d		4889842488000000		MOVQ AX, 0x88(SP)								
  control_owner.go:104	0xe13fa5		440f117c2478			MOVUPS X15, 0x78(SP)								
  control_owner.go:104	0xe13fab		c644243700			MOVB $0x0, 0x37(SP)								
  control_owner.go:104	0xe13fb0		488b9424f8000000		MOVQ 0xf8(SP), DX								
  control_owner.go:104	0xe13fb8		488b02				MOVQ 0(DX), AX									
  control_owner.go:104	0xe13fbb		ffd0				CALL AX										
  control_owner.go:104	0xe13fbd		488b5c2478			MOVQ 0x78(SP), BX								
  control_owner.go:104	0xe13fc2		488b842488000000		MOVQ 0x88(SP), AX								
  control_owner.go:104	0xe13fca		488b8c2480000000		MOVQ 0x80(SP), CX								
  control_owner.go:104	0xe13fd2		4881c400010000			ADDQ $.file+179(SB), SP								
  control_owner.go:104	0xe13fd9		5d				POPQ BP										
  control_owner.go:104	0xe13fda		c3				RET										
  io.go:354		0xe13fdb		488b9c2418010000		MOVQ 0x118(SP), BX								
  io.go:354		0xe13fe3		4889c1				MOVQ AX, CX									
  io.go:354		0xe13fe6		4c89c7				MOVQ R8, DI									
  io.go:354		0xe13fe9		4889fe				MOVQ DI, SI									
  io.go:354		0xe13fec		4889d0				MOVQ DX, AX									
  io.go:354		0xe13fef		e80cec69ff			CALL io.ReadAtLeast(SB)								
  control_owner.go:91	0xe13ff4		4885db				TESTQ BX, BX									
  control_owner.go:91	0xe13ff7		0f848a000000			JE 0xe14087									
  control_owner.go:92	0xe13ffd		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)								
  control_owner.go:92	0xe14006		7404				JE 0xe1400c									
  control_owner.go:92	0xe14008		488b5b08			MOVQ 0x8(BX), BX								
  control_owner.go:92	0xe1400c		48899c24d0000000		MOVQ BX, 0xd0(SP)								
  control_owner.go:92	0xe14014		48898c24d8000000		MOVQ CX, 0xd8(SP)								
  control_owner.go:92	0xe1401c		488d050abf3700			LEAQ go:string.*+162341(SB), AX							
  control_owner.go:92	0xe14023		bb22000000			MOVL $__major_os_version__+28(SB), BX						
  control_owner.go:92	0xe14028		488d8c24d0000000		LEAQ 0xd0(SP), CX								
  control_owner.go:92	0xe14030		bf01000000			MOVL $__minor_os_version__(SB), DI						
  control_owner.go:92	0xe14035		4889fe				MOVQ DI, SI									
  control_owner.go:92	0xe14038		e8838370ff			CALL fmt.Errorf(SB)								
  control_owner.go:92	0xe1403d		48c784248800000000000000	MOVQ $0x0, 0x88(SP)								
  control_owner.go:92	0xe14049		4889442478			MOVQ AX, 0x78(SP)								
  control_owner.go:92	0xe1404e		48899c2480000000		MOVQ BX, 0x80(SP)								
  control_owner.go:92	0xe14056		c644243700			MOVB $0x0, 0x37(SP)								
  control_owner.go:92	0xe1405b		488b9424f8000000		MOVQ 0xf8(SP), DX								
  control_owner.go:92	0xe14063		4c8b02				MOVQ 0(DX), R8									
  control_owner.go:92	0xe14066		41ffd0				CALL R8										
  control_owner.go:92	0xe14069		488b5c2478			MOVQ 0x78(SP), BX								
  control_owner.go:92	0xe1406e		488b842488000000		MOVQ 0x88(SP), AX								
  control_owner.go:92	0xe14076		488b8c2480000000		MOVQ 0x80(SP), CX								
  control_owner.go:92	0xe1407e		4881c400010000			ADDQ $.file+179(SB), SP								
  control_owner.go:92	0xe14085		5d				POPQ BP										
  control_owner.go:92	0xe14086		c3				RET										
  control_owner.go:96	0xe14087		488b442470			MOVQ 0x70(SP), AX								
  control_owner.go:96	0xe1408c		488b8c24e0000000		MOVQ 0xe0(SP), CX								
  control_owner.go:95	0xe14094		e939fdffff			JMP 0xe13dd2									
  control_owner.go:91	0xe14099		4989d3				MOVQ DX, R11									
  control_owner.go:91	0xe1409c		4c21d2				ANDQ R10, DX									
  control_owner.go:91	0xe1409f		48c1e204			SHLQ $__subsystem__+1(SB), DX							
  control_owner.go:91	0xe140a3		4d8b641108			MOVQ 0x8(R9)(DX*1), R12								
  control_owner.go:91	0xe140a8		4939dc				CMPQ R12, BX									
  control_owner.go:91	0xe140ab		742d				JE 0xe140da									
  control_owner.go:91	0xe140ad		498d5301			LEAQ 0x1(R11), DX								
  control_owner.go:91	0xe140b1		4d85e4				TESTQ R12, R12									
  control_owner.go:91	0xe140b4		75e3				JNE 0xe14099									
  control_owner.go:91	0xe140b6		488d05f3751a00			LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.7(SB), AX				
  control_owner.go:91	0xe140bd		0f1f00				NOPL 0(AX)									
  control_owner.go:91	0xe140c0		e81bb25fff			CALL runtime.typeAssert(SB)							
  io.go:354		0xe140c5		4c8b442470			MOVQ 0x70(SP), R8								
  control_owner.go:91	0xe140ca		4889c2				MOVQ AX, DX									
  io.go:354		0xe140cd		488b8424e0000000		MOVQ 0xe0(SP), AX								
  control_owner.go:91	0xe140d5		e901ffffff			JMP 0xe13fdb									
  control_owner.go:91	0xe140da		498b541110			MOVQ 0x10(R9)(DX*1), DX								
  control_owner.go:91	0xe140df		90				NOPL										
  control_owner.go:91	0xe140e0		e9f6feffff			JMP 0xe13fdb									
  control_owner.go:81	0xe140e5		4d89d3				MOVQ R10, R11									
  control_owner.go:81	0xe140e8		4d21ca				ANDQ R9, R10									
  control_owner.go:81	0xe140eb		49c1e204			SHLQ $__subsystem__+1(SB), R10							
  control_owner.go:81	0xe140ef		4d8b641208			MOVQ 0x8(R10)(DX*1), R12							
  control_owner.go:81	0xe140f4		4939dc				CMPQ R12, BX									
  control_owner.go:81	0xe140f7		742c				JE 0xe14125									
  control_owner.go:81	0xe140f9		4d8d5301			LEAQ 0x1(R11), R10								
  control_owner.go:81	0xe140fd		0f1f00				NOPL 0(AX)									
  control_owner.go:81	0xe14100		4d85e4				TESTQ R12, R12									
  control_owner.go:81	0xe14103		75e0				JNE 0xe140e5									
  control_owner.go:81	0xe14105		488d0584751a00			LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.6(SB), AX				
  control_owner.go:81	0xe1410c		e8cfb15fff			CALL runtime.typeAssert(SB)							
  control_owner.go:81	0xe14111		4889c1				MOVQ AX, CX									
  io.go:354		0xe14114		488b8424e0000000		MOVQ 0xe0(SP), AX								
  io.go:354		0xe1411c		0f1f4000			NOPL 0(AX)									
  control_owner.go:81	0xe14120		e988faffff			JMP 0xe13bad									
  control_owner.go:81	0xe14125		498b541210			MOVQ 0x10(R10)(DX*1), DX							
  control_owner.go:81	0xe1412a		4889d1				MOVQ DX, CX									
  control_owner.go:81	0xe1412d		e97bfaffff			JMP 0xe13bad									
  buffer.go:54		0xe14132		e8694766ff			CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe14137		90				NOPL										
  buffer.go:54		0xe14138		e8435a62ff			CALL runtime.deferreturn(SB)							
  buffer.go:54		0xe1413d		488b842488000000		MOVQ 0x88(SP), AX								
  buffer.go:54		0xe14145		488b5c2478			MOVQ 0x78(SP), BX								
  buffer.go:54		0xe1414a		488b8c2480000000		MOVQ 0x80(SP), CX								
  buffer.go:54		0xe14152		4881c400010000			ADDQ $.file+179(SB), SP								
  buffer.go:54		0xe14159		5d				POPQ BP										
  buffer.go:54		0xe1415a		c3				RET										
  control_owner.go:55	0xe1415b		4889442408			MOVQ AX, 0x8(SP)								
  control_owner.go:55	0xe14160		48895c2410			MOVQ BX, 0x10(SP)								
  control_owner.go:55	0xe14165		e8762366ff			CALL runtime.morestack_noctxt.abi0(SB)						
  control_owner.go:55	0xe1416a		488b442408			MOVQ 0x8(SP), AX								
  control_owner.go:55	0xe1416f		488b5c2410			MOVQ 0x10(SP), BX								
  control_owner.go:55	0xe14174		e907f7ffff			JMP CAS-Backend/pkg/agvcontrol.QueryControlOwner(SB)				
  :-1			0xe14179		cc				INT $__subsystem__(SB)								
  :-1			0xe1417a		cc				INT $__subsystem__(SB)								
  :-1			0xe1417b		cc				INT $__subsystem__(SB)								
  :-1			0xe1417c		cc				INT $__subsystem__(SB)								
  :-1			0xe1417d		cc				INT $__subsystem__(SB)								
  :-1			0xe1417e		cc				INT $__subsystem__(SB)								
  :-1			0xe1417f		cc				INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.QueryControlOwner.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/control_owner.go
  control_owner.go:78	0xe14180		493b6610		CMPQ SP, 0x10(R14)						
  control_owner.go:78	0xe14184		7625			JBE 0xe141ab							
  control_owner.go:78	0xe14186		55			PUSHQ BP							
  control_owner.go:78	0xe14187		4889e5			MOVQ SP, BP							
  control_owner.go:78	0xe1418a		4883ec10		SUBQ $__major_os_version__+10(SB), SP				
  control_owner.go:78	0xe1418e		4d8b6620		MOVQ 0x20(R14), R12						
  control_owner.go:78	0xe14192		4d85e4			TESTQ R12, R12							
  control_owner.go:78	0xe14195		751b			JNE 0xe141b2							
  control_owner.go:78	0xe14197		488b4208		MOVQ 0x8(DX), AX						
  control_owner.go:78	0xe1419b		488b5a10		MOVQ 0x10(DX), BX						
  control_owner.go:78	0xe1419f		90			NOPL								
  control_owner.go:78	0xe141a0		e89be1ffff		CALL CAS-Backend/pkg/agvcontrol.ClearConnDeadlines(SB)		
  control_owner.go:78	0xe141a5		4883c410		ADDQ $__major_os_version__+10(SB), SP				
  control_owner.go:78	0xe141a9		5d			POPQ BP								
  control_owner.go:78	0xe141aa		c3			RET								
  control_owner.go:78	0xe141ab		e8b02266ff		CALL runtime.morestack.abi0(SB)					
  control_owner.go:78	0xe141b0		ebce			JMP CAS-Backend/pkg/agvcontrol.QueryControlOwner.deferwrap1(SB)	
  control_owner.go:78	0xe141b2		4c8d6c2420		LEAQ 0x20(SP), R13						
  control_owner.go:78	0xe141b7		4d392c24		CMPQ 0(R12), R13						
  control_owner.go:78	0xe141bb		75da			JNE 0xe14197							
  control_owner.go:78	0xe141bd		49892424		MOVQ SP, 0(R12)							
  control_owner.go:78	0xe141c1		ebd4			JMP 0xe14197							
  :-1			0xe141c3		cc			INT $__subsystem__(SB)						
  :-1			0xe141c4		cc			INT $__subsystem__(SB)						
  :-1			0xe141c5		cc			INT $__subsystem__(SB)						
  :-1			0xe141c6		cc			INT $__subsystem__(SB)						
  :-1			0xe141c7		cc			INT $__subsystem__(SB)						
  :-1			0xe141c8		cc			INT $__subsystem__(SB)						
  :-1			0xe141c9		cc			INT $__subsystem__(SB)						
  :-1			0xe141ca		cc			INT $__subsystem__(SB)						
  :-1			0xe141cb		cc			INT $__subsystem__(SB)						
  :-1			0xe141cc		cc			INT $__subsystem__(SB)						
  :-1			0xe141cd		cc			INT $__subsystem__(SB)						
  :-1			0xe141ce		cc			INT $__subsystem__(SB)						
  :-1			0xe141cf		cc			INT $__subsystem__(SB)						
  :-1			0xe141d0		cc			INT $__subsystem__(SB)						
  :-1			0xe141d1		cc			INT $__subsystem__(SB)						
  :-1			0xe141d2		cc			INT $__subsystem__(SB)						
  :-1			0xe141d3		cc			INT $__subsystem__(SB)						
  :-1			0xe141d4		cc			INT $__subsystem__(SB)						
  :-1			0xe141d5		cc			INT $__subsystem__(SB)						
  :-1			0xe141d6		cc			INT $__subsystem__(SB)						
  :-1			0xe141d7		cc			INT $__subsystem__(SB)						
  :-1			0xe141d8		cc			INT $__subsystem__(SB)						
  :-1			0xe141d9		cc			INT $__subsystem__(SB)						
  :-1			0xe141da		cc			INT $__subsystem__(SB)						
  :-1			0xe141db		cc			INT $__subsystem__(SB)						
  :-1			0xe141dc		cc			INT $__subsystem__(SB)						
  :-1			0xe141dd		cc			INT $__subsystem__(SB)						
  :-1			0xe141de		cc			INT $__subsystem__(SB)						
  :-1			0xe141df		cc			INT $__subsystem__(SB)						

