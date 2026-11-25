TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).Start(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:50	0xe43b40		493b6610		CMPQ SP, 0x10(R14)							
  vehservice.go:50	0xe43b44		764f			JBE 0xe43b95								
  vehservice.go:50	0xe43b46		55			PUSHQ BP								
  vehservice.go:50	0xe43b47		4889e5			MOVQ SP, BP								
  vehservice.go:50	0xe43b4a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  vehservice.go:52	0xe43b4e		4889442420		MOVQ AX, 0x20(SP)							
  vehservice.go:51	0xe43b53		488d05e6d62600		LEAQ runtime.types+836160(SB), AX					
  vehservice.go:51	0xe43b5a		e841dc5cff		CALL runtime.newobject(SB)						
  vehservice.go:51	0xe43b5f		488d0d5a000000		LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).Start.gowrap1(SB), CX	
  vehservice.go:51	0xe43b66		488908			MOVQ CX, 0(AX)								
  vehservice.go:51	0xe43b69		833de09f710200		CMPL runtime.writeBarrier(SB), $0x0					
  vehservice.go:51	0xe43b70		7507			JNE 0xe43b79								
  vehservice.go:51	0xe43b72		488b4c2420		MOVQ 0x20(SP), CX							
  vehservice.go:51	0xe43b77		eb0d			JMP 0xe43b86								
  vehservice.go:51	0xe43b79		e8a24863ff		CALL runtime.gcWriteBarrier1(SB)					
  vehservice.go:51	0xe43b7e		488b4c2420		MOVQ 0x20(SP), CX							
  vehservice.go:51	0xe43b83		49890b			MOVQ CX, 0(R11)								
  vehservice.go:51	0xe43b86		48894808		MOVQ CX, 0x8(AX)							
  vehservice.go:51	0xe43b8a		e8b13960ff		CALL runtime.newproc(SB)						
  vehservice.go:52	0xe43b8f		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  vehservice.go:52	0xe43b93		5d			POPQ BP									
  vehservice.go:52	0xe43b94		c3			RET									
  vehservice.go:50	0xe43b95		4889442408		MOVQ AX, 0x8(SP)							
  vehservice.go:50	0xe43b9a		e8412963ff		CALL runtime.morestack_noctxt.abi0(SB)					
  vehservice.go:50	0xe43b9f		488b442408		MOVQ 0x8(SP), AX							
  vehservice.go:50	0xe43ba4		eb9a			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).Start(SB)			
  :-1			0xe43ba6		cc			INT $__subsystem__(SB)							
  :-1			0xe43ba7		cc			INT $__subsystem__(SB)							
  :-1			0xe43ba8		cc			INT $__subsystem__(SB)							
  :-1			0xe43ba9		cc			INT $__subsystem__(SB)							
  :-1			0xe43baa		cc			INT $__subsystem__(SB)							
  :-1			0xe43bab		cc			INT $__subsystem__(SB)							
  :-1			0xe43bac		cc			INT $__subsystem__(SB)							
  :-1			0xe43bad		cc			INT $__subsystem__(SB)							
  :-1			0xe43bae		cc			INT $__subsystem__(SB)							
  :-1			0xe43baf		cc			INT $__subsystem__(SB)							
  :-1			0xe43bb0		cc			INT $__subsystem__(SB)							
  :-1			0xe43bb1		cc			INT $__subsystem__(SB)							
  :-1			0xe43bb2		cc			INT $__subsystem__(SB)							
  :-1			0xe43bb3		cc			INT $__subsystem__(SB)							
  :-1			0xe43bb4		cc			INT $__subsystem__(SB)							
  :-1			0xe43bb5		cc			INT $__subsystem__(SB)							
  :-1			0xe43bb6		cc			INT $__subsystem__(SB)							
  :-1			0xe43bb7		cc			INT $__subsystem__(SB)							
  :-1			0xe43bb8		cc			INT $__subsystem__(SB)							
  :-1			0xe43bb9		cc			INT $__subsystem__(SB)							
  :-1			0xe43bba		cc			INT $__subsystem__(SB)							
  :-1			0xe43bbb		cc			INT $__subsystem__(SB)							
  :-1			0xe43bbc		cc			INT $__subsystem__(SB)							
  :-1			0xe43bbd		cc			INT $__subsystem__(SB)							
  :-1			0xe43bbe		cc			INT $__subsystem__(SB)							
  :-1			0xe43bbf		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).Start.gowrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:51	0xe43bc0		493b6610		CMPQ SP, 0x10(R14)						
  vehservice.go:51	0xe43bc4		7625			JBE 0xe43beb							
  vehservice.go:51	0xe43bc6		55			PUSHQ BP							
  vehservice.go:51	0xe43bc7		4889e5			MOVQ SP, BP							
  vehservice.go:51	0xe43bca		4883ec08		SUBQ $__major_os_version__+2(SB), SP				
  vehservice.go:51	0xe43bce		4d8b6620		MOVQ 0x20(R14), R12						
  vehservice.go:51	0xe43bd2		4d85e4			TESTQ R12, R12							
  vehservice.go:51	0xe43bd5		751b			JNE 0xe43bf2							
  vehservice.go:51	0xe43bd7		488b4208		MOVQ 0x8(DX), AX						
  vehservice.go:51	0xe43bdb		0f1f440000		NOPL 0(AX)(AX*1)						
  vehservice.go:51	0xe43be0		e83b000000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateLoop(SB)	
  vehservice.go:51	0xe43be5		4883c408		ADDQ $__major_os_version__+2(SB), SP				
  vehservice.go:51	0xe43be9		5d			POPQ BP								
  vehservice.go:51	0xe43bea		c3			RET								
  vehservice.go:51	0xe43beb		e8702863ff		CALL runtime.morestack.abi0(SB)					
  vehservice.go:51	0xe43bf0		ebce			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).Start.gowrap1(SB)	
  vehservice.go:51	0xe43bf2		4c8d6c2418		LEAQ 0x18(SP), R13						
  vehservice.go:51	0xe43bf7		4d392c24		CMPQ 0(R12), R13						
  vehservice.go:51	0xe43bfb		75da			JNE 0xe43bd7							
  vehservice.go:51	0xe43bfd		49892424		MOVQ SP, 0(R12)							
  vehservice.go:51	0xe43c01		ebd4			JMP 0xe43bd7							
  :-1			0xe43c03		cc			INT $__subsystem__(SB)						
  :-1			0xe43c04		cc			INT $__subsystem__(SB)						
  :-1			0xe43c05		cc			INT $__subsystem__(SB)						
  :-1			0xe43c06		cc			INT $__subsystem__(SB)						
  :-1			0xe43c07		cc			INT $__subsystem__(SB)						
  :-1			0xe43c08		cc			INT $__subsystem__(SB)						
  :-1			0xe43c09		cc			INT $__subsystem__(SB)						
  :-1			0xe43c0a		cc			INT $__subsystem__(SB)						
  :-1			0xe43c0b		cc			INT $__subsystem__(SB)						
  :-1			0xe43c0c		cc			INT $__subsystem__(SB)						
  :-1			0xe43c0d		cc			INT $__subsystem__(SB)						
  :-1			0xe43c0e		cc			INT $__subsystem__(SB)						
  :-1			0xe43c0f		cc			INT $__subsystem__(SB)						
  :-1			0xe43c10		cc			INT $__subsystem__(SB)						
  :-1			0xe43c11		cc			INT $__subsystem__(SB)						
  :-1			0xe43c12		cc			INT $__subsystem__(SB)						
  :-1			0xe43c13		cc			INT $__subsystem__(SB)						
  :-1			0xe43c14		cc			INT $__subsystem__(SB)						
  :-1			0xe43c15		cc			INT $__subsystem__(SB)						
  :-1			0xe43c16		cc			INT $__subsystem__(SB)						
  :-1			0xe43c17		cc			INT $__subsystem__(SB)						
  :-1			0xe43c18		cc			INT $__subsystem__(SB)						
  :-1			0xe43c19		cc			INT $__subsystem__(SB)						
  :-1			0xe43c1a		cc			INT $__subsystem__(SB)						
  :-1			0xe43c1b		cc			INT $__subsystem__(SB)						
  :-1			0xe43c1c		cc			INT $__subsystem__(SB)						
  :-1			0xe43c1d		cc			INT $__subsystem__(SB)						
  :-1			0xe43c1e		cc			INT $__subsystem__(SB)						
  :-1			0xe43c1f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateLoop(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:58	0xe43c20		4c8d6424f8		LEAQ -0x8(SP), R12								
  vehservice.go:58	0xe43c25		4d3b6610		CMPQ R12, 0x10(R14)								
  vehservice.go:58	0xe43c29		0f86c8000000		JBE 0xe43cf7									
  vehservice.go:58	0xe43c2f		55			PUSHQ BP									
  vehservice.go:58	0xe43c30		4889e5			MOVQ SP, BP									
  vehservice.go:58	0xe43c33		4883c480		ADDQ $-0x80, SP									
  vehservice.go:58	0xe43c37		66440fd67c2478		MOVQ X15, 0x78(SP)								
  vehservice.go:62	0xe43c3e		4889842490000000	MOVQ AX, 0x90(SP)								
  vehservice.go:58	0xe43c46		c644243700		MOVB $0x0, 0x37(SP)								
  vehservice.go:59	0xe43c4b		488b08			MOVQ 0(AX), CX									
  vehservice.go:59	0xe43c4e		4889c8			MOVQ CX, AX									
  vehservice.go:59	0xe43c51		e88af065ff		CALL time.NewTicker(SB)								
  vehservice.go:59	0xe43c56		4889442440		MOVQ AX, 0x40(SP)								
  vehservice.go:60	0xe43c5b		488d0dbe000000		LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateLoop.deferwrap1(SB), CX	
  vehservice.go:60	0xe43c62		48894c2468		MOVQ CX, 0x68(SP)								
  vehservice.go:60	0xe43c67		4889442470		MOVQ AX, 0x70(SP)								
  vehservice.go:60	0xe43c6c		488d4c2468		LEAQ 0x68(SP), CX								
  vehservice.go:60	0xe43c71		48894c2478		MOVQ CX, 0x78(SP)								
  vehservice.go:60	0xe43c76		c644243701		MOVB $__minor_os_version__(SB), 0x37(SP)					
  vehservice.go:62	0xe43c7b		eb12			JMP 0xe43c8f									
  vehservice.go:67	0xe43c7d		488b842490000000	MOVQ 0x90(SP), AX								
  vehservice.go:67	0xe43c85		e8360d0000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateForkliftStatus(SB)		
  vehservice.go:66	0xe43c8a		488b442440		MOVQ 0x40(SP), AX								
  vehservice.go:64	0xe43c8f		488b942490000000	MOVQ 0x90(SP), DX								
  vehservice.go:64	0xe43c97		4c8b4a10		MOVQ 0x10(DX), R9								
  vehservice.go:66	0xe43c9b		4c8b10			MOVQ 0(AX), R10									
  vehservice.go:63	0xe43c9e		440f117c2448		MOVUPS X15, 0x48(SP)								
  vehservice.go:63	0xe43ca4		440f117c2458		MOVUPS X15, 0x58(SP)								
  vehservice.go:64	0xe43caa		4c894c2458		MOVQ R9, 0x58(SP)								
  vehservice.go:66	0xe43caf		4c89542448		MOVQ R10, 0x48(SP)								
  vehservice.go:63	0xe43cb4		488d5c2438		LEAQ 0x38(SP), BX								
  vehservice.go:63	0xe43cb9		31c9			XORL CX, CX									
  vehservice.go:63	0xe43cbb		31ff			XORL DI, DI									
  vehservice.go:63	0xe43cbd		be02000000		MOVL $__minor_os_version__+1(SB), SI						
  vehservice.go:63	0xe43cc2		41b801000000		MOVL $__minor_os_version__(SB), R8						
  vehservice.go:63	0xe43cc8		488d442448		LEAQ 0x48(SP), AX								
  vehservice.go:63	0xe43ccd		e82ea860ff		CALL runtime.selectgo(SB)							
  vehservice.go:66	0xe43cd2		4885c0			TESTQ AX, AX									
  vehservice.go:66	0xe43cd5		74a6			JE 0xe43c7d									
  vehservice.go:65	0xe43cd7		c644243700		MOVB $0x0, 0x37(SP)								
  vehservice.go:65	0xe43cdc		488b542478		MOVQ 0x78(SP), DX								
  vehservice.go:65	0xe43ce1		488b02			MOVQ 0(DX), AX									
  vehservice.go:65	0xe43ce4		ffd0			CALL AX										
  vehservice.go:65	0xe43ce6		4883ec80		SUBQ $-0x80, SP									
  vehservice.go:65	0xe43cea		5d			POPQ BP										
  vehservice.go:65	0xe43ceb		c3			RET										
  vehservice.go:65	0xe43cec		e88f5e5fff		CALL runtime.deferreturn(SB)							
  vehservice.go:65	0xe43cf1		4883ec80		SUBQ $-0x80, SP									
  vehservice.go:65	0xe43cf5		5d			POPQ BP										
  vehservice.go:65	0xe43cf6		c3			RET										
  vehservice.go:58	0xe43cf7		4889442408		MOVQ AX, 0x8(SP)								
  vehservice.go:58	0xe43cfc		0f1f4000		NOPL 0(AX)									
  vehservice.go:58	0xe43d00		e8db2763ff		CALL runtime.morestack_noctxt.abi0(SB)						
  vehservice.go:58	0xe43d05		488b442408		MOVQ 0x8(SP), AX								
  vehservice.go:58	0xe43d0a		e911ffffff		JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateLoop(SB)			
  :-1			0xe43d0f		cc			INT $__subsystem__(SB)								
  :-1			0xe43d10		cc			INT $__subsystem__(SB)								
  :-1			0xe43d11		cc			INT $__subsystem__(SB)								
  :-1			0xe43d12		cc			INT $__subsystem__(SB)								
  :-1			0xe43d13		cc			INT $__subsystem__(SB)								
  :-1			0xe43d14		cc			INT $__subsystem__(SB)								
  :-1			0xe43d15		cc			INT $__subsystem__(SB)								
  :-1			0xe43d16		cc			INT $__subsystem__(SB)								
  :-1			0xe43d17		cc			INT $__subsystem__(SB)								
  :-1			0xe43d18		cc			INT $__subsystem__(SB)								
  :-1			0xe43d19		cc			INT $__subsystem__(SB)								
  :-1			0xe43d1a		cc			INT $__subsystem__(SB)								
  :-1			0xe43d1b		cc			INT $__subsystem__(SB)								
  :-1			0xe43d1c		cc			INT $__subsystem__(SB)								
  :-1			0xe43d1d		cc			INT $__subsystem__(SB)								
  :-1			0xe43d1e		cc			INT $__subsystem__(SB)								
  :-1			0xe43d1f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateLoop.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:60	0xe43d20		493b6610		CMPQ SP, 0x10(R14)							
  vehservice.go:60	0xe43d24		7627			JBE 0xe43d4d								
  vehservice.go:60	0xe43d26		55			PUSHQ BP								
  vehservice.go:60	0xe43d27		4889e5			MOVQ SP, BP								
  vehservice.go:60	0xe43d2a		4883ec08		SUBQ $__major_os_version__+2(SB), SP					
  vehservice.go:60	0xe43d2e		4d8b6620		MOVQ 0x20(R14), R12							
  vehservice.go:60	0xe43d32		4d85e4			TESTQ R12, R12								
  vehservice.go:60	0xe43d35		751d			JNE 0xe43d54								
  vehservice.go:60	0xe43d37		488b4208		MOVQ 0x8(DX), AX							
  tick.go:53		0xe43d3b		80780800		CMPB 0x8(AX), $0x0							
  tick.go:53		0xe43d3f		90			NOPL									
  tick.go:53		0xe43d40		7405			JE 0xe43d47								
  tick.go:59		0xe43d42		e8390663ff		CALL time.stopTimer(SB)							
  vehservice.go:60	0xe43d47		4883c408		ADDQ $__major_os_version__+2(SB), SP					
  vehservice.go:60	0xe43d4b		5d			POPQ BP									
  vehservice.go:60	0xe43d4c		c3			RET									
  vehservice.go:60	0xe43d4d		e80e2763ff		CALL runtime.morestack.abi0(SB)						
  vehservice.go:60	0xe43d52		ebcc			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateLoop.deferwrap1(SB)	
  vehservice.go:60	0xe43d54		4c8d6c2418		LEAQ 0x18(SP), R13							
  vehservice.go:60	0xe43d59		4d392c24		CMPQ 0(R12), R13							
  vehservice.go:60	0xe43d5d		75d8			JNE 0xe43d37								
  vehservice.go:60	0xe43d5f		49892424		MOVQ SP, 0(R12)								
  vehservice.go:60	0xe43d63		ebd2			JMP 0xe43d37								
  :-1			0xe43d65		cc			INT $__subsystem__(SB)							
  :-1			0xe43d66		cc			INT $__subsystem__(SB)							
  :-1			0xe43d67		cc			INT $__subsystem__(SB)							
  :-1			0xe43d68		cc			INT $__subsystem__(SB)							
  :-1			0xe43d69		cc			INT $__subsystem__(SB)							
  :-1			0xe43d6a		cc			INT $__subsystem__(SB)							
  :-1			0xe43d6b		cc			INT $__subsystem__(SB)							
  :-1			0xe43d6c		cc			INT $__subsystem__(SB)							
  :-1			0xe43d6d		cc			INT $__subsystem__(SB)							
  :-1			0xe43d6e		cc			INT $__subsystem__(SB)							
  :-1			0xe43d6f		cc			INT $__subsystem__(SB)							
  :-1			0xe43d70		cc			INT $__subsystem__(SB)							
  :-1			0xe43d71		cc			INT $__subsystem__(SB)							
  :-1			0xe43d72		cc			INT $__subsystem__(SB)							
  :-1			0xe43d73		cc			INT $__subsystem__(SB)							
  :-1			0xe43d74		cc			INT $__subsystem__(SB)							
  :-1			0xe43d75		cc			INT $__subsystem__(SB)							
  :-1			0xe43d76		cc			INT $__subsystem__(SB)							
  :-1			0xe43d77		cc			INT $__subsystem__(SB)							
  :-1			0xe43d78		cc			INT $__subsystem__(SB)							
  :-1			0xe43d79		cc			INT $__subsystem__(SB)							
  :-1			0xe43d7a		cc			INT $__subsystem__(SB)							
  :-1			0xe43d7b		cc			INT $__subsystem__(SB)							
  :-1			0xe43d7c		cc			INT $__subsystem__(SB)							
  :-1			0xe43d7d		cc			INT $__subsystem__(SB)							
  :-1			0xe43d7e		cc			INT $__subsystem__(SB)							
  :-1			0xe43d7f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:72	0xe43d80		493b6610		CMPQ SP, 0x10(R14)								
  vehservice.go:72	0xe43d84		0f86eb000000		JBE 0xe43e75									
  vehservice.go:72	0xe43d8a		55			PUSHQ BP									
  vehservice.go:72	0xe43d8b		4889e5			MOVQ SP, BP									
  vehservice.go:72	0xe43d8e		4883ec48		SUBQ $__major_os_version__+66(SB), SP						
  vehservice.go:72	0xe43d92		48895c2460		MOVQ BX, 0x60(SP)								
  vehservice.go:72	0xe43d97		66440fd67c2440		MOVQ X15, 0x40(SP)								
  vehservice.go:72	0xe43d9e		c644242700		MOVB $0x0, 0x27(SP)								
  vehservice.go:72	0xe43da3		48c744242800000000	MOVQ $0x0, 0x28(SP)								
  vehservice.go:72	0xe43dac		c644242600		MOVB $0x0, 0x26(SP)								
  vehservice.go:73	0xe43db1		ba01000000		MOVL $__minor_os_version__(SB), DX						
  vehservice.go:73	0xe43db6		f00fc15028		LOCK XADDL DX, 0x28(AX)								
  type.go:88		0xe43dbb		ffc2			INCL DX										
  type.go:88		0xe43dbd		0f1f00			NOPL 0(AX)									
  rwmutex.go:70		0xe43dc0		85d2			TESTL DX, DX									
  rwmutex.go:70		0xe43dc2		7d30			JGE 0xe43df4									
  rwmutex.go:70		0xe43dc4		4889442458		MOVQ AX, 0x58(SP)								
  rwmutex.go:70		0xe43dc9		48894c2468		MOVQ CX, 0x68(SP)								
  rwmutex.go:70		0xe43dce		48895c2460		MOVQ BX, 0x60(SP)								
  rwmutex.go:72		0xe43dd3		488d5024		LEAQ 0x24(AX), DX								
  rwmutex.go:72		0xe43dd7		31db			XORL BX, BX									
  rwmutex.go:72		0xe43dd9		31c9			XORL CX, CX									
  rwmutex.go:72		0xe43ddb		4889d0			MOVQ DX, AX									
  rwmutex.go:72		0xe43dde		6690			NOPW										
  rwmutex.go:72		0xe43de0		e87bd762ff		CALL sync.runtime_SemacquireRWMutexR(SB)					
  vehservice.go:74	0xe43de5		488b442458		MOVQ 0x58(SP), AX								
  vehservice.go:76	0xe43dea		488b4c2468		MOVQ 0x68(SP), CX								
  vehservice.go:76	0xe43def		488b5c2460		MOVQ 0x60(SP), BX								
  vehservice.go:74	0xe43df4		488d15a5000000		LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift.deferwrap1(SB), DX	
  vehservice.go:74	0xe43dfb		4889542430		MOVQ DX, 0x30(SP)								
  vehservice.go:74	0xe43e00		488d5018		LEAQ 0x18(AX), DX								
  vehservice.go:74	0xe43e04		4889542438		MOVQ DX, 0x38(SP)								
  vehservice.go:74	0xe43e09		488d542430		LEAQ 0x30(SP), DX								
  vehservice.go:74	0xe43e0e		4889542440		MOVQ DX, 0x40(SP)								
  vehservice.go:74	0xe43e13		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)					
  vehservice.go:76	0xe43e18		488b5030		MOVQ 0x30(AX), DX								
  vehservice.go:76	0xe43e1c		488d051d982300		LEAQ runtime.types+624192(SB), AX						
  vehservice.go:76	0xe43e23		4889cf			MOVQ CX, DI									
  vehservice.go:76	0xe43e26		4889d9			MOVQ BX, CX									
  vehservice.go:76	0xe43e29		4889d3			MOVQ DX, BX									
  vehservice.go:76	0xe43e2c		e80f9e62ff		CALL runtime.mapaccess2_faststr(SB)						
  vehservice.go:76	0xe43e31		488b10			MOVQ 0(AX), DX									
  vehservice.go:77	0xe43e34		4889542428		MOVQ DX, 0x28(SP)								
  vehservice.go:77	0xe43e39		885c2426		MOVB BL, 0x26(SP)								
  vehservice.go:77	0xe43e3d		c644242700		MOVB $0x0, 0x27(SP)								
  vehservice.go:77	0xe43e42		488b542440		MOVQ 0x40(SP), DX								
  vehservice.go:77	0xe43e47		488b32			MOVQ 0(DX), SI									
  vehservice.go:77	0xe43e4a		ffd6			CALL SI										
  vehservice.go:77	0xe43e4c		0fb65c2426		MOVZX 0x26(SP), BX								
  vehservice.go:77	0xe43e51		488b442428		MOVQ 0x28(SP), AX								
  vehservice.go:77	0xe43e56		4883c448		ADDQ $__major_os_version__+66(SB), SP						
  vehservice.go:77	0xe43e5a		5d			POPQ BP										
  vehservice.go:77	0xe43e5b		c3			RET										
  vehservice.go:77	0xe43e5c		0f1f4000		NOPL 0(AX)									
  vehservice.go:77	0xe43e60		e81b5d5fff		CALL runtime.deferreturn(SB)							
  vehservice.go:77	0xe43e65		488b442428		MOVQ 0x28(SP), AX								
  vehservice.go:77	0xe43e6a		0fb65c2426		MOVZX 0x26(SP), BX								
  vehservice.go:77	0xe43e6f		4883c448		ADDQ $__major_os_version__+66(SB), SP						
  vehservice.go:77	0xe43e73		5d			POPQ BP										
  vehservice.go:77	0xe43e74		c3			RET										
  vehservice.go:72	0xe43e75		4889442408		MOVQ AX, 0x8(SP)								
  vehservice.go:72	0xe43e7a		48895c2410		MOVQ BX, 0x10(SP)								
  vehservice.go:72	0xe43e7f		48894c2418		MOVQ CX, 0x18(SP)								
  vehservice.go:72	0xe43e84		e8572663ff		CALL runtime.morestack_noctxt.abi0(SB)						
  vehservice.go:72	0xe43e89		488b442408		MOVQ 0x8(SP), AX								
  vehservice.go:72	0xe43e8e		488b5c2410		MOVQ 0x10(SP), BX								
  vehservice.go:72	0xe43e93		488b4c2418		MOVQ 0x18(SP), CX								
  vehservice.go:72	0xe43e98		e9e3feffff		JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift(SB)			
  :-1			0xe43e9d		cc			INT $__subsystem__(SB)								
  :-1			0xe43e9e		cc			INT $__subsystem__(SB)								
  :-1			0xe43e9f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:74	0xe43ea0		493b6610		CMPQ SP, 0x10(R14)								
  vehservice.go:74	0xe43ea4		7630			JBE 0xe43ed6									
  vehservice.go:74	0xe43ea6		55			PUSHQ BP									
  vehservice.go:74	0xe43ea7		4889e5			MOVQ SP, BP									
  vehservice.go:74	0xe43eaa		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  vehservice.go:74	0xe43eae		4d8b6620		MOVQ 0x20(R14), R12								
  vehservice.go:74	0xe43eb2		4d85e4			TESTQ R12, R12									
  vehservice.go:74	0xe43eb5		7526			JNE 0xe43edd									
  vehservice.go:74	0xe43eb7		488b4208		MOVQ 0x8(DX), AX								
  rwmutex.go:118	0xe43ebb		bbffffffff		MOVL $-0x1, BX									
  rwmutex.go:118	0xe43ec0		f00fc15810		LOCK XADDL BX, 0x10(AX)								
  type.go:88		0xe43ec5		ffcb			DECL BX										
  rwmutex.go:118	0xe43ec7		85db			TESTL BX, BX									
  rwmutex.go:118	0xe43ec9		7d05			JGE 0xe43ed0									
  rwmutex.go:120	0xe43ecb		e8704f64ff		CALL sync.(*RWMutex).rUnlockSlow(SB)						
  vehservice.go:74	0xe43ed0		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  vehservice.go:74	0xe43ed4		5d			POPQ BP										
  vehservice.go:74	0xe43ed5		c3			RET										
  vehservice.go:74	0xe43ed6		e8852563ff		CALL runtime.morestack.abi0(SB)							
  vehservice.go:74	0xe43edb		ebc3			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift.deferwrap1(SB)	
  vehservice.go:74	0xe43edd		4c8d6c2420		LEAQ 0x20(SP), R13								
  vehservice.go:74	0xe43ee2		4d392c24		CMPQ 0(R12), R13								
  vehservice.go:74	0xe43ee6		75cf			JNE 0xe43eb7									
  vehservice.go:74	0xe43ee8		49892424		MOVQ SP, 0(R12)									
  vehservice.go:74	0xe43eec		ebc9			JMP 0xe43eb7									
  :-1			0xe43eee		cc			INT $__subsystem__(SB)								
  :-1			0xe43eef		cc			INT $__subsystem__(SB)								
  :-1			0xe43ef0		cc			INT $__subsystem__(SB)								
  :-1			0xe43ef1		cc			INT $__subsystem__(SB)								
  :-1			0xe43ef2		cc			INT $__subsystem__(SB)								
  :-1			0xe43ef3		cc			INT $__subsystem__(SB)								
  :-1			0xe43ef4		cc			INT $__subsystem__(SB)								
  :-1			0xe43ef5		cc			INT $__subsystem__(SB)								
  :-1			0xe43ef6		cc			INT $__subsystem__(SB)								
  :-1			0xe43ef7		cc			INT $__subsystem__(SB)								
  :-1			0xe43ef8		cc			INT $__subsystem__(SB)								
  :-1			0xe43ef9		cc			INT $__subsystem__(SB)								
  :-1			0xe43efa		cc			INT $__subsystem__(SB)								
  :-1			0xe43efb		cc			INT $__subsystem__(SB)								
  :-1			0xe43efc		cc			INT $__subsystem__(SB)								
  :-1			0xe43efd		cc			INT $__subsystem__(SB)								
  :-1			0xe43efe		cc			INT $__subsystem__(SB)								
  :-1			0xe43eff		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForklifts(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:80	0xe43f00		4c8da42478ffffff	LEAQ 0xffffff78(SP), R12								
  vehservice.go:80	0xe43f08		4d3b6610		CMPQ R12, 0x10(R14)									
  vehservice.go:80	0xe43f0c		0f8600020000		JBE 0xe44112										
  vehservice.go:80	0xe43f12		55			PUSHQ BP										
  vehservice.go:80	0xe43f13		4889e5			MOVQ SP, BP										
  vehservice.go:80	0xe43f16		4881ec00010000		SUBQ $.file+179(SB), SP									
  vehservice.go:80	0xe43f1d		66440fd6bc24f8000000	MOVQ X15, 0xf8(SP)									
  rwmutex.go:70		0xe43f27		4889842410010000	MOVQ AX, 0x110(SP)									
  vehservice.go:80	0xe43f2f		c644244700		MOVB $0x0, 0x47(SP)									
  vehservice.go:80	0xe43f34		48c744245800000000	MOVQ $0x0, 0x58(SP)									
  vehservice.go:80	0xe43f3d		440f117c2460		MOVUPS X15, 0x60(SP)									
  vehservice.go:81	0xe43f43		ba01000000		MOVL $__minor_os_version__(SB), DX							
  vehservice.go:81	0xe43f48		f00fc15028		LOCK XADDL DX, 0x28(AX)									
  type.go:88		0xe43f4d		ffc2			INCL DX											
  rwmutex.go:70		0xe43f4f		85d2			TESTL DX, DX										
  rwmutex.go:70		0xe43f51		7d1a			JGE 0xe43f6d										
  rwmutex.go:72		0xe43f53		488d5024		LEAQ 0x24(AX), DX									
  rwmutex.go:72		0xe43f57		31db			XORL BX, BX										
  rwmutex.go:72		0xe43f59		31c9			XORL CX, CX										
  rwmutex.go:72		0xe43f5b		4889d0			MOVQ DX, AX										
  rwmutex.go:72		0xe43f5e		6690			NOPW											
  rwmutex.go:72		0xe43f60		e8fbd562ff		CALL sync.runtime_SemacquireRWMutexR(SB)						
  vehservice.go:82	0xe43f65		488b842410010000	MOVQ 0x110(SP), AX									
  vehservice.go:82	0xe43f6d		488d15cc010000		LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForklifts.deferwrap1(SB), DX	
  vehservice.go:82	0xe43f74		4889942488000000	MOVQ DX, 0x88(SP)									
  vehservice.go:82	0xe43f7c		488d5018		LEAQ 0x18(AX), DX									
  vehservice.go:82	0xe43f80		4889942490000000	MOVQ DX, 0x90(SP)									
  vehservice.go:82	0xe43f88		488d942488000000	LEAQ 0x88(SP), DX									
  vehservice.go:82	0xe43f90		48899424f8000000	MOVQ DX, 0xf8(SP)									
  vehservice.go:82	0xe43f98		c644244701		MOVB $__minor_os_version__(SB), 0x47(SP)						
  vehservice.go:84	0xe43f9d		488b5030		MOVQ 0x30(AX), DX									
  vehservice.go:84	0xe43fa1		4885d2			TESTQ DX, DX										
  vehservice.go:84	0xe43fa4		7405			JE 0xe43fab										
  vehservice.go:84	0xe43fa6		488b12			MOVQ 0(DX), DX										
  vehservice.go:84	0xe43fa9		eb02			JMP 0xe43fad										
  vehservice.go:84	0xe43fab		31d2			XORL DX, DX										
  vehservice.go:84	0xe43fad		4889542450		MOVQ DX, 0x50(SP)									
  vehservice.go:84	0xe43fb2		488d05e7ff1d00		LEAQ runtime.types+257952(SB), AX							
  vehservice.go:84	0xe43fb9		31db			XORL BX, BX										
  vehservice.go:84	0xe43fbb		4889d1			MOVQ DX, CX										
  vehservice.go:84	0xe43fbe		6690			NOPW											
  vehservice.go:84	0xe43fc0		e89bdb62ff		CALL runtime.makeslice(SB)								
  vehservice.go:84	0xe43fc5		4889842480000000	MOVQ AX, 0x80(SP)									
  vehservice.go:85	0xe43fcd		488b942410010000	MOVQ 0x110(SP), DX									
  vehservice.go:85	0xe43fd5		488b5a30		MOVQ 0x30(DX), BX									
  vehservice.go:85	0xe43fd9		488dbc2498000000	LEAQ 0x98(SP), DI									
  vehservice.go:85	0xe43fe1		488d7fe0		LEAQ -0x20(DI), DI									
  vehservice.go:85	0xe43fe5		48896c24f0		MOVQ BP, -0x10(SP)									
  vehservice.go:85	0xe43fea		488d6c24f0		LEAQ -0x10(SP), BP									
  vehservice.go:85	0xe43fef		e8f74a63ff		CALL 0x478aeb										
  vehservice.go:85	0xe43ff4		488b6d00		MOVQ 0(BP), BP										
  vehservice.go:85	0xe43ff8		488d8c2498000000	LEAQ 0x98(SP), CX									
  vehservice.go:85	0xe44000		488d0539962300		LEAQ runtime.types+624192(SB), AX							
  vehservice.go:85	0xe44007		e8147d62ff		CALL runtime.mapiterinit(SB)								
  vehservice.go:88	0xe4400c		488b442450		MOVQ 0x50(SP), AX									
  vehservice.go:88	0xe44011		488b8c2480000000	MOVQ 0x80(SP), CX									
  vehservice.go:88	0xe44019		31d2			XORL DX, DX										
  vehservice.go:85	0xe4401b		eb2b			JMP 0xe44048										
  vehservice.go:86	0xe4401d		48894c2470		MOVQ CX, 0x70(SP)									
  vehservice.go:86	0xe44022		48895c2448		MOVQ BX, 0x48(SP)									
  vehservice.go:86	0xe44027		488954d9f8		MOVQ DX, -0x8(CX)(BX*8)									
  vehservice.go:85	0xe4402c		488d842498000000	LEAQ 0x98(SP), AX									
  vehservice.go:85	0xe44034		e8077f62ff		CALL runtime.mapiternext(SB)								
  vehservice.go:88	0xe44039		488b442450		MOVQ 0x50(SP), AX									
  vehservice.go:88	0xe4403e		488b4c2470		MOVQ 0x70(SP), CX									
  vehservice.go:88	0xe44043		488b542448		MOVQ 0x48(SP), DX									
  vehservice.go:85	0xe44048		4883bc249800000000	CMPQ 0x98(SP), $0x0									
  vehservice.go:85	0xe44051		7469			JE 0xe440bc										
  vehservice.go:85	0xe44053		4c8b8424a0000000	MOVQ 0xa0(SP), R8									
  vehservice.go:86	0xe4405b		488d5a01		LEAQ 0x1(DX), BX									
  vehservice.go:85	0xe4405f		498b10			MOVQ 0(R8), DX										
  vehservice.go:86	0xe44062		4839d8			CMPQ AX, BX										
  vehservice.go:86	0xe44065		732d			JAE 0xe44094										
  vehservice.go:85	0xe44067		4889542478		MOVQ DX, 0x78(SP)									
  vehservice.go:86	0xe4406c		bf01000000		MOVL $__minor_os_version__(SB), DI							
  vehservice.go:86	0xe44071		488d3528ff1d00		LEAQ runtime.types+257952(SB), SI							
  vehservice.go:88	0xe44078		4889c2			MOVQ AX, DX										
  vehservice.go:86	0xe4407b		4889c8			MOVQ CX, AX										
  vehservice.go:86	0xe4407e		4889d1			MOVQ DX, CX										
  vehservice.go:86	0xe44081		e8badb62ff		CALL runtime.growslice(SB)								
  vehservice.go:86	0xe44086		488b542478		MOVQ 0x78(SP), DX									
  vehservice.go:86	0xe4408b		4889ce			MOVQ CX, SI										
  vehservice.go:86	0xe4408e		4889c1			MOVQ AX, CX										
  vehservice.go:86	0xe44091		4889f0			MOVQ SI, AX										
  vehservice.go:86	0xe44094		4889442450		MOVQ AX, 0x50(SP)									
  vehservice.go:86	0xe44099		833db09a710200		CMPL runtime.writeBarrier(SB), $0x0							
  vehservice.go:86	0xe440a0		0f8477ffffff		JE 0xe4401d										
  vehservice.go:86	0xe440a6		e8954363ff		CALL runtime.gcWriteBarrier2(SB)							
  vehservice.go:86	0xe440ab		498913			MOVQ DX, 0(R11)										
  vehservice.go:86	0xe440ae		488b74d9f8		MOVQ -0x8(CX)(BX*8), SI									
  vehservice.go:86	0xe440b3		49897308		MOVQ SI, 0x8(R11)									
  vehservice.go:86	0xe440b7		e961ffffff		JMP 0xe4401d										
  vehservice.go:88	0xe440bc		48894c2458		MOVQ CX, 0x58(SP)									
  vehservice.go:88	0xe440c1		4889542460		MOVQ DX, 0x60(SP)									
  vehservice.go:88	0xe440c6		4889442468		MOVQ AX, 0x68(SP)									
  vehservice.go:88	0xe440cb		c644244700		MOVB $0x0, 0x47(SP)									
  vehservice.go:88	0xe440d0		488b9424f8000000	MOVQ 0xf8(SP), DX									
  vehservice.go:88	0xe440d8		488b02			MOVQ 0(DX), AX										
  vehservice.go:88	0xe440db		ffd0			CALL AX											
  vehservice.go:88	0xe440dd		488b442458		MOVQ 0x58(SP), AX									
  vehservice.go:88	0xe440e2		488b5c2460		MOVQ 0x60(SP), BX									
  vehservice.go:88	0xe440e7		488b4c2468		MOVQ 0x68(SP), CX									
  vehservice.go:88	0xe440ec		4881c400010000		ADDQ $.file+179(SB), SP									
  vehservice.go:88	0xe440f3		5d			POPQ BP											
  vehservice.go:88	0xe440f4		c3			RET											
  vehservice.go:88	0xe440f5		e8865a5fff		CALL runtime.deferreturn(SB)								
  vehservice.go:88	0xe440fa		488b442458		MOVQ 0x58(SP), AX									
  vehservice.go:88	0xe440ff		488b5c2460		MOVQ 0x60(SP), BX									
  vehservice.go:88	0xe44104		488b4c2468		MOVQ 0x68(SP), CX									
  vehservice.go:88	0xe44109		4881c400010000		ADDQ $.file+179(SB), SP									
  vehservice.go:88	0xe44110		5d			POPQ BP											
  vehservice.go:88	0xe44111		c3			RET											
  vehservice.go:80	0xe44112		4889442408		MOVQ AX, 0x8(SP)									
  vehservice.go:80	0xe44117		e8c42363ff		CALL runtime.morestack_noctxt.abi0(SB)							
  vehservice.go:80	0xe4411c		488b442408		MOVQ 0x8(SP), AX									
  vehservice.go:80	0xe44121		e9dafdffff		JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForklifts(SB)			
  :-1			0xe44126		cc			INT $__subsystem__(SB)									
  :-1			0xe44127		cc			INT $__subsystem__(SB)									
  :-1			0xe44128		cc			INT $__subsystem__(SB)									
  :-1			0xe44129		cc			INT $__subsystem__(SB)									
  :-1			0xe4412a		cc			INT $__subsystem__(SB)									
  :-1			0xe4412b		cc			INT $__subsystem__(SB)									
  :-1			0xe4412c		cc			INT $__subsystem__(SB)									
  :-1			0xe4412d		cc			INT $__subsystem__(SB)									
  :-1			0xe4412e		cc			INT $__subsystem__(SB)									
  :-1			0xe4412f		cc			INT $__subsystem__(SB)									
  :-1			0xe44130		cc			INT $__subsystem__(SB)									
  :-1			0xe44131		cc			INT $__subsystem__(SB)									
  :-1			0xe44132		cc			INT $__subsystem__(SB)									
  :-1			0xe44133		cc			INT $__subsystem__(SB)									
  :-1			0xe44134		cc			INT $__subsystem__(SB)									
  :-1			0xe44135		cc			INT $__subsystem__(SB)									
  :-1			0xe44136		cc			INT $__subsystem__(SB)									
  :-1			0xe44137		cc			INT $__subsystem__(SB)									
  :-1			0xe44138		cc			INT $__subsystem__(SB)									
  :-1			0xe44139		cc			INT $__subsystem__(SB)									
  :-1			0xe4413a		cc			INT $__subsystem__(SB)									
  :-1			0xe4413b		cc			INT $__subsystem__(SB)									
  :-1			0xe4413c		cc			INT $__subsystem__(SB)									
  :-1			0xe4413d		cc			INT $__subsystem__(SB)									
  :-1			0xe4413e		cc			INT $__subsystem__(SB)									
  :-1			0xe4413f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForklifts.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:82	0xe44140		493b6610		CMPQ SP, 0x10(R14)								
  vehservice.go:82	0xe44144		7630			JBE 0xe44176									
  vehservice.go:82	0xe44146		55			PUSHQ BP									
  vehservice.go:82	0xe44147		4889e5			MOVQ SP, BP									
  vehservice.go:82	0xe4414a		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  vehservice.go:82	0xe4414e		4d8b6620		MOVQ 0x20(R14), R12								
  vehservice.go:82	0xe44152		4d85e4			TESTQ R12, R12									
  vehservice.go:82	0xe44155		7526			JNE 0xe4417d									
  vehservice.go:82	0xe44157		488b4208		MOVQ 0x8(DX), AX								
  rwmutex.go:118	0xe4415b		bbffffffff		MOVL $-0x1, BX									
  rwmutex.go:118	0xe44160		f00fc15810		LOCK XADDL BX, 0x10(AX)								
  type.go:88		0xe44165		ffcb			DECL BX										
  rwmutex.go:118	0xe44167		85db			TESTL BX, BX									
  rwmutex.go:118	0xe44169		7d05			JGE 0xe44170									
  rwmutex.go:120	0xe4416b		e8d04c64ff		CALL sync.(*RWMutex).rUnlockSlow(SB)						
  vehservice.go:82	0xe44170		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  vehservice.go:82	0xe44174		5d			POPQ BP										
  vehservice.go:82	0xe44175		c3			RET										
  vehservice.go:82	0xe44176		e8e52263ff		CALL runtime.morestack.abi0(SB)							
  vehservice.go:82	0xe4417b		ebc3			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForklifts.deferwrap1(SB)	
  vehservice.go:82	0xe4417d		4c8d6c2420		LEAQ 0x20(SP), R13								
  vehservice.go:82	0xe44182		4d392c24		CMPQ 0(R12), R13								
  vehservice.go:82	0xe44186		75cf			JNE 0xe44157									
  vehservice.go:82	0xe44188		49892424		MOVQ SP, 0(R12)									
  vehservice.go:82	0xe4418c		ebc9			JMP 0xe44157									
  :-1			0xe4418e		cc			INT $__subsystem__(SB)								
  :-1			0xe4418f		cc			INT $__subsystem__(SB)								
  :-1			0xe44190		cc			INT $__subsystem__(SB)								
  :-1			0xe44191		cc			INT $__subsystem__(SB)								
  :-1			0xe44192		cc			INT $__subsystem__(SB)								
  :-1			0xe44193		cc			INT $__subsystem__(SB)								
  :-1			0xe44194		cc			INT $__subsystem__(SB)								
  :-1			0xe44195		cc			INT $__subsystem__(SB)								
  :-1			0xe44196		cc			INT $__subsystem__(SB)								
  :-1			0xe44197		cc			INT $__subsystem__(SB)								
  :-1			0xe44198		cc			INT $__subsystem__(SB)								
  :-1			0xe44199		cc			INT $__subsystem__(SB)								
  :-1			0xe4419a		cc			INT $__subsystem__(SB)								
  :-1			0xe4419b		cc			INT $__subsystem__(SB)								
  :-1			0xe4419c		cc			INT $__subsystem__(SB)								
  :-1			0xe4419d		cc			INT $__subsystem__(SB)								
  :-1			0xe4419e		cc			INT $__subsystem__(SB)								
  :-1			0xe4419f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:96	0xe441a0		4c8da424d0feffff		LEAQ 0xfffffed0(SP), R12								
  vehservice.go:96	0xe441a8		4d3b6610			CMPQ R12, 0x10(R14)									
  vehservice.go:96	0xe441ac		0f86c9030000			JBE 0xe4457b										
  vehservice.go:96	0xe441b2		55				PUSHQ BP										
  vehservice.go:96	0xe441b3		4889e5				MOVQ SP, BP										
  vehservice.go:96	0xe441b6		4881eca8010000			SUBQ $.file+347(SB), SP									
  vehservice.go:101	0xe441bd		48898424b8010000		MOVQ AX, 0x1b8(SP)									
  vehservice.go:100	0xe441c5		e8f675b5ff			CALL CAS-Backend/biz/dao.GetAllVehicles(SB)						
  vehservice.go:101	0xe441ca		4885ff				TESTQ DI, DI										
  vehservice.go:101	0xe441cd		7546				JNE 0xe44215										
  vehservice.go:100	0xe441cf		4889442460			MOVQ AX, 0x60(SP)									
  vehservice.go:100	0xe441d4		48895c2440			MOVQ BX, 0x40(SP)									
  vehservice.go:106	0xe441d9		488d05e0262900			LEAQ runtime.types+989376(SB), AX							
  vehservice.go:106	0xe441e0		e8bbd55cff			CALL runtime.newobject(SB)								
  vehservice.go:106	0xe441e5		48898424a0010000		MOVQ AX, 0x1a0(SP)									
  vehservice.go:107	0xe441ed		488b5c2440			MOVQ 0x40(SP), BX									
  vehservice.go:107	0xe441f2		488d05a70a2000			LEAQ runtime.types+392352(SB), AX							
  vehservice.go:107	0xe441f9		e842575cff			CALL runtime.makechan(SB)								
  vehservice.go:107	0xe441fe		48898424e0000000		MOVQ AX, 0xe0(SP)									
  vehservice.go:109	0xe44206		488b4c2460			MOVQ 0x60(SP), CX									
  vehservice.go:109	0xe4420b		488b542440			MOVQ 0x40(SP), DX									
  vehservice.go:109	0xe44210		e9ab000000			JMP 0xe442c0										
  vehservice.go:102	0xe44215		440f11bc2418010000		MOVUPS X15, 0x118(SP)									
  vehservice.go:102	0xe4421e		6690				NOPW											
  vehservice.go:102	0xe44220		7404				JE 0xe44226										
  vehservice.go:102	0xe44222		488b7f08			MOVQ 0x8(DI), DI									
  vehservice.go:102	0xe44226		4889bc2418010000		MOVQ DI, 0x118(SP)									
  vehservice.go:102	0xe4422e		4889b42420010000		MOVQ SI, 0x120(SP)									
  vehservice.go:102	0xe44236		488d0581193500			LEAQ go:string.*+186038(SB), AX								
  vehservice.go:102	0xe4423d		bb28000000			MOVL $__major_os_version__+34(SB), BX							
  vehservice.go:102	0xe44242		488d8c2418010000		LEAQ 0x118(SP), CX									
  vehservice.go:102	0xe4424a		bf01000000			MOVL $__minor_os_version__(SB), DI							
  vehservice.go:102	0xe4424f		4889fe				MOVQ DI, SI										
  vehservice.go:102	0xe44252		e869816dff			CALL fmt.Errorf(SB)									
  vehservice.go:102	0xe44257		31c9				XORL CX, CX										
  vehservice.go:102	0xe44259		4889c7				MOVQ AX, DI										
  vehservice.go:102	0xe4425c		4889de				MOVQ BX, SI										
  vehservice.go:102	0xe4425f		31c0				XORL AX, AX										
  vehservice.go:102	0xe44261		4889cb				MOVQ CX, BX										
  vehservice.go:102	0xe44264		4881c4a8010000			ADDQ $.file+347(SB), SP									
  vehservice.go:102	0xe4426b		5d				POPQ BP											
  vehservice.go:102	0xe4426c		c3				RET											
  vehservice.go:111	0xe4426d		488b8c2428010000		MOVQ 0x128(SP), CX									
  vehservice.go:111	0xe44275		48894810			MOVQ CX, 0x10(AX)									
  vehservice.go:111	0xe44279		488d7818			LEAQ 0x18(AX), DI									
  vehservice.go:111	0xe4427d		488db42430010000		LEAQ 0x130(SP), SI									
  vehservice.go:111	0xe44285		48896c24f0			MOVQ BP, -0x10(SP)									
  vehservice.go:111	0xe4428a		488d6c24f0			LEAQ -0x10(SP), BP									
  vehservice.go:111	0xe4428f		e8aa4b63ff			CALL 0x478e3e										
  vehservice.go:111	0xe44294		488b6d00			MOVQ 0(BP), BP										
  vehservice.go:111	0xe44298		e8a33260ff			CALL runtime.newproc(SB)								
  vehservice.go:109	0xe4429d		488b8c2408010000		MOVQ 0x108(SP), CX									
  vehservice.go:109	0xe442a5		4883c178			ADDQ $.file+43(SB), CX									
  vehservice.go:109	0xe442a9		488b542458			MOVQ 0x58(SP), DX									
  vehservice.go:109	0xe442ae		48ffca				DECQ DX											
  vehservice.go:119	0xe442b1		488b8424e0000000		MOVQ 0xe0(SP), AX									
  vehservice.go:119	0xe442b9		0f1f8000000000			NOPL 0(AX)										
  vehservice.go:109	0xe442c0		4885d2				TESTQ DX, DX										
  vehservice.go:109	0xe442c3		0f8e6a010000			JLE 0xe44433										
  vehservice.go:109	0xe442c9		4889542458			MOVQ DX, 0x58(SP)									
  vehservice.go:109	0xe442ce		48898c2408010000		MOVQ CX, 0x108(SP)									
  vehservice.go:109	0xe442d6		488b11				MOVQ 0(CX), DX										
  vehservice.go:109	0xe442d9		4889542468			MOVQ DX, 0x68(SP)									
  vehservice.go:109	0xe442de		488d7108			LEAQ 0x8(CX), SI									
  vehservice.go:109	0xe442e2		488d7c2470			LEAQ 0x70(SP), DI									
  vehservice.go:109	0xe442e7		48896c24f0			MOVQ BP, -0x10(SP)									
  vehservice.go:109	0xe442ec		488d6c24f0			LEAQ -0x10(SP), BP									
  vehservice.go:109	0xe442f1		e8484b63ff			CALL 0x478e3e										
  vehservice.go:109	0xe442f6		488b6d00			MOVQ 0(BP), BP										
  vehservice.go:110	0xe442fa		488b8424a0010000		MOVQ 0x1a0(SP), AX									
  vehservice.go:110	0xe44302		bb01000000			MOVL $__minor_os_version__(SB), BX							
  vehservice.go:110	0xe44307		e8944e64ff			CALL sync.(*WaitGroup).Add(SB)								
  vehservice.go:111	0xe4430c		488d05ed042a00			LEAQ runtime.types+1046528(SB), AX							
  vehservice.go:111	0xe44313		e888d45cff			CALL runtime.newobject(SB)								
  vehservice.go:111	0xe44318		488d0d41030000			LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func1(SB), CX	
  vehservice.go:111	0xe4431f		488908				MOVQ CX, 0(AX)										
  vehservice.go:111	0xe44322		833d2798710200			CMPL runtime.writeBarrier(SB), $0x0							
  vehservice.go:111	0xe44329		751a				JNE 0xe44345										
  vehservice.go:111	0xe4432b		488b9424a0010000		MOVQ 0x1a0(SP), DX									
  vehservice.go:111	0xe44333		488b9c24b8010000		MOVQ 0x1b8(SP), BX									
  vehservice.go:111	0xe4433b		4c8b8424e0000000		MOVQ 0xe0(SP), R8									
  vehservice.go:111	0xe44343		eb28				JMP 0xe4436d										
  vehservice.go:111	0xe44345		e8164163ff			CALL runtime.gcWriteBarrier3(SB)							
  vehservice.go:111	0xe4434a		488b9424a0010000		MOVQ 0x1a0(SP), DX									
  vehservice.go:111	0xe44352		498913				MOVQ DX, 0(R11)										
  vehservice.go:111	0xe44355		488b9c24b8010000		MOVQ 0x1b8(SP), BX									
  vehservice.go:111	0xe4435d		49895b08			MOVQ BX, 0x8(R11)									
  vehservice.go:111	0xe44361		4c8b8424e0000000		MOVQ 0xe0(SP), R8									
  vehservice.go:111	0xe44369		4d894310			MOVQ R8, 0x10(R11)									
  vehservice.go:111	0xe4436d		4889842400010000		MOVQ AX, 0x100(SP)									
  vehservice.go:111	0xe44375		48895008			MOVQ DX, 0x8(AX)									
  vehservice.go:111	0xe44379		48895810			MOVQ BX, 0x10(AX)									
  vehservice.go:111	0xe4437d		4c894018			MOVQ R8, 0x18(AX)									
  vehservice.go:111	0xe44381		488b4c2468			MOVQ 0x68(SP), CX									
  vehservice.go:111	0xe44386		48898c2428010000		MOVQ CX, 0x128(SP)									
  vehservice.go:111	0xe4438e		488dbc2430010000		LEAQ 0x130(SP), DI									
  vehservice.go:111	0xe44396		488d742470			LEAQ 0x70(SP), SI									
  vehservice.go:111	0xe4439b		0f1f440000			NOPL 0(AX)(AX*1)									
  vehservice.go:111	0xe443a0		48896c24f0			MOVQ BP, -0x10(SP)									
  vehservice.go:111	0xe443a5		488d6c24f0			LEAQ -0x10(SP), BP									
  vehservice.go:111	0xe443aa		e88f4a63ff			CALL 0x478e3e										
  vehservice.go:111	0xe443af		488b6d00			MOVQ 0(BP), BP										
  vehservice.go:111	0xe443b3		488d05a69b2800			LEAQ runtime.types+954208(SB), AX							
  vehservice.go:111	0xe443ba		e8e1d35cff			CALL runtime.newobject(SB)								
  vehservice.go:111	0xe443bf		488d0d1a020000			LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.gowrap1(SB), CX	
  vehservice.go:111	0xe443c6		488908				MOVQ CX, 0(AX)										
  vehservice.go:111	0xe443c9		833d8097710200			CMPL runtime.writeBarrier(SB), $0x0							
  vehservice.go:111	0xe443d0		750e				JNE 0xe443e0										
  vehservice.go:111	0xe443d2		488b942400010000		MOVQ 0x100(SP), DX									
  vehservice.go:111	0xe443da		eb14				JMP 0xe443f0										
  vehservice.go:111	0xe443dc		0f1f4000			NOPL 0(AX)										
  vehservice.go:111	0xe443e0		e83b4063ff			CALL runtime.gcWriteBarrier1(SB)							
  vehservice.go:111	0xe443e5		488b942400010000		MOVQ 0x100(SP), DX									
  vehservice.go:111	0xe443ed		498913				MOVQ DX, 0(R11)										
  vehservice.go:111	0xe443f0		48895008			MOVQ DX, 0x8(AX)									
  vehservice.go:111	0xe443f4		833d5597710200			CMPL runtime.writeBarrier(SB), $0x0							
  vehservice.go:111	0xe443fb		0f1f440000			NOPL 0(AX)(AX*1)									
  vehservice.go:111	0xe44400		0f8467feffff			JE 0xe4426d										
  vehservice.go:111	0xe44406		48898424f8000000		MOVQ AX, 0xf8(SP)									
  vehservice.go:111	0xe4440e		488d5810			LEAQ 0x10(AX), BX									
  vehservice.go:111	0xe44412		488d8c2428010000		LEAQ 0x128(SP), CX									
  vehservice.go:111	0xe4441a		488d055fd22d00			LEAQ runtime.types+1296000(SB), AX							
  vehservice.go:111	0xe44421		e8fa0a5dff			CALL runtime.wbMove(SB)									
  vehservice.go:111	0xe44426		488b8424f8000000		MOVQ 0xf8(SP), AX									
  vehservice.go:111	0xe4442e		e93afeffff			JMP 0xe4426d										
  vehservice.go:119	0xe44433		488d05669c2800			LEAQ runtime.types+954528(SB), AX							
  vehservice.go:119	0xe4443a		e861d35cff			CALL runtime.newobject(SB)								
  vehservice.go:119	0xe4443f		488d0d5a010000			LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func2(SB), CX	
  vehservice.go:119	0xe44446		488908				MOVQ CX, 0(AX)										
  vehservice.go:119	0xe44449		833d0097710200			CMPL runtime.writeBarrier(SB), $0x0							
  vehservice.go:119	0xe44450		7512				JNE 0xe44464										
  vehservice.go:119	0xe44452		488b8c24a0010000		MOVQ 0x1a0(SP), CX									
  vehservice.go:119	0xe4445a		488b9424e0000000		MOVQ 0xe0(SP), DX									
  vehservice.go:119	0xe44462		eb1c				JMP 0xe44480										
  vehservice.go:119	0xe44464		e8d73f63ff			CALL runtime.gcWriteBarrier2(SB)							
  vehservice.go:119	0xe44469		488b8c24a0010000		MOVQ 0x1a0(SP), CX									
  vehservice.go:119	0xe44471		49890b				MOVQ CX, 0(R11)										
  vehservice.go:119	0xe44474		488b9424e0000000		MOVQ 0xe0(SP), DX									
  vehservice.go:119	0xe4447c		49895308			MOVQ DX, 0x8(R11)									
  vehservice.go:119	0xe44480		48894808			MOVQ CX, 0x8(AX)									
  vehservice.go:119	0xe44484		48895010			MOVQ DX, 0x10(AX)									
  vehservice.go:119	0xe44488		e8b33060ff			CALL runtime.newproc(SB)								
  vehservice.go:125	0xe4448d		48c784241001000000000000	MOVQ $0x0, 0x110(SP)									
  vehservice.go:125	0xe44499		31c0				XORL AX, AX										
  vehservice.go:125	0xe4449b		31c9				XORL CX, CX										
  vehservice.go:125	0xe4449d		31d2				XORL DX, DX										
  vehservice.go:125	0xe4449f		90				NOPL											
  vehservice.go:125	0xe444a0		eb11				JMP 0xe444b3										
  vehservice.go:126	0xe444a2		488954d8f8			MOVQ DX, -0x8(AX)(BX*8)									
  vehservice.go:129	0xe444a7		4889da				MOVQ BX, DX										
  vehservice.go:129	0xe444aa		4889c6				MOVQ AX, SI										
  vehservice.go:129	0xe444ad		4889c8				MOVQ CX, AX										
  vehservice.go:129	0xe444b0		4889f1				MOVQ SI, CX										
  vehservice.go:129	0xe444b3		48898c24f0000000		MOVQ CX, 0xf0(SP)									
  vehservice.go:129	0xe444bb		4889542448			MOVQ DX, 0x48(SP)									
  vehservice.go:129	0xe444c0		4889442450			MOVQ AX, 0x50(SP)									
  vehservice.go:125	0xe444c5		488d9c2410010000		LEAQ 0x110(SP), BX									
  vehservice.go:125	0xe444cd		488b8424e0000000		MOVQ 0xe0(SP), AX									
  vehservice.go:125	0xe444d5		e8a6645cff			CALL runtime.chanrecv2(SB)								
  vehservice.go:125	0xe444da		84c0				TESTL AL, AL										
  vehservice.go:125	0xe444dc		747e				JE 0xe4455c										
  vehservice.go:126	0xe444de		488b5c2448			MOVQ 0x48(SP), BX									
  vehservice.go:126	0xe444e3		48ffc3				INCQ BX											
  vehservice.go:125	0xe444e6		488b942410010000		MOVQ 0x110(SP), DX									
  vehservice.go:125	0xe444ee		48c784241001000000000000	MOVQ $0x0, 0x110(SP)									
  vehservice.go:126	0xe444fa		488b4c2450			MOVQ 0x50(SP), CX									
  vehservice.go:126	0xe444ff		90				NOPL											
  vehservice.go:126	0xe44500		4839d9				CMPQ CX, BX										
  vehservice.go:126	0xe44503		720a				JB 0xe4450f										
  vehservice.go:126	0xe44505		488b8424f0000000		MOVQ 0xf0(SP), AX									
  vehservice.go:126	0xe4450d		eb29				JMP 0xe44538										
  vehservice.go:125	0xe4450f		48899424e8000000		MOVQ DX, 0xe8(SP)									
  vehservice.go:126	0xe44517		488b8424f0000000		MOVQ 0xf0(SP), AX									
  vehservice.go:126	0xe4451f		bf01000000			MOVL $__minor_os_version__(SB), DI							
  vehservice.go:126	0xe44524		488d35b5fa1d00			LEAQ runtime.types+258016(SB), SI							
  vehservice.go:126	0xe4452b		e810d762ff			CALL runtime.growslice(SB)								
  vehservice.go:126	0xe44530		488b9424e8000000		MOVQ 0xe8(SP), DX									
  vehservice.go:126	0xe44538		833d1196710200			CMPL runtime.writeBarrier(SB), $0x0							
  vehservice.go:126	0xe4453f		90				NOPL											
  vehservice.go:126	0xe44540		0f845cffffff			JE 0xe444a2										
  vehservice.go:126	0xe44546		e8f53e63ff			CALL runtime.gcWriteBarrier2(SB)							
  vehservice.go:126	0xe4454b		498913				MOVQ DX, 0(R11)										
  vehservice.go:126	0xe4454e		488b74d8f8			MOVQ -0x8(AX)(BX*8), SI									
  vehservice.go:126	0xe44553		49897308			MOVQ SI, 0x8(R11)									
  vehservice.go:126	0xe44557		e946ffffff			JMP 0xe444a2										
  vehservice.go:129	0xe4455c		488b8424f0000000		MOVQ 0xf0(SP), AX									
  vehservice.go:129	0xe44564		488b5c2448			MOVQ 0x48(SP), BX									
  vehservice.go:129	0xe44569		488b4c2450			MOVQ 0x50(SP), CX									
  vehservice.go:129	0xe4456e		31ff				XORL DI, DI										
  vehservice.go:129	0xe44570		31f6				XORL SI, SI										
  vehservice.go:129	0xe44572		4881c4a8010000			ADDQ $.file+347(SB), SP									
  vehservice.go:129	0xe44579		5d				POPQ BP											
  vehservice.go:129	0xe4457a		c3				RET											
  vehservice.go:96	0xe4457b		4889442408			MOVQ AX, 0x8(SP)									
  vehservice.go:96	0xe44580		e85b1f63ff			CALL runtime.morestack_noctxt.abi0(SB)							
  vehservice.go:96	0xe44585		488b442408			MOVQ 0x8(SP), AX									
  vehservice.go:96	0xe4458a		e911fcffff			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus(SB)			
  :-1			0xe4458f		cc				INT $__subsystem__(SB)									
  :-1			0xe44590		cc				INT $__subsystem__(SB)									
  :-1			0xe44591		cc				INT $__subsystem__(SB)									
  :-1			0xe44592		cc				INT $__subsystem__(SB)									
  :-1			0xe44593		cc				INT $__subsystem__(SB)									
  :-1			0xe44594		cc				INT $__subsystem__(SB)									
  :-1			0xe44595		cc				INT $__subsystem__(SB)									
  :-1			0xe44596		cc				INT $__subsystem__(SB)									
  :-1			0xe44597		cc				INT $__subsystem__(SB)									
  :-1			0xe44598		cc				INT $__subsystem__(SB)									
  :-1			0xe44599		cc				INT $__subsystem__(SB)									
  :-1			0xe4459a		cc				INT $__subsystem__(SB)									
  :-1			0xe4459b		cc				INT $__subsystem__(SB)									
  :-1			0xe4459c		cc				INT $__subsystem__(SB)									
  :-1			0xe4459d		cc				INT $__subsystem__(SB)									
  :-1			0xe4459e		cc				INT $__subsystem__(SB)									
  :-1			0xe4459f		cc				INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func2(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:119	0xe445a0		493b6610		CMPQ SP, 0x10(R14)								
  vehservice.go:119	0xe445a4		762f			JBE 0xe445d5									
  vehservice.go:119	0xe445a6		55			PUSHQ BP									
  vehservice.go:119	0xe445a7		4889e5			MOVQ SP, BP									
  vehservice.go:119	0xe445aa		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  vehservice.go:119	0xe445ae		488b4a10		MOVQ 0x10(DX), CX								
  vehservice.go:119	0xe445b2		48894c2408		MOVQ CX, 0x8(SP)								
  vehservice.go:119	0xe445b7		488b4208		MOVQ 0x8(DX), AX								
  vehservice.go:120	0xe445bb		0f1f440000		NOPL 0(AX)(AX*1)								
  vehservice.go:120	0xe445c0		e81b4d64ff		CALL sync.(*WaitGroup).Wait(SB)							
  vehservice.go:121	0xe445c5		488b442408		MOVQ 0x8(SP), AX								
  vehservice.go:121	0xe445ca		e8b15e5cff		CALL runtime.closechan(SB)							
  vehservice.go:122	0xe445cf		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  vehservice.go:122	0xe445d3		5d			POPQ BP										
  vehservice.go:122	0xe445d4		c3			RET										
  vehservice.go:119	0xe445d5		e8861e63ff		CALL runtime.morestack.abi0(SB)							
  vehservice.go:119	0xe445da		ebc4			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func2(SB)	
  :-1			0xe445dc		cc			INT $__subsystem__(SB)								
  :-1			0xe445dd		cc			INT $__subsystem__(SB)								
  :-1			0xe445de		cc			INT $__subsystem__(SB)								
  :-1			0xe445df		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.gowrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:111	0xe445e0		493b6610		CMPQ SP, 0x10(R14)								
  vehservice.go:111	0xe445e4		7658			JBE 0xe4463e									
  vehservice.go:111	0xe445e6		55			PUSHQ BP									
  vehservice.go:111	0xe445e7		4889e5			MOVQ SP, BP									
  vehservice.go:111	0xe445ea		4883ec78		SUBQ $.file+43(SB), SP								
  vehservice.go:111	0xe445ee		4d8b6620		MOVQ 0x20(R14), R12								
  vehservice.go:111	0xe445f2		4d85e4			TESTQ R12, R12									
  vehservice.go:111	0xe445f5		7550			JNE 0xe44647									
  vehservice.go:111	0xe445f7		488b4208		MOVQ 0x8(DX), AX								
  vehservice.go:115	0xe445fb		488b4a10		MOVQ 0x10(DX), CX								
  vehservice.go:115	0xe445ff		488d7218		LEAQ 0x18(DX), SI								
  vehservice.go:115	0xe44603		488b18			MOVQ 0(AX), BX									
  vehservice.go:115	0xe44606		48890c24		MOVQ CX, 0(SP)									
  vehservice.go:115	0xe4460a		488d7c2408		LEAQ 0x8(SP), DI								
  vehservice.go:115	0xe4460f		660f1f840000000000	NOPW 0(AX)(AX*1)								
  vehservice.go:115	0xe44618		0f1f840000000000	NOPL 0(AX)(AX*1)								
  vehservice.go:115	0xe44620		48896c24f0		MOVQ BP, -0x10(SP)								
  vehservice.go:115	0xe44625		488d6c24f0		LEAQ -0x10(SP), BP								
  vehservice.go:115	0xe4462a		e80f4863ff		CALL 0x478e3e									
  vehservice.go:115	0xe4462f		488b6d00		MOVQ 0(BP), BP									
  vehservice.go:115	0xe44633		4889c2			MOVQ AX, DX									
  vehservice.go:115	0xe44636		ffd3			CALL BX										
  vehservice.go:115	0xe44638		4883c478		ADDQ $.file+43(SB), SP								
  vehservice.go:115	0xe4463c		5d			POPQ BP										
  vehservice.go:115	0xe4463d		c3			RET										
  vehservice.go:111	0xe4463e		6690			NOPW										
  vehservice.go:111	0xe44640		e81b1e63ff		CALL runtime.morestack.abi0(SB)							
  vehservice.go:111	0xe44645		eb99			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.gowrap1(SB)	
  vehservice.go:111	0xe44647		4c8dac2488000000	LEAQ 0x88(SP), R13								
  vehservice.go:111	0xe4464f		4d392c24		CMPQ 0(R12), R13								
  vehservice.go:111	0xe44653		75a2			JNE 0xe445f7									
  vehservice.go:111	0xe44655		49892424		MOVQ SP, 0(R12)									
  vehservice.go:111	0xe44659		eb9c			JMP 0xe445f7									
  :-1			0xe4465b		cc			INT $__subsystem__(SB)								
  :-1			0xe4465c		cc			INT $__subsystem__(SB)								
  :-1			0xe4465d		cc			INT $__subsystem__(SB)								
  :-1			0xe4465e		cc			INT $__subsystem__(SB)								
  :-1			0xe4465f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:111	0xe44660		4c8d6424c8		LEAQ -0x38(SP), R12										
  vehservice.go:111	0xe44665		4d3b6610		CMPQ R12, 0x10(R14)										
  vehservice.go:111	0xe44669		0f86e2000000		JBE 0xe44751											
  vehservice.go:111	0xe4466f		55			PUSHQ BP											
  vehservice.go:111	0xe44670		4889e5			MOVQ SP, BP											
  vehservice.go:111	0xe44673		4881ecb0000000		SUBQ $.file+99(SB), SP										
  vehservice.go:111	0xe4467a		66440fd6bc24a8000000	MOVQ X15, 0xa8(SP)										
  vehservice.go:111	0xe44684		c684248700000000	MOVB $0x0, 0x87(SP)										
  vehservice.go:111	0xe4468c		488b4a08		MOVQ 0x8(DX), CX										
  vehservice.go:111	0xe44690		488b4210		MOVQ 0x10(DX), AX										
  vehservice.go:111	0xe44694		488b5218		MOVQ 0x18(DX), DX										
  vehservice.go:111	0xe44698		4889942488000000	MOVQ DX, 0x88(SP)										
  vehservice.go:112	0xe446a0		488d1db9000000		LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func1.deferwrap1(SB), BX	
  vehservice.go:112	0xe446a7		48899c2490000000	MOVQ BX, 0x90(SP)										
  vehservice.go:112	0xe446af		48898c2498000000	MOVQ CX, 0x98(SP)										
  vehservice.go:112	0xe446b7		488d8c2490000000	LEAQ 0x90(SP), CX										
  vehservice.go:112	0xe446bf		48898c24a8000000	MOVQ CX, 0xa8(SP)										
  vehservice.go:112	0xe446c7		c684248700000001	MOVB $__minor_os_version__(SB), 0x87(SP)							
  vehservice.go:113	0xe446cf		488b8c24c0000000	MOVQ 0xc0(SP), CX										
  vehservice.go:113	0xe446d7		48890c24		MOVQ CX, 0(SP)											
  vehservice.go:113	0xe446db		488d7c2408		LEAQ 0x8(SP), DI										
  vehservice.go:113	0xe446e0		488db424c8000000	LEAQ 0xc8(SP), SI										
  vehservice.go:113	0xe446e8		48896c24f0		MOVQ BP, -0x10(SP)										
  vehservice.go:113	0xe446ed		488d6c24f0		LEAQ -0x10(SP), BP										
  vehservice.go:113	0xe446f2		e8474763ff		CALL 0x478e3e											
  vehservice.go:113	0xe446f7		488b6d00		MOVQ 0(BP), BP											
  vehservice.go:113	0xe446fb		0f1f440000		NOPL 0(AX)(AX*1)										
  vehservice.go:113	0xe44700		e8bb000000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).getSingleForkliftStatus(SB)			
  vehservice.go:114	0xe44705		48898424a0000000	MOVQ AX, 0xa0(SP)										
  vehservice.go:114	0xe4470d		488b842488000000	MOVQ 0x88(SP), AX										
  vehservice.go:114	0xe44715		488d9c24a0000000	LEAQ 0xa0(SP), BX										
  vehservice.go:114	0xe4471d		0f1f00			NOPL 0(AX)											
  vehservice.go:114	0xe44720		e8fb535cff		CALL runtime.chansend1(SB)									
  vehservice.go:115	0xe44725		c684248700000000	MOVB $0x0, 0x87(SP)										
  vehservice.go:115	0xe4472d		488b9424a8000000	MOVQ 0xa8(SP), DX										
  vehservice.go:115	0xe44735		488b0a			MOVQ 0(DX), CX											
  vehservice.go:115	0xe44738		ffd1			CALL CX												
  vehservice.go:115	0xe4473a		4881c4b0000000		ADDQ $.file+99(SB), SP										
  vehservice.go:115	0xe44741		5d			POPQ BP												
  vehservice.go:115	0xe44742		c3			RET												
  vehservice.go:115	0xe44743		e838545fff		CALL runtime.deferreturn(SB)									
  vehservice.go:115	0xe44748		4881c4b0000000		ADDQ $.file+99(SB), SP										
  vehservice.go:115	0xe4474f		5d			POPQ BP												
  vehservice.go:115	0xe44750		c3			RET												
  vehservice.go:111	0xe44751		e80a1d63ff		CALL runtime.morestack.abi0(SB)									
  vehservice.go:111	0xe44756		e905ffffff		JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func1(SB)			
  :-1			0xe4475b		cc			INT $__subsystem__(SB)										
  :-1			0xe4475c		cc			INT $__subsystem__(SB)										
  :-1			0xe4475d		cc			INT $__subsystem__(SB)										
  :-1			0xe4475e		cc			INT $__subsystem__(SB)										
  :-1			0xe4475f		cc			INT $__subsystem__(SB)										

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func1.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:112	0xe44760		493b6610		CMPQ SP, 0x10(R14)										
  vehservice.go:112	0xe44764		7627			JBE 0xe4478d											
  vehservice.go:112	0xe44766		55			PUSHQ BP											
  vehservice.go:112	0xe44767		4889e5			MOVQ SP, BP											
  vehservice.go:112	0xe4476a		4883ec10		SUBQ $__major_os_version__+10(SB), SP								
  vehservice.go:112	0xe4476e		4d8b6620		MOVQ 0x20(R14), R12										
  vehservice.go:112	0xe44772		4d85e4			TESTQ R12, R12											
  vehservice.go:112	0xe44775		751d			JNE 0xe44794											
  vehservice.go:112	0xe44777		488b4208		MOVQ 0x8(DX), AX										
  waitgroup.go:89	0xe4477b		48c7c3ffffffff		MOVQ $-0x1, BX											
  waitgroup.go:89	0xe44782		e8194a64ff		CALL sync.(*WaitGroup).Add(SB)									
  vehservice.go:112	0xe44787		4883c410		ADDQ $__major_os_version__+10(SB), SP								
  vehservice.go:112	0xe4478b		5d			POPQ BP												
  vehservice.go:112	0xe4478c		c3			RET												
  vehservice.go:112	0xe4478d		e8ce1c63ff		CALL runtime.morestack.abi0(SB)									
  vehservice.go:112	0xe44792		ebcc			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func1.deferwrap1(SB)	
  vehservice.go:112	0xe44794		4c8d6c2420		LEAQ 0x20(SP), R13										
  vehservice.go:112	0xe44799		4d392c24		CMPQ 0(R12), R13										
  vehservice.go:112	0xe4479d		75d8			JNE 0xe44777											
  vehservice.go:112	0xe4479f		49892424		MOVQ SP, 0(R12)											
  vehservice.go:112	0xe447a3		ebd2			JMP 0xe44777											
  :-1			0xe447a5		cc			INT $__subsystem__(SB)										
  :-1			0xe447a6		cc			INT $__subsystem__(SB)										
  :-1			0xe447a7		cc			INT $__subsystem__(SB)										
  :-1			0xe447a8		cc			INT $__subsystem__(SB)										
  :-1			0xe447a9		cc			INT $__subsystem__(SB)										
  :-1			0xe447aa		cc			INT $__subsystem__(SB)										
  :-1			0xe447ab		cc			INT $__subsystem__(SB)										
  :-1			0xe447ac		cc			INT $__subsystem__(SB)										
  :-1			0xe447ad		cc			INT $__subsystem__(SB)										
  :-1			0xe447ae		cc			INT $__subsystem__(SB)										
  :-1			0xe447af		cc			INT $__subsystem__(SB)										
  :-1			0xe447b0		cc			INT $__subsystem__(SB)										
  :-1			0xe447b1		cc			INT $__subsystem__(SB)										
  :-1			0xe447b2		cc			INT $__subsystem__(SB)										
  :-1			0xe447b3		cc			INT $__subsystem__(SB)										
  :-1			0xe447b4		cc			INT $__subsystem__(SB)										
  :-1			0xe447b5		cc			INT $__subsystem__(SB)										
  :-1			0xe447b6		cc			INT $__subsystem__(SB)										
  :-1			0xe447b7		cc			INT $__subsystem__(SB)										
  :-1			0xe447b8		cc			INT $__subsystem__(SB)										
  :-1			0xe447b9		cc			INT $__subsystem__(SB)										
  :-1			0xe447ba		cc			INT $__subsystem__(SB)										
  :-1			0xe447bb		cc			INT $__subsystem__(SB)										
  :-1			0xe447bc		cc			INT $__subsystem__(SB)										
  :-1			0xe447bd		cc			INT $__subsystem__(SB)										
  :-1			0xe447be		cc			INT $__subsystem__(SB)										
  :-1			0xe447bf		cc			INT $__subsystem__(SB)										

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).getSingleForkliftStatus(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:133	0xe447c0		493b6610		CMPQ SP, 0x10(R14)								
  vehservice.go:133	0xe447c4		0f8694000000		JBE 0xe4485e									
  vehservice.go:133	0xe447ca		55			PUSHQ BP									
  vehservice.go:133	0xe447cb		4889e5			MOVQ SP, BP									
  vehservice.go:133	0xe447ce		4883ec78		SUBQ $.file+43(SB), SP								
  vehservice.go:134	0xe447d2		80780800		CMPB 0x8(AX), $0x0								
  vehservice.go:134	0xe447d6		7446			JE 0xe4481e									
  vehservice.go:135	0xe447d8		488b842488000000	MOVQ 0x88(SP), AX								
  vehservice.go:135	0xe447e0		48890424		MOVQ AX, 0(SP)									
  vehservice.go:135	0xe447e4		488d7c2408		LEAQ 0x8(SP), DI								
  vehservice.go:135	0xe447e9		488db42490000000	LEAQ 0x90(SP), SI								
  vehservice.go:135	0xe447f1		660f1f840000000000	NOPW 0(AX)(AX*1)								
  vehservice.go:135	0xe447fa		660f1f440000		NOPW 0(AX)(AX*1)								
  vehservice.go:135	0xe44800		48896c24f0		MOVQ BP, -0x10(SP)								
  vehservice.go:135	0xe44805		488d6c24f0		LEAQ -0x10(SP), BP								
  vehservice.go:135	0xe4480a		e82f4663ff		CALL 0x478e3e									
  vehservice.go:135	0xe4480f		488b6d00		MOVQ 0(BP), BP									
  vehservice.go:135	0xe44813		e828e5ffff		CALL CAS-Backend/pkg/diapdu.VehicleLiveStatusFromPush(SB)			
  vehservice.go:135	0xe44818		4883c478		ADDQ $.file+43(SB), SP								
  vehservice.go:135	0xe4481c		5d			POPQ BP										
  vehservice.go:135	0xe4481d		c3			RET										
  vehservice.go:137	0xe4481e		488b842488000000	MOVQ 0x88(SP), AX								
  vehservice.go:137	0xe44826		48890424		MOVQ AX, 0(SP)									
  vehservice.go:137	0xe4482a		488d7c2408		LEAQ 0x8(SP), DI								
  vehservice.go:137	0xe4482f		488db42490000000	LEAQ 0x90(SP), SI								
  vehservice.go:137	0xe44837		660f1f840000000000	NOPW 0(AX)(AX*1)								
  vehservice.go:137	0xe44840		48896c24f0		MOVQ BP, -0x10(SP)								
  vehservice.go:137	0xe44845		488d6c24f0		LEAQ -0x10(SP), BP								
  vehservice.go:137	0xe4484a		e8ef4563ff		CALL 0x478e3e									
  vehservice.go:137	0xe4484f		488b6d00		MOVQ 0(BP), BP									
  vehservice.go:137	0xe44853		e8e8e6ffff		CALL CAS-Backend/pkg/diapdu.VehicleLiveStatus(SB)				
  vehservice.go:137	0xe44858		4883c478		ADDQ $.file+43(SB), SP								
  vehservice.go:137	0xe4485c		5d			POPQ BP										
  vehservice.go:137	0xe4485d		c3			RET										
  vehservice.go:133	0xe4485e		4889842480000000	MOVQ AX, 0x80(SP)								
  vehservice.go:133	0xe44866		e8751c63ff		CALL runtime.morestack_noctxt.abi0(SB)						
  vehservice.go:133	0xe4486b		488b842480000000	MOVQ 0x80(SP), AX								
  vehservice.go:133	0xe44873		e948ffffff		JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).getSingleForkliftStatus(SB)	
  :-1			0xe44878		cc			INT $__subsystem__(SB)								
  :-1			0xe44879		cc			INT $__subsystem__(SB)								
  :-1			0xe4487a		cc			INT $__subsystem__(SB)								
  :-1			0xe4487b		cc			INT $__subsystem__(SB)								
  :-1			0xe4487c		cc			INT $__subsystem__(SB)								
  :-1			0xe4487d		cc			INT $__subsystem__(SB)								
  :-1			0xe4487e		cc			INT $__subsystem__(SB)								
  :-1			0xe4487f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).OnlineCount(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:146	0xe44880		493b6610		CMPQ SP, 0x10(R14)								
  vehservice.go:146	0xe44884		0f86aa000000		JBE 0xe44934									
  vehservice.go:146	0xe4488a		55			PUSHQ BP									
  vehservice.go:146	0xe4488b		4889e5			MOVQ SP, BP									
  vehservice.go:146	0xe4488e		4883ec40		SUBQ $__major_os_version__+58(SB), SP						
  vehservice.go:146	0xe44892		66440fd67c2438		MOVQ X15, 0x38(SP)								
  vehservice.go:146	0xe44899		c644241f00		MOVB $0x0, 0x1f(SP)								
  vehservice.go:146	0xe4489e		48c744242000000000	MOVQ $0x0, 0x20(SP)								
  vehservice.go:147	0xe448a7		be01000000		MOVL $__minor_os_version__(SB), SI						
  vehservice.go:147	0xe448ac		f00fc17028		LOCK XADDL SI, 0x28(AX)								
  type.go:88		0xe448b1		ffc6			INCL SI										
  rwmutex.go:70		0xe448b3		85f6			TESTL SI, SI									
  rwmutex.go:70		0xe448b5		7d1a			JGE 0xe448d1									
  rwmutex.go:70		0xe448b7		4889442450		MOVQ AX, 0x50(SP)								
  rwmutex.go:72		0xe448bc		488d5024		LEAQ 0x24(AX), DX								
  rwmutex.go:72		0xe448c0		31db			XORL BX, BX									
  rwmutex.go:72		0xe448c2		31c9			XORL CX, CX									
  rwmutex.go:72		0xe448c4		4889d0			MOVQ DX, AX									
  rwmutex.go:72		0xe448c7		e894cc62ff		CALL sync.runtime_SemacquireRWMutexR(SB)					
  vehservice.go:148	0xe448cc		488b442450		MOVQ 0x50(SP), AX								
  vehservice.go:148	0xe448d1		488d0d88000000		LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).OnlineCount.deferwrap1(SB), CX	
  vehservice.go:148	0xe448d8		48894c2428		MOVQ CX, 0x28(SP)								
  vehservice.go:148	0xe448dd		488d4818		LEAQ 0x18(AX), CX								
  vehservice.go:148	0xe448e1		48894c2430		MOVQ CX, 0x30(SP)								
  vehservice.go:148	0xe448e6		488d4c2428		LEAQ 0x28(SP), CX								
  vehservice.go:148	0xe448eb		48894c2438		MOVQ CX, 0x38(SP)								
  vehservice.go:148	0xe448f0		c644241f01		MOVB $__minor_os_version__(SB), 0x1f(SP)					
  vehservice.go:149	0xe448f5		488b4030		MOVQ 0x30(AX), AX								
  vehservice.go:149	0xe448f9		4885c0			TESTQ AX, AX									
  vehservice.go:149	0xe448fc		7405			JE 0xe44903									
  vehservice.go:149	0xe448fe		488b00			MOVQ 0(AX), AX									
  vehservice.go:149	0xe44901		eb02			JMP 0xe44905									
  vehservice.go:149	0xe44903		31c0			XORL AX, AX									
  vehservice.go:149	0xe44905		4889442420		MOVQ AX, 0x20(SP)								
  vehservice.go:149	0xe4490a		c644241f00		MOVB $0x0, 0x1f(SP)								
  vehservice.go:149	0xe4490f		488b542438		MOVQ 0x38(SP), DX								
  vehservice.go:149	0xe44914		488b02			MOVQ 0(DX), AX									
  vehservice.go:149	0xe44917		ffd0			CALL AX										
  vehservice.go:149	0xe44919		488b442420		MOVQ 0x20(SP), AX								
  vehservice.go:149	0xe4491e		4883c440		ADDQ $__major_os_version__+58(SB), SP						
  vehservice.go:149	0xe44922		5d			POPQ BP										
  vehservice.go:149	0xe44923		c3			RET										
  vehservice.go:149	0xe44924		e857525fff		CALL runtime.deferreturn(SB)							
  vehservice.go:149	0xe44929		488b442420		MOVQ 0x20(SP), AX								
  vehservice.go:149	0xe4492e		4883c440		ADDQ $__major_os_version__+58(SB), SP						
  vehservice.go:149	0xe44932		5d			POPQ BP										
  vehservice.go:149	0xe44933		c3			RET										
  vehservice.go:146	0xe44934		4889442408		MOVQ AX, 0x8(SP)								
  vehservice.go:146	0xe44939		e8a21b63ff		CALL runtime.morestack_noctxt.abi0(SB)						
  vehservice.go:146	0xe4493e		488b442408		MOVQ 0x8(SP), AX								
  vehservice.go:146	0xe44943		e938ffffff		JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).OnlineCount(SB)			
  :-1			0xe44948		cc			INT $__subsystem__(SB)								
  :-1			0xe44949		cc			INT $__subsystem__(SB)								
  :-1			0xe4494a		cc			INT $__subsystem__(SB)								
  :-1			0xe4494b		cc			INT $__subsystem__(SB)								
  :-1			0xe4494c		cc			INT $__subsystem__(SB)								
  :-1			0xe4494d		cc			INT $__subsystem__(SB)								
  :-1			0xe4494e		cc			INT $__subsystem__(SB)								
  :-1			0xe4494f		cc			INT $__subsystem__(SB)								
  :-1			0xe44950		cc			INT $__subsystem__(SB)								
  :-1			0xe44951		cc			INT $__subsystem__(SB)								
  :-1			0xe44952		cc			INT $__subsystem__(SB)								
  :-1			0xe44953		cc			INT $__subsystem__(SB)								
  :-1			0xe44954		cc			INT $__subsystem__(SB)								
  :-1			0xe44955		cc			INT $__subsystem__(SB)								
  :-1			0xe44956		cc			INT $__subsystem__(SB)								
  :-1			0xe44957		cc			INT $__subsystem__(SB)								
  :-1			0xe44958		cc			INT $__subsystem__(SB)								
  :-1			0xe44959		cc			INT $__subsystem__(SB)								
  :-1			0xe4495a		cc			INT $__subsystem__(SB)								
  :-1			0xe4495b		cc			INT $__subsystem__(SB)								
  :-1			0xe4495c		cc			INT $__subsystem__(SB)								
  :-1			0xe4495d		cc			INT $__subsystem__(SB)								
  :-1			0xe4495e		cc			INT $__subsystem__(SB)								
  :-1			0xe4495f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).OnlineCount.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:148	0xe44960		493b6610		CMPQ SP, 0x10(R14)								
  vehservice.go:148	0xe44964		7630			JBE 0xe44996									
  vehservice.go:148	0xe44966		55			PUSHQ BP									
  vehservice.go:148	0xe44967		4889e5			MOVQ SP, BP									
  vehservice.go:148	0xe4496a		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  vehservice.go:148	0xe4496e		4d8b6620		MOVQ 0x20(R14), R12								
  vehservice.go:148	0xe44972		4d85e4			TESTQ R12, R12									
  vehservice.go:148	0xe44975		7526			JNE 0xe4499d									
  vehservice.go:148	0xe44977		488b4208		MOVQ 0x8(DX), AX								
  rwmutex.go:118	0xe4497b		bbffffffff		MOVL $-0x1, BX									
  rwmutex.go:118	0xe44980		f00fc15810		LOCK XADDL BX, 0x10(AX)								
  type.go:88		0xe44985		ffcb			DECL BX										
  rwmutex.go:118	0xe44987		85db			TESTL BX, BX									
  rwmutex.go:118	0xe44989		7d05			JGE 0xe44990									
  rwmutex.go:120	0xe4498b		e8b04464ff		CALL sync.(*RWMutex).rUnlockSlow(SB)						
  vehservice.go:148	0xe44990		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  vehservice.go:148	0xe44994		5d			POPQ BP										
  vehservice.go:148	0xe44995		c3			RET										
  vehservice.go:148	0xe44996		e8c51a63ff		CALL runtime.morestack.abi0(SB)							
  vehservice.go:148	0xe4499b		ebc3			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).OnlineCount.deferwrap1(SB)	
  vehservice.go:148	0xe4499d		4c8d6c2420		LEAQ 0x20(SP), R13								
  vehservice.go:148	0xe449a2		4d392c24		CMPQ 0(R12), R13								
  vehservice.go:148	0xe449a6		75cf			JNE 0xe44977									
  vehservice.go:148	0xe449a8		49892424		MOVQ SP, 0(R12)									
  vehservice.go:148	0xe449ac		ebc9			JMP 0xe44977									
  :-1			0xe449ae		cc			INT $__subsystem__(SB)								
  :-1			0xe449af		cc			INT $__subsystem__(SB)								
  :-1			0xe449b0		cc			INT $__subsystem__(SB)								
  :-1			0xe449b1		cc			INT $__subsystem__(SB)								
  :-1			0xe449b2		cc			INT $__subsystem__(SB)								
  :-1			0xe449b3		cc			INT $__subsystem__(SB)								
  :-1			0xe449b4		cc			INT $__subsystem__(SB)								
  :-1			0xe449b5		cc			INT $__subsystem__(SB)								
  :-1			0xe449b6		cc			INT $__subsystem__(SB)								
  :-1			0xe449b7		cc			INT $__subsystem__(SB)								
  :-1			0xe449b8		cc			INT $__subsystem__(SB)								
  :-1			0xe449b9		cc			INT $__subsystem__(SB)								
  :-1			0xe449ba		cc			INT $__subsystem__(SB)								
  :-1			0xe449bb		cc			INT $__subsystem__(SB)								
  :-1			0xe449bc		cc			INT $__subsystem__(SB)								
  :-1			0xe449bd		cc			INT $__subsystem__(SB)								
  :-1			0xe449be		cc			INT $__subsystem__(SB)								
  :-1			0xe449bf		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateForkliftStatus(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:187	0xe449c0		4c8da42470ffffff	LEAQ 0xffffff70(SP), R12								
  vehservice.go:187	0xe449c8		4d3b6610		CMPQ R12, 0x10(R14)									
  vehservice.go:187	0xe449cc		0f86d1040000		JBE 0xe44ea3										
  vehservice.go:187	0xe449d2		55			PUSHQ BP										
  vehservice.go:187	0xe449d3		4889e5			MOVQ SP, BP										
  vehservice.go:187	0xe449d6		4881ec08010000		SUBQ $.file+187(SB), SP									
  vehservice.go:187	0xe449dd		66440fd6bc2400010000	MOVQ X15, 0x100(SP)									
  vehservice.go:190	0xe449e7		4889842418010000	MOVQ AX, 0x118(SP)									
  vehservice.go:187	0xe449ef		c644243f00		MOVB $0x0, 0x3f(SP)									
  vehservice.go:189	0xe449f4		e8a7f7ffff		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus(SB)		
  vehservice.go:190	0xe449f9		4885ff			TESTQ DI, DI										
  vehservice.go:190	0xe449fc		757a			JNE 0xe44a78										
  vehservice.go:189	0xe449fe		48895c2448		MOVQ BX, 0x48(SP)									
  vehservice.go:189	0xe44a03		4889442460		MOVQ AX, 0x60(SP)									
  vehservice.go:195	0xe44a08		488b842418010000	MOVQ 0x118(SP), AX									
  vehservice.go:195	0xe44a10		8400			TESTB AL, 0(AX)										
  vehservice.go:195	0xe44a12		488d4818		LEAQ 0x18(AX), CX									
  vehservice.go:195	0xe44a16		48898c24f8000000	MOVQ CX, 0xf8(SP)									
  vehservice.go:195	0xe44a1e		4889c8			MOVQ CX, AX										
  vehservice.go:195	0xe44a21		e89a4464ff		CALL sync.(*RWMutex).Lock(SB)								
  vehservice.go:196	0xe44a26		488d0d93040000		LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateForkliftStatus.deferwrap1(SB), CX	
  vehservice.go:196	0xe44a2d		48898c24d8000000	MOVQ CX, 0xd8(SP)									
  vehservice.go:196	0xe44a35		488b8c24f8000000	MOVQ 0xf8(SP), CX									
  vehservice.go:196	0xe44a3d		48898c24e0000000	MOVQ CX, 0xe0(SP)									
  vehservice.go:196	0xe44a45		488d8c24d8000000	LEAQ 0xd8(SP), CX									
  vehservice.go:196	0xe44a4d		48898c2400010000	MOVQ CX, 0x100(SP)									
  vehservice.go:196	0xe44a55		c644243f01		MOVB $__minor_os_version__(SB), 0x3f(SP)						
  vehservice.go:198	0xe44a5a		488d05df8b2300		LEAQ runtime.types+624192(SB), AX							
  vehservice.go:198	0xe44a61		488b5c2448		MOVQ 0x48(SP), BX									
  vehservice.go:198	0xe44a66		31c9			XORL CX, CX										
  vehservice.go:198	0xe44a68		e8b36562ff		CALL runtime.makemap(SB)								
  vehservice.go:198	0xe44a6d		4889442458		MOVQ AX, 0x58(SP)									
  vehservice.go:198	0xe44a72		31c9			XORL CX, CX										
  vehservice.go:198	0xe44a74		31d2			XORL DX, DX										
  vehservice.go:200	0xe44a76		eb65			JMP 0xe44add										
  vehservice.go:191	0xe44a78		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)									
  vehservice.go:191	0xe44a81		7404			JE 0xe44a87										
  vehservice.go:191	0xe44a83		488b7f08		MOVQ 0x8(DI), DI									
  vehservice.go:191	0xe44a87		4889bc24e8000000	MOVQ DI, 0xe8(SP)									
  vehservice.go:191	0xe44a8f		4889b424f0000000	MOVQ SI, 0xf0(SP)									
  print.go:233		0xe44a97		488b1de2d56c02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe44a9e		488d053b700202		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe44aa5		488d0d066e3400		LEAQ go:string.*+144298(SB), CX								
  print.go:233		0xe44aac		bf1e000000		MOVL $__major_os_version__+24(SB), DI							
  print.go:233		0xe44ab1		488db424e8000000	LEAQ 0xe8(SP), SI									
  print.go:233		0xe44ab9		41b801000000		MOVL $__minor_os_version__(SB), R8							
  print.go:233		0xe44abf		4d89c1			MOVQ R8, R9										
  print.go:233		0xe44ac2		e859a76dff		CALL fmt.Fprintf(SB)									
  vehservice.go:192	0xe44ac7		4881c408010000		ADDQ $.file+187(SB), SP									
  vehservice.go:192	0xe44ace		5d			POPQ BP											
  vehservice.go:192	0xe44acf		c3			RET											
  vehservice.go:200	0xe44ad0		488b4c2450		MOVQ 0x50(SP), CX									
  vehservice.go:200	0xe44ad5		48ffc1			INCQ CX											
  vehservice.go:225	0xe44ad8		488b442458		MOVQ 0x58(SP), AX									
  vehservice.go:218	0xe44add		4889542440		MOVQ DX, 0x40(SP)									
  vehservice.go:200	0xe44ae2		488b742448		MOVQ 0x48(SP), SI									
  vehservice.go:200	0xe44ae7		4839ce			CMPQ SI, CX										
  vehservice.go:200	0xe44aea		0f8ebb020000		JLE 0xe44dab										
  vehservice.go:200	0xe44af0		48894c2450		MOVQ CX, 0x50(SP)									
  vehservice.go:200	0xe44af5		4c8b442460		MOVQ 0x60(SP), R8									
  vehservice.go:200	0xe44afa		498b1cc8		MOVQ 0(R8)(CX*8), BX									
  vehservice.go:201	0xe44afe		48837b2807		CMPQ 0x28(BX), $__major_os_version__+1(SB)						
  vehservice.go:201	0xe44b03		751d			JNE 0xe44b22										
  vehservice.go:201	0xe44b05		4c8b4b20		MOVQ 0x20(BX), R9									
  vehservice.go:201	0xe44b09		4181396f66666c		CMPL 0(R9), $0x6c66666f									
  vehservice.go:201	0xe44b10		7510			JNE 0xe44b22										
  vehservice.go:201	0xe44b12		6641817904696e		CMPW 0x4(R9), $.file+1434(SB)								
  vehservice.go:201	0xe44b19		7507			JNE 0xe44b22										
  vehservice.go:201	0xe44b1b		4180790665		CMPB 0x6(R9), $.file+24(SB)								
  vehservice.go:201	0xe44b20		7407			JE 0xe44b29										
  vehservice.go:201	0xe44b22		48837b7800		CMPQ 0x78(BX), $0x0									
  vehservice.go:201	0xe44b27		742c			JE 0xe44b55										
  vehservice.go:202	0xe44b29		488b942418010000	MOVQ 0x118(SP), DX									
  vehservice.go:202	0xe44b31		488b7238		MOVQ 0x38(DX), SI									
  vehservice.go:202	0xe44b35		488b0b			MOVQ 0(BX), CX										
  vehservice.go:202	0xe44b38		488b7b08		MOVQ 0x8(BX), DI									
  vehservice.go:202	0xe44b3c		488d05fd8d2300		LEAQ runtime.types+624960(SB), AX							
  vehservice.go:202	0xe44b43		4889f3			MOVQ SI, BX										
  vehservice.go:202	0xe44b46		e8b5fb5cff		CALL runtime.mapdelete_faststr(SB)							
  vehservice.go:218	0xe44b4b		488b542440		MOVQ 0x40(SP), DX									
  vehservice.go:203	0xe44b50		e97bffffff		JMP 0xe44ad0										
  vehservice.go:205	0xe44b55		4883bb9800000000	CMPQ 0x98(BX), $0x0									
  vehservice.go:205	0xe44b5d		7430			JE 0xe44b8f										
  vehservice.go:206	0xe44b5f		488b942418010000	MOVQ 0x118(SP), DX									
  vehservice.go:206	0xe44b67		488b7238		MOVQ 0x38(DX), SI									
  vehservice.go:206	0xe44b6b		488b0b			MOVQ 0(BX), CX										
  vehservice.go:206	0xe44b6e		488b7b08		MOVQ 0x8(BX), DI									
  vehservice.go:206	0xe44b72		488d05c78d2300		LEAQ runtime.types+624960(SB), AX							
  vehservice.go:206	0xe44b79		4889f3			MOVQ SI, BX										
  vehservice.go:206	0xe44b7c		0f1f4000		NOPL 0(AX)										
  vehservice.go:206	0xe44b80		e87bfb5cff		CALL runtime.mapdelete_faststr(SB)							
  vehservice.go:218	0xe44b85		488b542440		MOVQ 0x40(SP), DX									
  vehservice.go:207	0xe44b8a		e941ffffff		JMP 0xe44ad0										
  vehservice.go:200	0xe44b8f		48895c2468		MOVQ BX, 0x68(SP)									
  vehservice.go:209	0xe44b94		488b842418010000	MOVQ 0x118(SP), AX									
  vehservice.go:209	0xe44b9c		0f1f4000		NOPL 0(AX)										
  vehservice.go:209	0xe44ba0		e87b030000		CALL CAS-Backend/pkg/diapdu.(*ForkliftUpdater).convertToForklift(SB)			
  vehservice.go:209	0xe44ba5		4889442470		MOVQ AX, 0x70(SP)									
  vehservice.go:210	0xe44baa		488b8c2418010000	MOVQ 0x118(SP), CX									
  vehservice.go:210	0xe44bb2		488b5930		MOVQ 0x30(CX), BX									
  vehservice.go:210	0xe44bb6		488b10			MOVQ 0(AX), DX										
  vehservice.go:210	0xe44bb9		488b7808		MOVQ 0x8(AX), DI									
  vehservice.go:210	0xe44bbd		488d057c8a2300		LEAQ runtime.types+624192(SB), AX							
  vehservice.go:210	0xe44bc4		4889d1			MOVQ DX, CX										
  vehservice.go:210	0xe44bc7		e8749062ff		CALL runtime.mapaccess2_faststr(SB)							
  vehservice.go:210	0xe44bcc		84db			TESTL BL, BL										
  vehservice.go:210	0xe44bce		7421			JE 0xe44bf1										
  vehservice.go:210	0xe44bd0		488b10			MOVQ 0(AX), DX										
  vehservice.go:210	0xe44bd3		48837a5000		CMPQ 0x50(DX), $0x0									
  vehservice.go:210	0xe44bd8		7417			JE 0xe44bf1										
  vehservice.go:211	0xe44bda		488b742470		MOVQ 0x70(SP), SI									
  vehservice.go:211	0xe44bdf		48c7462001000000	MOVQ $__minor_os_version__(SB), 0x20(SI)						
  vehservice.go:212	0xe44be7		488b5250		MOVQ 0x50(DX), DX									
  vehservice.go:212	0xe44beb		48895650		MOVQ DX, 0x50(SI)									
  vehservice.go:212	0xe44bef		eb05			JMP 0xe44bf6										
  vehservice.go:214	0xe44bf1		488b742470		MOVQ 0x70(SP), SI									
  vehservice.go:214	0xe44bf6		48837e5814		CMPQ 0x58(SI), $__major_os_version__+14(SB)						
  vehservice.go:214	0xe44bfb		7d0f			JGE 0xe44c0c										
  vehservice.go:214	0xe44bfd		48837e2003		CMPQ 0x20(SI), $__subsystem__(SB)							
  vehservice.go:214	0xe44c02		7408			JE 0xe44c0c										
  vehservice.go:215	0xe44c04		48c7462002000000	MOVQ $__minor_os_version__+1(SB), 0x20(SI)						
  vehservice.go:217	0xe44c0c		488b0e			MOVQ 0(SI), CX										
  vehservice.go:217	0xe44c0f		488b7e08		MOVQ 0x8(SI), DI									
  vehservice.go:217	0xe44c13		488d05268a2300		LEAQ runtime.types+624192(SB), AX							
  vehservice.go:217	0xe44c1a		488b5c2458		MOVQ 0x58(SP), BX									
  vehservice.go:217	0xe44c1f		90			NOPL											
  vehservice.go:217	0xe44c20		e8fb9362ff		CALL runtime.mapassign_faststr(SB)							
  vehservice.go:217	0xe44c25		8400			TESTB AL, 0(AX)										
  vehservice.go:217	0xe44c27		833d228f710200		CMPL runtime.writeBarrier(SB), $0x0							
  vehservice.go:217	0xe44c2e		7507			JNE 0xe44c37										
  vehservice.go:217	0xe44c30		488b542470		MOVQ 0x70(SP), DX									
  vehservice.go:217	0xe44c35		eb14			JMP 0xe44c4b										
  vehservice.go:217	0xe44c37		e8043863ff		CALL runtime.gcWriteBarrier2(SB)							
  vehservice.go:217	0xe44c3c		488b542470		MOVQ 0x70(SP), DX									
  vehservice.go:217	0xe44c41		498913			MOVQ DX, 0(R11)										
  vehservice.go:217	0xe44c44		488b30			MOVQ 0(AX), SI										
  vehservice.go:217	0xe44c47		49897308		MOVQ SI, 0x8(R11)									
  vehservice.go:217	0xe44c4b		488910			MOVQ DX, 0(AX)										
  vehservice.go:219	0xe44c4e		488bb42418010000	MOVQ 0x118(SP), SI									
  vehservice.go:219	0xe44c56		488b5e38		MOVQ 0x38(SI), BX									
  vehservice.go:219	0xe44c5a		488b0a			MOVQ 0(DX), CX										
  vehservice.go:219	0xe44c5d		488b7a08		MOVQ 0x8(DX), DI									
  vehservice.go:219	0xe44c61		488d05d88c2300		LEAQ runtime.types+624960(SB), AX							
  vehservice.go:219	0xe44c68		e8d3f65cff		CALL runtime.mapaccess1_faststr(SB)							
  vehservice.go:219	0xe44c6d		803800			CMPB 0(AX), $0x0									
  vehservice.go:219	0xe44c70		0f8528010000		JNE 0xe44d9e										
  vehservice.go:220	0xe44c76		440f11bc2498000000	MOVUPS X15, 0x98(SP)									
  vehservice.go:220	0xe44c7f		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)									
  vehservice.go:220	0xe44c88		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)									
  vehservice.go:220	0xe44c91		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)									
  vehservice.go:221	0xe44c9a		488b4c2468		MOVQ 0x68(SP), CX									
  vehservice.go:221	0xe44c9f		488b4110		MOVQ 0x10(CX), AX									
  vehservice.go:221	0xe44ca3		488b5918		MOVQ 0x18(CX), BX									
  vehservice.go:221	0xe44ca7		e8745462ff		CALL runtime.convTstring(SB)								
  vehservice.go:221	0xe44cac		488d0d6ddc1f00		LEAQ runtime.types+383264(SB), CX							
  vehservice.go:221	0xe44cb3		48898c2498000000	MOVQ CX, 0x98(SP)									
  vehservice.go:221	0xe44cbb		48898424a0000000	MOVQ AX, 0xa0(SP)									
  vehservice.go:221	0xe44cc3		488b542470		MOVQ 0x70(SP), DX									
  vehservice.go:221	0xe44cc8		488b5a08		MOVQ 0x8(DX), BX									
  vehservice.go:221	0xe44ccc		488b02			MOVQ 0(DX), AX										
  vehservice.go:221	0xe44ccf		e84c5462ff		CALL runtime.convTstring(SB)								
  vehservice.go:221	0xe44cd4		488d0d45dc1f00		LEAQ runtime.types+383264(SB), CX							
  vehservice.go:221	0xe44cdb		48898c24a8000000	MOVQ CX, 0xa8(SP)									
  vehservice.go:221	0xe44ce3		48898424b0000000	MOVQ AX, 0xb0(SP)									
  vehservice.go:221	0xe44ceb		488b542468		MOVQ 0x68(SP), DX									
  vehservice.go:221	0xe44cf0		488b8280000000		MOVQ 0x80(DX), AX									
  vehservice.go:221	0xe44cf7		488b9a88000000		MOVQ 0x88(DX), BX									
  vehservice.go:221	0xe44cfe		6690			NOPW											
  vehservice.go:221	0xe44d00		e81b5462ff		CALL runtime.convTstring(SB)								
  vehservice.go:221	0xe44d05		488d0d14dc1f00		LEAQ runtime.types+383264(SB), CX							
  vehservice.go:221	0xe44d0c		48898c24b8000000	MOVQ CX, 0xb8(SP)									
  vehservice.go:221	0xe44d14		48898424c0000000	MOVQ AX, 0xc0(SP)									
  vehservice.go:221	0xe44d1c		488b542468		MOVQ 0x68(SP), DX									
  vehservice.go:221	0xe44d21		488b8290000000		MOVQ 0x90(DX), AX									
  vehservice.go:221	0xe44d28		e8735362ff		CALL runtime.convT64(SB)								
  vehservice.go:221	0xe44d2d		488d0d2cde1f00		LEAQ runtime.types+383840(SB), CX							
  vehservice.go:221	0xe44d34		48898c24c8000000	MOVQ CX, 0xc8(SP)									
  vehservice.go:221	0xe44d3c		48898424d0000000	MOVQ AX, 0xd0(SP)									
  print.go:233		0xe44d44		488b1d35d36c02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe44d4b		488d058e6d0202		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe44d52		bf3d000000		MOVL $__major_os_version__+55(SB), DI							
  print.go:233		0xe44d57		488db42498000000	LEAQ 0x98(SP), SI									
  print.go:233		0xe44d5f		41b804000000		MOVL $__subsystem__+1(SB), R8								
  print.go:233		0xe44d65		4d89c1			MOVQ R8, R9										
  print.go:233		0xe44d68		488d0db8e93500		LEAQ go:string.*+242207(SB), CX								
  print.go:233		0xe44d6f		e8aca46dff		CALL fmt.Fprintf(SB)									
  vehservice.go:222	0xe44d74		488b8c2418010000	MOVQ 0x118(SP), CX									
  vehservice.go:222	0xe44d7c		488b5938		MOVQ 0x38(CX), BX									
  vehservice.go:222	0xe44d80		488b542470		MOVQ 0x70(SP), DX									
  vehservice.go:222	0xe44d85		488b32			MOVQ 0(DX), SI										
  vehservice.go:222	0xe44d88		488b7a08		MOVQ 0x8(DX), DI									
  vehservice.go:222	0xe44d8c		488d05ad8b2300		LEAQ runtime.types+624960(SB), AX							
  vehservice.go:222	0xe44d93		4889f1			MOVQ SI, CX										
  vehservice.go:222	0xe44d96		e8859262ff		CALL runtime.mapassign_faststr(SB)							
  vehservice.go:222	0xe44d9b		c60001			MOVB $__minor_os_version__(SB), 0(AX)							
  vehservice.go:218	0xe44d9e		488b542440		MOVQ 0x40(SP), DX									
  vehservice.go:218	0xe44da3		48ffc2			INCQ DX											
  vehservice.go:218	0xe44da6		e925fdffff		JMP 0xe44ad0										
  vehservice.go:225	0xe44dab		833d9e8d710200		CMPL runtime.writeBarrier(SB), $0x0							
  vehservice.go:225	0xe44db2		750c			JNE 0xe44dc0										
  vehservice.go:225	0xe44db4		488b8c2418010000	MOVQ 0x118(SP), CX									
  vehservice.go:225	0xe44dbc		eb1a			JMP 0xe44dd8										
  vehservice.go:225	0xe44dbe		6690			NOPW											
  vehservice.go:225	0xe44dc0		e87b3663ff		CALL runtime.gcWriteBarrier2(SB)							
  vehservice.go:225	0xe44dc5		498903			MOVQ AX, 0(R11)										
  vehservice.go:225	0xe44dc8		488b8c2418010000	MOVQ 0x118(SP), CX									
  vehservice.go:225	0xe44dd0		488b5930		MOVQ 0x30(CX), BX									
  vehservice.go:225	0xe44dd4		49895b08		MOVQ BX, 0x8(R11)									
  vehservice.go:225	0xe44dd8		48894130		MOVQ AX, 0x30(CX)									
  vehservice.go:227	0xe44ddc		0f1f4000		NOPL 0(AX)										
  vehservice.go:227	0xe44de0		48395140		CMPQ 0x40(CX), DX									
  vehservice.go:227	0xe44de4		0f8490000000		JE 0xe44e7a										
  vehservice.go:228	0xe44dea		440f117c2478		MOVUPS X15, 0x78(SP)									
  vehservice.go:228	0xe44df0		440f11bc2488000000	MOVUPS X15, 0x88(SP)									
  vehservice.go:228	0xe44df9		4889d0			MOVQ DX, AX										
  vehservice.go:228	0xe44dfc		0f1f4000		NOPL 0(AX)										
  vehservice.go:228	0xe44e00		e89b5262ff		CALL runtime.convT64(SB)								
  vehservice.go:228	0xe44e05		488d0d54dd1f00		LEAQ runtime.types+383840(SB), CX							
  vehservice.go:228	0xe44e0c		48894c2478		MOVQ CX, 0x78(SP)									
  vehservice.go:228	0xe44e11		4889842480000000	MOVQ AX, 0x80(SP)									
  vehservice.go:228	0xe44e19		488b442448		MOVQ 0x48(SP), AX									
  vehservice.go:228	0xe44e1e		6690			NOPW											
  vehservice.go:228	0xe44e20		e87b5262ff		CALL runtime.convT64(SB)								
  vehservice.go:228	0xe44e25		488d0d34dd1f00		LEAQ runtime.types+383840(SB), CX							
  vehservice.go:228	0xe44e2c		48898c2488000000	MOVQ CX, 0x88(SP)									
  vehservice.go:228	0xe44e34		4889842490000000	MOVQ AX, 0x90(SP)									
  print.go:233		0xe44e3c		488b1d3dd26c02		MOVQ os.Stdout(SB), BX									
  print.go:233		0xe44e43		488d05966c0202		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233		0xe44e4a		488d0d66e03500		LEAQ go:string.*+240047(SB), CX								
  print.go:233		0xe44e51		bf3c000000		MOVL $__major_os_version__+54(SB), DI							
  print.go:233		0xe44e56		488d742478		LEAQ 0x78(SP), SI									
  print.go:233		0xe44e5b		41b802000000		MOVL $__minor_os_version__+1(SB), R8							
  print.go:233		0xe44e61		4d89c1			MOVQ R8, R9										
  print.go:233		0xe44e64		e8b7a36dff		CALL fmt.Fprintf(SB)									
  vehservice.go:229	0xe44e69		488b4c2440		MOVQ 0x40(SP), CX									
  vehservice.go:229	0xe44e6e		488b942418010000	MOVQ 0x118(SP), DX									
  vehservice.go:229	0xe44e76		48894a40		MOVQ CX, 0x40(DX)									
  vehservice.go:231	0xe44e7a		c644243f00		MOVB $0x0, 0x3f(SP)									
  vehservice.go:231	0xe44e7f		488b942400010000	MOVQ 0x100(SP), DX									
  vehservice.go:231	0xe44e87		488b02			MOVQ 0(DX), AX										
  vehservice.go:231	0xe44e8a		ffd0			CALL AX											
  vehservice.go:231	0xe44e8c		4881c408010000		ADDQ $.file+187(SB), SP									
  vehservice.go:231	0xe44e93		5d			POPQ BP											
  vehservice.go:231	0xe44e94		c3			RET											
  vehservice.go:231	0xe44e95		e8e64c5fff		CALL runtime.deferreturn(SB)								
  vehservice.go:231	0xe44e9a		4881c408010000		ADDQ $.file+187(SB), SP									
  vehservice.go:231	0xe44ea1		5d			POPQ BP											
  vehservice.go:231	0xe44ea2		c3			RET											
  vehservice.go:187	0xe44ea3		4889442408		MOVQ AX, 0x8(SP)									
  vehservice.go:187	0xe44ea8		e8331663ff		CALL runtime.morestack_noctxt.abi0(SB)							
  vehservice.go:187	0xe44ead		488b442408		MOVQ 0x8(SP), AX									
  vehservice.go:187	0xe44eb2		e909fbffff		JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateForkliftStatus(SB)			
  :-1			0xe44eb7		cc			INT $__subsystem__(SB)									
  :-1			0xe44eb8		cc			INT $__subsystem__(SB)									
  :-1			0xe44eb9		cc			INT $__subsystem__(SB)									
  :-1			0xe44eba		cc			INT $__subsystem__(SB)									
  :-1			0xe44ebb		cc			INT $__subsystem__(SB)									
  :-1			0xe44ebc		cc			INT $__subsystem__(SB)									
  :-1			0xe44ebd		cc			INT $__subsystem__(SB)									
  :-1			0xe44ebe		cc			INT $__subsystem__(SB)									
  :-1			0xe44ebf		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateForkliftStatus.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:196	0xe44ec0		493b6610		CMPQ SP, 0x10(R14)									
  vehservice.go:196	0xe44ec4		7625			JBE 0xe44eeb										
  vehservice.go:196	0xe44ec6		55			PUSHQ BP										
  vehservice.go:196	0xe44ec7		4889e5			MOVQ SP, BP										
  vehservice.go:196	0xe44eca		4883ec08		SUBQ $__major_os_version__+2(SB), SP							
  vehservice.go:196	0xe44ece		4d8b6620		MOVQ 0x20(R14), R12									
  vehservice.go:196	0xe44ed2		4d85e4			TESTQ R12, R12										
  vehservice.go:196	0xe44ed5		751b			JNE 0xe44ef2										
  vehservice.go:196	0xe44ed7		488b4208		MOVQ 0x8(DX), AX									
  vehservice.go:196	0xe44edb		0f1f440000		NOPL 0(AX)(AX*1)									
  vehservice.go:196	0xe44ee0		e83b4164ff		CALL sync.(*RWMutex).Unlock(SB)								
  vehservice.go:196	0xe44ee5		4883c408		ADDQ $__major_os_version__+2(SB), SP							
  vehservice.go:196	0xe44ee9		5d			POPQ BP											
  vehservice.go:196	0xe44eea		c3			RET											
  vehservice.go:196	0xe44eeb		e8701563ff		CALL runtime.morestack.abi0(SB)								
  vehservice.go:196	0xe44ef0		ebce			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateForkliftStatus.deferwrap1(SB)	
  vehservice.go:196	0xe44ef2		4c8d6c2418		LEAQ 0x18(SP), R13									
  vehservice.go:196	0xe44ef7		4d392c24		CMPQ 0(R12), R13									
  vehservice.go:196	0xe44efb		75da			JNE 0xe44ed7										
  vehservice.go:196	0xe44efd		49892424		MOVQ SP, 0(R12)										
  vehservice.go:196	0xe44f01		ebd4			JMP 0xe44ed7										
  :-1			0xe44f03		cc			INT $__subsystem__(SB)									
  :-1			0xe44f04		cc			INT $__subsystem__(SB)									
  :-1			0xe44f05		cc			INT $__subsystem__(SB)									
  :-1			0xe44f06		cc			INT $__subsystem__(SB)									
  :-1			0xe44f07		cc			INT $__subsystem__(SB)									
  :-1			0xe44f08		cc			INT $__subsystem__(SB)									
  :-1			0xe44f09		cc			INT $__subsystem__(SB)									
  :-1			0xe44f0a		cc			INT $__subsystem__(SB)									
  :-1			0xe44f0b		cc			INT $__subsystem__(SB)									
  :-1			0xe44f0c		cc			INT $__subsystem__(SB)									
  :-1			0xe44f0d		cc			INT $__subsystem__(SB)									
  :-1			0xe44f0e		cc			INT $__subsystem__(SB)									
  :-1			0xe44f0f		cc			INT $__subsystem__(SB)									
  :-1			0xe44f10		cc			INT $__subsystem__(SB)									
  :-1			0xe44f11		cc			INT $__subsystem__(SB)									
  :-1			0xe44f12		cc			INT $__subsystem__(SB)									
  :-1			0xe44f13		cc			INT $__subsystem__(SB)									
  :-1			0xe44f14		cc			INT $__subsystem__(SB)									
  :-1			0xe44f15		cc			INT $__subsystem__(SB)									
  :-1			0xe44f16		cc			INT $__subsystem__(SB)									
  :-1			0xe44f17		cc			INT $__subsystem__(SB)									
  :-1			0xe44f18		cc			INT $__subsystem__(SB)									
  :-1			0xe44f19		cc			INT $__subsystem__(SB)									
  :-1			0xe44f1a		cc			INT $__subsystem__(SB)									
  :-1			0xe44f1b		cc			INT $__subsystem__(SB)									
  :-1			0xe44f1c		cc			INT $__subsystem__(SB)									
  :-1			0xe44f1d		cc			INT $__subsystem__(SB)									
  :-1			0xe44f1e		cc			INT $__subsystem__(SB)									
  :-1			0xe44f1f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).convertToForklift(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:234	0xe44f20		493b6610		CMPQ SP, 0x10(R14)							
  vehservice.go:234	0xe44f24		0f86d4010000		JBE 0xe450fe								
  vehservice.go:234	0xe44f2a		55			PUSHQ BP								
  vehservice.go:234	0xe44f2b		4889e5			MOVQ SP, BP								
  vehservice.go:234	0xe44f2e		4883ec18		SUBQ $__major_os_version__+18(SB), SP					
  vehservice.go:259	0xe44f32		48895c2430		MOVQ BX, 0x30(SP)							
  vehservice.go:235	0xe44f37		488d05e2cf2d00		LEAQ runtime.types+1298208(SB), AX					
  vehservice.go:235	0xe44f3e		6690			NOPW									
  vehservice.go:235	0xe44f40		e85bc85cff		CALL runtime.newobject(SB)						
  vehservice.go:236	0xe44f45		488b4c2430		MOVQ 0x30(SP), CX							
  vehservice.go:236	0xe44f4a		488b5108		MOVQ 0x8(CX), DX							
  vehservice.go:236	0xe44f4e		488b19			MOVQ 0(CX), BX								
  vehservice.go:236	0xe44f51		48895008		MOVQ DX, 0x8(AX)							
  vehservice.go:236	0xe44f55		833df48b710200		CMPL runtime.writeBarrier(SB), $0x0					
  vehservice.go:236	0xe44f5c		740a			JE 0xe44f68								
  vehservice.go:236	0xe44f5e		6690			NOPW									
  vehservice.go:236	0xe44f60		e8bb3463ff		CALL runtime.gcWriteBarrier1(SB)					
  vehservice.go:236	0xe44f65		49891b			MOVQ BX, 0(R11)								
  vehservice.go:236	0xe44f68		488918			MOVQ BX, 0(AX)								
  vehservice.go:237	0xe44f6b		488b5118		MOVQ 0x18(CX), DX							
  vehservice.go:237	0xe44f6f		488b7110		MOVQ 0x10(CX), SI							
  vehservice.go:237	0xe44f73		48895018		MOVQ DX, 0x18(AX)							
  vehservice.go:237	0xe44f77		833dd28b710200		CMPL runtime.writeBarrier(SB), $0x0					
  vehservice.go:237	0xe44f7e		6690			NOPW									
  vehservice.go:237	0xe44f80		7408			JE 0xe44f8a								
  vehservice.go:237	0xe44f82		e8993463ff		CALL runtime.gcWriteBarrier1(SB)					
  vehservice.go:237	0xe44f87		498933			MOVQ SI, 0(R11)								
  vehservice.go:237	0xe44f8a		48897010		MOVQ SI, 0x10(AX)							
  vehservice.go:242	0xe44f8e		f20f104138		MOVSD_XMM 0x38(CX), X0							
  vehservice.go:242	0xe44f93		f20f114028		MOVSD_XMM X0, 0x28(AX)							
  vehservice.go:243	0xe44f98		f20f104140		MOVSD_XMM 0x40(CX), X0							
  vehservice.go:243	0xe44f9d		f20f114030		MOVSD_XMM X0, 0x30(AX)							
  vehservice.go:245	0xe44fa2		488b5130		MOVQ 0x30(CX), DX							
  vehservice.go:245	0xe44fa6		48895058		MOVQ DX, 0x58(AX)							
  vehservice.go:246	0xe44faa		488b5160		MOVQ 0x60(CX), DX							
  vehservice.go:246	0xe44fae		488b7158		MOVQ 0x58(CX), SI							
  vehservice.go:246	0xe44fb2		488b7968		MOVQ 0x68(CX), DI							
  vehservice.go:246	0xe44fb6		48897060		MOVQ SI, 0x60(AX)							
  vehservice.go:246	0xe44fba		48895068		MOVQ DX, 0x68(AX)							
  vehservice.go:246	0xe44fbe		833d8b8b710200		CMPL runtime.writeBarrier(SB), $0x0					
  vehservice.go:246	0xe44fc5		7408			JE 0xe44fcf								
  vehservice.go:246	0xe44fc7		e8543463ff		CALL runtime.gcWriteBarrier1(SB)					
  vehservice.go:246	0xe44fcc		49893b			MOVQ DI, 0(R11)								
  vehservice.go:246	0xe44fcf		48897870		MOVQ DI, 0x70(AX)							
  vehservice.go:247	0xe44fd3		488b9188000000		MOVQ 0x88(CX), DX							
  vehservice.go:247	0xe44fda		488bb180000000		MOVQ 0x80(CX), SI							
  vehservice.go:247	0xe44fe1		48895040		MOVQ DX, 0x40(AX)							
  vehservice.go:247	0xe44fe5		833d648b710200		CMPL runtime.writeBarrier(SB), $0x0					
  vehservice.go:247	0xe44fec		7408			JE 0xe44ff6								
  vehservice.go:247	0xe44fee		e82d3463ff		CALL runtime.gcWriteBarrier1(SB)					
  vehservice.go:247	0xe44ff3		498933			MOVQ SI, 0(R11)								
  vehservice.go:247	0xe44ff6		48897038		MOVQ SI, 0x38(AX)							
  vehservice.go:248	0xe44ffa		488b9190000000		MOVQ 0x90(CX), DX							
  vehservice.go:248	0xe45001		48895048		MOVQ DX, 0x48(AX)							
  vehservice.go:252	0xe45005		488b5128		MOVQ 0x28(CX), DX							
  vehservice.go:252	0xe45009		488b7120		MOVQ 0x20(CX), SI							
  vehservice.go:252	0xe4500d		4883fa05		CMPQ DX, $__subsystem__+2(SB)						
  vehservice.go:259	0xe45011		7f59			JG 0xe4506c								
  vehservice.go:255	0xe45013		4883fa04		CMPQ DX, $__subsystem__+1(SB)						
  vehservice.go:255	0xe45017		7527			JNE 0xe45040								
  vehservice.go:255	0xe45019		813e62757379		CMPL 0(SI), $0x79737562							
  vehservice.go:255	0xe4501f		90			NOPL									
  vehservice.go:255	0xe45020		747c			JE 0xe4509e								
  vehservice.go:253	0xe45022		813e69646c65		CMPL 0(SI), $0x656c6469							
  vehservice.go:253	0xe45028		0f8597000000		JNE 0xe450c5								
  vehservice.go:254	0xe4502e		48c7402000000000	MOVQ $0x0, 0x20(AX)							
  vehservice.go:254	0xe45036		e98a000000		JMP 0xe450c5								
  vehservice.go:254	0xe4503b		0f1f440000		NOPL 0(AX)(AX*1)							
  vehservice.go:252	0xe45040		4883fa05		CMPQ DX, $__subsystem__+2(SB)						
  vehservice.go:259	0xe45044		757f			JNE 0xe450c5								
  vehservice.go:259	0xe45046		813e6572726f		CMPL 0(SI), $0x6f727265							
  vehservice.go:259	0xe4504c		7506			JNE 0xe45054								
  vehservice.go:259	0xe4504e		807e0472		CMPB 0x4(SI), $.file+37(SB)						
  vehservice.go:259	0xe45052		740e			JE 0xe45062								
  vehservice.go:259	0xe45054		813e6661756c		CMPL 0(SI), $0x6c756166							
  vehservice.go:259	0xe4505a		7569			JNE 0xe450c5								
  vehservice.go:259	0xe4505c		807e0474		CMPB 0x4(SI), $.file+39(SB)						
  vehservice.go:259	0xe45060		7563			JNE 0xe450c5								
  vehservice.go:260	0xe45062		48c7402003000000	MOVQ $__subsystem__(SB), 0x20(AX)					
  vehservice.go:260	0xe4506a		eb59			JMP 0xe450c5								
  vehservice.go:255	0xe4506c		4883fa07		CMPQ DX, $__major_os_version__+1(SB)					
  vehservice.go:255	0xe45070		7536			JNE 0xe450a8								
  vehservice.go:255	0xe45072		813e72756e6e		CMPL 0(SI), $0x6e6e7572							
  vehservice.go:255	0xe45078		750e			JNE 0xe45088								
  vehservice.go:255	0xe4507a		66817e04696e		CMPW 0x4(SI), $.file+1434(SB)						
  vehservice.go:255	0xe45080		7506			JNE 0xe45088								
  vehservice.go:255	0xe45082		807e0667		CMPB 0x6(SI), $.file+26(SB)						
  vehservice.go:255	0xe45086		7416			JE 0xe4509e								
  vehservice.go:255	0xe45088		813e776f726b		CMPL 0(SI), $0x6b726f77							
  vehservice.go:255	0xe4508e		7535			JNE 0xe450c5								
  vehservice.go:255	0xe45090		66817e04696e		CMPW 0x4(SI), $.file+1434(SB)						
  vehservice.go:255	0xe45096		752d			JNE 0xe450c5								
  vehservice.go:255	0xe45098		807e0667		CMPB 0x6(SI), $.file+26(SB)						
  vehservice.go:255	0xe4509c		7527			JNE 0xe450c5								
  vehservice.go:256	0xe4509e		48c7402001000000	MOVQ $__minor_os_version__(SB), 0x20(AX)				
  vehservice.go:256	0xe450a6		eb1d			JMP 0xe450c5								
  vehservice.go:257	0xe450a8		4883fa08		CMPQ DX, $__major_os_version__+2(SB)					
  vehservice.go:257	0xe450ac		7517			JNE 0xe450c5								
  vehservice.go:257	0xe450ae		48ba6368617267696e67	MOVQ $0x676e696772616863, DX						
  vehservice.go:257	0xe450b8		483916			CMPQ 0(SI), DX								
  vehservice.go:257	0xe450bb		7508			JNE 0xe450c5								
  vehservice.go:258	0xe450bd		48c7402002000000	MOVQ $__minor_os_version__+1(SB), 0x20(AX)				
  vehservice.go:266	0xe450c5		488b5950		MOVQ 0x50(CX), BX							
  vehservice.go:266	0xe450c9		4885db			TESTQ BX, BX								
  vehservice.go:266	0xe450cc		742a			JE 0xe450f8								
  vehservice.go:235	0xe450ce		4889442410		MOVQ AX, 0x10(SP)							
  vehservice.go:266	0xe450d3		488b4148		MOVQ 0x48(CX), AX							
  vehservice.go:267	0xe450d7		e8c4616aff		CALL strconv.Atoi(SB)							
  vehservice.go:267	0xe450dc		0f1f4000		NOPL 0(AX)								
  vehservice.go:267	0xe450e0		4885db			TESTQ BX, BX								
  vehservice.go:267	0xe450e3		7407			JE 0xe450ec								
  vehservice.go:272	0xe450e5		488b4c2410		MOVQ 0x10(SP), CX							
  vehservice.go:267	0xe450ea		eb09			JMP 0xe450f5								
  vehservice.go:268	0xe450ec		488b4c2410		MOVQ 0x10(SP), CX							
  vehservice.go:268	0xe450f1		48894150		MOVQ AX, 0x50(CX)							
  vehservice.go:272	0xe450f5		4889c8			MOVQ CX, AX								
  vehservice.go:272	0xe450f8		4883c418		ADDQ $__major_os_version__+18(SB), SP					
  vehservice.go:272	0xe450fc		5d			POPQ BP									
  vehservice.go:272	0xe450fd		c3			RET									
  vehservice.go:234	0xe450fe		4889442408		MOVQ AX, 0x8(SP)							
  vehservice.go:234	0xe45103		48895c2410		MOVQ BX, 0x10(SP)							
  vehservice.go:234	0xe45108		e8d31363ff		CALL runtime.morestack_noctxt.abi0(SB)					
  vehservice.go:234	0xe4510d		488b442408		MOVQ 0x8(SP), AX							
  vehservice.go:234	0xe45112		488b5c2410		MOVQ 0x10(SP), BX							
  vehservice.go:234	0xe45117		e904feffff		JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).convertToForklift(SB)	
  :-1			0xe4511c		cc			INT $__subsystem__(SB)							
  :-1			0xe4511d		cc			INT $__subsystem__(SB)							
  :-1			0xe4511e		cc			INT $__subsystem__(SB)							
  :-1			0xe4511f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).MarkVehicleOnTask(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:276	0xe45120		493b6610		CMPQ SP, 0x10(R14)									
  vehservice.go:276	0xe45124		0f86cc000000		JBE 0xe451f6										
  vehservice.go:276	0xe4512a		55			PUSHQ BP										
  vehservice.go:276	0xe4512b		4889e5			MOVQ SP, BP										
  vehservice.go:276	0xe4512e		4883ec48		SUBQ $__major_os_version__+66(SB), SP							
  vehservice.go:276	0xe45132		66440fd67c2440		MOVQ X15, 0x40(SP)									
  vehservice.go:280	0xe45139		4889442458		MOVQ AX, 0x58(SP)									
  vehservice.go:280	0xe4513e		48897c2470		MOVQ DI, 0x70(SP)									
  vehservice.go:280	0xe45143		48895c2460		MOVQ BX, 0x60(SP)									
  vehservice.go:280	0xe45148		48894c2468		MOVQ CX, 0x68(SP)									
  vehservice.go:276	0xe4514d		c644242700		MOVB $0x0, 0x27(SP)									
  vehservice.go:277	0xe45152		8400			TESTB AL, 0(AX)										
  vehservice.go:277	0xe45154		488d5018		LEAQ 0x18(AX), DX									
  vehservice.go:277	0xe45158		4889542428		MOVQ DX, 0x28(SP)									
  vehservice.go:277	0xe4515d		4889d0			MOVQ DX, AX										
  vehservice.go:277	0xe45160		e85b3d64ff		CALL sync.(*RWMutex).Lock(SB)								
  vehservice.go:278	0xe45165		488d0dd4000000		LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).MarkVehicleOnTask.deferwrap1(SB), CX	
  vehservice.go:278	0xe4516c		48894c2430		MOVQ CX, 0x30(SP)									
  vehservice.go:278	0xe45171		488b4c2428		MOVQ 0x28(SP), CX									
  vehservice.go:278	0xe45176		48894c2438		MOVQ CX, 0x38(SP)									
  vehservice.go:278	0xe4517b		488d4c2430		LEAQ 0x30(SP), CX									
  vehservice.go:278	0xe45180		48894c2440		MOVQ CX, 0x40(SP)									
  vehservice.go:278	0xe45185		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)						
  vehservice.go:279	0xe4518a		488b4c2458		MOVQ 0x58(SP), CX									
  vehservice.go:279	0xe4518f		488b5930		MOVQ 0x30(CX), BX									
  vehservice.go:279	0xe45193		488d05a6842300		LEAQ runtime.types+624192(SB), AX							
  vehservice.go:279	0xe4519a		488b4c2460		MOVQ 0x60(SP), CX									
  vehservice.go:279	0xe4519f		488b7c2468		MOVQ 0x68(SP), DI									
  vehservice.go:279	0xe451a4		e8978a62ff		CALL runtime.mapaccess2_faststr(SB)							
  vehservice.go:279	0xe451a9		84db			TESTL BL, BL										
  vehservice.go:280	0xe451ab		7429			JE 0xe451d6										
  vehservice.go:279	0xe451ad		488b00			MOVQ 0(AX), AX										
  vehservice.go:283	0xe451b0		48c7402001000000	MOVQ $__minor_os_version__(SB), 0x20(AX)						
  vehservice.go:284	0xe451b8		488b4c2470		MOVQ 0x70(SP), CX									
  vehservice.go:284	0xe451bd		48894850		MOVQ CX, 0x50(AX)									
  vehservice.go:285	0xe451c1		c644242700		MOVB $0x0, 0x27(SP)									
  vehservice.go:285	0xe451c6		488b542440		MOVQ 0x40(SP), DX									
  vehservice.go:285	0xe451cb		488b02			MOVQ 0(DX), AX										
  vehservice.go:285	0xe451ce		ffd0			CALL AX											
  vehservice.go:285	0xe451d0		4883c448		ADDQ $__major_os_version__+66(SB), SP							
  vehservice.go:285	0xe451d4		5d			POPQ BP											
  vehservice.go:285	0xe451d5		c3			RET											
  vehservice.go:281	0xe451d6		c644242700		MOVB $0x0, 0x27(SP)									
  vehservice.go:281	0xe451db		488b542440		MOVQ 0x40(SP), DX									
  vehservice.go:281	0xe451e0		488b02			MOVQ 0(DX), AX										
  vehservice.go:281	0xe451e3		ffd0			CALL AX											
  vehservice.go:281	0xe451e5		4883c448		ADDQ $__major_os_version__+66(SB), SP							
  vehservice.go:281	0xe451e9		5d			POPQ BP											
  vehservice.go:281	0xe451ea		c3			RET											
  vehservice.go:281	0xe451eb		e890495fff		CALL runtime.deferreturn(SB)								
  vehservice.go:281	0xe451f0		4883c448		ADDQ $__major_os_version__+66(SB), SP							
  vehservice.go:281	0xe451f4		5d			POPQ BP											
  vehservice.go:281	0xe451f5		c3			RET											
  vehservice.go:276	0xe451f6		4889442408		MOVQ AX, 0x8(SP)									
  vehservice.go:276	0xe451fb		48895c2410		MOVQ BX, 0x10(SP)									
  vehservice.go:276	0xe45200		48894c2418		MOVQ CX, 0x18(SP)									
  vehservice.go:276	0xe45205		48897c2420		MOVQ DI, 0x20(SP)									
  vehservice.go:276	0xe4520a		e8d11263ff		CALL runtime.morestack_noctxt.abi0(SB)							
  vehservice.go:276	0xe4520f		488b442408		MOVQ 0x8(SP), AX									
  vehservice.go:276	0xe45214		488b5c2410		MOVQ 0x10(SP), BX									
  vehservice.go:276	0xe45219		488b4c2418		MOVQ 0x18(SP), CX									
  vehservice.go:276	0xe4521e		488b7c2420		MOVQ 0x20(SP), DI									
  vehservice.go:276	0xe45223		e9f8feffff		JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).MarkVehicleOnTask(SB)			
  :-1			0xe45228		cc			INT $__subsystem__(SB)									
  :-1			0xe45229		cc			INT $__subsystem__(SB)									
  :-1			0xe4522a		cc			INT $__subsystem__(SB)									
  :-1			0xe4522b		cc			INT $__subsystem__(SB)									
  :-1			0xe4522c		cc			INT $__subsystem__(SB)									
  :-1			0xe4522d		cc			INT $__subsystem__(SB)									
  :-1			0xe4522e		cc			INT $__subsystem__(SB)									
  :-1			0xe4522f		cc			INT $__subsystem__(SB)									
  :-1			0xe45230		cc			INT $__subsystem__(SB)									
  :-1			0xe45231		cc			INT $__subsystem__(SB)									
  :-1			0xe45232		cc			INT $__subsystem__(SB)									
  :-1			0xe45233		cc			INT $__subsystem__(SB)									
  :-1			0xe45234		cc			INT $__subsystem__(SB)									
  :-1			0xe45235		cc			INT $__subsystem__(SB)									
  :-1			0xe45236		cc			INT $__subsystem__(SB)									
  :-1			0xe45237		cc			INT $__subsystem__(SB)									
  :-1			0xe45238		cc			INT $__subsystem__(SB)									
  :-1			0xe45239		cc			INT $__subsystem__(SB)									
  :-1			0xe4523a		cc			INT $__subsystem__(SB)									
  :-1			0xe4523b		cc			INT $__subsystem__(SB)									
  :-1			0xe4523c		cc			INT $__subsystem__(SB)									
  :-1			0xe4523d		cc			INT $__subsystem__(SB)									
  :-1			0xe4523e		cc			INT $__subsystem__(SB)									
  :-1			0xe4523f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).MarkVehicleOnTask.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:278	0xe45240		493b6610		CMPQ SP, 0x10(R14)								
  vehservice.go:278	0xe45244		7625			JBE 0xe4526b									
  vehservice.go:278	0xe45246		55			PUSHQ BP									
  vehservice.go:278	0xe45247		4889e5			MOVQ SP, BP									
  vehservice.go:278	0xe4524a		4883ec08		SUBQ $__major_os_version__+2(SB), SP						
  vehservice.go:278	0xe4524e		4d8b6620		MOVQ 0x20(R14), R12								
  vehservice.go:278	0xe45252		4d85e4			TESTQ R12, R12									
  vehservice.go:278	0xe45255		751b			JNE 0xe45272									
  vehservice.go:278	0xe45257		488b4208		MOVQ 0x8(DX), AX								
  vehservice.go:278	0xe4525b		0f1f440000		NOPL 0(AX)(AX*1)								
  vehservice.go:278	0xe45260		e8bb3d64ff		CALL sync.(*RWMutex).Unlock(SB)							
  vehservice.go:278	0xe45265		4883c408		ADDQ $__major_os_version__+2(SB), SP						
  vehservice.go:278	0xe45269		5d			POPQ BP										
  vehservice.go:278	0xe4526a		c3			RET										
  vehservice.go:278	0xe4526b		e8f01163ff		CALL runtime.morestack.abi0(SB)							
  vehservice.go:278	0xe45270		ebce			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).MarkVehicleOnTask.deferwrap1(SB)	
  vehservice.go:278	0xe45272		4c8d6c2418		LEAQ 0x18(SP), R13								
  vehservice.go:278	0xe45277		4d392c24		CMPQ 0(R12), R13								
  vehservice.go:278	0xe4527b		75da			JNE 0xe45257									
  vehservice.go:278	0xe4527d		49892424		MOVQ SP, 0(R12)									
  vehservice.go:278	0xe45281		ebd4			JMP 0xe45257									
  :-1			0xe45283		cc			INT $__subsystem__(SB)								
  :-1			0xe45284		cc			INT $__subsystem__(SB)								
  :-1			0xe45285		cc			INT $__subsystem__(SB)								
  :-1			0xe45286		cc			INT $__subsystem__(SB)								
  :-1			0xe45287		cc			INT $__subsystem__(SB)								
  :-1			0xe45288		cc			INT $__subsystem__(SB)								
  :-1			0xe45289		cc			INT $__subsystem__(SB)								
  :-1			0xe4528a		cc			INT $__subsystem__(SB)								
  :-1			0xe4528b		cc			INT $__subsystem__(SB)								
  :-1			0xe4528c		cc			INT $__subsystem__(SB)								
  :-1			0xe4528d		cc			INT $__subsystem__(SB)								
  :-1			0xe4528e		cc			INT $__subsystem__(SB)								
  :-1			0xe4528f		cc			INT $__subsystem__(SB)								
  :-1			0xe45290		cc			INT $__subsystem__(SB)								
  :-1			0xe45291		cc			INT $__subsystem__(SB)								
  :-1			0xe45292		cc			INT $__subsystem__(SB)								
  :-1			0xe45293		cc			INT $__subsystem__(SB)								
  :-1			0xe45294		cc			INT $__subsystem__(SB)								
  :-1			0xe45295		cc			INT $__subsystem__(SB)								
  :-1			0xe45296		cc			INT $__subsystem__(SB)								
  :-1			0xe45297		cc			INT $__subsystem__(SB)								
  :-1			0xe45298		cc			INT $__subsystem__(SB)								
  :-1			0xe45299		cc			INT $__subsystem__(SB)								
  :-1			0xe4529a		cc			INT $__subsystem__(SB)								
  :-1			0xe4529b		cc			INT $__subsystem__(SB)								
  :-1			0xe4529c		cc			INT $__subsystem__(SB)								
  :-1			0xe4529d		cc			INT $__subsystem__(SB)								
  :-1			0xe4529e		cc			INT $__subsystem__(SB)								
  :-1			0xe4529f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).ClearVehicleTask(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:288	0xe452a0		493b6610		CMPQ SP, 0x10(R14)									
  vehservice.go:288	0xe452a4		0f86cb000000		JBE 0xe45375										
  vehservice.go:288	0xe452aa		55			PUSHQ BP										
  vehservice.go:288	0xe452ab		4889e5			MOVQ SP, BP										
  vehservice.go:288	0xe452ae		4883ec48		SUBQ $__major_os_version__+66(SB), SP							
  vehservice.go:288	0xe452b2		66440fd67c2440		MOVQ X15, 0x40(SP)									
  vehservice.go:292	0xe452b9		4889442458		MOVQ AX, 0x58(SP)									
  vehservice.go:292	0xe452be		48895c2460		MOVQ BX, 0x60(SP)									
  vehservice.go:292	0xe452c3		48894c2468		MOVQ CX, 0x68(SP)									
  vehservice.go:288	0xe452c8		c644242700		MOVB $0x0, 0x27(SP)									
  vehservice.go:289	0xe452cd		8400			TESTB AL, 0(AX)										
  vehservice.go:289	0xe452cf		488d5018		LEAQ 0x18(AX), DX									
  vehservice.go:289	0xe452d3		4889542428		MOVQ DX, 0x28(SP)									
  vehservice.go:289	0xe452d8		4889d0			MOVQ DX, AX										
  vehservice.go:289	0xe452db		0f1f440000		NOPL 0(AX)(AX*1)									
  vehservice.go:289	0xe452e0		e8db3b64ff		CALL sync.(*RWMutex).Lock(SB)								
  vehservice.go:290	0xe452e5		488d0db4000000		LEAQ CAS-Backend/pkg/diapdu.(*ForkliftUpdater).ClearVehicleTask.deferwrap1(SB), CX	
  vehservice.go:290	0xe452ec		48894c2430		MOVQ CX, 0x30(SP)									
  vehservice.go:290	0xe452f1		488b4c2428		MOVQ 0x28(SP), CX									
  vehservice.go:290	0xe452f6		48894c2438		MOVQ CX, 0x38(SP)									
  vehservice.go:290	0xe452fb		488d4c2430		LEAQ 0x30(SP), CX									
  vehservice.go:290	0xe45300		48894c2440		MOVQ CX, 0x40(SP)									
  vehservice.go:290	0xe45305		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)						
  vehservice.go:291	0xe4530a		488b4c2458		MOVQ 0x58(SP), CX									
  vehservice.go:291	0xe4530f		488b5930		MOVQ 0x30(CX), BX									
  vehservice.go:291	0xe45313		488d0526832300		LEAQ runtime.types+624192(SB), AX							
  vehservice.go:291	0xe4531a		488b4c2460		MOVQ 0x60(SP), CX									
  vehservice.go:291	0xe4531f		488b7c2468		MOVQ 0x68(SP), DI									
  vehservice.go:291	0xe45324		e8178962ff		CALL runtime.mapaccess2_faststr(SB)							
  vehservice.go:291	0xe45329		84db			TESTL BL, BL										
  vehservice.go:292	0xe4532b		7428			JE 0xe45355										
  vehservice.go:291	0xe4532d		488b00			MOVQ 0(AX), AX										
  vehservice.go:295	0xe45330		48c7402000000000	MOVQ $0x0, 0x20(AX)									
  vehservice.go:296	0xe45338		48c7405000000000	MOVQ $0x0, 0x50(AX)									
  vehservice.go:297	0xe45340		c644242700		MOVB $0x0, 0x27(SP)									
  vehservice.go:297	0xe45345		488b542440		MOVQ 0x40(SP), DX									
  vehservice.go:297	0xe4534a		488b02			MOVQ 0(DX), AX										
  vehservice.go:297	0xe4534d		ffd0			CALL AX											
  vehservice.go:297	0xe4534f		4883c448		ADDQ $__major_os_version__+66(SB), SP							
  vehservice.go:297	0xe45353		5d			POPQ BP											
  vehservice.go:297	0xe45354		c3			RET											
  vehservice.go:293	0xe45355		c644242700		MOVB $0x0, 0x27(SP)									
  vehservice.go:293	0xe4535a		488b542440		MOVQ 0x40(SP), DX									
  vehservice.go:293	0xe4535f		488b02			MOVQ 0(DX), AX										
  vehservice.go:293	0xe45362		ffd0			CALL AX											
  vehservice.go:293	0xe45364		4883c448		ADDQ $__major_os_version__+66(SB), SP							
  vehservice.go:293	0xe45368		5d			POPQ BP											
  vehservice.go:293	0xe45369		c3			RET											
  vehservice.go:293	0xe4536a		e811485fff		CALL runtime.deferreturn(SB)								
  vehservice.go:293	0xe4536f		4883c448		ADDQ $__major_os_version__+66(SB), SP							
  vehservice.go:293	0xe45373		5d			POPQ BP											
  vehservice.go:293	0xe45374		c3			RET											
  vehservice.go:288	0xe45375		4889442408		MOVQ AX, 0x8(SP)									
  vehservice.go:288	0xe4537a		48895c2410		MOVQ BX, 0x10(SP)									
  vehservice.go:288	0xe4537f		48894c2418		MOVQ CX, 0x18(SP)									
  vehservice.go:288	0xe45384		e8571163ff		CALL runtime.morestack_noctxt.abi0(SB)							
  vehservice.go:288	0xe45389		488b442408		MOVQ 0x8(SP), AX									
  vehservice.go:288	0xe4538e		488b5c2410		MOVQ 0x10(SP), BX									
  vehservice.go:288	0xe45393		488b4c2418		MOVQ 0x18(SP), CX									
  vehservice.go:288	0xe45398		e903ffffff		JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).ClearVehicleTask(SB)			
  :-1			0xe4539d		cc			INT $__subsystem__(SB)									
  :-1			0xe4539e		cc			INT $__subsystem__(SB)									
  :-1			0xe4539f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*ForkliftUpdater).ClearVehicleTask.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/vehservice.go
  vehservice.go:290	0xe453a0		493b6610		CMPQ SP, 0x10(R14)								
  vehservice.go:290	0xe453a4		7625			JBE 0xe453cb									
  vehservice.go:290	0xe453a6		55			PUSHQ BP									
  vehservice.go:290	0xe453a7		4889e5			MOVQ SP, BP									
  vehservice.go:290	0xe453aa		4883ec08		SUBQ $__major_os_version__+2(SB), SP						
  vehservice.go:290	0xe453ae		4d8b6620		MOVQ 0x20(R14), R12								
  vehservice.go:290	0xe453b2		4d85e4			TESTQ R12, R12									
  vehservice.go:290	0xe453b5		751b			JNE 0xe453d2									
  vehservice.go:290	0xe453b7		488b4208		MOVQ 0x8(DX), AX								
  vehservice.go:290	0xe453bb		0f1f440000		NOPL 0(AX)(AX*1)								
  vehservice.go:290	0xe453c0		e85b3c64ff		CALL sync.(*RWMutex).Unlock(SB)							
  vehservice.go:290	0xe453c5		4883c408		ADDQ $__major_os_version__+2(SB), SP						
  vehservice.go:290	0xe453c9		5d			POPQ BP										
  vehservice.go:290	0xe453ca		c3			RET										
  vehservice.go:290	0xe453cb		e8901063ff		CALL runtime.morestack.abi0(SB)							
  vehservice.go:290	0xe453d0		ebce			JMP CAS-Backend/pkg/diapdu.(*ForkliftUpdater).ClearVehicleTask.deferwrap1(SB)	
  vehservice.go:290	0xe453d2		4c8d6c2418		LEAQ 0x18(SP), R13								
  vehservice.go:290	0xe453d7		4d392c24		CMPQ 0(R12), R13								
  vehservice.go:290	0xe453db		75da			JNE 0xe453b7									
  vehservice.go:290	0xe453dd		49892424		MOVQ SP, 0(R12)									
  vehservice.go:290	0xe453e1		ebd4			JMP 0xe453b7									
  :-1			0xe453e3		cc			INT $__subsystem__(SB)								
  :-1			0xe453e4		cc			INT $__subsystem__(SB)								
  :-1			0xe453e5		cc			INT $__subsystem__(SB)								
  :-1			0xe453e6		cc			INT $__subsystem__(SB)								
  :-1			0xe453e7		cc			INT $__subsystem__(SB)								
  :-1			0xe453e8		cc			INT $__subsystem__(SB)								
  :-1			0xe453e9		cc			INT $__subsystem__(SB)								
  :-1			0xe453ea		cc			INT $__subsystem__(SB)								
  :-1			0xe453eb		cc			INT $__subsystem__(SB)								
  :-1			0xe453ec		cc			INT $__subsystem__(SB)								
  :-1			0xe453ed		cc			INT $__subsystem__(SB)								
  :-1			0xe453ee		cc			INT $__subsystem__(SB)								
  :-1			0xe453ef		cc			INT $__subsystem__(SB)								
  :-1			0xe453f0		cc			INT $__subsystem__(SB)								
  :-1			0xe453f1		cc			INT $__subsystem__(SB)								
  :-1			0xe453f2		cc			INT $__subsystem__(SB)								
  :-1			0xe453f3		cc			INT $__subsystem__(SB)								
  :-1			0xe453f4		cc			INT $__subsystem__(SB)								
  :-1			0xe453f5		cc			INT $__subsystem__(SB)								
  :-1			0xe453f6		cc			INT $__subsystem__(SB)								
  :-1			0xe453f7		cc			INT $__subsystem__(SB)								
  :-1			0xe453f8		cc			INT $__subsystem__(SB)								
  :-1			0xe453f9		cc			INT $__subsystem__(SB)								
  :-1			0xe453fa		cc			INT $__subsystem__(SB)								
  :-1			0xe453fb		cc			INT $__subsystem__(SB)								
  :-1			0xe453fc		cc			INT $__subsystem__(SB)								
  :-1			0xe453fd		cc			INT $__subsystem__(SB)								
  :-1			0xe453fe		cc			INT $__subsystem__(SB)								
  :-1			0xe453ff		cc			INT $__subsystem__(SB)								

