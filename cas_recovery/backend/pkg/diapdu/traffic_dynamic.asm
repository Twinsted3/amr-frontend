TEXT CAS-Backend/pkg/diapdu.SetGlobalDynamicTraffic(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:77	0xe37e00		493b6610		CMPQ SP, 0x10(R14)						
  traffic_dynamic.go:77	0xe37e04		765b			JBE 0xe37e61							
  traffic_dynamic.go:77	0xe37e06		55			PUSHQ BP							
  traffic_dynamic.go:77	0xe37e07		4889e5			MOVQ SP, BP							
  traffic_dynamic.go:77	0xe37e0a		4883ec08		SUBQ $__major_os_version__+2(SB), SP				
  traffic_dynamic.go:81	0xe37e0e		4889442418		MOVQ AX, 0x18(SP)						
  traffic_dynamic.go:78	0xe37e13		488d05865d7202		LEAQ CAS-Backend/pkg/diapdu.globalDynTrafficMu(SB), AX		
  traffic_dynamic.go:78	0xe37e1a		e8a11065ff		CALL sync.(*RWMutex).Lock(SB)					
  traffic_dynamic.go:79	0xe37e1f		833d2a5d720200		CMPL runtime.writeBarrier(SB), $0x0				
  traffic_dynamic.go:79	0xe37e26		7507			JNE 0xe37e2f							
  traffic_dynamic.go:79	0xe37e28		488b4c2418		MOVQ 0x18(SP), CX						
  traffic_dynamic.go:79	0xe37e2d		eb18			JMP 0xe37e47							
  traffic_dynamic.go:79	0xe37e2f		e80c0664ff		CALL runtime.gcWriteBarrier2(SB)				
  traffic_dynamic.go:79	0xe37e34		488b4c2418		MOVQ 0x18(SP), CX						
  traffic_dynamic.go:79	0xe37e39		49890b			MOVQ CX, 0(R11)							
  traffic_dynamic.go:79	0xe37e3c		488b151da26d02		MOVQ CAS-Backend/pkg/diapdu.globalDynamicTraffic(SB), DX	
  traffic_dynamic.go:79	0xe37e43		49895308		MOVQ DX, 0x8(R11)						
  traffic_dynamic.go:79	0xe37e47		48890d12a26d02		MOVQ CX, CAS-Backend/pkg/diapdu.globalDynamicTraffic(SB)	
  traffic_dynamic.go:80	0xe37e4e		488d054b5d7202		LEAQ CAS-Backend/pkg/diapdu.globalDynTrafficMu(SB), AX		
  traffic_dynamic.go:80	0xe37e55		e8c61165ff		CALL sync.(*RWMutex).Unlock(SB)					
  traffic_dynamic.go:81	0xe37e5a		4883c408		ADDQ $__major_os_version__+2(SB), SP				
  traffic_dynamic.go:81	0xe37e5e		5d			POPQ BP								
  traffic_dynamic.go:81	0xe37e5f		90			NOPL								
  traffic_dynamic.go:81	0xe37e60		c3			RET								
  traffic_dynamic.go:77	0xe37e61		4889442408		MOVQ AX, 0x8(SP)						
  traffic_dynamic.go:77	0xe37e66		e875e663ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_dynamic.go:77	0xe37e6b		488b442408		MOVQ 0x8(SP), AX						
  traffic_dynamic.go:77	0xe37e70		eb8e			JMP CAS-Backend/pkg/diapdu.SetGlobalDynamicTraffic(SB)		
  :-1			0xe37e72		cc			INT $__subsystem__(SB)						
  :-1			0xe37e73		cc			INT $__subsystem__(SB)						
  :-1			0xe37e74		cc			INT $__subsystem__(SB)						
  :-1			0xe37e75		cc			INT $__subsystem__(SB)						
  :-1			0xe37e76		cc			INT $__subsystem__(SB)						
  :-1			0xe37e77		cc			INT $__subsystem__(SB)						
  :-1			0xe37e78		cc			INT $__subsystem__(SB)						
  :-1			0xe37e79		cc			INT $__subsystem__(SB)						
  :-1			0xe37e7a		cc			INT $__subsystem__(SB)						
  :-1			0xe37e7b		cc			INT $__subsystem__(SB)						
  :-1			0xe37e7c		cc			INT $__subsystem__(SB)						
  :-1			0xe37e7d		cc			INT $__subsystem__(SB)						
  :-1			0xe37e7e		cc			INT $__subsystem__(SB)						
  :-1			0xe37e7f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:84	0xe37e80		493b6610		CMPQ SP, 0x10(R14)							
  traffic_dynamic.go:84	0xe37e84		0f86a6000000		JBE 0xe37f30								
  traffic_dynamic.go:84	0xe37e8a		55			PUSHQ BP								
  traffic_dynamic.go:84	0xe37e8b		4889e5			MOVQ SP, BP								
  traffic_dynamic.go:84	0xe37e8e		4883ec40		SUBQ $__major_os_version__+58(SB), SP					
  traffic_dynamic.go:84	0xe37e92		66440fd67c2438		MOVQ X15, 0x38(SP)							
  traffic_dynamic.go:84	0xe37e99		c644241f00		MOVB $0x0, 0x1f(SP)							
  traffic_dynamic.go:84	0xe37e9e		48c744242000000000	MOVQ $0x0, 0x20(SP)							
  traffic_dynamic.go:85	0xe37ea7		90			NOPL									
  type.go:88		0xe37ea8		be01000000		MOVL $__minor_os_version__(SB), SI					
  type.go:88		0xe37ead		488d3dfc5c7202		LEAQ CAS-Backend/pkg/diapdu.globalDynTrafficMu+16(SB), DI		
  type.go:88		0xe37eb4		f00fc137		LOCK XADDL SI, 0(DI)							
  type.go:88		0xe37eb8		ffc6			INCL SI									
  rwmutex.go:70		0xe37eba		85f6			TESTL SI, SI								
  rwmutex.go:70		0xe37ebc		7d10			JGE 0xe37ece								
  rwmutex.go:72		0xe37ebe		488d05e75c7202		LEAQ CAS-Backend/pkg/diapdu.globalDynTrafficMu+12(SB), AX		
  rwmutex.go:72		0xe37ec5		31db			XORL BX, BX								
  rwmutex.go:72		0xe37ec7		31c9			XORL CX, CX								
  rwmutex.go:72		0xe37ec9		e8929663ff		CALL sync.runtime_SemacquireRWMutexR(SB)				
  traffic_dynamic.go:86	0xe37ece		488d056b000000		LEAQ CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic.deferwrap1(SB), AX	
  traffic_dynamic.go:86	0xe37ed5		4889442428		MOVQ AX, 0x28(SP)							
  traffic_dynamic.go:86	0xe37eda		488d05bf5c7202		LEAQ CAS-Backend/pkg/diapdu.globalDynTrafficMu(SB), AX			
  traffic_dynamic.go:86	0xe37ee1		4889442430		MOVQ AX, 0x30(SP)							
  traffic_dynamic.go:86	0xe37ee6		488d442428		LEAQ 0x28(SP), AX							
  traffic_dynamic.go:86	0xe37eeb		4889442438		MOVQ AX, 0x38(SP)							
  traffic_dynamic.go:86	0xe37ef0		c644241f01		MOVB $__minor_os_version__(SB), 0x1f(SP)				
  traffic_dynamic.go:87	0xe37ef5		488b0564a16d02		MOVQ CAS-Backend/pkg/diapdu.globalDynamicTraffic(SB), AX		
  traffic_dynamic.go:87	0xe37efc		4889442420		MOVQ AX, 0x20(SP)							
  traffic_dynamic.go:87	0xe37f01		c644241f00		MOVB $0x0, 0x1f(SP)							
  traffic_dynamic.go:87	0xe37f06		488b542438		MOVQ 0x38(SP), DX							
  traffic_dynamic.go:87	0xe37f0b		488b02			MOVQ 0(DX), AX								
  traffic_dynamic.go:87	0xe37f0e		ffd0			CALL AX									
  traffic_dynamic.go:87	0xe37f10		488b442420		MOVQ 0x20(SP), AX							
  traffic_dynamic.go:87	0xe37f15		4883c440		ADDQ $__major_os_version__+58(SB), SP					
  traffic_dynamic.go:87	0xe37f19		5d			POPQ BP									
  traffic_dynamic.go:87	0xe37f1a		c3			RET									
  traffic_dynamic.go:87	0xe37f1b		0f1f440000		NOPL 0(AX)(AX*1)							
  traffic_dynamic.go:87	0xe37f20		e85b1c60ff		CALL runtime.deferreturn(SB)						
  traffic_dynamic.go:87	0xe37f25		488b442420		MOVQ 0x20(SP), AX							
  traffic_dynamic.go:87	0xe37f2a		4883c440		ADDQ $__major_os_version__+58(SB), SP					
  traffic_dynamic.go:87	0xe37f2e		5d			POPQ BP									
  traffic_dynamic.go:87	0xe37f2f		c3			RET									
  traffic_dynamic.go:84	0xe37f30		e8abe563ff		CALL runtime.morestack_noctxt.abi0(SB)					
  traffic_dynamic.go:84	0xe37f35		e946ffffff		JMP CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic(SB)			
  :-1			0xe37f3a		cc			INT $__subsystem__(SB)							
  :-1			0xe37f3b		cc			INT $__subsystem__(SB)							
  :-1			0xe37f3c		cc			INT $__subsystem__(SB)							
  :-1			0xe37f3d		cc			INT $__subsystem__(SB)							
  :-1			0xe37f3e		cc			INT $__subsystem__(SB)							
  :-1			0xe37f3f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:86	0xe37f40		493b6610		CMPQ SP, 0x10(R14)							
  traffic_dynamic.go:86	0xe37f44		7630			JBE 0xe37f76								
  traffic_dynamic.go:86	0xe37f46		55			PUSHQ BP								
  traffic_dynamic.go:86	0xe37f47		4889e5			MOVQ SP, BP								
  traffic_dynamic.go:86	0xe37f4a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  traffic_dynamic.go:86	0xe37f4e		4d8b6620		MOVQ 0x20(R14), R12							
  traffic_dynamic.go:86	0xe37f52		4d85e4			TESTQ R12, R12								
  traffic_dynamic.go:86	0xe37f55		7526			JNE 0xe37f7d								
  traffic_dynamic.go:86	0xe37f57		488b4208		MOVQ 0x8(DX), AX							
  rwmutex.go:118	0xe37f5b		bbffffffff		MOVL $-0x1, BX								
  rwmutex.go:118	0xe37f60		f00fc15810		LOCK XADDL BX, 0x10(AX)							
  type.go:88		0xe37f65		ffcb			DECL BX									
  rwmutex.go:118	0xe37f67		85db			TESTL BX, BX								
  rwmutex.go:118	0xe37f69		7d05			JGE 0xe37f70								
  rwmutex.go:120	0xe37f6b		e8d00e65ff		CALL sync.(*RWMutex).rUnlockSlow(SB)					
  traffic_dynamic.go:86	0xe37f70		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  traffic_dynamic.go:86	0xe37f74		5d			POPQ BP									
  traffic_dynamic.go:86	0xe37f75		c3			RET									
  traffic_dynamic.go:86	0xe37f76		e8e5e463ff		CALL runtime.morestack.abi0(SB)						
  traffic_dynamic.go:86	0xe37f7b		ebc3			JMP CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic.deferwrap1(SB)	
  traffic_dynamic.go:86	0xe37f7d		4c8d6c2420		LEAQ 0x20(SP), R13							
  traffic_dynamic.go:86	0xe37f82		4d392c24		CMPQ 0(R12), R13							
  traffic_dynamic.go:86	0xe37f86		75cf			JNE 0xe37f57								
  traffic_dynamic.go:86	0xe37f88		49892424		MOVQ SP, 0(R12)								
  traffic_dynamic.go:86	0xe37f8c		ebc9			JMP 0xe37f57								
  :-1			0xe37f8e		cc			INT $__subsystem__(SB)							
  :-1			0xe37f8f		cc			INT $__subsystem__(SB)							
  :-1			0xe37f90		cc			INT $__subsystem__(SB)							
  :-1			0xe37f91		cc			INT $__subsystem__(SB)							
  :-1			0xe37f92		cc			INT $__subsystem__(SB)							
  :-1			0xe37f93		cc			INT $__subsystem__(SB)							
  :-1			0xe37f94		cc			INT $__subsystem__(SB)							
  :-1			0xe37f95		cc			INT $__subsystem__(SB)							
  :-1			0xe37f96		cc			INT $__subsystem__(SB)							
  :-1			0xe37f97		cc			INT $__subsystem__(SB)							
  :-1			0xe37f98		cc			INT $__subsystem__(SB)							
  :-1			0xe37f99		cc			INT $__subsystem__(SB)							
  :-1			0xe37f9a		cc			INT $__subsystem__(SB)							
  :-1			0xe37f9b		cc			INT $__subsystem__(SB)							
  :-1			0xe37f9c		cc			INT $__subsystem__(SB)							
  :-1			0xe37f9d		cc			INT $__subsystem__(SB)							
  :-1			0xe37f9e		cc			INT $__subsystem__(SB)							
  :-1			0xe37f9f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.HandleMonitorPush(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:99		0xe37fa0		493b6610		CMPQ SP, 0x10(R14)								
  traffic_dynamic.go:99		0xe37fa4		0f8600010000		JBE 0xe380aa									
  traffic_dynamic.go:99		0xe37faa		55			PUSHQ BP									
  traffic_dynamic.go:99		0xe37fab		4889e5			MOVQ SP, BP									
  traffic_dynamic.go:99		0xe37fae		4883ec28		SUBQ $__major_os_version__+34(SB), SP						
  traffic_dynamic.go:99		0xe37fb2		4889442438		MOVQ AX, 0x38(SP)								
  traffic_dynamic.go:99		0xe37fb7		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_dynamic.go:100	0xe37fc0		4885db			TESTQ BX, BX									
  traffic_dynamic.go:100	0xe37fc3		0f84db000000		JE 0xe380a4									
  traffic_dynamic.go:92		0xe37fc9		4885c9			TESTQ CX, CX									
  traffic_dynamic.go:92		0xe37fcc		0f84d2000000		JE 0xe380a4									
  traffic_dynamic.go:95		0xe37fd2		4883795800		CMPQ 0x58(CX), $0x0								
  traffic_dynamic.go:95		0xe37fd7		751b			JNE 0xe37ff4									
  traffic_dynamic.go:95		0xe37fd9		4883794800		CMPQ 0x48(CX), $0x0								
  traffic_dynamic.go:95		0xe37fde		6690			NOPW										
  traffic_dynamic.go:95		0xe37fe0		7512			JNE 0xe37ff4									
  traffic_dynamic.go:95		0xe37fe2		4883793800		CMPQ 0x38(CX), $0x0								
  traffic_dynamic.go:95		0xe37fe7		750b			JNE 0xe37ff4									
  traffic_dynamic.go:95		0xe37fe9		4883790800		CMPQ 0x8(CX), $0x0								
  traffic_dynamic.go:100	0xe37fee		0f84b0000000		JE 0xe380a4									
  traffic_dynamic.go:100	0xe37ff4		48894c2448		MOVQ CX, 0x48(SP)								
  traffic_dynamic.go:100	0xe37ff9		48895c2440		MOVQ BX, 0x40(SP)								
  traffic_dynamic.go:100	0xe37ffe		4889442438		MOVQ AX, 0x38(SP)								
  traffic_dynamic.go:103	0xe38003		90			NOPL										
  type.go:88			0xe38004		ba01000000		MOVL $__minor_os_version__(SB), DX						
  type.go:88			0xe38009		488d35a05b7202		LEAQ CAS-Backend/pkg/diapdu.globalDynTrafficMu+16(SB), SI			
  type.go:88			0xe38010		f00fc116		LOCK XADDL DX, 0(SI)								
  type.go:88			0xe38014		ffc2			INCL DX										
  rwmutex.go:70			0xe38016		85d2			TESTL DX, DX									
  rwmutex.go:70			0xe38018		7d26			JGE 0xe38040									
  rwmutex.go:72			0xe3801a		488d058b5b7202		LEAQ CAS-Backend/pkg/diapdu.globalDynTrafficMu+12(SB), AX			
  rwmutex.go:72			0xe38021		31db			XORL BX, BX									
  rwmutex.go:72			0xe38023		31c9			XORL CX, CX									
  rwmutex.go:72			0xe38025		e8369563ff		CALL sync.runtime_SemacquireRWMutexR(SB)					
  traffic_dynamic.go:109	0xe3802a		488b442438		MOVQ 0x38(SP), AX								
  traffic_dynamic.go:109	0xe3802f		488b4c2448		MOVQ 0x48(SP), CX								
  traffic_dynamic.go:109	0xe38034		488b5c2440		MOVQ 0x40(SP), BX								
  type.go:88			0xe38039		488d35705b7202		LEAQ CAS-Backend/pkg/diapdu.globalDynTrafficMu+16(SB), SI			
  traffic_dynamic.go:104	0xe38040		488b1519a06d02		MOVQ CAS-Backend/pkg/diapdu.globalDynamicTraffic(SB), DX			
  traffic_dynamic.go:105	0xe38047		90			NOPL										
  type.go:88			0xe38048		41b8ffffffff		MOVL $-0x1, R8									
  type.go:88			0xe3804e		f0440fc106		LOCK XADDL R8, 0(SI)								
  type.go:88			0xe38053		418d70ff		LEAL -0x1(R8), SI								
  rwmutex.go:118		0xe38057		85f6			TESTL SI, SI									
  rwmutex.go:118		0xe38059		7d27			JGE 0xe38082									
  traffic_dynamic.go:104	0xe3805b		4889542420		MOVQ DX, 0x20(SP)								
  rwmutex.go:120		0xe38060		488d05395b7202		LEAQ CAS-Backend/pkg/diapdu.globalDynTrafficMu(SB), AX				
  rwmutex.go:120		0xe38067		89f3			MOVL SI, BX									
  rwmutex.go:120		0xe38069		e8d20d65ff		CALL sync.(*RWMutex).rUnlockSlow(SB)						
  traffic_dynamic.go:109	0xe3806e		488b442438		MOVQ 0x38(SP), AX								
  traffic_dynamic.go:109	0xe38073		488b4c2448		MOVQ 0x48(SP), CX								
  traffic_dynamic.go:106	0xe38078		488b542420		MOVQ 0x20(SP), DX								
  traffic_dynamic.go:109	0xe3807d		488b5c2440		MOVQ 0x40(SP), BX								
  traffic_dynamic.go:106	0xe38082		4885d2			TESTQ DX, DX									
  traffic_dynamic.go:106	0xe38085		7417			JE 0xe3809e									
  traffic_dynamic.go:109	0xe38087		4889cf			MOVQ CX, DI									
  traffic_dynamic.go:109	0xe3808a		4889d9			MOVQ BX, CX									
  traffic_dynamic.go:109	0xe3808d		4889c3			MOVQ AX, BX									
  traffic_dynamic.go:109	0xe38090		4889d0			MOVQ DX, AX									
  traffic_dynamic.go:109	0xe38093		e888060000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).OnMonitorPush(SB)	
  traffic_dynamic.go:110	0xe38098		4883c428		ADDQ $__major_os_version__+34(SB), SP						
  traffic_dynamic.go:110	0xe3809c		5d			POPQ BP										
  traffic_dynamic.go:110	0xe3809d		c3			RET										
  traffic_dynamic.go:107	0xe3809e		4883c428		ADDQ $__major_os_version__+34(SB), SP						
  traffic_dynamic.go:107	0xe380a2		5d			POPQ BP										
  traffic_dynamic.go:107	0xe380a3		c3			RET										
  traffic_dynamic.go:101	0xe380a4		4883c428		ADDQ $__major_os_version__+34(SB), SP						
  traffic_dynamic.go:101	0xe380a8		5d			POPQ BP										
  traffic_dynamic.go:101	0xe380a9		c3			RET										
  traffic_dynamic.go:99		0xe380aa		4889442408		MOVQ AX, 0x8(SP)								
  traffic_dynamic.go:99		0xe380af		48895c2410		MOVQ BX, 0x10(SP)								
  traffic_dynamic.go:99		0xe380b4		48894c2418		MOVQ CX, 0x18(SP)								
  traffic_dynamic.go:99		0xe380b9		e822e463ff		CALL runtime.morestack_noctxt.abi0(SB)						
  traffic_dynamic.go:99		0xe380be		488b442408		MOVQ 0x8(SP), AX								
  traffic_dynamic.go:99		0xe380c3		488b5c2410		MOVQ 0x10(SP), BX								
  traffic_dynamic.go:99		0xe380c8		488b4c2418		MOVQ 0x18(SP), CX								
  traffic_dynamic.go:99		0xe380cd		e9cefeffff		JMP CAS-Backend/pkg/diapdu.HandleMonitorPush(SB)				
  :-1				0xe380d2		cc			INT $__subsystem__(SB)								
  :-1				0xe380d3		cc			INT $__subsystem__(SB)								
  :-1				0xe380d4		cc			INT $__subsystem__(SB)								
  :-1				0xe380d5		cc			INT $__subsystem__(SB)								
  :-1				0xe380d6		cc			INT $__subsystem__(SB)								
  :-1				0xe380d7		cc			INT $__subsystem__(SB)								
  :-1				0xe380d8		cc			INT $__subsystem__(SB)								
  :-1				0xe380d9		cc			INT $__subsystem__(SB)								
  :-1				0xe380da		cc			INT $__subsystem__(SB)								
  :-1				0xe380db		cc			INT $__subsystem__(SB)								
  :-1				0xe380dc		cc			INT $__subsystem__(SB)								
  :-1				0xe380dd		cc			INT $__subsystem__(SB)								
  :-1				0xe380de		cc			INT $__subsystem__(SB)								
  :-1				0xe380df		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).RegisterRoute(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:138	0xe380e0		493b6610		CMPQ SP, 0x10(R14)									
  traffic_dynamic.go:138	0xe380e4		0f869b010000		JBE 0xe38285										
  traffic_dynamic.go:138	0xe380ea		55			PUSHQ BP										
  traffic_dynamic.go:138	0xe380eb		4889e5			MOVQ SP, BP										
  traffic_dynamic.go:138	0xe380ee		4883ec48		SUBQ $__major_os_version__+66(SB), SP							
  traffic_dynamic.go:138	0xe380f2		48895c2460		MOVQ BX, 0x60(SP)									
  traffic_dynamic.go:138	0xe380f7		48897c2470		MOVQ DI, 0x70(SP)									
  traffic_dynamic.go:138	0xe380fc		0f1f4000		NOPL 0(AX)										
  traffic_dynamic.go:139	0xe38100		4885c0			TESTQ AX, AX										
  traffic_dynamic.go:139	0xe38103		0f8476010000		JE 0xe3827f										
  traffic_dynamic.go:139	0xe38109		4885c9			TESTQ CX, CX										
  traffic_dynamic.go:139	0xe3810c		0f846d010000		JE 0xe3827f										
  traffic_dynamic.go:139	0xe38112		4883fe02		CMPQ SI, $__minor_os_version__+1(SB)							
  traffic_dynamic.go:139	0xe38116		0f8c63010000		JL 0xe3827f										
  traffic_dynamic.go:139	0xe3811c		4889442458		MOVQ AX, 0x58(SP)									
  traffic_dynamic.go:139	0xe38121		4c898c2488000000	MOVQ R9, 0x88(SP)									
  traffic_dynamic.go:139	0xe38129		4889742478		MOVQ SI, 0x78(SP)									
  traffic_dynamic.go:139	0xe3812e		48894c2468		MOVQ CX, 0x68(SP)									
  traffic_dynamic.go:139	0xe38133		48897c2470		MOVQ DI, 0x70(SP)									
  traffic_dynamic.go:139	0xe38138		48895c2460		MOVQ BX, 0x60(SP)									
  traffic_dynamic.go:145	0xe3813d		31c0			XORL AX, AX										
  traffic_dynamic.go:145	0xe3813f		4889f3			MOVQ SI, BX										
  traffic_dynamic.go:145	0xe38142		31c9			XORL CX, CX										
  traffic_dynamic.go:145	0xe38144		4889df			MOVQ BX, DI										
  traffic_dynamic.go:145	0xe38147		488d35d2a72000		LEAQ runtime.types+383264(SB), SI							
  traffic_dynamic.go:145	0xe3814e		e8ed9a63ff		CALL runtime.growslice(SB)								
  traffic_dynamic.go:145	0xe38153		4889442440		MOVQ AX, 0x40(SP)									
  traffic_dynamic.go:145	0xe38158		48895c2428		MOVQ BX, 0x28(SP)									
  traffic_dynamic.go:145	0xe3815d		48894c2430		MOVQ CX, 0x30(SP)									
  traffic_dynamic.go:145	0xe38162		488b7c2470		MOVQ 0x70(SP), DI									
  traffic_dynamic.go:145	0xe38167		488b742478		MOVQ 0x78(SP), SI									
  traffic_dynamic.go:145	0xe3816c		4889c2			MOVQ AX, DX										
  traffic_dynamic.go:145	0xe3816f		488d05aaa72000		LEAQ runtime.types+383264(SB), AX							
  traffic_dynamic.go:145	0xe38176		4989d8			MOVQ BX, R8										
  traffic_dynamic.go:145	0xe38179		4889d3			MOVQ DX, BX										
  traffic_dynamic.go:145	0xe3817c		4c89c1			MOVQ R8, CX										
  traffic_dynamic.go:145	0xe3817f		90			NOPL											
  traffic_dynamic.go:145	0xe38180		e8bb6363ff		CALL runtime.typedslicecopy(SB)								
  traffic_dynamic.go:146	0xe38185		90			NOPL											
  mutex.go:85			0xe38186		31c0			XORL AX, AX										
  mutex.go:85			0xe38188		488b542458		MOVQ 0x58(SP), DX									
  mutex.go:85			0xe3818d		41b801000000		MOVL $__minor_os_version__(SB), R8							
  mutex.go:85			0xe38193		f0440fb102		LOCK CMPXCHGL R8, 0(DX)									
  mutex.go:85			0xe38198		410f94c0		SETE R8											
  traffic_dynamic.go:142	0xe3819c		4c8b8c2488000000	MOVQ 0x88(SP), R9									
  traffic_dynamic.go:142	0xe381a4		4d85c9			TESTQ R9, R9										
  traffic_dynamic.go:148	0xe381a7		41ba02000000		MOVL $__minor_os_version__+1(SB), R10							
  traffic_dynamic.go:148	0xe381ad		4d0f4eca		CMOVLE R10, R9										
  traffic_dynamic.go:148	0xe381b1		4c894c2438		MOVQ R9, 0x38(SP)									
  mutex.go:85			0xe381b6		4584c0			TESTL R8, R8										
  mutex.go:85			0xe381b9		750f			JNE 0xe381ca										
  mutex.go:92			0xe381bb		4889d0			MOVQ DX, AX										
  mutex.go:92			0xe381be		6690			NOPW											
  mutex.go:92			0xe381c0		e85bf864ff		CALL sync.(*Mutex).lockSlow(SB)								
  traffic_dynamic.go:147	0xe381c5		488b542458		MOVQ 0x58(SP), DX									
  traffic_dynamic.go:147	0xe381ca		488b5a08		MOVQ 0x8(DX), BX									
  traffic_dynamic.go:147	0xe381ce		488d050b572400		LEAQ runtime.types+624864(SB), AX							
  traffic_dynamic.go:147	0xe381d5		488b4c2460		MOVQ 0x60(SP), CX									
  traffic_dynamic.go:147	0xe381da		488b7c2468		MOVQ 0x68(SP), DI									
  traffic_dynamic.go:147	0xe381df		90			NOPL											
  traffic_dynamic.go:147	0xe381e0		e83b5e63ff		CALL runtime.mapassign_faststr(SB)							
  traffic_dynamic.go:147	0xe381e5		488b542428		MOVQ 0x28(SP), DX									
  traffic_dynamic.go:147	0xe381ea		48895008		MOVQ DX, 0x8(AX)									
  traffic_dynamic.go:147	0xe381ee		488b542430		MOVQ 0x30(SP), DX									
  traffic_dynamic.go:147	0xe381f3		48895010		MOVQ DX, 0x10(AX)									
  traffic_dynamic.go:147	0xe381f7		833d5259720200		CMPL runtime.writeBarrier(SB), $0x0							
  traffic_dynamic.go:147	0xe381fe		6690			NOPW											
  traffic_dynamic.go:147	0xe38200		7507			JNE 0xe38209										
  traffic_dynamic.go:147	0xe38202		488b542440		MOVQ 0x40(SP), DX									
  traffic_dynamic.go:147	0xe38207		eb14			JMP 0xe3821d										
  traffic_dynamic.go:147	0xe38209		e8320264ff		CALL runtime.gcWriteBarrier2(SB)							
  traffic_dynamic.go:147	0xe3820e		488b542440		MOVQ 0x40(SP), DX									
  traffic_dynamic.go:147	0xe38213		498913			MOVQ DX, 0(R11)										
  traffic_dynamic.go:147	0xe38216		488b30			MOVQ 0(AX), SI										
  traffic_dynamic.go:147	0xe38219		49897308		MOVQ SI, 0x8(R11)									
  traffic_dynamic.go:147	0xe3821d		488910			MOVQ DX, 0(AX)										
  traffic_dynamic.go:148	0xe38220		488b542458		MOVQ 0x58(SP), DX									
  traffic_dynamic.go:148	0xe38225		488b5a10		MOVQ 0x10(DX), BX									
  traffic_dynamic.go:148	0xe38229		488d05d0572400		LEAQ runtime.types+625152(SB), AX							
  traffic_dynamic.go:148	0xe38230		488b4c2460		MOVQ 0x60(SP), CX									
  traffic_dynamic.go:148	0xe38235		488b7c2468		MOVQ 0x68(SP), DI									
  traffic_dynamic.go:148	0xe3823a		e8e15d63ff		CALL runtime.mapassign_faststr(SB)							
  traffic_dynamic.go:148	0xe3823f		488b542438		MOVQ 0x38(SP), DX									
  traffic_dynamic.go:148	0xe38244		488910			MOVQ DX, 0(AX)										
  traffic_dynamic.go:149	0xe38247		90			NOPL											
  mutex.go:221			0xe38248		bbffffffff		MOVL $-0x1, BX										
  mutex.go:221			0xe3824d		488b442458		MOVQ 0x58(SP), AX									
  mutex.go:221			0xe38252		f00fc118		LOCK XADDL BX, 0(AX)									
  mutex.go:221			0xe38256		ffcb			DECL BX											
  mutex.go:222			0xe38258		85db			TESTL BX, BX										
  mutex.go:222			0xe3825a		740e			JE 0xe3826a										
  mutex.go:222			0xe3825c		0f1f4000		NOPL 0(AX)										
  mutex.go:225			0xe38260		e89bfa64ff		CALL sync.(*Mutex).unlockSlow(SB)							
  traffic_dynamic.go:150	0xe38265		488b442458		MOVQ 0x58(SP), AX									
  traffic_dynamic.go:150	0xe3826a		488b5c2460		MOVQ 0x60(SP), BX									
  traffic_dynamic.go:150	0xe3826f		488b4c2468		MOVQ 0x68(SP), CX									
  traffic_dynamic.go:150	0xe38274		e867000000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).seedMonitorSnapFromHub(SB)	
  traffic_dynamic.go:151	0xe38279		4883c448		ADDQ $__major_os_version__+66(SB), SP							
  traffic_dynamic.go:151	0xe3827d		5d			POPQ BP											
  traffic_dynamic.go:151	0xe3827e		c3			RET											
  traffic_dynamic.go:140	0xe3827f		4883c448		ADDQ $__major_os_version__+66(SB), SP							
  traffic_dynamic.go:140	0xe38283		5d			POPQ BP											
  traffic_dynamic.go:140	0xe38284		c3			RET											
  traffic_dynamic.go:138	0xe38285		4889442408		MOVQ AX, 0x8(SP)									
  traffic_dynamic.go:138	0xe3828a		48895c2410		MOVQ BX, 0x10(SP)									
  traffic_dynamic.go:138	0xe3828f		48894c2418		MOVQ CX, 0x18(SP)									
  traffic_dynamic.go:138	0xe38294		48897c2420		MOVQ DI, 0x20(SP)									
  traffic_dynamic.go:138	0xe38299		4889742428		MOVQ SI, 0x28(SP)									
  traffic_dynamic.go:138	0xe3829e		4c89442430		MOVQ R8, 0x30(SP)									
  traffic_dynamic.go:138	0xe382a3		4c894c2438		MOVQ R9, 0x38(SP)									
  traffic_dynamic.go:138	0xe382a8		e833e263ff		CALL runtime.morestack_noctxt.abi0(SB)							
  traffic_dynamic.go:138	0xe382ad		488b442408		MOVQ 0x8(SP), AX									
  traffic_dynamic.go:138	0xe382b2		488b5c2410		MOVQ 0x10(SP), BX									
  traffic_dynamic.go:138	0xe382b7		488b4c2418		MOVQ 0x18(SP), CX									
  traffic_dynamic.go:138	0xe382bc		488b7c2420		MOVQ 0x20(SP), DI									
  traffic_dynamic.go:138	0xe382c1		488b742428		MOVQ 0x28(SP), SI									
  traffic_dynamic.go:138	0xe382c6		4c8b442430		MOVQ 0x30(SP), R8									
  traffic_dynamic.go:138	0xe382cb		4c8b4c2438		MOVQ 0x38(SP), R9									
  traffic_dynamic.go:138	0xe382d0		e90bfeffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).RegisterRoute(SB)		
  :-1				0xe382d5		cc			INT $__subsystem__(SB)									
  :-1				0xe382d6		cc			INT $__subsystem__(SB)									
  :-1				0xe382d7		cc			INT $__subsystem__(SB)									
  :-1				0xe382d8		cc			INT $__subsystem__(SB)									
  :-1				0xe382d9		cc			INT $__subsystem__(SB)									
  :-1				0xe382da		cc			INT $__subsystem__(SB)									
  :-1				0xe382db		cc			INT $__subsystem__(SB)									
  :-1				0xe382dc		cc			INT $__subsystem__(SB)									
  :-1				0xe382dd		cc			INT $__subsystem__(SB)									
  :-1				0xe382de		cc			INT $__subsystem__(SB)									
  :-1				0xe382df		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).seedMonitorSnapFromHub(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:154	0xe382e0		4c8d6424f0		LEAQ -0x10(SP), R12									
  traffic_dynamic.go:154	0xe382e5		4d3b6610		CMPQ R12, 0x10(R14)									
  traffic_dynamic.go:154	0xe382e9		0f86e1000000		JBE 0xe383d0										
  traffic_dynamic.go:154	0xe382ef		55			PUSHQ BP										
  traffic_dynamic.go:154	0xe382f0		4889e5			MOVQ SP, BP										
  traffic_dynamic.go:154	0xe382f3		4881ec88000000		SUBQ $.file+59(SB), SP									
  traffic_dynamic.go:154	0xe382fa		48899c24a0000000	MOVQ BX, 0xa0(SP)									
  traffic_dynamic.go:155	0xe38302		4885c0			TESTQ AX, AX										
  traffic_dynamic.go:155	0xe38305		0f84bc000000		JE 0xe383c7										
  traffic_dynamic.go:155	0xe3830b		4885c9			TESTQ CX, CX										
  traffic_dynamic.go:155	0xe3830e		0f84b3000000		JE 0xe383c7										
  traffic_dynamic.go:155	0xe38314		4889842498000000	MOVQ AX, 0x98(SP)									
  traffic_dynamic.go:155	0xe3831c		48898c24a8000000	MOVQ CX, 0xa8(SP)									
  traffic_dynamic.go:155	0xe38324		48899c24a0000000	MOVQ BX, 0xa0(SP)									
  traffic_dynamic.go:158	0xe3832c		488b053dc81700		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), AX				
  traffic_dynamic.go:158	0xe38333		e808a30000		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh(SB)				
  traffic_dynamic.go:158	0xe38338		0f1f840000000000	NOPL 0(AX)(AX*1)									
  traffic_dynamic.go:158	0xe38340		84db			TESTL BL, BL										
  traffic_dynamic.go:159	0xe38342		0f8476000000		JE 0xe383be										
  traffic_dynamic.go:159	0xe38348		4883b8a800000000	CMPQ 0xa8(AX), $0x0									
  traffic_dynamic.go:95		0xe38350		751b			JNE 0xe3836d										
  traffic_dynamic.go:95		0xe38352		4883b89800000000	CMPQ 0x98(AX), $0x0									
  traffic_dynamic.go:95		0xe3835a		7511			JNE 0xe3836d										
  traffic_dynamic.go:95		0xe3835c		4883b88800000000	CMPQ 0x88(AX), $0x0									
  traffic_dynamic.go:95		0xe38364		7507			JNE 0xe3836d										
  traffic_dynamic.go:95		0xe38366		4883785800		CMPQ 0x58(AX), $0x0									
  traffic_dynamic.go:159	0xe3836b		7451			JE 0xe383be										
  traffic_dynamic.go:162	0xe3836d		488b5050		MOVQ 0x50(AX), DX									
  traffic_dynamic.go:162	0xe38371		4889542420		MOVQ DX, 0x20(SP)									
  traffic_dynamic.go:162	0xe38376		488d7058		LEAQ 0x58(AX), SI									
  traffic_dynamic.go:162	0xe3837a		488d7c2428		LEAQ 0x28(SP), DI									
  traffic_dynamic.go:162	0xe3837f		90			NOPL											
  traffic_dynamic.go:162	0xe38380		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_dynamic.go:162	0xe38385		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_dynamic.go:162	0xe3838a		e8bd0a64ff		CALL 0x478e4c										
  traffic_dynamic.go:162	0xe3838f		488b6d00		MOVQ 0(BP), BP										
  traffic_dynamic.go:163	0xe38393		488b842498000000	MOVQ 0x98(SP), AX									
  traffic_dynamic.go:163	0xe3839b		488b9c24a0000000	MOVQ 0xa0(SP), BX									
  traffic_dynamic.go:163	0xe383a3		488b8c24a8000000	MOVQ 0xa8(SP), CX									
  traffic_dynamic.go:163	0xe383ab		488d7c2420		LEAQ 0x20(SP), DI									
  traffic_dynamic.go:163	0xe383b0		e86b030000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).OnMonitorPush(SB)		
  traffic_dynamic.go:164	0xe383b5		4881c488000000		ADDQ $.file+59(SB), SP									
  traffic_dynamic.go:164	0xe383bc		5d			POPQ BP											
  traffic_dynamic.go:164	0xe383bd		c3			RET											
  traffic_dynamic.go:160	0xe383be		4881c488000000		ADDQ $.file+59(SB), SP									
  traffic_dynamic.go:160	0xe383c5		5d			POPQ BP											
  traffic_dynamic.go:160	0xe383c6		c3			RET											
  traffic_dynamic.go:156	0xe383c7		4881c488000000		ADDQ $.file+59(SB), SP									
  traffic_dynamic.go:156	0xe383ce		5d			POPQ BP											
  traffic_dynamic.go:156	0xe383cf		c3			RET											
  traffic_dynamic.go:154	0xe383d0		4889442408		MOVQ AX, 0x8(SP)									
  traffic_dynamic.go:154	0xe383d5		48895c2410		MOVQ BX, 0x10(SP)									
  traffic_dynamic.go:154	0xe383da		48894c2418		MOVQ CX, 0x18(SP)									
  traffic_dynamic.go:154	0xe383df		90			NOPL											
  traffic_dynamic.go:154	0xe383e0		e8fbe063ff		CALL runtime.morestack_noctxt.abi0(SB)							
  traffic_dynamic.go:154	0xe383e5		488b442408		MOVQ 0x8(SP), AX									
  traffic_dynamic.go:154	0xe383ea		488b5c2410		MOVQ 0x10(SP), BX									
  traffic_dynamic.go:154	0xe383ef		488b4c2418		MOVQ 0x18(SP), CX									
  traffic_dynamic.go:154	0xe383f4		e9e7feffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).seedMonitorSnapFromHub(SB)	
  :-1				0xe383f9		cc			INT $__subsystem__(SB)									
  :-1				0xe383fa		cc			INT $__subsystem__(SB)									
  :-1				0xe383fb		cc			INT $__subsystem__(SB)									
  :-1				0xe383fc		cc			INT $__subsystem__(SB)									
  :-1				0xe383fd		cc			INT $__subsystem__(SB)									
  :-1				0xe383fe		cc			INT $__subsystem__(SB)									
  :-1				0xe383ff		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).UnregisterVehicle(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:166	0xe38400		4c8d6424d8		LEAQ -0x28(SP), R12								
  traffic_dynamic.go:166	0xe38405		4d3b6610		CMPQ R12, 0x10(R14)								
  traffic_dynamic.go:166	0xe38409		0f86d2020000		JBE 0xe386e1									
  traffic_dynamic.go:166	0xe3840f		55			PUSHQ BP									
  traffic_dynamic.go:166	0xe38410		4889e5			MOVQ SP, BP									
  traffic_dynamic.go:166	0xe38413		4881eca0000000		SUBQ $.file+83(SB), SP								
  traffic_dynamic.go:166	0xe3841a		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  traffic_dynamic.go:167	0xe38422		4885c0			TESTQ AX, AX									
  traffic_dynamic.go:167	0xe38425		0f84bc010000		JE 0xe385e7									
  traffic_dynamic.go:167	0xe3842b		4885c9			TESTQ CX, CX									
  traffic_dynamic.go:167	0xe3842e		0f84b3010000		JE 0xe385e7									
  traffic_dynamic.go:167	0xe38434		48898424b0000000	MOVQ AX, 0xb0(SP)								
  traffic_dynamic.go:167	0xe3843c		48899c24b8000000	MOVQ BX, 0xb8(SP)								
  traffic_dynamic.go:167	0xe38444		48898c24c0000000	MOVQ CX, 0xc0(SP)								
  traffic_dynamic.go:170	0xe3844c		90			NOPL										
  traffic_dynamic.go:167	0xe3844d		4889c2			MOVQ AX, DX									
  mutex.go:85			0xe38450		31c0			XORL AX, AX									
  mutex.go:85			0xe38452		be01000000		MOVL $__minor_os_version__(SB), SI						
  mutex.go:85			0xe38457		f00fb132		LOCK CMPXCHGL SI, 0(DX)								
  mutex.go:85			0xe3845b		400f94c6		SETE SI										
  mutex.go:85			0xe3845f		90			NOPL										
  mutex.go:85			0xe38460		4084f6			TESTL SI, SI									
  mutex.go:85			0xe38463		7520			JNE 0xe38485									
  mutex.go:92			0xe38465		4889d0			MOVQ DX, AX									
  mutex.go:92			0xe38468		e8b3f564ff		CALL sync.(*Mutex).lockSlow(SB)							
  traffic_dynamic.go:171	0xe3846d		488b8c24c0000000	MOVQ 0xc0(SP), CX								
  traffic_dynamic.go:171	0xe38475		488b9424b0000000	MOVQ 0xb0(SP), DX								
  traffic_dynamic.go:171	0xe3847d		488b9c24b8000000	MOVQ 0xb8(SP), BX								
  traffic_dynamic.go:171	0xe38485		488b7208		MOVQ 0x8(DX), SI								
  traffic_dynamic.go:171	0xe38489		488d0550542400		LEAQ runtime.types+624864(SB), AX						
  traffic_dynamic.go:171	0xe38490		4889cf			MOVQ CX, DI									
  traffic_dynamic.go:171	0xe38493		4889d9			MOVQ BX, CX									
  traffic_dynamic.go:171	0xe38496		4889f3			MOVQ SI, BX									
  traffic_dynamic.go:171	0xe38499		e862c25dff		CALL runtime.mapdelete_faststr(SB)						
  traffic_dynamic.go:172	0xe3849e		488b9424b0000000	MOVQ 0xb0(SP), DX								
  traffic_dynamic.go:172	0xe384a6		488b5a10		MOVQ 0x10(DX), BX								
  traffic_dynamic.go:172	0xe384aa		488d054f552400		LEAQ runtime.types+625152(SB), AX						
  traffic_dynamic.go:172	0xe384b1		488b8c24b8000000	MOVQ 0xb8(SP), CX								
  traffic_dynamic.go:172	0xe384b9		488bbc24c0000000	MOVQ 0xc0(SP), DI								
  traffic_dynamic.go:172	0xe384c1		e83ac25dff		CALL runtime.mapdelete_faststr(SB)						
  traffic_dynamic.go:173	0xe384c6		488b9424b0000000	MOVQ 0xb0(SP), DX								
  traffic_dynamic.go:173	0xe384ce		488b5a18		MOVQ 0x18(DX), BX								
  traffic_dynamic.go:173	0xe384d2		488d05c7512400		LEAQ runtime.types+624288(SB), AX						
  traffic_dynamic.go:173	0xe384d9		488b8c24b8000000	MOVQ 0xb8(SP), CX								
  traffic_dynamic.go:173	0xe384e1		488bbc24c0000000	MOVQ 0xc0(SP), DI								
  traffic_dynamic.go:173	0xe384e9		e812c25dff		CALL runtime.mapdelete_faststr(SB)						
  traffic_dynamic.go:174	0xe384ee		488b9424b0000000	MOVQ 0xb0(SP), DX								
  traffic_dynamic.go:174	0xe384f6		488b5a20		MOVQ 0x20(DX), BX								
  traffic_dynamic.go:174	0xe384fa		488d057f562400		LEAQ runtime.types+625536(SB), AX						
  traffic_dynamic.go:174	0xe38501		488b8c24b8000000	MOVQ 0xb8(SP), CX								
  traffic_dynamic.go:174	0xe38509		488bbc24c0000000	MOVQ 0xc0(SP), DI								
  traffic_dynamic.go:174	0xe38511		e8eac15dff		CALL runtime.mapdelete_faststr(SB)						
  traffic_dynamic.go:175	0xe38516		488b9424b0000000	MOVQ 0xb0(SP), DX								
  traffic_dynamic.go:175	0xe3851e		488b5a48		MOVQ 0x48(DX), BX								
  traffic_dynamic.go:175	0xe38522		488d05f7552400		LEAQ runtime.types+625440(SB), AX						
  traffic_dynamic.go:175	0xe38529		488b8c24b8000000	MOVQ 0xb8(SP), CX								
  traffic_dynamic.go:175	0xe38531		488bbc24c0000000	MOVQ 0xc0(SP), DI								
  traffic_dynamic.go:175	0xe38539		e8c2c15dff		CALL runtime.mapdelete_faststr(SB)						
  traffic_dynamic.go:176	0xe3853e		488b9424b0000000	MOVQ 0xb0(SP), DX								
  traffic_dynamic.go:176	0xe38546		488b5a28		MOVQ 0x28(DX), BX								
  traffic_dynamic.go:176	0xe3854a		488d05ef532400		LEAQ runtime.types+624960(SB), AX						
  traffic_dynamic.go:176	0xe38551		488b8c24b8000000	MOVQ 0xb8(SP), CX								
  traffic_dynamic.go:176	0xe38559		488bbc24c0000000	MOVQ 0xc0(SP), DI								
  traffic_dynamic.go:176	0xe38561		e8dabd5dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_dynamic.go:177	0xe38566		488b9424b0000000	MOVQ 0xb0(SP), DX								
  traffic_dynamic.go:177	0xe3856e		488b5a28		MOVQ 0x28(DX), BX								
  traffic_dynamic.go:176	0xe38572		0fb630			MOVZX 0(AX), SI									
  traffic_dynamic.go:176	0xe38575		4088742427		MOVB SI, 0x27(SP)								
  traffic_dynamic.go:176	0xe3857a		4084f6			TESTL SI, SI									
  traffic_dynamic.go:177	0xe3857d		488d05bc532400		LEAQ runtime.types+624960(SB), AX						
  traffic_dynamic.go:177	0xe38584		488b8c24b8000000	MOVQ 0xb8(SP), CX								
  traffic_dynamic.go:177	0xe3858c		488bbc24c0000000	MOVQ 0xc0(SP), DI								
  traffic_dynamic.go:177	0xe38594		e867c15dff		CALL runtime.mapdelete_faststr(SB)						
  traffic_dynamic.go:178	0xe38599		488b9424b0000000	MOVQ 0xb0(SP), DX								
  traffic_dynamic.go:178	0xe385a1		488b5a30		MOVQ 0x30(DX), BX								
  traffic_dynamic.go:178	0xe385a5		488d7c2440		LEAQ 0x40(SP), DI								
  traffic_dynamic.go:178	0xe385aa		488d7fe0		LEAQ -0x20(DI), DI								
  traffic_dynamic.go:178	0xe385ae		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_dynamic.go:178	0xe385b7		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_dynamic.go:178	0xe385c0		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_dynamic.go:178	0xe385c5		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_dynamic.go:178	0xe385ca		e81c0564ff		CALL 0x478aeb									
  traffic_dynamic.go:178	0xe385cf		488b6d00		MOVQ 0(BP), BP									
  traffic_dynamic.go:178	0xe385d3		488d05e6542400		LEAQ runtime.types+625344(SB), AX						
  traffic_dynamic.go:178	0xe385da		488d4c2440		LEAQ 0x40(SP), CX								
  traffic_dynamic.go:178	0xe385df		90			NOPL										
  traffic_dynamic.go:178	0xe385e0		e83b3763ff		CALL runtime.mapiterinit(SB)							
  traffic_dynamic.go:178	0xe385e5		eb13			JMP 0xe385fa									
  traffic_dynamic.go:168	0xe385e7		4881c4a0000000		ADDQ $.file+83(SB), SP								
  traffic_dynamic.go:168	0xe385ee		5d			POPQ BP										
  traffic_dynamic.go:168	0xe385ef		c3			RET										
  traffic_dynamic.go:178	0xe385f0		488d442440		LEAQ 0x40(SP), AX								
  traffic_dynamic.go:178	0xe385f5		e8463963ff		CALL runtime.mapiternext(SB)							
  traffic_dynamic.go:178	0xe385fa		488b542440		MOVQ 0x40(SP), DX								
  traffic_dynamic.go:178	0xe385ff		90			NOPL										
  traffic_dynamic.go:178	0xe38600		4885d2			TESTQ DX, DX									
  traffic_dynamic.go:178	0xe38603		7477			JE 0xe3867c									
  traffic_dynamic.go:178	0xe38605		488b742448		MOVQ 0x48(SP), SI								
  traffic_dynamic.go:178	0xe3860a		488b1e			MOVQ 0(SI), BX									
  traffic_dynamic.go:178	0xe3860d		48895c2438		MOVQ BX, 0x38(SP)								
  traffic_dynamic.go:178	0xe38612		488b32			MOVQ 0(DX), SI									
  traffic_dynamic.go:178	0xe38615		4889742430		MOVQ SI, 0x30(SP)								
  traffic_dynamic.go:178	0xe3861a		488b5208		MOVQ 0x8(DX), DX								
  traffic_dynamic.go:178	0xe3861e		4889542428		MOVQ DX, 0x28(SP)								
  traffic_dynamic.go:179	0xe38623		488d0536542400		LEAQ runtime.types+625248(SB), AX						
  traffic_dynamic.go:179	0xe3862a		488b8c24b8000000	MOVQ 0xb8(SP), CX								
  traffic_dynamic.go:179	0xe38632		488bbc24c0000000	MOVQ 0xc0(SP), DI								
  traffic_dynamic.go:179	0xe3863a		e8c1c05dff		CALL runtime.mapdelete_faststr(SB)						
  traffic_dynamic.go:180	0xe3863f		488b542438		MOVQ 0x38(SP), DX								
  traffic_dynamic.go:180	0xe38644		4885d2			TESTQ DX, DX									
  traffic_dynamic.go:180	0xe38647		7405			JE 0xe3864e									
  traffic_dynamic.go:180	0xe38649		488b12			MOVQ 0(DX), DX									
  traffic_dynamic.go:180	0xe3864c		eb02			JMP 0xe38650									
  traffic_dynamic.go:180	0xe3864e		31d2			XORL DX, DX									
  traffic_dynamic.go:180	0xe38650		4885d2			TESTQ DX, DX									
  traffic_dynamic.go:180	0xe38653		759b			JNE 0xe385f0									
  traffic_dynamic.go:181	0xe38655		488b9424b0000000	MOVQ 0xb0(SP), DX								
  traffic_dynamic.go:181	0xe3865d		488b5a30		MOVQ 0x30(DX), BX								
  traffic_dynamic.go:181	0xe38661		488d0558542400		LEAQ runtime.types+625344(SB), AX						
  traffic_dynamic.go:181	0xe38668		488b4c2430		MOVQ 0x30(SP), CX								
  traffic_dynamic.go:181	0xe3866d		488b7c2428		MOVQ 0x28(SP), DI								
  traffic_dynamic.go:181	0xe38672		e889c05dff		CALL runtime.mapdelete_faststr(SB)						
  traffic_dynamic.go:181	0xe38677		e974ffffff		JMP 0xe385f0									
  traffic_dynamic.go:184	0xe3867c		90			NOPL										
  mutex.go:221			0xe3867d		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221			0xe38682		488b8424b0000000	MOVQ 0xb0(SP), AX								
  mutex.go:221			0xe3868a		f00fc118		LOCK XADDL BX, 0(AX)								
  mutex.go:221			0xe3868e		ffcb			DECL BX										
  mutex.go:222			0xe38690		85db			TESTL BX, BX									
  mutex.go:222			0xe38692		7509			JNE 0xe3869d									
  traffic_dynamic.go:176	0xe38694		0fb64c2427		MOVZX 0x27(SP), CX								
  traffic_dynamic.go:176	0xe38699		84c9			TESTL CL, CL									
  mutex.go:222			0xe3869b		eb17			JMP 0xe386b4									
  mutex.go:225			0xe3869d		0f1f00			NOPL 0(AX)									
  mutex.go:225			0xe386a0		e85bf664ff		CALL sync.(*Mutex).unlockSlow(SB)						
  traffic_dynamic.go:176	0xe386a5		0fb64c2427		MOVZX 0x27(SP), CX								
  traffic_dynamic.go:176	0xe386aa		84c9			TESTL CL, CL									
  traffic_dynamic.go:188	0xe386ac		488b8424b0000000	MOVQ 0xb0(SP), AX								
  traffic_dynamic.go:185	0xe386b4		741d			JE 0xe386d3									
  traffic_dynamic.go:186	0xe386b6		488b8424b8000000	MOVQ 0xb8(SP), AX								
  traffic_dynamic.go:186	0xe386be		488b9c24c0000000	MOVQ 0xc0(SP), BX								
  traffic_dynamic.go:186	0xe386c6		e8f52a0000		CALL CAS-Backend/pkg/diapdu.sendResumeNavigationForVehicle(SB)			
  traffic_dynamic.go:188	0xe386cb		488b8424b0000000	MOVQ 0xb0(SP), AX								
  traffic_dynamic.go:188	0xe386d3		e868200000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).recompute(SB)		
  traffic_dynamic.go:189	0xe386d8		4881c4a0000000		ADDQ $.file+83(SB), SP								
  traffic_dynamic.go:189	0xe386df		5d			POPQ BP										
  traffic_dynamic.go:189	0xe386e0		c3			RET										
  traffic_dynamic.go:166	0xe386e1		4889442408		MOVQ AX, 0x8(SP)								
  traffic_dynamic.go:166	0xe386e6		48895c2410		MOVQ BX, 0x10(SP)								
  traffic_dynamic.go:166	0xe386eb		48894c2418		MOVQ CX, 0x18(SP)								
  traffic_dynamic.go:166	0xe386f0		e8ebdd63ff		CALL runtime.morestack_noctxt.abi0(SB)						
  traffic_dynamic.go:166	0xe386f5		488b442408		MOVQ 0x8(SP), AX								
  traffic_dynamic.go:166	0xe386fa		488b5c2410		MOVQ 0x10(SP), BX								
  traffic_dynamic.go:166	0xe386ff		488b4c2418		MOVQ 0x18(SP), CX								
  traffic_dynamic.go:166	0xe38704		e9f7fcffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).UnregisterVehicle(SB)	
  :-1				0xe38709		cc			INT $__subsystem__(SB)								
  :-1				0xe3870a		cc			INT $__subsystem__(SB)								
  :-1				0xe3870b		cc			INT $__subsystem__(SB)								
  :-1				0xe3870c		cc			INT $__subsystem__(SB)								
  :-1				0xe3870d		cc			INT $__subsystem__(SB)								
  :-1				0xe3870e		cc			INT $__subsystem__(SB)								
  :-1				0xe3870f		cc			INT $__subsystem__(SB)								
  :-1				0xe38710		cc			INT $__subsystem__(SB)								
  :-1				0xe38711		cc			INT $__subsystem__(SB)								
  :-1				0xe38712		cc			INT $__subsystem__(SB)								
  :-1				0xe38713		cc			INT $__subsystem__(SB)								
  :-1				0xe38714		cc			INT $__subsystem__(SB)								
  :-1				0xe38715		cc			INT $__subsystem__(SB)								
  :-1				0xe38716		cc			INT $__subsystem__(SB)								
  :-1				0xe38717		cc			INT $__subsystem__(SB)								
  :-1				0xe38718		cc			INT $__subsystem__(SB)								
  :-1				0xe38719		cc			INT $__subsystem__(SB)								
  :-1				0xe3871a		cc			INT $__subsystem__(SB)								
  :-1				0xe3871b		cc			INT $__subsystem__(SB)								
  :-1				0xe3871c		cc			INT $__subsystem__(SB)								
  :-1				0xe3871d		cc			INT $__subsystem__(SB)								
  :-1				0xe3871e		cc			INT $__subsystem__(SB)								
  :-1				0xe3871f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).OnMonitorPush(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:191	0xe38720		493b6610		CMPQ SP, 0x10(R14)								
  traffic_dynamic.go:191	0xe38724		0f86d7010000		JBE 0xe38901									
  traffic_dynamic.go:191	0xe3872a		55			PUSHQ BP									
  traffic_dynamic.go:191	0xe3872b		4889e5			MOVQ SP, BP									
  traffic_dynamic.go:191	0xe3872e		4883ec40		SUBQ $__major_os_version__+58(SB), SP						
  traffic_dynamic.go:191	0xe38732		48895c2458		MOVQ BX, 0x58(SP)								
  traffic_dynamic.go:191	0xe38737		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_dynamic.go:192	0xe38740		4885c0			TESTQ AX, AX									
  traffic_dynamic.go:192	0xe38743		0f84b1010000		JE 0xe388fa									
  traffic_dynamic.go:92		0xe38749		4885ff			TESTQ DI, DI									
  traffic_dynamic.go:92		0xe3874c		0f84a8010000		JE 0xe388fa									
  traffic_dynamic.go:192	0xe38752		4889442450		MOVQ AX, 0x50(SP)								
  traffic_dynamic.go:192	0xe38757		48897c2468		MOVQ DI, 0x68(SP)								
  traffic_dynamic.go:192	0xe3875c		48894c2460		MOVQ CX, 0x60(SP)								
  traffic_dynamic.go:192	0xe38761		48895c2458		MOVQ BX, 0x58(SP)								
  traffic_dynamic.go:95		0xe38766		48837f5800		CMPQ 0x58(DI), $0x0								
  traffic_dynamic.go:95		0xe3876b		7519			JNE 0xe38786									
  traffic_dynamic.go:95		0xe3876d		48837f4800		CMPQ 0x48(DI), $0x0								
  traffic_dynamic.go:95		0xe38772		7512			JNE 0xe38786									
  traffic_dynamic.go:95		0xe38774		48837f3800		CMPQ 0x38(DI), $0x0								
  traffic_dynamic.go:95		0xe38779		750b			JNE 0xe38786									
  traffic_dynamic.go:95		0xe3877b		48837f0800		CMPQ 0x8(DI), $0x0								
  traffic_dynamic.go:192	0xe38780		0f8474010000		JE 0xe388fa									
  traffic_dynamic.go:195	0xe38786		488d0513db2d00		LEAQ runtime.types+1249952(SB), AX						
  traffic_dynamic.go:195	0xe3878d		e80e905dff		CALL runtime.newobject(SB)							
  traffic_dynamic.go:195	0xe38792		4889442438		MOVQ AX, 0x38(SP)								
  traffic_dynamic.go:195	0xe38797		833db253720200		CMPL runtime.writeBarrier(SB), $0x0						
  traffic_dynamic.go:195	0xe3879e		6690			NOPW										
  traffic_dynamic.go:195	0xe387a0		7419			JE 0xe387bb									
  traffic_dynamic.go:195	0xe387a2		4889c3			MOVQ AX, BX									
  traffic_dynamic.go:195	0xe387a5		488b4c2468		MOVQ 0x68(SP), CX								
  traffic_dynamic.go:195	0xe387aa		488d05efda2d00		LEAQ runtime.types+1249952(SB), AX						
  traffic_dynamic.go:195	0xe387b1		e86ac75dff		CALL runtime.wbMove(SB)								
  traffic_dynamic.go:195	0xe387b6		488b442438		MOVQ 0x38(SP), AX								
  traffic_dynamic.go:195	0xe387bb		488b742468		MOVQ 0x68(SP), SI								
  traffic_dynamic.go:195	0xe387c0		488b16			MOVQ 0(SI), DX									
  traffic_dynamic.go:195	0xe387c3		488910			MOVQ DX, 0(AX)									
  traffic_dynamic.go:195	0xe387c6		4883c608		ADDQ $__major_os_version__+2(SB), SI						
  traffic_dynamic.go:195	0xe387ca		488d7808		LEAQ 0x8(AX), DI								
  traffic_dynamic.go:195	0xe387ce		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_dynamic.go:195	0xe387d7		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_dynamic.go:195	0xe387e0		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_dynamic.go:195	0xe387e5		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_dynamic.go:195	0xe387ea		e85d0664ff		CALL 0x478e4c									
  traffic_dynamic.go:195	0xe387ef		488b6d00		MOVQ 0(BP), BP									
  traffic_dynamic.go:196	0xe387f3		90			NOPL										
  mutex.go:85			0xe387f4		31c0			XORL AX, AX									
  mutex.go:85			0xe387f6		488b542450		MOVQ 0x50(SP), DX								
  mutex.go:85			0xe387fb		41b801000000		MOVL $__minor_os_version__(SB), R8						
  mutex.go:85			0xe38801		f0440fb102		LOCK CMPXCHGL R8, 0(DX)								
  mutex.go:85			0xe38806		410f94c0		SETE R8										
  mutex.go:85			0xe3880a		4584c0			TESTL R8, R8									
  mutex.go:85			0xe3880d		750d			JNE 0xe3881c									
  mutex.go:92			0xe3880f		4889d0			MOVQ DX, AX									
  mutex.go:92			0xe38812		e809f264ff		CALL sync.(*Mutex).lockSlow(SB)							
  traffic_dynamic.go:197	0xe38817		488b542450		MOVQ 0x50(SP), DX								
  traffic_dynamic.go:197	0xe3881c		488b5a18		MOVQ 0x18(DX), BX								
  traffic_dynamic.go:197	0xe38820		488d05794e2400		LEAQ runtime.types+624288(SB), AX						
  traffic_dynamic.go:197	0xe38827		488b4c2458		MOVQ 0x58(SP), CX								
  traffic_dynamic.go:197	0xe3882c		488b7c2460		MOVQ 0x60(SP), DI								
  traffic_dynamic.go:197	0xe38831		e8ea5763ff		CALL runtime.mapassign_faststr(SB)						
  traffic_dynamic.go:197	0xe38836		8400			TESTB AL, 0(AX)									
  traffic_dynamic.go:197	0xe38838		833d1153720200		CMPL runtime.writeBarrier(SB), $0x0						
  traffic_dynamic.go:197	0xe3883f		90			NOPL										
  traffic_dynamic.go:197	0xe38840		7507			JNE 0xe38849									
  traffic_dynamic.go:197	0xe38842		488b4c2438		MOVQ 0x38(SP), CX								
  traffic_dynamic.go:197	0xe38847		eb14			JMP 0xe3885d									
  traffic_dynamic.go:197	0xe38849		e8f2fb63ff		CALL runtime.gcWriteBarrier2(SB)						
  traffic_dynamic.go:197	0xe3884e		488b4c2438		MOVQ 0x38(SP), CX								
  traffic_dynamic.go:197	0xe38853		49890b			MOVQ CX, 0(R11)									
  traffic_dynamic.go:197	0xe38856		488b10			MOVQ 0(AX), DX									
  traffic_dynamic.go:197	0xe38859		49895308		MOVQ DX, 0x8(R11)								
  traffic_dynamic.go:197	0xe3885d		488908			MOVQ CX, 0(AX)									
  traffic_dynamic.go:198	0xe38860		e83b5867ff		CALL time.Now(SB)								
  traffic_dynamic.go:198	0xe38865		4889442428		MOVQ AX, 0x28(SP)								
  traffic_dynamic.go:198	0xe3886a		48895c2420		MOVQ BX, 0x20(SP)								
  traffic_dynamic.go:198	0xe3886f		48894c2430		MOVQ CX, 0x30(SP)								
  traffic_dynamic.go:198	0xe38874		488b542450		MOVQ 0x50(SP), DX								
  traffic_dynamic.go:198	0xe38879		488b7220		MOVQ 0x20(DX), SI								
  traffic_dynamic.go:198	0xe3887d		488b7c2460		MOVQ 0x60(SP), DI								
  traffic_dynamic.go:198	0xe38882		488d05f7522400		LEAQ runtime.types+625536(SB), AX						
  traffic_dynamic.go:198	0xe38889		4889f3			MOVQ SI, BX									
  traffic_dynamic.go:198	0xe3888c		488b4c2458		MOVQ 0x58(SP), CX								
  traffic_dynamic.go:198	0xe38891		e88a5763ff		CALL runtime.mapassign_faststr(SB)						
  traffic_dynamic.go:198	0xe38896		488b4c2428		MOVQ 0x28(SP), CX								
  traffic_dynamic.go:198	0xe3889b		488908			MOVQ CX, 0(AX)									
  traffic_dynamic.go:198	0xe3889e		488b4c2420		MOVQ 0x20(SP), CX								
  traffic_dynamic.go:198	0xe388a3		48894808		MOVQ CX, 0x8(AX)								
  traffic_dynamic.go:198	0xe388a7		833da252720200		CMPL runtime.writeBarrier(SB), $0x0						
  traffic_dynamic.go:198	0xe388ae		7507			JNE 0xe388b7									
  traffic_dynamic.go:198	0xe388b0		488b4c2430		MOVQ 0x30(SP), CX								
  traffic_dynamic.go:198	0xe388b5		eb15			JMP 0xe388cc									
  traffic_dynamic.go:198	0xe388b7		e884fb63ff		CALL runtime.gcWriteBarrier2(SB)						
  traffic_dynamic.go:198	0xe388bc		488b4c2430		MOVQ 0x30(SP), CX								
  traffic_dynamic.go:198	0xe388c1		49890b			MOVQ CX, 0(R11)									
  traffic_dynamic.go:198	0xe388c4		488b5010		MOVQ 0x10(AX), DX								
  traffic_dynamic.go:198	0xe388c8		49895308		MOVQ DX, 0x8(R11)								
  traffic_dynamic.go:198	0xe388cc		48894810		MOVQ CX, 0x10(AX)								
  traffic_dynamic.go:199	0xe388d0		90			NOPL										
  mutex.go:221			0xe388d1		bbffffffff		MOVL $-0x1, BX									
  mutex.go:221			0xe388d6		488b442450		MOVQ 0x50(SP), AX								
  mutex.go:221			0xe388db		f00fc118		LOCK XADDL BX, 0(AX)								
  mutex.go:221			0xe388df		ffcb			DECL BX										
  mutex.go:222			0xe388e1		85db			TESTL BX, BX									
  mutex.go:222			0xe388e3		740a			JE 0xe388ef									
  mutex.go:225			0xe388e5		e816f464ff		CALL sync.(*Mutex).unlockSlow(SB)						
  traffic_dynamic.go:200	0xe388ea		488b442450		MOVQ 0x50(SP), AX								
  traffic_dynamic.go:200	0xe388ef		e84c1e0000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).recompute(SB)		
  traffic_dynamic.go:201	0xe388f4		4883c440		ADDQ $__major_os_version__+58(SB), SP						
  traffic_dynamic.go:201	0xe388f8		5d			POPQ BP										
  traffic_dynamic.go:201	0xe388f9		c3			RET										
  traffic_dynamic.go:193	0xe388fa		4883c440		ADDQ $__major_os_version__+58(SB), SP						
  traffic_dynamic.go:193	0xe388fe		5d			POPQ BP										
  traffic_dynamic.go:193	0xe388ff		90			NOPL										
  traffic_dynamic.go:193	0xe38900		c3			RET										
  traffic_dynamic.go:191	0xe38901		4889442408		MOVQ AX, 0x8(SP)								
  traffic_dynamic.go:191	0xe38906		48895c2410		MOVQ BX, 0x10(SP)								
  traffic_dynamic.go:191	0xe3890b		48894c2418		MOVQ CX, 0x18(SP)								
  traffic_dynamic.go:191	0xe38910		48897c2420		MOVQ DI, 0x20(SP)								
  traffic_dynamic.go:191	0xe38915		e8c6db63ff		CALL runtime.morestack_noctxt.abi0(SB)						
  traffic_dynamic.go:191	0xe3891a		488b442408		MOVQ 0x8(SP), AX								
  traffic_dynamic.go:191	0xe3891f		488b5c2410		MOVQ 0x10(SP), BX								
  traffic_dynamic.go:191	0xe38924		488b4c2418		MOVQ 0x18(SP), CX								
  traffic_dynamic.go:191	0xe38929		488b7c2420		MOVQ 0x20(SP), DI								
  traffic_dynamic.go:191	0xe3892e		e9edfdffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).OnMonitorPush(SB)	
  :-1				0xe38933		cc			INT $__subsystem__(SB)								
  :-1				0xe38934		cc			INT $__subsystem__(SB)								
  :-1				0xe38935		cc			INT $__subsystem__(SB)								
  :-1				0xe38936		cc			INT $__subsystem__(SB)								
  :-1				0xe38937		cc			INT $__subsystem__(SB)								
  :-1				0xe38938		cc			INT $__subsystem__(SB)								
  :-1				0xe38939		cc			INT $__subsystem__(SB)								
  :-1				0xe3893a		cc			INT $__subsystem__(SB)								
  :-1				0xe3893b		cc			INT $__subsystem__(SB)								
  :-1				0xe3893c		cc			INT $__subsystem__(SB)								
  :-1				0xe3893d		cc			INT $__subsystem__(SB)								
  :-1				0xe3893e		cc			INT $__subsystem__(SB)								
  :-1				0xe3893f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).FreshMonitorSnap(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:204	0xe38940		493b6610		CMPQ SP, 0x10(R14)								
  traffic_dynamic.go:204	0xe38944		0f8693010000		JBE 0xe38add									
  traffic_dynamic.go:204	0xe3894a		55			PUSHQ BP									
  traffic_dynamic.go:204	0xe3894b		4889e5			MOVQ SP, BP									
  traffic_dynamic.go:204	0xe3894e		4883ec48		SUBQ $__major_os_version__+66(SB), SP						
  traffic_dynamic.go:204	0xe38952		48895c2460		MOVQ BX, 0x60(SP)								
  traffic_dynamic.go:204	0xe38957		660f1f840000000000	NOPW 0(AX)(AX*1)								
  traffic_dynamic.go:205	0xe38960		4885c0			TESTQ AX, AX									
  traffic_dynamic.go:205	0xe38963		0f846a010000		JE 0xe38ad3									
  traffic_dynamic.go:205	0xe38969		4885c9			TESTQ CX, CX									
  traffic_dynamic.go:205	0xe3896c		0f8461010000		JE 0xe38ad3									
  traffic_dynamic.go:205	0xe38972		4889442458		MOVQ AX, 0x58(SP)								
  traffic_dynamic.go:205	0xe38977		48897c2470		MOVQ DI, 0x70(SP)								
  traffic_dynamic.go:205	0xe3897c		48894c2468		MOVQ CX, 0x68(SP)								
  traffic_dynamic.go:205	0xe38981		48895c2460		MOVQ BX, 0x60(SP)								
  traffic_dynamic.go:208	0xe38986		90			NOPL										
  traffic_dynamic.go:205	0xe38987		4889c2			MOVQ AX, DX									
  mutex.go:85			0xe3898a		31c0			XORL AX, AX									
  mutex.go:85			0xe3898c		be01000000		MOVL $__minor_os_version__(SB), SI						
  mutex.go:85			0xe38991		f00fb132		LOCK CMPXCHGL SI, 0(DX)								
  mutex.go:85			0xe38995		400f94c6		SETE SI										
  mutex.go:85			0xe38999		4084f6			TESTL SI, SI									
  mutex.go:85			0xe3899c		7517			JNE 0xe389b5									
  mutex.go:92			0xe3899e		4889d0			MOVQ DX, AX									
  mutex.go:92			0xe389a1		e87af064ff		CALL sync.(*Mutex).lockSlow(SB)							
  traffic_dynamic.go:209	0xe389a6		488b4c2468		MOVQ 0x68(SP), CX								
  traffic_dynamic.go:209	0xe389ab		488b542458		MOVQ 0x58(SP), DX								
  traffic_dynamic.go:209	0xe389b0		488b5c2460		MOVQ 0x60(SP), BX								
  traffic_dynamic.go:209	0xe389b5		488b7218		MOVQ 0x18(DX), SI								
  traffic_dynamic.go:209	0xe389b9		488d05e04c2400		LEAQ runtime.types+624288(SB), AX						
  traffic_dynamic.go:209	0xe389c0		4889cf			MOVQ CX, DI									
  traffic_dynamic.go:209	0xe389c3		4889d9			MOVQ BX, CX									
  traffic_dynamic.go:209	0xe389c6		4889f3			MOVQ SI, BX									
  traffic_dynamic.go:209	0xe389c9		e872b95dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_dynamic.go:210	0xe389ce		488b542458		MOVQ 0x58(SP), DX								
  traffic_dynamic.go:210	0xe389d3		488b5a20		MOVQ 0x20(DX), BX								
  traffic_dynamic.go:209	0xe389d7		488b30			MOVQ 0(AX), SI									
  traffic_dynamic.go:209	0xe389da		4889742430		MOVQ SI, 0x30(SP)								
  traffic_dynamic.go:210	0xe389df		488d059a512400		LEAQ runtime.types+625536(SB), AX						
  traffic_dynamic.go:210	0xe389e6		488b4c2460		MOVQ 0x60(SP), CX								
  traffic_dynamic.go:210	0xe389eb		488b7c2468		MOVQ 0x68(SP), DI								
  traffic_dynamic.go:210	0xe389f0		e84bb95dff		CALL runtime.mapaccess1_faststr(SB)						
  traffic_dynamic.go:210	0xe389f5		488b10			MOVQ 0(AX), DX									
  traffic_dynamic.go:210	0xe389f8		488b5808		MOVQ 0x8(AX), BX								
  traffic_dynamic.go:210	0xe389fc		488b4810		MOVQ 0x10(AX), CX								
  traffic_dynamic.go:211	0xe38a00		90			NOPL										
  mutex.go:221			0xe38a01		beffffffff		MOVL $-0x1, SI									
  mutex.go:221			0xe38a06		488b442458		MOVQ 0x58(SP), AX								
  mutex.go:221			0xe38a0b		f00fc130		LOCK XADDL SI, 0(AX)								
  mutex.go:221			0xe38a0f		ffce			DECL SI										
  mutex.go:222			0xe38a11		85f6			TESTL SI, SI									
  mutex.go:222			0xe38a13		7425			JE 0xe38a3a									
  traffic_dynamic.go:210	0xe38a15		48895c2428		MOVQ BX, 0x28(SP)								
  traffic_dynamic.go:210	0xe38a1a		4889542420		MOVQ DX, 0x20(SP)								
  traffic_dynamic.go:210	0xe38a1f		48894c2438		MOVQ CX, 0x38(SP)								
  mutex.go:225			0xe38a24		89f3			MOVL SI, BX									
  mutex.go:225			0xe38a26		e8d5f264ff		CALL sync.(*Mutex).unlockSlow(SB)						
  traffic_dynamic.go:212	0xe38a2b		488b4c2438		MOVQ 0x38(SP), CX								
  traffic_dynamic.go:212	0xe38a30		488b542420		MOVQ 0x20(SP), DX								
  traffic_dynamic.go:212	0xe38a35		488b5c2428		MOVQ 0x28(SP), BX								
  traffic_dynamic.go:212	0xe38a3a		488b742430		MOVQ 0x30(SP), SI								
  traffic_dynamic.go:212	0xe38a3f		90			NOPL										
  traffic_dynamic.go:212	0xe38a40		4885f6			TESTQ SI, SI									
  traffic_dynamic.go:212	0xe38a43		0f8480000000		JE 0xe38ac9									
  traffic_dynamic.go:212	0xe38a49		488b7c2470		MOVQ 0x70(SP), DI								
  traffic_dynamic.go:212	0xe38a4e		4885ff			TESTQ DI, DI									
  traffic_dynamic.go:212	0xe38a51		7e76			JLE 0xe38ac9									
  traffic_dynamic.go:212	0xe38a53		4889d0			MOVQ DX, AX									
  traffic_dynamic.go:212	0xe38a56		e845be66ff		CALL time.Since(SB)								
  traffic_dynamic.go:212	0xe38a5b		488b542470		MOVQ 0x70(SP), DX								
  traffic_dynamic.go:212	0xe38a60		4839d0			CMPQ AX, DX									
  traffic_dynamic.go:212	0xe38a63		7f64			JG 0xe38ac9									
  traffic_dynamic.go:215	0xe38a65		488d0534d82d00		LEAQ runtime.types+1249952(SB), AX						
  traffic_dynamic.go:215	0xe38a6c		e82f8d5dff		CALL runtime.newobject(SB)							
  traffic_dynamic.go:215	0xe38a71		833dd850720200		CMPL runtime.writeBarrier(SB), $0x0						
  traffic_dynamic.go:215	0xe38a78		741e			JE 0xe38a98									
  traffic_dynamic.go:215	0xe38a7a		4889442440		MOVQ AX, 0x40(SP)								
  traffic_dynamic.go:215	0xe38a7f		4889c3			MOVQ AX, BX									
  traffic_dynamic.go:215	0xe38a82		488b4c2430		MOVQ 0x30(SP), CX								
  traffic_dynamic.go:215	0xe38a87		488d0512d82d00		LEAQ runtime.types+1249952(SB), AX						
  traffic_dynamic.go:215	0xe38a8e		e88dc45dff		CALL runtime.wbMove(SB)								
  traffic_dynamic.go:215	0xe38a93		488b442440		MOVQ 0x40(SP), AX								
  traffic_dynamic.go:215	0xe38a98		488b742430		MOVQ 0x30(SP), SI								
  traffic_dynamic.go:215	0xe38a9d		488b0e			MOVQ 0(SI), CX									
  traffic_dynamic.go:215	0xe38aa0		488908			MOVQ CX, 0(AX)									
  traffic_dynamic.go:215	0xe38aa3		4883c608		ADDQ $__major_os_version__+2(SB), SI						
  traffic_dynamic.go:215	0xe38aa7		488d7808		LEAQ 0x8(AX), DI								
  traffic_dynamic.go:215	0xe38aab		48896c24f0		MOVQ BP, -0x10(SP)								
  traffic_dynamic.go:215	0xe38ab0		488d6c24f0		LEAQ -0x10(SP), BP								
  traffic_dynamic.go:215	0xe38ab5		e8920364ff		CALL 0x478e4c									
  traffic_dynamic.go:215	0xe38aba		488b6d00		MOVQ 0(BP), BP									
  traffic_dynamic.go:216	0xe38abe		bb01000000		MOVL $__minor_os_version__(SB), BX						
  traffic_dynamic.go:216	0xe38ac3		4883c448		ADDQ $__major_os_version__+66(SB), SP						
  traffic_dynamic.go:216	0xe38ac7		5d			POPQ BP										
  traffic_dynamic.go:216	0xe38ac8		c3			RET										
  traffic_dynamic.go:213	0xe38ac9		31c0			XORL AX, AX									
  traffic_dynamic.go:213	0xe38acb		31db			XORL BX, BX									
  traffic_dynamic.go:213	0xe38acd		4883c448		ADDQ $__major_os_version__+66(SB), SP						
  traffic_dynamic.go:213	0xe38ad1		5d			POPQ BP										
  traffic_dynamic.go:213	0xe38ad2		c3			RET										
  traffic_dynamic.go:206	0xe38ad3		31c0			XORL AX, AX									
  traffic_dynamic.go:206	0xe38ad5		31db			XORL BX, BX									
  traffic_dynamic.go:206	0xe38ad7		4883c448		ADDQ $__major_os_version__+66(SB), SP						
  traffic_dynamic.go:206	0xe38adb		5d			POPQ BP										
  traffic_dynamic.go:206	0xe38adc		c3			RET										
  traffic_dynamic.go:204	0xe38add		4889442408		MOVQ AX, 0x8(SP)								
  traffic_dynamic.go:204	0xe38ae2		48895c2410		MOVQ BX, 0x10(SP)								
  traffic_dynamic.go:204	0xe38ae7		48894c2418		MOVQ CX, 0x18(SP)								
  traffic_dynamic.go:204	0xe38aec		48897c2420		MOVQ DI, 0x20(SP)								
  traffic_dynamic.go:204	0xe38af1		e8ead963ff		CALL runtime.morestack_noctxt.abi0(SB)						
  traffic_dynamic.go:204	0xe38af6		488b442408		MOVQ 0x8(SP), AX								
  traffic_dynamic.go:204	0xe38afb		488b5c2410		MOVQ 0x10(SP), BX								
  traffic_dynamic.go:204	0xe38b00		488b4c2418		MOVQ 0x18(SP), CX								
  traffic_dynamic.go:204	0xe38b05		488b7c2420		MOVQ 0x20(SP), DI								
  traffic_dynamic.go:204	0xe38b0a		e931feffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).FreshMonitorSnap(SB)	
  :-1				0xe38b0f		cc			INT $__subsystem__(SB)								
  :-1				0xe38b10		cc			INT $__subsystem__(SB)								
  :-1				0xe38b11		cc			INT $__subsystem__(SB)								
  :-1				0xe38b12		cc			INT $__subsystem__(SB)								
  :-1				0xe38b13		cc			INT $__subsystem__(SB)								
  :-1				0xe38b14		cc			INT $__subsystem__(SB)								
  :-1				0xe38b15		cc			INT $__subsystem__(SB)								
  :-1				0xe38b16		cc			INT $__subsystem__(SB)								
  :-1				0xe38b17		cc			INT $__subsystem__(SB)								
  :-1				0xe38b18		cc			INT $__subsystem__(SB)								
  :-1				0xe38b19		cc			INT $__subsystem__(SB)								
  :-1				0xe38b1a		cc			INT $__subsystem__(SB)								
  :-1				0xe38b1b		cc			INT $__subsystem__(SB)								
  :-1				0xe38b1c		cc			INT $__subsystem__(SB)								
  :-1				0xe38b1d		cc			INT $__subsystem__(SB)								
  :-1				0xe38b1e		cc			INT $__subsystem__(SB)								
  :-1				0xe38b1f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.allSubTasksTerminalForDispatch(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:251	0xe38b20		4c8da42408ffffff	LEAQ 0xffffff08(SP), R12					
  traffic_dynamic.go:251	0xe38b28		4d3b6610		CMPQ R12, 0x10(R14)						
  traffic_dynamic.go:251	0xe38b2c		0f8674030000		JBE 0xe38ea6							
  traffic_dynamic.go:251	0xe38b32		55			PUSHQ BP							
  traffic_dynamic.go:251	0xe38b33		4889e5			MOVQ SP, BP							
  traffic_dynamic.go:251	0xe38b36		4881ec70010000		SUBQ $.file+291(SB), SP						
  traffic_dynamic.go:251	0xe38b3d		48899c2488010000	MOVQ BX, 0x188(SP)						
  traffic_dynamic.go:252	0xe38b45		4885c0			TESTQ AX, AX							
  traffic_dynamic.go:252	0xe38b48		0f84a5000000		JE 0xe38bf3							
  traffic_dynamic.go:252	0xe38b4e		4885c9			TESTQ CX, CX							
  traffic_dynamic.go:252	0xe38b51		0f849c000000		JE 0xe38bf3							
  traffic_dynamic.go:252	0xe38b57		4889842480010000	MOVQ AX, 0x180(SP)						
  traffic_dynamic.go:252	0xe38b5f		4889bc2498010000	MOVQ DI, 0x198(SP)						
  traffic_dynamic.go:252	0xe38b67		48898c2490010000	MOVQ CX, 0x190(SP)						
  traffic_dynamic.go:252	0xe38b6f		48899c2488010000	MOVQ BX, 0x188(SP)						
  traffic_dynamic.go:223	0xe38b77		488b5058		MOVQ 0x58(AX), DX						
  traffic_dynamic.go:223	0xe38b7b		440f11bc2438010000	MOVUPS X15, 0x138(SP)						
  traffic_dynamic.go:223	0xe38b84		440f11bc2448010000	MOVUPS X15, 0x148(SP)						
  traffic_dynamic.go:223	0xe38b8d		440f11bc2458010000	MOVUPS X15, 0x158(SP)						
  traffic_dynamic.go:223	0xe38b96		4883fa08		CMPQ DX, $__major_os_version__+2(SB)				
  traffic_dynamic.go:223	0xe38b9a		7f29			JG 0xe38bc5							
  traffic_dynamic.go:223	0xe38b9c		488d7c2468		LEAQ 0x68(SP), DI						
  traffic_dynamic.go:223	0xe38ba1		488d7fd0		LEAQ -0x30(DI), DI						
  traffic_dynamic.go:223	0xe38ba5		48896c24f0		MOVQ BP, -0x10(SP)						
  traffic_dynamic.go:223	0xe38baa		488d6c24f0		LEAQ -0x10(SP), BP						
  traffic_dynamic.go:223	0xe38baf		e80eff63ff		CALL 0x478ac2							
  traffic_dynamic.go:223	0xe38bb4		488b6d00		MOVQ 0(BP), BP							
  traffic_dynamic.go:223	0xe38bb8		4c8d442468		LEAQ 0x68(SP), R8						
  traffic_dynamic.go:223	0xe38bbd		4c89842448010000	MOVQ R8, 0x148(SP)						
  traffic_dynamic.go:223	0xe38bc5		488d05344e2400		LEAQ runtime.types+625152(SB), AX				
  traffic_dynamic.go:223	0xe38bcc		4889d3			MOVQ DX, BX							
  traffic_dynamic.go:223	0xe38bcf		488d8c2438010000	LEAQ 0x138(SP), CX						
  traffic_dynamic.go:223	0xe38bd7		e8442463ff		CALL runtime.makemap(SB)					
  traffic_dynamic.go:223	0xe38bdc		4889442458		MOVQ AX, 0x58(SP)						
  traffic_dynamic.go:224	0xe38be1		488b942480010000	MOVQ 0x180(SP), DX						
  traffic_dynamic.go:224	0xe38be9		488b7250		MOVQ 0x50(DX), SI						
  traffic_dynamic.go:224	0xe38bed		488b7a58		MOVQ 0x58(DX), DI						
  traffic_dynamic.go:224	0xe38bf1		eb60			JMP 0xe38c53							
  traffic_dynamic.go:253	0xe38bf3		31c0			XORL AX, AX							
  traffic_dynamic.go:253	0xe38bf5		4881c470010000		ADDQ $.file+291(SB), SP						
  traffic_dynamic.go:253	0xe38bfc		5d			POPQ BP								
  traffic_dynamic.go:253	0xe38bfd		c3			RET								
  traffic_dynamic.go:224	0xe38bfe		48897c2448		MOVQ DI, 0x48(SP)						
  traffic_dynamic.go:224	0xe38c03		4889b42468010000	MOVQ SI, 0x168(SP)						
  traffic_dynamic.go:224	0xe38c0b		488b0e			MOVQ 0(SI), CX							
  traffic_dynamic.go:224	0xe38c0e		488b7e08		MOVQ 0x8(SI), DI						
  traffic_dynamic.go:224	0xe38c12		488b5610		MOVQ 0x10(SI), DX						
  traffic_dynamic.go:224	0xe38c16		4889542440		MOVQ DX, 0x40(SP)						
  traffic_dynamic.go:225	0xe38c1b		4889c3			MOVQ AX, BX							
  traffic_dynamic.go:225	0xe38c1e		488d05db4d2400		LEAQ runtime.types+625152(SB), AX				
  traffic_dynamic.go:225	0xe38c25		e8f65363ff		CALL runtime.mapassign_faststr(SB)				
  traffic_dynamic.go:225	0xe38c2a		488b542440		MOVQ 0x40(SP), DX						
  traffic_dynamic.go:225	0xe38c2f		488910			MOVQ DX, 0(AX)							
  traffic_dynamic.go:224	0xe38c32		488bb42468010000	MOVQ 0x168(SP), SI						
  traffic_dynamic.go:224	0xe38c3a		4883c620		ADDQ $__major_os_version__+26(SB), SI				
  traffic_dynamic.go:224	0xe38c3e		488b7c2448		MOVQ 0x48(SP), DI						
  traffic_dynamic.go:224	0xe38c43		48ffcf			DECQ DI								
  traffic_dynamic.go:225	0xe38c46		488b442458		MOVQ 0x58(SP), AX						
  traffic_dynamic.go:263	0xe38c4b		488b942480010000	MOVQ 0x180(SP), DX						
  traffic_dynamic.go:224	0xe38c53		4885ff			TESTQ DI, DI							
  traffic_dynamic.go:224	0xe38c56		7fa6			JG 0xe38bfe							
  traffic_dynamic.go:227	0xe38c58		488bb42488010000	MOVQ 0x188(SP), SI						
  traffic_dynamic.go:227	0xe38c60		4989f0			MOVQ SI, R8							
  traffic_dynamic.go:227	0xe38c63		488b8c2490010000	MOVQ 0x190(SP), CX						
  traffic_dynamic.go:227	0xe38c6b		eb29			JMP 0xe38c96							
  traffic_dynamic.go:227	0xe38c6d		488bb42468010000	MOVQ 0x168(SP), SI						
  traffic_dynamic.go:227	0xe38c75		4883c610		ADDQ $__major_os_version__+10(SB), SI				
  traffic_dynamic.go:227	0xe38c79		488b4c2448		MOVQ 0x48(SP), CX						
  traffic_dynamic.go:227	0xe38c7e		48ffc9			DECQ CX								
  traffic_dynamic.go:228	0xe38c81		488b442458		MOVQ 0x58(SP), AX						
  traffic_dynamic.go:263	0xe38c86		488b942480010000	MOVQ 0x180(SP), DX						
  traffic_dynamic.go:242	0xe38c8e		4c8b842488010000	MOVQ 0x188(SP), R8						
  traffic_dynamic.go:227	0xe38c96		4885c9			TESTQ CX, CX							
  traffic_dynamic.go:227	0xe38c99		7e53			JLE 0xe38cee							
  traffic_dynamic.go:227	0xe38c9b		48894c2448		MOVQ CX, 0x48(SP)						
  traffic_dynamic.go:227	0xe38ca0		4889b42468010000	MOVQ SI, 0x168(SP)						
  traffic_dynamic.go:227	0xe38ca8		488b0e			MOVQ 0(SI), CX							
  traffic_dynamic.go:227	0xe38cab		488b7e08		MOVQ 0x8(SI), DI						
  traffic_dynamic.go:228	0xe38caf		4889c3			MOVQ AX, BX							
  traffic_dynamic.go:228	0xe38cb2		488d05474d2400		LEAQ runtime.types+625152(SB), AX				
  traffic_dynamic.go:228	0xe38cb9		e8824f63ff		CALL runtime.mapaccess2_faststr(SB)				
  traffic_dynamic.go:228	0xe38cbe		6690			NOPW								
  traffic_dynamic.go:228	0xe38cc0		84db			TESTL BL, BL							
  traffic_dynamic.go:229	0xe38cc2		7416			JE 0xe38cda							
  traffic_dynamic.go:228	0xe38cc4		488b30			MOVQ 0(AX), SI							
  traffic_dynamic.go:28		0xe38cc7		4c8d46fc		LEAQ -0x4(SI), R8						
  traffic_dynamic.go:28		0xe38ccb		4983f803		CMPQ R8, $__subsystem__(SB)					
  traffic_dynamic.go:28		0xe38ccf		769c			JBE 0xe38c6d							
  traffic_dynamic.go:28		0xe38cd1		4881fe94010000		CMPQ SI, $.file+327(SB)						
  traffic_dynamic.go:28		0xe38cd8		7493			JE 0xe38c6d							
  traffic_dynamic.go:263	0xe38cda		488b942480010000	MOVQ 0x180(SP), DX						
  traffic_dynamic.go:242	0xe38ce2		4c8b842488010000	MOVQ 0x188(SP), R8						
  traffic_dynamic.go:242	0xe38cea		31c0			XORL AX, AX							
  traffic_dynamic.go:255	0xe38cec		eb05			JMP 0xe38cf3							
  traffic_dynamic.go:255	0xe38cee		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_dynamic.go:255	0xe38cf3		84c0			TESTL AL, AL							
  traffic_dynamic.go:255	0xe38cf5		7533			JNE 0xe38d2a							
  traffic_dynamic.go:242	0xe38cf7		488bb42498010000	MOVQ 0x198(SP), SI						
  traffic_dynamic.go:242	0xe38cff		48ffce			DECQ SI								
  traffic_dynamic.go:242	0xe38d02		48f7de			NEGQ SI								
  traffic_dynamic.go:242	0xe38d05		48c1fe3f		SARQ $__major_os_version__+57(SB), SI				
  traffic_dynamic.go:242	0xe38d09		83e610			ANDL $__major_os_version__+10(SB), SI				
  traffic_dynamic.go:242	0xe38d0c		4c01c6			ADDQ R8, SI							
  traffic_dynamic.go:258	0xe38d0f		90			NOPL								
  traffic_dynamic.go:241	0xe38d10		498b7808		MOVQ 0x8(R8), DI						
  traffic_dynamic.go:241	0xe38d14		498b18			MOVQ 0(R8), BX							
  traffic_dynamic.go:241	0xe38d17		48895c2450		MOVQ BX, 0x50(SP)						
  traffic_dynamic.go:242	0xe38d1c		4c8b842490010000	MOVQ 0x190(SP), R8						
  traffic_dynamic.go:242	0xe38d24		4d8d48ff		LEAQ -0x1(R8), R9						
  traffic_dynamic.go:242	0xe38d28		eb16			JMP 0xe38d40							
  traffic_dynamic.go:256	0xe38d2a		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_dynamic.go:256	0xe38d2f		4881c470010000		ADDQ $.file+291(SB), SP						
  traffic_dynamic.go:256	0xe38d36		5d			POPQ BP								
  traffic_dynamic.go:256	0xe38d37		c3			RET								
  traffic_dynamic.go:242	0xe38d38		4883c610		ADDQ $__major_os_version__+10(SB), SI				
  traffic_dynamic.go:242	0xe38d3c		49ffc9			DECQ R9								
  traffic_dynamic.go:242	0xe38d3f		90			NOPL								
  traffic_dynamic.go:242	0xe38d40		4d85c9			TESTQ R9, R9							
  traffic_dynamic.go:242	0xe38d43		7e23			JLE 0xe38d68							
  traffic_dynamic.go:242	0xe38d45		4c894c2448		MOVQ R9, 0x48(SP)						
  traffic_dynamic.go:242	0xe38d4a		4889b42468010000	MOVQ SI, 0x168(SP)						
  traffic_dynamic.go:242	0xe38d52		488b06			MOVQ 0(SI), AX							
  traffic_dynamic.go:242	0xe38d55		4889442460		MOVQ AX, 0x60(SP)						
  traffic_dynamic.go:242	0xe38d5a		4c8b5608		MOVQ 0x8(SI), R10						
  traffic_dynamic.go:242	0xe38d5e		4c89542438		MOVQ R10, 0x38(SP)						
  traffic_dynamic.go:243	0xe38d63		e9cc000000		JMP 0xe38e34							
  traffic_dynamic.go:259	0xe38d68		4885ff			TESTQ DI, DI							
  traffic_dynamic.go:259	0xe38d6b		7411			JE 0xe38d7e							
  traffic_dynamic.go:243	0xe38d6d		48897c2420		MOVQ DI, 0x20(SP)						
  traffic_dynamic.go:263	0xe38d72		488b7250		MOVQ 0x50(DX), SI						
  traffic_dynamic.go:263	0xe38d76		488b5258		MOVQ 0x58(DX), DX						
  traffic_dynamic.go:263	0xe38d7a		31c0			XORL AX, AX							
  traffic_dynamic.go:263	0xe38d7c		eb12			JMP 0xe38d90							
  traffic_dynamic.go:260	0xe38d7e		31c0			XORL AX, AX							
  traffic_dynamic.go:260	0xe38d80		4881c470010000		ADDQ $.file+291(SB), SP						
  traffic_dynamic.go:260	0xe38d87		5d			POPQ BP								
  traffic_dynamic.go:260	0xe38d88		c3			RET								
  traffic_dynamic.go:263	0xe38d89		4883c620		ADDQ $__major_os_version__+26(SB), SI				
  traffic_dynamic.go:263	0xe38d8d		48ffca			DECQ DX								
  traffic_dynamic.go:263	0xe38d90		4885d2			TESTQ DX, DX							
  traffic_dynamic.go:263	0xe38d93		0f8e89000000		JLE 0xe38e22							
  traffic_dynamic.go:263	0xe38d99		4c8b4e10		MOVQ 0x10(SI), R9						
  traffic_dynamic.go:263	0xe38d9d		0f1f00			NOPL 0(AX)							
  strings.go:17			0xe38da0		48397e08		CMPQ 0x8(SI), DI						
  strings.go:17			0xe38da4		7d04			JGE 0xe38daa							
  strings.go:17			0xe38da6		31c9			XORL CX, CX							
  strings.go:17			0xe38da8		eb4d			JMP 0xe38df7							
  traffic_dynamic.go:263	0xe38daa		4889542448		MOVQ DX, 0x48(SP)						
  traffic_dynamic.go:263	0xe38daf		4889b42468010000	MOVQ SI, 0x168(SP)						
  traffic_dynamic.go:263	0xe38db7		4c894c2440		MOVQ R9, 0x40(SP)						
  traffic_dynamic.go:267	0xe38dbc		4889442430		MOVQ AX, 0x30(SP)						
  traffic_dynamic.go:263	0xe38dc1		488b06			MOVQ 0(SI), AX							
  strings.go:17			0xe38dc4		4889f9			MOVQ DI, CX							
  strings.go:17			0xe38dc7		e894a05cff		CALL runtime.memequal(SB)					
  traffic_dynamic.go:263	0xe38dcc		488b542448		MOVQ 0x48(SP), DX						
  strings.go:17			0xe38dd1		488b5c2450		MOVQ 0x50(SP), BX						
  traffic_dynamic.go:263	0xe38dd6		488bb42468010000	MOVQ 0x168(SP), SI						
  strings.go:17			0xe38dde		488b7c2420		MOVQ 0x20(SP), DI						
  traffic_dynamic.go:272	0xe38de3		4c8b842490010000	MOVQ 0x190(SP), R8						
  traffic_dynamic.go:28		0xe38deb		4c8b4c2440		MOVQ 0x40(SP), R9						
  strings.go:462		0xe38df0		89c1			MOVL AX, CX							
  traffic_dynamic.go:267	0xe38df2		488b442430		MOVQ 0x30(SP), AX						
  strings.go:462		0xe38df7		84c9			TESTL CL, CL							
  traffic_dynamic.go:264	0xe38df9		748e			JE 0xe38d89							
  traffic_dynamic.go:28		0xe38dfb		4d8d51fc		LEAQ -0x4(R9), R10						
  traffic_dynamic.go:28		0xe38dff		90			NOPL								
  traffic_dynamic.go:28		0xe38e00		4983fa03		CMPQ R10, $__subsystem__(SB)					
  traffic_dynamic.go:28		0xe38e04		7609			JBE 0xe38e0f							
  traffic_dynamic.go:28		0xe38e06		4981f994010000		CMPQ R9, $.file+327(SB)						
  traffic_dynamic.go:28		0xe38e0d		7508			JNE 0xe38e17							
  traffic_dynamic.go:267	0xe38e0f		48ffc0			INCQ AX								
  traffic_dynamic.go:268	0xe38e12		e972ffffff		JMP 0xe38d89							
  traffic_dynamic.go:269	0xe38e17		31c0			XORL AX, AX							
  traffic_dynamic.go:269	0xe38e19		4881c470010000		ADDQ $.file+291(SB), SP						
  traffic_dynamic.go:269	0xe38e20		5d			POPQ BP								
  traffic_dynamic.go:269	0xe38e21		c3			RET								
  traffic_dynamic.go:272	0xe38e22		4939c0			CMPQ R8, AX							
  traffic_dynamic.go:272	0xe38e25		0f9ec0			SETLE AL							
  traffic_dynamic.go:272	0xe38e28		4881c470010000		ADDQ $.file+291(SB), SP						
  traffic_dynamic.go:272	0xe38e2f		5d			POPQ BP								
  traffic_dynamic.go:272	0xe38e30		c3			RET								
  traffic_dynamic.go:243	0xe38e31		4889cf			MOVQ CX, DI							
  traffic_dynamic.go:243	0xe38e34		4885ff			TESTQ DI, DI							
  traffic_dynamic.go:243	0xe38e37		744e			JE 0xe38e87							
  strings.go:17			0xe38e39		4c39d7			CMPQ DI, R10							
  strings.go:17			0xe38e3c		7e04			JLE 0xe38e42							
  strings.go:17			0xe38e3e		31c9			XORL CX, CX							
  strings.go:17			0xe38e40		eb40			JMP 0xe38e82							
  traffic_dynamic.go:243	0xe38e42		48897c2428		MOVQ DI, 0x28(SP)						
  strings.go:17			0xe38e47		4889f9			MOVQ DI, CX							
  strings.go:17			0xe38e4a		e811a05cff		CALL runtime.memequal(SB)					
  traffic_dynamic.go:263	0xe38e4f		488b942480010000	MOVQ 0x180(SP), DX						
  strings.go:17			0xe38e57		488b5c2450		MOVQ 0x50(SP), BX						
  traffic_dynamic.go:242	0xe38e5c		488bb42468010000	MOVQ 0x168(SP), SI						
  traffic_dynamic.go:244	0xe38e64		488b7c2428		MOVQ 0x28(SP), DI						
  traffic_dynamic.go:272	0xe38e69		4c8b842490010000	MOVQ 0x190(SP), R8						
  traffic_dynamic.go:242	0xe38e71		4c8b4c2448		MOVQ 0x48(SP), R9						
  strings.go:17			0xe38e76		4c8b542438		MOVQ 0x38(SP), R10						
  strings.go:462		0xe38e7b		89c1			MOVL AX, CX							
  strings.go:17			0xe38e7d		488b442460		MOVQ 0x60(SP), AX						
  traffic_dynamic.go:243	0xe38e82		83f101			XORL $__minor_os_version__(SB), CX				
  traffic_dynamic.go:243	0xe38e85		eb02			JMP 0xe38e89							
  traffic_dynamic.go:243	0xe38e87		31c9			XORL CX, CX							
  traffic_dynamic.go:243	0xe38e89		84c9			TESTL CL, CL							
  traffic_dynamic.go:243	0xe38e8b		0f84a7feffff		JE 0xe38d38							
  traffic_dynamic.go:244	0xe38e91		488d4fff		LEAQ -0x1(DI), CX						
  traffic_dynamic.go:244	0xe38e95		4839cf			CMPQ DI, CX							
  traffic_dynamic.go:244	0xe38e98		7397			JAE 0xe38e31							
  traffic_dynamic.go:244	0xe38e9a		4889fa			MOVQ DI, DX							
  traffic_dynamic.go:244	0xe38e9d		0f1f00			NOPL 0(AX)							
  traffic_dynamic.go:244	0xe38ea0		e87bf963ff		CALL runtime.panicSliceAlen(SB)					
  traffic_dynamic.go:244	0xe38ea5		90			NOPL								
  traffic_dynamic.go:251	0xe38ea6		4889442408		MOVQ AX, 0x8(SP)						
  traffic_dynamic.go:251	0xe38eab		48895c2410		MOVQ BX, 0x10(SP)						
  traffic_dynamic.go:251	0xe38eb0		48894c2418		MOVQ CX, 0x18(SP)						
  traffic_dynamic.go:251	0xe38eb5		48897c2420		MOVQ DI, 0x20(SP)						
  traffic_dynamic.go:251	0xe38eba		e821d663ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_dynamic.go:251	0xe38ebf		488b442408		MOVQ 0x8(SP), AX						
  traffic_dynamic.go:251	0xe38ec4		488b5c2410		MOVQ 0x10(SP), BX						
  traffic_dynamic.go:251	0xe38ec9		488b4c2418		MOVQ 0x18(SP), CX						
  traffic_dynamic.go:251	0xe38ece		488b7c2420		MOVQ 0x20(SP), DI						
  traffic_dynamic.go:251	0xe38ed3		e948fcffff		JMP CAS-Backend/pkg/diapdu.allSubTasksTerminalForDispatch(SB)	
  :-1				0xe38ed8		cc			INT $__subsystem__(SB)						
  :-1				0xe38ed9		cc			INT $__subsystem__(SB)						
  :-1				0xe38eda		cc			INT $__subsystem__(SB)						
  :-1				0xe38edb		cc			INT $__subsystem__(SB)						
  :-1				0xe38edc		cc			INT $__subsystem__(SB)						
  :-1				0xe38edd		cc			INT $__subsystem__(SB)						
  :-1				0xe38ede		cc			INT $__subsystem__(SB)						
  :-1				0xe38edf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.NavTasksCompleteFromMonitor(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:290	0xe38ee0		493b6610		CMPQ SP, 0x10(R14)						
  traffic_dynamic.go:290	0xe38ee4		0f86a8000000		JBE 0xe38f92							
  traffic_dynamic.go:290	0xe38eea		55			PUSHQ BP							
  traffic_dynamic.go:290	0xe38eeb		4889e5			MOVQ SP, BP							
  traffic_dynamic.go:290	0xe38eee		4883ec20		SUBQ $__major_os_version__+26(SB), SP				
  traffic_dynamic.go:290	0xe38ef2		48895c2438		MOVQ BX, 0x38(SP)						
  traffic_dynamic.go:291	0xe38ef7		4889442430		MOVQ AX, 0x30(SP)						
  traffic_dynamic.go:291	0xe38efc		4889742450		MOVQ SI, 0x50(SP)						
  traffic_dynamic.go:291	0xe38f01		4c89442458		MOVQ R8, 0x58(SP)						
  traffic_dynamic.go:291	0xe38f06		e815fcffff		CALL CAS-Backend/pkg/diapdu.allSubTasksTerminalForDispatch(SB)	
  traffic_dynamic.go:291	0xe38f0b		84c0			TESTL AL, AL							
  traffic_dynamic.go:291	0xe38f0d		747b			JE 0xe38f8a							
  traffic_dynamic.go:294	0xe38f0f		488b542458		MOVQ 0x58(SP), DX						
  traffic_dynamic.go:294	0xe38f14		4885d2			TESTQ DX, DX							
  traffic_dynamic.go:294	0xe38f17		7466			JE 0xe38f7f							
  traffic_dynamic.go:277	0xe38f19		488b742430		MOVQ 0x30(SP), SI						
  traffic_dynamic.go:277	0xe38f1e		6690			NOPW								
  traffic_dynamic.go:277	0xe38f20		4885f6			TESTQ SI, SI							
  traffic_dynamic.go:277	0xe38f23		7427			JE 0xe38f4c							
  traffic_dynamic.go:280	0xe38f25		488b7e08		MOVQ 0x8(SI), DI						
  traffic_dynamic.go:280	0xe38f29		4885ff			TESTQ DI, DI							
  traffic_dynamic.go:280	0xe38f2c		7405			JE 0xe38f33							
  traffic_dynamic.go:280	0xe38f2e		488b36			MOVQ 0(SI), SI							
  traffic_dynamic.go:297	0xe38f31		eb1d			JMP 0xe38f50							
  traffic_dynamic.go:283	0xe38f33		488b7e48		MOVQ 0x48(SI), DI						
  traffic_dynamic.go:283	0xe38f37		4885ff			TESTQ DI, DI							
  traffic_dynamic.go:283	0xe38f3a		7406			JE 0xe38f42							
  traffic_dynamic.go:283	0xe38f3c		488b7640		MOVQ 0x40(SI), SI						
  traffic_dynamic.go:297	0xe38f40		eb0e			JMP 0xe38f50							
  traffic_dynamic.go:286	0xe38f42		488b7e38		MOVQ 0x38(SI), DI						
  traffic_dynamic.go:286	0xe38f46		488b7630		MOVQ 0x30(SI), SI						
  traffic_dynamic.go:297	0xe38f4a		eb04			JMP 0xe38f50							
  traffic_dynamic.go:297	0xe38f4c		31ff			XORL DI, DI							
  traffic_dynamic.go:297	0xe38f4e		31f6			XORL SI, SI							
  traffic_dynamic.go:297	0xe38f50		4885ff			TESTQ DI, DI							
  traffic_dynamic.go:297	0xe38f53		741f			JE 0xe38f74							
  traffic_dynamic.go:298	0xe38f55		4839fa			CMPQ DX, DI							
  traffic_dynamic.go:298	0xe38f58		7404			JE 0xe38f5e							
  traffic_dynamic.go:298	0xe38f5a		31c0			XORL AX, AX							
  traffic_dynamic.go:298	0xe38f5c		eb10			JMP 0xe38f6e							
  traffic_dynamic.go:298	0xe38f5e		4889f0			MOVQ SI, AX							
  traffic_dynamic.go:298	0xe38f61		488b5c2450		MOVQ 0x50(SP), BX						
  traffic_dynamic.go:298	0xe38f66		4889f9			MOVQ DI, CX							
  traffic_dynamic.go:298	0xe38f69		e8f29e5cff		CALL runtime.memequal(SB)					
  traffic_dynamic.go:298	0xe38f6e		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  traffic_dynamic.go:298	0xe38f72		5d			POPQ BP								
  traffic_dynamic.go:298	0xe38f73		c3			RET								
  traffic_dynamic.go:301	0xe38f74		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_dynamic.go:301	0xe38f79		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  traffic_dynamic.go:301	0xe38f7d		5d			POPQ BP								
  traffic_dynamic.go:301	0xe38f7e		c3			RET								
  traffic_dynamic.go:295	0xe38f7f		b801000000		MOVL $__minor_os_version__(SB), AX				
  traffic_dynamic.go:295	0xe38f84		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  traffic_dynamic.go:295	0xe38f88		5d			POPQ BP								
  traffic_dynamic.go:295	0xe38f89		c3			RET								
  traffic_dynamic.go:292	0xe38f8a		31c0			XORL AX, AX							
  traffic_dynamic.go:292	0xe38f8c		4883c420		ADDQ $__major_os_version__+26(SB), SP				
  traffic_dynamic.go:292	0xe38f90		5d			POPQ BP								
  traffic_dynamic.go:292	0xe38f91		c3			RET								
  traffic_dynamic.go:290	0xe38f92		4889442408		MOVQ AX, 0x8(SP)						
  traffic_dynamic.go:290	0xe38f97		48895c2410		MOVQ BX, 0x10(SP)						
  traffic_dynamic.go:290	0xe38f9c		48894c2418		MOVQ CX, 0x18(SP)						
  traffic_dynamic.go:290	0xe38fa1		48897c2420		MOVQ DI, 0x20(SP)						
  traffic_dynamic.go:290	0xe38fa6		4889742428		MOVQ SI, 0x28(SP)						
  traffic_dynamic.go:290	0xe38fab		4c89442430		MOVQ R8, 0x30(SP)						
  traffic_dynamic.go:290	0xe38fb0		e82bd563ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_dynamic.go:290	0xe38fb5		488b442408		MOVQ 0x8(SP), AX						
  traffic_dynamic.go:290	0xe38fba		488b5c2410		MOVQ 0x10(SP), BX						
  traffic_dynamic.go:290	0xe38fbf		488b4c2418		MOVQ 0x18(SP), CX						
  traffic_dynamic.go:290	0xe38fc4		488b7c2420		MOVQ 0x20(SP), DI						
  traffic_dynamic.go:290	0xe38fc9		488b742428		MOVQ 0x28(SP), SI						
  traffic_dynamic.go:290	0xe38fce		4c8b442430		MOVQ 0x30(SP), R8						
  traffic_dynamic.go:290	0xe38fd3		e908ffffff		JMP CAS-Backend/pkg/diapdu.NavTasksCompleteFromMonitor(SB)	
  :-1				0xe38fd8		cc			INT $__subsystem__(SB)						
  :-1				0xe38fd9		cc			INT $__subsystem__(SB)						
  :-1				0xe38fda		cc			INT $__subsystem__(SB)						
  :-1				0xe38fdb		cc			INT $__subsystem__(SB)						
  :-1				0xe38fdc		cc			INT $__subsystem__(SB)						
  :-1				0xe38fdd		cc			INT $__subsystem__(SB)						
  :-1				0xe38fde		cc			INT $__subsystem__(SB)						
  :-1				0xe38fdf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.resolveCurrentEdge(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:304	0xe38fe0		55			PUSHQ BP				
  traffic_dynamic.go:304	0xe38fe1		4889e5			MOVQ SP, BP				
  traffic_dynamic.go:304	0xe38fe4		4883ec10		SUBQ $__major_os_version__+10(SB), SP	
  traffic_dynamic.go:304	0xe38fe8		4889442420		MOVQ AX, 0x20(SP)			
  traffic_dynamic.go:304	0xe38fed		48897c2438		MOVQ DI, 0x38(SP)			
  traffic_dynamic.go:305	0xe38ff2		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)	
  traffic_dynamic.go:305	0xe38ff6		7c24			JL 0xe3901c				
  traffic_dynamic.go:305	0xe38ff8		4885f6			TESTQ SI, SI				
  traffic_dynamic.go:305	0xe38ffb		741f			JE 0xe3901c				
  traffic_dynamic.go:308	0xe38ffd		488d53ff		LEAQ -0x1(BX), DX			
  traffic_dynamic.go:310	0xe39001		4839d6			CMPQ SI, DX				
  traffic_dynamic.go:310	0xe39004		7d0c			JGE 0xe39012				
  traffic_dynamic.go:311	0xe39006		4889d9			MOVQ BX, CX				
  traffic_dynamic.go:311	0xe39009		4829f3			SUBQ SI, BX				
  traffic_dynamic.go:311	0xe3900c		4c8d4bff		LEAQ -0x1(BX), R9			
  traffic_dynamic.go:311	0xe39010		eb06			JMP 0xe39018				
  traffic_dynamic.go:328	0xe39012		4889d9			MOVQ BX, CX				
  traffic_dynamic.go:328	0xe39015		4531c9			XORL R9, R9				
  traffic_dynamic.go:314	0xe39018		31db			XORL BX, BX				
  traffic_dynamic.go:314	0xe3901a		eb24			JMP 0xe39040				
  traffic_dynamic.go:306	0xe3901c		31c0			XORL AX, AX				
  traffic_dynamic.go:306	0xe3901e		31db			XORL BX, BX				
  traffic_dynamic.go:306	0xe39020		4889c1			MOVQ AX, CX				
  traffic_dynamic.go:306	0xe39023		4889df			MOVQ BX, DI				
  traffic_dynamic.go:306	0xe39026		48c7c6ffffffff		MOVQ $-0x1, SI				
  traffic_dynamic.go:306	0xe3902d		4531c0			XORL R8, R8				
  traffic_dynamic.go:306	0xe39030		4883c410		ADDQ $__major_os_version__+10(SB), SP	
  traffic_dynamic.go:306	0xe39034		5d			POPQ BP					
  traffic_dynamic.go:306	0xe39035		c3			RET					
  traffic_dynamic.go:314	0xe39036		498d7a20		LEAQ 0x20(R10), DI			
  traffic_dynamic.go:314	0xe3903a		48ffc3			INCQ BX					
  traffic_dynamic.go:314	0xe3903d		0f1f00			NOPL 0(AX)				
  traffic_dynamic.go:314	0xe39040		4839de			CMPQ SI, BX				
  traffic_dynamic.go:314	0xe39043		7e26			JLE 0xe3906b				
  traffic_dynamic.go:314	0xe39045		4989fa			MOVQ DI, R10				
  traffic_dynamic.go:314	0xe39048		4c8b5f10		MOVQ 0x10(DI), R11			
  traffic_dynamic.go:28		0xe3904c		4d8d63fc		LEAQ -0x4(R11), R12			
  traffic_dynamic.go:315	0xe39050		90			NOPL					
  traffic_dynamic.go:28		0xe39051		4983fc03		CMPQ R12, $__subsystem__(SB)		
  traffic_dynamic.go:28		0xe39055		76df			JBE 0xe39036				
  traffic_dynamic.go:28		0xe39057		660f1f840000000000	NOPW 0(AX)(AX*1)			
  traffic_dynamic.go:28		0xe39060		4981fb94010000		CMPQ R11, $.file+327(SB)		
  traffic_dynamic.go:28		0xe39067		74cd			JE 0xe39036				
  traffic_dynamic.go:28		0xe39069		eb07			JMP 0xe39072				
  traffic_dynamic.go:28		0xe3906b		48c7c3ffffffff		MOVQ $-0x1, BX				
  traffic_dynamic.go:320	0xe39072		4885db			TESTQ BX, BX				
  traffic_dynamic.go:320	0xe39075		7c77			JL 0xe390ee				
  traffic_dynamic.go:323	0xe39077		4901d9			ADDQ BX, R9				
  traffic_dynamic.go:325	0xe3907a		4d85c9			TESTQ R9, R9				
  traffic_dynamic.go:325	0xe3907d		7d05			JGE 0xe39084				
  traffic_dynamic.go:325	0xe3907f		4531c9			XORL R9, R9				
  traffic_dynamic.go:326	0xe39082		eb09			JMP 0xe3908d				
  traffic_dynamic.go:327	0xe39084		4c39ca			CMPQ DX, R9				
  traffic_dynamic.go:327	0xe39087		7f04			JG 0xe3908d				
  traffic_dynamic.go:328	0xe39089		4c8d49fe		LEAQ -0x2(CX), R9			
  traffic_dynamic.go:330	0xe3908d		4c39c9			CMPQ CX, R9				
  traffic_dynamic.go:330	0xe39090		767e			JBE 0xe39110				
  traffic_dynamic.go:330	0xe39092		4c89ce			MOVQ R9, SI				
  traffic_dynamic.go:330	0xe39095		49c1e104		SHLQ $__subsystem__+1(SB), R9		
  traffic_dynamic.go:330	0xe39099		488d5601		LEAQ 0x1(SI), DX			
  traffic_dynamic.go:330	0xe3909d		4a8b5c0808		MOVQ 0x8(AX)(R9*1), BX			
  traffic_dynamic.go:330	0xe390a2		4e8b0c08		MOVQ 0(AX)(R9*1), R9			
  traffic_dynamic.go:330	0xe390a6		4839d1			CMPQ CX, DX				
  traffic_dynamic.go:330	0xe390a9		765d			JBE 0xe39108				
  traffic_dynamic.go:330	0xe390ab		48c1e204		SHLQ $__subsystem__+1(SB), DX		
  traffic_dynamic.go:330	0xe390af		488b7c1008		MOVQ 0x8(AX)(DX*1), DI			
  traffic_dynamic.go:330	0xe390b4		488b0c10		MOVQ 0(AX)(DX*1), CX			
  traffic_dynamic.go:331	0xe390b8		4885db			TESTQ BX, BX				
  traffic_dynamic.go:331	0xe390bb		7408			JE 0xe390c5				
  traffic_dynamic.go:331	0xe390bd		0f1f00			NOPL 0(AX)				
  traffic_dynamic.go:331	0xe390c0		4885ff			TESTQ DI, DI				
  traffic_dynamic.go:331	0xe390c3		751a			JNE 0xe390df				
  traffic_dynamic.go:332	0xe390c5		31c0			XORL AX, AX				
  traffic_dynamic.go:332	0xe390c7		31db			XORL BX, BX				
  traffic_dynamic.go:332	0xe390c9		4889c1			MOVQ AX, CX				
  traffic_dynamic.go:332	0xe390cc		4889df			MOVQ BX, DI				
  traffic_dynamic.go:332	0xe390cf		48c7c6ffffffff		MOVQ $-0x1, SI				
  traffic_dynamic.go:332	0xe390d6		4531c0			XORL R8, R8				
  traffic_dynamic.go:332	0xe390d9		4883c410		ADDQ $__major_os_version__+10(SB), SP	
  traffic_dynamic.go:332	0xe390dd		5d			POPQ BP					
  traffic_dynamic.go:332	0xe390de		c3			RET					
  traffic_dynamic.go:334	0xe390df		4c89c8			MOVQ R9, AX				
  traffic_dynamic.go:334	0xe390e2		41b801000000		MOVL $__minor_os_version__(SB), R8	
  traffic_dynamic.go:334	0xe390e8		4883c410		ADDQ $__major_os_version__+10(SB), SP	
  traffic_dynamic.go:334	0xe390ec		5d			POPQ BP					
  traffic_dynamic.go:334	0xe390ed		c3			RET					
  traffic_dynamic.go:321	0xe390ee		31c0			XORL AX, AX				
  traffic_dynamic.go:321	0xe390f0		31db			XORL BX, BX				
  traffic_dynamic.go:321	0xe390f2		4889c1			MOVQ AX, CX				
  traffic_dynamic.go:321	0xe390f5		4889df			MOVQ BX, DI				
  traffic_dynamic.go:321	0xe390f8		48c7c6ffffffff		MOVQ $-0x1, SI				
  traffic_dynamic.go:321	0xe390ff		4531c0			XORL R8, R8				
  traffic_dynamic.go:321	0xe39102		4883c410		ADDQ $__major_os_version__+10(SB), SP	
  traffic_dynamic.go:321	0xe39106		5d			POPQ BP					
  traffic_dynamic.go:321	0xe39107		c3			RET					
  traffic_dynamic.go:330	0xe39108		4889d0			MOVQ DX, AX				
  traffic_dynamic.go:330	0xe3910b		e8d0f663ff		CALL runtime.panicIndex(SB)		
  traffic_dynamic.go:330	0xe39110		4c89c8			MOVQ R9, AX				
  traffic_dynamic.go:330	0xe39113		e8c8f663ff		CALL runtime.panicIndex(SB)		
  traffic_dynamic.go:330	0xe39118		90			NOPL					
  :-1				0xe39119		cc			INT $__subsystem__(SB)			
  :-1				0xe3911a		cc			INT $__subsystem__(SB)			
  :-1				0xe3911b		cc			INT $__subsystem__(SB)			
  :-1				0xe3911c		cc			INT $__subsystem__(SB)			
  :-1				0xe3911d		cc			INT $__subsystem__(SB)			
  :-1				0xe3911e		cc			INT $__subsystem__(SB)			
  :-1				0xe3911f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/pkg/diapdu.resolveCurrentEdgeOnPath(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:339	0xe39120		4c8d6424f0		LEAQ -0x10(SP), R12					
  traffic_dynamic.go:339	0xe39125		4d3b6610		CMPQ R12, 0x10(R14)					
  traffic_dynamic.go:339	0xe39129		0f86cd030000		JBE 0xe394fc						
  traffic_dynamic.go:339	0xe3912f		55			PUSHQ BP						
  traffic_dynamic.go:339	0xe39130		4889e5			MOVQ SP, BP						
  traffic_dynamic.go:339	0xe39133		4881ec88000000		SUBQ $.file+59(SB), SP					
  traffic_dynamic.go:339	0xe3913a		4889842498000000	MOVQ AX, 0x98(SP)					
  traffic_dynamic.go:340	0xe39142		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)			
  traffic_dynamic.go:340	0xe39146		7c5f			JL 0xe391a7						
  traffic_dynamic.go:340	0xe39148		4885ff			TESTQ DI, DI						
  traffic_dynamic.go:340	0xe3914b		745a			JE 0xe391a7						
  traffic_dynamic.go:340	0xe3914d		4889bc24b0000000	MOVQ DI, 0xb0(SP)					
  traffic_dynamic.go:340	0xe39155		48899c24a0000000	MOVQ BX, 0xa0(SP)					
  traffic_dynamic.go:340	0xe3915d		4889842498000000	MOVQ AX, 0x98(SP)					
  traffic_dynamic.go:343	0xe39165		488b5738		MOVQ 0x38(DI), DX					
  traffic_dynamic.go:343	0xe39169		4c8b4f48		MOVQ 0x48(DI), R9					
  traffic_dynamic.go:343	0xe3916d		4c894c2430		MOVQ R9, 0x30(SP)					
  traffic_dynamic.go:343	0xe39172		4c8b5740		MOVQ 0x40(DI), R10					
  traffic_dynamic.go:343	0xe39176		4c89542470		MOVQ R10, 0x70(SP)					
  traffic_dynamic.go:343	0xe3917b		0f1f440000		NOPL 0(AX)(AX*1)					
  traffic_dynamic.go:344	0xe39180		4885d2			TESTQ DX, DX						
  traffic_dynamic.go:344	0xe39183		743f			JE 0xe391c4						
  traffic_dynamic.go:344	0xe39185		4d85c9			TESTQ R9, R9						
  traffic_dynamic.go:344	0xe39188		743a			JE 0xe391c4						
  traffic_dynamic.go:343	0xe3918a		4889542438		MOVQ DX, 0x38(SP)					
  traffic_dynamic.go:340	0xe3918f		48898c24a8000000	MOVQ CX, 0xa8(SP)					
  traffic_dynamic.go:343	0xe39197		4c8b5f30		MOVQ 0x30(DI), R11					
  traffic_dynamic.go:343	0xe3919b		4c895c2478		MOVQ R11, 0x78(SP)					
  traffic_dynamic.go:343	0xe391a0		31f6			XORL SI, SI						
  traffic_dynamic.go:344	0xe391a2		e939020000		JMP 0xe393e0						
  traffic_dynamic.go:341	0xe391a7		31c0			XORL AX, AX						
  traffic_dynamic.go:341	0xe391a9		31db			XORL BX, BX						
  traffic_dynamic.go:341	0xe391ab		4889c1			MOVQ AX, CX						
  traffic_dynamic.go:341	0xe391ae		4889df			MOVQ BX, DI						
  traffic_dynamic.go:341	0xe391b1		48c7c6ffffffff		MOVQ $-0x1, SI						
  traffic_dynamic.go:341	0xe391b8		4531c0			XORL R8, R8						
  traffic_dynamic.go:341	0xe391bb		4881c488000000		ADDQ $.file+59(SB), SP					
  traffic_dynamic.go:341	0xe391c2		5d			POPQ BP							
  traffic_dynamic.go:341	0xe391c3		c3			RET							
  traffic_dynamic.go:351	0xe391c4		488b7758		MOVQ 0x58(DI), SI					
  traffic_dynamic.go:351	0xe391c8		4885f6			TESTQ SI, SI						
  traffic_dynamic.go:351	0xe391cb		743a			JE 0xe39207						
  traffic_dynamic.go:351	0xe391cd		488b5750		MOVQ 0x50(DI), DX					
  traffic_dynamic.go:351	0xe391d1		4c8b4760		MOVQ 0x60(DI), R8					
  traffic_dynamic.go:352	0xe391d5		4889d7			MOVQ DX, DI						
  traffic_dynamic.go:352	0xe391d8		e803feffff		CALL CAS-Backend/pkg/diapdu.resolveCurrentEdge(SB)	
  traffic_dynamic.go:352	0xe391dd		0f1f00			NOPL 0(AX)						
  traffic_dynamic.go:352	0xe391e0		4584c0			TESTL R8, R8						
  traffic_dynamic.go:352	0xe391e3		752e			JNE 0xe39213						
  traffic_dynamic.go:358	0xe391e5		488b842498000000	MOVQ 0x98(SP), AX					
  traffic_dynamic.go:357	0xe391ed		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  traffic_dynamic.go:363	0xe391f5		488bbc24b0000000	MOVQ 0xb0(SP), DI					
  traffic_dynamic.go:356	0xe391fd		4c8b4c2430		MOVQ 0x30(SP), R9					
  traffic_dynamic.go:358	0xe39202		4c8b542470		MOVQ 0x70(SP), R10					
  traffic_dynamic.go:356	0xe39207		4d85c9			TESTQ R9, R9						
  traffic_dynamic.go:356	0xe3920a		7410			JE 0xe3921c						
  traffic_dynamic.go:356	0xe3920c		31c9			XORL CX, CX						
  traffic_dynamic.go:356	0xe3920e		e902010000		JMP 0xe39315						
  traffic_dynamic.go:353	0xe39213		4881c488000000		ADDQ $.file+59(SB), SP					
  traffic_dynamic.go:353	0xe3921a		5d			POPQ BP							
  traffic_dynamic.go:353	0xe3921b		c3			RET							
  traffic_dynamic.go:363	0xe3921c		488b5708		MOVQ 0x8(DI), DX					
  traffic_dynamic.go:363	0xe39220		4885d2			TESTQ DX, DX						
  traffic_dynamic.go:363	0xe39223		7414			JE 0xe39239						
  traffic_dynamic.go:363	0xe39225		4889542458		MOVQ DX, 0x58(SP)					
  traffic_dynamic.go:363	0xe3922a		4c8b0f			MOVQ 0(DI), R9						
  traffic_dynamic.go:363	0xe3922d		4c898c2480000000	MOVQ R9, 0x80(SP)					
  traffic_dynamic.go:363	0xe39235		31c9			XORL CX, CX						
  traffic_dynamic.go:363	0xe39237		eb20			JMP 0xe39259						
  traffic_dynamic.go:370	0xe39239		31c0			XORL AX, AX						
  traffic_dynamic.go:370	0xe3923b		31db			XORL BX, BX						
  traffic_dynamic.go:370	0xe3923d		4889c1			MOVQ AX, CX						
  traffic_dynamic.go:370	0xe39240		4889df			MOVQ BX, DI						
  traffic_dynamic.go:370	0xe39243		48c7c6ffffffff		MOVQ $-0x1, SI						
  traffic_dynamic.go:370	0xe3924a		4531c0			XORL R8, R8						
  traffic_dynamic.go:370	0xe3924d		4881c488000000		ADDQ $.file+59(SB), SP					
  traffic_dynamic.go:370	0xe39254		5d			POPQ BP							
  traffic_dynamic.go:370	0xe39255		c3			RET							
  traffic_dynamic.go:364	0xe39256		4c89d9			MOVQ R11, CX						
  traffic_dynamic.go:364	0xe39259		4c8d53ff		LEAQ -0x1(BX), R10					
  traffic_dynamic.go:364	0xe3925d		0f1f00			NOPL 0(AX)						
  traffic_dynamic.go:364	0xe39260		4c39d1			CMPQ CX, R10						
  traffic_dynamic.go:364	0xe39263		7dd4			JGE 0xe39239						
  traffic_dynamic.go:365	0xe39265		4c8d5101		LEAQ 0x1(CX), R10					
  traffic_dynamic.go:365	0xe39269		4c39d3			CMPQ BX, R10						
  traffic_dynamic.go:365	0xe3926c		0f8695000000		JBE 0xe39307						
  traffic_dynamic.go:365	0xe39272		4d89d3			MOVQ R10, R11						
  traffic_dynamic.go:365	0xe39275		49c1e204		SHLQ $__subsystem__+1(SB), R10				
  traffic_dynamic.go:365	0xe39279		4e8b641008		MOVQ 0x8(AX)(R10*1), R12				
  traffic_dynamic.go:365	0xe3927e		4e8b2c10		MOVQ 0(AX)(R10*1), R13					
  traffic_dynamic.go:365	0xe39282		4939d4			CMPQ R12, DX						
  traffic_dynamic.go:365	0xe39285		75cf			JNE 0xe39256						
  traffic_dynamic.go:365	0xe39287		4c89542468		MOVQ R10, 0x68(SP)					
  traffic_dynamic.go:364	0xe3928c		48894c2440		MOVQ CX, 0x40(SP)					
  traffic_dynamic.go:365	0xe39291		4c895c2460		MOVQ R11, 0x60(SP)					
  traffic_dynamic.go:365	0xe39296		4c89e8			MOVQ R13, AX						
  traffic_dynamic.go:365	0xe39299		4c89cb			MOVQ R9, BX						
  traffic_dynamic.go:365	0xe3929c		4c89e1			MOVQ R12, CX						
  traffic_dynamic.go:365	0xe3929f		90			NOPL							
  traffic_dynamic.go:365	0xe392a0		e8bb9b5cff		CALL runtime.memequal(SB)				
  traffic_dynamic.go:365	0xe392a5		84c0			TESTL AL, AL						
  traffic_dynamic.go:365	0xe392a7		7524			JNE 0xe392cd						
  traffic_dynamic.go:365	0xe392a9		488b842498000000	MOVQ 0x98(SP), AX					
  traffic_dynamic.go:365	0xe392b1		488b542458		MOVQ 0x58(SP), DX					
  traffic_dynamic.go:364	0xe392b6		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  traffic_dynamic.go:365	0xe392be		4c8b8c2480000000	MOVQ 0x80(SP), R9					
  traffic_dynamic.go:364	0xe392c6		4c8b5c2460		MOVQ 0x60(SP), R11					
  traffic_dynamic.go:365	0xe392cb		eb89			JMP 0xe39256						
  traffic_dynamic.go:366	0xe392cd		488b742440		MOVQ 0x40(SP), SI					
  traffic_dynamic.go:366	0xe392d2		4889f2			MOVQ SI, DX						
  traffic_dynamic.go:366	0xe392d5		48c1e204		SHLQ $__subsystem__+1(SB), DX				
  traffic_dynamic.go:366	0xe392d9		4c8b8c2498000000	MOVQ 0x98(SP), R9					
  traffic_dynamic.go:366	0xe392e1		498b5c1108		MOVQ 0x8(R9)(DX*1), BX					
  traffic_dynamic.go:366	0xe392e6		498b0411		MOVQ 0(R9)(DX*1), AX					
  traffic_dynamic.go:366	0xe392ea		488b542468		MOVQ 0x68(SP), DX					
  traffic_dynamic.go:366	0xe392ef		498b0c11		MOVQ 0(R9)(DX*1), CX					
  traffic_dynamic.go:366	0xe392f3		498b7c1108		MOVQ 0x8(R9)(DX*1), DI					
  traffic_dynamic.go:366	0xe392f8		41b801000000		MOVL $__minor_os_version__(SB), R8			
  traffic_dynamic.go:366	0xe392fe		4881c488000000		ADDQ $.file+59(SB), SP					
  traffic_dynamic.go:366	0xe39305		5d			POPQ BP							
  traffic_dynamic.go:366	0xe39306		c3			RET							
  traffic_dynamic.go:365	0xe39307		4c89d0			MOVQ R10, AX						
  traffic_dynamic.go:365	0xe3930a		4889d9			MOVQ BX, CX						
  traffic_dynamic.go:365	0xe3930d		e8cef463ff		CALL runtime.panicIndex(SB)				
  traffic_dynamic.go:357	0xe39312		4c89d9			MOVQ R11, CX						
  traffic_dynamic.go:357	0xe39315		488d53ff		LEAQ -0x1(BX), DX					
  traffic_dynamic.go:357	0xe39319		0f1f8000000000		NOPL 0(AX)						
  traffic_dynamic.go:357	0xe39320		4839d1			CMPQ CX, DX						
  traffic_dynamic.go:357	0xe39323		0f8df3feffff		JGE 0xe3921c						
  traffic_dynamic.go:358	0xe39329		488d5101		LEAQ 0x1(CX), DX					
  traffic_dynamic.go:358	0xe3932d		4839d3			CMPQ BX, DX						
  traffic_dynamic.go:358	0xe39330		0f869c000000		JBE 0xe393d2						
  traffic_dynamic.go:358	0xe39336		4989d3			MOVQ DX, R11						
  traffic_dynamic.go:358	0xe39339		48c1e204		SHLQ $__subsystem__+1(SB), DX				
  traffic_dynamic.go:358	0xe3933d		4c8b641008		MOVQ 0x8(AX)(DX*1), R12					
  traffic_dynamic.go:358	0xe39342		4c8b2c10		MOVQ 0(AX)(DX*1), R13					
  traffic_dynamic.go:358	0xe39346		4d39cc			CMPQ R12, R9						
  traffic_dynamic.go:358	0xe39349		75c7			JNE 0xe39312						
  traffic_dynamic.go:358	0xe3934b		4889542468		MOVQ DX, 0x68(SP)					
  traffic_dynamic.go:357	0xe39350		48894c2448		MOVQ CX, 0x48(SP)					
  traffic_dynamic.go:358	0xe39355		4c895c2460		MOVQ R11, 0x60(SP)					
  traffic_dynamic.go:358	0xe3935a		4c89e8			MOVQ R13, AX						
  traffic_dynamic.go:358	0xe3935d		4c89d3			MOVQ R10, BX						
  traffic_dynamic.go:358	0xe39360		4c89e1			MOVQ R12, CX						
  traffic_dynamic.go:358	0xe39363		e8f89a5cff		CALL runtime.memequal(SB)				
  traffic_dynamic.go:358	0xe39368		84c0			TESTL AL, AL						
  traffic_dynamic.go:358	0xe3936a		752c			JNE 0xe39398						
  traffic_dynamic.go:358	0xe3936c		488b842498000000	MOVQ 0x98(SP), AX					
  traffic_dynamic.go:357	0xe39374		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  traffic_dynamic.go:363	0xe3937c		488bbc24b0000000	MOVQ 0xb0(SP), DI					
  traffic_dynamic.go:358	0xe39384		4c8b4c2430		MOVQ 0x30(SP), R9					
  traffic_dynamic.go:358	0xe39389		4c8b542470		MOVQ 0x70(SP), R10					
  traffic_dynamic.go:357	0xe3938e		4c8b5c2460		MOVQ 0x60(SP), R11					
  traffic_dynamic.go:358	0xe39393		e97affffff		JMP 0xe39312						
  traffic_dynamic.go:359	0xe39398		488b742448		MOVQ 0x48(SP), SI					
  traffic_dynamic.go:359	0xe3939d		4889f2			MOVQ SI, DX						
  traffic_dynamic.go:359	0xe393a0		48c1e204		SHLQ $__subsystem__+1(SB), DX				
  traffic_dynamic.go:359	0xe393a4		4c8b8c2498000000	MOVQ 0x98(SP), R9					
  traffic_dynamic.go:359	0xe393ac		4a8b5c0a08		MOVQ 0x8(DX)(R9*1), BX					
  traffic_dynamic.go:359	0xe393b1		4a8b040a		MOVQ 0(DX)(R9*1), AX					
  traffic_dynamic.go:359	0xe393b5		488b542468		MOVQ 0x68(SP), DX					
  traffic_dynamic.go:359	0xe393ba		498b0c11		MOVQ 0(R9)(DX*1), CX					
  traffic_dynamic.go:359	0xe393be		498b7c1108		MOVQ 0x8(R9)(DX*1), DI					
  traffic_dynamic.go:359	0xe393c3		41b801000000		MOVL $__minor_os_version__(SB), R8			
  traffic_dynamic.go:359	0xe393c9		4881c488000000		ADDQ $.file+59(SB), SP					
  traffic_dynamic.go:359	0xe393d0		5d			POPQ BP							
  traffic_dynamic.go:359	0xe393d1		c3			RET							
  traffic_dynamic.go:358	0xe393d2		4889d0			MOVQ DX, AX						
  traffic_dynamic.go:358	0xe393d5		4889d9			MOVQ BX, CX						
  traffic_dynamic.go:358	0xe393d8		e803f463ff		CALL runtime.panicIndex(SB)				
  traffic_dynamic.go:345	0xe393dd		48ffc6			INCQ SI							
  traffic_dynamic.go:345	0xe393e0		4c8d63ff		LEAQ -0x1(BX), R12					
  traffic_dynamic.go:345	0xe393e4		4c39e6			CMPQ SI, R12						
  traffic_dynamic.go:345	0xe393e7		0f8dd7fdffff		JGE 0xe391c4						
  traffic_dynamic.go:345	0xe393ed		4889742450		MOVQ SI, 0x50(SP)					
  traffic_dynamic.go:346	0xe393f2		4989f4			MOVQ SI, R12						
  traffic_dynamic.go:346	0xe393f5		49c1e404		SHLQ $__subsystem__+1(SB), R12				
  traffic_dynamic.go:346	0xe393f9		4e8b6c2008		MOVQ 0x8(AX)(R12*1), R13				
  traffic_dynamic.go:346	0xe393fe		4d8b2404		MOVQ 0(R12)(AX*1), R12					
  traffic_dynamic.go:346	0xe39402		4939d5			CMPQ R13, DX						
  traffic_dynamic.go:346	0xe39405		7405			JE 0xe3940c						
  traffic_dynamic.go:346	0xe39407		4531c0			XORL R8, R8						
  traffic_dynamic.go:346	0xe3940a		eb4a			JMP 0xe39456						
  traffic_dynamic.go:346	0xe3940c		4c89e0			MOVQ R12, AX						
  traffic_dynamic.go:346	0xe3940f		4c89db			MOVQ R11, BX						
  traffic_dynamic.go:346	0xe39412		4c89e9			MOVQ R13, CX						
  traffic_dynamic.go:346	0xe39415		e8469a5cff		CALL runtime.memequal(SB)				
  traffic_dynamic.go:352	0xe3941a		488b8c24a8000000	MOVQ 0xa8(SP), CX					
  traffic_dynamic.go:346	0xe39422		488b542438		MOVQ 0x38(SP), DX					
  traffic_dynamic.go:346	0xe39427		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  traffic_dynamic.go:346	0xe3942f		488b742450		MOVQ 0x50(SP), SI					
  traffic_dynamic.go:351	0xe39434		488bbc24b0000000	MOVQ 0xb0(SP), DI					
  traffic_dynamic.go:346	0xe3943c		4c8b4c2430		MOVQ 0x30(SP), R9					
  traffic_dynamic.go:346	0xe39441		4c8b542470		MOVQ 0x70(SP), R10					
  traffic_dynamic.go:347	0xe39446		4c8b5c2478		MOVQ 0x78(SP), R11					
  traffic_dynamic.go:346	0xe3944b		4189c0			MOVL AX, R8						
  traffic_dynamic.go:346	0xe3944e		488b842498000000	MOVQ 0x98(SP), AX					
  traffic_dynamic.go:346	0xe39456		4584c0			TESTL R8, R8						
  traffic_dynamic.go:346	0xe39459		7482			JE 0xe393dd						
  traffic_dynamic.go:346	0xe3945b		4c8d6601		LEAQ 0x1(SI), R12					
  traffic_dynamic.go:346	0xe3945f		90			NOPL							
  traffic_dynamic.go:346	0xe39460		4c39e3			CMPQ BX, R12						
  traffic_dynamic.go:346	0xe39463		0f8687000000		JBE 0xe394f0						
  traffic_dynamic.go:346	0xe39469		49c1e404		SHLQ $__subsystem__+1(SB), R12				
  traffic_dynamic.go:346	0xe3946d		4e8b6c2008		MOVQ 0x8(AX)(R12*1), R13				
  traffic_dynamic.go:346	0xe39472		4d8b2404		MOVQ 0(R12)(AX*1), R12					
  traffic_dynamic.go:346	0xe39476		4d39cd			CMPQ R13, R9						
  traffic_dynamic.go:346	0xe39479		7407			JE 0xe39482						
  traffic_dynamic.go:346	0xe3947b		4531c0			XORL R8, R8						
  traffic_dynamic.go:346	0xe3947e		6690			NOPW							
  traffic_dynamic.go:346	0xe39480		eb4a			JMP 0xe394cc						
  traffic_dynamic.go:346	0xe39482		4c89e0			MOVQ R12, AX						
  traffic_dynamic.go:346	0xe39485		4c89d3			MOVQ R10, BX						
  traffic_dynamic.go:346	0xe39488		4c89e9			MOVQ R13, CX						
  traffic_dynamic.go:346	0xe3948b		e8d0995cff		CALL runtime.memequal(SB)				
  traffic_dynamic.go:352	0xe39490		488b8c24a8000000	MOVQ 0xa8(SP), CX					
  traffic_dynamic.go:346	0xe39498		488b542438		MOVQ 0x38(SP), DX					
  traffic_dynamic.go:345	0xe3949d		488b9c24a0000000	MOVQ 0xa0(SP), BX					
  traffic_dynamic.go:345	0xe394a5		488b742450		MOVQ 0x50(SP), SI					
  traffic_dynamic.go:351	0xe394aa		488bbc24b0000000	MOVQ 0xb0(SP), DI					
  traffic_dynamic.go:346	0xe394b2		4c8b4c2430		MOVQ 0x30(SP), R9					
  traffic_dynamic.go:347	0xe394b7		4c8b542470		MOVQ 0x70(SP), R10					
  traffic_dynamic.go:347	0xe394bc		4c8b5c2478		MOVQ 0x78(SP), R11					
  traffic_dynamic.go:346	0xe394c1		4189c0			MOVL AX, R8						
  traffic_dynamic.go:346	0xe394c4		488b842498000000	MOVQ 0x98(SP), AX					
  traffic_dynamic.go:346	0xe394cc		4584c0			TESTL R8, R8						
  traffic_dynamic.go:346	0xe394cf		0f8408ffffff		JE 0xe393dd						
  traffic_dynamic.go:347	0xe394d5		4c89d8			MOVQ R11, AX						
  traffic_dynamic.go:347	0xe394d8		4889d3			MOVQ DX, BX						
  traffic_dynamic.go:347	0xe394db		4c89d1			MOVQ R10, CX						
  traffic_dynamic.go:347	0xe394de		4c89cf			MOVQ R9, DI						
  traffic_dynamic.go:347	0xe394e1		41b801000000		MOVL $__minor_os_version__(SB), R8			
  traffic_dynamic.go:347	0xe394e7		4881c488000000		ADDQ $.file+59(SB), SP					
  traffic_dynamic.go:347	0xe394ee		5d			POPQ BP							
  traffic_dynamic.go:347	0xe394ef		c3			RET							
  traffic_dynamic.go:346	0xe394f0		4c89e0			MOVQ R12, AX						
  traffic_dynamic.go:346	0xe394f3		4889d9			MOVQ BX, CX						
  traffic_dynamic.go:346	0xe394f6		e8e5f263ff		CALL runtime.panicIndex(SB)				
  traffic_dynamic.go:346	0xe394fb		90			NOPL							
  traffic_dynamic.go:339	0xe394fc		4889442408		MOVQ AX, 0x8(SP)					
  traffic_dynamic.go:339	0xe39501		48895c2410		MOVQ BX, 0x10(SP)					
  traffic_dynamic.go:339	0xe39506		48894c2418		MOVQ CX, 0x18(SP)					
  traffic_dynamic.go:339	0xe3950b		48897c2420		MOVQ DI, 0x20(SP)					
  traffic_dynamic.go:339	0xe39510		e8cbcf63ff		CALL runtime.morestack_noctxt.abi0(SB)			
  traffic_dynamic.go:339	0xe39515		488b442408		MOVQ 0x8(SP), AX					
  traffic_dynamic.go:339	0xe3951a		488b5c2410		MOVQ 0x10(SP), BX					
  traffic_dynamic.go:339	0xe3951f		488b4c2418		MOVQ 0x18(SP), CX					
  traffic_dynamic.go:339	0xe39524		488b7c2420		MOVQ 0x20(SP), DI					
  traffic_dynamic.go:339	0xe39529		e9f2fbffff		JMP CAS-Backend/pkg/diapdu.resolveCurrentEdgeOnPath(SB)	
  :-1				0xe3952e		cc			INT $__subsystem__(SB)					
  :-1				0xe3952f		cc			INT $__subsystem__(SB)					
  :-1				0xe39530		cc			INT $__subsystem__(SB)					
  :-1				0xe39531		cc			INT $__subsystem__(SB)					
  :-1				0xe39532		cc			INT $__subsystem__(SB)					
  :-1				0xe39533		cc			INT $__subsystem__(SB)					
  :-1				0xe39534		cc			INT $__subsystem__(SB)					
  :-1				0xe39535		cc			INT $__subsystem__(SB)					
  :-1				0xe39536		cc			INT $__subsystem__(SB)					
  :-1				0xe39537		cc			INT $__subsystem__(SB)					
  :-1				0xe39538		cc			INT $__subsystem__(SB)					
  :-1				0xe39539		cc			INT $__subsystem__(SB)					
  :-1				0xe3953a		cc			INT $__subsystem__(SB)					
  :-1				0xe3953b		cc			INT $__subsystem__(SB)					
  :-1				0xe3953c		cc			INT $__subsystem__(SB)					
  :-1				0xe3953d		cc			INT $__subsystem__(SB)					
  :-1				0xe3953e		cc			INT $__subsystem__(SB)					
  :-1				0xe3953f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).buildRunSnapExLocked(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:405	0xe39540		4c8da424e0feffff		LEAQ 0xfffffee0(SP), R12							
  traffic_dynamic.go:405	0xe39548		4d3b6610			CMPQ R12, 0x10(R14)								
  traffic_dynamic.go:405	0xe3954c		0f86df030000			JBE 0xe39931									
  traffic_dynamic.go:405	0xe39552		55				PUSHQ BP									
  traffic_dynamic.go:405	0xe39553		4889e5				MOVQ SP, BP									
  traffic_dynamic.go:405	0xe39556		4881ec98010000			SUBQ $.file+331(SB), SP								
  traffic_dynamic.go:407	0xe3955d		48898424a8010000		MOVQ AX, 0x1a8(SP)								
  traffic_dynamic.go:407	0xe39565		488b5808			MOVQ 0x8(AX), BX								
  traffic_dynamic.go:407	0xe39569		488dbc2438010000		LEAQ 0x138(SP), DI								
  traffic_dynamic.go:407	0xe39571		488d7fe0			LEAQ -0x20(DI), DI								
  traffic_dynamic.go:407	0xe39575		660f1f840000000000		NOPW 0(AX)(AX*1)								
  traffic_dynamic.go:407	0xe3957e		6690				NOPW										
  traffic_dynamic.go:407	0xe39580		48896c24f0			MOVQ BP, -0x10(SP)								
  traffic_dynamic.go:407	0xe39585		488d6c24f0			LEAQ -0x10(SP), BP								
  traffic_dynamic.go:407	0xe3958a		e85cf563ff			CALL 0x478aeb									
  traffic_dynamic.go:407	0xe3958f		488b6d00			MOVQ 0(BP), BP									
  traffic_dynamic.go:407	0xe39593		488d8c2438010000		LEAQ 0x138(SP), CX								
  traffic_dynamic.go:407	0xe3959b		488d053e432400			LEAQ runtime.types+624864(SB), AX						
  traffic_dynamic.go:407	0xe395a2		e8792763ff			CALL runtime.mapiterinit(SB)							
  traffic_dynamic.go:407	0xe395a7		31c0				XORL AX, AX									
  traffic_dynamic.go:407	0xe395a9		31c9				XORL CX, CX									
  traffic_dynamic.go:407	0xe395ab		31d2				XORL DX, DX									
  traffic_dynamic.go:407	0xe395ad		eb31				JMP 0xe395e0									
  traffic_dynamic.go:416	0xe395af		48894c2468			MOVQ CX, 0x68(SP)								
  traffic_dynamic.go:416	0xe395b4		4c894c2460			MOVQ R9, 0x60(SP)								
  traffic_dynamic.go:416	0xe395b9		48898424b8000000		MOVQ AX, 0xb8(SP)								
  traffic_dynamic.go:407	0xe395c1		488d842438010000		LEAQ 0x138(SP), AX								
  traffic_dynamic.go:407	0xe395c9		e8722963ff			CALL runtime.mapiternext(SB)							
  traffic_dynamic.go:416	0xe395ce		488b442468			MOVQ 0x68(SP), AX								
  traffic_dynamic.go:416	0xe395d3		488b8c24b8000000		MOVQ 0xb8(SP), CX								
  traffic_dynamic.go:416	0xe395db		488b542460			MOVQ 0x60(SP), DX								
  traffic_dynamic.go:407	0xe395e0		488bb42438010000		MOVQ 0x138(SP), SI								
  traffic_dynamic.go:407	0xe395e8		4885f6				TESTQ SI, SI									
  traffic_dynamic.go:407	0xe395eb		0f842b030000			JE 0xe3991c									
  traffic_dynamic.go:416	0xe395f1		4889442468			MOVQ AX, 0x68(SP)								
  traffic_dynamic.go:416	0xe395f6		48898c24b8000000		MOVQ CX, 0xb8(SP)								
  traffic_dynamic.go:416	0xe395fe		4889542460			MOVQ DX, 0x60(SP)								
  traffic_dynamic.go:407	0xe39603		488b0e				MOVQ 0(SI), CX									
  traffic_dynamic.go:407	0xe39606		48898c2498000000		MOVQ CX, 0x98(SP)								
  traffic_dynamic.go:407	0xe3960e		488b7e08			MOVQ 0x8(SI), DI								
  traffic_dynamic.go:407	0xe39612		48897c2440			MOVQ DI, 0x40(SP)								
  traffic_dynamic.go:407	0xe39617		488b942440010000		MOVQ 0x140(SP), DX								
  traffic_dynamic.go:408	0xe3961f		488bb424a8010000		MOVQ 0x1a8(SP), SI								
  traffic_dynamic.go:408	0xe39627		488b5e18			MOVQ 0x18(SI), BX								
  traffic_dynamic.go:407	0xe3962b		4c8b02				MOVQ 0(DX), R8									
  traffic_dynamic.go:407	0xe3962e		4c898424b0000000		MOVQ R8, 0xb0(SP)								
  traffic_dynamic.go:407	0xe39636		4c8b4a08			MOVQ 0x8(DX), R9								
  traffic_dynamic.go:407	0xe3963a		4c894c2450			MOVQ R9, 0x50(SP)								
  traffic_dynamic.go:407	0xe3963f		488b5210			MOVQ 0x10(DX), DX								
  traffic_dynamic.go:407	0xe39643		4889542458			MOVQ DX, 0x58(SP)								
  traffic_dynamic.go:408	0xe39648		488d0551402400			LEAQ runtime.types+624288(SB), AX						
  traffic_dynamic.go:408	0xe3964f		e8ecac5dff			CALL runtime.mapaccess1_faststr(SB)						
  traffic_dynamic.go:408	0xe39654		488b38				MOVQ 0(AX), DI									
  traffic_dynamic.go:409	0xe39657		4885ff				TESTQ DI, DI									
  traffic_dynamic.go:409	0xe3965a		7517				JNE 0xe39673									
  traffic_dynamic.go:416	0xe3965c		488b4c2468			MOVQ 0x68(SP), CX								
  traffic_dynamic.go:416	0xe39661		4c8b4c2460			MOVQ 0x60(SP), R9								
  traffic_dynamic.go:416	0xe39666		488b8424b8000000		MOVQ 0xb8(SP), AX								
  traffic_dynamic.go:410	0xe3966e		e93cffffff			JMP 0xe395af									
  traffic_dynamic.go:408	0xe39673		4889bc24a8000000		MOVQ DI, 0xa8(SP)								
  traffic_dynamic.go:412	0xe3967b		488b8424b0000000		MOVQ 0xb0(SP), AX								
  traffic_dynamic.go:412	0xe39683		488b5c2450			MOVQ 0x50(SP), BX								
  traffic_dynamic.go:412	0xe39688		488b4c2458			MOVQ 0x58(SP), CX								
  traffic_dynamic.go:412	0xe3968d		e88efaffff			CALL CAS-Backend/pkg/diapdu.resolveCurrentEdgeOnPath(SB)			
  traffic_dynamic.go:412	0xe39692		4584c0				TESTL R8, R8									
  traffic_dynamic.go:413	0xe39695		0f846a020000			JE 0xe39905									
  traffic_opposite.go:453	0xe3969b		488b9424a8010000		MOVQ 0x1a8(SP), DX								
  traffic_opposite.go:453	0xe396a3		4c8b4210			MOVQ 0x10(DX), R8								
  traffic_opposite.go:453	0xe396a7		4d85c0				TESTQ R8, R8									
  traffic_opposite.go:453	0xe396aa		750b				JNE 0xe396b7									
  traffic_opposite.go:453	0xe396ac		41b802000000			MOVL $__minor_os_version__+1(SB), R8						
  traffic_dynamic.go:422	0xe396b2		e9a0000000			JMP 0xe39757									
  traffic_dynamic.go:412	0xe396b7		48897c2448			MOVQ DI, 0x48(SP)								
  traffic_dynamic.go:412	0xe396bc		48898c24a0000000		MOVQ CX, 0xa0(SP)								
  traffic_dynamic.go:412	0xe396c4		48895c2470			MOVQ BX, 0x70(SP)								
  traffic_dynamic.go:412	0xe396c9		48898424c0000000		MOVQ AX, 0xc0(SP)								
  traffic_dynamic.go:412	0xe396d1		4889742478			MOVQ SI, 0x78(SP)								
  traffic_opposite.go:456	0xe396d6		488d0523432400			LEAQ runtime.types+625152(SB), AX						
  traffic_opposite.go:456	0xe396dd		4c89c3				MOVQ R8, BX									
  traffic_opposite.go:456	0xe396e0		488b8c2498000000		MOVQ 0x98(SP), CX								
  traffic_opposite.go:456	0xe396e8		488b7c2440			MOVQ 0x40(SP), DI								
  traffic_opposite.go:456	0xe396ed		e84e4563ff			CALL runtime.mapaccess2_faststr(SB)						
  traffic_opposite.go:456	0xe396f2		84db				TESTL BL, BL									
  traffic_opposite.go:456	0xe396f4		7434				JE 0xe3972a									
  traffic_opposite.go:456	0xe396f6		488b10				MOVQ 0(AX), DX									
  traffic_opposite.go:456	0xe396f9		4885d2				TESTQ DX, DX									
  traffic_opposite.go:456	0xe396fc		7e2c				JLE 0xe3972a									
  traffic_dynamic.go:418	0xe396fe		488b8424c0000000		MOVQ 0xc0(SP), AX								
  traffic_dynamic.go:419	0xe39706		488b8c24a0000000		MOVQ 0xa0(SP), CX								
  traffic_dynamic.go:418	0xe3970e		488b5c2470			MOVQ 0x70(SP), BX								
  traffic_dynamic.go:420	0xe39713		488b742478			MOVQ 0x78(SP), SI								
  traffic_dynamic.go:419	0xe39718		488b7c2448			MOVQ 0x48(SP), DI								
  traffic_dynamic.go:422	0xe3971d		4989d0				MOVQ DX, R8									
  traffic_dynamic.go:408	0xe39720		488b9424a8010000		MOVQ 0x1a8(SP), DX								
  traffic_dynamic.go:422	0xe39728		eb2d				JMP 0xe39757									
  traffic_dynamic.go:418	0xe3972a		488b8424c0000000		MOVQ 0xc0(SP), AX								
  traffic_dynamic.go:419	0xe39732		488b8c24a0000000		MOVQ 0xa0(SP), CX								
  traffic_dynamic.go:408	0xe3973a		488b9424a8010000		MOVQ 0x1a8(SP), DX								
  traffic_dynamic.go:418	0xe39742		488b5c2470			MOVQ 0x70(SP), BX								
  traffic_dynamic.go:420	0xe39747		488b742478			MOVQ 0x78(SP), SI								
  traffic_dynamic.go:419	0xe3974c		488b7c2448			MOVQ 0x48(SP), DI								
  traffic_dynamic.go:419	0xe39751		41b802000000			MOVL $__minor_os_version__+1(SB), R8						
  traffic_dynamic.go:416	0xe39757		4c8b4c2460			MOVQ 0x60(SP), R9								
  traffic_dynamic.go:416	0xe3975c		49ffc1				INCQ R9										
  traffic_dynamic.go:424	0xe3975f		48c78424d000000000000000	MOVQ $0x0, 0xd0(SP)								
  traffic_dynamic.go:412	0xe3976b		4989fa				MOVQ DI, R10									
  traffic_dynamic.go:424	0xe3976e		488dbc24d8000000		LEAQ 0xd8(SP), DI								
  traffic_dynamic.go:412	0xe39776		4989f3				MOVQ SI, R11									
  traffic_dynamic.go:424	0xe39779		488d35f0ef0302			LEAQ CAS-Backend/pkg/diapdu..stmp_28+8(SB), SI					
  traffic_dynamic.go:424	0xe39780		48896c24f0			MOVQ BP, -0x10(SP)								
  traffic_dynamic.go:424	0xe39785		488d6c24f0			LEAQ -0x10(SP), BP								
  traffic_dynamic.go:424	0xe3978a		e8bdf663ff			CALL 0x478e4c									
  traffic_dynamic.go:424	0xe3978f		488b6d00			MOVQ 0(BP), BP									
  traffic_dynamic.go:417	0xe39793		4c8ba42498000000		MOVQ 0x98(SP), R12								
  traffic_dynamic.go:417	0xe3979b		4c89a424d0000000		MOVQ R12, 0xd0(SP)								
  traffic_dynamic.go:417	0xe397a3		4c8b642440			MOVQ 0x40(SP), R12								
  traffic_dynamic.go:417	0xe397a8		4c89a424d8000000		MOVQ R12, 0xd8(SP)								
  traffic_dynamic.go:418	0xe397b0		48898424e0000000		MOVQ AX, 0xe0(SP)								
  traffic_dynamic.go:418	0xe397b8		48899c24e8000000		MOVQ BX, 0xe8(SP)								
  traffic_dynamic.go:419	0xe397c0		48898c24f0000000		MOVQ CX, 0xf0(SP)								
  traffic_dynamic.go:419	0xe397c8		4c899424f8000000		MOVQ R10, 0xf8(SP)								
  traffic_dynamic.go:420	0xe397d0		4c899c2400010000		MOVQ R11, 0x100(SP)								
  traffic_dynamic.go:421	0xe397d8		4c8b9424a8000000		MOVQ 0xa8(SP), R10								
  traffic_dynamic.go:421	0xe397e0		f2410f104228			MOVSD_XMM 0x28(R10), X0								
  traffic_dynamic.go:421	0xe397e6		f20f11842408010000		MOVSD_XMM X0, 0x108(SP)								
  traffic_dynamic.go:422	0xe397ef		4c89842410010000		MOVQ R8, 0x110(SP)								
  traffic_dynamic.go:424	0xe397f7		4c8b8424b0000000		MOVQ 0xb0(SP), R8								
  traffic_dynamic.go:424	0xe397ff		4c89842420010000		MOVQ R8, 0x120(SP)								
  traffic_dynamic.go:424	0xe39807		4c8b442450			MOVQ 0x50(SP), R8								
  traffic_dynamic.go:424	0xe3980c		4c89842428010000		MOVQ R8, 0x128(SP)								
  traffic_dynamic.go:424	0xe39814		4c8b442458			MOVQ 0x58(SP), R8								
  traffic_dynamic.go:424	0xe39819		4c89842430010000		MOVQ R8, 0x130(SP)								
  traffic_dynamic.go:416	0xe39821		488b4c2468			MOVQ 0x68(SP), CX								
  traffic_dynamic.go:416	0xe39826		4c39c9				CMPQ CX, R9									
  traffic_dynamic.go:416	0xe39829		720a				JB 0xe39835									
  traffic_dynamic.go:416	0xe3982b		488b8424b8000000		MOVQ 0xb8(SP), AX								
  traffic_dynamic.go:416	0xe39833		eb27				JMP 0xe3985c									
  traffic_dynamic.go:416	0xe39835		488b8424b8000000		MOVQ 0xb8(SP), AX								
  traffic_dynamic.go:416	0xe3983d		4c89cb				MOVQ R9, BX									
  traffic_dynamic.go:416	0xe39840		bf01000000			MOVL $__minor_os_version__(SB), DI						
  traffic_dynamic.go:416	0xe39845		488d3574402e00			LEAQ runtime.types+1280192(SB), SI						
  traffic_dynamic.go:416	0xe3984c		e8ef8363ff			CALL runtime.growslice(SB)							
  traffic_dynamic.go:408	0xe39851		488b9424a8010000		MOVQ 0x1a8(SP), DX								
  traffic_dynamic.go:416	0xe39859		4989d9				MOVQ BX, R9									
  traffic_dynamic.go:416	0xe3985c		4d6bc168			IMULQ $.file+27(SB), R9, R8							
  traffic_dynamic.go:416	0xe39860		498d1c00			LEAQ 0(R8)(AX*1), BX								
  traffic_dynamic.go:416	0xe39864		488d5b98			LEAQ -0x68(BX), BX								
  traffic_dynamic.go:416	0xe39868		833de142720200			CMPL runtime.writeBarrier(SB), $0x0						
  traffic_dynamic.go:416	0xe3986f		745c				JE 0xe398cd									
  traffic_dynamic.go:416	0xe39871		48898424c8000000		MOVQ AX, 0xc8(SP)								
  traffic_dynamic.go:416	0xe39879		4c898c2490000000		MOVQ R9, 0x90(SP)								
  traffic_dynamic.go:416	0xe39881		48898c2488000000		MOVQ CX, 0x88(SP)								
  traffic_dynamic.go:416	0xe39889		4c89842480000000		MOVQ R8, 0x80(SP)								
  traffic_dynamic.go:416	0xe39891		488d0528402e00			LEAQ runtime.types+1280192(SB), AX						
  traffic_dynamic.go:416	0xe39898		488d8c24d0000000		LEAQ 0xd0(SP), CX								
  traffic_dynamic.go:416	0xe398a0		e87bb65dff			CALL runtime.wbMove(SB)								
  traffic_dynamic.go:416	0xe398a5		488b8424c8000000		MOVQ 0xc8(SP), AX								
  traffic_dynamic.go:416	0xe398ad		488b8c2488000000		MOVQ 0x88(SP), CX								
  traffic_dynamic.go:408	0xe398b5		488b9424a8010000		MOVQ 0x1a8(SP), DX								
  traffic_dynamic.go:416	0xe398bd		4c8b842480000000		MOVQ 0x80(SP), R8								
  traffic_dynamic.go:416	0xe398c5		4c8b8c2490000000		MOVQ 0x90(SP), R9								
  traffic_dynamic.go:416	0xe398cd		498d3c00			LEAQ 0(R8)(AX*1), DI								
  traffic_dynamic.go:416	0xe398d1		488d7fa0			LEAQ -0x60(DI), DI								
  traffic_dynamic.go:416	0xe398d5		488b9c24d0000000		MOVQ 0xd0(SP), BX								
  traffic_dynamic.go:416	0xe398dd		49895c0098			MOVQ BX, -0x68(R8)(AX*1)							
  traffic_dynamic.go:416	0xe398e2		488db424d8000000		LEAQ 0xd8(SP), SI								
  traffic_dynamic.go:416	0xe398ea		48896c24f0			MOVQ BP, -0x10(SP)								
  traffic_dynamic.go:416	0xe398ef		488d6c24f0			LEAQ -0x10(SP), BP								
  traffic_dynamic.go:416	0xe398f4		e853f563ff			CALL 0x478e4c									
  traffic_dynamic.go:416	0xe398f9		488b6d00			MOVQ 0(BP), BP									
  traffic_dynamic.go:416	0xe398fd		0f1f00				NOPL 0(AX)									
  traffic_dynamic.go:416	0xe39900		e9aafcffff			JMP 0xe395af									
  traffic_dynamic.go:416	0xe39905		488b4c2468			MOVQ 0x68(SP), CX								
  traffic_dynamic.go:416	0xe3990a		4c8b4c2460			MOVQ 0x60(SP), R9								
  traffic_dynamic.go:416	0xe3990f		488b8424b8000000		MOVQ 0xb8(SP), AX								
  traffic_dynamic.go:414	0xe39917		e993fcffff			JMP 0xe395af									
  traffic_dynamic.go:427	0xe3991c		4889d3				MOVQ DX, BX									
  traffic_dynamic.go:416	0xe3991f		4889c2				MOVQ AX, DX									
  traffic_dynamic.go:427	0xe39922		4889c8				MOVQ CX, AX									
  traffic_dynamic.go:427	0xe39925		4889d1				MOVQ DX, CX									
  traffic_dynamic.go:427	0xe39928		4881c498010000			ADDQ $.file+331(SB), SP								
  traffic_dynamic.go:427	0xe3992f		5d				POPQ BP										
  traffic_dynamic.go:427	0xe39930		c3				RET										
  traffic_dynamic.go:405	0xe39931		4889442408			MOVQ AX, 0x8(SP)								
  traffic_dynamic.go:405	0xe39936		e8a5cb63ff			CALL runtime.morestack_noctxt.abi0(SB)						
  traffic_dynamic.go:405	0xe3993b		488b442408			MOVQ 0x8(SP), AX								
  traffic_dynamic.go:405	0xe39940		e9fbfbffff			JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).buildRunSnapExLocked(SB)	
  :-1				0xe39945		cc				INT $__subsystem__(SB)								
  :-1				0xe39946		cc				INT $__subsystem__(SB)								
  :-1				0xe39947		cc				INT $__subsystem__(SB)								
  :-1				0xe39948		cc				INT $__subsystem__(SB)								
  :-1				0xe39949		cc				INT $__subsystem__(SB)								
  :-1				0xe3994a		cc				INT $__subsystem__(SB)								
  :-1				0xe3994b		cc				INT $__subsystem__(SB)								
  :-1				0xe3994c		cc				INT $__subsystem__(SB)								
  :-1				0xe3994d		cc				INT $__subsystem__(SB)								
  :-1				0xe3994e		cc				INT $__subsystem__(SB)								
  :-1				0xe3994f		cc				INT $__subsystem__(SB)								
  :-1				0xe39950		cc				INT $__subsystem__(SB)								
  :-1				0xe39951		cc				INT $__subsystem__(SB)								
  :-1				0xe39952		cc				INT $__subsystem__(SB)								
  :-1				0xe39953		cc				INT $__subsystem__(SB)								
  :-1				0xe39954		cc				INT $__subsystem__(SB)								
  :-1				0xe39955		cc				INT $__subsystem__(SB)								
  :-1				0xe39956		cc				INT $__subsystem__(SB)								
  :-1				0xe39957		cc				INT $__subsystem__(SB)								
  :-1				0xe39958		cc				INT $__subsystem__(SB)								
  :-1				0xe39959		cc				INT $__subsystem__(SB)								
  :-1				0xe3995a		cc				INT $__subsystem__(SB)								
  :-1				0xe3995b		cc				INT $__subsystem__(SB)								
  :-1				0xe3995c		cc				INT $__subsystem__(SB)								
  :-1				0xe3995d		cc				INT $__subsystem__(SB)								
  :-1				0xe3995e		cc				INT $__subsystem__(SB)								
  :-1				0xe3995f		cc				INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).computePausedVehicles(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:431	0xe39960		4c8da42468feffff	LEAQ 0xfffffe68(SP), R12								
  traffic_dynamic.go:431	0xe39968		4d3b6610		CMPQ R12, 0x10(R14)									
  traffic_dynamic.go:431	0xe3996c		0f869d080000		JBE 0xe3a20f										
  traffic_dynamic.go:431	0xe39972		55			PUSHQ BP										
  traffic_dynamic.go:431	0xe39973		4889e5			MOVQ SP, BP										
  traffic_dynamic.go:431	0xe39976		4881ec10020000		SUBQ $__file_alignment__+16(SB), SP							
  traffic_dynamic.go:436	0xe3997d		4889842420020000	MOVQ AX, 0x220(SP)									
  traffic_dynamic.go:436	0xe39985		4889bc2438020000	MOVQ DI, 0x238(SP)									
  traffic_dynamic.go:436	0xe3998d		48898c2430020000	MOVQ CX, 0x230(SP)									
  traffic_dynamic.go:436	0xe39995		48899c2428020000	MOVQ BX, 0x228(SP)									
  traffic_dynamic.go:432	0xe3999d		0f1f00			NOPL 0(AX)										
  traffic_dynamic.go:432	0xe399a0		e83b1663ff		CALL runtime.makemap_small(SB)								
  traffic_dynamic.go:432	0xe399a5		4889842448010000	MOVQ AX, 0x148(SP)									
  traffic_dynamic.go:436	0xe399ad		488b9c2428020000	MOVQ 0x228(SP), BX									
  traffic_dynamic.go:436	0xe399b5		4889d9			MOVQ BX, CX										
  traffic_dynamic.go:436	0xe399b8		488b942430020000	MOVQ 0x230(SP), DX									
  traffic_dynamic.go:436	0xe399c0		4889d6			MOVQ DX, SI										
  traffic_dynamic.go:436	0xe399c3		31ff			XORL DI, DI										
  traffic_dynamic.go:436	0xe399c5		4531c0			XORL R8, R8										
  traffic_dynamic.go:436	0xe399c8		4531c9			XORL R9, R9										
  traffic_dynamic.go:436	0xe399cb		eb0d			JMP 0xe399da										
  traffic_dynamic.go:436	0xe399cd		4883c168		ADDQ $.file+27(SB), CX									
  traffic_dynamic.go:436	0xe399d1		48ffca			DECQ DX											
  traffic_dynamic.go:441	0xe399d4		4c89e6			MOVQ R12, SI										
  traffic_dynamic.go:442	0xe399d7		4c89df			MOVQ R11, DI										
  traffic_dynamic.go:442	0xe399da		4c894c2440		MOVQ R9, 0x40(SP)									
  traffic_dynamic.go:442	0xe399df		4c89842450010000	MOVQ R8, 0x150(SP)									
  traffic_dynamic.go:436	0xe399e7		4885d2			TESTQ DX, DX										
  traffic_dynamic.go:436	0xe399ea		0f8ed8030000		JLE 0xe39dc8										
  traffic_dynamic.go:436	0xe399f0		4889542470		MOVQ DX, 0x70(SP)									
  traffic_dynamic.go:436	0xe399f5		48898c2408020000	MOVQ CX, 0x208(SP)									
  traffic_dynamic.go:436	0xe399fd		4c8b11			MOVQ 0(CX), R10										
  traffic_dynamic.go:436	0xe39a00		4c899424e0000000	MOVQ R10, 0xe0(SP)									
  traffic_dynamic.go:436	0xe39a08		4c8d5108		LEAQ 0x8(CX), R10									
  traffic_dynamic.go:442	0xe39a0c		4989fb			MOVQ DI, R11										
  traffic_dynamic.go:436	0xe39a0f		488dbc24e8000000	LEAQ 0xe8(SP), DI									
  traffic_dynamic.go:436	0xe39a17		4989f4			MOVQ SI, R12										
  traffic_dynamic.go:436	0xe39a1a		4c89d6			MOVQ R10, SI										
  traffic_dynamic.go:436	0xe39a1d		0f1f00			NOPL 0(AX)										
  traffic_dynamic.go:436	0xe39a20		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_dynamic.go:436	0xe39a25		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_dynamic.go:436	0xe39a2a		e81df463ff		CALL 0x478e4c										
  traffic_dynamic.go:436	0xe39a2f		488b6d00		MOVQ 0(BP), BP										
  traffic_dynamic.go:437	0xe39a33		4c8b9424e0000000	MOVQ 0xe0(SP), R10									
  traffic_dynamic.go:437	0xe39a3b		4c89542478		MOVQ R10, 0x78(SP)									
  traffic_dynamic.go:437	0xe39a40		488dbc2480000000	LEAQ 0x80(SP), DI									
  traffic_dynamic.go:437	0xe39a48		488db424e8000000	LEAQ 0xe8(SP), SI									
  traffic_dynamic.go:437	0xe39a50		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_dynamic.go:437	0xe39a59		0f1f8000000000		NOPL 0(AX)										
  traffic_dynamic.go:437	0xe39a60		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_dynamic.go:437	0xe39a65		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_dynamic.go:437	0xe39a6a		e8ddf363ff		CALL 0x478e4c										
  traffic_dynamic.go:437	0xe39a6f		488b6d00		MOVQ 0(BP), BP										
  traffic_dynamic.go:437	0xe39a73		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)									
  traffic_dynamic.go:437	0xe39a7c		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)									
  traffic_dynamic.go:437	0xe39a85		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)									
  traffic_dynamic.go:437	0xe39a8e		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  traffic_dynamic.go:437	0xe39a97		440f11bc2418010000	MOVUPS X15, 0x118(SP)									
  traffic_dynamic.go:375	0xe39aa0		80bc24c000000000	CMPB 0xc0(SP), $0x0									
  traffic_dynamic.go:375	0xe39aa8		0f84a4010000		JE 0xe39c52										
  traffic_dynamic.go:375	0xe39aae		4c8b942490000000	MOVQ 0x90(SP), R10									
  traffic_dynamic.go:375	0xe39ab6		4d85d2			TESTQ R10, R10										
  traffic_dynamic.go:375	0xe39ab9		0f8493010000		JE 0xe39c52										
  traffic_dynamic.go:375	0xe39abf		488bbc24a0000000	MOVQ 0xa0(SP), DI									
  traffic_dynamic.go:375	0xe39ac7		4885ff			TESTQ DI, DI										
  traffic_dynamic.go:375	0xe39aca		0f8482010000		JE 0xe39c52										
  traffic_dynamic.go:442	0xe39ad0		4c895c2468		MOVQ R11, 0x68(SP)									
  traffic_dynamic.go:375	0xe39ad5		48897c2460		MOVQ DI, 0x60(SP)									
  traffic_dynamic.go:375	0xe39ada		4c89542458		MOVQ R10, 0x58(SP)									
  traffic_dynamic.go:375	0xe39adf		488b842488000000	MOVQ 0x88(SP), AX									
  traffic_dynamic.go:375	0xe39ae7		4889842400020000	MOVQ AX, 0x200(SP)									
  traffic_dynamic.go:375	0xe39aef		488b8c2498000000	MOVQ 0x98(SP), CX									
  traffic_dynamic.go:375	0xe39af7		48898c24f8010000	MOVQ CX, 0x1f8(SP)									
  traffic.go:35			0xe39aff		4c89d3			MOVQ R10, BX										
  traffic.go:35			0xe39b02		e8798f5cff		CALL runtime.cmpstring(SB)								
  traffic.go:35			0xe39b07		4885c0			TESTQ AX, AX										
  traffic.go:35			0xe39b0a		7d2f			JGE 0xe39b3b										
  traffic.go:36			0xe39b0c		31c0			XORL AX, AX										
  traffic.go:36			0xe39b0e		488b9c2400020000	MOVQ 0x200(SP), BX									
  traffic.go:36			0xe39b16		488b4c2458		MOVQ 0x58(SP), CX									
  traffic.go:36			0xe39b1b		488d3de8e93200		LEAQ go:string.*+2(SB), DI								
  traffic.go:36			0xe39b22		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic.go:36			0xe39b27		4c8b8424f8010000	MOVQ 0x1f8(SP), R8									
  traffic.go:36			0xe39b2f		4c8b4c2460		MOVQ 0x60(SP), R9									
  traffic.go:36			0xe39b34		e867b961ff		CALL runtime.concatstring3(SB)								
  traffic_dynamic.go:382	0xe39b39		eb2d			JMP 0xe39b68										
  traffic.go:38			0xe39b3b		31c0			XORL AX, AX										
  traffic.go:38			0xe39b3d		488b9c24f8010000	MOVQ 0x1f8(SP), BX									
  traffic.go:38			0xe39b45		488b4c2460		MOVQ 0x60(SP), CX									
  traffic.go:38			0xe39b4a		488d3db9e93200		LEAQ go:string.*+2(SB), DI								
  traffic.go:38			0xe39b51		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic.go:38			0xe39b56		4c8b842400020000	MOVQ 0x200(SP), R8									
  traffic.go:38			0xe39b5e		4c8b4c2458		MOVQ 0x58(SP), R9									
  traffic.go:38			0xe39b63		e838b961ff		CALL runtime.concatstring3(SB)								
  traffic_dynamic.go:383	0xe39b68		440f11bc24e0000000	MOVUPS X15, 0xe0(SP)									
  traffic_dynamic.go:383	0xe39b71		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)									
  traffic_dynamic.go:383	0xe39b7a		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)									
  traffic_dynamic.go:383	0xe39b83		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  traffic_dynamic.go:383	0xe39b8c		440f11bc2418010000	MOVUPS X15, 0x118(SP)									
  traffic_dynamic.go:379	0xe39b95		488b542478		MOVQ 0x78(SP), DX									
  traffic_dynamic.go:379	0xe39b9a		4c8b842480000000	MOVQ 0x80(SP), R8									
  traffic_dynamic.go:379	0xe39ba2		48899424e0000000	MOVQ DX, 0xe0(SP)									
  traffic_dynamic.go:379	0xe39baa		4c898424e8000000	MOVQ R8, 0xe8(SP)									
  traffic_dynamic.go:380	0xe39bb2		488b942488000000	MOVQ 0x88(SP), DX									
  traffic_dynamic.go:380	0xe39bba		4c8b842490000000	MOVQ 0x90(SP), R8									
  traffic_dynamic.go:380	0xe39bc2		48899424f0000000	MOVQ DX, 0xf0(SP)									
  traffic_dynamic.go:380	0xe39bca		4c898424f8000000	MOVQ R8, 0xf8(SP)									
  traffic_dynamic.go:381	0xe39bd2		488b942498000000	MOVQ 0x98(SP), DX									
  traffic_dynamic.go:381	0xe39bda		4c8b8424a0000000	MOVQ 0xa0(SP), R8									
  traffic_dynamic.go:381	0xe39be2		4889942400010000	MOVQ DX, 0x100(SP)									
  traffic_dynamic.go:381	0xe39bea		4c89842408010000	MOVQ R8, 0x108(SP)									
  traffic_dynamic.go:382	0xe39bf2		4889842410010000	MOVQ AX, 0x110(SP)									
  traffic_dynamic.go:382	0xe39bfa		48899c2418010000	MOVQ BX, 0x118(SP)									
  traffic_dynamic.go:383	0xe39c02		f20f108424b0000000	MOVSD_XMM 0xb0(SP), X0									
  traffic_dynamic.go:383	0xe39c0b		f20f11842420010000	MOVSD_XMM X0, 0x120(SP)									
  traffic_dynamic.go:451	0xe39c14		488b842448010000	MOVQ 0x148(SP), AX									
  traffic_dynamic.go:436	0xe39c1c		488b8c2408020000	MOVQ 0x208(SP), CX									
  traffic_dynamic.go:436	0xe39c24		488b542470		MOVQ 0x70(SP), DX									
  traffic_dynamic.go:441	0xe39c29		488b9c2428020000	MOVQ 0x228(SP), BX									
  traffic_dynamic.go:442	0xe39c31		4c8b842450010000	MOVQ 0x150(SP), R8									
  traffic_dynamic.go:438	0xe39c39		4c8b4c2440		MOVQ 0x40(SP), R9									
  traffic_dynamic.go:438	0xe39c3e		4c8b5c2468		MOVQ 0x68(SP), R11									
  traffic_dynamic.go:441	0xe39c43		4c8ba42430020000	MOVQ 0x230(SP), R12									
  traffic_dynamic.go:441	0xe39c4b		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic_dynamic.go:437	0xe39c50		eb02			JMP 0xe39c54										
  traffic_dynamic.go:437	0xe39c52		31f6			XORL SI, SI										
  traffic_dynamic.go:437	0xe39c54		4c8b9424e0000000	MOVQ 0xe0(SP), R10									
  traffic_dynamic.go:437	0xe39c5c		4c89542478		MOVQ R10, 0x78(SP)									
  traffic_dynamic.go:437	0xe39c61		0f108424e8000000	MOVUPS 0xe8(SP), X0									
  traffic_dynamic.go:437	0xe39c69		0f11842480000000	MOVUPS X0, 0x80(SP)									
  traffic_dynamic.go:437	0xe39c71		0f108424f8000000	MOVUPS 0xf8(SP), X0									
  traffic_dynamic.go:437	0xe39c79		0f11842490000000	MOVUPS X0, 0x90(SP)									
  traffic_dynamic.go:437	0xe39c81		0f10842408010000	MOVUPS 0x108(SP), X0									
  traffic_dynamic.go:437	0xe39c89		0f118424a0000000	MOVUPS X0, 0xa0(SP)									
  traffic_dynamic.go:437	0xe39c91		0f10842418010000	MOVUPS 0x118(SP), X0									
  traffic_dynamic.go:437	0xe39c99		0f118424b0000000	MOVUPS X0, 0xb0(SP)									
  traffic_dynamic.go:437	0xe39ca1		4084f6			TESTL SI, SI										
  traffic_dynamic.go:437	0xe39ca4		0f8423fdffff		JE 0xe399cd										
  traffic_dynamic.go:438	0xe39caa		49ffc1			INCQ R9											
  traffic_dynamic.go:438	0xe39cad		4d39cb			CMPQ R11, R9										
  traffic_dynamic.go:438	0xe39cb0		7348			JAE 0xe39cfa										
  traffic_dynamic.go:438	0xe39cb2		4c89c0			MOVQ R8, AX										
  traffic_dynamic.go:438	0xe39cb5		4c89cb			MOVQ R9, BX										
  traffic_dynamic.go:438	0xe39cb8		4c89d9			MOVQ R11, CX										
  traffic_dynamic.go:438	0xe39cbb		bf01000000		MOVL $__minor_os_version__(SB), DI							
  traffic_dynamic.go:438	0xe39cc0		488d3579942c00		LEAQ runtime.types+1171776(SB), SI							
  traffic_dynamic.go:438	0xe39cc7		e8747f63ff		CALL runtime.growslice(SB)								
  traffic_dynamic.go:436	0xe39ccc		488b542470		MOVQ 0x70(SP), DX									
  traffic_dynamic.go:441	0xe39cd1		4c8ba42430020000	MOVQ 0x230(SP), R12									
  traffic_dynamic.go:438	0xe39cd9		4989c0			MOVQ AX, R8										
  traffic_dynamic.go:438	0xe39cdc		4989d9			MOVQ BX, R9										
  traffic_dynamic.go:438	0xe39cdf		4989cb			MOVQ CX, R11										
  traffic_dynamic.go:451	0xe39ce2		488b842448010000	MOVQ 0x148(SP), AX									
  traffic_dynamic.go:436	0xe39cea		488b8c2408020000	MOVQ 0x208(SP), CX									
  traffic_dynamic.go:441	0xe39cf2		488b9c2428020000	MOVQ 0x228(SP), BX									
  traffic_dynamic.go:438	0xe39cfa		4f8d14c9		LEAQ 0(R9)(R9*8), R10									
  traffic_dynamic.go:438	0xe39cfe		4f8d2cd0		LEAQ 0(R8)(R10*8), R13									
  traffic_dynamic.go:438	0xe39d02		4d8d6db8		LEAQ -0x48(R13), R13									
  traffic_dynamic.go:438	0xe39d06		833d433e720200		CMPL runtime.writeBarrier(SB), $0x0							
  traffic_dynamic.go:438	0xe39d0d		7467			JE 0xe39d76										
  traffic_dynamic.go:438	0xe39d0f		4c898424f0010000	MOVQ R8, 0x1f0(SP)									
  traffic_dynamic.go:438	0xe39d17		4c894c2450		MOVQ R9, 0x50(SP)									
  traffic_dynamic.go:438	0xe39d1c		4c895c2448		MOVQ R11, 0x48(SP)									
  traffic_dynamic.go:438	0xe39d21		4c89542468		MOVQ R10, 0x68(SP)									
  traffic_dynamic.go:438	0xe39d26		488d0513942c00		LEAQ runtime.types+1171776(SB), AX							
  traffic_dynamic.go:438	0xe39d2d		4c89eb			MOVQ R13, BX										
  traffic_dynamic.go:438	0xe39d30		488d4c2478		LEAQ 0x78(SP), CX									
  traffic_dynamic.go:438	0xe39d35		e8e6b15dff		CALL runtime.wbMove(SB)									
  traffic_dynamic.go:451	0xe39d3a		488b842448010000	MOVQ 0x148(SP), AX									
  traffic_dynamic.go:436	0xe39d42		488b8c2408020000	MOVQ 0x208(SP), CX									
  traffic_dynamic.go:436	0xe39d4a		488b542470		MOVQ 0x70(SP), DX									
  traffic_dynamic.go:441	0xe39d4f		488b9c2428020000	MOVQ 0x228(SP), BX									
  traffic_dynamic.go:438	0xe39d57		4c8b8424f0010000	MOVQ 0x1f0(SP), R8									
  traffic_dynamic.go:442	0xe39d5f		4c8b4c2450		MOVQ 0x50(SP), R9									
  traffic_dynamic.go:438	0xe39d64		4c8b542468		MOVQ 0x68(SP), R10									
  traffic_dynamic.go:442	0xe39d69		4c8b5c2448		MOVQ 0x48(SP), R11									
  traffic_dynamic.go:441	0xe39d6e		4c8ba42430020000	MOVQ 0x230(SP), R12									
  traffic_dynamic.go:438	0xe39d76		4f8d2cd0		LEAQ 0(R8)(R10*8), R13									
  traffic_dynamic.go:438	0xe39d7a		4d8d6dc0		LEAQ -0x40(R13), R13									
  traffic_dynamic.go:438	0xe39d7e		4f8d3cd0		LEAQ 0(R8)(R10*8), R15									
  traffic_dynamic.go:438	0xe39d82		4d8d7fe0		LEAQ -0x20(R15), R15									
  traffic_dynamic.go:438	0xe39d86		488b742478		MOVQ 0x78(SP), SI									
  traffic_dynamic.go:438	0xe39d8b		4b8974d0b8		MOVQ SI, -0x48(R8)(R10*8)								
  traffic_dynamic.go:438	0xe39d90		0f10842480000000	MOVUPS 0x80(SP), X0									
  traffic_dynamic.go:438	0xe39d98		410f114500		MOVUPS X0, 0(R13)									
  traffic_dynamic.go:438	0xe39d9d		0f10842490000000	MOVUPS 0x90(SP), X0									
  traffic_dynamic.go:438	0xe39da5		410f114510		MOVUPS X0, 0x10(R13)									
  traffic_dynamic.go:438	0xe39daa		0f108424a0000000	MOVUPS 0xa0(SP), X0									
  traffic_dynamic.go:438	0xe39db2		410f1107		MOVUPS X0, 0(R15)									
  traffic_dynamic.go:438	0xe39db6		0f108424b0000000	MOVUPS 0xb0(SP), X0									
  traffic_dynamic.go:438	0xe39dbe		410f114710		MOVUPS X0, 0x10(R15)									
  traffic_dynamic.go:438	0xe39dc3		e905fcffff		JMP 0xe399cd										
  traffic_dynamic.go:441	0xe39dc8		4889da			MOVQ BX, DX										
  traffic_dynamic.go:436	0xe39dcb		4889f1			MOVQ SI, CX										
  traffic_dynamic.go:441	0xe39dce		eb10			JMP 0xe39de0										
  traffic_dynamic.go:441	0xe39dd0		4883c268		ADDQ $.file+27(SB), DX									
  traffic_dynamic.go:441	0xe39dd4		49ffcb			DECQ R11										
  traffic_dynamic.go:442	0xe39dd7		4d89d0			MOVQ R10, R8										
  traffic_dynamic.go:442	0xe39dda		4989f1			MOVQ SI, R9										
  traffic_dynamic.go:441	0xe39ddd		4c89de			MOVQ R11, SI										
  traffic_dynamic.go:441	0xe39de0		4885f6			TESTQ SI, SI										
  traffic_dynamic.go:441	0xe39de3		0f8eae000000		JLE 0xe39e97										
  traffic_dynamic.go:441	0xe39de9		4889742470		MOVQ SI, 0x70(SP)									
  traffic_dynamic.go:441	0xe39dee		4889942408020000	MOVQ DX, 0x208(SP)									
  traffic_dynamic.go:441	0xe39df6		4c8b12			MOVQ 0(DX), R10										
  traffic_dynamic.go:441	0xe39df9		4c899424e0000000	MOVQ R10, 0xe0(SP)									
  traffic_dynamic.go:441	0xe39e01		4c8d5208		LEAQ 0x8(DX), R10									
  traffic_dynamic.go:441	0xe39e05		488dbc24e8000000	LEAQ 0xe8(SP), DI									
  traffic_dynamic.go:441	0xe39e0d		4989f3			MOVQ SI, R11										
  traffic_dynamic.go:441	0xe39e10		4c89d6			MOVQ R10, SI										
  traffic_dynamic.go:441	0xe39e13		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_dynamic.go:441	0xe39e1c		0f1f4000		NOPL 0(AX)										
  traffic_dynamic.go:441	0xe39e20		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_dynamic.go:441	0xe39e25		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_dynamic.go:441	0xe39e2a		e81df063ff		CALL 0x478e4c										
  traffic_dynamic.go:441	0xe39e2f		488b6d00		MOVQ 0(BP), BP										
  traffic_dynamic.go:442	0xe39e33		4d89c2			MOVQ R8, R10										
  traffic_dynamic.go:442	0xe39e36		4c89ce			MOVQ R9, SI										
  traffic_dynamic.go:442	0xe39e39		e98d000000		JMP 0xe39ecb										
  traffic_dynamic.go:444	0xe39e3e		488b8c24e0000000	MOVQ 0xe0(SP), CX									
  traffic_dynamic.go:444	0xe39e46		488bbc24e8000000	MOVQ 0xe8(SP), DI									
  traffic_dynamic.go:444	0xe39e4e		4889c3			MOVQ AX, BX										
  traffic_dynamic.go:444	0xe39e51		488d05e83a2400		LEAQ runtime.types+624960(SB), AX							
  traffic_dynamic.go:444	0xe39e58		e8c34163ff		CALL runtime.mapassign_faststr(SB)							
  traffic_dynamic.go:444	0xe39e5d		c60001			MOVB $__minor_os_version__(SB), 0(AX)							
  traffic_dynamic.go:451	0xe39e60		488b842448010000	MOVQ 0x148(SP), AX									
  traffic_dynamic.go:451	0xe39e68		488b8c2430020000	MOVQ 0x230(SP), CX									
  traffic_dynamic.go:441	0xe39e70		488b942408020000	MOVQ 0x208(SP), DX									
  traffic_dynamic.go:451	0xe39e78		488b9c2428020000	MOVQ 0x228(SP), BX									
  traffic_dynamic.go:442	0xe39e80		488b742440		MOVQ 0x40(SP), SI									
  traffic_dynamic.go:442	0xe39e85		4c8b942450010000	MOVQ 0x150(SP), R10									
  traffic_dynamic.go:441	0xe39e8d		4c8b5c2470		MOVQ 0x70(SP), R11									
  traffic_dynamic.go:445	0xe39e92		e939ffffff		JMP 0xe39dd0										
  traffic_dynamic.go:451	0xe39e97		488bbc2438020000	MOVQ 0x238(SP), DI									
  traffic_dynamic.go:451	0xe39e9f		4889c6			MOVQ AX, SI										
  traffic_dynamic.go:451	0xe39ea2		488b842420020000	MOVQ 0x220(SP), AX									
  traffic_dynamic.go:451	0xe39eaa		e871670000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).applyOppositePause(SB)		
  traffic_dynamic.go:452	0xe39eaf		488b842448010000	MOVQ 0x148(SP), AX									
  traffic_dynamic.go:452	0xe39eb7		4881c410020000		ADDQ $__file_alignment__+16(SB), SP							
  traffic_dynamic.go:452	0xe39ebe		5d			POPQ BP											
  traffic_dynamic.go:452	0xe39ebf		90			NOPL											
  traffic_dynamic.go:452	0xe39ec0		c3			RET											
  traffic_dynamic.go:442	0xe39ec1		4983c048		ADDQ $__major_os_version__+66(SB), R8							
  traffic_dynamic.go:442	0xe39ec5		49ffc9			DECQ R9											
  traffic_dynamic.go:442	0xe39ec8		4c89e6			MOVQ R12, SI										
  traffic_dynamic.go:442	0xe39ecb		4d85c9			TESTQ R9, R9										
  traffic_dynamic.go:442	0xe39ece		0f8efcfeffff		JLE 0xe39dd0										
  traffic_dynamic.go:442	0xe39ed4		4c894c2468		MOVQ R9, 0x68(SP)									
  traffic_dynamic.go:442	0xe39ed9		4c898424e8010000	MOVQ R8, 0x1e8(SP)									
  traffic_dynamic.go:442	0xe39ee1		4d8b20			MOVQ 0(R8), R12										
  traffic_dynamic.go:442	0xe39ee4		4c89a424a0010000	MOVQ R12, 0x1a0(SP)									
  traffic_dynamic.go:442	0xe39eec		410f104008		MOVUPS 0x8(R8), X0									
  traffic_dynamic.go:442	0xe39ef1		0f118424a8010000	MOVUPS X0, 0x1a8(SP)									
  traffic_dynamic.go:442	0xe39ef9		410f104018		MOVUPS 0x18(R8), X0									
  traffic_dynamic.go:442	0xe39efe		0f118424b8010000	MOVUPS X0, 0x1b8(SP)									
  traffic_dynamic.go:442	0xe39f06		410f104028		MOVUPS 0x28(R8), X0									
  traffic_dynamic.go:442	0xe39f0b		0f118424c8010000	MOVUPS X0, 0x1c8(SP)									
  traffic_dynamic.go:442	0xe39f13		410f104038		MOVUPS 0x38(R8), X0									
  traffic_dynamic.go:442	0xe39f18		0f118424d8010000	MOVUPS X0, 0x1d8(SP)									
  traffic_dynamic.go:443	0xe39f20		4c8ba424e0000000	MOVQ 0xe0(SP), R12									
  traffic_dynamic.go:443	0xe39f28		4c89642478		MOVQ R12, 0x78(SP)									
  traffic_dynamic.go:443	0xe39f2d		488dbc2480000000	LEAQ 0x80(SP), DI									
  traffic_dynamic.go:442	0xe39f35		4989f4			MOVQ SI, R12										
  traffic_dynamic.go:443	0xe39f38		488db424e8000000	LEAQ 0xe8(SP), SI									
  traffic_dynamic.go:443	0xe39f40		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_dynamic.go:443	0xe39f45		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_dynamic.go:443	0xe39f4a		e8fdee63ff		CALL 0x478e4c										
  traffic_dynamic.go:443	0xe39f4f		488b6d00		MOVQ 0(BP), BP										
  traffic_dynamic.go:443	0xe39f53		4c8bac24a0010000	MOVQ 0x1a0(SP), R13									
  traffic_dynamic.go:443	0xe39f5b		4c89ac2458010000	MOVQ R13, 0x158(SP)									
  traffic_dynamic.go:443	0xe39f63		0f108424a8010000	MOVUPS 0x1a8(SP), X0									
  traffic_dynamic.go:443	0xe39f6b		0f11842460010000	MOVUPS X0, 0x160(SP)									
  traffic_dynamic.go:443	0xe39f73		0f108424b8010000	MOVUPS 0x1b8(SP), X0									
  traffic_dynamic.go:443	0xe39f7b		0f11842470010000	MOVUPS X0, 0x170(SP)									
  traffic_dynamic.go:443	0xe39f83		0f108424c8010000	MOVUPS 0x1c8(SP), X0									
  traffic_dynamic.go:443	0xe39f8b		0f11842480010000	MOVUPS X0, 0x180(SP)									
  traffic_dynamic.go:443	0xe39f93		0f108424d8010000	MOVUPS 0x1d8(SP), X0									
  traffic_dynamic.go:443	0xe39f9b		0f11842490010000	MOVUPS X0, 0x190(SP)									
  traffic_dynamic.go:389	0xe39fa3		80bc24c000000000	CMPB 0xc0(SP), $0x0									
  traffic_dynamic.go:389	0xe39fab		747e			JE 0xe3a02b										
  traffic_dynamic.go:389	0xe39fad		4c8bac2460010000	MOVQ 0x160(SP), R13									
  traffic_dynamic.go:389	0xe39fb5		4d85ed			TESTQ R13, R13										
  traffic_dynamic.go:389	0xe39fb8		7508			JNE 0xe39fc2										
  traffic_dynamic.go:389	0xe39fba		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic_dynamic.go:389	0xe39fbf		90			NOPL											
  traffic_dynamic.go:389	0xe39fc0		eb6e			JMP 0xe3a030										
  traffic_dynamic.go:389	0xe39fc2		4c8bbc2480000000	MOVQ 0x80(SP), R15									
  traffic_dynamic.go:389	0xe39fca		4d39fd			CMPQ R13, R15										
  traffic_dynamic.go:389	0xe39fcd		7404			JE 0xe39fd3										
  traffic_dynamic.go:389	0xe39fcf		31f6			XORL SI, SI										
  traffic_dynamic.go:389	0xe39fd1		eb5d			JMP 0xe3a030										
  traffic_dynamic.go:389	0xe39fd3		488b9c2458010000	MOVQ 0x158(SP), BX									
  traffic_dynamic.go:389	0xe39fdb		488b442478		MOVQ 0x78(SP), AX									
  traffic_dynamic.go:389	0xe39fe0		4c89f9			MOVQ R15, CX										
  traffic_dynamic.go:389	0xe39fe3		e8788e5cff		CALL runtime.memequal(SB)								
  traffic_dynamic.go:451	0xe39fe8		488b8c2430020000	MOVQ 0x230(SP), CX									
  traffic_dynamic.go:441	0xe39ff0		488b942408020000	MOVQ 0x208(SP), DX									
  traffic_dynamic.go:451	0xe39ff8		488b9c2428020000	MOVQ 0x228(SP), BX									
  traffic_dynamic.go:442	0xe3a000		4c8b8424e8010000	MOVQ 0x1e8(SP), R8									
  traffic_dynamic.go:442	0xe3a008		4c8b4c2468		MOVQ 0x68(SP), R9									
  traffic_dynamic.go:442	0xe3a00d		4c8b942450010000	MOVQ 0x150(SP), R10									
  traffic_dynamic.go:441	0xe3a015		4c8b5c2470		MOVQ 0x70(SP), R11									
  traffic_dynamic.go:442	0xe3a01a		4c8b642440		MOVQ 0x40(SP), R12									
  traffic_dynamic.go:389	0xe3a01f		89c6			MOVL AX, SI										
  traffic_dynamic.go:444	0xe3a021		488b842448010000	MOVQ 0x148(SP), AX									
  traffic_dynamic.go:389	0xe3a029		eb05			JMP 0xe3a030										
  traffic_dynamic.go:389	0xe3a02b		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic_dynamic.go:389	0xe3a030		4084f6			TESTL SI, SI										
  traffic_dynamic.go:389	0xe3a033		7410			JE 0xe3a045										
  traffic_dynamic.go:389	0xe3a035		f20f10150bd80202	MOVSD_XMM $f64.3eb0c6f7a0b5ed8d(SB), X2							
  traffic_dynamic.go:389	0xe3a03d		31f6			XORL SI, SI										
  traffic_dynamic.go:389	0xe3a03f		90			NOPL											
  traffic_dynamic.go:443	0xe3a040		e9bc010000		JMP 0xe3a201										
  traffic_dynamic.go:392	0xe3a045		4c8bac2490000000	MOVQ 0x90(SP), R13									
  traffic_dynamic.go:392	0xe3a04d		4c39ac2470010000	CMPQ 0x170(SP), R13									
  traffic_dynamic.go:392	0xe3a055		7407			JE 0xe3a05e										
  traffic_dynamic.go:392	0xe3a057		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic_dynamic.go:392	0xe3a05c		eb5c			JMP 0xe3a0ba										
  traffic_dynamic.go:392	0xe3a05e		488b842488000000	MOVQ 0x88(SP), AX									
  traffic_dynamic.go:392	0xe3a066		488b9c2468010000	MOVQ 0x168(SP), BX									
  traffic_dynamic.go:392	0xe3a06e		4c89e9			MOVQ R13, CX										
  traffic_dynamic.go:392	0xe3a071		e8ea8d5cff		CALL runtime.memequal(SB)								
  traffic_dynamic.go:392	0xe3a076		83f001			XORL $__minor_os_version__(SB), AX							
  traffic_dynamic.go:451	0xe3a079		488b8c2430020000	MOVQ 0x230(SP), CX									
  traffic_dynamic.go:441	0xe3a081		488b942408020000	MOVQ 0x208(SP), DX									
  traffic_dynamic.go:451	0xe3a089		488b9c2428020000	MOVQ 0x228(SP), BX									
  traffic_dynamic.go:442	0xe3a091		4c8b8424e8010000	MOVQ 0x1e8(SP), R8									
  traffic_dynamic.go:442	0xe3a099		4c8b4c2468		MOVQ 0x68(SP), R9									
  traffic_dynamic.go:442	0xe3a09e		4c8b942450010000	MOVQ 0x150(SP), R10									
  traffic_dynamic.go:441	0xe3a0a6		4c8b5c2470		MOVQ 0x70(SP), R11									
  traffic_dynamic.go:442	0xe3a0ab		4c8b642440		MOVQ 0x40(SP), R12									
  traffic_dynamic.go:392	0xe3a0b0		89c6			MOVL AX, SI										
  traffic_dynamic.go:444	0xe3a0b2		488b842448010000	MOVQ 0x148(SP), AX									
  traffic_dynamic.go:392	0xe3a0ba		4084f6			TESTL SI, SI										
  traffic_dynamic.go:392	0xe3a0bd		7407			JE 0xe3a0c6										
  traffic_dynamic.go:392	0xe3a0bf		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic_dynamic.go:392	0xe3a0c4		eb7a			JMP 0xe3a140										
  traffic_dynamic.go:392	0xe3a0c6		4c8bac24a0000000	MOVQ 0xa0(SP), R13									
  traffic_dynamic.go:392	0xe3a0ce		4c39ac2480010000	CMPQ 0x180(SP), R13									
  traffic_dynamic.go:392	0xe3a0d6		7407			JE 0xe3a0df										
  traffic_dynamic.go:392	0xe3a0d8		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic_dynamic.go:392	0xe3a0dd		eb61			JMP 0xe3a140										
  traffic_dynamic.go:392	0xe3a0df		488b842498000000	MOVQ 0x98(SP), AX									
  traffic_dynamic.go:392	0xe3a0e7		488b9c2478010000	MOVQ 0x178(SP), BX									
  traffic_dynamic.go:392	0xe3a0ef		4c89e9			MOVQ R13, CX										
  traffic_dynamic.go:392	0xe3a0f2		e8698d5cff		CALL runtime.memequal(SB)								
  traffic_dynamic.go:392	0xe3a0f7		83f001			XORL $__minor_os_version__(SB), AX							
  traffic_dynamic.go:451	0xe3a0fa		488b8c2430020000	MOVQ 0x230(SP), CX									
  traffic_dynamic.go:441	0xe3a102		488b942408020000	MOVQ 0x208(SP), DX									
  traffic_dynamic.go:451	0xe3a10a		488b9c2428020000	MOVQ 0x228(SP), BX									
  traffic_dynamic.go:442	0xe3a112		4c8b8424e8010000	MOVQ 0x1e8(SP), R8									
  traffic_dynamic.go:442	0xe3a11a		4c8b4c2468		MOVQ 0x68(SP), R9									
  traffic_dynamic.go:442	0xe3a11f		4c8b942450010000	MOVQ 0x150(SP), R10									
  traffic_dynamic.go:441	0xe3a127		4c8b5c2470		MOVQ 0x70(SP), R11									
  traffic_dynamic.go:442	0xe3a12c		4c8b642440		MOVQ 0x40(SP), R12									
  traffic_dynamic.go:392	0xe3a131		89c6			MOVL AX, SI										
  traffic_dynamic.go:444	0xe3a133		488b842448010000	MOVQ 0x148(SP), AX									
  traffic_dynamic.go:444	0xe3a13b		0f1f440000		NOPL 0(AX)(AX*1)									
  traffic_dynamic.go:392	0xe3a140		4084f6			TESTL SI, SI										
  traffic_dynamic.go:392	0xe3a143		740f			JE 0xe3a154										
  traffic_dynamic.go:392	0xe3a145		f20f1015fbd60202	MOVSD_XMM $f64.3eb0c6f7a0b5ed8d(SB), X2							
  traffic_dynamic.go:392	0xe3a14d		31f6			XORL SI, SI										
  traffic_dynamic.go:443	0xe3a14f		e9ad000000		JMP 0xe3a201										
  traffic_dynamic.go:396	0xe3a154		f20f108424b0000000	MOVSD_XMM 0xb0(SP), X0									
  traffic_dynamic.go:396	0xe3a15d		f20f108c2498010000	MOVSD_XMM 0x198(SP), X1									
  traffic_dynamic.go:396	0xe3a166		f20f1015dad60202	MOVSD_XMM $f64.3eb0c6f7a0b5ed8d(SB), X2							
  traffic_dynamic.go:396	0xe3a16e		0f10d9			MOVUPS X1, X3										
  traffic_dynamic.go:396	0xe3a171		f20f5cca		SUBSD X2, X1										
  traffic_dynamic.go:396	0xe3a175		660f2ec8		UCOMISD X0, X1										
  traffic_dynamic.go:396	0xe3a179		7607			JBE 0xe3a182										
  traffic_dynamic.go:396	0xe3a17b		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic_dynamic.go:443	0xe3a180		eb7f			JMP 0xe3a201										
  traffic_dynamic.go:399	0xe3a182		f20f58da		ADDSD X2, X3										
  traffic_dynamic.go:399	0xe3a186		660f2ec3		UCOMISD X3, X0										
  traffic_dynamic.go:399	0xe3a18a		7604			JBE 0xe3a190										
  traffic_dynamic.go:399	0xe3a18c		31f6			XORL SI, SI										
  traffic_dynamic.go:443	0xe3a18e		eb71			JMP 0xe3a201										
  traffic_dynamic.go:402	0xe3a190		488b442478		MOVQ 0x78(SP), AX									
  traffic_dynamic.go:402	0xe3a195		488b9c2480000000	MOVQ 0x80(SP), BX									
  traffic_dynamic.go:402	0xe3a19d		488b8c2458010000	MOVQ 0x158(SP), CX									
  traffic_dynamic.go:402	0xe3a1a5		488bbc2460010000	MOVQ 0x160(SP), DI									
  traffic_dynamic.go:402	0xe3a1ad		e8ce885cff		CALL runtime.cmpstring(SB)								
  traffic_dynamic.go:402	0xe3a1b2		4885c0			TESTQ AX, AX										
  traffic_dynamic.go:402	0xe3a1b5		0f9fc2			SETG DL											
  traffic_dynamic.go:444	0xe3a1b8		488b842448010000	MOVQ 0x148(SP), AX									
  traffic_dynamic.go:451	0xe3a1c0		488b8c2430020000	MOVQ 0x230(SP), CX									
  traffic_dynamic.go:451	0xe3a1c8		488b9c2428020000	MOVQ 0x228(SP), BX									
  traffic_dynamic.go:442	0xe3a1d0		4c8b8424e8010000	MOVQ 0x1e8(SP), R8									
  traffic_dynamic.go:442	0xe3a1d8		4c8b4c2468		MOVQ 0x68(SP), R9									
  traffic_dynamic.go:442	0xe3a1dd		4c8b942450010000	MOVQ 0x150(SP), R10									
  traffic_dynamic.go:441	0xe3a1e5		4c8b5c2470		MOVQ 0x70(SP), R11									
  traffic_dynamic.go:442	0xe3a1ea		4c8b642440		MOVQ 0x40(SP), R12									
  traffic_dynamic.go:442	0xe3a1ef		f20f101551d60202	MOVSD_XMM $f64.3eb0c6f7a0b5ed8d(SB), X2							
  traffic_dynamic.go:443	0xe3a1f7		89d6			MOVL DX, SI										
  traffic_dynamic.go:441	0xe3a1f9		488b942408020000	MOVQ 0x208(SP), DX									
  traffic_dynamic.go:443	0xe3a201		4084f6			TESTL SI, SI										
  traffic_dynamic.go:443	0xe3a204		0f84b7fcffff		JE 0xe39ec1										
  traffic_dynamic.go:443	0xe3a20a		e92ffcffff		JMP 0xe39e3e										
  traffic_dynamic.go:431	0xe3a20f		4889442408		MOVQ AX, 0x8(SP)									
  traffic_dynamic.go:431	0xe3a214		48895c2410		MOVQ BX, 0x10(SP)									
  traffic_dynamic.go:431	0xe3a219		48894c2418		MOVQ CX, 0x18(SP)									
  traffic_dynamic.go:431	0xe3a21e		48897c2420		MOVQ DI, 0x20(SP)									
  traffic_dynamic.go:431	0xe3a223		e8b8c263ff		CALL runtime.morestack_noctxt.abi0(SB)							
  traffic_dynamic.go:431	0xe3a228		488b442408		MOVQ 0x8(SP), AX									
  traffic_dynamic.go:431	0xe3a22d		488b5c2410		MOVQ 0x10(SP), BX									
  traffic_dynamic.go:431	0xe3a232		488b4c2418		MOVQ 0x18(SP), CX									
  traffic_dynamic.go:431	0xe3a237		488b7c2420		MOVQ 0x20(SP), DI									
  traffic_dynamic.go:431	0xe3a23c		0f1f4000		NOPL 0(AX)										
  traffic_dynamic.go:431	0xe3a240		e91bf7ffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).computePausedVehicles(SB)	
  :-1				0xe3a245		cc			INT $__subsystem__(SB)									
  :-1				0xe3a246		cc			INT $__subsystem__(SB)									
  :-1				0xe3a247		cc			INT $__subsystem__(SB)									
  :-1				0xe3a248		cc			INT $__subsystem__(SB)									
  :-1				0xe3a249		cc			INT $__subsystem__(SB)									
  :-1				0xe3a24a		cc			INT $__subsystem__(SB)									
  :-1				0xe3a24b		cc			INT $__subsystem__(SB)									
  :-1				0xe3a24c		cc			INT $__subsystem__(SB)									
  :-1				0xe3a24d		cc			INT $__subsystem__(SB)									
  :-1				0xe3a24e		cc			INT $__subsystem__(SB)									
  :-1				0xe3a24f		cc			INT $__subsystem__(SB)									
  :-1				0xe3a250		cc			INT $__subsystem__(SB)									
  :-1				0xe3a251		cc			INT $__subsystem__(SB)									
  :-1				0xe3a252		cc			INT $__subsystem__(SB)									
  :-1				0xe3a253		cc			INT $__subsystem__(SB)									
  :-1				0xe3a254		cc			INT $__subsystem__(SB)									
  :-1				0xe3a255		cc			INT $__subsystem__(SB)									
  :-1				0xe3a256		cc			INT $__subsystem__(SB)									
  :-1				0xe3a257		cc			INT $__subsystem__(SB)									
  :-1				0xe3a258		cc			INT $__subsystem__(SB)									
  :-1				0xe3a259		cc			INT $__subsystem__(SB)									
  :-1				0xe3a25a		cc			INT $__subsystem__(SB)									
  :-1				0xe3a25b		cc			INT $__subsystem__(SB)									
  :-1				0xe3a25c		cc			INT $__subsystem__(SB)									
  :-1				0xe3a25d		cc			INT $__subsystem__(SB)									
  :-1				0xe3a25e		cc			INT $__subsystem__(SB)									
  :-1				0xe3a25f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).logTrafficStateIfChanged(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:456	0xe3a260		4c8da42438feffff	LEAQ 0xfffffe38(SP), R12								
  traffic_dynamic.go:456	0xe3a268		4d3b6610		CMPQ R12, 0x10(R14)									
  traffic_dynamic.go:456	0xe3a26c		0f8687040000		JBE 0xe3a6f9										
  traffic_dynamic.go:456	0xe3a272		55			PUSHQ BP										
  traffic_dynamic.go:456	0xe3a273		4889e5			MOVQ SP, BP										
  traffic_dynamic.go:456	0xe3a276		4881ec40020000		SUBQ $__file_alignment__+64(SB), SP							
  traffic_dynamic.go:456	0xe3a27d		48899c2458020000	MOVQ BX, 0x258(SP)									
  traffic_dynamic.go:457	0xe3a285		4885c0			TESTQ AX, AX										
  traffic_dynamic.go:457	0xe3a288		0f848e010000		JE 0xe3a41c										
  traffic_dynamic.go:457	0xe3a28e		4889842450020000	MOVQ AX, 0x250(SP)									
  traffic_dynamic.go:457	0xe3a296		48899c2458020000	MOVQ BX, 0x258(SP)									
  traffic_dynamic.go:457	0xe3a29e		48898c2460020000	MOVQ CX, 0x260(SP)									
  traffic_dynamic.go:460	0xe3a2a6		4889f0			MOVQ SI, AX										
  traffic_dynamic.go:460	0xe3a2a9		e892200000		CALL CAS-Backend/pkg/diapdu.formatLockList(SB)						
  traffic_dynamic.go:460	0xe3a2ae		48895c2448		MOVQ BX, 0x48(SP)									
  traffic_dynamic.go:460	0xe3a2b3		48898424d8000000	MOVQ AX, 0xd8(SP)									
  traffic_dynamic.go:461	0xe3a2bb		488b8c2450020000	MOVQ 0x250(SP), CX									
  traffic_dynamic.go:461	0xe3a2c3		48395940		CMPQ 0x40(CX), BX									
  traffic_dynamic.go:461	0xe3a2c7		7530			JNE 0xe3a2f9										
  traffic_dynamic.go:461	0xe3a2c9		488b5138		MOVQ 0x38(CX), DX									
  traffic_dynamic.go:460	0xe3a2cd		4889de			MOVQ BX, SI										
  traffic_dynamic.go:461	0xe3a2d0		4889d3			MOVQ DX, BX										
  traffic_dynamic.go:461	0xe3a2d3		4889f1			MOVQ SI, CX										
  traffic_dynamic.go:461	0xe3a2d6		e8858b5cff		CALL runtime.memequal(SB)								
  traffic_dynamic.go:461	0xe3a2db		84c0			TESTL AL, AL										
  traffic_dynamic.go:461	0xe3a2dd		740d			JE 0xe3a2ec										
  traffic_dynamic.go:478	0xe3a2df		488b942450020000	MOVQ 0x250(SP), DX									
  traffic_dynamic.go:461	0xe3a2e7		e9a2000000		JMP 0xe3a38e										
  traffic_dynamic.go:462	0xe3a2ec		488b8424d8000000	MOVQ 0xd8(SP), AX									
  traffic_dynamic.go:462	0xe3a2f4		488b5c2448		MOVQ 0x48(SP), BX									
  traffic_dynamic.go:462	0xe3a2f9		440f11bc24d0010000	MOVUPS X15, 0x1d0(SP)									
  traffic_dynamic.go:462	0xe3a302		e819fe62ff		CALL runtime.convTstring(SB)								
  traffic_dynamic.go:462	0xe3a307		488d0d12862000		LEAQ runtime.types+383264(SB), CX							
  traffic_dynamic.go:462	0xe3a30e		48898c24d0010000	MOVQ CX, 0x1d0(SP)									
  traffic_dynamic.go:462	0xe3a316		48898424d8010000	MOVQ AX, 0x1d8(SP)									
  print.go:233			0xe3a31e		488b1d5b7d6d02		MOVQ os.Stdout(SB), BX									
  print.go:233			0xe3a325		488d05b4170302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233			0xe3a32c		bf23000000		MOVL $__major_os_version__+29(SB), DI							
  print.go:233			0xe3a331		488db424d0010000	LEAQ 0x1d0(SP), SI									
  print.go:233			0xe3a339		41b801000000		MOVL $__minor_os_version__(SB), R8							
  print.go:233			0xe3a33f		4d89c1			MOVQ R8, R9										
  print.go:233			0xe3a342		488d0dec663500		LEAQ go:string.*+165165(SB), CX								
  print.go:233			0xe3a349		e8d24e6eff		CALL fmt.Fprintf(SB)									
  traffic_dynamic.go:463	0xe3a34e		488b4c2448		MOVQ 0x48(SP), CX									
  traffic_dynamic.go:463	0xe3a353		488b942450020000	MOVQ 0x250(SP), DX									
  traffic_dynamic.go:463	0xe3a35b		48894a40		MOVQ CX, 0x40(DX)									
  traffic_dynamic.go:463	0xe3a35f		833dea37720200		CMPL runtime.writeBarrier(SB), $0x0							
  traffic_dynamic.go:463	0xe3a366		750a			JNE 0xe3a372										
  traffic_dynamic.go:463	0xe3a368		488bb424d8000000	MOVQ 0xd8(SP), SI									
  traffic_dynamic.go:463	0xe3a370		eb18			JMP 0xe3a38a										
  traffic_dynamic.go:463	0xe3a372		e8c9e063ff		CALL runtime.gcWriteBarrier2(SB)							
  traffic_dynamic.go:463	0xe3a377		488bb424d8000000	MOVQ 0xd8(SP), SI									
  traffic_dynamic.go:463	0xe3a37f		498933			MOVQ SI, 0(R11)										
  traffic_dynamic.go:463	0xe3a382		4c8b4238		MOVQ 0x38(DX), R8									
  traffic_dynamic.go:463	0xe3a386		4d894308		MOVQ R8, 0x8(R11)									
  traffic_dynamic.go:463	0xe3a38a		48897238		MOVQ SI, 0x38(DX)									
  traffic_dynamic.go:465	0xe3a38e		440f11bc24a0010000	MOVUPS X15, 0x1a0(SP)									
  traffic_dynamic.go:465	0xe3a397		440f11bc24b0010000	MOVUPS X15, 0x1b0(SP)									
  traffic_dynamic.go:465	0xe3a3a0		440f11bc24c0010000	MOVUPS X15, 0x1c0(SP)									
  traffic_dynamic.go:465	0xe3a3a9		488b9c2460020000	MOVQ 0x260(SP), BX									
  traffic_dynamic.go:465	0xe3a3b1		4883fb08		CMPQ BX, $__major_os_version__+2(SB)							
  traffic_dynamic.go:465	0xe3a3b5		7f38			JG 0xe3a3ef										
  traffic_dynamic.go:465	0xe3a3b7		440f11bc2408010000	MOVUPS X15, 0x108(SP)									
  traffic_dynamic.go:465	0xe3a3c0		488dbc2410010000	LEAQ 0x110(SP), DI									
  traffic_dynamic.go:465	0xe3a3c8		488d7fd0		LEAQ -0x30(DI), DI									
  traffic_dynamic.go:465	0xe3a3cc		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_dynamic.go:465	0xe3a3d1		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_dynamic.go:465	0xe3a3d6		e8fee663ff		CALL 0x478ad9										
  traffic_dynamic.go:465	0xe3a3db		488b6d00		MOVQ 0(BP), BP										
  traffic_dynamic.go:465	0xe3a3df		488db42408010000	LEAQ 0x108(SP), SI									
  traffic_dynamic.go:465	0xe3a3e7		4889b424b0010000	MOVQ SI, 0x1b0(SP)									
  traffic_dynamic.go:465	0xe3a3ef		488d054a352400		LEAQ runtime.types+624960(SB), AX							
  traffic_dynamic.go:465	0xe3a3f6		488d8c24a0010000	LEAQ 0x1a0(SP), CX									
  traffic_dynamic.go:465	0xe3a3fe		6690			NOPW											
  traffic_dynamic.go:465	0xe3a400		e81b0c63ff		CALL runtime.makemap(SB)								
  traffic_dynamic.go:465	0xe3a405		4889442468		MOVQ AX, 0x68(SP)									
  traffic_dynamic.go:466	0xe3a40a		488b942458020000	MOVQ 0x258(SP), DX									
  traffic_dynamic.go:466	0xe3a412		488b9c2460020000	MOVQ 0x260(SP), BX									
  traffic_dynamic.go:466	0xe3a41a		eb10			JMP 0xe3a42c										
  traffic_dynamic.go:458	0xe3a41c		4881c440020000		ADDQ $__file_alignment__+64(SB), SP							
  traffic_dynamic.go:458	0xe3a423		5d			POPQ BP											
  traffic_dynamic.go:458	0xe3a424		c3			RET											
  traffic_dynamic.go:466	0xe3a425		4883c268		ADDQ $.file+27(SB), DX									
  traffic_dynamic.go:466	0xe3a429		48ffcb			DECQ BX											
  traffic_dynamic.go:466	0xe3a42c		4885db			TESTQ BX, BX										
  traffic_dynamic.go:466	0xe3a42f		0f8e10020000		JLE 0xe3a645										
  traffic_dynamic.go:466	0xe3a435		4c8b02			MOVQ 0(DX), R8										
  traffic_dynamic.go:466	0xe3a438		4c89442470		MOVQ R8, 0x70(SP)									
  traffic_dynamic.go:466	0xe3a43d		488d7208		LEAQ 0x8(DX), SI									
  traffic_dynamic.go:466	0xe3a441		488d7c2478		LEAQ 0x78(SP), DI									
  traffic_dynamic.go:466	0xe3a446		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_dynamic.go:466	0xe3a44b		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_dynamic.go:466	0xe3a450		e8f7e963ff		CALL 0x478e4c										
  traffic_dynamic.go:466	0xe3a455		488b6d00		MOVQ 0(BP), BP										
  traffic_dynamic.go:467	0xe3a459		80bc24b800000000	CMPB 0xb8(SP), $0x0									
  traffic_dynamic.go:467	0xe3a461		74c2			JE 0xe3a425										
  traffic_dynamic.go:466	0xe3a463		48895c2450		MOVQ BX, 0x50(SP)									
  traffic_dynamic.go:466	0xe3a468		48899424e0000000	MOVQ DX, 0xe0(SP)									
  traffic_dynamic.go:470	0xe3a470		488b4c2470		MOVQ 0x70(SP), CX									
  traffic_dynamic.go:470	0xe3a475		488b7c2478		MOVQ 0x78(SP), DI									
  traffic_dynamic.go:470	0xe3a47a		4889c3			MOVQ AX, BX										
  traffic_dynamic.go:470	0xe3a47d		488d05bc342400		LEAQ runtime.types+624960(SB), AX							
  traffic_dynamic.go:470	0xe3a484		e8973b63ff		CALL runtime.mapassign_faststr(SB)							
  traffic_dynamic.go:470	0xe3a489		c60001			MOVB $__minor_os_version__(SB), 0(AX)							
  traffic_dynamic.go:471	0xe3a48c		488b8c2488000000	MOVQ 0x88(SP), CX									
  traffic_log.go:10		0xe3a494		4885c9			TESTQ CX, CX										
  traffic_log.go:10		0xe3a497		740d			JE 0xe3a4a6										
  traffic_dynamic.go:471	0xe3a499		4c8b8c2498000000	MOVQ 0x98(SP), R9									
  traffic_log.go:10		0xe3a4a1		4d85c9			TESTQ R9, R9										
  traffic_log.go:10		0xe3a4a4		750e			JNE 0xe3a4b4										
  traffic_log.go:10		0xe3a4a6		bb06000000		MOVL $__major_os_version__(SB), BX							
  traffic_log.go:10		0xe3a4ab		488d05154e3300		LEAQ go:string.*+28095(SB), AX								
  traffic_dynamic.go:471	0xe3a4b2		eb23			JMP 0xe3a4d7										
  traffic_dynamic.go:471	0xe3a4b4		488b9c2480000000	MOVQ 0x80(SP), BX									
  traffic_dynamic.go:471	0xe3a4bc		4c8b842490000000	MOVQ 0x90(SP), R8									
  traffic_log.go:13		0xe3a4c4		31c0			XORL AX, AX										
  traffic_log.go:13		0xe3a4c6		488d3d7be53200		LEAQ go:string.*+1344(SB), DI								
  traffic_log.go:13		0xe3a4cd		be03000000		MOVL $__subsystem__(SB), SI								
  traffic_log.go:13		0xe3a4d2		e8c9af61ff		CALL runtime.concatstring3(SB)								
  traffic_dynamic.go:471	0xe3a4d7		48895c2438		MOVQ BX, 0x38(SP)									
  traffic_dynamic.go:471	0xe3a4dc		4889442458		MOVQ AX, 0x58(SP)									
  traffic_dynamic.go:472	0xe3a4e1		488b942450020000	MOVQ 0x250(SP), DX									
  traffic_dynamic.go:472	0xe3a4e9		488b7248		MOVQ 0x48(DX), SI									
  traffic_dynamic.go:472	0xe3a4ed		488b4c2470		MOVQ 0x70(SP), CX									
  traffic_dynamic.go:472	0xe3a4f2		488b7c2478		MOVQ 0x78(SP), DI									
  traffic_dynamic.go:472	0xe3a4f7		488d0522362400		LEAQ runtime.types+625440(SB), AX							
  traffic_dynamic.go:472	0xe3a4fe		4889f3			MOVQ SI, BX										
  traffic_dynamic.go:472	0xe3a501		e83a9e5dff		CALL runtime.mapaccess1_faststr(SB)							
  traffic_dynamic.go:472	0xe3a506		488b4808		MOVQ 0x8(AX), CX									
  traffic_dynamic.go:472	0xe3a50a		488b542438		MOVQ 0x38(SP), DX									
  traffic_dynamic.go:472	0xe3a50f		4839ca			CMPQ DX, CX										
  traffic_dynamic.go:472	0xe3a512		7531			JNE 0xe3a545										
  traffic_dynamic.go:472	0xe3a514		488b00			MOVQ 0(AX), AX										
  traffic_dynamic.go:472	0xe3a517		488b5c2458		MOVQ 0x58(SP), BX									
  traffic_dynamic.go:472	0xe3a51c		0f1f4000		NOPL 0(AX)										
  traffic_dynamic.go:472	0xe3a520		e83b895cff		CALL runtime.memequal(SB)								
  traffic_dynamic.go:472	0xe3a525		84c0			TESTL AL, AL										
  traffic_dynamic.go:472	0xe3a527		741c			JE 0xe3a545										
  traffic_dynamic.go:470	0xe3a529		488b442468		MOVQ 0x68(SP), AX									
  traffic_dynamic.go:466	0xe3a52e		488b9424e0000000	MOVQ 0xe0(SP), DX									
  traffic_dynamic.go:466	0xe3a536		488b5c2450		MOVQ 0x50(SP), BX									
  traffic_dynamic.go:466	0xe3a53b		0f1f440000		NOPL 0(AX)(AX*1)									
  traffic_dynamic.go:473	0xe3a540		e9e0feffff		JMP 0xe3a425										
  traffic_dynamic.go:475	0xe3a545		488b942450020000	MOVQ 0x250(SP), DX									
  traffic_dynamic.go:475	0xe3a54d		488b5a48		MOVQ 0x48(DX), BX									
  traffic_dynamic.go:475	0xe3a551		488b4c2470		MOVQ 0x70(SP), CX									
  traffic_dynamic.go:475	0xe3a556		488b7c2478		MOVQ 0x78(SP), DI									
  traffic_dynamic.go:475	0xe3a55b		488d05be352400		LEAQ runtime.types+625440(SB), AX							
  traffic_dynamic.go:475	0xe3a562		e8b93a63ff		CALL runtime.mapassign_faststr(SB)							
  traffic_dynamic.go:475	0xe3a567		488b542438		MOVQ 0x38(SP), DX									
  traffic_dynamic.go:475	0xe3a56c		48895008		MOVQ DX, 0x8(AX)									
  traffic_dynamic.go:475	0xe3a570		833dd935720200		CMPL runtime.writeBarrier(SB), $0x0							
  traffic_dynamic.go:475	0xe3a577		7509			JNE 0xe3a582										
  traffic_dynamic.go:475	0xe3a579		488b4c2458		MOVQ 0x58(SP), CX									
  traffic_dynamic.go:475	0xe3a57e		6690			NOPW											
  traffic_dynamic.go:475	0xe3a580		eb14			JMP 0xe3a596										
  traffic_dynamic.go:475	0xe3a582		e8b9de63ff		CALL runtime.gcWriteBarrier2(SB)							
  traffic_dynamic.go:475	0xe3a587		488b4c2458		MOVQ 0x58(SP), CX									
  traffic_dynamic.go:475	0xe3a58c		49890b			MOVQ CX, 0(R11)										
  traffic_dynamic.go:475	0xe3a58f		488b30			MOVQ 0(AX), SI										
  traffic_dynamic.go:475	0xe3a592		49897308		MOVQ SI, 0x8(R11)									
  traffic_dynamic.go:475	0xe3a596		488908			MOVQ CX, 0(AX)										
  traffic_dynamic.go:476	0xe3a599		440f11bc24e8000000	MOVUPS X15, 0xe8(SP)									
  traffic_dynamic.go:476	0xe3a5a2		440f11bc24f8000000	MOVUPS X15, 0xf8(SP)									
  traffic_dynamic.go:476	0xe3a5ab		488b442470		MOVQ 0x70(SP), AX									
  traffic_dynamic.go:476	0xe3a5b0		488b5c2478		MOVQ 0x78(SP), BX									
  traffic_dynamic.go:476	0xe3a5b5		e866fb62ff		CALL runtime.convTstring(SB)								
  traffic_dynamic.go:476	0xe3a5ba		488d0d5f832000		LEAQ runtime.types+383264(SB), CX							
  traffic_dynamic.go:476	0xe3a5c1		48898c24e8000000	MOVQ CX, 0xe8(SP)									
  traffic_dynamic.go:476	0xe3a5c9		48898424f0000000	MOVQ AX, 0xf0(SP)									
  traffic_dynamic.go:476	0xe3a5d1		488b442458		MOVQ 0x58(SP), AX									
  traffic_dynamic.go:476	0xe3a5d6		488b5c2438		MOVQ 0x38(SP), BX									
  traffic_dynamic.go:476	0xe3a5db		0f1f440000		NOPL 0(AX)(AX*1)									
  traffic_dynamic.go:476	0xe3a5e0		e83bfb62ff		CALL runtime.convTstring(SB)								
  traffic_dynamic.go:476	0xe3a5e5		488d0d34832000		LEAQ runtime.types+383264(SB), CX							
  traffic_dynamic.go:476	0xe3a5ec		48898c24f8000000	MOVQ CX, 0xf8(SP)									
  traffic_dynamic.go:476	0xe3a5f4		4889842400010000	MOVQ AX, 0x100(SP)									
  print.go:233			0xe3a5fc		488b1d7d7a6d02		MOVQ os.Stdout(SB), BX									
  print.go:233			0xe3a603		488d05d6140302		LEAQ go:itab.*os.File,io.Writer(SB), AX							
  print.go:233			0xe3a60a		bf34000000		MOVL $__major_os_version__+46(SB), DI							
  print.go:233			0xe3a60f		488db424e8000000	LEAQ 0xe8(SP), SI									
  print.go:233			0xe3a617		41b802000000		MOVL $__minor_os_version__+1(SB), R8							
  print.go:233			0xe3a61d		4d89c1			MOVQ R8, R9										
  print.go:233			0xe3a620		488d0db7403600		LEAQ go:string.*+221654(SB), CX								
  print.go:233			0xe3a627		e8f44b6eff		CALL fmt.Fprintf(SB)									
  traffic_dynamic.go:470	0xe3a62c		488b442468		MOVQ 0x68(SP), AX									
  traffic_dynamic.go:466	0xe3a631		488b9424e0000000	MOVQ 0xe0(SP), DX									
  traffic_dynamic.go:466	0xe3a639		488b5c2450		MOVQ 0x50(SP), BX									
  traffic_dynamic.go:466	0xe3a63e		6690			NOPW											
  traffic_dynamic.go:476	0xe3a640		e9e0fdffff		JMP 0xe3a425										
  traffic_dynamic.go:478	0xe3a645		488b942450020000	MOVQ 0x250(SP), DX									
  traffic_dynamic.go:478	0xe3a64d		488b5a48		MOVQ 0x48(DX), BX									
  traffic_dynamic.go:478	0xe3a651		488dbc24e0010000	LEAQ 0x1e0(SP), DI									
  traffic_dynamic.go:478	0xe3a659		488d7fe0		LEAQ -0x20(DI), DI									
  traffic_dynamic.go:478	0xe3a65d		0f1f00			NOPL 0(AX)										
  traffic_dynamic.go:478	0xe3a660		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_dynamic.go:478	0xe3a665		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_dynamic.go:478	0xe3a66a		e87ce463ff		CALL 0x478aeb										
  traffic_dynamic.go:478	0xe3a66f		488b6d00		MOVQ 0(BP), BP										
  traffic_dynamic.go:478	0xe3a673		488d05a6342400		LEAQ runtime.types+625440(SB), AX							
  traffic_dynamic.go:478	0xe3a67a		488d8c24e0010000	LEAQ 0x1e0(SP), CX									
  traffic_dynamic.go:478	0xe3a682		e8991663ff		CALL runtime.mapiterinit(SB)								
  traffic_dynamic.go:478	0xe3a687		eb0d			JMP 0xe3a696										
  traffic_dynamic.go:478	0xe3a689		488d8424e0010000	LEAQ 0x1e0(SP), AX									
  traffic_dynamic.go:478	0xe3a691		e8aa1863ff		CALL runtime.mapiternext(SB)								
  traffic_dynamic.go:478	0xe3a696		488b9424e0010000	MOVQ 0x1e0(SP), DX									
  traffic_dynamic.go:478	0xe3a69e		6690			NOPW											
  traffic_dynamic.go:478	0xe3a6a0		4885d2			TESTQ DX, DX										
  traffic_dynamic.go:478	0xe3a6a3		744b			JE 0xe3a6f0										
  traffic_dynamic.go:478	0xe3a6a5		488b0a			MOVQ 0(DX), CX										
  traffic_dynamic.go:478	0xe3a6a8		48894c2460		MOVQ CX, 0x60(SP)									
  traffic_dynamic.go:478	0xe3a6ad		488b7a08		MOVQ 0x8(DX), DI									
  traffic_dynamic.go:478	0xe3a6b1		48897c2440		MOVQ DI, 0x40(SP)									
  traffic_dynamic.go:479	0xe3a6b6		488d0583322400		LEAQ runtime.types+624960(SB), AX							
  traffic_dynamic.go:479	0xe3a6bd		488b5c2468		MOVQ 0x68(SP), BX									
  traffic_dynamic.go:479	0xe3a6c2		e8799c5dff		CALL runtime.mapaccess1_faststr(SB)							
  traffic_dynamic.go:479	0xe3a6c7		803800			CMPB 0(AX), $0x0									
  traffic_dynamic.go:479	0xe3a6ca		75bd			JNE 0xe3a689										
  traffic_dynamic.go:480	0xe3a6cc		488b942450020000	MOVQ 0x250(SP), DX									
  traffic_dynamic.go:480	0xe3a6d4		488b5a48		MOVQ 0x48(DX), BX									
  traffic_dynamic.go:480	0xe3a6d8		488d0541342400		LEAQ runtime.types+625440(SB), AX							
  traffic_dynamic.go:480	0xe3a6df		488b4c2460		MOVQ 0x60(SP), CX									
  traffic_dynamic.go:480	0xe3a6e4		488b7c2440		MOVQ 0x40(SP), DI									
  traffic_dynamic.go:480	0xe3a6e9		e812a05dff		CALL runtime.mapdelete_faststr(SB)							
  traffic_dynamic.go:480	0xe3a6ee		eb99			JMP 0xe3a689										
  traffic_dynamic.go:483	0xe3a6f0		4881c440020000		ADDQ $__file_alignment__+64(SB), SP							
  traffic_dynamic.go:483	0xe3a6f7		5d			POPQ BP											
  traffic_dynamic.go:483	0xe3a6f8		c3			RET											
  traffic_dynamic.go:456	0xe3a6f9		4889442408		MOVQ AX, 0x8(SP)									
  traffic_dynamic.go:456	0xe3a6fe		48895c2410		MOVQ BX, 0x10(SP)									
  traffic_dynamic.go:456	0xe3a703		48894c2418		MOVQ CX, 0x18(SP)									
  traffic_dynamic.go:456	0xe3a708		48897c2420		MOVQ DI, 0x20(SP)									
  traffic_dynamic.go:456	0xe3a70d		4889742428		MOVQ SI, 0x28(SP)									
  traffic_dynamic.go:456	0xe3a712		e8c9bd63ff		CALL runtime.morestack_noctxt.abi0(SB)							
  traffic_dynamic.go:456	0xe3a717		488b442408		MOVQ 0x8(SP), AX									
  traffic_dynamic.go:456	0xe3a71c		488b5c2410		MOVQ 0x10(SP), BX									
  traffic_dynamic.go:456	0xe3a721		488b4c2418		MOVQ 0x18(SP), CX									
  traffic_dynamic.go:456	0xe3a726		488b7c2420		MOVQ 0x20(SP), DI									
  traffic_dynamic.go:456	0xe3a72b		488b742428		MOVQ 0x28(SP), SI									
  traffic_dynamic.go:456	0xe3a730		e92bfbffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).logTrafficStateIfChanged(SB)	
  :-1				0xe3a735		cc			INT $__subsystem__(SB)									
  :-1				0xe3a736		cc			INT $__subsystem__(SB)									
  :-1				0xe3a737		cc			INT $__subsystem__(SB)									
  :-1				0xe3a738		cc			INT $__subsystem__(SB)									
  :-1				0xe3a739		cc			INT $__subsystem__(SB)									
  :-1				0xe3a73a		cc			INT $__subsystem__(SB)									
  :-1				0xe3a73b		cc			INT $__subsystem__(SB)									
  :-1				0xe3a73c		cc			INT $__subsystem__(SB)									
  :-1				0xe3a73d		cc			INT $__subsystem__(SB)									
  :-1				0xe3a73e		cc			INT $__subsystem__(SB)									
  :-1				0xe3a73f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*DynamicTrafficController).recompute(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:485	0xe3a740		4c8da42458ffffff	LEAQ 0xffffff58(SP), R12								
  traffic_dynamic.go:485	0xe3a748		4d3b6610		CMPQ R12, 0x10(R14)									
  traffic_dynamic.go:485	0xe3a74c		0f861c060000		JBE 0xe3ad6e										
  traffic_dynamic.go:485	0xe3a752		55			PUSHQ BP										
  traffic_dynamic.go:485	0xe3a753		4889e5			MOVQ SP, BP										
  traffic_dynamic.go:485	0xe3a756		4881ec20010000		SUBQ $.file+211(SB), SP									
  traffic_dynamic.go:485	0xe3a75d		0f1f00			NOPL 0(AX)										
  traffic_dynamic.go:486	0xe3a760		4885c0			TESTQ AX, AX										
  traffic_dynamic.go:486	0xe3a763		0f84ee000000		JE 0xe3a857										
  traffic_dynamic.go:486	0xe3a769		4889842430010000	MOVQ AX, 0x130(SP)									
  traffic_dynamic.go:490	0xe3a771		90			NOPL											
  traffic_dynamic.go:486	0xe3a772		4889c1			MOVQ AX, CX										
  mutex.go:85			0xe3a775		31c0			XORL AX, AX										
  mutex.go:85			0xe3a777		ba01000000		MOVL $__minor_os_version__(SB), DX							
  mutex.go:85			0xe3a77c		f00fb111		LOCK CMPXCHGL DX, 0(CX)									
  mutex.go:85			0xe3a780		0f94c3			SETE BL											
  mutex.go:85			0xe3a783		84db			TESTL BL, BL										
  mutex.go:85			0xe3a785		7510			JNE 0xe3a797										
  mutex.go:92			0xe3a787		4889c8			MOVQ CX, AX										
  mutex.go:92			0xe3a78a		e891d264ff		CALL sync.(*Mutex).lockSlow(SB)								
  traffic_dynamic.go:491	0xe3a78f		488b8c2430010000	MOVQ 0x130(SP), CX									
  traffic_dynamic.go:491	0xe3a797		4889c8			MOVQ CX, AX										
  traffic_dynamic.go:491	0xe3a79a		e8a1edffff		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).buildRunSnapExLocked(SB)	
  traffic_dynamic.go:491	0xe3a79f		48898424a8000000	MOVQ AX, 0xa8(SP)									
  traffic_dynamic.go:491	0xe3a7a7		48895c2470		MOVQ BX, 0x70(SP)									
  traffic_dynamic.go:491	0xe3a7ac		48894c2478		MOVQ CX, 0x78(SP)									
  traffic_dynamic.go:492	0xe3a7b1		4889cf			MOVQ CX, DI										
  traffic_dynamic.go:492	0xe3a7b4		4889d9			MOVQ BX, CX										
  traffic_dynamic.go:492	0xe3a7b7		4889c3			MOVQ AX, BX										
  traffic_dynamic.go:492	0xe3a7ba		488b842430010000	MOVQ 0x130(SP), AX									
  traffic_dynamic.go:492	0xe3a7c2		e8d90c0000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).collectActiveEdgeLocks(SB)	
  traffic_dynamic.go:493	0xe3a7c7		488b9c24a8000000	MOVQ 0xa8(SP), BX									
  traffic_dynamic.go:493	0xe3a7cf		488b4c2470		MOVQ 0x70(SP), CX									
  traffic_dynamic.go:493	0xe3a7d4		488b7c2478		MOVQ 0x78(SP), DI									
  traffic_dynamic.go:493	0xe3a7d9		4889c6			MOVQ AX, SI										
  traffic_dynamic.go:493	0xe3a7dc		488b842430010000	MOVQ 0x130(SP), AX									
  traffic_dynamic.go:493	0xe3a7e4		e877faffff		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).logTrafficStateIfChanged(SB)	
  traffic_dynamic.go:494	0xe3a7e9		488b842430010000	MOVQ 0x130(SP), AX									
  traffic_dynamic.go:494	0xe3a7f1		488b9c24a8000000	MOVQ 0xa8(SP), BX									
  traffic_dynamic.go:494	0xe3a7f9		488b4c2470		MOVQ 0x70(SP), CX									
  traffic_dynamic.go:494	0xe3a7fe		488b7c2478		MOVQ 0x78(SP), DI									
  traffic_dynamic.go:494	0xe3a803		e858f1ffff		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).computePausedVehicles(SB)	
  traffic_dynamic.go:494	0xe3a808		48898424b0000000	MOVQ AX, 0xb0(SP)									
  traffic_dynamic.go:497	0xe3a810		488b8c2430010000	MOVQ 0x130(SP), CX									
  traffic_dynamic.go:497	0xe3a818		488b5928		MOVQ 0x28(CX), BX									
  traffic_dynamic.go:497	0xe3a81c		488dbc24c0000000	LEAQ 0xc0(SP), DI									
  traffic_dynamic.go:497	0xe3a824		488d7fe0		LEAQ -0x20(DI), DI									
  traffic_dynamic.go:497	0xe3a828		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_dynamic.go:497	0xe3a82d		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_dynamic.go:497	0xe3a832		e8b4e263ff		CALL 0x478aeb										
  traffic_dynamic.go:497	0xe3a837		488b6d00		MOVQ 0(BP), BP										
  traffic_dynamic.go:497	0xe3a83b		488d05fe302400		LEAQ runtime.types+624960(SB), AX							
  traffic_dynamic.go:497	0xe3a842		488d8c24c0000000	LEAQ 0xc0(SP), CX									
  traffic_dynamic.go:497	0xe3a84a		e8d11463ff		CALL runtime.mapiterinit(SB)								
  traffic_dynamic.go:497	0xe3a84f		31c0			XORL AX, AX										
  traffic_dynamic.go:497	0xe3a851		31c9			XORL CX, CX										
  traffic_dynamic.go:497	0xe3a853		31d2			XORL DX, DX										
  traffic_dynamic.go:497	0xe3a855		eb40			JMP 0xe3a897										
  traffic_dynamic.go:487	0xe3a857		4881c420010000		ADDQ $.file+211(SB), SP									
  traffic_dynamic.go:487	0xe3a85e		5d			POPQ BP											
  traffic_dynamic.go:487	0xe3a85f		90			NOPL											
  traffic_dynamic.go:487	0xe3a860		c3			RET											
  traffic_dynamic.go:509	0xe3a861		48894c2458		MOVQ CX, 0x58(SP)									
  traffic_dynamic.go:509	0xe3a866		48895c2450		MOVQ BX, 0x50(SP)									
  traffic_dynamic.go:509	0xe3a86b		4889842498000000	MOVQ AX, 0x98(SP)									
  traffic_dynamic.go:497	0xe3a873		488d8424c0000000	LEAQ 0xc0(SP), AX									
  traffic_dynamic.go:497	0xe3a87b		0f1f440000		NOPL 0(AX)(AX*1)									
  traffic_dynamic.go:497	0xe3a880		e8bb1663ff		CALL runtime.mapiternext(SB)								
  traffic_dynamic.go:509	0xe3a885		488b842498000000	MOVQ 0x98(SP), AX									
  traffic_dynamic.go:509	0xe3a88d		488b4c2458		MOVQ 0x58(SP), CX									
  traffic_dynamic.go:509	0xe3a892		488b542450		MOVQ 0x50(SP), DX									
  traffic_dynamic.go:509	0xe3a897		4889542450		MOVQ DX, 0x50(SP)									
  traffic_dynamic.go:509	0xe3a89c		4889842498000000	MOVQ AX, 0x98(SP)									
  traffic_dynamic.go:497	0xe3a8a4		488bb424c0000000	MOVQ 0xc0(SP), SI									
  traffic_dynamic.go:497	0xe3a8ac		4885f6			TESTQ SI, SI										
  traffic_dynamic.go:497	0xe3a8af		0f84d0000000		JE 0xe3a985										
  traffic_dynamic.go:509	0xe3a8b5		48894c2458		MOVQ CX, 0x58(SP)									
  traffic_dynamic.go:497	0xe3a8ba		488b0e			MOVQ 0(SI), CX										
  traffic_dynamic.go:497	0xe3a8bd		48898c2490000000	MOVQ CX, 0x90(SP)									
  traffic_dynamic.go:497	0xe3a8c5		488b7e08		MOVQ 0x8(SI), DI									
  traffic_dynamic.go:497	0xe3a8c9		48897c2448		MOVQ DI, 0x48(SP)									
  traffic_dynamic.go:498	0xe3a8ce		488d056b302400		LEAQ runtime.types+624960(SB), AX							
  traffic_dynamic.go:498	0xe3a8d5		488b9c24b0000000	MOVQ 0xb0(SP), BX									
  traffic_dynamic.go:498	0xe3a8dd		0f1f00			NOPL 0(AX)										
  traffic_dynamic.go:498	0xe3a8e0		e85b9a5dff		CALL runtime.mapaccess1_faststr(SB)							
  traffic_dynamic.go:498	0xe3a8e5		803800			CMPB 0(AX), $0x0									
  traffic_dynamic.go:498	0xe3a8e8		741b			JE 0xe3a905										
  traffic_dynamic.go:509	0xe3a8ea		488b4c2458		MOVQ 0x58(SP), CX									
  traffic_dynamic.go:509	0xe3a8ef		488b5c2450		MOVQ 0x50(SP), BX									
  traffic_dynamic.go:509	0xe3a8f4		488b842498000000	MOVQ 0x98(SP), AX									
  traffic_dynamic.go:509	0xe3a8fc		0f1f4000		NOPL 0(AX)										
  traffic_dynamic.go:498	0xe3a900		e95cffffff		JMP 0xe3a861										
  traffic_dynamic.go:499	0xe3a905		488b5c2450		MOVQ 0x50(SP), BX									
  traffic_dynamic.go:499	0xe3a90a		48ffc3			INCQ BX											
  traffic_dynamic.go:499	0xe3a90d		488b4c2458		MOVQ 0x58(SP), CX									
  traffic_dynamic.go:499	0xe3a912		4839d9			CMPQ CX, BX										
  traffic_dynamic.go:499	0xe3a915		720b			JB 0xe3a922										
  traffic_dynamic.go:499	0xe3a917		488b842498000000	MOVQ 0x98(SP), AX									
  traffic_dynamic.go:499	0xe3a91f		90			NOPL											
  traffic_dynamic.go:499	0xe3a920		eb19			JMP 0xe3a93b										
  traffic_dynamic.go:499	0xe3a922		488b842498000000	MOVQ 0x98(SP), AX									
  traffic_dynamic.go:499	0xe3a92a		bf01000000		MOVL $__minor_os_version__(SB), DI							
  traffic_dynamic.go:499	0xe3a92f		488d35ea7f2000		LEAQ runtime.types+383264(SB), SI							
  traffic_dynamic.go:499	0xe3a936		e8057363ff		CALL runtime.growslice(SB)								
  traffic_dynamic.go:499	0xe3a93b		488d53ff		LEAQ -0x1(BX), DX									
  traffic_dynamic.go:499	0xe3a93f		48c1e204		SHLQ $__subsystem__+1(SB), DX								
  traffic_dynamic.go:499	0xe3a943		488b742448		MOVQ 0x48(SP), SI									
  traffic_dynamic.go:499	0xe3a948		4889741008		MOVQ SI, 0x8(AX)(DX*1)									
  traffic_dynamic.go:499	0xe3a94d		833dfc31720200		CMPL runtime.writeBarrier(SB), $0x0							
  traffic_dynamic.go:499	0xe3a954		750c			JNE 0xe3a962										
  traffic_dynamic.go:499	0xe3a956		488bb42490000000	MOVQ 0x90(SP), SI									
  traffic_dynamic.go:499	0xe3a95e		6690			NOPW											
  traffic_dynamic.go:499	0xe3a960		eb18			JMP 0xe3a97a										
  traffic_dynamic.go:499	0xe3a962		e8d9da63ff		CALL runtime.gcWriteBarrier2(SB)							
  traffic_dynamic.go:499	0xe3a967		488bb42490000000	MOVQ 0x90(SP), SI									
  traffic_dynamic.go:499	0xe3a96f		498933			MOVQ SI, 0(R11)										
  traffic_dynamic.go:499	0xe3a972		488b3c10		MOVQ 0(AX)(DX*1), DI									
  traffic_dynamic.go:499	0xe3a976		49897b08		MOVQ DI, 0x8(R11)									
  traffic_dynamic.go:499	0xe3a97a		48893410		MOVQ SI, 0(AX)(DX*1)									
  traffic_dynamic.go:499	0xe3a97e		6690			NOPW											
  traffic_dynamic.go:499	0xe3a980		e9dcfeffff		JMP 0xe3a861										
  traffic_dynamic.go:502	0xe3a985		488dbc24c0000000	LEAQ 0xc0(SP), DI									
  traffic_dynamic.go:502	0xe3a98d		488d7fe0		LEAQ -0x20(DI), DI									
  traffic_dynamic.go:502	0xe3a991		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic_dynamic.go:502	0xe3a99a		660f1f440000		NOPW 0(AX)(AX*1)									
  traffic_dynamic.go:502	0xe3a9a0		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic_dynamic.go:502	0xe3a9a5		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic_dynamic.go:502	0xe3a9aa		e83ce163ff		CALL 0x478aeb										
  traffic_dynamic.go:502	0xe3a9af		488b6d00		MOVQ 0(BP), BP										
  traffic_dynamic.go:502	0xe3a9b3		488d05862f2400		LEAQ runtime.types+624960(SB), AX							
  traffic_dynamic.go:502	0xe3a9ba		488b9c24b0000000	MOVQ 0xb0(SP), BX									
  traffic_dynamic.go:502	0xe3a9c2		488d8c24c0000000	LEAQ 0xc0(SP), CX									
  traffic_dynamic.go:502	0xe3a9ca		e8511363ff		CALL runtime.mapiterinit(SB)								
  traffic_dynamic.go:502	0xe3a9cf		31c0			XORL AX, AX										
  traffic_dynamic.go:502	0xe3a9d1		31c9			XORL CX, CX										
  traffic_dynamic.go:502	0xe3a9d3		31d2			XORL DX, DX										
  traffic_dynamic.go:502	0xe3a9d5		eb31			JMP 0xe3aa08										
  traffic_dynamic.go:518	0xe3a9d7		48894c2468		MOVQ CX, 0x68(SP)									
  traffic_dynamic.go:518	0xe3a9dc		48895c2460		MOVQ BX, 0x60(SP)									
  traffic_dynamic.go:518	0xe3a9e1		48898424a0000000	MOVQ AX, 0xa0(SP)									
  traffic_dynamic.go:502	0xe3a9e9		488d8424c0000000	LEAQ 0xc0(SP), AX									
  traffic_dynamic.go:502	0xe3a9f1		e84a1563ff		CALL runtime.mapiternext(SB)								
  traffic_dynamic.go:518	0xe3a9f6		488b8424a0000000	MOVQ 0xa0(SP), AX									
  traffic_dynamic.go:518	0xe3a9fe		488b4c2468		MOVQ 0x68(SP), CX									
  traffic_dynamic.go:518	0xe3aa03		488b542460		MOVQ 0x60(SP), DX									
  traffic_dynamic.go:518	0xe3aa08		4889542460		MOVQ DX, 0x60(SP)									
  traffic_dynamic.go:518	0xe3aa0d		48898424a0000000	MOVQ AX, 0xa0(SP)									
  traffic_dynamic.go:502	0xe3aa15		488bb424c0000000	MOVQ 0xc0(SP), SI									
  traffic_dynamic.go:502	0xe3aa1d		0f1f00			NOPL 0(AX)										
  traffic_dynamic.go:502	0xe3aa20		4885f6			TESTQ SI, SI										
  traffic_dynamic.go:502	0xe3aa23		0f84c8000000		JE 0xe3aaf1										
  traffic_dynamic.go:518	0xe3aa29		48894c2468		MOVQ CX, 0x68(SP)									
  traffic_dynamic.go:502	0xe3aa2e		488b0e			MOVQ 0(SI), CX										
  traffic_dynamic.go:502	0xe3aa31		48898c2488000000	MOVQ CX, 0x88(SP)									
  traffic_dynamic.go:502	0xe3aa39		488b7e08		MOVQ 0x8(SI), DI									
  traffic_dynamic.go:502	0xe3aa3d		48897c2440		MOVQ DI, 0x40(SP)									
  traffic_dynamic.go:503	0xe3aa42		488b942430010000	MOVQ 0x130(SP), DX									
  traffic_dynamic.go:503	0xe3aa4a		488b5a28		MOVQ 0x28(DX), BX									
  traffic_dynamic.go:503	0xe3aa4e		488d05eb2e2400		LEAQ runtime.types+624960(SB), AX							
  traffic_dynamic.go:503	0xe3aa55		e8e6985dff		CALL runtime.mapaccess1_faststr(SB)							
  traffic_dynamic.go:503	0xe3aa5a		803800			CMPB 0(AX), $0x0									
  traffic_dynamic.go:503	0xe3aa5d		7417			JE 0xe3aa76										
  traffic_dynamic.go:518	0xe3aa5f		488b4c2468		MOVQ 0x68(SP), CX									
  traffic_dynamic.go:518	0xe3aa64		488b5c2460		MOVQ 0x60(SP), BX									
  traffic_dynamic.go:518	0xe3aa69		488b8424a0000000	MOVQ 0xa0(SP), AX									
  traffic_dynamic.go:503	0xe3aa71		e961ffffff		JMP 0xe3a9d7										
  traffic_dynamic.go:504	0xe3aa76		488b5c2460		MOVQ 0x60(SP), BX									
  traffic_dynamic.go:504	0xe3aa7b		48ffc3			INCQ BX											
  traffic_dynamic.go:504	0xe3aa7e		488b4c2468		MOVQ 0x68(SP), CX									
  traffic_dynamic.go:504	0xe3aa83		4839d9			CMPQ CX, BX										
  traffic_dynamic.go:504	0xe3aa86		720a			JB 0xe3aa92										
  traffic_dynamic.go:504	0xe3aa88		488b8424a0000000	MOVQ 0xa0(SP), AX									
  traffic_dynamic.go:504	0xe3aa90		eb19			JMP 0xe3aaab										
  traffic_dynamic.go:504	0xe3aa92		488b8424a0000000	MOVQ 0xa0(SP), AX									
  traffic_dynamic.go:504	0xe3aa9a		bf01000000		MOVL $__minor_os_version__(SB), DI							
  traffic_dynamic.go:504	0xe3aa9f		488d357a7e2000		LEAQ runtime.types+383264(SB), SI							
  traffic_dynamic.go:504	0xe3aaa6		e8957163ff		CALL runtime.growslice(SB)								
  traffic_dynamic.go:504	0xe3aaab		488d53ff		LEAQ -0x1(BX), DX									
  traffic_dynamic.go:504	0xe3aaaf		48c1e204		SHLQ $__subsystem__+1(SB), DX								
  traffic_dynamic.go:504	0xe3aab3		488b742440		MOVQ 0x40(SP), SI									
  traffic_dynamic.go:504	0xe3aab8		4889741008		MOVQ SI, 0x8(AX)(DX*1)									
  traffic_dynamic.go:504	0xe3aabd		833d8c30720200		CMPL runtime.writeBarrier(SB), $0x0							
  traffic_dynamic.go:504	0xe3aac4		750a			JNE 0xe3aad0										
  traffic_dynamic.go:504	0xe3aac6		488bb42488000000	MOVQ 0x88(SP), SI									
  traffic_dynamic.go:504	0xe3aace		eb18			JMP 0xe3aae8										
  traffic_dynamic.go:504	0xe3aad0		e86bd963ff		CALL runtime.gcWriteBarrier2(SB)							
  traffic_dynamic.go:504	0xe3aad5		488bb42488000000	MOVQ 0x88(SP), SI									
  traffic_dynamic.go:504	0xe3aadd		498933			MOVQ SI, 0(R11)										
  traffic_dynamic.go:504	0xe3aae0		488b3c10		MOVQ 0(AX)(DX*1), DI									
  traffic_dynamic.go:504	0xe3aae4		49897b08		MOVQ DI, 0x8(R11)									
  traffic_dynamic.go:504	0xe3aae8		48893410		MOVQ SI, 0(AX)(DX*1)									
  traffic_dynamic.go:504	0xe3aaec		e9e6feffff		JMP 0xe3a9d7										
  traffic_dynamic.go:507	0xe3aaf1		90			NOPL											
  mutex.go:221			0xe3aaf2		bbffffffff		MOVL $-0x1, BX										
  mutex.go:221			0xe3aaf7		488bb42430010000	MOVQ 0x130(SP), SI									
  mutex.go:221			0xe3aaff		f00fc11e		LOCK XADDL BX, 0(SI)									
  mutex.go:221			0xe3ab03		ffcb			DECL BX											
  mutex.go:222			0xe3ab05		85db			TESTL BX, BX										
  mutex.go:222			0xe3ab07		741d			JE 0xe3ab26										
  mutex.go:225			0xe3ab09		4889f0			MOVQ SI, AX										
  mutex.go:225			0xe3ab0c		e8efd164ff		CALL sync.(*Mutex).unlockSlow(SB)							
  traffic_dynamic.go:518	0xe3ab11		488b8424a0000000	MOVQ 0xa0(SP), AX									
  traffic_dynamic.go:518	0xe3ab19		488b542460		MOVQ 0x60(SP), DX									
  mutex.go:85			0xe3ab1e		488bb42430010000	MOVQ 0x130(SP), SI									
  traffic_dynamic.go:509	0xe3ab26		4c8b842498000000	MOVQ 0x98(SP), R8									
  traffic_dynamic.go:509	0xe3ab2e		4d89c1			MOVQ R8, R9										
  traffic_dynamic.go:509	0xe3ab31		488b4c2450		MOVQ 0x50(SP), CX									
  traffic_dynamic.go:509	0xe3ab36		eb50			JMP 0xe3ab88										
  traffic_dynamic.go:509	0xe3ab38		48898c2480000000	MOVQ CX, 0x80(SP)									
  traffic_dynamic.go:509	0xe3ab40		4c898424b8000000	MOVQ R8, 0xb8(SP)									
  traffic_dynamic.go:509	0xe3ab48		498b00			MOVQ 0(R8), AX										
  traffic_dynamic.go:509	0xe3ab4b		498b5808		MOVQ 0x8(R8), BX									
  traffic_dynamic.go:510	0xe3ab4f		e86c060000		CALL CAS-Backend/pkg/diapdu.sendResumeNavigationForVehicle(SB)				
  traffic_dynamic.go:509	0xe3ab54		4c8b8424b8000000	MOVQ 0xb8(SP), R8									
  traffic_dynamic.go:509	0xe3ab5c		4983c010		ADDQ $__major_os_version__+10(SB), R8							
  traffic_dynamic.go:509	0xe3ab60		488b8c2480000000	MOVQ 0x80(SP), CX									
  traffic_dynamic.go:509	0xe3ab68		48ffc9			DECQ CX											
  traffic_dynamic.go:518	0xe3ab6b		488b8424a0000000	MOVQ 0xa0(SP), AX									
  traffic_dynamic.go:518	0xe3ab73		488b542460		MOVQ 0x60(SP), DX									
  mutex.go:85			0xe3ab78		488bb42430010000	MOVQ 0x130(SP), SI									
  traffic_dynamic.go:513	0xe3ab80		4c8b8c2498000000	MOVQ 0x98(SP), R9									
  traffic_dynamic.go:509	0xe3ab88		4885c9			TESTQ CX, CX										
  traffic_dynamic.go:509	0xe3ab8b		7fab			JG 0xe3ab38										
  traffic_dynamic.go:512	0xe3ab8d		90			NOPL											
  traffic_dynamic.go:518	0xe3ab8e		4889c1			MOVQ AX, CX										
  mutex.go:85			0xe3ab91		31c0			XORL AX, AX										
  mutex.go:85			0xe3ab93		41b801000000		MOVL $__minor_os_version__(SB), R8							
  mutex.go:85			0xe3ab99		f0440fb106		LOCK CMPXCHGL R8, 0(SI)									
  mutex.go:85			0xe3ab9e		410f94c2		SETE R10										
  mutex.go:85			0xe3aba2		4584d2			TESTL R10, R10										
  mutex.go:85			0xe3aba5		752b			JNE 0xe3abd2										
  mutex.go:92			0xe3aba7		4889f0			MOVQ SI, AX										
  mutex.go:92			0xe3abaa		e871ce64ff		CALL sync.(*Mutex).lockSlow(SB)								
  traffic_dynamic.go:518	0xe3abaf		488b8c24a0000000	MOVQ 0xa0(SP), CX									
  traffic_dynamic.go:518	0xe3abb7		488b542460		MOVQ 0x60(SP), DX									
  traffic_dynamic.go:514	0xe3abbc		488bb42430010000	MOVQ 0x130(SP), SI									
  traffic_dynamic.go:514	0xe3abc4		41b801000000		MOVL $__minor_os_version__(SB), R8							
  traffic_dynamic.go:513	0xe3abca		4c8b8c2498000000	MOVQ 0x98(SP), R9									
  traffic_dynamic.go:513	0xe3abd2		488b442450		MOVQ 0x50(SP), AX									
  traffic_dynamic.go:513	0xe3abd7		eb5e			JMP 0xe3ac37										
  traffic_dynamic.go:513	0xe3abd9		4889842480000000	MOVQ AX, 0x80(SP)									
  traffic_dynamic.go:513	0xe3abe1		4c898c24b8000000	MOVQ R9, 0xb8(SP)									
  traffic_dynamic.go:513	0xe3abe9		498b09			MOVQ 0(R9), CX										
  traffic_dynamic.go:513	0xe3abec		498b7908		MOVQ 0x8(R9), DI									
  traffic_dynamic.go:514	0xe3abf0		488b5e28		MOVQ 0x28(SI), BX									
  traffic_dynamic.go:514	0xe3abf4		488d05452d2400		LEAQ runtime.types+624960(SB), AX							
  traffic_dynamic.go:514	0xe3abfb		0f1f440000		NOPL 0(AX)(AX*1)									
  traffic_dynamic.go:514	0xe3ac00		e8fb9a5dff		CALL runtime.mapdelete_faststr(SB)							
  traffic_dynamic.go:513	0xe3ac05		4c8b8c24b8000000	MOVQ 0xb8(SP), R9									
  traffic_dynamic.go:513	0xe3ac0d		4983c110		ADDQ $__major_os_version__+10(SB), R9							
  traffic_dynamic.go:513	0xe3ac11		488b842480000000	MOVQ 0x80(SP), AX									
  traffic_dynamic.go:513	0xe3ac19		48ffc8			DECQ AX											
  traffic_dynamic.go:518	0xe3ac1c		488b8c24a0000000	MOVQ 0xa0(SP), CX									
  traffic_dynamic.go:518	0xe3ac24		488b542460		MOVQ 0x60(SP), DX									
  traffic_dynamic.go:514	0xe3ac29		488bb42430010000	MOVQ 0x130(SP), SI									
  traffic_dynamic.go:514	0xe3ac31		41b801000000		MOVL $__minor_os_version__(SB), R8							
  traffic_dynamic.go:513	0xe3ac37		4885c0			TESTQ AX, AX										
  traffic_dynamic.go:513	0xe3ac3a		7f9d			JG 0xe3abd9										
  traffic_dynamic.go:516	0xe3ac3c		90			NOPL											
  mutex.go:221			0xe3ac3d		bbffffffff		MOVL $-0x1, BX										
  mutex.go:221			0xe3ac42		f00fc11e		LOCK XADDL BX, 0(SI)									
  mutex.go:221			0xe3ac46		ffcb			DECL BX											
  mutex.go:222			0xe3ac48		85db			TESTL BX, BX										
  mutex.go:222			0xe3ac4a		7423			JE 0xe3ac6f										
  mutex.go:225			0xe3ac4c		4889f0			MOVQ SI, AX										
  mutex.go:225			0xe3ac4f		e8acd064ff		CALL sync.(*Mutex).unlockSlow(SB)							
  traffic_dynamic.go:518	0xe3ac54		488b8c24a0000000	MOVQ 0xa0(SP), CX									
  traffic_dynamic.go:518	0xe3ac5c		488b542460		MOVQ 0x60(SP), DX									
  mutex.go:85			0xe3ac61		488bb42430010000	MOVQ 0x130(SP), SI									
  mutex.go:85			0xe3ac69		41b801000000		MOVL $__minor_os_version__(SB), R8							
  traffic_dynamic.go:518	0xe3ac6f		4989c9			MOVQ CX, R9										
  traffic_dynamic.go:518	0xe3ac72		4889d0			MOVQ DX, AX										
  traffic_dynamic.go:518	0xe3ac75		eb4e			JMP 0xe3acc5										
  traffic_dynamic.go:518	0xe3ac77		4889942480000000	MOVQ DX, 0x80(SP)									
  traffic_dynamic.go:518	0xe3ac7f		48898c24b8000000	MOVQ CX, 0xb8(SP)									
  traffic_dynamic.go:518	0xe3ac87		488b01			MOVQ 0(CX), AX										
  traffic_dynamic.go:518	0xe3ac8a		488b5908		MOVQ 0x8(CX), BX									
  traffic_dynamic.go:519	0xe3ac8e		e8cd020000		CALL CAS-Backend/pkg/diapdu.sendPauseNavigationForVehicle(SB)				
  traffic_dynamic.go:518	0xe3ac93		488b8c24b8000000	MOVQ 0xb8(SP), CX									
  traffic_dynamic.go:518	0xe3ac9b		4883c110		ADDQ $__major_os_version__+10(SB), CX							
  traffic_dynamic.go:518	0xe3ac9f		488b942480000000	MOVQ 0x80(SP), DX									
  traffic_dynamic.go:518	0xe3aca7		48ffca			DECQ DX											
  traffic_dynamic.go:522	0xe3acaa		488b442460		MOVQ 0x60(SP), AX									
  mutex.go:85			0xe3acaf		488bb42430010000	MOVQ 0x130(SP), SI									
  mutex.go:85			0xe3acb7		41b801000000		MOVL $__minor_os_version__(SB), R8							
  traffic_dynamic.go:522	0xe3acbd		4c8b8c24a0000000	MOVQ 0xa0(SP), R9									
  traffic_dynamic.go:518	0xe3acc5		4885d2			TESTQ DX, DX										
  traffic_dynamic.go:518	0xe3acc8		7fad			JG 0xe3ac77										
  traffic_dynamic.go:521	0xe3acca		90			NOPL											
  traffic_dynamic.go:518	0xe3accb		4889c1			MOVQ AX, CX										
  mutex.go:85			0xe3acce		31c0			XORL AX, AX										
  mutex.go:85			0xe3acd0		f0440fb106		LOCK CMPXCHGL R8, 0(SI)									
  mutex.go:85			0xe3acd5		0f94c2			SETE DL											
  mutex.go:85			0xe3acd8		84d2			TESTL DL, DL										
  mutex.go:85			0xe3acda		756b			JNE 0xe3ad47										
  mutex.go:92			0xe3acdc		4889f0			MOVQ SI, AX										
  mutex.go:92			0xe3acdf		90			NOPL											
  mutex.go:92			0xe3ace0		e83bcd64ff		CALL sync.(*Mutex).lockSlow(SB)								
  traffic_dynamic.go:522	0xe3ace5		488b4c2460		MOVQ 0x60(SP), CX									
  traffic_dynamic.go:523	0xe3acea		488bb42430010000	MOVQ 0x130(SP), SI									
  traffic_dynamic.go:522	0xe3acf2		4c8b8c24a0000000	MOVQ 0xa0(SP), R9									
  traffic_dynamic.go:522	0xe3acfa		eb4b			JMP 0xe3ad47										
  traffic_dynamic.go:522	0xe3acfc		48898c2480000000	MOVQ CX, 0x80(SP)									
  traffic_dynamic.go:522	0xe3ad04		4c898c24b8000000	MOVQ R9, 0xb8(SP)									
  traffic_dynamic.go:522	0xe3ad0c		498b09			MOVQ 0(R9), CX										
  traffic_dynamic.go:522	0xe3ad0f		498b7908		MOVQ 0x8(R9), DI									
  traffic_dynamic.go:523	0xe3ad13		488b5e28		MOVQ 0x28(SI), BX									
  traffic_dynamic.go:523	0xe3ad17		488d05222c2400		LEAQ runtime.types+624960(SB), AX							
  traffic_dynamic.go:523	0xe3ad1e		6690			NOPW											
  traffic_dynamic.go:523	0xe3ad20		e8fb3263ff		CALL runtime.mapassign_faststr(SB)							
  traffic_dynamic.go:523	0xe3ad25		c60001			MOVB $__minor_os_version__(SB), 0(AX)							
  traffic_dynamic.go:522	0xe3ad28		4c8b8c24b8000000	MOVQ 0xb8(SP), R9									
  traffic_dynamic.go:522	0xe3ad30		4983c110		ADDQ $__major_os_version__+10(SB), R9							
  traffic_dynamic.go:522	0xe3ad34		488b8c2480000000	MOVQ 0x80(SP), CX									
  traffic_dynamic.go:522	0xe3ad3c		48ffc9			DECQ CX											
  traffic_dynamic.go:523	0xe3ad3f		488bb42430010000	MOVQ 0x130(SP), SI									
  traffic_dynamic.go:522	0xe3ad47		4885c9			TESTQ CX, CX										
  traffic_dynamic.go:522	0xe3ad4a		7fb0			JG 0xe3acfc										
  traffic_dynamic.go:525	0xe3ad4c		90			NOPL											
  mutex.go:221			0xe3ad4d		bbffffffff		MOVL $-0x1, BX										
  mutex.go:221			0xe3ad52		f00fc11e		LOCK XADDL BX, 0(SI)									
  mutex.go:221			0xe3ad56		ffcb			DECL BX											
  mutex.go:222			0xe3ad58		85db			TESTL BX, BX										
  mutex.go:222			0xe3ad5a		7409			JE 0xe3ad65										
  mutex.go:225			0xe3ad5c		4889f0			MOVQ SI, AX										
  mutex.go:225			0xe3ad5f		90			NOPL											
  mutex.go:225			0xe3ad60		e89bcf64ff		CALL sync.(*Mutex).unlockSlow(SB)							
  traffic_dynamic.go:526	0xe3ad65		4881c420010000		ADDQ $.file+211(SB), SP									
  traffic_dynamic.go:526	0xe3ad6c		5d			POPQ BP											
  traffic_dynamic.go:526	0xe3ad6d		c3			RET											
  traffic_dynamic.go:485	0xe3ad6e		4889442408		MOVQ AX, 0x8(SP)									
  traffic_dynamic.go:485	0xe3ad73		e868b763ff		CALL runtime.morestack_noctxt.abi0(SB)							
  traffic_dynamic.go:485	0xe3ad78		488b442408		MOVQ 0x8(SP), AX									
  traffic_dynamic.go:485	0xe3ad7d		0f1f00			NOPL 0(AX)										
  traffic_dynamic.go:485	0xe3ad80		e9bbf9ffff		JMP CAS-Backend/pkg/diapdu.(*DynamicTrafficController).recompute(SB)			
  :-1				0xe3ad85		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad86		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad87		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad88		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad89		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad8a		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad8b		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad8c		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad8d		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad8e		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad8f		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad90		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad91		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad92		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad93		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad94		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad95		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad96		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad97		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad98		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad99		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad9a		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad9b		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad9c		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad9d		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad9e		cc			INT $__subsystem__(SB)									
  :-1				0xe3ad9f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.lookupVehicleDaohang(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:528	0xe3ada0		4c8d6424a8		LEAQ -0x58(SP), R12					
  traffic_dynamic.go:528	0xe3ada5		4d3b6610		CMPQ R12, 0x10(R14)					
  traffic_dynamic.go:528	0xe3ada9		0f8692010000		JBE 0xe3af41						
  traffic_dynamic.go:528	0xe3adaf		55			PUSHQ BP						
  traffic_dynamic.go:528	0xe3adb0		4889e5			MOVQ SP, BP						
  traffic_dynamic.go:528	0xe3adb3		4881ecd0000000		SUBQ $.file+131(SB), SP					
  traffic_dynamic.go:531	0xe3adba		48899c24e8000000	MOVQ BX, 0xe8(SP)					
  traffic_dynamic.go:531	0xe3adc2		48898424e0000000	MOVQ AX, 0xe0(SP)					
  traffic_dynamic.go:530	0xe3adca		e8f109b6ff		CALL CAS-Backend/biz/dao.GetAllVehicles(SB)		
  traffic_dynamic.go:531	0xe3adcf		4885ff			TESTQ DI, DI						
  traffic_dynamic.go:531	0xe3add2		750a			JNE 0xe3adde						
  traffic_dynamic.go:535	0xe3add4		488b9424e8000000	MOVQ 0xe8(SP), DX					
  traffic_dynamic.go:535	0xe3addc		eb6a			JMP 0xe3ae48						
  traffic_dynamic.go:532	0xe3adde		440f11bc24c0000000	MOVUPS X15, 0xc0(SP)					
  traffic_dynamic.go:532	0xe3ade7		7404			JE 0xe3aded						
  traffic_dynamic.go:532	0xe3ade9		488b7f08		MOVQ 0x8(DI), DI					
  traffic_dynamic.go:532	0xe3aded		4889bc24c0000000	MOVQ DI, 0xc0(SP)					
  traffic_dynamic.go:532	0xe3adf5		4889b424c8000000	MOVQ SI, 0xc8(SP)					
  print.go:233			0xe3adfd		488b1d7c726d02		MOVQ os.Stdout(SB), BX					
  print.go:233			0xe3ae04		488d05d50c0302		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233			0xe3ae0b		488d0ddde33500		LEAQ go:string.*+199911(SB), CX				
  print.go:233			0xe3ae12		bf2c000000		MOVL $__major_os_version__+38(SB), DI			
  print.go:233			0xe3ae17		488db424c0000000	LEAQ 0xc0(SP), SI					
  print.go:233			0xe3ae1f		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233			0xe3ae25		4d89c1			MOVQ R8, R9						
  print.go:233			0xe3ae28		e8f3436eff		CALL fmt.Fprintf(SB)					
  traffic_dynamic.go:533	0xe3ae2d		31c0			XORL AX, AX						
  traffic_dynamic.go:533	0xe3ae2f		31db			XORL BX, BX						
  traffic_dynamic.go:533	0xe3ae31		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX		
  traffic_dynamic.go:533	0xe3ae36		31ff			XORL DI, DI						
  traffic_dynamic.go:533	0xe3ae38		4881c4d0000000		ADDQ $.file+131(SB), SP					
  traffic_dynamic.go:533	0xe3ae3f		5d			POPQ BP							
  traffic_dynamic.go:533	0xe3ae40		c3			RET							
  traffic_dynamic.go:535	0xe3ae41		4883c078		ADDQ $.file+43(SB), AX					
  traffic_dynamic.go:535	0xe3ae45		48ffcb			DECQ BX							
  traffic_dynamic.go:535	0xe3ae48		4885db			TESTQ BX, BX						
  traffic_dynamic.go:535	0xe3ae4b		0f8edc000000		JLE 0xe3af2d						
  traffic_dynamic.go:535	0xe3ae51		48895c2438		MOVQ BX, 0x38(SP)					
  traffic_dynamic.go:535	0xe3ae56		48898424b8000000	MOVQ AX, 0xb8(SP)					
  traffic_dynamic.go:535	0xe3ae5e		4c8b00			MOVQ 0(AX), R8						
  traffic_dynamic.go:535	0xe3ae61		4c89442440		MOVQ R8, 0x40(SP)					
  traffic_dynamic.go:535	0xe3ae66		488d7008		LEAQ 0x8(AX), SI					
  traffic_dynamic.go:535	0xe3ae6a		488d7c2448		LEAQ 0x48(SP), DI					
  traffic_dynamic.go:535	0xe3ae6f		660f1f840000000000	NOPW 0(AX)(AX*1)					
  traffic_dynamic.go:535	0xe3ae78		0f1f840000000000	NOPL 0(AX)(AX*1)					
  traffic_dynamic.go:535	0xe3ae80		48896c24f0		MOVQ BP, -0x10(SP)					
  traffic_dynamic.go:535	0xe3ae85		488d6c24f0		LEAQ -0x10(SP), BP					
  traffic_dynamic.go:535	0xe3ae8a		e8afdf63ff		CALL 0x478e3e						
  traffic_dynamic.go:535	0xe3ae8f		488b6d00		MOVQ 0(BP), BP						
  traffic_dynamic.go:536	0xe3ae93		488b4c2448		MOVQ 0x48(SP), CX					
  traffic_dynamic.go:536	0xe3ae98		4839ca			CMPQ DX, CX						
  traffic_dynamic.go:536	0xe3ae9b		7405			JE 0xe3aea2						
  traffic_dynamic.go:536	0xe3ae9d		31c9			XORL CX, CX						
  traffic_dynamic.go:536	0xe3ae9f		90			NOPL							
  traffic_dynamic.go:536	0xe3aea0		eb29			JMP 0xe3aecb						
  traffic_dynamic.go:536	0xe3aea2		488b442440		MOVQ 0x40(SP), AX					
  traffic_dynamic.go:536	0xe3aea7		488b9c24e0000000	MOVQ 0xe0(SP), BX					
  traffic_dynamic.go:536	0xe3aeaf		e8ac7f5cff		CALL runtime.memequal(SB)				
  traffic_dynamic.go:536	0xe3aeb4		488b9424e8000000	MOVQ 0xe8(SP), DX					
  traffic_dynamic.go:535	0xe3aebc		488b5c2438		MOVQ 0x38(SP), BX					
  traffic_dynamic.go:536	0xe3aec1		89c1			MOVL AX, CX						
  traffic_dynamic.go:535	0xe3aec3		488b8424b8000000	MOVQ 0xb8(SP), AX					
  traffic_dynamic.go:536	0xe3aecb		84c9			TESTL CL, CL						
  traffic_dynamic.go:536	0xe3aecd		753f			JNE 0xe3af0e						
  traffic_dynamic.go:536	0xe3aecf		488b4c2470		MOVQ 0x70(SP), CX					
  traffic_dynamic.go:536	0xe3aed4		4839ca			CMPQ DX, CX						
  traffic_dynamic.go:536	0xe3aed7		7404			JE 0xe3aedd						
  traffic_dynamic.go:536	0xe3aed9		31c9			XORL CX, CX						
  traffic_dynamic.go:536	0xe3aedb		eb29			JMP 0xe3af06						
  traffic_dynamic.go:536	0xe3aedd		488b442468		MOVQ 0x68(SP), AX					
  traffic_dynamic.go:536	0xe3aee2		488b9c24e0000000	MOVQ 0xe0(SP), BX					
  traffic_dynamic.go:536	0xe3aeea		e8717f5cff		CALL runtime.memequal(SB)				
  traffic_dynamic.go:536	0xe3aeef		488b9424e8000000	MOVQ 0xe8(SP), DX					
  traffic_dynamic.go:535	0xe3aef7		488b5c2438		MOVQ 0x38(SP), BX					
  traffic_dynamic.go:536	0xe3aefc		89c1			MOVL AX, CX						
  traffic_dynamic.go:535	0xe3aefe		488b8424b8000000	MOVQ 0xb8(SP), AX					
  traffic_dynamic.go:536	0xe3af06		84c9			TESTL CL, CL						
  traffic_dynamic.go:536	0xe3af08		0f8433ffffff		JE 0xe3ae41						
  traffic_dynamic.go:537	0xe3af0e		488b5c2458		MOVQ 0x58(SP), BX					
  traffic_dynamic.go:537	0xe3af13		488b442450		MOVQ 0x50(SP), AX					
  traffic_dynamic.go:537	0xe3af18		4885db			TESTQ BX, BX						
  traffic_dynamic.go:537	0xe3af1b		400f95c7		SETNE DI						
  traffic_dynamic.go:537	0xe3af1f		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX		
  traffic_dynamic.go:537	0xe3af24		4881c4d0000000		ADDQ $.file+131(SB), SP					
  traffic_dynamic.go:537	0xe3af2b		5d			POPQ BP							
  traffic_dynamic.go:537	0xe3af2c		c3			RET							
  traffic_dynamic.go:540	0xe3af2d		31c0			XORL AX, AX						
  traffic_dynamic.go:540	0xe3af2f		31db			XORL BX, BX						
  traffic_dynamic.go:540	0xe3af31		b9064b0000		MOVL $__size_of_stack_commit__+15110(SB), CX		
  traffic_dynamic.go:540	0xe3af36		31ff			XORL DI, DI						
  traffic_dynamic.go:540	0xe3af38		4881c4d0000000		ADDQ $.file+131(SB), SP					
  traffic_dynamic.go:540	0xe3af3f		5d			POPQ BP							
  traffic_dynamic.go:540	0xe3af40		c3			RET							
  traffic_dynamic.go:528	0xe3af41		4889442408		MOVQ AX, 0x8(SP)					
  traffic_dynamic.go:528	0xe3af46		48895c2410		MOVQ BX, 0x10(SP)					
  traffic_dynamic.go:528	0xe3af4b		e890b563ff		CALL runtime.morestack_noctxt.abi0(SB)			
  traffic_dynamic.go:528	0xe3af50		488b442408		MOVQ 0x8(SP), AX					
  traffic_dynamic.go:528	0xe3af55		488b5c2410		MOVQ 0x10(SP), BX					
  traffic_dynamic.go:528	0xe3af5a		e941feffff		JMP CAS-Backend/pkg/diapdu.lookupVehicleDaohang(SB)	
  :-1				0xe3af5f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.sendPauseNavigationForVehicle(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:543	0xe3af60		4c8d6424b8		LEAQ -0x48(SP), R12						
  traffic_dynamic.go:543	0xe3af65		4d3b6610		CMPQ R12, 0x10(R14)						
  traffic_dynamic.go:543	0xe3af69		0f8616020000		JBE 0xe3b185							
  traffic_dynamic.go:543	0xe3af6f		55			PUSHQ BP							
  traffic_dynamic.go:543	0xe3af70		4889e5			MOVQ SP, BP							
  traffic_dynamic.go:543	0xe3af73		4881ecc0000000		SUBQ $.file+115(SB), SP						
  traffic_dynamic.go:545	0xe3af7a		48899c24d8000000	MOVQ BX, 0xd8(SP)						
  traffic_dynamic.go:545	0xe3af82		48898424d0000000	MOVQ AX, 0xd0(SP)						
  traffic_dynamic.go:544	0xe3af8a		e811feffff		CALL CAS-Backend/pkg/diapdu.lookupVehicleDaohang(SB)		
  traffic_dynamic.go:544	0xe3af8f		4084ff			TESTL DI, DI							
  traffic_dynamic.go:545	0xe3af92		0f847f010000		JE 0xe3b117							
  traffic_dynamic.go:544	0xe3af98		48894c2438		MOVQ CX, 0x38(SP)						
  traffic_dynamic.go:544	0xe3af9d		48895c2440		MOVQ BX, 0x40(SP)						
  traffic_dynamic.go:544	0xe3afa2		4889442450		MOVQ AX, 0x50(SP)						
  traffic_dynamic.go:549	0xe3afa7		488d3de2c0e901		LEAQ go:func.*+4264(SB), DI					
  traffic_dynamic.go:549	0xe3afae		e84d86fdff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)			
  traffic_dynamic.go:551	0xe3afb3		4885c0			TESTQ AX, AX							
  traffic_dynamic.go:551	0xe3afb6		0f84a9000000		JE 0xe3b065							
  traffic_dynamic.go:549	0xe3afbc		4889442448		MOVQ AX, 0x48(SP)						
  traffic_dynamic.go:549	0xe3afc1		48895c2458		MOVQ BX, 0x58(SP)						
  traffic_dynamic.go:552	0xe3afc6		440f11bc2490000000	MOVUPS X15, 0x90(SP)						
  traffic_dynamic.go:552	0xe3afcf		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)						
  traffic_dynamic.go:552	0xe3afd8		488b8424d0000000	MOVQ 0xd0(SP), AX						
  traffic_dynamic.go:552	0xe3afe0		488b9c24d8000000	MOVQ 0xd8(SP), BX						
  traffic_dynamic.go:552	0xe3afe8		e833f162ff		CALL runtime.convTstring(SB)					
  traffic_dynamic.go:552	0xe3afed		488d0d2c792000		LEAQ runtime.types+383264(SB), CX				
  traffic_dynamic.go:552	0xe3aff4		48898c2490000000	MOVQ CX, 0x90(SP)						
  traffic_dynamic.go:552	0xe3affc		4889842498000000	MOVQ AX, 0x98(SP)						
  traffic_dynamic.go:551	0xe3b004		488b4c2448		MOVQ 0x48(SP), CX						
  traffic_dynamic.go:551	0xe3b009		4885c9			TESTQ CX, CX							
  traffic_dynamic.go:552	0xe3b00c		7406			JE 0xe3b014							
  traffic_dynamic.go:552	0xe3b00e		488b4108		MOVQ 0x8(CX), AX						
  traffic_dynamic.go:552	0xe3b012		eb03			JMP 0xe3b017							
  traffic_dynamic.go:552	0xe3b014		4889c8			MOVQ CX, AX							
  traffic_dynamic.go:552	0xe3b017		48898424a0000000	MOVQ AX, 0xa0(SP)						
  traffic_dynamic.go:552	0xe3b01f		488b542458		MOVQ 0x58(SP), DX						
  traffic_dynamic.go:552	0xe3b024		48899424a8000000	MOVQ DX, 0xa8(SP)						
  print.go:233			0xe3b02c		488b1d4d706d02		MOVQ os.Stdout(SB), BX						
  print.go:233			0xe3b033		488d05a60a0302		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233			0xe3b03a		488d0dcb183600		LEAQ go:string.*+214020(SB), CX					
  print.go:233			0xe3b041		bf31000000		MOVL $__major_os_version__+43(SB), DI				
  print.go:233			0xe3b046		488db42490000000	LEAQ 0x90(SP), SI						
  print.go:233			0xe3b04e		41b802000000		MOVL $__minor_os_version__+1(SB), R8				
  print.go:233			0xe3b054		4d89c1			MOVQ R8, R9							
  print.go:233			0xe3b057		e8c4416eff		CALL fmt.Fprintf(SB)						
  traffic_dynamic.go:553	0xe3b05c		4881c4c0000000		ADDQ $.file+115(SB), SP						
  traffic_dynamic.go:553	0xe3b063		5d			POPQ BP								
  traffic_dynamic.go:553	0xe3b064		c3			RET								
  traffic_dynamic.go:555	0xe3b065		440f117c2460		MOVUPS X15, 0x60(SP)						
  traffic_dynamic.go:555	0xe3b06b		440f117c2470		MOVUPS X15, 0x70(SP)						
  traffic_dynamic.go:555	0xe3b071		440f11bc2480000000	MOVUPS X15, 0x80(SP)						
  traffic_dynamic.go:555	0xe3b07a		488b8424d0000000	MOVQ 0xd0(SP), AX						
  traffic_dynamic.go:555	0xe3b082		488b9c24d8000000	MOVQ 0xd8(SP), BX						
  traffic_dynamic.go:555	0xe3b08a		e891f062ff		CALL runtime.convTstring(SB)					
  traffic_dynamic.go:555	0xe3b08f		488d0d8a782000		LEAQ runtime.types+383264(SB), CX				
  traffic_dynamic.go:555	0xe3b096		48894c2460		MOVQ CX, 0x60(SP)						
  traffic_dynamic.go:555	0xe3b09b		4889442468		MOVQ AX, 0x68(SP)						
  traffic_dynamic.go:555	0xe3b0a0		488b442450		MOVQ 0x50(SP), AX						
  traffic_dynamic.go:555	0xe3b0a5		488b5c2440		MOVQ 0x40(SP), BX						
  traffic_dynamic.go:555	0xe3b0aa		e871f062ff		CALL runtime.convTstring(SB)					
  traffic_dynamic.go:555	0xe3b0af		488d0d6a782000		LEAQ runtime.types+383264(SB), CX				
  traffic_dynamic.go:555	0xe3b0b6		48894c2470		MOVQ CX, 0x70(SP)						
  traffic_dynamic.go:555	0xe3b0bb		4889442478		MOVQ AX, 0x78(SP)						
  traffic_dynamic.go:555	0xe3b0c0		488b442438		MOVQ 0x38(SP), AX						
  traffic_dynamic.go:555	0xe3b0c5		e8d6ef62ff		CALL runtime.convT64(SB)					
  traffic_dynamic.go:555	0xe3b0ca		488d0d8f7a2000		LEAQ runtime.types+383840(SB), CX				
  traffic_dynamic.go:555	0xe3b0d1		48898c2480000000	MOVQ CX, 0x80(SP)						
  traffic_dynamic.go:555	0xe3b0d9		4889842488000000	MOVQ AX, 0x88(SP)						
  print.go:233			0xe3b0e1		488b1d986f6d02		MOVQ os.Stdout(SB), BX						
  print.go:233			0xe3b0e8		488d05f1090302		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233			0xe3b0ef		488d0d6fcf3600		LEAQ go:string.*+260957(SB), CX					
  print.go:233			0xe3b0f6		bf4b000000		MOVL $__major_os_version__+69(SB), DI				
  print.go:233			0xe3b0fb		488d742460		LEAQ 0x60(SP), SI						
  print.go:233			0xe3b100		41b803000000		MOVL $__subsystem__(SB), R8					
  print.go:233			0xe3b106		4d89c1			MOVQ R8, R9							
  print.go:233			0xe3b109		e812416eff		CALL fmt.Fprintf(SB)						
  traffic_dynamic.go:556	0xe3b10e		4881c4c0000000		ADDQ $.file+115(SB), SP						
  traffic_dynamic.go:556	0xe3b115		5d			POPQ BP								
  traffic_dynamic.go:556	0xe3b116		c3			RET								
  traffic_dynamic.go:546	0xe3b117		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)						
  traffic_dynamic.go:546	0xe3b120		488b8424d0000000	MOVQ 0xd0(SP), AX						
  traffic_dynamic.go:546	0xe3b128		488b9c24d8000000	MOVQ 0xd8(SP), BX						
  traffic_dynamic.go:546	0xe3b130		e8ebef62ff		CALL runtime.convTstring(SB)					
  traffic_dynamic.go:546	0xe3b135		488d0de4772000		LEAQ runtime.types+383264(SB), CX				
  traffic_dynamic.go:546	0xe3b13c		48898c24b0000000	MOVQ CX, 0xb0(SP)						
  traffic_dynamic.go:546	0xe3b144		48898424b8000000	MOVQ AX, 0xb8(SP)						
  print.go:233			0xe3b14c		488b1d2d6f6d02		MOVQ os.Stdout(SB), BX						
  print.go:233			0xe3b153		488d0586090302		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233			0xe3b15a		488d0d6a733600		LEAQ go:string.*+237507(SB), CX					
  print.go:233			0xe3b161		bf3b000000		MOVL $__major_os_version__+53(SB), DI				
  print.go:233			0xe3b166		488db424b0000000	LEAQ 0xb0(SP), SI						
  print.go:233			0xe3b16e		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233			0xe3b174		4d89c1			MOVQ R8, R9							
  print.go:233			0xe3b177		e8a4406eff		CALL fmt.Fprintf(SB)						
  traffic_dynamic.go:547	0xe3b17c		4881c4c0000000		ADDQ $.file+115(SB), SP						
  traffic_dynamic.go:547	0xe3b183		5d			POPQ BP								
  traffic_dynamic.go:547	0xe3b184		c3			RET								
  traffic_dynamic.go:543	0xe3b185		4889442408		MOVQ AX, 0x8(SP)						
  traffic_dynamic.go:543	0xe3b18a		48895c2410		MOVQ BX, 0x10(SP)						
  traffic_dynamic.go:543	0xe3b18f		e84cb363ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_dynamic.go:543	0xe3b194		488b442408		MOVQ 0x8(SP), AX						
  traffic_dynamic.go:543	0xe3b199		488b5c2410		MOVQ 0x10(SP), BX						
  traffic_dynamic.go:543	0xe3b19e		6690			NOPW								
  traffic_dynamic.go:543	0xe3b1a0		e9bbfdffff		JMP CAS-Backend/pkg/diapdu.sendPauseNavigationForVehicle(SB)	
  :-1				0xe3b1a5		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1a6		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1a7		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1a8		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1a9		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1aa		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1ab		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1ac		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1ad		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1ae		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1af		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1b0		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1b1		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1b2		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1b3		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1b4		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1b5		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1b6		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1b7		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1b8		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1b9		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1ba		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1bb		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1bc		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1bd		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1be		cc			INT $__subsystem__(SB)						
  :-1				0xe3b1bf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.sendResumeNavigationForVehicle(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:558	0xe3b1c0		4c8d6424b8		LEAQ -0x48(SP), R12						
  traffic_dynamic.go:558	0xe3b1c5		4d3b6610		CMPQ R12, 0x10(R14)						
  traffic_dynamic.go:558	0xe3b1c9		0f8616020000		JBE 0xe3b3e5							
  traffic_dynamic.go:558	0xe3b1cf		55			PUSHQ BP							
  traffic_dynamic.go:558	0xe3b1d0		4889e5			MOVQ SP, BP							
  traffic_dynamic.go:558	0xe3b1d3		4881ecc0000000		SUBQ $.file+115(SB), SP						
  traffic_dynamic.go:560	0xe3b1da		48899c24d8000000	MOVQ BX, 0xd8(SP)						
  traffic_dynamic.go:560	0xe3b1e2		48898424d0000000	MOVQ AX, 0xd0(SP)						
  traffic_dynamic.go:559	0xe3b1ea		e8b1fbffff		CALL CAS-Backend/pkg/diapdu.lookupVehicleDaohang(SB)		
  traffic_dynamic.go:559	0xe3b1ef		4084ff			TESTL DI, DI							
  traffic_dynamic.go:560	0xe3b1f2		0f847f010000		JE 0xe3b377							
  traffic_dynamic.go:559	0xe3b1f8		48894c2438		MOVQ CX, 0x38(SP)						
  traffic_dynamic.go:559	0xe3b1fd		48895c2440		MOVQ BX, 0x40(SP)						
  traffic_dynamic.go:559	0xe3b202		4889442450		MOVQ AX, 0x50(SP)						
  traffic_dynamic.go:564	0xe3b207		488d3d8abee901		LEAQ go:func.*+4272(SB), DI					
  traffic_dynamic.go:564	0xe3b20e		e8ed83fdff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)			
  traffic_dynamic.go:566	0xe3b213		4885c0			TESTQ AX, AX							
  traffic_dynamic.go:566	0xe3b216		0f84a9000000		JE 0xe3b2c5							
  traffic_dynamic.go:564	0xe3b21c		4889442448		MOVQ AX, 0x48(SP)						
  traffic_dynamic.go:564	0xe3b221		48895c2458		MOVQ BX, 0x58(SP)						
  traffic_dynamic.go:567	0xe3b226		440f11bc2490000000	MOVUPS X15, 0x90(SP)						
  traffic_dynamic.go:567	0xe3b22f		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)						
  traffic_dynamic.go:567	0xe3b238		488b8424d0000000	MOVQ 0xd0(SP), AX						
  traffic_dynamic.go:567	0xe3b240		488b9c24d8000000	MOVQ 0xd8(SP), BX						
  traffic_dynamic.go:567	0xe3b248		e8d3ee62ff		CALL runtime.convTstring(SB)					
  traffic_dynamic.go:567	0xe3b24d		488d0dcc762000		LEAQ runtime.types+383264(SB), CX				
  traffic_dynamic.go:567	0xe3b254		48898c2490000000	MOVQ CX, 0x90(SP)						
  traffic_dynamic.go:567	0xe3b25c		4889842498000000	MOVQ AX, 0x98(SP)						
  traffic_dynamic.go:566	0xe3b264		488b4c2448		MOVQ 0x48(SP), CX						
  traffic_dynamic.go:566	0xe3b269		4885c9			TESTQ CX, CX							
  traffic_dynamic.go:567	0xe3b26c		7406			JE 0xe3b274							
  traffic_dynamic.go:567	0xe3b26e		488b4108		MOVQ 0x8(CX), AX						
  traffic_dynamic.go:567	0xe3b272		eb03			JMP 0xe3b277							
  traffic_dynamic.go:567	0xe3b274		4889c8			MOVQ CX, AX							
  traffic_dynamic.go:567	0xe3b277		48898424a0000000	MOVQ AX, 0xa0(SP)						
  traffic_dynamic.go:567	0xe3b27f		488b542458		MOVQ 0x58(SP), DX						
  traffic_dynamic.go:567	0xe3b284		48899424a8000000	MOVQ DX, 0xa8(SP)						
  print.go:233			0xe3b28c		488b1ded6d6d02		MOVQ os.Stdout(SB), BX						
  print.go:233			0xe3b293		488d0546080302		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233			0xe3b29a		488d0d9c163600		LEAQ go:string.*+214069(SB), CX					
  print.go:233			0xe3b2a1		bf31000000		MOVL $__major_os_version__+43(SB), DI				
  print.go:233			0xe3b2a6		488db42490000000	LEAQ 0x90(SP), SI						
  print.go:233			0xe3b2ae		41b802000000		MOVL $__minor_os_version__+1(SB), R8				
  print.go:233			0xe3b2b4		4d89c1			MOVQ R8, R9							
  print.go:233			0xe3b2b7		e8643f6eff		CALL fmt.Fprintf(SB)						
  traffic_dynamic.go:568	0xe3b2bc		4881c4c0000000		ADDQ $.file+115(SB), SP						
  traffic_dynamic.go:568	0xe3b2c3		5d			POPQ BP								
  traffic_dynamic.go:568	0xe3b2c4		c3			RET								
  traffic_dynamic.go:570	0xe3b2c5		440f117c2460		MOVUPS X15, 0x60(SP)						
  traffic_dynamic.go:570	0xe3b2cb		440f117c2470		MOVUPS X15, 0x70(SP)						
  traffic_dynamic.go:570	0xe3b2d1		440f11bc2480000000	MOVUPS X15, 0x80(SP)						
  traffic_dynamic.go:570	0xe3b2da		488b8424d0000000	MOVQ 0xd0(SP), AX						
  traffic_dynamic.go:570	0xe3b2e2		488b9c24d8000000	MOVQ 0xd8(SP), BX						
  traffic_dynamic.go:570	0xe3b2ea		e831ee62ff		CALL runtime.convTstring(SB)					
  traffic_dynamic.go:570	0xe3b2ef		488d0d2a762000		LEAQ runtime.types+383264(SB), CX				
  traffic_dynamic.go:570	0xe3b2f6		48894c2460		MOVQ CX, 0x60(SP)						
  traffic_dynamic.go:570	0xe3b2fb		4889442468		MOVQ AX, 0x68(SP)						
  traffic_dynamic.go:570	0xe3b300		488b442450		MOVQ 0x50(SP), AX						
  traffic_dynamic.go:570	0xe3b305		488b5c2440		MOVQ 0x40(SP), BX						
  traffic_dynamic.go:570	0xe3b30a		e811ee62ff		CALL runtime.convTstring(SB)					
  traffic_dynamic.go:570	0xe3b30f		488d0d0a762000		LEAQ runtime.types+383264(SB), CX				
  traffic_dynamic.go:570	0xe3b316		48894c2470		MOVQ CX, 0x70(SP)						
  traffic_dynamic.go:570	0xe3b31b		4889442478		MOVQ AX, 0x78(SP)						
  traffic_dynamic.go:570	0xe3b320		488b442438		MOVQ 0x38(SP), AX						
  traffic_dynamic.go:570	0xe3b325		e876ed62ff		CALL runtime.convT64(SB)					
  traffic_dynamic.go:570	0xe3b32a		488d0d2f782000		LEAQ runtime.types+383840(SB), CX				
  traffic_dynamic.go:570	0xe3b331		48898c2480000000	MOVQ CX, 0x80(SP)						
  traffic_dynamic.go:570	0xe3b339		4889842488000000	MOVQ AX, 0x88(SP)						
  print.go:233			0xe3b341		488b1d386d6d02		MOVQ os.Stdout(SB), BX						
  print.go:233			0xe3b348		488d0591070302		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233			0xe3b34f		488d0dfa213600		LEAQ go:string.*+217160(SB), CX					
  print.go:233			0xe3b356		bf32000000		MOVL $__major_os_version__+44(SB), DI				
  print.go:233			0xe3b35b		488d742460		LEAQ 0x60(SP), SI						
  print.go:233			0xe3b360		41b803000000		MOVL $__subsystem__(SB), R8					
  print.go:233			0xe3b366		4d89c1			MOVQ R8, R9							
  print.go:233			0xe3b369		e8b23e6eff		CALL fmt.Fprintf(SB)						
  traffic_dynamic.go:571	0xe3b36e		4881c4c0000000		ADDQ $.file+115(SB), SP						
  traffic_dynamic.go:571	0xe3b375		5d			POPQ BP								
  traffic_dynamic.go:571	0xe3b376		c3			RET								
  traffic_dynamic.go:561	0xe3b377		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)						
  traffic_dynamic.go:561	0xe3b380		488b8424d0000000	MOVQ 0xd0(SP), AX						
  traffic_dynamic.go:561	0xe3b388		488b9c24d8000000	MOVQ 0xd8(SP), BX						
  traffic_dynamic.go:561	0xe3b390		e88bed62ff		CALL runtime.convTstring(SB)					
  traffic_dynamic.go:561	0xe3b395		488d0d84752000		LEAQ runtime.types+383264(SB), CX				
  traffic_dynamic.go:561	0xe3b39c		48898c24b0000000	MOVQ CX, 0xb0(SP)						
  traffic_dynamic.go:561	0xe3b3a4		48898424b8000000	MOVQ AX, 0xb8(SP)						
  print.go:233			0xe3b3ac		488b1dcd6c6d02		MOVQ os.Stdout(SB), BX						
  print.go:233			0xe3b3b3		488d0526070302		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233			0xe3b3ba		488d0d45713600		LEAQ go:string.*+237566(SB), CX					
  print.go:233			0xe3b3c1		bf3b000000		MOVL $__major_os_version__+53(SB), DI				
  print.go:233			0xe3b3c6		488db424b0000000	LEAQ 0xb0(SP), SI						
  print.go:233			0xe3b3ce		41b801000000		MOVL $__minor_os_version__(SB), R8				
  print.go:233			0xe3b3d4		4d89c1			MOVQ R8, R9							
  print.go:233			0xe3b3d7		e8443e6eff		CALL fmt.Fprintf(SB)						
  traffic_dynamic.go:562	0xe3b3dc		4881c4c0000000		ADDQ $.file+115(SB), SP						
  traffic_dynamic.go:562	0xe3b3e3		5d			POPQ BP								
  traffic_dynamic.go:562	0xe3b3e4		c3			RET								
  traffic_dynamic.go:558	0xe3b3e5		4889442408		MOVQ AX, 0x8(SP)						
  traffic_dynamic.go:558	0xe3b3ea		48895c2410		MOVQ BX, 0x10(SP)						
  traffic_dynamic.go:558	0xe3b3ef		e8ecb063ff		CALL runtime.morestack_noctxt.abi0(SB)				
  traffic_dynamic.go:558	0xe3b3f4		488b442408		MOVQ 0x8(SP), AX						
  traffic_dynamic.go:558	0xe3b3f9		488b5c2410		MOVQ 0x10(SP), BX						
  traffic_dynamic.go:558	0xe3b3fe		6690			NOPW								
  traffic_dynamic.go:558	0xe3b400		e9bbfdffff		JMP CAS-Backend/pkg/diapdu.sendResumeNavigationForVehicle(SB)	
  :-1				0xe3b405		cc			INT $__subsystem__(SB)						
  :-1				0xe3b406		cc			INT $__subsystem__(SB)						
  :-1				0xe3b407		cc			INT $__subsystem__(SB)						
  :-1				0xe3b408		cc			INT $__subsystem__(SB)						
  :-1				0xe3b409		cc			INT $__subsystem__(SB)						
  :-1				0xe3b40a		cc			INT $__subsystem__(SB)						
  :-1				0xe3b40b		cc			INT $__subsystem__(SB)						
  :-1				0xe3b40c		cc			INT $__subsystem__(SB)						
  :-1				0xe3b40d		cc			INT $__subsystem__(SB)						
  :-1				0xe3b40e		cc			INT $__subsystem__(SB)						
  :-1				0xe3b40f		cc			INT $__subsystem__(SB)						
  :-1				0xe3b410		cc			INT $__subsystem__(SB)						
  :-1				0xe3b411		cc			INT $__subsystem__(SB)						
  :-1				0xe3b412		cc			INT $__subsystem__(SB)						
  :-1				0xe3b413		cc			INT $__subsystem__(SB)						
  :-1				0xe3b414		cc			INT $__subsystem__(SB)						
  :-1				0xe3b415		cc			INT $__subsystem__(SB)						
  :-1				0xe3b416		cc			INT $__subsystem__(SB)						
  :-1				0xe3b417		cc			INT $__subsystem__(SB)						
  :-1				0xe3b418		cc			INT $__subsystem__(SB)						
  :-1				0xe3b419		cc			INT $__subsystem__(SB)						
  :-1				0xe3b41a		cc			INT $__subsystem__(SB)						
  :-1				0xe3b41b		cc			INT $__subsystem__(SB)						
  :-1				0xe3b41c		cc			INT $__subsystem__(SB)						
  :-1				0xe3b41d		cc			INT $__subsystem__(SB)						
  :-1				0xe3b41e		cc			INT $__subsystem__(SB)						
  :-1				0xe3b41f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.sendResumeNavigationForVehicle.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:564	0xe45400		493b6610		CMPQ SP, 0x10(R14)							
  traffic_dynamic.go:564	0xe45404		761d			JBE 0xe45423								
  traffic_dynamic.go:564	0xe45406		55			PUSHQ BP								
  traffic_dynamic.go:564	0xe45407		4889e5			MOVQ SP, BP								
  traffic_dynamic.go:564	0xe4540a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  traffic_dynamic.go:564	0xe4540e		4889442420		MOVQ AX, 0x20(SP)							
  traffic_dynamic.go:564	0xe45413		48895c2428		MOVQ BX, 0x28(SP)							
  traffic_dynamic.go:565	0xe45418		e8430ffdff		CALL CAS-Backend/pkg/agvcontrol.SendResumeNavigation(SB)		
  traffic_dynamic.go:565	0xe4541d		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  traffic_dynamic.go:565	0xe45421		5d			POPQ BP									
  traffic_dynamic.go:565	0xe45422		c3			RET									
  traffic_dynamic.go:564	0xe45423		4889442408		MOVQ AX, 0x8(SP)							
  traffic_dynamic.go:564	0xe45428		48895c2410		MOVQ BX, 0x10(SP)							
  traffic_dynamic.go:564	0xe4542d		e8ae1063ff		CALL runtime.morestack_noctxt.abi0(SB)					
  traffic_dynamic.go:564	0xe45432		488b442408		MOVQ 0x8(SP), AX							
  traffic_dynamic.go:564	0xe45437		488b5c2410		MOVQ 0x10(SP), BX							
  traffic_dynamic.go:564	0xe4543c		ebc2			JMP CAS-Backend/pkg/diapdu.sendResumeNavigationForVehicle.func1(SB)	
  :-1				0xe4543e		cc			INT $__subsystem__(SB)							
  :-1				0xe4543f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.sendPauseNavigationForVehicle.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic_dynamic.go
  traffic_dynamic.go:549	0xe45440		493b6610		CMPQ SP, 0x10(R14)							
  traffic_dynamic.go:549	0xe45444		761d			JBE 0xe45463								
  traffic_dynamic.go:549	0xe45446		55			PUSHQ BP								
  traffic_dynamic.go:549	0xe45447		4889e5			MOVQ SP, BP								
  traffic_dynamic.go:549	0xe4544a		4883ec10		SUBQ $__major_os_version__+10(SB), SP					
  traffic_dynamic.go:549	0xe4544e		4889442420		MOVQ AX, 0x20(SP)							
  traffic_dynamic.go:549	0xe45453		48895c2428		MOVQ BX, 0x28(SP)							
  traffic_dynamic.go:550	0xe45458		e8630bfdff		CALL CAS-Backend/pkg/agvcontrol.SendPauseNavigation(SB)			
  traffic_dynamic.go:550	0xe4545d		4883c410		ADDQ $__major_os_version__+10(SB), SP					
  traffic_dynamic.go:550	0xe45461		5d			POPQ BP									
  traffic_dynamic.go:550	0xe45462		c3			RET									
  traffic_dynamic.go:549	0xe45463		4889442408		MOVQ AX, 0x8(SP)							
  traffic_dynamic.go:549	0xe45468		48895c2410		MOVQ BX, 0x10(SP)							
  traffic_dynamic.go:549	0xe4546d		e86e1063ff		CALL runtime.morestack_noctxt.abi0(SB)					
  traffic_dynamic.go:549	0xe45472		488b442408		MOVQ 0x8(SP), AX							
  traffic_dynamic.go:549	0xe45477		488b5c2410		MOVQ 0x10(SP), BX							
  traffic_dynamic.go:549	0xe4547c		ebc2			JMP CAS-Backend/pkg/diapdu.sendPauseNavigationForVehicle.func1(SB)	
  :-1				0xe4547e		cc			INT $__subsystem__(SB)							
  :-1				0xe4547f		cc			INT $__subsystem__(SB)							

