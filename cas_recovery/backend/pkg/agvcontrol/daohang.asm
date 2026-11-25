TEXT CAS-Backend/pkg/agvcontrol.SendTranslateRequest(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:37		0xe141e0		4c8da42450ffffff	LEAQ 0xffffff50(SP), R12							
  daohang.go:37		0xe141e8		4d3b6610		CMPQ R12, 0x10(R14)								
  daohang.go:37		0xe141ec		0f8694070000		JBE 0xe14986									
  daohang.go:37		0xe141f2		55			PUSHQ BP									
  daohang.go:37		0xe141f3		4889e5			MOVQ SP, BP									
  daohang.go:37		0xe141f6		4881ec28010000		SUBQ $.file+219(SB), SP								
  daohang.go:48		0xe141fd		4889842438010000	MOVQ AX, 0x138(SP)								
  daohang.go:48		0xe14205		48899c2440010000	MOVQ BX, 0x140(SP)								
  daohang.go:47		0xe1420d		f20f11842490000000	MOVSD_XMM X0, 0x90(SP)								
  daohang.go:47		0xe14216		f20f118c2498000000	MOVSD_XMM X1, 0x98(SP)								
  daohang.go:47		0xe1421f		f20f119424a0000000	MOVSD_XMM X2, 0xa0(SP)								
  daohang.go:47		0xe14228		48898c24a8000000	MOVQ CX, 0xa8(SP)								
  daohang.go:47		0xe14230		488d0529332e00		LEAQ runtime.types+1123680(SB), AX						
  daohang.go:47		0xe14237		488d9c2490000000	LEAQ 0x90(SP), BX								
  daohang.go:47		0xe1423f		90			NOPL										
  daohang.go:47		0xe14240		e8dbae5fff		CALL runtime.convTnoptr(SB)							
  daohang.go:47		0xe14245		4889c3			MOVQ AX, BX									
  daohang.go:47		0xe14248		488d0511332e00		LEAQ runtime.types+1123680(SB), AX						
  daohang.go:47		0xe1424f		e84c9275ff		CALL encoding/json.Marshal(SB)							
  daohang.go:48		0xe14254		4885ff			TESTQ DI, DI									
  daohang.go:48		0xe14257		7451			JE 0xe142aa									
  daohang.go:49		0xe14259		440f11bc2400010000	MOVUPS X15, 0x100(SP)								
  daohang.go:49		0xe14262		7404			JE 0xe14268									
  daohang.go:49		0xe14264		488b7f08		MOVQ 0x8(DI), DI								
  daohang.go:49		0xe14268		4889bc2400010000	MOVQ DI, 0x100(SP)								
  daohang.go:49		0xe14270		4889b42408010000	MOVQ SI, 0x108(SP)								
  daohang.go:49		0xe14278		488d051cf93600		LEAQ go:string.*+112275(SB), AX							
  daohang.go:49		0xe1427f		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  daohang.go:49		0xe14284		488d8c2400010000	LEAQ 0x100(SP), CX								
  daohang.go:49		0xe1428c		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:49		0xe14291		4889fe			MOVQ DI, SI									
  daohang.go:49		0xe14294		e8278170ff		CALL fmt.Errorf(SB)								
  daohang.go:49		0xe14299		4889d9			MOVQ BX, CX									
  daohang.go:49		0xe1429c		4889c3			MOVQ AX, BX									
  daohang.go:49		0xe1429f		31c0			XORL AX, AX									
  daohang.go:49		0xe142a1		4881c428010000		ADDQ $.file+219(SB), SP								
  daohang.go:49		0xe142a8		5d			POPQ BP										
  daohang.go:49		0xe142a9		c3			RET										
  daohang.go:47		0xe142aa		48898c2480000000	MOVQ CX, 0x80(SP)								
  daohang.go:47		0xe142b2		48895c2478		MOVQ BX, 0x78(SP)								
  daohang.go:47		0xe142b7		48898424c0000000	MOVQ AX, 0xc0(SP)								
  daohang.go:59		0xe142bf		48c74424485a010100	MOVQ $__dll_characteristics__+32762(SB), 0x48(SP)				
  daohang.go:59		0xe142c8		48c7442450ef0b0000	MOVQ $__file_alignment__+2543(SB), 0x50(SP)					
  daohang.go:57		0xe142d1		895c244c		MOVL BX, 0x4c(SP)								
  daohang.go:70		0xe142d5		488d0524402c00		LEAQ runtime.types+996096(SB), AX						
  daohang.go:70		0xe142dc		0f1f4000		NOPL 0(AX)									
  daohang.go:70		0xe142e0		e8bbd45fff		CALL runtime.newobject(SB)							
  daohang.go:70		0xe142e5		4889842420010000	MOVQ AX, 0x120(SP)								
  daohang.go:71		0xe142ed		0f10442448		MOVUPS 0x48(SP), X0								
  daohang.go:71		0xe142f2		0f11442458		MOVUPS X0, 0x58(SP)								
  daohang.go:71		0xe142f7		4889c3			MOVQ AX, BX									
  daohang.go:71		0xe142fa		488d0d3f2c0602		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:71		0xe14301		488d3d988f7402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:71		0xe14308		488d35b1a52f00		LEAQ runtime.types+1218752(SB), SI						
  daohang.go:71		0xe1430f		4c8d442458		LEAQ 0x58(SP), R8								
  daohang.go:71		0xe14314		488d05458d0502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  daohang.go:71		0xe1431b		0f1f440000		NOPL 0(AX)(AX*1)								
  daohang.go:71		0xe14320		e8fbdd74ff		CALL encoding/binary.Write(SB)							
  daohang.go:72		0xe14325		4885c0			TESTQ AX, AX									
  daohang.go:72		0xe14328		7451			JE 0xe1437b									
  daohang.go:73		0xe1432a		440f11bc2400010000	MOVUPS X15, 0x100(SP)								
  daohang.go:73		0xe14333		7404			JE 0xe14339									
  daohang.go:73		0xe14335		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:73		0xe14339		4889842400010000	MOVQ AX, 0x100(SP)								
  daohang.go:73		0xe14341		48899c2408010000	MOVQ BX, 0x108(SP)								
  daohang.go:73		0xe14349		488d0550503700		LEAQ go:string.*+134808(SB), AX							
  daohang.go:73		0xe14350		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:73		0xe14355		488d8c2400010000	LEAQ 0x100(SP), CX								
  daohang.go:73		0xe1435d		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:73		0xe14362		4889fe			MOVQ DI, SI									
  daohang.go:73		0xe14365		e8568070ff		CALL fmt.Errorf(SB)								
  daohang.go:73		0xe1436a		4889d9			MOVQ BX, CX									
  daohang.go:73		0xe1436d		4889c3			MOVQ AX, BX									
  daohang.go:73		0xe14370		31c0			XORL AX, AX									
  daohang.go:73		0xe14372		4881c428010000		ADDQ $.file+219(SB), SP								
  daohang.go:73		0xe14379		5d			POPQ BP										
  daohang.go:73		0xe1437a		c3			RET										
  daohang.go:75		0xe1437b		488b842420010000	MOVQ 0x120(SP), AX								
  daohang.go:75		0xe14383		488b9c24c0000000	MOVQ 0xc0(SP), BX								
  daohang.go:75		0xe1438b		488b4c2478		MOVQ 0x78(SP), CX								
  daohang.go:75		0xe14390		488bbc2480000000	MOVQ 0x80(SP), DI								
  daohang.go:75		0xe14398		e8838171ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe1439d		488b942420010000	MOVQ 0x120(SP), DX								
  buffer.go:54		0xe143a5		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe143a9		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe143ad		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe143b0		0f82c6050000		JB 0xe1497c									
  daohang.go:78		0xe143b6		488bb42438010000	MOVQ 0x138(SP), SI								
  daohang.go:78		0xe143be		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe143c2		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe143c5		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe143c9		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe143cc		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe143cf		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe143d2		48f7da			NEGQ DX										
  buffer.go:54		0xe143d5		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe143d9		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe143dc		498d1c01		LEAQ 0(R9)(AX*1), BX								
  daohang.go:78		0xe143e0		488b842440010000	MOVQ 0x140(SP), AX								
  daohang.go:78		0xe143e8		41ffd0			CALL R8										
  daohang.go:79		0xe143eb		4885db			TESTQ BX, BX									
  daohang.go:79		0xe143ee		7575			JNE 0xe14465									
  daohang.go:84		0xe143f0		e8ab9c69ff		CALL time.Now(SB)								
  daohang.go:84		0xe143f5		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  daohang.go:84		0xe143ff		90			NOPL										
  daohang.go:84		0xe14400		e85b0169ff		CALL time.Time.Add(SB)								
  daohang.go:84		0xe14405		488b942438010000	MOVQ 0x138(SP), DX								
  daohang.go:84		0xe1440d		488b7240		MOVQ 0x40(DX), SI								
  daohang.go:84		0xe14411		4889cf			MOVQ CX, DI									
  daohang.go:84		0xe14414		4889d9			MOVQ BX, CX									
  daohang.go:84		0xe14417		4889c3			MOVQ AX, BX									
  daohang.go:84		0xe1441a		488b842440010000	MOVQ 0x140(SP), AX								
  daohang.go:84		0xe14422		ffd6			CALL SI										
  daohang.go:87		0xe14424		488d0575e52200		LEAQ runtime.types+383392(SB), AX						
  daohang.go:87		0xe1442b		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  daohang.go:87		0xe14430		4889d9			MOVQ BX, CX									
  daohang.go:87		0xe14433		e828d765ff		CALL runtime.makeslice(SB)							
  daohang.go:87		0xe14438		4889842410010000	MOVQ AX, 0x110(SP)								
  daohang.go:88		0xe14440		488b8c2438010000	MOVQ 0x138(SP), CX								
  daohang.go:88		0xe14448		4885c9			TESTQ CX, CX									
  daohang.go:88		0xe1444b		7469			JE 0xe144b6									
  daohang.go:88		0xe1444d		488b5908		MOVQ 0x8(CX), BX								
  daohang.go:88		0xe14451		488b1578721a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.8(SB), DX				
  daohang.go:88		0xe14458		4c8b0a			MOVQ 0(DX), R9									
  daohang.go:88		0xe1445b		448b5110		MOVL 0x10(CX), R10								
  daohang.go:88		0xe1445f		90			NOPL										
  daohang.go:88		0xe14460		e9d1040000		JMP 0xe14936									
  daohang.go:80		0xe14465		440f11bc2400010000	MOVUPS X15, 0x100(SP)								
  daohang.go:80		0xe1446e		7404			JE 0xe14474									
  daohang.go:80		0xe14470		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:80		0xe14474		48899c2400010000	MOVQ BX, 0x100(SP)								
  daohang.go:80		0xe1447c		48898c2408010000	MOVQ CX, 0x108(SP)								
  daohang.go:80		0xe14484		488d0539e33600		LEAQ go:string.*+107196(SB), AX							
  daohang.go:80		0xe1448b		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  daohang.go:80		0xe14490		488d8c2400010000	LEAQ 0x100(SP), CX								
  daohang.go:80		0xe14498		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:80		0xe1449d		4889fe			MOVQ DI, SI									
  daohang.go:80		0xe144a0		e81b7f70ff		CALL fmt.Errorf(SB)								
  daohang.go:80		0xe144a5		4889d9			MOVQ BX, CX									
  daohang.go:80		0xe144a8		4889c3			MOVQ AX, BX									
  daohang.go:80		0xe144ab		31c0			XORL AX, AX									
  daohang.go:80		0xe144ad		4881c428010000		ADDQ $.file+219(SB), SP								
  daohang.go:80		0xe144b4		5d			POPQ BP										
  daohang.go:80		0xe144b5		c3			RET										
  io.go:354		0xe144b6		488b9c2440010000	MOVQ 0x140(SP), BX								
  io.go:354		0xe144be		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe144c3		4889fe			MOVQ DI, SI									
  io.go:354		0xe144c6		4989f0			MOVQ SI, R8									
  daohang.go:87		0xe144c9		4889c2			MOVQ AX, DX									
  io.go:354		0xe144cc		4889c8			MOVQ CX, AX									
  io.go:354		0xe144cf		4889d1			MOVQ DX, CX									
  io.go:354		0xe144d2		e829e769ff		CALL io.ReadAtLeast(SB)								
  io.go:354		0xe144d7		660f1f840000000000	NOPW 0(AX)(AX*1)								
  daohang.go:89		0xe144e0		4885db			TESTQ BX, BX									
  daohang.go:89		0xe144e3		0f8404010000		JE 0xe145ed									
  daohang.go:91		0xe144e9		48391dd0281a00		CMPQ io.EOF(SB), BX								
  daohang.go:91		0xe144f0		7405			JE 0xe144f7									
  daohang.go:89		0xe144f2		4885db			TESTQ BX, BX									
  daohang.go:91		0xe144f5		eb56			JMP 0xe1454d									
  io.go:354		0xe144f7		4889442470		MOVQ AX, 0x70(SP)								
  io.go:354		0xe144fc		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  io.go:354		0xe14504		48899c2488000000	MOVQ BX, 0x88(SP)								
  daohang.go:91		0xe1450c		488b15b5281a00		MOVQ io.EOF+8(SB), DX								
  daohang.go:91		0xe14513		4889d8			MOVQ BX, AX									
  daohang.go:91		0xe14516		4889cb			MOVQ CX, BX									
  daohang.go:91		0xe14519		4889d1			MOVQ DX, CX									
  daohang.go:91		0xe1451c		0f1f4000		NOPL 0(AX)									
  daohang.go:91		0xe14520		e8bb3f5fff		CALL runtime.ifaceeq(SB)							
  daohang.go:91		0xe14525		84c0			TESTL AL, AL									
  daohang.go:91		0xe14527		0f8597000000		JNE 0xe145c4									
  daohang.go:89		0xe1452d		488b8c2488000000	MOVQ 0x88(SP), CX								
  daohang.go:89		0xe14535		4885c9			TESTQ CX, CX									
  daohang.go:94		0xe14538		488b442470		MOVQ 0x70(SP), AX								
  daohang.go:94		0xe1453d		488b8c24c8000000	MOVQ 0xc8(SP), CX								
  daohang.go:94		0xe14545		488b9c2488000000	MOVQ 0x88(SP), BX								
  daohang.go:94		0xe1454d		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)								
  daohang.go:94		0xe14556		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  daohang.go:94		0xe1455f		90			NOPL										
  daohang.go:94		0xe14560		7404			JE 0xe14566									
  daohang.go:94		0xe14562		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:94		0xe14566		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  daohang.go:94		0xe1456e		48898c24e8000000	MOVQ CX, 0xe8(SP)								
  daohang.go:94		0xe14576		e8255b65ff		CALL runtime.convT64(SB)							
  daohang.go:94		0xe1457b		488d0ddee52200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:94		0xe14582		48898c24f0000000	MOVQ CX, 0xf0(SP)								
  daohang.go:94		0xe1458a		48898424f8000000	MOVQ AX, 0xf8(SP)								
  daohang.go:94		0xe14592		488d05bf853800		LEAQ go:string.*+214608(SB), AX							
  daohang.go:94		0xe14599		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  daohang.go:94		0xe1459e		488d8c24e0000000	LEAQ 0xe0(SP), CX								
  daohang.go:94		0xe145a6		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:94		0xe145ab		4889fe			MOVQ DI, SI									
  daohang.go:94		0xe145ae		e80d7e70ff		CALL fmt.Errorf(SB)								
  daohang.go:94		0xe145b3		4889d9			MOVQ BX, CX									
  daohang.go:94		0xe145b6		4889c3			MOVQ AX, BX									
  daohang.go:94		0xe145b9		31c0			XORL AX, AX									
  daohang.go:94		0xe145bb		4881c428010000		ADDQ $.file+219(SB), SP								
  daohang.go:94		0xe145c2		5d			POPQ BP										
  daohang.go:94		0xe145c3		c3			RET										
  daohang.go:92		0xe145c4		488d0542d23600		LEAQ go:string.*+103173(SB), AX							
  daohang.go:92		0xe145cb		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  daohang.go:92		0xe145d0		31c9			XORL CX, CX									
  daohang.go:92		0xe145d2		31ff			XORL DI, DI									
  daohang.go:92		0xe145d4		4889fe			MOVQ DI, SI									
  daohang.go:92		0xe145d7		e8e47d70ff		CALL fmt.Errorf(SB)								
  daohang.go:92		0xe145dc		4889d9			MOVQ BX, CX									
  daohang.go:92		0xe145df		4889c3			MOVQ AX, BX									
  daohang.go:92		0xe145e2		31c0			XORL AX, AX									
  daohang.go:92		0xe145e4		4881c428010000		ADDQ $.file+219(SB), SP								
  daohang.go:92		0xe145eb		5d			POPQ BP										
  daohang.go:92		0xe145ec		c3			RET										
  daohang.go:98		0xe145ed		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  daohang.go:98		0xe145f6		488b842410010000	MOVQ 0x110(SP), AX								
  daohang.go:98		0xe145fe		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  daohang.go:98		0xe14603		4889d9			MOVQ BX, CX									
  daohang.go:98		0xe14606		e8b55b65ff		CALL runtime.convTslice(SB)							
  daohang.go:98		0xe1460b		488d152e3c2200		LEAQ runtime.types+340544(SB), DX						
  daohang.go:98		0xe14612		48899424d0000000	MOVQ DX, 0xd0(SP)								
  daohang.go:98		0xe1461a		48898424d8000000	MOVQ AX, 0xd8(SP)								
  print.go:233		0xe14622		488b1d57da6f02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe14629		488d05b0740502		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe14630		488d0dee613700		LEAQ go:string.*+140061(SB), CX							
  print.go:233		0xe14637		bf1d000000		MOVL $__major_os_version__+23(SB), DI						
  print.go:233		0xe1463c		488db424d0000000	LEAQ 0xd0(SP), SI								
  print.go:233		0xe14644		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe1464a		4d89c1			MOVQ R8, R9									
  print.go:233		0xe1464d		e8ceab70ff		CALL fmt.Fprintf(SB)								
  daohang.go:101	0xe14652		440f117c2438		MOVUPS X15, 0x38(SP)								
  daohang.go:102	0xe14658		90			NOPL										
  reader.go:159		0xe14659		488d05603d2c00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe14660		e83bd15fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe14665		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe1466d		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe14675		833dd494740200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe1467c		750a			JNE 0xe14688									
  reader.go:159		0xe1467e		488b942410010000	MOVQ 0x110(SP), DX								
  reader.go:159		0xe14686		eb10			JMP 0xe14698									
  reader.go:159		0xe14688		e8933d66ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe1468d		488b942410010000	MOVQ 0x110(SP), DX								
  reader.go:159		0xe14695		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe14698		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe1469b		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe146a3		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  daohang.go:103	0xe146ab		4889c3			MOVQ AX, BX									
  daohang.go:103	0xe146ae		488d0d8b280602		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:103	0xe146b5		488d3de48b7402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:103	0xe146bc		488d355d252100		LEAQ runtime.types+269344(SB), SI						
  daohang.go:103	0xe146c3		4c8d442438		LEAQ 0x38(SP), R8								
  daohang.go:103	0xe146c8		488d0511840502		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  daohang.go:103	0xe146cf		e86ccb74ff		CALL encoding/binary.Read(SB)							
  daohang.go:104	0xe146d4		4885c0			TESTQ AX, AX									
  daohang.go:104	0xe146d7		755b			JNE 0xe14734									
  daohang.go:116	0xe146d9		8b4c243c		MOVL 0x3c(SP), CX								
  daohang.go:116	0xe146dd		0f1f00			NOPL 0(AX)									
  daohang.go:116	0xe146e0		85c9			TESTL CX, CX									
  daohang.go:116	0xe146e2		764a			JBE 0xe1472e									
  daohang.go:117	0xe146e4		488d05b5e22200		LEAQ runtime.types+383392(SB), AX						
  daohang.go:117	0xe146eb		89cb			MOVL CX, BX									
  daohang.go:117	0xe146ed		e86ed465ff		CALL runtime.makeslice(SB)							
  daohang.go:117	0xe146f2		4889842410010000	MOVQ AX, 0x110(SP)								
  daohang.go:117	0xe146fa		448b44243c		MOVL 0x3c(SP), R8								
  daohang.go:117	0xe146ff		4c898424b0000000	MOVQ R8, 0xb0(SP)								
  daohang.go:88		0xe14707		488b942438010000	MOVQ 0x138(SP), DX								
  daohang.go:88		0xe1470f		4885d2			TESTQ DX, DX									
  daohang.go:118	0xe14712		0f8425010000		JE 0xe1483d									
  daohang.go:118	0xe14718		488b5a08		MOVQ 0x8(DX), BX								
  daohang.go:118	0xe1471c		4c8b0dcd6f1a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.9(SB), R9				
  daohang.go:118	0xe14723		4d8b11			MOVQ 0(R9), R10									
  daohang.go:118	0xe14726		8b5210			MOVL 0x10(DX), DX								
  daohang.go:118	0xe14729		e9bd010000		JMP 0xe148eb									
  daohang.go:118	0xe1472e		31c0			XORL AX, AX									
  daohang.go:118	0xe14730		31c9			XORL CX, CX									
  daohang.go:116	0xe14732		eb51			JMP 0xe14785									
  daohang.go:105	0xe14734		440f11bc2400010000	MOVUPS X15, 0x100(SP)								
  daohang.go:105	0xe1473d		7404			JE 0xe14743									
  daohang.go:105	0xe1473f		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:105	0xe14743		4889842400010000	MOVQ AX, 0x100(SP)								
  daohang.go:105	0xe1474b		48899c2408010000	MOVQ BX, 0x108(SP)								
  daohang.go:105	0xe14753		488d05624c3700		LEAQ go:string.*+134836(SB), AX							
  daohang.go:105	0xe1475a		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:105	0xe1475f		488d8c2400010000	LEAQ 0x100(SP), CX								
  daohang.go:105	0xe14767		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:105	0xe1476c		4889fe			MOVQ DI, SI									
  daohang.go:105	0xe1476f		e84c7c70ff		CALL fmt.Errorf(SB)								
  daohang.go:105	0xe14774		4889d9			MOVQ BX, CX									
  daohang.go:105	0xe14777		4889c3			MOVQ AX, BX									
  daohang.go:105	0xe1477a		31c0			XORL AX, AX									
  daohang.go:105	0xe1477c		4881c428010000		ADDQ $.file+219(SB), SP								
  daohang.go:105	0xe14783		5d			POPQ BP										
  daohang.go:105	0xe14784		c3			RET										
  daohang.go:127	0xe14785		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  daohang.go:127	0xe1478d		4889442468		MOVQ AX, 0x68(SP)								
  daohang.go:125	0xe14792		488d0567172c00		LEAQ runtime.types+986880(SB), AX						
  daohang.go:125	0xe14799		e802d05fff		CALL runtime.newobject(SB)							
  daohang.go:126	0xe1479e		837c243c00		CMPL 0x3c(SP), $0x0								
  daohang.go:126	0xe147a3		0f8687000000		JBE 0xe14830									
  daohang.go:125	0xe147a9		4889842418010000	MOVQ AX, 0x118(SP)								
  daohang.go:127	0xe147b1		488b5c2468		MOVQ 0x68(SP), BX								
  daohang.go:127	0xe147b6		4889d9			MOVQ BX, CX									
  daohang.go:127	0xe147b9		488d3da0242100		LEAQ runtime.types+269408(SB), DI						
  daohang.go:127	0xe147c0		4889c6			MOVQ AX, SI									
  daohang.go:127	0xe147c3		488b8424b8000000	MOVQ 0xb8(SP), AX								
  daohang.go:127	0xe147cb		e8102d75ff		CALL encoding/json.Unmarshal(SB)						
  daohang.go:128	0xe147d0		4885c0			TESTQ AX, AX									
  daohang.go:128	0xe147d3		7453			JE 0xe14828									
  daohang.go:129	0xe147d5		440f11bc2400010000	MOVUPS X15, 0x100(SP)								
  daohang.go:129	0xe147de		6690			NOPW										
  daohang.go:129	0xe147e0		7404			JE 0xe147e6									
  daohang.go:129	0xe147e2		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:129	0xe147e6		4889842400010000	MOVQ AX, 0x100(SP)								
  daohang.go:129	0xe147ee		48899c2408010000	MOVQ BX, 0x108(SP)								
  daohang.go:129	0xe147f6		488d05ab273700		LEAQ go:string.*+125600(SB), AX							
  daohang.go:129	0xe147fd		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  daohang.go:129	0xe14802		488d8c2400010000	LEAQ 0x100(SP), CX								
  daohang.go:129	0xe1480a		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:129	0xe1480f		4889fe			MOVQ DI, SI									
  daohang.go:129	0xe14812		e8a97b70ff		CALL fmt.Errorf(SB)								
  daohang.go:129	0xe14817		4889d9			MOVQ BX, CX									
  daohang.go:129	0xe1481a		4889c3			MOVQ AX, BX									
  daohang.go:129	0xe1481d		31c0			XORL AX, AX									
  daohang.go:129	0xe1481f		4881c428010000		ADDQ $.file+219(SB), SP								
  daohang.go:129	0xe14826		5d			POPQ BP										
  daohang.go:129	0xe14827		c3			RET										
  daohang.go:136	0xe14828		488b842418010000	MOVQ 0x118(SP), AX								
  daohang.go:136	0xe14830		31db			XORL BX, BX									
  daohang.go:136	0xe14832		31c9			XORL CX, CX									
  daohang.go:136	0xe14834		4881c428010000		ADDQ $.file+219(SB), SP								
  daohang.go:136	0xe1483b		5d			POPQ BP										
  daohang.go:136	0xe1483c		c3			RET										
  io.go:354		0xe1483d		488b9c2440010000	MOVQ 0x140(SP), BX								
  io.go:354		0xe14845		4889c1			MOVQ AX, CX									
  io.go:354		0xe14848		4c89c7			MOVQ R8, DI									
  io.go:354		0xe1484b		4889fe			MOVQ DI, SI									
  io.go:354		0xe1484e		4889d0			MOVQ DX, AX									
  io.go:354		0xe14851		e8aae369ff		CALL io.ReadAtLeast(SB)								
  daohang.go:119	0xe14856		4885db			TESTQ BX, BX									
  daohang.go:119	0xe14859		747b			JE 0xe148d6									
  daohang.go:120	0xe1485b		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)								
  daohang.go:120	0xe14864		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  daohang.go:120	0xe1486d		7404			JE 0xe14873									
  daohang.go:120	0xe1486f		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:120	0xe14873		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  daohang.go:120	0xe1487b		48898c24e8000000	MOVQ CX, 0xe8(SP)								
  daohang.go:120	0xe14883		e8185865ff		CALL runtime.convT64(SB)							
  daohang.go:120	0xe14888		488d0dd1e22200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:120	0xe1488f		48898c24f0000000	MOVQ CX, 0xf0(SP)								
  daohang.go:120	0xe14897		48898424f8000000	MOVQ AX, 0xf8(SP)								
  daohang.go:120	0xe1489f		488d05e3823800		LEAQ go:string.*+214657(SB), AX							
  daohang.go:120	0xe148a6		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  daohang.go:120	0xe148ab		488d8c24e0000000	LEAQ 0xe0(SP), CX								
  daohang.go:120	0xe148b3		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:120	0xe148b8		4889fe			MOVQ DI, SI									
  daohang.go:120	0xe148bb		0f1f440000		NOPL 0(AX)(AX*1)								
  daohang.go:120	0xe148c0		e8fb7a70ff		CALL fmt.Errorf(SB)								
  daohang.go:120	0xe148c5		4889d9			MOVQ BX, CX									
  daohang.go:120	0xe148c8		4889c3			MOVQ AX, BX									
  daohang.go:120	0xe148cb		31c0			XORL AX, AX									
  daohang.go:120	0xe148cd		4881c428010000		ADDQ $.file+219(SB), SP								
  daohang.go:120	0xe148d4		5d			POPQ BP										
  daohang.go:120	0xe148d5		c3			RET										
  daohang.go:127	0xe148d6		488b8424b0000000	MOVQ 0xb0(SP), AX								
  daohang.go:127	0xe148de		488b8c2410010000	MOVQ 0x110(SP), CX								
  daohang.go:125	0xe148e6		e99afeffff		JMP 0xe14785									
  daohang.go:118	0xe148eb		4989d3			MOVQ DX, R11									
  daohang.go:118	0xe148ee		4c21d2			ANDQ R10, DX									
  daohang.go:118	0xe148f1		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  daohang.go:118	0xe148f5		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  daohang.go:118	0xe148fa		4939dc			CMPQ R12, BX									
  daohang.go:118	0xe148fd		742d			JE 0xe1492c									
  daohang.go:118	0xe148ff		498d5301		LEAQ 0x1(R11), DX								
  daohang.go:118	0xe14903		4d85e4			TESTQ R12, R12									
  daohang.go:118	0xe14906		75e3			JNE 0xe148eb									
  daohang.go:118	0xe14908		488d05e16d1a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.9(SB), AX				
  daohang.go:118	0xe1490f		e8cca95fff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe14914		4c8b8424b0000000	MOVQ 0xb0(SP), R8								
  daohang.go:118	0xe1491c		4889c2			MOVQ AX, DX									
  io.go:354		0xe1491f		488b842410010000	MOVQ 0x110(SP), AX								
  daohang.go:118	0xe14927		e911ffffff		JMP 0xe1483d									
  daohang.go:118	0xe1492c		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  daohang.go:118	0xe14931		e907ffffff		JMP 0xe1483d									
  daohang.go:88		0xe14936		4d89d3			MOVQ R10, R11									
  daohang.go:88		0xe14939		4d21ca			ANDQ R9, R10									
  daohang.go:88		0xe1493c		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  daohang.go:88		0xe14940		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  daohang.go:88		0xe14945		4939dc			CMPQ R12, BX									
  daohang.go:88		0xe14948		7425			JE 0xe1496f									
  daohang.go:88		0xe1494a		4d8d5301		LEAQ 0x1(R11), R10								
  daohang.go:88		0xe1494e		4d85e4			TESTQ R12, R12									
  daohang.go:88		0xe14951		75e3			JNE 0xe14936									
  daohang.go:88		0xe14953		488d05766d1a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.8(SB), AX				
  daohang.go:88		0xe1495a		e881a95fff		CALL runtime.typeAssert(SB)							
  daohang.go:88		0xe1495f		4889c1			MOVQ AX, CX									
  io.go:354		0xe14962		488b842410010000	MOVQ 0x110(SP), AX								
  daohang.go:88		0xe1496a		e947fbffff		JMP 0xe144b6									
  daohang.go:88		0xe1496f		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  daohang.go:88		0xe14974		4889d1			MOVQ DX, CX									
  daohang.go:88		0xe14977		e93afbffff		JMP 0xe144b6									
  buffer.go:54		0xe1497c		0f1f4000		NOPL 0(AX)									
  buffer.go:54		0xe14980		e81b3f66ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe14985		90			NOPL										
  daohang.go:37		0xe14986		4889442408		MOVQ AX, 0x8(SP)								
  daohang.go:37		0xe1498b		48895c2410		MOVQ BX, 0x10(SP)								
  daohang.go:37		0xe14990		f20f11442418		MOVSD_XMM X0, 0x18(SP)								
  daohang.go:37		0xe14996		f20f114c2420		MOVSD_XMM X1, 0x20(SP)								
  daohang.go:37		0xe1499c		f20f11542428		MOVSD_XMM X2, 0x28(SP)								
  daohang.go:37		0xe149a2		48894c2430		MOVQ CX, 0x30(SP)								
  daohang.go:37		0xe149a7		e8341b66ff		CALL runtime.morestack_noctxt.abi0(SB)						
  daohang.go:37		0xe149ac		488b442408		MOVQ 0x8(SP), AX								
  daohang.go:37		0xe149b1		488b5c2410		MOVQ 0x10(SP), BX								
  daohang.go:37		0xe149b6		f20f10442418		MOVSD_XMM 0x18(SP), X0								
  daohang.go:37		0xe149bc		f20f104c2420		MOVSD_XMM 0x20(SP), X1								
  daohang.go:37		0xe149c2		f20f10542428		MOVSD_XMM 0x28(SP), X2								
  daohang.go:37		0xe149c8		488b4c2430		MOVQ 0x30(SP), CX								
  daohang.go:37		0xe149cd		e90ef8ffff		JMP CAS-Backend/pkg/agvcontrol.SendTranslateRequest(SB)				
  :-1			0xe149d2		cc			INT $__subsystem__(SB)								
  :-1			0xe149d3		cc			INT $__subsystem__(SB)								
  :-1			0xe149d4		cc			INT $__subsystem__(SB)								
  :-1			0xe149d5		cc			INT $__subsystem__(SB)								
  :-1			0xe149d6		cc			INT $__subsystem__(SB)								
  :-1			0xe149d7		cc			INT $__subsystem__(SB)								
  :-1			0xe149d8		cc			INT $__subsystem__(SB)								
  :-1			0xe149d9		cc			INT $__subsystem__(SB)								
  :-1			0xe149da		cc			INT $__subsystem__(SB)								
  :-1			0xe149db		cc			INT $__subsystem__(SB)								
  :-1			0xe149dc		cc			INT $__subsystem__(SB)								
  :-1			0xe149dd		cc			INT $__subsystem__(SB)								
  :-1			0xe149de		cc			INT $__subsystem__(SB)								
  :-1			0xe149df		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SendTurnCommand(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:140	0xe149e0		4c8da42428feffff	LEAQ 0xfffffe28(SP), R12				
  daohang.go:140	0xe149e8		4d3b6610		CMPQ R12, 0x10(R14)					
  daohang.go:140	0xe149ec		0f86490f0000		JBE 0xe1593b						
  daohang.go:140	0xe149f2		55			PUSHQ BP						
  daohang.go:140	0xe149f3		4889e5			MOVQ SP, BP						
  daohang.go:140	0xe149f6		4881ec50020000		SUBQ $__file_alignment__+80(SB), SP			
  daohang.go:150	0xe149fd		f20f11842470020000	MOVSD_XMM X0, 0x270(SP)					
  daohang.go:150	0xe14a06		f20f118c2478020000	MOVSD_XMM X1, 0x278(SP)					
  daohang.go:150	0xe14a0f		48898c2480020000	MOVQ CX, 0x280(SP)					
  daohang.go:150	0xe14a17		6689bc2488020000	MOVW DI, 0x288(SP)					
  daohang.go:150	0xe14a1f		48899c2468020000	MOVQ BX, 0x268(SP)					
  daohang.go:150	0xe14a27		4889842460020000	MOVQ AX, 0x260(SP)					
  daohang.go:142	0xe14a2f		e8ac6565ff		CALL runtime.makemap_small(SB)				
  daohang.go:142	0xe14a34		4889842490000000	MOVQ AX, 0x90(SP)					
  daohang.go:143	0xe14a3c		f20f10842470020000	MOVSD_XMM 0x270(SP), X0					
  daohang.go:143	0xe14a45		66480f7ec1		MOVQ X0, CX						
  daohang.go:143	0xe14a4a		4889c8			MOVQ CX, AX						
  daohang.go:143	0xe14a4d		e84e5665ff		CALL runtime.convT64(SB)				
  daohang.go:143	0xe14a52		48898424b0000000	MOVQ AX, 0xb0(SP)					
  daohang.go:142	0xe14a5a		488b9c2490000000	MOVQ 0x90(SP), BX					
  daohang.go:142	0xe14a62		488d0d015d3500		LEAQ go:string.*+8802(SB), CX				
  daohang.go:142	0xe14a69		bf05000000		MOVL $__subsystem__+2(SB), DI				
  daohang.go:142	0xe14a6e		488d054b8a2600		LEAQ runtime.types+623808(SB), AX			
  daohang.go:142	0xe14a75		e8a69565ff		CALL runtime.mapassign_faststr(SB)			
  daohang.go:142	0xe14a7a		488d0d5fe22200		LEAQ runtime.types+384224(SB), CX			
  daohang.go:142	0xe14a81		488908			MOVQ CX, 0(AX)						
  daohang.go:142	0xe14a84		833dc590740200		CMPL runtime.writeBarrier(SB), $0x0			
  daohang.go:142	0xe14a8b		750a			JNE 0xe14a97						
  daohang.go:142	0xe14a8d		488b9424b0000000	MOVQ 0xb0(SP), DX					
  daohang.go:142	0xe14a95		eb18			JMP 0xe14aaf						
  daohang.go:142	0xe14a97		e8a43966ff		CALL runtime.gcWriteBarrier2(SB)			
  daohang.go:142	0xe14a9c		488b9424b0000000	MOVQ 0xb0(SP), DX					
  daohang.go:142	0xe14aa4		498913			MOVQ DX, 0(R11)						
  daohang.go:142	0xe14aa7		488b5808		MOVQ 0x8(AX), BX					
  daohang.go:142	0xe14aab		49895b08		MOVQ BX, 0x8(R11)					
  daohang.go:142	0xe14aaf		48895008		MOVQ DX, 0x8(AX)					
  daohang.go:144	0xe14ab3		f20f10842478020000	MOVSD_XMM 0x278(SP), X0					
  daohang.go:144	0xe14abc		66480f7ec0		MOVQ X0, AX						
  daohang.go:144	0xe14ac1		e8da5565ff		CALL runtime.convT64(SB)				
  daohang.go:144	0xe14ac6		48898424b0000000	MOVQ AX, 0xb0(SP)					
  daohang.go:142	0xe14ace		488b9c2490000000	MOVQ 0x90(SP), BX					
  daohang.go:142	0xe14ad6		488d0dcb3a3500		LEAQ go:string.*+160(SB), CX				
  daohang.go:142	0xe14add		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  daohang.go:142	0xe14ae2		488d05d7892600		LEAQ runtime.types+623808(SB), AX			
  daohang.go:142	0xe14ae9		e8329565ff		CALL runtime.mapassign_faststr(SB)			
  daohang.go:142	0xe14aee		488d0debe12200		LEAQ runtime.types+384224(SB), CX			
  daohang.go:142	0xe14af5		488908			MOVQ CX, 0(AX)						
  daohang.go:142	0xe14af8		833d5190740200		CMPL runtime.writeBarrier(SB), $0x0			
  daohang.go:142	0xe14aff		90			NOPL							
  daohang.go:142	0xe14b00		750a			JNE 0xe14b0c						
  daohang.go:142	0xe14b02		488b8c24b0000000	MOVQ 0xb0(SP), CX					
  daohang.go:142	0xe14b0a		eb18			JMP 0xe14b24						
  daohang.go:142	0xe14b0c		e82f3966ff		CALL runtime.gcWriteBarrier2(SB)			
  daohang.go:142	0xe14b11		488b8c24b0000000	MOVQ 0xb0(SP), CX					
  daohang.go:142	0xe14b19		49890b			MOVQ CX, 0(R11)						
  daohang.go:142	0xe14b1c		488b5008		MOVQ 0x8(AX), DX					
  daohang.go:142	0xe14b20		49895308		MOVQ DX, 0x8(R11)					
  daohang.go:142	0xe14b24		48894808		MOVQ CX, 0x8(AX)					
  daohang.go:145	0xe14b28		488b842480020000	MOVQ 0x280(SP), AX					
  daohang.go:145	0xe14b30		e86b5565ff		CALL runtime.convT64(SB)				
  daohang.go:145	0xe14b35		48898424b0000000	MOVQ AX, 0xb0(SP)					
  daohang.go:142	0xe14b3d		488b9c2490000000	MOVQ 0x90(SP), BX					
  daohang.go:142	0xe14b45		488d0d604b3500		LEAQ go:string.*+4516(SB), CX				
  daohang.go:142	0xe14b4c		bf04000000		MOVL $__subsystem__+1(SB), DI				
  daohang.go:142	0xe14b51		488d0568892600		LEAQ runtime.types+623808(SB), AX			
  daohang.go:142	0xe14b58		e8c39465ff		CALL runtime.mapassign_faststr(SB)			
  daohang.go:142	0xe14b5d		488d0dfcdf2200		LEAQ runtime.types+383840(SB), CX			
  daohang.go:142	0xe14b64		488908			MOVQ CX, 0(AX)						
  daohang.go:142	0xe14b67		833de28f740200		CMPL runtime.writeBarrier(SB), $0x0			
  daohang.go:142	0xe14b6e		750a			JNE 0xe14b7a						
  daohang.go:142	0xe14b70		488b9424b0000000	MOVQ 0xb0(SP), DX					
  daohang.go:142	0xe14b78		eb18			JMP 0xe14b92						
  daohang.go:142	0xe14b7a		e8c13866ff		CALL runtime.gcWriteBarrier2(SB)			
  daohang.go:142	0xe14b7f		488b9424b0000000	MOVQ 0xb0(SP), DX					
  daohang.go:142	0xe14b87		498913			MOVQ DX, 0(R11)						
  daohang.go:142	0xe14b8a		488b7008		MOVQ 0x8(AX), SI					
  daohang.go:142	0xe14b8e		49897308		MOVQ SI, 0x8(R11)					
  daohang.go:142	0xe14b92		48895008		MOVQ DX, 0x8(AX)					
  daohang.go:149	0xe14b96		488d0523892600		LEAQ runtime.types+623808(SB), AX			
  daohang.go:149	0xe14b9d		488b9c2490000000	MOVQ 0x90(SP), BX					
  daohang.go:149	0xe14ba5		e8f68875ff		CALL encoding/json.Marshal(SB)				
  daohang.go:150	0xe14baa		4885ff			TESTQ DI, DI						
  daohang.go:150	0xe14bad		7451			JE 0xe14c00						
  daohang.go:151	0xe14baf		440f11bc2438020000	MOVUPS X15, 0x238(SP)					
  daohang.go:151	0xe14bb8		7404			JE 0xe14bbe						
  daohang.go:151	0xe14bba		488b7f08		MOVQ 0x8(DI), DI					
  daohang.go:151	0xe14bbe		4889bc2438020000	MOVQ DI, 0x238(SP)					
  daohang.go:151	0xe14bc6		4889b42440020000	MOVQ SI, 0x240(SP)					
  daohang.go:151	0xe14bce		488d05c6ef3600		LEAQ go:string.*+112275(SB), AX				
  daohang.go:151	0xe14bd5		bb17000000		MOVL $__major_os_version__+17(SB), BX			
  daohang.go:151	0xe14bda		488d8c2438020000	LEAQ 0x238(SP), CX					
  daohang.go:151	0xe14be2		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:151	0xe14be7		4889fe			MOVQ DI, SI						
  daohang.go:151	0xe14bea		e8d17770ff		CALL fmt.Errorf(SB)					
  daohang.go:151	0xe14bef		4881c450020000		ADDQ $__file_alignment__+80(SB), SP			
  daohang.go:151	0xe14bf6		5d			POPQ BP							
  daohang.go:151	0xe14bf7		c3			RET							
  daohang.go:151	0xe14bf8		0f1f840000000000	NOPL 0(AX)(AX*1)					
  daohang.go:156	0xe14c00		4881fb00040000		CMPQ BX, $__file_alignment__+512(SB)			
  daohang.go:156	0xe14c07		0f8f24060000		JG 0xe15231						
  daohang.go:149	0xe14c0d		48895c2470		MOVQ BX, 0x70(SP)					
  daohang.go:149	0xe14c12		4889842498000000	MOVQ AX, 0x98(SP)					
  daohang.go:160	0xe14c1a		440f11bc24f8010000	MOVUPS X15, 0x1f8(SP)					
  daohang.go:160	0xe14c23		440f11bc2408020000	MOVUPS X15, 0x208(SP)					
  daohang.go:160	0xe14c2c		4889d8			MOVQ BX, AX						
  daohang.go:160	0xe14c2f		e86c5465ff		CALL runtime.convT64(SB)				
  daohang.go:160	0xe14c34		488d0d25df2200		LEAQ runtime.types+383840(SB), CX			
  daohang.go:160	0xe14c3b		48898c24f8010000	MOVQ CX, 0x1f8(SP)					
  daohang.go:160	0xe14c43		4889842400020000	MOVQ AX, 0x200(SP)					
  daohang.go:160	0xe14c4b		31c0			XORL AX, AX						
  daohang.go:160	0xe14c4d		488b9c2498000000	MOVQ 0x98(SP), BX					
  daohang.go:160	0xe14c55		488b4c2470		MOVQ 0x70(SP), CX					
  daohang.go:160	0xe14c5a		e821da65ff		CALL runtime.slicebytetostring(SB)			
  daohang.go:160	0xe14c5f		90			NOPL							
  daohang.go:160	0xe14c60		e8bb5465ff		CALL runtime.convTstring(SB)				
  daohang.go:160	0xe14c65		488d0db4dc2200		LEAQ runtime.types+383264(SB), CX			
  daohang.go:160	0xe14c6c		48898c2408020000	MOVQ CX, 0x208(SP)					
  daohang.go:160	0xe14c74		4889842410020000	MOVQ AX, 0x210(SP)					
  print.go:233		0xe14c7c		488b1dfdd36f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe14c83		488d05566e0502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe14c8a		bf27000000		MOVL $__major_os_version__+33(SB), DI			
  print.go:233		0xe14c8f		488db424f8010000	LEAQ 0x1f8(SP), SI					
  print.go:233		0xe14c97		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0xe14c9d		4d89c1			MOVQ R8, R9						
  print.go:233		0xe14ca0		488d0dc0023800		LEAQ go:string.*+182879(SB), CX				
  print.go:233		0xe14ca7		e874a570ff		CALL fmt.Fprintf(SB)					
  daohang.go:169	0xe14cac		48c74424585a010000	MOVQ $.file+269(SB), 0x58(SP)				
  daohang.go:169	0xe14cb5		48c7442460f00b0000	MOVQ $__file_alignment__+2544(SB), 0x60(SP)		
  daohang.go:166	0xe14cbe		0fb78c2488020000	MOVZX 0x288(SP), CX					
  daohang.go:166	0xe14cc6		66894c245a		MOVW CX, 0x5a(SP)					
  daohang.go:167	0xe14ccb		488b542470		MOVQ 0x70(SP), DX					
  daohang.go:167	0xe14cd0		8954245c		MOVL DX, 0x5c(SP)					
  daohang.go:163	0xe14cd4		0f10442458		MOVUPS 0x58(SP), X0					
  daohang.go:163	0xe14cd9		0f11442448		MOVUPS X0, 0x48(SP)					
  daohang.go:173	0xe14cde		488d05bbdc2200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:173	0xe14ce5		bb10000000		MOVL $__major_os_version__+10(SB), BX			
  daohang.go:173	0xe14cea		4889d9			MOVQ BX, CX						
  daohang.go:173	0xe14ced		e86ece65ff		CALL runtime.makeslice(SB)				
  daohang.go:174	0xe14cf2		0fb64c2448		MOVZX 0x48(SP), CX					
  daohang.go:174	0xe14cf7		8808			MOVB CL, 0(AX)						
  daohang.go:175	0xe14cf9		0fb64c2449		MOVZX 0x49(SP), CX					
  daohang.go:175	0xe14cfe		884801			MOVB CL, 0x1(AX)					
  daohang.go:178	0xe14d01		0fb74c244a		MOVZX 0x4a(SP), CX					
  daohang.go:181	0xe14d06		488d500a		LEAQ 0xa(AX), DX					
  binary.go:153		0xe14d0a		66c1c108		ROLW $__major_os_version__+2(SB), CX			
  binary.go:152		0xe14d0e		66894802		MOVW CX, 0x2(AX)					
  daohang.go:179	0xe14d12		8b4c244c		MOVL 0x4c(SP), CX					
  binary.go:173		0xe14d16		0fc9			BSWAP CX						
  binary.go:170		0xe14d18		894804			MOVL CX, 0x4(AX)					
  daohang.go:180	0xe14d1b		0fb74c2450		MOVZX 0x50(SP), CX					
  binary.go:153		0xe14d20		66c1c108		ROLW $__major_os_version__+2(SB), CX			
  binary.go:152		0xe14d24		66894808		MOVW CX, 0x8(AX)					
  daohang.go:181	0xe14d28		488d4c2452		LEAQ 0x52(SP), CX					
  daohang.go:181	0xe14d2d		4839d1			CMPQ CX, DX						
  daohang.go:181	0xe14d30		7410			JE 0xe14d42						
  daohang.go:181	0xe14d32		8b4c2452		MOVL 0x52(SP), CX					
  daohang.go:181	0xe14d36		0fb7542456		MOVZX 0x56(SP), DX					
  daohang.go:181	0xe14d3b		89480a			MOVL CX, 0xa(AX)					
  daohang.go:181	0xe14d3e		6689500e		MOVW DX, 0xe(AX)					
  daohang.go:173	0xe14d42		48898424b0000000	MOVQ AX, 0xb0(SP)					
  daohang.go:179	0xe14d4a		488d4804		LEAQ 0x4(AX), CX					
  daohang.go:179	0xe14d4e		48898c24a8000000	MOVQ CX, 0xa8(SP)					
  daohang.go:184	0xe14d56		488dbc24a8010000	LEAQ 0x1a8(SP), DI					
  daohang.go:184	0xe14d5e		488d7fd0		LEAQ -0x30(DI), DI					
  daohang.go:184	0xe14d62		48896c24f0		MOVQ BP, -0x10(SP)					
  daohang.go:184	0xe14d67		488d6c24f0		LEAQ -0x10(SP), BP					
  daohang.go:184	0xe14d6c		e87f3d66ff		CALL 0x478af0						
  daohang.go:184	0xe14d71		488b6d00		MOVQ 0(BP), BP						
  daohang.go:185	0xe14d75		0fb6542448		MOVZX 0x48(SP), DX					
  daohang.go:185	0xe14d7a		488d1d1fdc2200		LEAQ runtime.types+383392(SB), BX			
  daohang.go:185	0xe14d81		48899c24a8010000	MOVQ BX, 0x1a8(SP)					
  daohang.go:185	0xe14d89		488d3590591600		LEAQ runtime.staticuint64s(SB), SI			
  daohang.go:185	0xe14d90		488d14d6		LEAQ 0(SI)(DX*8), DX					
  daohang.go:185	0xe14d94		48899424b0010000	MOVQ DX, 0x1b0(SP)					
  daohang.go:185	0xe14d9c		0fb6542449		MOVZX 0x49(SP), DX					
  daohang.go:185	0xe14da1		48899c24b8010000	MOVQ BX, 0x1b8(SP)					
  daohang.go:185	0xe14da9		488d14d6		LEAQ 0(SI)(DX*8), DX					
  daohang.go:185	0xe14dad		48899424c0010000	MOVQ DX, 0x1c0(SP)					
  daohang.go:185	0xe14db5		0fb754244a		MOVZX 0x4a(SP), DX					
  daohang.go:185	0xe14dba		89d0			MOVL DX, AX						
  daohang.go:185	0xe14dbc		0f1f4000		NOPL 0(AX)						
  daohang.go:185	0xe14dc0		e8dba35fff		CALL runtime.convT16(SB)				
  daohang.go:185	0xe14dc5		488d0d54dc2200		LEAQ runtime.types+383520(SB), CX			
  daohang.go:185	0xe14dcc		48898c24c8010000	MOVQ CX, 0x1c8(SP)					
  daohang.go:185	0xe14dd4		48898424d0010000	MOVQ AX, 0x1d0(SP)					
  daohang.go:185	0xe14ddc		8b44244c		MOVL 0x4c(SP), AX					
  daohang.go:185	0xe14de0		e83ba45fff		CALL runtime.convT32(SB)				
  daohang.go:185	0xe14de5		488d0db4dc2200		LEAQ runtime.types+383648(SB), CX			
  daohang.go:185	0xe14dec		48898c24d8010000	MOVQ CX, 0x1d8(SP)					
  daohang.go:185	0xe14df4		48898424e0010000	MOVQ AX, 0x1e0(SP)					
  daohang.go:185	0xe14dfc		0fb7442450		MOVZX 0x50(SP), AX					
  daohang.go:185	0xe14e01		e89aa35fff		CALL runtime.convT16(SB)				
  daohang.go:185	0xe14e06		488d0d13dc2200		LEAQ runtime.types+383520(SB), CX			
  daohang.go:185	0xe14e0d		48898c24e8010000	MOVQ CX, 0x1e8(SP)					
  daohang.go:185	0xe14e15		48898424f0010000	MOVQ AX, 0x1f0(SP)					
  daohang.go:193	0xe14e1d		488b542470		MOVQ 0x70(SP), DX					
  daohang.go:193	0xe14e22		488d5a10		LEAQ 0x10(DX), BX					
  daohang.go:193	0xe14e26		48899c2488000000	MOVQ BX, 0x88(SP)					
  print.go:233		0xe14e2e		488b354bd26f02		MOVQ os.Stdout(SB), SI					
  print.go:233		0xe14e35		488d05a46c0502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe14e3c		bf47000000		MOVL $__major_os_version__+65(SB), DI			
  print.go:233		0xe14e41		41b805000000		MOVL $__subsystem__+2(SB), R8				
  print.go:233		0xe14e47		4d89c1			MOVQ R8, R9						
  print.go:233		0xe14e4a		4889f3			MOVQ SI, BX						
  print.go:233		0xe14e4d		488d0df2233900		LEAQ go:string.*+257342(SB), CX				
  print.go:233		0xe14e54		488db424a8010000	LEAQ 0x1a8(SP), SI					
  print.go:233		0xe14e5c		0f1f4000		NOPL 0(AX)						
  print.go:233		0xe14e60		e8bba370ff		CALL fmt.Fprintf(SB)					
  daohang.go:186	0xe14e65		440f11bc2498010000	MOVUPS X15, 0x198(SP)					
  daohang.go:186	0xe14e6e		488b8424b0000000	MOVQ 0xb0(SP), AX					
  daohang.go:186	0xe14e76		bb10000000		MOVL $__major_os_version__+10(SB), BX			
  daohang.go:186	0xe14e7b		4889d9			MOVQ BX, CX						
  daohang.go:186	0xe14e7e		6690			NOPW							
  daohang.go:186	0xe14e80		e83b5365ff		CALL runtime.convTslice(SB)				
  daohang.go:186	0xe14e85		488d0db4332200		LEAQ runtime.types+340544(SB), CX			
  daohang.go:186	0xe14e8c		48898c2498010000	MOVQ CX, 0x198(SP)					
  daohang.go:186	0xe14e94		48898424a0010000	MOVQ AX, 0x1a0(SP)					
  print.go:233		0xe14e9c		488b1dddd16f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe14ea3		488d05366c0502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe14eaa		bf11000000		MOVL $__major_os_version__+11(SB), DI			
  print.go:233		0xe14eaf		488db42498010000	LEAQ 0x198(SP), SI					
  print.go:233		0xe14eb7		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe14ebd		4d89c1			MOVQ R8, R9						
  print.go:233		0xe14ec0		488d0d1f7e3600		LEAQ go:string.*+83934(SB), CX				
  print.go:233		0xe14ec7		e854a370ff		CALL fmt.Fprintf(SB)					
  daohang.go:190	0xe14ecc		440f11bc2478010000	MOVUPS X15, 0x178(SP)					
  daohang.go:190	0xe14ed5		440f11bc2488010000	MOVUPS X15, 0x188(SP)					
  daohang.go:190	0xe14ede		488b8424a8000000	MOVQ 0xa8(SP), AX					
  daohang.go:190	0xe14ee6		bb04000000		MOVL $__subsystem__+1(SB), BX				
  daohang.go:190	0xe14eeb		b90c000000		MOVL $__major_os_version__+6(SB), CX			
  daohang.go:190	0xe14ef0		e8cb5265ff		CALL runtime.convTslice(SB)				
  daohang.go:190	0xe14ef5		488d0d44332200		LEAQ runtime.types+340544(SB), CX			
  daohang.go:190	0xe14efc		48898c2478010000	MOVQ CX, 0x178(SP)					
  daohang.go:190	0xe14f04		4889842480010000	MOVQ AX, 0x180(SP)					
  daohang.go:190	0xe14f0c		8b44244c		MOVL 0x4c(SP), AX					
  daohang.go:190	0xe14f10		e80ba35fff		CALL runtime.convT32(SB)				
  daohang.go:190	0xe14f15		488d0d84db2200		LEAQ runtime.types+383648(SB), CX			
  daohang.go:190	0xe14f1c		48898c2488010000	MOVQ CX, 0x188(SP)					
  daohang.go:190	0xe14f24		4889842490010000	MOVQ AX, 0x190(SP)					
  print.go:233		0xe14f2c		488b1d4dd16f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe14f33		488d05a66b0502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe14f3a		bf39000000		MOVL $__major_os_version__+51(SB), DI			
  print.go:233		0xe14f3f		488db42478010000	LEAQ 0x178(SP), SI					
  print.go:233		0xe14f47		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0xe14f4d		4d89c1			MOVQ R8, R9						
  print.go:233		0xe14f50		488d0d51cb3800		LEAQ go:string.*+234912(SB), CX				
  print.go:233		0xe14f57		e8c4a270ff		CALL fmt.Fprintf(SB)					
  daohang.go:193	0xe14f5c		488b9c2488000000	MOVQ 0x88(SP), BX					
  daohang.go:193	0xe14f64		4883fb10		CMPQ BX, $__major_os_version__+10(SB)			
  daohang.go:193	0xe14f68		770f			JA 0xe14f79						
  daohang.go:193	0xe14f6a		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:193	0xe14f6f		488b8424b0000000	MOVQ 0xb0(SP), AX					
  daohang.go:193	0xe14f77		eb1e			JMP 0xe14f97						
  daohang.go:193	0xe14f79		488b8424b0000000	MOVQ 0xb0(SP), AX					
  daohang.go:193	0xe14f81		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:193	0xe14f86		488b7c2470		MOVQ 0x70(SP), DI					
  daohang.go:193	0xe14f8b		488d350eda2200		LEAQ runtime.types+383392(SB), SI			
  daohang.go:193	0xe14f92		e8a9cc65ff		CALL runtime.growslice(SB)				
  daohang.go:193	0xe14f97		48898c2480000000	MOVQ CX, 0x80(SP)					
  daohang.go:193	0xe14f9f		48898424a0000000	MOVQ AX, 0xa0(SP)					
  daohang.go:193	0xe14fa7		48895c2478		MOVQ BX, 0x78(SP)					
  daohang.go:193	0xe14fac		488d5010		LEAQ 0x10(AX), DX					
  daohang.go:193	0xe14fb0		4889d0			MOVQ DX, AX						
  daohang.go:193	0xe14fb3		488b9c2498000000	MOVQ 0x98(SP), BX					
  daohang.go:193	0xe14fbb		488b4c2470		MOVQ 0x70(SP), CX					
  daohang.go:193	0xe14fc0		e8fb4166ff		CALL runtime.memmove(SB)				
  daohang.go:196	0xe14fc5		440f11bc2468010000	MOVUPS X15, 0x168(SP)					
  daohang.go:196	0xe14fce		488b442478		MOVQ 0x78(SP), AX					
  daohang.go:196	0xe14fd3		e8c85065ff		CALL runtime.convT64(SB)				
  daohang.go:196	0xe14fd8		488d1581db2200		LEAQ runtime.types+383840(SB), DX			
  daohang.go:196	0xe14fdf		4889942468010000	MOVQ DX, 0x168(SP)					
  daohang.go:196	0xe14fe7		4889842470010000	MOVQ AX, 0x170(SP)					
  print.go:233		0xe14fef		488b1d8ad06f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe14ff6		488d05e36a0502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe14ffd		488d0d3e583700		LEAQ go:string.*+140090(SB), CX				
  print.go:233		0xe15004		bf1d000000		MOVL $__major_os_version__+23(SB), DI			
  print.go:233		0xe15009		488db42468010000	LEAQ 0x168(SP), SI					
  print.go:233		0xe15011		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe15017		4d89c1			MOVQ R8, R9						
  print.go:233		0xe1501a		e801a270ff		CALL fmt.Fprintf(SB)					
  daohang.go:197	0xe1501f		488b542478		MOVQ 0x78(SP), DX					
  daohang.go:197	0xe15024		4883fa20		CMPQ DX, $__major_os_version__+26(SB)			
  daohang.go:197	0xe15028		b920000000		MOVL $__major_os_version__+26(SB), CX			
  daohang.go:197	0xe1502d		480f4cca		CMOVL DX, CX						
  daohang.go:197	0xe15031		488bb42480000000	MOVQ 0x80(SP), SI					
  daohang.go:197	0xe15039		0f1f8000000000		NOPL 0(AX)						
  daohang.go:197	0xe15040		4839ce			CMPQ SI, CX						
  daohang.go:197	0xe15043		0f82e9080000		JB 0xe15932						
  daohang.go:197	0xe15049		440f11bc2458010000	MOVUPS X15, 0x158(SP)					
  daohang.go:197	0xe15052		488b8424a0000000	MOVQ 0xa0(SP), AX					
  daohang.go:197	0xe1505a		4889cb			MOVQ CX, BX						
  daohang.go:197	0xe1505d		4889f1			MOVQ SI, CX						
  daohang.go:197	0xe15060		e85b5165ff		CALL runtime.convTslice(SB)				
  daohang.go:197	0xe15065		488d15d4312200		LEAQ runtime.types+340544(SB), DX			
  daohang.go:197	0xe1506c		4889942458010000	MOVQ DX, 0x158(SP)					
  daohang.go:197	0xe15074		4889842460010000	MOVQ AX, 0x160(SP)					
  print.go:233		0xe1507c		488b1dfdcf6f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe15083		488d05566a0502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe1508a		488d0d9b433700		LEAQ go:string.*+134948(SB), CX				
  print.go:233		0xe15091		bf1c000000		MOVL $__major_os_version__+22(SB), DI			
  print.go:233		0xe15096		488db42458010000	LEAQ 0x158(SP), SI					
  print.go:233		0xe1509e		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe150a4		4d89c1			MOVQ R8, R9						
  print.go:233		0xe150a7		e874a170ff		CALL fmt.Fprintf(SB)					
  daohang.go:200	0xe150ac		488b942460020000	MOVQ 0x260(SP), DX					
  daohang.go:200	0xe150b4		488b7250		MOVQ 0x50(DX), SI					
  daohang.go:200	0xe150b8		488b842468020000	MOVQ 0x268(SP), AX					
  daohang.go:200	0xe150c0		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  daohang.go:200	0xe150c8		488b4c2478		MOVQ 0x78(SP), CX					
  daohang.go:200	0xe150cd		488bbc2480000000	MOVQ 0x80(SP), DI					
  daohang.go:200	0xe150d5		ffd6			CALL SI							
  daohang.go:200	0xe150d7		660f1f840000000000	NOPW 0(AX)(AX*1)					
  daohang.go:201	0xe150e0		4885db			TESTQ BX, BX						
  daohang.go:201	0xe150e3		0f85ff000000		JNE 0xe151e8						
  daohang.go:205	0xe150e9		440f11bc2438010000	MOVUPS X15, 0x138(SP)					
  daohang.go:205	0xe150f2		440f11bc2448010000	MOVUPS X15, 0x148(SP)					
  daohang.go:205	0xe150fb		0fb7842488020000	MOVZX 0x288(SP), AX					
  daohang.go:205	0xe15103		e898a05fff		CALL runtime.convT16(SB)				
  daohang.go:205	0xe15108		488d0d11d92200		LEAQ runtime.types+383520(SB), CX			
  daohang.go:205	0xe1510f		48898c2438010000	MOVQ CX, 0x138(SP)					
  daohang.go:205	0xe15117		4889842440010000	MOVQ AX, 0x140(SP)					
  daohang.go:205	0xe1511f		488b442478		MOVQ 0x78(SP), AX					
  daohang.go:205	0xe15124		e8774f65ff		CALL runtime.convT64(SB)				
  daohang.go:205	0xe15129		488d0d30da2200		LEAQ runtime.types+383840(SB), CX			
  daohang.go:205	0xe15130		48898c2448010000	MOVQ CX, 0x148(SP)					
  daohang.go:205	0xe15138		4889842450010000	MOVQ AX, 0x150(SP)					
  print.go:233		0xe15140		488b1d39cf6f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe15147		488d0592690502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe1514e		bf3b000000		MOVL $__major_os_version__+53(SB), DI			
  print.go:233		0xe15153		488db42438010000	LEAQ 0x138(SP), SI					
  print.go:233		0xe1515b		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0xe15161		4d89c1			MOVQ R8, R9						
  print.go:233		0xe15164		488d0dc2d43800		LEAQ go:string.*+237861(SB), CX				
  print.go:233		0xe1516b		e8b0a070ff		CALL fmt.Fprintf(SB)					
  daohang.go:208	0xe15170		e82b8f69ff		CALL time.Now(SB)					
  daohang.go:208	0xe15175		48bf00e40b5402000000	MOVQ $0x2540be400, DI					
  daohang.go:208	0xe1517f		90			NOPL							
  daohang.go:208	0xe15180		e8dbf368ff		CALL time.Time.Add(SB)					
  daohang.go:208	0xe15185		488b942460020000	MOVQ 0x260(SP), DX					
  daohang.go:208	0xe1518d		488b7240		MOVQ 0x40(DX), SI					
  daohang.go:208	0xe15191		4889cf			MOVQ CX, DI						
  daohang.go:208	0xe15194		4889d9			MOVQ BX, CX						
  daohang.go:208	0xe15197		4889c3			MOVQ AX, BX						
  daohang.go:208	0xe1519a		488b842468020000	MOVQ 0x268(SP), AX					
  daohang.go:208	0xe151a2		ffd6			CALL SI							
  daohang.go:211	0xe151a4		488d05f5d72200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:211	0xe151ab		bb10000000		MOVL $__major_os_version__+10(SB), BX			
  daohang.go:211	0xe151b0		4889d9			MOVQ BX, CX						
  daohang.go:211	0xe151b3		e8a8c965ff		CALL runtime.makeslice(SB)				
  daohang.go:211	0xe151b8		48898424b0000000	MOVQ AX, 0xb0(SP)					
  daohang.go:212	0xe151c0		488b8c2460020000	MOVQ 0x260(SP), CX					
  daohang.go:212	0xe151c8		4885c9			TESTQ CX, CX						
  daohang.go:212	0xe151cb		0f84b5000000		JE 0xe15286						
  daohang.go:212	0xe151d1		488b5908		MOVQ 0x8(CX), BX					
  daohang.go:212	0xe151d5		488b1534651a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.10(SB), DX	
  daohang.go:212	0xe151dc		4c8b0a			MOVQ 0(DX), R9						
  daohang.go:212	0xe151df		448b5110		MOVL 0x10(CX), R10					
  daohang.go:212	0xe151e3		e9ff060000		JMP 0xe158e7						
  daohang.go:202	0xe151e8		440f11bc2438020000	MOVUPS X15, 0x238(SP)					
  daohang.go:202	0xe151f1		7404			JE 0xe151f7						
  daohang.go:202	0xe151f3		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:202	0xe151f7		48899c2438020000	MOVQ BX, 0x238(SP)					
  daohang.go:202	0xe151ff		48898c2440020000	MOVQ CX, 0x240(SP)					
  daohang.go:202	0xe15207		488d05b6d53600		LEAQ go:string.*+107196(SB), AX				
  daohang.go:202	0xe1520e		bb16000000		MOVL $__major_os_version__+16(SB), BX			
  daohang.go:202	0xe15213		488d8c2438020000	LEAQ 0x238(SP), CX					
  daohang.go:202	0xe1521b		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:202	0xe15220		4889fe			MOVQ DI, SI						
  daohang.go:202	0xe15223		e8987170ff		CALL fmt.Errorf(SB)					
  daohang.go:202	0xe15228		4881c450020000		ADDQ $__file_alignment__+80(SB), SP			
  daohang.go:202	0xe1522f		5d			POPQ BP							
  daohang.go:202	0xe15230		c3			RET							
  daohang.go:157	0xe15231		440f11bc2438020000	MOVUPS X15, 0x238(SP)					
  daohang.go:157	0xe1523a		4889d8			MOVQ BX, AX						
  daohang.go:157	0xe1523d		0f1f00			NOPL 0(AX)						
  daohang.go:157	0xe15240		e85b4e65ff		CALL runtime.convT64(SB)				
  daohang.go:157	0xe15245		488d0d14d92200		LEAQ runtime.types+383840(SB), CX			
  daohang.go:157	0xe1524c		48898c2438020000	MOVQ CX, 0x238(SP)					
  daohang.go:157	0xe15254		4889842440020000	MOVQ AX, 0x240(SP)					
  daohang.go:157	0xe1525c		488d055f1d3700		LEAQ go:string.*+125626(SB), AX				
  daohang.go:157	0xe15263		bb1a000000		MOVL $__major_os_version__+20(SB), BX			
  daohang.go:157	0xe15268		488d8c2438020000	LEAQ 0x238(SP), CX					
  daohang.go:157	0xe15270		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:157	0xe15275		4889fe			MOVQ DI, SI						
  daohang.go:157	0xe15278		e8437170ff		CALL fmt.Errorf(SB)					
  daohang.go:157	0xe1527d		4881c450020000		ADDQ $__file_alignment__+80(SB), SP			
  daohang.go:157	0xe15284		5d			POPQ BP							
  daohang.go:157	0xe15285		c3			RET							
  io.go:354		0xe15286		488b9c2468020000	MOVQ 0x268(SP), BX					
  io.go:354		0xe1528e		bf10000000		MOVL $__major_os_version__+10(SB), DI			
  io.go:354		0xe15293		4889fe			MOVQ DI, SI						
  io.go:354		0xe15296		4989f0			MOVQ SI, R8						
  daohang.go:211	0xe15299		4889c2			MOVQ AX, DX						
  io.go:354		0xe1529c		4889c8			MOVQ CX, AX						
  io.go:354		0xe1529f		4889d1			MOVQ DX, CX						
  io.go:354		0xe152a2		e859d969ff		CALL io.ReadAtLeast(SB)					
  daohang.go:213	0xe152a7		4885db			TESTQ BX, BX						
  daohang.go:213	0xe152aa		0f8599010000		JNE 0xe15449						
  daohang.go:219	0xe152b0		488b8c24b0000000	MOVQ 0xb0(SP), CX					
  daohang.go:219	0xe152b8		0fb711			MOVZX 0(CX), DX						
  daohang.go:218	0xe152bb		440f117c2438		MOVUPS X15, 0x38(SP)					
  daohang.go:218	0xe152c1		6689542438		MOVW DX, 0x38(SP)					
  daohang.go:225	0xe152c6		488d510a		LEAQ 0xa(CX), DX					
  binary.go:147		0xe152ca		0fb75902		MOVZX 0x2(CX), BX					
  binary.go:147		0xe152ce		66c1c308		ROLW $__major_os_version__+2(SB), BX			
  daohang.go:222	0xe152d2		66895c243a		MOVW BX, 0x3a(SP)					
  binary.go:165		0xe152d7		8b5904			MOVL 0x4(CX), BX					
  binary.go:165		0xe152da		0fcb			BSWAP BX						
  daohang.go:223	0xe152dc		895c243c		MOVL BX, 0x3c(SP)					
  binary.go:147		0xe152e0		0fb75908		MOVZX 0x8(CX), BX					
  binary.go:147		0xe152e4		66c1c308		ROLW $__major_os_version__+2(SB), BX			
  daohang.go:224	0xe152e8		66895c2440		MOVW BX, 0x40(SP)					
  daohang.go:225	0xe152ed		488d5c2442		LEAQ 0x42(SP), BX					
  daohang.go:225	0xe152f2		4839d3			CMPQ BX, DX						
  daohang.go:225	0xe152f5		7410			JE 0xe15307						
  daohang.go:225	0xe152f7		8b510a			MOVL 0xa(CX), DX					
  daohang.go:225	0xe152fa		0fb7490e		MOVZX 0xe(CX), CX					
  daohang.go:225	0xe152fe		89542442		MOVL DX, 0x42(SP)					
  daohang.go:225	0xe15302		66894c2446		MOVW CX, 0x46(SP)					
  daohang.go:227	0xe15307		440f11bc2408010000	MOVUPS X15, 0x108(SP)					
  daohang.go:227	0xe15310		440f11bc2418010000	MOVUPS X15, 0x118(SP)					
  daohang.go:227	0xe15319		440f11bc2428010000	MOVUPS X15, 0x128(SP)					
  daohang.go:228	0xe15322		0fb7442440		MOVZX 0x40(SP), AX					
  daohang.go:228	0xe15327		e8749e5fff		CALL runtime.convT16(SB)				
  daohang.go:228	0xe1532c		488d0dedd62200		LEAQ runtime.types+383520(SB), CX			
  daohang.go:228	0xe15333		48898c2408010000	MOVQ CX, 0x108(SP)					
  daohang.go:228	0xe1533b		4889842410010000	MOVQ AX, 0x110(SP)					
  daohang.go:228	0xe15343		8b44243c		MOVL 0x3c(SP), AX					
  daohang.go:228	0xe15347		e8d49e5fff		CALL runtime.convT32(SB)				
  daohang.go:228	0xe1534c		488d0d4dd72200		LEAQ runtime.types+383648(SB), CX			
  daohang.go:228	0xe15353		48898c2418010000	MOVQ CX, 0x118(SP)					
  daohang.go:228	0xe1535b		4889842420010000	MOVQ AX, 0x120(SP)					
  daohang.go:228	0xe15363		0fb744243a		MOVZX 0x3a(SP), AX					
  daohang.go:228	0xe15368		e8339e5fff		CALL runtime.convT16(SB)				
  daohang.go:228	0xe1536d		488d0dacd62200		LEAQ runtime.types+383520(SB), CX			
  daohang.go:228	0xe15374		48898c2428010000	MOVQ CX, 0x128(SP)					
  daohang.go:228	0xe1537c		4889842430010000	MOVQ AX, 0x130(SP)					
  print.go:233		0xe15384		488b1df5cc6f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe1538b		488d054e670502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe15392		488d0d40a83800		LEAQ go:string.*+227025(SB), CX				
  print.go:233		0xe15399		bf36000000		MOVL $__major_os_version__+48(SB), DI			
  print.go:233		0xe1539e		488db42408010000	LEAQ 0x108(SP), SI					
  print.go:233		0xe153a6		41b803000000		MOVL $__subsystem__(SB), R8				
  print.go:233		0xe153ac		4d89c1			MOVQ R8, R9						
  print.go:233		0xe153af		e86c9e70ff		CALL fmt.Fprintf(SB)					
  daohang.go:239	0xe153b4		8b4c243c		MOVL 0x3c(SP), CX					
  daohang.go:239	0xe153b8		85c9			TESTL CX, CX						
  daohang.go:239	0xe153ba		764a			JBE 0xe15406						
  daohang.go:240	0xe153bc		488d05ddd52200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:240	0xe153c3		89cb			MOVL CX, BX						
  daohang.go:240	0xe153c5		e896c765ff		CALL runtime.makeslice(SB)				
  daohang.go:240	0xe153ca		48898424b0000000	MOVQ AX, 0xb0(SP)					
  daohang.go:240	0xe153d2		448b44243c		MOVL 0x3c(SP), R8					
  daohang.go:240	0xe153d7		4c89842488000000	MOVQ R8, 0x88(SP)					
  daohang.go:212	0xe153df		488b942460020000	MOVQ 0x260(SP), DX					
  daohang.go:212	0xe153e7		4885d2			TESTQ DX, DX						
  daohang.go:241	0xe153ea		0f8415010000		JE 0xe15505						
  daohang.go:241	0xe153f0		488b5a08		MOVQ 0x8(DX), BX					
  daohang.go:241	0xe153f4		4c8b0d35631a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.11(SB), R9	
  daohang.go:241	0xe153fb		4d8b11			MOVQ 0(R9), R10						
  daohang.go:241	0xe153fe		8b5210			MOVL 0x10(DX), DX					
  daohang.go:241	0xe15401		e991040000		JMP 0xe15897						
  daohang.go:272	0xe15406		488d1513d52200		LEAQ runtime.types+383264(SB), DX			
  daohang.go:272	0xe1540d		48899424c8000000	MOVQ DX, 0xc8(SP)					
  daohang.go:272	0xe15415		4c8d05243c0502		LEAQ CAS-Backend/pkg/agvcontrol..stmp_10(SB), R8	
  daohang.go:272	0xe1541c		4c898424d0000000	MOVQ R8, 0xd0(SP)					
  print.go:314		0xe15424		488b1d55cc6f02		MOVQ os.Stdout(SB), BX					
  print.go:314		0xe1542b		488d05ae660502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:314		0xe15432		488d8c24c8000000	LEAQ 0xc8(SP), CX					
  print.go:314		0xe1543a		bf01000000		MOVL $__minor_os_version__(SB), DI			
  print.go:314		0xe1543f		4889fe			MOVQ DI, SI						
  print.go:314		0xe15442		e819a470ff		CALL fmt.Fprintln(SB)					
  daohang.go:272	0xe15447		eb6e			JMP 0xe154b7						
  daohang.go:214	0xe15449		440f11bc2418020000	MOVUPS X15, 0x218(SP)					
  daohang.go:214	0xe15452		440f11bc2428020000	MOVUPS X15, 0x228(SP)					
  daohang.go:214	0xe1545b		7404			JE 0xe15461						
  daohang.go:214	0xe1545d		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:214	0xe15461		48899c2418020000	MOVQ BX, 0x218(SP)					
  daohang.go:214	0xe15469		48898c2420020000	MOVQ CX, 0x220(SP)					
  daohang.go:214	0xe15471		e82a4c65ff		CALL runtime.convT64(SB)				
  daohang.go:214	0xe15476		488d0de3d62200		LEAQ runtime.types+383840(SB), CX			
  daohang.go:214	0xe1547d		48898c2428020000	MOVQ CX, 0x228(SP)					
  daohang.go:214	0xe15485		4889842430020000	MOVQ AX, 0x230(SP)					
  daohang.go:214	0xe1548d		488d05b4543800		LEAQ go:string.*+205888(SB), AX				
  daohang.go:214	0xe15494		bb2e000000		MOVL $__major_os_version__+40(SB), BX			
  daohang.go:214	0xe15499		488d8c2418020000	LEAQ 0x218(SP), CX					
  daohang.go:214	0xe154a1		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  daohang.go:214	0xe154a6		4889fe			MOVQ DI, SI						
  daohang.go:214	0xe154a9		e8126f70ff		CALL fmt.Errorf(SB)					
  daohang.go:214	0xe154ae		4881c450020000		ADDQ $__file_alignment__+80(SB), SP			
  daohang.go:214	0xe154b5		5d			POPQ BP							
  daohang.go:214	0xe154b6		c3			RET							
  daohang.go:275	0xe154b7		488d1562d42200		LEAQ runtime.types+383264(SB), DX			
  daohang.go:275	0xe154be		48899424b8000000	MOVQ DX, 0xb8(SP)					
  daohang.go:275	0xe154c6		488d15833b0502		LEAQ CAS-Backend/pkg/agvcontrol..stmp_11(SB), DX	
  daohang.go:275	0xe154cd		48899424c0000000	MOVQ DX, 0xc0(SP)					
  print.go:314		0xe154d5		488b1da4cb6f02		MOVQ os.Stdout(SB), BX					
  print.go:314		0xe154dc		488d05fd650502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:314		0xe154e3		488d8c24b8000000	LEAQ 0xb8(SP), CX					
  print.go:314		0xe154eb		bf01000000		MOVL $__minor_os_version__(SB), DI			
  print.go:314		0xe154f0		4889fe			MOVQ DI, SI						
  print.go:314		0xe154f3		e868a370ff		CALL fmt.Fprintln(SB)					
  daohang.go:276	0xe154f8		31c0			XORL AX, AX						
  daohang.go:276	0xe154fa		31db			XORL BX, BX						
  daohang.go:276	0xe154fc		4881c450020000		ADDQ $__file_alignment__+80(SB), SP			
  daohang.go:276	0xe15503		5d			POPQ BP							
  daohang.go:276	0xe15504		c3			RET							
  io.go:354		0xe15505		488b9c2468020000	MOVQ 0x268(SP), BX					
  io.go:354		0xe1550d		4889c1			MOVQ AX, CX						
  io.go:354		0xe15510		4c89c7			MOVQ R8, DI						
  io.go:354		0xe15513		4889fe			MOVQ DI, SI						
  io.go:354		0xe15516		4889d0			MOVQ DX, AX						
  io.go:354		0xe15519		e8e2d669ff		CALL io.ReadAtLeast(SB)					
  io.go:354		0xe1551e		6690			NOPW							
  daohang.go:242	0xe15520		4885db			TESTQ BX, BX						
  daohang.go:242	0xe15523		746e			JE 0xe15593						
  daohang.go:243	0xe15525		440f11bc2418020000	MOVUPS X15, 0x218(SP)					
  daohang.go:243	0xe1552e		440f11bc2428020000	MOVUPS X15, 0x228(SP)					
  daohang.go:243	0xe15537		7404			JE 0xe1553d						
  daohang.go:243	0xe15539		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:243	0xe1553d		48899c2418020000	MOVQ BX, 0x218(SP)					
  daohang.go:243	0xe15545		48898c2420020000	MOVQ CX, 0x220(SP)					
  daohang.go:243	0xe1554d		e84e4b65ff		CALL runtime.convT64(SB)				
  daohang.go:243	0xe15552		488d0d07d62200		LEAQ runtime.types+383840(SB), CX			
  daohang.go:243	0xe15559		48898c2428020000	MOVQ CX, 0x228(SP)					
  daohang.go:243	0xe15561		4889842430020000	MOVQ AX, 0x230(SP)					
  daohang.go:243	0xe15569		488d054a763800		LEAQ go:string.*+214706(SB), AX				
  daohang.go:243	0xe15570		bb31000000		MOVL $__major_os_version__+43(SB), BX			
  daohang.go:243	0xe15575		488d8c2418020000	LEAQ 0x218(SP), CX					
  daohang.go:243	0xe1557d		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  daohang.go:243	0xe15582		4889fe			MOVQ DI, SI						
  daohang.go:243	0xe15585		e8366e70ff		CALL fmt.Errorf(SB)					
  daohang.go:243	0xe1558a		4881c450020000		ADDQ $__file_alignment__+80(SB), SP			
  daohang.go:243	0xe15591		5d			POPQ BP							
  daohang.go:243	0xe15592		c3			RET							
  daohang.go:247	0xe15593		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)					
  daohang.go:247	0xe1559c		31c0			XORL AX, AX						
  daohang.go:247	0xe1559e		488b9c24b0000000	MOVQ 0xb0(SP), BX					
  daohang.go:247	0xe155a6		488b8c2488000000	MOVQ 0x88(SP), CX					
  daohang.go:247	0xe155ae		e8cdd065ff		CALL runtime.slicebytetostring(SB)			
  daohang.go:247	0xe155b3		e8684b65ff		CALL runtime.convTstring(SB)				
  daohang.go:247	0xe155b8		488d1561d32200		LEAQ runtime.types+383264(SB), DX			
  daohang.go:247	0xe155bf		48899424f8000000	MOVQ DX, 0xf8(SP)					
  daohang.go:247	0xe155c7		4889842400010000	MOVQ AX, 0x100(SP)					
  print.go:233		0xe155cf		488b1daaca6f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe155d6		488d0503650502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe155dd		488d0d6fe63600		LEAQ go:string.*+112459(SB), CX				
  print.go:233		0xe155e4		bf17000000		MOVL $__major_os_version__+17(SB), DI			
  print.go:233		0xe155e9		488db424f8000000	LEAQ 0xf8(SP), SI					
  print.go:233		0xe155f1		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe155f7		4d89c1			MOVQ R8, R9						
  print.go:233		0xe155fa		e8219c70ff		CALL fmt.Fprintf(SB)					
  daohang.go:248	0xe155ff		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)					
  daohang.go:248	0xe15608		488b8424b0000000	MOVQ 0xb0(SP), AX					
  daohang.go:248	0xe15610		488b9c2488000000	MOVQ 0x88(SP), BX					
  daohang.go:248	0xe15618		4889d9			MOVQ BX, CX						
  daohang.go:248	0xe1561b		0f1f440000		NOPL 0(AX)(AX*1)					
  daohang.go:248	0xe15620		e89b4b65ff		CALL runtime.convTslice(SB)				
  daohang.go:248	0xe15625		488d15142c2200		LEAQ runtime.types+340544(SB), DX			
  daohang.go:248	0xe1562c		48899424e8000000	MOVQ DX, 0xe8(SP)					
  daohang.go:248	0xe15634		48898424f0000000	MOVQ AX, 0xf0(SP)					
  print.go:233		0xe1563c		488b1d3dca6f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe15643		488d0596640502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe1564a		488d0d0e523700		LEAQ go:string.*+140119(SB), CX				
  print.go:233		0xe15651		bf1d000000		MOVL $__major_os_version__+23(SB), DI			
  print.go:233		0xe15656		488db424e8000000	LEAQ 0xe8(SP), SI					
  print.go:233		0xe1565e		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe15664		4d89c1			MOVQ R8, R9						
  print.go:233		0xe15667		e8b49b70ff		CALL fmt.Fprintf(SB)					
  daohang.go:251	0xe1566c		90			NOPL							
  bytes.go:97		0xe1566d		488b9424b0000000	MOVQ 0xb0(SP), DX					
  bytes.go:97		0xe15675		48891424		MOVQ DX, 0(SP)						
  bytes.go:97		0xe15679		488bb42488000000	MOVQ 0x88(SP), SI					
  bytes.go:97		0xe15681		4889742408		MOVQ SI, 0x8(SP)					
  bytes.go:97		0xe15686		4889742410		MOVQ SI, 0x10(SP)					
  bytes.go:97		0xe1568b		c644241800		MOVB $0x0, 0x18(SP)					
  bytes.go:97		0xe15690		e8ebdc5eff		CALL internal/bytealg.IndexByte.abi0(SB)		
  bytes.go:97		0xe15695		450f57ff		XORPS X15, X15						
  bytes.go:97		0xe15699		4c8b3570817402		MOVQ runtime.tls_g(SB), R14				
  bytes.go:97		0xe156a0		654d8b36		MOVQ GS:0(R14), R14					
  bytes.go:97		0xe156a4		4d8b36			MOVQ 0(R14), R14					
  bytes.go:97		0xe156a7		488b4c2420		MOVQ 0x20(SP), CX					
  daohang.go:252	0xe156ac		4883f9ff		CMPQ CX, $-0x1						
  daohang.go:257	0xe156b0		488b942488000000	MOVQ 0x88(SP), DX					
  daohang.go:257	0xe156b8		480f44ca		CMOVE DX, CX						
  daohang.go:257	0xe156bc		0f1f4000		NOPL 0(AX)						
  daohang.go:257	0xe156c0		4839ca			CMPQ DX, CX						
  daohang.go:252	0xe156c3		0f82c9010000		JB 0xe15892						
  daohang.go:257	0xe156c9		48894c2468		MOVQ CX, 0x68(SP)					
  daohang.go:258	0xe156ce		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)					
  daohang.go:258	0xe156d7		31c0			XORL AX, AX						
  daohang.go:258	0xe156d9		488b9c24b0000000	MOVQ 0xb0(SP), BX					
  daohang.go:258	0xe156e1		e89acf65ff		CALL runtime.slicebytetostring(SB)			
  daohang.go:258	0xe156e6		e8354a65ff		CALL runtime.convTstring(SB)				
  daohang.go:258	0xe156eb		488d152ed22200		LEAQ runtime.types+383264(SB), DX			
  daohang.go:258	0xe156f2		48899424d8000000	MOVQ DX, 0xd8(SP)					
  daohang.go:258	0xe156fa		48898424e0000000	MOVQ AX, 0xe0(SP)					
  print.go:233		0xe15702		488b1d77c96f02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe15709		488d05d0630502		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe15710		488d0d0bc13600		LEAQ go:string.*+103194(SB), CX				
  print.go:233		0xe15717		bf15000000		MOVL $__major_os_version__+15(SB), DI			
  print.go:233		0xe1571c		488db424d8000000	LEAQ 0xd8(SP), SI					
  print.go:233		0xe15724		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe1572a		4d89c1			MOVQ R8, R9						
  print.go:233		0xe1572d		e8ee9a70ff		CALL fmt.Fprintf(SB)					
  daohang.go:261	0xe15732		488d05c7072c00		LEAQ runtime.types+986880(SB), AX			
  daohang.go:261	0xe15739		e862c05fff		CALL runtime.newobject(SB)				
  daohang.go:261	0xe1573e		4889842448020000	MOVQ AX, 0x248(SP)					
  daohang.go:262	0xe15746		488b5c2468		MOVQ 0x68(SP), BX					
  daohang.go:262	0xe1574b		488b8c2488000000	MOVQ 0x88(SP), CX					
  daohang.go:262	0xe15753		488d3d06152100		LEAQ runtime.types+269408(SB), DI			
  daohang.go:262	0xe1575a		4889c6			MOVQ AX, SI						
  daohang.go:262	0xe1575d		488b8424b0000000	MOVQ 0xb0(SP), AX					
  daohang.go:262	0xe15765		e8761d75ff		CALL encoding/json.Unmarshal(SB)			
  daohang.go:263	0xe1576a		4885c0			TESTQ AX, AX						
  daohang.go:263	0xe1576d		0f8482000000		JE 0xe157f5						
  daohang.go:264	0xe15773		440f11bc2418020000	MOVUPS X15, 0x218(SP)					
  daohang.go:264	0xe1577c		440f11bc2428020000	MOVUPS X15, 0x228(SP)					
  daohang.go:264	0xe15785		7404			JE 0xe1578b						
  daohang.go:264	0xe15787		488b4008		MOVQ 0x8(AX), AX					
  daohang.go:264	0xe1578b		4889842418020000	MOVQ AX, 0x218(SP)					
  daohang.go:264	0xe15793		48899c2420020000	MOVQ BX, 0x220(SP)					
  daohang.go:264	0xe1579b		31c0			XORL AX, AX						
  daohang.go:264	0xe1579d		488b9c24b0000000	MOVQ 0xb0(SP), BX					
  daohang.go:264	0xe157a5		488b4c2468		MOVQ 0x68(SP), CX					
  daohang.go:264	0xe157aa		e8d1ce65ff		CALL runtime.slicebytetostring(SB)			
  daohang.go:264	0xe157af		e86c4965ff		CALL runtime.convTstring(SB)				
  daohang.go:264	0xe157b4		488d1565d12200		LEAQ runtime.types+383264(SB), DX			
  daohang.go:264	0xe157bb		4889942428020000	MOVQ DX, 0x228(SP)					
  daohang.go:264	0xe157c3		4889842430020000	MOVQ AX, 0x230(SP)					
  daohang.go:264	0xe157cb		488d0577e63700		LEAQ go:string.*+178497(SB), AX				
  daohang.go:264	0xe157d2		bb26000000		MOVL $__major_os_version__+32(SB), BX			
  daohang.go:264	0xe157d7		488d8c2418020000	LEAQ 0x218(SP), CX					
  daohang.go:264	0xe157df		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  daohang.go:264	0xe157e4		4889fe			MOVQ DI, SI						
  daohang.go:264	0xe157e7		e8d46b70ff		CALL fmt.Errorf(SB)					
  daohang.go:264	0xe157ec		4881c450020000		ADDQ $__file_alignment__+80(SB), SP			
  daohang.go:264	0xe157f3		5d			POPQ BP							
  daohang.go:264	0xe157f4		c3			RET							
  daohang.go:268	0xe157f5		488b942448020000	MOVQ 0x248(SP), DX					
  daohang.go:268	0xe157fd		48833a00		CMPQ 0(DX), $0x0					
  daohang.go:268	0xe15801		0f84b0fcffff		JE 0xe154b7						
  daohang.go:269	0xe15807		440f11bc2418020000	MOVUPS X15, 0x218(SP)					
  daohang.go:269	0xe15810		440f11bc2428020000	MOVUPS X15, 0x228(SP)					
  daohang.go:269	0xe15819		488b02			MOVQ 0(DX), AX						
  daohang.go:269	0xe1581c		0f1f4000		NOPL 0(AX)						
  daohang.go:269	0xe15820		e87b4865ff		CALL runtime.convT64(SB)				
  daohang.go:269	0xe15825		488d0d34d32200		LEAQ runtime.types+383840(SB), CX			
  daohang.go:269	0xe1582c		48898c2418020000	MOVQ CX, 0x218(SP)					
  daohang.go:269	0xe15834		4889842420020000	MOVQ AX, 0x220(SP)					
  daohang.go:269	0xe1583c		488b8c2448020000	MOVQ 0x248(SP), CX					
  daohang.go:269	0xe15844		488b4118		MOVQ 0x18(CX), AX					
  daohang.go:269	0xe15848		488b5920		MOVQ 0x20(CX), BX					
  daohang.go:269	0xe1584c		e8cf4865ff		CALL runtime.convTstring(SB)				
  daohang.go:269	0xe15851		488d0dc8d02200		LEAQ runtime.types+383264(SB), CX			
  daohang.go:269	0xe15858		48898c2428020000	MOVQ CX, 0x228(SP)					
  daohang.go:269	0xe15860		4889842430020000	MOVQ AX, 0x230(SP)					
  daohang.go:269	0xe15868		488d0507513800		LEAQ go:string.*+205934(SB), AX				
  daohang.go:269	0xe1586f		bb2e000000		MOVL $__major_os_version__+40(SB), BX			
  daohang.go:269	0xe15874		488d8c2418020000	LEAQ 0x218(SP), CX					
  daohang.go:269	0xe1587c		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  daohang.go:269	0xe15881		4889fe			MOVQ DI, SI						
  daohang.go:269	0xe15884		e8376b70ff		CALL fmt.Errorf(SB)					
  daohang.go:269	0xe15889		4881c450020000		ADDQ $__file_alignment__+80(SB), SP			
  daohang.go:269	0xe15890		5d			POPQ BP							
  daohang.go:269	0xe15891		c3			RET							
  daohang.go:257	0xe15892		e8c92f66ff		CALL runtime.panicSliceAcap(SB)				
  daohang.go:241	0xe15897		4989d3			MOVQ DX, R11						
  daohang.go:241	0xe1589a		4c21d2			ANDQ R10, DX						
  daohang.go:241	0xe1589d		48c1e204		SHLQ $__subsystem__+1(SB), DX				
  daohang.go:241	0xe158a1		4d8b641108		MOVQ 0x8(R9)(DX*1), R12					
  daohang.go:241	0xe158a6		4939dc			CMPQ R12, BX						
  daohang.go:241	0xe158a9		7432			JE 0xe158dd						
  daohang.go:241	0xe158ab		498d5301		LEAQ 0x1(R11), DX					
  daohang.go:241	0xe158af		4d85e4			TESTQ R12, R12						
  daohang.go:241	0xe158b2		75e3			JNE 0xe15897						
  daohang.go:241	0xe158b4		488d05755e1a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.11(SB), AX	
  daohang.go:241	0xe158bb		0f1f440000		NOPL 0(AX)(AX*1)					
  daohang.go:241	0xe158c0		e81b9a5fff		CALL runtime.typeAssert(SB)				
  io.go:354		0xe158c5		4c8b842488000000	MOVQ 0x88(SP), R8					
  daohang.go:241	0xe158cd		4889c2			MOVQ AX, DX						
  io.go:354		0xe158d0		488b8424b0000000	MOVQ 0xb0(SP), AX					
  daohang.go:241	0xe158d8		e928fcffff		JMP 0xe15505						
  daohang.go:241	0xe158dd		498b541110		MOVQ 0x10(R9)(DX*1), DX					
  daohang.go:241	0xe158e2		e91efcffff		JMP 0xe15505						
  daohang.go:212	0xe158e7		4d89d3			MOVQ R10, R11						
  daohang.go:212	0xe158ea		4d21ca			ANDQ R9, R10						
  daohang.go:212	0xe158ed		49c1e204		SHLQ $__subsystem__+1(SB), R10				
  daohang.go:212	0xe158f1		4e8b641208		MOVQ 0x8(DX)(R10*1), R12				
  daohang.go:212	0xe158f6		4939dc			CMPQ R12, BX						
  daohang.go:212	0xe158f9		742a			JE 0xe15925						
  daohang.go:212	0xe158fb		4d8d5301		LEAQ 0x1(R11), R10					
  daohang.go:212	0xe158ff		90			NOPL							
  daohang.go:212	0xe15900		4d85e4			TESTQ R12, R12						
  daohang.go:212	0xe15903		75e2			JNE 0xe158e7						
  daohang.go:212	0xe15905		488d05045e1a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.10(SB), AX	
  daohang.go:212	0xe1590c		e8cf995fff		CALL runtime.typeAssert(SB)				
  daohang.go:212	0xe15911		4889c1			MOVQ AX, CX						
  io.go:354		0xe15914		488b8424b0000000	MOVQ 0xb0(SP), AX					
  io.go:354		0xe1591c		0f1f4000		NOPL 0(AX)						
  daohang.go:212	0xe15920		e961f9ffff		JMP 0xe15286						
  daohang.go:212	0xe15925		4a8b541210		MOVQ 0x10(DX)(R10*1), DX				
  daohang.go:212	0xe1592a		4889d1			MOVQ DX, CX						
  daohang.go:212	0xe1592d		e954f9ffff		JMP 0xe15286						
  daohang.go:197	0xe15932		4889f2			MOVQ SI, DX						
  daohang.go:197	0xe15935		e8262f66ff		CALL runtime.panicSliceAcap(SB)				
  daohang.go:197	0xe1593a		90			NOPL							
  daohang.go:140	0xe1593b		4889442408		MOVQ AX, 0x8(SP)					
  daohang.go:140	0xe15940		48895c2410		MOVQ BX, 0x10(SP)					
  daohang.go:140	0xe15945		f20f11442418		MOVSD_XMM X0, 0x18(SP)					
  daohang.go:140	0xe1594b		f20f114c2420		MOVSD_XMM X1, 0x20(SP)					
  daohang.go:140	0xe15951		48894c2428		MOVQ CX, 0x28(SP)					
  daohang.go:140	0xe15956		66897c2430		MOVW DI, 0x30(SP)					
  daohang.go:140	0xe1595b		0f1f440000		NOPL 0(AX)(AX*1)					
  daohang.go:140	0xe15960		e87b0b66ff		CALL runtime.morestack_noctxt.abi0(SB)			
  daohang.go:140	0xe15965		488b442408		MOVQ 0x8(SP), AX					
  daohang.go:140	0xe1596a		488b5c2410		MOVQ 0x10(SP), BX					
  daohang.go:140	0xe1596f		f20f10442418		MOVSD_XMM 0x18(SP), X0					
  daohang.go:140	0xe15975		f20f104c2420		MOVSD_XMM 0x20(SP), X1					
  daohang.go:140	0xe1597b		488b4c2428		MOVQ 0x28(SP), CX					
  daohang.go:140	0xe15980		0fb77c2430		MOVZX 0x30(SP), DI					
  daohang.go:140	0xe15985		e956f0ffff		JMP CAS-Backend/pkg/agvcontrol.SendTurnCommand(SB)	
  :-1			0xe1598a		cc			INT $__subsystem__(SB)					
  :-1			0xe1598b		cc			INT $__subsystem__(SB)					
  :-1			0xe1598c		cc			INT $__subsystem__(SB)					
  :-1			0xe1598d		cc			INT $__subsystem__(SB)					
  :-1			0xe1598e		cc			INT $__subsystem__(SB)					
  :-1			0xe1598f		cc			INT $__subsystem__(SB)					
  :-1			0xe15990		cc			INT $__subsystem__(SB)					
  :-1			0xe15991		cc			INT $__subsystem__(SB)					
  :-1			0xe15992		cc			INT $__subsystem__(SB)					
  :-1			0xe15993		cc			INT $__subsystem__(SB)					
  :-1			0xe15994		cc			INT $__subsystem__(SB)					
  :-1			0xe15995		cc			INT $__subsystem__(SB)					
  :-1			0xe15996		cc			INT $__subsystem__(SB)					
  :-1			0xe15997		cc			INT $__subsystem__(SB)					
  :-1			0xe15998		cc			INT $__subsystem__(SB)					
  :-1			0xe15999		cc			INT $__subsystem__(SB)					
  :-1			0xe1599a		cc			INT $__subsystem__(SB)					
  :-1			0xe1599b		cc			INT $__subsystem__(SB)					
  :-1			0xe1599c		cc			INT $__subsystem__(SB)					
  :-1			0xe1599d		cc			INT $__subsystem__(SB)					
  :-1			0xe1599e		cc			INT $__subsystem__(SB)					
  :-1			0xe1599f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/agvcontrol.SendCircularMotionCommand(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:280	0xe159a0		4c8d642498		LEAQ -0x68(SP), R12								
  daohang.go:280	0xe159a5		4d3b6610		CMPQ R12, 0x10(R14)								
  daohang.go:280	0xe159a9		0f86b7050000		JBE 0xe15f66									
  daohang.go:280	0xe159af		55			PUSHQ BP									
  daohang.go:280	0xe159b0		4889e5			MOVQ SP, BP									
  daohang.go:280	0xe159b3		4881ece0000000		SUBQ $.file+147(SB), SP								
  daohang.go:290	0xe159ba		66898c2400010000	MOVW CX, 0x100(SP)								
  daohang.go:290	0xe159c2		48898424f0000000	MOVQ AX, 0xf0(SP)								
  daohang.go:290	0xe159ca		48899c24f8000000	MOVQ BX, 0xf8(SP)								
  daohang.go:289	0xe159d2		f20f11842488000000	MOVSD_XMM X0, 0x88(SP)								
  daohang.go:289	0xe159db		f20f118c2490000000	MOVSD_XMM X1, 0x90(SP)								
  daohang.go:289	0xe159e4		f20f11942498000000	MOVSD_XMM X2, 0x98(SP)								
  daohang.go:289	0xe159ed		4889bc24a0000000	MOVQ DI, 0xa0(SP)								
  daohang.go:289	0xe159f5		488d05a41a2e00		LEAQ runtime.types+1123488(SB), AX						
  daohang.go:289	0xe159fc		488d9c2488000000	LEAQ 0x88(SP), BX								
  daohang.go:289	0xe15a04		e817975fff		CALL runtime.convTnoptr(SB)							
  daohang.go:289	0xe15a09		4889c3			MOVQ AX, BX									
  daohang.go:289	0xe15a0c		488d058d1a2e00		LEAQ runtime.types+1123488(SB), AX						
  daohang.go:289	0xe15a13		e8887a75ff		CALL encoding/json.Marshal(SB)							
  daohang.go:290	0xe15a18		4885ff			TESTQ DI, DI									
  daohang.go:290	0xe15a1b		7451			JE 0xe15a6e									
  daohang.go:291	0xe15a1d		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:291	0xe15a26		7404			JE 0xe15a2c									
  daohang.go:291	0xe15a28		488b7f08		MOVQ 0x8(DI), DI								
  daohang.go:291	0xe15a2c		4889bc24b8000000	MOVQ DI, 0xb8(SP)								
  daohang.go:291	0xe15a34		4889b424c0000000	MOVQ SI, 0xc0(SP)								
  daohang.go:291	0xe15a3c		488d0599153700		LEAQ go:string.*+125652(SB), AX							
  daohang.go:291	0xe15a43		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  daohang.go:291	0xe15a48		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:291	0xe15a50		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:291	0xe15a55		4889fe			MOVQ DI, SI									
  daohang.go:291	0xe15a58		e8636970ff		CALL fmt.Errorf(SB)								
  daohang.go:291	0xe15a5d		4889d9			MOVQ BX, CX									
  daohang.go:291	0xe15a60		4889c3			MOVQ AX, BX									
  daohang.go:291	0xe15a63		31c0			XORL AX, AX									
  daohang.go:291	0xe15a65		4881c4e0000000		ADDQ $.file+147(SB), SP								
  daohang.go:291	0xe15a6c		5d			POPQ BP										
  daohang.go:291	0xe15a6d		c3			RET										
  daohang.go:289	0xe15a6e		48895c2470		MOVQ BX, 0x70(SP)								
  daohang.go:289	0xe15a73		48898424a8000000	MOVQ AX, 0xa8(SP)								
  daohang.go:301	0xe15a7b		48c74424445a010000	MOVQ $.file+269(SB), 0x44(SP)							
  daohang.go:301	0xe15a84		48c744244cf20b0000	MOVQ $__file_alignment__+2546(SB), 0x4c(SP)					
  daohang.go:298	0xe15a8d		0fb78c2400010000	MOVZX 0x100(SP), CX								
  daohang.go:298	0xe15a95		66894c2446		MOVW CX, 0x46(SP)								
  daohang.go:299	0xe15a9a		895c2448		MOVL BX, 0x48(SP)								
  daohang.go:305	0xe15a9e		488d055b282c00		LEAQ runtime.types+996096(SB), AX						
  daohang.go:305	0xe15aa5		e8f6bc5fff		CALL runtime.newobject(SB)							
  daohang.go:305	0xe15aaa		48898424d8000000	MOVQ AX, 0xd8(SP)								
  daohang.go:306	0xe15ab2		0f10442444		MOVUPS 0x44(SP), X0								
  daohang.go:306	0xe15ab7		0f11442454		MOVUPS X0, 0x54(SP)								
  daohang.go:306	0xe15abc		4889c3			MOVQ AX, BX									
  daohang.go:306	0xe15abf		488d0d7a140602		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:306	0xe15ac6		488d3dd3777402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:306	0xe15acd		488d35ec8d2f00		LEAQ runtime.types+1218752(SB), SI						
  daohang.go:306	0xe15ad4		4c8d442454		LEAQ 0x54(SP), R8								
  daohang.go:306	0xe15ad9		488d0580750502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  daohang.go:306	0xe15ae0		e83bc674ff		CALL encoding/binary.Write(SB)							
  daohang.go:307	0xe15ae5		4885c0			TESTQ AX, AX									
  daohang.go:307	0xe15ae8		7451			JE 0xe15b3b									
  daohang.go:308	0xe15aea		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:308	0xe15af3		7404			JE 0xe15af9									
  daohang.go:308	0xe15af5		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:308	0xe15af9		48898424b8000000	MOVQ AX, 0xb8(SP)								
  daohang.go:308	0xe15b01		48899c24c0000000	MOVQ BX, 0xc0(SP)								
  daohang.go:308	0xe15b09		488d0544613700		LEAQ go:string.*+145228(SB), AX							
  daohang.go:308	0xe15b10		bb1e000000		MOVL $__major_os_version__+24(SB), BX						
  daohang.go:308	0xe15b15		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:308	0xe15b1d		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:308	0xe15b22		4889fe			MOVQ DI, SI									
  daohang.go:308	0xe15b25		e8966870ff		CALL fmt.Errorf(SB)								
  daohang.go:308	0xe15b2a		4889d9			MOVQ BX, CX									
  daohang.go:308	0xe15b2d		4889c3			MOVQ AX, BX									
  daohang.go:308	0xe15b30		31c0			XORL AX, AX									
  daohang.go:308	0xe15b32		4881c4e0000000		ADDQ $.file+147(SB), SP								
  daohang.go:308	0xe15b39		5d			POPQ BP										
  daohang.go:308	0xe15b3a		c3			RET										
  buffer.go:54		0xe15b3b		488b9424d8000000	MOVQ 0xd8(SP), DX								
  buffer.go:54		0xe15b43		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe15b47		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe15b4b		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe15b4e		0f820c040000		JB 0xe15f60									
  buffer.go:54		0xe15b54		4c8b02			MOVQ 0(DX), R8									
  buffer.go:54		0xe15b57		488b5210		MOVQ 0x10(DX), DX								
  buffer.go:54		0xe15b5b		4829c2			SUBQ AX, DX									
  buffer.go:54		0xe15b5e		4829c1			SUBQ AX, CX									
  daohang.go:312	0xe15b61		488b7c2470		MOVQ 0x70(SP), DI								
  daohang.go:312	0xe15b66		488d1c39		LEAQ 0(CX)(DI*1), BX								
  buffer.go:54		0xe15b6a		4989d1			MOVQ DX, R9									
  buffer.go:54		0xe15b6d		48f7da			NEGQ DX										
  buffer.go:54		0xe15b70		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe15b74		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe15b77		4c01c0			ADDQ R8, AX									
  daohang.go:312	0xe15b7a		4939d9			CMPQ R9, BX									
  daohang.go:312	0xe15b7d		7321			JAE 0xe15ba0									
  buffer.go:54		0xe15b7f		48894c2468		MOVQ CX, 0x68(SP)								
  daohang.go:312	0xe15b84		4c89c9			MOVQ R9, CX									
  daohang.go:312	0xe15b87		488d3512ce2200		LEAQ runtime.types+383392(SB), SI						
  daohang.go:312	0xe15b8e		e8adc065ff		CALL runtime.growslice(SB)							
  daohang.go:312	0xe15b93		488b7c2470		MOVQ 0x70(SP), DI								
  daohang.go:312	0xe15b98		4989c9			MOVQ CX, R9									
  daohang.go:312	0xe15b9b		488b4c2468		MOVQ 0x68(SP), CX								
  daohang.go:312	0xe15ba0		4c898c2480000000	MOVQ R9, 0x80(SP)								
  daohang.go:312	0xe15ba8		48895c2478		MOVQ BX, 0x78(SP)								
  daohang.go:312	0xe15bad		48898424b0000000	MOVQ AX, 0xb0(SP)								
  daohang.go:312	0xe15bb5		488d1408		LEAQ 0(AX)(CX*1), DX								
  daohang.go:312	0xe15bb9		4889f9			MOVQ DI, CX									
  daohang.go:312	0xe15bbc		4889d0			MOVQ DX, AX									
  daohang.go:312	0xe15bbf		488b9c24a8000000	MOVQ 0xa8(SP), BX								
  daohang.go:312	0xe15bc7		e8f43566ff		CALL runtime.memmove(SB)							
  daohang.go:315	0xe15bcc		488b9424f0000000	MOVQ 0xf0(SP), DX								
  daohang.go:315	0xe15bd4		488b7250		MOVQ 0x50(DX), SI								
  daohang.go:315	0xe15bd8		488b8424f8000000	MOVQ 0xf8(SP), AX								
  daohang.go:315	0xe15be0		488b9c24b0000000	MOVQ 0xb0(SP), BX								
  daohang.go:315	0xe15be8		488b4c2478		MOVQ 0x78(SP), CX								
  daohang.go:315	0xe15bed		488bbc2480000000	MOVQ 0x80(SP), DI								
  daohang.go:315	0xe15bf5		ffd6			CALL SI										
  daohang.go:316	0xe15bf7		4885db			TESTQ BX, BX									
  daohang.go:316	0xe15bfa		7451			JE 0xe15c4d									
  daohang.go:317	0xe15bfc		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:317	0xe15c05		7404			JE 0xe15c0b									
  daohang.go:317	0xe15c07		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:317	0xe15c0b		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  daohang.go:317	0xe15c13		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  daohang.go:317	0xe15c1b		488d0548e03600		LEAQ go:string.*+112482(SB), AX							
  daohang.go:317	0xe15c22		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  daohang.go:317	0xe15c27		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:317	0xe15c2f		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:317	0xe15c34		4889fe			MOVQ DI, SI									
  daohang.go:317	0xe15c37		e8846770ff		CALL fmt.Errorf(SB)								
  daohang.go:317	0xe15c3c		4889d9			MOVQ BX, CX									
  daohang.go:317	0xe15c3f		4889c3			MOVQ AX, BX									
  daohang.go:317	0xe15c42		31c0			XORL AX, AX									
  daohang.go:317	0xe15c44		4881c4e0000000		ADDQ $.file+147(SB), SP								
  daohang.go:317	0xe15c4b		5d			POPQ BP										
  daohang.go:317	0xe15c4c		c3			RET										
  daohang.go:321	0xe15c4d		488d054ccd2200		LEAQ runtime.types+383392(SB), AX						
  daohang.go:321	0xe15c54		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  daohang.go:321	0xe15c59		4889d9			MOVQ BX, CX									
  daohang.go:321	0xe15c5c		0f1f4000		NOPL 0(AX)									
  daohang.go:321	0xe15c60		e8fbbe65ff		CALL runtime.makeslice(SB)							
  daohang.go:321	0xe15c65		48898424c8000000	MOVQ AX, 0xc8(SP)								
  daohang.go:322	0xe15c6d		488b9424f0000000	MOVQ 0xf0(SP), DX								
  daohang.go:322	0xe15c75		488b7228		MOVQ 0x28(DX), SI								
  daohang.go:322	0xe15c79		4889c3			MOVQ AX, BX									
  daohang.go:322	0xe15c7c		b910000000		MOVL $__major_os_version__+10(SB), CX						
  daohang.go:322	0xe15c81		4889cf			MOVQ CX, DI									
  daohang.go:322	0xe15c84		488b8424f8000000	MOVQ 0xf8(SP), AX								
  daohang.go:322	0xe15c8c		ffd6			CALL SI										
  daohang.go:323	0xe15c8e		4885db			TESTQ BX, BX									
  daohang.go:323	0xe15c91		7451			JE 0xe15ce4									
  daohang.go:324	0xe15c93		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:324	0xe15c9c		7404			JE 0xe15ca2									
  daohang.go:324	0xe15c9e		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:324	0xe15ca2		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  daohang.go:324	0xe15caa		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  daohang.go:324	0xe15cb2		488d0596a23700		LEAQ go:string.*+162375(SB), AX							
  daohang.go:324	0xe15cb9		bb22000000		MOVL $__major_os_version__+28(SB), BX						
  daohang.go:324	0xe15cbe		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:324	0xe15cc6		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:324	0xe15ccb		4889fe			MOVQ DI, SI									
  daohang.go:324	0xe15cce		e8ed6670ff		CALL fmt.Errorf(SB)								
  daohang.go:324	0xe15cd3		4889d9			MOVQ BX, CX									
  daohang.go:324	0xe15cd6		4889c3			MOVQ AX, BX									
  daohang.go:324	0xe15cd9		31c0			XORL AX, AX									
  daohang.go:324	0xe15cdb		4881c4e0000000		ADDQ $.file+147(SB), SP								
  daohang.go:324	0xe15ce2		5d			POPQ BP										
  daohang.go:324	0xe15ce3		c3			RET										
  daohang.go:328	0xe15ce4		440f117c2434		MOVUPS X15, 0x34(SP)								
  daohang.go:329	0xe15cea		90			NOPL										
  reader.go:159		0xe15ceb		488d05ce262c00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe15cf2		e8a9ba5fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe15cf7		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe15cff		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe15d07		833d427e740200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe15d0e		750a			JNE 0xe15d1a									
  reader.go:159		0xe15d10		488b9424c8000000	MOVQ 0xc8(SP), DX								
  reader.go:159		0xe15d18		eb10			JMP 0xe15d2a									
  reader.go:159		0xe15d1a		e8012766ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe15d1f		488b9424c8000000	MOVQ 0xc8(SP), DX								
  reader.go:159		0xe15d27		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe15d2a		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe15d2d		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe15d35		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  daohang.go:330	0xe15d3d		4889c3			MOVQ AX, BX									
  daohang.go:330	0xe15d40		488d0df9110602		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:330	0xe15d47		488d3d52757402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:330	0xe15d4e		488d35cb0e2100		LEAQ runtime.types+269344(SB), SI						
  daohang.go:330	0xe15d55		4c8d442434		LEAQ 0x34(SP), R8								
  daohang.go:330	0xe15d5a		488d057f6d0502		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  daohang.go:330	0xe15d61		e8dab474ff		CALL encoding/binary.Read(SB)							
  daohang.go:331	0xe15d66		4885c0			TESTQ AX, AX									
  daohang.go:331	0xe15d69		7451			JE 0xe15dbc									
  daohang.go:332	0xe15d6b		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:332	0xe15d74		7404			JE 0xe15d7a									
  daohang.go:332	0xe15d76		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:332	0xe15d7a		48898424b8000000	MOVQ AX, 0xb8(SP)								
  daohang.go:332	0xe15d82		48899c24c0000000	MOVQ BX, 0xc0(SP)								
  daohang.go:332	0xe15d8a		488d0583af3700		LEAQ go:string.*+165900(SB), AX							
  daohang.go:332	0xe15d91		bb23000000		MOVL $__major_os_version__+29(SB), BX						
  daohang.go:332	0xe15d96		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:332	0xe15d9e		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:332	0xe15da3		4889fe			MOVQ DI, SI									
  daohang.go:332	0xe15da6		e8156670ff		CALL fmt.Errorf(SB)								
  daohang.go:332	0xe15dab		4889d9			MOVQ BX, CX									
  daohang.go:332	0xe15dae		4889c3			MOVQ AX, BX									
  daohang.go:332	0xe15db1		31c0			XORL AX, AX									
  daohang.go:332	0xe15db3		4881c4e0000000		ADDQ $.file+147(SB), SP								
  daohang.go:332	0xe15dba		5d			POPQ BP										
  daohang.go:332	0xe15dbb		c3			RET										
  daohang.go:336	0xe15dbc		66817c243c0233		CMPW 0x3c(SP), $__size_of_stack_commit__+8962(SB)				
  daohang.go:336	0xe15dc3		0f8539010000		JNE 0xe15f02									
  daohang.go:341	0xe15dc9		8b4c2438		MOVL 0x38(SP), CX								
  daohang.go:341	0xe15dcd		488d05cccb2200		LEAQ runtime.types+383392(SB), AX						
  daohang.go:341	0xe15dd4		4889cb			MOVQ CX, BX									
  daohang.go:341	0xe15dd7		e884bd65ff		CALL runtime.makeslice(SB)							
  daohang.go:341	0xe15ddc		48898424c8000000	MOVQ AX, 0xc8(SP)								
  daohang.go:341	0xe15de4		8b7c2438		MOVL 0x38(SP), DI								
  daohang.go:341	0xe15de8		897c2464		MOVL DI, 0x64(SP)								
  daohang.go:342	0xe15dec		85ff			TESTL DI, DI									
  daohang.go:342	0xe15dee		7671			JBE 0xe15e61									
  daohang.go:343	0xe15df0		488b9424f0000000	MOVQ 0xf0(SP), DX								
  daohang.go:343	0xe15df8		488b5228		MOVQ 0x28(DX), DX								
  daohang.go:343	0xe15dfc		4889c3			MOVQ AX, BX									
  daohang.go:343	0xe15dff		89f9			MOVL DI, CX									
  daohang.go:343	0xe15e01		488b8424f8000000	MOVQ 0xf8(SP), AX								
  daohang.go:343	0xe15e09		ffd2			CALL DX										
  daohang.go:344	0xe15e0b		4885db			TESTQ BX, BX									
  daohang.go:344	0xe15e0e		7451			JE 0xe15e61									
  daohang.go:345	0xe15e10		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:345	0xe15e19		7404			JE 0xe15e1f									
  daohang.go:345	0xe15e1b		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:345	0xe15e1f		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  daohang.go:345	0xe15e27		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  daohang.go:345	0xe15e2f		488d05f27d3700		LEAQ go:string.*+153376(SB), AX							
  daohang.go:345	0xe15e36		bb20000000		MOVL $__major_os_version__+26(SB), BX						
  daohang.go:345	0xe15e3b		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:345	0xe15e43		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:345	0xe15e48		4889fe			MOVQ DI, SI									
  daohang.go:345	0xe15e4b		e8706570ff		CALL fmt.Errorf(SB)								
  daohang.go:345	0xe15e50		4889d9			MOVQ BX, CX									
  daohang.go:345	0xe15e53		4889c3			MOVQ AX, BX									
  daohang.go:345	0xe15e56		31c0			XORL AX, AX									
  daohang.go:345	0xe15e58		4881c4e0000000		ADDQ $.file+147(SB), SP								
  daohang.go:345	0xe15e5f		5d			POPQ BP										
  daohang.go:345	0xe15e60		c3			RET										
  daohang.go:350	0xe15e61		488d0598002c00		LEAQ runtime.types+986880(SB), AX						
  daohang.go:350	0xe15e68		e833b95fff		CALL runtime.newobject(SB)							
  daohang.go:351	0xe15e6d		8b4c2464		MOVL 0x64(SP), CX								
  daohang.go:351	0xe15e71		4885c9			TESTQ CX, CX									
  daohang.go:351	0xe15e74		747f			JE 0xe15ef5									
  daohang.go:350	0xe15e76		48898424d0000000	MOVQ AX, 0xd0(SP)								
  daohang.go:352	0xe15e7e		89cb			MOVL CX, BX									
  daohang.go:352	0xe15e80		488d3dd90d2100		LEAQ runtime.types+269408(SB), DI						
  daohang.go:352	0xe15e87		4889c6			MOVQ AX, SI									
  daohang.go:352	0xe15e8a		488b8424c8000000	MOVQ 0xc8(SP), AX								
  daohang.go:352	0xe15e92		e8491675ff		CALL encoding/json.Unmarshal(SB)						
  daohang.go:353	0xe15e97		4885c0			TESTQ AX, AX									
  daohang.go:353	0xe15e9a		7451			JE 0xe15eed									
  daohang.go:354	0xe15e9c		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:354	0xe15ea5		7404			JE 0xe15eab									
  daohang.go:354	0xe15ea7		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:354	0xe15eab		48898424b8000000	MOVQ AX, 0xb8(SP)								
  daohang.go:354	0xe15eb3		48899c24c0000000	MOVQ BX, 0xc0(SP)								
  daohang.go:354	0xe15ebb		488d05e68e3700		LEAQ go:string.*+157856(SB), AX							
  daohang.go:354	0xe15ec2		bb21000000		MOVL $__major_os_version__+27(SB), BX						
  daohang.go:354	0xe15ec7		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:354	0xe15ecf		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:354	0xe15ed4		4889fe			MOVQ DI, SI									
  daohang.go:354	0xe15ed7		e8e46470ff		CALL fmt.Errorf(SB)								
  daohang.go:354	0xe15edc		4889d9			MOVQ BX, CX									
  daohang.go:354	0xe15edf		4889c3			MOVQ AX, BX									
  daohang.go:354	0xe15ee2		31c0			XORL AX, AX									
  daohang.go:354	0xe15ee4		4881c4e0000000		ADDQ $.file+147(SB), SP								
  daohang.go:354	0xe15eeb		5d			POPQ BP										
  daohang.go:354	0xe15eec		c3			RET										
  daohang.go:358	0xe15eed		488b8424d0000000	MOVQ 0xd0(SP), AX								
  daohang.go:358	0xe15ef5		31db			XORL BX, BX									
  daohang.go:358	0xe15ef7		31c9			XORL CX, CX									
  daohang.go:358	0xe15ef9		4881c4e0000000		ADDQ $.file+147(SB), SP								
  daohang.go:358	0xe15f00		5d			POPQ BP										
  daohang.go:358	0xe15f01		c3			RET										
  daohang.go:337	0xe15f02		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:337	0xe15f0b		0fb744243c		MOVZX 0x3c(SP), AX								
  daohang.go:337	0xe15f10		e88b925fff		CALL runtime.convT16(SB)							
  daohang.go:337	0xe15f15		488d0d04cb2200		LEAQ runtime.types+383520(SB), CX						
  daohang.go:337	0xe15f1c		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  daohang.go:337	0xe15f24		48898424c0000000	MOVQ AX, 0xc0(SP)								
  daohang.go:337	0xe15f2c		488d0515353700		LEAQ go:string.*+134976(SB), AX							
  daohang.go:337	0xe15f33		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:337	0xe15f38		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:337	0xe15f40		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:337	0xe15f45		4889fe			MOVQ DI, SI									
  daohang.go:337	0xe15f48		e8736470ff		CALL fmt.Errorf(SB)								
  daohang.go:337	0xe15f4d		4889d9			MOVQ BX, CX									
  daohang.go:337	0xe15f50		4889c3			MOVQ AX, BX									
  daohang.go:337	0xe15f53		31c0			XORL AX, AX									
  daohang.go:337	0xe15f55		4881c4e0000000		ADDQ $.file+147(SB), SP								
  daohang.go:337	0xe15f5c		5d			POPQ BP										
  daohang.go:337	0xe15f5d		c3			RET										
  daohang.go:337	0xe15f5e		6690			NOPW										
  buffer.go:54		0xe15f60		e83b2966ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe15f65		90			NOPL										
  daohang.go:280	0xe15f66		4889442408		MOVQ AX, 0x8(SP)								
  daohang.go:280	0xe15f6b		48895c2410		MOVQ BX, 0x10(SP)								
  daohang.go:280	0xe15f70		66894c2418		MOVW CX, 0x18(SP)								
  daohang.go:280	0xe15f75		f20f11442420		MOVSD_XMM X0, 0x20(SP)								
  daohang.go:280	0xe15f7b		f20f114c2428		MOVSD_XMM X1, 0x28(SP)								
  daohang.go:280	0xe15f81		f20f11542430		MOVSD_XMM X2, 0x30(SP)								
  daohang.go:280	0xe15f87		48897c2438		MOVQ DI, 0x38(SP)								
  daohang.go:280	0xe15f8c		e84f0566ff		CALL runtime.morestack_noctxt.abi0(SB)						
  daohang.go:280	0xe15f91		488b442408		MOVQ 0x8(SP), AX								
  daohang.go:280	0xe15f96		488b5c2410		MOVQ 0x10(SP), BX								
  daohang.go:280	0xe15f9b		0fb74c2418		MOVZX 0x18(SP), CX								
  daohang.go:280	0xe15fa0		f20f10442420		MOVSD_XMM 0x20(SP), X0								
  daohang.go:280	0xe15fa6		f20f104c2428		MOVSD_XMM 0x28(SP), X1								
  daohang.go:280	0xe15fac		f20f10542430		MOVSD_XMM 0x30(SP), X2								
  daohang.go:280	0xe15fb2		488b7c2438		MOVQ 0x38(SP), DI								
  daohang.go:280	0xe15fb7		e9e4f9ffff		JMP CAS-Backend/pkg/agvcontrol.SendCircularMotionCommand(SB)			
  :-1			0xe15fbc		cc			INT $__subsystem__(SB)								
  :-1			0xe15fbd		cc			INT $__subsystem__(SB)								
  :-1			0xe15fbe		cc			INT $__subsystem__(SB)								
  :-1			0xe15fbf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SendPauseNavigation(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:362	0xe15fc0		4c8d6424e8		LEAQ -0x18(SP), R12					
  daohang.go:362	0xe15fc5		4d3b6610		CMPQ R12, 0x10(R14)					
  daohang.go:362	0xe15fc9		0f8664030000		JBE 0xe16333						
  daohang.go:362	0xe15fcf		55			PUSHQ BP						
  daohang.go:362	0xe15fd0		4889e5			MOVQ SP, BP						
  daohang.go:362	0xe15fd3		4881ec90000000		SUBQ $.file+67(SB), SP					
  daohang.go:380	0xe15fda		48898424a0000000	MOVQ AX, 0xa0(SP)					
  daohang.go:380	0xe15fe2		48899c24a8000000	MOVQ BX, 0xa8(SP)					
  daohang.go:364	0xe15fea		48c74424385a010100	MOVQ $__dll_characteristics__+32762(SB), 0x38(SP)	
  daohang.go:364	0xe15ff3		48c7442440b90b0000	MOVQ $__file_alignment__+2489(SB), 0x40(SP)		
  daohang.go:374	0xe15ffc		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:374	0xe16001		488d0598c92200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:374	0xe16008		4889cb			MOVQ CX, BX						
  daohang.go:374	0xe1600b		e850bb65ff		CALL runtime.makeslice(SB)				
  daohang.go:375	0xe16010		0fb6542438		MOVZX 0x38(SP), DX					
  daohang.go:375	0xe16015		8810			MOVB DL, 0(AX)						
  daohang.go:376	0xe16017		0fb6542439		MOVZX 0x39(SP), DX					
  daohang.go:376	0xe1601c		885001			MOVB DL, 0x1(AX)					
  daohang.go:377	0xe1601f		0fb754243a		MOVZX 0x3a(SP), DX					
  daohang.go:380	0xe16024		488d700a		LEAQ 0xa(AX), SI					
  binary.go:153		0xe16028		66c1c208		ROLW $__major_os_version__+2(SB), DX			
  binary.go:152		0xe1602c		66895002		MOVW DX, 0x2(AX)					
  daohang.go:378	0xe16030		8b54243c		MOVL 0x3c(SP), DX					
  binary.go:173		0xe16034		0fca			BSWAP DX						
  binary.go:170		0xe16036		895004			MOVL DX, 0x4(AX)					
  daohang.go:379	0xe16039		0fb7542440		MOVZX 0x40(SP), DX					
  binary.go:153		0xe1603e		66c1c208		ROLW $__major_os_version__+2(SB), DX			
  binary.go:152		0xe16042		66895008		MOVW DX, 0x8(AX)					
  daohang.go:380	0xe16046		488d542442		LEAQ 0x42(SP), DX					
  daohang.go:380	0xe1604b		4839f2			CMPQ DX, SI						
  daohang.go:380	0xe1604e		7410			JE 0xe16060						
  daohang.go:380	0xe16050		8b542442		MOVL 0x42(SP), DX					
  daohang.go:380	0xe16054		0fb7742446		MOVZX 0x46(SP), SI					
  daohang.go:380	0xe16059		89500a			MOVL DX, 0xa(AX)					
  daohang.go:380	0xe1605c		6689700e		MOVW SI, 0xe(AX)					
  daohang.go:383	0xe16060		488b9424a0000000	MOVQ 0xa0(SP), DX					
  daohang.go:383	0xe16068		488b7250		MOVQ 0x50(DX), SI					
  daohang.go:383	0xe1606c		4889c3			MOVQ AX, BX						
  daohang.go:383	0xe1606f		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:383	0xe16074		4889cf			MOVQ CX, DI						
  daohang.go:383	0xe16077		488b8424a8000000	MOVQ 0xa8(SP), AX					
  daohang.go:383	0xe1607f		90			NOPL							
  daohang.go:383	0xe16080		ffd6			CALL SI							
  daohang.go:384	0xe16082		4885db			TESTQ BX, BX						
  daohang.go:384	0xe16085		7440			JE 0xe160c7						
  daohang.go:385	0xe16087		440f117c2478		MOVUPS X15, 0x78(SP)					
  daohang.go:385	0xe1608d		7404			JE 0xe16093						
  daohang.go:385	0xe1608f		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:385	0xe16093		48895c2478		MOVQ BX, 0x78(SP)					
  daohang.go:385	0xe16098		48898c2480000000	MOVQ CX, 0x80(SP)					
  daohang.go:385	0xe160a0		488d0549c73600		LEAQ go:string.*+107240(SB), AX				
  daohang.go:385	0xe160a7		bb16000000		MOVL $__major_os_version__+16(SB), BX			
  daohang.go:385	0xe160ac		488d4c2478		LEAQ 0x78(SP), CX					
  daohang.go:385	0xe160b1		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:385	0xe160b6		4889fe			MOVQ DI, SI						
  daohang.go:385	0xe160b9		e8026370ff		CALL fmt.Errorf(SB)					
  daohang.go:385	0xe160be		4881c490000000		ADDQ $.file+67(SB), SP					
  daohang.go:385	0xe160c5		5d			POPQ BP							
  daohang.go:385	0xe160c6		c3			RET							
  daohang.go:389	0xe160c7		488d05d2c82200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:389	0xe160ce		bb10000000		MOVL $__major_os_version__+10(SB), BX			
  daohang.go:389	0xe160d3		4889d9			MOVQ BX, CX						
  daohang.go:389	0xe160d6		e885ba65ff		CALL runtime.makeslice(SB)				
  daohang.go:389	0xe160db		4889442450		MOVQ AX, 0x50(SP)					
  daohang.go:390	0xe160e0		488b9424a0000000	MOVQ 0xa0(SP), DX					
  daohang.go:390	0xe160e8		488b7228		MOVQ 0x28(DX), SI					
  daohang.go:390	0xe160ec		4889c3			MOVQ AX, BX						
  daohang.go:390	0xe160ef		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:390	0xe160f4		4889cf			MOVQ CX, DI						
  daohang.go:390	0xe160f7		488b8424a8000000	MOVQ 0xa8(SP), AX					
  daohang.go:390	0xe160ff		90			NOPL							
  daohang.go:390	0xe16100		ffd6			CALL SI							
  daohang.go:391	0xe16102		4885db			TESTQ BX, BX						
  daohang.go:391	0xe16105		7440			JE 0xe16147						
  daohang.go:392	0xe16107		440f117c2478		MOVUPS X15, 0x78(SP)					
  daohang.go:392	0xe1610d		7404			JE 0xe16113						
  daohang.go:392	0xe1610f		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:392	0xe16113		48895c2478		MOVQ BX, 0x78(SP)					
  daohang.go:392	0xe16118		48898c2480000000	MOVQ CX, 0x80(SP)					
  daohang.go:392	0xe16120		488d05cd323700		LEAQ go:string.*+134892(SB), AX				
  daohang.go:392	0xe16127		bb1c000000		MOVL $__major_os_version__+22(SB), BX			
  daohang.go:392	0xe1612c		488d4c2478		LEAQ 0x78(SP), CX					
  daohang.go:392	0xe16131		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:392	0xe16136		4889fe			MOVQ DI, SI						
  daohang.go:392	0xe16139		e8826270ff		CALL fmt.Errorf(SB)					
  daohang.go:392	0xe1613e		4881c490000000		ADDQ $.file+67(SB), SP					
  daohang.go:392	0xe16145		5d			POPQ BP							
  daohang.go:392	0xe16146		c3			RET							
  daohang.go:396	0xe16147		440f117c2428		MOVUPS X15, 0x28(SP)					
  daohang.go:397	0xe1614d		488b542450		MOVQ 0x50(SP), DX					
  daohang.go:397	0xe16152		0fb632			MOVZX 0(DX), SI						
  daohang.go:397	0xe16155		4088742428		MOVB SI, 0x28(SP)					
  daohang.go:398	0xe1615a		0fb67201		MOVZX 0x1(DX), SI					
  daohang.go:398	0xe1615e		4088742429		MOVB SI, 0x29(SP)					
  daohang.go:402	0xe16163		488d720a		LEAQ 0xa(DX), SI					
  binary.go:147		0xe16167		0fb77a02		MOVZX 0x2(DX), DI					
  binary.go:147		0xe1616b		66c1c708		ROLW $__major_os_version__+2(SB), DI			
  daohang.go:399	0xe1616f		66897c242a		MOVW DI, 0x2a(SP)					
  binary.go:165		0xe16174		8b7a04			MOVL 0x4(DX), DI					
  binary.go:165		0xe16177		0fcf			BSWAP DI						
  daohang.go:400	0xe16179		897c242c		MOVL DI, 0x2c(SP)					
  binary.go:147		0xe1617d		0fb77a08		MOVZX 0x8(DX), DI					
  binary.go:147		0xe16181		66c1c708		ROLW $__major_os_version__+2(SB), DI			
  daohang.go:401	0xe16185		66897c2430		MOVW DI, 0x30(SP)					
  daohang.go:402	0xe1618a		488d7c2432		LEAQ 0x32(SP), DI					
  daohang.go:402	0xe1618f		4839f7			CMPQ DI, SI						
  daohang.go:402	0xe16192		7410			JE 0xe161a4						
  daohang.go:402	0xe16194		8b720a			MOVL 0xa(DX), SI					
  daohang.go:402	0xe16197		0fb7520e		MOVZX 0xe(DX), DX					
  daohang.go:402	0xe1619b		89742432		MOVL SI, 0x32(SP)					
  daohang.go:402	0xe1619f		6689542436		MOVW DX, 0x36(SP)					
  daohang.go:405	0xe161a4		8b4c242c		MOVL 0x2c(SP), CX					
  daohang.go:405	0xe161a8		85c9			TESTL CX, CX						
  daohang.go:405	0xe161aa		0f8603010000		JBE 0xe162b3						
  daohang.go:406	0xe161b0		488d05e9c72200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:406	0xe161b7		89cb			MOVL CX, BX						
  daohang.go:406	0xe161b9		e8a2b965ff		CALL runtime.makeslice(SB)				
  daohang.go:406	0xe161be		4889442450		MOVQ AX, 0x50(SP)					
  daohang.go:406	0xe161c3		8b7c242c		MOVL 0x2c(SP), DI					
  daohang.go:406	0xe161c7		48897c2448		MOVQ DI, 0x48(SP)					
  daohang.go:407	0xe161cc		488b9424a0000000	MOVQ 0xa0(SP), DX					
  daohang.go:407	0xe161d4		488b5228		MOVQ 0x28(DX), DX					
  daohang.go:407	0xe161d8		4889c3			MOVQ AX, BX						
  daohang.go:407	0xe161db		4889f9			MOVQ DI, CX						
  daohang.go:407	0xe161de		488b8424a8000000	MOVQ 0xa8(SP), AX					
  daohang.go:407	0xe161e6		ffd2			CALL DX							
  daohang.go:408	0xe161e8		4885db			TESTQ BX, BX						
  daohang.go:408	0xe161eb		7441			JE 0xe1622e						
  daohang.go:409	0xe161ed		440f117c2478		MOVUPS X15, 0x78(SP)					
  daohang.go:409	0xe161f3		7404			JE 0xe161f9						
  daohang.go:409	0xe161f5		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:409	0xe161f9		48895c2478		MOVQ BX, 0x78(SP)					
  daohang.go:409	0xe161fe		48898c2480000000	MOVQ CX, 0x80(SP)					
  daohang.go:409	0xe16206		488d0503323700		LEAQ go:string.*+134920(SB), AX				
  daohang.go:409	0xe1620d		bb1c000000		MOVL $__major_os_version__+22(SB), BX			
  daohang.go:409	0xe16212		488d4c2478		LEAQ 0x78(SP), CX					
  daohang.go:409	0xe16217		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:409	0xe1621c		4889fe			MOVQ DI, SI						
  daohang.go:409	0xe1621f		90			NOPL							
  daohang.go:409	0xe16220		e89b6170ff		CALL fmt.Errorf(SB)					
  daohang.go:409	0xe16225		4881c490000000		ADDQ $.file+67(SB), SP					
  daohang.go:409	0xe1622c		5d			POPQ BP							
  daohang.go:409	0xe1622d		c3			RET							
  daohang.go:413	0xe1622e		488d05cbfc2b00		LEAQ runtime.types+986880(SB), AX			
  daohang.go:413	0xe16235		e866b55fff		CALL runtime.newobject(SB)				
  daohang.go:413	0xe1623a		4889842488000000	MOVQ AX, 0x88(SP)					
  daohang.go:414	0xe16242		488b5c2448		MOVQ 0x48(SP), BX					
  daohang.go:414	0xe16247		4889d9			MOVQ BX, CX						
  daohang.go:414	0xe1624a		488d3d0f0a2100		LEAQ runtime.types+269408(SB), DI			
  daohang.go:414	0xe16251		4889c6			MOVQ AX, SI						
  daohang.go:414	0xe16254		488b442450		MOVQ 0x50(SP), AX					
  daohang.go:414	0xe16259		e8821275ff		CALL encoding/json.Unmarshal(SB)			
  daohang.go:414	0xe1625e		6690			NOPW							
  daohang.go:415	0xe16260		4885c0			TESTQ AX, AX						
  daohang.go:415	0xe16263		7440			JE 0xe162a5						
  daohang.go:416	0xe16265		440f117c2478		MOVUPS X15, 0x78(SP)					
  daohang.go:416	0xe1626b		7404			JE 0xe16271						
  daohang.go:416	0xe1626d		488b4008		MOVQ 0x8(AX), AX					
  daohang.go:416	0xe16271		4889442478		MOVQ AX, 0x78(SP)					
  daohang.go:416	0xe16276		48899c2480000000	MOVQ BX, 0x80(SP)					
  daohang.go:416	0xe1627e		488d05230d3700		LEAQ go:string.*+125600(SB), AX				
  daohang.go:416	0xe16285		bb1a000000		MOVL $__major_os_version__+20(SB), BX			
  daohang.go:416	0xe1628a		488d4c2478		LEAQ 0x78(SP), CX					
  daohang.go:416	0xe1628f		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:416	0xe16294		4889fe			MOVQ DI, SI						
  daohang.go:416	0xe16297		e8246170ff		CALL fmt.Errorf(SB)					
  daohang.go:416	0xe1629c		4881c490000000		ADDQ $.file+67(SB), SP					
  daohang.go:416	0xe162a3		5d			POPQ BP							
  daohang.go:416	0xe162a4		c3			RET							
  daohang.go:420	0xe162a5		488b8c2488000000	MOVQ 0x88(SP), CX					
  daohang.go:420	0xe162ad		48833900		CMPQ 0(CX), $0x0					
  daohang.go:420	0xe162b1		750e			JNE 0xe162c1						
  daohang.go:426	0xe162b3		31c0			XORL AX, AX						
  daohang.go:426	0xe162b5		31db			XORL BX, BX						
  daohang.go:426	0xe162b7		4881c490000000		ADDQ $.file+67(SB), SP					
  daohang.go:426	0xe162be		5d			POPQ BP							
  daohang.go:426	0xe162bf		90			NOPL							
  daohang.go:426	0xe162c0		c3			RET							
  daohang.go:421	0xe162c1		440f117c2458		MOVUPS X15, 0x58(SP)					
  daohang.go:421	0xe162c7		440f117c2468		MOVUPS X15, 0x68(SP)					
  daohang.go:422	0xe162cd		488b01			MOVQ 0(CX), AX						
  daohang.go:422	0xe162d0		e8cb3d65ff		CALL runtime.convT64(SB)				
  daohang.go:422	0xe162d5		488d0d84c82200		LEAQ runtime.types+383840(SB), CX			
  daohang.go:422	0xe162dc		48894c2458		MOVQ CX, 0x58(SP)					
  daohang.go:422	0xe162e1		4889442460		MOVQ AX, 0x60(SP)					
  daohang.go:422	0xe162e6		488b8c2488000000	MOVQ 0x88(SP), CX					
  daohang.go:422	0xe162ee		488b4118		MOVQ 0x18(CX), AX					
  daohang.go:422	0xe162f2		488b5920		MOVQ 0x20(CX), BX					
  daohang.go:422	0xe162f6		e8253e65ff		CALL runtime.convTstring(SB)				
  daohang.go:422	0xe162fb		488d0d1ec62200		LEAQ runtime.types+383264(SB), CX			
  daohang.go:422	0xe16302		48894c2468		MOVQ CX, 0x68(SP)					
  daohang.go:422	0xe16307		4889442470		MOVQ AX, 0x70(SP)					
  daohang.go:421	0xe1630c		488d0535793700		LEAQ go:string.*+153408(SB), AX				
  daohang.go:421	0xe16313		bb20000000		MOVL $__major_os_version__+26(SB), BX			
  daohang.go:421	0xe16318		488d4c2458		LEAQ 0x58(SP), CX					
  daohang.go:421	0xe1631d		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  daohang.go:421	0xe16322		4889fe			MOVQ DI, SI						
  daohang.go:421	0xe16325		e8966070ff		CALL fmt.Errorf(SB)					
  daohang.go:421	0xe1632a		4881c490000000		ADDQ $.file+67(SB), SP					
  daohang.go:421	0xe16331		5d			POPQ BP							
  daohang.go:421	0xe16332		c3			RET							
  daohang.go:362	0xe16333		4889442408		MOVQ AX, 0x8(SP)					
  daohang.go:362	0xe16338		48895c2410		MOVQ BX, 0x10(SP)					
  daohang.go:362	0xe1633d		0f1f00			NOPL 0(AX)						
  daohang.go:362	0xe16340		e89b0166ff		CALL runtime.morestack_noctxt.abi0(SB)			
  daohang.go:362	0xe16345		488b442408		MOVQ 0x8(SP), AX					
  daohang.go:362	0xe1634a		488b5c2410		MOVQ 0x10(SP), BX					
  daohang.go:362	0xe1634f		e96cfcffff		JMP CAS-Backend/pkg/agvcontrol.SendPauseNavigation(SB)	
  :-1			0xe16354		cc			INT $__subsystem__(SB)					
  :-1			0xe16355		cc			INT $__subsystem__(SB)					
  :-1			0xe16356		cc			INT $__subsystem__(SB)					
  :-1			0xe16357		cc			INT $__subsystem__(SB)					
  :-1			0xe16358		cc			INT $__subsystem__(SB)					
  :-1			0xe16359		cc			INT $__subsystem__(SB)					
  :-1			0xe1635a		cc			INT $__subsystem__(SB)					
  :-1			0xe1635b		cc			INT $__subsystem__(SB)					
  :-1			0xe1635c		cc			INT $__subsystem__(SB)					
  :-1			0xe1635d		cc			INT $__subsystem__(SB)					
  :-1			0xe1635e		cc			INT $__subsystem__(SB)					
  :-1			0xe1635f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/agvcontrol.SendResumeNavigation(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:430	0xe16360		493b6610		CMPQ SP, 0x10(R14)					
  daohang.go:430	0xe16364		0f86cb020000		JBE 0xe16635						
  daohang.go:430	0xe1636a		55			PUSHQ BP						
  daohang.go:430	0xe1636b		4889e5			MOVQ SP, BP						
  daohang.go:430	0xe1636e		4883ec78		SUBQ $.file+43(SB), SP					
  daohang.go:448	0xe16372		48899c2490000000	MOVQ BX, 0x90(SP)					
  daohang.go:448	0xe1637a		4889842488000000	MOVQ AX, 0x88(SP)					
  daohang.go:432	0xe16382		48c744243c5a010100	MOVQ $__dll_characteristics__+32762(SB), 0x3c(SP)	
  daohang.go:432	0xe1638b		48c7442444ba0b0000	MOVQ $__file_alignment__+2490(SB), 0x44(SP)		
  daohang.go:442	0xe16394		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:442	0xe16399		488d0500c62200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:442	0xe163a0		4889cb			MOVQ CX, BX						
  daohang.go:442	0xe163a3		e8b8b765ff		CALL runtime.makeslice(SB)				
  daohang.go:443	0xe163a8		0fb654243c		MOVZX 0x3c(SP), DX					
  daohang.go:443	0xe163ad		8810			MOVB DL, 0(AX)						
  daohang.go:444	0xe163af		0fb654243d		MOVZX 0x3d(SP), DX					
  daohang.go:444	0xe163b4		885001			MOVB DL, 0x1(AX)					
  daohang.go:445	0xe163b7		0fb754243e		MOVZX 0x3e(SP), DX					
  daohang.go:448	0xe163bc		488d700a		LEAQ 0xa(AX), SI					
  binary.go:153		0xe163c0		66c1c208		ROLW $__major_os_version__+2(SB), DX			
  binary.go:152		0xe163c4		66895002		MOVW DX, 0x2(AX)					
  daohang.go:446	0xe163c8		8b542440		MOVL 0x40(SP), DX					
  binary.go:173		0xe163cc		0fca			BSWAP DX						
  binary.go:170		0xe163ce		895004			MOVL DX, 0x4(AX)					
  daohang.go:447	0xe163d1		0fb7542444		MOVZX 0x44(SP), DX					
  binary.go:153		0xe163d6		66c1c208		ROLW $__major_os_version__+2(SB), DX			
  binary.go:152		0xe163da		66895008		MOVW DX, 0x8(AX)					
  daohang.go:448	0xe163de		488d542446		LEAQ 0x46(SP), DX					
  daohang.go:448	0xe163e3		4839f2			CMPQ DX, SI						
  daohang.go:448	0xe163e6		7410			JE 0xe163f8						
  daohang.go:448	0xe163e8		8b542446		MOVL 0x46(SP), DX					
  daohang.go:448	0xe163ec		0fb774244a		MOVZX 0x4a(SP), SI					
  daohang.go:448	0xe163f1		89500a			MOVL DX, 0xa(AX)					
  daohang.go:448	0xe163f4		6689700e		MOVW SI, 0xe(AX)					
  daohang.go:451	0xe163f8		488b942488000000	MOVQ 0x88(SP), DX					
  daohang.go:451	0xe16400		488b7250		MOVQ 0x50(DX), SI					
  daohang.go:451	0xe16404		4889c3			MOVQ AX, BX						
  daohang.go:451	0xe16407		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:451	0xe1640c		4889cf			MOVQ CX, DI						
  daohang.go:451	0xe1640f		488b842490000000	MOVQ 0x90(SP), AX					
  daohang.go:451	0xe16417		ffd6			CALL SI							
  daohang.go:452	0xe16419		4885db			TESTQ BX, BX						
  daohang.go:452	0xe1641c		743a			JE 0xe16458						
  daohang.go:453	0xe1641e		440f117c2468		MOVUPS X15, 0x68(SP)					
  daohang.go:453	0xe16424		7404			JE 0xe1642a						
  daohang.go:453	0xe16426		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:453	0xe1642a		48895c2468		MOVQ BX, 0x68(SP)					
  daohang.go:453	0xe1642f		48894c2470		MOVQ CX, 0x70(SP)					
  daohang.go:453	0xe16434		488d05b5c33600		LEAQ go:string.*+107240(SB), AX				
  daohang.go:453	0xe1643b		bb16000000		MOVL $__major_os_version__+16(SB), BX			
  daohang.go:453	0xe16440		488d4c2468		LEAQ 0x68(SP), CX					
  daohang.go:453	0xe16445		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:453	0xe1644a		4889fe			MOVQ DI, SI						
  daohang.go:453	0xe1644d		e86e5f70ff		CALL fmt.Errorf(SB)					
  daohang.go:453	0xe16452		4883c478		ADDQ $.file+43(SB), SP					
  daohang.go:453	0xe16456		5d			POPQ BP							
  daohang.go:453	0xe16457		c3			RET							
  daohang.go:457	0xe16458		488d0541c52200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:457	0xe1645f		bb10000000		MOVL $__major_os_version__+10(SB), BX			
  daohang.go:457	0xe16464		4889d9			MOVQ BX, CX						
  daohang.go:457	0xe16467		e8f4b665ff		CALL runtime.makeslice(SB)				
  daohang.go:457	0xe1646c		4889442460		MOVQ AX, 0x60(SP)					
  daohang.go:458	0xe16471		488b942488000000	MOVQ 0x88(SP), DX					
  daohang.go:458	0xe16479		488b7228		MOVQ 0x28(DX), SI					
  daohang.go:458	0xe1647d		4889c3			MOVQ AX, BX						
  daohang.go:458	0xe16480		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:458	0xe16485		4889cf			MOVQ CX, DI						
  daohang.go:458	0xe16488		488b842490000000	MOVQ 0x90(SP), AX					
  daohang.go:458	0xe16490		ffd6			CALL SI							
  daohang.go:459	0xe16492		4885db			TESTQ BX, BX						
  daohang.go:459	0xe16495		743a			JE 0xe164d1						
  daohang.go:460	0xe16497		440f117c2468		MOVUPS X15, 0x68(SP)					
  daohang.go:460	0xe1649d		7404			JE 0xe164a3						
  daohang.go:460	0xe1649f		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:460	0xe164a3		48895c2468		MOVQ BX, 0x68(SP)					
  daohang.go:460	0xe164a8		48894c2470		MOVQ CX, 0x70(SP)					
  daohang.go:460	0xe164ad		488d05b02f3700		LEAQ go:string.*+135004(SB), AX				
  daohang.go:460	0xe164b4		bb1c000000		MOVL $__major_os_version__+22(SB), BX			
  daohang.go:460	0xe164b9		488d4c2468		LEAQ 0x68(SP), CX					
  daohang.go:460	0xe164be		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:460	0xe164c3		4889fe			MOVQ DI, SI						
  daohang.go:460	0xe164c6		e8f55e70ff		CALL fmt.Errorf(SB)					
  daohang.go:460	0xe164cb		4883c478		ADDQ $.file+43(SB), SP					
  daohang.go:460	0xe164cf		5d			POPQ BP							
  daohang.go:460	0xe164d0		c3			RET							
  daohang.go:471	0xe164d1		488b542460		MOVQ 0x60(SP), DX					
  daohang.go:471	0xe164d6		488d720a		LEAQ 0xa(DX), SI					
  binary.go:147		0xe164da		0fb77a02		MOVZX 0x2(DX), DI					
  binary.go:147		0xe164de		66c1c708		ROLW $__major_os_version__+2(SB), DI			
  binary.go:165		0xe164e2		448b4204		MOVL 0x4(DX), R8					
  binary.go:165		0xe164e6		410fc8			BSWAP R8						
  binary.go:147		0xe164e9		440fb74a08		MOVZX 0x8(DX), R9					
  binary.go:147		0xe164ee		6641c1c108		ROLW $__major_os_version__+2(SB), R9			
  daohang.go:469	0xe164f3		440f117c2450		MOVUPS X15, 0x50(SP)					
  daohang.go:465	0xe164f9		440fb612		MOVZX 0(DX), R10					
  daohang.go:465	0xe164fd		4488542450		MOVB R10, 0x50(SP)					
  daohang.go:466	0xe16502		440fb65201		MOVZX 0x1(DX), R10					
  daohang.go:466	0xe16507		4488542451		MOVB R10, 0x51(SP)					
  daohang.go:467	0xe1650c		66897c2452		MOVW DI, 0x52(SP)					
  daohang.go:468	0xe16511		4489442454		MOVL R8, 0x54(SP)					
  daohang.go:469	0xe16516		6644894c2458		MOVW R9, 0x58(SP)					
  daohang.go:464	0xe1651c		0f10442450		MOVUPS 0x50(SP), X0					
  daohang.go:464	0xe16521		0f1144242c		MOVUPS X0, 0x2c(SP)					
  daohang.go:471	0xe16526		488d7c2436		LEAQ 0x36(SP), DI					
  daohang.go:471	0xe1652b		4839f7			CMPQ DI, SI						
  daohang.go:471	0xe1652e		7410			JE 0xe16540						
  daohang.go:471	0xe16530		8b720a			MOVL 0xa(DX), SI					
  daohang.go:471	0xe16533		0fb7520e		MOVZX 0xe(DX), DX					
  daohang.go:471	0xe16537		89742436		MOVL SI, 0x36(SP)					
  daohang.go:471	0xe1653b		668954243a		MOVW DX, 0x3a(SP)					
  daohang.go:474	0xe16540		8b4c2430		MOVL 0x30(SP), CX					
  daohang.go:474	0xe16544		488d0555c42200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:474	0xe1654b		4889cb			MOVQ CX, BX						
  daohang.go:474	0xe1654e		e80db665ff		CALL runtime.makeslice(SB)				
  daohang.go:474	0xe16553		4889442460		MOVQ AX, 0x60(SP)					
  daohang.go:474	0xe16558		8b7c2430		MOVL 0x30(SP), DI					
  daohang.go:474	0xe1655c		897c244c		MOVL DI, 0x4c(SP)					
  daohang.go:475	0xe16560		85ff			TESTL DI, DI						
  daohang.go:475	0xe16562		765b			JBE 0xe165bf						
  daohang.go:476	0xe16564		488b942488000000	MOVQ 0x88(SP), DX					
  daohang.go:476	0xe1656c		488b5228		MOVQ 0x28(DX), DX					
  daohang.go:476	0xe16570		4889c3			MOVQ AX, BX						
  daohang.go:476	0xe16573		89f9			MOVL DI, CX						
  daohang.go:476	0xe16575		488b842490000000	MOVQ 0x90(SP), AX					
  daohang.go:476	0xe1657d		ffd2			CALL DX							
  daohang.go:476	0xe1657f		90			NOPL							
  daohang.go:477	0xe16580		4885db			TESTQ BX, BX						
  daohang.go:477	0xe16583		743a			JE 0xe165bf						
  daohang.go:478	0xe16585		440f117c2468		MOVUPS X15, 0x68(SP)					
  daohang.go:478	0xe1658b		7404			JE 0xe16591						
  daohang.go:478	0xe1658d		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:478	0xe16591		48895c2468		MOVQ BX, 0x68(SP)					
  daohang.go:478	0xe16596		48894c2470		MOVQ CX, 0x70(SP)					
  daohang.go:478	0xe1659b		488d05de2e3700		LEAQ go:string.*+135032(SB), AX				
  daohang.go:478	0xe165a2		bb1c000000		MOVL $__major_os_version__+22(SB), BX			
  daohang.go:478	0xe165a7		488d4c2468		LEAQ 0x68(SP), CX					
  daohang.go:478	0xe165ac		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:478	0xe165b1		4889fe			MOVQ DI, SI						
  daohang.go:478	0xe165b4		e8075e70ff		CALL fmt.Errorf(SB)					
  daohang.go:478	0xe165b9		4883c478		ADDQ $.file+43(SB), SP					
  daohang.go:478	0xe165bd		5d			POPQ BP							
  daohang.go:478	0xe165be		c3			RET							
  daohang.go:483	0xe165bf		488d053af92b00		LEAQ runtime.types+986880(SB), AX			
  daohang.go:483	0xe165c6		e8d5b15fff		CALL runtime.newobject(SB)				
  daohang.go:484	0xe165cb		8b4c244c		MOVL 0x4c(SP), CX					
  daohang.go:484	0xe165cf		4885c9			TESTQ CX, CX						
  daohang.go:484	0xe165d2		7457			JE 0xe1662b						
  daohang.go:485	0xe165d4		89cb			MOVL CX, BX						
  daohang.go:485	0xe165d6		488d3d83062100		LEAQ runtime.types+269408(SB), DI			
  daohang.go:485	0xe165dd		4889c6			MOVQ AX, SI						
  daohang.go:485	0xe165e0		488b442460		MOVQ 0x60(SP), AX					
  daohang.go:485	0xe165e5		e8f60e75ff		CALL encoding/json.Unmarshal(SB)			
  daohang.go:486	0xe165ea		4885c0			TESTQ AX, AX						
  daohang.go:486	0xe165ed		743c			JE 0xe1662b						
  daohang.go:487	0xe165ef		440f117c2468		MOVUPS X15, 0x68(SP)					
  daohang.go:487	0xe165f5		7404			JE 0xe165fb						
  daohang.go:487	0xe165f7		488b4008		MOVQ 0x8(AX), AX					
  daohang.go:487	0xe165fb		4889442468		MOVQ AX, 0x68(SP)					
  daohang.go:487	0xe16600		48895c2470		MOVQ BX, 0x70(SP)					
  daohang.go:487	0xe16605		488d059c093700		LEAQ go:string.*+125600(SB), AX				
  daohang.go:487	0xe1660c		bb1a000000		MOVL $__major_os_version__+20(SB), BX			
  daohang.go:487	0xe16611		488d4c2468		LEAQ 0x68(SP), CX					
  daohang.go:487	0xe16616		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:487	0xe1661b		4889fe			MOVQ DI, SI						
  daohang.go:487	0xe1661e		6690			NOPW							
  daohang.go:487	0xe16620		e89b5d70ff		CALL fmt.Errorf(SB)					
  daohang.go:487	0xe16625		4883c478		ADDQ $.file+43(SB), SP					
  daohang.go:487	0xe16629		5d			POPQ BP							
  daohang.go:487	0xe1662a		c3			RET							
  daohang.go:491	0xe1662b		31c0			XORL AX, AX						
  daohang.go:491	0xe1662d		31db			XORL BX, BX						
  daohang.go:491	0xe1662f		4883c478		ADDQ $.file+43(SB), SP					
  daohang.go:491	0xe16633		5d			POPQ BP							
  daohang.go:491	0xe16634		c3			RET							
  daohang.go:430	0xe16635		4889442408		MOVQ AX, 0x8(SP)					
  daohang.go:430	0xe1663a		48895c2410		MOVQ BX, 0x10(SP)					
  daohang.go:430	0xe1663f		90			NOPL							
  daohang.go:430	0xe16640		e89bfe65ff		CALL runtime.morestack_noctxt.abi0(SB)			
  daohang.go:430	0xe16645		488b442408		MOVQ 0x8(SP), AX					
  daohang.go:430	0xe1664a		488b5c2410		MOVQ 0x10(SP), BX					
  daohang.go:430	0xe1664f		e90cfdffff		JMP CAS-Backend/pkg/agvcontrol.SendResumeNavigation(SB)	
  :-1			0xe16654		cc			INT $__subsystem__(SB)					
  :-1			0xe16655		cc			INT $__subsystem__(SB)					
  :-1			0xe16656		cc			INT $__subsystem__(SB)					
  :-1			0xe16657		cc			INT $__subsystem__(SB)					
  :-1			0xe16658		cc			INT $__subsystem__(SB)					
  :-1			0xe16659		cc			INT $__subsystem__(SB)					
  :-1			0xe1665a		cc			INT $__subsystem__(SB)					
  :-1			0xe1665b		cc			INT $__subsystem__(SB)					
  :-1			0xe1665c		cc			INT $__subsystem__(SB)					
  :-1			0xe1665d		cc			INT $__subsystem__(SB)					
  :-1			0xe1665e		cc			INT $__subsystem__(SB)					
  :-1			0xe1665f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/agvcontrol.SendCancelNavigation(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:495	0xe16660		493b6610		CMPQ SP, 0x10(R14)					
  daohang.go:495	0xe16664		0f86cb020000		JBE 0xe16935						
  daohang.go:495	0xe1666a		55			PUSHQ BP						
  daohang.go:495	0xe1666b		4889e5			MOVQ SP, BP						
  daohang.go:495	0xe1666e		4883ec78		SUBQ $.file+43(SB), SP					
  daohang.go:513	0xe16672		48899c2490000000	MOVQ BX, 0x90(SP)					
  daohang.go:513	0xe1667a		4889842488000000	MOVQ AX, 0x88(SP)					
  daohang.go:497	0xe16682		48c744243c5a010100	MOVQ $__dll_characteristics__+32762(SB), 0x3c(SP)	
  daohang.go:497	0xe1668b		48c7442444bb0b0000	MOVQ $__file_alignment__+2491(SB), 0x44(SP)		
  daohang.go:507	0xe16694		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:507	0xe16699		488d0500c32200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:507	0xe166a0		4889cb			MOVQ CX, BX						
  daohang.go:507	0xe166a3		e8b8b465ff		CALL runtime.makeslice(SB)				
  daohang.go:508	0xe166a8		0fb654243c		MOVZX 0x3c(SP), DX					
  daohang.go:508	0xe166ad		8810			MOVB DL, 0(AX)						
  daohang.go:509	0xe166af		0fb654243d		MOVZX 0x3d(SP), DX					
  daohang.go:509	0xe166b4		885001			MOVB DL, 0x1(AX)					
  daohang.go:510	0xe166b7		0fb754243e		MOVZX 0x3e(SP), DX					
  daohang.go:513	0xe166bc		488d700a		LEAQ 0xa(AX), SI					
  binary.go:153		0xe166c0		66c1c208		ROLW $__major_os_version__+2(SB), DX			
  binary.go:152		0xe166c4		66895002		MOVW DX, 0x2(AX)					
  daohang.go:511	0xe166c8		8b542440		MOVL 0x40(SP), DX					
  binary.go:173		0xe166cc		0fca			BSWAP DX						
  binary.go:170		0xe166ce		895004			MOVL DX, 0x4(AX)					
  daohang.go:512	0xe166d1		0fb7542444		MOVZX 0x44(SP), DX					
  binary.go:153		0xe166d6		66c1c208		ROLW $__major_os_version__+2(SB), DX			
  binary.go:152		0xe166da		66895008		MOVW DX, 0x8(AX)					
  daohang.go:513	0xe166de		488d542446		LEAQ 0x46(SP), DX					
  daohang.go:513	0xe166e3		4839f2			CMPQ DX, SI						
  daohang.go:513	0xe166e6		7410			JE 0xe166f8						
  daohang.go:513	0xe166e8		8b542446		MOVL 0x46(SP), DX					
  daohang.go:513	0xe166ec		0fb774244a		MOVZX 0x4a(SP), SI					
  daohang.go:513	0xe166f1		89500a			MOVL DX, 0xa(AX)					
  daohang.go:513	0xe166f4		6689700e		MOVW SI, 0xe(AX)					
  daohang.go:516	0xe166f8		488b942488000000	MOVQ 0x88(SP), DX					
  daohang.go:516	0xe16700		488b7250		MOVQ 0x50(DX), SI					
  daohang.go:516	0xe16704		4889c3			MOVQ AX, BX						
  daohang.go:516	0xe16707		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:516	0xe1670c		4889cf			MOVQ CX, DI						
  daohang.go:516	0xe1670f		488b842490000000	MOVQ 0x90(SP), AX					
  daohang.go:516	0xe16717		ffd6			CALL SI							
  daohang.go:517	0xe16719		4885db			TESTQ BX, BX						
  daohang.go:517	0xe1671c		743a			JE 0xe16758						
  daohang.go:518	0xe1671e		440f117c2468		MOVUPS X15, 0x68(SP)					
  daohang.go:518	0xe16724		7404			JE 0xe1672a						
  daohang.go:518	0xe16726		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:518	0xe1672a		48895c2468		MOVQ BX, 0x68(SP)					
  daohang.go:518	0xe1672f		48894c2470		MOVQ CX, 0x70(SP)					
  daohang.go:518	0xe16734		488d05b5c03600		LEAQ go:string.*+107240(SB), AX				
  daohang.go:518	0xe1673b		bb16000000		MOVL $__major_os_version__+16(SB), BX			
  daohang.go:518	0xe16740		488d4c2468		LEAQ 0x68(SP), CX					
  daohang.go:518	0xe16745		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:518	0xe1674a		4889fe			MOVQ DI, SI						
  daohang.go:518	0xe1674d		e86e5c70ff		CALL fmt.Errorf(SB)					
  daohang.go:518	0xe16752		4883c478		ADDQ $.file+43(SB), SP					
  daohang.go:518	0xe16756		5d			POPQ BP							
  daohang.go:518	0xe16757		c3			RET							
  daohang.go:522	0xe16758		488d0541c22200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:522	0xe1675f		bb10000000		MOVL $__major_os_version__+10(SB), BX			
  daohang.go:522	0xe16764		4889d9			MOVQ BX, CX						
  daohang.go:522	0xe16767		e8f4b365ff		CALL runtime.makeslice(SB)				
  daohang.go:522	0xe1676c		4889442460		MOVQ AX, 0x60(SP)					
  daohang.go:523	0xe16771		488b942488000000	MOVQ 0x88(SP), DX					
  daohang.go:523	0xe16779		488b7228		MOVQ 0x28(DX), SI					
  daohang.go:523	0xe1677d		4889c3			MOVQ AX, BX						
  daohang.go:523	0xe16780		b910000000		MOVL $__major_os_version__+10(SB), CX			
  daohang.go:523	0xe16785		4889cf			MOVQ CX, DI						
  daohang.go:523	0xe16788		488b842490000000	MOVQ 0x90(SP), AX					
  daohang.go:523	0xe16790		ffd6			CALL SI							
  daohang.go:524	0xe16792		4885db			TESTQ BX, BX						
  daohang.go:524	0xe16795		743a			JE 0xe167d1						
  daohang.go:525	0xe16797		440f117c2468		MOVUPS X15, 0x68(SP)					
  daohang.go:525	0xe1679d		7404			JE 0xe167a3						
  daohang.go:525	0xe1679f		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:525	0xe167a3		48895c2468		MOVQ BX, 0x68(SP)					
  daohang.go:525	0xe167a8		48894c2470		MOVQ CX, 0x70(SP)					
  daohang.go:525	0xe167ad		488d05b02c3700		LEAQ go:string.*+135004(SB), AX				
  daohang.go:525	0xe167b4		bb1c000000		MOVL $__major_os_version__+22(SB), BX			
  daohang.go:525	0xe167b9		488d4c2468		LEAQ 0x68(SP), CX					
  daohang.go:525	0xe167be		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:525	0xe167c3		4889fe			MOVQ DI, SI						
  daohang.go:525	0xe167c6		e8f55b70ff		CALL fmt.Errorf(SB)					
  daohang.go:525	0xe167cb		4883c478		ADDQ $.file+43(SB), SP					
  daohang.go:525	0xe167cf		5d			POPQ BP							
  daohang.go:525	0xe167d0		c3			RET							
  daohang.go:536	0xe167d1		488b542460		MOVQ 0x60(SP), DX					
  daohang.go:536	0xe167d6		488d720a		LEAQ 0xa(DX), SI					
  binary.go:147		0xe167da		0fb77a02		MOVZX 0x2(DX), DI					
  binary.go:147		0xe167de		66c1c708		ROLW $__major_os_version__+2(SB), DI			
  binary.go:165		0xe167e2		448b4204		MOVL 0x4(DX), R8					
  binary.go:165		0xe167e6		410fc8			BSWAP R8						
  binary.go:147		0xe167e9		440fb74a08		MOVZX 0x8(DX), R9					
  binary.go:147		0xe167ee		6641c1c108		ROLW $__major_os_version__+2(SB), R9			
  daohang.go:534	0xe167f3		440f117c2450		MOVUPS X15, 0x50(SP)					
  daohang.go:530	0xe167f9		440fb612		MOVZX 0(DX), R10					
  daohang.go:530	0xe167fd		4488542450		MOVB R10, 0x50(SP)					
  daohang.go:531	0xe16802		440fb65201		MOVZX 0x1(DX), R10					
  daohang.go:531	0xe16807		4488542451		MOVB R10, 0x51(SP)					
  daohang.go:532	0xe1680c		66897c2452		MOVW DI, 0x52(SP)					
  daohang.go:533	0xe16811		4489442454		MOVL R8, 0x54(SP)					
  daohang.go:534	0xe16816		6644894c2458		MOVW R9, 0x58(SP)					
  daohang.go:529	0xe1681c		0f10442450		MOVUPS 0x50(SP), X0					
  daohang.go:529	0xe16821		0f1144242c		MOVUPS X0, 0x2c(SP)					
  daohang.go:536	0xe16826		488d7c2436		LEAQ 0x36(SP), DI					
  daohang.go:536	0xe1682b		4839f7			CMPQ DI, SI						
  daohang.go:536	0xe1682e		7410			JE 0xe16840						
  daohang.go:536	0xe16830		8b720a			MOVL 0xa(DX), SI					
  daohang.go:536	0xe16833		0fb7520e		MOVZX 0xe(DX), DX					
  daohang.go:536	0xe16837		89742436		MOVL SI, 0x36(SP)					
  daohang.go:536	0xe1683b		668954243a		MOVW DX, 0x3a(SP)					
  daohang.go:539	0xe16840		8b4c2430		MOVL 0x30(SP), CX					
  daohang.go:539	0xe16844		488d0555c12200		LEAQ runtime.types+383392(SB), AX			
  daohang.go:539	0xe1684b		4889cb			MOVQ CX, BX						
  daohang.go:539	0xe1684e		e80db365ff		CALL runtime.makeslice(SB)				
  daohang.go:539	0xe16853		4889442460		MOVQ AX, 0x60(SP)					
  daohang.go:539	0xe16858		8b7c2430		MOVL 0x30(SP), DI					
  daohang.go:539	0xe1685c		897c244c		MOVL DI, 0x4c(SP)					
  daohang.go:540	0xe16860		85ff			TESTL DI, DI						
  daohang.go:540	0xe16862		765b			JBE 0xe168bf						
  daohang.go:541	0xe16864		488b942488000000	MOVQ 0x88(SP), DX					
  daohang.go:541	0xe1686c		488b5228		MOVQ 0x28(DX), DX					
  daohang.go:541	0xe16870		4889c3			MOVQ AX, BX						
  daohang.go:541	0xe16873		89f9			MOVL DI, CX						
  daohang.go:541	0xe16875		488b842490000000	MOVQ 0x90(SP), AX					
  daohang.go:541	0xe1687d		ffd2			CALL DX							
  daohang.go:541	0xe1687f		90			NOPL							
  daohang.go:542	0xe16880		4885db			TESTQ BX, BX						
  daohang.go:542	0xe16883		743a			JE 0xe168bf						
  daohang.go:543	0xe16885		440f117c2468		MOVUPS X15, 0x68(SP)					
  daohang.go:543	0xe1688b		7404			JE 0xe16891						
  daohang.go:543	0xe1688d		488b5b08		MOVQ 0x8(BX), BX					
  daohang.go:543	0xe16891		48895c2468		MOVQ BX, 0x68(SP)					
  daohang.go:543	0xe16896		48894c2470		MOVQ CX, 0x70(SP)					
  daohang.go:543	0xe1689b		488d05de2b3700		LEAQ go:string.*+135032(SB), AX				
  daohang.go:543	0xe168a2		bb1c000000		MOVL $__major_os_version__+22(SB), BX			
  daohang.go:543	0xe168a7		488d4c2468		LEAQ 0x68(SP), CX					
  daohang.go:543	0xe168ac		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:543	0xe168b1		4889fe			MOVQ DI, SI						
  daohang.go:543	0xe168b4		e8075b70ff		CALL fmt.Errorf(SB)					
  daohang.go:543	0xe168b9		4883c478		ADDQ $.file+43(SB), SP					
  daohang.go:543	0xe168bd		5d			POPQ BP							
  daohang.go:543	0xe168be		c3			RET							
  daohang.go:548	0xe168bf		488d053af62b00		LEAQ runtime.types+986880(SB), AX			
  daohang.go:548	0xe168c6		e8d5ae5fff		CALL runtime.newobject(SB)				
  daohang.go:549	0xe168cb		8b4c244c		MOVL 0x4c(SP), CX					
  daohang.go:549	0xe168cf		4885c9			TESTQ CX, CX						
  daohang.go:549	0xe168d2		7457			JE 0xe1692b						
  daohang.go:550	0xe168d4		89cb			MOVL CX, BX						
  daohang.go:550	0xe168d6		488d3d83032100		LEAQ runtime.types+269408(SB), DI			
  daohang.go:550	0xe168dd		4889c6			MOVQ AX, SI						
  daohang.go:550	0xe168e0		488b442460		MOVQ 0x60(SP), AX					
  daohang.go:550	0xe168e5		e8f60b75ff		CALL encoding/json.Unmarshal(SB)			
  daohang.go:551	0xe168ea		4885c0			TESTQ AX, AX						
  daohang.go:551	0xe168ed		743c			JE 0xe1692b						
  daohang.go:552	0xe168ef		440f117c2468		MOVUPS X15, 0x68(SP)					
  daohang.go:552	0xe168f5		7404			JE 0xe168fb						
  daohang.go:552	0xe168f7		488b4008		MOVQ 0x8(AX), AX					
  daohang.go:552	0xe168fb		4889442468		MOVQ AX, 0x68(SP)					
  daohang.go:552	0xe16900		48895c2470		MOVQ BX, 0x70(SP)					
  daohang.go:552	0xe16905		488d059c063700		LEAQ go:string.*+125600(SB), AX				
  daohang.go:552	0xe1690c		bb1a000000		MOVL $__major_os_version__+20(SB), BX			
  daohang.go:552	0xe16911		488d4c2468		LEAQ 0x68(SP), CX					
  daohang.go:552	0xe16916		bf01000000		MOVL $__minor_os_version__(SB), DI			
  daohang.go:552	0xe1691b		4889fe			MOVQ DI, SI						
  daohang.go:552	0xe1691e		6690			NOPW							
  daohang.go:552	0xe16920		e89b5a70ff		CALL fmt.Errorf(SB)					
  daohang.go:552	0xe16925		4883c478		ADDQ $.file+43(SB), SP					
  daohang.go:552	0xe16929		5d			POPQ BP							
  daohang.go:552	0xe1692a		c3			RET							
  daohang.go:556	0xe1692b		31c0			XORL AX, AX						
  daohang.go:556	0xe1692d		31db			XORL BX, BX						
  daohang.go:556	0xe1692f		4883c478		ADDQ $.file+43(SB), SP					
  daohang.go:556	0xe16933		5d			POPQ BP							
  daohang.go:556	0xe16934		c3			RET							
  daohang.go:495	0xe16935		4889442408		MOVQ AX, 0x8(SP)					
  daohang.go:495	0xe1693a		48895c2410		MOVQ BX, 0x10(SP)					
  daohang.go:495	0xe1693f		90			NOPL							
  daohang.go:495	0xe16940		e89bfb65ff		CALL runtime.morestack_noctxt.abi0(SB)			
  daohang.go:495	0xe16945		488b442408		MOVQ 0x8(SP), AX					
  daohang.go:495	0xe1694a		488b5c2410		MOVQ 0x10(SP), BX					
  daohang.go:495	0xe1694f		e90cfdffff		JMP CAS-Backend/pkg/agvcontrol.SendCancelNavigation(SB)	
  :-1			0xe16954		cc			INT $__subsystem__(SB)					
  :-1			0xe16955		cc			INT $__subsystem__(SB)					
  :-1			0xe16956		cc			INT $__subsystem__(SB)					
  :-1			0xe16957		cc			INT $__subsystem__(SB)					
  :-1			0xe16958		cc			INT $__subsystem__(SB)					
  :-1			0xe16959		cc			INT $__subsystem__(SB)					
  :-1			0xe1695a		cc			INT $__subsystem__(SB)					
  :-1			0xe1695b		cc			INT $__subsystem__(SB)					
  :-1			0xe1695c		cc			INT $__subsystem__(SB)					
  :-1			0xe1695d		cc			INT $__subsystem__(SB)					
  :-1			0xe1695e		cc			INT $__subsystem__(SB)					
  :-1			0xe1695f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/agvcontrol.SendRobotConfigLockReq(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:578	0xe16960		4c8d6424b0		LEAQ -0x50(SP), R12								
  daohang.go:578	0xe16965		4d3b6610		CMPQ R12, 0x10(R14)								
  daohang.go:578	0xe16969		0f860e030000		JBE 0xe16c7d									
  daohang.go:578	0xe1696f		55			PUSHQ BP									
  daohang.go:578	0xe16970		4889e5			MOVQ SP, BP									
  daohang.go:578	0xe16973		4881ecc8000000		SUBQ $.file+123(SB), SP								
  daohang.go:587	0xe1697a		6689b424f8000000	MOVW SI, 0xf8(SP)								
  daohang.go:587	0xe16982		48898424d8000000	MOVQ AX, 0xd8(SP)								
  daohang.go:587	0xe1698a		4889bc24f0000000	MOVQ DI, 0xf0(SP)								
  daohang.go:587	0xe16992		48898c24e8000000	MOVQ CX, 0xe8(SP)								
  daohang.go:587	0xe1699a		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  daohang.go:586	0xe169a2		48898c24a8000000	MOVQ CX, 0xa8(SP)								
  daohang.go:586	0xe169aa		4889bc24b0000000	MOVQ DI, 0xb0(SP)								
  daohang.go:586	0xe169b2		488b9424a8000000	MOVQ 0xa8(SP), DX								
  daohang.go:586	0xe169ba		4889d0			MOVQ DX, AX									
  daohang.go:586	0xe169bd		4889fb			MOVQ DI, BX									
  daohang.go:586	0xe169c0		e85b3765ff		CALL runtime.convTstring(SB)							
  daohang.go:586	0xe169c5		4889c3			MOVQ AX, BX									
  daohang.go:586	0xe169c8		488d0531e02800		LEAQ runtime.types+784896(SB), AX						
  daohang.go:586	0xe169cf		e8cc6a75ff		CALL encoding/json.Marshal(SB)							
  daohang.go:587	0xe169d4		4885ff			TESTQ DI, DI									
  daohang.go:587	0xe169d7		7449			JE 0xe16a22									
  daohang.go:588	0xe169d9		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:588	0xe169e2		7404			JE 0xe169e8									
  daohang.go:588	0xe169e4		488b7f08		MOVQ 0x8(DI), DI								
  daohang.go:588	0xe169e8		4889bc24b8000000	MOVQ DI, 0xb8(SP)								
  daohang.go:588	0xe169f0		4889b424c0000000	MOVQ SI, 0xc0(SP)								
  daohang.go:588	0xe169f8		488d059cd13600		LEAQ go:string.*+112275(SB), AX							
  daohang.go:588	0xe169ff		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  daohang.go:588	0xe16a04		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:588	0xe16a0c		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:588	0xe16a11		4889fe			MOVQ DI, SI									
  daohang.go:588	0xe16a14		e8a75970ff		CALL fmt.Errorf(SB)								
  daohang.go:588	0xe16a19		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:588	0xe16a20		5d			POPQ BP										
  daohang.go:588	0xe16a21		c3			RET										
  daohang.go:586	0xe16a22		48894c2460		MOVQ CX, 0x60(SP)								
  daohang.go:586	0xe16a27		48895c2458		MOVQ BX, 0x58(SP)								
  daohang.go:586	0xe16a2c		4889442468		MOVQ AX, 0x68(SP)								
  daohang.go:593	0xe16a31		440f11bc2498000000	MOVUPS X15, 0x98(SP)								
  daohang.go:593	0xe16a3a		4889d8			MOVQ BX, AX									
  daohang.go:593	0xe16a3d		0f1f00			NOPL 0(AX)									
  daohang.go:593	0xe16a40		e85b3665ff		CALL runtime.convT64(SB)							
  daohang.go:593	0xe16a45		488d0d14c12200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:593	0xe16a4c		48898c2498000000	MOVQ CX, 0x98(SP)								
  daohang.go:593	0xe16a54		48898424a0000000	MOVQ AX, 0xa0(SP)								
  print.go:314		0xe16a5c		488b1d1db66f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe16a63		488d0576500502		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe16a6a		488d8c2498000000	LEAQ 0x98(SP), CX								
  print.go:314		0xe16a72		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe16a77		4889fe			MOVQ DI, SI									
  print.go:314		0xe16a7a		e8e18d70ff		CALL fmt.Fprintln(SB)								
  daohang.go:600	0xe16a7f		48c74424385a010010	MOVQ $0x1000015a, 0x38(SP)							
  daohang.go:600	0xe16a88		48c7442440a50f0000	MOVQ $__file_alignment__+3493(SB), 0x40(SP)					
  daohang.go:598	0xe16a91		488b4c2458		MOVQ 0x58(SP), CX								
  daohang.go:598	0xe16a96		894c243c		MOVL CX, 0x3c(SP)								
  daohang.go:604	0xe16a9a		488d055f182c00		LEAQ runtime.types+996096(SB), AX						
  daohang.go:604	0xe16aa1		e8faac5fff		CALL runtime.newobject(SB)							
  daohang.go:604	0xe16aa6		4889442470		MOVQ AX, 0x70(SP)								
  daohang.go:605	0xe16aab		0f10442438		MOVUPS 0x38(SP), X0								
  daohang.go:605	0xe16ab0		0f11442448		MOVUPS X0, 0x48(SP)								
  daohang.go:605	0xe16ab5		4889c3			MOVQ AX, BX									
  daohang.go:605	0xe16ab8		488d0d81040602		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:605	0xe16abf		488d3dda677402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:605	0xe16ac6		488d35f37c2f00		LEAQ runtime.types+1218496(SB), SI						
  daohang.go:605	0xe16acd		4c8d442448		LEAQ 0x48(SP), R8								
  daohang.go:605	0xe16ad2		488d0587650502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  daohang.go:605	0xe16ad9		e842b674ff		CALL encoding/binary.Write(SB)							
  daohang.go:605	0xe16ade		6690			NOPW										
  daohang.go:606	0xe16ae0		4885c0			TESTQ AX, AX									
  daohang.go:606	0xe16ae3		7449			JE 0xe16b2e									
  daohang.go:607	0xe16ae5		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:607	0xe16aee		7404			JE 0xe16af4									
  daohang.go:607	0xe16af0		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:607	0xe16af4		48898424b8000000	MOVQ AX, 0xb8(SP)								
  daohang.go:607	0xe16afc		48899c24c0000000	MOVQ BX, 0xc0(SP)								
  daohang.go:607	0xe16b04		488d0595283700		LEAQ go:string.*+134808(SB), AX							
  daohang.go:607	0xe16b0b		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:607	0xe16b10		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:607	0xe16b18		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:607	0xe16b1d		4889fe			MOVQ DI, SI									
  daohang.go:607	0xe16b20		e89b5870ff		CALL fmt.Errorf(SB)								
  daohang.go:607	0xe16b25		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:607	0xe16b2c		5d			POPQ BP										
  daohang.go:607	0xe16b2d		c3			RET										
  daohang.go:609	0xe16b2e		488b442470		MOVQ 0x70(SP), AX								
  daohang.go:609	0xe16b33		488b5c2468		MOVQ 0x68(SP), BX								
  daohang.go:609	0xe16b38		488b4c2458		MOVQ 0x58(SP), CX								
  daohang.go:609	0xe16b3d		488b7c2460		MOVQ 0x60(SP), DI								
  daohang.go:609	0xe16b42		e8d95971ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe16b47		488b542470		MOVQ 0x70(SP), DX								
  buffer.go:54		0xe16b4c		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe16b50		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe16b54		4839c8			CMPQ AX, CX									
  buffer.go:54		0xe16b57		0f871a010000		JA 0xe16c77									
  daohang.go:612	0xe16b5d		488bb424d8000000	MOVQ 0xd8(SP), SI								
  daohang.go:612	0xe16b65		488b7650		MOVQ 0x50(SI), SI								
  buffer.go:54		0xe16b69		4c8b02			MOVQ 0(DX), R8									
  buffer.go:54		0xe16b6c		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe16b70		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe16b73		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe16b76		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe16b79		48f7da			NEGQ DX										
  buffer.go:54		0xe16b7c		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe16b80		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe16b83		498d1c00		LEAQ 0(R8)(AX*1), BX								
  daohang.go:612	0xe16b87		488b8424e0000000	MOVQ 0xe0(SP), AX								
  daohang.go:612	0xe16b8f		ffd6			CALL SI										
  daohang.go:613	0xe16b91		4885db			TESTQ BX, BX									
  daohang.go:613	0xe16b94		744b			JE 0xe16be1									
  daohang.go:614	0xe16b96		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:614	0xe16b9f		90			NOPL										
  daohang.go:614	0xe16ba0		7404			JE 0xe16ba6									
  daohang.go:614	0xe16ba2		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:614	0xe16ba6		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  daohang.go:614	0xe16bae		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  daohang.go:614	0xe16bb6		488d0507bc3600		LEAQ go:string.*+107196(SB), AX							
  daohang.go:614	0xe16bbd		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  daohang.go:614	0xe16bc2		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  daohang.go:614	0xe16bca		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:614	0xe16bcf		4889fe			MOVQ DI, SI									
  daohang.go:614	0xe16bd2		e8e95770ff		CALL fmt.Errorf(SB)								
  daohang.go:614	0xe16bd7		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:614	0xe16bde		5d			POPQ BP										
  daohang.go:614	0xe16bdf		90			NOPL										
  daohang.go:614	0xe16be0		c3			RET										
  daohang.go:630	0xe16be1		440f117c2478		MOVUPS X15, 0x78(SP)								
  daohang.go:630	0xe16be7		440f11bc2488000000	MOVUPS X15, 0x88(SP)								
  daohang.go:630	0xe16bf0		0fb78424f8000000	MOVZX 0xf8(SP), AX								
  daohang.go:630	0xe16bf8		e8a3855fff		CALL runtime.convT16(SB)							
  daohang.go:630	0xe16bfd		488d0d1cbe2200		LEAQ runtime.types+383520(SB), CX						
  daohang.go:630	0xe16c04		48894c2478		MOVQ CX, 0x78(SP)								
  daohang.go:630	0xe16c09		4889842480000000	MOVQ AX, 0x80(SP)								
  daohang.go:630	0xe16c11		488b8424e8000000	MOVQ 0xe8(SP), AX								
  daohang.go:630	0xe16c19		488b9c24f0000000	MOVQ 0xf0(SP), BX								
  daohang.go:630	0xe16c21		e8fa3465ff		CALL runtime.convTstring(SB)							
  daohang.go:630	0xe16c26		488d0df3bc2200		LEAQ runtime.types+383264(SB), CX						
  daohang.go:630	0xe16c2d		48898c2488000000	MOVQ CX, 0x88(SP)								
  daohang.go:630	0xe16c35		4889842490000000	MOVQ AX, 0x90(SP)								
  print.go:233		0xe16c3d		488b1d3cb46f02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe16c44		488d05954e0502		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe16c4b		488d0dc8863800		LEAQ go:string.*+224786(SB), CX							
  print.go:233		0xe16c52		bf35000000		MOVL $__major_os_version__+47(SB), DI						
  print.go:233		0xe16c57		488d742478		LEAQ 0x78(SP), SI								
  print.go:233		0xe16c5c		41b802000000		MOVL $__minor_os_version__+1(SB), R8						
  print.go:233		0xe16c62		4d89c1			MOVQ R8, R9									
  print.go:233		0xe16c65		e8b68570ff		CALL fmt.Fprintf(SB)								
  daohang.go:631	0xe16c6a		31c0			XORL AX, AX									
  daohang.go:631	0xe16c6c		31db			XORL BX, BX									
  daohang.go:631	0xe16c6e		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:631	0xe16c75		5d			POPQ BP										
  daohang.go:631	0xe16c76		c3			RET										
  buffer.go:54		0xe16c77		e8241c66ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe16c7c		90			NOPL										
  daohang.go:578	0xe16c7d		4889442408		MOVQ AX, 0x8(SP)								
  daohang.go:578	0xe16c82		48895c2410		MOVQ BX, 0x10(SP)								
  daohang.go:578	0xe16c87		48894c2418		MOVQ CX, 0x18(SP)								
  daohang.go:578	0xe16c8c		48897c2420		MOVQ DI, 0x20(SP)								
  daohang.go:578	0xe16c91		6689742428		MOVW SI, 0x28(SP)								
  daohang.go:578	0xe16c96		e845f865ff		CALL runtime.morestack_noctxt.abi0(SB)						
  daohang.go:578	0xe16c9b		488b442408		MOVQ 0x8(SP), AX								
  daohang.go:578	0xe16ca0		488b5c2410		MOVQ 0x10(SP), BX								
  daohang.go:578	0xe16ca5		488b4c2418		MOVQ 0x18(SP), CX								
  daohang.go:578	0xe16caa		488b7c2420		MOVQ 0x20(SP), DI								
  daohang.go:578	0xe16caf		0fb7742428		MOVZX 0x28(SP), SI								
  daohang.go:578	0xe16cb4		e9a7fcffff		JMP CAS-Backend/pkg/agvcontrol.SendRobotConfigLockReq(SB)			
  :-1			0xe16cb9		cc			INT $__subsystem__(SB)								
  :-1			0xe16cba		cc			INT $__subsystem__(SB)								
  :-1			0xe16cbb		cc			INT $__subsystem__(SB)								
  :-1			0xe16cbc		cc			INT $__subsystem__(SB)								
  :-1			0xe16cbd		cc			INT $__subsystem__(SB)								
  :-1			0xe16cbe		cc			INT $__subsystem__(SB)								
  :-1			0xe16cbf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLock(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:638	0xe16cc0		4c8d6424b8		LEAQ -0x48(SP), R12								
  daohang.go:638	0xe16cc5		4d3b6610		CMPQ R12, 0x10(R14)								
  daohang.go:638	0xe16cc9		0f869a030000		JBE 0xe17069									
  daohang.go:638	0xe16ccf		55			PUSHQ BP									
  daohang.go:638	0xe16cd0		4889e5			MOVQ SP, BP									
  daohang.go:638	0xe16cd3		4881ecc0000000		SUBQ $.file+115(SB), SP								
  daohang.go:638	0xe16cda		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  daohang.go:638	0xe16ce2		66440fd6bc24b8000000	MOVQ X15, 0xb8(SP)								
  daohang.go:639	0xe16cec		48898424d0000000	MOVQ AX, 0xd0(SP)								
  daohang.go:639	0xe16cf4		48899c24d8000000	MOVQ BX, 0xd8(SP)								
  daohang.go:638	0xe16cfc		c644243f00		MOVB $0x0, 0x3f(SP)								
  daohang.go:638	0xe16d01		440f117c2440		MOVUPS X15, 0x40(SP)								
  daohang.go:639	0xe16d07		4885ff			TESTQ DI, DI									
  daohang.go:642	0xe16d0a		ba0f000000		MOVL $__major_os_version__+9(SB), DX						
  daohang.go:642	0xe16d0f		480f44fa		CMOVE DX, DI									
  daohang.go:642	0xe16d13		488d15793c3600		LEAQ go:string.*+74891(SB), DX							
  daohang.go:642	0xe16d1a		480f44ca		CMOVE DX, CX									
  daohang.go:642	0xe16d1e		be01000000		MOVL $__minor_os_version__(SB), SI						
  daohang.go:642	0xe16d23		e838fcffff		CALL CAS-Backend/pkg/agvcontrol.SendRobotConfigLockReq(SB)			
  daohang.go:642	0xe16d28		4885c0			TESTQ AX, AX									
  daohang.go:639	0xe16d2b		0f85ff020000		JNE 0xe17030									
  daohang.go:645	0xe16d31		e86a7369ff		CALL time.Now(SB)								
  daohang.go:645	0xe16d36		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  daohang.go:645	0xe16d40		e81bd868ff		CALL time.Time.Add(SB)								
  daohang.go:645	0xe16d45		488b9424d0000000	MOVQ 0xd0(SP), DX								
  daohang.go:645	0xe16d4d		488b7240		MOVQ 0x40(DX), SI								
  daohang.go:645	0xe16d51		4889cf			MOVQ CX, DI									
  daohang.go:645	0xe16d54		4889d9			MOVQ BX, CX									
  daohang.go:645	0xe16d57		4889c3			MOVQ AX, BX									
  daohang.go:645	0xe16d5a		488b8424d8000000	MOVQ 0xd8(SP), AX								
  daohang.go:645	0xe16d62		ffd6			CALL SI										
  daohang.go:646	0xe16d64		488d0535030000		LEAQ CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLock.deferwrap1(SB), AX	
  daohang.go:646	0xe16d6b		4889442470		MOVQ AX, 0x70(SP)								
  daohang.go:646	0xe16d70		488b8424d0000000	MOVQ 0xd0(SP), AX								
  daohang.go:646	0xe16d78		4889442478		MOVQ AX, 0x78(SP)								
  daohang.go:646	0xe16d7d		488b8c24d8000000	MOVQ 0xd8(SP), CX								
  daohang.go:646	0xe16d85		48898c2480000000	MOVQ CX, 0x80(SP)								
  daohang.go:646	0xe16d8d		488d542470		LEAQ 0x70(SP), DX								
  daohang.go:646	0xe16d92		48899424b8000000	MOVQ DX, 0xb8(SP)								
  daohang.go:646	0xe16d9a		c644243f01		MOVB $__minor_os_version__(SB), 0x3f(SP)					
  daohang.go:648	0xe16d9f		bb00040000		MOVL $__file_alignment__+512(SB), BX						
  daohang.go:648	0xe16da4		488d05f5bb2200		LEAQ runtime.types+383392(SB), AX						
  daohang.go:648	0xe16dab		4889d9			MOVQ BX, CX									
  daohang.go:648	0xe16dae		e8adad65ff		CALL runtime.makeslice(SB)							
  daohang.go:648	0xe16db3		4889442458		MOVQ AX, 0x58(SP)								
  daohang.go:649	0xe16db8		488b8c24d0000000	MOVQ 0xd0(SP), CX								
  daohang.go:649	0xe16dc0		488b4928		MOVQ 0x28(CX), CX								
  daohang.go:649	0xe16dc4		4889c3			MOVQ AX, BX									
  daohang.go:649	0xe16dc7		bf00040000		MOVL $__file_alignment__+512(SB), DI						
  daohang.go:649	0xe16dcc		488b8424d8000000	MOVQ 0xd8(SP), AX								
  daohang.go:649	0xe16dd4		4889ca			MOVQ CX, DX									
  daohang.go:649	0xe16dd7		4889f9			MOVQ DI, CX									
  daohang.go:649	0xe16dda		ffd2			CALL DX										
  daohang.go:649	0xe16ddc		0f1f4000		NOPL 0(AX)									
  daohang.go:650	0xe16de0		4885db			TESTQ BX, BX									
  daohang.go:650	0xe16de3		747b			JE 0xe16e60									
  daohang.go:651	0xe16de5		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)								
  daohang.go:651	0xe16dee		7404			JE 0xe16df4									
  daohang.go:651	0xe16df0		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:651	0xe16df4		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  daohang.go:651	0xe16dfc		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  daohang.go:651	0xe16e04		488d05cfbe3700		LEAQ go:string.*+174034(SB), AX							
  daohang.go:651	0xe16e0b		bb25000000		MOVL $__major_os_version__+31(SB), BX						
  daohang.go:651	0xe16e10		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  daohang.go:651	0xe16e18		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:651	0xe16e1d		4889fe			MOVQ DI, SI									
  daohang.go:651	0xe16e20		e89b5570ff		CALL fmt.Errorf(SB)								
  daohang.go:651	0xe16e25		4889442440		MOVQ AX, 0x40(SP)								
  daohang.go:651	0xe16e2a		48895c2448		MOVQ BX, 0x48(SP)								
  daohang.go:651	0xe16e2f		c644243f00		MOVB $0x0, 0x3f(SP)								
  daohang.go:651	0xe16e34		488b9424b8000000	MOVQ 0xb8(SP), DX								
  daohang.go:651	0xe16e3c		4c8b02			MOVQ 0(DX), R8									
  daohang.go:651	0xe16e3f		90			NOPL										
  daohang.go:651	0xe16e40		41ffd0			CALL R8										
  daohang.go:651	0xe16e43		488b442440		MOVQ 0x40(SP), AX								
  daohang.go:651	0xe16e48		488b5c2448		MOVQ 0x48(SP), BX								
  daohang.go:651	0xe16e4d		4881c4c0000000		ADDQ $.file+115(SB), SP								
  daohang.go:651	0xe16e54		5d			POPQ BP										
  daohang.go:651	0xe16e55		c3			RET										
  daohang.go:651	0xe16e56		660f1f840000000000	NOPW 0(AX)(AX*1)								
  daohang.go:651	0xe16e5f		90			NOPL										
  daohang.go:653	0xe16e60		483d00040000		CMPQ AX, $__file_alignment__+512(SB)						
  daohang.go:653	0xe16e66		0f87d7010000		JA 0xe17043									
  daohang.go:653	0xe16e6c		4889c3			MOVQ AX, BX									
  daohang.go:653	0xe16e6f		b900040000		MOVL $__file_alignment__+512(SB), CX						
  daohang.go:653	0xe16e74		488b442458		MOVQ 0x58(SP), AX								
  daohang.go:653	0xe16e79		e8e2060000		CALL CAS-Backend/pkg/agvcontrol.ParseRobotConfigLockRes(SB)			
  daohang.go:653	0xe16e7e		6690			NOPW										
  daohang.go:654	0xe16e80		4885db			TESTQ BX, BX									
  daohang.go:654	0xe16e83		7471			JE 0xe16ef6									
  daohang.go:655	0xe16e85		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)								
  daohang.go:655	0xe16e8e		7404			JE 0xe16e94									
  daohang.go:655	0xe16e90		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:655	0xe16e94		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  daohang.go:655	0xe16e9c		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  daohang.go:655	0xe16ea4		488d0554be3700		LEAQ go:string.*+174071(SB), AX							
  daohang.go:655	0xe16eab		bb25000000		MOVL $__major_os_version__+31(SB), BX						
  daohang.go:655	0xe16eb0		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  daohang.go:655	0xe16eb8		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:655	0xe16ebd		4889fe			MOVQ DI, SI									
  daohang.go:655	0xe16ec0		e8fb5470ff		CALL fmt.Errorf(SB)								
  daohang.go:655	0xe16ec5		4889442440		MOVQ AX, 0x40(SP)								
  daohang.go:655	0xe16eca		48895c2448		MOVQ BX, 0x48(SP)								
  daohang.go:655	0xe16ecf		c644243f00		MOVB $0x0, 0x3f(SP)								
  daohang.go:655	0xe16ed4		488b9424b8000000	MOVQ 0xb8(SP), DX								
  daohang.go:655	0xe16edc		4c8b02			MOVQ 0(DX), R8									
  daohang.go:655	0xe16edf		90			NOPL										
  daohang.go:655	0xe16ee0		41ffd0			CALL R8										
  daohang.go:655	0xe16ee3		488b442440		MOVQ 0x40(SP), AX								
  daohang.go:655	0xe16ee8		488b5c2448		MOVQ 0x48(SP), BX								
  daohang.go:655	0xe16eed		4881c4c0000000		ADDQ $.file+115(SB), SP								
  daohang.go:655	0xe16ef4		5d			POPQ BP										
  daohang.go:655	0xe16ef5		c3			RET										
  daohang.go:657	0xe16ef6		48833800		CMPQ 0(AX), $0x0								
  daohang.go:657	0xe16efa		660f1f440000		NOPW 0(AX)(AX*1)								
  daohang.go:657	0xe16f00		0f84b2000000		JE 0xe16fb8									
  daohang.go:653	0xe16f06		4889442450		MOVQ AX, 0x50(SP)								
  daohang.go:658	0xe16f0b		440f11bc2488000000	MOVUPS X15, 0x88(SP)								
  daohang.go:658	0xe16f14		440f11bc2498000000	MOVUPS X15, 0x98(SP)								
  daohang.go:658	0xe16f1d		488b08			MOVQ 0(AX), CX									
  daohang.go:658	0xe16f20		4889c8			MOVQ CX, AX									
  daohang.go:658	0xe16f23		e8783165ff		CALL runtime.convT64(SB)							
  daohang.go:658	0xe16f28		488d0d31bc2200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:658	0xe16f2f		48898c2488000000	MOVQ CX, 0x88(SP)								
  daohang.go:658	0xe16f37		4889842490000000	MOVQ AX, 0x90(SP)								
  daohang.go:658	0xe16f3f		488b4c2450		MOVQ 0x50(SP), CX								
  daohang.go:658	0xe16f44		488b4118		MOVQ 0x18(CX), AX								
  daohang.go:658	0xe16f48		488b5920		MOVQ 0x20(CX), BX								
  daohang.go:658	0xe16f4c		e8cf3165ff		CALL runtime.convTstring(SB)							
  daohang.go:658	0xe16f51		488d0dc8b92200		LEAQ runtime.types+383264(SB), CX						
  daohang.go:658	0xe16f58		48898c2498000000	MOVQ CX, 0x98(SP)								
  daohang.go:658	0xe16f60		48898424a0000000	MOVQ AX, 0xa0(SP)								
  daohang.go:658	0xe16f68		488d05353a3800		LEAQ go:string.*+205980(SB), AX							
  daohang.go:658	0xe16f6f		bb2e000000		MOVL $__major_os_version__+40(SB), BX						
  daohang.go:658	0xe16f74		488d8c2488000000	LEAQ 0x88(SP), CX								
  daohang.go:658	0xe16f7c		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:658	0xe16f81		4889fe			MOVQ DI, SI									
  daohang.go:658	0xe16f84		e8375470ff		CALL fmt.Errorf(SB)								
  daohang.go:658	0xe16f89		4889442440		MOVQ AX, 0x40(SP)								
  daohang.go:658	0xe16f8e		48895c2448		MOVQ BX, 0x48(SP)								
  daohang.go:658	0xe16f93		c644243f00		MOVB $0x0, 0x3f(SP)								
  daohang.go:658	0xe16f98		488b9424b8000000	MOVQ 0xb8(SP), DX								
  daohang.go:658	0xe16fa0		488b0a			MOVQ 0(DX), CX									
  daohang.go:658	0xe16fa3		ffd1			CALL CX										
  daohang.go:658	0xe16fa5		488b442440		MOVQ 0x40(SP), AX								
  daohang.go:658	0xe16faa		488b5c2448		MOVQ 0x48(SP), BX								
  daohang.go:658	0xe16faf		4881c4c0000000		ADDQ $.file+115(SB), SP								
  daohang.go:658	0xe16fb6		5d			POPQ BP										
  daohang.go:658	0xe16fb7		c3			RET										
  daohang.go:660	0xe16fb8		440f117c2460		MOVUPS X15, 0x60(SP)								
  daohang.go:660	0xe16fbe		488b00			MOVQ 0(AX), AX									
  daohang.go:660	0xe16fc1		e8da3065ff		CALL runtime.convT64(SB)							
  daohang.go:660	0xe16fc6		488d0d93bb2200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:660	0xe16fcd		48894c2460		MOVQ CX, 0x60(SP)								
  daohang.go:660	0xe16fd2		4889442468		MOVQ AX, 0x68(SP)								
  print.go:233		0xe16fd7		488b1da2b06f02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe16fde		488d05fb4a0502		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe16fe5		488d0d4b9d3700		LEAQ go:string.*+165935(SB), CX							
  print.go:233		0xe16fec		bf23000000		MOVL $__major_os_version__+29(SB), DI						
  print.go:233		0xe16ff1		488d742460		LEAQ 0x60(SP), SI								
  print.go:233		0xe16ff6		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe16ffc		4d89c1			MOVQ R8, R9									
  print.go:233		0xe16fff		90			NOPL										
  print.go:233		0xe17000		e81b8270ff		CALL fmt.Fprintf(SB)								
  daohang.go:661	0xe17005		440f117c2440		MOVUPS X15, 0x40(SP)								
  daohang.go:661	0xe1700b		c644243f00		MOVB $0x0, 0x3f(SP)								
  daohang.go:661	0xe17010		488b9424b8000000	MOVQ 0xb8(SP), DX								
  daohang.go:661	0xe17018		488b0a			MOVQ 0(DX), CX									
  daohang.go:661	0xe1701b		ffd1			CALL CX										
  daohang.go:661	0xe1701d		488b5c2448		MOVQ 0x48(SP), BX								
  daohang.go:661	0xe17022		488b442440		MOVQ 0x40(SP), AX								
  daohang.go:661	0xe17027		4881c4c0000000		ADDQ $.file+115(SB), SP								
  daohang.go:661	0xe1702e		5d			POPQ BP										
  daohang.go:661	0xe1702f		c3			RET										
  daohang.go:643	0xe17030		4889442440		MOVQ AX, 0x40(SP)								
  daohang.go:643	0xe17035		48895c2448		MOVQ BX, 0x48(SP)								
  daohang.go:643	0xe1703a		4881c4c0000000		ADDQ $.file+115(SB), SP								
  daohang.go:643	0xe17041		5d			POPQ BP										
  daohang.go:643	0xe17042		c3			RET										
  daohang.go:653	0xe17043		4889c1			MOVQ AX, CX									
  daohang.go:653	0xe17046		ba00040000		MOVL $__file_alignment__+512(SB), DX						
  daohang.go:653	0xe1704b		e8101866ff		CALL runtime.panicSliceAcap(SB)							
  daohang.go:653	0xe17050		90			NOPL										
  daohang.go:653	0xe17051		e82a2b62ff		CALL runtime.deferreturn(SB)							
  daohang.go:653	0xe17056		488b442440		MOVQ 0x40(SP), AX								
  daohang.go:653	0xe1705b		488b5c2448		MOVQ 0x48(SP), BX								
  daohang.go:653	0xe17060		4881c4c0000000		ADDQ $.file+115(SB), SP								
  daohang.go:653	0xe17067		5d			POPQ BP										
  daohang.go:653	0xe17068		c3			RET										
  daohang.go:638	0xe17069		4889442408		MOVQ AX, 0x8(SP)								
  daohang.go:638	0xe1706e		48895c2410		MOVQ BX, 0x10(SP)								
  daohang.go:638	0xe17073		48894c2418		MOVQ CX, 0x18(SP)								
  daohang.go:638	0xe17078		48897c2420		MOVQ DI, 0x20(SP)								
  daohang.go:638	0xe1707d		0f1f00			NOPL 0(AX)									
  daohang.go:638	0xe17080		e85bf465ff		CALL runtime.morestack_noctxt.abi0(SB)						
  daohang.go:638	0xe17085		488b442408		MOVQ 0x8(SP), AX								
  daohang.go:638	0xe1708a		488b5c2410		MOVQ 0x10(SP), BX								
  daohang.go:638	0xe1708f		488b4c2418		MOVQ 0x18(SP), CX								
  daohang.go:638	0xe17094		488b7c2420		MOVQ 0x20(SP), DI								
  daohang.go:638	0xe17099		e922fcffff		JMP CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLock(SB)			
  :-1			0xe1709e		cc			INT $__subsystem__(SB)								
  :-1			0xe1709f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLock.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:646	0xe170a0		493b6610		CMPQ SP, 0x10(R14)							
  daohang.go:646	0xe170a4		7625			JBE 0xe170cb								
  daohang.go:646	0xe170a6		55			PUSHQ BP								
  daohang.go:646	0xe170a7		4889e5			MOVQ SP, BP								
  daohang.go:646	0xe170aa		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  daohang.go:646	0xe170ae		4d8b6620		MOVQ 0x20(R14), R12							
  daohang.go:646	0xe170b2		4d85e4			TESTQ R12, R12								
  daohang.go:646	0xe170b5		751b			JNE 0xe170d2								
  daohang.go:646	0xe170b7		488b4208		MOVQ 0x8(DX), AX							
  daohang.go:646	0xe170bb		488b5a10		MOVQ 0x10(DX), BX							
  daohang.go:646	0xe170bf		90			NOPL									
  daohang.go:646	0xe170c0		e87bb2ffff		CALL CAS-Backend/pkg/agvcontrol.ClearConnDeadlines(SB)			
  daohang.go:646	0xe170c5		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  daohang.go:646	0xe170c9		5d			POPQ BP									
  daohang.go:646	0xe170ca		c3			RET									
  daohang.go:646	0xe170cb		e890f365ff		CALL runtime.morestack.abi0(SB)						
  daohang.go:646	0xe170d0		ebce			JMP CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLock.deferwrap1(SB)	
  daohang.go:646	0xe170d2		4c8d6c2420		LEAQ 0x20(SP), R13							
  daohang.go:646	0xe170d7		4d392c24		CMPQ 0(R12), R13							
  daohang.go:646	0xe170db		75da			JNE 0xe170b7								
  daohang.go:646	0xe170dd		49892424		MOVQ SP, 0(R12)								
  daohang.go:646	0xe170e1		ebd4			JMP 0xe170b7								
  :-1			0xe170e3		cc			INT $__subsystem__(SB)							
  :-1			0xe170e4		cc			INT $__subsystem__(SB)							
  :-1			0xe170e5		cc			INT $__subsystem__(SB)							
  :-1			0xe170e6		cc			INT $__subsystem__(SB)							
  :-1			0xe170e7		cc			INT $__subsystem__(SB)							
  :-1			0xe170e8		cc			INT $__subsystem__(SB)							
  :-1			0xe170e9		cc			INT $__subsystem__(SB)							
  :-1			0xe170ea		cc			INT $__subsystem__(SB)							
  :-1			0xe170eb		cc			INT $__subsystem__(SB)							
  :-1			0xe170ec		cc			INT $__subsystem__(SB)							
  :-1			0xe170ed		cc			INT $__subsystem__(SB)							
  :-1			0xe170ee		cc			INT $__subsystem__(SB)							
  :-1			0xe170ef		cc			INT $__subsystem__(SB)							
  :-1			0xe170f0		cc			INT $__subsystem__(SB)							
  :-1			0xe170f1		cc			INT $__subsystem__(SB)							
  :-1			0xe170f2		cc			INT $__subsystem__(SB)							
  :-1			0xe170f3		cc			INT $__subsystem__(SB)							
  :-1			0xe170f4		cc			INT $__subsystem__(SB)							
  :-1			0xe170f5		cc			INT $__subsystem__(SB)							
  :-1			0xe170f6		cc			INT $__subsystem__(SB)							
  :-1			0xe170f7		cc			INT $__subsystem__(SB)							
  :-1			0xe170f8		cc			INT $__subsystem__(SB)							
  :-1			0xe170f9		cc			INT $__subsystem__(SB)							
  :-1			0xe170fa		cc			INT $__subsystem__(SB)							
  :-1			0xe170fb		cc			INT $__subsystem__(SB)							
  :-1			0xe170fc		cc			INT $__subsystem__(SB)							
  :-1			0xe170fd		cc			INT $__subsystem__(SB)							
  :-1			0xe170fe		cc			INT $__subsystem__(SB)							
  :-1			0xe170ff		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:665	0xe17100		4c8d6424d8		LEAQ -0x28(SP), R12								
  daohang.go:665	0xe17105		4d3b6610		CMPQ R12, 0x10(R14)								
  daohang.go:665	0xe17109		0f864c020000		JBE 0xe1735b									
  daohang.go:665	0xe1710f		55			PUSHQ BP									
  daohang.go:665	0xe17110		4889e5			MOVQ SP, BP									
  daohang.go:665	0xe17113		4881eca0000000		SUBQ $.file+83(SB), SP								
  daohang.go:665	0xe1711a		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  daohang.go:666	0xe17122		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  daohang.go:666	0xe1712a		48898424b0000000	MOVQ AX, 0xb0(SP)								
  daohang.go:669	0xe17132		488d15e7020000		LEAQ CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified.func1(SB), DX	
  daohang.go:669	0xe17139		4889942488000000	MOVQ DX, 0x88(SP)								
  daohang.go:666	0xe17141		4885ff			TESTQ DI, DI									
  daohang.go:669	0xe17144		ba0f000000		MOVL $__major_os_version__+9(SB), DX						
  daohang.go:669	0xe17149		480f44fa		CMOVE DX, DI									
  daohang.go:669	0xe1714d		4889bc2498000000	MOVQ DI, 0x98(SP)								
  daohang.go:669	0xe17155		488d1537383600		LEAQ go:string.*+74891(SB), DX							
  daohang.go:669	0xe1715c		480f44ca		CMOVE DX, CX									
  daohang.go:669	0xe17160		48898c2490000000	MOVQ CX, 0x90(SP)								
  daohang.go:669	0xe17168		b9074b0000		MOVL $__size_of_stack_commit__+15111(SB), CX					
  daohang.go:669	0xe1716d		488dbc2488000000	LEAQ 0x88(SP), DI								
  daohang.go:669	0xe17175		e886c4ffff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)					
  daohang.go:671	0xe1717a		4885c0			TESTQ AX, AX									
  daohang.go:666	0xe1717d		7446			JE 0xe171c5									
  daohang.go:672	0xe1717f		440f117c2458		MOVUPS X15, 0x58(SP)								
  daohang.go:672	0xe17185		7404			JE 0xe1718b									
  daohang.go:672	0xe17187		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:672	0xe1718b		4889442458		MOVQ AX, 0x58(SP)								
  daohang.go:672	0xe17190		48895c2460		MOVQ BX, 0x60(SP)								
  print.go:233		0xe17195		488b1de4ae6f02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe1719c		488d053d490502		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe171a3		488d0d71c63800		LEAQ go:string.*+242451(SB), CX							
  print.go:233		0xe171aa		bf3d000000		MOVL $__major_os_version__+55(SB), DI						
  print.go:233		0xe171af		488d742458		LEAQ 0x58(SP), SI								
  print.go:233		0xe171b4		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe171ba		4d89c1			MOVQ R8, R9									
  print.go:233		0xe171bd		0f1f00			NOPL 0(AX)									
  print.go:233		0xe171c0		e85b8070ff		CALL fmt.Fprintf(SB)								
  daohang.go:675	0xe171c5		48c744244000000000	MOVQ $0x0, 0x40(SP)								
  daohang.go:676	0xe171ce		488d15cb010000		LEAQ CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified.func2(SB), DX	
  daohang.go:676	0xe171d5		4889542478		MOVQ DX, 0x78(SP)								
  daohang.go:676	0xe171da		488d542440		LEAQ 0x40(SP), DX								
  daohang.go:676	0xe171df		4889942480000000	MOVQ DX, 0x80(SP)								
  daohang.go:676	0xe171e7		488b8424b0000000	MOVQ 0xb0(SP), AX								
  daohang.go:676	0xe171ef		488b9c24b8000000	MOVQ 0xb8(SP), BX								
  daohang.go:676	0xe171f7		b9044b0000		MOVL $__size_of_stack_commit__+15108(SB), CX					
  daohang.go:676	0xe171fc		488d7c2478		LEAQ 0x78(SP), DI								
  daohang.go:676	0xe17201		e8fac3ffff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)					
  daohang.go:680	0xe17206		4885c0			TESTQ AX, AX									
  daohang.go:680	0xe17209		744a			JE 0xe17255									
  daohang.go:681	0xe1720b		440f117c2468		MOVUPS X15, 0x68(SP)								
  daohang.go:681	0xe17211		7404			JE 0xe17217									
  daohang.go:681	0xe17213		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:681	0xe17217		4889442468		MOVQ AX, 0x68(SP)								
  daohang.go:681	0xe1721c		48895c2470		MOVQ BX, 0x70(SP)								
  daohang.go:681	0xe17221		488d05025a3700		LEAQ go:string.*+149282(SB), AX							
  daohang.go:681	0xe17228		bb1f000000		MOVL $__major_os_version__+25(SB), BX						
  daohang.go:681	0xe1722d		488d4c2468		LEAQ 0x68(SP), CX								
  daohang.go:681	0xe17232		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:681	0xe17237		4889fe			MOVQ DI, SI									
  daohang.go:681	0xe1723a		e8815170ff		CALL fmt.Errorf(SB)								
  daohang.go:681	0xe1723f		4889d9			MOVQ BX, CX									
  daohang.go:681	0xe17242		4889c3			MOVQ AX, BX									
  daohang.go:681	0xe17245		48c7c0ffffffff		MOVQ $-0x1, AX									
  daohang.go:681	0xe1724c		4881c4a0000000		ADDQ $.file+83(SB), SP								
  daohang.go:681	0xe17253		5d			POPQ BP										
  daohang.go:681	0xe17254		c3			RET										
  daohang.go:684	0xe17255		488b4c2440		MOVQ 0x40(SP), CX								
  daohang.go:684	0xe1725a		488b4128		MOVQ 0x28(CX), AX								
  daohang.go:684	0xe1725e		488b5930		MOVQ 0x30(CX), BX								
  daohang.go:684	0xe17262		e899b6ffff		CALL CAS-Backend/pkg/agvcontrol.ParseCurrentLock(SB)				
  daohang.go:684	0xe17267		84db			TESTL BL, BL									
  daohang.go:685	0xe17269		0f84b9000000		JE 0xe17328									
  daohang.go:688	0xe1726f		4883f802		CMPQ AX, $__minor_os_version__+1(SB)						
  daohang.go:688	0xe17273		7453			JE 0xe172c8									
  daohang.go:684	0xe17275		4889442438		MOVQ AX, 0x38(SP)								
  daohang.go:689	0xe1727a		440f117c2468		MOVUPS X15, 0x68(SP)								
  daohang.go:689	0xe17280		e81b2e65ff		CALL runtime.convT64(SB)							
  daohang.go:689	0xe17285		488d0dd4b82200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:689	0xe1728c		48894c2468		MOVQ CX, 0x68(SP)								
  daohang.go:689	0xe17291		4889442470		MOVQ AX, 0x70(SP)								
  daohang.go:689	0xe17296		488d05d2cb3700		LEAQ go:string.*+178535(SB), AX							
  daohang.go:689	0xe1729d		bb26000000		MOVL $__major_os_version__+32(SB), BX						
  daohang.go:689	0xe172a2		488d4c2468		LEAQ 0x68(SP), CX								
  daohang.go:689	0xe172a7		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:689	0xe172ac		4889fe			MOVQ DI, SI									
  daohang.go:689	0xe172af		e80c5170ff		CALL fmt.Errorf(SB)								
  daohang.go:689	0xe172b4		4889d9			MOVQ BX, CX									
  daohang.go:689	0xe172b7		4889c3			MOVQ AX, BX									
  daohang.go:689	0xe172ba		488b442438		MOVQ 0x38(SP), AX								
  daohang.go:689	0xe172bf		4881c4a0000000		ADDQ $.file+83(SB), SP								
  daohang.go:689	0xe172c6		5d			POPQ BP										
  daohang.go:689	0xe172c7		c3			RET										
  daohang.go:691	0xe172c8		440f117c2448		MOVUPS X15, 0x48(SP)								
  daohang.go:691	0xe172ce		b802000000		MOVL $__minor_os_version__+1(SB), AX						
  daohang.go:691	0xe172d3		e8c82d65ff		CALL runtime.convT64(SB)							
  daohang.go:691	0xe172d8		488d0d81b82200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:691	0xe172df		48894c2448		MOVQ CX, 0x48(SP)								
  daohang.go:691	0xe172e4		4889442450		MOVQ AX, 0x50(SP)								
  print.go:233		0xe172e9		488b1d90ad6f02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe172f0		488d05e9470502		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe172f7		488d0d382c3800		LEAQ go:string.*+203310(SB), CX							
  print.go:233		0xe172fe		bf2d000000		MOVL $__major_os_version__+39(SB), DI						
  print.go:233		0xe17303		488d742448		LEAQ 0x48(SP), SI								
  print.go:233		0xe17308		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe1730e		4d89c1			MOVQ R8, R9									
  print.go:233		0xe17311		e80a7f70ff		CALL fmt.Fprintf(SB)								
  daohang.go:692	0xe17316		b802000000		MOVL $__minor_os_version__+1(SB), AX						
  daohang.go:692	0xe1731b		31db			XORL BX, BX									
  daohang.go:692	0xe1731d		31c9			XORL CX, CX									
  daohang.go:692	0xe1731f		4881c4a0000000		ADDQ $.file+83(SB), SP								
  daohang.go:692	0xe17326		5d			POPQ BP										
  daohang.go:692	0xe17327		c3			RET										
  daohang.go:686	0xe17328		488d05bc4b3800		LEAQ go:string.*+211427(SB), AX							
  daohang.go:686	0xe1732f		bb30000000		MOVL $__major_os_version__+42(SB), BX						
  daohang.go:686	0xe17334		31c9			XORL CX, CX									
  daohang.go:686	0xe17336		31ff			XORL DI, DI									
  daohang.go:686	0xe17338		4889fe			MOVQ DI, SI									
  daohang.go:686	0xe1733b		0f1f440000		NOPL 0(AX)(AX*1)								
  daohang.go:686	0xe17340		e87b5070ff		CALL fmt.Errorf(SB)								
  daohang.go:686	0xe17345		4889d9			MOVQ BX, CX									
  daohang.go:686	0xe17348		4889c3			MOVQ AX, BX									
  daohang.go:686	0xe1734b		48c7c0ffffffff		MOVQ $-0x1, AX									
  daohang.go:686	0xe17352		4881c4a0000000		ADDQ $.file+83(SB), SP								
  daohang.go:686	0xe17359		5d			POPQ BP										
  daohang.go:686	0xe1735a		c3			RET										
  daohang.go:665	0xe1735b		4889442408		MOVQ AX, 0x8(SP)								
  daohang.go:665	0xe17360		48895c2410		MOVQ BX, 0x10(SP)								
  daohang.go:665	0xe17365		48894c2418		MOVQ CX, 0x18(SP)								
  daohang.go:665	0xe1736a		48897c2420		MOVQ DI, 0x20(SP)								
  daohang.go:665	0xe1736f		e86cf165ff		CALL runtime.morestack_noctxt.abi0(SB)						
  daohang.go:665	0xe17374		488b442408		MOVQ 0x8(SP), AX								
  daohang.go:665	0xe17379		488b5c2410		MOVQ 0x10(SP), BX								
  daohang.go:665	0xe1737e		488b4c2418		MOVQ 0x18(SP), CX								
  daohang.go:665	0xe17383		488b7c2420		MOVQ 0x20(SP), DI								
  daohang.go:665	0xe17388		e973fdffff		JMP CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified(SB)		
  :-1			0xe1738d		cc			INT $__subsystem__(SB)								
  :-1			0xe1738e		cc			INT $__subsystem__(SB)								
  :-1			0xe1738f		cc			INT $__subsystem__(SB)								
  :-1			0xe17390		cc			INT $__subsystem__(SB)								
  :-1			0xe17391		cc			INT $__subsystem__(SB)								
  :-1			0xe17392		cc			INT $__subsystem__(SB)								
  :-1			0xe17393		cc			INT $__subsystem__(SB)								
  :-1			0xe17394		cc			INT $__subsystem__(SB)								
  :-1			0xe17395		cc			INT $__subsystem__(SB)								
  :-1			0xe17396		cc			INT $__subsystem__(SB)								
  :-1			0xe17397		cc			INT $__subsystem__(SB)								
  :-1			0xe17398		cc			INT $__subsystem__(SB)								
  :-1			0xe17399		cc			INT $__subsystem__(SB)								
  :-1			0xe1739a		cc			INT $__subsystem__(SB)								
  :-1			0xe1739b		cc			INT $__subsystem__(SB)								
  :-1			0xe1739c		cc			INT $__subsystem__(SB)								
  :-1			0xe1739d		cc			INT $__subsystem__(SB)								
  :-1			0xe1739e		cc			INT $__subsystem__(SB)								
  :-1			0xe1739f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified.func2(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:676	0xe173a0		493b6610		CMPQ SP, 0x10(R14)							
  daohang.go:676	0xe173a4		7653			JBE 0xe173f9								
  daohang.go:676	0xe173a6		55			PUSHQ BP								
  daohang.go:676	0xe173a7		4889e5			MOVQ SP, BP								
  daohang.go:676	0xe173aa		4883ec18		SUBQ $__major_os_version__+18(SB), SP					
  daohang.go:676	0xe173ae		4889442428		MOVQ AX, 0x28(SP)							
  daohang.go:676	0xe173b3		48895c2430		MOVQ BX, 0x30(SP)							
  daohang.go:676	0xe173b8		488b4a08		MOVQ 0x8(DX), CX							
  daohang.go:676	0xe173bc		48894c2410		MOVQ CX, 0x10(SP)							
  daohang.go:678	0xe173c1		e8bac4ffff		CALL CAS-Backend/pkg/agvcontrol.QueryControlOwner(SB)			
  daohang.go:678	0xe173c6		833d8367740200		CMPL runtime.writeBarrier(SB), $0x0					
  daohang.go:678	0xe173cd		7507			JNE 0xe173d6								
  daohang.go:678	0xe173cf		488b542410		MOVQ 0x10(SP), DX							
  daohang.go:678	0xe173d4		eb14			JMP 0xe173ea								
  daohang.go:678	0xe173d6		e8651066ff		CALL runtime.gcWriteBarrier2(SB)					
  daohang.go:678	0xe173db		498903			MOVQ AX, 0(R11)								
  daohang.go:678	0xe173de		488b542410		MOVQ 0x10(SP), DX							
  daohang.go:678	0xe173e3		488b32			MOVQ 0(DX), SI								
  daohang.go:678	0xe173e6		49897308		MOVQ SI, 0x8(R11)							
  daohang.go:678	0xe173ea		488902			MOVQ AX, 0(DX)								
  daohang.go:679	0xe173ed		4889d8			MOVQ BX, AX								
  daohang.go:679	0xe173f0		4889cb			MOVQ CX, BX								
  daohang.go:679	0xe173f3		4883c418		ADDQ $__major_os_version__+18(SB), SP					
  daohang.go:679	0xe173f7		5d			POPQ BP									
  daohang.go:679	0xe173f8		c3			RET									
  daohang.go:676	0xe173f9		4889442408		MOVQ AX, 0x8(SP)							
  daohang.go:676	0xe173fe		48895c2410		MOVQ BX, 0x10(SP)							
  daohang.go:676	0xe17403		e858f065ff		CALL runtime.morestack.abi0(SB)						
  daohang.go:676	0xe17408		488b442408		MOVQ 0x8(SP), AX							
  daohang.go:676	0xe1740d		488b5c2410		MOVQ 0x10(SP), BX							
  daohang.go:676	0xe17412		eb8c			JMP CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified.func2(SB)	
  :-1			0xe17414		cc			INT $__subsystem__(SB)							
  :-1			0xe17415		cc			INT $__subsystem__(SB)							
  :-1			0xe17416		cc			INT $__subsystem__(SB)							
  :-1			0xe17417		cc			INT $__subsystem__(SB)							
  :-1			0xe17418		cc			INT $__subsystem__(SB)							
  :-1			0xe17419		cc			INT $__subsystem__(SB)							
  :-1			0xe1741a		cc			INT $__subsystem__(SB)							
  :-1			0xe1741b		cc			INT $__subsystem__(SB)							
  :-1			0xe1741c		cc			INT $__subsystem__(SB)							
  :-1			0xe1741d		cc			INT $__subsystem__(SB)							
  :-1			0xe1741e		cc			INT $__subsystem__(SB)							
  :-1			0xe1741f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified.func1(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:669	0xe17420		493b6610		CMPQ SP, 0x10(R14)							
  daohang.go:669	0xe17424		7625			JBE 0xe1744b								
  daohang.go:669	0xe17426		55			PUSHQ BP								
  daohang.go:669	0xe17427		4889e5			MOVQ SP, BP								
  daohang.go:669	0xe1742a		4883ec20		SUBQ $__major_os_version__+26(SB), SP					
  daohang.go:669	0xe1742e		4889442430		MOVQ AX, 0x30(SP)							
  daohang.go:669	0xe17433		48895c2438		MOVQ BX, 0x38(SP)							
  daohang.go:669	0xe17438		488b4a08		MOVQ 0x8(DX), CX							
  daohang.go:669	0xe1743c		488b7a10		MOVQ 0x10(DX), DI							
  daohang.go:670	0xe17440		e87bf8ffff		CALL CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLock(SB)		
  daohang.go:670	0xe17445		4883c420		ADDQ $__major_os_version__+26(SB), SP					
  daohang.go:670	0xe17449		5d			POPQ BP									
  daohang.go:670	0xe1744a		c3			RET									
  daohang.go:669	0xe1744b		4889442408		MOVQ AX, 0x8(SP)							
  daohang.go:669	0xe17450		48895c2410		MOVQ BX, 0x10(SP)							
  daohang.go:669	0xe17455		e806f065ff		CALL runtime.morestack.abi0(SB)						
  daohang.go:669	0xe1745a		488b442408		MOVQ 0x8(SP), AX							
  daohang.go:669	0xe1745f		488b5c2410		MOVQ 0x10(SP), BX							
  daohang.go:669	0xe17464		ebba			JMP CAS-Backend/pkg/agvcontrol.AcquireRobotConfigLockVerified.func1(SB)	
  :-1			0xe17466		cc			INT $__subsystem__(SB)							
  :-1			0xe17467		cc			INT $__subsystem__(SB)							
  :-1			0xe17468		cc			INT $__subsystem__(SB)							
  :-1			0xe17469		cc			INT $__subsystem__(SB)							
  :-1			0xe1746a		cc			INT $__subsystem__(SB)							
  :-1			0xe1746b		cc			INT $__subsystem__(SB)							
  :-1			0xe1746c		cc			INT $__subsystem__(SB)							
  :-1			0xe1746d		cc			INT $__subsystem__(SB)							
  :-1			0xe1746e		cc			INT $__subsystem__(SB)							
  :-1			0xe1746f		cc			INT $__subsystem__(SB)							
  :-1			0xe17470		cc			INT $__subsystem__(SB)							
  :-1			0xe17471		cc			INT $__subsystem__(SB)							
  :-1			0xe17472		cc			INT $__subsystem__(SB)							
  :-1			0xe17473		cc			INT $__subsystem__(SB)							
  :-1			0xe17474		cc			INT $__subsystem__(SB)							
  :-1			0xe17475		cc			INT $__subsystem__(SB)							
  :-1			0xe17476		cc			INT $__subsystem__(SB)							
  :-1			0xe17477		cc			INT $__subsystem__(SB)							
  :-1			0xe17478		cc			INT $__subsystem__(SB)							
  :-1			0xe17479		cc			INT $__subsystem__(SB)							
  :-1			0xe1747a		cc			INT $__subsystem__(SB)							
  :-1			0xe1747b		cc			INT $__subsystem__(SB)							
  :-1			0xe1747c		cc			INT $__subsystem__(SB)							
  :-1			0xe1747d		cc			INT $__subsystem__(SB)							
  :-1			0xe1747e		cc			INT $__subsystem__(SB)							
  :-1			0xe1747f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/agvcontrol.ParseProtocolHeader(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:696	0xe17480		493b6610		CMPQ SP, 0x10(R14)					
  daohang.go:696	0xe17484		0f86a0000000		JBE 0xe1752a						
  daohang.go:696	0xe1748a		55			PUSHQ BP						
  daohang.go:696	0xe1748b		4889e5			MOVQ SP, BP						
  daohang.go:696	0xe1748e		4883ec28		SUBQ $__major_os_version__+34(SB), SP			
  daohang.go:696	0xe17492		4889442438		MOVQ AX, 0x38(SP)					
  daohang.go:697	0xe17497		4883fb10		CMPQ BX, $__major_os_version__+10(SB)			
  daohang.go:697	0xe1749b		7c67			JL 0xe17504						
  daohang.go:697	0xe1749d		4889442438		MOVQ AX, 0x38(SP)					
  daohang.go:701	0xe174a2		488d0517742f00		LEAQ runtime.types+1218752(SB), AX			
  daohang.go:701	0xe174a9		e8f2a25fff		CALL runtime.newobject(SB)				
  daohang.go:702	0xe174ae		488b4c2438		MOVQ 0x38(SP), CX					
  daohang.go:702	0xe174b3		0fb611			MOVZX 0(CX), DX						
  daohang.go:702	0xe174b6		8810			MOVB DL, 0(AX)						
  daohang.go:703	0xe174b8		0fb65101		MOVZX 0x1(CX), DX					
  daohang.go:703	0xe174bc		885001			MOVB DL, 0x1(AX)					
  daohang.go:709	0xe174bf		488d500a		LEAQ 0xa(AX), DX					
  daohang.go:709	0xe174c3		488d590a		LEAQ 0xa(CX), BX					
  binary.go:147		0xe174c7		0fb77102		MOVZX 0x2(CX), SI					
  binary.go:147		0xe174cb		66c1c608		ROLW $__major_os_version__+2(SB), SI			
  daohang.go:706	0xe174cf		66897002		MOVW SI, 0x2(AX)					
  binary.go:165		0xe174d3		8b7104			MOVL 0x4(CX), SI					
  binary.go:165		0xe174d6		0fce			BSWAP SI						
  daohang.go:707	0xe174d8		897004			MOVL SI, 0x4(AX)					
  binary.go:147		0xe174db		0fb77108		MOVZX 0x8(CX), SI					
  binary.go:147		0xe174df		66c1c608		ROLW $__major_os_version__+2(SB), SI			
  daohang.go:708	0xe174e3		66897008		MOVW SI, 0x8(AX)					
  daohang.go:709	0xe174e7		4839d3			CMPQ BX, DX						
  daohang.go:709	0xe174ea		740e			JE 0xe174fa						
  daohang.go:709	0xe174ec		8b510a			MOVL 0xa(CX), DX					
  daohang.go:709	0xe174ef		0fb7710e		MOVZX 0xe(CX), SI					
  daohang.go:709	0xe174f3		89500a			MOVL DX, 0xa(AX)					
  daohang.go:709	0xe174f6		6689700e		MOVW SI, 0xe(AX)					
  daohang.go:711	0xe174fa		31db			XORL BX, BX						
  daohang.go:711	0xe174fc		31c9			XORL CX, CX						
  daohang.go:711	0xe174fe		4883c428		ADDQ $__major_os_version__+34(SB), SP			
  daohang.go:711	0xe17502		5d			POPQ BP							
  daohang.go:711	0xe17503		c3			RET							
  daohang.go:698	0xe17504		488d050fd93600		LEAQ go:string.*+117010(SB), AX				
  daohang.go:698	0xe1750b		bb18000000		MOVL $__major_os_version__+18(SB), BX			
  daohang.go:698	0xe17510		31c9			XORL CX, CX						
  daohang.go:698	0xe17512		31ff			XORL DI, DI						
  daohang.go:698	0xe17514		4889fe			MOVQ DI, SI						
  daohang.go:698	0xe17517		e8a44e70ff		CALL fmt.Errorf(SB)					
  daohang.go:698	0xe1751c		4889d9			MOVQ BX, CX						
  daohang.go:698	0xe1751f		4889c3			MOVQ AX, BX						
  daohang.go:698	0xe17522		31c0			XORL AX, AX						
  daohang.go:698	0xe17524		4883c428		ADDQ $__major_os_version__+34(SB), SP			
  daohang.go:698	0xe17528		5d			POPQ BP							
  daohang.go:698	0xe17529		c3			RET							
  daohang.go:696	0xe1752a		4889442408		MOVQ AX, 0x8(SP)					
  daohang.go:696	0xe1752f		48895c2410		MOVQ BX, 0x10(SP)					
  daohang.go:696	0xe17534		48894c2418		MOVQ CX, 0x18(SP)					
  daohang.go:696	0xe17539		e8a2ef65ff		CALL runtime.morestack_noctxt.abi0(SB)			
  daohang.go:696	0xe1753e		488b442408		MOVQ 0x8(SP), AX					
  daohang.go:696	0xe17543		488b5c2410		MOVQ 0x10(SP), BX					
  daohang.go:696	0xe17548		488b4c2418		MOVQ 0x18(SP), CX					
  daohang.go:696	0xe1754d		e92effffff		JMP CAS-Backend/pkg/agvcontrol.ParseProtocolHeader(SB)	
  :-1			0xe17552		cc			INT $__subsystem__(SB)					
  :-1			0xe17553		cc			INT $__subsystem__(SB)					
  :-1			0xe17554		cc			INT $__subsystem__(SB)					
  :-1			0xe17555		cc			INT $__subsystem__(SB)					
  :-1			0xe17556		cc			INT $__subsystem__(SB)					
  :-1			0xe17557		cc			INT $__subsystem__(SB)					
  :-1			0xe17558		cc			INT $__subsystem__(SB)					
  :-1			0xe17559		cc			INT $__subsystem__(SB)					
  :-1			0xe1755a		cc			INT $__subsystem__(SB)					
  :-1			0xe1755b		cc			INT $__subsystem__(SB)					
  :-1			0xe1755c		cc			INT $__subsystem__(SB)					
  :-1			0xe1755d		cc			INT $__subsystem__(SB)					
  :-1			0xe1755e		cc			INT $__subsystem__(SB)					
  :-1			0xe1755f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/agvcontrol.ParseRobotConfigLockRes(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:715	0xe17560		493b6610		CMPQ SP, 0x10(R14)						
  daohang.go:715	0xe17564		0f8667010000		JBE 0xe176d1							
  daohang.go:715	0xe1756a		55			PUSHQ BP							
  daohang.go:715	0xe1756b		4889e5			MOVQ SP, BP							
  daohang.go:715	0xe1756e		4883ec48		SUBQ $__major_os_version__+66(SB), SP				
  daohang.go:718	0xe17572		4889442458		MOVQ AX, 0x58(SP)						
  daohang.go:718	0xe17577		48894c2468		MOVQ CX, 0x68(SP)						
  daohang.go:717	0xe1757c		0f1f4000		NOPL 0(AX)							
  daohang.go:717	0xe17580		e8fbfeffff		CALL CAS-Backend/pkg/agvcontrol.ParseProtocolHeader(SB)		
  daohang.go:718	0xe17585		4885db			TESTQ BX, BX							
  daohang.go:718	0xe17588		7442			JE 0xe175cc							
  daohang.go:719	0xe1758a		440f117c2430		MOVUPS X15, 0x30(SP)						
  daohang.go:719	0xe17590		7404			JE 0xe17596							
  daohang.go:719	0xe17592		488b5b08		MOVQ 0x8(BX), BX						
  daohang.go:719	0xe17596		48895c2430		MOVQ BX, 0x30(SP)						
  daohang.go:719	0xe1759b		48894c2438		MOVQ CX, 0x38(SP)						
  daohang.go:719	0xe175a0		488d05151e3700		LEAQ go:string.*+134836(SB), AX					
  daohang.go:719	0xe175a7		bb1c000000		MOVL $__major_os_version__+22(SB), BX				
  daohang.go:719	0xe175ac		488d4c2430		LEAQ 0x30(SP), CX						
  daohang.go:719	0xe175b1		bf01000000		MOVL $__minor_os_version__(SB), DI				
  daohang.go:719	0xe175b6		4889fe			MOVQ DI, SI							
  daohang.go:719	0xe175b9		e8024e70ff		CALL fmt.Errorf(SB)						
  daohang.go:719	0xe175be		4889d9			MOVQ BX, CX							
  daohang.go:719	0xe175c1		4889c3			MOVQ AX, BX							
  daohang.go:719	0xe175c4		31c0			XORL AX, AX							
  daohang.go:719	0xe175c6		4883c448		ADDQ $__major_os_version__+66(SB), SP				
  daohang.go:719	0xe175ca		5d			POPQ BP								
  daohang.go:719	0xe175cb		c3			RET								
  daohang.go:728	0xe175cc		83780400		CMPL 0x4(AX), $0x0						
  daohang.go:728	0xe175d0		0f84cc000000		JE 0xe176a2							
  daohang.go:717	0xe175d6		4889442428		MOVQ AX, 0x28(SP)						
  daohang.go:733	0xe175db		488d051ee92b00		LEAQ runtime.types+986880(SB), AX				
  daohang.go:733	0xe175e2		e8b9a15fff		CALL runtime.newobject(SB)					
  daohang.go:734	0xe175e7		488b4c2428		MOVQ 0x28(SP), CX						
  daohang.go:734	0xe175ec		8b4904			MOVL 0x4(CX), CX						
  daohang.go:734	0xe175ef		488d5110		LEAQ 0x10(CX), DX						
  daohang.go:734	0xe175f3		488b5c2468		MOVQ 0x68(SP), BX						
  daohang.go:734	0xe175f8		0f1f840000000000	NOPL 0(AX)(AX*1)						
  daohang.go:734	0xe17600		4839d3			CMPQ BX, DX							
  daohang.go:734	0xe17603		0f82bc000000		JB 0xe176c5							
  daohang.go:734	0xe17609		4883fa10		CMPQ DX, $__major_os_version__+10(SB)				
  daohang.go:734	0xe1760d		0f82a5000000		JB 0xe176b8							
  daohang.go:733	0xe17613		4889442440		MOVQ AX, 0x40(SP)						
  daohang.go:734	0xe17618		488d53f0		LEAQ -0x10(BX), DX						
  daohang.go:734	0xe1761c		4989d0			MOVQ DX, R8							
  daohang.go:734	0xe1761f		48f7da			NEGQ DX								
  daohang.go:734	0xe17622		48c1fa3f		SARQ $__major_os_version__+57(SB), DX				
  daohang.go:734	0xe17626		83e210			ANDL $__major_os_version__+10(SB), DX				
  daohang.go:734	0xe17629		4c8b4c2458		MOVQ 0x58(SP), R9						
  daohang.go:734	0xe1762e		4c01ca			ADDQ R9, DX							
  daohang.go:735	0xe17631		4889cb			MOVQ CX, BX							
  daohang.go:735	0xe17634		4c89c1			MOVQ R8, CX							
  daohang.go:735	0xe17637		488d3d22f62000		LEAQ runtime.types+269408(SB), DI				
  daohang.go:735	0xe1763e		4889c6			MOVQ AX, SI							
  daohang.go:735	0xe17641		4889d0			MOVQ DX, AX							
  daohang.go:735	0xe17644		e897fe74ff		CALL encoding/json.Unmarshal(SB)				
  daohang.go:735	0xe17649		4885c0			TESTQ AX, AX							
  daohang.go:735	0xe1764c		7445			JE 0xe17693							
  daohang.go:736	0xe1764e		440f117c2430		MOVUPS X15, 0x30(SP)						
  daohang.go:736	0xe17654		7404			JE 0xe1765a							
  daohang.go:736	0xe17656		488b4008		MOVQ 0x8(AX), AX						
  daohang.go:736	0xe1765a		4889442430		MOVQ AX, 0x30(SP)						
  daohang.go:736	0xe1765f		48895c2438		MOVQ BX, 0x38(SP)						
  daohang.go:736	0xe17664		488d058bf93600		LEAQ go:string.*+125678(SB), AX					
  daohang.go:736	0xe1766b		bb1a000000		MOVL $__major_os_version__+20(SB), BX				
  daohang.go:736	0xe17670		488d4c2430		LEAQ 0x30(SP), CX						
  daohang.go:736	0xe17675		bf01000000		MOVL $__minor_os_version__(SB), DI				
  daohang.go:736	0xe1767a		4889fe			MOVQ DI, SI							
  daohang.go:736	0xe1767d		0f1f00			NOPL 0(AX)							
  daohang.go:736	0xe17680		e83b4d70ff		CALL fmt.Errorf(SB)						
  daohang.go:736	0xe17685		4889d9			MOVQ BX, CX							
  daohang.go:736	0xe17688		4889c3			MOVQ AX, BX							
  daohang.go:736	0xe1768b		31c0			XORL AX, AX							
  daohang.go:736	0xe1768d		4883c448		ADDQ $__major_os_version__+66(SB), SP				
  daohang.go:736	0xe17691		5d			POPQ BP								
  daohang.go:736	0xe17692		c3			RET								
  daohang.go:739	0xe17693		488b442440		MOVQ 0x40(SP), AX						
  daohang.go:739	0xe17698		31db			XORL BX, BX							
  daohang.go:739	0xe1769a		31c9			XORL CX, CX							
  daohang.go:739	0xe1769c		4883c448		ADDQ $__major_os_version__+66(SB), SP				
  daohang.go:739	0xe176a0		5d			POPQ BP								
  daohang.go:739	0xe176a1		c3			RET								
  daohang.go:729	0xe176a2		488d0557e82b00		LEAQ runtime.types+986880(SB), AX				
  daohang.go:729	0xe176a9		e8f2a05fff		CALL runtime.newobject(SB)					
  daohang.go:729	0xe176ae		31db			XORL BX, BX							
  daohang.go:729	0xe176b0		31c9			XORL CX, CX							
  daohang.go:729	0xe176b2		4883c448		ADDQ $__major_os_version__+66(SB), SP				
  daohang.go:729	0xe176b6		5d			POPQ BP								
  daohang.go:729	0xe176b7		c3			RET								
  daohang.go:734	0xe176b8		b810000000		MOVL $__major_os_version__+10(SB), AX				
  daohang.go:734	0xe176bd		4889d1			MOVQ DX, CX							
  daohang.go:734	0xe176c0		e8db1166ff		CALL runtime.panicSliceB(SB)					
  daohang.go:734	0xe176c5		4889d1			MOVQ DX, CX							
  daohang.go:734	0xe176c8		4889da			MOVQ BX, DX							
  daohang.go:734	0xe176cb		e8901166ff		CALL runtime.panicSliceAcap(SB)					
  daohang.go:734	0xe176d0		90			NOPL								
  daohang.go:715	0xe176d1		4889442408		MOVQ AX, 0x8(SP)						
  daohang.go:715	0xe176d6		48895c2410		MOVQ BX, 0x10(SP)						
  daohang.go:715	0xe176db		48894c2418		MOVQ CX, 0x18(SP)						
  daohang.go:715	0xe176e0		e8fbed65ff		CALL runtime.morestack_noctxt.abi0(SB)				
  daohang.go:715	0xe176e5		488b442408		MOVQ 0x8(SP), AX						
  daohang.go:715	0xe176ea		488b5c2410		MOVQ 0x10(SP), BX						
  daohang.go:715	0xe176ef		488b4c2418		MOVQ 0x18(SP), CX						
  daohang.go:715	0xe176f4		e967feffff		JMP CAS-Backend/pkg/agvcontrol.ParseRobotConfigLockRes(SB)	
  :-1			0xe176f9		cc			INT $__subsystem__(SB)						
  :-1			0xe176fa		cc			INT $__subsystem__(SB)						
  :-1			0xe176fb		cc			INT $__subsystem__(SB)						
  :-1			0xe176fc		cc			INT $__subsystem__(SB)						
  :-1			0xe176fd		cc			INT $__subsystem__(SB)						
  :-1			0xe176fe		cc			INT $__subsystem__(SB)						
  :-1			0xe176ff		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/agvcontrol.UnlockControl(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:749	0xe17700		4c8d6424b0		LEAQ -0x50(SP), R12								
  daohang.go:749	0xe17705		4d3b6610		CMPQ R12, 0x10(R14)								
  daohang.go:749	0xe17709		0f864a050000		JBE 0xe17c59									
  daohang.go:749	0xe1770f		55			PUSHQ BP									
  daohang.go:749	0xe17710		4889e5			MOVQ SP, BP									
  daohang.go:749	0xe17713		4881ecc8000000		SUBQ $.file+123(SB), SP								
  daohang.go:761	0xe1771a		48898424d8000000	MOVQ AX, 0xd8(SP)								
  daohang.go:761	0xe17722		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  daohang.go:757	0xe1772a		48c74424405a010010	MOVQ $0x1000015a, 0x40(SP)							
  daohang.go:757	0xe17733		48c7442448a60f0000	MOVQ $__file_alignment__+3494(SB), 0x48(SP)					
  daohang.go:757	0xe1773c		0f1f4000		NOPL 0(AX)									
  daohang.go:761	0xe17740		4885c0			TESTQ AX, AX									
  daohang.go:761	0xe17743		7417			JE 0xe1775c									
  daohang.go:761	0xe17745		488b5008		MOVQ 0x8(AX), DX								
  daohang.go:761	0xe17749		4c8b0d00401a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.12(SB), R9				
  daohang.go:761	0xe17750		4d8b11			MOVQ 0(R9), R10									
  daohang.go:761	0xe17753		448b5810		MOVL 0x10(AX), R11								
  daohang.go:761	0xe17757		e9b6040000		JMP 0xe17c12									
  daohang.go:761	0xe1775c		0f10442440		MOVUPS 0x40(SP), X0								
  daohang.go:761	0xe17761		0f11442450		MOVUPS X0, 0x50(SP)								
  daohang.go:761	0xe17766		488d0dd3f70502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:761	0xe1776d		488d3d2c5b7402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:761	0xe17774		488d3545702f00		LEAQ runtime.types+1218496(SB), SI						
  daohang.go:761	0xe1777b		4c8d442450		LEAQ 0x50(SP), R8								
  daohang.go:761	0xe17780		e89ba974ff		CALL encoding/binary.Write(SB)							
  daohang.go:761	0xe17785		4885c0			TESTQ AX, AX									
  daohang.go:761	0xe17788		0f85a1000000		JNE 0xe1782f									
  daohang.go:765	0xe1778e		488d158bb12200		LEAQ runtime.types+383264(SB), DX						
  daohang.go:765	0xe17795		4889942480000000	MOVQ DX, 0x80(SP)								
  daohang.go:765	0xe1779d		4c8d05bc180502		LEAQ CAS-Backend/pkg/agvcontrol..stmp_20(SB), R8				
  daohang.go:765	0xe177a4		4c89842488000000	MOVQ R8, 0x88(SP)								
  print.go:314		0xe177ac		488b1dcda86f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe177b3		488d0526430502		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe177ba		488d8c2480000000	LEAQ 0x80(SP), CX								
  print.go:314		0xe177c2		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe177c7		4889fe			MOVQ DI, SI									
  print.go:314		0xe177ca		e8918070ff		CALL fmt.Fprintln(SB)								
  daohang.go:768	0xe177cf		e8cc6869ff		CALL time.Now(SB)								
  daohang.go:768	0xe177d4		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  daohang.go:768	0xe177de		6690			NOPW										
  daohang.go:768	0xe177e0		e87bcd68ff		CALL time.Time.Add(SB)								
  daohang.go:768	0xe177e5		488b9424d8000000	MOVQ 0xd8(SP), DX								
  daohang.go:768	0xe177ed		4c8b4240		MOVQ 0x40(DX), R8								
  daohang.go:768	0xe177f1		4889cf			MOVQ CX, DI									
  daohang.go:768	0xe177f4		4889d9			MOVQ BX, CX									
  daohang.go:768	0xe177f7		4889c3			MOVQ AX, BX									
  daohang.go:768	0xe177fa		488b8424e0000000	MOVQ 0xe0(SP), AX								
  daohang.go:768	0xe17802		41ffd0			CALL R8										
  daohang.go:771	0xe17805		440f117c2430		MOVUPS X15, 0x30(SP)								
  daohang.go:761	0xe1780b		488b9424d8000000	MOVQ 0xd8(SP), DX								
  daohang.go:761	0xe17813		4885d2			TESTQ DX, DX									
  daohang.go:772	0xe17816		7460			JE 0xe17878									
  daohang.go:772	0xe17818		488b5a08		MOVQ 0x8(DX), BX								
  daohang.go:772	0xe1781c		4c8b0d4d3f1a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.13(SB), R9				
  daohang.go:772	0xe17823		4d8b11			MOVQ 0(R9), R10									
  daohang.go:772	0xe17826		448b5a10		MOVL 0x10(DX), R11								
  daohang.go:772	0xe1782a		e9a3030000		JMP 0xe17bd2									
  daohang.go:762	0xe1782f		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)								
  daohang.go:762	0xe17838		7404			JE 0xe1783e									
  daohang.go:762	0xe1783a		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:762	0xe1783e		48898424b0000000	MOVQ AX, 0xb0(SP)								
  daohang.go:762	0xe17846		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  daohang.go:762	0xe1784e		488d05831b3700		LEAQ go:string.*+134864(SB), AX							
  daohang.go:762	0xe17855		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:762	0xe1785a		488d8c24b0000000	LEAQ 0xb0(SP), CX								
  daohang.go:762	0xe17862		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:762	0xe17867		4889fe			MOVQ DI, SI									
  daohang.go:762	0xe1786a		e8514b70ff		CALL fmt.Errorf(SB)								
  daohang.go:762	0xe1786f		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:762	0xe17876		5d			POPQ BP										
  daohang.go:762	0xe17877		c3			RET										
  daohang.go:772	0xe17878		4889d0			MOVQ DX, AX									
  daohang.go:772	0xe1787b		488b9c24e0000000	MOVQ 0xe0(SP), BX								
  daohang.go:772	0xe17883		488d0db6f60502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:772	0xe1788a		488d3d0f5a7402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:772	0xe17891		488d3548f32000		LEAQ runtime.types+269280(SB), SI						
  daohang.go:772	0xe17898		4c8d442430		LEAQ 0x30(SP), R8								
  daohang.go:772	0xe1789d		0f1f00			NOPL 0(AX)									
  daohang.go:772	0xe178a0		e89b9974ff		CALL encoding/binary.Read(SB)							
  daohang.go:772	0xe178a5		4885c0			TESTQ AX, AX									
  daohang.go:772	0xe178a8		7449			JE 0xe178f3									
  daohang.go:773	0xe178aa		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)								
  daohang.go:773	0xe178b3		7404			JE 0xe178b9									
  daohang.go:773	0xe178b5		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:773	0xe178b9		48898424b0000000	MOVQ AX, 0xb0(SP)								
  daohang.go:773	0xe178c1		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  daohang.go:773	0xe178c9		488d05241b3700		LEAQ go:string.*+134892(SB), AX							
  daohang.go:773	0xe178d0		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:773	0xe178d5		488d8c24b0000000	LEAQ 0xb0(SP), CX								
  daohang.go:773	0xe178dd		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:773	0xe178e2		4889fe			MOVQ DI, SI									
  daohang.go:773	0xe178e5		e8d64a70ff		CALL fmt.Errorf(SB)								
  daohang.go:773	0xe178ea		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:773	0xe178f1		5d			POPQ BP										
  daohang.go:773	0xe178f2		c3			RET										
  daohang.go:777	0xe178f3		66817c2438b636		CMPW 0x38(SP), $__size_of_stack_commit__+9910(SB)				
  daohang.go:777	0xe178fa		660f1f440000		NOPW 0(AX)(AX*1)								
  daohang.go:777	0xe17900		0f8551020000		JNE 0xe17b57									
  daohang.go:782	0xe17906		488d0533682a00		LEAQ runtime.types+889152(SB), AX						
  daohang.go:782	0xe1790d		e88e9e5fff		CALL runtime.newobject(SB)							
  daohang.go:782	0xe17912		48898424c0000000	MOVQ AX, 0xc0(SP)								
  daohang.go:782	0xe1791a		48c7400800000000	MOVQ $0x0, 0x8(AX)								
  daohang.go:784	0xe17922		8b4c2434		MOVL 0x34(SP), CX								
  daohang.go:784	0xe17926		85c9			TESTL CX, CX									
  daohang.go:784	0xe17928		750c			JNE 0xe17936									
  daohang.go:786	0xe1792a		48c70000000000		MOVQ $0x0, 0(AX)								
  daohang.go:786	0xe17931		e940010000		JMP 0xe17a76									
  daohang.go:789	0xe17936		488d0563b02200		LEAQ runtime.types+383392(SB), AX						
  daohang.go:789	0xe1793d		89cb			MOVL CX, BX									
  daohang.go:789	0xe1793f		90			NOPL										
  daohang.go:789	0xe17940		e81ba265ff		CALL runtime.makeslice(SB)							
  daohang.go:789	0xe17945		4889442468		MOVQ AX, 0x68(SP)								
  daohang.go:789	0xe1794a		8b7c2434		MOVL 0x34(SP), DI								
  daohang.go:789	0xe1794e		48897c2460		MOVQ DI, 0x60(SP)								
  daohang.go:790	0xe17953		488b9424d8000000	MOVQ 0xd8(SP), DX								
  daohang.go:790	0xe1795b		488b5228		MOVQ 0x28(DX), DX								
  daohang.go:790	0xe1795f		4889c3			MOVQ AX, BX									
  daohang.go:790	0xe17962		4889f9			MOVQ DI, CX									
  daohang.go:790	0xe17965		488b8424e0000000	MOVQ 0xe0(SP), AX								
  daohang.go:790	0xe1796d		ffd2			CALL DX										
  daohang.go:790	0xe1796f		4885db			TESTQ BX, BX									
  daohang.go:790	0xe17972		7449			JE 0xe179bd									
  daohang.go:791	0xe17974		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)								
  daohang.go:791	0xe1797d		7404			JE 0xe17983									
  daohang.go:791	0xe1797f		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:791	0xe17983		48899c24b0000000	MOVQ BX, 0xb0(SP)								
  daohang.go:791	0xe1798b		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  daohang.go:791	0xe17993		488d05761a3700		LEAQ go:string.*+134920(SB), AX							
  daohang.go:791	0xe1799a		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:791	0xe1799f		488d8c24b0000000	LEAQ 0xb0(SP), CX								
  daohang.go:791	0xe179a7		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:791	0xe179ac		4889fe			MOVQ DI, SI									
  daohang.go:791	0xe179af		e80c4a70ff		CALL fmt.Errorf(SB)								
  daohang.go:791	0xe179b4		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:791	0xe179bb		5d			POPQ BP										
  daohang.go:791	0xe179bc		c3			RET										
  daohang.go:795	0xe179bd		488b442468		MOVQ 0x68(SP), AX								
  daohang.go:795	0xe179c2		488b5c2460		MOVQ 0x60(SP), BX								
  daohang.go:795	0xe179c7		4889d9			MOVQ BX, CX									
  daohang.go:795	0xe179ca		488d3d8ff62000		LEAQ runtime.types+270432(SB), DI						
  daohang.go:795	0xe179d1		488bb424c0000000	MOVQ 0xc0(SP), SI								
  daohang.go:795	0xe179d9		e802fb74ff		CALL encoding/json.Unmarshal(SB)						
  daohang.go:795	0xe179de		6690			NOPW										
  daohang.go:795	0xe179e0		4885c0			TESTQ AX, AX									
  daohang.go:795	0xe179e3		0f8485000000		JE 0xe17a6e									
  daohang.go:796	0xe179e9		440f11bc2490000000	MOVUPS X15, 0x90(SP)								
  daohang.go:796	0xe179f2		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)								
  daohang.go:796	0xe179fb		7404			JE 0xe17a01									
  daohang.go:796	0xe179fd		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:796	0xe17a01		4889842490000000	MOVQ AX, 0x90(SP)								
  daohang.go:796	0xe17a09		48899c2498000000	MOVQ BX, 0x98(SP)								
  daohang.go:796	0xe17a11		31c0			XORL AX, AX									
  daohang.go:796	0xe17a13		488b5c2468		MOVQ 0x68(SP), BX								
  daohang.go:796	0xe17a18		488b4c2460		MOVQ 0x60(SP), CX								
  daohang.go:796	0xe17a1d		0f1f00			NOPL 0(AX)									
  daohang.go:796	0xe17a20		e85bac65ff		CALL runtime.slicebytetostring(SB)						
  daohang.go:796	0xe17a25		e8f62665ff		CALL runtime.convTstring(SB)							
  daohang.go:796	0xe17a2a		488d15efae2200		LEAQ runtime.types+383264(SB), DX						
  daohang.go:796	0xe17a31		48899424a0000000	MOVQ DX, 0xa0(SP)								
  daohang.go:796	0xe17a39		48898424a8000000	MOVQ AX, 0xa8(SP)								
  daohang.go:796	0xe17a41		488d05dbc33700		LEAQ go:string.*+178459(SB), AX							
  daohang.go:796	0xe17a48		bb26000000		MOVL $__major_os_version__+32(SB), BX						
  daohang.go:796	0xe17a4d		488d8c2490000000	LEAQ 0x90(SP), CX								
  daohang.go:796	0xe17a55		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:796	0xe17a5a		4889fe			MOVQ DI, SI									
  daohang.go:796	0xe17a5d		0f1f00			NOPL 0(AX)									
  daohang.go:796	0xe17a60		e85b4970ff		CALL fmt.Errorf(SB)								
  daohang.go:796	0xe17a65		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:796	0xe17a6c		5d			POPQ BP										
  daohang.go:796	0xe17a6d		c3			RET										
  daohang.go:801	0xe17a6e		488b8424c0000000	MOVQ 0xc0(SP), AX								
  daohang.go:801	0xe17a76		48833800		CMPQ 0(AX), $0x0								
  daohang.go:801	0xe17a7a		660f1f440000		NOPW 0(AX)(AX*1)								
  daohang.go:801	0xe17a80		0f848c000000		JE 0xe17b12									
  daohang.go:802	0xe17a86		440f11bc2490000000	MOVUPS X15, 0x90(SP)								
  daohang.go:802	0xe17a8f		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)								
  daohang.go:802	0xe17a98		488b08			MOVQ 0(AX), CX									
  daohang.go:802	0xe17a9b		4889c8			MOVQ CX, AX									
  daohang.go:802	0xe17a9e		6690			NOPW										
  daohang.go:802	0xe17aa0		e8fb2565ff		CALL runtime.convT64(SB)							
  daohang.go:802	0xe17aa5		488d0db4b02200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:802	0xe17aac		48898c2490000000	MOVQ CX, 0x90(SP)								
  daohang.go:802	0xe17ab4		4889842498000000	MOVQ AX, 0x98(SP)								
  daohang.go:802	0xe17abc		488b8c24c0000000	MOVQ 0xc0(SP), CX								
  daohang.go:802	0xe17ac4		488b4108		MOVQ 0x8(CX), AX								
  daohang.go:802	0xe17ac8		488b5910		MOVQ 0x10(CX), BX								
  daohang.go:802	0xe17acc		e84f2665ff		CALL runtime.convTstring(SB)							
  daohang.go:802	0xe17ad1		488d0d48ae2200		LEAQ runtime.types+383264(SB), CX						
  daohang.go:802	0xe17ad8		48898c24a0000000	MOVQ CX, 0xa0(SP)								
  daohang.go:802	0xe17ae0		48898424a8000000	MOVQ AX, 0xa8(SP)								
  daohang.go:802	0xe17ae8		488d05ea8b3800		LEAQ go:string.*+229841(SB), AX							
  daohang.go:802	0xe17aef		bb37000000		MOVL $__major_os_version__+49(SB), BX						
  daohang.go:802	0xe17af4		488d8c2490000000	LEAQ 0x90(SP), CX								
  daohang.go:802	0xe17afc		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:802	0xe17b01		4889fe			MOVQ DI, SI									
  daohang.go:802	0xe17b04		e8b74870ff		CALL fmt.Errorf(SB)								
  daohang.go:802	0xe17b09		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:802	0xe17b10		5d			POPQ BP										
  daohang.go:802	0xe17b11		c3			RET										
  daohang.go:805	0xe17b12		488d1507ae2200		LEAQ runtime.types+383264(SB), DX						
  daohang.go:805	0xe17b19		4889542470		MOVQ DX, 0x70(SP)								
  daohang.go:805	0xe17b1e		488d154b150502		LEAQ CAS-Backend/pkg/agvcontrol..stmp_22(SB), DX				
  daohang.go:805	0xe17b25		4889542478		MOVQ DX, 0x78(SP)								
  print.go:314		0xe17b2a		488b1d4fa56f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe17b31		488d05a83f0502		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe17b38		488d4c2470		LEAQ 0x70(SP), CX								
  print.go:314		0xe17b3d		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe17b42		4889fe			MOVQ DI, SI									
  print.go:314		0xe17b45		e8167d70ff		CALL fmt.Fprintln(SB)								
  daohang.go:806	0xe17b4a		31c0			XORL AX, AX									
  daohang.go:806	0xe17b4c		31db			XORL BX, BX									
  daohang.go:806	0xe17b4e		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:806	0xe17b55		5d			POPQ BP										
  daohang.go:806	0xe17b56		c3			RET										
  daohang.go:778	0xe17b57		440f11bc2490000000	MOVUPS X15, 0x90(SP)								
  daohang.go:778	0xe17b60		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)								
  daohang.go:778	0xe17b69		488d0df0af2200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:778	0xe17b70		48898c2490000000	MOVQ CX, 0x90(SP)								
  daohang.go:778	0xe17b78		488d0d19fe0402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_21(SB), CX				
  daohang.go:778	0xe17b7f		48898c2498000000	MOVQ CX, 0x98(SP)								
  daohang.go:778	0xe17b87		0fb7442438		MOVZX 0x38(SP), AX								
  daohang.go:778	0xe17b8c		e80f765fff		CALL runtime.convT16(SB)							
  daohang.go:778	0xe17b91		488d0d88ae2200		LEAQ runtime.types+383520(SB), CX						
  daohang.go:778	0xe17b98		48898c24a0000000	MOVQ CX, 0xa0(SP)								
  daohang.go:778	0xe17ba0		48898424a8000000	MOVQ AX, 0xa8(SP)								
  daohang.go:778	0xe17ba8		488d057f0b3800		LEAQ go:string.*+197158(SB), AX							
  daohang.go:778	0xe17baf		bb2b000000		MOVL $__major_os_version__+37(SB), BX						
  daohang.go:778	0xe17bb4		488d8c2490000000	LEAQ 0x90(SP), CX								
  daohang.go:778	0xe17bbc		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:778	0xe17bc1		4889fe			MOVQ DI, SI									
  daohang.go:778	0xe17bc4		e8f74770ff		CALL fmt.Errorf(SB)								
  daohang.go:778	0xe17bc9		4881c4c8000000		ADDQ $.file+123(SB), SP								
  daohang.go:778	0xe17bd0		5d			POPQ BP										
  daohang.go:778	0xe17bd1		c3			RET										
  daohang.go:772	0xe17bd2		4d89dc			MOVQ R11, R12									
  daohang.go:772	0xe17bd5		4d21d3			ANDQ R10, R11									
  daohang.go:772	0xe17bd8		49c1e304		SHLQ $__subsystem__+1(SB), R11							
  daohang.go:772	0xe17bdc		4f8b6c1908		MOVQ 0x8(R9)(R11*1), R13							
  daohang.go:772	0xe17be1		4939dd			CMPQ R13, BX									
  daohang.go:772	0xe17be4		741f			JE 0xe17c05									
  daohang.go:772	0xe17be6		4d8d5c2401		LEAQ 0x1(R12), R11								
  daohang.go:772	0xe17beb		4d85ed			TESTQ R13, R13									
  daohang.go:772	0xe17bee		75e2			JNE 0xe17bd2									
  daohang.go:772	0xe17bf0		488d05793b1a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.13(SB), AX				
  daohang.go:772	0xe17bf7		e8e4765fff		CALL runtime.typeAssert(SB)							
  daohang.go:772	0xe17bfc		4889c2			MOVQ AX, DX									
  daohang.go:772	0xe17bff		90			NOPL										
  daohang.go:772	0xe17c00		e973fcffff		JMP 0xe17878									
  daohang.go:772	0xe17c05		4f8b4c1910		MOVQ 0x10(R9)(R11*1), R9							
  daohang.go:772	0xe17c0a		4c89ca			MOVQ R9, DX									
  daohang.go:772	0xe17c0d		e966fcffff		JMP 0xe17878									
  daohang.go:761	0xe17c12		4d89dc			MOVQ R11, R12									
  daohang.go:761	0xe17c15		4d21d3			ANDQ R10, R11									
  daohang.go:761	0xe17c18		49c1e304		SHLQ $__subsystem__+1(SB), R11							
  daohang.go:761	0xe17c1c		4f8b6c1908		MOVQ 0x8(R9)(R11*1), R13							
  daohang.go:761	0xe17c21		4939d5			CMPQ R13, DX									
  daohang.go:761	0xe17c24		7426			JE 0xe17c4c									
  daohang.go:761	0xe17c26		4d8d5c2401		LEAQ 0x1(R12), R11								
  daohang.go:761	0xe17c2b		4d85ed			TESTQ R13, R13									
  daohang.go:761	0xe17c2e		75e2			JNE 0xe17c12									
  daohang.go:761	0xe17c30		488d05193b1a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.12(SB), AX				
  daohang.go:761	0xe17c37		4889d3			MOVQ DX, BX									
  daohang.go:761	0xe17c3a		e8a1765fff		CALL runtime.typeAssert(SB)							
  daohang.go:761	0xe17c3f		488b9c24e0000000	MOVQ 0xe0(SP), BX								
  daohang.go:761	0xe17c47		e910fbffff		JMP 0xe1775c									
  daohang.go:761	0xe17c4c		4b8b541910		MOVQ 0x10(R9)(R11*1), DX							
  daohang.go:761	0xe17c51		4889d0			MOVQ DX, AX									
  daohang.go:761	0xe17c54		e903fbffff		JMP 0xe1775c									
  daohang.go:749	0xe17c59		4889442408		MOVQ AX, 0x8(SP)								
  daohang.go:749	0xe17c5e		48895c2410		MOVQ BX, 0x10(SP)								
  daohang.go:749	0xe17c63		e878e865ff		CALL runtime.morestack_noctxt.abi0(SB)						
  daohang.go:749	0xe17c68		488b442408		MOVQ 0x8(SP), AX								
  daohang.go:749	0xe17c6d		488b5c2410		MOVQ 0x10(SP), BX								
  daohang.go:749	0xe17c72		e989faffff		JMP CAS-Backend/pkg/agvcontrol.UnlockControl(SB)				
  :-1			0xe17c77		cc			INT $__subsystem__(SB)								
  :-1			0xe17c78		cc			INT $__subsystem__(SB)								
  :-1			0xe17c79		cc			INT $__subsystem__(SB)								
  :-1			0xe17c7a		cc			INT $__subsystem__(SB)								
  :-1			0xe17c7b		cc			INT $__subsystem__(SB)								
  :-1			0xe17c7c		cc			INT $__subsystem__(SB)								
  :-1			0xe17c7d		cc			INT $__subsystem__(SB)								
  :-1			0xe17c7e		cc			INT $__subsystem__(SB)								
  :-1			0xe17c7f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SendRobotTaskListStatusReq(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:830	0xe17c80		4c8da42470ffffff	LEAQ 0xffffff70(SP), R12							
  daohang.go:830	0xe17c88		4d3b6610		CMPQ R12, 0x10(R14)								
  daohang.go:830	0xe17c8c		0f86e6070000		JBE 0xe18478									
  daohang.go:830	0xe17c92		55			PUSHQ BP									
  daohang.go:830	0xe17c93		4889e5			MOVQ SP, BP									
  daohang.go:830	0xe17c96		4881ec08010000		SUBQ $.file+187(SB), SP								
  daohang.go:830	0xe17c9d		4889842418010000	MOVQ AX, 0x118(SP)								
  daohang.go:830	0xe17ca5		48899c2420010000	MOVQ BX, 0x120(SP)								
  daohang.go:830	0xe17cad		48898c2428010000	MOVQ CX, 0x128(SP)								
  daohang.go:832	0xe17cb5		4885c0			TESTQ AX, AX									
  daohang.go:832	0xe17cb8		0f84a3020000		JE 0xe17f61									
  daohang.go:832	0xe17cbe		48899c2420010000	MOVQ BX, 0x120(SP)								
  daohang.go:832	0xe17cc6		4889842418010000	MOVQ AX, 0x118(SP)								
  daohang.go:843	0xe17cce		48898c24d8000000	MOVQ CX, 0xd8(SP)								
  daohang.go:843	0xe17cd6		4889bc24e0000000	MOVQ DI, 0xe0(SP)								
  daohang.go:843	0xe17cde		4088b424e8000000	MOVB SI, 0xe8(SP)								
  daohang.go:843	0xe17ce6		488d0513632a00		LEAQ runtime.types+888832(SB), AX						
  daohang.go:843	0xe17ced		488d9c24d8000000	LEAQ 0xd8(SP), BX								
  daohang.go:843	0xe17cf5		e8a6735fff		CALL runtime.convT(SB)								
  daohang.go:843	0xe17cfa		4889c3			MOVQ AX, BX									
  daohang.go:843	0xe17cfd		488d05fc622a00		LEAQ runtime.types+888832(SB), AX						
  daohang.go:843	0xe17d04		e8975775ff		CALL encoding/json.Marshal(SB)							
  daohang.go:844	0xe17d09		4885ff			TESTQ DI, DI									
  daohang.go:844	0xe17d0c		7451			JE 0xe17d5f									
  daohang.go:845	0xe17d0e		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  daohang.go:845	0xe17d17		7404			JE 0xe17d1d									
  daohang.go:845	0xe17d19		488b7f08		MOVQ 0x8(DI), DI								
  daohang.go:845	0xe17d1d		4889bc24c8000000	MOVQ DI, 0xc8(SP)								
  daohang.go:845	0xe17d25		4889b424d0000000	MOVQ SI, 0xd0(SP)								
  daohang.go:845	0xe17d2d		488d0567be3600		LEAQ go:string.*+112275(SB), AX							
  daohang.go:845	0xe17d34		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  daohang.go:845	0xe17d39		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  daohang.go:845	0xe17d41		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:845	0xe17d46		4889fe			MOVQ DI, SI									
  daohang.go:845	0xe17d49		e8724670ff		CALL fmt.Errorf(SB)								
  daohang.go:845	0xe17d4e		4889d9			MOVQ BX, CX									
  daohang.go:845	0xe17d51		4889c3			MOVQ AX, BX									
  daohang.go:845	0xe17d54		31c0			XORL AX, AX									
  daohang.go:845	0xe17d56		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:845	0xe17d5d		5d			POPQ BP										
  daohang.go:845	0xe17d5e		c3			RET										
  daohang.go:843	0xe17d5f		48894c2478		MOVQ CX, 0x78(SP)								
  daohang.go:843	0xe17d64		48895c2470		MOVQ BX, 0x70(SP)								
  daohang.go:843	0xe17d69		4889842498000000	MOVQ AX, 0x98(SP)								
  daohang.go:855	0xe17d71		48c74424405a010100	MOVQ $__dll_characteristics__+32762(SB), 0x40(SP)				
  daohang.go:855	0xe17d7a		48c74424481d0c0000	MOVQ $__file_alignment__+2589(SB), 0x48(SP)					
  daohang.go:853	0xe17d83		895c2444		MOVL BX, 0x44(SP)								
  daohang.go:859	0xe17d87		488d0572052c00		LEAQ runtime.types+996096(SB), AX						
  daohang.go:859	0xe17d8e		e80d9a5fff		CALL runtime.newobject(SB)							
  daohang.go:859	0xe17d93		4889842400010000	MOVQ AX, 0x100(SP)								
  daohang.go:860	0xe17d9b		0f10442440		MOVUPS 0x40(SP), X0								
  daohang.go:860	0xe17da0		0f11442450		MOVUPS X0, 0x50(SP)								
  daohang.go:860	0xe17da5		4889c3			MOVQ AX, BX									
  daohang.go:860	0xe17da8		488d0d91f10502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:860	0xe17daf		488d3dea547402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:860	0xe17db6		488d35036b2f00		LEAQ runtime.types+1218752(SB), SI						
  daohang.go:860	0xe17dbd		4c8d442450		LEAQ 0x50(SP), R8								
  daohang.go:860	0xe17dc2		488d0597520502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  daohang.go:860	0xe17dc9		e852a374ff		CALL encoding/binary.Write(SB)							
  daohang.go:861	0xe17dce		4885c0			TESTQ AX, AX									
  daohang.go:861	0xe17dd1		7451			JE 0xe17e24									
  daohang.go:862	0xe17dd3		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  daohang.go:862	0xe17ddc		7404			JE 0xe17de2									
  daohang.go:862	0xe17dde		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:862	0xe17de2		48898424c8000000	MOVQ AX, 0xc8(SP)								
  daohang.go:862	0xe17dea		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  daohang.go:862	0xe17df2		488d05a7153700		LEAQ go:string.*+134808(SB), AX							
  daohang.go:862	0xe17df9		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:862	0xe17dfe		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  daohang.go:862	0xe17e06		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:862	0xe17e0b		4889fe			MOVQ DI, SI									
  daohang.go:862	0xe17e0e		e8ad4570ff		CALL fmt.Errorf(SB)								
  daohang.go:862	0xe17e13		4889d9			MOVQ BX, CX									
  daohang.go:862	0xe17e16		4889c3			MOVQ AX, BX									
  daohang.go:862	0xe17e19		31c0			XORL AX, AX									
  daohang.go:862	0xe17e1b		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:862	0xe17e22		5d			POPQ BP										
  daohang.go:862	0xe17e23		c3			RET										
  daohang.go:864	0xe17e24		488b842400010000	MOVQ 0x100(SP), AX								
  daohang.go:864	0xe17e2c		488b9c2498000000	MOVQ 0x98(SP), BX								
  daohang.go:864	0xe17e34		488b4c2470		MOVQ 0x70(SP), CX								
  daohang.go:864	0xe17e39		488b7c2478		MOVQ 0x78(SP), DI								
  daohang.go:864	0xe17e3e		6690			NOPW										
  daohang.go:864	0xe17e40		e8db4671ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe17e45		488b942400010000	MOVQ 0x100(SP), DX								
  buffer.go:54		0xe17e4d		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe17e51		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe17e55		4839c8			CMPQ AX, CX									
  buffer.go:54		0xe17e58		0f8714060000		JA 0xe18472									
  daohang.go:867	0xe17e5e		488bb42418010000	MOVQ 0x118(SP), SI								
  daohang.go:867	0xe17e66		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe17e6a		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe17e6d		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe17e71		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe17e74		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe17e77		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe17e7a		48f7da			NEGQ DX										
  buffer.go:54		0xe17e7d		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe17e81		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe17e84		498d1c01		LEAQ 0(R9)(AX*1), BX								
  daohang.go:867	0xe17e88		488b842420010000	MOVQ 0x120(SP), AX								
  daohang.go:867	0xe17e90		41ffd0			CALL R8										
  daohang.go:868	0xe17e93		4885db			TESTQ BX, BX									
  daohang.go:868	0xe17e96		7577			JNE 0xe17f0f									
  daohang.go:873	0xe17e98		e8036269ff		CALL time.Now(SB)								
  daohang.go:873	0xe17e9d		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  daohang.go:873	0xe17ea7		e8b4c668ff		CALL time.Time.Add(SB)								
  daohang.go:873	0xe17eac		488b942418010000	MOVQ 0x118(SP), DX								
  daohang.go:873	0xe17eb4		488b7240		MOVQ 0x40(DX), SI								
  daohang.go:873	0xe17eb8		4889cf			MOVQ CX, DI									
  daohang.go:873	0xe17ebb		4889d9			MOVQ BX, CX									
  daohang.go:873	0xe17ebe		4889c3			MOVQ AX, BX									
  daohang.go:873	0xe17ec1		488b842420010000	MOVQ 0x120(SP), AX								
  daohang.go:873	0xe17ec9		ffd6			CALL SI										
  daohang.go:876	0xe17ecb		488d05ceaa2200		LEAQ runtime.types+383392(SB), AX						
  daohang.go:876	0xe17ed2		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  daohang.go:876	0xe17ed7		4889d9			MOVQ BX, CX									
  daohang.go:876	0xe17eda		e8819c65ff		CALL runtime.makeslice(SB)							
  daohang.go:876	0xe17edf		48898424f0000000	MOVQ AX, 0xf0(SP)								
  daohang.go:832	0xe17ee7		488b8c2418010000	MOVQ 0x118(SP), CX								
  daohang.go:832	0xe17eef		4885c9			TESTQ CX, CX									
  daohang.go:877	0xe17ef2		0f8492000000		JE 0xe17f8a									
  daohang.go:877	0xe17ef8		488b5908		MOVQ 0x8(CX), BX								
  daohang.go:877	0xe17efc		488b158d381a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.14(SB), DX				
  daohang.go:877	0xe17f03		4c8b0a			MOVQ 0(DX), R9									
  daohang.go:877	0xe17f06		448b5110		MOVL 0x10(CX), R10								
  daohang.go:877	0xe17f0a		e916050000		JMP 0xe18425									
  daohang.go:869	0xe17f0f		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  daohang.go:869	0xe17f18		7404			JE 0xe17f1e									
  daohang.go:869	0xe17f1a		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:869	0xe17f1e		48899c24c8000000	MOVQ BX, 0xc8(SP)								
  daohang.go:869	0xe17f26		48898c24d0000000	MOVQ CX, 0xd0(SP)								
  daohang.go:869	0xe17f2e		488d058fa83600		LEAQ go:string.*+107196(SB), AX							
  daohang.go:869	0xe17f35		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  daohang.go:869	0xe17f3a		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  daohang.go:869	0xe17f42		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:869	0xe17f47		4889fe			MOVQ DI, SI									
  daohang.go:869	0xe17f4a		e8714470ff		CALL fmt.Errorf(SB)								
  daohang.go:869	0xe17f4f		4889d9			MOVQ BX, CX									
  daohang.go:869	0xe17f52		4889c3			MOVQ AX, BX									
  daohang.go:869	0xe17f55		31c0			XORL AX, AX									
  daohang.go:869	0xe17f57		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:869	0xe17f5e		5d			POPQ BP										
  daohang.go:869	0xe17f5f		90			NOPL										
  daohang.go:869	0xe17f60		c3			RET										
  daohang.go:833	0xe17f61		488d05b33f3800		LEAQ go:string.*+211475(SB), AX							
  daohang.go:833	0xe17f68		bb30000000		MOVL $__major_os_version__+42(SB), BX						
  daohang.go:833	0xe17f6d		31c9			XORL CX, CX									
  daohang.go:833	0xe17f6f		31ff			XORL DI, DI									
  daohang.go:833	0xe17f71		4889fe			MOVQ DI, SI									
  daohang.go:833	0xe17f74		e8474470ff		CALL fmt.Errorf(SB)								
  daohang.go:833	0xe17f79		4889d9			MOVQ BX, CX									
  daohang.go:833	0xe17f7c		4889c3			MOVQ AX, BX									
  daohang.go:833	0xe17f7f		31c0			XORL AX, AX									
  daohang.go:833	0xe17f81		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:833	0xe17f88		5d			POPQ BP										
  daohang.go:833	0xe17f89		c3			RET										
  io.go:354		0xe17f8a		488b9c2420010000	MOVQ 0x120(SP), BX								
  io.go:354		0xe17f92		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe17f97		4889fe			MOVQ DI, SI									
  io.go:354		0xe17f9a		4989f0			MOVQ SI, R8									
  daohang.go:876	0xe17f9d		4889c2			MOVQ AX, DX									
  io.go:354		0xe17fa0		4889c8			MOVQ CX, AX									
  io.go:354		0xe17fa3		4889d1			MOVQ DX, CX									
  io.go:354		0xe17fa6		e855ac69ff		CALL io.ReadAtLeast(SB)								
  daohang.go:878	0xe17fab		4885db			TESTQ BX, BX									
  daohang.go:878	0xe17fae		0f8403010000		JE 0xe180b7									
  daohang.go:880	0xe17fb4		48391d05ee1900		CMPQ io.EOF(SB), BX								
  daohang.go:880	0xe17fbb		7405			JE 0xe17fc2									
  daohang.go:878	0xe17fbd		4885db			TESTQ BX, BX									
  daohang.go:880	0xe17fc0		eb52			JMP 0xe18014									
  io.go:354		0xe17fc2		4889442468		MOVQ AX, 0x68(SP)								
  io.go:354		0xe17fc7		48898c24a0000000	MOVQ CX, 0xa0(SP)								
  io.go:354		0xe17fcf		48899c2480000000	MOVQ BX, 0x80(SP)								
  daohang.go:880	0xe17fd7		488b15eaed1900		MOVQ io.EOF+8(SB), DX								
  daohang.go:880	0xe17fde		4889d8			MOVQ BX, AX									
  daohang.go:880	0xe17fe1		4889cb			MOVQ CX, BX									
  daohang.go:880	0xe17fe4		4889d1			MOVQ DX, CX									
  daohang.go:880	0xe17fe7		e8f4045fff		CALL runtime.ifaceeq(SB)							
  daohang.go:880	0xe17fec		84c0			TESTL AL, AL									
  daohang.go:880	0xe17fee		0f859a000000		JNE 0xe1808e									
  daohang.go:878	0xe17ff4		488b8c2480000000	MOVQ 0x80(SP), CX								
  daohang.go:878	0xe17ffc		4885c9			TESTQ CX, CX									
  daohang.go:883	0xe17fff		488b442468		MOVQ 0x68(SP), AX								
  daohang.go:883	0xe18004		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  daohang.go:883	0xe1800c		488b9c2480000000	MOVQ 0x80(SP), BX								
  daohang.go:883	0xe18014		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)								
  daohang.go:883	0xe1801d		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:883	0xe18026		7404			JE 0xe1802c									
  daohang.go:883	0xe18028		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:883	0xe1802c		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  daohang.go:883	0xe18034		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  daohang.go:883	0xe1803c		0f1f4000		NOPL 0(AX)									
  daohang.go:883	0xe18040		e85b2065ff		CALL runtime.convT64(SB)							
  daohang.go:883	0xe18045		488d0d14ab2200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:883	0xe1804c		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  daohang.go:883	0xe18054		48898424c0000000	MOVQ AX, 0xc0(SP)								
  daohang.go:883	0xe1805c		488d05f54a3800		LEAQ go:string.*+214608(SB), AX							
  daohang.go:883	0xe18063		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  daohang.go:883	0xe18068		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  daohang.go:883	0xe18070		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:883	0xe18075		4889fe			MOVQ DI, SI									
  daohang.go:883	0xe18078		e8434370ff		CALL fmt.Errorf(SB)								
  daohang.go:883	0xe1807d		4889d9			MOVQ BX, CX									
  daohang.go:883	0xe18080		4889c3			MOVQ AX, BX									
  daohang.go:883	0xe18083		31c0			XORL AX, AX									
  daohang.go:883	0xe18085		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:883	0xe1808c		5d			POPQ BP										
  daohang.go:883	0xe1808d		c3			RET										
  daohang.go:881	0xe1808e		488d0578973600		LEAQ go:string.*+103173(SB), AX							
  daohang.go:881	0xe18095		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  daohang.go:881	0xe1809a		31c9			XORL CX, CX									
  daohang.go:881	0xe1809c		31ff			XORL DI, DI									
  daohang.go:881	0xe1809e		4889fe			MOVQ DI, SI									
  daohang.go:881	0xe180a1		e81a4370ff		CALL fmt.Errorf(SB)								
  daohang.go:881	0xe180a6		4889d9			MOVQ BX, CX									
  daohang.go:881	0xe180a9		4889c3			MOVQ AX, BX									
  daohang.go:881	0xe180ac		31c0			XORL AX, AX									
  daohang.go:881	0xe180ae		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:881	0xe180b5		5d			POPQ BP										
  daohang.go:881	0xe180b6		c3			RET										
  daohang.go:887	0xe180b7		440f117c2430		MOVUPS X15, 0x30(SP)								
  daohang.go:888	0xe180bd		90			NOPL										
  reader.go:159		0xe180be		488d05fb022c00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe180c5		e8d6965fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe180ca		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe180d2		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe180da		833d6f5a740200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe180e1		750a			JNE 0xe180ed									
  reader.go:159		0xe180e3		488b9424f0000000	MOVQ 0xf0(SP), DX								
  reader.go:159		0xe180eb		eb10			JMP 0xe180fd									
  reader.go:159		0xe180ed		e82e0366ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe180f2		488b9424f0000000	MOVQ 0xf0(SP), DX								
  reader.go:159		0xe180fa		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe180fd		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe18100		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe18108		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  daohang.go:889	0xe18110		4889c3			MOVQ AX, BX									
  daohang.go:889	0xe18113		488d0d26ee0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:889	0xe1811a		488d3d7f517402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:889	0xe18121		488d35f8ea2000		LEAQ runtime.types+269344(SB), SI						
  daohang.go:889	0xe18128		4c8d442430		LEAQ 0x30(SP), R8								
  daohang.go:889	0xe1812d		488d05ac490502		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  daohang.go:889	0xe18134		e8079174ff		CALL encoding/binary.Read(SB)							
  daohang.go:890	0xe18139		4885c0			TESTQ AX, AX									
  daohang.go:890	0xe1813c		7558			JNE 0xe18196									
  daohang.go:896	0xe1813e		8b4c2434		MOVL 0x34(SP), CX								
  daohang.go:896	0xe18142		85c9			TESTL CX, CX									
  daohang.go:896	0xe18144		764a			JBE 0xe18190									
  daohang.go:897	0xe18146		488d0553a82200		LEAQ runtime.types+383392(SB), AX						
  daohang.go:897	0xe1814d		89cb			MOVL CX, BX									
  daohang.go:897	0xe1814f		e80c9a65ff		CALL runtime.makeslice(SB)							
  daohang.go:897	0xe18154		48898424f0000000	MOVQ AX, 0xf0(SP)								
  daohang.go:897	0xe1815c		448b442434		MOVL 0x34(SP), R8								
  daohang.go:897	0xe18161		4c89842488000000	MOVQ R8, 0x88(SP)								
  daohang.go:832	0xe18169		488b942418010000	MOVQ 0x118(SP), DX								
  daohang.go:832	0xe18171		4885d2			TESTQ DX, DX									
  daohang.go:898	0xe18174		0f84b3010000		JE 0xe1832d									
  daohang.go:898	0xe1817a		488b5a08		MOVQ 0x8(DX), BX								
  daohang.go:898	0xe1817e		4c8b0d2b361a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.15(SB), R9				
  daohang.go:898	0xe18185		4d8b11			MOVQ 0(R9), R10									
  daohang.go:898	0xe18188		8b5210			MOVL 0x10(DX), DX								
  daohang.go:898	0xe1818b		e946020000		JMP 0xe183d6									
  daohang.go:898	0xe18190		31c0			XORL AX, AX									
  daohang.go:898	0xe18192		31c9			XORL CX, CX									
  daohang.go:896	0xe18194		eb52			JMP 0xe181e8									
  daohang.go:891	0xe18196		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  daohang.go:891	0xe1819f		90			NOPL										
  daohang.go:891	0xe181a0		7404			JE 0xe181a6									
  daohang.go:891	0xe181a2		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:891	0xe181a6		48898424c8000000	MOVQ AX, 0xc8(SP)								
  daohang.go:891	0xe181ae		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  daohang.go:891	0xe181b6		488d05ff113700		LEAQ go:string.*+134836(SB), AX							
  daohang.go:891	0xe181bd		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:891	0xe181c2		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  daohang.go:891	0xe181ca		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:891	0xe181cf		4889fe			MOVQ DI, SI									
  daohang.go:891	0xe181d2		e8e94170ff		CALL fmt.Errorf(SB)								
  daohang.go:891	0xe181d7		4889d9			MOVQ BX, CX									
  daohang.go:891	0xe181da		4889c3			MOVQ AX, BX									
  daohang.go:891	0xe181dd		31c0			XORL AX, AX									
  daohang.go:891	0xe181df		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:891	0xe181e6		5d			POPQ BP										
  daohang.go:891	0xe181e7		c3			RET										
  daohang.go:906	0xe181e8		4889442460		MOVQ AX, 0x60(SP)								
  daohang.go:906	0xe181ed		48898c2490000000	MOVQ CX, 0x90(SP)								
  daohang.go:904	0xe181f5		488d05c4dd2b00		LEAQ runtime.types+987072(SB), AX						
  daohang.go:904	0xe181fc		0f1f4000		NOPL 0(AX)									
  daohang.go:904	0xe18200		e89b955fff		CALL runtime.newobject(SB)							
  daohang.go:905	0xe18205		837c243400		CMPL 0x34(SP), $0x0								
  daohang.go:905	0xe1820a		0f86f4000000		JBE 0xe18304									
  daohang.go:904	0xe18210		48898424f8000000	MOVQ AX, 0xf8(SP)								
  daohang.go:906	0xe18218		488b5c2460		MOVQ 0x60(SP), BX								
  daohang.go:906	0xe1821d		4889d9			MOVQ BX, CX									
  daohang.go:906	0xe18220		488d3d79ed2000		LEAQ runtime.types+270240(SB), DI						
  daohang.go:906	0xe18227		4889c6			MOVQ AX, SI									
  daohang.go:906	0xe1822a		488b842490000000	MOVQ 0x90(SP), AX								
  daohang.go:906	0xe18232		e8a9f274ff		CALL encoding/json.Unmarshal(SB)						
  daohang.go:907	0xe18237		4885c0			TESTQ AX, AX									
  daohang.go:907	0xe1823a		7451			JE 0xe1828d									
  daohang.go:908	0xe1823c		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  daohang.go:908	0xe18245		7404			JE 0xe1824b									
  daohang.go:908	0xe18247		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:908	0xe1824b		48898424c8000000	MOVQ AX, 0xc8(SP)								
  daohang.go:908	0xe18253		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  daohang.go:908	0xe1825b		488d0546ed3600		LEAQ go:string.*+125600(SB), AX							
  daohang.go:908	0xe18262		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  daohang.go:908	0xe18267		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  daohang.go:908	0xe1826f		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:908	0xe18274		4889fe			MOVQ DI, SI									
  daohang.go:908	0xe18277		e8444170ff		CALL fmt.Errorf(SB)								
  daohang.go:908	0xe1827c		4889d9			MOVQ BX, CX									
  daohang.go:908	0xe1827f		4889c3			MOVQ AX, BX									
  daohang.go:908	0xe18282		31c0			XORL AX, AX									
  daohang.go:908	0xe18284		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:908	0xe1828b		5d			POPQ BP										
  daohang.go:908	0xe1828c		c3			RET										
  daohang.go:915	0xe1828d		488b8424f8000000	MOVQ 0xf8(SP), AX								
  daohang.go:915	0xe18295		4883781000		CMPQ 0x10(AX), $0x0								
  daohang.go:915	0xe1829a		745b			JE 0xe182f7									
  daohang.go:916	0xe1829c		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  daohang.go:916	0xe182a5		488b4010		MOVQ 0x10(AX), AX								
  daohang.go:916	0xe182a9		e8f21d65ff		CALL runtime.convT64(SB)							
  daohang.go:916	0xe182ae		488d0daba82200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:916	0xe182b5		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  daohang.go:916	0xe182bd		48898424d0000000	MOVQ AX, 0xd0(SP)								
  daohang.go:916	0xe182c5		488d0558aa3700		LEAQ go:string.*+174108(SB), AX							
  daohang.go:916	0xe182cc		bb25000000		MOVL $__major_os_version__+31(SB), BX						
  daohang.go:916	0xe182d1		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  daohang.go:916	0xe182d9		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:916	0xe182de		4889fe			MOVQ DI, SI									
  daohang.go:916	0xe182e1		e8da4070ff		CALL fmt.Errorf(SB)								
  daohang.go:916	0xe182e6		4889d9			MOVQ BX, CX									
  daohang.go:916	0xe182e9		4889c3			MOVQ AX, BX									
  daohang.go:916	0xe182ec		31c0			XORL AX, AX									
  daohang.go:916	0xe182ee		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:916	0xe182f5		5d			POPQ BP										
  daohang.go:916	0xe182f6		c3			RET										
  daohang.go:919	0xe182f7		31db			XORL BX, BX									
  daohang.go:919	0xe182f9		31c9			XORL CX, CX									
  daohang.go:919	0xe182fb		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:919	0xe18302		5d			POPQ BP										
  daohang.go:919	0xe18303		c3			RET										
  daohang.go:911	0xe18304		488d05955c3600		LEAQ go:string.*+88728(SB), AX							
  daohang.go:911	0xe1830b		bb12000000		MOVL $__major_os_version__+12(SB), BX						
  daohang.go:911	0xe18310		31c9			XORL CX, CX									
  daohang.go:911	0xe18312		31ff			XORL DI, DI									
  daohang.go:911	0xe18314		4889fe			MOVQ DI, SI									
  daohang.go:911	0xe18317		e8a44070ff		CALL fmt.Errorf(SB)								
  daohang.go:911	0xe1831c		4889d9			MOVQ BX, CX									
  daohang.go:911	0xe1831f		4889c3			MOVQ AX, BX									
  daohang.go:911	0xe18322		31c0			XORL AX, AX									
  daohang.go:911	0xe18324		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:911	0xe1832b		5d			POPQ BP										
  daohang.go:911	0xe1832c		c3			RET										
  io.go:354		0xe1832d		488b9c2420010000	MOVQ 0x120(SP), BX								
  io.go:354		0xe18335		4889c1			MOVQ AX, CX									
  io.go:354		0xe18338		4c89c7			MOVQ R8, DI									
  io.go:354		0xe1833b		4889fe			MOVQ DI, SI									
  io.go:354		0xe1833e		4889d0			MOVQ DX, AX									
  io.go:354		0xe18341		e8baa869ff		CALL io.ReadAtLeast(SB)								
  daohang.go:899	0xe18346		4885db			TESTQ BX, BX									
  daohang.go:899	0xe18349		7476			JE 0xe183c1									
  daohang.go:900	0xe1834b		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)								
  daohang.go:900	0xe18354		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  daohang.go:900	0xe1835d		7404			JE 0xe18363									
  daohang.go:900	0xe1835f		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:900	0xe18363		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  daohang.go:900	0xe1836b		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  daohang.go:900	0xe18373		e8281d65ff		CALL runtime.convT64(SB)							
  daohang.go:900	0xe18378		488d0de1a72200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:900	0xe1837f		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  daohang.go:900	0xe18387		48898424c0000000	MOVQ AX, 0xc0(SP)								
  daohang.go:900	0xe1838f		488d05f3473800		LEAQ go:string.*+214657(SB), AX							
  daohang.go:900	0xe18396		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  daohang.go:900	0xe1839b		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  daohang.go:900	0xe183a3		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:900	0xe183a8		4889fe			MOVQ DI, SI									
  daohang.go:900	0xe183ab		e8104070ff		CALL fmt.Errorf(SB)								
  daohang.go:900	0xe183b0		4889d9			MOVQ BX, CX									
  daohang.go:900	0xe183b3		4889c3			MOVQ AX, BX									
  daohang.go:900	0xe183b6		31c0			XORL AX, AX									
  daohang.go:900	0xe183b8		4881c408010000		ADDQ $.file+187(SB), SP								
  daohang.go:900	0xe183bf		5d			POPQ BP										
  daohang.go:900	0xe183c0		c3			RET										
  daohang.go:906	0xe183c1		488b842488000000	MOVQ 0x88(SP), AX								
  daohang.go:906	0xe183c9		488b8c24f0000000	MOVQ 0xf0(SP), CX								
  daohang.go:904	0xe183d1		e912feffff		JMP 0xe181e8									
  daohang.go:898	0xe183d6		4989d3			MOVQ DX, R11									
  daohang.go:898	0xe183d9		4c21d2			ANDQ R10, DX									
  daohang.go:898	0xe183dc		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  daohang.go:898	0xe183e0		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  daohang.go:898	0xe183e5		4939dc			CMPQ R12, BX									
  daohang.go:898	0xe183e8		742d			JE 0xe18417									
  daohang.go:898	0xe183ea		498d5301		LEAQ 0x1(R11), DX								
  daohang.go:898	0xe183ee		4d85e4			TESTQ R12, R12									
  daohang.go:898	0xe183f1		75e3			JNE 0xe183d6									
  daohang.go:898	0xe183f3		488d05b6331a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.15(SB), AX				
  daohang.go:898	0xe183fa		e8e16e5fff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe183ff		4c8b842488000000	MOVQ 0x88(SP), R8								
  daohang.go:898	0xe18407		4889c2			MOVQ AX, DX									
  io.go:354		0xe1840a		488b8424f0000000	MOVQ 0xf0(SP), AX								
  daohang.go:898	0xe18412		e916ffffff		JMP 0xe1832d									
  daohang.go:898	0xe18417		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  daohang.go:898	0xe1841c		0f1f4000		NOPL 0(AX)									
  daohang.go:898	0xe18420		e908ffffff		JMP 0xe1832d									
  daohang.go:877	0xe18425		4d89d3			MOVQ R10, R11									
  daohang.go:877	0xe18428		4d21ca			ANDQ R9, R10									
  daohang.go:877	0xe1842b		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  daohang.go:877	0xe1842f		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  daohang.go:877	0xe18434		4939dc			CMPQ R12, BX									
  daohang.go:877	0xe18437		742c			JE 0xe18465									
  daohang.go:877	0xe18439		4d8d5301		LEAQ 0x1(R11), R10								
  daohang.go:877	0xe1843d		0f1f00			NOPL 0(AX)									
  daohang.go:877	0xe18440		4d85e4			TESTQ R12, R12									
  daohang.go:877	0xe18443		75e0			JNE 0xe18425									
  daohang.go:877	0xe18445		488d0544331a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.14(SB), AX				
  daohang.go:877	0xe1844c		e88f6e5fff		CALL runtime.typeAssert(SB)							
  daohang.go:877	0xe18451		4889c1			MOVQ AX, CX									
  io.go:354		0xe18454		488b8424f0000000	MOVQ 0xf0(SP), AX								
  io.go:354		0xe1845c		0f1f4000		NOPL 0(AX)									
  daohang.go:877	0xe18460		e925fbffff		JMP 0xe17f8a									
  daohang.go:877	0xe18465		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  daohang.go:877	0xe1846a		4889d1			MOVQ DX, CX									
  daohang.go:877	0xe1846d		e918fbffff		JMP 0xe17f8a									
  buffer.go:54		0xe18472		e8290466ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe18477		90			NOPL										
  daohang.go:830	0xe18478		4889442408		MOVQ AX, 0x8(SP)								
  daohang.go:830	0xe1847d		48895c2410		MOVQ BX, 0x10(SP)								
  daohang.go:830	0xe18482		48894c2418		MOVQ CX, 0x18(SP)								
  daohang.go:830	0xe18487		48897c2420		MOVQ DI, 0x20(SP)								
  daohang.go:830	0xe1848c		4088742428		MOVB SI, 0x28(SP)								
  daohang.go:830	0xe18491		e84ae065ff		CALL runtime.morestack_noctxt.abi0(SB)						
  daohang.go:830	0xe18496		488b442408		MOVQ 0x8(SP), AX								
  daohang.go:830	0xe1849b		488b5c2410		MOVQ 0x10(SP), BX								
  daohang.go:830	0xe184a0		488b4c2418		MOVQ 0x18(SP), CX								
  daohang.go:830	0xe184a5		488b7c2420		MOVQ 0x20(SP), DI								
  daohang.go:830	0xe184aa		0fb6742428		MOVZX 0x28(SP), SI								
  daohang.go:830	0xe184af		e9ccf7ffff		JMP CAS-Backend/pkg/agvcontrol.SendRobotTaskListStatusReq(SB)			
  :-1			0xe184b4		cc			INT $__subsystem__(SB)								
  :-1			0xe184b5		cc			INT $__subsystem__(SB)								
  :-1			0xe184b6		cc			INT $__subsystem__(SB)								
  :-1			0xe184b7		cc			INT $__subsystem__(SB)								
  :-1			0xe184b8		cc			INT $__subsystem__(SB)								
  :-1			0xe184b9		cc			INT $__subsystem__(SB)								
  :-1			0xe184ba		cc			INT $__subsystem__(SB)								
  :-1			0xe184bb		cc			INT $__subsystem__(SB)								
  :-1			0xe184bc		cc			INT $__subsystem__(SB)								
  :-1			0xe184bd		cc			INT $__subsystem__(SB)								
  :-1			0xe184be		cc			INT $__subsystem__(SB)								
  :-1			0xe184bf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SendRobotTaskStatusReq(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:955	0xe184c0		4c8da42460ffffff	LEAQ 0xffffff60(SP), R12							
  daohang.go:955	0xe184c8		4d3b6610		CMPQ R12, 0x10(R14)								
  daohang.go:955	0xe184cc		0f8639080000		JBE 0xe18d0b									
  daohang.go:955	0xe184d2		55			PUSHQ BP									
  daohang.go:955	0xe184d3		4889e5			MOVQ SP, BP									
  daohang.go:955	0xe184d6		4881ec18010000		SUBQ $.file+203(SB), SP								
  daohang.go:955	0xe184dd		4889842428010000	MOVQ AX, 0x128(SP)								
  daohang.go:955	0xe184e5		48899c2430010000	MOVQ BX, 0x130(SP)								
  daohang.go:955	0xe184ed		48898c2438010000	MOVQ CX, 0x138(SP)								
  daohang.go:957	0xe184f5		4885c0			TESTQ AX, AX									
  daohang.go:957	0xe184f8		0f84c3020000		JE 0xe187c1									
  daohang.go:957	0xe184fe		48899c2430010000	MOVQ BX, 0x130(SP)								
  daohang.go:957	0xe18506		4889842428010000	MOVQ AX, 0x128(SP)								
  daohang.go:965	0xe1850e		4885ff			TESTQ DI, DI									
  daohang.go:970	0xe18511		bb00000000		MOVL $0x0, BX									
  daohang.go:970	0xe18516		480f45df		CMOVNE DI, BX									
  daohang.go:970	0xe1851a		ba00000000		MOVL $0x0, DX									
  daohang.go:970	0xe1851f		480f45d6		CMOVNE SI, DX									
  daohang.go:970	0xe18523		be00000000		MOVL $0x0, SI									
  daohang.go:970	0xe18528		480f45f1		CMOVNE CX, SI									
  daohang.go:970	0xe1852c		4889b424b8000000	MOVQ SI, 0xb8(SP)								
  daohang.go:970	0xe18534		48899c24c0000000	MOVQ BX, 0xc0(SP)								
  daohang.go:970	0xe1853c		48899424c8000000	MOVQ DX, 0xc8(SP)								
  daohang.go:970	0xe18544		488b8424b8000000	MOVQ 0xb8(SP), AX								
  daohang.go:970	0xe1854c		4889d1			MOVQ DX, CX									
  daohang.go:970	0xe1854f		e86c1c65ff		CALL runtime.convTslice(SB)							
  daohang.go:970	0xe18554		4889c3			MOVQ AX, BX									
  daohang.go:970	0xe18557		488d0522c52800		LEAQ runtime.types+785024(SB), AX						
  daohang.go:970	0xe1855e		6690			NOPW										
  daohang.go:970	0xe18560		e83b4f75ff		CALL encoding/json.Marshal(SB)							
  daohang.go:971	0xe18565		4885ff			TESTQ DI, DI									
  daohang.go:965	0xe18568		7451			JE 0xe185bb									
  daohang.go:972	0xe1856a		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  daohang.go:972	0xe18573		7404			JE 0xe18579									
  daohang.go:972	0xe18575		488b7f08		MOVQ 0x8(DI), DI								
  daohang.go:972	0xe18579		4889bc24f0000000	MOVQ DI, 0xf0(SP)								
  daohang.go:972	0xe18581		4889b424f8000000	MOVQ SI, 0xf8(SP)								
  daohang.go:972	0xe18589		488d050bb63600		LEAQ go:string.*+112275(SB), AX							
  daohang.go:972	0xe18590		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  daohang.go:972	0xe18595		488d8c24f0000000	LEAQ 0xf0(SP), CX								
  daohang.go:972	0xe1859d		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:972	0xe185a2		4889fe			MOVQ DI, SI									
  daohang.go:972	0xe185a5		e8163e70ff		CALL fmt.Errorf(SB)								
  daohang.go:972	0xe185aa		4889d9			MOVQ BX, CX									
  daohang.go:972	0xe185ad		4889c3			MOVQ AX, BX									
  daohang.go:972	0xe185b0		31c0			XORL AX, AX									
  daohang.go:972	0xe185b2		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:972	0xe185b9		5d			POPQ BP										
  daohang.go:972	0xe185ba		c3			RET										
  daohang.go:970	0xe185bb		48894c2478		MOVQ CX, 0x78(SP)								
  daohang.go:970	0xe185c0		48895c2470		MOVQ BX, 0x70(SP)								
  daohang.go:970	0xe185c5		48898424a0000000	MOVQ AX, 0xa0(SP)								
  daohang.go:982	0xe185cd		48c74424405a010100	MOVQ $__dll_characteristics__+32762(SB), 0x40(SP)				
  daohang.go:982	0xe185d6		48c744244856040000	MOVQ $__file_alignment__+598(SB), 0x48(SP)					
  daohang.go:980	0xe185df		895c2444		MOVL BX, 0x44(SP)								
  daohang.go:986	0xe185e3		488d0516fd2b00		LEAQ runtime.types+996096(SB), AX						
  daohang.go:986	0xe185ea		e8b1915fff		CALL runtime.newobject(SB)							
  daohang.go:986	0xe185ef		4889842410010000	MOVQ AX, 0x110(SP)								
  daohang.go:987	0xe185f7		0f10442440		MOVUPS 0x40(SP), X0								
  daohang.go:987	0xe185fc		0f11442450		MOVUPS X0, 0x50(SP)								
  daohang.go:987	0xe18601		4889c3			MOVQ AX, BX									
  daohang.go:987	0xe18604		488d0d35e90502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:987	0xe1860b		488d3d8e4c7402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:987	0xe18612		488d35a7622f00		LEAQ runtime.types+1218752(SB), SI						
  daohang.go:987	0xe18619		4c8d442450		LEAQ 0x50(SP), R8								
  daohang.go:987	0xe1861e		488d053b4a0502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  daohang.go:987	0xe18625		e8f69a74ff		CALL encoding/binary.Write(SB)							
  daohang.go:988	0xe1862a		4885c0			TESTQ AX, AX									
  daohang.go:988	0xe1862d		7452			JE 0xe18681									
  daohang.go:989	0xe1862f		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  daohang.go:989	0xe18638		7404			JE 0xe1863e									
  daohang.go:989	0xe1863a		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:989	0xe1863e		48898424f0000000	MOVQ AX, 0xf0(SP)								
  daohang.go:989	0xe18646		48899c24f8000000	MOVQ BX, 0xf8(SP)								
  daohang.go:989	0xe1864e		488d054b0d3700		LEAQ go:string.*+134808(SB), AX							
  daohang.go:989	0xe18655		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:989	0xe1865a		488d8c24f0000000	LEAQ 0xf0(SP), CX								
  daohang.go:989	0xe18662		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:989	0xe18667		4889fe			MOVQ DI, SI									
  daohang.go:989	0xe1866a		e8513d70ff		CALL fmt.Errorf(SB)								
  daohang.go:989	0xe1866f		4889d9			MOVQ BX, CX									
  daohang.go:989	0xe18672		4889c3			MOVQ AX, BX									
  daohang.go:989	0xe18675		31c0			XORL AX, AX									
  daohang.go:989	0xe18677		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:989	0xe1867e		5d			POPQ BP										
  daohang.go:989	0xe1867f		90			NOPL										
  daohang.go:989	0xe18680		c3			RET										
  daohang.go:991	0xe18681		488b842410010000	MOVQ 0x110(SP), AX								
  daohang.go:991	0xe18689		488b9c24a0000000	MOVQ 0xa0(SP), BX								
  daohang.go:991	0xe18691		488b4c2470		MOVQ 0x70(SP), CX								
  daohang.go:991	0xe18696		488b7c2478		MOVQ 0x78(SP), DI								
  daohang.go:991	0xe1869b		0f1f440000		NOPL 0(AX)(AX*1)								
  daohang.go:991	0xe186a0		e87b3e71ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe186a5		488b942410010000	MOVQ 0x110(SP), DX								
  buffer.go:54		0xe186ad		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe186b1		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe186b5		4839c8			CMPQ AX, CX									
  buffer.go:54		0xe186b8		0f8747060000		JA 0xe18d05									
  daohang.go:994	0xe186be		488bb42428010000	MOVQ 0x128(SP), SI								
  daohang.go:994	0xe186c6		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe186ca		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe186cd		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe186d1		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe186d4		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe186d7		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe186da		48f7da			NEGQ DX										
  buffer.go:54		0xe186dd		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe186e1		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe186e4		498d1c01		LEAQ 0(R9)(AX*1), BX								
  daohang.go:994	0xe186e8		488b842430010000	MOVQ 0x130(SP), AX								
  daohang.go:994	0xe186f0		41ffd0			CALL R8										
  daohang.go:995	0xe186f3		4885db			TESTQ BX, BX									
  daohang.go:995	0xe186f6		7577			JNE 0xe1876f									
  daohang.go:1000	0xe186f8		e8a35969ff		CALL time.Now(SB)								
  daohang.go:1000	0xe186fd		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  daohang.go:1000	0xe18707		e854be68ff		CALL time.Time.Add(SB)								
  daohang.go:1000	0xe1870c		488b942428010000	MOVQ 0x128(SP), DX								
  daohang.go:1000	0xe18714		488b7240		MOVQ 0x40(DX), SI								
  daohang.go:1000	0xe18718		4889cf			MOVQ CX, DI									
  daohang.go:1000	0xe1871b		4889d9			MOVQ BX, CX									
  daohang.go:1000	0xe1871e		4889c3			MOVQ AX, BX									
  daohang.go:1000	0xe18721		488b842430010000	MOVQ 0x130(SP), AX								
  daohang.go:1000	0xe18729		ffd6			CALL SI										
  daohang.go:1003	0xe1872b		488d056ea22200		LEAQ runtime.types+383392(SB), AX						
  daohang.go:1003	0xe18732		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  daohang.go:1003	0xe18737		4889d9			MOVQ BX, CX									
  daohang.go:1003	0xe1873a		e8219465ff		CALL runtime.makeslice(SB)							
  daohang.go:1003	0xe1873f		4889842400010000	MOVQ AX, 0x100(SP)								
  daohang.go:957	0xe18747		488b8c2428010000	MOVQ 0x128(SP), CX								
  daohang.go:957	0xe1874f		4885c9			TESTQ CX, CX									
  daohang.go:1004	0xe18752		0f8492000000		JE 0xe187ea									
  daohang.go:1004	0xe18758		488b5908		MOVQ 0x8(CX), BX								
  daohang.go:1004	0xe1875c		488b156d301a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.16(SB), DX				
  daohang.go:1004	0xe18763		4c8b0a			MOVQ 0(DX), R9									
  daohang.go:1004	0xe18766		448b5110		MOVL 0x10(CX), R10								
  daohang.go:1004	0xe1876a		e94d050000		JMP 0xe18cbc									
  daohang.go:996	0xe1876f		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  daohang.go:996	0xe18778		7404			JE 0xe1877e									
  daohang.go:996	0xe1877a		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:996	0xe1877e		48899c24f0000000	MOVQ BX, 0xf0(SP)								
  daohang.go:996	0xe18786		48898c24f8000000	MOVQ CX, 0xf8(SP)								
  daohang.go:996	0xe1878e		488d052fa03600		LEAQ go:string.*+107196(SB), AX							
  daohang.go:996	0xe18795		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  daohang.go:996	0xe1879a		488d8c24f0000000	LEAQ 0xf0(SP), CX								
  daohang.go:996	0xe187a2		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:996	0xe187a7		4889fe			MOVQ DI, SI									
  daohang.go:996	0xe187aa		e8113c70ff		CALL fmt.Errorf(SB)								
  daohang.go:996	0xe187af		4889d9			MOVQ BX, CX									
  daohang.go:996	0xe187b2		4889c3			MOVQ AX, BX									
  daohang.go:996	0xe187b5		31c0			XORL AX, AX									
  daohang.go:996	0xe187b7		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:996	0xe187be		5d			POPQ BP										
  daohang.go:996	0xe187bf		90			NOPL										
  daohang.go:996	0xe187c0		c3			RET										
  daohang.go:958	0xe187c1		488d0582583800		LEAQ go:string.*+219970(SB), AX							
  daohang.go:958	0xe187c8		bb33000000		MOVL $__major_os_version__+45(SB), BX						
  daohang.go:958	0xe187cd		31c9			XORL CX, CX									
  daohang.go:958	0xe187cf		31ff			XORL DI, DI									
  daohang.go:958	0xe187d1		4889fe			MOVQ DI, SI									
  daohang.go:958	0xe187d4		e8e73b70ff		CALL fmt.Errorf(SB)								
  daohang.go:958	0xe187d9		4889d9			MOVQ BX, CX									
  daohang.go:958	0xe187dc		4889c3			MOVQ AX, BX									
  daohang.go:958	0xe187df		31c0			XORL AX, AX									
  daohang.go:958	0xe187e1		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:958	0xe187e8		5d			POPQ BP										
  daohang.go:958	0xe187e9		c3			RET										
  io.go:354		0xe187ea		488b9c2430010000	MOVQ 0x130(SP), BX								
  io.go:354		0xe187f2		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe187f7		4889fe			MOVQ DI, SI									
  io.go:354		0xe187fa		4989f0			MOVQ SI, R8									
  daohang.go:1003	0xe187fd		4889c2			MOVQ AX, DX									
  io.go:354		0xe18800		4889c8			MOVQ CX, AX									
  io.go:354		0xe18803		4889d1			MOVQ DX, CX									
  io.go:354		0xe18806		e8f5a369ff		CALL io.ReadAtLeast(SB)								
  daohang.go:1005	0xe1880b		4885db			TESTQ BX, BX									
  daohang.go:1005	0xe1880e		0f8403010000		JE 0xe18917									
  daohang.go:1007	0xe18814		48391da5e51900		CMPQ io.EOF(SB), BX								
  daohang.go:1007	0xe1881b		7405			JE 0xe18822									
  daohang.go:1005	0xe1881d		4885db			TESTQ BX, BX									
  daohang.go:1007	0xe18820		eb52			JMP 0xe18874									
  io.go:354		0xe18822		4889442468		MOVQ AX, 0x68(SP)								
  io.go:354		0xe18827		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  io.go:354		0xe1882f		48899c2488000000	MOVQ BX, 0x88(SP)								
  daohang.go:1007	0xe18837		488b158ae51900		MOVQ io.EOF+8(SB), DX								
  daohang.go:1007	0xe1883e		4889d8			MOVQ BX, AX									
  daohang.go:1007	0xe18841		4889cb			MOVQ CX, BX									
  daohang.go:1007	0xe18844		4889d1			MOVQ DX, CX									
  daohang.go:1007	0xe18847		e894fc5eff		CALL runtime.ifaceeq(SB)							
  daohang.go:1007	0xe1884c		84c0			TESTL AL, AL									
  daohang.go:1007	0xe1884e		0f859a000000		JNE 0xe188ee									
  daohang.go:1005	0xe18854		488b8c2488000000	MOVQ 0x88(SP), CX								
  daohang.go:1005	0xe1885c		4885c9			TESTQ CX, CX									
  daohang.go:1010	0xe1885f		488b442468		MOVQ 0x68(SP), AX								
  daohang.go:1010	0xe18864		488b8c24b0000000	MOVQ 0xb0(SP), CX								
  daohang.go:1010	0xe1886c		488b9c2488000000	MOVQ 0x88(SP), BX								
  daohang.go:1010	0xe18874		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  daohang.go:1010	0xe1887d		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)								
  daohang.go:1010	0xe18886		7404			JE 0xe1888c									
  daohang.go:1010	0xe18888		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:1010	0xe1888c		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  daohang.go:1010	0xe18894		48898c24d8000000	MOVQ CX, 0xd8(SP)								
  daohang.go:1010	0xe1889c		0f1f4000		NOPL 0(AX)									
  daohang.go:1010	0xe188a0		e8fb1765ff		CALL runtime.convT64(SB)							
  daohang.go:1010	0xe188a5		488d0db4a22200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:1010	0xe188ac		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  daohang.go:1010	0xe188b4		48898424e8000000	MOVQ AX, 0xe8(SP)								
  daohang.go:1010	0xe188bc		488d0595423800		LEAQ go:string.*+214608(SB), AX							
  daohang.go:1010	0xe188c3		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  daohang.go:1010	0xe188c8		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  daohang.go:1010	0xe188d0		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:1010	0xe188d5		4889fe			MOVQ DI, SI									
  daohang.go:1010	0xe188d8		e8e33a70ff		CALL fmt.Errorf(SB)								
  daohang.go:1010	0xe188dd		4889d9			MOVQ BX, CX									
  daohang.go:1010	0xe188e0		4889c3			MOVQ AX, BX									
  daohang.go:1010	0xe188e3		31c0			XORL AX, AX									
  daohang.go:1010	0xe188e5		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:1010	0xe188ec		5d			POPQ BP										
  daohang.go:1010	0xe188ed		c3			RET										
  daohang.go:1008	0xe188ee		488d05188f3600		LEAQ go:string.*+103173(SB), AX							
  daohang.go:1008	0xe188f5		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  daohang.go:1008	0xe188fa		31c9			XORL CX, CX									
  daohang.go:1008	0xe188fc		31ff			XORL DI, DI									
  daohang.go:1008	0xe188fe		4889fe			MOVQ DI, SI									
  daohang.go:1008	0xe18901		e8ba3a70ff		CALL fmt.Errorf(SB)								
  daohang.go:1008	0xe18906		4889d9			MOVQ BX, CX									
  daohang.go:1008	0xe18909		4889c3			MOVQ AX, BX									
  daohang.go:1008	0xe1890c		31c0			XORL AX, AX									
  daohang.go:1008	0xe1890e		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:1008	0xe18915		5d			POPQ BP										
  daohang.go:1008	0xe18916		c3			RET										
  daohang.go:1014	0xe18917		440f117c2430		MOVUPS X15, 0x30(SP)								
  daohang.go:1015	0xe1891d		90			NOPL										
  reader.go:159		0xe1891e		488d059bfa2b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe18925		e8768e5fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe1892a		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe18932		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe1893a		833d0f52740200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe18941		750a			JNE 0xe1894d									
  reader.go:159		0xe18943		488b942400010000	MOVQ 0x100(SP), DX								
  reader.go:159		0xe1894b		eb10			JMP 0xe1895d									
  reader.go:159		0xe1894d		e8cefa65ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe18952		488b942400010000	MOVQ 0x100(SP), DX								
  reader.go:159		0xe1895a		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe1895d		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe18960		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe18968		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  daohang.go:1016	0xe18970		4889c3			MOVQ AX, BX									
  daohang.go:1016	0xe18973		488d0dc6e50502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  daohang.go:1016	0xe1897a		488d3d1f497402		LEAQ unicode..stmp_365(SB), DI							
  daohang.go:1016	0xe18981		488d3598e22000		LEAQ runtime.types+269344(SB), SI						
  daohang.go:1016	0xe18988		4c8d442430		LEAQ 0x30(SP), R8								
  daohang.go:1016	0xe1898d		488d054c410502		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  daohang.go:1016	0xe18994		e8a78874ff		CALL encoding/binary.Read(SB)							
  daohang.go:1017	0xe18999		4885c0			TESTQ AX, AX									
  daohang.go:1017	0xe1899c		7558			JNE 0xe189f6									
  daohang.go:1023	0xe1899e		8b4c2434		MOVL 0x34(SP), CX								
  daohang.go:1023	0xe189a2		85c9			TESTL CX, CX									
  daohang.go:1023	0xe189a4		764a			JBE 0xe189f0									
  daohang.go:1024	0xe189a6		488d05f39f2200		LEAQ runtime.types+383392(SB), AX						
  daohang.go:1024	0xe189ad		89cb			MOVL CX, BX									
  daohang.go:1024	0xe189af		e8ac9165ff		CALL runtime.makeslice(SB)							
  daohang.go:1024	0xe189b4		4889842400010000	MOVQ AX, 0x100(SP)								
  daohang.go:1024	0xe189bc		448b442434		MOVL 0x34(SP), R8								
  daohang.go:1024	0xe189c1		4c89842490000000	MOVQ R8, 0x90(SP)								
  daohang.go:957	0xe189c9		488b942428010000	MOVQ 0x128(SP), DX								
  daohang.go:957	0xe189d1		4885d2			TESTQ DX, DX									
  daohang.go:1025	0xe189d4		0f84e9010000		JE 0xe18bc3									
  daohang.go:1025	0xe189da		488b5a08		MOVQ 0x8(DX), BX								
  daohang.go:1025	0xe189de		4c8b0d0b2e1a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.17(SB), R9				
  daohang.go:1025	0xe189e5		4d8b11			MOVQ 0(R9), R10									
  daohang.go:1025	0xe189e8		8b5210			MOVL 0x10(DX), DX								
  daohang.go:1025	0xe189eb		e980020000		JMP 0xe18c70									
  daohang.go:1025	0xe189f0		31c0			XORL AX, AX									
  daohang.go:1025	0xe189f2		31c9			XORL CX, CX									
  daohang.go:1023	0xe189f4		eb52			JMP 0xe18a48									
  daohang.go:1018	0xe189f6		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  daohang.go:1018	0xe189ff		90			NOPL										
  daohang.go:1018	0xe18a00		7404			JE 0xe18a06									
  daohang.go:1018	0xe18a02		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:1018	0xe18a06		48898424f0000000	MOVQ AX, 0xf0(SP)								
  daohang.go:1018	0xe18a0e		48899c24f8000000	MOVQ BX, 0xf8(SP)								
  daohang.go:1018	0xe18a16		488d059f093700		LEAQ go:string.*+134836(SB), AX							
  daohang.go:1018	0xe18a1d		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  daohang.go:1018	0xe18a22		488d8c24f0000000	LEAQ 0xf0(SP), CX								
  daohang.go:1018	0xe18a2a		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:1018	0xe18a2f		4889fe			MOVQ DI, SI									
  daohang.go:1018	0xe18a32		e8893970ff		CALL fmt.Errorf(SB)								
  daohang.go:1018	0xe18a37		4889d9			MOVQ BX, CX									
  daohang.go:1018	0xe18a3a		4889c3			MOVQ AX, BX									
  daohang.go:1018	0xe18a3d		31c0			XORL AX, AX									
  daohang.go:1018	0xe18a3f		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:1018	0xe18a46		5d			POPQ BP										
  daohang.go:1018	0xe18a47		c3			RET										
  daohang.go:1034	0xe18a48		48898c2498000000	MOVQ CX, 0x98(SP)								
  daohang.go:1034	0xe18a50		4889442460		MOVQ AX, 0x60(SP)								
  daohang.go:1032	0xe18a55		488d05c4c32e00		LEAQ runtime.types+1179168(SB), AX						
  daohang.go:1032	0xe18a5c		0f1f4000		NOPL 0(AX)									
  daohang.go:1032	0xe18a60		e83b8d5fff		CALL runtime.newobject(SB)							
  daohang.go:1033	0xe18a65		837c243400		CMPL 0x34(SP), $0x0								
  daohang.go:1033	0xe18a6a		0f8646010000		JBE 0xe18bb6									
  daohang.go:1032	0xe18a70		4889842408010000	MOVQ AX, 0x108(SP)								
  daohang.go:1034	0xe18a78		488b5c2460		MOVQ 0x60(SP), BX								
  daohang.go:1034	0xe18a7d		4889d9			MOVQ BX, CX									
  daohang.go:1034	0xe18a80		488d3d59e52000		LEAQ runtime.types+270304(SB), DI						
  daohang.go:1034	0xe18a87		4889c6			MOVQ AX, SI									
  daohang.go:1034	0xe18a8a		488b842498000000	MOVQ 0x98(SP), AX								
  daohang.go:1034	0xe18a92		e849ea74ff		CALL encoding/json.Unmarshal(SB)						
  daohang.go:1035	0xe18a97		4885c0			TESTQ AX, AX									
  daohang.go:1035	0xe18a9a		7451			JE 0xe18aed									
  daohang.go:1036	0xe18a9c		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  daohang.go:1036	0xe18aa5		7404			JE 0xe18aab									
  daohang.go:1036	0xe18aa7		488b4008		MOVQ 0x8(AX), AX								
  daohang.go:1036	0xe18aab		48898424f0000000	MOVQ AX, 0xf0(SP)								
  daohang.go:1036	0xe18ab3		48899c24f8000000	MOVQ BX, 0xf8(SP)								
  daohang.go:1036	0xe18abb		488d05e6e43600		LEAQ go:string.*+125600(SB), AX							
  daohang.go:1036	0xe18ac2		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  daohang.go:1036	0xe18ac7		488d8c24f0000000	LEAQ 0xf0(SP), CX								
  daohang.go:1036	0xe18acf		bf01000000		MOVL $__minor_os_version__(SB), DI						
  daohang.go:1036	0xe18ad4		4889fe			MOVQ DI, SI									
  daohang.go:1036	0xe18ad7		e8e43870ff		CALL fmt.Errorf(SB)								
  daohang.go:1036	0xe18adc		4889d9			MOVQ BX, CX									
  daohang.go:1036	0xe18adf		4889c3			MOVQ AX, BX									
  daohang.go:1036	0xe18ae2		31c0			XORL AX, AX									
  daohang.go:1036	0xe18ae4		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:1036	0xe18aeb		5d			POPQ BP										
  daohang.go:1036	0xe18aec		c3			RET										
  daohang.go:1039	0xe18aed		488b842408010000	MOVQ 0x108(SP), AX								
  daohang.go:1039	0xe18af5		48833800		CMPQ 0(AX), $0x0								
  daohang.go:1039	0xe18af9		0f84b7000000		JE 0xe18bb6									
  daohang.go:1040	0xe18aff		488b4820		MOVQ 0x20(AX), CX								
  daohang.go:1040	0xe18b03		488b5018		MOVQ 0x18(AX), DX								
  daohang.go:1041	0xe18b07		4885c9			TESTQ CX, CX									
  daohang.go:1041	0xe18b0a		7508			JNE 0xe18b14									
  daohang.go:1042	0xe18b0c		488b5028		MOVQ 0x28(AX), DX								
  daohang.go:1042	0xe18b10		488b4830		MOVQ 0x30(AX), CX								
  daohang.go:1044	0xe18b14		48898c2480000000	MOVQ CX, 0x80(SP)								
  daohang.go:1044	0xe18b1c		48899424a8000000	MOVQ DX, 0xa8(SP)								
  daohang.go:1044	0xe18b24		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  daohang.go:1044	0xe18b2d		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)								
  daohang.go:1044	0xe18b36		488b00			MOVQ 0(AX), AX									
  daohang.go:1044	0xe18b39		e8621565ff		CALL runtime.convT64(SB)							
  daohang.go:1044	0xe18b3e		488d0d1ba02200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:1044	0xe18b45		48898c24d0000000	MOVQ CX, 0xd0(SP)								
  daohang.go:1044	0xe18b4d		48898424d8000000	MOVQ AX, 0xd8(SP)								
  daohang.go:1044	0xe18b55		488b8424a8000000	MOVQ 0xa8(SP), AX								
  daohang.go:1044	0xe18b5d		488b9c2480000000	MOVQ 0x80(SP), BX								
  daohang.go:1044	0xe18b65		e8b61565ff		CALL runtime.convTstring(SB)							
  daohang.go:1044	0xe18b6a		488d0daf9d2200		LEAQ runtime.types+383264(SB), CX						
  daohang.go:1044	0xe18b71		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  daohang.go:1044	0xe18b79		48898424e8000000	MOVQ AX, 0xe8(SP)								
  daohang.go:1044	0xe18b81		488d0587703800		LEAQ go:string.*+227079(SB), AX							
  daohang.go:1044	0xe18b88		bb36000000		MOVL $__major_os_version__+48(SB), BX						
  daohang.go:1044	0xe18b8d		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  daohang.go:1044	0xe18b95		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:1044	0xe18b9a		4889fe			MOVQ DI, SI									
  daohang.go:1044	0xe18b9d		0f1f00			NOPL 0(AX)									
  daohang.go:1044	0xe18ba0		e81b3870ff		CALL fmt.Errorf(SB)								
  daohang.go:1044	0xe18ba5		4889d9			MOVQ BX, CX									
  daohang.go:1044	0xe18ba8		4889c3			MOVQ AX, BX									
  daohang.go:1044	0xe18bab		31c0			XORL AX, AX									
  daohang.go:1044	0xe18bad		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:1044	0xe18bb4		5d			POPQ BP										
  daohang.go:1044	0xe18bb5		c3			RET										
  daohang.go:1048	0xe18bb6		31db			XORL BX, BX									
  daohang.go:1048	0xe18bb8		31c9			XORL CX, CX									
  daohang.go:1048	0xe18bba		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:1048	0xe18bc1		5d			POPQ BP										
  daohang.go:1048	0xe18bc2		c3			RET										
  io.go:354		0xe18bc3		488b9c2430010000	MOVQ 0x130(SP), BX								
  io.go:354		0xe18bcb		4889c1			MOVQ AX, CX									
  io.go:354		0xe18bce		4c89c7			MOVQ R8, DI									
  io.go:354		0xe18bd1		4889fe			MOVQ DI, SI									
  io.go:354		0xe18bd4		4889d0			MOVQ DX, AX									
  io.go:354		0xe18bd7		e824a069ff		CALL io.ReadAtLeast(SB)								
  io.go:354		0xe18bdc		0f1f4000		NOPL 0(AX)									
  daohang.go:1026	0xe18be0		4885db			TESTQ BX, BX									
  daohang.go:1026	0xe18be3		7476			JE 0xe18c5b									
  daohang.go:1027	0xe18be5		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  daohang.go:1027	0xe18bee		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)								
  daohang.go:1027	0xe18bf7		7404			JE 0xe18bfd									
  daohang.go:1027	0xe18bf9		488b5b08		MOVQ 0x8(BX), BX								
  daohang.go:1027	0xe18bfd		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  daohang.go:1027	0xe18c05		48898c24d8000000	MOVQ CX, 0xd8(SP)								
  daohang.go:1027	0xe18c0d		e88e1465ff		CALL runtime.convT64(SB)							
  daohang.go:1027	0xe18c12		488d0d479f2200		LEAQ runtime.types+383840(SB), CX						
  daohang.go:1027	0xe18c19		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  daohang.go:1027	0xe18c21		48898424e8000000	MOVQ AX, 0xe8(SP)								
  daohang.go:1027	0xe18c29		488d05593f3800		LEAQ go:string.*+214657(SB), AX							
  daohang.go:1027	0xe18c30		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  daohang.go:1027	0xe18c35		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  daohang.go:1027	0xe18c3d		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  daohang.go:1027	0xe18c42		4889fe			MOVQ DI, SI									
  daohang.go:1027	0xe18c45		e8763770ff		CALL fmt.Errorf(SB)								
  daohang.go:1027	0xe18c4a		4889d9			MOVQ BX, CX									
  daohang.go:1027	0xe18c4d		4889c3			MOVQ AX, BX									
  daohang.go:1027	0xe18c50		31c0			XORL AX, AX									
  daohang.go:1027	0xe18c52		4881c418010000		ADDQ $.file+203(SB), SP								
  daohang.go:1027	0xe18c59		5d			POPQ BP										
  daohang.go:1027	0xe18c5a		c3			RET										
  daohang.go:1034	0xe18c5b		488b842490000000	MOVQ 0x90(SP), AX								
  daohang.go:1034	0xe18c63		488b8c2400010000	MOVQ 0x100(SP), CX								
  daohang.go:1032	0xe18c6b		e9d8fdffff		JMP 0xe18a48									
  daohang.go:1025	0xe18c70		4989d3			MOVQ DX, R11									
  daohang.go:1025	0xe18c73		4c21d2			ANDQ R10, DX									
  daohang.go:1025	0xe18c76		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  daohang.go:1025	0xe18c7a		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  daohang.go:1025	0xe18c7f		90			NOPL										
  daohang.go:1025	0xe18c80		4939dc			CMPQ R12, BX									
  daohang.go:1025	0xe18c83		742d			JE 0xe18cb2									
  daohang.go:1025	0xe18c85		498d5301		LEAQ 0x1(R11), DX								
  daohang.go:1025	0xe18c89		4d85e4			TESTQ R12, R12									
  daohang.go:1025	0xe18c8c		75e2			JNE 0xe18c70									
  daohang.go:1025	0xe18c8e		488d055b2b1a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.17(SB), AX				
  daohang.go:1025	0xe18c95		e846665fff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe18c9a		4c8b842490000000	MOVQ 0x90(SP), R8								
  daohang.go:1025	0xe18ca2		4889c2			MOVQ AX, DX									
  io.go:354		0xe18ca5		488b842400010000	MOVQ 0x100(SP), AX								
  daohang.go:1025	0xe18cad		e911ffffff		JMP 0xe18bc3									
  daohang.go:1025	0xe18cb2		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  daohang.go:1025	0xe18cb7		e907ffffff		JMP 0xe18bc3									
  daohang.go:1004	0xe18cbc		4d89d3			MOVQ R10, R11									
  daohang.go:1004	0xe18cbf		4d21ca			ANDQ R9, R10									
  daohang.go:1004	0xe18cc2		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  daohang.go:1004	0xe18cc6		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  daohang.go:1004	0xe18ccb		4939dc			CMPQ R12, BX									
  daohang.go:1004	0xe18cce		7425			JE 0xe18cf5									
  daohang.go:1004	0xe18cd0		4d8d5301		LEAQ 0x1(R11), R10								
  daohang.go:1004	0xe18cd4		4d85e4			TESTQ R12, R12									
  daohang.go:1004	0xe18cd7		75e3			JNE 0xe18cbc									
  daohang.go:1004	0xe18cd9		488d05f02a1a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.16(SB), AX				
  daohang.go:1004	0xe18ce0		e8fb655fff		CALL runtime.typeAssert(SB)							
  daohang.go:1004	0xe18ce5		4889c1			MOVQ AX, CX									
  io.go:354		0xe18ce8		488b842400010000	MOVQ 0x100(SP), AX								
  daohang.go:1004	0xe18cf0		e9f5faffff		JMP 0xe187ea									
  daohang.go:1004	0xe18cf5		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  daohang.go:1004	0xe18cfa		4889d1			MOVQ DX, CX									
  daohang.go:1004	0xe18cfd		0f1f00			NOPL 0(AX)									
  daohang.go:1004	0xe18d00		e9e5faffff		JMP 0xe187ea									
  buffer.go:54		0xe18d05		e896fb65ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe18d0a		90			NOPL										
  daohang.go:955	0xe18d0b		4889442408		MOVQ AX, 0x8(SP)								
  daohang.go:955	0xe18d10		48895c2410		MOVQ BX, 0x10(SP)								
  daohang.go:955	0xe18d15		48894c2418		MOVQ CX, 0x18(SP)								
  daohang.go:955	0xe18d1a		48897c2420		MOVQ DI, 0x20(SP)								
  daohang.go:955	0xe18d1f		4889742428		MOVQ SI, 0x28(SP)								
  daohang.go:955	0xe18d24		e8b7d765ff		CALL runtime.morestack_noctxt.abi0(SB)						
  daohang.go:955	0xe18d29		488b442408		MOVQ 0x8(SP), AX								
  daohang.go:955	0xe18d2e		488b5c2410		MOVQ 0x10(SP), BX								
  daohang.go:955	0xe18d33		488b4c2418		MOVQ 0x18(SP), CX								
  daohang.go:955	0xe18d38		488b7c2420		MOVQ 0x20(SP), DI								
  daohang.go:955	0xe18d3d		488b742428		MOVQ 0x28(SP), SI								
  daohang.go:955	0xe18d42		e979f7ffff		JMP CAS-Backend/pkg/agvcontrol.SendRobotTaskStatusReq(SB)			
  :-1			0xe18d47		cc			INT $__subsystem__(SB)								
  :-1			0xe18d48		cc			INT $__subsystem__(SB)								
  :-1			0xe18d49		cc			INT $__subsystem__(SB)								
  :-1			0xe18d4a		cc			INT $__subsystem__(SB)								
  :-1			0xe18d4b		cc			INT $__subsystem__(SB)								
  :-1			0xe18d4c		cc			INT $__subsystem__(SB)								
  :-1			0xe18d4d		cc			INT $__subsystem__(SB)								
  :-1			0xe18d4e		cc			INT $__subsystem__(SB)								
  :-1			0xe18d4f		cc			INT $__subsystem__(SB)								
  :-1			0xe18d50		cc			INT $__subsystem__(SB)								
  :-1			0xe18d51		cc			INT $__subsystem__(SB)								
  :-1			0xe18d52		cc			INT $__subsystem__(SB)								
  :-1			0xe18d53		cc			INT $__subsystem__(SB)								
  :-1			0xe18d54		cc			INT $__subsystem__(SB)								
  :-1			0xe18d55		cc			INT $__subsystem__(SB)								
  :-1			0xe18d56		cc			INT $__subsystem__(SB)								
  :-1			0xe18d57		cc			INT $__subsystem__(SB)								
  :-1			0xe18d58		cc			INT $__subsystem__(SB)								
  :-1			0xe18d59		cc			INT $__subsystem__(SB)								
  :-1			0xe18d5a		cc			INT $__subsystem__(SB)								
  :-1			0xe18d5b		cc			INT $__subsystem__(SB)								
  :-1			0xe18d5c		cc			INT $__subsystem__(SB)								
  :-1			0xe18d5d		cc			INT $__subsystem__(SB)								
  :-1			0xe18d5e		cc			INT $__subsystem__(SB)								
  :-1			0xe18d5f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SendForkliftSpecifiedPathNavigation(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:1083	0xe18d60		4c8da42440ffffff	LEAQ 0xffffff40(SP), R12								
  daohang.go:1083	0xe18d68		4d3b6610		CMPQ R12, 0x10(R14)									
  daohang.go:1083	0xe18d6c		0f86e7080000		JBE 0xe19659										
  daohang.go:1083	0xe18d72		55			PUSHQ BP										
  daohang.go:1083	0xe18d73		4889e5			MOVQ SP, BP										
  daohang.go:1083	0xe18d76		4881ec38010000		SUBQ $.file+235(SB), SP									
  daohang.go:1083	0xe18d7d		4889842448010000	MOVQ AX, 0x148(SP)									
  daohang.go:1083	0xe18d85		48899c2450010000	MOVQ BX, 0x150(SP)									
  daohang.go:1083	0xe18d8d		48898c2458010000	MOVQ CX, 0x158(SP)									
  daohang.go:1083	0xe18d95		66440fd6bc2430010000	MOVQ X15, 0x130(SP)									
  daohang.go:1083	0xe18d9f		c644243300		MOVB $0x0, 0x33(SP)									
  daohang.go:1083	0xe18da4		c644243200		MOVB $0x0, 0x32(SP)									
  daohang.go:1083	0xe18da9		440f11bc2488000000	MOVUPS X15, 0x88(SP)									
  daohang.go:1085	0xe18db2		4885ff			TESTQ DI, DI										
  daohang.go:1085	0xe18db5		0f842f080000		JE 0xe195ea										
  daohang.go:1085	0xe18dbb		4889842448010000	MOVQ AX, 0x148(SP)									
  daohang.go:1085	0xe18dc3		48899c2450010000	MOVQ BX, 0x150(SP)									
  daohang.go:1112	0xe18dcb		48898c24d0000000	MOVQ CX, 0xd0(SP)									
  daohang.go:1112	0xe18dd3		4889bc24d8000000	MOVQ DI, 0xd8(SP)									
  daohang.go:1112	0xe18ddb		4889b424e0000000	MOVQ SI, 0xe0(SP)									
  daohang.go:1112	0xe18de3		488b8424d0000000	MOVQ 0xd0(SP), AX									
  daohang.go:1112	0xe18deb		4889fb			MOVQ DI, BX										
  daohang.go:1112	0xe18dee		4889f1			MOVQ SI, CX										
  daohang.go:1112	0xe18df1		e8ca1365ff		CALL runtime.convTslice(SB)								
  daohang.go:1112	0xe18df6		4889c3			MOVQ AX, BX										
  daohang.go:1112	0xe18df9		488d0580bb2800		LEAQ runtime.types+784768(SB), AX							
  daohang.go:1112	0xe18e00		e89b4675ff		CALL encoding/json.Marshal(SB)								
  daohang.go:1113	0xe18e05		4885ff			TESTQ DI, DI										
  daohang.go:1113	0xe18e08		746b			JE 0xe18e75										
  daohang.go:1114	0xe18e0a		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  daohang.go:1114	0xe18e13		7404			JE 0xe18e19										
  daohang.go:1114	0xe18e15		488b7f08		MOVQ 0x8(DI), DI									
  daohang.go:1114	0xe18e19		4889bc2408010000	MOVQ DI, 0x108(SP)									
  daohang.go:1114	0xe18e21		4889b42410010000	MOVQ SI, 0x110(SP)									
  daohang.go:1114	0xe18e29		488d056bad3600		LEAQ go:string.*+112275(SB), AX								
  daohang.go:1114	0xe18e30		bb17000000		MOVL $__major_os_version__+17(SB), BX							
  daohang.go:1114	0xe18e35		488d8c2408010000	LEAQ 0x108(SP), CX									
  daohang.go:1114	0xe18e3d		bf01000000		MOVL $__minor_os_version__(SB), DI							
  daohang.go:1114	0xe18e42		4889fe			MOVQ DI, SI										
  daohang.go:1114	0xe18e45		e8763570ff		CALL fmt.Errorf(SB)									
  daohang.go:1114	0xe18e4a		c644243200		MOVB $0x0, 0x32(SP)									
  daohang.go:1114	0xe18e4f		4889842488000000	MOVQ AX, 0x88(SP)									
  daohang.go:1114	0xe18e57		48899c2490000000	MOVQ BX, 0x90(SP)									
  daohang.go:1114	0xe18e5f		0fb6542432		MOVZX 0x32(SP), DX									
  daohang.go:1114	0xe18e64		4889d9			MOVQ BX, CX										
  daohang.go:1114	0xe18e67		4889c3			MOVQ AX, BX										
  daohang.go:1114	0xe18e6a		89d0			MOVL DX, AX										
  daohang.go:1114	0xe18e6c		4881c438010000		ADDQ $.file+235(SB), SP									
  daohang.go:1114	0xe18e73		5d			POPQ BP											
  daohang.go:1114	0xe18e74		c3			RET											
  daohang.go:1112	0xe18e75		48895c2470		MOVQ BX, 0x70(SP)									
  daohang.go:1112	0xe18e7a		4889842498000000	MOVQ AX, 0x98(SP)									
  daohang.go:1133	0xe18e82		48c74424445a010100	MOVQ $__dll_characteristics__+32762(SB), 0x44(SP)					
  daohang.go:1133	0xe18e8b		48c744244cfa0b0000	MOVQ $__file_alignment__+2554(SB), 0x4c(SP)						
  daohang.go:1131	0xe18e94		895c2448		MOVL BX, 0x48(SP)									
  daohang.go:1137	0xe18e98		488d0561f42b00		LEAQ runtime.types+996096(SB), AX							
  daohang.go:1137	0xe18e9f		90			NOPL											
  daohang.go:1137	0xe18ea0		e8fb885fff		CALL runtime.newobject(SB)								
  daohang.go:1137	0xe18ea5		4889842428010000	MOVQ AX, 0x128(SP)									
  daohang.go:1138	0xe18ead		0f10442444		MOVUPS 0x44(SP), X0									
  daohang.go:1138	0xe18eb2		0f11442454		MOVUPS X0, 0x54(SP)									
  daohang.go:1138	0xe18eb7		4889c3			MOVQ AX, BX										
  daohang.go:1138	0xe18eba		488d0d7fe00502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX		
  daohang.go:1138	0xe18ec1		488d3dd8437402		LEAQ unicode..stmp_365(SB), DI								
  daohang.go:1138	0xe18ec8		488d35f1592f00		LEAQ runtime.types+1218752(SB), SI							
  daohang.go:1138	0xe18ecf		4c8d442454		LEAQ 0x54(SP), R8									
  daohang.go:1138	0xe18ed4		488d0585410502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX						
  daohang.go:1138	0xe18edb		0f1f440000		NOPL 0(AX)(AX*1)									
  daohang.go:1138	0xe18ee0		e83b9274ff		CALL encoding/binary.Write(SB)								
  daohang.go:1139	0xe18ee5		4885c0			TESTQ AX, AX										
  daohang.go:1139	0xe18ee8		746b			JE 0xe18f55										
  daohang.go:1140	0xe18eea		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  daohang.go:1140	0xe18ef3		7404			JE 0xe18ef9										
  daohang.go:1140	0xe18ef5		488b4008		MOVQ 0x8(AX), AX									
  daohang.go:1140	0xe18ef9		4889842408010000	MOVQ AX, 0x108(SP)									
  daohang.go:1140	0xe18f01		48899c2410010000	MOVQ BX, 0x110(SP)									
  daohang.go:1140	0xe18f09		488d0541cf3600		LEAQ go:string.*+121161(SB), AX								
  daohang.go:1140	0xe18f10		bb19000000		MOVL $__major_os_version__+19(SB), BX							
  daohang.go:1140	0xe18f15		488d8c2408010000	LEAQ 0x108(SP), CX									
  daohang.go:1140	0xe18f1d		bf01000000		MOVL $__minor_os_version__(SB), DI							
  daohang.go:1140	0xe18f22		4889fe			MOVQ DI, SI										
  daohang.go:1140	0xe18f25		e8963470ff		CALL fmt.Errorf(SB)									
  daohang.go:1140	0xe18f2a		c644243200		MOVB $0x0, 0x32(SP)									
  daohang.go:1140	0xe18f2f		4889842488000000	MOVQ AX, 0x88(SP)									
  daohang.go:1140	0xe18f37		48899c2490000000	MOVQ BX, 0x90(SP)									
  daohang.go:1140	0xe18f3f		0fb6542432		MOVZX 0x32(SP), DX									
  daohang.go:1140	0xe18f44		4889d9			MOVQ BX, CX										
  daohang.go:1140	0xe18f47		4889c3			MOVQ AX, BX										
  daohang.go:1140	0xe18f4a		89d0			MOVL DX, AX										
  daohang.go:1140	0xe18f4c		4881c438010000		ADDQ $.file+235(SB), SP									
  daohang.go:1140	0xe18f53		5d			POPQ BP											
  daohang.go:1140	0xe18f54		c3			RET											
  buffer.go:54		0xe18f55		488b942428010000	MOVQ 0x128(SP), DX									
  buffer.go:54		0xe18f5d		488b4a08		MOVQ 0x8(DX), CX									
  buffer.go:54		0xe18f61		488b4218		MOVQ 0x18(DX), AX									
  buffer.go:54		0xe18f65		4839c1			CMPQ CX, AX										
  buffer.go:54		0xe18f68		0f82c2060000		JB 0xe19630										
  buffer.go:54		0xe18f6e		4c8b02			MOVQ 0(DX), R8										
  buffer.go:54		0xe18f71		488b5210		MOVQ 0x10(DX), DX									
  buffer.go:54		0xe18f75		4829c2			SUBQ AX, DX										
  buffer.go:54		0xe18f78		4829c1			SUBQ AX, CX										
  daohang.go:1144	0xe18f7b		488b7c2470		MOVQ 0x70(SP), DI									
  daohang.go:1144	0xe18f80		488d1c39		LEAQ 0(CX)(DI*1), BX									
  buffer.go:54		0xe18f84		4989d1			MOVQ DX, R9										
  buffer.go:54		0xe18f87		48f7da			NEGQ DX											
  buffer.go:54		0xe18f8a		48c1fa3f		SARQ $__major_os_version__+57(SB), DX							
  buffer.go:54		0xe18f8e		4821d0			ANDQ DX, AX										
  buffer.go:54		0xe18f91		4c01c0			ADDQ R8, AX										
  daohang.go:1144	0xe18f94		4939d9			CMPQ R9, BX										
  daohang.go:1144	0xe18f97		7321			JAE 0xe18fba										
  buffer.go:54		0xe18f99		48894c2468		MOVQ CX, 0x68(SP)									
  daohang.go:1144	0xe18f9e		4c89c9			MOVQ R9, CX										
  daohang.go:1144	0xe18fa1		488d35f8992200		LEAQ runtime.types+383392(SB), SI							
  daohang.go:1144	0xe18fa8		e8938c65ff		CALL runtime.growslice(SB)								
  daohang.go:1144	0xe18fad		488b7c2470		MOVQ 0x70(SP), DI									
  daohang.go:1144	0xe18fb2		4989c9			MOVQ CX, R9										
  daohang.go:1144	0xe18fb5		488b4c2468		MOVQ 0x68(SP), CX									
  daohang.go:1144	0xe18fba		48895c2478		MOVQ BX, 0x78(SP)									
  daohang.go:1144	0xe18fbf		48898424a0000000	MOVQ AX, 0xa0(SP)									
  daohang.go:1144	0xe18fc7		4c898c2480000000	MOVQ R9, 0x80(SP)									
  daohang.go:1144	0xe18fcf		488d1408		LEAQ 0(AX)(CX*1), DX									
  daohang.go:1144	0xe18fd3		4889f9			MOVQ DI, CX										
  daohang.go:1144	0xe18fd6		4889d0			MOVQ DX, AX										
  daohang.go:1144	0xe18fd9		488b9c2498000000	MOVQ 0x98(SP), BX									
  daohang.go:1144	0xe18fe1		e8da0166ff		CALL runtime.memmove(SB)								
  daohang.go:1147	0xe18fe6		488b942448010000	MOVQ 0x148(SP), DX									
  daohang.go:1147	0xe18fee		488b7250		MOVQ 0x50(DX), SI									
  daohang.go:1147	0xe18ff2		488b842450010000	MOVQ 0x150(SP), AX									
  daohang.go:1147	0xe18ffa		488b9c24a0000000	MOVQ 0xa0(SP), BX									
  daohang.go:1147	0xe19002		488b4c2478		MOVQ 0x78(SP), CX									
  daohang.go:1147	0xe19007		488bbc2480000000	MOVQ 0x80(SP), DI									
  daohang.go:1147	0xe1900f		ffd6			CALL SI											
  daohang.go:1148	0xe19011		4885db			TESTQ BX, BX										
  daohang.go:1148	0xe19014		746c			JE 0xe19082										
  daohang.go:1149	0xe19016		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  daohang.go:1149	0xe1901f		90			NOPL											
  daohang.go:1149	0xe19020		7404			JE 0xe19026										
  daohang.go:1149	0xe19022		488b5b08		MOVQ 0x8(BX), BX									
  daohang.go:1149	0xe19026		48899c2408010000	MOVQ BX, 0x108(SP)									
  daohang.go:1149	0xe1902e		48898c2410010000	MOVQ CX, 0x110(SP)									
  daohang.go:1149	0xe19036		488d05c9973600		LEAQ go:string.*+107262(SB), AX								
  daohang.go:1149	0xe1903d		bb16000000		MOVL $__major_os_version__+16(SB), BX							
  daohang.go:1149	0xe19042		488d8c2408010000	LEAQ 0x108(SP), CX									
  daohang.go:1149	0xe1904a		bf01000000		MOVL $__minor_os_version__(SB), DI							
  daohang.go:1149	0xe1904f		4889fe			MOVQ DI, SI										
  daohang.go:1149	0xe19052		e8693370ff		CALL fmt.Errorf(SB)									
  daohang.go:1149	0xe19057		c644243200		MOVB $0x0, 0x32(SP)									
  daohang.go:1149	0xe1905c		4889842488000000	MOVQ AX, 0x88(SP)									
  daohang.go:1149	0xe19064		48899c2490000000	MOVQ BX, 0x90(SP)									
  daohang.go:1149	0xe1906c		0fb6542432		MOVZX 0x32(SP), DX									
  daohang.go:1149	0xe19071		4889d9			MOVQ BX, CX										
  daohang.go:1149	0xe19074		4889c3			MOVQ AX, BX										
  daohang.go:1149	0xe19077		89d0			MOVL DX, AX										
  daohang.go:1149	0xe19079		4881c438010000		ADDQ $.file+235(SB), SP									
  daohang.go:1149	0xe19080		5d			POPQ BP											
  daohang.go:1149	0xe19081		c3			RET											
  daohang.go:1152	0xe19082		e8195069ff		CALL time.Now(SB)									
  daohang.go:1152	0xe19087		48bf00d6117e03000000	MOVQ $0x37e11d600, DI									
  daohang.go:1152	0xe19091		e8cab468ff		CALL time.Time.Add(SB)									
  daohang.go:1152	0xe19096		488b942448010000	MOVQ 0x148(SP), DX									
  daohang.go:1152	0xe1909e		488b7240		MOVQ 0x40(DX), SI									
  daohang.go:1152	0xe190a2		4889cf			MOVQ CX, DI										
  daohang.go:1152	0xe190a5		4889d9			MOVQ BX, CX										
  daohang.go:1152	0xe190a8		4889c3			MOVQ AX, BX										
  daohang.go:1152	0xe190ab		488b842450010000	MOVQ 0x150(SP), AX									
  daohang.go:1152	0xe190b3		ffd6			CALL SI											
  daohang.go:1153	0xe190b5		488d05e4050000		LEAQ CAS-Backend/pkg/agvcontrol.SendForkliftSpecifiedPathNavigation.deferwrap1(SB), AX	
  daohang.go:1153	0xe190bc		48898424b8000000	MOVQ AX, 0xb8(SP)									
  daohang.go:1153	0xe190c4		488b842448010000	MOVQ 0x148(SP), AX									
  daohang.go:1153	0xe190cc		48898424c0000000	MOVQ AX, 0xc0(SP)									
  daohang.go:1153	0xe190d4		488b8c2450010000	MOVQ 0x150(SP), CX									
  daohang.go:1153	0xe190dc		48898c24c8000000	MOVQ CX, 0xc8(SP)									
  daohang.go:1153	0xe190e4		488d9424b8000000	LEAQ 0xb8(SP), DX									
  daohang.go:1153	0xe190ec		4889942430010000	MOVQ DX, 0x130(SP)									
  daohang.go:1153	0xe190f4		c644243301		MOVB $__minor_os_version__(SB), 0x33(SP)						
  daohang.go:1156	0xe190f9		bb10000000		MOVL $__major_os_version__+10(SB), BX							
  daohang.go:1156	0xe190fe		488d059b982200		LEAQ runtime.types+383392(SB), AX							
  daohang.go:1156	0xe19105		4889d9			MOVQ BX, CX										
  daohang.go:1156	0xe19108		e8538a65ff		CALL runtime.makeslice(SB)								
  daohang.go:1156	0xe1910d		4889842418010000	MOVQ AX, 0x118(SP)									
  daohang.go:1157	0xe19115		488b8c2448010000	MOVQ 0x148(SP), CX									
  daohang.go:1157	0xe1911d		488b5128		MOVQ 0x28(CX), DX									
  daohang.go:1157	0xe19121		4889c3			MOVQ AX, BX										
  daohang.go:1157	0xe19124		bf10000000		MOVL $__major_os_version__+10(SB), DI							
  daohang.go:1157	0xe19129		488b842450010000	MOVQ 0x150(SP), AX									
  daohang.go:1157	0xe19131		4889f9			MOVQ DI, CX										
  daohang.go:1157	0xe19134		ffd2			CALL DX											
  daohang.go:1158	0xe19136		4885db			TESTQ BX, BX										
  daohang.go:1158	0xe19139		0f8486000000		JE 0xe191c5										
  daohang.go:1159	0xe1913f		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  daohang.go:1159	0xe19148		7404			JE 0xe1914e										
  daohang.go:1159	0xe1914a		488b5b08		MOVQ 0x8(BX), BX									
  daohang.go:1159	0xe1914e		48899c2408010000	MOVQ BX, 0x108(SP)									
  daohang.go:1159	0xe19156		48898c2410010000	MOVQ CX, 0x110(SP)									
  daohang.go:1159	0xe1915e		488d0537033700		LEAQ go:string.*+135060(SB), AX								
  daohang.go:1159	0xe19165		bb1c000000		MOVL $__major_os_version__+22(SB), BX							
  daohang.go:1159	0xe1916a		488d8c2408010000	LEAQ 0x108(SP), CX									
  daohang.go:1159	0xe19172		bf01000000		MOVL $__minor_os_version__(SB), DI							
  daohang.go:1159	0xe19177		4889fe			MOVQ DI, SI										
  daohang.go:1159	0xe1917a		e8413270ff		CALL fmt.Errorf(SB)									
  daohang.go:1159	0xe1917f		c644243200		MOVB $0x0, 0x32(SP)									
  daohang.go:1159	0xe19184		4889842488000000	MOVQ AX, 0x88(SP)									
  daohang.go:1159	0xe1918c		48899c2490000000	MOVQ BX, 0x90(SP)									
  daohang.go:1159	0xe19194		c644243300		MOVB $0x0, 0x33(SP)									
  daohang.go:1159	0xe19199		488b942430010000	MOVQ 0x130(SP), DX									
  daohang.go:1159	0xe191a1		4c8b02			MOVQ 0(DX), R8										
  daohang.go:1159	0xe191a4		41ffd0			CALL R8											
  daohang.go:1159	0xe191a7		488b9c2488000000	MOVQ 0x88(SP), BX									
  daohang.go:1159	0xe191af		0fb6442432		MOVZX 0x32(SP), AX									
  daohang.go:1159	0xe191b4		488b8c2490000000	MOVQ 0x90(SP), CX									
  daohang.go:1159	0xe191bc		4881c438010000		ADDQ $.file+235(SB), SP									
  daohang.go:1159	0xe191c3		5d			POPQ BP											
  daohang.go:1159	0xe191c4		c3			RET											
  daohang.go:1163	0xe191c5		440f117c2434		MOVUPS X15, 0x34(SP)									
  daohang.go:1164	0xe191cb		90			NOPL											
  reader.go:159		0xe191cc		488d05edf12b00		LEAQ runtime.types+996288(SB), AX							
  reader.go:159		0xe191d3		e8c8855fff		CALL runtime.newobject(SB)								
  reader.go:159		0xe191d8		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)						
  reader.go:159		0xe191e0		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)						
  reader.go:159		0xe191e8		833d6149740200		CMPL runtime.writeBarrier(SB), $0x0							
  reader.go:159		0xe191ef		750f			JNE 0xe19200										
  reader.go:159		0xe191f1		488b942418010000	MOVQ 0x118(SP), DX									
  reader.go:159		0xe191f9		eb15			JMP 0xe19210										
  reader.go:159		0xe191fb		0f1f440000		NOPL 0(AX)(AX*1)									
  reader.go:159		0xe19200		e81bf265ff		CALL runtime.gcWriteBarrier1(SB)							
  reader.go:159		0xe19205		488b942418010000	MOVQ 0x118(SP), DX									
  reader.go:159		0xe1920d		498913			MOVQ DX, 0(R11)										
  reader.go:159		0xe19210		488910			MOVQ DX, 0(AX)										
  reader.go:159		0xe19213		48c7401800000000	MOVQ $0x0, 0x18(AX)									
  reader.go:159		0xe1921b		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)									
  daohang.go:1165	0xe19223		4889c3			MOVQ AX, BX										
  daohang.go:1165	0xe19226		488d0d13dd0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX		
  daohang.go:1165	0xe1922d		488d3d6c407402		LEAQ unicode..stmp_365(SB), DI								
  daohang.go:1165	0xe19234		488d35e5d92000		LEAQ runtime.types+269344(SB), SI							
  daohang.go:1165	0xe1923b		4c8d442434		LEAQ 0x34(SP), R8									
  daohang.go:1165	0xe19240		488d0599380502		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX						
  daohang.go:1165	0xe19247		e8f47f74ff		CALL encoding/binary.Read(SB)								
  daohang.go:1166	0xe1924c		4885c0			TESTQ AX, AX										
  daohang.go:1166	0xe1924f		0f8488000000		JE 0xe192dd										
  daohang.go:1167	0xe19255		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  daohang.go:1167	0xe1925e		6690			NOPW											
  daohang.go:1167	0xe19260		7404			JE 0xe19266										
  daohang.go:1167	0xe19262		488b4008		MOVQ 0x8(AX), AX									
  daohang.go:1167	0xe19266		4889842408010000	MOVQ AX, 0x108(SP)									
  daohang.go:1167	0xe1926e		48899c2410010000	MOVQ BX, 0x110(SP)									
  daohang.go:1167	0xe19276		488d053b023700		LEAQ go:string.*+135088(SB), AX								
  daohang.go:1167	0xe1927d		bb1c000000		MOVL $__major_os_version__+22(SB), BX							
  daohang.go:1167	0xe19282		488d8c2408010000	LEAQ 0x108(SP), CX									
  daohang.go:1167	0xe1928a		bf01000000		MOVL $__minor_os_version__(SB), DI							
  daohang.go:1167	0xe1928f		4889fe			MOVQ DI, SI										
  daohang.go:1167	0xe19292		e8293170ff		CALL fmt.Errorf(SB)									
  daohang.go:1167	0xe19297		c644243200		MOVB $0x0, 0x32(SP)									
  daohang.go:1167	0xe1929c		4889842488000000	MOVQ AX, 0x88(SP)									
  daohang.go:1167	0xe192a4		48899c2490000000	MOVQ BX, 0x90(SP)									
  daohang.go:1167	0xe192ac		c644243300		MOVB $0x0, 0x33(SP)									
  daohang.go:1167	0xe192b1		488b942430010000	MOVQ 0x130(SP), DX									
  daohang.go:1167	0xe192b9		4c8b02			MOVQ 0(DX), R8										
  daohang.go:1167	0xe192bc		41ffd0			CALL R8											
  daohang.go:1167	0xe192bf		488b9c2488000000	MOVQ 0x88(SP), BX									
  daohang.go:1167	0xe192c7		0fb6442432		MOVZX 0x32(SP), AX									
  daohang.go:1167	0xe192cc		488b8c2490000000	MOVQ 0x90(SP), CX									
  daohang.go:1167	0xe192d4		4881c438010000		ADDQ $.file+235(SB), SP									
  daohang.go:1167	0xe192db		5d			POPQ BP											
  daohang.go:1167	0xe192dc		c3			RET											
  daohang.go:1171	0xe192dd		8b4c2438		MOVL 0x38(SP), CX									
  daohang.go:1171	0xe192e1		488d05b8962200		LEAQ runtime.types+383392(SB), AX							
  daohang.go:1171	0xe192e8		4889cb			MOVQ CX, BX										
  daohang.go:1171	0xe192eb		e8708865ff		CALL runtime.makeslice(SB)								
  daohang.go:1171	0xe192f0		8b7c2438		MOVL 0x38(SP), DI									
  daohang.go:1172	0xe192f4		85ff			TESTL DI, DI										
  daohang.go:1172	0xe192f6		0f86e6010000		JBE 0xe194e2										
  daohang.go:1171	0xe192fc		4889842418010000	MOVQ AX, 0x118(SP)									
  daohang.go:1171	0xe19304		897c2464		MOVL DI, 0x64(SP)									
  daohang.go:1173	0xe19308		488b942448010000	MOVQ 0x148(SP), DX									
  daohang.go:1173	0xe19310		488b5228		MOVQ 0x28(DX), DX									
  daohang.go:1173	0xe19314		4889c3			MOVQ AX, BX										
  daohang.go:1173	0xe19317		89f9			MOVL DI, CX										
  daohang.go:1173	0xe19319		488b842450010000	MOVQ 0x150(SP), AX									
  daohang.go:1173	0xe19321		ffd2			CALL DX											
  daohang.go:1174	0xe19323		4885db			TESTQ BX, BX										
  daohang.go:1174	0xe19326		0f8486000000		JE 0xe193b2										
  daohang.go:1175	0xe1932c		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  daohang.go:1175	0xe19335		7404			JE 0xe1933b										
  daohang.go:1175	0xe19337		488b5b08		MOVQ 0x8(BX), BX									
  daohang.go:1175	0xe1933b		48899c2408010000	MOVQ BX, 0x108(SP)									
  daohang.go:1175	0xe19343		48898c2410010000	MOVQ CX, 0x110(SP)									
  daohang.go:1175	0xe1934b		488d0582013700		LEAQ go:string.*+135116(SB), AX								
  daohang.go:1175	0xe19352		bb1c000000		MOVL $__major_os_version__+22(SB), BX							
  daohang.go:1175	0xe19357		488d8c2408010000	LEAQ 0x108(SP), CX									
  daohang.go:1175	0xe1935f		bf01000000		MOVL $__minor_os_version__(SB), DI							
  daohang.go:1175	0xe19364		4889fe			MOVQ DI, SI										
  daohang.go:1175	0xe19367		e8543070ff		CALL fmt.Errorf(SB)									
  daohang.go:1175	0xe1936c		c644243200		MOVB $0x0, 0x32(SP)									
  daohang.go:1175	0xe19371		4889842488000000	MOVQ AX, 0x88(SP)									
  daohang.go:1175	0xe19379		48899c2490000000	MOVQ BX, 0x90(SP)									
  daohang.go:1175	0xe19381		c644243300		MOVB $0x0, 0x33(SP)									
  daohang.go:1175	0xe19386		488b942430010000	MOVQ 0x130(SP), DX									
  daohang.go:1175	0xe1938e		4c8b02			MOVQ 0(DX), R8										
  daohang.go:1175	0xe19391		41ffd0			CALL R8											
  daohang.go:1175	0xe19394		488b9c2488000000	MOVQ 0x88(SP), BX									
  daohang.go:1175	0xe1939c		0fb6442432		MOVZX 0x32(SP), AX									
  daohang.go:1175	0xe193a1		488b8c2490000000	MOVQ 0x90(SP), CX									
  daohang.go:1175	0xe193a9		4881c438010000		ADDQ $.file+235(SB), SP									
  daohang.go:1175	0xe193b0		5d			POPQ BP											
  daohang.go:1175	0xe193b1		c3			RET											
  daohang.go:1178	0xe193b2		488d0547cb2b00		LEAQ runtime.types+986880(SB), AX							
  daohang.go:1178	0xe193b9		e8e2835fff		CALL runtime.newobject(SB)								
  daohang.go:1178	0xe193be		4889842420010000	MOVQ AX, 0x120(SP)									
  daohang.go:1179	0xe193c6		8b4c2464		MOVL 0x64(SP), CX									
  daohang.go:1179	0xe193ca		4885c9			TESTQ CX, CX										
  daohang.go:1179	0xe193cd		0f8409010000		JE 0xe194dc										
  daohang.go:1180	0xe193d3		89cb			MOVL CX, BX										
  daohang.go:1180	0xe193d5		488d3d84d82000		LEAQ runtime.types+269408(SB), DI							
  daohang.go:1180	0xe193dc		4889c6			MOVQ AX, SI										
  daohang.go:1180	0xe193df		488b842418010000	MOVQ 0x118(SP), AX									
  daohang.go:1180	0xe193e7		e8f4e074ff		CALL encoding/json.Unmarshal(SB)							
  daohang.go:1181	0xe193ec		4885c0			TESTQ AX, AX										
  daohang.go:1181	0xe193ef		0f8488000000		JE 0xe1947d										
  daohang.go:1182	0xe193f5		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  daohang.go:1182	0xe193fe		6690			NOPW											
  daohang.go:1182	0xe19400		7404			JE 0xe19406										
  daohang.go:1182	0xe19402		488b4008		MOVQ 0x8(AX), AX									
  daohang.go:1182	0xe19406		4889842408010000	MOVQ AX, 0x108(SP)									
  daohang.go:1182	0xe1940e		48899c2410010000	MOVQ BX, 0x110(SP)									
  daohang.go:1182	0xe19416		488d05f3db3600		LEAQ go:string.*+125704(SB), AX								
  daohang.go:1182	0xe1941d		bb1a000000		MOVL $__major_os_version__+20(SB), BX							
  daohang.go:1182	0xe19422		488d8c2408010000	LEAQ 0x108(SP), CX									
  daohang.go:1182	0xe1942a		bf01000000		MOVL $__minor_os_version__(SB), DI							
  daohang.go:1182	0xe1942f		4889fe			MOVQ DI, SI										
  daohang.go:1182	0xe19432		e8892f70ff		CALL fmt.Errorf(SB)									
  daohang.go:1182	0xe19437		c644243200		MOVB $0x0, 0x32(SP)									
  daohang.go:1182	0xe1943c		4889842488000000	MOVQ AX, 0x88(SP)									
  daohang.go:1182	0xe19444		48899c2490000000	MOVQ BX, 0x90(SP)									
  daohang.go:1182	0xe1944c		c644243300		MOVB $0x0, 0x33(SP)									
  daohang.go:1182	0xe19451		488b942430010000	MOVQ 0x130(SP), DX									
  daohang.go:1182	0xe19459		4c8b02			MOVQ 0(DX), R8										
  daohang.go:1182	0xe1945c		41ffd0			CALL R8											
  daohang.go:1182	0xe1945f		488b9c2488000000	MOVQ 0x88(SP), BX									
  daohang.go:1182	0xe19467		0fb6442432		MOVZX 0x32(SP), AX									
  daohang.go:1182	0xe1946c		488b8c2490000000	MOVQ 0x90(SP), CX									
  daohang.go:1182	0xe19474		4881c438010000		ADDQ $.file+235(SB), SP									
  daohang.go:1182	0xe1947b		5d			POPQ BP											
  daohang.go:1182	0xe1947c		c3			RET											
  daohang.go:1184	0xe1947d		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)									
  daohang.go:1184	0xe19486		488d0573ca2b00		LEAQ runtime.types+986880(SB), AX							
  daohang.go:1184	0xe1948d		488b9c2420010000	MOVQ 0x120(SP), BX									
  daohang.go:1184	0xe19495		e8065c5fff		CALL runtime.convT(SB)									
  daohang.go:1184	0xe1949a		488d0d5fca2b00		LEAQ runtime.types+986880(SB), CX							
  daohang.go:1184	0xe194a1		48898c24a8000000	MOVQ CX, 0xa8(SP)									
  daohang.go:1184	0xe194a9		48898424b0000000	MOVQ AX, 0xb0(SP)									
  print.go:314		0xe194b1		488b1dc88b6f02		MOVQ os.Stdout(SB), BX									
  print.go:314		0xe194b8		488d0521260502		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:314		0xe194bf		488d8c24a8000000	LEAQ 0xa8(SP), CX									
  print.go:314		0xe194c7		bf01000000		MOVL $__minor_os_version__(SB), DI							
  print.go:314		0xe194cc		4889fe			MOVQ DI, SI										
  print.go:314		0xe194cf		e88c6370ff		CALL fmt.Fprintln(SB)									
  daohang.go:1188	0xe194d4		488b842420010000	MOVQ 0x120(SP), AX									
  daohang.go:1188	0xe194dc		48833800		CMPQ 0(AX), $0x0									
  daohang.go:1188	0xe194e0		753f			JNE 0xe19521										
  daohang.go:1194	0xe194e2		c644243201		MOVB $__minor_os_version__(SB), 0x32(SP)						
  daohang.go:1194	0xe194e7		440f11bc2488000000	MOVUPS X15, 0x88(SP)									
  daohang.go:1194	0xe194f0		c644243300		MOVB $0x0, 0x33(SP)									
  daohang.go:1194	0xe194f5		488b942430010000	MOVQ 0x130(SP), DX									
  daohang.go:1194	0xe194fd		488b02			MOVQ 0(DX), AX										
  daohang.go:1194	0xe19500		ffd0			CALL AX											
  daohang.go:1194	0xe19502		488b9c2488000000	MOVQ 0x88(SP), BX									
  daohang.go:1194	0xe1950a		0fb6442432		MOVZX 0x32(SP), AX									
  daohang.go:1194	0xe1950f		488b8c2490000000	MOVQ 0x90(SP), CX									
  daohang.go:1194	0xe19517		4881c438010000		ADDQ $.file+235(SB), SP									
  daohang.go:1194	0xe1951e		5d			POPQ BP											
  daohang.go:1194	0xe1951f		90			NOPL											
  daohang.go:1194	0xe19520		c3			RET											
  daohang.go:1189	0xe19521		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)									
  daohang.go:1189	0xe1952a		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)									
  daohang.go:1190	0xe19533		488b08			MOVQ 0(AX), CX										
  daohang.go:1190	0xe19536		4889c8			MOVQ CX, AX										
  daohang.go:1190	0xe19539		e8620b65ff		CALL runtime.convT64(SB)								
  daohang.go:1190	0xe1953e		488d0d1b962200		LEAQ runtime.types+383840(SB), CX							
  daohang.go:1190	0xe19545		48898c24e8000000	MOVQ CX, 0xe8(SP)									
  daohang.go:1190	0xe1954d		48898424f0000000	MOVQ AX, 0xf0(SP)									
  daohang.go:1190	0xe19555		488b8c2420010000	MOVQ 0x120(SP), CX									
  daohang.go:1190	0xe1955d		488b4118		MOVQ 0x18(CX), AX									
  daohang.go:1190	0xe19561		488b5920		MOVQ 0x20(CX), BX									
  daohang.go:1190	0xe19565		e8b60b65ff		CALL runtime.convTstring(SB)								
  daohang.go:1190	0xe1956a		488d0daf932200		LEAQ runtime.types+383264(SB), CX							
  daohang.go:1190	0xe19571		48898c24f8000000	MOVQ CX, 0xf8(SP)									
  daohang.go:1190	0xe19579		4889842400010000	MOVQ AX, 0x100(SP)									
  daohang.go:1189	0xe19581		488d0588713800		LEAQ go:string.*+229896(SB), AX								
  daohang.go:1189	0xe19588		bb37000000		MOVL $__major_os_version__+49(SB), BX							
  daohang.go:1189	0xe1958d		488d8c24e8000000	LEAQ 0xe8(SP), CX									
  daohang.go:1189	0xe19595		bf02000000		MOVL $__minor_os_version__+1(SB), DI							
  daohang.go:1189	0xe1959a		4889fe			MOVQ DI, SI										
  daohang.go:1189	0xe1959d		0f1f00			NOPL 0(AX)										
  daohang.go:1189	0xe195a0		e81b2e70ff		CALL fmt.Errorf(SB)									
  daohang.go:1189	0xe195a5		c644243200		MOVB $0x0, 0x32(SP)									
  daohang.go:1189	0xe195aa		4889842488000000	MOVQ AX, 0x88(SP)									
  daohang.go:1189	0xe195b2		48899c2490000000	MOVQ BX, 0x90(SP)									
  daohang.go:1189	0xe195ba		c644243300		MOVB $0x0, 0x33(SP)									
  daohang.go:1189	0xe195bf		488b942430010000	MOVQ 0x130(SP), DX									
  daohang.go:1189	0xe195c7		488b0a			MOVQ 0(DX), CX										
  daohang.go:1189	0xe195ca		ffd1			CALL CX											
  daohang.go:1189	0xe195cc		488b9c2488000000	MOVQ 0x88(SP), BX									
  daohang.go:1189	0xe195d4		0fb6442432		MOVZX 0x32(SP), AX									
  daohang.go:1189	0xe195d9		488b8c2490000000	MOVQ 0x90(SP), CX									
  daohang.go:1189	0xe195e1		4881c438010000		ADDQ $.file+235(SB), SP									
  daohang.go:1189	0xe195e8		5d			POPQ BP											
  daohang.go:1189	0xe195e9		c3			RET											
  daohang.go:1086	0xe195ea		488d0541b83600		LEAQ go:string.*+117034(SB), AX								
  daohang.go:1086	0xe195f1		bb18000000		MOVL $__major_os_version__+18(SB), BX							
  daohang.go:1086	0xe195f6		31c9			XORL CX, CX										
  daohang.go:1086	0xe195f8		31ff			XORL DI, DI										
  daohang.go:1086	0xe195fa		4889fe			MOVQ DI, SI										
  daohang.go:1086	0xe195fd		0f1f00			NOPL 0(AX)										
  daohang.go:1086	0xe19600		e8bb2d70ff		CALL fmt.Errorf(SB)									
  daohang.go:1086	0xe19605		c644243200		MOVB $0x0, 0x32(SP)									
  daohang.go:1086	0xe1960a		4889842488000000	MOVQ AX, 0x88(SP)									
  daohang.go:1086	0xe19612		48899c2490000000	MOVQ BX, 0x90(SP)									
  daohang.go:1086	0xe1961a		0fb6542432		MOVZX 0x32(SP), DX									
  daohang.go:1086	0xe1961f		4889d9			MOVQ BX, CX										
  daohang.go:1086	0xe19622		4889c3			MOVQ AX, BX										
  daohang.go:1086	0xe19625		89d0			MOVL DX, AX										
  daohang.go:1086	0xe19627		4881c438010000		ADDQ $.file+235(SB), SP									
  daohang.go:1086	0xe1962e		5d			POPQ BP											
  daohang.go:1086	0xe1962f		c3			RET											
  buffer.go:54		0xe19630		e86bf265ff		CALL runtime.panicSliceB(SB)								
  buffer.go:54		0xe19635		90			NOPL											
  buffer.go:54		0xe19636		e8450562ff		CALL runtime.deferreturn(SB)								
  buffer.go:54		0xe1963b		0fb6442432		MOVZX 0x32(SP), AX									
  buffer.go:54		0xe19640		488b9c2488000000	MOVQ 0x88(SP), BX									
  buffer.go:54		0xe19648		488b8c2490000000	MOVQ 0x90(SP), CX									
  buffer.go:54		0xe19650		4881c438010000		ADDQ $.file+235(SB), SP									
  buffer.go:54		0xe19657		5d			POPQ BP											
  buffer.go:54		0xe19658		c3			RET											
  daohang.go:1083	0xe19659		4889442408		MOVQ AX, 0x8(SP)									
  daohang.go:1083	0xe1965e		48895c2410		MOVQ BX, 0x10(SP)									
  daohang.go:1083	0xe19663		48894c2418		MOVQ CX, 0x18(SP)									
  daohang.go:1083	0xe19668		48897c2420		MOVQ DI, 0x20(SP)									
  daohang.go:1083	0xe1966d		4889742428		MOVQ SI, 0x28(SP)									
  daohang.go:1083	0xe19672		e869ce65ff		CALL runtime.morestack_noctxt.abi0(SB)							
  daohang.go:1083	0xe19677		488b442408		MOVQ 0x8(SP), AX									
  daohang.go:1083	0xe1967c		488b5c2410		MOVQ 0x10(SP), BX									
  daohang.go:1083	0xe19681		488b4c2418		MOVQ 0x18(SP), CX									
  daohang.go:1083	0xe19686		488b7c2420		MOVQ 0x20(SP), DI									
  daohang.go:1083	0xe1968b		488b742428		MOVQ 0x28(SP), SI									
  daohang.go:1083	0xe19690		e9cbf6ffff		JMP CAS-Backend/pkg/agvcontrol.SendForkliftSpecifiedPathNavigation(SB)			
  :-1			0xe19695		cc			INT $__subsystem__(SB)									
  :-1			0xe19696		cc			INT $__subsystem__(SB)									
  :-1			0xe19697		cc			INT $__subsystem__(SB)									
  :-1			0xe19698		cc			INT $__subsystem__(SB)									
  :-1			0xe19699		cc			INT $__subsystem__(SB)									
  :-1			0xe1969a		cc			INT $__subsystem__(SB)									
  :-1			0xe1969b		cc			INT $__subsystem__(SB)									
  :-1			0xe1969c		cc			INT $__subsystem__(SB)									
  :-1			0xe1969d		cc			INT $__subsystem__(SB)									
  :-1			0xe1969e		cc			INT $__subsystem__(SB)									
  :-1			0xe1969f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/agvcontrol.SendForkliftSpecifiedPathNavigation.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:1153	0xe196a0		493b6610		CMPQ SP, 0x10(R14)									
  daohang.go:1153	0xe196a4		7625			JBE 0xe196cb										
  daohang.go:1153	0xe196a6		55			PUSHQ BP										
  daohang.go:1153	0xe196a7		4889e5			MOVQ SP, BP										
  daohang.go:1153	0xe196aa		4883ec10		SUBQ $__major_os_version__+10(SB), SP							
  daohang.go:1153	0xe196ae		4d8b6620		MOVQ 0x20(R14), R12									
  daohang.go:1153	0xe196b2		4d85e4			TESTQ R12, R12										
  daohang.go:1153	0xe196b5		751b			JNE 0xe196d2										
  daohang.go:1153	0xe196b7		488b4208		MOVQ 0x8(DX), AX									
  daohang.go:1153	0xe196bb		488b5a10		MOVQ 0x10(DX), BX									
  daohang.go:1153	0xe196bf		90			NOPL											
  daohang.go:1153	0xe196c0		e87b8cffff		CALL CAS-Backend/pkg/agvcontrol.ClearConnDeadlines(SB)					
  daohang.go:1153	0xe196c5		4883c410		ADDQ $__major_os_version__+10(SB), SP							
  daohang.go:1153	0xe196c9		5d			POPQ BP											
  daohang.go:1153	0xe196ca		c3			RET											
  daohang.go:1153	0xe196cb		e890cd65ff		CALL runtime.morestack.abi0(SB)								
  daohang.go:1153	0xe196d0		ebce			JMP CAS-Backend/pkg/agvcontrol.SendForkliftSpecifiedPathNavigation.deferwrap1(SB)	
  daohang.go:1153	0xe196d2		4c8d6c2420		LEAQ 0x20(SP), R13									
  daohang.go:1153	0xe196d7		4d392c24		CMPQ 0(R12), R13									
  daohang.go:1153	0xe196db		75da			JNE 0xe196b7										
  daohang.go:1153	0xe196dd		49892424		MOVQ SP, 0(R12)										
  daohang.go:1153	0xe196e1		ebd4			JMP 0xe196b7										
  :-1			0xe196e3		cc			INT $__subsystem__(SB)									
  :-1			0xe196e4		cc			INT $__subsystem__(SB)									
  :-1			0xe196e5		cc			INT $__subsystem__(SB)									
  :-1			0xe196e6		cc			INT $__subsystem__(SB)									
  :-1			0xe196e7		cc			INT $__subsystem__(SB)									
  :-1			0xe196e8		cc			INT $__subsystem__(SB)									
  :-1			0xe196e9		cc			INT $__subsystem__(SB)									
  :-1			0xe196ea		cc			INT $__subsystem__(SB)									
  :-1			0xe196eb		cc			INT $__subsystem__(SB)									
  :-1			0xe196ec		cc			INT $__subsystem__(SB)									
  :-1			0xe196ed		cc			INT $__subsystem__(SB)									
  :-1			0xe196ee		cc			INT $__subsystem__(SB)									
  :-1			0xe196ef		cc			INT $__subsystem__(SB)									
  :-1			0xe196f0		cc			INT $__subsystem__(SB)									
  :-1			0xe196f1		cc			INT $__subsystem__(SB)									
  :-1			0xe196f2		cc			INT $__subsystem__(SB)									
  :-1			0xe196f3		cc			INT $__subsystem__(SB)									
  :-1			0xe196f4		cc			INT $__subsystem__(SB)									
  :-1			0xe196f5		cc			INT $__subsystem__(SB)									
  :-1			0xe196f6		cc			INT $__subsystem__(SB)									
  :-1			0xe196f7		cc			INT $__subsystem__(SB)									
  :-1			0xe196f8		cc			INT $__subsystem__(SB)									
  :-1			0xe196f9		cc			INT $__subsystem__(SB)									
  :-1			0xe196fa		cc			INT $__subsystem__(SB)									
  :-1			0xe196fb		cc			INT $__subsystem__(SB)									
  :-1			0xe196fc		cc			INT $__subsystem__(SB)									
  :-1			0xe196fd		cc			INT $__subsystem__(SB)									
  :-1			0xe196fe		cc			INT $__subsystem__(SB)									
  :-1			0xe196ff		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/agvcontrol.validateForkliftOperation(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/daohang.go
  daohang.go:1198	0xe19700		493b6610		CMPQ SP, 0x10(R14)						
  daohang.go:1198	0xe19704		0f8605020000		JBE 0xe1990f							
  daohang.go:1198	0xe1970a		55			PUSHQ BP							
  daohang.go:1198	0xe1970b		4889e5			MOVQ SP, BP							
  daohang.go:1198	0xe1970e		4883ec38		SUBQ $__major_os_version__+50(SB), SP				
  daohang.go:1199	0xe19712		488b9424e8000000	MOVQ 0xe8(SP), DX						
  daohang.go:1199	0xe1971a		4c8b8424e0000000	MOVQ 0xe0(SP), R8						
  daohang.go:1199	0xe19722		4883fa08		CMPQ DX, $__major_os_version__+2(SB)				
  daohang.go:1200	0xe19726		7f6b			JG 0xe19793							
  daohang.go:1216	0xe19728		4885d2			TESTQ DX, DX							
  daohang.go:1216	0xe1972b		0f8466010000		JE 0xe19897							
  daohang.go:1199	0xe19731		4883fa08		CMPQ DX, $__major_os_version__+2(SB)				
  daohang.go:1200	0xe19735		0f8584010000		JNE 0xe198bf							
  daohang.go:1200	0xe1973b		48ba466f726b4c6f6164	MOVQ $0x64616f4c6b726f46, DX					
  daohang.go:1200	0xe19745		493910			CMPQ 0(R8), DX							
  daohang.go:1200	0xe19748		0f8571010000		JNE 0xe198bf							
  daohang.go:1201	0xe1974e		f20f108424f0000000	MOVSD_XMM 0xf0(SP), X0						
  daohang.go:1201	0xe19757		0f57c9			XORPS X1, X1							
  daohang.go:1201	0xe1975a		660f2ec8		UCOMISD X0, X1							
  daohang.go:1201	0xe1975e		6690			NOPW								
  daohang.go:1201	0xe19760		7713			JA 0xe19775							
  daohang.go:1201	0xe19762		f20f108424f8000000	MOVSD_XMM 0xf8(SP), X0						
  daohang.go:1201	0xe1976b		660f2ec8		UCOMISD X0, X1							
  daohang.go:1201	0xe1976f		0f8622010000		JBE 0xe19897							
  daohang.go:1202	0xe19775		488d05c9643800		LEAQ go:string.*+227133(SB), AX					
  daohang.go:1202	0xe1977c		bb36000000		MOVL $__major_os_version__+48(SB), BX				
  daohang.go:1202	0xe19781		31c9			XORL CX, CX							
  daohang.go:1202	0xe19783		31ff			XORL DI, DI							
  daohang.go:1202	0xe19785		4889fe			MOVQ DI, SI							
  daohang.go:1202	0xe19788		e8332c70ff		CALL fmt.Errorf(SB)						
  daohang.go:1202	0xe1978d		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  daohang.go:1202	0xe19791		5d			POPQ BP								
  daohang.go:1202	0xe19792		c3			RET								
  daohang.go:1208	0xe19793		4883fa0a		CMPQ DX, $__major_os_version__+4(SB)				
  daohang.go:1208	0xe19797		0f85c3000000		JNE 0xe19860							
  daohang.go:1208	0xe1979d		48ba466f726b48656967	MOVQ $0x676965486b726f46, DX					
  daohang.go:1208	0xe197a7		493910			CMPQ 0(R8), DX							
  daohang.go:1208	0xe197aa		7550			JNE 0xe197fc							
  daohang.go:1208	0xe197ac		66418178086874		CMPW 0x8(R8), $.file+322(SB)					
  daohang.go:1208	0xe197b3		7547			JNE 0xe197fc							
  daohang.go:1209	0xe197b5		f20f10842400010000	MOVSD_XMM 0x100(SP), X0						
  daohang.go:1209	0xe197be		0f57c9			XORPS X1, X1							
  daohang.go:1209	0xe197c1		660f2ec8		UCOMISD X0, X1							
  daohang.go:1209	0xe197c5		0f86cc000000		JBE 0xe19897							
  daohang.go:1209	0xe197cb		f20f108424f8000000	MOVSD_XMM 0xf8(SP), X0						
  daohang.go:1209	0xe197d4		660f2ec8		UCOMISD X0, X1							
  daohang.go:1209	0xe197d8		0f86b9000000		JBE 0xe19897							
  daohang.go:1210	0xe197de		488d052d3f3800		LEAQ go:string.*+217610(SB), AX					
  daohang.go:1210	0xe197e5		bb32000000		MOVL $__major_os_version__+44(SB), BX				
  daohang.go:1210	0xe197ea		31c9			XORL CX, CX							
  daohang.go:1210	0xe197ec		31ff			XORL DI, DI							
  daohang.go:1210	0xe197ee		4889fe			MOVQ DI, SI							
  daohang.go:1210	0xe197f1		e8ca2b70ff		CALL fmt.Errorf(SB)						
  daohang.go:1210	0xe197f6		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  daohang.go:1210	0xe197fa		5d			POPQ BP								
  daohang.go:1210	0xe197fb		c3			RET								
  daohang.go:1204	0xe197fc		48ba466f726b556e6c6f	MOVQ $0x6f6c6e556b726f46, DX					
  daohang.go:1204	0xe19806		493910			CMPQ 0(R8), DX							
  daohang.go:1204	0xe19809		0f85b0000000		JNE 0xe198bf							
  daohang.go:1204	0xe1980f		66418178086164		CMPW 0x8(R8), $__size_of_stack_commit__+21601(SB)		
  daohang.go:1204	0xe19816		0f85a3000000		JNE 0xe198bf							
  daohang.go:1205	0xe1981c		f20f108424f0000000	MOVSD_XMM 0xf0(SP), X0						
  daohang.go:1205	0xe19825		0f57c9			XORPS X1, X1							
  daohang.go:1205	0xe19828		660f2ec8		UCOMISD X0, X1							
  daohang.go:1205	0xe1982c		770f			JA 0xe1983d							
  daohang.go:1205	0xe1982e		f20f108424f8000000	MOVSD_XMM 0xf8(SP), X0						
  daohang.go:1205	0xe19837		660f2ec8		UCOMISD X0, X1							
  daohang.go:1205	0xe1983b		765a			JBE 0xe19897							
  daohang.go:1206	0xe1983d		488d05de773800		LEAQ go:string.*+232218(SB), AX					
  daohang.go:1206	0xe19844		bb38000000		MOVL $__major_os_version__+50(SB), BX				
  daohang.go:1206	0xe19849		31c9			XORL CX, CX							
  daohang.go:1206	0xe1984b		31ff			XORL DI, DI							
  daohang.go:1206	0xe1984d		4889fe			MOVQ DI, SI							
  daohang.go:1206	0xe19850		e86b2b70ff		CALL fmt.Errorf(SB)						
  daohang.go:1206	0xe19855		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  daohang.go:1206	0xe19859		5d			POPQ BP								
  daohang.go:1206	0xe1985a		c3			RET								
  daohang.go:1206	0xe1985b		0f1f440000		NOPL 0(AX)(AX*1)						
  daohang.go:1212	0xe19860		4883fa0b		CMPQ DX, $__major_os_version__+5(SB)				
  daohang.go:1212	0xe19864		7559			JNE 0xe198bf							
  daohang.go:1212	0xe19866		48ba466f726b466f7277	MOVQ $0x77726f466b726f46, DX					
  daohang.go:1212	0xe19870		493910			CMPQ 0(R8), DX							
  daohang.go:1212	0xe19873		754a			JNE 0xe198bf							
  daohang.go:1212	0xe19875		66418178086172		CMPW 0x8(R8), $.file+2(SB)					
  daohang.go:1212	0xe1987c		7541			JNE 0xe198bf							
  daohang.go:1212	0xe1987e		4180780a64		CMPB 0xa(R8), $.file+23(SB)					
  daohang.go:1212	0xe19883		753a			JNE 0xe198bf							
  daohang.go:1213	0xe19885		f20f10842408010000	MOVSD_XMM 0x108(SP), X0						
  daohang.go:1213	0xe1988e		0f57c9			XORPS X1, X1							
  daohang.go:1213	0xe19891		660f2ec8		UCOMISD X0, X1							
  daohang.go:1213	0xe19895		730a			JAE 0xe198a1							
  daohang.go:1221	0xe19897		31c0			XORL AX, AX							
  daohang.go:1221	0xe19899		31db			XORL BX, BX							
  daohang.go:1221	0xe1989b		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  daohang.go:1221	0xe1989f		5d			POPQ BP								
  daohang.go:1221	0xe198a0		c3			RET								
  daohang.go:1214	0xe198a1		488d0522d53700		LEAQ go:string.*+190658(SB), AX					
  daohang.go:1214	0xe198a8		bb29000000		MOVL $__major_os_version__+35(SB), BX				
  daohang.go:1214	0xe198ad		31c9			XORL CX, CX							
  daohang.go:1214	0xe198af		31ff			XORL DI, DI							
  daohang.go:1214	0xe198b1		4889fe			MOVQ DI, SI							
  daohang.go:1214	0xe198b4		e8072b70ff		CALL fmt.Errorf(SB)						
  daohang.go:1214	0xe198b9		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  daohang.go:1214	0xe198bd		5d			POPQ BP								
  daohang.go:1214	0xe198be		c3			RET								
  daohang.go:1219	0xe198bf		440f117c2428		MOVUPS X15, 0x28(SP)						
  daohang.go:1219	0xe198c5		488b8424e0000000	MOVQ 0xe0(SP), AX						
  daohang.go:1219	0xe198cd		488b9c24e8000000	MOVQ 0xe8(SP), BX						
  daohang.go:1219	0xe198d5		e8460865ff		CALL runtime.convTstring(SB)					
  daohang.go:1219	0xe198da		488d0d3f902200		LEAQ runtime.types+383264(SB), CX				
  daohang.go:1219	0xe198e1		48894c2428		MOVQ CX, 0x28(SP)						
  daohang.go:1219	0xe198e6		4889442430		MOVQ AX, 0x30(SP)						
  daohang.go:1219	0xe198eb		488d05fefb3600		LEAQ go:string.*+135144(SB), AX					
  daohang.go:1219	0xe198f2		bb1c000000		MOVL $__major_os_version__+22(SB), BX				
  daohang.go:1219	0xe198f7		488d4c2428		LEAQ 0x28(SP), CX						
  daohang.go:1219	0xe198fc		bf01000000		MOVL $__minor_os_version__(SB), DI				
  daohang.go:1219	0xe19901		4889fe			MOVQ DI, SI							
  daohang.go:1219	0xe19904		e8b72a70ff		CALL fmt.Errorf(SB)						
  daohang.go:1219	0xe19909		4883c438		ADDQ $__major_os_version__+50(SB), SP				
  daohang.go:1219	0xe1990d		5d			POPQ BP								
  daohang.go:1219	0xe1990e		c3			RET								
  daohang.go:1198	0xe1990f		e8cccb65ff		CALL runtime.morestack_noctxt.abi0(SB)				
  daohang.go:1198	0xe19914		e9e7fdffff		JMP CAS-Backend/pkg/agvcontrol.validateForkliftOperation(SB)	
  :-1			0xe19919		cc			INT $__subsystem__(SB)						
  :-1			0xe1991a		cc			INT $__subsystem__(SB)						
  :-1			0xe1991b		cc			INT $__subsystem__(SB)						
  :-1			0xe1991c		cc			INT $__subsystem__(SB)						
  :-1			0xe1991d		cc			INT $__subsystem__(SB)						
  :-1			0xe1991e		cc			INT $__subsystem__(SB)						
  :-1			0xe1991f		cc			INT $__subsystem__(SB)						

