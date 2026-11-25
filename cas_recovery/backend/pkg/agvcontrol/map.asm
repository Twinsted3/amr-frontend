TEXT CAS-Backend/pkg/agvcontrol.SendSltMapRequest(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/map.go
  map.go:29		0xe1e800		4c8d642488		LEAQ -0x78(SP), R12								
  map.go:29		0xe1e805		4d3b6610		CMPQ R12, 0x10(R14)								
  map.go:29		0xe1e809		0f86c9060000		JBE 0xe1eed8									
  map.go:29		0xe1e80f		55			PUSHQ BP									
  map.go:29		0xe1e810		4889e5			MOVQ SP, BP									
  map.go:29		0xe1e813		4881ecf0000000		SUBQ $.file+163(SB), SP								
  map.go:46		0xe1e81a		4889842400010000	MOVQ AX, 0x100(SP)								
  map.go:46		0xe1e822		48899c2408010000	MOVQ BX, 0x108(SP)								
  map.go:40		0xe1e82a		48c74424485a010100	MOVQ $__dll_characteristics__+32762(SB), 0x48(SP)				
  map.go:40		0xe1e833		48c744245014050000	MOVQ $__file_alignment__+788(SB), 0x50(SP)					
  map.go:38		0xe1e83c		c744244c00000000	MOVL $0x0, 0x4c(SP)								
  map.go:44		0xe1e844		488d05b59a2b00		LEAQ runtime.types+996096(SB), AX						
  map.go:44		0xe1e84b		e8502f5fff		CALL runtime.newobject(SB)							
  map.go:44		0xe1e850		48898424e8000000	MOVQ AX, 0xe8(SP)								
  map.go:45		0xe1e858		0f10442448		MOVUPS 0x48(SP), X0								
  map.go:45		0xe1e85d		0f11442458		MOVUPS X0, 0x58(SP)								
  map.go:45		0xe1e862		4889c3			MOVQ AX, BX									
  map.go:45		0xe1e865		488d0dd4860502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  map.go:45		0xe1e86c		488d3d2dea7302		LEAQ unicode..stmp_365(SB), DI							
  map.go:45		0xe1e873		488d3546002f00		LEAQ runtime.types+1218752(SB), SI						
  map.go:45		0xe1e87a		4c8d442458		LEAQ 0x58(SP), R8								
  map.go:45		0xe1e87f		488d05dae70402		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  map.go:45		0xe1e886		e8953874ff		CALL encoding/binary.Write(SB)							
  map.go:46		0xe1e88b		4885c0			TESTQ AX, AX									
  map.go:46		0xe1e88e		7451			JE 0xe1e8e1									
  map.go:47		0xe1e890		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  map.go:47		0xe1e899		7404			JE 0xe1e89f									
  map.go:47		0xe1e89b		488b4008		MOVQ 0x8(AX), AX								
  map.go:47		0xe1e89f		48898424c8000000	MOVQ AX, 0xc8(SP)								
  map.go:47		0xe1e8a7		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  map.go:47		0xe1e8af		488d05eaaa3600		LEAQ go:string.*+134808(SB), AX							
  map.go:47		0xe1e8b6		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  map.go:47		0xe1e8bb		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  map.go:47		0xe1e8c3		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:47		0xe1e8c8		4889fe			MOVQ DI, SI									
  map.go:47		0xe1e8cb		e8f0da6fff		CALL fmt.Errorf(SB)								
  map.go:47		0xe1e8d0		4889d9			MOVQ BX, CX									
  map.go:47		0xe1e8d3		4889c3			MOVQ AX, BX									
  map.go:47		0xe1e8d6		31c0			XORL AX, AX									
  map.go:47		0xe1e8d8		4881c4f0000000		ADDQ $.file+163(SB), SP								
  map.go:47		0xe1e8df		5d			POPQ BP										
  map.go:47		0xe1e8e0		c3			RET										
  map.go:49		0xe1e8e1		488b8424e8000000	MOVQ 0xe8(SP), AX								
  map.go:49		0xe1e8e9		488d5c2438		LEAQ 0x38(SP), BX								
  map.go:49		0xe1e8ee		31c9			XORL CX, CX									
  map.go:49		0xe1e8f0		4889cf			MOVQ CX, DI									
  map.go:49		0xe1e8f3		e828dc70ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe1e8f8		488b9424e8000000	MOVQ 0xe8(SP), DX								
  buffer.go:54		0xe1e900		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe1e904		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe1e908		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe1e90b		0f82c1050000		JB 0xe1eed2									
  map.go:52		0xe1e911		488bb42400010000	MOVQ 0x100(SP), SI								
  map.go:52		0xe1e919		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe1e91d		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe1e920		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe1e924		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe1e927		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe1e92a		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe1e92d		48f7da			NEGQ DX										
  buffer.go:54		0xe1e930		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe1e934		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe1e937		498d1c01		LEAQ 0(R9)(AX*1), BX								
  map.go:52		0xe1e93b		488b842408010000	MOVQ 0x108(SP), AX								
  map.go:52		0xe1e943		41ffd0			CALL R8										
  map.go:53		0xe1e946		4885db			TESTQ BX, BX									
  map.go:53		0xe1e949		7573			JNE 0xe1e9be									
  map.go:58		0xe1e94b		e850f768ff		CALL time.Now(SB)								
  map.go:58		0xe1e950		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  map.go:58		0xe1e95a		e8015c68ff		CALL time.Time.Add(SB)								
  map.go:58		0xe1e95f		488b942400010000	MOVQ 0x100(SP), DX								
  map.go:58		0xe1e967		488b7240		MOVQ 0x40(DX), SI								
  map.go:58		0xe1e96b		4889cf			MOVQ CX, DI									
  map.go:58		0xe1e96e		4889d9			MOVQ BX, CX									
  map.go:58		0xe1e971		4889c3			MOVQ AX, BX									
  map.go:58		0xe1e974		488b842408010000	MOVQ 0x108(SP), AX								
  map.go:58		0xe1e97c		ffd6			CALL SI										
  map.go:61		0xe1e97e		488d051b402200		LEAQ runtime.types+383392(SB), AX						
  map.go:61		0xe1e985		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  map.go:61		0xe1e98a		4889d9			MOVQ BX, CX									
  map.go:61		0xe1e98d		e8ce3165ff		CALL runtime.makeslice(SB)							
  map.go:61		0xe1e992		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:62		0xe1e99a		488b8c2400010000	MOVQ 0x100(SP), CX								
  map.go:62		0xe1e9a2		4885c9			TESTQ CX, CX									
  map.go:62		0xe1e9a5		7468			JE 0xe1ea0f									
  map.go:62		0xe1e9a7		488b5908		MOVQ 0x8(CX), BX								
  map.go:62		0xe1e9ab		488b15fed01900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.42(SB), DX				
  map.go:62		0xe1e9b2		4c8b0a			MOVQ 0(DX), R9									
  map.go:62		0xe1e9b5		448b5110		MOVL 0x10(CX), R10								
  map.go:62		0xe1e9b9		e9c9040000		JMP 0xe1ee87									
  map.go:54		0xe1e9be		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  map.go:54		0xe1e9c7		7404			JE 0xe1e9cd									
  map.go:54		0xe1e9c9		488b5b08		MOVQ 0x8(BX), BX								
  map.go:54		0xe1e9cd		48899c24c8000000	MOVQ BX, 0xc8(SP)								
  map.go:54		0xe1e9d5		48898c24d0000000	MOVQ CX, 0xd0(SP)								
  map.go:54		0xe1e9dd		488d05e03d3600		LEAQ go:string.*+107196(SB), AX							
  map.go:54		0xe1e9e4		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  map.go:54		0xe1e9e9		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  map.go:54		0xe1e9f1		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:54		0xe1e9f6		4889fe			MOVQ DI, SI									
  map.go:54		0xe1e9f9		e8c2d96fff		CALL fmt.Errorf(SB)								
  map.go:54		0xe1e9fe		4889d9			MOVQ BX, CX									
  map.go:54		0xe1ea01		4889c3			MOVQ AX, BX									
  map.go:54		0xe1ea04		31c0			XORL AX, AX									
  map.go:54		0xe1ea06		4881c4f0000000		ADDQ $.file+163(SB), SP								
  map.go:54		0xe1ea0d		5d			POPQ BP										
  map.go:54		0xe1ea0e		c3			RET										
  io.go:354		0xe1ea0f		488b9c2408010000	MOVQ 0x108(SP), BX								
  io.go:354		0xe1ea17		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe1ea1c		4889fe			MOVQ DI, SI									
  io.go:354		0xe1ea1f		4989f0			MOVQ SI, R8									
  map.go:61		0xe1ea22		4889c2			MOVQ AX, DX									
  io.go:354		0xe1ea25		4889c8			MOVQ CX, AX									
  io.go:354		0xe1ea28		4889d1			MOVQ DX, CX									
  io.go:354		0xe1ea2b		e8d04169ff		CALL io.ReadAtLeast(SB)								
  map.go:63		0xe1ea30		4885db			TESTQ BX, BX									
  map.go:63		0xe1ea33		0f84fe000000		JE 0xe1eb37									
  map.go:63		0xe1ea39		0f1f8000000000		NOPL 0(AX)									
  map.go:65		0xe1ea40		48391d79831900		CMPQ io.EOF(SB), BX								
  map.go:65		0xe1ea47		7405			JE 0xe1ea4e									
  map.go:63		0xe1ea49		4885db			TESTQ BX, BX									
  map.go:65		0xe1ea4c		eb49			JMP 0xe1ea97									
  io.go:354		0xe1ea4e		4889442470		MOVQ AX, 0x70(SP)								
  io.go:354		0xe1ea53		48898c2490000000	MOVQ CX, 0x90(SP)								
  io.go:354		0xe1ea5b		48895c2478		MOVQ BX, 0x78(SP)								
  map.go:65		0xe1ea60		488b1561831900		MOVQ io.EOF+8(SB), DX								
  map.go:65		0xe1ea67		4889d8			MOVQ BX, AX									
  map.go:65		0xe1ea6a		4889cb			MOVQ CX, BX									
  map.go:65		0xe1ea6d		4889d1			MOVQ DX, CX									
  map.go:65		0xe1ea70		e86b9a5eff		CALL runtime.ifaceeq(SB)							
  map.go:65		0xe1ea75		84c0			TESTL AL, AL									
  map.go:65		0xe1ea77		0f8591000000		JNE 0xe1eb0e									
  map.go:63		0xe1ea7d		488b4c2478		MOVQ 0x78(SP), CX								
  map.go:63		0xe1ea82		4885c9			TESTQ CX, CX									
  map.go:68		0xe1ea85		488b442470		MOVQ 0x70(SP), AX								
  map.go:68		0xe1ea8a		488b8c2490000000	MOVQ 0x90(SP), CX								
  map.go:68		0xe1ea92		488b5c2478		MOVQ 0x78(SP), BX								
  map.go:68		0xe1ea97		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)								
  map.go:68		0xe1eaa0		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  map.go:68		0xe1eaa9		7404			JE 0xe1eaaf									
  map.go:68		0xe1eaab		488b5b08		MOVQ 0x8(BX), BX								
  map.go:68		0xe1eaaf		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  map.go:68		0xe1eab7		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  map.go:68		0xe1eabf		90			NOPL										
  map.go:68		0xe1eac0		e8dbb564ff		CALL runtime.convT64(SB)							
  map.go:68		0xe1eac5		488d0d94402200		LEAQ runtime.types+383840(SB), CX						
  map.go:68		0xe1eacc		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  map.go:68		0xe1ead4		48898424c0000000	MOVQ AX, 0xc0(SP)								
  map.go:68		0xe1eadc		488d0575e03700		LEAQ go:string.*+214608(SB), AX							
  map.go:68		0xe1eae3		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  map.go:68		0xe1eae8		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  map.go:68		0xe1eaf0		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  map.go:68		0xe1eaf5		4889fe			MOVQ DI, SI									
  map.go:68		0xe1eaf8		e8c3d86fff		CALL fmt.Errorf(SB)								
  map.go:68		0xe1eafd		4889d9			MOVQ BX, CX									
  map.go:68		0xe1eb00		4889c3			MOVQ AX, BX									
  map.go:68		0xe1eb03		31c0			XORL AX, AX									
  map.go:68		0xe1eb05		4881c4f0000000		ADDQ $.file+163(SB), SP								
  map.go:68		0xe1eb0c		5d			POPQ BP										
  map.go:68		0xe1eb0d		c3			RET										
  map.go:66		0xe1eb0e		488d05f82c3600		LEAQ go:string.*+103173(SB), AX							
  map.go:66		0xe1eb15		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  map.go:66		0xe1eb1a		31c9			XORL CX, CX									
  map.go:66		0xe1eb1c		31ff			XORL DI, DI									
  map.go:66		0xe1eb1e		4889fe			MOVQ DI, SI									
  map.go:66		0xe1eb21		e89ad86fff		CALL fmt.Errorf(SB)								
  map.go:66		0xe1eb26		4889d9			MOVQ BX, CX									
  map.go:66		0xe1eb29		4889c3			MOVQ AX, BX									
  map.go:66		0xe1eb2c		31c0			XORL AX, AX									
  map.go:66		0xe1eb2e		4881c4f0000000		ADDQ $.file+163(SB), SP								
  map.go:66		0xe1eb35		5d			POPQ BP										
  map.go:66		0xe1eb36		c3			RET										
  map.go:72		0xe1eb37		440f11bc2498000000	MOVUPS X15, 0x98(SP)								
  map.go:72		0xe1eb40		488b8424d8000000	MOVQ 0xd8(SP), AX								
  map.go:72		0xe1eb48		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  map.go:72		0xe1eb4d		4889d9			MOVQ BX, CX									
  map.go:72		0xe1eb50		e86bb664ff		CALL runtime.convTslice(SB)							
  map.go:72		0xe1eb55		488d15e4962100		LEAQ runtime.types+340544(SB), DX						
  map.go:72		0xe1eb5c		4889942498000000	MOVQ DX, 0x98(SP)								
  map.go:72		0xe1eb64		48898424a0000000	MOVQ AX, 0xa0(SP)								
  print.go:233		0xe1eb6c		488b1d0d356f02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe1eb73		488d0566cf0402		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe1eb7a		488d0da4bc3600		LEAQ go:string.*+140061(SB), CX							
  print.go:233		0xe1eb81		bf1d000000		MOVL $__major_os_version__+23(SB), DI						
  print.go:233		0xe1eb86		488db42498000000	LEAQ 0x98(SP), SI								
  print.go:233		0xe1eb8e		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe1eb94		4d89c1			MOVQ R8, R9									
  print.go:233		0xe1eb97		e8840670ff		CALL fmt.Fprintf(SB)								
  map.go:75		0xe1eb9c		440f117c2438		MOVUPS X15, 0x38(SP)								
  map.go:76		0xe1eba2		90			NOPL										
  reader.go:159		0xe1eba3		488d0516982b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe1ebaa		e8f12b5fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe1ebaf		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe1ebb7		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe1ebbf		833d8aef730200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe1ebc6		750a			JNE 0xe1ebd2									
  reader.go:159		0xe1ebc8		488b9424d8000000	MOVQ 0xd8(SP), DX								
  reader.go:159		0xe1ebd0		eb10			JMP 0xe1ebe2									
  reader.go:159		0xe1ebd2		e8499865ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe1ebd7		488b9424d8000000	MOVQ 0xd8(SP), DX								
  reader.go:159		0xe1ebdf		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe1ebe2		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe1ebe5		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe1ebed		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  map.go:77		0xe1ebf5		4889c3			MOVQ AX, BX									
  map.go:77		0xe1ebf8		488d0d41830502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  map.go:77		0xe1ebff		488d3d9ae67302		LEAQ unicode..stmp_365(SB), DI							
  map.go:77		0xe1ec06		488d3513802000		LEAQ runtime.types+269344(SB), SI						
  map.go:77		0xe1ec0d		4c8d442438		LEAQ 0x38(SP), R8								
  map.go:77		0xe1ec12		488d05c7de0402		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  map.go:77		0xe1ec19		e8222674ff		CALL encoding/binary.Read(SB)							
  map.go:77		0xe1ec1e		6690			NOPW										
  map.go:78		0xe1ec20		4885c0			TESTQ AX, AX									
  map.go:78		0xe1ec23		7560			JNE 0xe1ec85									
  map.go:89		0xe1ec25		8b4c243c		MOVL 0x3c(SP), CX								
  map.go:89		0xe1ec29		85c9			TESTL CX, CX									
  map.go:89		0xe1ec2b		7652			JBE 0xe1ec7f									
  map.go:90		0xe1ec2d		488d056c3d2200		LEAQ runtime.types+383392(SB), AX						
  map.go:90		0xe1ec34		89cb			MOVL CX, BX									
  map.go:90		0xe1ec36		e8252f65ff		CALL runtime.makeslice(SB)							
  map.go:90		0xe1ec3b		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:90		0xe1ec43		448b44243c		MOVL 0x3c(SP), R8								
  map.go:90		0xe1ec48		4c89842480000000	MOVQ R8, 0x80(SP)								
  map.go:62		0xe1ec50		488b942400010000	MOVQ 0x100(SP), DX								
  map.go:62		0xe1ec58		0f1f840000000000	NOPL 0(AX)(AX*1)								
  map.go:62		0xe1ec60		4885d2			TESTQ DX, DX									
  map.go:91		0xe1ec63		0f8427010000		JE 0xe1ed90									
  map.go:91		0xe1ec69		488b5a08		MOVQ 0x8(DX), BX								
  map.go:91		0xe1ec6d		4c8b0d5cce1900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.43(SB), R9				
  map.go:91		0xe1ec74		4d8b11			MOVQ 0(R9), R10									
  map.go:91		0xe1ec77		8b5210			MOVL 0x10(DX), DX								
  map.go:91		0xe1ec7a		e9ba010000		JMP 0xe1ee39									
  map.go:91		0xe1ec7f		31c0			XORL AX, AX									
  map.go:91		0xe1ec81		31c9			XORL CX, CX									
  map.go:89		0xe1ec83		eb51			JMP 0xe1ecd6									
  map.go:79		0xe1ec85		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  map.go:79		0xe1ec8e		7404			JE 0xe1ec94									
  map.go:79		0xe1ec90		488b4008		MOVQ 0x8(AX), AX								
  map.go:79		0xe1ec94		48898424c8000000	MOVQ AX, 0xc8(SP)								
  map.go:79		0xe1ec9c		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  map.go:79		0xe1eca4		488d0511a73600		LEAQ go:string.*+134836(SB), AX							
  map.go:79		0xe1ecab		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  map.go:79		0xe1ecb0		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  map.go:79		0xe1ecb8		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:79		0xe1ecbd		4889fe			MOVQ DI, SI									
  map.go:79		0xe1ecc0		e8fbd66fff		CALL fmt.Errorf(SB)								
  map.go:79		0xe1ecc5		4889d9			MOVQ BX, CX									
  map.go:79		0xe1ecc8		4889c3			MOVQ AX, BX									
  map.go:79		0xe1eccb		31c0			XORL AX, AX									
  map.go:79		0xe1eccd		4881c4f0000000		ADDQ $.file+163(SB), SP								
  map.go:79		0xe1ecd4		5d			POPQ BP										
  map.go:79		0xe1ecd5		c3			RET										
  map.go:100		0xe1ecd6		4889442468		MOVQ AX, 0x68(SP)								
  map.go:100		0xe1ecdb		48898c2488000000	MOVQ CX, 0x88(SP)								
  map.go:98		0xe1ece3		488d05d6fd2e00		LEAQ runtime.types+1219264(SB), AX						
  map.go:98		0xe1ecea		e8b12a5fff		CALL runtime.newobject(SB)							
  map.go:99		0xe1ecef		837c243c00		CMPL 0x3c(SP), $0x0								
  map.go:99		0xe1ecf4		0f8689000000		JBE 0xe1ed83									
  map.go:98		0xe1ecfa		48898424e0000000	MOVQ AX, 0xe0(SP)								
  map.go:100		0xe1ed02		488b5c2468		MOVQ 0x68(SP), BX								
  map.go:100		0xe1ed07		4889d9			MOVQ BX, CX									
  map.go:100		0xe1ed0a		488d3dcf812000		LEAQ runtime.types+270048(SB), DI						
  map.go:100		0xe1ed11		4889c6			MOVQ AX, SI									
  map.go:100		0xe1ed14		488b842488000000	MOVQ 0x88(SP), AX								
  map.go:100		0xe1ed1c		0f1f4000		NOPL 0(AX)									
  map.go:100		0xe1ed20		e8bb8774ff		CALL encoding/json.Unmarshal(SB)						
  map.go:101		0xe1ed25		4885c0			TESTQ AX, AX									
  map.go:101		0xe1ed28		7451			JE 0xe1ed7b									
  map.go:102		0xe1ed2a		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  map.go:102		0xe1ed33		7404			JE 0xe1ed39									
  map.go:102		0xe1ed35		488b4008		MOVQ 0x8(AX), AX								
  map.go:102		0xe1ed39		48898424c8000000	MOVQ AX, 0xc8(SP)								
  map.go:102		0xe1ed41		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  map.go:102		0xe1ed49		488d0558823600		LEAQ go:string.*+125600(SB), AX							
  map.go:102		0xe1ed50		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  map.go:102		0xe1ed55		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  map.go:102		0xe1ed5d		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:102		0xe1ed62		4889fe			MOVQ DI, SI									
  map.go:102		0xe1ed65		e856d66fff		CALL fmt.Errorf(SB)								
  map.go:102		0xe1ed6a		4889d9			MOVQ BX, CX									
  map.go:102		0xe1ed6d		4889c3			MOVQ AX, BX									
  map.go:102		0xe1ed70		31c0			XORL AX, AX									
  map.go:102		0xe1ed72		4881c4f0000000		ADDQ $.file+163(SB), SP								
  map.go:102		0xe1ed79		5d			POPQ BP										
  map.go:102		0xe1ed7a		c3			RET										
  map.go:109		0xe1ed7b		488b8424e0000000	MOVQ 0xe0(SP), AX								
  map.go:109		0xe1ed83		31db			XORL BX, BX									
  map.go:109		0xe1ed85		31c9			XORL CX, CX									
  map.go:109		0xe1ed87		4881c4f0000000		ADDQ $.file+163(SB), SP								
  map.go:109		0xe1ed8e		5d			POPQ BP										
  map.go:109		0xe1ed8f		c3			RET										
  io.go:354		0xe1ed90		488b9c2408010000	MOVQ 0x108(SP), BX								
  io.go:354		0xe1ed98		4889c1			MOVQ AX, CX									
  io.go:354		0xe1ed9b		4c89c7			MOVQ R8, DI									
  io.go:354		0xe1ed9e		4889fe			MOVQ DI, SI									
  io.go:354		0xe1eda1		4889d0			MOVQ DX, AX									
  io.go:354		0xe1eda4		e8573e69ff		CALL io.ReadAtLeast(SB)								
  map.go:92		0xe1eda9		4885db			TESTQ BX, BX									
  map.go:92		0xe1edac		7476			JE 0xe1ee24									
  map.go:93		0xe1edae		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)								
  map.go:93		0xe1edb7		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  map.go:93		0xe1edc0		7404			JE 0xe1edc6									
  map.go:93		0xe1edc2		488b5b08		MOVQ 0x8(BX), BX								
  map.go:93		0xe1edc6		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  map.go:93		0xe1edce		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  map.go:93		0xe1edd6		e8c5b264ff		CALL runtime.convT64(SB)							
  map.go:93		0xe1eddb		488d0d7e3d2200		LEAQ runtime.types+383840(SB), CX						
  map.go:93		0xe1ede2		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  map.go:93		0xe1edea		48898424c0000000	MOVQ AX, 0xc0(SP)								
  map.go:93		0xe1edf2		488d0590dd3700		LEAQ go:string.*+214657(SB), AX							
  map.go:93		0xe1edf9		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  map.go:93		0xe1edfe		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  map.go:93		0xe1ee06		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  map.go:93		0xe1ee0b		4889fe			MOVQ DI, SI									
  map.go:93		0xe1ee0e		e8add56fff		CALL fmt.Errorf(SB)								
  map.go:93		0xe1ee13		4889d9			MOVQ BX, CX									
  map.go:93		0xe1ee16		4889c3			MOVQ AX, BX									
  map.go:93		0xe1ee19		31c0			XORL AX, AX									
  map.go:93		0xe1ee1b		4881c4f0000000		ADDQ $.file+163(SB), SP								
  map.go:93		0xe1ee22		5d			POPQ BP										
  map.go:93		0xe1ee23		c3			RET										
  map.go:100		0xe1ee24		488b842480000000	MOVQ 0x80(SP), AX								
  map.go:100		0xe1ee2c		488b8c24d8000000	MOVQ 0xd8(SP), CX								
  map.go:98		0xe1ee34		e99dfeffff		JMP 0xe1ecd6									
  map.go:91		0xe1ee39		4989d3			MOVQ DX, R11									
  map.go:91		0xe1ee3c		4c21d2			ANDQ R10, DX									
  map.go:91		0xe1ee3f		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  map.go:91		0xe1ee43		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  map.go:91		0xe1ee48		4939dc			CMPQ R12, BX									
  map.go:91		0xe1ee4b		7430			JE 0xe1ee7d									
  map.go:91		0xe1ee4d		498d5301		LEAQ 0x1(R11), DX								
  map.go:91		0xe1ee51		4d85e4			TESTQ R12, R12									
  map.go:91		0xe1ee54		75e3			JNE 0xe1ee39									
  map.go:91		0xe1ee56		488d0573cc1900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.43(SB), AX				
  map.go:91		0xe1ee5d		0f1f00			NOPL 0(AX)									
  map.go:91		0xe1ee60		e87b045fff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe1ee65		4c8b842480000000	MOVQ 0x80(SP), R8								
  map.go:91		0xe1ee6d		4889c2			MOVQ AX, DX									
  io.go:354		0xe1ee70		488b8424d8000000	MOVQ 0xd8(SP), AX								
  map.go:91		0xe1ee78		e913ffffff		JMP 0xe1ed90									
  map.go:91		0xe1ee7d		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  map.go:91		0xe1ee82		e909ffffff		JMP 0xe1ed90									
  map.go:62		0xe1ee87		4d89d3			MOVQ R10, R11									
  map.go:62		0xe1ee8a		4d21ca			ANDQ R9, R10									
  map.go:62		0xe1ee8d		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  map.go:62		0xe1ee91		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  map.go:62		0xe1ee96		4939dc			CMPQ R12, BX									
  map.go:62		0xe1ee99		742a			JE 0xe1eec5									
  map.go:62		0xe1ee9b		4d8d5301		LEAQ 0x1(R11), R10								
  map.go:62		0xe1ee9f		90			NOPL										
  map.go:62		0xe1eea0		4d85e4			TESTQ R12, R12									
  map.go:62		0xe1eea3		75e2			JNE 0xe1ee87									
  map.go:62		0xe1eea5		488d0504cc1900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.42(SB), AX				
  map.go:62		0xe1eeac		e82f045fff		CALL runtime.typeAssert(SB)							
  map.go:62		0xe1eeb1		4889c1			MOVQ AX, CX									
  io.go:354		0xe1eeb4		488b8424d8000000	MOVQ 0xd8(SP), AX								
  io.go:354		0xe1eebc		0f1f4000		NOPL 0(AX)									
  map.go:62		0xe1eec0		e94afbffff		JMP 0xe1ea0f									
  map.go:62		0xe1eec5		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  map.go:62		0xe1eeca		4889d1			MOVQ DX, CX									
  map.go:62		0xe1eecd		e93dfbffff		JMP 0xe1ea0f									
  buffer.go:54		0xe1eed2		e8c99965ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe1eed7		90			NOPL										
  map.go:29		0xe1eed8		4889442408		MOVQ AX, 0x8(SP)								
  map.go:29		0xe1eedd		48895c2410		MOVQ BX, 0x10(SP)								
  map.go:29		0xe1eee2		e8f97565ff		CALL runtime.morestack_noctxt.abi0(SB)						
  map.go:29		0xe1eee7		488b442408		MOVQ 0x8(SP), AX								
  map.go:29		0xe1eeec		488b5c2410		MOVQ 0x10(SP), BX								
  map.go:29		0xe1eef1		e90af9ffff		JMP CAS-Backend/pkg/agvcontrol.SendSltMapRequest(SB)				
  :-1			0xe1eef6		cc			INT $__subsystem__(SB)								
  :-1			0xe1eef7		cc			INT $__subsystem__(SB)								
  :-1			0xe1eef8		cc			INT $__subsystem__(SB)								
  :-1			0xe1eef9		cc			INT $__subsystem__(SB)								
  :-1			0xe1eefa		cc			INT $__subsystem__(SB)								
  :-1			0xe1eefb		cc			INT $__subsystem__(SB)								
  :-1			0xe1eefc		cc			INT $__subsystem__(SB)								
  :-1			0xe1eefd		cc			INT $__subsystem__(SB)								
  :-1			0xe1eefe		cc			INT $__subsystem__(SB)								
  :-1			0xe1eeff		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.DownloadMapRequest(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/map.go
  map.go:113		0xe1ef00		4c8da42478ffffff	LEAQ 0xffffff78(SP), R12							
  map.go:113		0xe1ef08		4d3b6610		CMPQ R12, 0x10(R14)								
  map.go:113		0xe1ef0c		0f86d9070000		JBE 0xe1f6eb									
  map.go:113		0xe1ef12		55			PUSHQ BP									
  map.go:113		0xe1ef13		4889e5			MOVQ SP, BP									
  map.go:113		0xe1ef16		4881ec00010000		SUBQ $.file+179(SB), SP								
  map.go:121		0xe1ef1d		4889842410010000	MOVQ AX, 0x110(SP)								
  map.go:121		0xe1ef25		48899c2418010000	MOVQ BX, 0x118(SP)								
  map.go:121		0xe1ef2d		4889bc2428010000	MOVQ DI, 0x128(SP)								
  map.go:121		0xe1ef35		48898c2420010000	MOVQ CX, 0x120(SP)								
  map.go:120		0xe1ef3d		48898c24a8000000	MOVQ CX, 0xa8(SP)								
  map.go:120		0xe1ef45		4889bc24b0000000	MOVQ DI, 0xb0(SP)								
  map.go:120		0xe1ef4d		488b9424a8000000	MOVQ 0xa8(SP), DX								
  map.go:120		0xe1ef55		4889d0			MOVQ DX, AX									
  map.go:120		0xe1ef58		4889fb			MOVQ DI, BX									
  map.go:120		0xe1ef5b		0f1f440000		NOPL 0(AX)(AX*1)								
  map.go:120		0xe1ef60		e8bbb164ff		CALL runtime.convTstring(SB)							
  map.go:120		0xe1ef65		4889c3			MOVQ AX, BX									
  map.go:120		0xe1ef68		488d0591592800		LEAQ runtime.types+784640(SB), AX						
  map.go:120		0xe1ef6f		e82ce574ff		CALL encoding/json.Marshal(SB)							
  map.go:121		0xe1ef74		4885ff			TESTQ DI, DI									
  map.go:121		0xe1ef77		7451			JE 0xe1efca									
  map.go:122		0xe1ef79		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:122		0xe1ef82		7404			JE 0xe1ef88									
  map.go:122		0xe1ef84		488b7f08		MOVQ 0x8(DI), DI								
  map.go:122		0xe1ef88		4889bc24d8000000	MOVQ DI, 0xd8(SP)								
  map.go:122		0xe1ef90		4889b424e0000000	MOVQ SI, 0xe0(SP)								
  map.go:122		0xe1ef98		488d05fc4b3600		LEAQ go:string.*+112275(SB), AX							
  map.go:122		0xe1ef9f		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  map.go:122		0xe1efa4		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:122		0xe1efac		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:122		0xe1efb1		4889fe			MOVQ DI, SI									
  map.go:122		0xe1efb4		e807d46fff		CALL fmt.Errorf(SB)								
  map.go:122		0xe1efb9		4889d9			MOVQ BX, CX									
  map.go:122		0xe1efbc		4889c3			MOVQ AX, BX									
  map.go:122		0xe1efbf		31c0			XORL AX, AX									
  map.go:122		0xe1efc1		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:122		0xe1efc8		5d			POPQ BP										
  map.go:122		0xe1efc9		c3			RET										
  map.go:120		0xe1efca		48894c2478		MOVQ CX, 0x78(SP)								
  map.go:120		0xe1efcf		48895c2470		MOVQ BX, 0x70(SP)								
  map.go:120		0xe1efd4		4889842498000000	MOVQ AX, 0x98(SP)								
  map.go:132		0xe1efdc		48c74424405a010100	MOVQ $__dll_characteristics__+32762(SB), 0x40(SP)				
  map.go:132		0xe1efe5		48c7442448ab0f0000	MOVQ $__file_alignment__+3499(SB), 0x48(SP)					
  map.go:130		0xe1efee		895c2444		MOVL BX, 0x44(SP)								
  map.go:136		0xe1eff2		488d0507932b00		LEAQ runtime.types+996096(SB), AX						
  map.go:136		0xe1eff9		e8a2275fff		CALL runtime.newobject(SB)							
  map.go:136		0xe1effe		48898424f8000000	MOVQ AX, 0xf8(SP)								
  map.go:137		0xe1f006		0f10442440		MOVUPS 0x40(SP), X0								
  map.go:137		0xe1f00b		0f11442450		MOVUPS X0, 0x50(SP)								
  map.go:137		0xe1f010		4889c3			MOVQ AX, BX									
  map.go:137		0xe1f013		488d0d267f0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  map.go:137		0xe1f01a		488d3d7fe27302		LEAQ unicode..stmp_365(SB), DI							
  map.go:137		0xe1f021		488d3598f82e00		LEAQ runtime.types+1218752(SB), SI						
  map.go:137		0xe1f028		4c8d442450		LEAQ 0x50(SP), R8								
  map.go:137		0xe1f02d		488d052ce00402		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  map.go:137		0xe1f034		e8e73074ff		CALL encoding/binary.Write(SB)							
  map.go:138		0xe1f039		4885c0			TESTQ AX, AX									
  map.go:138		0xe1f03c		7451			JE 0xe1f08f									
  map.go:139		0xe1f03e		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:139		0xe1f047		7404			JE 0xe1f04d									
  map.go:139		0xe1f049		488b4008		MOVQ 0x8(AX), AX								
  map.go:139		0xe1f04d		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:139		0xe1f055		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  map.go:139		0xe1f05d		488d053ca33600		LEAQ go:string.*+134808(SB), AX							
  map.go:139		0xe1f064		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  map.go:139		0xe1f069		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:139		0xe1f071		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:139		0xe1f076		4889fe			MOVQ DI, SI									
  map.go:139		0xe1f079		e842d36fff		CALL fmt.Errorf(SB)								
  map.go:139		0xe1f07e		4889d9			MOVQ BX, CX									
  map.go:139		0xe1f081		4889c3			MOVQ AX, BX									
  map.go:139		0xe1f084		31c0			XORL AX, AX									
  map.go:139		0xe1f086		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:139		0xe1f08d		5d			POPQ BP										
  map.go:139		0xe1f08e		c3			RET										
  map.go:141		0xe1f08f		488b8424f8000000	MOVQ 0xf8(SP), AX								
  map.go:141		0xe1f097		488b9c2498000000	MOVQ 0x98(SP), BX								
  map.go:141		0xe1f09f		488b4c2470		MOVQ 0x70(SP), CX								
  map.go:141		0xe1f0a4		488b7c2478		MOVQ 0x78(SP), DI								
  map.go:141		0xe1f0a9		e872d470ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe1f0ae		488b9424f8000000	MOVQ 0xf8(SP), DX								
  buffer.go:54		0xe1f0b6		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe1f0ba		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe1f0be		6690			NOPW										
  buffer.go:54		0xe1f0c0		4839c8			CMPQ AX, CX									
  buffer.go:54		0xe1f0c3		0f871c060000		JA 0xe1f6e5									
  map.go:144		0xe1f0c9		488bb42410010000	MOVQ 0x110(SP), SI								
  map.go:144		0xe1f0d1		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe1f0d5		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe1f0d8		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe1f0dc		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe1f0df		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe1f0e2		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe1f0e5		48f7da			NEGQ DX										
  buffer.go:54		0xe1f0e8		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe1f0ec		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe1f0ef		498d1c01		LEAQ 0(R9)(AX*1), BX								
  map.go:144		0xe1f0f3		488b842418010000	MOVQ 0x118(SP), AX								
  map.go:144		0xe1f0fb		41ffd0			CALL R8										
  map.go:144		0xe1f0fe		6690			NOPW										
  map.go:145		0xe1f100		4885db			TESTQ BX, BX									
  map.go:145		0xe1f103		7540			JNE 0xe1f145									
  map.go:153		0xe1f105		488d0594382200		LEAQ runtime.types+383392(SB), AX						
  map.go:153		0xe1f10c		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  map.go:153		0xe1f111		4889d9			MOVQ BX, CX									
  map.go:153		0xe1f114		e8472a65ff		CALL runtime.makeslice(SB)							
  map.go:153		0xe1f119		48898424e8000000	MOVQ AX, 0xe8(SP)								
  map.go:154		0xe1f121		488b942410010000	MOVQ 0x110(SP), DX								
  map.go:154		0xe1f129		4885d2			TESTQ DX, DX									
  map.go:154		0xe1f12c		7468			JE 0xe1f196									
  map.go:154		0xe1f12e		488b5a08		MOVQ 0x8(DX), BX								
  map.go:154		0xe1f132		4c8b0db7c91900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.44(SB), R9				
  map.go:154		0xe1f139		4d8b11			MOVQ 0(R9), R10									
  map.go:154		0xe1f13c		448b5a10		MOVL 0x10(DX), R11								
  map.go:154		0xe1f140		e951050000		JMP 0xe1f696									
  map.go:146		0xe1f145		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:146		0xe1f14e		7404			JE 0xe1f154									
  map.go:146		0xe1f150		488b5b08		MOVQ 0x8(BX), BX								
  map.go:146		0xe1f154		48899c24d8000000	MOVQ BX, 0xd8(SP)								
  map.go:146		0xe1f15c		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  map.go:146		0xe1f164		488d0559363600		LEAQ go:string.*+107196(SB), AX							
  map.go:146		0xe1f16b		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  map.go:146		0xe1f170		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:146		0xe1f178		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:146		0xe1f17d		4889fe			MOVQ DI, SI									
  map.go:146		0xe1f180		e83bd26fff		CALL fmt.Errorf(SB)								
  map.go:146		0xe1f185		4889d9			MOVQ BX, CX									
  map.go:146		0xe1f188		4889c3			MOVQ AX, BX									
  map.go:146		0xe1f18b		31c0			XORL AX, AX									
  map.go:146		0xe1f18d		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:146		0xe1f194		5d			POPQ BP										
  map.go:146		0xe1f195		c3			RET										
  io.go:354		0xe1f196		488b9c2418010000	MOVQ 0x118(SP), BX								
  io.go:354		0xe1f19e		4889c1			MOVQ AX, CX									
  io.go:354		0xe1f1a1		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe1f1a6		4889fe			MOVQ DI, SI									
  io.go:354		0xe1f1a9		4989f0			MOVQ SI, R8									
  io.go:354		0xe1f1ac		4889d0			MOVQ DX, AX									
  io.go:354		0xe1f1af		e84c3a69ff		CALL io.ReadAtLeast(SB)								
  map.go:155		0xe1f1b4		4885db			TESTQ BX, BX									
  map.go:155		0xe1f1b7		0f840a010000		JE 0xe1f2c7									
  map.go:155		0xe1f1bd		0f1f00			NOPL 0(AX)									
  map.go:157		0xe1f1c0		48391df97b1900		CMPQ io.EOF(SB), BX								
  map.go:157		0xe1f1c7		7405			JE 0xe1f1ce									
  map.go:155		0xe1f1c9		4885db			TESTQ BX, BX									
  map.go:157		0xe1f1cc		eb5a			JMP 0xe1f228									
  io.go:354		0xe1f1ce		4889442468		MOVQ AX, 0x68(SP)								
  io.go:354		0xe1f1d3		48899c2480000000	MOVQ BX, 0x80(SP)								
  io.go:354		0xe1f1db		48898c24a0000000	MOVQ CX, 0xa0(SP)								
  map.go:157		0xe1f1e3		488b15de7b1900		MOVQ io.EOF+8(SB), DX								
  map.go:157		0xe1f1ea		4889d8			MOVQ BX, AX									
  map.go:157		0xe1f1ed		4889cb			MOVQ CX, BX									
  map.go:157		0xe1f1f0		4889d1			MOVQ DX, CX									
  map.go:157		0xe1f1f3		e8e8925eff		CALL runtime.ifaceeq(SB)							
  map.go:157		0xe1f1f8		0f1f840000000000	NOPL 0(AX)(AX*1)								
  map.go:157		0xe1f200		84c0			TESTL AL, AL									
  map.go:157		0xe1f202		0f8596000000		JNE 0xe1f29e									
  map.go:155		0xe1f208		488b8c2480000000	MOVQ 0x80(SP), CX								
  map.go:155		0xe1f210		4885c9			TESTQ CX, CX									
  map.go:160		0xe1f213		488b442468		MOVQ 0x68(SP), AX								
  map.go:160		0xe1f218		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  map.go:160		0xe1f220		488b9c2480000000	MOVQ 0x80(SP), BX								
  map.go:160		0xe1f228		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  map.go:160		0xe1f231		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  map.go:160		0xe1f23a		7404			JE 0xe1f240									
  map.go:160		0xe1f23c		488b5b08		MOVQ 0x8(BX), BX								
  map.go:160		0xe1f240		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  map.go:160		0xe1f248		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  map.go:160		0xe1f250		e84bae64ff		CALL runtime.convT64(SB)							
  map.go:160		0xe1f255		488d0d04392200		LEAQ runtime.types+383840(SB), CX						
  map.go:160		0xe1f25c		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  map.go:160		0xe1f264		48898424d0000000	MOVQ AX, 0xd0(SP)								
  map.go:160		0xe1f26c		488d05e5d83700		LEAQ go:string.*+214608(SB), AX							
  map.go:160		0xe1f273		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  map.go:160		0xe1f278		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  map.go:160		0xe1f280		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  map.go:160		0xe1f285		4889fe			MOVQ DI, SI									
  map.go:160		0xe1f288		e833d16fff		CALL fmt.Errorf(SB)								
  map.go:160		0xe1f28d		4889d9			MOVQ BX, CX									
  map.go:160		0xe1f290		4889c3			MOVQ AX, BX									
  map.go:160		0xe1f293		31c0			XORL AX, AX									
  map.go:160		0xe1f295		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:160		0xe1f29c		5d			POPQ BP										
  map.go:160		0xe1f29d		c3			RET										
  map.go:158		0xe1f29e		488d0568253600		LEAQ go:string.*+103173(SB), AX							
  map.go:158		0xe1f2a5		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  map.go:158		0xe1f2aa		31c9			XORL CX, CX									
  map.go:158		0xe1f2ac		31ff			XORL DI, DI									
  map.go:158		0xe1f2ae		4889fe			MOVQ DI, SI									
  map.go:158		0xe1f2b1		e80ad16fff		CALL fmt.Errorf(SB)								
  map.go:158		0xe1f2b6		4889d9			MOVQ BX, CX									
  map.go:158		0xe1f2b9		4889c3			MOVQ AX, BX									
  map.go:158		0xe1f2bc		31c0			XORL AX, AX									
  map.go:158		0xe1f2be		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:158		0xe1f2c5		5d			POPQ BP										
  map.go:158		0xe1f2c6		c3			RET										
  map.go:164		0xe1f2c7		440f117c2430		MOVUPS X15, 0x30(SP)								
  map.go:165		0xe1f2cd		90			NOPL										
  reader.go:159		0xe1f2ce		488d05eb902b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe1f2d5		e8c6245fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe1f2da		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe1f2e2		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe1f2ea		833d5fe8730200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe1f2f1		750d			JNE 0xe1f300									
  reader.go:159		0xe1f2f3		488b9424e8000000	MOVQ 0xe8(SP), DX								
  reader.go:159		0xe1f2fb		eb13			JMP 0xe1f310									
  reader.go:159		0xe1f2fd		0f1f00			NOPL 0(AX)									
  reader.go:159		0xe1f300		e81b9165ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe1f305		488b9424e8000000	MOVQ 0xe8(SP), DX								
  reader.go:159		0xe1f30d		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe1f310		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe1f313		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe1f31b		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  map.go:166		0xe1f323		4889c3			MOVQ AX, BX									
  map.go:166		0xe1f326		488d0d137c0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  map.go:166		0xe1f32d		488d3d6cdf7302		LEAQ unicode..stmp_365(SB), DI							
  map.go:166		0xe1f334		488d35e5782000		LEAQ runtime.types+269344(SB), SI						
  map.go:166		0xe1f33b		4c8d442430		LEAQ 0x30(SP), R8								
  map.go:166		0xe1f340		488d0599d70402		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  map.go:166		0xe1f347		e8f41e74ff		CALL encoding/binary.Read(SB)							
  map.go:167		0xe1f34c		4885c0			TESTQ AX, AX									
  map.go:167		0xe1f34f		755a			JNE 0xe1f3ab									
  map.go:178		0xe1f351		8b4c2434		MOVL 0x34(SP), CX								
  map.go:178		0xe1f355		85c9			TESTL CX, CX									
  map.go:178		0xe1f357		764c			JBE 0xe1f3a5									
  map.go:179		0xe1f359		488d0540362200		LEAQ runtime.types+383392(SB), AX						
  map.go:179		0xe1f360		89cb			MOVL CX, BX									
  map.go:179		0xe1f362		e8f92765ff		CALL runtime.makeslice(SB)							
  map.go:179		0xe1f367		48898424e8000000	MOVQ AX, 0xe8(SP)								
  map.go:179		0xe1f36f		448b442434		MOVL 0x34(SP), R8								
  map.go:179		0xe1f374		4c89842488000000	MOVQ R8, 0x88(SP)								
  map.go:154		0xe1f37c		488b942410010000	MOVQ 0x110(SP), DX								
  map.go:154		0xe1f384		4885d2			TESTQ DX, DX									
  map.go:180		0xe1f387		0f8412020000		JE 0xe1f59f									
  map.go:180		0xe1f38d		488b5a08		MOVQ 0x8(DX), BX								
  map.go:180		0xe1f391		4c8b0d78c71900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.45(SB), R9				
  map.go:180		0xe1f398		4d8b11			MOVQ 0(R9), R10									
  map.go:180		0xe1f39b		8b5210			MOVL 0x10(DX), DX								
  map.go:180		0xe1f39e		6690			NOPW										
  map.go:180		0xe1f3a0		e9a6020000		JMP 0xe1f64b									
  map.go:180		0xe1f3a5		31c0			XORL AX, AX									
  map.go:180		0xe1f3a7		31c9			XORL CX, CX									
  map.go:178		0xe1f3a9		eb51			JMP 0xe1f3fc									
  map.go:168		0xe1f3ab		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:168		0xe1f3b4		7404			JE 0xe1f3ba									
  map.go:168		0xe1f3b6		488b4008		MOVQ 0x8(AX), AX								
  map.go:168		0xe1f3ba		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:168		0xe1f3c2		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  map.go:168		0xe1f3ca		488d05eb9f3600		LEAQ go:string.*+134836(SB), AX							
  map.go:168		0xe1f3d1		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  map.go:168		0xe1f3d6		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:168		0xe1f3de		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:168		0xe1f3e3		4889fe			MOVQ DI, SI									
  map.go:168		0xe1f3e6		e8d5cf6fff		CALL fmt.Errorf(SB)								
  map.go:168		0xe1f3eb		4889d9			MOVQ BX, CX									
  map.go:168		0xe1f3ee		4889c3			MOVQ AX, BX									
  map.go:168		0xe1f3f1		31c0			XORL AX, AX									
  map.go:168		0xe1f3f3		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:168		0xe1f3fa		5d			POPQ BP										
  map.go:168		0xe1f3fb		c3			RET										
  map.go:190		0xe1f3fc		4889442460		MOVQ AX, 0x60(SP)								
  map.go:190		0xe1f401		48898c2490000000	MOVQ CX, 0x90(SP)								
  map.go:187		0xe1f409		488d05f06a2b00		LEAQ runtime.types+986880(SB), AX						
  map.go:187		0xe1f410		e88b235fff		CALL runtime.newobject(SB)							
  map.go:189		0xe1f415		837c243400		CMPL 0x34(SP), $0x0								
  map.go:189		0xe1f41a		660f1f440000		NOPW 0(AX)(AX*1)								
  map.go:189		0xe1f420		0f8650010000		JBE 0xe1f576									
  map.go:187		0xe1f426		48898424f0000000	MOVQ AX, 0xf0(SP)								
  map.go:190		0xe1f42e		488b5c2460		MOVQ 0x60(SP), BX								
  map.go:190		0xe1f433		4889d9			MOVQ BX, CX									
  map.go:190		0xe1f436		488d3d23782000		LEAQ runtime.types+269408(SB), DI						
  map.go:190		0xe1f43d		4889c6			MOVQ AX, SI									
  map.go:190		0xe1f440		488b842490000000	MOVQ 0x90(SP), AX								
  map.go:190		0xe1f448		e8938074ff		CALL encoding/json.Unmarshal(SB)						
  map.go:191		0xe1f44d		4885c0			TESTQ AX, AX									
  map.go:191		0xe1f450		7451			JE 0xe1f4a3									
  map.go:192		0xe1f452		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:192		0xe1f45b		7404			JE 0xe1f461									
  map.go:192		0xe1f45d		488b4008		MOVQ 0x8(AX), AX								
  map.go:192		0xe1f461		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:192		0xe1f469		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  map.go:192		0xe1f471		488d05307b3600		LEAQ go:string.*+125600(SB), AX							
  map.go:192		0xe1f478		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  map.go:192		0xe1f47d		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:192		0xe1f485		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:192		0xe1f48a		4889fe			MOVQ DI, SI									
  map.go:192		0xe1f48d		e82ecf6fff		CALL fmt.Errorf(SB)								
  map.go:192		0xe1f492		4889d9			MOVQ BX, CX									
  map.go:192		0xe1f495		4889c3			MOVQ AX, BX									
  map.go:192		0xe1f498		31c0			XORL AX, AX									
  map.go:192		0xe1f49a		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:192		0xe1f4a1		5d			POPQ BP										
  map.go:192		0xe1f4a2		c3			RET										
  map.go:194		0xe1f4a3		488b9424f0000000	MOVQ 0xf0(SP), DX								
  map.go:194		0xe1f4ab		48837a2000		CMPQ 0x20(DX), $0x0								
  map.go:194		0xe1f4b0		7564			JNE 0xe1f516									
  map.go:197		0xe1f4b2		488b842420010000	MOVQ 0x120(SP), AX								
  map.go:197		0xe1f4ba		488b9c2428010000	MOVQ 0x128(SP), BX								
  map.go:197		0xe1f4c2		488b8c2490000000	MOVQ 0x90(SP), CX								
  map.go:197		0xe1f4ca		488b7c2460		MOVQ 0x60(SP), DI								
  map.go:197		0xe1f4cf		4889fe			MOVQ DI, SI									
  map.go:197		0xe1f4d2		e8495cb7ff		CALL CAS-Backend/biz/dao.SaveMap(SB)						
  map.go:197		0xe1f4d7		84c0			TESTL AL, AL									
  map.go:198		0xe1f4d9		740d			JE 0xe1f4e8									
  map.go:201		0xe1f4db		31db			XORL BX, BX									
  map.go:201		0xe1f4dd		31c9			XORL CX, CX									
  map.go:201		0xe1f4df		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:201		0xe1f4e6		5d			POPQ BP										
  map.go:201		0xe1f4e7		c3			RET										
  map.go:199		0xe1f4e8		488d05a3593600		LEAQ go:string.*+117130(SB), AX							
  map.go:199		0xe1f4ef		bb18000000		MOVL $__major_os_version__+18(SB), BX						
  map.go:199		0xe1f4f4		31c9			XORL CX, CX									
  map.go:199		0xe1f4f6		31ff			XORL DI, DI									
  map.go:199		0xe1f4f8		4889fe			MOVQ DI, SI									
  map.go:199		0xe1f4fb		0f1f440000		NOPL 0(AX)(AX*1)								
  map.go:199		0xe1f500		e8bbce6fff		CALL fmt.Errorf(SB)								
  map.go:199		0xe1f505		4889d9			MOVQ BX, CX									
  map.go:199		0xe1f508		4889c3			MOVQ AX, BX									
  map.go:199		0xe1f50b		31c0			XORL AX, AX									
  map.go:199		0xe1f50d		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:199		0xe1f514		5d			POPQ BP										
  map.go:199		0xe1f515		c3			RET										
  map.go:195		0xe1f516		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:195		0xe1f51f		488b4218		MOVQ 0x18(DX), AX								
  map.go:195		0xe1f523		488b5a20		MOVQ 0x20(DX), BX								
  map.go:195		0xe1f527		e8f4ab64ff		CALL runtime.convTstring(SB)							
  map.go:195		0xe1f52c		488d0ded332200		LEAQ runtime.types+383264(SB), CX						
  map.go:195		0xe1f533		48898c24d8000000	MOVQ CX, 0xd8(SP)								
  map.go:195		0xe1f53b		48898424e0000000	MOVQ AX, 0xe0(SP)								
  map.go:195		0xe1f543		488d0537473600		LEAQ go:string.*+112505(SB), AX							
  map.go:195		0xe1f54a		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  map.go:195		0xe1f54f		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:195		0xe1f557		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:195		0xe1f55c		4889fe			MOVQ DI, SI									
  map.go:195		0xe1f55f		90			NOPL										
  map.go:195		0xe1f560		e85bce6fff		CALL fmt.Errorf(SB)								
  map.go:195		0xe1f565		4889d9			MOVQ BX, CX									
  map.go:195		0xe1f568		4889c3			MOVQ AX, BX									
  map.go:195		0xe1f56b		31c0			XORL AX, AX									
  map.go:195		0xe1f56d		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:195		0xe1f574		5d			POPQ BP										
  map.go:195		0xe1f575		c3			RET										
  map.go:231		0xe1f576		488d05f18a3500		LEAQ go:string.*+64358(SB), AX							
  map.go:231		0xe1f57d		bb0c000000		MOVL $__major_os_version__+6(SB), BX						
  map.go:231		0xe1f582		31c9			XORL CX, CX									
  map.go:231		0xe1f584		31ff			XORL DI, DI									
  map.go:231		0xe1f586		4889fe			MOVQ DI, SI									
  map.go:231		0xe1f589		e832ce6fff		CALL fmt.Errorf(SB)								
  map.go:231		0xe1f58e		4889d9			MOVQ BX, CX									
  map.go:231		0xe1f591		4889c3			MOVQ AX, BX									
  map.go:231		0xe1f594		31c0			XORL AX, AX									
  map.go:231		0xe1f596		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:231		0xe1f59d		5d			POPQ BP										
  map.go:231		0xe1f59e		c3			RET										
  io.go:354		0xe1f59f		488b9c2418010000	MOVQ 0x118(SP), BX								
  io.go:354		0xe1f5a7		4889c1			MOVQ AX, CX									
  io.go:354		0xe1f5aa		4c89c7			MOVQ R8, DI									
  io.go:354		0xe1f5ad		4889fe			MOVQ DI, SI									
  io.go:354		0xe1f5b0		4889d0			MOVQ DX, AX									
  io.go:354		0xe1f5b3		e8483669ff		CALL io.ReadAtLeast(SB)								
  map.go:181		0xe1f5b8		4885db			TESTQ BX, BX									
  map.go:181		0xe1f5bb		7479			JE 0xe1f636									
  map.go:182		0xe1f5bd		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  map.go:182		0xe1f5c6		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  map.go:182		0xe1f5cf		7404			JE 0xe1f5d5									
  map.go:182		0xe1f5d1		488b5b08		MOVQ 0x8(BX), BX								
  map.go:182		0xe1f5d5		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  map.go:182		0xe1f5dd		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  map.go:182		0xe1f5e5		e8b6aa64ff		CALL runtime.convT64(SB)							
  map.go:182		0xe1f5ea		488d0d6f352200		LEAQ runtime.types+383840(SB), CX						
  map.go:182		0xe1f5f1		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  map.go:182		0xe1f5f9		48898424d0000000	MOVQ AX, 0xd0(SP)								
  map.go:182		0xe1f601		488d0581d53700		LEAQ go:string.*+214657(SB), AX							
  map.go:182		0xe1f608		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  map.go:182		0xe1f60d		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  map.go:182		0xe1f615		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  map.go:182		0xe1f61a		4889fe			MOVQ DI, SI									
  map.go:182		0xe1f61d		0f1f00			NOPL 0(AX)									
  map.go:182		0xe1f620		e89bcd6fff		CALL fmt.Errorf(SB)								
  map.go:182		0xe1f625		4889d9			MOVQ BX, CX									
  map.go:182		0xe1f628		4889c3			MOVQ AX, BX									
  map.go:182		0xe1f62b		31c0			XORL AX, AX									
  map.go:182		0xe1f62d		4881c400010000		ADDQ $.file+179(SB), SP								
  map.go:182		0xe1f634		5d			POPQ BP										
  map.go:182		0xe1f635		c3			RET										
  map.go:190		0xe1f636		488b842488000000	MOVQ 0x88(SP), AX								
  map.go:190		0xe1f63e		488b8c24e8000000	MOVQ 0xe8(SP), CX								
  map.go:187		0xe1f646		e9b1fdffff		JMP 0xe1f3fc									
  map.go:180		0xe1f64b		4989d3			MOVQ DX, R11									
  map.go:180		0xe1f64e		4c21d2			ANDQ R10, DX									
  map.go:180		0xe1f651		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  map.go:180		0xe1f655		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  map.go:180		0xe1f65a		4939dc			CMPQ R12, BX									
  map.go:180		0xe1f65d		742d			JE 0xe1f68c									
  map.go:180		0xe1f65f		498d5301		LEAQ 0x1(R11), DX								
  map.go:180		0xe1f663		4d85e4			TESTQ R12, R12									
  map.go:180		0xe1f666		75e3			JNE 0xe1f64b									
  map.go:180		0xe1f668		488d05a1c41900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.45(SB), AX				
  map.go:180		0xe1f66f		e86cfc5eff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe1f674		4c8b842488000000	MOVQ 0x88(SP), R8								
  map.go:180		0xe1f67c		4889c2			MOVQ AX, DX									
  io.go:354		0xe1f67f		488b8424e8000000	MOVQ 0xe8(SP), AX								
  map.go:180		0xe1f687		e913ffffff		JMP 0xe1f59f									
  map.go:180		0xe1f68c		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  map.go:180		0xe1f691		e909ffffff		JMP 0xe1f59f									
  map.go:154		0xe1f696		4d89dc			MOVQ R11, R12									
  map.go:154		0xe1f699		4d21d3			ANDQ R10, R11									
  map.go:154		0xe1f69c		49c1e304		SHLQ $__subsystem__+1(SB), R11							
  map.go:154		0xe1f6a0		4f8b6c1908		MOVQ 0x8(R9)(R11*1), R13							
  map.go:154		0xe1f6a5		4939dd			CMPQ R13, BX									
  map.go:154		0xe1f6a8		742b			JE 0xe1f6d5									
  map.go:154		0xe1f6aa		4d8d5c2401		LEAQ 0x1(R12), R11								
  map.go:154		0xe1f6af		4d85ed			TESTQ R13, R13									
  map.go:154		0xe1f6b2		75e2			JNE 0xe1f696									
  map.go:154		0xe1f6b4		488d0535c41900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.44(SB), AX				
  map.go:154		0xe1f6bb		0f1f440000		NOPL 0(AX)(AX*1)								
  map.go:154		0xe1f6c0		e81bfc5eff		CALL runtime.typeAssert(SB)							
  map.go:154		0xe1f6c5		4889c2			MOVQ AX, DX									
  io.go:354		0xe1f6c8		488b8424e8000000	MOVQ 0xe8(SP), AX								
  map.go:154		0xe1f6d0		e9c1faffff		JMP 0xe1f196									
  map.go:154		0xe1f6d5		4f8b4c1910		MOVQ 0x10(R9)(R11*1), R9							
  map.go:154		0xe1f6da		4c89ca			MOVQ R9, DX									
  map.go:154		0xe1f6dd		0f1f00			NOPL 0(AX)									
  map.go:154		0xe1f6e0		e9b1faffff		JMP 0xe1f196									
  buffer.go:54		0xe1f6e5		e8b69165ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe1f6ea		90			NOPL										
  map.go:113		0xe1f6eb		4889442408		MOVQ AX, 0x8(SP)								
  map.go:113		0xe1f6f0		48895c2410		MOVQ BX, 0x10(SP)								
  map.go:113		0xe1f6f5		48894c2418		MOVQ CX, 0x18(SP)								
  map.go:113		0xe1f6fa		48897c2420		MOVQ DI, 0x20(SP)								
  map.go:113		0xe1f6ff		90			NOPL										
  map.go:113		0xe1f700		e8db6d65ff		CALL runtime.morestack_noctxt.abi0(SB)						
  map.go:113		0xe1f705		488b442408		MOVQ 0x8(SP), AX								
  map.go:113		0xe1f70a		488b5c2410		MOVQ 0x10(SP), BX								
  map.go:113		0xe1f70f		488b4c2418		MOVQ 0x18(SP), CX								
  map.go:113		0xe1f714		488b7c2420		MOVQ 0x20(SP), DI								
  map.go:113		0xe1f719		e9e2f7ffff		JMP CAS-Backend/pkg/agvcontrol.DownloadMapRequest(SB)				
  :-1			0xe1f71e		cc			INT $__subsystem__(SB)								
  :-1			0xe1f71f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SendUploadAndLoadMapCommand(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/map.go
  map.go:237		0xe1f720		4c8da42478feffff	LEAQ 0xfffffe78(SP), R12						
  map.go:237		0xe1f728		4d3b6610		CMPQ R12, 0x10(R14)							
  map.go:237		0xe1f72c		0f86b30c0000		JBE 0xe203e5								
  map.go:237		0xe1f732		55			PUSHQ BP								
  map.go:237		0xe1f733		4889e5			MOVQ SP, BP								
  map.go:237		0xe1f736		4881ec00020000		SUBQ $__file_alignment__(SB), SP					
  map.go:241		0xe1f73d		48899c2418020000	MOVQ BX, 0x218(SP)							
  map.go:241		0xe1f745		4889bc2428020000	MOVQ DI, 0x228(SP)							
  map.go:241		0xe1f74d		48898c2420020000	MOVQ CX, 0x220(SP)							
  map.go:241		0xe1f755		4889842410020000	MOVQ AX, 0x210(SP)							
  map.go:238		0xe1f75d		0f1f00			NOPL 0(AX)								
  map.go:238		0xe1f760		e85bd661ff		CALL runtime.printlock(SB)						
  map.go:238		0xe1f765		488b842420020000	MOVQ 0x220(SP), AX							
  map.go:238		0xe1f76d		488b9c2428020000	MOVQ 0x228(SP), BX							
  map.go:238		0xe1f775		e8c6de61ff		CALL runtime.printstring(SB)						
  map.go:238		0xe1f77a		e881d861ff		CALL runtime.printnl(SB)						
  map.go:238		0xe1f77f		90			NOPL									
  map.go:238		0xe1f780		e89bd661ff		CALL runtime.printunlock(SB)						
  map.go:240		0xe1f785		488b842420020000	MOVQ 0x220(SP), AX							
  map.go:240		0xe1f78d		488b9c2428020000	MOVQ 0x228(SP), BX							
  map.go:240		0xe1f795		e8e6f76aff		CALL os.ReadFile(SB)							
  map.go:241		0xe1f79a		4885ff			TESTQ DI, DI								
  map.go:241		0xe1f79d		7449			JE 0xe1f7e8								
  map.go:242		0xe1f79f		440f11bc24e8010000	MOVUPS X15, 0x1e8(SP)							
  map.go:242		0xe1f7a8		7404			JE 0xe1f7ae								
  map.go:242		0xe1f7aa		488b7f08		MOVQ 0x8(DI), DI							
  map.go:242		0xe1f7ae		4889bc24e8010000	MOVQ DI, 0x1e8(SP)							
  map.go:242		0xe1f7b6		4889b424f0010000	MOVQ SI, 0x1f0(SP)							
  map.go:242		0xe1f7be		488d059b9d3600		LEAQ go:string.*+135256(SB), AX						
  map.go:242		0xe1f7c5		bb1c000000		MOVL $__major_os_version__+22(SB), BX					
  map.go:242		0xe1f7ca		488d8c24e8010000	LEAQ 0x1e8(SP), CX							
  map.go:242		0xe1f7d2		bf01000000		MOVL $__minor_os_version__(SB), DI					
  map.go:242		0xe1f7d7		4889fe			MOVQ DI, SI								
  map.go:242		0xe1f7da		e8e1cb6fff		CALL fmt.Errorf(SB)							
  map.go:242		0xe1f7df		4881c400020000		ADDQ $__file_alignment__(SB), SP					
  map.go:242		0xe1f7e6		5d			POPQ BP									
  map.go:242		0xe1f7e7		c3			RET									
  map.go:240		0xe1f7e8		48895c2468		MOVQ BX, 0x68(SP)							
  map.go:240		0xe1f7ed		4889842490000000	MOVQ AX, 0x90(SP)							
  map.go:246		0xe1f7f5		e8465175ff		CALL encoding/json.Valid(SB)						
  map.go:246		0xe1f7fa		660f1f440000		NOPW 0(AX)(AX*1)							
  map.go:246		0xe1f800		84c0			TESTL AL, AL								
  map.go:246		0xe1f802		0f8475050000		JE 0xe1fd7d								
  map.go:255		0xe1f808		488b442468		MOVQ 0x68(SP), AX							
  map.go:255		0xe1f80d		483d0000a000		CMPQ AX, $github.com/go-playground/validator/v10.isSHA256+32(SB)	
  map.go:255		0xe1f813		0f8f15050000		JG 0xe1fd2e								
  map.go:259		0xe1f819		440f11bc24b8010000	MOVUPS X15, 0x1b8(SP)							
  map.go:259		0xe1f822		e879a864ff		CALL runtime.convT64(SB)						
  map.go:259		0xe1f827		488d0d32332200		LEAQ runtime.types+383840(SB), CX					
  map.go:259		0xe1f82e		48898c24b8010000	MOVQ CX, 0x1b8(SP)							
  map.go:259		0xe1f836		48898424c0010000	MOVQ AX, 0x1c0(SP)							
  print.go:233		0xe1f83e		488b1d3b286f02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe1f845		488d0594c20402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe1f84c		bf21000000		MOVL $__major_os_version__+27(SB), DI					
  print.go:233		0xe1f851		488db424b8010000	LEAQ 0x1b8(SP), SI							
  print.go:233		0xe1f859		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe1f85f		4d89c1			MOVQ R8, R9								
  print.go:233		0xe1f862		488d0d81f53600		LEAQ go:string.*+157922(SB), CX						
  print.go:233		0xe1f869		e8b2f96fff		CALL fmt.Fprintf(SB)							
  map.go:260		0xe1f86e		440f11bc24a8010000	MOVUPS X15, 0x1a8(SP)							
  map.go:260		0xe1f877		488b842420020000	MOVQ 0x220(SP), AX							
  map.go:260		0xe1f87f		488b9c2428020000	MOVQ 0x228(SP), BX							
  map.go:260		0xe1f887		e894a864ff		CALL runtime.convTstring(SB)						
  map.go:260		0xe1f88c		488d0d8d302200		LEAQ runtime.types+383264(SB), CX					
  map.go:260		0xe1f893		48898c24a8010000	MOVQ CX, 0x1a8(SP)							
  map.go:260		0xe1f89b		48898424b0010000	MOVQ AX, 0x1b0(SP)							
  print.go:233		0xe1f8a3		488b1dd6276f02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe1f8aa		488d052fc20402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe1f8b1		bf17000000		MOVL $__major_os_version__+17(SB), DI					
  print.go:233		0xe1f8b6		488db424a8010000	LEAQ 0x1a8(SP), SI							
  print.go:233		0xe1f8be		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe1f8c4		4d89c1			MOVQ R8, R9								
  print.go:233		0xe1f8c7		488d0dca433600		LEAQ go:string.*+112528(SB), CX						
  print.go:233		0xe1f8ce		e84df96fff		CALL fmt.Fprintf(SB)							
  map.go:269		0xe1f8d3		48c74424585a010100	MOVQ $__dll_characteristics__+32762(SB), 0x58(SP)			
  map.go:269		0xe1f8dc		48c7442460e9070000	MOVQ $__file_alignment__+1513(SB), 0x60(SP)				
  map.go:267		0xe1f8e5		488b4c2468		MOVQ 0x68(SP), CX							
  map.go:267		0xe1f8ea		894c245c		MOVL CX, 0x5c(SP)							
  map.go:263		0xe1f8ee		0f10442458		MOVUPS 0x58(SP), X0							
  map.go:263		0xe1f8f3		0f11442448		MOVUPS X0, 0x48(SP)							
  map.go:273		0xe1f8f8		488d05a1302200		LEAQ runtime.types+383392(SB), AX					
  map.go:273		0xe1f8ff		bb10000000		MOVL $__major_os_version__+10(SB), BX					
  map.go:273		0xe1f904		4889d9			MOVQ BX, CX								
  map.go:273		0xe1f907		e8542265ff		CALL runtime.makeslice(SB)						
  map.go:273		0xe1f90c		48898424a0000000	MOVQ AX, 0xa0(SP)							
  map.go:274		0xe1f914		0fb64c2448		MOVZX 0x48(SP), CX							
  map.go:274		0xe1f919		8808			MOVB CL, 0(AX)								
  map.go:275		0xe1f91b		0fb64c2449		MOVZX 0x49(SP), CX							
  map.go:275		0xe1f920		884801			MOVB CL, 0x1(AX)							
  map.go:277		0xe1f923		0fb74c244a		MOVZX 0x4a(SP), CX							
  map.go:280		0xe1f928		488d500a		LEAQ 0xa(AX), DX							
  binary.go:153		0xe1f92c		66c1c108		ROLW $__major_os_version__+2(SB), CX					
  binary.go:152		0xe1f930		66894802		MOVW CX, 0x2(AX)							
  map.go:278		0xe1f934		8b4c244c		MOVL 0x4c(SP), CX							
  binary.go:173		0xe1f938		0fc9			BSWAP CX								
  binary.go:170		0xe1f93a		894804			MOVL CX, 0x4(AX)							
  map.go:279		0xe1f93d		0fb74c2450		MOVZX 0x50(SP), CX							
  binary.go:153		0xe1f942		66c1c108		ROLW $__major_os_version__+2(SB), CX					
  binary.go:152		0xe1f946		66894808		MOVW CX, 0x8(AX)							
  map.go:280		0xe1f94a		488d4c2452		LEAQ 0x52(SP), CX							
  map.go:280		0xe1f94f		4839d1			CMPQ CX, DX								
  map.go:280		0xe1f952		7410			JE 0xe1f964								
  map.go:280		0xe1f954		8b4c2452		MOVL 0x52(SP), CX							
  map.go:280		0xe1f958		0fb7542456		MOVZX 0x56(SP), DX							
  map.go:280		0xe1f95d		89480a			MOVL CX, 0xa(AX)							
  map.go:280		0xe1f960		6689500e		MOVW DX, 0xe(AX)							
  map.go:283		0xe1f964		488dbc2458010000	LEAQ 0x158(SP), DI							
  map.go:283		0xe1f96c		488d7fd0		LEAQ -0x30(DI), DI							
  map.go:283		0xe1f970		660f1f840000000000	NOPW 0(AX)(AX*1)							
  map.go:283		0xe1f979		0f1f8000000000		NOPL 0(AX)								
  map.go:283		0xe1f980		48896c24f0		MOVQ BP, -0x10(SP)							
  map.go:283		0xe1f985		488d6c24f0		LEAQ -0x10(SP), BP							
  map.go:283		0xe1f98a		e8619165ff		CALL 0x478af0								
  map.go:283		0xe1f98f		488b6d00		MOVQ 0(BP), BP								
  map.go:284		0xe1f993		0fb64c2448		MOVZX 0x48(SP), CX							
  map.go:284		0xe1f998		488d1501302200		LEAQ runtime.types+383392(SB), DX					
  map.go:284		0xe1f99f		4889942458010000	MOVQ DX, 0x158(SP)							
  map.go:284		0xe1f9a7		488d1d72ad1500		LEAQ runtime.staticuint64s(SB), BX					
  map.go:284		0xe1f9ae		488d0ccb		LEAQ 0(BX)(CX*8), CX							
  map.go:284		0xe1f9b2		48898c2460010000	MOVQ CX, 0x160(SP)							
  map.go:284		0xe1f9ba		0fb64c2449		MOVZX 0x49(SP), CX							
  map.go:284		0xe1f9bf		4889942468010000	MOVQ DX, 0x168(SP)							
  map.go:284		0xe1f9c7		488d0ccb		LEAQ 0(BX)(CX*8), CX							
  map.go:284		0xe1f9cb		48898c2470010000	MOVQ CX, 0x170(SP)							
  map.go:284		0xe1f9d3		0fb744244a		MOVZX 0x4a(SP), AX							
  map.go:284		0xe1f9d8		e8c3f75eff		CALL runtime.convT16(SB)						
  map.go:284		0xe1f9dd		488d0d3c302200		LEAQ runtime.types+383520(SB), CX					
  map.go:284		0xe1f9e4		48898c2478010000	MOVQ CX, 0x178(SP)							
  map.go:284		0xe1f9ec		4889842480010000	MOVQ AX, 0x180(SP)							
  map.go:284		0xe1f9f4		8b44244c		MOVL 0x4c(SP), AX							
  map.go:284		0xe1f9f8		e823f85eff		CALL runtime.convT32(SB)						
  map.go:284		0xe1f9fd		488d0d9c302200		LEAQ runtime.types+383648(SB), CX					
  map.go:284		0xe1fa04		48898c2488010000	MOVQ CX, 0x188(SP)							
  map.go:284		0xe1fa0c		4889842490010000	MOVQ AX, 0x190(SP)							
  map.go:284		0xe1fa14		0fb7442450		MOVZX 0x50(SP), AX							
  map.go:284		0xe1fa19		e882f75eff		CALL runtime.convT16(SB)						
  map.go:284		0xe1fa1e		488d0dfb2f2200		LEAQ runtime.types+383520(SB), CX					
  map.go:284		0xe1fa25		48898c2498010000	MOVQ CX, 0x198(SP)							
  map.go:284		0xe1fa2d		48898424a0010000	MOVQ AX, 0x1a0(SP)							
  map.go:288		0xe1fa35		488b542468		MOVQ 0x68(SP), DX							
  map.go:288		0xe1fa3a		488d5a10		LEAQ 0x10(DX), BX							
  map.go:288		0xe1fa3e		48899c2488000000	MOVQ BX, 0x88(SP)							
  print.go:233		0xe1fa46		488b3533266f02		MOVQ os.Stdout(SB), SI							
  print.go:233		0xe1fa4d		488d058cc00402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe1fa54		bf47000000		MOVL $__major_os_version__+65(SB), DI					
  print.go:233		0xe1fa59		41b805000000		MOVL $__subsystem__+2(SB), R8						
  print.go:233		0xe1fa5f		4d89c1			MOVQ R8, R9								
  print.go:233		0xe1fa62		4889f3			MOVQ SI, BX								
  print.go:233		0xe1fa65		488d0dda773800		LEAQ go:string.*+257342(SB), CX						
  print.go:233		0xe1fa6c		488db42458010000	LEAQ 0x158(SP), SI							
  print.go:233		0xe1fa74		e8a7f76fff		CALL fmt.Fprintf(SB)							
  map.go:285		0xe1fa79		440f11bc2448010000	MOVUPS X15, 0x148(SP)							
  map.go:285		0xe1fa82		488b8424a0000000	MOVQ 0xa0(SP), AX							
  map.go:285		0xe1fa8a		bb10000000		MOVL $__major_os_version__+10(SB), BX					
  map.go:285		0xe1fa8f		4889d9			MOVQ BX, CX								
  map.go:285		0xe1fa92		e829a764ff		CALL runtime.convTslice(SB)						
  map.go:285		0xe1fa97		488d0da2872100		LEAQ runtime.types+340544(SB), CX					
  map.go:285		0xe1fa9e		48898c2448010000	MOVQ CX, 0x148(SP)							
  map.go:285		0xe1faa6		4889842450010000	MOVQ AX, 0x150(SP)							
  print.go:233		0xe1faae		488b1dcb256f02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe1fab5		488d0524c00402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe1fabc		488d0d23d23500		LEAQ go:string.*+83934(SB), CX						
  print.go:233		0xe1fac3		bf11000000		MOVL $__major_os_version__+11(SB), DI					
  print.go:233		0xe1fac8		488db42448010000	LEAQ 0x148(SP), SI							
  print.go:233		0xe1fad0		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe1fad6		4d89c1			MOVQ R8, R9								
  print.go:233		0xe1fad9		e842f76fff		CALL fmt.Fprintf(SB)							
  map.go:288		0xe1fade		488b9c2488000000	MOVQ 0x88(SP), BX							
  map.go:288		0xe1fae6		4883fb10		CMPQ BX, $__major_os_version__+10(SB)					
  map.go:288		0xe1faea		770f			JA 0xe1fafb								
  map.go:288		0xe1faec		488b8424a0000000	MOVQ 0xa0(SP), AX							
  map.go:288		0xe1faf4		b910000000		MOVL $__major_os_version__+10(SB), CX					
  map.go:288		0xe1faf9		eb1e			JMP 0xe1fb19								
  map.go:288		0xe1fafb		488b8424a0000000	MOVQ 0xa0(SP), AX							
  map.go:288		0xe1fb03		b910000000		MOVL $__major_os_version__+10(SB), CX					
  map.go:288		0xe1fb08		488b7c2468		MOVQ 0x68(SP), DI							
  map.go:288		0xe1fb0d		488d358c2e2200		LEAQ runtime.types+383392(SB), SI					
  map.go:288		0xe1fb14		e8272165ff		CALL runtime.growslice(SB)						
  map.go:288		0xe1fb19		4889842498000000	MOVQ AX, 0x98(SP)							
  map.go:288		0xe1fb21		48898c2480000000	MOVQ CX, 0x80(SP)							
  map.go:288		0xe1fb29		48895c2478		MOVQ BX, 0x78(SP)							
  map.go:288		0xe1fb2e		488d5010		LEAQ 0x10(AX), DX							
  map.go:288		0xe1fb32		4889d0			MOVQ DX, AX								
  map.go:288		0xe1fb35		488b9c2490000000	MOVQ 0x90(SP), BX							
  map.go:288		0xe1fb3d		488b4c2468		MOVQ 0x68(SP), CX							
  map.go:288		0xe1fb42		e8799665ff		CALL runtime.memmove(SB)						
  map.go:290		0xe1fb47		440f11bc2438010000	MOVUPS X15, 0x138(SP)							
  map.go:290		0xe1fb50		488b442478		MOVQ 0x78(SP), AX							
  map.go:290		0xe1fb55		e846a564ff		CALL runtime.convT64(SB)						
  map.go:290		0xe1fb5a		488d15ff2f2200		LEAQ runtime.types+383840(SB), DX					
  map.go:290		0xe1fb61		4889942438010000	MOVQ DX, 0x138(SP)							
  map.go:290		0xe1fb69		4889842440010000	MOVQ AX, 0x140(SP)							
  print.go:233		0xe1fb71		488b1d08256f02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe1fb78		488d0561bf0402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe1fb7f		488d0dbcac3600		LEAQ go:string.*+140090(SB), CX						
  print.go:233		0xe1fb86		bf1d000000		MOVL $__major_os_version__+23(SB), DI					
  print.go:233		0xe1fb8b		488db42438010000	LEAQ 0x138(SP), SI							
  print.go:233		0xe1fb93		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe1fb99		4d89c1			MOVQ R8, R9								
  print.go:233		0xe1fb9c		0f1f4000		NOPL 0(AX)								
  print.go:233		0xe1fba0		e87bf66fff		CALL fmt.Fprintf(SB)							
  map.go:293		0xe1fba5		488b942410020000	MOVQ 0x210(SP), DX							
  map.go:293		0xe1fbad		488b7250		MOVQ 0x50(DX), SI							
  map.go:293		0xe1fbb1		488b842418020000	MOVQ 0x218(SP), AX							
  map.go:293		0xe1fbb9		488b9c2498000000	MOVQ 0x98(SP), BX							
  map.go:293		0xe1fbc1		488b4c2478		MOVQ 0x78(SP), CX							
  map.go:293		0xe1fbc6		488bbc2480000000	MOVQ 0x80(SP), DI							
  map.go:293		0xe1fbce		ffd6			CALL SI									
  map.go:294		0xe1fbd0		4885db			TESTQ BX, BX								
  map.go:294		0xe1fbd3		0f850c010000		JNE 0xe1fce5								
  map.go:298		0xe1fbd9		440f11bc2418010000	MOVUPS X15, 0x118(SP)							
  map.go:298		0xe1fbe2		440f11bc2428010000	MOVUPS X15, 0x128(SP)							
  map.go:299		0xe1fbeb		0fb744244a		MOVZX 0x4a(SP), AX							
  map.go:299		0xe1fbf0		e8abf55eff		CALL runtime.convT16(SB)						
  map.go:299		0xe1fbf5		488d0d242e2200		LEAQ runtime.types+383520(SB), CX					
  map.go:299		0xe1fbfc		48898c2418010000	MOVQ CX, 0x118(SP)							
  map.go:299		0xe1fc04		4889842420010000	MOVQ AX, 0x120(SP)							
  map.go:299		0xe1fc0c		488b442478		MOVQ 0x78(SP), AX							
  map.go:299		0xe1fc11		e88aa464ff		CALL runtime.convT64(SB)						
  map.go:299		0xe1fc16		488d0d432f2200		LEAQ runtime.types+383840(SB), CX					
  map.go:299		0xe1fc1d		48898c2428010000	MOVQ CX, 0x128(SP)							
  map.go:299		0xe1fc25		4889842430010000	MOVQ AX, 0x130(SP)							
  print.go:233		0xe1fc2d		488b1d4c246f02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe1fc34		488d05a5be0402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe1fc3b		bf4a000000		MOVL $__major_os_version__+68(SB), DI					
  print.go:233		0xe1fc40		488db42418010000	LEAQ 0x118(SP), SI							
  print.go:233		0xe1fc48		41b802000000		MOVL $__minor_os_version__+1(SB), R8					
  print.go:233		0xe1fc4e		4d89c1			MOVQ R8, R9								
  print.go:233		0xe1fc51		488d0dbd813800		LEAQ go:string.*+260365(SB), CX						
  print.go:233		0xe1fc58		e8c3f56fff		CALL fmt.Fprintf(SB)							
  print.go:233		0xe1fc5d		0f1f00			NOPL 0(AX)								
  map.go:302		0xe1fc60		e83be468ff		CALL time.Now(SB)							
  map.go:302		0xe1fc65		48bf00ac23fc06000000	MOVQ $0x6fc23ac00, DI							
  map.go:302		0xe1fc6f		e8ec4868ff		CALL time.Time.Add(SB)							
  map.go:302		0xe1fc74		488b942410020000	MOVQ 0x210(SP), DX							
  map.go:302		0xe1fc7c		488b7240		MOVQ 0x40(DX), SI							
  map.go:302		0xe1fc80		4889cf			MOVQ CX, DI								
  map.go:302		0xe1fc83		4889d9			MOVQ BX, CX								
  map.go:302		0xe1fc86		4889c3			MOVQ AX, BX								
  map.go:302		0xe1fc89		488b842418020000	MOVQ 0x218(SP), AX							
  map.go:302		0xe1fc91		ffd6			CALL SI									
  map.go:305		0xe1fc93		488d05062d2200		LEAQ runtime.types+383392(SB), AX					
  map.go:305		0xe1fc9a		bb10000000		MOVL $__major_os_version__+10(SB), BX					
  map.go:305		0xe1fc9f		4889d9			MOVQ BX, CX								
  map.go:305		0xe1fca2		e8b91e65ff		CALL runtime.makeslice(SB)						
  map.go:305		0xe1fca7		48898424a0000000	MOVQ AX, 0xa0(SP)							
  map.go:306		0xe1fcaf		488b8c2410020000	MOVQ 0x210(SP), CX							
  map.go:306		0xe1fcb7		660f1f840000000000	NOPW 0(AX)(AX*1)							
  map.go:306		0xe1fcc0		4885c9			TESTQ CX, CX								
  map.go:306		0xe1fcc3		0f84d5000000		JE 0xe1fd9e								
  map.go:306		0xe1fcc9		488b5908		MOVQ 0x8(CX), BX							
  map.go:306		0xe1fccd		488b155cbe1900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.46(SB), DX			
  map.go:306		0xe1fcd4		4c8b0a			MOVQ 0(DX), R9								
  map.go:306		0xe1fcd7		448b5110		MOVL 0x10(CX), R10							
  map.go:306		0xe1fcdb		0f1f440000		NOPL 0(AX)(AX*1)							
  map.go:306		0xe1fce0		e9b7060000		JMP 0xe2039c								
  map.go:295		0xe1fce5		440f11bc24e8010000	MOVUPS X15, 0x1e8(SP)							
  map.go:295		0xe1fcee		7404			JE 0xe1fcf4								
  map.go:295		0xe1fcf0		488b5b08		MOVQ 0x8(BX), BX							
  map.go:295		0xe1fcf4		48899c24e8010000	MOVQ BX, 0x1e8(SP)							
  map.go:295		0xe1fcfc		48898c24f0010000	MOVQ CX, 0x1f0(SP)							
  map.go:295		0xe1fd04		488d058d983600		LEAQ go:string.*+135312(SB), AX						
  map.go:295		0xe1fd0b		bb1c000000		MOVL $__major_os_version__+22(SB), BX					
  map.go:295		0xe1fd10		488d8c24e8010000	LEAQ 0x1e8(SP), CX							
  map.go:295		0xe1fd18		bf01000000		MOVL $__minor_os_version__(SB), DI					
  map.go:295		0xe1fd1d		4889fe			MOVQ DI, SI								
  map.go:295		0xe1fd20		e89bc66fff		CALL fmt.Errorf(SB)							
  map.go:295		0xe1fd25		4881c400020000		ADDQ $__file_alignment__(SB), SP					
  map.go:295		0xe1fd2c		5d			POPQ BP									
  map.go:295		0xe1fd2d		c3			RET									
  map.go:256		0xe1fd2e		440f11bc24e8010000	MOVUPS X15, 0x1e8(SP)							
  map.go:256		0xe1fd37		e864a364ff		CALL runtime.convT64(SB)						
  map.go:256		0xe1fd3c		488d0d1d2e2200		LEAQ runtime.types+383840(SB), CX					
  map.go:256		0xe1fd43		48898c24e8010000	MOVQ CX, 0x1e8(SP)							
  map.go:256		0xe1fd4b		48898424f0010000	MOVQ AX, 0x1f0(SP)							
  map.go:256		0xe1fd53		488d0522983600		LEAQ go:string.*+135284(SB), AX						
  map.go:256		0xe1fd5a		bb1c000000		MOVL $__major_os_version__+22(SB), BX					
  map.go:256		0xe1fd5f		488d8c24e8010000	LEAQ 0x1e8(SP), CX							
  map.go:256		0xe1fd67		bf01000000		MOVL $__minor_os_version__(SB), DI					
  map.go:256		0xe1fd6c		4889fe			MOVQ DI, SI								
  map.go:256		0xe1fd6f		e84cc66fff		CALL fmt.Errorf(SB)							
  map.go:256		0xe1fd74		4881c400020000		ADDQ $__file_alignment__(SB), SP					
  map.go:256		0xe1fd7b		5d			POPQ BP									
  map.go:256		0xe1fd7c		c3			RET									
  map.go:247		0xe1fd7d		488d05c52f3700		LEAQ go:string.*+174145(SB), AX						
  map.go:247		0xe1fd84		bb25000000		MOVL $__major_os_version__+31(SB), BX					
  map.go:247		0xe1fd89		31c9			XORL CX, CX								
  map.go:247		0xe1fd8b		31ff			XORL DI, DI								
  map.go:247		0xe1fd8d		4889fe			MOVQ DI, SI								
  map.go:247		0xe1fd90		e82bc66fff		CALL fmt.Errorf(SB)							
  map.go:247		0xe1fd95		4881c400020000		ADDQ $__file_alignment__(SB), SP					
  map.go:247		0xe1fd9c		5d			POPQ BP									
  map.go:247		0xe1fd9d		c3			RET									
  io.go:354		0xe1fd9e		488b9c2418020000	MOVQ 0x218(SP), BX							
  io.go:354		0xe1fda6		bf10000000		MOVL $__major_os_version__+10(SB), DI					
  io.go:354		0xe1fdab		4889fe			MOVQ DI, SI								
  io.go:354		0xe1fdae		4989f0			MOVQ SI, R8								
  map.go:305		0xe1fdb1		4889c2			MOVQ AX, DX								
  io.go:354		0xe1fdb4		4889c8			MOVQ CX, AX								
  io.go:354		0xe1fdb7		4889d1			MOVQ DX, CX								
  io.go:354		0xe1fdba		e8412e69ff		CALL io.ReadAtLeast(SB)							
  io.go:354		0xe1fdbf		90			NOPL									
  map.go:307		0xe1fdc0		4885db			TESTQ BX, BX								
  map.go:307		0xe1fdc3		0f857d010000		JNE 0xe1ff46								
  map.go:313		0xe1fdc9		488b8c24a0000000	MOVQ 0xa0(SP), CX							
  map.go:313		0xe1fdd1		0fb711			MOVZX 0(CX), DX								
  map.go:312		0xe1fdd4		440f117c2438		MOVUPS X15, 0x38(SP)							
  map.go:312		0xe1fdda		6689542438		MOVW DX, 0x38(SP)							
  map.go:319		0xe1fddf		488d510a		LEAQ 0xa(CX), DX							
  binary.go:147		0xe1fde3		0fb75902		MOVZX 0x2(CX), BX							
  binary.go:147		0xe1fde7		66c1c308		ROLW $__major_os_version__+2(SB), BX					
  map.go:316		0xe1fdeb		66895c243a		MOVW BX, 0x3a(SP)							
  binary.go:165		0xe1fdf0		8b5904			MOVL 0x4(CX), BX							
  binary.go:165		0xe1fdf3		0fcb			BSWAP BX								
  map.go:317		0xe1fdf5		895c243c		MOVL BX, 0x3c(SP)							
  binary.go:147		0xe1fdf9		0fb75908		MOVZX 0x8(CX), BX							
  binary.go:147		0xe1fdfd		66c1c308		ROLW $__major_os_version__+2(SB), BX					
  map.go:318		0xe1fe01		66895c2440		MOVW BX, 0x40(SP)							
  map.go:319		0xe1fe06		488d5c2442		LEAQ 0x42(SP), BX							
  map.go:319		0xe1fe0b		4839d3			CMPQ BX, DX								
  map.go:319		0xe1fe0e		7410			JE 0xe1fe20								
  map.go:319		0xe1fe10		8b510a			MOVL 0xa(CX), DX							
  map.go:319		0xe1fe13		0fb7490e		MOVZX 0xe(CX), CX							
  map.go:319		0xe1fe17		89542442		MOVL DX, 0x42(SP)							
  map.go:319		0xe1fe1b		66894c2446		MOVW CX, 0x46(SP)							
  map.go:321		0xe1fe20		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)							
  map.go:321		0xe1fe29		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)							
  map.go:321		0xe1fe32		440f11bc2408010000	MOVUPS X15, 0x108(SP)							
  map.go:322		0xe1fe3b		0fb7442440		MOVZX 0x40(SP), AX							
  map.go:322		0xe1fe40		e85bf35eff		CALL runtime.convT16(SB)						
  map.go:322		0xe1fe45		488d0dd42b2200		LEAQ runtime.types+383520(SB), CX					
  map.go:322		0xe1fe4c		48898c24e8000000	MOVQ CX, 0xe8(SP)							
  map.go:322		0xe1fe54		48898424f0000000	MOVQ AX, 0xf0(SP)							
  map.go:322		0xe1fe5c		8b44243c		MOVL 0x3c(SP), AX							
  map.go:322		0xe1fe60		e8bbf35eff		CALL runtime.convT32(SB)						
  map.go:322		0xe1fe65		488d0d342c2200		LEAQ runtime.types+383648(SB), CX					
  map.go:322		0xe1fe6c		48898c24f8000000	MOVQ CX, 0xf8(SP)							
  map.go:322		0xe1fe74		4889842400010000	MOVQ AX, 0x100(SP)							
  map.go:322		0xe1fe7c		0fb744243a		MOVZX 0x3a(SP), AX							
  map.go:322		0xe1fe81		e81af35eff		CALL runtime.convT16(SB)						
  map.go:322		0xe1fe86		488d0d932b2200		LEAQ runtime.types+383520(SB), CX					
  map.go:322		0xe1fe8d		48898c2408010000	MOVQ CX, 0x108(SP)							
  map.go:322		0xe1fe95		4889842410010000	MOVQ AX, 0x110(SP)							
  print.go:233		0xe1fe9d		488b1ddc216f02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe1fea4		488d0535bc0402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe1feab		488d0d27fd3700		LEAQ go:string.*+227025(SB), CX						
  print.go:233		0xe1feb2		bf36000000		MOVL $__major_os_version__+48(SB), DI					
  print.go:233		0xe1feb7		488db424e8000000	LEAQ 0xe8(SP), SI							
  print.go:233		0xe1febf		41b803000000		MOVL $__subsystem__(SB), R8						
  print.go:233		0xe1fec5		4d89c1			MOVQ R8, R9								
  print.go:233		0xe1fec8		e853f36fff		CALL fmt.Fprintf(SB)							
  map.go:331		0xe1fecd		8b4c243c		MOVL 0x3c(SP), CX							
  map.go:331		0xe1fed1		85c9			TESTL CX, CX								
  map.go:331		0xe1fed3		7650			JBE 0xe1ff25								
  map.go:332		0xe1fed5		488d05c42a2200		LEAQ runtime.types+383392(SB), AX					
  map.go:332		0xe1fedc		89cb			MOVL CX, BX								
  map.go:332		0xe1fede		6690			NOPW									
  map.go:332		0xe1fee0		e87b1c65ff		CALL runtime.makeslice(SB)						
  map.go:332		0xe1fee5		48898424a0000000	MOVQ AX, 0xa0(SP)							
  map.go:332		0xe1feed		448b44243c		MOVL 0x3c(SP), R8							
  map.go:332		0xe1fef2		4c89842488000000	MOVQ R8, 0x88(SP)							
  map.go:306		0xe1fefa		488b942410020000	MOVQ 0x210(SP), DX							
  map.go:306		0xe1ff02		4885d2			TESTQ DX, DX								
  map.go:333		0xe1ff05		0f84a9000000		JE 0xe1ffb4								
  map.go:333		0xe1ff0b		488b5a08		MOVQ 0x8(DX), BX							
  map.go:333		0xe1ff0f		4c8b0d3abc1900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.47(SB), R9			
  map.go:333		0xe1ff16		4d8b11			MOVQ 0(R9), R10								
  map.go:333		0xe1ff19		8b5210			MOVL 0x10(DX), DX							
  map.go:333		0xe1ff1c		0f1f4000		NOPL 0(AX)								
  map.go:333		0xe1ff20		e927040000		JMP 0xe2034c								
  map.go:365		0xe1ff25		488d05bfcc3700		LEAQ go:string.*+214755(SB), AX						
  map.go:365		0xe1ff2c		bb31000000		MOVL $__major_os_version__+43(SB), BX					
  map.go:365		0xe1ff31		31c9			XORL CX, CX								
  map.go:365		0xe1ff33		31ff			XORL DI, DI								
  map.go:365		0xe1ff35		4889fe			MOVQ DI, SI								
  map.go:365		0xe1ff38		e883c46fff		CALL fmt.Errorf(SB)							
  map.go:365		0xe1ff3d		4881c400020000		ADDQ $__file_alignment__(SB), SP					
  map.go:365		0xe1ff44		5d			POPQ BP									
  map.go:365		0xe1ff45		c3			RET									
  map.go:308		0xe1ff46		440f11bc24c8010000	MOVUPS X15, 0x1c8(SP)							
  map.go:308		0xe1ff4f		440f11bc24d8010000	MOVUPS X15, 0x1d8(SP)							
  map.go:308		0xe1ff58		7404			JE 0xe1ff5e								
  map.go:308		0xe1ff5a		488b5b08		MOVQ 0x8(BX), BX							
  map.go:308		0xe1ff5e		48899c24c8010000	MOVQ BX, 0x1c8(SP)							
  map.go:308		0xe1ff66		48898c24d0010000	MOVQ CX, 0x1d0(SP)							
  map.go:308		0xe1ff6e		e82da164ff		CALL runtime.convT64(SB)						
  map.go:308		0xe1ff73		488d0de62b2200		LEAQ runtime.types+383840(SB), CX					
  map.go:308		0xe1ff7a		48898c24d8010000	MOVQ CX, 0x1d8(SP)							
  map.go:308		0xe1ff82		48898424e0010000	MOVQ AX, 0x1e0(SP)							
  map.go:308		0xe1ff8a		488d05b7a93700		LEAQ go:string.*+205888(SB), AX						
  map.go:308		0xe1ff91		bb2e000000		MOVL $__major_os_version__+40(SB), BX					
  map.go:308		0xe1ff96		488d8c24c8010000	LEAQ 0x1c8(SP), CX							
  map.go:308		0xe1ff9e		bf02000000		MOVL $__minor_os_version__+1(SB), DI					
  map.go:308		0xe1ffa3		4889fe			MOVQ DI, SI								
  map.go:308		0xe1ffa6		e815c46fff		CALL fmt.Errorf(SB)							
  map.go:308		0xe1ffab		4881c400020000		ADDQ $__file_alignment__(SB), SP					
  map.go:308		0xe1ffb2		5d			POPQ BP									
  map.go:308		0xe1ffb3		c3			RET									
  io.go:354		0xe1ffb4		488b9c2418020000	MOVQ 0x218(SP), BX							
  io.go:354		0xe1ffbc		4889c1			MOVQ AX, CX								
  io.go:354		0xe1ffbf		4c89c7			MOVQ R8, DI								
  io.go:354		0xe1ffc2		4889fe			MOVQ DI, SI								
  io.go:354		0xe1ffc5		4889d0			MOVQ DX, AX								
  io.go:354		0xe1ffc8		e8332c69ff		CALL io.ReadAtLeast(SB)							
  map.go:334		0xe1ffcd		4885db			TESTQ BX, BX								
  map.go:334		0xe1ffd0		746f			JE 0xe20041								
  map.go:335		0xe1ffd2		440f11bc24c8010000	MOVUPS X15, 0x1c8(SP)							
  map.go:335		0xe1ffdb		440f11bc24d8010000	MOVUPS X15, 0x1d8(SP)							
  map.go:335		0xe1ffe4		7404			JE 0xe1ffea								
  map.go:335		0xe1ffe6		488b5b08		MOVQ 0x8(BX), BX							
  map.go:335		0xe1ffea		48899c24c8010000	MOVQ BX, 0x1c8(SP)							
  map.go:335		0xe1fff2		48898c24d0010000	MOVQ CX, 0x1d0(SP)							
  map.go:335		0xe1fffa		e8a1a064ff		CALL runtime.convT64(SB)						
  map.go:335		0xe1ffff		488d0d5a2b2200		LEAQ runtime.types+383840(SB), CX					
  map.go:335		0xe20006		48898c24d8010000	MOVQ CX, 0x1d8(SP)							
  map.go:335		0xe2000e		48898424e0010000	MOVQ AX, 0x1e0(SP)							
  map.go:335		0xe20016		488d059dcb3700		LEAQ go:string.*+214706(SB), AX						
  map.go:335		0xe2001d		bb31000000		MOVL $__major_os_version__+43(SB), BX					
  map.go:335		0xe20022		488d8c24c8010000	LEAQ 0x1c8(SP), CX							
  map.go:335		0xe2002a		bf02000000		MOVL $__minor_os_version__+1(SB), DI					
  map.go:335		0xe2002f		4889fe			MOVQ DI, SI								
  map.go:335		0xe20032		e889c36fff		CALL fmt.Errorf(SB)							
  map.go:335		0xe20037		4881c400020000		ADDQ $__file_alignment__(SB), SP					
  map.go:335		0xe2003e		5d			POPQ BP									
  map.go:335		0xe2003f		90			NOPL									
  map.go:335		0xe20040		c3			RET									
  map.go:339		0xe20041		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)							
  map.go:339		0xe2004a		31c0			XORL AX, AX								
  map.go:339		0xe2004c		488b9c24a0000000	MOVQ 0xa0(SP), BX							
  map.go:339		0xe20054		488b8c2488000000	MOVQ 0x88(SP), CX							
  map.go:339		0xe2005c		0f1f4000		NOPL 0(AX)								
  map.go:339		0xe20060		e81b2665ff		CALL runtime.slicebytetostring(SB)					
  map.go:339		0xe20065		e8b6a064ff		CALL runtime.convTstring(SB)						
  map.go:339		0xe2006a		488d15af282200		LEAQ runtime.types+383264(SB), DX					
  map.go:339		0xe20071		48899424d8000000	MOVQ DX, 0xd8(SP)							
  map.go:339		0xe20079		48898424e0000000	MOVQ AX, 0xe0(SP)							
  print.go:233		0xe20081		488b1df81f6f02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe20088		488d0551ba0402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe2008f		488d0dbd3b3600		LEAQ go:string.*+112459(SB), CX						
  print.go:233		0xe20096		bf17000000		MOVL $__major_os_version__+17(SB), DI					
  print.go:233		0xe2009b		488db424d8000000	LEAQ 0xd8(SP), SI							
  print.go:233		0xe200a3		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe200a9		4d89c1			MOVQ R8, R9								
  print.go:233		0xe200ac		e86ff16fff		CALL fmt.Fprintf(SB)							
  map.go:342		0xe200b1		90			NOPL									
  bytes.go:97		0xe200b2		488b9424a0000000	MOVQ 0xa0(SP), DX							
  bytes.go:97		0xe200ba		48891424		MOVQ DX, 0(SP)								
  bytes.go:97		0xe200be		488bb42488000000	MOVQ 0x88(SP), SI							
  bytes.go:97		0xe200c6		4889742408		MOVQ SI, 0x8(SP)							
  bytes.go:97		0xe200cb		4889742410		MOVQ SI, 0x10(SP)							
  bytes.go:97		0xe200d0		c644241800		MOVB $0x0, 0x18(SP)							
  bytes.go:97		0xe200d5		e8a6325eff		CALL internal/bytealg.IndexByte.abi0(SB)				
  bytes.go:97		0xe200da		450f57ff		XORPS X15, X15								
  bytes.go:97		0xe200de		4c8b352bd77302		MOVQ runtime.tls_g(SB), R14						
  bytes.go:97		0xe200e5		654d8b36		MOVQ GS:0(R14), R14							
  bytes.go:97		0xe200e9		4d8b36			MOVQ 0(R14), R14							
  bytes.go:97		0xe200ec		488b4c2420		MOVQ 0x20(SP), CX							
  map.go:343		0xe200f1		4883f9ff		CMPQ CX, $-0x1								
  map.go:348		0xe200f5		488b942488000000	MOVQ 0x88(SP), DX							
  map.go:348		0xe200fd		480f44ca		CMOVE DX, CX								
  map.go:348		0xe20101		4839ca			CMPQ DX, CX								
  map.go:343		0xe20104		0f823d020000		JB 0xe20347								
  map.go:348		0xe2010a		48894c2470		MOVQ CX, 0x70(SP)							
  map.go:349		0xe2010f		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)							
  map.go:349		0xe20118		31c0			XORL AX, AX								
  map.go:349		0xe2011a		488b9c24a0000000	MOVQ 0xa0(SP), BX							
  map.go:349		0xe20122		e8592565ff		CALL runtime.slicebytetostring(SB)					
  map.go:349		0xe20127		e8f49f64ff		CALL runtime.convTstring(SB)						
  map.go:349		0xe2012c		488d15ed272200		LEAQ runtime.types+383264(SB), DX					
  map.go:349		0xe20133		48899424c8000000	MOVQ DX, 0xc8(SP)							
  map.go:349		0xe2013b		48898424d0000000	MOVQ AX, 0xd0(SP)							
  print.go:233		0xe20143		488b1d361f6f02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe2014a		488d058fb90402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe20151		488d0dca163600		LEAQ go:string.*+103194(SB), CX						
  print.go:233		0xe20158		bf15000000		MOVL $__major_os_version__+15(SB), DI					
  print.go:233		0xe2015d		488db424c8000000	LEAQ 0xc8(SP), SI							
  print.go:233		0xe20165		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe2016b		4d89c1			MOVQ R8, R9								
  print.go:233		0xe2016e		e8adf06fff		CALL fmt.Fprintf(SB)							
  map.go:352		0xe20173		488d05865d2b00		LEAQ runtime.types+986880(SB), AX					
  map.go:352		0xe2017a		e821165fff		CALL runtime.newobject(SB)						
  map.go:352		0xe2017f		48898424f8010000	MOVQ AX, 0x1f8(SP)							
  map.go:353		0xe20187		488b5c2470		MOVQ 0x70(SP), BX							
  map.go:353		0xe2018c		488b8c2488000000	MOVQ 0x88(SP), CX							
  map.go:353		0xe20194		488d3dc56a2000		LEAQ runtime.types+269408(SB), DI					
  map.go:353		0xe2019b		4889c6			MOVQ AX, SI								
  map.go:353		0xe2019e		488b8424a0000000	MOVQ 0xa0(SP), AX							
  map.go:353		0xe201a6		e8357374ff		CALL encoding/json.Unmarshal(SB)					
  map.go:354		0xe201ab		4885c0			TESTQ AX, AX								
  map.go:354		0xe201ae		0f8482000000		JE 0xe20236								
  map.go:355		0xe201b4		440f11bc24c8010000	MOVUPS X15, 0x1c8(SP)							
  map.go:355		0xe201bd		440f11bc24d8010000	MOVUPS X15, 0x1d8(SP)							
  map.go:355		0xe201c6		7404			JE 0xe201cc								
  map.go:355		0xe201c8		488b4008		MOVQ 0x8(AX), AX							
  map.go:355		0xe201cc		48898424c8010000	MOVQ AX, 0x1c8(SP)							
  map.go:355		0xe201d4		48899c24d0010000	MOVQ BX, 0x1d0(SP)							
  map.go:355		0xe201dc		31c0			XORL AX, AX								
  map.go:355		0xe201de		488b9c24a0000000	MOVQ 0xa0(SP), BX							
  map.go:355		0xe201e6		488b4c2470		MOVQ 0x70(SP), CX							
  map.go:355		0xe201eb		e8902465ff		CALL runtime.slicebytetostring(SB)					
  map.go:355		0xe201f0		e82b9f64ff		CALL runtime.convTstring(SB)						
  map.go:355		0xe201f5		488d1524272200		LEAQ runtime.types+383264(SB), DX					
  map.go:355		0xe201fc		48899424d8010000	MOVQ DX, 0x1d8(SP)							
  map.go:355		0xe20204		48898424e0010000	MOVQ AX, 0x1e0(SP)							
  map.go:355		0xe2020c		488d05363c3700		LEAQ go:string.*+178497(SB), AX						
  map.go:355		0xe20213		bb26000000		MOVL $__major_os_version__+32(SB), BX					
  map.go:355		0xe20218		488d8c24c8010000	LEAQ 0x1c8(SP), CX							
  map.go:355		0xe20220		bf02000000		MOVL $__minor_os_version__+1(SB), DI					
  map.go:355		0xe20225		4889fe			MOVQ DI, SI								
  map.go:355		0xe20228		e893c16fff		CALL fmt.Errorf(SB)							
  map.go:355		0xe2022d		4881c400020000		ADDQ $__file_alignment__(SB), SP					
  map.go:355		0xe20234		5d			POPQ BP									
  map.go:355		0xe20235		c3			RET									
  map.go:359		0xe20236		488b8c24f8010000	MOVQ 0x1f8(SP), CX							
  map.go:359		0xe2023e		4883792000		CMPQ 0x20(CX), $0x0							
  map.go:359		0xe20243		7457			JE 0xe2029c								
  map.go:360		0xe20245		440f11bc24e8010000	MOVUPS X15, 0x1e8(SP)							
  map.go:360		0xe2024e		488b4118		MOVQ 0x18(CX), AX							
  map.go:360		0xe20252		488b5920		MOVQ 0x20(CX), BX							
  map.go:360		0xe20256		e8c59e64ff		CALL runtime.convTstring(SB)						
  map.go:360		0xe2025b		488d0dbe262200		LEAQ runtime.types+383264(SB), CX					
  map.go:360		0xe20262		48898c24e8010000	MOVQ CX, 0x1e8(SP)							
  map.go:360		0xe2026a		48898424f0010000	MOVQ AX, 0x1f0(SP)							
  map.go:360		0xe20272		488d05423c3700		LEAQ go:string.*+178611(SB), AX						
  map.go:360		0xe20279		bb26000000		MOVL $__major_os_version__+32(SB), BX					
  map.go:360		0xe2027e		488d8c24e8010000	LEAQ 0x1e8(SP), CX							
  map.go:360		0xe20286		bf01000000		MOVL $__minor_os_version__(SB), DI					
  map.go:360		0xe2028b		4889fe			MOVQ DI, SI								
  map.go:360		0xe2028e		e82dc16fff		CALL fmt.Errorf(SB)							
  map.go:360		0xe20293		4881c400020000		ADDQ $__file_alignment__(SB), SP					
  map.go:360		0xe2029a		5d			POPQ BP									
  map.go:360		0xe2029b		c3			RET									
  map.go:363		0xe2029c		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)							
  map.go:363		0xe202a5		488b4108		MOVQ 0x8(CX), AX							
  map.go:363		0xe202a9		488b5910		MOVQ 0x10(CX), BX							
  map.go:363		0xe202ad		e86e9e64ff		CALL runtime.convTstring(SB)						
  map.go:363		0xe202b2		488d0d67262200		LEAQ runtime.types+383264(SB), CX					
  map.go:363		0xe202b9		48898c24b8000000	MOVQ CX, 0xb8(SP)							
  map.go:363		0xe202c1		48898424c0000000	MOVQ AX, 0xc0(SP)							
  print.go:233		0xe202c9		488b1db01d6f02		MOVQ os.Stdout(SB), BX							
  print.go:233		0xe202d0		488d0509b80402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:233		0xe202d7		bf26000000		MOVL $__major_os_version__+32(SB), DI					
  print.go:233		0xe202dc		488db424b8000000	LEAQ 0xb8(SP), SI							
  print.go:233		0xe202e4		41b801000000		MOVL $__minor_os_version__(SB), R8					
  print.go:233		0xe202ea		4d89c1			MOVQ R8, R9								
  print.go:233		0xe202ed		488d0ded3b3700		LEAQ go:string.*+178649(SB), CX						
  print.go:233		0xe202f4		e827ef6fff		CALL fmt.Fprintf(SB)							
  map.go:368		0xe202f9		488d0d20262200		LEAQ runtime.types+383264(SB), CX					
  map.go:368		0xe20300		48898c24a8000000	MOVQ CX, 0xa8(SP)							
  map.go:368		0xe20308		488d0dc18d0402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_51(SB), CX			
  map.go:368		0xe2030f		48898c24b0000000	MOVQ CX, 0xb0(SP)							
  print.go:314		0xe20317		488b1d621d6f02		MOVQ os.Stdout(SB), BX							
  print.go:314		0xe2031e		488d05bbb70402		LEAQ go:itab.*os.File,io.Writer(SB), AX					
  print.go:314		0xe20325		488d8c24a8000000	LEAQ 0xa8(SP), CX							
  print.go:314		0xe2032d		bf01000000		MOVL $__minor_os_version__(SB), DI					
  print.go:314		0xe20332		4889fe			MOVQ DI, SI								
  print.go:314		0xe20335		e826f56fff		CALL fmt.Fprintln(SB)							
  map.go:369		0xe2033a		31c0			XORL AX, AX								
  map.go:369		0xe2033c		31db			XORL BX, BX								
  map.go:369		0xe2033e		4881c400020000		ADDQ $__file_alignment__(SB), SP					
  map.go:369		0xe20345		5d			POPQ BP									
  map.go:369		0xe20346		c3			RET									
  map.go:348		0xe20347		e8148565ff		CALL runtime.panicSliceAcap(SB)						
  map.go:333		0xe2034c		4989d3			MOVQ DX, R11								
  map.go:333		0xe2034f		4c21d2			ANDQ R10, DX								
  map.go:333		0xe20352		48c1e204		SHLQ $__subsystem__+1(SB), DX						
  map.go:333		0xe20356		4d8b641108		MOVQ 0x8(R9)(DX*1), R12							
  map.go:333		0xe2035b		0f1f440000		NOPL 0(AX)(AX*1)							
  map.go:333		0xe20360		4939dc			CMPQ R12, BX								
  map.go:333		0xe20363		742d			JE 0xe20392								
  map.go:333		0xe20365		498d5301		LEAQ 0x1(R11), DX							
  map.go:333		0xe20369		4d85e4			TESTQ R12, R12								
  map.go:333		0xe2036c		75de			JNE 0xe2034c								
  map.go:333		0xe2036e		488d05dbb71900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.47(SB), AX			
  map.go:333		0xe20375		e866ef5eff		CALL runtime.typeAssert(SB)						
  io.go:354		0xe2037a		4c8b842488000000	MOVQ 0x88(SP), R8							
  map.go:333		0xe20382		4889c2			MOVQ AX, DX								
  io.go:354		0xe20385		488b8424a0000000	MOVQ 0xa0(SP), AX							
  map.go:333		0xe2038d		e922fcffff		JMP 0xe1ffb4								
  map.go:333		0xe20392		498b541110		MOVQ 0x10(R9)(DX*1), DX							
  map.go:333		0xe20397		e918fcffff		JMP 0xe1ffb4								
  map.go:306		0xe2039c		4d89d3			MOVQ R10, R11								
  map.go:306		0xe2039f		4d21ca			ANDQ R9, R10								
  map.go:306		0xe203a2		49c1e204		SHLQ $__subsystem__+1(SB), R10						
  map.go:306		0xe203a6		4e8b641208		MOVQ 0x8(DX)(R10*1), R12						
  map.go:306		0xe203ab		4939dc			CMPQ R12, BX								
  map.go:306		0xe203ae		7425			JE 0xe203d5								
  map.go:306		0xe203b0		4d8d5301		LEAQ 0x1(R11), R10							
  map.go:306		0xe203b4		4d85e4			TESTQ R12, R12								
  map.go:306		0xe203b7		75e3			JNE 0xe2039c								
  map.go:306		0xe203b9		488d0570b71900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.46(SB), AX			
  map.go:306		0xe203c0		e81bef5eff		CALL runtime.typeAssert(SB)						
  map.go:306		0xe203c5		4889c1			MOVQ AX, CX								
  io.go:354		0xe203c8		488b8424a0000000	MOVQ 0xa0(SP), AX							
  map.go:306		0xe203d0		e9c9f9ffff		JMP 0xe1fd9e								
  map.go:306		0xe203d5		4a8b541210		MOVQ 0x10(DX)(R10*1), DX						
  map.go:306		0xe203da		4889d1			MOVQ DX, CX								
  map.go:306		0xe203dd		0f1f00			NOPL 0(AX)								
  map.go:306		0xe203e0		e9b9f9ffff		JMP 0xe1fd9e								
  map.go:237		0xe203e5		4889442408		MOVQ AX, 0x8(SP)							
  map.go:237		0xe203ea		48895c2410		MOVQ BX, 0x10(SP)							
  map.go:237		0xe203ef		48894c2418		MOVQ CX, 0x18(SP)							
  map.go:237		0xe203f4		48897c2420		MOVQ DI, 0x20(SP)							
  map.go:237		0xe203f9		e8e26065ff		CALL runtime.morestack_noctxt.abi0(SB)					
  map.go:237		0xe203fe		488b442408		MOVQ 0x8(SP), AX							
  map.go:237		0xe20403		488b5c2410		MOVQ 0x10(SP), BX							
  map.go:237		0xe20408		488b4c2418		MOVQ 0x18(SP), CX							
  map.go:237		0xe2040d		488b7c2420		MOVQ 0x20(SP), DI							
  map.go:237		0xe20412		e909f3ffff		JMP CAS-Backend/pkg/agvcontrol.SendUploadAndLoadMapCommand(SB)		
  :-1			0xe20417		cc			INT $__subsystem__(SB)							
  :-1			0xe20418		cc			INT $__subsystem__(SB)							
  :-1			0xe20419		cc			INT $__subsystem__(SB)							
  :-1			0xe2041a		cc			INT $__subsystem__(SB)							
  :-1			0xe2041b		cc			INT $__subsystem__(SB)							
  :-1			0xe2041c		cc			INT $__subsystem__(SB)							
  :-1			0xe2041d		cc			INT $__subsystem__(SB)							
  :-1			0xe2041e		cc			INT $__subsystem__(SB)							
  :-1			0xe2041f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/agvcontrol.LoadMapRequest(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/map.go
  map.go:391		0xe20420		4c8d642480		LEAQ -0x80(SP), R12								
  map.go:391		0xe20425		4d3b6610		CMPQ R12, 0x10(R14)								
  map.go:391		0xe20429		0f8611070000		JBE 0xe20b40									
  map.go:391		0xe2042f		55			PUSHQ BP									
  map.go:391		0xe20430		4889e5			MOVQ SP, BP									
  map.go:391		0xe20433		4881ecf8000000		SUBQ $.file+171(SB), SP								
  map.go:391		0xe2043a		48898c2418010000	MOVQ CX, 0x118(SP)								
  map.go:399		0xe20442		4889842408010000	MOVQ AX, 0x108(SP)								
  map.go:399		0xe2044a		48899c2410010000	MOVQ BX, 0x110(SP)								
  map.go:398		0xe20452		48898c24a8000000	MOVQ CX, 0xa8(SP)								
  map.go:398		0xe2045a		4889bc24b0000000	MOVQ DI, 0xb0(SP)								
  map.go:398		0xe20462		488b8c24a8000000	MOVQ 0xa8(SP), CX								
  map.go:398		0xe2046a		4889c8			MOVQ CX, AX									
  map.go:398		0xe2046d		4889fb			MOVQ DI, BX									
  map.go:398		0xe20470		e8ab9c64ff		CALL runtime.convTstring(SB)							
  map.go:398		0xe20475		4889c3			MOVQ AX, BX									
  map.go:398		0xe20478		488d0581442800		LEAQ runtime.types+784640(SB), AX						
  map.go:398		0xe2047f		90			NOPL										
  map.go:398		0xe20480		e81bd074ff		CALL encoding/json.Marshal(SB)							
  map.go:399		0xe20485		4885ff			TESTQ DI, DI									
  map.go:399		0xe20488		7451			JE 0xe204db									
  map.go:400		0xe2048a		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:400		0xe20493		7404			JE 0xe20499									
  map.go:400		0xe20495		488b7f08		MOVQ 0x8(DI), DI								
  map.go:400		0xe20499		4889bc24d8000000	MOVQ DI, 0xd8(SP)								
  map.go:400		0xe204a1		4889b424e0000000	MOVQ SI, 0xe0(SP)								
  map.go:400		0xe204a9		488d05eb363600		LEAQ go:string.*+112275(SB), AX							
  map.go:400		0xe204b0		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  map.go:400		0xe204b5		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:400		0xe204bd		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:400		0xe204c2		4889fe			MOVQ DI, SI									
  map.go:400		0xe204c5		e8f6be6fff		CALL fmt.Errorf(SB)								
  map.go:400		0xe204ca		4889d9			MOVQ BX, CX									
  map.go:400		0xe204cd		4889c3			MOVQ AX, BX									
  map.go:400		0xe204d0		31c0			XORL AX, AX									
  map.go:400		0xe204d2		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:400		0xe204d9		5d			POPQ BP										
  map.go:400		0xe204da		c3			RET										
  map.go:398		0xe204db		48894c2470		MOVQ CX, 0x70(SP)								
  map.go:398		0xe204e0		48895c2468		MOVQ BX, 0x68(SP)								
  map.go:398		0xe204e5		4889842488000000	MOVQ AX, 0x88(SP)								
  map.go:410		0xe204ed		48c74424405a010100	MOVQ $__dll_characteristics__+32762(SB), 0x40(SP)				
  map.go:410		0xe204f6		48c7442448e6070000	MOVQ $__file_alignment__+1510(SB), 0x48(SP)					
  map.go:408		0xe204ff		895c2444		MOVL BX, 0x44(SP)								
  map.go:414		0xe20503		488d05f67d2b00		LEAQ runtime.types+996096(SB), AX						
  map.go:414		0xe2050a		e891125fff		CALL runtime.newobject(SB)							
  map.go:414		0xe2050f		48898424f0000000	MOVQ AX, 0xf0(SP)								
  map.go:415		0xe20517		0f10442440		MOVUPS 0x40(SP), X0								
  map.go:415		0xe2051c		0f11442450		MOVUPS X0, 0x50(SP)								
  map.go:415		0xe20521		4889c3			MOVQ AX, BX									
  map.go:415		0xe20524		488d0d156a0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  map.go:415		0xe2052b		488d3d6ecd7302		LEAQ unicode..stmp_365(SB), DI							
  map.go:415		0xe20532		488d3587e32e00		LEAQ runtime.types+1218752(SB), SI						
  map.go:415		0xe20539		4c8d442450		LEAQ 0x50(SP), R8								
  map.go:415		0xe2053e		488d051bcb0402		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  map.go:415		0xe20545		e8d61b74ff		CALL encoding/binary.Write(SB)							
  map.go:416		0xe2054a		4885c0			TESTQ AX, AX									
  map.go:416		0xe2054d		7452			JE 0xe205a1									
  map.go:417		0xe2054f		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:417		0xe20558		7404			JE 0xe2055e									
  map.go:417		0xe2055a		488b4008		MOVQ 0x8(AX), AX								
  map.go:417		0xe2055e		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:417		0xe20566		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  map.go:417		0xe2056e		488d052b8e3600		LEAQ go:string.*+134808(SB), AX							
  map.go:417		0xe20575		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  map.go:417		0xe2057a		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:417		0xe20582		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:417		0xe20587		4889fe			MOVQ DI, SI									
  map.go:417		0xe2058a		e831be6fff		CALL fmt.Errorf(SB)								
  map.go:417		0xe2058f		4889d9			MOVQ BX, CX									
  map.go:417		0xe20592		4889c3			MOVQ AX, BX									
  map.go:417		0xe20595		31c0			XORL AX, AX									
  map.go:417		0xe20597		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:417		0xe2059e		5d			POPQ BP										
  map.go:417		0xe2059f		90			NOPL										
  map.go:417		0xe205a0		c3			RET										
  map.go:419		0xe205a1		488b8424f0000000	MOVQ 0xf0(SP), AX								
  map.go:419		0xe205a9		488b9c2488000000	MOVQ 0x88(SP), BX								
  map.go:419		0xe205b1		488b4c2468		MOVQ 0x68(SP), CX								
  map.go:419		0xe205b6		488b7c2470		MOVQ 0x70(SP), DI								
  map.go:419		0xe205bb		0f1f440000		NOPL 0(AX)(AX*1)								
  map.go:419		0xe205c0		e85bbf70ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe205c5		488b9424f0000000	MOVQ 0xf0(SP), DX								
  buffer.go:54		0xe205cd		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe205d1		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe205d5		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe205d8		0f825c050000		JB 0xe20b3a									
  map.go:422		0xe205de		488bb42408010000	MOVQ 0x108(SP), SI								
  map.go:422		0xe205e6		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe205ea		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe205ed		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe205f1		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe205f4		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe205f7		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe205fa		48f7da			NEGQ DX										
  buffer.go:54		0xe205fd		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe20601		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe20604		498d1c01		LEAQ 0(R9)(AX*1), BX								
  map.go:422		0xe20608		488b842410010000	MOVQ 0x110(SP), AX								
  map.go:422		0xe20610		41ffd0			CALL R8										
  map.go:423		0xe20613		4885db			TESTQ BX, BX									
  map.go:423		0xe20616		7573			JNE 0xe2068b									
  map.go:428		0xe20618		e883da68ff		CALL time.Now(SB)								
  map.go:428		0xe2061d		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  map.go:428		0xe20627		e8343f68ff		CALL time.Time.Add(SB)								
  map.go:428		0xe2062c		488b942408010000	MOVQ 0x108(SP), DX								
  map.go:428		0xe20634		488b7240		MOVQ 0x40(DX), SI								
  map.go:428		0xe20638		4889cf			MOVQ CX, DI									
  map.go:428		0xe2063b		4889d9			MOVQ BX, CX									
  map.go:428		0xe2063e		4889c3			MOVQ AX, BX									
  map.go:428		0xe20641		488b842410010000	MOVQ 0x110(SP), AX								
  map.go:428		0xe20649		ffd6			CALL SI										
  map.go:431		0xe2064b		488d054e232200		LEAQ runtime.types+383392(SB), AX						
  map.go:431		0xe20652		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  map.go:431		0xe20657		4889d9			MOVQ BX, CX									
  map.go:431		0xe2065a		e8011565ff		CALL runtime.makeslice(SB)							
  map.go:431		0xe2065f		48898424e8000000	MOVQ AX, 0xe8(SP)								
  map.go:432		0xe20667		488b8c2408010000	MOVQ 0x108(SP), CX								
  map.go:432		0xe2066f		4885c9			TESTQ CX, CX									
  map.go:432		0xe20672		7468			JE 0xe206dc									
  map.go:432		0xe20674		488b5908		MOVQ 0x8(CX), BX								
  map.go:432		0xe20678		488b15f1b41900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.48(SB), DX				
  map.go:432		0xe2067f		4c8b0a			MOVQ 0(DX), R9									
  map.go:432		0xe20682		448b5110		MOVL 0x10(CX), R10								
  map.go:432		0xe20686		e969040000		JMP 0xe20af4									
  map.go:424		0xe2068b		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:424		0xe20694		7404			JE 0xe2069a									
  map.go:424		0xe20696		488b5b08		MOVQ 0x8(BX), BX								
  map.go:424		0xe2069a		48899c24d8000000	MOVQ BX, 0xd8(SP)								
  map.go:424		0xe206a2		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  map.go:424		0xe206aa		488d0513213600		LEAQ go:string.*+107196(SB), AX							
  map.go:424		0xe206b1		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  map.go:424		0xe206b6		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:424		0xe206be		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:424		0xe206c3		4889fe			MOVQ DI, SI									
  map.go:424		0xe206c6		e8f5bc6fff		CALL fmt.Errorf(SB)								
  map.go:424		0xe206cb		4889d9			MOVQ BX, CX									
  map.go:424		0xe206ce		4889c3			MOVQ AX, BX									
  map.go:424		0xe206d1		31c0			XORL AX, AX									
  map.go:424		0xe206d3		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:424		0xe206da		5d			POPQ BP										
  map.go:424		0xe206db		c3			RET										
  io.go:354		0xe206dc		488b9c2410010000	MOVQ 0x110(SP), BX								
  io.go:354		0xe206e4		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe206e9		4889fe			MOVQ DI, SI									
  io.go:354		0xe206ec		4989f0			MOVQ SI, R8									
  map.go:431		0xe206ef		4889c2			MOVQ AX, DX									
  io.go:354		0xe206f2		4889c8			MOVQ CX, AX									
  io.go:354		0xe206f5		4889d1			MOVQ DX, CX									
  io.go:354		0xe206f8		e8032569ff		CALL io.ReadAtLeast(SB)								
  io.go:354		0xe206fd		0f1f00			NOPL 0(AX)									
  map.go:433		0xe20700		4885db			TESTQ BX, BX									
  map.go:433		0xe20703		0f84f8000000		JE 0xe20801									
  map.go:435		0xe20709		48391db0661900		CMPQ io.EOF(SB), BX								
  map.go:435		0xe20710		7405			JE 0xe20717									
  map.go:433		0xe20712		4885db			TESTQ BX, BX									
  map.go:435		0xe20715		eb4b			JMP 0xe20762									
  io.go:354		0xe20717		4889442460		MOVQ AX, 0x60(SP)								
  io.go:354		0xe2071c		48898c2490000000	MOVQ CX, 0x90(SP)								
  io.go:354		0xe20724		48895c2478		MOVQ BX, 0x78(SP)								
  map.go:435		0xe20729		488b1598661900		MOVQ io.EOF+8(SB), DX								
  map.go:435		0xe20730		4889d8			MOVQ BX, AX									
  map.go:435		0xe20733		4889cb			MOVQ CX, BX									
  map.go:435		0xe20736		4889d1			MOVQ DX, CX									
  map.go:435		0xe20739		e8a27d5eff		CALL runtime.ifaceeq(SB)							
  map.go:435		0xe2073e		6690			NOPW										
  map.go:435		0xe20740		84c0			TESTL AL, AL									
  map.go:435		0xe20742		0f8590000000		JNE 0xe207d8									
  map.go:433		0xe20748		488b4c2478		MOVQ 0x78(SP), CX								
  map.go:433		0xe2074d		4885c9			TESTQ CX, CX									
  map.go:438		0xe20750		488b442460		MOVQ 0x60(SP), AX								
  map.go:438		0xe20755		488b8c2490000000	MOVQ 0x90(SP), CX								
  map.go:438		0xe2075d		488b5c2478		MOVQ 0x78(SP), BX								
  map.go:438		0xe20762		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  map.go:438		0xe2076b		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  map.go:438		0xe20774		7404			JE 0xe2077a									
  map.go:438		0xe20776		488b5b08		MOVQ 0x8(BX), BX								
  map.go:438		0xe2077a		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  map.go:438		0xe20782		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  map.go:438		0xe2078a		e8119964ff		CALL runtime.convT64(SB)							
  map.go:438		0xe2078f		488d0dca232200		LEAQ runtime.types+383840(SB), CX						
  map.go:438		0xe20796		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  map.go:438		0xe2079e		48898424d0000000	MOVQ AX, 0xd0(SP)								
  map.go:438		0xe207a6		488d05abc33700		LEAQ go:string.*+214608(SB), AX							
  map.go:438		0xe207ad		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  map.go:438		0xe207b2		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  map.go:438		0xe207ba		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  map.go:438		0xe207bf		4889fe			MOVQ DI, SI									
  map.go:438		0xe207c2		e8f9bb6fff		CALL fmt.Errorf(SB)								
  map.go:438		0xe207c7		4889d9			MOVQ BX, CX									
  map.go:438		0xe207ca		4889c3			MOVQ AX, BX									
  map.go:438		0xe207cd		31c0			XORL AX, AX									
  map.go:438		0xe207cf		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:438		0xe207d6		5d			POPQ BP										
  map.go:438		0xe207d7		c3			RET										
  map.go:436		0xe207d8		488d052e103600		LEAQ go:string.*+103173(SB), AX							
  map.go:436		0xe207df		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  map.go:436		0xe207e4		31c9			XORL CX, CX									
  map.go:436		0xe207e6		31ff			XORL DI, DI									
  map.go:436		0xe207e8		4889fe			MOVQ DI, SI									
  map.go:436		0xe207eb		e8d0bb6fff		CALL fmt.Errorf(SB)								
  map.go:436		0xe207f0		4889d9			MOVQ BX, CX									
  map.go:436		0xe207f3		4889c3			MOVQ AX, BX									
  map.go:436		0xe207f6		31c0			XORL AX, AX									
  map.go:436		0xe207f8		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:436		0xe207ff		5d			POPQ BP										
  map.go:436		0xe20800		c3			RET										
  map.go:442		0xe20801		440f117c2430		MOVUPS X15, 0x30(SP)								
  map.go:443		0xe20807		90			NOPL										
  reader.go:159		0xe20808		488d05b17b2b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe2080f		e88c0f5fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe20814		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe2081c		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe20824		833d25d3730200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe2082b		750a			JNE 0xe20837									
  reader.go:159		0xe2082d		488b9424e8000000	MOVQ 0xe8(SP), DX								
  reader.go:159		0xe20835		eb10			JMP 0xe20847									
  reader.go:159		0xe20837		e8e47b65ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe2083c		488b9424e8000000	MOVQ 0xe8(SP), DX								
  reader.go:159		0xe20844		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe20847		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe2084a		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe20852		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  map.go:444		0xe2085a		4889c3			MOVQ AX, BX									
  map.go:444		0xe2085d		488d0ddc660502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  map.go:444		0xe20864		488d3d35ca7302		LEAQ unicode..stmp_365(SB), DI							
  map.go:444		0xe2086b		488d35ae632000		LEAQ runtime.types+269344(SB), SI						
  map.go:444		0xe20872		4c8d442430		LEAQ 0x30(SP), R8								
  map.go:444		0xe20877		488d0562c20402		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  map.go:444		0xe2087e		6690			NOPW										
  map.go:444		0xe20880		e8bb0974ff		CALL encoding/binary.Read(SB)							
  map.go:445		0xe20885		4885c0			TESTQ AX, AX									
  map.go:445		0xe20888		0f859a000000		JNE 0xe20928									
  map.go:456		0xe2088e		8b4c2434		MOVL 0x34(SP), CX								
  map.go:456		0xe20892		85c9			TESTL CX, CX									
  map.go:456		0xe20894		764f			JBE 0xe208e5									
  map.go:457		0xe20896		488d0503212200		LEAQ runtime.types+383392(SB), AX						
  map.go:457		0xe2089d		89cb			MOVL CX, BX									
  map.go:457		0xe2089f		90			NOPL										
  map.go:457		0xe208a0		e8bb1265ff		CALL runtime.makeslice(SB)							
  map.go:457		0xe208a5		48898424e8000000	MOVQ AX, 0xe8(SP)								
  map.go:457		0xe208ad		448b442434		MOVL 0x34(SP), R8								
  map.go:457		0xe208b2		4c89842480000000	MOVQ R8, 0x80(SP)								
  map.go:432		0xe208ba		488b942408010000	MOVQ 0x108(SP), DX								
  map.go:432		0xe208c2		4885d2			TESTQ DX, DX									
  map.go:458		0xe208c5		0f84c0000000		JE 0xe2098b									
  map.go:458		0xe208cb		488b5a08		MOVQ 0x8(DX), BX								
  map.go:458		0xe208cf		4c8b0dbab21900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.49(SB), R9				
  map.go:458		0xe208d6		4d8b11			MOVQ 0(R9), R10									
  map.go:458		0xe208d9		8b5210			MOVL 0x10(DX), DX								
  map.go:458		0xe208dc		0f1f4000		NOPL 0(AX)									
  map.go:458		0xe208e0		e9c4010000		JMP 0xe20aa9									
  map.go:471		0xe208e5		488d1534202200		LEAQ runtime.types+383264(SB), DX						
  map.go:471		0xe208ec		4889942498000000	MOVQ DX, 0x98(SP)								
  map.go:471		0xe208f4		488d15a5870402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_40(SB), DX				
  map.go:471		0xe208fb		48899424a0000000	MOVQ DX, 0xa0(SP)								
  print.go:314		0xe20903		488b1d76176f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe2090a		488d05cfb10402		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe20911		488d8c2498000000	LEAQ 0x98(SP), CX								
  print.go:314		0xe20919		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe2091e		4889fe			MOVQ DI, SI									
  print.go:314		0xe20921		e83aef6fff		CALL fmt.Fprintln(SB)								
  map.go:474		0xe20926		eb51			JMP 0xe20979									
  map.go:446		0xe20928		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:446		0xe20931		7404			JE 0xe20937									
  map.go:446		0xe20933		488b4008		MOVQ 0x8(AX), AX								
  map.go:446		0xe20937		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:446		0xe2093f		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  map.go:446		0xe20947		488d056e8a3600		LEAQ go:string.*+134836(SB), AX							
  map.go:446		0xe2094e		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  map.go:446		0xe20953		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:446		0xe2095b		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:446		0xe20960		4889fe			MOVQ DI, SI									
  map.go:446		0xe20963		e858ba6fff		CALL fmt.Errorf(SB)								
  map.go:446		0xe20968		4889d9			MOVQ BX, CX									
  map.go:446		0xe2096b		4889c3			MOVQ AX, BX									
  map.go:446		0xe2096e		31c0			XORL AX, AX									
  map.go:446		0xe20970		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:446		0xe20977		5d			POPQ BP										
  map.go:446		0xe20978		c3			RET										
  map.go:474		0xe20979		b801000000		MOVL $__minor_os_version__(SB), AX						
  map.go:474		0xe2097e		31db			XORL BX, BX									
  map.go:474		0xe20980		31c9			XORL CX, CX									
  map.go:474		0xe20982		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:474		0xe20989		5d			POPQ BP										
  map.go:474		0xe2098a		c3			RET										
  io.go:354		0xe2098b		488b9c2410010000	MOVQ 0x110(SP), BX								
  io.go:354		0xe20993		4889c1			MOVQ AX, CX									
  io.go:354		0xe20996		4c89c7			MOVQ R8, DI									
  io.go:354		0xe20999		4889fe			MOVQ DI, SI									
  io.go:354		0xe2099c		4889d0			MOVQ DX, AX									
  io.go:354		0xe2099f		90			NOPL										
  io.go:354		0xe209a0		e85b2269ff		CALL io.ReadAtLeast(SB)								
  map.go:459		0xe209a5		4885db			TESTQ BX, BX									
  map.go:459		0xe209a8		7477			JE 0xe20a21									
  map.go:460		0xe209aa		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  map.go:460		0xe209b3		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  map.go:460		0xe209bc		7404			JE 0xe209c2									
  map.go:460		0xe209be		488b5b08		MOVQ 0x8(BX), BX								
  map.go:460		0xe209c2		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  map.go:460		0xe209ca		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  map.go:460		0xe209d2		e8c99664ff		CALL runtime.convT64(SB)							
  map.go:460		0xe209d7		488d0d82212200		LEAQ runtime.types+383840(SB), CX						
  map.go:460		0xe209de		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  map.go:460		0xe209e6		48898424d0000000	MOVQ AX, 0xd0(SP)								
  map.go:460		0xe209ee		488d0594c13700		LEAQ go:string.*+214657(SB), AX							
  map.go:460		0xe209f5		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  map.go:460		0xe209fa		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  map.go:460		0xe20a02		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  map.go:460		0xe20a07		4889fe			MOVQ DI, SI									
  map.go:460		0xe20a0a		e8b1b96fff		CALL fmt.Errorf(SB)								
  map.go:460		0xe20a0f		4889d9			MOVQ BX, CX									
  map.go:460		0xe20a12		4889c3			MOVQ AX, BX									
  map.go:460		0xe20a15		31c0			XORL AX, AX									
  map.go:460		0xe20a17		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:460		0xe20a1e		5d			POPQ BP										
  map.go:460		0xe20a1f		90			NOPL										
  map.go:460		0xe20a20		c3			RET										
  map.go:463		0xe20a21		488d05d8542b00		LEAQ runtime.types+986880(SB), AX						
  map.go:463		0xe20a28		e8730d5fff		CALL runtime.newobject(SB)							
  map.go:464		0xe20a2d		488b9c2480000000	MOVQ 0x80(SP), BX								
  map.go:464		0xe20a35		4889d9			MOVQ BX, CX									
  map.go:464		0xe20a38		488d3d21622000		LEAQ runtime.types+269408(SB), DI						
  map.go:464		0xe20a3f		4889c6			MOVQ AX, SI									
  map.go:464		0xe20a42		488b8424e8000000	MOVQ 0xe8(SP), AX								
  map.go:464		0xe20a4a		e8916a74ff		CALL encoding/json.Unmarshal(SB)						
  map.go:465		0xe20a4f		4885c0			TESTQ AX, AX									
  map.go:465		0xe20a52		0f8421ffffff		JE 0xe20979									
  map.go:466		0xe20a58		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:466		0xe20a61		7404			JE 0xe20a67									
  map.go:466		0xe20a63		488b4008		MOVQ 0x8(AX), AX								
  map.go:466		0xe20a67		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:466		0xe20a6f		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  map.go:466		0xe20a77		488d052a653600		LEAQ go:string.*+125600(SB), AX							
  map.go:466		0xe20a7e		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  map.go:466		0xe20a83		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:466		0xe20a8b		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:466		0xe20a90		4889fe			MOVQ DI, SI									
  map.go:466		0xe20a93		e828b96fff		CALL fmt.Errorf(SB)								
  map.go:466		0xe20a98		4889d9			MOVQ BX, CX									
  map.go:466		0xe20a9b		4889c3			MOVQ AX, BX									
  map.go:466		0xe20a9e		31c0			XORL AX, AX									
  map.go:466		0xe20aa0		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:466		0xe20aa7		5d			POPQ BP										
  map.go:466		0xe20aa8		c3			RET										
  map.go:458		0xe20aa9		4989d3			MOVQ DX, R11									
  map.go:458		0xe20aac		4c21d2			ANDQ R10, DX									
  map.go:458		0xe20aaf		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  map.go:458		0xe20ab3		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  map.go:458		0xe20ab8		4939dc			CMPQ R12, BX									
  map.go:458		0xe20abb		742d			JE 0xe20aea									
  map.go:458		0xe20abd		498d5301		LEAQ 0x1(R11), DX								
  map.go:458		0xe20ac1		4d85e4			TESTQ R12, R12									
  map.go:458		0xe20ac4		75e3			JNE 0xe20aa9									
  map.go:458		0xe20ac6		488d05c3b01900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.49(SB), AX				
  map.go:458		0xe20acd		e80ee85eff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe20ad2		4c8b842480000000	MOVQ 0x80(SP), R8								
  map.go:458		0xe20ada		4889c2			MOVQ AX, DX									
  io.go:354		0xe20add		488b8424e8000000	MOVQ 0xe8(SP), AX								
  map.go:458		0xe20ae5		e9a1feffff		JMP 0xe2098b									
  map.go:458		0xe20aea		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  map.go:458		0xe20aef		e997feffff		JMP 0xe2098b									
  map.go:432		0xe20af4		4d89d3			MOVQ R10, R11									
  map.go:432		0xe20af7		4d21ca			ANDQ R9, R10									
  map.go:432		0xe20afa		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  map.go:432		0xe20afe		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  map.go:432		0xe20b03		4939dc			CMPQ R12, BX									
  map.go:432		0xe20b06		7425			JE 0xe20b2d									
  map.go:432		0xe20b08		4d8d5301		LEAQ 0x1(R11), R10								
  map.go:432		0xe20b0c		4d85e4			TESTQ R12, R12									
  map.go:432		0xe20b0f		75e3			JNE 0xe20af4									
  map.go:432		0xe20b11		488d0558b01900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.48(SB), AX				
  map.go:432		0xe20b18		e8c3e75eff		CALL runtime.typeAssert(SB)							
  map.go:432		0xe20b1d		4889c1			MOVQ AX, CX									
  io.go:354		0xe20b20		488b8424e8000000	MOVQ 0xe8(SP), AX								
  map.go:432		0xe20b28		e9affbffff		JMP 0xe206dc									
  map.go:432		0xe20b2d		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  map.go:432		0xe20b32		4889d1			MOVQ DX, CX									
  map.go:432		0xe20b35		e9a2fbffff		JMP 0xe206dc									
  buffer.go:54		0xe20b3a		e8617d65ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe20b3f		90			NOPL										
  map.go:391		0xe20b40		4889442408		MOVQ AX, 0x8(SP)								
  map.go:391		0xe20b45		48895c2410		MOVQ BX, 0x10(SP)								
  map.go:391		0xe20b4a		48894c2418		MOVQ CX, 0x18(SP)								
  map.go:391		0xe20b4f		48897c2420		MOVQ DI, 0x20(SP)								
  map.go:391		0xe20b54		e8875965ff		CALL runtime.morestack_noctxt.abi0(SB)						
  map.go:391		0xe20b59		488b442408		MOVQ 0x8(SP), AX								
  map.go:391		0xe20b5e		488b5c2410		MOVQ 0x10(SP), BX								
  map.go:391		0xe20b63		488b4c2418		MOVQ 0x18(SP), CX								
  map.go:391		0xe20b68		488b7c2420		MOVQ 0x20(SP), DI								
  map.go:391		0xe20b6d		e9aef8ffff		JMP CAS-Backend/pkg/agvcontrol.LoadMapRequest(SB)				
  :-1			0xe20b72		cc			INT $__subsystem__(SB)								
  :-1			0xe20b73		cc			INT $__subsystem__(SB)								
  :-1			0xe20b74		cc			INT $__subsystem__(SB)								
  :-1			0xe20b75		cc			INT $__subsystem__(SB)								
  :-1			0xe20b76		cc			INT $__subsystem__(SB)								
  :-1			0xe20b77		cc			INT $__subsystem__(SB)								
  :-1			0xe20b78		cc			INT $__subsystem__(SB)								
  :-1			0xe20b79		cc			INT $__subsystem__(SB)								
  :-1			0xe20b7a		cc			INT $__subsystem__(SB)								
  :-1			0xe20b7b		cc			INT $__subsystem__(SB)								
  :-1			0xe20b7c		cc			INT $__subsystem__(SB)								
  :-1			0xe20b7d		cc			INT $__subsystem__(SB)								
  :-1			0xe20b7e		cc			INT $__subsystem__(SB)								
  :-1			0xe20b7f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SendUploadMapCommand(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/map.go
  map.go:477		0xe20b80		4c8da42478feffff	LEAQ 0xfffffe78(SP), R12				
  map.go:477		0xe20b88		4d3b6610		CMPQ R12, 0x10(R14)					
  map.go:477		0xe20b8c		0f86e00b0000		JBE 0xe21772						
  map.go:477		0xe20b92		55			PUSHQ BP						
  map.go:477		0xe20b93		4889e5			MOVQ SP, BP						
  map.go:477		0xe20b96		4881ec00020000		SUBQ $__file_alignment__(SB), SP			
  map.go:480		0xe20b9d		48899c2418020000	MOVQ BX, 0x218(SP)					
  map.go:480		0xe20ba5		4889bc2428020000	MOVQ DI, 0x228(SP)					
  map.go:480		0xe20bad		48898c2420020000	MOVQ CX, 0x220(SP)					
  map.go:480		0xe20bb5		4889842410020000	MOVQ AX, 0x210(SP)					
  map.go:479		0xe20bbd		4889c8			MOVQ CX, AX						
  map.go:479		0xe20bc0		4889fb			MOVQ DI, BX						
  map.go:479		0xe20bc3		e8b8e36aff		CALL os.ReadFile(SB)					
  map.go:480		0xe20bc8		4885ff			TESTQ DI, DI						
  map.go:480		0xe20bcb		7449			JE 0xe20c16						
  map.go:481		0xe20bcd		440f11bc24e8010000	MOVUPS X15, 0x1e8(SP)					
  map.go:481		0xe20bd6		7404			JE 0xe20bdc						
  map.go:481		0xe20bd8		488b7f08		MOVQ 0x8(DI), DI					
  map.go:481		0xe20bdc		4889bc24e8010000	MOVQ DI, 0x1e8(SP)					
  map.go:481		0xe20be4		4889b424f0010000	MOVQ SI, 0x1f0(SP)					
  map.go:481		0xe20bec		488d056d893600		LEAQ go:string.*+135256(SB), AX				
  map.go:481		0xe20bf3		bb1c000000		MOVL $__major_os_version__+22(SB), BX			
  map.go:481		0xe20bf8		488d8c24e8010000	LEAQ 0x1e8(SP), CX					
  map.go:481		0xe20c00		bf01000000		MOVL $__minor_os_version__(SB), DI			
  map.go:481		0xe20c05		4889fe			MOVQ DI, SI						
  map.go:481		0xe20c08		e8b3b76fff		CALL fmt.Errorf(SB)					
  map.go:481		0xe20c0d		4881c400020000		ADDQ $__file_alignment__(SB), SP			
  map.go:481		0xe20c14		5d			POPQ BP							
  map.go:481		0xe20c15		c3			RET							
  map.go:479		0xe20c16		48895c2468		MOVQ BX, 0x68(SP)					
  map.go:479		0xe20c1b		4889842490000000	MOVQ AX, 0x90(SP)					
  map.go:493		0xe20c23		440f11bc24b8010000	MOVUPS X15, 0x1b8(SP)					
  map.go:493		0xe20c2c		4889d8			MOVQ BX, AX						
  map.go:493		0xe20c2f		e86c9464ff		CALL runtime.convT64(SB)				
  map.go:493		0xe20c34		488d0d251f2200		LEAQ runtime.types+383840(SB), CX			
  map.go:493		0xe20c3b		48898c24b8010000	MOVQ CX, 0x1b8(SP)					
  map.go:493		0xe20c43		48898424c0010000	MOVQ AX, 0x1c0(SP)					
  print.go:233		0xe20c4b		488b1d2e146f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe20c52		488d0587ae0402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe20c59		bf21000000		MOVL $__major_os_version__+27(SB), DI			
  print.go:233		0xe20c5e		488db424b8010000	LEAQ 0x1b8(SP), SI					
  print.go:233		0xe20c66		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe20c6c		4d89c1			MOVQ R8, R9						
  print.go:233		0xe20c6f		488d0d74e13600		LEAQ go:string.*+157922(SB), CX				
  print.go:233		0xe20c76		e8a5e56fff		CALL fmt.Fprintf(SB)					
  map.go:494		0xe20c7b		440f11bc24a8010000	MOVUPS X15, 0x1a8(SP)					
  map.go:494		0xe20c84		488b842420020000	MOVQ 0x220(SP), AX					
  map.go:494		0xe20c8c		488b9c2428020000	MOVQ 0x228(SP), BX					
  map.go:494		0xe20c94		e8879464ff		CALL runtime.convTstring(SB)				
  map.go:494		0xe20c99		488d0d801c2200		LEAQ runtime.types+383264(SB), CX			
  map.go:494		0xe20ca0		48898c24a8010000	MOVQ CX, 0x1a8(SP)					
  map.go:494		0xe20ca8		48898424b0010000	MOVQ AX, 0x1b0(SP)					
  print.go:233		0xe20cb0		488b1dc9136f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe20cb7		488d0522ae0402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe20cbe		bf17000000		MOVL $__major_os_version__+17(SB), DI			
  print.go:233		0xe20cc3		488db424a8010000	LEAQ 0x1a8(SP), SI					
  print.go:233		0xe20ccb		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe20cd1		4d89c1			MOVQ R8, R9						
  print.go:233		0xe20cd4		488d0dbd2f3600		LEAQ go:string.*+112528(SB), CX				
  print.go:233		0xe20cdb		0f1f440000		NOPL 0(AX)(AX*1)					
  print.go:233		0xe20ce0		e83be56fff		CALL fmt.Fprintf(SB)					
  map.go:503		0xe20ce5		48c74424585a010100	MOVQ $__dll_characteristics__+32762(SB), 0x58(SP)	
  map.go:503		0xe20cee		48c7442460aa0f0000	MOVQ $__file_alignment__+3498(SB), 0x60(SP)		
  map.go:501		0xe20cf7		488b4c2468		MOVQ 0x68(SP), CX					
  map.go:501		0xe20cfc		894c245c		MOVL CX, 0x5c(SP)					
  map.go:497		0xe20d00		0f10442458		MOVUPS 0x58(SP), X0					
  map.go:497		0xe20d05		0f11442448		MOVUPS X0, 0x48(SP)					
  map.go:507		0xe20d0a		488d058f1c2200		LEAQ runtime.types+383392(SB), AX			
  map.go:507		0xe20d11		bb10000000		MOVL $__major_os_version__+10(SB), BX			
  map.go:507		0xe20d16		4889d9			MOVQ BX, CX						
  map.go:507		0xe20d19		e8420e65ff		CALL runtime.makeslice(SB)				
  map.go:507		0xe20d1e		48898424a0000000	MOVQ AX, 0xa0(SP)					
  map.go:508		0xe20d26		0fb64c2448		MOVZX 0x48(SP), CX					
  map.go:508		0xe20d2b		8808			MOVB CL, 0(AX)						
  map.go:509		0xe20d2d		0fb64c2449		MOVZX 0x49(SP), CX					
  map.go:509		0xe20d32		884801			MOVB CL, 0x1(AX)					
  map.go:511		0xe20d35		0fb74c244a		MOVZX 0x4a(SP), CX					
  map.go:514		0xe20d3a		488d500a		LEAQ 0xa(AX), DX					
  binary.go:153		0xe20d3e		66c1c108		ROLW $__major_os_version__+2(SB), CX			
  binary.go:152		0xe20d42		66894802		MOVW CX, 0x2(AX)					
  map.go:512		0xe20d46		8b4c244c		MOVL 0x4c(SP), CX					
  binary.go:173		0xe20d4a		0fc9			BSWAP CX						
  binary.go:170		0xe20d4c		894804			MOVL CX, 0x4(AX)					
  map.go:513		0xe20d4f		0fb74c2450		MOVZX 0x50(SP), CX					
  binary.go:153		0xe20d54		66c1c108		ROLW $__major_os_version__+2(SB), CX			
  binary.go:152		0xe20d58		66894808		MOVW CX, 0x8(AX)					
  map.go:514		0xe20d5c		488d4c2452		LEAQ 0x52(SP), CX					
  map.go:514		0xe20d61		4839d1			CMPQ CX, DX						
  map.go:514		0xe20d64		7410			JE 0xe20d76						
  map.go:514		0xe20d66		8b4c2452		MOVL 0x52(SP), CX					
  map.go:514		0xe20d6a		0fb7542456		MOVZX 0x56(SP), DX					
  map.go:514		0xe20d6f		89480a			MOVL CX, 0xa(AX)					
  map.go:514		0xe20d72		6689500e		MOVW DX, 0xe(AX)					
  map.go:517		0xe20d76		488dbc2458010000	LEAQ 0x158(SP), DI					
  map.go:517		0xe20d7e		488d7fd0		LEAQ -0x30(DI), DI					
  map.go:517		0xe20d82		48896c24f0		MOVQ BP, -0x10(SP)					
  map.go:517		0xe20d87		488d6c24f0		LEAQ -0x10(SP), BP					
  map.go:517		0xe20d8c		e85f7d65ff		CALL 0x478af0						
  map.go:517		0xe20d91		488b6d00		MOVQ 0(BP), BP						
  map.go:518		0xe20d95		0fb64c2448		MOVZX 0x48(SP), CX					
  map.go:518		0xe20d9a		488d15ff1b2200		LEAQ runtime.types+383392(SB), DX			
  map.go:518		0xe20da1		4889942458010000	MOVQ DX, 0x158(SP)					
  map.go:518		0xe20da9		488d1d70991500		LEAQ runtime.staticuint64s(SB), BX			
  map.go:518		0xe20db0		488d0ccb		LEAQ 0(BX)(CX*8), CX					
  map.go:518		0xe20db4		48898c2460010000	MOVQ CX, 0x160(SP)					
  map.go:518		0xe20dbc		0fb64c2449		MOVZX 0x49(SP), CX					
  map.go:518		0xe20dc1		4889942468010000	MOVQ DX, 0x168(SP)					
  map.go:518		0xe20dc9		488d0ccb		LEAQ 0(BX)(CX*8), CX					
  map.go:518		0xe20dcd		48898c2470010000	MOVQ CX, 0x170(SP)					
  map.go:518		0xe20dd5		0fb744244a		MOVZX 0x4a(SP), AX					
  map.go:518		0xe20dda		e8c1e35eff		CALL runtime.convT16(SB)				
  map.go:518		0xe20ddf		488d0d3a1c2200		LEAQ runtime.types+383520(SB), CX			
  map.go:518		0xe20de6		48898c2478010000	MOVQ CX, 0x178(SP)					
  map.go:518		0xe20dee		4889842480010000	MOVQ AX, 0x180(SP)					
  map.go:518		0xe20df6		8b44244c		MOVL 0x4c(SP), AX					
  map.go:518		0xe20dfa		e821e45eff		CALL runtime.convT32(SB)				
  map.go:518		0xe20dff		488d0d9a1c2200		LEAQ runtime.types+383648(SB), CX			
  map.go:518		0xe20e06		48898c2488010000	MOVQ CX, 0x188(SP)					
  map.go:518		0xe20e0e		4889842490010000	MOVQ AX, 0x190(SP)					
  map.go:518		0xe20e16		0fb7442450		MOVZX 0x50(SP), AX					
  map.go:518		0xe20e1b		0f1f440000		NOPL 0(AX)(AX*1)					
  map.go:518		0xe20e20		e87be35eff		CALL runtime.convT16(SB)				
  map.go:518		0xe20e25		488d0df41b2200		LEAQ runtime.types+383520(SB), CX			
  map.go:518		0xe20e2c		48898c2498010000	MOVQ CX, 0x198(SP)					
  map.go:518		0xe20e34		48898424a0010000	MOVQ AX, 0x1a0(SP)					
  map.go:522		0xe20e3c		488b542468		MOVQ 0x68(SP), DX					
  map.go:522		0xe20e41		488d5a10		LEAQ 0x10(DX), BX					
  map.go:522		0xe20e45		48899c2488000000	MOVQ BX, 0x88(SP)					
  print.go:233		0xe20e4d		488b352c126f02		MOVQ os.Stdout(SB), SI					
  print.go:233		0xe20e54		488d0585ac0402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe20e5b		bf47000000		MOVL $__major_os_version__+65(SB), DI			
  print.go:233		0xe20e60		41b805000000		MOVL $__subsystem__+2(SB), R8				
  print.go:233		0xe20e66		4d89c1			MOVQ R8, R9						
  print.go:233		0xe20e69		4889f3			MOVQ SI, BX						
  print.go:233		0xe20e6c		488d0dd3633800		LEAQ go:string.*+257342(SB), CX				
  print.go:233		0xe20e73		488db42458010000	LEAQ 0x158(SP), SI					
  print.go:233		0xe20e7b		0f1f440000		NOPL 0(AX)(AX*1)					
  print.go:233		0xe20e80		e89be36fff		CALL fmt.Fprintf(SB)					
  map.go:519		0xe20e85		440f11bc2448010000	MOVUPS X15, 0x148(SP)					
  map.go:519		0xe20e8e		488b8424a0000000	MOVQ 0xa0(SP), AX					
  map.go:519		0xe20e96		bb10000000		MOVL $__major_os_version__+10(SB), BX			
  map.go:519		0xe20e9b		4889d9			MOVQ BX, CX						
  map.go:519		0xe20e9e		6690			NOPW							
  map.go:519		0xe20ea0		e81b9364ff		CALL runtime.convTslice(SB)				
  map.go:519		0xe20ea5		488d0d94732100		LEAQ runtime.types+340544(SB), CX			
  map.go:519		0xe20eac		48898c2448010000	MOVQ CX, 0x148(SP)					
  map.go:519		0xe20eb4		4889842450010000	MOVQ AX, 0x150(SP)					
  print.go:233		0xe20ebc		488b1dbd116f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe20ec3		488d0516ac0402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe20eca		488d0d15be3500		LEAQ go:string.*+83934(SB), CX				
  print.go:233		0xe20ed1		bf11000000		MOVL $__major_os_version__+11(SB), DI			
  print.go:233		0xe20ed6		488db42448010000	LEAQ 0x148(SP), SI					
  print.go:233		0xe20ede		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe20ee4		4d89c1			MOVQ R8, R9						
  print.go:233		0xe20ee7		e834e36fff		CALL fmt.Fprintf(SB)					
  map.go:522		0xe20eec		488b9c2488000000	MOVQ 0x88(SP), BX					
  map.go:522		0xe20ef4		4883fb10		CMPQ BX, $__major_os_version__+10(SB)			
  map.go:522		0xe20ef8		770f			JA 0xe20f09						
  map.go:522		0xe20efa		488b8424a0000000	MOVQ 0xa0(SP), AX					
  map.go:522		0xe20f02		b910000000		MOVL $__major_os_version__+10(SB), CX			
  map.go:522		0xe20f07		eb1e			JMP 0xe20f27						
  map.go:522		0xe20f09		488b8424a0000000	MOVQ 0xa0(SP), AX					
  map.go:522		0xe20f11		b910000000		MOVL $__major_os_version__+10(SB), CX			
  map.go:522		0xe20f16		488b7c2468		MOVQ 0x68(SP), DI					
  map.go:522		0xe20f1b		488d357e1a2200		LEAQ runtime.types+383392(SB), SI			
  map.go:522		0xe20f22		e8190d65ff		CALL runtime.growslice(SB)				
  map.go:522		0xe20f27		48898c2480000000	MOVQ CX, 0x80(SP)					
  map.go:522		0xe20f2f		48895c2478		MOVQ BX, 0x78(SP)					
  map.go:522		0xe20f34		4889842498000000	MOVQ AX, 0x98(SP)					
  map.go:522		0xe20f3c		488d5010		LEAQ 0x10(AX), DX					
  map.go:522		0xe20f40		4889d0			MOVQ DX, AX						
  map.go:522		0xe20f43		488b9c2490000000	MOVQ 0x90(SP), BX					
  map.go:522		0xe20f4b		488b4c2468		MOVQ 0x68(SP), CX					
  map.go:522		0xe20f50		e86b8265ff		CALL runtime.memmove(SB)				
  map.go:524		0xe20f55		440f11bc2438010000	MOVUPS X15, 0x138(SP)					
  map.go:524		0xe20f5e		488b442478		MOVQ 0x78(SP), AX					
  map.go:524		0xe20f63		e8389164ff		CALL runtime.convT64(SB)				
  map.go:524		0xe20f68		488d15f11b2200		LEAQ runtime.types+383840(SB), DX			
  map.go:524		0xe20f6f		4889942438010000	MOVQ DX, 0x138(SP)					
  map.go:524		0xe20f77		4889842440010000	MOVQ AX, 0x140(SP)					
  print.go:233		0xe20f7f		488b1dfa106f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe20f86		488d0553ab0402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe20f8d		488d0dae983600		LEAQ go:string.*+140090(SB), CX				
  print.go:233		0xe20f94		bf1d000000		MOVL $__major_os_version__+23(SB), DI			
  print.go:233		0xe20f99		488db42438010000	LEAQ 0x138(SP), SI					
  print.go:233		0xe20fa1		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe20fa7		4d89c1			MOVQ R8, R9						
  print.go:233		0xe20faa		e871e26fff		CALL fmt.Fprintf(SB)					
  map.go:527		0xe20faf		488b942410020000	MOVQ 0x210(SP), DX					
  map.go:527		0xe20fb7		488b7250		MOVQ 0x50(DX), SI					
  map.go:527		0xe20fbb		488b842418020000	MOVQ 0x218(SP), AX					
  map.go:527		0xe20fc3		488b9c2498000000	MOVQ 0x98(SP), BX					
  map.go:527		0xe20fcb		488b4c2478		MOVQ 0x78(SP), CX					
  map.go:527		0xe20fd0		488bbc2480000000	MOVQ 0x80(SP), DI					
  map.go:527		0xe20fd8		ffd6			CALL SI							
  map.go:527		0xe20fda		660f1f440000		NOPW 0(AX)(AX*1)					
  map.go:528		0xe20fe0		4885db			TESTQ BX, BX						
  map.go:528		0xe20fe3		0f85fc000000		JNE 0xe210e5						
  map.go:532		0xe20fe9		440f11bc2418010000	MOVUPS X15, 0x118(SP)					
  map.go:532		0xe20ff2		440f11bc2428010000	MOVUPS X15, 0x128(SP)					
  map.go:533		0xe20ffb		0fb744244a		MOVZX 0x4a(SP), AX					
  map.go:533		0xe21000		e89be15eff		CALL runtime.convT16(SB)				
  map.go:533		0xe21005		488d0d141a2200		LEAQ runtime.types+383520(SB), CX			
  map.go:533		0xe2100c		48898c2418010000	MOVQ CX, 0x118(SP)					
  map.go:533		0xe21014		4889842420010000	MOVQ AX, 0x120(SP)					
  map.go:533		0xe2101c		488b442478		MOVQ 0x78(SP), AX					
  map.go:533		0xe21021		e87a9064ff		CALL runtime.convT64(SB)				
  map.go:533		0xe21026		488d0d331b2200		LEAQ runtime.types+383840(SB), CX			
  map.go:533		0xe2102d		48898c2428010000	MOVQ CX, 0x128(SP)					
  map.go:533		0xe21035		4889842430010000	MOVQ AX, 0x130(SP)					
  print.go:233		0xe2103d		488b1d3c106f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe21044		488d0595aa0402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe2104b		bf4a000000		MOVL $__major_os_version__+68(SB), DI			
  print.go:233		0xe21050		488db42418010000	LEAQ 0x118(SP), SI					
  print.go:233		0xe21058		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0xe2105e		4d89c1			MOVQ R8, R9						
  print.go:233		0xe21061		488d0dad6d3800		LEAQ go:string.*+260365(SB), CX				
  print.go:233		0xe21068		e8b3e16fff		CALL fmt.Fprintf(SB)					
  map.go:536		0xe2106d		e82ed068ff		CALL time.Now(SB)					
  map.go:536		0xe21072		48bf00ac23fc06000000	MOVQ $0x6fc23ac00, DI					
  map.go:536		0xe2107c		0f1f4000		NOPL 0(AX)						
  map.go:536		0xe21080		e8db3468ff		CALL time.Time.Add(SB)					
  map.go:536		0xe21085		488b942410020000	MOVQ 0x210(SP), DX					
  map.go:536		0xe2108d		488b7240		MOVQ 0x40(DX), SI					
  map.go:536		0xe21091		4889cf			MOVQ CX, DI						
  map.go:536		0xe21094		4889d9			MOVQ BX, CX						
  map.go:536		0xe21097		4889c3			MOVQ AX, BX						
  map.go:536		0xe2109a		488b842418020000	MOVQ 0x218(SP), AX					
  map.go:536		0xe210a2		ffd6			CALL SI							
  map.go:539		0xe210a4		488d05f5182200		LEAQ runtime.types+383392(SB), AX			
  map.go:539		0xe210ab		bb10000000		MOVL $__major_os_version__+10(SB), BX			
  map.go:539		0xe210b0		4889d9			MOVQ BX, CX						
  map.go:539		0xe210b3		e8a80a65ff		CALL runtime.makeslice(SB)				
  map.go:539		0xe210b8		48898424a0000000	MOVQ AX, 0xa0(SP)					
  map.go:540		0xe210c0		488b8c2410020000	MOVQ 0x210(SP), CX					
  map.go:540		0xe210c8		4885c9			TESTQ CX, CX						
  map.go:540		0xe210cb		7461			JE 0xe2112e						
  map.go:540		0xe210cd		488b5908		MOVQ 0x8(CX), BX					
  map.go:540		0xe210d1		488b15d8aa1900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.50(SB), DX	
  map.go:540		0xe210d8		4c8b0a			MOVQ 0(DX), R9						
  map.go:540		0xe210db		448b5110		MOVL 0x10(CX), R10					
  map.go:540		0xe210df		90			NOPL							
  map.go:540		0xe210e0		e942060000		JMP 0xe21727						
  map.go:529		0xe210e5		440f11bc24e8010000	MOVUPS X15, 0x1e8(SP)					
  map.go:529		0xe210ee		7404			JE 0xe210f4						
  map.go:529		0xe210f0		488b5b08		MOVQ 0x8(BX), BX					
  map.go:529		0xe210f4		48899c24e8010000	MOVQ BX, 0x1e8(SP)					
  map.go:529		0xe210fc		48898c24f0010000	MOVQ CX, 0x1f0(SP)					
  map.go:529		0xe21104		488d058d843600		LEAQ go:string.*+135312(SB), AX				
  map.go:529		0xe2110b		bb1c000000		MOVL $__major_os_version__+22(SB), BX			
  map.go:529		0xe21110		488d8c24e8010000	LEAQ 0x1e8(SP), CX					
  map.go:529		0xe21118		bf01000000		MOVL $__minor_os_version__(SB), DI			
  map.go:529		0xe2111d		4889fe			MOVQ DI, SI						
  map.go:529		0xe21120		e89bb26fff		CALL fmt.Errorf(SB)					
  map.go:529		0xe21125		4881c400020000		ADDQ $__file_alignment__(SB), SP			
  map.go:529		0xe2112c		5d			POPQ BP							
  map.go:529		0xe2112d		c3			RET							
  io.go:354		0xe2112e		488b9c2418020000	MOVQ 0x218(SP), BX					
  io.go:354		0xe21136		bf10000000		MOVL $__major_os_version__+10(SB), DI			
  io.go:354		0xe2113b		4889fe			MOVQ DI, SI						
  io.go:354		0xe2113e		4989f0			MOVQ SI, R8						
  map.go:539		0xe21141		4889c2			MOVQ AX, DX						
  io.go:354		0xe21144		4889c8			MOVQ CX, AX						
  io.go:354		0xe21147		4889d1			MOVQ DX, CX						
  io.go:354		0xe2114a		e8b11a69ff		CALL io.ReadAtLeast(SB)					
  map.go:541		0xe2114f		4885db			TESTQ BX, BX						
  map.go:541		0xe21152		0f8577010000		JNE 0xe212cf						
  map.go:547		0xe21158		488b8c24a0000000	MOVQ 0xa0(SP), CX					
  map.go:547		0xe21160		0fb711			MOVZX 0(CX), DX						
  map.go:546		0xe21163		440f117c2438		MOVUPS X15, 0x38(SP)					
  map.go:546		0xe21169		6689542438		MOVW DX, 0x38(SP)					
  map.go:553		0xe2116e		488d510a		LEAQ 0xa(CX), DX					
  binary.go:147		0xe21172		0fb75902		MOVZX 0x2(CX), BX					
  binary.go:147		0xe21176		66c1c308		ROLW $__major_os_version__+2(SB), BX			
  map.go:550		0xe2117a		66895c243a		MOVW BX, 0x3a(SP)					
  binary.go:165		0xe2117f		8b5904			MOVL 0x4(CX), BX					
  binary.go:165		0xe21182		0fcb			BSWAP BX						
  map.go:551		0xe21184		895c243c		MOVL BX, 0x3c(SP)					
  binary.go:147		0xe21188		0fb75908		MOVZX 0x8(CX), BX					
  binary.go:147		0xe2118c		66c1c308		ROLW $__major_os_version__+2(SB), BX			
  map.go:552		0xe21190		66895c2440		MOVW BX, 0x40(SP)					
  map.go:553		0xe21195		488d5c2442		LEAQ 0x42(SP), BX					
  map.go:553		0xe2119a		4839d3			CMPQ BX, DX						
  map.go:553		0xe2119d		7410			JE 0xe211af						
  map.go:553		0xe2119f		8b510a			MOVL 0xa(CX), DX					
  map.go:553		0xe211a2		0fb7490e		MOVZX 0xe(CX), CX					
  map.go:553		0xe211a6		89542442		MOVL DX, 0x42(SP)					
  map.go:553		0xe211aa		66894c2446		MOVW CX, 0x46(SP)					
  map.go:555		0xe211af		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)					
  map.go:555		0xe211b8		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)					
  map.go:555		0xe211c1		440f11bc2408010000	MOVUPS X15, 0x108(SP)					
  map.go:556		0xe211ca		0fb7442440		MOVZX 0x40(SP), AX					
  map.go:556		0xe211cf		e8ccdf5eff		CALL runtime.convT16(SB)				
  map.go:556		0xe211d4		488d0d45182200		LEAQ runtime.types+383520(SB), CX			
  map.go:556		0xe211db		48898c24e8000000	MOVQ CX, 0xe8(SP)					
  map.go:556		0xe211e3		48898424f0000000	MOVQ AX, 0xf0(SP)					
  map.go:556		0xe211eb		8b44243c		MOVL 0x3c(SP), AX					
  map.go:556		0xe211ef		e82ce05eff		CALL runtime.convT32(SB)				
  map.go:556		0xe211f4		488d0da5182200		LEAQ runtime.types+383648(SB), CX			
  map.go:556		0xe211fb		48898c24f8000000	MOVQ CX, 0xf8(SP)					
  map.go:556		0xe21203		4889842400010000	MOVQ AX, 0x100(SP)					
  map.go:556		0xe2120b		0fb744243a		MOVZX 0x3a(SP), AX					
  map.go:556		0xe21210		e88bdf5eff		CALL runtime.convT16(SB)				
  map.go:556		0xe21215		488d0d04182200		LEAQ runtime.types+383520(SB), CX			
  map.go:556		0xe2121c		48898c2408010000	MOVQ CX, 0x108(SP)					
  map.go:556		0xe21224		4889842410010000	MOVQ AX, 0x110(SP)					
  print.go:233		0xe2122c		488b1d4d0e6f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe21233		488d05a6a80402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe2123a		488d0d98e93700		LEAQ go:string.*+227025(SB), CX				
  print.go:233		0xe21241		bf36000000		MOVL $__major_os_version__+48(SB), DI			
  print.go:233		0xe21246		488db424e8000000	LEAQ 0xe8(SP), SI					
  print.go:233		0xe2124e		41b803000000		MOVL $__subsystem__(SB), R8				
  print.go:233		0xe21254		4d89c1			MOVQ R8, R9						
  print.go:233		0xe21257		e8c4df6fff		CALL fmt.Fprintf(SB)					
  map.go:565		0xe2125c		8b4c243c		MOVL 0x3c(SP), CX					
  map.go:565		0xe21260		85c9			TESTL CX, CX						
  map.go:565		0xe21262		764a			JBE 0xe212ae						
  map.go:566		0xe21264		488d0535172200		LEAQ runtime.types+383392(SB), AX			
  map.go:566		0xe2126b		89cb			MOVL CX, BX						
  map.go:566		0xe2126d		e8ee0865ff		CALL runtime.makeslice(SB)				
  map.go:566		0xe21272		48898424a0000000	MOVQ AX, 0xa0(SP)					
  map.go:566		0xe2127a		448b44243c		MOVL 0x3c(SP), R8					
  map.go:566		0xe2127f		4c89842488000000	MOVQ R8, 0x88(SP)					
  map.go:540		0xe21287		488b942410020000	MOVQ 0x210(SP), DX					
  map.go:540		0xe2128f		4885d2			TESTQ DX, DX						
  map.go:567		0xe21292		0f84a5000000		JE 0xe2133d						
  map.go:567		0xe21298		488b5a08		MOVQ 0x8(DX), BX					
  map.go:567		0xe2129c		4c8b0d2da91900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.51(SB), R9	
  map.go:567		0xe212a3		4d8b11			MOVQ 0(R9), R10						
  map.go:567		0xe212a6		8b5210			MOVL 0x10(DX), DX					
  map.go:567		0xe212a9		e92a040000		JMP 0xe216d8						
  map.go:599		0xe212ae		488d0536b93700		LEAQ go:string.*+214755(SB), AX				
  map.go:599		0xe212b5		bb31000000		MOVL $__major_os_version__+43(SB), BX			
  map.go:599		0xe212ba		31c9			XORL CX, CX						
  map.go:599		0xe212bc		31ff			XORL DI, DI						
  map.go:599		0xe212be		4889fe			MOVQ DI, SI						
  map.go:599		0xe212c1		e8fab06fff		CALL fmt.Errorf(SB)					
  map.go:599		0xe212c6		4881c400020000		ADDQ $__file_alignment__(SB), SP			
  map.go:599		0xe212cd		5d			POPQ BP							
  map.go:599		0xe212ce		c3			RET							
  map.go:542		0xe212cf		440f11bc24c8010000	MOVUPS X15, 0x1c8(SP)					
  map.go:542		0xe212d8		440f11bc24d8010000	MOVUPS X15, 0x1d8(SP)					
  map.go:542		0xe212e1		7404			JE 0xe212e7						
  map.go:542		0xe212e3		488b5b08		MOVQ 0x8(BX), BX					
  map.go:542		0xe212e7		48899c24c8010000	MOVQ BX, 0x1c8(SP)					
  map.go:542		0xe212ef		48898c24d0010000	MOVQ CX, 0x1d0(SP)					
  map.go:542		0xe212f7		e8a48d64ff		CALL runtime.convT64(SB)				
  map.go:542		0xe212fc		488d0d5d182200		LEAQ runtime.types+383840(SB), CX			
  map.go:542		0xe21303		48898c24d8010000	MOVQ CX, 0x1d8(SP)					
  map.go:542		0xe2130b		48898424e0010000	MOVQ AX, 0x1e0(SP)					
  map.go:542		0xe21313		488d052e963700		LEAQ go:string.*+205888(SB), AX				
  map.go:542		0xe2131a		bb2e000000		MOVL $__major_os_version__+40(SB), BX			
  map.go:542		0xe2131f		488d8c24c8010000	LEAQ 0x1c8(SP), CX					
  map.go:542		0xe21327		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  map.go:542		0xe2132c		4889fe			MOVQ DI, SI						
  map.go:542		0xe2132f		e88cb06fff		CALL fmt.Errorf(SB)					
  map.go:542		0xe21334		4881c400020000		ADDQ $__file_alignment__(SB), SP			
  map.go:542		0xe2133b		5d			POPQ BP							
  map.go:542		0xe2133c		c3			RET							
  io.go:354		0xe2133d		488b9c2418020000	MOVQ 0x218(SP), BX					
  io.go:354		0xe21345		4889c1			MOVQ AX, CX						
  io.go:354		0xe21348		4c89c7			MOVQ R8, DI						
  io.go:354		0xe2134b		4889fe			MOVQ DI, SI						
  io.go:354		0xe2134e		4889d0			MOVQ DX, AX						
  io.go:354		0xe21351		e8aa1869ff		CALL io.ReadAtLeast(SB)					
  map.go:568		0xe21356		4885db			TESTQ BX, BX						
  map.go:568		0xe21359		7473			JE 0xe213ce						
  map.go:569		0xe2135b		440f11bc24c8010000	MOVUPS X15, 0x1c8(SP)					
  map.go:569		0xe21364		440f11bc24d8010000	MOVUPS X15, 0x1d8(SP)					
  map.go:569		0xe2136d		7404			JE 0xe21373						
  map.go:569		0xe2136f		488b5b08		MOVQ 0x8(BX), BX					
  map.go:569		0xe21373		48899c24c8010000	MOVQ BX, 0x1c8(SP)					
  map.go:569		0xe2137b		48898c24d0010000	MOVQ CX, 0x1d0(SP)					
  map.go:569		0xe21383		e8188d64ff		CALL runtime.convT64(SB)				
  map.go:569		0xe21388		488d0dd1172200		LEAQ runtime.types+383840(SB), CX			
  map.go:569		0xe2138f		48898c24d8010000	MOVQ CX, 0x1d8(SP)					
  map.go:569		0xe21397		48898424e0010000	MOVQ AX, 0x1e0(SP)					
  map.go:569		0xe2139f		488d0514b83700		LEAQ go:string.*+214706(SB), AX				
  map.go:569		0xe213a6		bb31000000		MOVL $__major_os_version__+43(SB), BX			
  map.go:569		0xe213ab		488d8c24c8010000	LEAQ 0x1c8(SP), CX					
  map.go:569		0xe213b3		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  map.go:569		0xe213b8		4889fe			MOVQ DI, SI						
  map.go:569		0xe213bb		0f1f440000		NOPL 0(AX)(AX*1)					
  map.go:569		0xe213c0		e8fbaf6fff		CALL fmt.Errorf(SB)					
  map.go:569		0xe213c5		4881c400020000		ADDQ $__file_alignment__(SB), SP			
  map.go:569		0xe213cc		5d			POPQ BP							
  map.go:569		0xe213cd		c3			RET							
  map.go:573		0xe213ce		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)					
  map.go:573		0xe213d7		31c0			XORL AX, AX						
  map.go:573		0xe213d9		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  map.go:573		0xe213e1		488b8c2488000000	MOVQ 0x88(SP), CX					
  map.go:573		0xe213e9		e8921265ff		CALL runtime.slicebytetostring(SB)			
  map.go:573		0xe213ee		e82d8d64ff		CALL runtime.convTstring(SB)				
  map.go:573		0xe213f3		488d1526152200		LEAQ runtime.types+383264(SB), DX			
  map.go:573		0xe213fa		48899424d8000000	MOVQ DX, 0xd8(SP)					
  map.go:573		0xe21402		48898424e0000000	MOVQ AX, 0xe0(SP)					
  print.go:233		0xe2140a		488b1d6f0c6f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe21411		488d05c8a60402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe21418		488d0d34283600		LEAQ go:string.*+112459(SB), CX				
  print.go:233		0xe2141f		bf17000000		MOVL $__major_os_version__+17(SB), DI			
  print.go:233		0xe21424		488db424d8000000	LEAQ 0xd8(SP), SI					
  print.go:233		0xe2142c		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe21432		4d89c1			MOVQ R8, R9						
  print.go:233		0xe21435		e8e6dd6fff		CALL fmt.Fprintf(SB)					
  map.go:576		0xe2143a		90			NOPL							
  bytes.go:97		0xe2143b		488b9424a0000000	MOVQ 0xa0(SP), DX					
  bytes.go:97		0xe21443		48891424		MOVQ DX, 0(SP)						
  bytes.go:97		0xe21447		488bb42488000000	MOVQ 0x88(SP), SI					
  bytes.go:97		0xe2144f		4889742408		MOVQ SI, 0x8(SP)					
  bytes.go:97		0xe21454		4889742410		MOVQ SI, 0x10(SP)					
  bytes.go:97		0xe21459		c644241800		MOVB $0x0, 0x18(SP)					
  bytes.go:97		0xe2145e		6690			NOPW							
  bytes.go:97		0xe21460		e81b1f5eff		CALL internal/bytealg.IndexByte.abi0(SB)		
  bytes.go:97		0xe21465		450f57ff		XORPS X15, X15						
  bytes.go:97		0xe21469		4c8b35a0c37302		MOVQ runtime.tls_g(SB), R14				
  bytes.go:97		0xe21470		654d8b36		MOVQ GS:0(R14), R14					
  bytes.go:97		0xe21474		4d8b36			MOVQ 0(R14), R14					
  bytes.go:97		0xe21477		488b4c2420		MOVQ 0x20(SP), CX					
  map.go:577		0xe2147c		4883f9ff		CMPQ CX, $-0x1						
  map.go:582		0xe21480		488b942488000000	MOVQ 0x88(SP), DX					
  map.go:582		0xe21488		480f44ca		CMOVE DX, CX						
  map.go:582		0xe2148c		4839ca			CMPQ DX, CX						
  map.go:577		0xe2148f		0f823e020000		JB 0xe216d3						
  map.go:582		0xe21495		48894c2470		MOVQ CX, 0x70(SP)					
  map.go:583		0xe2149a		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)					
  map.go:583		0xe214a3		31c0			XORL AX, AX						
  map.go:583		0xe214a5		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  map.go:583		0xe214ad		e8ce1165ff		CALL runtime.slicebytetostring(SB)			
  map.go:583		0xe214b2		e8698c64ff		CALL runtime.convTstring(SB)				
  map.go:583		0xe214b7		488d1562142200		LEAQ runtime.types+383264(SB), DX			
  map.go:583		0xe214be		48899424c8000000	MOVQ DX, 0xc8(SP)					
  map.go:583		0xe214c6		48898424d0000000	MOVQ AX, 0xd0(SP)					
  print.go:233		0xe214ce		488b1dab0b6f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe214d5		488d0504a60402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe214dc		488d0d3f033600		LEAQ go:string.*+103194(SB), CX				
  print.go:233		0xe214e3		bf15000000		MOVL $__major_os_version__+15(SB), DI			
  print.go:233		0xe214e8		488db424c8000000	LEAQ 0xc8(SP), SI					
  print.go:233		0xe214f0		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe214f6		4d89c1			MOVQ R8, R9						
  print.go:233		0xe214f9		e822dd6fff		CALL fmt.Fprintf(SB)					
  map.go:586		0xe214fe		488d05fb492b00		LEAQ runtime.types+986880(SB), AX			
  map.go:586		0xe21505		e896025fff		CALL runtime.newobject(SB)				
  map.go:586		0xe2150a		48898424f8010000	MOVQ AX, 0x1f8(SP)					
  map.go:587		0xe21512		488b5c2470		MOVQ 0x70(SP), BX					
  map.go:587		0xe21517		488b8c2488000000	MOVQ 0x88(SP), CX					
  map.go:587		0xe2151f		488d3d3a572000		LEAQ runtime.types+269408(SB), DI			
  map.go:587		0xe21526		4889c6			MOVQ AX, SI						
  map.go:587		0xe21529		488b8424a0000000	MOVQ 0xa0(SP), AX					
  map.go:587		0xe21531		e8aa5f74ff		CALL encoding/json.Unmarshal(SB)			
  map.go:588		0xe21536		4885c0			TESTQ AX, AX						
  map.go:588		0xe21539		0f8487000000		JE 0xe215c6						
  map.go:589		0xe2153f		440f11bc24c8010000	MOVUPS X15, 0x1c8(SP)					
  map.go:589		0xe21548		440f11bc24d8010000	MOVUPS X15, 0x1d8(SP)					
  map.go:589		0xe21551		7404			JE 0xe21557						
  map.go:589		0xe21553		488b4008		MOVQ 0x8(AX), AX					
  map.go:589		0xe21557		48898424c8010000	MOVQ AX, 0x1c8(SP)					
  map.go:589		0xe2155f		48899c24d0010000	MOVQ BX, 0x1d0(SP)					
  map.go:589		0xe21567		31c0			XORL AX, AX						
  map.go:589		0xe21569		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  map.go:589		0xe21571		488b4c2470		MOVQ 0x70(SP), CX					
  map.go:589		0xe21576		e8051165ff		CALL runtime.slicebytetostring(SB)			
  map.go:589		0xe2157b		0f1f440000		NOPL 0(AX)(AX*1)					
  map.go:589		0xe21580		e89b8b64ff		CALL runtime.convTstring(SB)				
  map.go:589		0xe21585		488d1594132200		LEAQ runtime.types+383264(SB), DX			
  map.go:589		0xe2158c		48899424d8010000	MOVQ DX, 0x1d8(SP)					
  map.go:589		0xe21594		48898424e0010000	MOVQ AX, 0x1e0(SP)					
  map.go:589		0xe2159c		488d05a6283700		LEAQ go:string.*+178497(SB), AX				
  map.go:589		0xe215a3		bb26000000		MOVL $__major_os_version__+32(SB), BX			
  map.go:589		0xe215a8		488d8c24c8010000	LEAQ 0x1c8(SP), CX					
  map.go:589		0xe215b0		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  map.go:589		0xe215b5		4889fe			MOVQ DI, SI						
  map.go:589		0xe215b8		e803ae6fff		CALL fmt.Errorf(SB)					
  map.go:589		0xe215bd		4881c400020000		ADDQ $__file_alignment__(SB), SP			
  map.go:589		0xe215c4		5d			POPQ BP							
  map.go:589		0xe215c5		c3			RET							
  map.go:593		0xe215c6		488b8c24f8010000	MOVQ 0x1f8(SP), CX					
  map.go:593		0xe215ce		48833900		CMPQ 0(CX), $0x0					
  map.go:593		0xe215d2		7452			JE 0xe21626						
  map.go:594		0xe215d4		440f11bc24e8010000	MOVUPS X15, 0x1e8(SP)					
  map.go:594		0xe215dd		488b01			MOVQ 0(CX), AX						
  map.go:594		0xe215e0		e8bb8a64ff		CALL runtime.convT64(SB)				
  map.go:594		0xe215e5		488d0d74152200		LEAQ runtime.types+383840(SB), CX			
  map.go:594		0xe215ec		48898c24e8010000	MOVQ CX, 0x1e8(SP)					
  map.go:594		0xe215f4		48898424f0010000	MOVQ AX, 0x1f0(SP)					
  map.go:594		0xe215fc		488d05f0573700		LEAQ go:string.*+190699(SB), AX				
  map.go:594		0xe21603		bb29000000		MOVL $__major_os_version__+35(SB), BX			
  map.go:594		0xe21608		488d8c24e8010000	LEAQ 0x1e8(SP), CX					
  map.go:594		0xe21610		bf01000000		MOVL $__minor_os_version__(SB), DI			
  map.go:594		0xe21615		4889fe			MOVQ DI, SI						
  map.go:594		0xe21618		e8a3ad6fff		CALL fmt.Errorf(SB)					
  map.go:594		0xe2161d		4881c400020000		ADDQ $__file_alignment__(SB), SP			
  map.go:594		0xe21624		5d			POPQ BP							
  map.go:594		0xe21625		c3			RET							
  map.go:597		0xe21626		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)					
  map.go:597		0xe2162f		488b4108		MOVQ 0x8(CX), AX					
  map.go:597		0xe21633		488b5910		MOVQ 0x10(CX), BX					
  map.go:597		0xe21637		e8e48a64ff		CALL runtime.convTstring(SB)				
  map.go:597		0xe2163c		488d0ddd122200		LEAQ runtime.types+383264(SB), CX			
  map.go:597		0xe21643		48898c24b8000000	MOVQ CX, 0xb8(SP)					
  map.go:597		0xe2164b		48898424c0000000	MOVQ AX, 0xc0(SP)					
  print.go:233		0xe21653		488b1d260a6f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe2165a		488d057fa40402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe21661		bf26000000		MOVL $__major_os_version__+32(SB), DI			
  print.go:233		0xe21666		488db424b8000000	LEAQ 0xb8(SP), SI					
  print.go:233		0xe2166e		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe21674		4d89c1			MOVQ R8, R9						
  print.go:233		0xe21677		488d0d63283700		LEAQ go:string.*+178649(SB), CX				
  print.go:233		0xe2167e		6690			NOPW							
  print.go:233		0xe21680		e89bdb6fff		CALL fmt.Fprintf(SB)					
  map.go:602		0xe21685		488d0d94122200		LEAQ runtime.types+383264(SB), CX			
  map.go:602		0xe2168c		48898c24a8000000	MOVQ CX, 0xa8(SP)					
  map.go:602		0xe21694		488d0d457a0402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_55(SB), CX	
  map.go:602		0xe2169b		48898c24b0000000	MOVQ CX, 0xb0(SP)					
  print.go:314		0xe216a3		488b1dd6096f02		MOVQ os.Stdout(SB), BX					
  print.go:314		0xe216aa		488d052fa40402		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:314		0xe216b1		488d8c24a8000000	LEAQ 0xa8(SP), CX					
  print.go:314		0xe216b9		bf01000000		MOVL $__minor_os_version__(SB), DI			
  print.go:314		0xe216be		4889fe			MOVQ DI, SI						
  print.go:314		0xe216c1		e89ae16fff		CALL fmt.Fprintln(SB)					
  map.go:603		0xe216c6		31c0			XORL AX, AX						
  map.go:603		0xe216c8		31db			XORL BX, BX						
  map.go:603		0xe216ca		4881c400020000		ADDQ $__file_alignment__(SB), SP			
  map.go:603		0xe216d1		5d			POPQ BP							
  map.go:603		0xe216d2		c3			RET							
  map.go:582		0xe216d3		e8887165ff		CALL runtime.panicSliceAcap(SB)				
  map.go:567		0xe216d8		4989d3			MOVQ DX, R11						
  map.go:567		0xe216db		4c21d2			ANDQ R10, DX						
  map.go:567		0xe216de		48c1e204		SHLQ $__subsystem__+1(SB), DX				
  map.go:567		0xe216e2		4d8b641108		MOVQ 0x8(R9)(DX*1), R12					
  map.go:567		0xe216e7		4939dc			CMPQ R12, BX						
  map.go:567		0xe216ea		7431			JE 0xe2171d						
  map.go:567		0xe216ec		498d5301		LEAQ 0x1(R11), DX					
  map.go:567		0xe216f0		4d85e4			TESTQ R12, R12						
  map.go:567		0xe216f3		75e3			JNE 0xe216d8						
  map.go:567		0xe216f5		488d05d4a41900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.51(SB), AX	
  map.go:567		0xe216fc		0f1f4000		NOPL 0(AX)						
  map.go:567		0xe21700		e8dbdb5eff		CALL runtime.typeAssert(SB)				
  io.go:354		0xe21705		4c8b842488000000	MOVQ 0x88(SP), R8					
  map.go:567		0xe2170d		4889c2			MOVQ AX, DX						
  io.go:354		0xe21710		488b8424a0000000	MOVQ 0xa0(SP), AX					
  map.go:567		0xe21718		e920fcffff		JMP 0xe2133d						
  map.go:567		0xe2171d		498b541110		MOVQ 0x10(R9)(DX*1), DX					
  map.go:567		0xe21722		e916fcffff		JMP 0xe2133d						
  map.go:540		0xe21727		4d89d3			MOVQ R10, R11						
  map.go:540		0xe2172a		4d21ca			ANDQ R9, R10						
  map.go:540		0xe2172d		49c1e204		SHLQ $__subsystem__+1(SB), R10				
  map.go:540		0xe21731		4e8b641208		MOVQ 0x8(DX)(R10*1), R12				
  map.go:540		0xe21736		4939dc			CMPQ R12, BX						
  map.go:540		0xe21739		742a			JE 0xe21765						
  map.go:540		0xe2173b		4d8d5301		LEAQ 0x1(R11), R10					
  map.go:540		0xe2173f		90			NOPL							
  map.go:540		0xe21740		4d85e4			TESTQ R12, R12						
  map.go:540		0xe21743		75e2			JNE 0xe21727						
  map.go:540		0xe21745		488d0564a41900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.50(SB), AX	
  map.go:540		0xe2174c		e88fdb5eff		CALL runtime.typeAssert(SB)				
  map.go:540		0xe21751		4889c1			MOVQ AX, CX						
  io.go:354		0xe21754		488b8424a0000000	MOVQ 0xa0(SP), AX					
  io.go:354		0xe2175c		0f1f4000		NOPL 0(AX)						
  map.go:540		0xe21760		e9c9f9ffff		JMP 0xe2112e						
  map.go:540		0xe21765		4a8b541210		MOVQ 0x10(DX)(R10*1), DX				
  map.go:540		0xe2176a		4889d1			MOVQ DX, CX						
  map.go:540		0xe2176d		e9bcf9ffff		JMP 0xe2112e						
  map.go:477		0xe21772		4889442408		MOVQ AX, 0x8(SP)					
  map.go:477		0xe21777		48895c2410		MOVQ BX, 0x10(SP)					
  map.go:477		0xe2177c		48894c2418		MOVQ CX, 0x18(SP)					
  map.go:477		0xe21781		48897c2420		MOVQ DI, 0x20(SP)					
  map.go:477		0xe21786		e8554d65ff		CALL runtime.morestack_noctxt.abi0(SB)			
  map.go:477		0xe2178b		488b442408		MOVQ 0x8(SP), AX					
  map.go:477		0xe21790		488b5c2410		MOVQ 0x10(SP), BX					
  map.go:477		0xe21795		488b4c2418		MOVQ 0x18(SP), CX					
  map.go:477		0xe2179a		488b7c2420		MOVQ 0x20(SP), DI					
  map.go:477		0xe2179f		90			NOPL							
  map.go:477		0xe217a0		e9dbf3ffff		JMP CAS-Backend/pkg/agvcontrol.SendUploadMapCommand(SB)	
  :-1			0xe217a5		cc			INT $__subsystem__(SB)					
  :-1			0xe217a6		cc			INT $__subsystem__(SB)					
  :-1			0xe217a7		cc			INT $__subsystem__(SB)					
  :-1			0xe217a8		cc			INT $__subsystem__(SB)					
  :-1			0xe217a9		cc			INT $__subsystem__(SB)					
  :-1			0xe217aa		cc			INT $__subsystem__(SB)					
  :-1			0xe217ab		cc			INT $__subsystem__(SB)					
  :-1			0xe217ac		cc			INT $__subsystem__(SB)					
  :-1			0xe217ad		cc			INT $__subsystem__(SB)					
  :-1			0xe217ae		cc			INT $__subsystem__(SB)					
  :-1			0xe217af		cc			INT $__subsystem__(SB)					
  :-1			0xe217b0		cc			INT $__subsystem__(SB)					
  :-1			0xe217b1		cc			INT $__subsystem__(SB)					
  :-1			0xe217b2		cc			INT $__subsystem__(SB)					
  :-1			0xe217b3		cc			INT $__subsystem__(SB)					
  :-1			0xe217b4		cc			INT $__subsystem__(SB)					
  :-1			0xe217b5		cc			INT $__subsystem__(SB)					
  :-1			0xe217b6		cc			INT $__subsystem__(SB)					
  :-1			0xe217b7		cc			INT $__subsystem__(SB)					
  :-1			0xe217b8		cc			INT $__subsystem__(SB)					
  :-1			0xe217b9		cc			INT $__subsystem__(SB)					
  :-1			0xe217ba		cc			INT $__subsystem__(SB)					
  :-1			0xe217bb		cc			INT $__subsystem__(SB)					
  :-1			0xe217bc		cc			INT $__subsystem__(SB)					
  :-1			0xe217bd		cc			INT $__subsystem__(SB)					
  :-1			0xe217be		cc			INT $__subsystem__(SB)					
  :-1			0xe217bf		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/agvcontrol.DelMapRequest(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/map.go
  map.go:606		0xe217c0		4c8d642480		LEAQ -0x80(SP), R12								
  map.go:606		0xe217c5		4d3b6610		CMPQ R12, 0x10(R14)								
  map.go:606		0xe217c9		0f8611070000		JBE 0xe21ee0									
  map.go:606		0xe217cf		55			PUSHQ BP									
  map.go:606		0xe217d0		4889e5			MOVQ SP, BP									
  map.go:606		0xe217d3		4881ecf8000000		SUBQ $.file+171(SB), SP								
  map.go:606		0xe217da		48898c2418010000	MOVQ CX, 0x118(SP)								
  map.go:614		0xe217e2		4889842408010000	MOVQ AX, 0x108(SP)								
  map.go:614		0xe217ea		48899c2410010000	MOVQ BX, 0x110(SP)								
  map.go:613		0xe217f2		48898c24a8000000	MOVQ CX, 0xa8(SP)								
  map.go:613		0xe217fa		4889bc24b0000000	MOVQ DI, 0xb0(SP)								
  map.go:613		0xe21802		488b8c24a8000000	MOVQ 0xa8(SP), CX								
  map.go:613		0xe2180a		4889c8			MOVQ CX, AX									
  map.go:613		0xe2180d		4889fb			MOVQ DI, BX									
  map.go:613		0xe21810		e80b8964ff		CALL runtime.convTstring(SB)							
  map.go:613		0xe21815		4889c3			MOVQ AX, BX									
  map.go:613		0xe21818		488d05e1302800		LEAQ runtime.types+784640(SB), AX						
  map.go:613		0xe2181f		90			NOPL										
  map.go:613		0xe21820		e87bbc74ff		CALL encoding/json.Marshal(SB)							
  map.go:614		0xe21825		4885ff			TESTQ DI, DI									
  map.go:614		0xe21828		7451			JE 0xe2187b									
  map.go:615		0xe2182a		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:615		0xe21833		7404			JE 0xe21839									
  map.go:615		0xe21835		488b7f08		MOVQ 0x8(DI), DI								
  map.go:615		0xe21839		4889bc24d8000000	MOVQ DI, 0xd8(SP)								
  map.go:615		0xe21841		4889b424e0000000	MOVQ SI, 0xe0(SP)								
  map.go:615		0xe21849		488d054b233600		LEAQ go:string.*+112275(SB), AX							
  map.go:615		0xe21850		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  map.go:615		0xe21855		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:615		0xe2185d		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:615		0xe21862		4889fe			MOVQ DI, SI									
  map.go:615		0xe21865		e856ab6fff		CALL fmt.Errorf(SB)								
  map.go:615		0xe2186a		4889d9			MOVQ BX, CX									
  map.go:615		0xe2186d		4889c3			MOVQ AX, BX									
  map.go:615		0xe21870		31c0			XORL AX, AX									
  map.go:615		0xe21872		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:615		0xe21879		5d			POPQ BP										
  map.go:615		0xe2187a		c3			RET										
  map.go:613		0xe2187b		48894c2470		MOVQ CX, 0x70(SP)								
  map.go:613		0xe21880		48895c2468		MOVQ BX, 0x68(SP)								
  map.go:613		0xe21885		4889842488000000	MOVQ AX, 0x88(SP)								
  map.go:625		0xe2188d		48c74424405a010100	MOVQ $__dll_characteristics__+32762(SB), 0x40(SP)				
  map.go:625		0xe21896		48c7442448ac0f0000	MOVQ $__file_alignment__+3500(SB), 0x48(SP)					
  map.go:623		0xe2189f		895c2444		MOVL BX, 0x44(SP)								
  map.go:629		0xe218a3		488d05566a2b00		LEAQ runtime.types+996096(SB), AX						
  map.go:629		0xe218aa		e8f1fe5eff		CALL runtime.newobject(SB)							
  map.go:629		0xe218af		48898424f0000000	MOVQ AX, 0xf0(SP)								
  map.go:630		0xe218b7		0f10442440		MOVUPS 0x40(SP), X0								
  map.go:630		0xe218bc		0f11442450		MOVUPS X0, 0x50(SP)								
  map.go:630		0xe218c1		4889c3			MOVQ AX, BX									
  map.go:630		0xe218c4		488d0d75560502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  map.go:630		0xe218cb		488d3dceb97302		LEAQ unicode..stmp_365(SB), DI							
  map.go:630		0xe218d2		488d35e7cf2e00		LEAQ runtime.types+1218752(SB), SI						
  map.go:630		0xe218d9		4c8d442450		LEAQ 0x50(SP), R8								
  map.go:630		0xe218de		488d057bb70402		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  map.go:630		0xe218e5		e8360874ff		CALL encoding/binary.Write(SB)							
  map.go:631		0xe218ea		4885c0			TESTQ AX, AX									
  map.go:631		0xe218ed		7452			JE 0xe21941									
  map.go:632		0xe218ef		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:632		0xe218f8		7404			JE 0xe218fe									
  map.go:632		0xe218fa		488b4008		MOVQ 0x8(AX), AX								
  map.go:632		0xe218fe		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:632		0xe21906		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  map.go:632		0xe2190e		488d058b7a3600		LEAQ go:string.*+134808(SB), AX							
  map.go:632		0xe21915		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  map.go:632		0xe2191a		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:632		0xe21922		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:632		0xe21927		4889fe			MOVQ DI, SI									
  map.go:632		0xe2192a		e891aa6fff		CALL fmt.Errorf(SB)								
  map.go:632		0xe2192f		4889d9			MOVQ BX, CX									
  map.go:632		0xe21932		4889c3			MOVQ AX, BX									
  map.go:632		0xe21935		31c0			XORL AX, AX									
  map.go:632		0xe21937		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:632		0xe2193e		5d			POPQ BP										
  map.go:632		0xe2193f		90			NOPL										
  map.go:632		0xe21940		c3			RET										
  map.go:634		0xe21941		488b8424f0000000	MOVQ 0xf0(SP), AX								
  map.go:634		0xe21949		488b9c2488000000	MOVQ 0x88(SP), BX								
  map.go:634		0xe21951		488b4c2468		MOVQ 0x68(SP), CX								
  map.go:634		0xe21956		488b7c2470		MOVQ 0x70(SP), DI								
  map.go:634		0xe2195b		0f1f440000		NOPL 0(AX)(AX*1)								
  map.go:634		0xe21960		e8bbab70ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe21965		488b9424f0000000	MOVQ 0xf0(SP), DX								
  buffer.go:54		0xe2196d		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe21971		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe21975		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe21978		0f825c050000		JB 0xe21eda									
  map.go:637		0xe2197e		488bb42408010000	MOVQ 0x108(SP), SI								
  map.go:637		0xe21986		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe2198a		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe2198d		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe21991		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe21994		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe21997		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe2199a		48f7da			NEGQ DX										
  buffer.go:54		0xe2199d		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe219a1		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe219a4		498d1c01		LEAQ 0(R9)(AX*1), BX								
  map.go:637		0xe219a8		488b842410010000	MOVQ 0x110(SP), AX								
  map.go:637		0xe219b0		41ffd0			CALL R8										
  map.go:638		0xe219b3		4885db			TESTQ BX, BX									
  map.go:638		0xe219b6		7573			JNE 0xe21a2b									
  map.go:643		0xe219b8		e8e3c668ff		CALL time.Now(SB)								
  map.go:643		0xe219bd		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  map.go:643		0xe219c7		e8942b68ff		CALL time.Time.Add(SB)								
  map.go:643		0xe219cc		488b942408010000	MOVQ 0x108(SP), DX								
  map.go:643		0xe219d4		488b7240		MOVQ 0x40(DX), SI								
  map.go:643		0xe219d8		4889cf			MOVQ CX, DI									
  map.go:643		0xe219db		4889d9			MOVQ BX, CX									
  map.go:643		0xe219de		4889c3			MOVQ AX, BX									
  map.go:643		0xe219e1		488b842410010000	MOVQ 0x110(SP), AX								
  map.go:643		0xe219e9		ffd6			CALL SI										
  map.go:646		0xe219eb		488d05ae0f2200		LEAQ runtime.types+383392(SB), AX						
  map.go:646		0xe219f2		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  map.go:646		0xe219f7		4889d9			MOVQ BX, CX									
  map.go:646		0xe219fa		e8610165ff		CALL runtime.makeslice(SB)							
  map.go:646		0xe219ff		48898424e8000000	MOVQ AX, 0xe8(SP)								
  map.go:647		0xe21a07		488b8c2408010000	MOVQ 0x108(SP), CX								
  map.go:647		0xe21a0f		4885c9			TESTQ CX, CX									
  map.go:647		0xe21a12		7468			JE 0xe21a7c									
  map.go:647		0xe21a14		488b5908		MOVQ 0x8(CX), BX								
  map.go:647		0xe21a18		488b15d1a11900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.52(SB), DX				
  map.go:647		0xe21a1f		4c8b0a			MOVQ 0(DX), R9									
  map.go:647		0xe21a22		448b5110		MOVL 0x10(CX), R10								
  map.go:647		0xe21a26		e969040000		JMP 0xe21e94									
  map.go:639		0xe21a2b		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:639		0xe21a34		7404			JE 0xe21a3a									
  map.go:639		0xe21a36		488b5b08		MOVQ 0x8(BX), BX								
  map.go:639		0xe21a3a		48899c24d8000000	MOVQ BX, 0xd8(SP)								
  map.go:639		0xe21a42		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  map.go:639		0xe21a4a		488d05730d3600		LEAQ go:string.*+107196(SB), AX							
  map.go:639		0xe21a51		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  map.go:639		0xe21a56		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:639		0xe21a5e		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:639		0xe21a63		4889fe			MOVQ DI, SI									
  map.go:639		0xe21a66		e855a96fff		CALL fmt.Errorf(SB)								
  map.go:639		0xe21a6b		4889d9			MOVQ BX, CX									
  map.go:639		0xe21a6e		4889c3			MOVQ AX, BX									
  map.go:639		0xe21a71		31c0			XORL AX, AX									
  map.go:639		0xe21a73		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:639		0xe21a7a		5d			POPQ BP										
  map.go:639		0xe21a7b		c3			RET										
  io.go:354		0xe21a7c		488b9c2410010000	MOVQ 0x110(SP), BX								
  io.go:354		0xe21a84		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe21a89		4889fe			MOVQ DI, SI									
  io.go:354		0xe21a8c		4989f0			MOVQ SI, R8									
  map.go:646		0xe21a8f		4889c2			MOVQ AX, DX									
  io.go:354		0xe21a92		4889c8			MOVQ CX, AX									
  io.go:354		0xe21a95		4889d1			MOVQ DX, CX									
  io.go:354		0xe21a98		e8631169ff		CALL io.ReadAtLeast(SB)								
  io.go:354		0xe21a9d		0f1f00			NOPL 0(AX)									
  map.go:648		0xe21aa0		4885db			TESTQ BX, BX									
  map.go:648		0xe21aa3		0f84f8000000		JE 0xe21ba1									
  map.go:650		0xe21aa9		48391d10531900		CMPQ io.EOF(SB), BX								
  map.go:650		0xe21ab0		7405			JE 0xe21ab7									
  map.go:648		0xe21ab2		4885db			TESTQ BX, BX									
  map.go:650		0xe21ab5		eb4b			JMP 0xe21b02									
  io.go:354		0xe21ab7		4889442460		MOVQ AX, 0x60(SP)								
  io.go:354		0xe21abc		48898c2490000000	MOVQ CX, 0x90(SP)								
  io.go:354		0xe21ac4		48895c2478		MOVQ BX, 0x78(SP)								
  map.go:650		0xe21ac9		488b15f8521900		MOVQ io.EOF+8(SB), DX								
  map.go:650		0xe21ad0		4889d8			MOVQ BX, AX									
  map.go:650		0xe21ad3		4889cb			MOVQ CX, BX									
  map.go:650		0xe21ad6		4889d1			MOVQ DX, CX									
  map.go:650		0xe21ad9		e8026a5eff		CALL runtime.ifaceeq(SB)							
  map.go:650		0xe21ade		6690			NOPW										
  map.go:650		0xe21ae0		84c0			TESTL AL, AL									
  map.go:650		0xe21ae2		0f8590000000		JNE 0xe21b78									
  map.go:648		0xe21ae8		488b4c2478		MOVQ 0x78(SP), CX								
  map.go:648		0xe21aed		4885c9			TESTQ CX, CX									
  map.go:653		0xe21af0		488b442460		MOVQ 0x60(SP), AX								
  map.go:653		0xe21af5		488b8c2490000000	MOVQ 0x90(SP), CX								
  map.go:653		0xe21afd		488b5c2478		MOVQ 0x78(SP), BX								
  map.go:653		0xe21b02		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  map.go:653		0xe21b0b		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  map.go:653		0xe21b14		7404			JE 0xe21b1a									
  map.go:653		0xe21b16		488b5b08		MOVQ 0x8(BX), BX								
  map.go:653		0xe21b1a		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  map.go:653		0xe21b22		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  map.go:653		0xe21b2a		e8718564ff		CALL runtime.convT64(SB)							
  map.go:653		0xe21b2f		488d0d2a102200		LEAQ runtime.types+383840(SB), CX						
  map.go:653		0xe21b36		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  map.go:653		0xe21b3e		48898424d0000000	MOVQ AX, 0xd0(SP)								
  map.go:653		0xe21b46		488d050bb03700		LEAQ go:string.*+214608(SB), AX							
  map.go:653		0xe21b4d		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  map.go:653		0xe21b52		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  map.go:653		0xe21b5a		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  map.go:653		0xe21b5f		4889fe			MOVQ DI, SI									
  map.go:653		0xe21b62		e859a86fff		CALL fmt.Errorf(SB)								
  map.go:653		0xe21b67		4889d9			MOVQ BX, CX									
  map.go:653		0xe21b6a		4889c3			MOVQ AX, BX									
  map.go:653		0xe21b6d		31c0			XORL AX, AX									
  map.go:653		0xe21b6f		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:653		0xe21b76		5d			POPQ BP										
  map.go:653		0xe21b77		c3			RET										
  map.go:651		0xe21b78		488d058efc3500		LEAQ go:string.*+103173(SB), AX							
  map.go:651		0xe21b7f		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  map.go:651		0xe21b84		31c9			XORL CX, CX									
  map.go:651		0xe21b86		31ff			XORL DI, DI									
  map.go:651		0xe21b88		4889fe			MOVQ DI, SI									
  map.go:651		0xe21b8b		e830a86fff		CALL fmt.Errorf(SB)								
  map.go:651		0xe21b90		4889d9			MOVQ BX, CX									
  map.go:651		0xe21b93		4889c3			MOVQ AX, BX									
  map.go:651		0xe21b96		31c0			XORL AX, AX									
  map.go:651		0xe21b98		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:651		0xe21b9f		5d			POPQ BP										
  map.go:651		0xe21ba0		c3			RET										
  map.go:657		0xe21ba1		440f117c2430		MOVUPS X15, 0x30(SP)								
  map.go:658		0xe21ba7		90			NOPL										
  reader.go:159		0xe21ba8		488d0511682b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe21baf		e8ecfb5eff		CALL runtime.newobject(SB)							
  reader.go:159		0xe21bb4		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe21bbc		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe21bc4		833d85bf730200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe21bcb		750a			JNE 0xe21bd7									
  reader.go:159		0xe21bcd		488b9424e8000000	MOVQ 0xe8(SP), DX								
  reader.go:159		0xe21bd5		eb10			JMP 0xe21be7									
  reader.go:159		0xe21bd7		e8446865ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe21bdc		488b9424e8000000	MOVQ 0xe8(SP), DX								
  reader.go:159		0xe21be4		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe21be7		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe21bea		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe21bf2		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  map.go:659		0xe21bfa		4889c3			MOVQ AX, BX									
  map.go:659		0xe21bfd		488d0d3c530502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  map.go:659		0xe21c04		488d3d95b67302		LEAQ unicode..stmp_365(SB), DI							
  map.go:659		0xe21c0b		488d350e502000		LEAQ runtime.types+269344(SB), SI						
  map.go:659		0xe21c12		4c8d442430		LEAQ 0x30(SP), R8								
  map.go:659		0xe21c17		488d05c2ae0402		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  map.go:659		0xe21c1e		6690			NOPW										
  map.go:659		0xe21c20		e81bf673ff		CALL encoding/binary.Read(SB)							
  map.go:660		0xe21c25		4885c0			TESTQ AX, AX									
  map.go:660		0xe21c28		0f859a000000		JNE 0xe21cc8									
  map.go:671		0xe21c2e		8b4c2434		MOVL 0x34(SP), CX								
  map.go:671		0xe21c32		85c9			TESTL CX, CX									
  map.go:671		0xe21c34		764f			JBE 0xe21c85									
  map.go:672		0xe21c36		488d05630d2200		LEAQ runtime.types+383392(SB), AX						
  map.go:672		0xe21c3d		89cb			MOVL CX, BX									
  map.go:672		0xe21c3f		90			NOPL										
  map.go:672		0xe21c40		e81bff64ff		CALL runtime.makeslice(SB)							
  map.go:672		0xe21c45		48898424e8000000	MOVQ AX, 0xe8(SP)								
  map.go:672		0xe21c4d		448b442434		MOVL 0x34(SP), R8								
  map.go:672		0xe21c52		4c89842480000000	MOVQ R8, 0x80(SP)								
  map.go:647		0xe21c5a		488b942408010000	MOVQ 0x108(SP), DX								
  map.go:647		0xe21c62		4885d2			TESTQ DX, DX									
  map.go:673		0xe21c65		0f84c0000000		JE 0xe21d2b									
  map.go:673		0xe21c6b		488b5a08		MOVQ 0x8(DX), BX								
  map.go:673		0xe21c6f		4c8b0d9a9f1900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.53(SB), R9				
  map.go:673		0xe21c76		4d8b11			MOVQ 0(R9), R10									
  map.go:673		0xe21c79		8b5210			MOVL 0x10(DX), DX								
  map.go:673		0xe21c7c		0f1f4000		NOPL 0(AX)									
  map.go:673		0xe21c80		e9c4010000		JMP 0xe21e49									
  map.go:686		0xe21c85		488d15940c2200		LEAQ runtime.types+383264(SB), DX						
  map.go:686		0xe21c8c		4889942498000000	MOVQ DX, 0x98(SP)								
  map.go:686		0xe21c94		488d1505740402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_40(SB), DX				
  map.go:686		0xe21c9b		48899424a0000000	MOVQ DX, 0xa0(SP)								
  print.go:314		0xe21ca3		488b1dd6036f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe21caa		488d052f9e0402		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe21cb1		488d8c2498000000	LEAQ 0x98(SP), CX								
  print.go:314		0xe21cb9		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe21cbe		4889fe			MOVQ DI, SI									
  print.go:314		0xe21cc1		e89adb6fff		CALL fmt.Fprintln(SB)								
  map.go:689		0xe21cc6		eb51			JMP 0xe21d19									
  map.go:661		0xe21cc8		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:661		0xe21cd1		7404			JE 0xe21cd7									
  map.go:661		0xe21cd3		488b4008		MOVQ 0x8(AX), AX								
  map.go:661		0xe21cd7		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:661		0xe21cdf		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  map.go:661		0xe21ce7		488d05ce763600		LEAQ go:string.*+134836(SB), AX							
  map.go:661		0xe21cee		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  map.go:661		0xe21cf3		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:661		0xe21cfb		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:661		0xe21d00		4889fe			MOVQ DI, SI									
  map.go:661		0xe21d03		e8b8a66fff		CALL fmt.Errorf(SB)								
  map.go:661		0xe21d08		4889d9			MOVQ BX, CX									
  map.go:661		0xe21d0b		4889c3			MOVQ AX, BX									
  map.go:661		0xe21d0e		31c0			XORL AX, AX									
  map.go:661		0xe21d10		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:661		0xe21d17		5d			POPQ BP										
  map.go:661		0xe21d18		c3			RET										
  map.go:689		0xe21d19		b801000000		MOVL $__minor_os_version__(SB), AX						
  map.go:689		0xe21d1e		31db			XORL BX, BX									
  map.go:689		0xe21d20		31c9			XORL CX, CX									
  map.go:689		0xe21d22		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:689		0xe21d29		5d			POPQ BP										
  map.go:689		0xe21d2a		c3			RET										
  io.go:354		0xe21d2b		488b9c2410010000	MOVQ 0x110(SP), BX								
  io.go:354		0xe21d33		4889c1			MOVQ AX, CX									
  io.go:354		0xe21d36		4c89c7			MOVQ R8, DI									
  io.go:354		0xe21d39		4889fe			MOVQ DI, SI									
  io.go:354		0xe21d3c		4889d0			MOVQ DX, AX									
  io.go:354		0xe21d3f		90			NOPL										
  io.go:354		0xe21d40		e8bb0e69ff		CALL io.ReadAtLeast(SB)								
  map.go:674		0xe21d45		4885db			TESTQ BX, BX									
  map.go:674		0xe21d48		7477			JE 0xe21dc1									
  map.go:675		0xe21d4a		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  map.go:675		0xe21d53		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  map.go:675		0xe21d5c		7404			JE 0xe21d62									
  map.go:675		0xe21d5e		488b5b08		MOVQ 0x8(BX), BX								
  map.go:675		0xe21d62		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  map.go:675		0xe21d6a		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  map.go:675		0xe21d72		e8298364ff		CALL runtime.convT64(SB)							
  map.go:675		0xe21d77		488d0de20d2200		LEAQ runtime.types+383840(SB), CX						
  map.go:675		0xe21d7e		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  map.go:675		0xe21d86		48898424d0000000	MOVQ AX, 0xd0(SP)								
  map.go:675		0xe21d8e		488d05f4ad3700		LEAQ go:string.*+214657(SB), AX							
  map.go:675		0xe21d95		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  map.go:675		0xe21d9a		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  map.go:675		0xe21da2		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  map.go:675		0xe21da7		4889fe			MOVQ DI, SI									
  map.go:675		0xe21daa		e811a66fff		CALL fmt.Errorf(SB)								
  map.go:675		0xe21daf		4889d9			MOVQ BX, CX									
  map.go:675		0xe21db2		4889c3			MOVQ AX, BX									
  map.go:675		0xe21db5		31c0			XORL AX, AX									
  map.go:675		0xe21db7		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:675		0xe21dbe		5d			POPQ BP										
  map.go:675		0xe21dbf		90			NOPL										
  map.go:675		0xe21dc0		c3			RET										
  map.go:678		0xe21dc1		488d0538412b00		LEAQ runtime.types+986880(SB), AX						
  map.go:678		0xe21dc8		e8d3f95eff		CALL runtime.newobject(SB)							
  map.go:679		0xe21dcd		488b9c2480000000	MOVQ 0x80(SP), BX								
  map.go:679		0xe21dd5		4889d9			MOVQ BX, CX									
  map.go:679		0xe21dd8		488d3d814e2000		LEAQ runtime.types+269408(SB), DI						
  map.go:679		0xe21ddf		4889c6			MOVQ AX, SI									
  map.go:679		0xe21de2		488b8424e8000000	MOVQ 0xe8(SP), AX								
  map.go:679		0xe21dea		e8f15674ff		CALL encoding/json.Unmarshal(SB)						
  map.go:680		0xe21def		4885c0			TESTQ AX, AX									
  map.go:680		0xe21df2		0f8421ffffff		JE 0xe21d19									
  map.go:681		0xe21df8		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  map.go:681		0xe21e01		7404			JE 0xe21e07									
  map.go:681		0xe21e03		488b4008		MOVQ 0x8(AX), AX								
  map.go:681		0xe21e07		48898424d8000000	MOVQ AX, 0xd8(SP)								
  map.go:681		0xe21e0f		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  map.go:681		0xe21e17		488d058a513600		LEAQ go:string.*+125600(SB), AX							
  map.go:681		0xe21e1e		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  map.go:681		0xe21e23		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  map.go:681		0xe21e2b		bf01000000		MOVL $__minor_os_version__(SB), DI						
  map.go:681		0xe21e30		4889fe			MOVQ DI, SI									
  map.go:681		0xe21e33		e888a56fff		CALL fmt.Errorf(SB)								
  map.go:681		0xe21e38		4889d9			MOVQ BX, CX									
  map.go:681		0xe21e3b		4889c3			MOVQ AX, BX									
  map.go:681		0xe21e3e		31c0			XORL AX, AX									
  map.go:681		0xe21e40		4881c4f8000000		ADDQ $.file+171(SB), SP								
  map.go:681		0xe21e47		5d			POPQ BP										
  map.go:681		0xe21e48		c3			RET										
  map.go:673		0xe21e49		4989d3			MOVQ DX, R11									
  map.go:673		0xe21e4c		4c21d2			ANDQ R10, DX									
  map.go:673		0xe21e4f		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  map.go:673		0xe21e53		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  map.go:673		0xe21e58		4939dc			CMPQ R12, BX									
  map.go:673		0xe21e5b		742d			JE 0xe21e8a									
  map.go:673		0xe21e5d		498d5301		LEAQ 0x1(R11), DX								
  map.go:673		0xe21e61		4d85e4			TESTQ R12, R12									
  map.go:673		0xe21e64		75e3			JNE 0xe21e49									
  map.go:673		0xe21e66		488d05a39d1900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.53(SB), AX				
  map.go:673		0xe21e6d		e86ed45eff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe21e72		4c8b842480000000	MOVQ 0x80(SP), R8								
  map.go:673		0xe21e7a		4889c2			MOVQ AX, DX									
  io.go:354		0xe21e7d		488b8424e8000000	MOVQ 0xe8(SP), AX								
  map.go:673		0xe21e85		e9a1feffff		JMP 0xe21d2b									
  map.go:673		0xe21e8a		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  map.go:673		0xe21e8f		e997feffff		JMP 0xe21d2b									
  map.go:647		0xe21e94		4d89d3			MOVQ R10, R11									
  map.go:647		0xe21e97		4d21ca			ANDQ R9, R10									
  map.go:647		0xe21e9a		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  map.go:647		0xe21e9e		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  map.go:647		0xe21ea3		4939dc			CMPQ R12, BX									
  map.go:647		0xe21ea6		7425			JE 0xe21ecd									
  map.go:647		0xe21ea8		4d8d5301		LEAQ 0x1(R11), R10								
  map.go:647		0xe21eac		4d85e4			TESTQ R12, R12									
  map.go:647		0xe21eaf		75e3			JNE 0xe21e94									
  map.go:647		0xe21eb1		488d05389d1900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.52(SB), AX				
  map.go:647		0xe21eb8		e823d45eff		CALL runtime.typeAssert(SB)							
  map.go:647		0xe21ebd		4889c1			MOVQ AX, CX									
  io.go:354		0xe21ec0		488b8424e8000000	MOVQ 0xe8(SP), AX								
  map.go:647		0xe21ec8		e9affbffff		JMP 0xe21a7c									
  map.go:647		0xe21ecd		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  map.go:647		0xe21ed2		4889d1			MOVQ DX, CX									
  map.go:647		0xe21ed5		e9a2fbffff		JMP 0xe21a7c									
  buffer.go:54		0xe21eda		e8c16965ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe21edf		90			NOPL										
  map.go:606		0xe21ee0		4889442408		MOVQ AX, 0x8(SP)								
  map.go:606		0xe21ee5		48895c2410		MOVQ BX, 0x10(SP)								
  map.go:606		0xe21eea		48894c2418		MOVQ CX, 0x18(SP)								
  map.go:606		0xe21eef		48897c2420		MOVQ DI, 0x20(SP)								
  map.go:606		0xe21ef4		e8e74565ff		CALL runtime.morestack_noctxt.abi0(SB)						
  map.go:606		0xe21ef9		488b442408		MOVQ 0x8(SP), AX								
  map.go:606		0xe21efe		488b5c2410		MOVQ 0x10(SP), BX								
  map.go:606		0xe21f03		488b4c2418		MOVQ 0x18(SP), CX								
  map.go:606		0xe21f08		488b7c2420		MOVQ 0x20(SP), DI								
  map.go:606		0xe21f0d		e9aef8ffff		JMP CAS-Backend/pkg/agvcontrol.DelMapRequest(SB)				
  :-1			0xe21f12		cc			INT $__subsystem__(SB)								
  :-1			0xe21f13		cc			INT $__subsystem__(SB)								
  :-1			0xe21f14		cc			INT $__subsystem__(SB)								
  :-1			0xe21f15		cc			INT $__subsystem__(SB)								
  :-1			0xe21f16		cc			INT $__subsystem__(SB)								
  :-1			0xe21f17		cc			INT $__subsystem__(SB)								
  :-1			0xe21f18		cc			INT $__subsystem__(SB)								
  :-1			0xe21f19		cc			INT $__subsystem__(SB)								
  :-1			0xe21f1a		cc			INT $__subsystem__(SB)								
  :-1			0xe21f1b		cc			INT $__subsystem__(SB)								
  :-1			0xe21f1c		cc			INT $__subsystem__(SB)								
  :-1			0xe21f1d		cc			INT $__subsystem__(SB)								
  :-1			0xe21f1e		cc			INT $__subsystem__(SB)								
  :-1			0xe21f1f		cc			INT $__subsystem__(SB)								

