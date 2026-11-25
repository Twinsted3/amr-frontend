TEXT CAS-Backend/pkg/agvcontrol.SendStopCommand(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:35		0xe19920		4c8d6424f0		LEAQ -0x10(SP), R12								
  kongzhi.go:35		0xe19925		4d3b6610		CMPQ R12, 0x10(R14)								
  kongzhi.go:35		0xe19929		0f8643030000		JBE 0xe19c72									
  kongzhi.go:35		0xe1992f		55			PUSHQ BP									
  kongzhi.go:35		0xe19930		4889e5			MOVQ SP, BP									
  kongzhi.go:35		0xe19933		4881ec88000000		SUBQ $.file+59(SB), SP								
  kongzhi.go:48		0xe1993a		48899c24a0000000	MOVQ BX, 0xa0(SP)								
  kongzhi.go:48		0xe19942		4889842498000000	MOVQ AX, 0x98(SP)								
  kongzhi.go:44		0xe1994a		48c74424405a010000	MOVQ $.file+269(SB), 0x40(SP)							
  kongzhi.go:44		0xe19953		48c7442448d0070000	MOVQ $__file_alignment__+1488(SB), 0x48(SP)					
  kongzhi.go:44		0xe1995c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:48		0xe19960		4885c0			TESTQ AX, AX									
  kongzhi.go:48		0xe19963		7417			JE 0xe1997c									
  kongzhi.go:48		0xe19965		488b5008		MOVQ 0x8(AX), DX								
  kongzhi.go:48		0xe19969		4c8b0da01e1a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.18(SB), R9				
  kongzhi.go:48		0xe19970		4d8b11			MOVQ 0(R9), R10									
  kongzhi.go:48		0xe19973		448b5810		MOVL 0x10(AX), R11								
  kongzhi.go:48		0xe19977		e9a9020000		JMP 0xe19c25									
  kongzhi.go:48		0xe1997c		0f10442440		MOVUPS 0x40(SP), X0								
  kongzhi.go:48		0xe19981		0f11442450		MOVUPS X0, 0x50(SP)								
  kongzhi.go:48		0xe19986		488d0db3d50502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:48		0xe1998d		488d3d0c397402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:48		0xe19994		488d35254f2f00		LEAQ runtime.types+1218752(SB), SI						
  kongzhi.go:48		0xe1999b		4c8d442450		LEAQ 0x50(SP), R8								
  kongzhi.go:48		0xe199a0		e87b8774ff		CALL encoding/binary.Write(SB)							
  kongzhi.go:48		0xe199a5		4885c0			TESTQ AX, AX									
  kongzhi.go:48		0xe199a8		752a			JNE 0xe199d4									
  kongzhi.go:53		0xe199aa		440f117c2430		MOVUPS X15, 0x30(SP)								
  kongzhi.go:48		0xe199b0		488b942498000000	MOVQ 0x98(SP), DX								
  kongzhi.go:48		0xe199b8		4885d2			TESTQ DX, DX									
  kongzhi.go:54		0xe199bb		7457			JE 0xe19a14									
  kongzhi.go:54		0xe199bd		488b5a08		MOVQ 0x8(DX), BX								
  kongzhi.go:54		0xe199c1		4c8b0d681e1a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.19(SB), R9				
  kongzhi.go:54		0xe199c8		4d8b11			MOVQ 0(R9), R10									
  kongzhi.go:54		0xe199cb		448b5a10		MOVL 0x10(DX), R11								
  kongzhi.go:54		0xe199cf		e90d020000		JMP 0xe19be1									
  kongzhi.go:49		0xe199d4		440f117c2470		MOVUPS X15, 0x70(SP)								
  kongzhi.go:48		0xe199da		4885c0			TESTQ AX, AX									
  kongzhi.go:49		0xe199dd		7404			JE 0xe199e3									
  kongzhi.go:49		0xe199df		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:49		0xe199e3		4889442470		MOVQ AX, 0x70(SP)								
  kongzhi.go:49		0xe199e8		48895c2478		MOVQ BX, 0x78(SP)								
  kongzhi.go:49		0xe199ed		488d05fc8d3600		LEAQ go:string.*+107240(SB), AX							
  kongzhi.go:49		0xe199f4		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  kongzhi.go:49		0xe199f9		488d4c2470		LEAQ 0x70(SP), CX								
  kongzhi.go:49		0xe199fe		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:49		0xe19a03		4889fe			MOVQ DI, SI									
  kongzhi.go:49		0xe19a06		e8b52970ff		CALL fmt.Errorf(SB)								
  kongzhi.go:49		0xe19a0b		4881c488000000		ADDQ $.file+59(SB), SP								
  kongzhi.go:49		0xe19a12		5d			POPQ BP										
  kongzhi.go:49		0xe19a13		c3			RET										
  kongzhi.go:54		0xe19a14		4889d0			MOVQ DX, AX									
  kongzhi.go:54		0xe19a17		488b9c24a0000000	MOVQ 0xa0(SP), BX								
  kongzhi.go:54		0xe19a1f		488d0d1ad50502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:54		0xe19a26		488d3d73387402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:54		0xe19a2d		488d35ecd12000		LEAQ runtime.types+269344(SB), SI						
  kongzhi.go:54		0xe19a34		4c8d442430		LEAQ 0x30(SP), R8								
  kongzhi.go:54		0xe19a39		e8027874ff		CALL encoding/binary.Read(SB)							
  kongzhi.go:54		0xe19a3e		6690			NOPW										
  kongzhi.go:54		0xe19a40		4885c0			TESTQ AX, AX									
  kongzhi.go:54		0xe19a43		743d			JE 0xe19a82									
  kongzhi.go:55		0xe19a45		440f117c2470		MOVUPS X15, 0x70(SP)								
  kongzhi.go:55		0xe19a4b		7404			JE 0xe19a51									
  kongzhi.go:55		0xe19a4d		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:55		0xe19a51		4889442470		MOVQ AX, 0x70(SP)								
  kongzhi.go:55		0xe19a56		48895c2478		MOVQ BX, 0x78(SP)								
  kongzhi.go:55		0xe19a5b		488d0592f93600		LEAQ go:string.*+134892(SB), AX							
  kongzhi.go:55		0xe19a62		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:55		0xe19a67		488d4c2470		LEAQ 0x70(SP), CX								
  kongzhi.go:55		0xe19a6c		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:55		0xe19a71		4889fe			MOVQ DI, SI									
  kongzhi.go:55		0xe19a74		e8472970ff		CALL fmt.Errorf(SB)								
  kongzhi.go:55		0xe19a79		4881c488000000		ADDQ $.file+59(SB), SP								
  kongzhi.go:55		0xe19a80		5d			POPQ BP										
  kongzhi.go:55		0xe19a81		c3			RET										
  kongzhi.go:64		0xe19a82		8b4c2434		MOVL 0x34(SP), CX								
  kongzhi.go:64		0xe19a86		85c9			TESTL CX, CX									
  kongzhi.go:64		0xe19a88		0f86fb000000		JBE 0xe19b89									
  kongzhi.go:65		0xe19a8e		488d050b8f2200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:65		0xe19a95		89cb			MOVL CX, BX									
  kongzhi.go:65		0xe19a97		e8c48065ff		CALL runtime.makeslice(SB)							
  kongzhi.go:65		0xe19a9c		4889442468		MOVQ AX, 0x68(SP)								
  kongzhi.go:65		0xe19aa1		8b7c2434		MOVL 0x34(SP), DI								
  kongzhi.go:65		0xe19aa5		48897c2460		MOVQ DI, 0x60(SP)								
  kongzhi.go:66		0xe19aaa		488b942498000000	MOVQ 0x98(SP), DX								
  kongzhi.go:66		0xe19ab2		488b5228		MOVQ 0x28(DX), DX								
  kongzhi.go:66		0xe19ab6		4889c3			MOVQ AX, BX									
  kongzhi.go:66		0xe19ab9		4889f9			MOVQ DI, CX									
  kongzhi.go:66		0xe19abc		488b8424a0000000	MOVQ 0xa0(SP), AX								
  kongzhi.go:66		0xe19ac4		ffd2			CALL DX										
  kongzhi.go:66		0xe19ac6		4885db			TESTQ BX, BX									
  kongzhi.go:66		0xe19ac9		743d			JE 0xe19b08									
  kongzhi.go:67		0xe19acb		440f117c2470		MOVUPS X15, 0x70(SP)								
  kongzhi.go:67		0xe19ad1		7404			JE 0xe19ad7									
  kongzhi.go:67		0xe19ad3		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:67		0xe19ad7		48895c2470		MOVQ BX, 0x70(SP)								
  kongzhi.go:67		0xe19adc		48894c2478		MOVQ CX, 0x78(SP)								
  kongzhi.go:67		0xe19ae1		488d0528f93600		LEAQ go:string.*+134920(SB), AX							
  kongzhi.go:67		0xe19ae8		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:67		0xe19aed		488d4c2470		LEAQ 0x70(SP), CX								
  kongzhi.go:67		0xe19af2		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:67		0xe19af7		4889fe			MOVQ DI, SI									
  kongzhi.go:67		0xe19afa		e8c12870ff		CALL fmt.Errorf(SB)								
  kongzhi.go:67		0xe19aff		4881c488000000		ADDQ $.file+59(SB), SP								
  kongzhi.go:67		0xe19b06		5d			POPQ BP										
  kongzhi.go:67		0xe19b07		c3			RET										
  kongzhi.go:71		0xe19b08		488d05f1c32b00		LEAQ runtime.types+986880(SB), AX						
  kongzhi.go:71		0xe19b0f		e88c7c5fff		CALL runtime.newobject(SB)							
  kongzhi.go:71		0xe19b14		4889842480000000	MOVQ AX, 0x80(SP)								
  kongzhi.go:72		0xe19b1c		488b5c2460		MOVQ 0x60(SP), BX								
  kongzhi.go:72		0xe19b21		4889d9			MOVQ BX, CX									
  kongzhi.go:72		0xe19b24		488d3d35d12000		LEAQ runtime.types+269408(SB), DI						
  kongzhi.go:72		0xe19b2b		4889c6			MOVQ AX, SI									
  kongzhi.go:72		0xe19b2e		488b442468		MOVQ 0x68(SP), AX								
  kongzhi.go:72		0xe19b33		e8a8d974ff		CALL encoding/json.Unmarshal(SB)						
  kongzhi.go:72		0xe19b38		4885c0			TESTQ AX, AX									
  kongzhi.go:72		0xe19b3b		743d			JE 0xe19b7a									
  kongzhi.go:73		0xe19b3d		440f117c2470		MOVUPS X15, 0x70(SP)								
  kongzhi.go:73		0xe19b43		7404			JE 0xe19b49									
  kongzhi.go:73		0xe19b45		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:73		0xe19b49		4889442470		MOVQ AX, 0x70(SP)								
  kongzhi.go:73		0xe19b4e		48895c2478		MOVQ BX, 0x78(SP)								
  kongzhi.go:73		0xe19b53		488d054ed43600		LEAQ go:string.*+125600(SB), AX							
  kongzhi.go:73		0xe19b5a		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  kongzhi.go:73		0xe19b5f		488d4c2470		LEAQ 0x70(SP), CX								
  kongzhi.go:73		0xe19b64		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:73		0xe19b69		4889fe			MOVQ DI, SI									
  kongzhi.go:73		0xe19b6c		e84f2870ff		CALL fmt.Errorf(SB)								
  kongzhi.go:73		0xe19b71		4881c488000000		ADDQ $.file+59(SB), SP								
  kongzhi.go:73		0xe19b78		5d			POPQ BP										
  kongzhi.go:73		0xe19b79		c3			RET										
  kongzhi.go:75		0xe19b7a		488b9c2480000000	MOVQ 0x80(SP), BX								
  kongzhi.go:75		0xe19b82		48837b2000		CMPQ 0x20(BX), $0x0								
  kongzhi.go:75		0xe19b87		750d			JNE 0xe19b96									
  kongzhi.go:81		0xe19b89		31c0			XORL AX, AX									
  kongzhi.go:81		0xe19b8b		31db			XORL BX, BX									
  kongzhi.go:81		0xe19b8d		4881c488000000		ADDQ $.file+59(SB), SP								
  kongzhi.go:81		0xe19b94		5d			POPQ BP										
  kongzhi.go:81		0xe19b95		c3			RET										
  kongzhi.go:76		0xe19b96		440f117c2470		MOVUPS X15, 0x70(SP)								
  kongzhi.go:76		0xe19b9c		488d055dc32b00		LEAQ runtime.types+986880(SB), AX						
  kongzhi.go:76		0xe19ba3		e8f8545fff		CALL runtime.convT(SB)								
  kongzhi.go:76		0xe19ba8		488d0d51c32b00		LEAQ runtime.types+986880(SB), CX						
  kongzhi.go:76		0xe19baf		48894c2470		MOVQ CX, 0x70(SP)								
  kongzhi.go:76		0xe19bb4		4889442478		MOVQ AX, 0x78(SP)								
  kongzhi.go:76		0xe19bb9		488d0580e93400		LEAQ go:string.*+56(SB), AX							
  kongzhi.go:76		0xe19bc0		bb02000000		MOVL $__minor_os_version__+1(SB), BX						
  kongzhi.go:76		0xe19bc5		488d4c2470		LEAQ 0x70(SP), CX								
  kongzhi.go:76		0xe19bca		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:76		0xe19bcf		4889fe			MOVQ DI, SI									
  kongzhi.go:76		0xe19bd2		e8e92770ff		CALL fmt.Errorf(SB)								
  kongzhi.go:76		0xe19bd7		4881c488000000		ADDQ $.file+59(SB), SP								
  kongzhi.go:76		0xe19bde		5d			POPQ BP										
  kongzhi.go:76		0xe19bdf		90			NOPL										
  kongzhi.go:76		0xe19be0		c3			RET										
  kongzhi.go:54		0xe19be1		4d89dc			MOVQ R11, R12									
  kongzhi.go:54		0xe19be4		4d21d3			ANDQ R10, R11									
  kongzhi.go:54		0xe19be7		49c1e304		SHLQ $__subsystem__+1(SB), R11							
  kongzhi.go:54		0xe19beb		4f8b6c1908		MOVQ 0x8(R9)(R11*1), R13							
  kongzhi.go:54		0xe19bf0		4939dd			CMPQ R13, BX									
  kongzhi.go:54		0xe19bf3		741e			JE 0xe19c13									
  kongzhi.go:54		0xe19bf5		4d8d5c2401		LEAQ 0x1(R12), R11								
  kongzhi.go:54		0xe19bfa		4d85ed			TESTQ R13, R13									
  kongzhi.go:54		0xe19bfd		75e2			JNE 0xe19be1									
  kongzhi.go:54		0xe19bff		488d052a1c1a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.19(SB), AX				
  kongzhi.go:54		0xe19c06		e8d5565fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:54		0xe19c0b		4889c2			MOVQ AX, DX									
  kongzhi.go:54		0xe19c0e		e901feffff		JMP 0xe19a14									
  kongzhi.go:54		0xe19c13		4f8b4c1910		MOVQ 0x10(R9)(R11*1), R9							
  kongzhi.go:54		0xe19c18		4c89ca			MOVQ R9, DX									
  kongzhi.go:54		0xe19c1b		0f1f440000		NOPL 0(AX)(AX*1)								
  kongzhi.go:54		0xe19c20		e9effdffff		JMP 0xe19a14									
  kongzhi.go:48		0xe19c25		4d89dc			MOVQ R11, R12									
  kongzhi.go:48		0xe19c28		4d21d3			ANDQ R10, R11									
  kongzhi.go:48		0xe19c2b		49c1e304		SHLQ $__subsystem__+1(SB), R11							
  kongzhi.go:48		0xe19c2f		4f8b6c1908		MOVQ 0x8(R9)(R11*1), R13							
  kongzhi.go:48		0xe19c34		4939d5			CMPQ R13, DX									
  kongzhi.go:48		0xe19c37		742c			JE 0xe19c65									
  kongzhi.go:48		0xe19c39		4d8d5c2401		LEAQ 0x1(R12), R11								
  kongzhi.go:48		0xe19c3e		6690			NOPW										
  kongzhi.go:48		0xe19c40		4d85ed			TESTQ R13, R13									
  kongzhi.go:48		0xe19c43		75e0			JNE 0xe19c25									
  kongzhi.go:48		0xe19c45		488d05c41b1a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.18(SB), AX				
  kongzhi.go:48		0xe19c4c		4889d3			MOVQ DX, BX									
  kongzhi.go:48		0xe19c4f		e88c565fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:48		0xe19c54		488b9c24a0000000	MOVQ 0xa0(SP), BX								
  kongzhi.go:48		0xe19c5c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:48		0xe19c60		e917fdffff		JMP 0xe1997c									
  kongzhi.go:48		0xe19c65		4b8b541910		MOVQ 0x10(R9)(R11*1), DX							
  kongzhi.go:48		0xe19c6a		4889d0			MOVQ DX, AX									
  kongzhi.go:48		0xe19c6d		e90afdffff		JMP 0xe1997c									
  kongzhi.go:35		0xe19c72		4889442408		MOVQ AX, 0x8(SP)								
  kongzhi.go:35		0xe19c77		48895c2410		MOVQ BX, 0x10(SP)								
  kongzhi.go:35		0xe19c7c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:35		0xe19c80		e85bc865ff		CALL runtime.morestack_noctxt.abi0(SB)						
  kongzhi.go:35		0xe19c85		488b442408		MOVQ 0x8(SP), AX								
  kongzhi.go:35		0xe19c8a		488b5c2410		MOVQ 0x10(SP), BX								
  kongzhi.go:35		0xe19c8f		e98cfcffff		JMP CAS-Backend/pkg/agvcontrol.SendStopCommand(SB)				
  :-1			0xe19c94		cc			INT $__subsystem__(SB)								
  :-1			0xe19c95		cc			INT $__subsystem__(SB)								
  :-1			0xe19c96		cc			INT $__subsystem__(SB)								
  :-1			0xe19c97		cc			INT $__subsystem__(SB)								
  :-1			0xe19c98		cc			INT $__subsystem__(SB)								
  :-1			0xe19c99		cc			INT $__subsystem__(SB)								
  :-1			0xe19c9a		cc			INT $__subsystem__(SB)								
  :-1			0xe19c9b		cc			INT $__subsystem__(SB)								
  :-1			0xe19c9c		cc			INT $__subsystem__(SB)								
  :-1			0xe19c9d		cc			INT $__subsystem__(SB)								
  :-1			0xe19c9e		cc			INT $__subsystem__(SB)								
  :-1			0xe19c9f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SendMotionCommand(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:85		0xe19ca0		4c8d642488		LEAQ -0x78(SP), R12								
  kongzhi.go:85		0xe19ca5		4d3b6610		CMPQ R12, 0x10(R14)								
  kongzhi.go:85		0xe19ca9		0f861d050000		JBE 0xe1a1cc									
  kongzhi.go:85		0xe19caf		55			PUSHQ BP									
  kongzhi.go:85		0xe19cb0		4889e5			MOVQ SP, BP									
  kongzhi.go:85		0xe19cb3		4881ecf0000000		SUBQ $.file+163(SB), SP								
  kongzhi.go:98		0xe19cba		48899c2408010000	MOVQ BX, 0x108(SP)								
  kongzhi.go:98		0xe19cc2		4889842400010000	MOVQ AX, 0x100(SP)								
  kongzhi.go:93		0xe19cca		440f117c2468		MOVUPS X15, 0x68(SP)								
  kongzhi.go:93		0xe19cd0		440f117c2478		MOVUPS X15, 0x78(SP)								
  kongzhi.go:93		0xe19cd6		440f11bc2488000000	MOVUPS X15, 0x88(SP)								
  kongzhi.go:88		0xe19cdf		f20f11442468		MOVSD_XMM X0, 0x68(SP)								
  kongzhi.go:89		0xe19ce5		f20f114c2470		MOVSD_XMM X1, 0x70(SP)								
  kongzhi.go:90		0xe19ceb		f20f11542478		MOVSD_XMM X2, 0x78(SP)								
  kongzhi.go:91		0xe19cf1		f20f119c2488000000	MOVSD_XMM X3, 0x88(SP)								
  kongzhi.go:92		0xe19cfa		4889bc2490000000	MOVQ DI, 0x90(SP)								
  kongzhi.go:93		0xe19d02		48898c2480000000	MOVQ CX, 0x80(SP)								
  kongzhi.go:97		0xe19d0a		488d05af492f00		LEAQ runtime.types+1218240(SB), AX						
  kongzhi.go:97		0xe19d11		488d5c2468		LEAQ 0x68(SP), BX								
  kongzhi.go:97		0xe19d16		e805545fff		CALL runtime.convTnoptr(SB)							
  kongzhi.go:97		0xe19d1b		4889c3			MOVQ AX, BX									
  kongzhi.go:97		0xe19d1e		488d059b492f00		LEAQ runtime.types+1218240(SB), AX						
  kongzhi.go:97		0xe19d25		e8763775ff		CALL encoding/json.Marshal(SB)							
  kongzhi.go:98		0xe19d2a		4885ff			TESTQ DI, DI									
  kongzhi.go:98		0xe19d2d		7449			JE 0xe19d78									
  kongzhi.go:99		0xe19d2f		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  kongzhi.go:99		0xe19d38		7404			JE 0xe19d3e									
  kongzhi.go:99		0xe19d3a		488b7f08		MOVQ 0x8(DI), DI								
  kongzhi.go:99		0xe19d3e		4889bc24d0000000	MOVQ DI, 0xd0(SP)								
  kongzhi.go:99		0xe19d46		4889b424d8000000	MOVQ SI, 0xd8(SP)								
  kongzhi.go:99		0xe19d4e		488d05469e3600		LEAQ go:string.*+112275(SB), AX							
  kongzhi.go:99		0xe19d55		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  kongzhi.go:99		0xe19d5a		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  kongzhi.go:99		0xe19d62		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:99		0xe19d67		4889fe			MOVQ DI, SI									
  kongzhi.go:99		0xe19d6a		e8512670ff		CALL fmt.Errorf(SB)								
  kongzhi.go:99		0xe19d6f		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:99		0xe19d76		5d			POPQ BP										
  kongzhi.go:99		0xe19d77		c3			RET										
  kongzhi.go:97		0xe19d78		48899c2498000000	MOVQ BX, 0x98(SP)								
  kongzhi.go:97		0xe19d80		48898424b8000000	MOVQ AX, 0xb8(SP)								
  kongzhi.go:109	0xe19d88		48c74424405a010000	MOVQ $.file+269(SB), 0x40(SP)							
  kongzhi.go:109	0xe19d91		48c7442448da070000	MOVQ $__file_alignment__+1498(SB), 0x48(SP)					
  kongzhi.go:107	0xe19d9a		895c2444		MOVL BX, 0x44(SP)								
  kongzhi.go:113	0xe19d9e		488d055be52b00		LEAQ runtime.types+996096(SB), AX						
  kongzhi.go:113	0xe19da5		e8f6795fff		CALL runtime.newobject(SB)							
  kongzhi.go:113	0xe19daa		48898424e8000000	MOVQ AX, 0xe8(SP)								
  kongzhi.go:114	0xe19db2		0f10442440		MOVUPS 0x40(SP), X0								
  kongzhi.go:114	0xe19db7		0f11442450		MOVUPS X0, 0x50(SP)								
  kongzhi.go:114	0xe19dbc		4889c3			MOVQ AX, BX									
  kongzhi.go:114	0xe19dbf		488d0d7ad10502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:114	0xe19dc6		488d3dd3347402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:114	0xe19dcd		488d35ec4a2f00		LEAQ runtime.types+1218752(SB), SI						
  kongzhi.go:114	0xe19dd4		4c8d442450		LEAQ 0x50(SP), R8								
  kongzhi.go:114	0xe19dd9		488d0580320502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  kongzhi.go:114	0xe19de0		e83b8374ff		CALL encoding/binary.Write(SB)							
  kongzhi.go:115	0xe19de5		4885c0			TESTQ AX, AX									
  kongzhi.go:115	0xe19de8		7449			JE 0xe19e33									
  kongzhi.go:116	0xe19dea		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  kongzhi.go:116	0xe19df3		7404			JE 0xe19df9									
  kongzhi.go:116	0xe19df5		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:116	0xe19df9		48898424d0000000	MOVQ AX, 0xd0(SP)								
  kongzhi.go:116	0xe19e01		48899c24d8000000	MOVQ BX, 0xd8(SP)								
  kongzhi.go:116	0xe19e09		488d050c8a3600		LEAQ go:string.*+107284(SB), AX							
  kongzhi.go:116	0xe19e10		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  kongzhi.go:116	0xe19e15		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  kongzhi.go:116	0xe19e1d		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:116	0xe19e22		4889fe			MOVQ DI, SI									
  kongzhi.go:116	0xe19e25		e8962570ff		CALL fmt.Errorf(SB)								
  kongzhi.go:116	0xe19e2a		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:116	0xe19e31		5d			POPQ BP										
  kongzhi.go:116	0xe19e32		c3			RET										
  buffer.go:54		0xe19e33		488b9424e8000000	MOVQ 0xe8(SP), DX								
  buffer.go:54		0xe19e3b		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe19e3f		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe19e43		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe19e46		0f827a030000		JB 0xe1a1c6									
  buffer.go:54		0xe19e4c		4c8b02			MOVQ 0(DX), R8									
  buffer.go:54		0xe19e4f		488b5210		MOVQ 0x10(DX), DX								
  buffer.go:54		0xe19e53		4829c2			SUBQ AX, DX									
  buffer.go:54		0xe19e56		4829c1			SUBQ AX, CX									
  kongzhi.go:120	0xe19e59		488bbc2498000000	MOVQ 0x98(SP), DI								
  kongzhi.go:120	0xe19e61		488d1c39		LEAQ 0(CX)(DI*1), BX								
  buffer.go:54		0xe19e65		4989d1			MOVQ DX, R9									
  buffer.go:54		0xe19e68		48f7da			NEGQ DX										
  buffer.go:54		0xe19e6b		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe19e6f		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe19e72		4c01c0			ADDQ R8, AX									
  kongzhi.go:120	0xe19e75		4939d9			CMPQ R9, BX									
  kongzhi.go:120	0xe19e78		7324			JAE 0xe19e9e									
  buffer.go:54		0xe19e7a		48894c2460		MOVQ CX, 0x60(SP)								
  kongzhi.go:120	0xe19e7f		4c89c9			MOVQ R9, CX									
  kongzhi.go:120	0xe19e82		488d35178b2200		LEAQ runtime.types+383392(SB), SI						
  kongzhi.go:120	0xe19e89		e8b27d65ff		CALL runtime.growslice(SB)							
  kongzhi.go:120	0xe19e8e		488bbc2498000000	MOVQ 0x98(SP), DI								
  kongzhi.go:120	0xe19e96		4989c9			MOVQ CX, R9									
  kongzhi.go:120	0xe19e99		488b4c2460		MOVQ 0x60(SP), CX								
  kongzhi.go:120	0xe19e9e		4c898c24a8000000	MOVQ R9, 0xa8(SP)								
  kongzhi.go:120	0xe19ea6		48899c24a0000000	MOVQ BX, 0xa0(SP)								
  kongzhi.go:120	0xe19eae		48898424c0000000	MOVQ AX, 0xc0(SP)								
  kongzhi.go:120	0xe19eb6		488d1408		LEAQ 0(AX)(CX*1), DX								
  kongzhi.go:120	0xe19eba		4889f9			MOVQ DI, CX									
  kongzhi.go:120	0xe19ebd		4889d0			MOVQ DX, AX									
  kongzhi.go:120	0xe19ec0		488b9c24b8000000	MOVQ 0xb8(SP), BX								
  kongzhi.go:120	0xe19ec8		e8f3f265ff		CALL runtime.memmove(SB)							
  kongzhi.go:123	0xe19ecd		488b942400010000	MOVQ 0x100(SP), DX								
  kongzhi.go:123	0xe19ed5		488b7250		MOVQ 0x50(DX), SI								
  kongzhi.go:123	0xe19ed9		488b842408010000	MOVQ 0x108(SP), AX								
  kongzhi.go:123	0xe19ee1		488b9c24c0000000	MOVQ 0xc0(SP), BX								
  kongzhi.go:123	0xe19ee9		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  kongzhi.go:123	0xe19ef1		488bbc24a8000000	MOVQ 0xa8(SP), DI								
  kongzhi.go:123	0xe19ef9		ffd6			CALL SI										
  kongzhi.go:123	0xe19efb		0f1f440000		NOPL 0(AX)(AX*1)								
  kongzhi.go:124	0xe19f00		4885db			TESTQ BX, BX									
  kongzhi.go:124	0xe19f03		752a			JNE 0xe19f2f									
  kongzhi.go:128	0xe19f05		440f117c2430		MOVUPS X15, 0x30(SP)								
  kongzhi.go:129	0xe19f0b		488b942400010000	MOVQ 0x100(SP), DX								
  kongzhi.go:129	0xe19f13		4885d2			TESTQ DX, DX									
  kongzhi.go:129	0xe19f16		7460			JE 0xe19f78									
  kongzhi.go:129	0xe19f18		488b5a08		MOVQ 0x8(DX), BX								
  kongzhi.go:129	0xe19f1c		4c8b0d2d191a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.20(SB), R9				
  kongzhi.go:129	0xe19f23		4d8b11			MOVQ 0(R9), R10									
  kongzhi.go:129	0xe19f26		448b5a10		MOVL 0x10(DX), R11								
  kongzhi.go:129	0xe19f2a		e957020000		JMP 0xe1a186									
  kongzhi.go:125	0xe19f2f		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  kongzhi.go:125	0xe19f38		7404			JE 0xe19f3e									
  kongzhi.go:125	0xe19f3a		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:125	0xe19f3e		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  kongzhi.go:125	0xe19f46		48898c24d8000000	MOVQ CX, 0xd8(SP)								
  kongzhi.go:125	0xe19f4e		488d056f883600		LEAQ go:string.*+107196(SB), AX							
  kongzhi.go:125	0xe19f55		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  kongzhi.go:125	0xe19f5a		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  kongzhi.go:125	0xe19f62		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:125	0xe19f67		4889fe			MOVQ DI, SI									
  kongzhi.go:125	0xe19f6a		e8512470ff		CALL fmt.Errorf(SB)								
  kongzhi.go:125	0xe19f6f		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:125	0xe19f76		5d			POPQ BP										
  kongzhi.go:125	0xe19f77		c3			RET										
  kongzhi.go:129	0xe19f78		4889d0			MOVQ DX, AX									
  kongzhi.go:129	0xe19f7b		488b9c2408010000	MOVQ 0x108(SP), BX								
  kongzhi.go:129	0xe19f83		488d0db6cf0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:129	0xe19f8a		488d3d0f337402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:129	0xe19f91		488d3588cc2000		LEAQ runtime.types+269344(SB), SI						
  kongzhi.go:129	0xe19f98		4c8d442430		LEAQ 0x30(SP), R8								
  kongzhi.go:129	0xe19f9d		0f1f00			NOPL 0(AX)									
  kongzhi.go:129	0xe19fa0		e89b7274ff		CALL encoding/binary.Read(SB)							
  kongzhi.go:129	0xe19fa5		4885c0			TESTQ AX, AX									
  kongzhi.go:129	0xe19fa8		7449			JE 0xe19ff3									
  kongzhi.go:130	0xe19faa		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  kongzhi.go:130	0xe19fb3		7404			JE 0xe19fb9									
  kongzhi.go:130	0xe19fb5		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:130	0xe19fb9		48898424d0000000	MOVQ AX, 0xd0(SP)								
  kongzhi.go:130	0xe19fc1		48899c24d8000000	MOVQ BX, 0xd8(SP)								
  kongzhi.go:130	0xe19fc9		488d0524f43600		LEAQ go:string.*+134892(SB), AX							
  kongzhi.go:130	0xe19fd0		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:130	0xe19fd5		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  kongzhi.go:130	0xe19fdd		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:130	0xe19fe2		4889fe			MOVQ DI, SI									
  kongzhi.go:130	0xe19fe5		e8d62370ff		CALL fmt.Errorf(SB)								
  kongzhi.go:130	0xe19fea		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:130	0xe19ff1		5d			POPQ BP										
  kongzhi.go:130	0xe19ff2		c3			RET										
  kongzhi.go:139	0xe19ff3		8b4c2434		MOVL 0x34(SP), CX								
  kongzhi.go:139	0xe19ff7		85c9			TESTL CX, CX									
  kongzhi.go:139	0xe19ff9		0f8623010000		JBE 0xe1a122									
  kongzhi.go:140	0xe19fff		488d059a892200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:140	0xe1a006		89cb			MOVL CX, BX									
  kongzhi.go:140	0xe1a008		e8537b65ff		CALL runtime.makeslice(SB)							
  kongzhi.go:140	0xe1a00d		48898424c8000000	MOVQ AX, 0xc8(SP)								
  kongzhi.go:140	0xe1a015		8b7c2434		MOVL 0x34(SP), DI								
  kongzhi.go:140	0xe1a019		4889bc24b0000000	MOVQ DI, 0xb0(SP)								
  kongzhi.go:141	0xe1a021		488b942400010000	MOVQ 0x100(SP), DX								
  kongzhi.go:141	0xe1a029		488b5228		MOVQ 0x28(DX), DX								
  kongzhi.go:141	0xe1a02d		4889c3			MOVQ AX, BX									
  kongzhi.go:141	0xe1a030		4889f9			MOVQ DI, CX									
  kongzhi.go:141	0xe1a033		488b842408010000	MOVQ 0x108(SP), AX								
  kongzhi.go:141	0xe1a03b		ffd2			CALL DX										
  kongzhi.go:141	0xe1a03d		0f1f00			NOPL 0(AX)									
  kongzhi.go:141	0xe1a040		4885db			TESTQ BX, BX									
  kongzhi.go:141	0xe1a043		7449			JE 0xe1a08e									
  kongzhi.go:142	0xe1a045		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  kongzhi.go:142	0xe1a04e		7404			JE 0xe1a054									
  kongzhi.go:142	0xe1a050		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:142	0xe1a054		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  kongzhi.go:142	0xe1a05c		48898c24d8000000	MOVQ CX, 0xd8(SP)								
  kongzhi.go:142	0xe1a064		488d05a5f33600		LEAQ go:string.*+134920(SB), AX							
  kongzhi.go:142	0xe1a06b		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:142	0xe1a070		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  kongzhi.go:142	0xe1a078		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:142	0xe1a07d		4889fe			MOVQ DI, SI									
  kongzhi.go:142	0xe1a080		e83b2370ff		CALL fmt.Errorf(SB)								
  kongzhi.go:142	0xe1a085		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:142	0xe1a08c		5d			POPQ BP										
  kongzhi.go:142	0xe1a08d		c3			RET										
  kongzhi.go:146	0xe1a08e		488d056bbe2b00		LEAQ runtime.types+986880(SB), AX						
  kongzhi.go:146	0xe1a095		e806775fff		CALL runtime.newobject(SB)							
  kongzhi.go:146	0xe1a09a		48898424e0000000	MOVQ AX, 0xe0(SP)								
  kongzhi.go:147	0xe1a0a2		488b9c24b0000000	MOVQ 0xb0(SP), BX								
  kongzhi.go:147	0xe1a0aa		4889d9			MOVQ BX, CX									
  kongzhi.go:147	0xe1a0ad		488d3daccb2000		LEAQ runtime.types+269408(SB), DI						
  kongzhi.go:147	0xe1a0b4		4889c6			MOVQ AX, SI									
  kongzhi.go:147	0xe1a0b7		488b8424c8000000	MOVQ 0xc8(SP), AX								
  kongzhi.go:147	0xe1a0bf		90			NOPL										
  kongzhi.go:147	0xe1a0c0		e81bd474ff		CALL encoding/json.Unmarshal(SB)						
  kongzhi.go:147	0xe1a0c5		4885c0			TESTQ AX, AX									
  kongzhi.go:147	0xe1a0c8		7449			JE 0xe1a113									
  kongzhi.go:148	0xe1a0ca		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  kongzhi.go:148	0xe1a0d3		7404			JE 0xe1a0d9									
  kongzhi.go:148	0xe1a0d5		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:148	0xe1a0d9		48898424d0000000	MOVQ AX, 0xd0(SP)								
  kongzhi.go:148	0xe1a0e1		48899c24d8000000	MOVQ BX, 0xd8(SP)								
  kongzhi.go:148	0xe1a0e9		488d05b8ce3600		LEAQ go:string.*+125600(SB), AX							
  kongzhi.go:148	0xe1a0f0		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  kongzhi.go:148	0xe1a0f5		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  kongzhi.go:148	0xe1a0fd		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:148	0xe1a102		4889fe			MOVQ DI, SI									
  kongzhi.go:148	0xe1a105		e8b62270ff		CALL fmt.Errorf(SB)								
  kongzhi.go:148	0xe1a10a		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:148	0xe1a111		5d			POPQ BP										
  kongzhi.go:148	0xe1a112		c3			RET										
  kongzhi.go:150	0xe1a113		488b9c24e0000000	MOVQ 0xe0(SP), BX								
  kongzhi.go:150	0xe1a11b		48837b2000		CMPQ 0x20(BX), $0x0								
  kongzhi.go:150	0xe1a120		750d			JNE 0xe1a12f									
  kongzhi.go:156	0xe1a122		31c0			XORL AX, AX									
  kongzhi.go:156	0xe1a124		31db			XORL BX, BX									
  kongzhi.go:156	0xe1a126		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:156	0xe1a12d		5d			POPQ BP										
  kongzhi.go:156	0xe1a12e		c3			RET										
  kongzhi.go:151	0xe1a12f		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  kongzhi.go:151	0xe1a138		488d05c1bd2b00		LEAQ runtime.types+986880(SB), AX						
  kongzhi.go:151	0xe1a13f		90			NOPL										
  kongzhi.go:151	0xe1a140		e85b4f5fff		CALL runtime.convT(SB)								
  kongzhi.go:151	0xe1a145		488d0db4bd2b00		LEAQ runtime.types+986880(SB), CX						
  kongzhi.go:151	0xe1a14c		48898c24d0000000	MOVQ CX, 0xd0(SP)								
  kongzhi.go:151	0xe1a154		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:151	0xe1a15c		488d05dde33400		LEAQ go:string.*+56(SB), AX							
  kongzhi.go:151	0xe1a163		bb02000000		MOVL $__minor_os_version__+1(SB), BX						
  kongzhi.go:151	0xe1a168		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  kongzhi.go:151	0xe1a170		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:151	0xe1a175		4889fe			MOVQ DI, SI									
  kongzhi.go:151	0xe1a178		e8432270ff		CALL fmt.Errorf(SB)								
  kongzhi.go:151	0xe1a17d		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:151	0xe1a184		5d			POPQ BP										
  kongzhi.go:151	0xe1a185		c3			RET										
  kongzhi.go:129	0xe1a186		4d89dc			MOVQ R11, R12									
  kongzhi.go:129	0xe1a189		4d21d3			ANDQ R10, R11									
  kongzhi.go:129	0xe1a18c		49c1e304		SHLQ $__subsystem__+1(SB), R11							
  kongzhi.go:129	0xe1a190		4f8b6c0b08		MOVQ 0x8(R11)(R9*1), R13							
  kongzhi.go:129	0xe1a195		4939dd			CMPQ R13, BX									
  kongzhi.go:129	0xe1a198		741f			JE 0xe1a1b9									
  kongzhi.go:129	0xe1a19a		4d8d5c2401		LEAQ 0x1(R12), R11								
  kongzhi.go:129	0xe1a19f		90			NOPL										
  kongzhi.go:129	0xe1a1a0		4d85ed			TESTQ R13, R13									
  kongzhi.go:129	0xe1a1a3		75e1			JNE 0xe1a186									
  kongzhi.go:129	0xe1a1a5		488d05a4161a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.20(SB), AX				
  kongzhi.go:129	0xe1a1ac		e82f515fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:129	0xe1a1b1		4889c2			MOVQ AX, DX									
  kongzhi.go:129	0xe1a1b4		e9bffdffff		JMP 0xe19f78									
  kongzhi.go:129	0xe1a1b9		4f8b4c0b10		MOVQ 0x10(R11)(R9*1), R9							
  kongzhi.go:129	0xe1a1be		4c89ca			MOVQ R9, DX									
  kongzhi.go:129	0xe1a1c1		e9b2fdffff		JMP 0xe19f78									
  buffer.go:54		0xe1a1c6		e8d5e665ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe1a1cb		90			NOPL										
  kongzhi.go:85		0xe1a1cc		4889442408		MOVQ AX, 0x8(SP)								
  kongzhi.go:85		0xe1a1d1		48895c2410		MOVQ BX, 0x10(SP)								
  kongzhi.go:85		0xe1a1d6		f20f11442418		MOVSD_XMM X0, 0x18(SP)								
  kongzhi.go:85		0xe1a1dc		f20f114c2420		MOVSD_XMM X1, 0x20(SP)								
  kongzhi.go:85		0xe1a1e2		f20f11542428		MOVSD_XMM X2, 0x28(SP)								
  kongzhi.go:85		0xe1a1e8		f20f115c2430		MOVSD_XMM X3, 0x30(SP)								
  kongzhi.go:85		0xe1a1ee		48894c2438		MOVQ CX, 0x38(SP)								
  kongzhi.go:85		0xe1a1f3		48897c2440		MOVQ DI, 0x40(SP)								
  kongzhi.go:85		0xe1a1f8		e8e3c265ff		CALL runtime.morestack_noctxt.abi0(SB)						
  kongzhi.go:85		0xe1a1fd		488b442408		MOVQ 0x8(SP), AX								
  kongzhi.go:85		0xe1a202		488b5c2410		MOVQ 0x10(SP), BX								
  kongzhi.go:85		0xe1a207		f20f10442418		MOVSD_XMM 0x18(SP), X0								
  kongzhi.go:85		0xe1a20d		f20f104c2420		MOVSD_XMM 0x20(SP), X1								
  kongzhi.go:85		0xe1a213		f20f10542428		MOVSD_XMM 0x28(SP), X2								
  kongzhi.go:85		0xe1a219		f20f105c2430		MOVSD_XMM 0x30(SP), X3								
  kongzhi.go:85		0xe1a21f		488b4c2438		MOVQ 0x38(SP), CX								
  kongzhi.go:85		0xe1a224		488b7c2440		MOVQ 0x40(SP), DI								
  kongzhi.go:85		0xe1a229		e972faffff		JMP CAS-Backend/pkg/agvcontrol.SendMotionCommand(SB)				
  :-1			0xe1a22e		cc			INT $__subsystem__(SB)								
  :-1			0xe1a22f		cc			INT $__subsystem__(SB)								
  :-1			0xe1a230		cc			INT $__subsystem__(SB)								
  :-1			0xe1a231		cc			INT $__subsystem__(SB)								
  :-1			0xe1a232		cc			INT $__subsystem__(SB)								
  :-1			0xe1a233		cc			INT $__subsystem__(SB)								
  :-1			0xe1a234		cc			INT $__subsystem__(SB)								
  :-1			0xe1a235		cc			INT $__subsystem__(SB)								
  :-1			0xe1a236		cc			INT $__subsystem__(SB)								
  :-1			0xe1a237		cc			INT $__subsystem__(SB)								
  :-1			0xe1a238		cc			INT $__subsystem__(SB)								
  :-1			0xe1a239		cc			INT $__subsystem__(SB)								
  :-1			0xe1a23a		cc			INT $__subsystem__(SB)								
  :-1			0xe1a23b		cc			INT $__subsystem__(SB)								
  :-1			0xe1a23c		cc			INT $__subsystem__(SB)								
  :-1			0xe1a23d		cc			INT $__subsystem__(SB)								
  :-1			0xe1a23e		cc			INT $__subsystem__(SB)								
  :-1			0xe1a23f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.QueryForkStatus(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:171	0xe1a240		4c8d6424b0		LEAQ -0x50(SP), R12								
  kongzhi.go:171	0xe1a245		4d3b6610		CMPQ R12, 0x10(R14)								
  kongzhi.go:171	0xe1a249		0f86e3040000		JBE 0xe1a732									
  kongzhi.go:171	0xe1a24f		55			PUSHQ BP									
  kongzhi.go:171	0xe1a250		4889e5			MOVQ SP, BP									
  kongzhi.go:171	0xe1a253		4881ecc8000000		SUBQ $.file+123(SB), SP								
  kongzhi.go:183	0xe1a25a		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  kongzhi.go:183	0xe1a262		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:179	0xe1a26a		48c74424405a010010	MOVQ $0x1000015a, 0x40(SP)							
  kongzhi.go:179	0xe1a273		48c744244804040000	MOVQ $__file_alignment__+516(SB), 0x48(SP)					
  kongzhi.go:179	0xe1a27c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:183	0xe1a280		4885c0			TESTQ AX, AX									
  kongzhi.go:183	0xe1a283		7417			JE 0xe1a29c									
  kongzhi.go:183	0xe1a285		488b5008		MOVQ 0x8(AX), DX								
  kongzhi.go:183	0xe1a289		4c8b0de0151a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.21(SB), R9				
  kongzhi.go:183	0xe1a290		4d8b11			MOVQ 0(R9), R10									
  kongzhi.go:183	0xe1a293		448b5810		MOVL 0x10(AX), R11								
  kongzhi.go:183	0xe1a297		e949040000		JMP 0xe1a6e5									
  kongzhi.go:183	0xe1a29c		0f10442440		MOVUPS 0x40(SP), X0								
  kongzhi.go:183	0xe1a2a1		0f11442450		MOVUPS X0, 0x50(SP)								
  kongzhi.go:183	0xe1a2a6		488d0d93cc0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:183	0xe1a2ad		488d3dec2f7402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:183	0xe1a2b4		488d3505452f00		LEAQ runtime.types+1218496(SB), SI						
  kongzhi.go:183	0xe1a2bb		4c8d442450		LEAQ 0x50(SP), R8								
  kongzhi.go:183	0xe1a2c0		e85b7e74ff		CALL encoding/binary.Write(SB)							
  kongzhi.go:183	0xe1a2c5		4885c0			TESTQ AX, AX									
  kongzhi.go:183	0xe1a2c8		755d			JNE 0xe1a327									
  kongzhi.go:190	0xe1a2ca		e8d13d69ff		CALL time.Now(SB)								
  kongzhi.go:190	0xe1a2cf		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  kongzhi.go:190	0xe1a2d9		e882a268ff		CALL time.Time.Add(SB)								
  kongzhi.go:190	0xe1a2de		488b9424d8000000	MOVQ 0xd8(SP), DX								
  kongzhi.go:190	0xe1a2e6		488b7240		MOVQ 0x40(DX), SI								
  kongzhi.go:190	0xe1a2ea		4889cf			MOVQ CX, DI									
  kongzhi.go:190	0xe1a2ed		4889d9			MOVQ BX, CX									
  kongzhi.go:190	0xe1a2f0		4889c3			MOVQ AX, BX									
  kongzhi.go:190	0xe1a2f3		488b8424e0000000	MOVQ 0xe0(SP), AX								
  kongzhi.go:190	0xe1a2fb		ffd6			CALL SI										
  kongzhi.go:193	0xe1a2fd		440f117c2430		MOVUPS X15, 0x30(SP)								
  kongzhi.go:183	0xe1a303		488b8424d8000000	MOVQ 0xd8(SP), AX								
  kongzhi.go:183	0xe1a30b		4885c0			TESTQ AX, AX									
  kongzhi.go:194	0xe1a30e		7468			JE 0xe1a378									
  kongzhi.go:194	0xe1a310		488b5808		MOVQ 0x8(AX), BX								
  kongzhi.go:194	0xe1a314		488b1575151a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.22(SB), DX				
  kongzhi.go:194	0xe1a31b		4c8b0a			MOVQ 0(DX), R9									
  kongzhi.go:194	0xe1a31e		448b5010		MOVL 0x10(AX), R10								
  kongzhi.go:194	0xe1a322		e97e030000		JMP 0xe1a6a5									
  kongzhi.go:184	0xe1a327		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)								
  kongzhi.go:184	0xe1a330		7404			JE 0xe1a336									
  kongzhi.go:184	0xe1a332		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:184	0xe1a336		48898424b0000000	MOVQ AX, 0xb0(SP)								
  kongzhi.go:184	0xe1a33e		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  kongzhi.go:184	0xe1a346		488d058bf03600		LEAQ go:string.*+134864(SB), AX							
  kongzhi.go:184	0xe1a34d		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:184	0xe1a352		488d8c24b0000000	LEAQ 0xb0(SP), CX								
  kongzhi.go:184	0xe1a35a		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:184	0xe1a35f		4889fe			MOVQ DI, SI									
  kongzhi.go:184	0xe1a362		e8592070ff		CALL fmt.Errorf(SB)								
  kongzhi.go:184	0xe1a367		4889d9			MOVQ BX, CX									
  kongzhi.go:184	0xe1a36a		4889c3			MOVQ AX, BX									
  kongzhi.go:184	0xe1a36d		31c0			XORL AX, AX									
  kongzhi.go:184	0xe1a36f		4881c4c8000000		ADDQ $.file+123(SB), SP								
  kongzhi.go:184	0xe1a376		5d			POPQ BP										
  kongzhi.go:184	0xe1a377		c3			RET										
  kongzhi.go:194	0xe1a378		488b9c24e0000000	MOVQ 0xe0(SP), BX								
  kongzhi.go:194	0xe1a380		488d0db9cb0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:194	0xe1a387		488d3d122f7402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:194	0xe1a38e		488d354bc82000		LEAQ runtime.types+269280(SB), SI						
  kongzhi.go:194	0xe1a395		4c8d442430		LEAQ 0x30(SP), R8								
  kongzhi.go:194	0xe1a39a		e8a16e74ff		CALL encoding/binary.Read(SB)							
  kongzhi.go:194	0xe1a39f		90			NOPL										
  kongzhi.go:194	0xe1a3a0		4885c0			TESTQ AX, AX									
  kongzhi.go:194	0xe1a3a3		7451			JE 0xe1a3f6									
  kongzhi.go:195	0xe1a3a5		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)								
  kongzhi.go:195	0xe1a3ae		7404			JE 0xe1a3b4									
  kongzhi.go:195	0xe1a3b0		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:195	0xe1a3b4		48898424b0000000	MOVQ AX, 0xb0(SP)								
  kongzhi.go:195	0xe1a3bc		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  kongzhi.go:195	0xe1a3c4		488d0529f03600		LEAQ go:string.*+134892(SB), AX							
  kongzhi.go:195	0xe1a3cb		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:195	0xe1a3d0		488d8c24b0000000	LEAQ 0xb0(SP), CX								
  kongzhi.go:195	0xe1a3d8		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:195	0xe1a3dd		4889fe			MOVQ DI, SI									
  kongzhi.go:195	0xe1a3e0		e8db1f70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:195	0xe1a3e5		4889d9			MOVQ BX, CX									
  kongzhi.go:195	0xe1a3e8		4889c3			MOVQ AX, BX									
  kongzhi.go:195	0xe1a3eb		31c0			XORL AX, AX									
  kongzhi.go:195	0xe1a3ed		4881c4c8000000		ADDQ $.file+123(SB), SP								
  kongzhi.go:195	0xe1a3f4		5d			POPQ BP										
  kongzhi.go:195	0xe1a3f5		c3			RET										
  kongzhi.go:204	0xe1a3f6		488d05c3452f00		LEAQ runtime.types+1219008(SB), AX						
  kongzhi.go:204	0xe1a3fd		0f1f00			NOPL 0(AX)									
  kongzhi.go:204	0xe1a400		e89b735fff		CALL runtime.newobject(SB)							
  kongzhi.go:204	0xe1a405		48898424c0000000	MOVQ AX, 0xc0(SP)								
  kongzhi.go:206	0xe1a40d		8b4c2434		MOVL 0x34(SP), CX								
  kongzhi.go:206	0xe1a411		85c9			TESTL CX, CX									
  kongzhi.go:206	0xe1a413		0f8448010000		JE 0xe1a561									
  kongzhi.go:211	0xe1a419		488d0580852200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:211	0xe1a420		89cb			MOVL CX, BX									
  kongzhi.go:211	0xe1a422		e8397765ff		CALL runtime.makeslice(SB)							
  kongzhi.go:211	0xe1a427		4889442468		MOVQ AX, 0x68(SP)								
  kongzhi.go:211	0xe1a42c		8b7c2434		MOVL 0x34(SP), DI								
  kongzhi.go:211	0xe1a430		48897c2460		MOVQ DI, 0x60(SP)								
  kongzhi.go:212	0xe1a435		488b9424d8000000	MOVQ 0xd8(SP), DX								
  kongzhi.go:212	0xe1a43d		488b5228		MOVQ 0x28(DX), DX								
  kongzhi.go:212	0xe1a441		4889c3			MOVQ AX, BX									
  kongzhi.go:212	0xe1a444		4889f9			MOVQ DI, CX									
  kongzhi.go:212	0xe1a447		488b8424e0000000	MOVQ 0xe0(SP), AX								
  kongzhi.go:212	0xe1a44f		ffd2			CALL DX										
  kongzhi.go:212	0xe1a451		4885db			TESTQ BX, BX									
  kongzhi.go:212	0xe1a454		7452			JE 0xe1a4a8									
  kongzhi.go:213	0xe1a456		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)								
  kongzhi.go:213	0xe1a45f		90			NOPL										
  kongzhi.go:213	0xe1a460		7404			JE 0xe1a466									
  kongzhi.go:213	0xe1a462		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:213	0xe1a466		48899c24b0000000	MOVQ BX, 0xb0(SP)								
  kongzhi.go:213	0xe1a46e		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  kongzhi.go:213	0xe1a476		488d0593ef3600		LEAQ go:string.*+134920(SB), AX							
  kongzhi.go:213	0xe1a47d		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:213	0xe1a482		488d8c24b0000000	LEAQ 0xb0(SP), CX								
  kongzhi.go:213	0xe1a48a		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:213	0xe1a48f		4889fe			MOVQ DI, SI									
  kongzhi.go:213	0xe1a492		e8291f70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:213	0xe1a497		4889d9			MOVQ BX, CX									
  kongzhi.go:213	0xe1a49a		4889c3			MOVQ AX, BX									
  kongzhi.go:213	0xe1a49d		31c0			XORL AX, AX									
  kongzhi.go:213	0xe1a49f		4881c4c8000000		ADDQ $.file+123(SB), SP								
  kongzhi.go:213	0xe1a4a6		5d			POPQ BP										
  kongzhi.go:213	0xe1a4a7		c3			RET										
  kongzhi.go:217	0xe1a4a8		488b442468		MOVQ 0x68(SP), AX								
  kongzhi.go:217	0xe1a4ad		488b5c2460		MOVQ 0x60(SP), BX								
  kongzhi.go:217	0xe1a4b2		4889d9			MOVQ BX, CX									
  kongzhi.go:217	0xe1a4b5		488d3de4c92000		LEAQ runtime.types+269984(SB), DI						
  kongzhi.go:217	0xe1a4bc		488bb424c0000000	MOVQ 0xc0(SP), SI								
  kongzhi.go:217	0xe1a4c4		e817d074ff		CALL encoding/json.Unmarshal(SB)						
  kongzhi.go:217	0xe1a4c9		4885c0			TESTQ AX, AX									
  kongzhi.go:217	0xe1a4cc		0f8487000000		JE 0xe1a559									
  kongzhi.go:218	0xe1a4d2		440f11bc2490000000	MOVUPS X15, 0x90(SP)								
  kongzhi.go:218	0xe1a4db		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)								
  kongzhi.go:218	0xe1a4e4		7404			JE 0xe1a4ea									
  kongzhi.go:218	0xe1a4e6		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:218	0xe1a4ea		4889842490000000	MOVQ AX, 0x90(SP)								
  kongzhi.go:218	0xe1a4f2		48899c2498000000	MOVQ BX, 0x98(SP)								
  kongzhi.go:218	0xe1a4fa		31c0			XORL AX, AX									
  kongzhi.go:218	0xe1a4fc		488b5c2468		MOVQ 0x68(SP), BX								
  kongzhi.go:218	0xe1a501		488b4c2460		MOVQ 0x60(SP), CX								
  kongzhi.go:218	0xe1a506		e8758165ff		CALL runtime.slicebytetostring(SB)						
  kongzhi.go:218	0xe1a50b		e810fc64ff		CALL runtime.convTstring(SB)							
  kongzhi.go:218	0xe1a510		488d1509842200		LEAQ runtime.types+383264(SB), DX						
  kongzhi.go:218	0xe1a517		48899424a0000000	MOVQ DX, 0xa0(SP)								
  kongzhi.go:218	0xe1a51f		48898424a8000000	MOVQ AX, 0xa8(SP)								
  kongzhi.go:218	0xe1a527		488d05f5983700		LEAQ go:string.*+178459(SB), AX							
  kongzhi.go:218	0xe1a52e		bb26000000		MOVL $__major_os_version__+32(SB), BX						
  kongzhi.go:218	0xe1a533		488d8c2490000000	LEAQ 0x90(SP), CX								
  kongzhi.go:218	0xe1a53b		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:218	0xe1a540		4889fe			MOVQ DI, SI									
  kongzhi.go:218	0xe1a543		e8781e70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:218	0xe1a548		4889d9			MOVQ BX, CX									
  kongzhi.go:218	0xe1a54b		4889c3			MOVQ AX, BX									
  kongzhi.go:218	0xe1a54e		31c0			XORL AX, AX									
  kongzhi.go:218	0xe1a550		4881c4c8000000		ADDQ $.file+123(SB), SP								
  kongzhi.go:218	0xe1a557		5d			POPQ BP										
  kongzhi.go:218	0xe1a558		c3			RET										
  kongzhi.go:223	0xe1a559		488b8424c0000000	MOVQ 0xc0(SP), AX								
  kongzhi.go:223	0xe1a561		48833800		CMPQ 0(AX), $0x0								
  kongzhi.go:223	0xe1a565		0f8498000000		JE 0xe1a603									
  kongzhi.go:224	0xe1a56b		440f11bc2490000000	MOVUPS X15, 0x90(SP)								
  kongzhi.go:224	0xe1a574		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)								
  kongzhi.go:225	0xe1a57d		488b08			MOVQ 0(AX), CX									
  kongzhi.go:225	0xe1a580		4889c8			MOVQ CX, AX									
  kongzhi.go:225	0xe1a583		e818fb64ff		CALL runtime.convT64(SB)							
  kongzhi.go:225	0xe1a588		488d0dd1852200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:225	0xe1a58f		48898c2490000000	MOVQ CX, 0x90(SP)								
  kongzhi.go:225	0xe1a597		4889842498000000	MOVQ AX, 0x98(SP)								
  kongzhi.go:225	0xe1a59f		488b8c24c0000000	MOVQ 0xc0(SP), CX								
  kongzhi.go:225	0xe1a5a7		488b4108		MOVQ 0x8(CX), AX								
  kongzhi.go:225	0xe1a5ab		488b5910		MOVQ 0x10(CX), BX								
  kongzhi.go:225	0xe1a5af		e86cfb64ff		CALL runtime.convTstring(SB)							
  kongzhi.go:225	0xe1a5b4		488d0d65832200		LEAQ runtime.types+383264(SB), CX						
  kongzhi.go:225	0xe1a5bb		48898c24a0000000	MOVQ CX, 0xa0(SP)								
  kongzhi.go:225	0xe1a5c3		48898424a8000000	MOVQ AX, 0xa8(SP)								
  kongzhi.go:224	0xe1a5cb		488d0514793800		LEAQ go:string.*+235998(SB), AX							
  kongzhi.go:224	0xe1a5d2		bb3a000000		MOVL $__major_os_version__+52(SB), BX						
  kongzhi.go:224	0xe1a5d7		488d8c2490000000	LEAQ 0x90(SP), CX								
  kongzhi.go:224	0xe1a5df		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:224	0xe1a5e4		4889fe			MOVQ DI, SI									
  kongzhi.go:224	0xe1a5e7		e8d41d70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:224	0xe1a5ec		4889d9			MOVQ BX, CX									
  kongzhi.go:224	0xe1a5ef		4889c3			MOVQ AX, BX									
  kongzhi.go:224	0xe1a5f2		488b8424c0000000	MOVQ 0xc0(SP), AX								
  kongzhi.go:224	0xe1a5fa		4881c4c8000000		ADDQ $.file+123(SB), SP								
  kongzhi.go:224	0xe1a601		5d			POPQ BP										
  kongzhi.go:224	0xe1a602		c3			RET										
  kongzhi.go:228	0xe1a603		440f11bc2480000000	MOVUPS X15, 0x80(SP)								
  kongzhi.go:228	0xe1a60c		f20f104018		MOVSD_XMM 0x18(AX), X0								
  kongzhi.go:228	0xe1a611		66480f7ec1		MOVQ X0, CX									
  kongzhi.go:228	0xe1a616		4889c8			MOVQ CX, AX									
  kongzhi.go:228	0xe1a619		e882fa64ff		CALL runtime.convT64(SB)							
  kongzhi.go:228	0xe1a61e		488d0dbb862200		LEAQ runtime.types+384224(SB), CX						
  kongzhi.go:228	0xe1a625		48898c2480000000	MOVQ CX, 0x80(SP)								
  kongzhi.go:228	0xe1a62d		4889842488000000	MOVQ AX, 0x88(SP)								
  print.go:314		0xe1a635		488b1d447a6f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe1a63c		488d059d140502		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe1a643		488d8c2480000000	LEAQ 0x80(SP), CX								
  print.go:314		0xe1a64b		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe1a650		4889fe			MOVQ DI, SI									
  print.go:314		0xe1a653		e8085270ff		CALL fmt.Fprintln(SB)								
  kongzhi.go:230	0xe1a658		488d0dc1822200		LEAQ runtime.types+383264(SB), CX						
  kongzhi.go:230	0xe1a65f		48894c2470		MOVQ CX, 0x70(SP)								
  kongzhi.go:230	0xe1a664		488d0d15ea0402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_30(SB), CX				
  kongzhi.go:230	0xe1a66b		48894c2478		MOVQ CX, 0x78(SP)								
  print.go:314		0xe1a670		488b1d097a6f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe1a677		488d0562140502		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe1a67e		488d4c2470		LEAQ 0x70(SP), CX								
  print.go:314		0xe1a683		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe1a688		4889fe			MOVQ DI, SI									
  print.go:314		0xe1a68b		e8d05170ff		CALL fmt.Fprintln(SB)								
  kongzhi.go:231	0xe1a690		488b8424c0000000	MOVQ 0xc0(SP), AX								
  kongzhi.go:231	0xe1a698		31db			XORL BX, BX									
  kongzhi.go:231	0xe1a69a		31c9			XORL CX, CX									
  kongzhi.go:231	0xe1a69c		4881c4c8000000		ADDQ $.file+123(SB), SP								
  kongzhi.go:231	0xe1a6a3		5d			POPQ BP										
  kongzhi.go:231	0xe1a6a4		c3			RET										
  kongzhi.go:194	0xe1a6a5		4d89d3			MOVQ R10, R11									
  kongzhi.go:194	0xe1a6a8		4d21ca			ANDQ R9, R10									
  kongzhi.go:194	0xe1a6ab		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  kongzhi.go:194	0xe1a6af		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  kongzhi.go:194	0xe1a6b4		4939dc			CMPQ R12, BX									
  kongzhi.go:194	0xe1a6b7		741d			JE 0xe1a6d6									
  kongzhi.go:194	0xe1a6b9		4d8d5301		LEAQ 0x1(R11), R10								
  kongzhi.go:194	0xe1a6bd		0f1f00			NOPL 0(AX)									
  kongzhi.go:194	0xe1a6c0		4d85e4			TESTQ R12, R12									
  kongzhi.go:194	0xe1a6c3		75e0			JNE 0xe1a6a5									
  kongzhi.go:194	0xe1a6c5		488d05c4111a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.22(SB), AX				
  kongzhi.go:194	0xe1a6cc		e80f4c5fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:194	0xe1a6d1		e9a2fcffff		JMP 0xe1a378									
  kongzhi.go:194	0xe1a6d6		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  kongzhi.go:194	0xe1a6db		4889d0			MOVQ DX, AX									
  kongzhi.go:194	0xe1a6de		6690			NOPW										
  kongzhi.go:194	0xe1a6e0		e993fcffff		JMP 0xe1a378									
  kongzhi.go:183	0xe1a6e5		4d89dc			MOVQ R11, R12									
  kongzhi.go:183	0xe1a6e8		4d21d3			ANDQ R10, R11									
  kongzhi.go:183	0xe1a6eb		49c1e304		SHLQ $__subsystem__+1(SB), R11							
  kongzhi.go:183	0xe1a6ef		4f8b6c1908		MOVQ 0x8(R9)(R11*1), R13							
  kongzhi.go:183	0xe1a6f4		4939d5			CMPQ R13, DX									
  kongzhi.go:183	0xe1a6f7		742c			JE 0xe1a725									
  kongzhi.go:183	0xe1a6f9		4d8d5c2401		LEAQ 0x1(R12), R11								
  kongzhi.go:183	0xe1a6fe		6690			NOPW										
  kongzhi.go:183	0xe1a700		4d85ed			TESTQ R13, R13									
  kongzhi.go:183	0xe1a703		75e0			JNE 0xe1a6e5									
  kongzhi.go:183	0xe1a705		488d0564111a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.21(SB), AX				
  kongzhi.go:183	0xe1a70c		4889d3			MOVQ DX, BX									
  kongzhi.go:183	0xe1a70f		e8cc4b5fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:183	0xe1a714		488b9c24e0000000	MOVQ 0xe0(SP), BX								
  kongzhi.go:183	0xe1a71c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:183	0xe1a720		e977fbffff		JMP 0xe1a29c									
  kongzhi.go:183	0xe1a725		4b8b541910		MOVQ 0x10(R9)(R11*1), DX							
  kongzhi.go:183	0xe1a72a		4889d0			MOVQ DX, AX									
  kongzhi.go:183	0xe1a72d		e96afbffff		JMP 0xe1a29c									
  kongzhi.go:171	0xe1a732		4889442408		MOVQ AX, 0x8(SP)								
  kongzhi.go:171	0xe1a737		48895c2410		MOVQ BX, 0x10(SP)								
  kongzhi.go:171	0xe1a73c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:171	0xe1a740		e89bbd65ff		CALL runtime.morestack_noctxt.abi0(SB)						
  kongzhi.go:171	0xe1a745		488b442408		MOVQ 0x8(SP), AX								
  kongzhi.go:171	0xe1a74a		488b5c2410		MOVQ 0x10(SP), BX								
  kongzhi.go:171	0xe1a74f		e9ecfaffff		JMP CAS-Backend/pkg/agvcontrol.QueryForkStatus(SB)				
  :-1			0xe1a754		cc			INT $__subsystem__(SB)								
  :-1			0xe1a755		cc			INT $__subsystem__(SB)								
  :-1			0xe1a756		cc			INT $__subsystem__(SB)								
  :-1			0xe1a757		cc			INT $__subsystem__(SB)								
  :-1			0xe1a758		cc			INT $__subsystem__(SB)								
  :-1			0xe1a759		cc			INT $__subsystem__(SB)								
  :-1			0xe1a75a		cc			INT $__subsystem__(SB)								
  :-1			0xe1a75b		cc			INT $__subsystem__(SB)								
  :-1			0xe1a75c		cc			INT $__subsystem__(SB)								
  :-1			0xe1a75d		cc			INT $__subsystem__(SB)								
  :-1			0xe1a75e		cc			INT $__subsystem__(SB)								
  :-1			0xe1a75f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SendHuochaHeightCommand(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:258	0xe1a760		4c8da424c8feffff	LEAQ 0xfffffec8(SP), R12					
  kongzhi.go:258	0xe1a768		4d3b6610		CMPQ R12, 0x10(R14)						
  kongzhi.go:258	0xe1a76c		0f86e00a0000		JBE 0xe1b252							
  kongzhi.go:258	0xe1a772		55			PUSHQ BP							
  kongzhi.go:258	0xe1a773		4889e5			MOVQ SP, BP							
  kongzhi.go:258	0xe1a776		4881ecb0010000		SUBQ $.file+355(SB), SP						
  kongzhi.go:266	0xe1a77d		f20f118424d0010000	MOVSD_XMM X0, 0x1d0(SP)						
  kongzhi.go:266	0xe1a786		48899c24c8010000	MOVQ BX, 0x1c8(SP)						
  kongzhi.go:266	0xe1a78e		48898424c0010000	MOVQ AX, 0x1c0(SP)						
  kongzhi.go:260	0xe1a796		e8450865ff		CALL runtime.makemap_small(SB)					
  kongzhi.go:260	0xe1a79b		4889842490000000	MOVQ AX, 0x90(SP)						
  kongzhi.go:261	0xe1a7a3		f20f108424d0010000	MOVSD_XMM 0x1d0(SP), X0						
  kongzhi.go:261	0xe1a7ac		66480f7ec1		MOVQ X0, CX							
  kongzhi.go:261	0xe1a7b1		4889c8			MOVQ CX, AX							
  kongzhi.go:261	0xe1a7b4		e8e7f864ff		CALL runtime.convT64(SB)					
  kongzhi.go:261	0xe1a7b9		48898424c0000000	MOVQ AX, 0xc0(SP)						
  kongzhi.go:260	0xe1a7c1		488b9c2490000000	MOVQ 0x90(SP), BX						
  kongzhi.go:260	0xe1a7c9		488d0df54c3500		LEAQ go:string.*+28605(SB), CX					
  kongzhi.go:260	0xe1a7d0		bf06000000		MOVL $__major_os_version__(SB), DI				
  kongzhi.go:260	0xe1a7d5		488d05e42c2600		LEAQ runtime.types+623808(SB), AX				
  kongzhi.go:260	0xe1a7dc		0f1f4000		NOPL 0(AX)							
  kongzhi.go:260	0xe1a7e0		e83b3865ff		CALL runtime.mapassign_faststr(SB)				
  kongzhi.go:260	0xe1a7e5		488d0df4842200		LEAQ runtime.types+384224(SB), CX				
  kongzhi.go:260	0xe1a7ec		488908			MOVQ CX, 0(AX)							
  kongzhi.go:260	0xe1a7ef		833d5a33740200		CMPL runtime.writeBarrier(SB), $0x0				
  kongzhi.go:260	0xe1a7f6		750a			JNE 0xe1a802							
  kongzhi.go:260	0xe1a7f8		488b8c24c0000000	MOVQ 0xc0(SP), CX						
  kongzhi.go:260	0xe1a800		eb18			JMP 0xe1a81a							
  kongzhi.go:260	0xe1a802		e839dc65ff		CALL runtime.gcWriteBarrier2(SB)				
  kongzhi.go:260	0xe1a807		488b8c24c0000000	MOVQ 0xc0(SP), CX						
  kongzhi.go:260	0xe1a80f		49890b			MOVQ CX, 0(R11)							
  kongzhi.go:260	0xe1a812		488b5008		MOVQ 0x8(AX), DX						
  kongzhi.go:260	0xe1a816		49895308		MOVQ DX, 0x8(R11)						
  kongzhi.go:260	0xe1a81a		48894808		MOVQ CX, 0x8(AX)						
  kongzhi.go:265	0xe1a81e		488d059b2c2600		LEAQ runtime.types+623808(SB), AX				
  kongzhi.go:265	0xe1a825		488b9c2490000000	MOVQ 0x90(SP), BX						
  kongzhi.go:265	0xe1a82d		e86e2c75ff		CALL encoding/json.Marshal(SB)					
  kongzhi.go:266	0xe1a832		4885ff			TESTQ DI, DI							
  kongzhi.go:266	0xe1a835		744a			JE 0xe1a881							
  kongzhi.go:267	0xe1a837		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)						
  kongzhi.go:267	0xe1a840		7404			JE 0xe1a846							
  kongzhi.go:267	0xe1a842		488b7f08		MOVQ 0x8(DI), DI						
  kongzhi.go:267	0xe1a846		4889bc24b0000000	MOVQ DI, 0xb0(SP)						
  kongzhi.go:267	0xe1a84e		4889b424b8000000	MOVQ SI, 0xb8(SP)						
  kongzhi.go:267	0xe1a856		488d053e933600		LEAQ go:string.*+112275(SB), AX					
  kongzhi.go:267	0xe1a85d		bb17000000		MOVL $__major_os_version__+17(SB), BX				
  kongzhi.go:267	0xe1a862		488d8c24b0000000	LEAQ 0xb0(SP), CX						
  kongzhi.go:267	0xe1a86a		bf01000000		MOVL $__minor_os_version__(SB), DI				
  kongzhi.go:267	0xe1a86f		4889fe			MOVQ DI, SI							
  kongzhi.go:267	0xe1a872		e8491b70ff		CALL fmt.Errorf(SB)						
  kongzhi.go:267	0xe1a877		4881c4b0010000		ADDQ $.file+355(SB), SP						
  kongzhi.go:267	0xe1a87e		5d			POPQ BP								
  kongzhi.go:267	0xe1a87f		90			NOPL								
  kongzhi.go:267	0xe1a880		c3			RET								
  kongzhi.go:272	0xe1a881		4881fb00040000		CMPQ BX, $__file_alignment__+512(SB)				
  kongzhi.go:272	0xe1a888		0f8fa7040000		JG 0xe1ad35							
  kongzhi.go:265	0xe1a88e		48895c2470		MOVQ BX, 0x70(SP)						
  kongzhi.go:265	0xe1a893		4889842498000000	MOVQ AX, 0x98(SP)						
  kongzhi.go:276	0xe1a89b		440f11bc2468010000	MOVUPS X15, 0x168(SP)						
  kongzhi.go:276	0xe1a8a4		440f11bc2478010000	MOVUPS X15, 0x178(SP)						
  kongzhi.go:276	0xe1a8ad		4889d8			MOVQ BX, AX							
  kongzhi.go:276	0xe1a8b0		e8ebf764ff		CALL runtime.convT64(SB)					
  kongzhi.go:276	0xe1a8b5		488d0da4822200		LEAQ runtime.types+383840(SB), CX				
  kongzhi.go:276	0xe1a8bc		48898c2468010000	MOVQ CX, 0x168(SP)						
  kongzhi.go:276	0xe1a8c4		4889842470010000	MOVQ AX, 0x170(SP)						
  kongzhi.go:276	0xe1a8cc		31c0			XORL AX, AX							
  kongzhi.go:276	0xe1a8ce		488b9c2498000000	MOVQ 0x98(SP), BX						
  kongzhi.go:276	0xe1a8d6		488b4c2470		MOVQ 0x70(SP), CX						
  kongzhi.go:276	0xe1a8db		0f1f440000		NOPL 0(AX)(AX*1)						
  kongzhi.go:276	0xe1a8e0		e89b7d65ff		CALL runtime.slicebytetostring(SB)				
  kongzhi.go:276	0xe1a8e5		e836f864ff		CALL runtime.convTstring(SB)					
  kongzhi.go:276	0xe1a8ea		488d0d2f802200		LEAQ runtime.types+383264(SB), CX				
  kongzhi.go:276	0xe1a8f1		48898c2478010000	MOVQ CX, 0x178(SP)						
  kongzhi.go:276	0xe1a8f9		4889842480010000	MOVQ AX, 0x180(SP)						
  print.go:233		0xe1a901		488b1d78776f02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe1a908		488d05d1110502		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe1a90f		bf27000000		MOVL $__major_os_version__+33(SB), DI				
  print.go:233		0xe1a914		488db42468010000	LEAQ 0x168(SP), SI						
  print.go:233		0xe1a91c		41b802000000		MOVL $__minor_os_version__+1(SB), R8				
  print.go:233		0xe1a922		4d89c1			MOVQ R8, R9							
  print.go:233		0xe1a925		488d0d3ba63700		LEAQ go:string.*+182879(SB), CX					
  print.go:233		0xe1a92c		e8ef4870ff		CALL fmt.Fprintf(SB)						
  kongzhi.go:285	0xe1a931		48c74424585a010100	MOVQ $__dll_characteristics__+32762(SB), 0x58(SP)		
  kongzhi.go:285	0xe1a93a		48c744246098170000	MOVQ $__size_of_stack_commit__+1944(SB), 0x60(SP)		
  kongzhi.go:283	0xe1a943		488b4c2470		MOVQ 0x70(SP), CX						
  kongzhi.go:283	0xe1a948		894c245c		MOVL CX, 0x5c(SP)						
  kongzhi.go:279	0xe1a94c		0f10442458		MOVUPS 0x58(SP), X0						
  kongzhi.go:279	0xe1a951		0f11442448		MOVUPS X0, 0x48(SP)						
  kongzhi.go:289	0xe1a956		488d0543802200		LEAQ runtime.types+383392(SB), AX				
  kongzhi.go:289	0xe1a95d		bb10000000		MOVL $__major_os_version__+10(SB), BX				
  kongzhi.go:289	0xe1a962		4889d9			MOVQ BX, CX							
  kongzhi.go:289	0xe1a965		e8f67165ff		CALL runtime.makeslice(SB)					
  kongzhi.go:290	0xe1a96a		0fb64c2448		MOVZX 0x48(SP), CX						
  kongzhi.go:290	0xe1a96f		8808			MOVB CL, 0(AX)							
  kongzhi.go:291	0xe1a971		0fb64c2449		MOVZX 0x49(SP), CX						
  kongzhi.go:291	0xe1a976		884801			MOVB CL, 0x1(AX)						
  kongzhi.go:294	0xe1a979		0fb74c244a		MOVZX 0x4a(SP), CX						
  kongzhi.go:297	0xe1a97e		488d500a		LEAQ 0xa(AX), DX						
  binary.go:153		0xe1a982		66c1c108		ROLW $__major_os_version__+2(SB), CX				
  binary.go:152		0xe1a986		66894802		MOVW CX, 0x2(AX)						
  kongzhi.go:295	0xe1a98a		8b4c244c		MOVL 0x4c(SP), CX						
  binary.go:173		0xe1a98e		0fc9			BSWAP CX							
  binary.go:170		0xe1a990		894804			MOVL CX, 0x4(AX)						
  kongzhi.go:296	0xe1a993		0fb74c2450		MOVZX 0x50(SP), CX						
  binary.go:153		0xe1a998		66c1c108		ROLW $__major_os_version__+2(SB), CX				
  binary.go:152		0xe1a99c		66894808		MOVW CX, 0x8(AX)						
  kongzhi.go:297	0xe1a9a0		488d4c2452		LEAQ 0x52(SP), CX						
  kongzhi.go:297	0xe1a9a5		4839d1			CMPQ CX, DX							
  kongzhi.go:297	0xe1a9a8		7410			JE 0xe1a9ba							
  kongzhi.go:297	0xe1a9aa		8b4c2452		MOVL 0x52(SP), CX						
  kongzhi.go:297	0xe1a9ae		0fb7542456		MOVZX 0x56(SP), DX						
  kongzhi.go:297	0xe1a9b3		89480a			MOVL CX, 0xa(AX)						
  kongzhi.go:297	0xe1a9b6		6689500e		MOVW DX, 0xe(AX)						
  kongzhi.go:289	0xe1a9ba		48898424c0000000	MOVQ AX, 0xc0(SP)						
  kongzhi.go:295	0xe1a9c2		488d4804		LEAQ 0x4(AX), CX						
  kongzhi.go:295	0xe1a9c6		48898c24a8000000	MOVQ CX, 0xa8(SP)						
  kongzhi.go:300	0xe1a9ce		488dbc2418010000	LEAQ 0x118(SP), DI						
  kongzhi.go:300	0xe1a9d6		488d7fd0		LEAQ -0x30(DI), DI						
  kongzhi.go:300	0xe1a9da		660f1f440000		NOPW 0(AX)(AX*1)						
  kongzhi.go:300	0xe1a9e0		48896c24f0		MOVQ BP, -0x10(SP)						
  kongzhi.go:300	0xe1a9e5		488d6c24f0		LEAQ -0x10(SP), BP						
  kongzhi.go:300	0xe1a9ea		e801e165ff		CALL 0x478af0							
  kongzhi.go:300	0xe1a9ef		488b6d00		MOVQ 0(BP), BP							
  kongzhi.go:301	0xe1a9f3		0fb6542448		MOVZX 0x48(SP), DX						
  kongzhi.go:301	0xe1a9f8		488d1da17f2200		LEAQ runtime.types+383392(SB), BX				
  kongzhi.go:301	0xe1a9ff		48899c2418010000	MOVQ BX, 0x118(SP)						
  kongzhi.go:301	0xe1aa07		488d3512fd1500		LEAQ runtime.staticuint64s(SB), SI				
  kongzhi.go:301	0xe1aa0e		488d14d6		LEAQ 0(SI)(DX*8), DX						
  kongzhi.go:301	0xe1aa12		4889942420010000	MOVQ DX, 0x120(SP)						
  kongzhi.go:301	0xe1aa1a		0fb6542449		MOVZX 0x49(SP), DX						
  kongzhi.go:301	0xe1aa1f		48899c2428010000	MOVQ BX, 0x128(SP)						
  kongzhi.go:301	0xe1aa27		488d14d6		LEAQ 0(SI)(DX*8), DX						
  kongzhi.go:301	0xe1aa2b		4889942430010000	MOVQ DX, 0x130(SP)						
  kongzhi.go:301	0xe1aa33		0fb754244a		MOVZX 0x4a(SP), DX						
  kongzhi.go:301	0xe1aa38		89d0			MOVL DX, AX							
  kongzhi.go:301	0xe1aa3a		e861475fff		CALL runtime.convT16(SB)					
  kongzhi.go:301	0xe1aa3f		488d0dda7f2200		LEAQ runtime.types+383520(SB), CX				
  kongzhi.go:301	0xe1aa46		48898c2438010000	MOVQ CX, 0x138(SP)						
  kongzhi.go:301	0xe1aa4e		4889842440010000	MOVQ AX, 0x140(SP)						
  kongzhi.go:301	0xe1aa56		8b44244c		MOVL 0x4c(SP), AX						
  kongzhi.go:301	0xe1aa5a		e8c1475fff		CALL runtime.convT32(SB)					
  kongzhi.go:301	0xe1aa5f		488d0d3a802200		LEAQ runtime.types+383648(SB), CX				
  kongzhi.go:301	0xe1aa66		48898c2448010000	MOVQ CX, 0x148(SP)						
  kongzhi.go:301	0xe1aa6e		4889842450010000	MOVQ AX, 0x150(SP)						
  kongzhi.go:301	0xe1aa76		0fb7442450		MOVZX 0x50(SP), AX						
  kongzhi.go:301	0xe1aa7b		0f1f440000		NOPL 0(AX)(AX*1)						
  kongzhi.go:301	0xe1aa80		e81b475fff		CALL runtime.convT16(SB)					
  kongzhi.go:301	0xe1aa85		488d0d947f2200		LEAQ runtime.types+383520(SB), CX				
  kongzhi.go:301	0xe1aa8c		48898c2458010000	MOVQ CX, 0x158(SP)						
  kongzhi.go:301	0xe1aa94		4889842460010000	MOVQ AX, 0x160(SP)						
  kongzhi.go:309	0xe1aa9c		488b4c2470		MOVQ 0x70(SP), CX						
  kongzhi.go:309	0xe1aaa1		488d5110		LEAQ 0x10(CX), DX						
  kongzhi.go:309	0xe1aaa5		4889942488000000	MOVQ DX, 0x88(SP)						
  print.go:233		0xe1aaad		488b1dcc756f02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe1aab4		488d0525100502		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe1aabb		bf47000000		MOVL $__major_os_version__+65(SB), DI				
  print.go:233		0xe1aac0		488db42418010000	LEAQ 0x118(SP), SI						
  print.go:233		0xe1aac8		41b805000000		MOVL $__subsystem__+2(SB), R8					
  print.go:233		0xe1aace		4d89c1			MOVQ R8, R9							
  print.go:233		0xe1aad1		488d0d6ec73800		LEAQ go:string.*+257342(SB), CX					
  print.go:233		0xe1aad8		e8434770ff		CALL fmt.Fprintf(SB)						
  kongzhi.go:302	0xe1aadd		440f11bc2408010000	MOVUPS X15, 0x108(SP)						
  kongzhi.go:302	0xe1aae6		488b8424c0000000	MOVQ 0xc0(SP), AX						
  kongzhi.go:302	0xe1aaee		bb10000000		MOVL $__major_os_version__+10(SB), BX				
  kongzhi.go:302	0xe1aaf3		4889d9			MOVQ BX, CX							
  kongzhi.go:302	0xe1aaf6		e8c5f664ff		CALL runtime.convTslice(SB)					
  kongzhi.go:302	0xe1aafb		488d0d3ed72100		LEAQ runtime.types+340544(SB), CX				
  kongzhi.go:302	0xe1ab02		48898c2408010000	MOVQ CX, 0x108(SP)						
  kongzhi.go:302	0xe1ab0a		4889842410010000	MOVQ AX, 0x110(SP)						
  print.go:233		0xe1ab12		488b1d67756f02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe1ab19		488d05c00f0502		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe1ab20		bf11000000		MOVL $__major_os_version__+11(SB), DI				
  print.go:233		0xe1ab25		488db42408010000	LEAQ 0x108(SP), SI						
  print.go:233		0xe1ab2d		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233		0xe1ab33		4d89c1			MOVQ R8, R9							
  print.go:233		0xe1ab36		488d0da9213600		LEAQ go:string.*+83934(SB), CX					
  print.go:233		0xe1ab3d		0f1f00			NOPL 0(AX)							
  print.go:233		0xe1ab40		e8db4670ff		CALL fmt.Fprintf(SB)						
  kongzhi.go:306	0xe1ab45		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)						
  kongzhi.go:306	0xe1ab4e		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)						
  kongzhi.go:306	0xe1ab57		488b8424a8000000	MOVQ 0xa8(SP), AX						
  kongzhi.go:306	0xe1ab5f		bb04000000		MOVL $__subsystem__+1(SB), BX					
  kongzhi.go:306	0xe1ab64		b90c000000		MOVL $__major_os_version__+6(SB), CX				
  kongzhi.go:306	0xe1ab69		e852f664ff		CALL runtime.convTslice(SB)					
  kongzhi.go:306	0xe1ab6e		488d0dcbd62100		LEAQ runtime.types+340544(SB), CX				
  kongzhi.go:306	0xe1ab75		48898c24e8000000	MOVQ CX, 0xe8(SP)						
  kongzhi.go:306	0xe1ab7d		48898424f0000000	MOVQ AX, 0xf0(SP)						
  kongzhi.go:306	0xe1ab85		8b44244c		MOVL 0x4c(SP), AX						
  kongzhi.go:306	0xe1ab89		e892465fff		CALL runtime.convT32(SB)					
  kongzhi.go:306	0xe1ab8e		488d0d0b7f2200		LEAQ runtime.types+383648(SB), CX				
  kongzhi.go:306	0xe1ab95		48898c24f8000000	MOVQ CX, 0xf8(SP)						
  kongzhi.go:306	0xe1ab9d		4889842400010000	MOVQ AX, 0x100(SP)						
  print.go:233		0xe1aba5		488b1dd4746f02		MOVQ os.Stdout(SB), BX						
  print.go:233		0xe1abac		488d052d0f0502		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe1abb3		488d0dee6e3800		LEAQ go:string.*+234912(SB), CX					
  print.go:233		0xe1abba		bf39000000		MOVL $__major_os_version__+51(SB), DI				
  print.go:233		0xe1abbf		488db424e8000000	LEAQ 0xe8(SP), SI						
  print.go:233		0xe1abc7		41b802000000		MOVL $__minor_os_version__+1(SB), R8				
  print.go:233		0xe1abcd		4d89c1			MOVQ R8, R9							
  print.go:233		0xe1abd0		e84b4670ff		CALL fmt.Fprintf(SB)						
  kongzhi.go:309	0xe1abd5		488b9c2488000000	MOVQ 0x88(SP), BX						
  kongzhi.go:309	0xe1abdd		0f1f00			NOPL 0(AX)							
  kongzhi.go:309	0xe1abe0		4883fb10		CMPQ BX, $__major_os_version__+10(SB)				
  kongzhi.go:309	0xe1abe4		770f			JA 0xe1abf5							
  kongzhi.go:309	0xe1abe6		488b8424c0000000	MOVQ 0xc0(SP), AX						
  kongzhi.go:309	0xe1abee		b910000000		MOVL $__major_os_version__+10(SB), CX				
  kongzhi.go:309	0xe1abf3		eb1e			JMP 0xe1ac13							
  kongzhi.go:309	0xe1abf5		488b8424c0000000	MOVQ 0xc0(SP), AX						
  kongzhi.go:309	0xe1abfd		b910000000		MOVL $__major_os_version__+10(SB), CX				
  kongzhi.go:309	0xe1ac02		488b7c2470		MOVQ 0x70(SP), DI						
  kongzhi.go:309	0xe1ac07		488d35927d2200		LEAQ runtime.types+383392(SB), SI				
  kongzhi.go:309	0xe1ac0e		e82d7065ff		CALL runtime.growslice(SB)					
  kongzhi.go:309	0xe1ac13		48898c2480000000	MOVQ CX, 0x80(SP)						
  kongzhi.go:309	0xe1ac1b		48898424a0000000	MOVQ AX, 0xa0(SP)						
  kongzhi.go:309	0xe1ac23		48895c2478		MOVQ BX, 0x78(SP)						
  kongzhi.go:309	0xe1ac28		488d5010		LEAQ 0x10(AX), DX						
  kongzhi.go:309	0xe1ac2c		4889d0			MOVQ DX, AX							
  kongzhi.go:309	0xe1ac2f		488b9c2498000000	MOVQ 0x98(SP), BX						
  kongzhi.go:309	0xe1ac37		488b4c2470		MOVQ 0x70(SP), CX						
  kongzhi.go:309	0xe1ac3c		0f1f4000		NOPL 0(AX)							
  kongzhi.go:309	0xe1ac40		e87be565ff		CALL runtime.memmove(SB)					
  kongzhi.go:316	0xe1ac45		488b9424c0010000	MOVQ 0x1c0(SP), DX						
  kongzhi.go:316	0xe1ac4d		488b7250		MOVQ 0x50(DX), SI						
  kongzhi.go:316	0xe1ac51		488b8424c8010000	MOVQ 0x1c8(SP), AX						
  kongzhi.go:316	0xe1ac59		488b9c24a0000000	MOVQ 0xa0(SP), BX						
  kongzhi.go:316	0xe1ac61		488b4c2478		MOVQ 0x78(SP), CX						
  kongzhi.go:316	0xe1ac66		488bbc2480000000	MOVQ 0x80(SP), DI						
  kongzhi.go:316	0xe1ac6e		ffd6			CALL SI								
  kongzhi.go:317	0xe1ac70		4885db			TESTQ BX, BX							
  kongzhi.go:317	0xe1ac73		7577			JNE 0xe1acec							
  kongzhi.go:324	0xe1ac75		e8263469ff		CALL time.Now(SB)						
  kongzhi.go:324	0xe1ac7a		48bf00e40b5402000000	MOVQ $0x2540be400, DI						
  kongzhi.go:324	0xe1ac84		e8d79868ff		CALL time.Time.Add(SB)						
  kongzhi.go:324	0xe1ac89		488b9424c0010000	MOVQ 0x1c0(SP), DX						
  kongzhi.go:324	0xe1ac91		488b7240		MOVQ 0x40(DX), SI						
  kongzhi.go:324	0xe1ac95		4889cf			MOVQ CX, DI							
  kongzhi.go:324	0xe1ac98		4889d9			MOVQ BX, CX							
  kongzhi.go:324	0xe1ac9b		4889c3			MOVQ AX, BX							
  kongzhi.go:324	0xe1ac9e		488b8424c8010000	MOVQ 0x1c8(SP), AX						
  kongzhi.go:324	0xe1aca6		ffd6			CALL SI								
  kongzhi.go:327	0xe1aca8		488d05f17c2200		LEAQ runtime.types+383392(SB), AX				
  kongzhi.go:327	0xe1acaf		bb10000000		MOVL $__major_os_version__+10(SB), BX				
  kongzhi.go:327	0xe1acb4		4889d9			MOVQ BX, CX							
  kongzhi.go:327	0xe1acb7		e8a46e65ff		CALL runtime.makeslice(SB)					
  kongzhi.go:327	0xe1acbc		48898424c0000000	MOVQ AX, 0xc0(SP)						
  kongzhi.go:328	0xe1acc4		488b8c24c0010000	MOVQ 0x1c0(SP), CX						
  kongzhi.go:328	0xe1accc		4885c9			TESTQ CX, CX							
  kongzhi.go:328	0xe1accf		0f84b2000000		JE 0xe1ad87							
  kongzhi.go:328	0xe1acd5		488b5908		MOVQ 0x8(CX), BX						
  kongzhi.go:328	0xe1acd9		488b15d00b1a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.23(SB), DX		
  kongzhi.go:328	0xe1ace0		4c8b0a			MOVQ 0(DX), R9							
  kongzhi.go:328	0xe1ace3		448b5110		MOVL 0x10(CX), R10						
  kongzhi.go:328	0xe1ace7		e91b050000		JMP 0xe1b207							
  kongzhi.go:318	0xe1acec		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)						
  kongzhi.go:318	0xe1acf5		7404			JE 0xe1acfb							
  kongzhi.go:318	0xe1acf7		488b5b08		MOVQ 0x8(BX), BX						
  kongzhi.go:318	0xe1acfb		48899c24b0000000	MOVQ BX, 0xb0(SP)						
  kongzhi.go:318	0xe1ad03		48898c24b8000000	MOVQ CX, 0xb8(SP)						
  kongzhi.go:318	0xe1ad0b		488d05b27a3600		LEAQ go:string.*+107196(SB), AX					
  kongzhi.go:318	0xe1ad12		bb16000000		MOVL $__major_os_version__+16(SB), BX				
  kongzhi.go:318	0xe1ad17		488d8c24b0000000	LEAQ 0xb0(SP), CX						
  kongzhi.go:318	0xe1ad1f		bf01000000		MOVL $__minor_os_version__(SB), DI				
  kongzhi.go:318	0xe1ad24		4889fe			MOVQ DI, SI							
  kongzhi.go:318	0xe1ad27		e8941670ff		CALL fmt.Errorf(SB)						
  kongzhi.go:318	0xe1ad2c		4881c4b0010000		ADDQ $.file+355(SB), SP						
  kongzhi.go:318	0xe1ad33		5d			POPQ BP								
  kongzhi.go:318	0xe1ad34		c3			RET								
  kongzhi.go:273	0xe1ad35		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)						
  kongzhi.go:273	0xe1ad3e		4889d8			MOVQ BX, AX							
  kongzhi.go:273	0xe1ad41		e85af364ff		CALL runtime.convT64(SB)					
  kongzhi.go:273	0xe1ad46		488d0d137e2200		LEAQ runtime.types+383840(SB), CX				
  kongzhi.go:273	0xe1ad4d		48898c24b0000000	MOVQ CX, 0xb0(SP)						
  kongzhi.go:273	0xe1ad55		48898424b8000000	MOVQ AX, 0xb8(SP)						
  kongzhi.go:273	0xe1ad5d		488d055ec23600		LEAQ go:string.*+125626(SB), AX					
  kongzhi.go:273	0xe1ad64		bb1a000000		MOVL $__major_os_version__+20(SB), BX				
  kongzhi.go:273	0xe1ad69		488d8c24b0000000	LEAQ 0xb0(SP), CX						
  kongzhi.go:273	0xe1ad71		bf01000000		MOVL $__minor_os_version__(SB), DI				
  kongzhi.go:273	0xe1ad76		4889fe			MOVQ DI, SI							
  kongzhi.go:273	0xe1ad79		e8421670ff		CALL fmt.Errorf(SB)						
  kongzhi.go:273	0xe1ad7e		4881c4b0010000		ADDQ $.file+355(SB), SP						
  kongzhi.go:273	0xe1ad85		5d			POPQ BP								
  kongzhi.go:273	0xe1ad86		c3			RET								
  io.go:354		0xe1ad87		488b9c24c8010000	MOVQ 0x1c8(SP), BX						
  io.go:354		0xe1ad8f		bf10000000		MOVL $__major_os_version__+10(SB), DI				
  io.go:354		0xe1ad94		4889fe			MOVQ DI, SI							
  io.go:354		0xe1ad97		4989f0			MOVQ SI, R8							
  kongzhi.go:327	0xe1ad9a		4889c2			MOVQ AX, DX							
  io.go:354		0xe1ad9d		4889c8			MOVQ CX, AX							
  io.go:354		0xe1ada0		4889d1			MOVQ DX, CX							
  io.go:354		0xe1ada3		e8587e69ff		CALL io.ReadAtLeast(SB)						
  kongzhi.go:329	0xe1ada8		4885db			TESTQ BX, BX							
  kongzhi.go:329	0xe1adab		0f85fb000000		JNE 0xe1aeac							
  kongzhi.go:335	0xe1adb1		488b9424c0000000	MOVQ 0xc0(SP), DX						
  kongzhi.go:335	0xe1adb9		440fb702		MOVZX 0(DX), R8							
  kongzhi.go:334	0xe1adbd		440f117c2438		MOVUPS X15, 0x38(SP)						
  kongzhi.go:334	0xe1adc3		664489442438		MOVW R8, 0x38(SP)						
  kongzhi.go:341	0xe1adc9		4c8d420a		LEAQ 0xa(DX), R8						
  binary.go:147		0xe1adcd		440fb74a02		MOVZX 0x2(DX), R9						
  binary.go:147		0xe1add2		6641c1c108		ROLW $__major_os_version__+2(SB), R9				
  kongzhi.go:338	0xe1add7		6644894c243a		MOVW R9, 0x3a(SP)						
  binary.go:165		0xe1addd		448b4a04		MOVL 0x4(DX), R9						
  binary.go:165		0xe1ade1		410fc9			BSWAP R9							
  kongzhi.go:339	0xe1ade4		44894c243c		MOVL R9, 0x3c(SP)						
  binary.go:147		0xe1ade9		440fb74a08		MOVZX 0x8(DX), R9						
  binary.go:147		0xe1adee		6641c1c108		ROLW $__major_os_version__+2(SB), R9				
  kongzhi.go:340	0xe1adf3		6644894c2440		MOVW R9, 0x40(SP)						
  kongzhi.go:341	0xe1adf9		4c8d4c2442		LEAQ 0x42(SP), R9						
  kongzhi.go:341	0xe1adfe		6690			NOPW								
  kongzhi.go:341	0xe1ae00		4d39c1			CMPQ R9, R8							
  kongzhi.go:341	0xe1ae03		7412			JE 0xe1ae17							
  kongzhi.go:341	0xe1ae05		448b420a		MOVL 0xa(DX), R8						
  kongzhi.go:341	0xe1ae09		0fb7520e		MOVZX 0xe(DX), DX						
  kongzhi.go:341	0xe1ae0d		4489442442		MOVL R8, 0x42(SP)						
  kongzhi.go:341	0xe1ae12		6689542446		MOVW DX, 0x46(SP)						
  kongzhi.go:355	0xe1ae17		8b4c243c		MOVL 0x3c(SP), CX						
  kongzhi.go:355	0xe1ae1b		85c9			TESTL CX, CX							
  kongzhi.go:355	0xe1ae1d		764a			JBE 0xe1ae69							
  kongzhi.go:356	0xe1ae1f		488d057a7b2200		LEAQ runtime.types+383392(SB), AX				
  kongzhi.go:356	0xe1ae26		89cb			MOVL CX, BX							
  kongzhi.go:356	0xe1ae28		e8336d65ff		CALL runtime.makeslice(SB)					
  kongzhi.go:356	0xe1ae2d		48898424c0000000	MOVQ AX, 0xc0(SP)						
  kongzhi.go:356	0xe1ae35		448b44243c		MOVL 0x3c(SP), R8						
  kongzhi.go:356	0xe1ae3a		4c89842488000000	MOVQ R8, 0x88(SP)						
  kongzhi.go:328	0xe1ae42		488b9424c0010000	MOVQ 0x1c0(SP), DX						
  kongzhi.go:328	0xe1ae4a		4885d2			TESTQ DX, DX							
  kongzhi.go:357	0xe1ae4d		0f8417010000		JE 0xe1af6a							
  kongzhi.go:357	0xe1ae53		488b5a08		MOVQ 0x8(DX), BX						
  kongzhi.go:357	0xe1ae57		4c8b0d720a1a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.24(SB), R9		
  kongzhi.go:357	0xe1ae5e		4d8b11			MOVQ 0(R9), R10							
  kongzhi.go:357	0xe1ae61		8b5210			MOVL 0x10(DX), DX						
  kongzhi.go:357	0xe1ae64		e952030000		JMP 0xe1b1bb							
  kongzhi.go:388	0xe1ae69		488d15b07a2200		LEAQ runtime.types+383264(SB), DX				
  kongzhi.go:388	0xe1ae70		48899424d8000000	MOVQ DX, 0xd8(SP)						
  kongzhi.go:388	0xe1ae78		4c8d05c1e10402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_10(SB), R8		
  kongzhi.go:388	0xe1ae7f		4c898424e0000000	MOVQ R8, 0xe0(SP)						
  print.go:314		0xe1ae87		488b1df2716f02		MOVQ os.Stdout(SB), BX						
  print.go:314		0xe1ae8e		488d054b0c0502		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe1ae95		488d8c24d8000000	LEAQ 0xd8(SP), CX						
  print.go:314		0xe1ae9d		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe1aea2		4889fe			MOVQ DI, SI							
  print.go:314		0xe1aea5		e8b64970ff		CALL fmt.Fprintln(SB)						
  kongzhi.go:388	0xe1aeaa		eb70			JMP 0xe1af1c							
  kongzhi.go:330	0xe1aeac		440f11bc2488010000	MOVUPS X15, 0x188(SP)						
  kongzhi.go:330	0xe1aeb5		440f11bc2498010000	MOVUPS X15, 0x198(SP)						
  kongzhi.go:330	0xe1aebe		6690			NOPW								
  kongzhi.go:330	0xe1aec0		7404			JE 0xe1aec6							
  kongzhi.go:330	0xe1aec2		488b5b08		MOVQ 0x8(BX), BX						
  kongzhi.go:330	0xe1aec6		48899c2488010000	MOVQ BX, 0x188(SP)						
  kongzhi.go:330	0xe1aece		48898c2490010000	MOVQ CX, 0x190(SP)						
  kongzhi.go:330	0xe1aed6		e8c5f164ff		CALL runtime.convT64(SB)					
  kongzhi.go:330	0xe1aedb		488d0d7e7c2200		LEAQ runtime.types+383840(SB), CX				
  kongzhi.go:330	0xe1aee2		48898c2498010000	MOVQ CX, 0x198(SP)						
  kongzhi.go:330	0xe1aeea		48898424a0010000	MOVQ AX, 0x1a0(SP)						
  kongzhi.go:330	0xe1aef2		488d054ffa3700		LEAQ go:string.*+205888(SB), AX					
  kongzhi.go:330	0xe1aef9		bb2e000000		MOVL $__major_os_version__+40(SB), BX				
  kongzhi.go:330	0xe1aefe		488d8c2488010000	LEAQ 0x188(SP), CX						
  kongzhi.go:330	0xe1af06		bf02000000		MOVL $__minor_os_version__+1(SB), DI				
  kongzhi.go:330	0xe1af0b		4889fe			MOVQ DI, SI							
  kongzhi.go:330	0xe1af0e		e8ad1470ff		CALL fmt.Errorf(SB)						
  kongzhi.go:330	0xe1af13		4881c4b0010000		ADDQ $.file+355(SB), SP						
  kongzhi.go:330	0xe1af1a		5d			POPQ BP								
  kongzhi.go:330	0xe1af1b		c3			RET								
  kongzhi.go:391	0xe1af1c		488d15fd792200		LEAQ runtime.types+383264(SB), DX				
  kongzhi.go:391	0xe1af23		48899424c8000000	MOVQ DX, 0xc8(SP)						
  kongzhi.go:391	0xe1af2b		488d155ee10402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_33(SB), DX		
  kongzhi.go:391	0xe1af32		48899424d0000000	MOVQ DX, 0xd0(SP)						
  print.go:314		0xe1af3a		488b1d3f716f02		MOVQ os.Stdout(SB), BX						
  print.go:314		0xe1af41		488d05980b0502		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe1af48		488d8c24c8000000	LEAQ 0xc8(SP), CX						
  print.go:314		0xe1af50		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe1af55		4889fe			MOVQ DI, SI							
  print.go:314		0xe1af58		e8034970ff		CALL fmt.Fprintln(SB)						
  kongzhi.go:392	0xe1af5d		31c0			XORL AX, AX							
  kongzhi.go:392	0xe1af5f		31db			XORL BX, BX							
  kongzhi.go:392	0xe1af61		4881c4b0010000		ADDQ $.file+355(SB), SP						
  kongzhi.go:392	0xe1af68		5d			POPQ BP								
  kongzhi.go:392	0xe1af69		c3			RET								
  io.go:354		0xe1af6a		488b9c24c8010000	MOVQ 0x1c8(SP), BX						
  io.go:354		0xe1af72		4889c1			MOVQ AX, CX							
  io.go:354		0xe1af75		4c89c7			MOVQ R8, DI							
  io.go:354		0xe1af78		4889fe			MOVQ DI, SI							
  io.go:354		0xe1af7b		4889d0			MOVQ DX, AX							
  io.go:354		0xe1af7e		6690			NOPW								
  io.go:354		0xe1af80		e87b7c69ff		CALL io.ReadAtLeast(SB)						
  kongzhi.go:358	0xe1af85		4885db			TESTQ BX, BX							
  kongzhi.go:358	0xe1af88		746e			JE 0xe1aff8							
  kongzhi.go:359	0xe1af8a		440f11bc2488010000	MOVUPS X15, 0x188(SP)						
  kongzhi.go:359	0xe1af93		440f11bc2498010000	MOVUPS X15, 0x198(SP)						
  kongzhi.go:359	0xe1af9c		7404			JE 0xe1afa2							
  kongzhi.go:359	0xe1af9e		488b5b08		MOVQ 0x8(BX), BX						
  kongzhi.go:359	0xe1afa2		48899c2488010000	MOVQ BX, 0x188(SP)						
  kongzhi.go:359	0xe1afaa		48898c2490010000	MOVQ CX, 0x190(SP)						
  kongzhi.go:359	0xe1afb2		e8e9f064ff		CALL runtime.convT64(SB)					
  kongzhi.go:359	0xe1afb7		488d0da27b2200		LEAQ runtime.types+383840(SB), CX				
  kongzhi.go:359	0xe1afbe		48898c2498010000	MOVQ CX, 0x198(SP)						
  kongzhi.go:359	0xe1afc6		48898424a0010000	MOVQ AX, 0x1a0(SP)						
  kongzhi.go:359	0xe1afce		488d05e51b3800		LEAQ go:string.*+214706(SB), AX					
  kongzhi.go:359	0xe1afd5		bb31000000		MOVL $__major_os_version__+43(SB), BX				
  kongzhi.go:359	0xe1afda		488d8c2488010000	LEAQ 0x188(SP), CX						
  kongzhi.go:359	0xe1afe2		bf02000000		MOVL $__minor_os_version__+1(SB), DI				
  kongzhi.go:359	0xe1afe7		4889fe			MOVQ DI, SI							
  kongzhi.go:359	0xe1afea		e8d11370ff		CALL fmt.Errorf(SB)						
  kongzhi.go:359	0xe1afef		4881c4b0010000		ADDQ $.file+355(SB), SP						
  kongzhi.go:359	0xe1aff6		5d			POPQ BP								
  kongzhi.go:359	0xe1aff7		c3			RET								
  kongzhi.go:367	0xe1aff8		90			NOPL								
  bytes.go:97		0xe1aff9		488b8424c0000000	MOVQ 0xc0(SP), AX						
  bytes.go:97		0xe1b001		48890424		MOVQ AX, 0(SP)							
  bytes.go:97		0xe1b005		488b8c2488000000	MOVQ 0x88(SP), CX						
  bytes.go:97		0xe1b00d		48894c2408		MOVQ CX, 0x8(SP)						
  bytes.go:97		0xe1b012		48894c2410		MOVQ CX, 0x10(SP)						
  bytes.go:97		0xe1b017		c644241800		MOVB $0x0, 0x18(SP)						
  bytes.go:97		0xe1b01c		0f1f4000		NOPL 0(AX)							
  bytes.go:97		0xe1b020		e85b835eff		CALL internal/bytealg.IndexByte.abi0(SB)			
  bytes.go:97		0xe1b025		450f57ff		XORPS X15, X15							
  bytes.go:97		0xe1b029		4c8b35e0277402		MOVQ runtime.tls_g(SB), R14					
  bytes.go:97		0xe1b030		654d8b36		MOVQ GS:0(R14), R14						
  bytes.go:97		0xe1b034		4d8b36			MOVQ 0(R14), R14						
  bytes.go:97		0xe1b037		488b4c2420		MOVQ 0x20(SP), CX						
  kongzhi.go:368	0xe1b03c		4883f9ff		CMPQ CX, $-0x1							
  kongzhi.go:373	0xe1b040		488b942488000000	MOVQ 0x88(SP), DX						
  kongzhi.go:373	0xe1b048		480f44ca		CMOVE DX, CX							
  kongzhi.go:373	0xe1b04c		4839ca			CMPQ DX, CX							
  kongzhi.go:368	0xe1b04f		0f8261010000		JB 0xe1b1b6							
  kongzhi.go:373	0xe1b055		48894c2468		MOVQ CX, 0x68(SP)						
  kongzhi.go:377	0xe1b05a		488d059fae2b00		LEAQ runtime.types+986880(SB), AX				
  kongzhi.go:377	0xe1b061		e83a675fff		CALL runtime.newobject(SB)					
  kongzhi.go:377	0xe1b066		48898424a8010000	MOVQ AX, 0x1a8(SP)						
  kongzhi.go:378	0xe1b06e		488b5c2468		MOVQ 0x68(SP), BX						
  kongzhi.go:378	0xe1b073		488b8c2488000000	MOVQ 0x88(SP), CX						
  kongzhi.go:378	0xe1b07b		488d3ddebb2000		LEAQ runtime.types+269408(SB), DI				
  kongzhi.go:378	0xe1b082		4889c6			MOVQ AX, SI							
  kongzhi.go:378	0xe1b085		488b8424c0000000	MOVQ 0xc0(SP), AX						
  kongzhi.go:378	0xe1b08d		e84ec474ff		CALL encoding/json.Unmarshal(SB)				
  kongzhi.go:379	0xe1b092		4885c0			TESTQ AX, AX							
  kongzhi.go:379	0xe1b095		0f8482000000		JE 0xe1b11d							
  kongzhi.go:380	0xe1b09b		440f11bc2488010000	MOVUPS X15, 0x188(SP)						
  kongzhi.go:380	0xe1b0a4		440f11bc2498010000	MOVUPS X15, 0x198(SP)						
  kongzhi.go:380	0xe1b0ad		7404			JE 0xe1b0b3							
  kongzhi.go:380	0xe1b0af		488b4008		MOVQ 0x8(AX), AX						
  kongzhi.go:380	0xe1b0b3		4889842488010000	MOVQ AX, 0x188(SP)						
  kongzhi.go:380	0xe1b0bb		48899c2490010000	MOVQ BX, 0x190(SP)						
  kongzhi.go:380	0xe1b0c3		31c0			XORL AX, AX							
  kongzhi.go:380	0xe1b0c5		488b9c24c0000000	MOVQ 0xc0(SP), BX						
  kongzhi.go:380	0xe1b0cd		488b4c2468		MOVQ 0x68(SP), CX						
  kongzhi.go:380	0xe1b0d2		e8a97565ff		CALL runtime.slicebytetostring(SB)				
  kongzhi.go:380	0xe1b0d7		e844f064ff		CALL runtime.convTstring(SB)					
  kongzhi.go:380	0xe1b0dc		488d153d782200		LEAQ runtime.types+383264(SB), DX				
  kongzhi.go:380	0xe1b0e3		4889942498010000	MOVQ DX, 0x198(SP)						
  kongzhi.go:380	0xe1b0eb		48898424a0010000	MOVQ AX, 0x1a0(SP)						
  kongzhi.go:380	0xe1b0f3		488d054f8d3700		LEAQ go:string.*+178497(SB), AX					
  kongzhi.go:380	0xe1b0fa		bb26000000		MOVL $__major_os_version__+32(SB), BX				
  kongzhi.go:380	0xe1b0ff		488d8c2488010000	LEAQ 0x188(SP), CX						
  kongzhi.go:380	0xe1b107		bf02000000		MOVL $__minor_os_version__+1(SB), DI				
  kongzhi.go:380	0xe1b10c		4889fe			MOVQ DI, SI							
  kongzhi.go:380	0xe1b10f		e8ac1270ff		CALL fmt.Errorf(SB)						
  kongzhi.go:380	0xe1b114		4881c4b0010000		ADDQ $.file+355(SB), SP						
  kongzhi.go:380	0xe1b11b		5d			POPQ BP								
  kongzhi.go:380	0xe1b11c		c3			RET								
  kongzhi.go:384	0xe1b11d		488b9424a8010000	MOVQ 0x1a8(SP), DX						
  kongzhi.go:384	0xe1b125		48833a00		CMPQ 0(DX), $0x0						
  kongzhi.go:384	0xe1b129		0f84edfdffff		JE 0xe1af1c							
  kongzhi.go:385	0xe1b12f		440f11bc2488010000	MOVUPS X15, 0x188(SP)						
  kongzhi.go:385	0xe1b138		440f11bc2498010000	MOVUPS X15, 0x198(SP)						
  kongzhi.go:385	0xe1b141		488b02			MOVQ 0(DX), AX							
  kongzhi.go:385	0xe1b144		e857ef64ff		CALL runtime.convT64(SB)					
  kongzhi.go:385	0xe1b149		488d0d107a2200		LEAQ runtime.types+383840(SB), CX				
  kongzhi.go:385	0xe1b150		48898c2488010000	MOVQ CX, 0x188(SP)						
  kongzhi.go:385	0xe1b158		4889842490010000	MOVQ AX, 0x190(SP)						
  kongzhi.go:385	0xe1b160		488b8c24a8010000	MOVQ 0x1a8(SP), CX						
  kongzhi.go:385	0xe1b168		488b4118		MOVQ 0x18(CX), AX						
  kongzhi.go:385	0xe1b16c		488b5920		MOVQ 0x20(CX), BX						
  kongzhi.go:385	0xe1b170		e8abef64ff		CALL runtime.convTstring(SB)					
  kongzhi.go:385	0xe1b175		488d0da4772200		LEAQ runtime.types+383264(SB), CX				
  kongzhi.go:385	0xe1b17c		48898c2498010000	MOVQ CX, 0x198(SP)						
  kongzhi.go:385	0xe1b184		48898424a0010000	MOVQ AX, 0x1a0(SP)						
  kongzhi.go:385	0xe1b18c		488d05e3f73700		LEAQ go:string.*+205934(SB), AX					
  kongzhi.go:385	0xe1b193		bb2e000000		MOVL $__major_os_version__+40(SB), BX				
  kongzhi.go:385	0xe1b198		488d8c2488010000	LEAQ 0x188(SP), CX						
  kongzhi.go:385	0xe1b1a0		bf02000000		MOVL $__minor_os_version__+1(SB), DI				
  kongzhi.go:385	0xe1b1a5		4889fe			MOVQ DI, SI							
  kongzhi.go:385	0xe1b1a8		e8131270ff		CALL fmt.Errorf(SB)						
  kongzhi.go:385	0xe1b1ad		4881c4b0010000		ADDQ $.file+355(SB), SP						
  kongzhi.go:385	0xe1b1b4		5d			POPQ BP								
  kongzhi.go:385	0xe1b1b5		c3			RET								
  kongzhi.go:373	0xe1b1b6		e8a5d665ff		CALL runtime.panicSliceAcap(SB)					
  kongzhi.go:357	0xe1b1bb		4989d3			MOVQ DX, R11							
  kongzhi.go:357	0xe1b1be		4c21d2			ANDQ R10, DX							
  kongzhi.go:357	0xe1b1c1		48c1e204		SHLQ $__subsystem__+1(SB), DX					
  kongzhi.go:357	0xe1b1c5		4d8b641108		MOVQ 0x8(R9)(DX*1), R12						
  kongzhi.go:357	0xe1b1ca		4939dc			CMPQ R12, BX							
  kongzhi.go:357	0xe1b1cd		742e			JE 0xe1b1fd							
  kongzhi.go:357	0xe1b1cf		498d5301		LEAQ 0x1(R11), DX						
  kongzhi.go:357	0xe1b1d3		4d85e4			TESTQ R12, R12							
  kongzhi.go:357	0xe1b1d6		75e3			JNE 0xe1b1bb							
  kongzhi.go:357	0xe1b1d8		488d05f1061a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.24(SB), AX		
  kongzhi.go:357	0xe1b1df		90			NOPL								
  kongzhi.go:357	0xe1b1e0		e8fb405fff		CALL runtime.typeAssert(SB)					
  io.go:354		0xe1b1e5		4c8b842488000000	MOVQ 0x88(SP), R8						
  kongzhi.go:357	0xe1b1ed		4889c2			MOVQ AX, DX							
  io.go:354		0xe1b1f0		488b8424c0000000	MOVQ 0xc0(SP), AX						
  kongzhi.go:357	0xe1b1f8		e96dfdffff		JMP 0xe1af6a							
  kongzhi.go:357	0xe1b1fd		498b541110		MOVQ 0x10(R9)(DX*1), DX						
  kongzhi.go:357	0xe1b202		e963fdffff		JMP 0xe1af6a							
  kongzhi.go:328	0xe1b207		4d89d3			MOVQ R10, R11							
  kongzhi.go:328	0xe1b20a		4d21ca			ANDQ R9, R10							
  kongzhi.go:328	0xe1b20d		49c1e204		SHLQ $__subsystem__+1(SB), R10					
  kongzhi.go:328	0xe1b211		4e8b641208		MOVQ 0x8(DX)(R10*1), R12					
  kongzhi.go:328	0xe1b216		4939dc			CMPQ R12, BX							
  kongzhi.go:328	0xe1b219		742a			JE 0xe1b245							
  kongzhi.go:328	0xe1b21b		4d8d5301		LEAQ 0x1(R11), R10						
  kongzhi.go:328	0xe1b21f		90			NOPL								
  kongzhi.go:328	0xe1b220		4d85e4			TESTQ R12, R12							
  kongzhi.go:328	0xe1b223		75e2			JNE 0xe1b207							
  kongzhi.go:328	0xe1b225		488d0584061a00		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.23(SB), AX		
  kongzhi.go:328	0xe1b22c		e8af405fff		CALL runtime.typeAssert(SB)					
  kongzhi.go:328	0xe1b231		4889c1			MOVQ AX, CX							
  io.go:354		0xe1b234		488b8424c0000000	MOVQ 0xc0(SP), AX						
  io.go:354		0xe1b23c		0f1f4000		NOPL 0(AX)							
  kongzhi.go:328	0xe1b240		e942fbffff		JMP 0xe1ad87							
  kongzhi.go:328	0xe1b245		4a8b541210		MOVQ 0x10(DX)(R10*1), DX					
  kongzhi.go:328	0xe1b24a		4889d1			MOVQ DX, CX							
  kongzhi.go:328	0xe1b24d		e935fbffff		JMP 0xe1ad87							
  kongzhi.go:258	0xe1b252		4889442408		MOVQ AX, 0x8(SP)						
  kongzhi.go:258	0xe1b257		48895c2410		MOVQ BX, 0x10(SP)						
  kongzhi.go:258	0xe1b25c		f20f11442418		MOVSD_XMM X0, 0x18(SP)						
  kongzhi.go:258	0xe1b262		e879b265ff		CALL runtime.morestack_noctxt.abi0(SB)				
  kongzhi.go:258	0xe1b267		488b442408		MOVQ 0x8(SP), AX						
  kongzhi.go:258	0xe1b26c		488b5c2410		MOVQ 0x10(SP), BX						
  kongzhi.go:258	0xe1b271		f20f10442418		MOVSD_XMM 0x18(SP), X0						
  kongzhi.go:258	0xe1b277		e9e4f4ffff		JMP CAS-Backend/pkg/agvcontrol.SendHuochaHeightCommand(SB)	
  :-1			0xe1b27c		cc			INT $__subsystem__(SB)						
  :-1			0xe1b27d		cc			INT $__subsystem__(SB)						
  :-1			0xe1b27e		cc			INT $__subsystem__(SB)						
  :-1			0xe1b27f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/agvcontrol.SendStartSlamRequest(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:411	0xe1b280		4c8da42478ffffff	LEAQ 0xffffff78(SP), R12							
  kongzhi.go:411	0xe1b288		4d3b6610		CMPQ R12, 0x10(R14)								
  kongzhi.go:411	0xe1b28c		0f8654070000		JBE 0xe1b9e6									
  kongzhi.go:411	0xe1b292		55			PUSHQ BP									
  kongzhi.go:411	0xe1b293		4889e5			MOVQ SP, BP									
  kongzhi.go:411	0xe1b296		4881ec00010000		SUBQ $.file+179(SB), SP								
  kongzhi.go:411	0xe1b29d		4889842410010000	MOVQ AX, 0x110(SP)								
  kongzhi.go:411	0xe1b2a5		48899c2418010000	MOVQ BX, 0x118(SP)								
  kongzhi.go:414	0xe1b2ad		4885c0			TESTQ AX, AX									
  kongzhi.go:414	0xe1b2b0		0f84a3020000		JE 0xe1b559									
  kongzhi.go:414	0xe1b2b6		4889842410010000	MOVQ AX, 0x110(SP)								
  kongzhi.go:414	0xe1b2be		48899c2418010000	MOVQ BX, 0x118(SP)								
  kongzhi.go:424	0xe1b2c6		888c2488000000		MOVB CL, 0x88(SP)								
  kongzhi.go:424	0xe1b2cd		4889bc2490000000	MOVQ DI, 0x90(SP)								
  kongzhi.go:424	0xe1b2d5		488d05c42d2a00		LEAQ runtime.types+888992(SB), AX						
  kongzhi.go:424	0xe1b2dc		488d9c2488000000	LEAQ 0x88(SP), BX								
  kongzhi.go:424	0xe1b2e4		e8373e5fff		CALL runtime.convTnoptr(SB)							
  kongzhi.go:424	0xe1b2e9		4889c3			MOVQ AX, BX									
  kongzhi.go:424	0xe1b2ec		488d05ad2d2a00		LEAQ runtime.types+888992(SB), AX						
  kongzhi.go:424	0xe1b2f3		e8a82175ff		CALL encoding/json.Marshal(SB)							
  kongzhi.go:425	0xe1b2f8		4885ff			TESTQ DI, DI									
  kongzhi.go:425	0xe1b2fb		7451			JE 0xe1b34e									
  kongzhi.go:426	0xe1b2fd		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  kongzhi.go:426	0xe1b306		7404			JE 0xe1b30c									
  kongzhi.go:426	0xe1b308		488b7f08		MOVQ 0x8(DI), DI								
  kongzhi.go:426	0xe1b30c		4889bc24d8000000	MOVQ DI, 0xd8(SP)								
  kongzhi.go:426	0xe1b314		4889b424e0000000	MOVQ SI, 0xe0(SP)								
  kongzhi.go:426	0xe1b31c		488d0578883600		LEAQ go:string.*+112275(SB), AX							
  kongzhi.go:426	0xe1b323		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  kongzhi.go:426	0xe1b328		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  kongzhi.go:426	0xe1b330		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:426	0xe1b335		4889fe			MOVQ DI, SI									
  kongzhi.go:426	0xe1b338		e8831070ff		CALL fmt.Errorf(SB)								
  kongzhi.go:426	0xe1b33d		4889d9			MOVQ BX, CX									
  kongzhi.go:426	0xe1b340		4889c3			MOVQ AX, BX									
  kongzhi.go:426	0xe1b343		31c0			XORL AX, AX									
  kongzhi.go:426	0xe1b345		4881c400010000		ADDQ $.file+179(SB), SP								
  kongzhi.go:426	0xe1b34c		5d			POPQ BP										
  kongzhi.go:426	0xe1b34d		c3			RET										
  kongzhi.go:424	0xe1b34e		48894c2478		MOVQ CX, 0x78(SP)								
  kongzhi.go:424	0xe1b353		48895c2470		MOVQ BX, 0x70(SP)								
  kongzhi.go:424	0xe1b358		48898424a8000000	MOVQ AX, 0xa8(SP)								
  kongzhi.go:436	0xe1b360		48c74424405a010100	MOVQ $__dll_characteristics__+32762(SB), 0x40(SP)				
  kongzhi.go:436	0xe1b369		48c7442448d4170000	MOVQ $__size_of_stack_commit__+2004(SB), 0x48(SP)				
  kongzhi.go:434	0xe1b372		895c2444		MOVL BX, 0x44(SP)								
  kongzhi.go:440	0xe1b376		488d0583cf2b00		LEAQ runtime.types+996096(SB), AX						
  kongzhi.go:440	0xe1b37d		0f1f00			NOPL 0(AX)									
  kongzhi.go:440	0xe1b380		e81b645fff		CALL runtime.newobject(SB)							
  kongzhi.go:440	0xe1b385		48898424f8000000	MOVQ AX, 0xf8(SP)								
  kongzhi.go:441	0xe1b38d		0f10442440		MOVUPS 0x40(SP), X0								
  kongzhi.go:441	0xe1b392		0f11442450		MOVUPS X0, 0x50(SP)								
  kongzhi.go:441	0xe1b397		4889c3			MOVQ AX, BX									
  kongzhi.go:441	0xe1b39a		488d0d9fbb0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:441	0xe1b3a1		488d3df81e7402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:441	0xe1b3a8		488d3511352f00		LEAQ runtime.types+1218752(SB), SI						
  kongzhi.go:441	0xe1b3af		4c8d442450		LEAQ 0x50(SP), R8								
  kongzhi.go:441	0xe1b3b4		488d05a51c0502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  kongzhi.go:441	0xe1b3bb		0f1f440000		NOPL 0(AX)(AX*1)								
  kongzhi.go:441	0xe1b3c0		e85b6d74ff		CALL encoding/binary.Write(SB)							
  kongzhi.go:442	0xe1b3c5		4885c0			TESTQ AX, AX									
  kongzhi.go:442	0xe1b3c8		7451			JE 0xe1b41b									
  kongzhi.go:443	0xe1b3ca		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  kongzhi.go:443	0xe1b3d3		7404			JE 0xe1b3d9									
  kongzhi.go:443	0xe1b3d5		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:443	0xe1b3d9		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:443	0xe1b3e1		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  kongzhi.go:443	0xe1b3e9		488d05b0df3600		LEAQ go:string.*+134808(SB), AX							
  kongzhi.go:443	0xe1b3f0		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:443	0xe1b3f5		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  kongzhi.go:443	0xe1b3fd		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:443	0xe1b402		4889fe			MOVQ DI, SI									
  kongzhi.go:443	0xe1b405		e8b60f70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:443	0xe1b40a		4889d9			MOVQ BX, CX									
  kongzhi.go:443	0xe1b40d		4889c3			MOVQ AX, BX									
  kongzhi.go:443	0xe1b410		31c0			XORL AX, AX									
  kongzhi.go:443	0xe1b412		4881c400010000		ADDQ $.file+179(SB), SP								
  kongzhi.go:443	0xe1b419		5d			POPQ BP										
  kongzhi.go:443	0xe1b41a		c3			RET										
  kongzhi.go:445	0xe1b41b		488b8424f8000000	MOVQ 0xf8(SP), AX								
  kongzhi.go:445	0xe1b423		488b9c24a8000000	MOVQ 0xa8(SP), BX								
  kongzhi.go:445	0xe1b42b		488b4c2470		MOVQ 0x70(SP), CX								
  kongzhi.go:445	0xe1b430		488b7c2478		MOVQ 0x78(SP), DI								
  kongzhi.go:445	0xe1b435		e8e61071ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe1b43a		488b9424f8000000	MOVQ 0xf8(SP), DX								
  buffer.go:54		0xe1b442		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe1b446		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe1b44a		4839c8			CMPQ AX, CX									
  buffer.go:54		0xe1b44d		0f8789050000		JA 0xe1b9dc									
  kongzhi.go:448	0xe1b453		488bb42410010000	MOVQ 0x110(SP), SI								
  kongzhi.go:448	0xe1b45b		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe1b45f		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe1b462		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe1b466		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe1b469		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe1b46c		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe1b46f		48f7da			NEGQ DX										
  buffer.go:54		0xe1b472		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe1b476		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe1b479		498d1c01		LEAQ 0(R9)(AX*1), BX								
  kongzhi.go:448	0xe1b47d		488b842418010000	MOVQ 0x118(SP), AX								
  kongzhi.go:448	0xe1b485		41ffd0			CALL R8										
  kongzhi.go:449	0xe1b488		4885db			TESTQ BX, BX									
  kongzhi.go:449	0xe1b48b		757b			JNE 0xe1b508									
  kongzhi.go:454	0xe1b48d		e80e2c69ff		CALL time.Now(SB)								
  kongzhi.go:454	0xe1b492		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  kongzhi.go:454	0xe1b49c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:454	0xe1b4a0		e8bb9068ff		CALL time.Time.Add(SB)								
  kongzhi.go:454	0xe1b4a5		488b942410010000	MOVQ 0x110(SP), DX								
  kongzhi.go:454	0xe1b4ad		488b7240		MOVQ 0x40(DX), SI								
  kongzhi.go:454	0xe1b4b1		4889cf			MOVQ CX, DI									
  kongzhi.go:454	0xe1b4b4		4889d9			MOVQ BX, CX									
  kongzhi.go:454	0xe1b4b7		4889c3			MOVQ AX, BX									
  kongzhi.go:454	0xe1b4ba		488b842418010000	MOVQ 0x118(SP), AX								
  kongzhi.go:454	0xe1b4c2		ffd6			CALL SI										
  kongzhi.go:457	0xe1b4c4		488d05d5742200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:457	0xe1b4cb		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  kongzhi.go:457	0xe1b4d0		4889d9			MOVQ BX, CX									
  kongzhi.go:457	0xe1b4d3		e8886665ff		CALL runtime.makeslice(SB)							
  kongzhi.go:457	0xe1b4d8		48898424e8000000	MOVQ AX, 0xe8(SP)								
  kongzhi.go:414	0xe1b4e0		488b8c2410010000	MOVQ 0x110(SP), CX								
  kongzhi.go:414	0xe1b4e8		4885c9			TESTQ CX, CX									
  kongzhi.go:458	0xe1b4eb		0f8491000000		JE 0xe1b582									
  kongzhi.go:458	0xe1b4f1		488b5908		MOVQ 0x8(CX), BX								
  kongzhi.go:458	0xe1b4f5		488b15f4031a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.25(SB), DX				
  kongzhi.go:458	0xe1b4fc		4c8b0a			MOVQ 0(DX), R9									
  kongzhi.go:458	0xe1b4ff		448b5110		MOVL 0x10(CX), R10								
  kongzhi.go:458	0xe1b503		e98e040000		JMP 0xe1b996									
  kongzhi.go:450	0xe1b508		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  kongzhi.go:450	0xe1b511		7404			JE 0xe1b517									
  kongzhi.go:450	0xe1b513		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:450	0xe1b517		48899c24d8000000	MOVQ BX, 0xd8(SP)								
  kongzhi.go:450	0xe1b51f		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  kongzhi.go:450	0xe1b527		488d0596723600		LEAQ go:string.*+107196(SB), AX							
  kongzhi.go:450	0xe1b52e		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  kongzhi.go:450	0xe1b533		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  kongzhi.go:450	0xe1b53b		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:450	0xe1b540		4889fe			MOVQ DI, SI									
  kongzhi.go:450	0xe1b543		e8780e70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:450	0xe1b548		4889d9			MOVQ BX, CX									
  kongzhi.go:450	0xe1b54b		4889c3			MOVQ AX, BX									
  kongzhi.go:450	0xe1b54e		31c0			XORL AX, AX									
  kongzhi.go:450	0xe1b550		4881c400010000		ADDQ $.file+179(SB), SP								
  kongzhi.go:450	0xe1b557		5d			POPQ BP										
  kongzhi.go:450	0xe1b558		c3			RET										
  kongzhi.go:415	0xe1b559		488d0503ea3700		LEAQ go:string.*+203355(SB), AX							
  kongzhi.go:415	0xe1b560		bb2d000000		MOVL $__major_os_version__+39(SB), BX						
  kongzhi.go:415	0xe1b565		31c9			XORL CX, CX									
  kongzhi.go:415	0xe1b567		31ff			XORL DI, DI									
  kongzhi.go:415	0xe1b569		4889fe			MOVQ DI, SI									
  kongzhi.go:415	0xe1b56c		e84f0e70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:415	0xe1b571		4889d9			MOVQ BX, CX									
  kongzhi.go:415	0xe1b574		4889c3			MOVQ AX, BX									
  kongzhi.go:415	0xe1b577		31c0			XORL AX, AX									
  kongzhi.go:415	0xe1b579		4881c400010000		ADDQ $.file+179(SB), SP								
  kongzhi.go:415	0xe1b580		5d			POPQ BP										
  kongzhi.go:415	0xe1b581		c3			RET										
  io.go:354		0xe1b582		488b9c2418010000	MOVQ 0x118(SP), BX								
  io.go:354		0xe1b58a		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe1b58f		4889fe			MOVQ DI, SI									
  io.go:354		0xe1b592		4989f0			MOVQ SI, R8									
  kongzhi.go:457	0xe1b595		4889c2			MOVQ AX, DX									
  io.go:354		0xe1b598		4889c8			MOVQ CX, AX									
  io.go:354		0xe1b59b		4889d1			MOVQ DX, CX									
  io.go:354		0xe1b59e		6690			NOPW										
  io.go:354		0xe1b5a0		e85b7669ff		CALL io.ReadAtLeast(SB)								
  kongzhi.go:459	0xe1b5a5		4885db			TESTQ BX, BX									
  kongzhi.go:459	0xe1b5a8		0f84ff000000		JE 0xe1b6ad									
  kongzhi.go:461	0xe1b5ae		48391d0bb81900		CMPQ io.EOF(SB), BX								
  kongzhi.go:461	0xe1b5b5		7405			JE 0xe1b5bc									
  kongzhi.go:459	0xe1b5b7		4885db			TESTQ BX, BX									
  kongzhi.go:461	0xe1b5ba		eb52			JMP 0xe1b60e									
  io.go:354		0xe1b5bc		4889442468		MOVQ AX, 0x68(SP)								
  io.go:354		0xe1b5c1		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  io.go:354		0xe1b5c9		48899c2480000000	MOVQ BX, 0x80(SP)								
  kongzhi.go:461	0xe1b5d1		488b15f0b71900		MOVQ io.EOF+8(SB), DX								
  kongzhi.go:461	0xe1b5d8		4889d8			MOVQ BX, AX									
  kongzhi.go:461	0xe1b5db		4889cb			MOVQ CX, BX									
  kongzhi.go:461	0xe1b5de		4889d1			MOVQ DX, CX									
  kongzhi.go:461	0xe1b5e1		e8face5eff		CALL runtime.ifaceeq(SB)							
  kongzhi.go:461	0xe1b5e6		84c0			TESTL AL, AL									
  kongzhi.go:461	0xe1b5e8		0f8596000000		JNE 0xe1b684									
  kongzhi.go:459	0xe1b5ee		488b8c2480000000	MOVQ 0x80(SP), CX								
  kongzhi.go:459	0xe1b5f6		4885c9			TESTQ CX, CX									
  kongzhi.go:464	0xe1b5f9		488b442468		MOVQ 0x68(SP), AX								
  kongzhi.go:464	0xe1b5fe		488b8c24b0000000	MOVQ 0xb0(SP), CX								
  kongzhi.go:464	0xe1b606		488b9c2480000000	MOVQ 0x80(SP), BX								
  kongzhi.go:464	0xe1b60e		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  kongzhi.go:464	0xe1b617		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:464	0xe1b620		7404			JE 0xe1b626									
  kongzhi.go:464	0xe1b622		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:464	0xe1b626		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  kongzhi.go:464	0xe1b62e		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  kongzhi.go:464	0xe1b636		e865ea64ff		CALL runtime.convT64(SB)							
  kongzhi.go:464	0xe1b63b		488d0d1e752200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:464	0xe1b642		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  kongzhi.go:464	0xe1b64a		48898424d0000000	MOVQ AX, 0xd0(SP)								
  kongzhi.go:464	0xe1b652		488d05ff143800		LEAQ go:string.*+214608(SB), AX							
  kongzhi.go:464	0xe1b659		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:464	0xe1b65e		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  kongzhi.go:464	0xe1b666		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:464	0xe1b66b		4889fe			MOVQ DI, SI									
  kongzhi.go:464	0xe1b66e		e84d0d70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:464	0xe1b673		4889d9			MOVQ BX, CX									
  kongzhi.go:464	0xe1b676		4889c3			MOVQ AX, BX									
  kongzhi.go:464	0xe1b679		31c0			XORL AX, AX									
  kongzhi.go:464	0xe1b67b		4881c400010000		ADDQ $.file+179(SB), SP								
  kongzhi.go:464	0xe1b682		5d			POPQ BP										
  kongzhi.go:464	0xe1b683		c3			RET										
  kongzhi.go:462	0xe1b684		488d0582613600		LEAQ go:string.*+103173(SB), AX							
  kongzhi.go:462	0xe1b68b		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  kongzhi.go:462	0xe1b690		31c9			XORL CX, CX									
  kongzhi.go:462	0xe1b692		31ff			XORL DI, DI									
  kongzhi.go:462	0xe1b694		4889fe			MOVQ DI, SI									
  kongzhi.go:462	0xe1b697		e8240d70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:462	0xe1b69c		4889d9			MOVQ BX, CX									
  kongzhi.go:462	0xe1b69f		4889c3			MOVQ AX, BX									
  kongzhi.go:462	0xe1b6a2		31c0			XORL AX, AX									
  kongzhi.go:462	0xe1b6a4		4881c400010000		ADDQ $.file+179(SB), SP								
  kongzhi.go:462	0xe1b6ab		5d			POPQ BP										
  kongzhi.go:462	0xe1b6ac		c3			RET										
  kongzhi.go:468	0xe1b6ad		440f117c2430		MOVUPS X15, 0x30(SP)								
  kongzhi.go:469	0xe1b6b3		90			NOPL										
  reader.go:159		0xe1b6b4		488d0505cd2b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe1b6bb		0f1f440000		NOPL 0(AX)(AX*1)								
  reader.go:159		0xe1b6c0		e8db605fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe1b6c5		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe1b6cd		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe1b6d5		833d7424740200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe1b6dc		750a			JNE 0xe1b6e8									
  reader.go:159		0xe1b6de		488b9424e8000000	MOVQ 0xe8(SP), DX								
  reader.go:159		0xe1b6e6		eb10			JMP 0xe1b6f8									
  reader.go:159		0xe1b6e8		e833cd65ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe1b6ed		488b9424e8000000	MOVQ 0xe8(SP), DX								
  reader.go:159		0xe1b6f5		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe1b6f8		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe1b6fb		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe1b703		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  kongzhi.go:470	0xe1b70b		4889c3			MOVQ AX, BX									
  kongzhi.go:470	0xe1b70e		488d0d2bb80502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:470	0xe1b715		488d3d841b7402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:470	0xe1b71c		488d35fdb42000		LEAQ runtime.types+269344(SB), SI						
  kongzhi.go:470	0xe1b723		4c8d442430		LEAQ 0x30(SP), R8								
  kongzhi.go:470	0xe1b728		488d05b1130502		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  kongzhi.go:470	0xe1b72f		e80c5b74ff		CALL encoding/binary.Read(SB)							
  kongzhi.go:471	0xe1b734		4885c0			TESTQ AX, AX									
  kongzhi.go:471	0xe1b737		755b			JNE 0xe1b794									
  kongzhi.go:482	0xe1b739		8b4c2434		MOVL 0x34(SP), CX								
  kongzhi.go:482	0xe1b73d		0f1f00			NOPL 0(AX)									
  kongzhi.go:482	0xe1b740		85c9			TESTL CX, CX									
  kongzhi.go:482	0xe1b742		764a			JBE 0xe1b78e									
  kongzhi.go:483	0xe1b744		488d0555722200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:483	0xe1b74b		89cb			MOVL CX, BX									
  kongzhi.go:483	0xe1b74d		e80e6465ff		CALL runtime.makeslice(SB)							
  kongzhi.go:483	0xe1b752		48898424e8000000	MOVQ AX, 0xe8(SP)								
  kongzhi.go:483	0xe1b75a		448b442434		MOVL 0x34(SP), R8								
  kongzhi.go:483	0xe1b75f		4c89842498000000	MOVQ R8, 0x98(SP)								
  kongzhi.go:414	0xe1b767		488b942410010000	MOVQ 0x110(SP), DX								
  kongzhi.go:414	0xe1b76f		4885d2			TESTQ DX, DX									
  kongzhi.go:484	0xe1b772		0f8425010000		JE 0xe1b89d									
  kongzhi.go:484	0xe1b778		488b5a08		MOVQ 0x8(DX), BX								
  kongzhi.go:484	0xe1b77c		4c8b0d8d011a00		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.26(SB), R9				
  kongzhi.go:484	0xe1b783		4d8b11			MOVQ 0(R9), R10									
  kongzhi.go:484	0xe1b786		8b5210			MOVL 0x10(DX), DX								
  kongzhi.go:484	0xe1b789		e9bd010000		JMP 0xe1b94b									
  kongzhi.go:484	0xe1b78e		31c0			XORL AX, AX									
  kongzhi.go:484	0xe1b790		31c9			XORL CX, CX									
  kongzhi.go:482	0xe1b792		eb51			JMP 0xe1b7e5									
  kongzhi.go:472	0xe1b794		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  kongzhi.go:472	0xe1b79d		7404			JE 0xe1b7a3									
  kongzhi.go:472	0xe1b79f		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:472	0xe1b7a3		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:472	0xe1b7ab		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  kongzhi.go:472	0xe1b7b3		488d0502dc3600		LEAQ go:string.*+134836(SB), AX							
  kongzhi.go:472	0xe1b7ba		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:472	0xe1b7bf		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  kongzhi.go:472	0xe1b7c7		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:472	0xe1b7cc		4889fe			MOVQ DI, SI									
  kongzhi.go:472	0xe1b7cf		e8ec0b70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:472	0xe1b7d4		4889d9			MOVQ BX, CX									
  kongzhi.go:472	0xe1b7d7		4889c3			MOVQ AX, BX									
  kongzhi.go:472	0xe1b7da		31c0			XORL AX, AX									
  kongzhi.go:472	0xe1b7dc		4881c400010000		ADDQ $.file+179(SB), SP								
  kongzhi.go:472	0xe1b7e3		5d			POPQ BP										
  kongzhi.go:472	0xe1b7e4		c3			RET										
  kongzhi.go:493	0xe1b7e5		4889442460		MOVQ AX, 0x60(SP)								
  kongzhi.go:493	0xe1b7ea		48898c24a0000000	MOVQ CX, 0xa0(SP)								
  kongzhi.go:491	0xe1b7f2		488d0507a72b00		LEAQ runtime.types+986880(SB), AX						
  kongzhi.go:491	0xe1b7f9		e8a25f5fff		CALL runtime.newobject(SB)							
  kongzhi.go:492	0xe1b7fe		837c243400		CMPL 0x34(SP), $0x0								
  kongzhi.go:492	0xe1b803		0f8687000000		JBE 0xe1b890									
  kongzhi.go:491	0xe1b809		48898424f0000000	MOVQ AX, 0xf0(SP)								
  kongzhi.go:493	0xe1b811		488b5c2460		MOVQ 0x60(SP), BX								
  kongzhi.go:493	0xe1b816		4889d9			MOVQ BX, CX									
  kongzhi.go:493	0xe1b819		488d3d40b42000		LEAQ runtime.types+269408(SB), DI						
  kongzhi.go:493	0xe1b820		4889c6			MOVQ AX, SI									
  kongzhi.go:493	0xe1b823		488b8424a0000000	MOVQ 0xa0(SP), AX								
  kongzhi.go:493	0xe1b82b		e8b0bc74ff		CALL encoding/json.Unmarshal(SB)						
  kongzhi.go:494	0xe1b830		4885c0			TESTQ AX, AX									
  kongzhi.go:494	0xe1b833		7453			JE 0xe1b888									
  kongzhi.go:495	0xe1b835		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  kongzhi.go:495	0xe1b83e		6690			NOPW										
  kongzhi.go:495	0xe1b840		7404			JE 0xe1b846									
  kongzhi.go:495	0xe1b842		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:495	0xe1b846		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:495	0xe1b84e		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  kongzhi.go:495	0xe1b856		488d054bb73600		LEAQ go:string.*+125600(SB), AX							
  kongzhi.go:495	0xe1b85d		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  kongzhi.go:495	0xe1b862		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  kongzhi.go:495	0xe1b86a		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:495	0xe1b86f		4889fe			MOVQ DI, SI									
  kongzhi.go:495	0xe1b872		e8490b70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:495	0xe1b877		4889d9			MOVQ BX, CX									
  kongzhi.go:495	0xe1b87a		4889c3			MOVQ AX, BX									
  kongzhi.go:495	0xe1b87d		31c0			XORL AX, AX									
  kongzhi.go:495	0xe1b87f		4881c400010000		ADDQ $.file+179(SB), SP								
  kongzhi.go:495	0xe1b886		5d			POPQ BP										
  kongzhi.go:495	0xe1b887		c3			RET										
  kongzhi.go:502	0xe1b888		488b8424f0000000	MOVQ 0xf0(SP), AX								
  kongzhi.go:502	0xe1b890		31db			XORL BX, BX									
  kongzhi.go:502	0xe1b892		31c9			XORL CX, CX									
  kongzhi.go:502	0xe1b894		4881c400010000		ADDQ $.file+179(SB), SP								
  kongzhi.go:502	0xe1b89b		5d			POPQ BP										
  kongzhi.go:502	0xe1b89c		c3			RET										
  io.go:354		0xe1b89d		488b9c2418010000	MOVQ 0x118(SP), BX								
  io.go:354		0xe1b8a5		4889c1			MOVQ AX, CX									
  io.go:354		0xe1b8a8		4c89c7			MOVQ R8, DI									
  io.go:354		0xe1b8ab		4889fe			MOVQ DI, SI									
  io.go:354		0xe1b8ae		4889d0			MOVQ DX, AX									
  io.go:354		0xe1b8b1		e84a7369ff		CALL io.ReadAtLeast(SB)								
  kongzhi.go:485	0xe1b8b6		4885db			TESTQ BX, BX									
  kongzhi.go:485	0xe1b8b9		747b			JE 0xe1b936									
  kongzhi.go:486	0xe1b8bb		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  kongzhi.go:486	0xe1b8c4		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:486	0xe1b8cd		7404			JE 0xe1b8d3									
  kongzhi.go:486	0xe1b8cf		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:486	0xe1b8d3		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  kongzhi.go:486	0xe1b8db		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  kongzhi.go:486	0xe1b8e3		e8b8e764ff		CALL runtime.convT64(SB)							
  kongzhi.go:486	0xe1b8e8		488d0d71722200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:486	0xe1b8ef		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  kongzhi.go:486	0xe1b8f7		48898424d0000000	MOVQ AX, 0xd0(SP)								
  kongzhi.go:486	0xe1b8ff		488d0583123800		LEAQ go:string.*+214657(SB), AX							
  kongzhi.go:486	0xe1b906		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:486	0xe1b90b		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  kongzhi.go:486	0xe1b913		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:486	0xe1b918		4889fe			MOVQ DI, SI									
  kongzhi.go:486	0xe1b91b		0f1f440000		NOPL 0(AX)(AX*1)								
  kongzhi.go:486	0xe1b920		e89b0a70ff		CALL fmt.Errorf(SB)								
  kongzhi.go:486	0xe1b925		4889d9			MOVQ BX, CX									
  kongzhi.go:486	0xe1b928		4889c3			MOVQ AX, BX									
  kongzhi.go:486	0xe1b92b		31c0			XORL AX, AX									
  kongzhi.go:486	0xe1b92d		4881c400010000		ADDQ $.file+179(SB), SP								
  kongzhi.go:486	0xe1b934		5d			POPQ BP										
  kongzhi.go:486	0xe1b935		c3			RET										
  kongzhi.go:493	0xe1b936		488b842498000000	MOVQ 0x98(SP), AX								
  kongzhi.go:493	0xe1b93e		488b8c24e8000000	MOVQ 0xe8(SP), CX								
  kongzhi.go:491	0xe1b946		e99afeffff		JMP 0xe1b7e5									
  kongzhi.go:484	0xe1b94b		4989d3			MOVQ DX, R11									
  kongzhi.go:484	0xe1b94e		4c21d2			ANDQ R10, DX									
  kongzhi.go:484	0xe1b951		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  kongzhi.go:484	0xe1b955		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  kongzhi.go:484	0xe1b95a		4939dc			CMPQ R12, BX									
  kongzhi.go:484	0xe1b95d		742d			JE 0xe1b98c									
  kongzhi.go:484	0xe1b95f		498d5301		LEAQ 0x1(R11), DX								
  kongzhi.go:484	0xe1b963		4d85e4			TESTQ R12, R12									
  kongzhi.go:484	0xe1b966		75e3			JNE 0xe1b94b									
  kongzhi.go:484	0xe1b968		488d05a1ff1900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.26(SB), AX				
  kongzhi.go:484	0xe1b96f		e86c395fff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe1b974		4c8b842498000000	MOVQ 0x98(SP), R8								
  kongzhi.go:484	0xe1b97c		4889c2			MOVQ AX, DX									
  io.go:354		0xe1b97f		488b8424e8000000	MOVQ 0xe8(SP), AX								
  kongzhi.go:484	0xe1b987		e911ffffff		JMP 0xe1b89d									
  kongzhi.go:484	0xe1b98c		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  kongzhi.go:484	0xe1b991		e907ffffff		JMP 0xe1b89d									
  kongzhi.go:458	0xe1b996		4d89d3			MOVQ R10, R11									
  kongzhi.go:458	0xe1b999		4d21ca			ANDQ R9, R10									
  kongzhi.go:458	0xe1b99c		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  kongzhi.go:458	0xe1b9a0		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  kongzhi.go:458	0xe1b9a5		4939dc			CMPQ R12, BX									
  kongzhi.go:458	0xe1b9a8		7425			JE 0xe1b9cf									
  kongzhi.go:458	0xe1b9aa		4d8d5301		LEAQ 0x1(R11), R10								
  kongzhi.go:458	0xe1b9ae		4d85e4			TESTQ R12, R12									
  kongzhi.go:458	0xe1b9b1		75e3			JNE 0xe1b996									
  kongzhi.go:458	0xe1b9b3		488d0536ff1900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.25(SB), AX				
  kongzhi.go:458	0xe1b9ba		e821395fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:458	0xe1b9bf		4889c1			MOVQ AX, CX									
  io.go:354		0xe1b9c2		488b8424e8000000	MOVQ 0xe8(SP), AX								
  kongzhi.go:458	0xe1b9ca		e9b3fbffff		JMP 0xe1b582									
  kongzhi.go:458	0xe1b9cf		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  kongzhi.go:458	0xe1b9d4		4889d1			MOVQ DX, CX									
  kongzhi.go:458	0xe1b9d7		e9a6fbffff		JMP 0xe1b582									
  buffer.go:54		0xe1b9dc		0f1f4000		NOPL 0(AX)									
  buffer.go:54		0xe1b9e0		e8bbce65ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe1b9e5		90			NOPL										
  kongzhi.go:411	0xe1b9e6		4889442408		MOVQ AX, 0x8(SP)								
  kongzhi.go:411	0xe1b9eb		48895c2410		MOVQ BX, 0x10(SP)								
  kongzhi.go:411	0xe1b9f0		884c2418		MOVB CL, 0x18(SP)								
  kongzhi.go:411	0xe1b9f4		48897c2420		MOVQ DI, 0x20(SP)								
  kongzhi.go:411	0xe1b9f9		e8e2aa65ff		CALL runtime.morestack_noctxt.abi0(SB)						
  kongzhi.go:411	0xe1b9fe		488b442408		MOVQ 0x8(SP), AX								
  kongzhi.go:411	0xe1ba03		488b5c2410		MOVQ 0x10(SP), BX								
  kongzhi.go:411	0xe1ba08		0fb64c2418		MOVZX 0x18(SP), CX								
  kongzhi.go:411	0xe1ba0d		488b7c2420		MOVQ 0x20(SP), DI								
  kongzhi.go:411	0xe1ba12		e969f8ffff		JMP CAS-Backend/pkg/agvcontrol.SendStartSlamRequest(SB)				
  :-1			0xe1ba17		cc			INT $__subsystem__(SB)								
  :-1			0xe1ba18		cc			INT $__subsystem__(SB)								
  :-1			0xe1ba19		cc			INT $__subsystem__(SB)								
  :-1			0xe1ba1a		cc			INT $__subsystem__(SB)								
  :-1			0xe1ba1b		cc			INT $__subsystem__(SB)								
  :-1			0xe1ba1c		cc			INT $__subsystem__(SB)								
  :-1			0xe1ba1d		cc			INT $__subsystem__(SB)								
  :-1			0xe1ba1e		cc			INT $__subsystem__(SB)								
  :-1			0xe1ba1f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SendStopSlamRequest(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:608	0xe1ba20		4c8d642488		LEAQ -0x78(SP), R12								
  kongzhi.go:608	0xe1ba25		4d3b6610		CMPQ R12, 0x10(R14)								
  kongzhi.go:608	0xe1ba29		0f86c9060000		JBE 0xe1c0f8									
  kongzhi.go:608	0xe1ba2f		55			PUSHQ BP									
  kongzhi.go:608	0xe1ba30		4889e5			MOVQ SP, BP									
  kongzhi.go:608	0xe1ba33		4881ecf0000000		SUBQ $.file+163(SB), SP								
  kongzhi.go:625	0xe1ba3a		4889842400010000	MOVQ AX, 0x100(SP)								
  kongzhi.go:625	0xe1ba42		48899c2408010000	MOVQ BX, 0x108(SP)								
  kongzhi.go:619	0xe1ba4a		48c74424485a010100	MOVQ $__dll_characteristics__+32762(SB), 0x48(SP)				
  kongzhi.go:619	0xe1ba53		48c7442450d5170000	MOVQ $__size_of_stack_commit__+2005(SB), 0x50(SP)				
  kongzhi.go:617	0xe1ba5c		c744244c00000000	MOVL $0x0, 0x4c(SP)								
  kongzhi.go:623	0xe1ba64		488d0595c82b00		LEAQ runtime.types+996096(SB), AX						
  kongzhi.go:623	0xe1ba6b		e8305d5fff		CALL runtime.newobject(SB)							
  kongzhi.go:623	0xe1ba70		48898424e8000000	MOVQ AX, 0xe8(SP)								
  kongzhi.go:624	0xe1ba78		0f10442448		MOVUPS 0x48(SP), X0								
  kongzhi.go:624	0xe1ba7d		0f11442458		MOVUPS X0, 0x58(SP)								
  kongzhi.go:624	0xe1ba82		4889c3			MOVQ AX, BX									
  kongzhi.go:624	0xe1ba85		488d0db4b40502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:624	0xe1ba8c		488d3d0d187402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:624	0xe1ba93		488d35262e2f00		LEAQ runtime.types+1218752(SB), SI						
  kongzhi.go:624	0xe1ba9a		4c8d442458		LEAQ 0x58(SP), R8								
  kongzhi.go:624	0xe1ba9f		488d05ba150502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  kongzhi.go:624	0xe1baa6		e8756674ff		CALL encoding/binary.Write(SB)							
  kongzhi.go:625	0xe1baab		4885c0			TESTQ AX, AX									
  kongzhi.go:625	0xe1baae		7451			JE 0xe1bb01									
  kongzhi.go:626	0xe1bab0		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:626	0xe1bab9		7404			JE 0xe1babf									
  kongzhi.go:626	0xe1babb		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:626	0xe1babf		48898424c8000000	MOVQ AX, 0xc8(SP)								
  kongzhi.go:626	0xe1bac7		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  kongzhi.go:626	0xe1bacf		488d05cad83600		LEAQ go:string.*+134808(SB), AX							
  kongzhi.go:626	0xe1bad6		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:626	0xe1badb		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  kongzhi.go:626	0xe1bae3		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:626	0xe1bae8		4889fe			MOVQ DI, SI									
  kongzhi.go:626	0xe1baeb		e8d00870ff		CALL fmt.Errorf(SB)								
  kongzhi.go:626	0xe1baf0		4889d9			MOVQ BX, CX									
  kongzhi.go:626	0xe1baf3		4889c3			MOVQ AX, BX									
  kongzhi.go:626	0xe1baf6		31c0			XORL AX, AX									
  kongzhi.go:626	0xe1baf8		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:626	0xe1baff		5d			POPQ BP										
  kongzhi.go:626	0xe1bb00		c3			RET										
  kongzhi.go:628	0xe1bb01		488b8424e8000000	MOVQ 0xe8(SP), AX								
  kongzhi.go:628	0xe1bb09		488d5c2438		LEAQ 0x38(SP), BX								
  kongzhi.go:628	0xe1bb0e		31c9			XORL CX, CX									
  kongzhi.go:628	0xe1bb10		4889cf			MOVQ CX, DI									
  kongzhi.go:628	0xe1bb13		e8080a71ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe1bb18		488b9424e8000000	MOVQ 0xe8(SP), DX								
  buffer.go:54		0xe1bb20		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe1bb24		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe1bb28		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe1bb2b		0f82c1050000		JB 0xe1c0f2									
  kongzhi.go:631	0xe1bb31		488bb42400010000	MOVQ 0x100(SP), SI								
  kongzhi.go:631	0xe1bb39		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe1bb3d		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe1bb40		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe1bb44		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe1bb47		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe1bb4a		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe1bb4d		48f7da			NEGQ DX										
  buffer.go:54		0xe1bb50		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe1bb54		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe1bb57		498d1c01		LEAQ 0(R9)(AX*1), BX								
  kongzhi.go:631	0xe1bb5b		488b842408010000	MOVQ 0x108(SP), AX								
  kongzhi.go:631	0xe1bb63		41ffd0			CALL R8										
  kongzhi.go:632	0xe1bb66		4885db			TESTQ BX, BX									
  kongzhi.go:632	0xe1bb69		7573			JNE 0xe1bbde									
  kongzhi.go:637	0xe1bb6b		e8302569ff		CALL time.Now(SB)								
  kongzhi.go:637	0xe1bb70		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  kongzhi.go:637	0xe1bb7a		e8e18968ff		CALL time.Time.Add(SB)								
  kongzhi.go:637	0xe1bb7f		488b942400010000	MOVQ 0x100(SP), DX								
  kongzhi.go:637	0xe1bb87		488b7240		MOVQ 0x40(DX), SI								
  kongzhi.go:637	0xe1bb8b		4889cf			MOVQ CX, DI									
  kongzhi.go:637	0xe1bb8e		4889d9			MOVQ BX, CX									
  kongzhi.go:637	0xe1bb91		4889c3			MOVQ AX, BX									
  kongzhi.go:637	0xe1bb94		488b842408010000	MOVQ 0x108(SP), AX								
  kongzhi.go:637	0xe1bb9c		ffd6			CALL SI										
  kongzhi.go:640	0xe1bb9e		488d05fb6d2200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:640	0xe1bba5		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  kongzhi.go:640	0xe1bbaa		4889d9			MOVQ BX, CX									
  kongzhi.go:640	0xe1bbad		e8ae5f65ff		CALL runtime.makeslice(SB)							
  kongzhi.go:640	0xe1bbb2		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:641	0xe1bbba		488b8c2400010000	MOVQ 0x100(SP), CX								
  kongzhi.go:641	0xe1bbc2		4885c9			TESTQ CX, CX									
  kongzhi.go:641	0xe1bbc5		7468			JE 0xe1bc2f									
  kongzhi.go:641	0xe1bbc7		488b5908		MOVQ 0x8(CX), BX								
  kongzhi.go:641	0xe1bbcb		488b155efd1900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.28(SB), DX				
  kongzhi.go:641	0xe1bbd2		4c8b0a			MOVQ 0(DX), R9									
  kongzhi.go:641	0xe1bbd5		448b5110		MOVL 0x10(CX), R10								
  kongzhi.go:641	0xe1bbd9		e9c9040000		JMP 0xe1c0a7									
  kongzhi.go:633	0xe1bbde		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:633	0xe1bbe7		7404			JE 0xe1bbed									
  kongzhi.go:633	0xe1bbe9		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:633	0xe1bbed		48899c24c8000000	MOVQ BX, 0xc8(SP)								
  kongzhi.go:633	0xe1bbf5		48898c24d0000000	MOVQ CX, 0xd0(SP)								
  kongzhi.go:633	0xe1bbfd		488d05c06b3600		LEAQ go:string.*+107196(SB), AX							
  kongzhi.go:633	0xe1bc04		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  kongzhi.go:633	0xe1bc09		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  kongzhi.go:633	0xe1bc11		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:633	0xe1bc16		4889fe			MOVQ DI, SI									
  kongzhi.go:633	0xe1bc19		e8a20770ff		CALL fmt.Errorf(SB)								
  kongzhi.go:633	0xe1bc1e		4889d9			MOVQ BX, CX									
  kongzhi.go:633	0xe1bc21		4889c3			MOVQ AX, BX									
  kongzhi.go:633	0xe1bc24		31c0			XORL AX, AX									
  kongzhi.go:633	0xe1bc26		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:633	0xe1bc2d		5d			POPQ BP										
  kongzhi.go:633	0xe1bc2e		c3			RET										
  io.go:354		0xe1bc2f		488b9c2408010000	MOVQ 0x108(SP), BX								
  io.go:354		0xe1bc37		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe1bc3c		4889fe			MOVQ DI, SI									
  io.go:354		0xe1bc3f		4989f0			MOVQ SI, R8									
  kongzhi.go:640	0xe1bc42		4889c2			MOVQ AX, DX									
  io.go:354		0xe1bc45		4889c8			MOVQ CX, AX									
  io.go:354		0xe1bc48		4889d1			MOVQ DX, CX									
  io.go:354		0xe1bc4b		e8b06f69ff		CALL io.ReadAtLeast(SB)								
  kongzhi.go:642	0xe1bc50		4885db			TESTQ BX, BX									
  kongzhi.go:642	0xe1bc53		0f84fe000000		JE 0xe1bd57									
  kongzhi.go:642	0xe1bc59		0f1f8000000000		NOPL 0(AX)									
  kongzhi.go:644	0xe1bc60		48391d59b11900		CMPQ io.EOF(SB), BX								
  kongzhi.go:644	0xe1bc67		7405			JE 0xe1bc6e									
  kongzhi.go:642	0xe1bc69		4885db			TESTQ BX, BX									
  kongzhi.go:644	0xe1bc6c		eb49			JMP 0xe1bcb7									
  io.go:354		0xe1bc6e		4889442470		MOVQ AX, 0x70(SP)								
  io.go:354		0xe1bc73		48898c2490000000	MOVQ CX, 0x90(SP)								
  io.go:354		0xe1bc7b		48895c2478		MOVQ BX, 0x78(SP)								
  kongzhi.go:644	0xe1bc80		488b1541b11900		MOVQ io.EOF+8(SB), DX								
  kongzhi.go:644	0xe1bc87		4889d8			MOVQ BX, AX									
  kongzhi.go:644	0xe1bc8a		4889cb			MOVQ CX, BX									
  kongzhi.go:644	0xe1bc8d		4889d1			MOVQ DX, CX									
  kongzhi.go:644	0xe1bc90		e84bc85eff		CALL runtime.ifaceeq(SB)							
  kongzhi.go:644	0xe1bc95		84c0			TESTL AL, AL									
  kongzhi.go:644	0xe1bc97		0f8591000000		JNE 0xe1bd2e									
  kongzhi.go:642	0xe1bc9d		488b4c2478		MOVQ 0x78(SP), CX								
  kongzhi.go:642	0xe1bca2		4885c9			TESTQ CX, CX									
  kongzhi.go:647	0xe1bca5		488b442470		MOVQ 0x70(SP), AX								
  kongzhi.go:647	0xe1bcaa		488b8c2490000000	MOVQ 0x90(SP), CX								
  kongzhi.go:647	0xe1bcb2		488b5c2478		MOVQ 0x78(SP), BX								
  kongzhi.go:647	0xe1bcb7		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)								
  kongzhi.go:647	0xe1bcc0		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  kongzhi.go:647	0xe1bcc9		7404			JE 0xe1bccf									
  kongzhi.go:647	0xe1bccb		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:647	0xe1bccf		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  kongzhi.go:647	0xe1bcd7		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  kongzhi.go:647	0xe1bcdf		90			NOPL										
  kongzhi.go:647	0xe1bce0		e8bbe364ff		CALL runtime.convT64(SB)							
  kongzhi.go:647	0xe1bce5		488d0d746e2200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:647	0xe1bcec		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  kongzhi.go:647	0xe1bcf4		48898424c0000000	MOVQ AX, 0xc0(SP)								
  kongzhi.go:647	0xe1bcfc		488d05550e3800		LEAQ go:string.*+214608(SB), AX							
  kongzhi.go:647	0xe1bd03		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:647	0xe1bd08		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  kongzhi.go:647	0xe1bd10		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:647	0xe1bd15		4889fe			MOVQ DI, SI									
  kongzhi.go:647	0xe1bd18		e8a30670ff		CALL fmt.Errorf(SB)								
  kongzhi.go:647	0xe1bd1d		4889d9			MOVQ BX, CX									
  kongzhi.go:647	0xe1bd20		4889c3			MOVQ AX, BX									
  kongzhi.go:647	0xe1bd23		31c0			XORL AX, AX									
  kongzhi.go:647	0xe1bd25		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:647	0xe1bd2c		5d			POPQ BP										
  kongzhi.go:647	0xe1bd2d		c3			RET										
  kongzhi.go:645	0xe1bd2e		488d05d85a3600		LEAQ go:string.*+103173(SB), AX							
  kongzhi.go:645	0xe1bd35		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  kongzhi.go:645	0xe1bd3a		31c9			XORL CX, CX									
  kongzhi.go:645	0xe1bd3c		31ff			XORL DI, DI									
  kongzhi.go:645	0xe1bd3e		4889fe			MOVQ DI, SI									
  kongzhi.go:645	0xe1bd41		e87a0670ff		CALL fmt.Errorf(SB)								
  kongzhi.go:645	0xe1bd46		4889d9			MOVQ BX, CX									
  kongzhi.go:645	0xe1bd49		4889c3			MOVQ AX, BX									
  kongzhi.go:645	0xe1bd4c		31c0			XORL AX, AX									
  kongzhi.go:645	0xe1bd4e		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:645	0xe1bd55		5d			POPQ BP										
  kongzhi.go:645	0xe1bd56		c3			RET										
  kongzhi.go:651	0xe1bd57		440f11bc2498000000	MOVUPS X15, 0x98(SP)								
  kongzhi.go:651	0xe1bd60		488b8424d8000000	MOVQ 0xd8(SP), AX								
  kongzhi.go:651	0xe1bd68		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  kongzhi.go:651	0xe1bd6d		4889d9			MOVQ BX, CX									
  kongzhi.go:651	0xe1bd70		e84be464ff		CALL runtime.convTslice(SB)							
  kongzhi.go:651	0xe1bd75		488d15c4c42100		LEAQ runtime.types+340544(SB), DX						
  kongzhi.go:651	0xe1bd7c		4889942498000000	MOVQ DX, 0x98(SP)								
  kongzhi.go:651	0xe1bd84		48898424a0000000	MOVQ AX, 0xa0(SP)								
  print.go:233		0xe1bd8c		488b1ded626f02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe1bd93		488d0546fd0402		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe1bd9a		488d0d84ea3600		LEAQ go:string.*+140061(SB), CX							
  print.go:233		0xe1bda1		bf1d000000		MOVL $__major_os_version__+23(SB), DI						
  print.go:233		0xe1bda6		488db42498000000	LEAQ 0x98(SP), SI								
  print.go:233		0xe1bdae		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe1bdb4		4d89c1			MOVQ R8, R9									
  print.go:233		0xe1bdb7		e8643470ff		CALL fmt.Fprintf(SB)								
  kongzhi.go:654	0xe1bdbc		440f117c2438		MOVUPS X15, 0x38(SP)								
  kongzhi.go:655	0xe1bdc2		90			NOPL										
  reader.go:159		0xe1bdc3		488d05f6c52b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe1bdca		e8d1595fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe1bdcf		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe1bdd7		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe1bddf		833d6a1d740200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe1bde6		750a			JNE 0xe1bdf2									
  reader.go:159		0xe1bde8		488b9424d8000000	MOVQ 0xd8(SP), DX								
  reader.go:159		0xe1bdf0		eb10			JMP 0xe1be02									
  reader.go:159		0xe1bdf2		e829c665ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe1bdf7		488b9424d8000000	MOVQ 0xd8(SP), DX								
  reader.go:159		0xe1bdff		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe1be02		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe1be05		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe1be0d		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  kongzhi.go:656	0xe1be15		4889c3			MOVQ AX, BX									
  kongzhi.go:656	0xe1be18		488d0d21b10502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:656	0xe1be1f		488d3d7a147402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:656	0xe1be26		488d35f3ad2000		LEAQ runtime.types+269344(SB), SI						
  kongzhi.go:656	0xe1be2d		4c8d442438		LEAQ 0x38(SP), R8								
  kongzhi.go:656	0xe1be32		488d05a70c0502		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  kongzhi.go:656	0xe1be39		e8025474ff		CALL encoding/binary.Read(SB)							
  kongzhi.go:656	0xe1be3e		6690			NOPW										
  kongzhi.go:657	0xe1be40		4885c0			TESTQ AX, AX									
  kongzhi.go:657	0xe1be43		7560			JNE 0xe1bea5									
  kongzhi.go:668	0xe1be45		8b4c243c		MOVL 0x3c(SP), CX								
  kongzhi.go:668	0xe1be49		85c9			TESTL CX, CX									
  kongzhi.go:668	0xe1be4b		7652			JBE 0xe1be9f									
  kongzhi.go:669	0xe1be4d		488d054c6b2200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:669	0xe1be54		89cb			MOVL CX, BX									
  kongzhi.go:669	0xe1be56		e8055d65ff		CALL runtime.makeslice(SB)							
  kongzhi.go:669	0xe1be5b		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:669	0xe1be63		448b44243c		MOVL 0x3c(SP), R8								
  kongzhi.go:669	0xe1be68		4c89842480000000	MOVQ R8, 0x80(SP)								
  kongzhi.go:641	0xe1be70		488b942400010000	MOVQ 0x100(SP), DX								
  kongzhi.go:641	0xe1be78		0f1f840000000000	NOPL 0(AX)(AX*1)								
  kongzhi.go:641	0xe1be80		4885d2			TESTQ DX, DX									
  kongzhi.go:670	0xe1be83		0f8427010000		JE 0xe1bfb0									
  kongzhi.go:670	0xe1be89		488b5a08		MOVQ 0x8(DX), BX								
  kongzhi.go:670	0xe1be8d		4c8b0dbcfa1900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.29(SB), R9				
  kongzhi.go:670	0xe1be94		4d8b11			MOVQ 0(R9), R10									
  kongzhi.go:670	0xe1be97		8b5210			MOVL 0x10(DX), DX								
  kongzhi.go:670	0xe1be9a		e9ba010000		JMP 0xe1c059									
  kongzhi.go:670	0xe1be9f		31c0			XORL AX, AX									
  kongzhi.go:670	0xe1bea1		31c9			XORL CX, CX									
  kongzhi.go:668	0xe1bea3		eb51			JMP 0xe1bef6									
  kongzhi.go:658	0xe1bea5		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:658	0xe1beae		7404			JE 0xe1beb4									
  kongzhi.go:658	0xe1beb0		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:658	0xe1beb4		48898424c8000000	MOVQ AX, 0xc8(SP)								
  kongzhi.go:658	0xe1bebc		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  kongzhi.go:658	0xe1bec4		488d05f1d43600		LEAQ go:string.*+134836(SB), AX							
  kongzhi.go:658	0xe1becb		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:658	0xe1bed0		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  kongzhi.go:658	0xe1bed8		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:658	0xe1bedd		4889fe			MOVQ DI, SI									
  kongzhi.go:658	0xe1bee0		e8db0470ff		CALL fmt.Errorf(SB)								
  kongzhi.go:658	0xe1bee5		4889d9			MOVQ BX, CX									
  kongzhi.go:658	0xe1bee8		4889c3			MOVQ AX, BX									
  kongzhi.go:658	0xe1beeb		31c0			XORL AX, AX									
  kongzhi.go:658	0xe1beed		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:658	0xe1bef4		5d			POPQ BP										
  kongzhi.go:658	0xe1bef5		c3			RET										
  kongzhi.go:679	0xe1bef6		4889442468		MOVQ AX, 0x68(SP)								
  kongzhi.go:679	0xe1befb		48898c2488000000	MOVQ CX, 0x88(SP)								
  kongzhi.go:677	0xe1bf03		488d05f69f2b00		LEAQ runtime.types+986880(SB), AX						
  kongzhi.go:677	0xe1bf0a		e891585fff		CALL runtime.newobject(SB)							
  kongzhi.go:678	0xe1bf0f		837c243c00		CMPL 0x3c(SP), $0x0								
  kongzhi.go:678	0xe1bf14		0f8689000000		JBE 0xe1bfa3									
  kongzhi.go:677	0xe1bf1a		48898424e0000000	MOVQ AX, 0xe0(SP)								
  kongzhi.go:679	0xe1bf22		488b5c2468		MOVQ 0x68(SP), BX								
  kongzhi.go:679	0xe1bf27		4889d9			MOVQ BX, CX									
  kongzhi.go:679	0xe1bf2a		488d3d2fad2000		LEAQ runtime.types+269408(SB), DI						
  kongzhi.go:679	0xe1bf31		4889c6			MOVQ AX, SI									
  kongzhi.go:679	0xe1bf34		488b842488000000	MOVQ 0x88(SP), AX								
  kongzhi.go:679	0xe1bf3c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:679	0xe1bf40		e89bb574ff		CALL encoding/json.Unmarshal(SB)						
  kongzhi.go:680	0xe1bf45		4885c0			TESTQ AX, AX									
  kongzhi.go:680	0xe1bf48		7451			JE 0xe1bf9b									
  kongzhi.go:681	0xe1bf4a		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:681	0xe1bf53		7404			JE 0xe1bf59									
  kongzhi.go:681	0xe1bf55		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:681	0xe1bf59		48898424c8000000	MOVQ AX, 0xc8(SP)								
  kongzhi.go:681	0xe1bf61		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  kongzhi.go:681	0xe1bf69		488d0538b03600		LEAQ go:string.*+125600(SB), AX							
  kongzhi.go:681	0xe1bf70		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  kongzhi.go:681	0xe1bf75		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  kongzhi.go:681	0xe1bf7d		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:681	0xe1bf82		4889fe			MOVQ DI, SI									
  kongzhi.go:681	0xe1bf85		e8360470ff		CALL fmt.Errorf(SB)								
  kongzhi.go:681	0xe1bf8a		4889d9			MOVQ BX, CX									
  kongzhi.go:681	0xe1bf8d		4889c3			MOVQ AX, BX									
  kongzhi.go:681	0xe1bf90		31c0			XORL AX, AX									
  kongzhi.go:681	0xe1bf92		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:681	0xe1bf99		5d			POPQ BP										
  kongzhi.go:681	0xe1bf9a		c3			RET										
  kongzhi.go:688	0xe1bf9b		488b8424e0000000	MOVQ 0xe0(SP), AX								
  kongzhi.go:688	0xe1bfa3		31db			XORL BX, BX									
  kongzhi.go:688	0xe1bfa5		31c9			XORL CX, CX									
  kongzhi.go:688	0xe1bfa7		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:688	0xe1bfae		5d			POPQ BP										
  kongzhi.go:688	0xe1bfaf		c3			RET										
  io.go:354		0xe1bfb0		488b9c2408010000	MOVQ 0x108(SP), BX								
  io.go:354		0xe1bfb8		4889c1			MOVQ AX, CX									
  io.go:354		0xe1bfbb		4c89c7			MOVQ R8, DI									
  io.go:354		0xe1bfbe		4889fe			MOVQ DI, SI									
  io.go:354		0xe1bfc1		4889d0			MOVQ DX, AX									
  io.go:354		0xe1bfc4		e8376c69ff		CALL io.ReadAtLeast(SB)								
  kongzhi.go:671	0xe1bfc9		4885db			TESTQ BX, BX									
  kongzhi.go:671	0xe1bfcc		7476			JE 0xe1c044									
  kongzhi.go:672	0xe1bfce		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)								
  kongzhi.go:672	0xe1bfd7		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  kongzhi.go:672	0xe1bfe0		7404			JE 0xe1bfe6									
  kongzhi.go:672	0xe1bfe2		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:672	0xe1bfe6		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  kongzhi.go:672	0xe1bfee		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  kongzhi.go:672	0xe1bff6		e8a5e064ff		CALL runtime.convT64(SB)							
  kongzhi.go:672	0xe1bffb		488d0d5e6b2200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:672	0xe1c002		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  kongzhi.go:672	0xe1c00a		48898424c0000000	MOVQ AX, 0xc0(SP)								
  kongzhi.go:672	0xe1c012		488d05700b3800		LEAQ go:string.*+214657(SB), AX							
  kongzhi.go:672	0xe1c019		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:672	0xe1c01e		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  kongzhi.go:672	0xe1c026		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:672	0xe1c02b		4889fe			MOVQ DI, SI									
  kongzhi.go:672	0xe1c02e		e88d0370ff		CALL fmt.Errorf(SB)								
  kongzhi.go:672	0xe1c033		4889d9			MOVQ BX, CX									
  kongzhi.go:672	0xe1c036		4889c3			MOVQ AX, BX									
  kongzhi.go:672	0xe1c039		31c0			XORL AX, AX									
  kongzhi.go:672	0xe1c03b		4881c4f0000000		ADDQ $.file+163(SB), SP								
  kongzhi.go:672	0xe1c042		5d			POPQ BP										
  kongzhi.go:672	0xe1c043		c3			RET										
  kongzhi.go:679	0xe1c044		488b842480000000	MOVQ 0x80(SP), AX								
  kongzhi.go:679	0xe1c04c		488b8c24d8000000	MOVQ 0xd8(SP), CX								
  kongzhi.go:677	0xe1c054		e99dfeffff		JMP 0xe1bef6									
  kongzhi.go:670	0xe1c059		4989d3			MOVQ DX, R11									
  kongzhi.go:670	0xe1c05c		4c21d2			ANDQ R10, DX									
  kongzhi.go:670	0xe1c05f		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  kongzhi.go:670	0xe1c063		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  kongzhi.go:670	0xe1c068		4939dc			CMPQ R12, BX									
  kongzhi.go:670	0xe1c06b		7430			JE 0xe1c09d									
  kongzhi.go:670	0xe1c06d		498d5301		LEAQ 0x1(R11), DX								
  kongzhi.go:670	0xe1c071		4d85e4			TESTQ R12, R12									
  kongzhi.go:670	0xe1c074		75e3			JNE 0xe1c059									
  kongzhi.go:670	0xe1c076		488d05d3f81900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.29(SB), AX				
  kongzhi.go:670	0xe1c07d		0f1f00			NOPL 0(AX)									
  kongzhi.go:670	0xe1c080		e85b325fff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe1c085		4c8b842480000000	MOVQ 0x80(SP), R8								
  kongzhi.go:670	0xe1c08d		4889c2			MOVQ AX, DX									
  io.go:354		0xe1c090		488b8424d8000000	MOVQ 0xd8(SP), AX								
  kongzhi.go:670	0xe1c098		e913ffffff		JMP 0xe1bfb0									
  kongzhi.go:670	0xe1c09d		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  kongzhi.go:670	0xe1c0a2		e909ffffff		JMP 0xe1bfb0									
  kongzhi.go:641	0xe1c0a7		4d89d3			MOVQ R10, R11									
  kongzhi.go:641	0xe1c0aa		4d21ca			ANDQ R9, R10									
  kongzhi.go:641	0xe1c0ad		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  kongzhi.go:641	0xe1c0b1		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  kongzhi.go:641	0xe1c0b6		4939dc			CMPQ R12, BX									
  kongzhi.go:641	0xe1c0b9		742a			JE 0xe1c0e5									
  kongzhi.go:641	0xe1c0bb		4d8d5301		LEAQ 0x1(R11), R10								
  kongzhi.go:641	0xe1c0bf		90			NOPL										
  kongzhi.go:641	0xe1c0c0		4d85e4			TESTQ R12, R12									
  kongzhi.go:641	0xe1c0c3		75e2			JNE 0xe1c0a7									
  kongzhi.go:641	0xe1c0c5		488d0564f81900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.28(SB), AX				
  kongzhi.go:641	0xe1c0cc		e80f325fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:641	0xe1c0d1		4889c1			MOVQ AX, CX									
  io.go:354		0xe1c0d4		488b8424d8000000	MOVQ 0xd8(SP), AX								
  io.go:354		0xe1c0dc		0f1f4000		NOPL 0(AX)									
  kongzhi.go:641	0xe1c0e0		e94afbffff		JMP 0xe1bc2f									
  kongzhi.go:641	0xe1c0e5		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  kongzhi.go:641	0xe1c0ea		4889d1			MOVQ DX, CX									
  kongzhi.go:641	0xe1c0ed		e93dfbffff		JMP 0xe1bc2f									
  buffer.go:54		0xe1c0f2		e8a9c765ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe1c0f7		90			NOPL										
  kongzhi.go:608	0xe1c0f8		4889442408		MOVQ AX, 0x8(SP)								
  kongzhi.go:608	0xe1c0fd		48895c2410		MOVQ BX, 0x10(SP)								
  kongzhi.go:608	0xe1c102		e8d9a365ff		CALL runtime.morestack_noctxt.abi0(SB)						
  kongzhi.go:608	0xe1c107		488b442408		MOVQ 0x8(SP), AX								
  kongzhi.go:608	0xe1c10c		488b5c2410		MOVQ 0x10(SP), BX								
  kongzhi.go:608	0xe1c111		e90af9ffff		JMP CAS-Backend/pkg/agvcontrol.SendStopSlamRequest(SB)				
  :-1			0xe1c116		cc			INT $__subsystem__(SB)								
  :-1			0xe1c117		cc			INT $__subsystem__(SB)								
  :-1			0xe1c118		cc			INT $__subsystem__(SB)								
  :-1			0xe1c119		cc			INT $__subsystem__(SB)								
  :-1			0xe1c11a		cc			INT $__subsystem__(SB)								
  :-1			0xe1c11b		cc			INT $__subsystem__(SB)								
  :-1			0xe1c11c		cc			INT $__subsystem__(SB)								
  :-1			0xe1c11d		cc			INT $__subsystem__(SB)								
  :-1			0xe1c11e		cc			INT $__subsystem__(SB)								
  :-1			0xe1c11f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.SltGetMapRequest(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:705	0xe1c120		4c8da42460ffffff	LEAQ 0xffffff60(SP), R12							
  kongzhi.go:705	0xe1c128		4d3b6610		CMPQ R12, 0x10(R14)								
  kongzhi.go:705	0xe1c12c		0f86d9070000		JBE 0xe1c90b									
  kongzhi.go:705	0xe1c132		55			PUSHQ BP									
  kongzhi.go:705	0xe1c133		4889e5			MOVQ SP, BP									
  kongzhi.go:705	0xe1c136		4881ec18010000		SUBQ $.file+203(SB), SP								
  kongzhi.go:713	0xe1c13d		4889842428010000	MOVQ AX, 0x128(SP)								
  kongzhi.go:713	0xe1c145		48899c2430010000	MOVQ BX, 0x130(SP)								
  kongzhi.go:712	0xe1c14d		488d052c8a2800		LEAQ runtime.types+785280(SB), AX						
  kongzhi.go:712	0xe1c154		488d1dcde51500		LEAQ runtime.staticuint64s+8(SB), BX						
  kongzhi.go:712	0xe1c15b		0f1f440000		NOPL 0(AX)(AX*1)								
  kongzhi.go:712	0xe1c160		e83b1375ff		CALL encoding/json.Marshal(SB)							
  kongzhi.go:713	0xe1c165		4885ff			TESTQ DI, DI									
  kongzhi.go:713	0xe1c168		7451			JE 0xe1c1bb									
  kongzhi.go:714	0xe1c16a		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  kongzhi.go:714	0xe1c173		7404			JE 0xe1c179									
  kongzhi.go:714	0xe1c175		488b7f08		MOVQ 0x8(DI), DI								
  kongzhi.go:714	0xe1c179		4889bc24f0000000	MOVQ DI, 0xf0(SP)								
  kongzhi.go:714	0xe1c181		4889b424f8000000	MOVQ SI, 0xf8(SP)								
  kongzhi.go:714	0xe1c189		488d050b7a3600		LEAQ go:string.*+112275(SB), AX							
  kongzhi.go:714	0xe1c190		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  kongzhi.go:714	0xe1c195		488d8c24f0000000	LEAQ 0xf0(SP), CX								
  kongzhi.go:714	0xe1c19d		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:714	0xe1c1a2		4889fe			MOVQ DI, SI									
  kongzhi.go:714	0xe1c1a5		e8160270ff		CALL fmt.Errorf(SB)								
  kongzhi.go:714	0xe1c1aa		4889d9			MOVQ BX, CX									
  kongzhi.go:714	0xe1c1ad		4889c3			MOVQ AX, BX									
  kongzhi.go:714	0xe1c1b0		31c0			XORL AX, AX									
  kongzhi.go:714	0xe1c1b2		4881c418010000		ADDQ $.file+203(SB), SP								
  kongzhi.go:714	0xe1c1b9		5d			POPQ BP										
  kongzhi.go:714	0xe1c1ba		c3			RET										
  kongzhi.go:712	0xe1c1bb		48898c2480000000	MOVQ CX, 0x80(SP)								
  kongzhi.go:712	0xe1c1c3		48895c2478		MOVQ BX, 0x78(SP)								
  kongzhi.go:712	0xe1c1c8		48898424a0000000	MOVQ AX, 0xa0(SP)								
  kongzhi.go:724	0xe1c1d0		48c74424485a010100	MOVQ $__dll_characteristics__+32762(SB), 0x48(SP)				
  kongzhi.go:724	0xe1c1d9		48c744245001040000	MOVQ $__file_alignment__+513(SB), 0x50(SP)					
  kongzhi.go:722	0xe1c1e2		895c244c		MOVL BX, 0x4c(SP)								
  kongzhi.go:728	0xe1c1e6		488d0513c12b00		LEAQ runtime.types+996096(SB), AX						
  kongzhi.go:728	0xe1c1ed		e8ae555fff		CALL runtime.newobject(SB)							
  kongzhi.go:728	0xe1c1f2		4889842410010000	MOVQ AX, 0x110(SP)								
  kongzhi.go:729	0xe1c1fa		0f10442448		MOVUPS 0x48(SP), X0								
  kongzhi.go:729	0xe1c1ff		0f11442458		MOVUPS X0, 0x58(SP)								
  kongzhi.go:729	0xe1c204		4889c3			MOVQ AX, BX									
  kongzhi.go:729	0xe1c207		488d0d32ad0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:729	0xe1c20e		488d3d8b107402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:729	0xe1c215		488d35a4262f00		LEAQ runtime.types+1218752(SB), SI						
  kongzhi.go:729	0xe1c21c		4c8d442458		LEAQ 0x58(SP), R8								
  kongzhi.go:729	0xe1c221		488d05380e0502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  kongzhi.go:729	0xe1c228		e8f35e74ff		CALL encoding/binary.Write(SB)							
  kongzhi.go:730	0xe1c22d		4885c0			TESTQ AX, AX									
  kongzhi.go:730	0xe1c230		7451			JE 0xe1c283									
  kongzhi.go:731	0xe1c232		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  kongzhi.go:731	0xe1c23b		7404			JE 0xe1c241									
  kongzhi.go:731	0xe1c23d		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:731	0xe1c241		48898424f0000000	MOVQ AX, 0xf0(SP)								
  kongzhi.go:731	0xe1c249		48899c24f8000000	MOVQ BX, 0xf8(SP)								
  kongzhi.go:731	0xe1c251		488d0548d13600		LEAQ go:string.*+134808(SB), AX							
  kongzhi.go:731	0xe1c258		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:731	0xe1c25d		488d8c24f0000000	LEAQ 0xf0(SP), CX								
  kongzhi.go:731	0xe1c265		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:731	0xe1c26a		4889fe			MOVQ DI, SI									
  kongzhi.go:731	0xe1c26d		e84e0170ff		CALL fmt.Errorf(SB)								
  kongzhi.go:731	0xe1c272		4889d9			MOVQ BX, CX									
  kongzhi.go:731	0xe1c275		4889c3			MOVQ AX, BX									
  kongzhi.go:731	0xe1c278		31c0			XORL AX, AX									
  kongzhi.go:731	0xe1c27a		4881c418010000		ADDQ $.file+203(SB), SP								
  kongzhi.go:731	0xe1c281		5d			POPQ BP										
  kongzhi.go:731	0xe1c282		c3			RET										
  kongzhi.go:733	0xe1c283		488b842410010000	MOVQ 0x110(SP), AX								
  kongzhi.go:733	0xe1c28b		488b9c24a0000000	MOVQ 0xa0(SP), BX								
  kongzhi.go:733	0xe1c293		488b4c2478		MOVQ 0x78(SP), CX								
  kongzhi.go:733	0xe1c298		488bbc2480000000	MOVQ 0x80(SP), DI								
  kongzhi.go:733	0xe1c2a0		e87b0271ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe1c2a5		488b942410010000	MOVQ 0x110(SP), DX								
  buffer.go:54		0xe1c2ad		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe1c2b1		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe1c2b5		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe1c2b8		0f8247060000		JB 0xe1c905									
  kongzhi.go:736	0xe1c2be		488bb42428010000	MOVQ 0x128(SP), SI								
  kongzhi.go:736	0xe1c2c6		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe1c2ca		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe1c2cd		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe1c2d1		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe1c2d4		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe1c2d7		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe1c2da		48f7da			NEGQ DX										
  buffer.go:54		0xe1c2dd		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe1c2e1		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe1c2e4		498d1c01		LEAQ 0(R9)(AX*1), BX								
  kongzhi.go:736	0xe1c2e8		488b842430010000	MOVQ 0x130(SP), AX								
  kongzhi.go:736	0xe1c2f0		41ffd0			CALL R8										
  kongzhi.go:737	0xe1c2f3		4885db			TESTQ BX, BX									
  kongzhi.go:737	0xe1c2f6		7573			JNE 0xe1c36b									
  kongzhi.go:742	0xe1c2f8		e8a31d69ff		CALL time.Now(SB)								
  kongzhi.go:742	0xe1c2fd		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  kongzhi.go:742	0xe1c307		e8548268ff		CALL time.Time.Add(SB)								
  kongzhi.go:742	0xe1c30c		488b942428010000	MOVQ 0x128(SP), DX								
  kongzhi.go:742	0xe1c314		488b7240		MOVQ 0x40(DX), SI								
  kongzhi.go:742	0xe1c318		4889cf			MOVQ CX, DI									
  kongzhi.go:742	0xe1c31b		4889d9			MOVQ BX, CX									
  kongzhi.go:742	0xe1c31e		4889c3			MOVQ AX, BX									
  kongzhi.go:742	0xe1c321		488b842430010000	MOVQ 0x130(SP), AX								
  kongzhi.go:742	0xe1c329		ffd6			CALL SI										
  kongzhi.go:745	0xe1c32b		488d056e662200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:745	0xe1c332		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  kongzhi.go:745	0xe1c337		4889d9			MOVQ BX, CX									
  kongzhi.go:745	0xe1c33a		e8215865ff		CALL runtime.makeslice(SB)							
  kongzhi.go:745	0xe1c33f		4889842400010000	MOVQ AX, 0x100(SP)								
  kongzhi.go:746	0xe1c347		488b8c2428010000	MOVQ 0x128(SP), CX								
  kongzhi.go:746	0xe1c34f		4885c9			TESTQ CX, CX									
  kongzhi.go:746	0xe1c352		7468			JE 0xe1c3bc									
  kongzhi.go:746	0xe1c354		488b5908		MOVQ 0x8(CX), BX								
  kongzhi.go:746	0xe1c358		488b1511f61900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.30(SB), DX				
  kongzhi.go:746	0xe1c35f		4c8b0a			MOVQ 0(DX), R9									
  kongzhi.go:746	0xe1c362		448b5110		MOVL 0x10(CX), R10								
  kongzhi.go:746	0xe1c366		e951050000		JMP 0xe1c8bc									
  kongzhi.go:738	0xe1c36b		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  kongzhi.go:738	0xe1c374		7404			JE 0xe1c37a									
  kongzhi.go:738	0xe1c376		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:738	0xe1c37a		48899c24f0000000	MOVQ BX, 0xf0(SP)								
  kongzhi.go:738	0xe1c382		48898c24f8000000	MOVQ CX, 0xf8(SP)								
  kongzhi.go:738	0xe1c38a		488d0533643600		LEAQ go:string.*+107196(SB), AX							
  kongzhi.go:738	0xe1c391		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  kongzhi.go:738	0xe1c396		488d8c24f0000000	LEAQ 0xf0(SP), CX								
  kongzhi.go:738	0xe1c39e		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:738	0xe1c3a3		4889fe			MOVQ DI, SI									
  kongzhi.go:738	0xe1c3a6		e8150070ff		CALL fmt.Errorf(SB)								
  kongzhi.go:738	0xe1c3ab		4889d9			MOVQ BX, CX									
  kongzhi.go:738	0xe1c3ae		4889c3			MOVQ AX, BX									
  kongzhi.go:738	0xe1c3b1		31c0			XORL AX, AX									
  kongzhi.go:738	0xe1c3b3		4881c418010000		ADDQ $.file+203(SB), SP								
  kongzhi.go:738	0xe1c3ba		5d			POPQ BP										
  kongzhi.go:738	0xe1c3bb		c3			RET										
  io.go:354		0xe1c3bc		488b9c2430010000	MOVQ 0x130(SP), BX								
  io.go:354		0xe1c3c4		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe1c3c9		4889fe			MOVQ DI, SI									
  io.go:354		0xe1c3cc		4989f0			MOVQ SI, R8									
  kongzhi.go:745	0xe1c3cf		4889c2			MOVQ AX, DX									
  io.go:354		0xe1c3d2		4889c8			MOVQ CX, AX									
  io.go:354		0xe1c3d5		4889d1			MOVQ DX, CX									
  io.go:354		0xe1c3d8		e8236869ff		CALL io.ReadAtLeast(SB)								
  io.go:354		0xe1c3dd		0f1f00			NOPL 0(AX)									
  kongzhi.go:747	0xe1c3e0		4885db			TESTQ BX, BX									
  kongzhi.go:747	0xe1c3e3		0f8404010000		JE 0xe1c4ed									
  kongzhi.go:749	0xe1c3e9		48391dd0a91900		CMPQ io.EOF(SB), BX								
  kongzhi.go:749	0xe1c3f0		7405			JE 0xe1c3f7									
  kongzhi.go:747	0xe1c3f2		4885db			TESTQ BX, BX									
  kongzhi.go:749	0xe1c3f5		eb56			JMP 0xe1c44d									
  io.go:354		0xe1c3f7		4889442470		MOVQ AX, 0x70(SP)								
  io.go:354		0xe1c3fc		48898c24a8000000	MOVQ CX, 0xa8(SP)								
  io.go:354		0xe1c404		48899c2488000000	MOVQ BX, 0x88(SP)								
  kongzhi.go:749	0xe1c40c		488b15b5a91900		MOVQ io.EOF+8(SB), DX								
  kongzhi.go:749	0xe1c413		4889d8			MOVQ BX, AX									
  kongzhi.go:749	0xe1c416		4889cb			MOVQ CX, BX									
  kongzhi.go:749	0xe1c419		4889d1			MOVQ DX, CX									
  kongzhi.go:749	0xe1c41c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:749	0xe1c420		e8bbc05eff		CALL runtime.ifaceeq(SB)							
  kongzhi.go:749	0xe1c425		84c0			TESTL AL, AL									
  kongzhi.go:749	0xe1c427		0f8597000000		JNE 0xe1c4c4									
  kongzhi.go:747	0xe1c42d		488b8c2488000000	MOVQ 0x88(SP), CX								
  kongzhi.go:747	0xe1c435		4885c9			TESTQ CX, CX									
  kongzhi.go:752	0xe1c438		488b442470		MOVQ 0x70(SP), AX								
  kongzhi.go:752	0xe1c43d		488b8c24a8000000	MOVQ 0xa8(SP), CX								
  kongzhi.go:752	0xe1c445		488b9c2488000000	MOVQ 0x88(SP), BX								
  kongzhi.go:752	0xe1c44d		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  kongzhi.go:752	0xe1c456		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)								
  kongzhi.go:752	0xe1c45f		90			NOPL										
  kongzhi.go:752	0xe1c460		7404			JE 0xe1c466									
  kongzhi.go:752	0xe1c462		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:752	0xe1c466		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  kongzhi.go:752	0xe1c46e		48898c24d8000000	MOVQ CX, 0xd8(SP)								
  kongzhi.go:752	0xe1c476		e825dc64ff		CALL runtime.convT64(SB)							
  kongzhi.go:752	0xe1c47b		488d0dde662200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:752	0xe1c482		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  kongzhi.go:752	0xe1c48a		48898424e8000000	MOVQ AX, 0xe8(SP)								
  kongzhi.go:752	0xe1c492		488d05bf063800		LEAQ go:string.*+214608(SB), AX							
  kongzhi.go:752	0xe1c499		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:752	0xe1c49e		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  kongzhi.go:752	0xe1c4a6		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:752	0xe1c4ab		4889fe			MOVQ DI, SI									
  kongzhi.go:752	0xe1c4ae		e80dff6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:752	0xe1c4b3		4889d9			MOVQ BX, CX									
  kongzhi.go:752	0xe1c4b6		4889c3			MOVQ AX, BX									
  kongzhi.go:752	0xe1c4b9		31c0			XORL AX, AX									
  kongzhi.go:752	0xe1c4bb		4881c418010000		ADDQ $.file+203(SB), SP								
  kongzhi.go:752	0xe1c4c2		5d			POPQ BP										
  kongzhi.go:752	0xe1c4c3		c3			RET										
  kongzhi.go:750	0xe1c4c4		488d0542533600		LEAQ go:string.*+103173(SB), AX							
  kongzhi.go:750	0xe1c4cb		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  kongzhi.go:750	0xe1c4d0		31c9			XORL CX, CX									
  kongzhi.go:750	0xe1c4d2		31ff			XORL DI, DI									
  kongzhi.go:750	0xe1c4d4		4889fe			MOVQ DI, SI									
  kongzhi.go:750	0xe1c4d7		e8e4fe6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:750	0xe1c4dc		4889d9			MOVQ BX, CX									
  kongzhi.go:750	0xe1c4df		4889c3			MOVQ AX, BX									
  kongzhi.go:750	0xe1c4e2		31c0			XORL AX, AX									
  kongzhi.go:750	0xe1c4e4		4881c418010000		ADDQ $.file+203(SB), SP								
  kongzhi.go:750	0xe1c4eb		5d			POPQ BP										
  kongzhi.go:750	0xe1c4ec		c3			RET										
  kongzhi.go:756	0xe1c4ed		440f11bc24c0000000	MOVUPS X15, 0xc0(SP)								
  kongzhi.go:756	0xe1c4f6		488b842400010000	MOVQ 0x100(SP), AX								
  kongzhi.go:756	0xe1c4fe		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  kongzhi.go:756	0xe1c503		4889d9			MOVQ BX, CX									
  kongzhi.go:756	0xe1c506		e8b5dc64ff		CALL runtime.convTslice(SB)							
  kongzhi.go:756	0xe1c50b		488d152ebd2100		LEAQ runtime.types+340544(SB), DX						
  kongzhi.go:756	0xe1c512		48899424c0000000	MOVQ DX, 0xc0(SP)								
  kongzhi.go:756	0xe1c51a		48898424c8000000	MOVQ AX, 0xc8(SP)								
  print.go:233		0xe1c522		488b1d575b6f02		MOVQ os.Stdout(SB), BX								
  print.go:233		0xe1c529		488d05b0f50402		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:233		0xe1c530		488d0deee23600		LEAQ go:string.*+140061(SB), CX							
  print.go:233		0xe1c537		bf1d000000		MOVL $__major_os_version__+23(SB), DI						
  print.go:233		0xe1c53c		488db424c0000000	LEAQ 0xc0(SP), SI								
  print.go:233		0xe1c544		41b801000000		MOVL $__minor_os_version__(SB), R8						
  print.go:233		0xe1c54a		4d89c1			MOVQ R8, R9									
  print.go:233		0xe1c54d		e8ce2c70ff		CALL fmt.Fprintf(SB)								
  kongzhi.go:759	0xe1c552		440f117c2438		MOVUPS X15, 0x38(SP)								
  kongzhi.go:760	0xe1c558		90			NOPL										
  reader.go:159		0xe1c559		488d0560be2b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe1c560		e83b525fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe1c565		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe1c56d		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe1c575		833dd415740200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe1c57c		750a			JNE 0xe1c588									
  reader.go:159		0xe1c57e		488b942400010000	MOVQ 0x100(SP), DX								
  reader.go:159		0xe1c586		eb10			JMP 0xe1c598									
  reader.go:159		0xe1c588		e893be65ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe1c58d		488b942400010000	MOVQ 0x100(SP), DX								
  reader.go:159		0xe1c595		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe1c598		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe1c59b		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe1c5a3		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  kongzhi.go:761	0xe1c5ab		4889c3			MOVQ AX, BX									
  kongzhi.go:761	0xe1c5ae		488d0d8ba90502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:761	0xe1c5b5		488d3de40c7402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:761	0xe1c5bc		488d355da62000		LEAQ runtime.types+269344(SB), SI						
  kongzhi.go:761	0xe1c5c3		4c8d442438		LEAQ 0x38(SP), R8								
  kongzhi.go:761	0xe1c5c8		488d0511050502		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  kongzhi.go:761	0xe1c5cf		e86c4c74ff		CALL encoding/binary.Read(SB)							
  kongzhi.go:762	0xe1c5d4		4885c0			TESTQ AX, AX									
  kongzhi.go:762	0xe1c5d7		755b			JNE 0xe1c634									
  kongzhi.go:773	0xe1c5d9		8b4c243c		MOVL 0x3c(SP), CX								
  kongzhi.go:773	0xe1c5dd		0f1f00			NOPL 0(AX)									
  kongzhi.go:773	0xe1c5e0		85c9			TESTL CX, CX									
  kongzhi.go:773	0xe1c5e2		764a			JBE 0xe1c62e									
  kongzhi.go:774	0xe1c5e4		488d05b5632200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:774	0xe1c5eb		89cb			MOVL CX, BX									
  kongzhi.go:774	0xe1c5ed		e86e5565ff		CALL runtime.makeslice(SB)							
  kongzhi.go:774	0xe1c5f2		4889842400010000	MOVQ AX, 0x100(SP)								
  kongzhi.go:774	0xe1c5fa		448b44243c		MOVL 0x3c(SP), R8								
  kongzhi.go:774	0xe1c5ff		4c89842490000000	MOVQ R8, 0x90(SP)								
  kongzhi.go:746	0xe1c607		488b942428010000	MOVQ 0x128(SP), DX								
  kongzhi.go:746	0xe1c60f		4885d2			TESTQ DX, DX									
  kongzhi.go:775	0xe1c612		0f84ad010000		JE 0xe1c7c5									
  kongzhi.go:775	0xe1c618		488b5a08		MOVQ 0x8(DX), BX								
  kongzhi.go:775	0xe1c61c		4c8b0d6df31900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.31(SB), R9				
  kongzhi.go:775	0xe1c623		4d8b11			MOVQ 0(R9), R10									
  kongzhi.go:775	0xe1c626		8b5210			MOVL 0x10(DX), DX								
  kongzhi.go:775	0xe1c629		e942020000		JMP 0xe1c870									
  kongzhi.go:775	0xe1c62e		31c0			XORL AX, AX									
  kongzhi.go:775	0xe1c630		31c9			XORL CX, CX									
  kongzhi.go:773	0xe1c632		eb51			JMP 0xe1c685									
  kongzhi.go:763	0xe1c634		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  kongzhi.go:763	0xe1c63d		7404			JE 0xe1c643									
  kongzhi.go:763	0xe1c63f		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:763	0xe1c643		48898424f0000000	MOVQ AX, 0xf0(SP)								
  kongzhi.go:763	0xe1c64b		48899c24f8000000	MOVQ BX, 0xf8(SP)								
  kongzhi.go:763	0xe1c653		488d0562cd3600		LEAQ go:string.*+134836(SB), AX							
  kongzhi.go:763	0xe1c65a		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:763	0xe1c65f		488d8c24f0000000	LEAQ 0xf0(SP), CX								
  kongzhi.go:763	0xe1c667		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:763	0xe1c66c		4889fe			MOVQ DI, SI									
  kongzhi.go:763	0xe1c66f		e84cfd6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:763	0xe1c674		4889d9			MOVQ BX, CX									
  kongzhi.go:763	0xe1c677		4889c3			MOVQ AX, BX									
  kongzhi.go:763	0xe1c67a		31c0			XORL AX, AX									
  kongzhi.go:763	0xe1c67c		4881c418010000		ADDQ $.file+203(SB), SP								
  kongzhi.go:763	0xe1c683		5d			POPQ BP										
  kongzhi.go:763	0xe1c684		c3			RET										
  kongzhi.go:784	0xe1c685		4889442468		MOVQ AX, 0x68(SP)								
  kongzhi.go:784	0xe1c68a		48898c2498000000	MOVQ CX, 0x98(SP)								
  kongzhi.go:782	0xe1c692		488d0567882e00		LEAQ runtime.types+1179392(SB), AX						
  kongzhi.go:782	0xe1c699		e802515fff		CALL runtime.newobject(SB)							
  kongzhi.go:783	0xe1c69e		837c243c00		CMPL 0x3c(SP), $0x0								
  kongzhi.go:783	0xe1c6a3		0f86f3000000		JBE 0xe1c79c									
  kongzhi.go:782	0xe1c6a9		4889842408010000	MOVQ AX, 0x108(SP)								
  kongzhi.go:784	0xe1c6b1		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)								
  kongzhi.go:784	0xe1c6ba		488b842498000000	MOVQ 0x98(SP), AX								
  kongzhi.go:784	0xe1c6c2		488b5c2468		MOVQ 0x68(SP), BX								
  kongzhi.go:784	0xe1c6c7		4889d9			MOVQ BX, CX									
  kongzhi.go:784	0xe1c6ca		e8f1da64ff		CALL runtime.convTslice(SB)							
  kongzhi.go:784	0xe1c6cf		488d156abb2100		LEAQ runtime.types+340544(SB), DX						
  kongzhi.go:784	0xe1c6d6		48899424b0000000	MOVQ DX, 0xb0(SP)								
  kongzhi.go:784	0xe1c6de		48898424b8000000	MOVQ AX, 0xb8(SP)								
  print.go:314		0xe1c6e6		488b1d93596f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe1c6ed		488d05ecf30402		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe1c6f4		488d8c24b0000000	LEAQ 0xb0(SP), CX								
  print.go:314		0xe1c6fc		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe1c701		4889fe			MOVQ DI, SI									
  print.go:314		0xe1c704		e8573170ff		CALL fmt.Fprintln(SB)								
  kongzhi.go:785	0xe1c709		488b842498000000	MOVQ 0x98(SP), AX								
  kongzhi.go:785	0xe1c711		488b5c2468		MOVQ 0x68(SP), BX								
  kongzhi.go:785	0xe1c716		4889d9			MOVQ BX, CX									
  kongzhi.go:785	0xe1c719		488d3d00a92000		LEAQ runtime.types+270368(SB), DI						
  kongzhi.go:785	0xe1c720		488bb42408010000	MOVQ 0x108(SP), SI								
  kongzhi.go:785	0xe1c728		e8b3ad74ff		CALL encoding/json.Unmarshal(SB)						
  kongzhi.go:786	0xe1c72d		4885c0			TESTQ AX, AX									
  kongzhi.go:786	0xe1c730		7451			JE 0xe1c783									
  kongzhi.go:787	0xe1c732		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  kongzhi.go:787	0xe1c73b		7404			JE 0xe1c741									
  kongzhi.go:787	0xe1c73d		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:787	0xe1c741		48898424f0000000	MOVQ AX, 0xf0(SP)								
  kongzhi.go:787	0xe1c749		48899c24f8000000	MOVQ BX, 0xf8(SP)								
  kongzhi.go:787	0xe1c751		488d0550a83600		LEAQ go:string.*+125600(SB), AX							
  kongzhi.go:787	0xe1c758		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  kongzhi.go:787	0xe1c75d		488d8c24f0000000	LEAQ 0xf0(SP), CX								
  kongzhi.go:787	0xe1c765		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:787	0xe1c76a		4889fe			MOVQ DI, SI									
  kongzhi.go:787	0xe1c76d		e84efc6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:787	0xe1c772		4889d9			MOVQ BX, CX									
  kongzhi.go:787	0xe1c775		4889c3			MOVQ AX, BX									
  kongzhi.go:787	0xe1c778		31c0			XORL AX, AX									
  kongzhi.go:787	0xe1c77a		4881c418010000		ADDQ $.file+203(SB), SP								
  kongzhi.go:787	0xe1c781		5d			POPQ BP										
  kongzhi.go:787	0xe1c782		c3			RET										
  kongzhi.go:794	0xe1c783		488b942408010000	MOVQ 0x108(SP), DX								
  kongzhi.go:794	0xe1c78b		488b4230		MOVQ 0x30(DX), AX								
  kongzhi.go:794	0xe1c78f		31db			XORL BX, BX									
  kongzhi.go:794	0xe1c791		31c9			XORL CX, CX									
  kongzhi.go:794	0xe1c793		4881c418010000		ADDQ $.file+203(SB), SP								
  kongzhi.go:794	0xe1c79a		5d			POPQ BP										
  kongzhi.go:794	0xe1c79b		c3			RET										
  kongzhi.go:791	0xe1c79c		488d05a9503600		LEAQ go:string.*+103236(SB), AX							
  kongzhi.go:791	0xe1c7a3		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  kongzhi.go:791	0xe1c7a8		31c9			XORL CX, CX									
  kongzhi.go:791	0xe1c7aa		31ff			XORL DI, DI									
  kongzhi.go:791	0xe1c7ac		4889fe			MOVQ DI, SI									
  kongzhi.go:791	0xe1c7af		e80cfc6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:791	0xe1c7b4		4889d9			MOVQ BX, CX									
  kongzhi.go:791	0xe1c7b7		4889c3			MOVQ AX, BX									
  kongzhi.go:791	0xe1c7ba		31c0			XORL AX, AX									
  kongzhi.go:791	0xe1c7bc		4881c418010000		ADDQ $.file+203(SB), SP								
  kongzhi.go:791	0xe1c7c3		5d			POPQ BP										
  kongzhi.go:791	0xe1c7c4		c3			RET										
  io.go:354		0xe1c7c5		488b9c2430010000	MOVQ 0x130(SP), BX								
  io.go:354		0xe1c7cd		4889c1			MOVQ AX, CX									
  io.go:354		0xe1c7d0		4c89c7			MOVQ R8, DI									
  io.go:354		0xe1c7d3		4889fe			MOVQ DI, SI									
  io.go:354		0xe1c7d6		4889d0			MOVQ DX, AX									
  io.go:354		0xe1c7d9		e8226469ff		CALL io.ReadAtLeast(SB)								
  io.go:354		0xe1c7de		6690			NOPW										
  kongzhi.go:776	0xe1c7e0		4885db			TESTQ BX, BX									
  kongzhi.go:776	0xe1c7e3		7476			JE 0xe1c85b									
  kongzhi.go:777	0xe1c7e5		440f11bc24d0000000	MOVUPS X15, 0xd0(SP)								
  kongzhi.go:777	0xe1c7ee		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)								
  kongzhi.go:777	0xe1c7f7		7404			JE 0xe1c7fd									
  kongzhi.go:777	0xe1c7f9		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:777	0xe1c7fd		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  kongzhi.go:777	0xe1c805		48898c24d8000000	MOVQ CX, 0xd8(SP)								
  kongzhi.go:777	0xe1c80d		e88ed864ff		CALL runtime.convT64(SB)							
  kongzhi.go:777	0xe1c812		488d0d47632200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:777	0xe1c819		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  kongzhi.go:777	0xe1c821		48898424e8000000	MOVQ AX, 0xe8(SP)								
  kongzhi.go:777	0xe1c829		488d0559033800		LEAQ go:string.*+214657(SB), AX							
  kongzhi.go:777	0xe1c830		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:777	0xe1c835		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  kongzhi.go:777	0xe1c83d		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:777	0xe1c842		4889fe			MOVQ DI, SI									
  kongzhi.go:777	0xe1c845		e876fb6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:777	0xe1c84a		4889d9			MOVQ BX, CX									
  kongzhi.go:777	0xe1c84d		4889c3			MOVQ AX, BX									
  kongzhi.go:777	0xe1c850		31c0			XORL AX, AX									
  kongzhi.go:777	0xe1c852		4881c418010000		ADDQ $.file+203(SB), SP								
  kongzhi.go:777	0xe1c859		5d			POPQ BP										
  kongzhi.go:777	0xe1c85a		c3			RET										
  kongzhi.go:784	0xe1c85b		488b842490000000	MOVQ 0x90(SP), AX								
  kongzhi.go:784	0xe1c863		488b8c2400010000	MOVQ 0x100(SP), CX								
  kongzhi.go:782	0xe1c86b		e915feffff		JMP 0xe1c685									
  kongzhi.go:775	0xe1c870		4989d3			MOVQ DX, R11									
  kongzhi.go:775	0xe1c873		4c21d2			ANDQ R10, DX									
  kongzhi.go:775	0xe1c876		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  kongzhi.go:775	0xe1c87a		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  kongzhi.go:775	0xe1c87f		90			NOPL										
  kongzhi.go:775	0xe1c880		4939dc			CMPQ R12, BX									
  kongzhi.go:775	0xe1c883		742d			JE 0xe1c8b2									
  kongzhi.go:775	0xe1c885		498d5301		LEAQ 0x1(R11), DX								
  kongzhi.go:775	0xe1c889		4d85e4			TESTQ R12, R12									
  kongzhi.go:775	0xe1c88c		75e2			JNE 0xe1c870									
  kongzhi.go:775	0xe1c88e		488d05fbf01900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.31(SB), AX				
  kongzhi.go:775	0xe1c895		e8462a5fff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe1c89a		4c8b842490000000	MOVQ 0x90(SP), R8								
  kongzhi.go:775	0xe1c8a2		4889c2			MOVQ AX, DX									
  io.go:354		0xe1c8a5		488b842400010000	MOVQ 0x100(SP), AX								
  kongzhi.go:775	0xe1c8ad		e913ffffff		JMP 0xe1c7c5									
  kongzhi.go:775	0xe1c8b2		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  kongzhi.go:775	0xe1c8b7		e909ffffff		JMP 0xe1c7c5									
  kongzhi.go:746	0xe1c8bc		4d89d3			MOVQ R10, R11									
  kongzhi.go:746	0xe1c8bf		4d21ca			ANDQ R9, R10									
  kongzhi.go:746	0xe1c8c2		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  kongzhi.go:746	0xe1c8c6		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  kongzhi.go:746	0xe1c8cb		4939dc			CMPQ R12, BX									
  kongzhi.go:746	0xe1c8ce		7425			JE 0xe1c8f5									
  kongzhi.go:746	0xe1c8d0		4d8d5301		LEAQ 0x1(R11), R10								
  kongzhi.go:746	0xe1c8d4		4d85e4			TESTQ R12, R12									
  kongzhi.go:746	0xe1c8d7		75e3			JNE 0xe1c8bc									
  kongzhi.go:746	0xe1c8d9		488d0590f01900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.30(SB), AX				
  kongzhi.go:746	0xe1c8e0		e8fb295fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:746	0xe1c8e5		4889c1			MOVQ AX, CX									
  io.go:354		0xe1c8e8		488b842400010000	MOVQ 0x100(SP), AX								
  kongzhi.go:746	0xe1c8f0		e9c7faffff		JMP 0xe1c3bc									
  kongzhi.go:746	0xe1c8f5		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  kongzhi.go:746	0xe1c8fa		4889d1			MOVQ DX, CX									
  kongzhi.go:746	0xe1c8fd		0f1f00			NOPL 0(AX)									
  kongzhi.go:746	0xe1c900		e9b7faffff		JMP 0xe1c3bc									
  buffer.go:54		0xe1c905		e896bf65ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe1c90a		90			NOPL										
  kongzhi.go:705	0xe1c90b		4889442408		MOVQ AX, 0x8(SP)								
  kongzhi.go:705	0xe1c910		48895c2410		MOVQ BX, 0x10(SP)								
  kongzhi.go:705	0xe1c915		e8c69b65ff		CALL runtime.morestack_noctxt.abi0(SB)						
  kongzhi.go:705	0xe1c91a		488b442408		MOVQ 0x8(SP), AX								
  kongzhi.go:705	0xe1c91f		488b5c2410		MOVQ 0x10(SP), BX								
  kongzhi.go:705	0xe1c924		e9f7f7ffff		JMP CAS-Backend/pkg/agvcontrol.SltGetMapRequest(SB)				
  :-1			0xe1c929		cc			INT $__subsystem__(SB)								
  :-1			0xe1c92a		cc			INT $__subsystem__(SB)								
  :-1			0xe1c92b		cc			INT $__subsystem__(SB)								
  :-1			0xe1c92c		cc			INT $__subsystem__(SB)								
  :-1			0xe1c92d		cc			INT $__subsystem__(SB)								
  :-1			0xe1c92e		cc			INT $__subsystem__(SB)								
  :-1			0xe1c92f		cc			INT $__subsystem__(SB)								
  :-1			0xe1c930		cc			INT $__subsystem__(SB)								
  :-1			0xe1c931		cc			INT $__subsystem__(SB)								
  :-1			0xe1c932		cc			INT $__subsystem__(SB)								
  :-1			0xe1c933		cc			INT $__subsystem__(SB)								
  :-1			0xe1c934		cc			INT $__subsystem__(SB)								
  :-1			0xe1c935		cc			INT $__subsystem__(SB)								
  :-1			0xe1c936		cc			INT $__subsystem__(SB)								
  :-1			0xe1c937		cc			INT $__subsystem__(SB)								
  :-1			0xe1c938		cc			INT $__subsystem__(SB)								
  :-1			0xe1c939		cc			INT $__subsystem__(SB)								
  :-1			0xe1c93a		cc			INT $__subsystem__(SB)								
  :-1			0xe1c93b		cc			INT $__subsystem__(SB)								
  :-1			0xe1c93c		cc			INT $__subsystem__(SB)								
  :-1			0xe1c93d		cc			INT $__subsystem__(SB)								
  :-1			0xe1c93e		cc			INT $__subsystem__(SB)								
  :-1			0xe1c93f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.CancerChongdingweiapi(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:917	0xe1c940		4c8d642480		LEAQ -0x80(SP), R12								
  kongzhi.go:917	0xe1c945		4d3b6610		CMPQ R12, 0x10(R14)								
  kongzhi.go:917	0xe1c949		0f8649070000		JBE 0xe1d098									
  kongzhi.go:917	0xe1c94f		55			PUSHQ BP									
  kongzhi.go:917	0xe1c950		4889e5			MOVQ SP, BP									
  kongzhi.go:917	0xe1c953		4881ecf8000000		SUBQ $.file+171(SB), SP								
  kongzhi.go:923	0xe1c95a		4889842408010000	MOVQ AX, 0x108(SP)								
  kongzhi.go:923	0xe1c962		48899c2410010000	MOVQ BX, 0x110(SP)								
  kongzhi.go:922	0xe1c96a		31c9			XORL CX, CX									
  kongzhi.go:922	0xe1c96c		488d052d097402		LEAQ unicode..stmp_365(SB), AX							
  kongzhi.go:922	0xe1c973		4889cb			MOVQ CX, BX									
  kongzhi.go:922	0xe1c976		e845d864ff		CALL runtime.convTslice(SB)							
  kongzhi.go:922	0xe1c97b		4889c3			MOVQ AX, BX									
  kongzhi.go:922	0xe1c97e		488d05bbb82100		LEAQ runtime.types+340544(SB), AX						
  kongzhi.go:922	0xe1c985		e8160b75ff		CALL encoding/json.Marshal(SB)							
  kongzhi.go:923	0xe1c98a		4885ff			TESTQ DI, DI									
  kongzhi.go:923	0xe1c98d		7452			JE 0xe1c9e1									
  kongzhi.go:924	0xe1c98f		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  kongzhi.go:924	0xe1c998		7404			JE 0xe1c99e									
  kongzhi.go:924	0xe1c99a		488b7f08		MOVQ 0x8(DI), DI								
  kongzhi.go:924	0xe1c99e		4889bc24d8000000	MOVQ DI, 0xd8(SP)								
  kongzhi.go:924	0xe1c9a6		4889b424e0000000	MOVQ SI, 0xe0(SP)								
  kongzhi.go:924	0xe1c9ae		488d05e6713600		LEAQ go:string.*+112275(SB), AX							
  kongzhi.go:924	0xe1c9b5		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  kongzhi.go:924	0xe1c9ba		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  kongzhi.go:924	0xe1c9c2		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:924	0xe1c9c7		4889fe			MOVQ DI, SI									
  kongzhi.go:924	0xe1c9ca		e8f1f96fff		CALL fmt.Errorf(SB)								
  kongzhi.go:924	0xe1c9cf		4889d9			MOVQ BX, CX									
  kongzhi.go:924	0xe1c9d2		4889c3			MOVQ AX, BX									
  kongzhi.go:924	0xe1c9d5		31c0			XORL AX, AX									
  kongzhi.go:924	0xe1c9d7		4881c4f8000000		ADDQ $.file+171(SB), SP								
  kongzhi.go:924	0xe1c9de		5d			POPQ BP										
  kongzhi.go:924	0xe1c9df		90			NOPL										
  kongzhi.go:924	0xe1c9e0		c3			RET										
  kongzhi.go:922	0xe1c9e1		48894c2478		MOVQ CX, 0x78(SP)								
  kongzhi.go:922	0xe1c9e6		48895c2470		MOVQ BX, 0x70(SP)								
  kongzhi.go:922	0xe1c9eb		4889842498000000	MOVQ AX, 0x98(SP)								
  kongzhi.go:934	0xe1c9f3		48c74424405a010100	MOVQ $__dll_characteristics__+32762(SB), 0x40(SP)				
  kongzhi.go:934	0xe1c9fc		48c7442448d4070000	MOVQ $__file_alignment__+1492(SB), 0x48(SP)					
  kongzhi.go:932	0xe1ca05		895c2444		MOVL BX, 0x44(SP)								
  kongzhi.go:938	0xe1ca09		488d05f0b82b00		LEAQ runtime.types+996096(SB), AX						
  kongzhi.go:938	0xe1ca10		e88b4d5fff		CALL runtime.newobject(SB)							
  kongzhi.go:938	0xe1ca15		48898424f0000000	MOVQ AX, 0xf0(SP)								
  kongzhi.go:939	0xe1ca1d		0f10442440		MOVUPS 0x40(SP), X0								
  kongzhi.go:939	0xe1ca22		0f11442450		MOVUPS X0, 0x50(SP)								
  kongzhi.go:939	0xe1ca27		4889c3			MOVQ AX, BX									
  kongzhi.go:939	0xe1ca2a		488d0d0fa50502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:939	0xe1ca31		488d3d68087402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:939	0xe1ca38		488d35811e2f00		LEAQ runtime.types+1218752(SB), SI						
  kongzhi.go:939	0xe1ca3f		4c8d442450		LEAQ 0x50(SP), R8								
  kongzhi.go:939	0xe1ca44		488d0515060502		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  kongzhi.go:939	0xe1ca4b		e8d05674ff		CALL encoding/binary.Write(SB)							
  kongzhi.go:940	0xe1ca50		4885c0			TESTQ AX, AX									
  kongzhi.go:940	0xe1ca53		7453			JE 0xe1caa8									
  kongzhi.go:941	0xe1ca55		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  kongzhi.go:941	0xe1ca5e		6690			NOPW										
  kongzhi.go:941	0xe1ca60		7404			JE 0xe1ca66									
  kongzhi.go:941	0xe1ca62		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:941	0xe1ca66		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:941	0xe1ca6e		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  kongzhi.go:941	0xe1ca76		488d0523c93600		LEAQ go:string.*+134808(SB), AX							
  kongzhi.go:941	0xe1ca7d		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:941	0xe1ca82		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  kongzhi.go:941	0xe1ca8a		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:941	0xe1ca8f		4889fe			MOVQ DI, SI									
  kongzhi.go:941	0xe1ca92		e829f96fff		CALL fmt.Errorf(SB)								
  kongzhi.go:941	0xe1ca97		4889d9			MOVQ BX, CX									
  kongzhi.go:941	0xe1ca9a		4889c3			MOVQ AX, BX									
  kongzhi.go:941	0xe1ca9d		31c0			XORL AX, AX									
  kongzhi.go:941	0xe1ca9f		4881c4f8000000		ADDQ $.file+171(SB), SP								
  kongzhi.go:941	0xe1caa6		5d			POPQ BP										
  kongzhi.go:941	0xe1caa7		c3			RET										
  kongzhi.go:943	0xe1caa8		488b8424f0000000	MOVQ 0xf0(SP), AX								
  kongzhi.go:943	0xe1cab0		488b9c2498000000	MOVQ 0x98(SP), BX								
  kongzhi.go:943	0xe1cab8		488b4c2470		MOVQ 0x70(SP), CX								
  kongzhi.go:943	0xe1cabd		488b7c2478		MOVQ 0x78(SP), DI								
  kongzhi.go:943	0xe1cac2		e859fa70ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe1cac7		488b9424f0000000	MOVQ 0xf0(SP), DX								
  buffer.go:54		0xe1cacf		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe1cad3		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe1cad7		660f1f840000000000	NOPW 0(AX)(AX*1)								
  buffer.go:54		0xe1cae0		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe1cae3		0f82a9050000		JB 0xe1d092									
  kongzhi.go:946	0xe1cae9		488bb42408010000	MOVQ 0x108(SP), SI								
  kongzhi.go:946	0xe1caf1		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe1caf5		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe1caf8		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe1cafc		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe1caff		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe1cb02		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe1cb05		48f7da			NEGQ DX										
  buffer.go:54		0xe1cb08		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe1cb0c		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe1cb0f		498d1c01		LEAQ 0(R9)(AX*1), BX								
  kongzhi.go:946	0xe1cb13		488b842410010000	MOVQ 0x110(SP), AX								
  kongzhi.go:946	0xe1cb1b		41ffd0			CALL R8										
  kongzhi.go:946	0xe1cb1e		6690			NOPW										
  kongzhi.go:947	0xe1cb20		4885db			TESTQ BX, BX									
  kongzhi.go:947	0xe1cb23		7577			JNE 0xe1cb9c									
  kongzhi.go:952	0xe1cb25		e8761569ff		CALL time.Now(SB)								
  kongzhi.go:952	0xe1cb2a		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  kongzhi.go:952	0xe1cb34		e8277a68ff		CALL time.Time.Add(SB)								
  kongzhi.go:952	0xe1cb39		488b942408010000	MOVQ 0x108(SP), DX								
  kongzhi.go:952	0xe1cb41		488b7240		MOVQ 0x40(DX), SI								
  kongzhi.go:952	0xe1cb45		4889cf			MOVQ CX, DI									
  kongzhi.go:952	0xe1cb48		4889d9			MOVQ BX, CX									
  kongzhi.go:952	0xe1cb4b		4889c3			MOVQ AX, BX									
  kongzhi.go:952	0xe1cb4e		488b842410010000	MOVQ 0x110(SP), AX								
  kongzhi.go:952	0xe1cb56		ffd6			CALL SI										
  kongzhi.go:955	0xe1cb58		488d05415e2200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:955	0xe1cb5f		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  kongzhi.go:955	0xe1cb64		4889d9			MOVQ BX, CX									
  kongzhi.go:955	0xe1cb67		e8f44f65ff		CALL runtime.makeslice(SB)							
  kongzhi.go:955	0xe1cb6c		48898424e8000000	MOVQ AX, 0xe8(SP)								
  kongzhi.go:956	0xe1cb74		488b8c2408010000	MOVQ 0x108(SP), CX								
  kongzhi.go:956	0xe1cb7c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:956	0xe1cb80		4885c9			TESTQ CX, CX									
  kongzhi.go:956	0xe1cb83		7468			JE 0xe1cbed									
  kongzhi.go:956	0xe1cb85		488b5908		MOVQ 0x8(CX), BX								
  kongzhi.go:956	0xe1cb89		488b1520ee1900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.34(SB), DX				
  kongzhi.go:956	0xe1cb90		4c8b0a			MOVQ 0(DX), R9									
  kongzhi.go:956	0xe1cb93		448b5110		MOVL 0x10(CX), R10								
  kongzhi.go:956	0xe1cb97		e9a9040000		JMP 0xe1d045									
  kongzhi.go:948	0xe1cb9c		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  kongzhi.go:948	0xe1cba5		7404			JE 0xe1cbab									
  kongzhi.go:948	0xe1cba7		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:948	0xe1cbab		48899c24d8000000	MOVQ BX, 0xd8(SP)								
  kongzhi.go:948	0xe1cbb3		48898c24e0000000	MOVQ CX, 0xe0(SP)								
  kongzhi.go:948	0xe1cbbb		488d05025c3600		LEAQ go:string.*+107196(SB), AX							
  kongzhi.go:948	0xe1cbc2		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  kongzhi.go:948	0xe1cbc7		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  kongzhi.go:948	0xe1cbcf		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:948	0xe1cbd4		4889fe			MOVQ DI, SI									
  kongzhi.go:948	0xe1cbd7		e8e4f76fff		CALL fmt.Errorf(SB)								
  kongzhi.go:948	0xe1cbdc		4889d9			MOVQ BX, CX									
  kongzhi.go:948	0xe1cbdf		4889c3			MOVQ AX, BX									
  kongzhi.go:948	0xe1cbe2		31c0			XORL AX, AX									
  kongzhi.go:948	0xe1cbe4		4881c4f8000000		ADDQ $.file+171(SB), SP								
  kongzhi.go:948	0xe1cbeb		5d			POPQ BP										
  kongzhi.go:948	0xe1cbec		c3			RET										
  io.go:354		0xe1cbed		488b9c2410010000	MOVQ 0x110(SP), BX								
  io.go:354		0xe1cbf5		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe1cbfa		4889fe			MOVQ DI, SI									
  io.go:354		0xe1cbfd		4989f0			MOVQ SI, R8									
  kongzhi.go:955	0xe1cc00		4889c2			MOVQ AX, DX									
  io.go:354		0xe1cc03		4889c8			MOVQ CX, AX									
  io.go:354		0xe1cc06		4889d1			MOVQ DX, CX									
  io.go:354		0xe1cc09		e8f25f69ff		CALL io.ReadAtLeast(SB)								
  kongzhi.go:957	0xe1cc0e		4885db			TESTQ BX, BX									
  kongzhi.go:957	0xe1cc11		0f8410010000		JE 0xe1cd27									
  kongzhi.go:957	0xe1cc17		660f1f840000000000	NOPW 0(AX)(AX*1)								
  kongzhi.go:959	0xe1cc20		48391d99a11900		CMPQ io.EOF(SB), BX								
  kongzhi.go:959	0xe1cc27		7405			JE 0xe1cc2e									
  kongzhi.go:957	0xe1cc29		4885db			TESTQ BX, BX									
  kongzhi.go:959	0xe1cc2c		eb5a			JMP 0xe1cc88									
  io.go:354		0xe1cc2e		4889442468		MOVQ AX, 0x68(SP)								
  io.go:354		0xe1cc33		48899c2480000000	MOVQ BX, 0x80(SP)								
  io.go:354		0xe1cc3b		48898c24a0000000	MOVQ CX, 0xa0(SP)								
  kongzhi.go:959	0xe1cc43		488b157ea11900		MOVQ io.EOF+8(SB), DX								
  kongzhi.go:959	0xe1cc4a		4889d8			MOVQ BX, AX									
  kongzhi.go:959	0xe1cc4d		4889cb			MOVQ CX, BX									
  kongzhi.go:959	0xe1cc50		4889d1			MOVQ DX, CX									
  kongzhi.go:959	0xe1cc53		e888b85eff		CALL runtime.ifaceeq(SB)							
  kongzhi.go:959	0xe1cc58		0f1f840000000000	NOPL 0(AX)(AX*1)								
  kongzhi.go:959	0xe1cc60		84c0			TESTL AL, AL									
  kongzhi.go:959	0xe1cc62		0f8596000000		JNE 0xe1ccfe									
  kongzhi.go:957	0xe1cc68		488b8c2480000000	MOVQ 0x80(SP), CX								
  kongzhi.go:957	0xe1cc70		4885c9			TESTQ CX, CX									
  kongzhi.go:962	0xe1cc73		488b442468		MOVQ 0x68(SP), AX								
  kongzhi.go:962	0xe1cc78		488b8c24a0000000	MOVQ 0xa0(SP), CX								
  kongzhi.go:962	0xe1cc80		488b9c2480000000	MOVQ 0x80(SP), BX								
  kongzhi.go:962	0xe1cc88		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  kongzhi.go:962	0xe1cc91		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:962	0xe1cc9a		7404			JE 0xe1cca0									
  kongzhi.go:962	0xe1cc9c		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:962	0xe1cca0		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  kongzhi.go:962	0xe1cca8		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  kongzhi.go:962	0xe1ccb0		e8ebd364ff		CALL runtime.convT64(SB)							
  kongzhi.go:962	0xe1ccb5		488d0da45e2200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:962	0xe1ccbc		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  kongzhi.go:962	0xe1ccc4		48898424d0000000	MOVQ AX, 0xd0(SP)								
  kongzhi.go:962	0xe1cccc		488d0585fe3700		LEAQ go:string.*+214608(SB), AX							
  kongzhi.go:962	0xe1ccd3		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:962	0xe1ccd8		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  kongzhi.go:962	0xe1cce0		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:962	0xe1cce5		4889fe			MOVQ DI, SI									
  kongzhi.go:962	0xe1cce8		e8d3f66fff		CALL fmt.Errorf(SB)								
  kongzhi.go:962	0xe1cced		4889d9			MOVQ BX, CX									
  kongzhi.go:962	0xe1ccf0		4889c3			MOVQ AX, BX									
  kongzhi.go:962	0xe1ccf3		31c0			XORL AX, AX									
  kongzhi.go:962	0xe1ccf5		4881c4f8000000		ADDQ $.file+171(SB), SP								
  kongzhi.go:962	0xe1ccfc		5d			POPQ BP										
  kongzhi.go:962	0xe1ccfd		c3			RET										
  kongzhi.go:960	0xe1ccfe		488d05084b3600		LEAQ go:string.*+103173(SB), AX							
  kongzhi.go:960	0xe1cd05		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  kongzhi.go:960	0xe1cd0a		31c9			XORL CX, CX									
  kongzhi.go:960	0xe1cd0c		31ff			XORL DI, DI									
  kongzhi.go:960	0xe1cd0e		4889fe			MOVQ DI, SI									
  kongzhi.go:960	0xe1cd11		e8aaf66fff		CALL fmt.Errorf(SB)								
  kongzhi.go:960	0xe1cd16		4889d9			MOVQ BX, CX									
  kongzhi.go:960	0xe1cd19		4889c3			MOVQ AX, BX									
  kongzhi.go:960	0xe1cd1c		31c0			XORL AX, AX									
  kongzhi.go:960	0xe1cd1e		4881c4f8000000		ADDQ $.file+171(SB), SP								
  kongzhi.go:960	0xe1cd25		5d			POPQ BP										
  kongzhi.go:960	0xe1cd26		c3			RET										
  kongzhi.go:966	0xe1cd27		440f117c2430		MOVUPS X15, 0x30(SP)								
  kongzhi.go:967	0xe1cd2d		90			NOPL										
  reader.go:159		0xe1cd2e		488d058bb62b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe1cd35		e8664a5fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe1cd3a		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe1cd42		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe1cd4a		833dff0d740200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe1cd51		750d			JNE 0xe1cd60									
  reader.go:159		0xe1cd53		488b9424e8000000	MOVQ 0xe8(SP), DX								
  reader.go:159		0xe1cd5b		eb13			JMP 0xe1cd70									
  reader.go:159		0xe1cd5d		0f1f00			NOPL 0(AX)									
  reader.go:159		0xe1cd60		e8bbb665ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe1cd65		488b9424e8000000	MOVQ 0xe8(SP), DX								
  reader.go:159		0xe1cd6d		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe1cd70		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe1cd73		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe1cd7b		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  kongzhi.go:968	0xe1cd83		4889c3			MOVQ AX, BX									
  kongzhi.go:968	0xe1cd86		488d0db3a10502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:968	0xe1cd8d		488d3d0c057402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:968	0xe1cd94		488d35859e2000		LEAQ runtime.types+269344(SB), SI						
  kongzhi.go:968	0xe1cd9b		4c8d442430		LEAQ 0x30(SP), R8								
  kongzhi.go:968	0xe1cda0		488d0539fd0402		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  kongzhi.go:968	0xe1cda7		e8944474ff		CALL encoding/binary.Read(SB)							
  kongzhi.go:969	0xe1cdac		4885c0			TESTQ AX, AX									
  kongzhi.go:969	0xe1cdaf		755a			JNE 0xe1ce0b									
  kongzhi.go:980	0xe1cdb1		8b4c2434		MOVL 0x34(SP), CX								
  kongzhi.go:980	0xe1cdb5		85c9			TESTL CX, CX									
  kongzhi.go:980	0xe1cdb7		764c			JBE 0xe1ce05									
  kongzhi.go:981	0xe1cdb9		488d05e05b2200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:981	0xe1cdc0		89cb			MOVL CX, BX									
  kongzhi.go:981	0xe1cdc2		e8994d65ff		CALL runtime.makeslice(SB)							
  kongzhi.go:981	0xe1cdc7		48898424e8000000	MOVQ AX, 0xe8(SP)								
  kongzhi.go:981	0xe1cdcf		448b442434		MOVL 0x34(SP), R8								
  kongzhi.go:981	0xe1cdd4		4c89842488000000	MOVQ R8, 0x88(SP)								
  kongzhi.go:956	0xe1cddc		488b942408010000	MOVQ 0x108(SP), DX								
  kongzhi.go:956	0xe1cde4		4885d2			TESTQ DX, DX									
  kongzhi.go:982	0xe1cde7		0f8460010000		JE 0xe1cf4d									
  kongzhi.go:982	0xe1cded		488b5a08		MOVQ 0x8(DX), BX								
  kongzhi.go:982	0xe1cdf1		4c8b0dd8eb1900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.35(SB), R9				
  kongzhi.go:982	0xe1cdf8		4d8b11			MOVQ 0(R9), R10									
  kongzhi.go:982	0xe1cdfb		8b5210			MOVL 0x10(DX), DX								
  kongzhi.go:982	0xe1cdfe		6690			NOPW										
  kongzhi.go:982	0xe1ce00		e9f1010000		JMP 0xe1cff6									
  kongzhi.go:982	0xe1ce05		31c0			XORL AX, AX									
  kongzhi.go:982	0xe1ce07		31c9			XORL CX, CX									
  kongzhi.go:980	0xe1ce09		eb51			JMP 0xe1ce5c									
  kongzhi.go:970	0xe1ce0b		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  kongzhi.go:970	0xe1ce14		7404			JE 0xe1ce1a									
  kongzhi.go:970	0xe1ce16		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:970	0xe1ce1a		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:970	0xe1ce22		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  kongzhi.go:970	0xe1ce2a		488d058bc53600		LEAQ go:string.*+134836(SB), AX							
  kongzhi.go:970	0xe1ce31		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:970	0xe1ce36		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  kongzhi.go:970	0xe1ce3e		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:970	0xe1ce43		4889fe			MOVQ DI, SI									
  kongzhi.go:970	0xe1ce46		e875f56fff		CALL fmt.Errorf(SB)								
  kongzhi.go:970	0xe1ce4b		4889d9			MOVQ BX, CX									
  kongzhi.go:970	0xe1ce4e		4889c3			MOVQ AX, BX									
  kongzhi.go:970	0xe1ce51		31c0			XORL AX, AX									
  kongzhi.go:970	0xe1ce53		4881c4f8000000		ADDQ $.file+171(SB), SP								
  kongzhi.go:970	0xe1ce5a		5d			POPQ BP										
  kongzhi.go:970	0xe1ce5b		c3			RET										
  kongzhi.go:991	0xe1ce5c		4889442460		MOVQ AX, 0x60(SP)								
  kongzhi.go:991	0xe1ce61		48898c2490000000	MOVQ CX, 0x90(SP)								
  kongzhi.go:989	0xe1ce69		488d0590902b00		LEAQ runtime.types+986880(SB), AX						
  kongzhi.go:989	0xe1ce70		e82b495fff		CALL runtime.newobject(SB)							
  kongzhi.go:990	0xe1ce75		837c243400		CMPL 0x34(SP), $0x0								
  kongzhi.go:990	0xe1ce7a		767e			JBE 0xe1cefa									
  kongzhi.go:991	0xe1ce7c		488b5c2460		MOVQ 0x60(SP), BX								
  kongzhi.go:991	0xe1ce81		4889d9			MOVQ BX, CX									
  kongzhi.go:991	0xe1ce84		488d3dd59d2000		LEAQ runtime.types+269408(SB), DI						
  kongzhi.go:991	0xe1ce8b		4889c6			MOVQ AX, SI									
  kongzhi.go:991	0xe1ce8e		488b842490000000	MOVQ 0x90(SP), AX								
  kongzhi.go:991	0xe1ce96		e845a674ff		CALL encoding/json.Unmarshal(SB)						
  kongzhi.go:991	0xe1ce9b		0f1f440000		NOPL 0(AX)(AX*1)								
  kongzhi.go:992	0xe1cea0		4885c0			TESTQ AX, AX									
  kongzhi.go:992	0xe1cea3		0f8492000000		JE 0xe1cf3b									
  kongzhi.go:993	0xe1cea9		440f11bc24d8000000	MOVUPS X15, 0xd8(SP)								
  kongzhi.go:993	0xe1ceb2		7404			JE 0xe1ceb8									
  kongzhi.go:993	0xe1ceb4		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:993	0xe1ceb8		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:993	0xe1cec0		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  kongzhi.go:993	0xe1cec8		488d05d9a03600		LEAQ go:string.*+125600(SB), AX							
  kongzhi.go:993	0xe1cecf		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  kongzhi.go:993	0xe1ced4		488d8c24d8000000	LEAQ 0xd8(SP), CX								
  kongzhi.go:993	0xe1cedc		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:993	0xe1cee1		4889fe			MOVQ DI, SI									
  kongzhi.go:993	0xe1cee4		e8d7f46fff		CALL fmt.Errorf(SB)								
  kongzhi.go:993	0xe1cee9		4889d9			MOVQ BX, CX									
  kongzhi.go:993	0xe1ceec		4889c3			MOVQ AX, BX									
  kongzhi.go:993	0xe1ceef		31c0			XORL AX, AX									
  kongzhi.go:993	0xe1cef1		4881c4f8000000		ADDQ $.file+171(SB), SP								
  kongzhi.go:993	0xe1cef8		5d			POPQ BP										
  kongzhi.go:993	0xe1cef9		c3			RET										
  kongzhi.go:997	0xe1cefa		488d151f5a2200		LEAQ runtime.types+383264(SB), DX						
  kongzhi.go:997	0xe1cf01		48899424a8000000	MOVQ DX, 0xa8(SP)								
  kongzhi.go:997	0xe1cf09		488d1590c10402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_40(SB), DX				
  kongzhi.go:997	0xe1cf10		48899424b0000000	MOVQ DX, 0xb0(SP)								
  print.go:314		0xe1cf18		488b1d61516f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe1cf1f		488d05baeb0402		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe1cf26		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  print.go:314		0xe1cf2e		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe1cf33		4889fe			MOVQ DI, SI									
  print.go:314		0xe1cf36		e8252970ff		CALL fmt.Fprintln(SB)								
  kongzhi.go:1000	0xe1cf3b		b801000000		MOVL $__minor_os_version__(SB), AX						
  kongzhi.go:1000	0xe1cf40		31db			XORL BX, BX									
  kongzhi.go:1000	0xe1cf42		31c9			XORL CX, CX									
  kongzhi.go:1000	0xe1cf44		4881c4f8000000		ADDQ $.file+171(SB), SP								
  kongzhi.go:1000	0xe1cf4b		5d			POPQ BP										
  kongzhi.go:1000	0xe1cf4c		c3			RET										
  io.go:354		0xe1cf4d		488b9c2410010000	MOVQ 0x110(SP), BX								
  io.go:354		0xe1cf55		4889c1			MOVQ AX, CX									
  io.go:354		0xe1cf58		4c89c7			MOVQ R8, DI									
  io.go:354		0xe1cf5b		4889fe			MOVQ DI, SI									
  io.go:354		0xe1cf5e		4889d0			MOVQ DX, AX									
  io.go:354		0xe1cf61		e89a5c69ff		CALL io.ReadAtLeast(SB)								
  kongzhi.go:983	0xe1cf66		4885db			TESTQ BX, BX									
  kongzhi.go:983	0xe1cf69		7476			JE 0xe1cfe1									
  kongzhi.go:984	0xe1cf6b		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  kongzhi.go:984	0xe1cf74		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:984	0xe1cf7d		7404			JE 0xe1cf83									
  kongzhi.go:984	0xe1cf7f		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:984	0xe1cf83		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  kongzhi.go:984	0xe1cf8b		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  kongzhi.go:984	0xe1cf93		e808d164ff		CALL runtime.convT64(SB)							
  kongzhi.go:984	0xe1cf98		488d0dc15b2200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:984	0xe1cf9f		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  kongzhi.go:984	0xe1cfa7		48898424d0000000	MOVQ AX, 0xd0(SP)								
  kongzhi.go:984	0xe1cfaf		488d05d3fb3700		LEAQ go:string.*+214657(SB), AX							
  kongzhi.go:984	0xe1cfb6		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:984	0xe1cfbb		488d8c24b8000000	LEAQ 0xb8(SP), CX								
  kongzhi.go:984	0xe1cfc3		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:984	0xe1cfc8		4889fe			MOVQ DI, SI									
  kongzhi.go:984	0xe1cfcb		e8f0f36fff		CALL fmt.Errorf(SB)								
  kongzhi.go:984	0xe1cfd0		4889d9			MOVQ BX, CX									
  kongzhi.go:984	0xe1cfd3		4889c3			MOVQ AX, BX									
  kongzhi.go:984	0xe1cfd6		31c0			XORL AX, AX									
  kongzhi.go:984	0xe1cfd8		4881c4f8000000		ADDQ $.file+171(SB), SP								
  kongzhi.go:984	0xe1cfdf		5d			POPQ BP										
  kongzhi.go:984	0xe1cfe0		c3			RET										
  kongzhi.go:991	0xe1cfe1		488b842488000000	MOVQ 0x88(SP), AX								
  kongzhi.go:991	0xe1cfe9		488b8c24e8000000	MOVQ 0xe8(SP), CX								
  kongzhi.go:989	0xe1cff1		e966feffff		JMP 0xe1ce5c									
  kongzhi.go:982	0xe1cff6		4989d3			MOVQ DX, R11									
  kongzhi.go:982	0xe1cff9		4c21d2			ANDQ R10, DX									
  kongzhi.go:982	0xe1cffc		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  kongzhi.go:982	0xe1d000		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  kongzhi.go:982	0xe1d005		4939dc			CMPQ R12, BX									
  kongzhi.go:982	0xe1d008		742d			JE 0xe1d037									
  kongzhi.go:982	0xe1d00a		498d5301		LEAQ 0x1(R11), DX								
  kongzhi.go:982	0xe1d00e		4d85e4			TESTQ R12, R12									
  kongzhi.go:982	0xe1d011		75e3			JNE 0xe1cff6									
  kongzhi.go:982	0xe1d013		488d05b6e91900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.35(SB), AX				
  kongzhi.go:982	0xe1d01a		e8c1225fff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe1d01f		4c8b842488000000	MOVQ 0x88(SP), R8								
  kongzhi.go:982	0xe1d027		4889c2			MOVQ AX, DX									
  io.go:354		0xe1d02a		488b8424e8000000	MOVQ 0xe8(SP), AX								
  kongzhi.go:982	0xe1d032		e916ffffff		JMP 0xe1cf4d									
  kongzhi.go:982	0xe1d037		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  kongzhi.go:982	0xe1d03c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:982	0xe1d040		e908ffffff		JMP 0xe1cf4d									
  kongzhi.go:956	0xe1d045		4d89d3			MOVQ R10, R11									
  kongzhi.go:956	0xe1d048		4d21ca			ANDQ R9, R10									
  kongzhi.go:956	0xe1d04b		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  kongzhi.go:956	0xe1d04f		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  kongzhi.go:956	0xe1d054		4939dc			CMPQ R12, BX									
  kongzhi.go:956	0xe1d057		742c			JE 0xe1d085									
  kongzhi.go:956	0xe1d059		4d8d5301		LEAQ 0x1(R11), R10								
  kongzhi.go:956	0xe1d05d		0f1f00			NOPL 0(AX)									
  kongzhi.go:956	0xe1d060		4d85e4			TESTQ R12, R12									
  kongzhi.go:956	0xe1d063		75e0			JNE 0xe1d045									
  kongzhi.go:956	0xe1d065		488d0544e91900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.34(SB), AX				
  kongzhi.go:956	0xe1d06c		e86f225fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:956	0xe1d071		4889c1			MOVQ AX, CX									
  io.go:354		0xe1d074		488b8424e8000000	MOVQ 0xe8(SP), AX								
  io.go:354		0xe1d07c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:956	0xe1d080		e968fbffff		JMP 0xe1cbed									
  kongzhi.go:956	0xe1d085		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  kongzhi.go:956	0xe1d08a		4889d1			MOVQ DX, CX									
  kongzhi.go:956	0xe1d08d		e95bfbffff		JMP 0xe1cbed									
  buffer.go:54		0xe1d092		e809b865ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe1d097		90			NOPL										
  kongzhi.go:917	0xe1d098		4889442408		MOVQ AX, 0x8(SP)								
  kongzhi.go:917	0xe1d09d		48895c2410		MOVQ BX, 0x10(SP)								
  kongzhi.go:917	0xe1d0a2		e8399465ff		CALL runtime.morestack_noctxt.abi0(SB)						
  kongzhi.go:917	0xe1d0a7		488b442408		MOVQ 0x8(SP), AX								
  kongzhi.go:917	0xe1d0ac		488b5c2410		MOVQ 0x10(SP), BX								
  kongzhi.go:917	0xe1d0b1		e98af8ffff		JMP CAS-Backend/pkg/agvcontrol.CancerChongdingweiapi(SB)			
  :-1			0xe1d0b6		cc			INT $__subsystem__(SB)								
  :-1			0xe1d0b7		cc			INT $__subsystem__(SB)								
  :-1			0xe1d0b8		cc			INT $__subsystem__(SB)								
  :-1			0xe1d0b9		cc			INT $__subsystem__(SB)								
  :-1			0xe1d0ba		cc			INT $__subsystem__(SB)								
  :-1			0xe1d0bb		cc			INT $__subsystem__(SB)								
  :-1			0xe1d0bc		cc			INT $__subsystem__(SB)								
  :-1			0xe1d0bd		cc			INT $__subsystem__(SB)								
  :-1			0xe1d0be		cc			INT $__subsystem__(SB)								
  :-1			0xe1d0bf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.Chongdingweiapi(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:1003	0xe1d0c0		4c8da42458ffffff	LEAQ 0xffffff58(SP), R12							
  kongzhi.go:1003	0xe1d0c8		4d3b6610		CMPQ R12, 0x10(R14)								
  kongzhi.go:1003	0xe1d0cc		0f8686070000		JBE 0xe1d858									
  kongzhi.go:1003	0xe1d0d2		55			PUSHQ BP									
  kongzhi.go:1003	0xe1d0d3		4889e5			MOVQ SP, BP									
  kongzhi.go:1003	0xe1d0d6		4881ec20010000		SUBQ $.file+211(SB), SP								
  kongzhi.go:1005	0xe1d0dd		4889842430010000	MOVQ AX, 0x130(SP)								
  kongzhi.go:1005	0xe1d0e5		48899c2438010000	MOVQ BX, 0x138(SP)								
  kongzhi.go:1004	0xe1d0ed		440f117c2468		MOVUPS X15, 0x68(SP)								
  kongzhi.go:1004	0xe1d0f3		440f117c2470		MOVUPS X15, 0x70(SP)								
  kongzhi.go:1004	0xe1d0f9		440f11bc2480000000	MOVUPS X15, 0x80(SP)								
  kongzhi.go:1005	0xe1d102		84c9			TESTL CL, CL									
  kongzhi.go:1005	0xe1d104		7406			JE 0xe1d10c									
  kongzhi.go:1008	0xe1d106		884c2468		MOVB CL, 0x68(SP)								
  kongzhi.go:1008	0xe1d10a		eb1e			JMP 0xe1d12a									
  kongzhi.go:1012	0xe1d10c		f20f11442470		MOVSD_XMM X0, 0x70(SP)								
  kongzhi.go:1013	0xe1d112		f20f114c2478		MOVSD_XMM X1, 0x78(SP)								
  kongzhi.go:1014	0xe1d118		f20f11942480000000	MOVSD_XMM X2, 0x80(SP)								
  kongzhi.go:1015	0xe1d121		f20f119c2488000000	MOVSD_XMM X3, 0x88(SP)								
  kongzhi.go:1020	0xe1d12a		488d050f7c2e00		LEAQ runtime.types+1178944(SB), AX						
  kongzhi.go:1020	0xe1d131		488d5c2468		LEAQ 0x68(SP), BX								
  kongzhi.go:1020	0xe1d136		e8e51f5fff		CALL runtime.convTnoptr(SB)							
  kongzhi.go:1020	0xe1d13b		4889c3			MOVQ AX, BX									
  kongzhi.go:1020	0xe1d13e		488d05fb7b2e00		LEAQ runtime.types+1178944(SB), AX						
  kongzhi.go:1020	0xe1d145		e8560375ff		CALL encoding/json.Marshal(SB)							
  kongzhi.go:1021	0xe1d14a		4885ff			TESTQ DI, DI									
  kongzhi.go:1021	0xe1d14d		7452			JE 0xe1d1a1									
  kongzhi.go:1022	0xe1d14f		440f11bc2400010000	MOVUPS X15, 0x100(SP)								
  kongzhi.go:1022	0xe1d158		7404			JE 0xe1d15e									
  kongzhi.go:1022	0xe1d15a		488b7f08		MOVQ 0x8(DI), DI								
  kongzhi.go:1022	0xe1d15e		4889bc2400010000	MOVQ DI, 0x100(SP)								
  kongzhi.go:1022	0xe1d166		4889b42408010000	MOVQ SI, 0x108(SP)								
  kongzhi.go:1022	0xe1d16e		488d05266a3600		LEAQ go:string.*+112275(SB), AX							
  kongzhi.go:1022	0xe1d175		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  kongzhi.go:1022	0xe1d17a		488d8c2400010000	LEAQ 0x100(SP), CX								
  kongzhi.go:1022	0xe1d182		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1022	0xe1d187		4889fe			MOVQ DI, SI									
  kongzhi.go:1022	0xe1d18a		e831f26fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1022	0xe1d18f		4889d9			MOVQ BX, CX									
  kongzhi.go:1022	0xe1d192		4889c3			MOVQ AX, BX									
  kongzhi.go:1022	0xe1d195		31c0			XORL AX, AX									
  kongzhi.go:1022	0xe1d197		4881c420010000		ADDQ $.file+211(SB), SP								
  kongzhi.go:1022	0xe1d19e		5d			POPQ BP										
  kongzhi.go:1022	0xe1d19f		90			NOPL										
  kongzhi.go:1022	0xe1d1a0		c3			RET										
  kongzhi.go:1020	0xe1d1a1		48898c24a0000000	MOVQ CX, 0xa0(SP)								
  kongzhi.go:1020	0xe1d1a9		48899c2498000000	MOVQ BX, 0x98(SP)								
  kongzhi.go:1020	0xe1d1b1		48898424c0000000	MOVQ AX, 0xc0(SP)								
  kongzhi.go:1032	0xe1d1b9		48c74424405a010100	MOVQ $__dll_characteristics__+32762(SB), 0x40(SP)				
  kongzhi.go:1032	0xe1d1c2		48c7442448d2070000	MOVQ $__file_alignment__+1490(SB), 0x48(SP)					
  kongzhi.go:1030	0xe1d1cb		895c2444		MOVL BX, 0x44(SP)								
  kongzhi.go:1036	0xe1d1cf		488d052ab12b00		LEAQ runtime.types+996096(SB), AX						
  kongzhi.go:1036	0xe1d1d6		e8c5455fff		CALL runtime.newobject(SB)							
  kongzhi.go:1036	0xe1d1db		4889842418010000	MOVQ AX, 0x118(SP)								
  kongzhi.go:1037	0xe1d1e3		0f10442440		MOVUPS 0x40(SP), X0								
  kongzhi.go:1037	0xe1d1e8		0f11442450		MOVUPS X0, 0x50(SP)								
  kongzhi.go:1037	0xe1d1ed		4889c3			MOVQ AX, BX									
  kongzhi.go:1037	0xe1d1f0		488d0d499d0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:1037	0xe1d1f7		488d3da2007402		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:1037	0xe1d1fe		488d35bb162f00		LEAQ runtime.types+1218752(SB), SI						
  kongzhi.go:1037	0xe1d205		4c8d442450		LEAQ 0x50(SP), R8								
  kongzhi.go:1037	0xe1d20a		488d054ffe0402		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  kongzhi.go:1037	0xe1d211		e80a4f74ff		CALL encoding/binary.Write(SB)							
  kongzhi.go:1038	0xe1d216		4885c0			TESTQ AX, AX									
  kongzhi.go:1038	0xe1d219		7451			JE 0xe1d26c									
  kongzhi.go:1039	0xe1d21b		440f11bc2400010000	MOVUPS X15, 0x100(SP)								
  kongzhi.go:1039	0xe1d224		7404			JE 0xe1d22a									
  kongzhi.go:1039	0xe1d226		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:1039	0xe1d22a		4889842400010000	MOVQ AX, 0x100(SP)								
  kongzhi.go:1039	0xe1d232		48899c2408010000	MOVQ BX, 0x108(SP)								
  kongzhi.go:1039	0xe1d23a		488d055fc13600		LEAQ go:string.*+134808(SB), AX							
  kongzhi.go:1039	0xe1d241		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:1039	0xe1d246		488d8c2400010000	LEAQ 0x100(SP), CX								
  kongzhi.go:1039	0xe1d24e		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1039	0xe1d253		4889fe			MOVQ DI, SI									
  kongzhi.go:1039	0xe1d256		e865f16fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1039	0xe1d25b		4889d9			MOVQ BX, CX									
  kongzhi.go:1039	0xe1d25e		4889c3			MOVQ AX, BX									
  kongzhi.go:1039	0xe1d261		31c0			XORL AX, AX									
  kongzhi.go:1039	0xe1d263		4881c420010000		ADDQ $.file+211(SB), SP								
  kongzhi.go:1039	0xe1d26a		5d			POPQ BP										
  kongzhi.go:1039	0xe1d26b		c3			RET										
  kongzhi.go:1041	0xe1d26c		488b842418010000	MOVQ 0x118(SP), AX								
  kongzhi.go:1041	0xe1d274		488b9c24c0000000	MOVQ 0xc0(SP), BX								
  kongzhi.go:1041	0xe1d27c		488b8c2498000000	MOVQ 0x98(SP), CX								
  kongzhi.go:1041	0xe1d284		488bbc24a0000000	MOVQ 0xa0(SP), DI								
  kongzhi.go:1041	0xe1d28c		e88ff270ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe1d291		488b942418010000	MOVQ 0x118(SP), DX								
  buffer.go:54		0xe1d299		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe1d29d		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe1d2a1		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe1d2a4		0f82a8050000		JB 0xe1d852									
  kongzhi.go:1044	0xe1d2aa		488bb42430010000	MOVQ 0x130(SP), SI								
  kongzhi.go:1044	0xe1d2b2		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe1d2b6		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe1d2b9		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe1d2bd		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe1d2c0		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe1d2c3		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe1d2c6		48f7da			NEGQ DX										
  buffer.go:54		0xe1d2c9		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe1d2cd		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe1d2d0		498d1c01		LEAQ 0(R9)(AX*1), BX								
  kongzhi.go:1044	0xe1d2d4		488b842438010000	MOVQ 0x138(SP), AX								
  kongzhi.go:1044	0xe1d2dc		41ffd0			CALL R8										
  kongzhi.go:1044	0xe1d2df		90			NOPL										
  kongzhi.go:1045	0xe1d2e0		4885db			TESTQ BX, BX									
  kongzhi.go:1045	0xe1d2e3		7577			JNE 0xe1d35c									
  kongzhi.go:1050	0xe1d2e5		e8b60d69ff		CALL time.Now(SB)								
  kongzhi.go:1050	0xe1d2ea		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  kongzhi.go:1050	0xe1d2f4		e8677268ff		CALL time.Time.Add(SB)								
  kongzhi.go:1050	0xe1d2f9		488b942430010000	MOVQ 0x130(SP), DX								
  kongzhi.go:1050	0xe1d301		488b7240		MOVQ 0x40(DX), SI								
  kongzhi.go:1050	0xe1d305		4889cf			MOVQ CX, DI									
  kongzhi.go:1050	0xe1d308		4889d9			MOVQ BX, CX									
  kongzhi.go:1050	0xe1d30b		4889c3			MOVQ AX, BX									
  kongzhi.go:1050	0xe1d30e		488b842438010000	MOVQ 0x138(SP), AX								
  kongzhi.go:1050	0xe1d316		ffd6			CALL SI										
  kongzhi.go:1053	0xe1d318		488d0581562200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:1053	0xe1d31f		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  kongzhi.go:1053	0xe1d324		4889d9			MOVQ BX, CX									
  kongzhi.go:1053	0xe1d327		e8344865ff		CALL runtime.makeslice(SB)							
  kongzhi.go:1053	0xe1d32c		4889842410010000	MOVQ AX, 0x110(SP)								
  kongzhi.go:1054	0xe1d334		488b8c2430010000	MOVQ 0x130(SP), CX								
  kongzhi.go:1054	0xe1d33c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:1054	0xe1d340		4885c9			TESTQ CX, CX									
  kongzhi.go:1054	0xe1d343		7468			JE 0xe1d3ad									
  kongzhi.go:1054	0xe1d345		488b5908		MOVQ 0x8(CX), BX								
  kongzhi.go:1054	0xe1d349		488b15a0e61900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.36(SB), DX				
  kongzhi.go:1054	0xe1d350		4c8b0a			MOVQ 0(DX), R9									
  kongzhi.go:1054	0xe1d353		448b5110		MOVL 0x10(CX), R10								
  kongzhi.go:1054	0xe1d357		e9a9040000		JMP 0xe1d805									
  kongzhi.go:1046	0xe1d35c		440f11bc2400010000	MOVUPS X15, 0x100(SP)								
  kongzhi.go:1046	0xe1d365		7404			JE 0xe1d36b									
  kongzhi.go:1046	0xe1d367		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:1046	0xe1d36b		48899c2400010000	MOVQ BX, 0x100(SP)								
  kongzhi.go:1046	0xe1d373		48898c2408010000	MOVQ CX, 0x108(SP)								
  kongzhi.go:1046	0xe1d37b		488d0542543600		LEAQ go:string.*+107196(SB), AX							
  kongzhi.go:1046	0xe1d382		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  kongzhi.go:1046	0xe1d387		488d8c2400010000	LEAQ 0x100(SP), CX								
  kongzhi.go:1046	0xe1d38f		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1046	0xe1d394		4889fe			MOVQ DI, SI									
  kongzhi.go:1046	0xe1d397		e824f06fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1046	0xe1d39c		4889d9			MOVQ BX, CX									
  kongzhi.go:1046	0xe1d39f		4889c3			MOVQ AX, BX									
  kongzhi.go:1046	0xe1d3a2		31c0			XORL AX, AX									
  kongzhi.go:1046	0xe1d3a4		4881c420010000		ADDQ $.file+211(SB), SP								
  kongzhi.go:1046	0xe1d3ab		5d			POPQ BP										
  kongzhi.go:1046	0xe1d3ac		c3			RET										
  io.go:354		0xe1d3ad		488b9c2438010000	MOVQ 0x138(SP), BX								
  io.go:354		0xe1d3b5		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe1d3ba		4889fe			MOVQ DI, SI									
  io.go:354		0xe1d3bd		4989f0			MOVQ SI, R8									
  kongzhi.go:1053	0xe1d3c0		4889c2			MOVQ AX, DX									
  io.go:354		0xe1d3c3		4889c8			MOVQ CX, AX									
  io.go:354		0xe1d3c6		4889d1			MOVQ DX, CX									
  io.go:354		0xe1d3c9		e8325869ff		CALL io.ReadAtLeast(SB)								
  kongzhi.go:1055	0xe1d3ce		4885db			TESTQ BX, BX									
  kongzhi.go:1055	0xe1d3d1		0f8413010000		JE 0xe1d4ea									
  kongzhi.go:1055	0xe1d3d7		660f1f840000000000	NOPW 0(AX)(AX*1)								
  kongzhi.go:1057	0xe1d3e0		48391dd9991900		CMPQ io.EOF(SB), BX								
  kongzhi.go:1057	0xe1d3e7		7405			JE 0xe1d3ee									
  kongzhi.go:1055	0xe1d3e9		4885db			TESTQ BX, BX									
  kongzhi.go:1057	0xe1d3ec		eb5d			JMP 0xe1d44b									
  io.go:354		0xe1d3ee		4889842490000000	MOVQ AX, 0x90(SP)								
  io.go:354		0xe1d3f6		48898c24c8000000	MOVQ CX, 0xc8(SP)								
  io.go:354		0xe1d3fe		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  kongzhi.go:1057	0xe1d406		488b15bb991900		MOVQ io.EOF+8(SB), DX								
  kongzhi.go:1057	0xe1d40d		4889d8			MOVQ BX, AX									
  kongzhi.go:1057	0xe1d410		4889cb			MOVQ CX, BX									
  kongzhi.go:1057	0xe1d413		4889d1			MOVQ DX, CX									
  kongzhi.go:1057	0xe1d416		e8c5b05eff		CALL runtime.ifaceeq(SB)							
  kongzhi.go:1057	0xe1d41b		0f1f440000		NOPL 0(AX)(AX*1)								
  kongzhi.go:1057	0xe1d420		84c0			TESTL AL, AL									
  kongzhi.go:1057	0xe1d422		0f8599000000		JNE 0xe1d4c1									
  kongzhi.go:1055	0xe1d428		488b8c24a8000000	MOVQ 0xa8(SP), CX								
  kongzhi.go:1055	0xe1d430		4885c9			TESTQ CX, CX									
  kongzhi.go:1060	0xe1d433		488b842490000000	MOVQ 0x90(SP), AX								
  kongzhi.go:1060	0xe1d43b		488b8c24c8000000	MOVQ 0xc8(SP), CX								
  kongzhi.go:1060	0xe1d443		488b9c24a8000000	MOVQ 0xa8(SP), BX								
  kongzhi.go:1060	0xe1d44b		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)								
  kongzhi.go:1060	0xe1d454		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  kongzhi.go:1060	0xe1d45d		7404			JE 0xe1d463									
  kongzhi.go:1060	0xe1d45f		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:1060	0xe1d463		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  kongzhi.go:1060	0xe1d46b		48898c24e8000000	MOVQ CX, 0xe8(SP)								
  kongzhi.go:1060	0xe1d473		e828cc64ff		CALL runtime.convT64(SB)							
  kongzhi.go:1060	0xe1d478		488d0de1562200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:1060	0xe1d47f		48898c24f0000000	MOVQ CX, 0xf0(SP)								
  kongzhi.go:1060	0xe1d487		48898424f8000000	MOVQ AX, 0xf8(SP)								
  kongzhi.go:1060	0xe1d48f		488d05c2f63700		LEAQ go:string.*+214608(SB), AX							
  kongzhi.go:1060	0xe1d496		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:1060	0xe1d49b		488d8c24e0000000	LEAQ 0xe0(SP), CX								
  kongzhi.go:1060	0xe1d4a3		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:1060	0xe1d4a8		4889fe			MOVQ DI, SI									
  kongzhi.go:1060	0xe1d4ab		e810ef6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1060	0xe1d4b0		4889d9			MOVQ BX, CX									
  kongzhi.go:1060	0xe1d4b3		4889c3			MOVQ AX, BX									
  kongzhi.go:1060	0xe1d4b6		31c0			XORL AX, AX									
  kongzhi.go:1060	0xe1d4b8		4881c420010000		ADDQ $.file+211(SB), SP								
  kongzhi.go:1060	0xe1d4bf		5d			POPQ BP										
  kongzhi.go:1060	0xe1d4c0		c3			RET										
  kongzhi.go:1058	0xe1d4c1		488d0545433600		LEAQ go:string.*+103173(SB), AX							
  kongzhi.go:1058	0xe1d4c8		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  kongzhi.go:1058	0xe1d4cd		31c9			XORL CX, CX									
  kongzhi.go:1058	0xe1d4cf		31ff			XORL DI, DI									
  kongzhi.go:1058	0xe1d4d1		4889fe			MOVQ DI, SI									
  kongzhi.go:1058	0xe1d4d4		e8e7ee6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1058	0xe1d4d9		4889d9			MOVQ BX, CX									
  kongzhi.go:1058	0xe1d4dc		4889c3			MOVQ AX, BX									
  kongzhi.go:1058	0xe1d4df		31c0			XORL AX, AX									
  kongzhi.go:1058	0xe1d4e1		4881c420010000		ADDQ $.file+211(SB), SP								
  kongzhi.go:1058	0xe1d4e8		5d			POPQ BP										
  kongzhi.go:1058	0xe1d4e9		c3			RET										
  kongzhi.go:1064	0xe1d4ea		440f117c2430		MOVUPS X15, 0x30(SP)								
  kongzhi.go:1065	0xe1d4f0		90			NOPL										
  reader.go:159		0xe1d4f1		488d05c8ae2b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe1d4f8		e8a3425fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe1d4fd		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe1d505		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe1d50d		833d3c06740200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe1d514		750c			JNE 0xe1d522									
  reader.go:159		0xe1d516		488b942410010000	MOVQ 0x110(SP), DX								
  reader.go:159		0xe1d51e		6690			NOPW										
  reader.go:159		0xe1d520		eb10			JMP 0xe1d532									
  reader.go:159		0xe1d522		e8f9ae65ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe1d527		488b942410010000	MOVQ 0x110(SP), DX								
  reader.go:159		0xe1d52f		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe1d532		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe1d535		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe1d53d		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  kongzhi.go:1066	0xe1d545		4889c3			MOVQ AX, BX									
  kongzhi.go:1066	0xe1d548		488d0df1990502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:1066	0xe1d54f		488d3d4afd7302		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:1066	0xe1d556		488d35c3962000		LEAQ runtime.types+269344(SB), SI						
  kongzhi.go:1066	0xe1d55d		4c8d442430		LEAQ 0x30(SP), R8								
  kongzhi.go:1066	0xe1d562		488d0577f50402		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  kongzhi.go:1066	0xe1d569		e8d23c74ff		CALL encoding/binary.Read(SB)							
  kongzhi.go:1067	0xe1d56e		4885c0			TESTQ AX, AX									
  kongzhi.go:1067	0xe1d571		7558			JNE 0xe1d5cb									
  kongzhi.go:1078	0xe1d573		8b4c2434		MOVL 0x34(SP), CX								
  kongzhi.go:1078	0xe1d577		85c9			TESTL CX, CX									
  kongzhi.go:1078	0xe1d579		764a			JBE 0xe1d5c5									
  kongzhi.go:1079	0xe1d57b		488d051e542200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:1079	0xe1d582		89cb			MOVL CX, BX									
  kongzhi.go:1079	0xe1d584		e8d74565ff		CALL runtime.makeslice(SB)							
  kongzhi.go:1079	0xe1d589		4889842410010000	MOVQ AX, 0x110(SP)								
  kongzhi.go:1079	0xe1d591		448b442434		MOVL 0x34(SP), R8								
  kongzhi.go:1079	0xe1d596		4c898424b0000000	MOVQ R8, 0xb0(SP)								
  kongzhi.go:1054	0xe1d59e		488b942430010000	MOVQ 0x130(SP), DX								
  kongzhi.go:1054	0xe1d5a6		4885d2			TESTQ DX, DX									
  kongzhi.go:1080	0xe1d5a9		0f845e010000		JE 0xe1d70d									
  kongzhi.go:1080	0xe1d5af		488b5a08		MOVQ 0x8(DX), BX								
  kongzhi.go:1080	0xe1d5b3		4c8b0d56e41900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.37(SB), R9				
  kongzhi.go:1080	0xe1d5ba		4d8b11			MOVQ 0(R9), R10									
  kongzhi.go:1080	0xe1d5bd		8b5210			MOVL 0x10(DX), DX								
  kongzhi.go:1080	0xe1d5c0		e9f1010000		JMP 0xe1d7b6									
  kongzhi.go:1080	0xe1d5c5		31c0			XORL AX, AX									
  kongzhi.go:1080	0xe1d5c7		31c9			XORL CX, CX									
  kongzhi.go:1078	0xe1d5c9		eb51			JMP 0xe1d61c									
  kongzhi.go:1068	0xe1d5cb		440f11bc2400010000	MOVUPS X15, 0x100(SP)								
  kongzhi.go:1068	0xe1d5d4		7404			JE 0xe1d5da									
  kongzhi.go:1068	0xe1d5d6		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:1068	0xe1d5da		4889842400010000	MOVQ AX, 0x100(SP)								
  kongzhi.go:1068	0xe1d5e2		48899c2408010000	MOVQ BX, 0x108(SP)								
  kongzhi.go:1068	0xe1d5ea		488d05cbbd3600		LEAQ go:string.*+134836(SB), AX							
  kongzhi.go:1068	0xe1d5f1		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:1068	0xe1d5f6		488d8c2400010000	LEAQ 0x100(SP), CX								
  kongzhi.go:1068	0xe1d5fe		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1068	0xe1d603		4889fe			MOVQ DI, SI									
  kongzhi.go:1068	0xe1d606		e8b5ed6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1068	0xe1d60b		4889d9			MOVQ BX, CX									
  kongzhi.go:1068	0xe1d60e		4889c3			MOVQ AX, BX									
  kongzhi.go:1068	0xe1d611		31c0			XORL AX, AX									
  kongzhi.go:1068	0xe1d613		4881c420010000		ADDQ $.file+211(SB), SP								
  kongzhi.go:1068	0xe1d61a		5d			POPQ BP										
  kongzhi.go:1068	0xe1d61b		c3			RET										
  kongzhi.go:1089	0xe1d61c		4889442460		MOVQ AX, 0x60(SP)								
  kongzhi.go:1089	0xe1d621		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  kongzhi.go:1087	0xe1d629		488d05d0882b00		LEAQ runtime.types+986880(SB), AX						
  kongzhi.go:1087	0xe1d630		e86b415fff		CALL runtime.newobject(SB)							
  kongzhi.go:1088	0xe1d635		837c243400		CMPL 0x34(SP), $0x0								
  kongzhi.go:1088	0xe1d63a		767e			JBE 0xe1d6ba									
  kongzhi.go:1089	0xe1d63c		488b5c2460		MOVQ 0x60(SP), BX								
  kongzhi.go:1089	0xe1d641		4889d9			MOVQ BX, CX									
  kongzhi.go:1089	0xe1d644		488d3d15962000		LEAQ runtime.types+269408(SB), DI						
  kongzhi.go:1089	0xe1d64b		4889c6			MOVQ AX, SI									
  kongzhi.go:1089	0xe1d64e		488b8424b8000000	MOVQ 0xb8(SP), AX								
  kongzhi.go:1089	0xe1d656		e8859e74ff		CALL encoding/json.Unmarshal(SB)						
  kongzhi.go:1089	0xe1d65b		0f1f440000		NOPL 0(AX)(AX*1)								
  kongzhi.go:1090	0xe1d660		4885c0			TESTQ AX, AX									
  kongzhi.go:1090	0xe1d663		0f8492000000		JE 0xe1d6fb									
  kongzhi.go:1091	0xe1d669		440f11bc2400010000	MOVUPS X15, 0x100(SP)								
  kongzhi.go:1091	0xe1d672		7404			JE 0xe1d678									
  kongzhi.go:1091	0xe1d674		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:1091	0xe1d678		4889842400010000	MOVQ AX, 0x100(SP)								
  kongzhi.go:1091	0xe1d680		48899c2408010000	MOVQ BX, 0x108(SP)								
  kongzhi.go:1091	0xe1d688		488d0519993600		LEAQ go:string.*+125600(SB), AX							
  kongzhi.go:1091	0xe1d68f		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  kongzhi.go:1091	0xe1d694		488d8c2400010000	LEAQ 0x100(SP), CX								
  kongzhi.go:1091	0xe1d69c		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1091	0xe1d6a1		4889fe			MOVQ DI, SI									
  kongzhi.go:1091	0xe1d6a4		e817ed6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1091	0xe1d6a9		4889d9			MOVQ BX, CX									
  kongzhi.go:1091	0xe1d6ac		4889c3			MOVQ AX, BX									
  kongzhi.go:1091	0xe1d6af		31c0			XORL AX, AX									
  kongzhi.go:1091	0xe1d6b1		4881c420010000		ADDQ $.file+211(SB), SP								
  kongzhi.go:1091	0xe1d6b8		5d			POPQ BP										
  kongzhi.go:1091	0xe1d6b9		c3			RET										
  kongzhi.go:1095	0xe1d6ba		488d155f522200		LEAQ runtime.types+383264(SB), DX						
  kongzhi.go:1095	0xe1d6c1		48899424d0000000	MOVQ DX, 0xd0(SP)								
  kongzhi.go:1095	0xe1d6c9		488d15d0b90402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_40(SB), DX				
  kongzhi.go:1095	0xe1d6d0		48899424d8000000	MOVQ DX, 0xd8(SP)								
  print.go:314		0xe1d6d8		488b1da1496f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe1d6df		488d05fae30402		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe1d6e6		488d8c24d0000000	LEAQ 0xd0(SP), CX								
  print.go:314		0xe1d6ee		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe1d6f3		4889fe			MOVQ DI, SI									
  print.go:314		0xe1d6f6		e8652170ff		CALL fmt.Fprintln(SB)								
  kongzhi.go:1098	0xe1d6fb		b801000000		MOVL $__minor_os_version__(SB), AX						
  kongzhi.go:1098	0xe1d700		31db			XORL BX, BX									
  kongzhi.go:1098	0xe1d702		31c9			XORL CX, CX									
  kongzhi.go:1098	0xe1d704		4881c420010000		ADDQ $.file+211(SB), SP								
  kongzhi.go:1098	0xe1d70b		5d			POPQ BP										
  kongzhi.go:1098	0xe1d70c		c3			RET										
  io.go:354		0xe1d70d		488b9c2438010000	MOVQ 0x138(SP), BX								
  io.go:354		0xe1d715		4889c1			MOVQ AX, CX									
  io.go:354		0xe1d718		4c89c7			MOVQ R8, DI									
  io.go:354		0xe1d71b		4889fe			MOVQ DI, SI									
  io.go:354		0xe1d71e		4889d0			MOVQ DX, AX									
  io.go:354		0xe1d721		e8da5469ff		CALL io.ReadAtLeast(SB)								
  kongzhi.go:1081	0xe1d726		4885db			TESTQ BX, BX									
  kongzhi.go:1081	0xe1d729		7476			JE 0xe1d7a1									
  kongzhi.go:1082	0xe1d72b		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)								
  kongzhi.go:1082	0xe1d734		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)								
  kongzhi.go:1082	0xe1d73d		7404			JE 0xe1d743									
  kongzhi.go:1082	0xe1d73f		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:1082	0xe1d743		48899c24e0000000	MOVQ BX, 0xe0(SP)								
  kongzhi.go:1082	0xe1d74b		48898c24e8000000	MOVQ CX, 0xe8(SP)								
  kongzhi.go:1082	0xe1d753		e848c964ff		CALL runtime.convT64(SB)							
  kongzhi.go:1082	0xe1d758		488d0d01542200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:1082	0xe1d75f		48898c24f0000000	MOVQ CX, 0xf0(SP)								
  kongzhi.go:1082	0xe1d767		48898424f8000000	MOVQ AX, 0xf8(SP)								
  kongzhi.go:1082	0xe1d76f		488d0513f43700		LEAQ go:string.*+214657(SB), AX							
  kongzhi.go:1082	0xe1d776		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:1082	0xe1d77b		488d8c24e0000000	LEAQ 0xe0(SP), CX								
  kongzhi.go:1082	0xe1d783		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:1082	0xe1d788		4889fe			MOVQ DI, SI									
  kongzhi.go:1082	0xe1d78b		e830ec6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1082	0xe1d790		4889d9			MOVQ BX, CX									
  kongzhi.go:1082	0xe1d793		4889c3			MOVQ AX, BX									
  kongzhi.go:1082	0xe1d796		31c0			XORL AX, AX									
  kongzhi.go:1082	0xe1d798		4881c420010000		ADDQ $.file+211(SB), SP								
  kongzhi.go:1082	0xe1d79f		5d			POPQ BP										
  kongzhi.go:1082	0xe1d7a0		c3			RET										
  kongzhi.go:1089	0xe1d7a1		488b8424b0000000	MOVQ 0xb0(SP), AX								
  kongzhi.go:1089	0xe1d7a9		488b8c2410010000	MOVQ 0x110(SP), CX								
  kongzhi.go:1087	0xe1d7b1		e966feffff		JMP 0xe1d61c									
  kongzhi.go:1080	0xe1d7b6		4989d3			MOVQ DX, R11									
  kongzhi.go:1080	0xe1d7b9		4c21d2			ANDQ R10, DX									
  kongzhi.go:1080	0xe1d7bc		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  kongzhi.go:1080	0xe1d7c0		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  kongzhi.go:1080	0xe1d7c5		4939dc			CMPQ R12, BX									
  kongzhi.go:1080	0xe1d7c8		742d			JE 0xe1d7f7									
  kongzhi.go:1080	0xe1d7ca		498d5301		LEAQ 0x1(R11), DX								
  kongzhi.go:1080	0xe1d7ce		4d85e4			TESTQ R12, R12									
  kongzhi.go:1080	0xe1d7d1		75e3			JNE 0xe1d7b6									
  kongzhi.go:1080	0xe1d7d3		488d0536e21900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.37(SB), AX				
  kongzhi.go:1080	0xe1d7da		e8011b5fff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe1d7df		4c8b8424b0000000	MOVQ 0xb0(SP), R8								
  kongzhi.go:1080	0xe1d7e7		4889c2			MOVQ AX, DX									
  io.go:354		0xe1d7ea		488b842410010000	MOVQ 0x110(SP), AX								
  kongzhi.go:1080	0xe1d7f2		e916ffffff		JMP 0xe1d70d									
  kongzhi.go:1080	0xe1d7f7		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  kongzhi.go:1080	0xe1d7fc		0f1f4000		NOPL 0(AX)									
  kongzhi.go:1080	0xe1d800		e908ffffff		JMP 0xe1d70d									
  kongzhi.go:1054	0xe1d805		4d89d3			MOVQ R10, R11									
  kongzhi.go:1054	0xe1d808		4d21ca			ANDQ R9, R10									
  kongzhi.go:1054	0xe1d80b		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  kongzhi.go:1054	0xe1d80f		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  kongzhi.go:1054	0xe1d814		4939dc			CMPQ R12, BX									
  kongzhi.go:1054	0xe1d817		742c			JE 0xe1d845									
  kongzhi.go:1054	0xe1d819		4d8d5301		LEAQ 0x1(R11), R10								
  kongzhi.go:1054	0xe1d81d		0f1f00			NOPL 0(AX)									
  kongzhi.go:1054	0xe1d820		4d85e4			TESTQ R12, R12									
  kongzhi.go:1054	0xe1d823		75e0			JNE 0xe1d805									
  kongzhi.go:1054	0xe1d825		488d05c4e11900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.36(SB), AX				
  kongzhi.go:1054	0xe1d82c		e8af1a5fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:1054	0xe1d831		4889c1			MOVQ AX, CX									
  io.go:354		0xe1d834		488b842410010000	MOVQ 0x110(SP), AX								
  io.go:354		0xe1d83c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:1054	0xe1d840		e968fbffff		JMP 0xe1d3ad									
  kongzhi.go:1054	0xe1d845		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  kongzhi.go:1054	0xe1d84a		4889d1			MOVQ DX, CX									
  kongzhi.go:1054	0xe1d84d		e95bfbffff		JMP 0xe1d3ad									
  buffer.go:54		0xe1d852		e849b065ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe1d857		90			NOPL										
  kongzhi.go:1003	0xe1d858		4889442408		MOVQ AX, 0x8(SP)								
  kongzhi.go:1003	0xe1d85d		48895c2410		MOVQ BX, 0x10(SP)								
  kongzhi.go:1003	0xe1d862		884c2418		MOVB CL, 0x18(SP)								
  kongzhi.go:1003	0xe1d866		f20f11442420		MOVSD_XMM X0, 0x20(SP)								
  kongzhi.go:1003	0xe1d86c		f20f114c2428		MOVSD_XMM X1, 0x28(SP)								
  kongzhi.go:1003	0xe1d872		f20f11542430		MOVSD_XMM X2, 0x30(SP)								
  kongzhi.go:1003	0xe1d878		f20f115c2438		MOVSD_XMM X3, 0x38(SP)								
  kongzhi.go:1003	0xe1d87e		6690			NOPW										
  kongzhi.go:1003	0xe1d880		e85b8c65ff		CALL runtime.morestack_noctxt.abi0(SB)						
  kongzhi.go:1003	0xe1d885		488b442408		MOVQ 0x8(SP), AX								
  kongzhi.go:1003	0xe1d88a		488b5c2410		MOVQ 0x10(SP), BX								
  kongzhi.go:1003	0xe1d88f		0fb64c2418		MOVZX 0x18(SP), CX								
  kongzhi.go:1003	0xe1d894		f20f10442420		MOVSD_XMM 0x20(SP), X0								
  kongzhi.go:1003	0xe1d89a		f20f104c2428		MOVSD_XMM 0x28(SP), X1								
  kongzhi.go:1003	0xe1d8a0		f20f10542430		MOVSD_XMM 0x30(SP), X2								
  kongzhi.go:1003	0xe1d8a6		f20f105c2438		MOVSD_XMM 0x38(SP), X3								
  kongzhi.go:1003	0xe1d8ac		e90ff8ffff		JMP CAS-Backend/pkg/agvcontrol.Chongdingweiapi(SB)				
  :-1			0xe1d8b1		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8b2		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8b3		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8b4		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8b5		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8b6		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8b7		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8b8		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8b9		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8ba		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8bb		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8bc		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8bd		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8be		cc			INT $__subsystem__(SB)								
  :-1			0xe1d8bf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.queryAMRLocation(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:1136	0xe1d8c0		4c8da42460ffffff		LEAQ 0xffffff60(SP), R12							
  kongzhi.go:1136	0xe1d8c8		4d3b6610			CMPQ R12, 0x10(R14)								
  kongzhi.go:1136	0xe1d8cc		0f8660070000			JBE 0xe1e032									
  kongzhi.go:1136	0xe1d8d2		55				PUSHQ BP									
  kongzhi.go:1136	0xe1d8d3		4889e5				MOVQ SP, BP									
  kongzhi.go:1136	0xe1d8d6		4881ec18010000			SUBQ $.file+203(SB), SP								
  kongzhi.go:1136	0xe1d8dd		66440fd6bc2410010000		MOVQ X15, 0x110(SP)								
  kongzhi.go:1148	0xe1d8e7		888c2438010000			MOVB CL, 0x138(SP)								
  kongzhi.go:1148	0xe1d8ee		4889842428010000		MOVQ AX, 0x128(SP)								
  kongzhi.go:1148	0xe1d8f6		48899c2430010000		MOVQ BX, 0x130(SP)								
  kongzhi.go:1136	0xe1d8fe		c644243700			MOVB $0x0, 0x37(SP)								
  kongzhi.go:1136	0xe1d903		48c784248000000000000000	MOVQ $0x0, 0x80(SP)								
  kongzhi.go:1136	0xe1d90f		440f117c2470			MOVUPS X15, 0x70(SP)								
  kongzhi.go:1144	0xe1d915		48c74424485a010010		MOVQ $0x1000015a, 0x48(SP)							
  kongzhi.go:1144	0xe1d91e		48c7442450ec030000		MOVQ $__file_alignment__+492(SB), 0x50(SP)					
  kongzhi.go:1148	0xe1d927		4885c0				TESTQ AX, AX									
  kongzhi.go:1148	0xe1d92a		7419				JE 0xe1d945									
  kongzhi.go:1148	0xe1d92c		488b5008			MOVQ 0x8(AX), DX								
  kongzhi.go:1148	0xe1d930		4c8b0df9e01900			MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.38(SB), R9				
  kongzhi.go:1148	0xe1d937		4d8b11				MOVQ 0(R9), R10									
  kongzhi.go:1148	0xe1d93a		448b5810			MOVL 0x10(AX), R11								
  kongzhi.go:1148	0xe1d93e		6690				NOPW										
  kongzhi.go:1148	0xe1d940		e980060000			JMP 0xe1dfc5									
  kongzhi.go:1148	0xe1d945		0f10442448			MOVUPS 0x48(SP), X0								
  kongzhi.go:1148	0xe1d94a		0f11442458			MOVUPS X0, 0x58(SP)								
  kongzhi.go:1148	0xe1d94f		488d0dea950502			LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:1148	0xe1d956		488d3d43f97302			LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:1148	0xe1d95d		488d355c0e2f00			LEAQ runtime.types+1218496(SB), SI						
  kongzhi.go:1148	0xe1d964		4c8d442458			LEAQ 0x58(SP), R8								
  kongzhi.go:1148	0xe1d969		e8b24774ff			CALL encoding/binary.Write(SB)							
  kongzhi.go:1148	0xe1d96e		4885c0				TESTQ AX, AX									
  kongzhi.go:1148	0xe1d971		0f85ee000000			JNE 0xe1da65									
  kongzhi.go:1148	0xe1d977		0fb6942438010000		MOVZX 0x138(SP), DX								
  kongzhi.go:1148	0xe1d97f		90				NOPL										
  kongzhi.go:1148	0xe1d980		84d2				TESTL DL, DL									
  kongzhi.go:1152	0xe1d982		7541				JNE 0xe1d9c5									
  kongzhi.go:1153	0xe1d984		488d15954f2200			LEAQ runtime.types+383264(SB), DX						
  kongzhi.go:1153	0xe1d98b		48899424c0000000		MOVQ DX, 0xc0(SP)								
  kongzhi.go:1153	0xe1d993		4c8d0516b70402			LEAQ CAS-Backend/pkg/agvcontrol..stmp_44(SB), R8				
  kongzhi.go:1153	0xe1d99a		4c898424c8000000		MOVQ R8, 0xc8(SP)								
  print.go:314		0xe1d9a2		488b1dd7466f02			MOVQ os.Stdout(SB), BX								
  print.go:314		0xe1d9a9		488d0530e10402			LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe1d9b0		488d8c24c0000000		LEAQ 0xc0(SP), CX								
  print.go:314		0xe1d9b8		bf01000000			MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe1d9bd		4889fe				MOVQ DI, SI									
  print.go:314		0xe1d9c0		e89b1e70ff			CALL fmt.Fprintln(SB)								
  kongzhi.go:1157	0xe1d9c5		e8d60669ff			CALL time.Now(SB)								
  kongzhi.go:1157	0xe1d9ca		48bf00f2052a01000000		MOVQ $0x12a05f200, DI								
  kongzhi.go:1157	0xe1d9d4		e8876b68ff			CALL time.Time.Add(SB)								
  kongzhi.go:1157	0xe1d9d9		488b942428010000		MOVQ 0x128(SP), DX								
  kongzhi.go:1157	0xe1d9e1		488b7240			MOVQ 0x40(DX), SI								
  kongzhi.go:1157	0xe1d9e5		4889cf				MOVQ CX, DI									
  kongzhi.go:1157	0xe1d9e8		4889d9				MOVQ BX, CX									
  kongzhi.go:1157	0xe1d9eb		4889c3				MOVQ AX, BX									
  kongzhi.go:1157	0xe1d9ee		488b842430010000		MOVQ 0x130(SP), AX								
  kongzhi.go:1157	0xe1d9f6		ffd6				CALL SI										
  kongzhi.go:1158	0xe1d9f8		488d0561060000			LEAQ CAS-Backend/pkg/agvcontrol.queryAMRLocation.deferwrap1(SB), AX		
  kongzhi.go:1158	0xe1d9ff		48898424a8000000		MOVQ AX, 0xa8(SP)								
  kongzhi.go:1158	0xe1da07		488b842428010000		MOVQ 0x128(SP), AX								
  kongzhi.go:1158	0xe1da0f		48898424b0000000		MOVQ AX, 0xb0(SP)								
  kongzhi.go:1158	0xe1da17		488b9c2430010000		MOVQ 0x130(SP), BX								
  kongzhi.go:1158	0xe1da1f		48899c24b8000000		MOVQ BX, 0xb8(SP)								
  kongzhi.go:1158	0xe1da27		488d8c24a8000000		LEAQ 0xa8(SP), CX								
  kongzhi.go:1158	0xe1da2f		48898c2410010000		MOVQ CX, 0x110(SP)								
  kongzhi.go:1158	0xe1da37		c644243701			MOVB $__minor_os_version__(SB), 0x37(SP)					
  kongzhi.go:1161	0xe1da3c		440f117c2438			MOVUPS X15, 0x38(SP)								
  kongzhi.go:1148	0xe1da42		4885c0				TESTQ AX, AX									
  kongzhi.go:1162	0xe1da45		0f848a000000			JE 0xe1dad5									
  kongzhi.go:1162	0xe1da4b		488b5008			MOVQ 0x8(AX), DX								
  kongzhi.go:1162	0xe1da4f		4c8b0dfadf1900			MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.39(SB), R9				
  kongzhi.go:1162	0xe1da56		4d8b11				MOVQ 0(R9), R10									
  kongzhi.go:1162	0xe1da59		448b5810			MOVL 0x10(AX), R11								
  kongzhi.go:1162	0xe1da5d		0f1f00				NOPL 0(AX)									
  kongzhi.go:1162	0xe1da60		e919050000			JMP 0xe1df7e									
  kongzhi.go:1149	0xe1da65		440f11bc24f0000000		MOVUPS X15, 0xf0(SP)								
  kongzhi.go:1149	0xe1da6e		7404				JE 0xe1da74									
  kongzhi.go:1149	0xe1da70		488b4008			MOVQ 0x8(AX), AX								
  kongzhi.go:1149	0xe1da74		48898424f0000000		MOVQ AX, 0xf0(SP)								
  kongzhi.go:1149	0xe1da7c		48899c24f8000000		MOVQ BX, 0xf8(SP)								
  kongzhi.go:1149	0xe1da84		488d0581ba3600			LEAQ go:string.*+135172(SB), AX							
  kongzhi.go:1149	0xe1da8b		bb1c000000			MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:1149	0xe1da90		488d8c24f0000000		LEAQ 0xf0(SP), CX								
  kongzhi.go:1149	0xe1da98		bf01000000			MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1149	0xe1da9d		4889fe				MOVQ DI, SI									
  kongzhi.go:1149	0xe1daa0		e81be96fff			CALL fmt.Errorf(SB)								
  kongzhi.go:1149	0xe1daa5		48c784248000000000000000	MOVQ $0x0, 0x80(SP)								
  kongzhi.go:1149	0xe1dab1		4889442470			MOVQ AX, 0x70(SP)								
  kongzhi.go:1149	0xe1dab6		48895c2478			MOVQ BX, 0x78(SP)								
  kongzhi.go:1149	0xe1dabb		488b942480000000		MOVQ 0x80(SP), DX								
  kongzhi.go:1149	0xe1dac3		4889d9				MOVQ BX, CX									
  kongzhi.go:1149	0xe1dac6		4889c3				MOVQ AX, BX									
  kongzhi.go:1149	0xe1dac9		4889d0				MOVQ DX, AX									
  kongzhi.go:1149	0xe1dacc		4881c418010000			ADDQ $.file+203(SB), SP								
  kongzhi.go:1149	0xe1dad3		5d				POPQ BP										
  kongzhi.go:1149	0xe1dad4		c3				RET										
  kongzhi.go:1162	0xe1dad5		488d0d64940502			LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:1162	0xe1dadc		488d3dbdf77302			LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:1162	0xe1dae3		488d35f6902000			LEAQ runtime.types+269280(SB), SI						
  kongzhi.go:1162	0xe1daea		4c8d442438			LEAQ 0x38(SP), R8								
  kongzhi.go:1162	0xe1daef		e84c3774ff			CALL encoding/binary.Read(SB)							
  kongzhi.go:1162	0xe1daf4		4885c0				TESTQ AX, AX									
  kongzhi.go:1162	0xe1daf7		0f8484000000			JE 0xe1db81									
  kongzhi.go:1163	0xe1dafd		440f11bc24f0000000		MOVUPS X15, 0xf0(SP)								
  kongzhi.go:1163	0xe1db06		7404				JE 0xe1db0c									
  kongzhi.go:1163	0xe1db08		488b4008			MOVQ 0x8(AX), AX								
  kongzhi.go:1163	0xe1db0c		48898424f0000000		MOVQ AX, 0xf0(SP)								
  kongzhi.go:1163	0xe1db14		48899c24f8000000		MOVQ BX, 0xf8(SP)								
  kongzhi.go:1163	0xe1db1c		488d0505ba3600			LEAQ go:string.*+135200(SB), AX							
  kongzhi.go:1163	0xe1db23		bb1c000000			MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:1163	0xe1db28		488d8c24f0000000		LEAQ 0xf0(SP), CX								
  kongzhi.go:1163	0xe1db30		bf01000000			MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1163	0xe1db35		4889fe				MOVQ DI, SI									
  kongzhi.go:1163	0xe1db38		e883e86fff			CALL fmt.Errorf(SB)								
  kongzhi.go:1163	0xe1db3d		48c784248000000000000000	MOVQ $0x0, 0x80(SP)								
  kongzhi.go:1163	0xe1db49		4889442470			MOVQ AX, 0x70(SP)								
  kongzhi.go:1163	0xe1db4e		48895c2478			MOVQ BX, 0x78(SP)								
  kongzhi.go:1163	0xe1db53		c644243700			MOVB $0x0, 0x37(SP)								
  kongzhi.go:1163	0xe1db58		488b942410010000		MOVQ 0x110(SP), DX								
  kongzhi.go:1163	0xe1db60		4c8b02				MOVQ 0(DX), R8									
  kongzhi.go:1163	0xe1db63		41ffd0				CALL R8										
  kongzhi.go:1163	0xe1db66		488b5c2470			MOVQ 0x70(SP), BX								
  kongzhi.go:1163	0xe1db6b		488b842480000000		MOVQ 0x80(SP), AX								
  kongzhi.go:1163	0xe1db73		488b4c2478			MOVQ 0x78(SP), CX								
  kongzhi.go:1163	0xe1db78		4881c418010000			ADDQ $.file+203(SB), SP								
  kongzhi.go:1163	0xe1db7f		5d				POPQ BP										
  kongzhi.go:1163	0xe1db80		c3				RET										
  kongzhi.go:1172	0xe1db81		488d05988b3000			LEAQ runtime.types+1316640(SB), AX						
  kongzhi.go:1172	0xe1db88		e8133c5fff			CALL runtime.newobject(SB)							
  kongzhi.go:1172	0xe1db8d		4889842408010000		MOVQ AX, 0x108(SP)								
  kongzhi.go:1174	0xe1db95		8b4c243c			MOVL 0x3c(SP), CX								
  kongzhi.go:1174	0xe1db99		85c9				TESTL CX, CX									
  kongzhi.go:1174	0xe1db9b		750f				JNE 0xe1dbac									
  kongzhi.go:1148	0xe1db9d		0fb68c2438010000		MOVZX 0x138(SP), CX								
  kongzhi.go:1148	0xe1dba5		84c9				TESTL CL, CL									
  kongzhi.go:1176	0xe1dba7		e908020000			JMP 0xe1ddb4									
  kongzhi.go:1179	0xe1dbac		488d05ed4d2200			LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:1179	0xe1dbb3		89cb				MOVL CX, BX									
  kongzhi.go:1179	0xe1dbb5		e8a63f65ff			CALL runtime.makeslice(SB)							
  kongzhi.go:1179	0xe1dbba		4889842400010000		MOVQ AX, 0x100(SP)								
  kongzhi.go:1179	0xe1dbc2		8b7c243c			MOVL 0x3c(SP), DI								
  kongzhi.go:1179	0xe1dbc6		48897c2468			MOVQ DI, 0x68(SP)								
  kongzhi.go:1180	0xe1dbcb		488b942428010000		MOVQ 0x128(SP), DX								
  kongzhi.go:1180	0xe1dbd3		488b5228			MOVQ 0x28(DX), DX								
  kongzhi.go:1180	0xe1dbd7		4889c3				MOVQ AX, BX									
  kongzhi.go:1180	0xe1dbda		4889f9				MOVQ DI, CX									
  kongzhi.go:1180	0xe1dbdd		488b842430010000		MOVQ 0x130(SP), AX								
  kongzhi.go:1180	0xe1dbe5		ffd2				CALL DX										
  kongzhi.go:1180	0xe1dbe7		4885db				TESTQ BX, BX									
  kongzhi.go:1180	0xe1dbea		0f8484000000			JE 0xe1dc74									
  kongzhi.go:1181	0xe1dbf0		440f11bc24f0000000		MOVUPS X15, 0xf0(SP)								
  kongzhi.go:1181	0xe1dbf9		7404				JE 0xe1dbff									
  kongzhi.go:1181	0xe1dbfb		488b5b08			MOVQ 0x8(BX), BX								
  kongzhi.go:1181	0xe1dbff		48899c24f0000000		MOVQ BX, 0xf0(SP)								
  kongzhi.go:1181	0xe1dc07		48898c24f8000000		MOVQ CX, 0xf8(SP)								
  kongzhi.go:1181	0xe1dc0f		488d052eb93600			LEAQ go:string.*+135228(SB), AX							
  kongzhi.go:1181	0xe1dc16		bb1c000000			MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:1181	0xe1dc1b		488d8c24f0000000		LEAQ 0xf0(SP), CX								
  kongzhi.go:1181	0xe1dc23		bf01000000			MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1181	0xe1dc28		4889fe				MOVQ DI, SI									
  kongzhi.go:1181	0xe1dc2b		e890e76fff			CALL fmt.Errorf(SB)								
  kongzhi.go:1181	0xe1dc30		48c784248000000000000000	MOVQ $0x0, 0x80(SP)								
  kongzhi.go:1181	0xe1dc3c		4889442470			MOVQ AX, 0x70(SP)								
  kongzhi.go:1181	0xe1dc41		48895c2478			MOVQ BX, 0x78(SP)								
  kongzhi.go:1181	0xe1dc46		c644243700			MOVB $0x0, 0x37(SP)								
  kongzhi.go:1181	0xe1dc4b		488b942410010000		MOVQ 0x110(SP), DX								
  kongzhi.go:1181	0xe1dc53		4c8b02				MOVQ 0(DX), R8									
  kongzhi.go:1181	0xe1dc56		41ffd0				CALL R8										
  kongzhi.go:1181	0xe1dc59		488b5c2470			MOVQ 0x70(SP), BX								
  kongzhi.go:1181	0xe1dc5e		488b842480000000		MOVQ 0x80(SP), AX								
  kongzhi.go:1181	0xe1dc66		488b4c2478			MOVQ 0x78(SP), CX								
  kongzhi.go:1181	0xe1dc6b		4881c418010000			ADDQ $.file+203(SB), SP								
  kongzhi.go:1181	0xe1dc72		5d				POPQ BP										
  kongzhi.go:1181	0xe1dc73		c3				RET										
  kongzhi.go:1185	0xe1dc74		488b842400010000		MOVQ 0x100(SP), AX								
  kongzhi.go:1185	0xe1dc7c		488b5c2468			MOVQ 0x68(SP), BX								
  kongzhi.go:1185	0xe1dc81		4889d9				MOVQ BX, CX									
  kongzhi.go:1185	0xe1dc84		488d3d15942000			LEAQ runtime.types+270496(SB), DI						
  kongzhi.go:1185	0xe1dc8b		488bb42408010000		MOVQ 0x108(SP), SI								
  kongzhi.go:1185	0xe1dc93		e8489874ff			CALL encoding/json.Unmarshal(SB)						
  kongzhi.go:1185	0xe1dc98		0f1f840000000000		NOPL 0(AX)(AX*1)								
  kongzhi.go:1185	0xe1dca0		4885c0				TESTQ AX, AX									
  kongzhi.go:1185	0xe1dca3		0f84bf000000			JE 0xe1dd68									
  kongzhi.go:1186	0xe1dca9		440f11bc24d0000000		MOVUPS X15, 0xd0(SP)								
  kongzhi.go:1186	0xe1dcb2		440f11bc24e0000000		MOVUPS X15, 0xe0(SP)								
  kongzhi.go:1186	0xe1dcbb		7404				JE 0xe1dcc1									
  kongzhi.go:1186	0xe1dcbd		488b4008			MOVQ 0x8(AX), AX								
  kongzhi.go:1186	0xe1dcc1		48898424d0000000		MOVQ AX, 0xd0(SP)								
  kongzhi.go:1186	0xe1dcc9		48899c24d8000000		MOVQ BX, 0xd8(SP)								
  kongzhi.go:1186	0xe1dcd1		31c0				XORL AX, AX									
  kongzhi.go:1186	0xe1dcd3		488b9c2400010000		MOVQ 0x100(SP), BX								
  kongzhi.go:1186	0xe1dcdb		488b4c2468			MOVQ 0x68(SP), CX								
  kongzhi.go:1186	0xe1dce0		e89b4965ff			CALL runtime.slicebytetostring(SB)						
  kongzhi.go:1186	0xe1dce5		e836c464ff			CALL runtime.convTstring(SB)							
  kongzhi.go:1186	0xe1dcea		488d152f4c2200			LEAQ runtime.types+383264(SB), DX						
  kongzhi.go:1186	0xe1dcf1		48899424e0000000		MOVQ DX, 0xe0(SP)								
  kongzhi.go:1186	0xe1dcf9		48898424e8000000		MOVQ AX, 0xe8(SP)								
  kongzhi.go:1186	0xe1dd01		488d058d613700			LEAQ go:string.*+178573(SB), AX							
  kongzhi.go:1186	0xe1dd08		bb26000000			MOVL $__major_os_version__+32(SB), BX						
  kongzhi.go:1186	0xe1dd0d		488d8c24d0000000		LEAQ 0xd0(SP), CX								
  kongzhi.go:1186	0xe1dd15		bf02000000			MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:1186	0xe1dd1a		4889fe				MOVQ DI, SI									
  kongzhi.go:1186	0xe1dd1d		0f1f00				NOPL 0(AX)									
  kongzhi.go:1186	0xe1dd20		e89be66fff			CALL fmt.Errorf(SB)								
  kongzhi.go:1186	0xe1dd25		48c784248000000000000000	MOVQ $0x0, 0x80(SP)								
  kongzhi.go:1186	0xe1dd31		4889442470			MOVQ AX, 0x70(SP)								
  kongzhi.go:1186	0xe1dd36		48895c2478			MOVQ BX, 0x78(SP)								
  kongzhi.go:1186	0xe1dd3b		c644243700			MOVB $0x0, 0x37(SP)								
  kongzhi.go:1186	0xe1dd40		488b942410010000		MOVQ 0x110(SP), DX								
  kongzhi.go:1186	0xe1dd48		488b32				MOVQ 0(DX), SI									
  kongzhi.go:1186	0xe1dd4b		ffd6				CALL SI										
  kongzhi.go:1186	0xe1dd4d		488b5c2470			MOVQ 0x70(SP), BX								
  kongzhi.go:1186	0xe1dd52		488b842480000000		MOVQ 0x80(SP), AX								
  kongzhi.go:1186	0xe1dd5a		488b4c2478			MOVQ 0x78(SP), CX								
  kongzhi.go:1186	0xe1dd5f		4881c418010000			ADDQ $.file+203(SB), SP								
  kongzhi.go:1186	0xe1dd66		5d				POPQ BP										
  kongzhi.go:1186	0xe1dd67		c3				RET										
  kongzhi.go:1189	0xe1dd68		488bb42408010000		MOVQ 0x108(SP), SI								
  kongzhi.go:1189	0xe1dd70		48837e2014			CMPQ 0x20(SI), $__major_os_version__+14(SB)					
  kongzhi.go:1189	0xe1dd75		7525				JNE 0xe1dd9c									
  kongzhi.go:1189	0xe1dd77		488b4618			MOVQ 0x18(SI), AX								
  kongzhi.go:1189	0xe1dd7b		488d1de4263600			LEAQ go:string.*+98142(SB), BX							
  kongzhi.go:1189	0xe1dd82		b914000000			MOVL $__major_os_version__+14(SB), CX						
  kongzhi.go:1189	0xe1dd87		e8d4505eff			CALL runtime.memequal(SB)							
  kongzhi.go:1189	0xe1dd8c		84c0				TESTL AL, AL									
  kongzhi.go:1189	0xe1dd8e		0f858e010000			JNE 0xe1df22									
  kongzhi.go:1193	0xe1dd94		488bb42408010000		MOVQ 0x108(SP), SI								
  kongzhi.go:1193	0xe1dd9c		48837e2000			CMPQ 0x20(SI), $0x0								
  kongzhi.go:1193	0xe1dda1		0f85ea000000			JNE 0xe1de91									
  kongzhi.go:1148	0xe1dda7		0fb68c2438010000		MOVZX 0x138(SP), CX								
  kongzhi.go:1148	0xe1ddaf		84c9				TESTL CL, CL									
  kongzhi.go:1208	0xe1ddb1		4889f0				MOVQ SI, AX									
  kongzhi.go:1204	0xe1ddb4		0f859c000000			JNE 0xe1de56									
  kongzhi.go:1205	0xe1ddba		440f11bc2498000000		MOVUPS X15, 0x98(SP)								
  kongzhi.go:1205	0xe1ddc3		488b4848			MOVQ 0x48(AX), CX								
  kongzhi.go:1205	0xe1ddc7		488b5850			MOVQ 0x50(AX), BX								
  kongzhi.go:1205	0xe1ddcb		4889c8				MOVQ CX, AX									
  kongzhi.go:1205	0xe1ddce		e84dc364ff			CALL runtime.convTstring(SB)							
  kongzhi.go:1205	0xe1ddd3		488d0d464b2200			LEAQ runtime.types+383264(SB), CX						
  kongzhi.go:1205	0xe1ddda		48898c2498000000		MOVQ CX, 0x98(SP)								
  kongzhi.go:1205	0xe1dde2		48898424a0000000		MOVQ AX, 0xa0(SP)								
  print.go:314		0xe1ddea		488b1d8f426f02			MOVQ os.Stdout(SB), BX								
  print.go:314		0xe1ddf1		488d05e8dc0402			LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe1ddf8		bf01000000			MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe1ddfd		4889fe				MOVQ DI, SI									
  print.go:314		0xe1de00		488d8c2498000000		LEAQ 0x98(SP), CX								
  print.go:314		0xe1de08		e8531a70ff			CALL fmt.Fprintln(SB)								
  kongzhi.go:1206	0xe1de0d		488d0d0c4b2200			LEAQ runtime.types+383264(SB), CX						
  kongzhi.go:1206	0xe1de14		48898c2488000000		MOVQ CX, 0x88(SP)								
  kongzhi.go:1206	0xe1de1c		488d0d9db20402			LEAQ CAS-Backend/pkg/agvcontrol..stmp_45(SB), CX				
  kongzhi.go:1206	0xe1de23		48898c2490000000		MOVQ CX, 0x90(SP)								
  print.go:314		0xe1de2b		488b1d4e426f02			MOVQ os.Stdout(SB), BX								
  print.go:314		0xe1de32		488d05a7dc0402			LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe1de39		488d8c2488000000		LEAQ 0x88(SP), CX								
  print.go:314		0xe1de41		bf01000000			MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe1de46		4889fe				MOVQ DI, SI									
  print.go:314		0xe1de49		e8121a70ff			CALL fmt.Fprintln(SB)								
  kongzhi.go:1208	0xe1de4e		488b842408010000		MOVQ 0x108(SP), AX								
  kongzhi.go:1208	0xe1de56		4889842480000000		MOVQ AX, 0x80(SP)								
  kongzhi.go:1208	0xe1de5e		440f117c2470			MOVUPS X15, 0x70(SP)								
  kongzhi.go:1208	0xe1de64		c644243700			MOVB $0x0, 0x37(SP)								
  kongzhi.go:1208	0xe1de69		488b942410010000		MOVQ 0x110(SP), DX								
  kongzhi.go:1208	0xe1de71		488b02				MOVQ 0(DX), AX									
  kongzhi.go:1208	0xe1de74		ffd0				CALL AX										
  kongzhi.go:1208	0xe1de76		488b5c2470			MOVQ 0x70(SP), BX								
  kongzhi.go:1208	0xe1de7b		488b842480000000		MOVQ 0x80(SP), AX								
  kongzhi.go:1208	0xe1de83		488b4c2478			MOVQ 0x78(SP), CX								
  kongzhi.go:1208	0xe1de88		4881c418010000			ADDQ $.file+203(SB), SP								
  kongzhi.go:1208	0xe1de8f		5d				POPQ BP										
  kongzhi.go:1208	0xe1de90		c3				RET										
  kongzhi.go:1194	0xe1de91		440f11bc24f0000000		MOVUPS X15, 0xf0(SP)								
  kongzhi.go:1194	0xe1de9a		488b4618			MOVQ 0x18(SI), AX								
  kongzhi.go:1194	0xe1de9e		488b5e20			MOVQ 0x20(SI), BX								
  kongzhi.go:1194	0xe1dea2		e879c264ff			CALL runtime.convTstring(SB)							
  kongzhi.go:1194	0xe1dea7		488d0d724a2200			LEAQ runtime.types+383264(SB), CX						
  kongzhi.go:1194	0xe1deae		48898c24f0000000		MOVQ CX, 0xf0(SP)								
  kongzhi.go:1194	0xe1deb6		48898424f8000000		MOVQ AX, 0xf8(SP)								
  kongzhi.go:1194	0xe1debe		488d05eed83500			LEAQ go:string.*+78507(SB), AX							
  kongzhi.go:1194	0xe1dec5		bb10000000			MOVL $__major_os_version__+10(SB), BX						
  kongzhi.go:1194	0xe1deca		488d8c24f0000000		LEAQ 0xf0(SP), CX								
  kongzhi.go:1194	0xe1ded2		bf01000000			MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1194	0xe1ded7		4889fe				MOVQ DI, SI									
  kongzhi.go:1194	0xe1deda		e8e1e46fff			CALL fmt.Errorf(SB)								
  kongzhi.go:1194	0xe1dedf		48c784248000000000000000	MOVQ $0x0, 0x80(SP)								
  kongzhi.go:1194	0xe1deeb		4889442470			MOVQ AX, 0x70(SP)								
  kongzhi.go:1194	0xe1def0		48895c2478			MOVQ BX, 0x78(SP)								
  kongzhi.go:1194	0xe1def5		c644243700			MOVB $0x0, 0x37(SP)								
  kongzhi.go:1194	0xe1defa		488b942410010000		MOVQ 0x110(SP), DX								
  kongzhi.go:1194	0xe1df02		488b0a				MOVQ 0(DX), CX									
  kongzhi.go:1194	0xe1df05		ffd1				CALL CX										
  kongzhi.go:1194	0xe1df07		488b5c2470			MOVQ 0x70(SP), BX								
  kongzhi.go:1194	0xe1df0c		488b842480000000		MOVQ 0x80(SP), AX								
  kongzhi.go:1194	0xe1df14		488b4c2478			MOVQ 0x78(SP), CX								
  kongzhi.go:1194	0xe1df19		4881c418010000			ADDQ $.file+203(SB), SP								
  kongzhi.go:1194	0xe1df20		5d				POPQ BP										
  kongzhi.go:1194	0xe1df21		c3				RET										
  kongzhi.go:1190	0xe1df22		488d05a79c3700			LEAQ go:string.*+194248(SB), AX							
  kongzhi.go:1190	0xe1df29		bb2a000000			MOVL $__major_os_version__+36(SB), BX						
  kongzhi.go:1190	0xe1df2e		31c9				XORL CX, CX									
  kongzhi.go:1190	0xe1df30		31ff				XORL DI, DI									
  kongzhi.go:1190	0xe1df32		4889fe				MOVQ DI, SI									
  kongzhi.go:1190	0xe1df35		e886e46fff			CALL fmt.Errorf(SB)								
  kongzhi.go:1190	0xe1df3a		48c784248000000000000000	MOVQ $0x0, 0x80(SP)								
  kongzhi.go:1190	0xe1df46		4889442470			MOVQ AX, 0x70(SP)								
  kongzhi.go:1190	0xe1df4b		48895c2478			MOVQ BX, 0x78(SP)								
  kongzhi.go:1190	0xe1df50		c644243700			MOVB $0x0, 0x37(SP)								
  kongzhi.go:1190	0xe1df55		488b942410010000		MOVQ 0x110(SP), DX								
  kongzhi.go:1190	0xe1df5d		4c8b02				MOVQ 0(DX), R8									
  kongzhi.go:1190	0xe1df60		41ffd0				CALL R8										
  kongzhi.go:1190	0xe1df63		488b5c2470			MOVQ 0x70(SP), BX								
  kongzhi.go:1190	0xe1df68		488b842480000000		MOVQ 0x80(SP), AX								
  kongzhi.go:1190	0xe1df70		488b4c2478			MOVQ 0x78(SP), CX								
  kongzhi.go:1190	0xe1df75		4881c418010000			ADDQ $.file+203(SB), SP								
  kongzhi.go:1190	0xe1df7c		5d				POPQ BP										
  kongzhi.go:1190	0xe1df7d		c3				RET										
  kongzhi.go:1162	0xe1df7e		4d89dc				MOVQ R11, R12									
  kongzhi.go:1162	0xe1df81		4d21d3				ANDQ R10, R11									
  kongzhi.go:1162	0xe1df84		49c1e304			SHLQ $__subsystem__+1(SB), R11							
  kongzhi.go:1162	0xe1df88		4f8b6c0b08			MOVQ 0x8(R11)(R9*1), R13							
  kongzhi.go:1162	0xe1df8d		4939d5				CMPQ R13, DX									
  kongzhi.go:1162	0xe1df90		7426				JE 0xe1dfb8									
  kongzhi.go:1162	0xe1df92		4d8d5c2401			LEAQ 0x1(R12), R11								
  kongzhi.go:1162	0xe1df97		4d85ed				TESTQ R13, R13									
  kongzhi.go:1162	0xe1df9a		75e2				JNE 0xe1df7e									
  kongzhi.go:1162	0xe1df9c		488d05adda1900			LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.39(SB), AX				
  kongzhi.go:1162	0xe1dfa3		4889d3				MOVQ DX, BX									
  kongzhi.go:1162	0xe1dfa6		e835135fff			CALL runtime.typeAssert(SB)							
  kongzhi.go:1162	0xe1dfab		488b9c2430010000		MOVQ 0x130(SP), BX								
  kongzhi.go:1162	0xe1dfb3		e91dfbffff			JMP 0xe1dad5									
  kongzhi.go:1162	0xe1dfb8		4b8b541910			MOVQ 0x10(R9)(R11*1), DX							
  kongzhi.go:1162	0xe1dfbd		4889d0				MOVQ DX, AX									
  kongzhi.go:1162	0xe1dfc0		e910fbffff			JMP 0xe1dad5									
  kongzhi.go:1148	0xe1dfc5		4d89dc				MOVQ R11, R12									
  kongzhi.go:1148	0xe1dfc8		4d21d3				ANDQ R10, R11									
  kongzhi.go:1148	0xe1dfcb		49c1e304			SHLQ $__subsystem__+1(SB), R11							
  kongzhi.go:1148	0xe1dfcf		4f8b6c0b08			MOVQ 0x8(R11)(R9*1), R13							
  kongzhi.go:1148	0xe1dfd4		4939d5				CMPQ R13, DX									
  kongzhi.go:1148	0xe1dfd7		742c				JE 0xe1e005									
  kongzhi.go:1148	0xe1dfd9		4d8d5c2401			LEAQ 0x1(R12), R11								
  kongzhi.go:1148	0xe1dfde		6690				NOPW										
  kongzhi.go:1148	0xe1dfe0		4d85ed				TESTQ R13, R13									
  kongzhi.go:1148	0xe1dfe3		75e0				JNE 0xe1dfc5									
  kongzhi.go:1148	0xe1dfe5		488d0544da1900			LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.38(SB), AX				
  kongzhi.go:1148	0xe1dfec		4889d3				MOVQ DX, BX									
  kongzhi.go:1148	0xe1dfef		e8ec125fff			CALL runtime.typeAssert(SB)							
  kongzhi.go:1148	0xe1dff4		488b9c2430010000		MOVQ 0x130(SP), BX								
  kongzhi.go:1148	0xe1dffc		0f1f4000			NOPL 0(AX)									
  kongzhi.go:1148	0xe1e000		e940f9ffff			JMP 0xe1d945									
  kongzhi.go:1148	0xe1e005		4b8b541910			MOVQ 0x10(R9)(R11*1), DX							
  kongzhi.go:1148	0xe1e00a		4889d0				MOVQ DX, AX									
  kongzhi.go:1148	0xe1e00d		e933f9ffff			JMP 0xe1d945									
  kongzhi.go:1148	0xe1e012		e869bb61ff			CALL runtime.deferreturn(SB)							
  kongzhi.go:1148	0xe1e017		488b842480000000		MOVQ 0x80(SP), AX								
  kongzhi.go:1148	0xe1e01f		488b5c2470			MOVQ 0x70(SP), BX								
  kongzhi.go:1148	0xe1e024		488b4c2478			MOVQ 0x78(SP), CX								
  kongzhi.go:1148	0xe1e029		4881c418010000			ADDQ $.file+203(SB), SP								
  kongzhi.go:1148	0xe1e030		5d				POPQ BP										
  kongzhi.go:1148	0xe1e031		c3				RET										
  kongzhi.go:1136	0xe1e032		4889442408			MOVQ AX, 0x8(SP)								
  kongzhi.go:1136	0xe1e037		48895c2410			MOVQ BX, 0x10(SP)								
  kongzhi.go:1136	0xe1e03c		884c2418			MOVB CL, 0x18(SP)								
  kongzhi.go:1136	0xe1e040		e89b8465ff			CALL runtime.morestack_noctxt.abi0(SB)						
  kongzhi.go:1136	0xe1e045		488b442408			MOVQ 0x8(SP), AX								
  kongzhi.go:1136	0xe1e04a		488b5c2410			MOVQ 0x10(SP), BX								
  kongzhi.go:1136	0xe1e04f		0fb64c2418			MOVZX 0x18(SP), CX								
  kongzhi.go:1136	0xe1e054		e967f8ffff			JMP CAS-Backend/pkg/agvcontrol.queryAMRLocation(SB)				
  :-1			0xe1e059		cc				INT $__subsystem__(SB)								
  :-1			0xe1e05a		cc				INT $__subsystem__(SB)								
  :-1			0xe1e05b		cc				INT $__subsystem__(SB)								
  :-1			0xe1e05c		cc				INT $__subsystem__(SB)								
  :-1			0xe1e05d		cc				INT $__subsystem__(SB)								
  :-1			0xe1e05e		cc				INT $__subsystem__(SB)								
  :-1			0xe1e05f		cc				INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/agvcontrol.queryAMRLocation.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:1158	0xe1e060		493b6610		CMPQ SP, 0x10(R14)						
  kongzhi.go:1158	0xe1e064		7625			JBE 0xe1e08b							
  kongzhi.go:1158	0xe1e066		55			PUSHQ BP							
  kongzhi.go:1158	0xe1e067		4889e5			MOVQ SP, BP							
  kongzhi.go:1158	0xe1e06a		4883ec10		SUBQ $__major_os_version__+10(SB), SP				
  kongzhi.go:1158	0xe1e06e		4d8b6620		MOVQ 0x20(R14), R12						
  kongzhi.go:1158	0xe1e072		4d85e4			TESTQ R12, R12							
  kongzhi.go:1158	0xe1e075		751b			JNE 0xe1e092							
  kongzhi.go:1158	0xe1e077		488b4208		MOVQ 0x8(DX), AX						
  kongzhi.go:1158	0xe1e07b		488b5a10		MOVQ 0x10(DX), BX						
  kongzhi.go:1158	0xe1e07f		90			NOPL								
  kongzhi.go:1158	0xe1e080		e8bb42ffff		CALL CAS-Backend/pkg/agvcontrol.ClearConnDeadlines(SB)		
  kongzhi.go:1158	0xe1e085		4883c410		ADDQ $__major_os_version__+10(SB), SP				
  kongzhi.go:1158	0xe1e089		5d			POPQ BP								
  kongzhi.go:1158	0xe1e08a		c3			RET								
  kongzhi.go:1158	0xe1e08b		e8d08365ff		CALL runtime.morestack.abi0(SB)					
  kongzhi.go:1158	0xe1e090		ebce			JMP CAS-Backend/pkg/agvcontrol.queryAMRLocation.deferwrap1(SB)	
  kongzhi.go:1158	0xe1e092		4c8d6c2420		LEAQ 0x20(SP), R13						
  kongzhi.go:1158	0xe1e097		4d392c24		CMPQ 0(R12), R13						
  kongzhi.go:1158	0xe1e09b		75da			JNE 0xe1e077							
  kongzhi.go:1158	0xe1e09d		49892424		MOVQ SP, 0(R12)							
  kongzhi.go:1158	0xe1e0a1		ebd4			JMP 0xe1e077							
  :-1			0xe1e0a3		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0a4		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0a5		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0a6		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0a7		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0a8		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0a9		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0aa		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0ab		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0ac		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0ad		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0ae		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0af		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0b0		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0b1		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0b2		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0b3		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0b4		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0b5		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0b6		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0b7		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0b8		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0b9		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0ba		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0bb		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0bc		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0bd		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0be		cc			INT $__subsystem__(SB)						
  :-1			0xe1e0bf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/agvcontrol.Ruanjiting(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/kongzhi.go
  kongzhi.go:1215	0xe1e0c0		4c8d642490		LEAQ -0x70(SP), R12								
  kongzhi.go:1215	0xe1e0c5		4d3b6610		CMPQ R12, 0x10(R14)								
  kongzhi.go:1215	0xe1e0c9		0f86f1060000		JBE 0xe1e7c0									
  kongzhi.go:1215	0xe1e0cf		55			PUSHQ BP									
  kongzhi.go:1215	0xe1e0d0		4889e5			MOVQ SP, BP									
  kongzhi.go:1215	0xe1e0d3		4881ece8000000		SUBQ $.file+155(SB), SP								
  kongzhi.go:1223	0xe1e0da		48898424f8000000	MOVQ AX, 0xf8(SP)								
  kongzhi.go:1223	0xe1e0e2		48899c2400010000	MOVQ BX, 0x100(SP)								
  kongzhi.go:1222	0xe1e0ea		0fb6c9			MOVZX CL, CX									
  kongzhi.go:1222	0xe1e0ed		488d152cc61500		LEAQ runtime.staticuint64s(SB), DX						
  kongzhi.go:1222	0xe1e0f4		488d0cca		LEAQ 0(DX)(CX*8), CX								
  kongzhi.go:1222	0xe1e0f8		488d05016a2800		LEAQ runtime.types+785152(SB), AX						
  kongzhi.go:1222	0xe1e0ff		4889cb			MOVQ CX, BX									
  kongzhi.go:1222	0xe1e102		e899f374ff		CALL encoding/json.Marshal(SB)							
  kongzhi.go:1223	0xe1e107		4885ff			TESTQ DI, DI									
  kongzhi.go:1223	0xe1e10a		7451			JE 0xe1e15d									
  kongzhi.go:1224	0xe1e10c		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:1224	0xe1e115		7404			JE 0xe1e11b									
  kongzhi.go:1224	0xe1e117		488b7f08		MOVQ 0x8(DI), DI								
  kongzhi.go:1224	0xe1e11b		4889bc24c8000000	MOVQ DI, 0xc8(SP)								
  kongzhi.go:1224	0xe1e123		4889b424d0000000	MOVQ SI, 0xd0(SP)								
  kongzhi.go:1224	0xe1e12b		488d05695a3600		LEAQ go:string.*+112275(SB), AX							
  kongzhi.go:1224	0xe1e132		bb17000000		MOVL $__major_os_version__+17(SB), BX						
  kongzhi.go:1224	0xe1e137		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  kongzhi.go:1224	0xe1e13f		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1224	0xe1e144		4889fe			MOVQ DI, SI									
  kongzhi.go:1224	0xe1e147		e874e26fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1224	0xe1e14c		4889d9			MOVQ BX, CX									
  kongzhi.go:1224	0xe1e14f		4889c3			MOVQ AX, BX									
  kongzhi.go:1224	0xe1e152		31c0			XORL AX, AX									
  kongzhi.go:1224	0xe1e154		4881c4e8000000		ADDQ $.file+155(SB), SP								
  kongzhi.go:1224	0xe1e15b		5d			POPQ BP										
  kongzhi.go:1224	0xe1e15c		c3			RET										
  kongzhi.go:1222	0xe1e15d		48894c2470		MOVQ CX, 0x70(SP)								
  kongzhi.go:1222	0xe1e162		48895c2468		MOVQ BX, 0x68(SP)								
  kongzhi.go:1222	0xe1e167		4889842488000000	MOVQ AX, 0x88(SP)								
  kongzhi.go:1234	0xe1e16f		48c74424405a010100	MOVQ $__dll_characteristics__+32762(SB), 0x40(SP)				
  kongzhi.go:1234	0xe1e178		48c744244874170000	MOVQ $__size_of_stack_commit__+1908(SB), 0x48(SP)				
  kongzhi.go:1232	0xe1e181		895c2444		MOVL BX, 0x44(SP)								
  kongzhi.go:1238	0xe1e185		488d0574a12b00		LEAQ runtime.types+996096(SB), AX						
  kongzhi.go:1238	0xe1e18c		e80f365fff		CALL runtime.newobject(SB)							
  kongzhi.go:1238	0xe1e191		48898424e0000000	MOVQ AX, 0xe0(SP)								
  kongzhi.go:1239	0xe1e199		0f10442440		MOVUPS 0x40(SP), X0								
  kongzhi.go:1239	0xe1e19e		0f11442450		MOVUPS X0, 0x50(SP)								
  kongzhi.go:1239	0xe1e1a3		4889c3			MOVQ AX, BX									
  kongzhi.go:1239	0xe1e1a6		488d0d938d0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:1239	0xe1e1ad		488d3decf07302		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:1239	0xe1e1b4		488d3505072f00		LEAQ runtime.types+1218752(SB), SI						
  kongzhi.go:1239	0xe1e1bb		4c8d442450		LEAQ 0x50(SP), R8								
  kongzhi.go:1239	0xe1e1c0		488d0599ee0402		LEAQ go:itab.*bytes.Buffer,io.Writer(SB), AX					
  kongzhi.go:1239	0xe1e1c7		e8543f74ff		CALL encoding/binary.Write(SB)							
  kongzhi.go:1240	0xe1e1cc		4885c0			TESTQ AX, AX									
  kongzhi.go:1240	0xe1e1cf		7451			JE 0xe1e222									
  kongzhi.go:1241	0xe1e1d1		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:1241	0xe1e1da		7404			JE 0xe1e1e0									
  kongzhi.go:1241	0xe1e1dc		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:1241	0xe1e1e0		48898424c8000000	MOVQ AX, 0xc8(SP)								
  kongzhi.go:1241	0xe1e1e8		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  kongzhi.go:1241	0xe1e1f0		488d05a9b13600		LEAQ go:string.*+134808(SB), AX							
  kongzhi.go:1241	0xe1e1f7		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:1241	0xe1e1fc		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  kongzhi.go:1241	0xe1e204		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1241	0xe1e209		4889fe			MOVQ DI, SI									
  kongzhi.go:1241	0xe1e20c		e8afe16fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1241	0xe1e211		4889d9			MOVQ BX, CX									
  kongzhi.go:1241	0xe1e214		4889c3			MOVQ AX, BX									
  kongzhi.go:1241	0xe1e217		31c0			XORL AX, AX									
  kongzhi.go:1241	0xe1e219		4881c4e8000000		ADDQ $.file+155(SB), SP								
  kongzhi.go:1241	0xe1e220		5d			POPQ BP										
  kongzhi.go:1241	0xe1e221		c3			RET										
  kongzhi.go:1243	0xe1e222		488b8424e0000000	MOVQ 0xe0(SP), AX								
  kongzhi.go:1243	0xe1e22a		488b9c2488000000	MOVQ 0x88(SP), BX								
  kongzhi.go:1243	0xe1e232		488b4c2468		MOVQ 0x68(SP), CX								
  kongzhi.go:1243	0xe1e237		488b7c2470		MOVQ 0x70(SP), DI								
  kongzhi.go:1243	0xe1e23c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:1243	0xe1e240		e8dbe270ff		CALL bytes.(*Buffer).Write(SB)							
  buffer.go:54		0xe1e245		488b9424e0000000	MOVQ 0xe0(SP), DX								
  buffer.go:54		0xe1e24d		488b4a08		MOVQ 0x8(DX), CX								
  buffer.go:54		0xe1e251		488b4218		MOVQ 0x18(DX), AX								
  buffer.go:54		0xe1e255		4839c1			CMPQ CX, AX									
  buffer.go:54		0xe1e258		0f825c050000		JB 0xe1e7ba									
  kongzhi.go:1246	0xe1e25e		488bb424f8000000	MOVQ 0xf8(SP), SI								
  kongzhi.go:1246	0xe1e266		4c8b4650		MOVQ 0x50(SI), R8								
  buffer.go:54		0xe1e26a		4c8b0a			MOVQ 0(DX), R9									
  buffer.go:54		0xe1e26d		488b7a10		MOVQ 0x10(DX), DI								
  buffer.go:54		0xe1e271		4829c7			SUBQ AX, DI									
  buffer.go:54		0xe1e274		4829c1			SUBQ AX, CX									
  buffer.go:54		0xe1e277		4889fa			MOVQ DI, DX									
  buffer.go:54		0xe1e27a		48f7da			NEGQ DX										
  buffer.go:54		0xe1e27d		48c1fa3f		SARQ $__major_os_version__+57(SB), DX						
  buffer.go:54		0xe1e281		4821d0			ANDQ DX, AX									
  buffer.go:54		0xe1e284		498d1c01		LEAQ 0(R9)(AX*1), BX								
  kongzhi.go:1246	0xe1e288		488b842400010000	MOVQ 0x100(SP), AX								
  kongzhi.go:1246	0xe1e290		41ffd0			CALL R8										
  kongzhi.go:1247	0xe1e293		4885db			TESTQ BX, BX									
  kongzhi.go:1247	0xe1e296		7573			JNE 0xe1e30b									
  kongzhi.go:1252	0xe1e298		e803fe68ff		CALL time.Now(SB)								
  kongzhi.go:1252	0xe1e29d		48bf00f2052a01000000	MOVQ $0x12a05f200, DI								
  kongzhi.go:1252	0xe1e2a7		e8b46268ff		CALL time.Time.Add(SB)								
  kongzhi.go:1252	0xe1e2ac		488b9424f8000000	MOVQ 0xf8(SP), DX								
  kongzhi.go:1252	0xe1e2b4		488b7240		MOVQ 0x40(DX), SI								
  kongzhi.go:1252	0xe1e2b8		4889cf			MOVQ CX, DI									
  kongzhi.go:1252	0xe1e2bb		4889d9			MOVQ BX, CX									
  kongzhi.go:1252	0xe1e2be		4889c3			MOVQ AX, BX									
  kongzhi.go:1252	0xe1e2c1		488b842400010000	MOVQ 0x100(SP), AX								
  kongzhi.go:1252	0xe1e2c9		ffd6			CALL SI										
  kongzhi.go:1255	0xe1e2cb		488d05ce462200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:1255	0xe1e2d2		bb10000000		MOVL $__major_os_version__+10(SB), BX						
  kongzhi.go:1255	0xe1e2d7		4889d9			MOVQ BX, CX									
  kongzhi.go:1255	0xe1e2da		e8813865ff		CALL runtime.makeslice(SB)							
  kongzhi.go:1255	0xe1e2df		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:1256	0xe1e2e7		488b8c24f8000000	MOVQ 0xf8(SP), CX								
  kongzhi.go:1256	0xe1e2ef		4885c9			TESTQ CX, CX									
  kongzhi.go:1256	0xe1e2f2		7468			JE 0xe1e35c									
  kongzhi.go:1256	0xe1e2f4		488b5908		MOVQ 0x8(CX), BX								
  kongzhi.go:1256	0xe1e2f8		488b1571d71900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.40(SB), DX				
  kongzhi.go:1256	0xe1e2ff		4c8b0a			MOVQ 0(DX), R9									
  kongzhi.go:1256	0xe1e302		448b5110		MOVL 0x10(CX), R10								
  kongzhi.go:1256	0xe1e306		e969040000		JMP 0xe1e774									
  kongzhi.go:1248	0xe1e30b		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:1248	0xe1e314		7404			JE 0xe1e31a									
  kongzhi.go:1248	0xe1e316		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:1248	0xe1e31a		48899c24c8000000	MOVQ BX, 0xc8(SP)								
  kongzhi.go:1248	0xe1e322		48898c24d0000000	MOVQ CX, 0xd0(SP)								
  kongzhi.go:1248	0xe1e32a		488d0593443600		LEAQ go:string.*+107196(SB), AX							
  kongzhi.go:1248	0xe1e331		bb16000000		MOVL $__major_os_version__+16(SB), BX						
  kongzhi.go:1248	0xe1e336		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  kongzhi.go:1248	0xe1e33e		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1248	0xe1e343		4889fe			MOVQ DI, SI									
  kongzhi.go:1248	0xe1e346		e875e06fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1248	0xe1e34b		4889d9			MOVQ BX, CX									
  kongzhi.go:1248	0xe1e34e		4889c3			MOVQ AX, BX									
  kongzhi.go:1248	0xe1e351		31c0			XORL AX, AX									
  kongzhi.go:1248	0xe1e353		4881c4e8000000		ADDQ $.file+155(SB), SP								
  kongzhi.go:1248	0xe1e35a		5d			POPQ BP										
  kongzhi.go:1248	0xe1e35b		c3			RET										
  io.go:354		0xe1e35c		488b9c2400010000	MOVQ 0x100(SP), BX								
  io.go:354		0xe1e364		bf10000000		MOVL $__major_os_version__+10(SB), DI						
  io.go:354		0xe1e369		4889fe			MOVQ DI, SI									
  io.go:354		0xe1e36c		4989f0			MOVQ SI, R8									
  kongzhi.go:1255	0xe1e36f		4889c2			MOVQ AX, DX									
  io.go:354		0xe1e372		4889c8			MOVQ CX, AX									
  io.go:354		0xe1e375		4889d1			MOVQ DX, CX									
  io.go:354		0xe1e378		e8834869ff		CALL io.ReadAtLeast(SB)								
  io.go:354		0xe1e37d		0f1f00			NOPL 0(AX)									
  kongzhi.go:1257	0xe1e380		4885db			TESTQ BX, BX									
  kongzhi.go:1257	0xe1e383		0f84f8000000		JE 0xe1e481									
  kongzhi.go:1259	0xe1e389		48391d308a1900		CMPQ io.EOF(SB), BX								
  kongzhi.go:1259	0xe1e390		7405			JE 0xe1e397									
  kongzhi.go:1257	0xe1e392		4885db			TESTQ BX, BX									
  kongzhi.go:1259	0xe1e395		eb4b			JMP 0xe1e3e2									
  io.go:354		0xe1e397		4889442460		MOVQ AX, 0x60(SP)								
  io.go:354		0xe1e39c		48895c2478		MOVQ BX, 0x78(SP)								
  io.go:354		0xe1e3a1		48898c2490000000	MOVQ CX, 0x90(SP)								
  kongzhi.go:1259	0xe1e3a9		488b15188a1900		MOVQ io.EOF+8(SB), DX								
  kongzhi.go:1259	0xe1e3b0		4889d8			MOVQ BX, AX									
  kongzhi.go:1259	0xe1e3b3		4889cb			MOVQ CX, BX									
  kongzhi.go:1259	0xe1e3b6		4889d1			MOVQ DX, CX									
  kongzhi.go:1259	0xe1e3b9		e822a15eff		CALL runtime.ifaceeq(SB)							
  kongzhi.go:1259	0xe1e3be		6690			NOPW										
  kongzhi.go:1259	0xe1e3c0		84c0			TESTL AL, AL									
  kongzhi.go:1259	0xe1e3c2		0f8590000000		JNE 0xe1e458									
  kongzhi.go:1257	0xe1e3c8		488b4c2478		MOVQ 0x78(SP), CX								
  kongzhi.go:1257	0xe1e3cd		4885c9			TESTQ CX, CX									
  kongzhi.go:1262	0xe1e3d0		488b442460		MOVQ 0x60(SP), AX								
  kongzhi.go:1262	0xe1e3d5		488b8c2490000000	MOVQ 0x90(SP), CX								
  kongzhi.go:1262	0xe1e3dd		488b5c2478		MOVQ 0x78(SP), BX								
  kongzhi.go:1262	0xe1e3e2		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)								
  kongzhi.go:1262	0xe1e3eb		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  kongzhi.go:1262	0xe1e3f4		7404			JE 0xe1e3fa									
  kongzhi.go:1262	0xe1e3f6		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:1262	0xe1e3fa		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  kongzhi.go:1262	0xe1e402		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  kongzhi.go:1262	0xe1e40a		e891bc64ff		CALL runtime.convT64(SB)							
  kongzhi.go:1262	0xe1e40f		488d0d4a472200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:1262	0xe1e416		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  kongzhi.go:1262	0xe1e41e		48898424c0000000	MOVQ AX, 0xc0(SP)								
  kongzhi.go:1262	0xe1e426		488d052be73700		LEAQ go:string.*+214608(SB), AX							
  kongzhi.go:1262	0xe1e42d		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:1262	0xe1e432		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  kongzhi.go:1262	0xe1e43a		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:1262	0xe1e43f		4889fe			MOVQ DI, SI									
  kongzhi.go:1262	0xe1e442		e879df6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1262	0xe1e447		4889d9			MOVQ BX, CX									
  kongzhi.go:1262	0xe1e44a		4889c3			MOVQ AX, BX									
  kongzhi.go:1262	0xe1e44d		31c0			XORL AX, AX									
  kongzhi.go:1262	0xe1e44f		4881c4e8000000		ADDQ $.file+155(SB), SP								
  kongzhi.go:1262	0xe1e456		5d			POPQ BP										
  kongzhi.go:1262	0xe1e457		c3			RET										
  kongzhi.go:1260	0xe1e458		488d05ae333600		LEAQ go:string.*+103173(SB), AX							
  kongzhi.go:1260	0xe1e45f		bb15000000		MOVL $__major_os_version__+15(SB), BX						
  kongzhi.go:1260	0xe1e464		31c9			XORL CX, CX									
  kongzhi.go:1260	0xe1e466		31ff			XORL DI, DI									
  kongzhi.go:1260	0xe1e468		4889fe			MOVQ DI, SI									
  kongzhi.go:1260	0xe1e46b		e850df6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1260	0xe1e470		4889d9			MOVQ BX, CX									
  kongzhi.go:1260	0xe1e473		4889c3			MOVQ AX, BX									
  kongzhi.go:1260	0xe1e476		31c0			XORL AX, AX									
  kongzhi.go:1260	0xe1e478		4881c4e8000000		ADDQ $.file+155(SB), SP								
  kongzhi.go:1260	0xe1e47f		5d			POPQ BP										
  kongzhi.go:1260	0xe1e480		c3			RET										
  kongzhi.go:1266	0xe1e481		440f117c2430		MOVUPS X15, 0x30(SP)								
  kongzhi.go:1267	0xe1e487		90			NOPL										
  reader.go:159		0xe1e488		488d05319f2b00		LEAQ runtime.types+996288(SB), AX						
  reader.go:159		0xe1e48f		e80c335fff		CALL runtime.newobject(SB)							
  reader.go:159		0xe1e494		48c7400810000000	MOVQ $__major_os_version__+10(SB), 0x8(AX)					
  reader.go:159		0xe1e49c		48c7401010000000	MOVQ $__major_os_version__+10(SB), 0x10(AX)					
  reader.go:159		0xe1e4a4		833da5f6730200		CMPL runtime.writeBarrier(SB), $0x0						
  reader.go:159		0xe1e4ab		750a			JNE 0xe1e4b7									
  reader.go:159		0xe1e4ad		488b9424d8000000	MOVQ 0xd8(SP), DX								
  reader.go:159		0xe1e4b5		eb10			JMP 0xe1e4c7									
  reader.go:159		0xe1e4b7		e8649f65ff		CALL runtime.gcWriteBarrier1(SB)						
  reader.go:159		0xe1e4bc		488b9424d8000000	MOVQ 0xd8(SP), DX								
  reader.go:159		0xe1e4c4		498913			MOVQ DX, 0(R11)									
  reader.go:159		0xe1e4c7		488910			MOVQ DX, 0(AX)									
  reader.go:159		0xe1e4ca		48c7401800000000	MOVQ $0x0, 0x18(AX)								
  reader.go:159		0xe1e4d2		48c74020ffffffff	MOVQ $-0x1, 0x20(AX)								
  kongzhi.go:1268	0xe1e4da		4889c3			MOVQ AX, BX									
  kongzhi.go:1268	0xe1e4dd		488d0d5c8a0502		LEAQ go:itab.encoding/binary.bigEndian,encoding/binary.ByteOrder(SB), CX	
  kongzhi.go:1268	0xe1e4e4		488d3db5ed7302		LEAQ unicode..stmp_365(SB), DI							
  kongzhi.go:1268	0xe1e4eb		488d352e872000		LEAQ runtime.types+269344(SB), SI						
  kongzhi.go:1268	0xe1e4f2		4c8d442430		LEAQ 0x30(SP), R8								
  kongzhi.go:1268	0xe1e4f7		488d05e2e50402		LEAQ go:itab.*bytes.Reader,io.Reader(SB), AX					
  kongzhi.go:1268	0xe1e4fe		6690			NOPW										
  kongzhi.go:1268	0xe1e500		e83b2d74ff		CALL encoding/binary.Read(SB)							
  kongzhi.go:1269	0xe1e505		4885c0			TESTQ AX, AX									
  kongzhi.go:1269	0xe1e508		0f859a000000		JNE 0xe1e5a8									
  kongzhi.go:1280	0xe1e50e		8b4c2434		MOVL 0x34(SP), CX								
  kongzhi.go:1280	0xe1e512		85c9			TESTL CX, CX									
  kongzhi.go:1280	0xe1e514		764f			JBE 0xe1e565									
  kongzhi.go:1281	0xe1e516		488d0583442200		LEAQ runtime.types+383392(SB), AX						
  kongzhi.go:1281	0xe1e51d		89cb			MOVL CX, BX									
  kongzhi.go:1281	0xe1e51f		90			NOPL										
  kongzhi.go:1281	0xe1e520		e83b3665ff		CALL runtime.makeslice(SB)							
  kongzhi.go:1281	0xe1e525		48898424d8000000	MOVQ AX, 0xd8(SP)								
  kongzhi.go:1281	0xe1e52d		448b442434		MOVL 0x34(SP), R8								
  kongzhi.go:1281	0xe1e532		4c89842480000000	MOVQ R8, 0x80(SP)								
  kongzhi.go:1256	0xe1e53a		488b9424f8000000	MOVQ 0xf8(SP), DX								
  kongzhi.go:1256	0xe1e542		4885d2			TESTQ DX, DX									
  kongzhi.go:1282	0xe1e545		0f84c0000000		JE 0xe1e60b									
  kongzhi.go:1282	0xe1e54b		488b5a08		MOVQ 0x8(DX), BX								
  kongzhi.go:1282	0xe1e54f		4c8b0d3ad51900		MOVQ CAS-Backend/pkg/agvcontrol..typeAssert.41(SB), R9				
  kongzhi.go:1282	0xe1e556		4d8b11			MOVQ 0(R9), R10									
  kongzhi.go:1282	0xe1e559		8b5210			MOVL 0x10(DX), DX								
  kongzhi.go:1282	0xe1e55c		0f1f4000		NOPL 0(AX)									
  kongzhi.go:1282	0xe1e560		e9c4010000		JMP 0xe1e729									
  kongzhi.go:1294	0xe1e565		488d15b4432200		LEAQ runtime.types+383264(SB), DX						
  kongzhi.go:1294	0xe1e56c		4889942498000000	MOVQ DX, 0x98(SP)								
  kongzhi.go:1294	0xe1e574		488d1525ab0402		LEAQ CAS-Backend/pkg/agvcontrol..stmp_40(SB), DX				
  kongzhi.go:1294	0xe1e57b		48899424a0000000	MOVQ DX, 0xa0(SP)								
  print.go:314		0xe1e583		488b1df63a6f02		MOVQ os.Stdout(SB), BX								
  print.go:314		0xe1e58a		488d054fd50402		LEAQ go:itab.*os.File,io.Writer(SB), AX						
  print.go:314		0xe1e591		488d8c2498000000	LEAQ 0x98(SP), CX								
  print.go:314		0xe1e599		bf01000000		MOVL $__minor_os_version__(SB), DI						
  print.go:314		0xe1e59e		4889fe			MOVQ DI, SI									
  print.go:314		0xe1e5a1		e8ba1270ff		CALL fmt.Fprintln(SB)								
  kongzhi.go:1297	0xe1e5a6		eb51			JMP 0xe1e5f9									
  kongzhi.go:1270	0xe1e5a8		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:1270	0xe1e5b1		7404			JE 0xe1e5b7									
  kongzhi.go:1270	0xe1e5b3		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:1270	0xe1e5b7		48898424c8000000	MOVQ AX, 0xc8(SP)								
  kongzhi.go:1270	0xe1e5bf		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  kongzhi.go:1270	0xe1e5c7		488d05eead3600		LEAQ go:string.*+134836(SB), AX							
  kongzhi.go:1270	0xe1e5ce		bb1c000000		MOVL $__major_os_version__+22(SB), BX						
  kongzhi.go:1270	0xe1e5d3		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  kongzhi.go:1270	0xe1e5db		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1270	0xe1e5e0		4889fe			MOVQ DI, SI									
  kongzhi.go:1270	0xe1e5e3		e8d8dd6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1270	0xe1e5e8		4889d9			MOVQ BX, CX									
  kongzhi.go:1270	0xe1e5eb		4889c3			MOVQ AX, BX									
  kongzhi.go:1270	0xe1e5ee		31c0			XORL AX, AX									
  kongzhi.go:1270	0xe1e5f0		4881c4e8000000		ADDQ $.file+155(SB), SP								
  kongzhi.go:1270	0xe1e5f7		5d			POPQ BP										
  kongzhi.go:1270	0xe1e5f8		c3			RET										
  kongzhi.go:1297	0xe1e5f9		b801000000		MOVL $__minor_os_version__(SB), AX						
  kongzhi.go:1297	0xe1e5fe		31db			XORL BX, BX									
  kongzhi.go:1297	0xe1e600		31c9			XORL CX, CX									
  kongzhi.go:1297	0xe1e602		4881c4e8000000		ADDQ $.file+155(SB), SP								
  kongzhi.go:1297	0xe1e609		5d			POPQ BP										
  kongzhi.go:1297	0xe1e60a		c3			RET										
  io.go:354		0xe1e60b		488b9c2400010000	MOVQ 0x100(SP), BX								
  io.go:354		0xe1e613		4889c1			MOVQ AX, CX									
  io.go:354		0xe1e616		4c89c7			MOVQ R8, DI									
  io.go:354		0xe1e619		4889fe			MOVQ DI, SI									
  io.go:354		0xe1e61c		4889d0			MOVQ DX, AX									
  io.go:354		0xe1e61f		90			NOPL										
  io.go:354		0xe1e620		e8db4569ff		CALL io.ReadAtLeast(SB)								
  kongzhi.go:1283	0xe1e625		4885db			TESTQ BX, BX									
  kongzhi.go:1283	0xe1e628		7477			JE 0xe1e6a1									
  kongzhi.go:1284	0xe1e62a		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)								
  kongzhi.go:1284	0xe1e633		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)								
  kongzhi.go:1284	0xe1e63c		7404			JE 0xe1e642									
  kongzhi.go:1284	0xe1e63e		488b5b08		MOVQ 0x8(BX), BX								
  kongzhi.go:1284	0xe1e642		48899c24a8000000	MOVQ BX, 0xa8(SP)								
  kongzhi.go:1284	0xe1e64a		48898c24b0000000	MOVQ CX, 0xb0(SP)								
  kongzhi.go:1284	0xe1e652		e849ba64ff		CALL runtime.convT64(SB)							
  kongzhi.go:1284	0xe1e657		488d0d02452200		LEAQ runtime.types+383840(SB), CX						
  kongzhi.go:1284	0xe1e65e		48898c24b8000000	MOVQ CX, 0xb8(SP)								
  kongzhi.go:1284	0xe1e666		48898424c0000000	MOVQ AX, 0xc0(SP)								
  kongzhi.go:1284	0xe1e66e		488d0514e53700		LEAQ go:string.*+214657(SB), AX							
  kongzhi.go:1284	0xe1e675		bb31000000		MOVL $__major_os_version__+43(SB), BX						
  kongzhi.go:1284	0xe1e67a		488d8c24a8000000	LEAQ 0xa8(SP), CX								
  kongzhi.go:1284	0xe1e682		bf02000000		MOVL $__minor_os_version__+1(SB), DI						
  kongzhi.go:1284	0xe1e687		4889fe			MOVQ DI, SI									
  kongzhi.go:1284	0xe1e68a		e831dd6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1284	0xe1e68f		4889d9			MOVQ BX, CX									
  kongzhi.go:1284	0xe1e692		4889c3			MOVQ AX, BX									
  kongzhi.go:1284	0xe1e695		31c0			XORL AX, AX									
  kongzhi.go:1284	0xe1e697		4881c4e8000000		ADDQ $.file+155(SB), SP								
  kongzhi.go:1284	0xe1e69e		5d			POPQ BP										
  kongzhi.go:1284	0xe1e69f		90			NOPL										
  kongzhi.go:1284	0xe1e6a0		c3			RET										
  kongzhi.go:1287	0xe1e6a1		488d0558782b00		LEAQ runtime.types+986880(SB), AX						
  kongzhi.go:1287	0xe1e6a8		e8f3305fff		CALL runtime.newobject(SB)							
  kongzhi.go:1288	0xe1e6ad		488b9c2480000000	MOVQ 0x80(SP), BX								
  kongzhi.go:1288	0xe1e6b5		4889d9			MOVQ BX, CX									
  kongzhi.go:1288	0xe1e6b8		488d3da1852000		LEAQ runtime.types+269408(SB), DI						
  kongzhi.go:1288	0xe1e6bf		4889c6			MOVQ AX, SI									
  kongzhi.go:1288	0xe1e6c2		488b8424d8000000	MOVQ 0xd8(SP), AX								
  kongzhi.go:1288	0xe1e6ca		e8118e74ff		CALL encoding/json.Unmarshal(SB)						
  kongzhi.go:1289	0xe1e6cf		4885c0			TESTQ AX, AX									
  kongzhi.go:1289	0xe1e6d2		0f8421ffffff		JE 0xe1e5f9									
  kongzhi.go:1290	0xe1e6d8		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)								
  kongzhi.go:1290	0xe1e6e1		7404			JE 0xe1e6e7									
  kongzhi.go:1290	0xe1e6e3		488b4008		MOVQ 0x8(AX), AX								
  kongzhi.go:1290	0xe1e6e7		48898424c8000000	MOVQ AX, 0xc8(SP)								
  kongzhi.go:1290	0xe1e6ef		48899c24d0000000	MOVQ BX, 0xd0(SP)								
  kongzhi.go:1290	0xe1e6f7		488d05aa883600		LEAQ go:string.*+125600(SB), AX							
  kongzhi.go:1290	0xe1e6fe		bb1a000000		MOVL $__major_os_version__+20(SB), BX						
  kongzhi.go:1290	0xe1e703		488d8c24c8000000	LEAQ 0xc8(SP), CX								
  kongzhi.go:1290	0xe1e70b		bf01000000		MOVL $__minor_os_version__(SB), DI						
  kongzhi.go:1290	0xe1e710		4889fe			MOVQ DI, SI									
  kongzhi.go:1290	0xe1e713		e8a8dc6fff		CALL fmt.Errorf(SB)								
  kongzhi.go:1290	0xe1e718		4889d9			MOVQ BX, CX									
  kongzhi.go:1290	0xe1e71b		4889c3			MOVQ AX, BX									
  kongzhi.go:1290	0xe1e71e		31c0			XORL AX, AX									
  kongzhi.go:1290	0xe1e720		4881c4e8000000		ADDQ $.file+155(SB), SP								
  kongzhi.go:1290	0xe1e727		5d			POPQ BP										
  kongzhi.go:1290	0xe1e728		c3			RET										
  kongzhi.go:1282	0xe1e729		4989d3			MOVQ DX, R11									
  kongzhi.go:1282	0xe1e72c		4c21d2			ANDQ R10, DX									
  kongzhi.go:1282	0xe1e72f		48c1e204		SHLQ $__subsystem__+1(SB), DX							
  kongzhi.go:1282	0xe1e733		4d8b641108		MOVQ 0x8(R9)(DX*1), R12								
  kongzhi.go:1282	0xe1e738		4939dc			CMPQ R12, BX									
  kongzhi.go:1282	0xe1e73b		742d			JE 0xe1e76a									
  kongzhi.go:1282	0xe1e73d		498d5301		LEAQ 0x1(R11), DX								
  kongzhi.go:1282	0xe1e741		4d85e4			TESTQ R12, R12									
  kongzhi.go:1282	0xe1e744		75e3			JNE 0xe1e729									
  kongzhi.go:1282	0xe1e746		488d0543d31900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.41(SB), AX				
  kongzhi.go:1282	0xe1e74d		e88e0b5fff		CALL runtime.typeAssert(SB)							
  io.go:354		0xe1e752		4c8b842480000000	MOVQ 0x80(SP), R8								
  kongzhi.go:1282	0xe1e75a		4889c2			MOVQ AX, DX									
  io.go:354		0xe1e75d		488b8424d8000000	MOVQ 0xd8(SP), AX								
  kongzhi.go:1282	0xe1e765		e9a1feffff		JMP 0xe1e60b									
  kongzhi.go:1282	0xe1e76a		498b541110		MOVQ 0x10(R9)(DX*1), DX								
  kongzhi.go:1282	0xe1e76f		e997feffff		JMP 0xe1e60b									
  kongzhi.go:1256	0xe1e774		4d89d3			MOVQ R10, R11									
  kongzhi.go:1256	0xe1e777		4d21ca			ANDQ R9, R10									
  kongzhi.go:1256	0xe1e77a		49c1e204		SHLQ $__subsystem__+1(SB), R10							
  kongzhi.go:1256	0xe1e77e		4e8b641208		MOVQ 0x8(DX)(R10*1), R12							
  kongzhi.go:1256	0xe1e783		4939dc			CMPQ R12, BX									
  kongzhi.go:1256	0xe1e786		7425			JE 0xe1e7ad									
  kongzhi.go:1256	0xe1e788		4d8d5301		LEAQ 0x1(R11), R10								
  kongzhi.go:1256	0xe1e78c		4d85e4			TESTQ R12, R12									
  kongzhi.go:1256	0xe1e78f		75e3			JNE 0xe1e774									
  kongzhi.go:1256	0xe1e791		488d05d8d21900		LEAQ CAS-Backend/pkg/agvcontrol..typeAssert.40(SB), AX				
  kongzhi.go:1256	0xe1e798		e8430b5fff		CALL runtime.typeAssert(SB)							
  kongzhi.go:1256	0xe1e79d		4889c1			MOVQ AX, CX									
  io.go:354		0xe1e7a0		488b8424d8000000	MOVQ 0xd8(SP), AX								
  kongzhi.go:1256	0xe1e7a8		e9affbffff		JMP 0xe1e35c									
  kongzhi.go:1256	0xe1e7ad		4a8b541210		MOVQ 0x10(DX)(R10*1), DX							
  kongzhi.go:1256	0xe1e7b2		4889d1			MOVQ DX, CX									
  kongzhi.go:1256	0xe1e7b5		e9a2fbffff		JMP 0xe1e35c									
  buffer.go:54		0xe1e7ba		e8e1a065ff		CALL runtime.panicSliceB(SB)							
  buffer.go:54		0xe1e7bf		90			NOPL										
  kongzhi.go:1215	0xe1e7c0		4889442408		MOVQ AX, 0x8(SP)								
  kongzhi.go:1215	0xe1e7c5		48895c2410		MOVQ BX, 0x10(SP)								
  kongzhi.go:1215	0xe1e7ca		884c2418		MOVB CL, 0x18(SP)								
  kongzhi.go:1215	0xe1e7ce		e80d7d65ff		CALL runtime.morestack_noctxt.abi0(SB)						
  kongzhi.go:1215	0xe1e7d3		488b442408		MOVQ 0x8(SP), AX								
  kongzhi.go:1215	0xe1e7d8		488b5c2410		MOVQ 0x10(SP), BX								
  kongzhi.go:1215	0xe1e7dd		0fb64c2418		MOVZX 0x18(SP), CX								
  kongzhi.go:1215	0xe1e7e2		e9d9f8ffff		JMP CAS-Backend/pkg/agvcontrol.Ruanjiting(SB)					
  :-1			0xe1e7e7		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7e8		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7e9		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7ea		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7eb		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7ec		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7ed		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7ee		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7ef		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7f0		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7f1		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7f2		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7f3		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7f4		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7f5		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7f6		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7f7		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7f8		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7f9		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7fa		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7fb		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7fc		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7fd		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7fe		cc			INT $__subsystem__(SB)								
  :-1			0xe1e7ff		cc			INT $__subsystem__(SB)								

