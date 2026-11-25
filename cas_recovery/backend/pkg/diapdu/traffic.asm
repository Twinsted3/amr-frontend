TEXT CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic.go
  traffic.go:77		0xe35ea0		4c8d6424d0		LEAQ -0x30(SP), R12									
  traffic.go:77		0xe35ea5		4d3b6610		CMPQ R12, 0x10(R14)									
  traffic.go:77		0xe35ea9		0f86f6010000		JBE 0xe360a5										
  traffic.go:77		0xe35eaf		55			PUSHQ BP										
  traffic.go:77		0xe35eb0		4889e5			MOVQ SP, BP										
  traffic.go:77		0xe35eb3		4881eca8000000		SUBQ $.file+91(SB), SP									
  traffic.go:77		0xe35eba		48899c24c0000000	MOVQ BX, 0xc0(SP)									
  traffic.go:77		0xe35ec2		4889bc24d0000000	MOVQ DI, 0xd0(SP)									
  traffic.go:77		0xe35eca		66440fd6bc24a0000000	MOVQ X15, 0xa0(SP)									
  traffic.go:77		0xe35ed4		c644242700		MOVB $0x0, 0x27(SP)									
  traffic.go:77		0xe35ed9		c644242600		MOVB $0x0, 0x26(SP)									
  traffic.go:77		0xe35ede		6690			NOPW											
  traffic.go:78		0xe35ee0		4885c0			TESTQ AX, AX										
  traffic.go:78		0xe35ee3		0f84be000000		JE 0xe35fa7										
  traffic.go:78		0xe35ee9		4885c9			TESTQ CX, CX										
  traffic.go:78		0xe35eec		0f84b5000000		JE 0xe35fa7										
  traffic.go:78		0xe35ef2		48898c24c8000000	MOVQ CX, 0xc8(SP)									
  traffic.go:78		0xe35efa		48899c24c0000000	MOVQ BX, 0xc0(SP)									
  traffic.go:78		0xe35f02		4889b424d8000000	MOVQ SI, 0xd8(SP)									
  traffic.go:78		0xe35f0a		4889bc24d0000000	MOVQ DI, 0xd0(SP)									
  traffic.go:81		0xe35f12		90			NOPL											
  type.go:88		0xe35f13		ba01000000		MOVL $__minor_os_version__(SB), DX							
  type.go:88		0xe35f18		f00fc15010		LOCK XADDL DX, 0x10(AX)									
  type.go:88		0xe35f1d		ffc2			INCL DX											
  type.go:88		0xe35f1f		90			NOPL											
  rwmutex.go:70		0xe35f20		85d2			TESTL DX, DX										
  rwmutex.go:70		0xe35f22		7d20			JGE 0xe35f44										
  traffic.go:78		0xe35f24		48898424b8000000	MOVQ AX, 0xb8(SP)									
  rwmutex.go:72		0xe35f2c		488d500c		LEAQ 0xc(AX), DX									
  rwmutex.go:72		0xe35f30		31db			XORL BX, BX										
  rwmutex.go:72		0xe35f32		31c9			XORL CX, CX										
  rwmutex.go:72		0xe35f34		4889d0			MOVQ DX, AX										
  rwmutex.go:72		0xe35f37		e824b663ff		CALL sync.runtime_SemacquireRWMutexR(SB)						
  traffic.go:82		0xe35f3c		488b8424b8000000	MOVQ 0xb8(SP), AX									
  traffic.go:82		0xe35f44		488d15b5010000		LEAQ CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther.deferwrap1(SB), DX	
  traffic.go:82		0xe35f4b		4889542430		MOVQ DX, 0x30(SP)									
  traffic.go:82		0xe35f50		4889442438		MOVQ AX, 0x38(SP)									
  traffic.go:82		0xe35f55		488d542430		LEAQ 0x30(SP), DX									
  traffic.go:82		0xe35f5a		48899424a0000000	MOVQ DX, 0xa0(SP)									
  traffic.go:82		0xe35f62		c644242701		MOVB $__minor_os_version__(SB), 0x27(SP)						
  traffic.go:83		0xe35f67		488b5818		MOVQ 0x18(AX), BX									
  traffic.go:83		0xe35f6b		488d7c2440		LEAQ 0x40(SP), DI									
  traffic.go:83		0xe35f70		488d7fe0		LEAQ -0x20(DI), DI									
  traffic.go:83		0xe35f74		660f1f840000000000	NOPW 0(AX)(AX*1)									
  traffic.go:83		0xe35f7d		0f1f00			NOPL 0(AX)										
  traffic.go:83		0xe35f80		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic.go:83		0xe35f85		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic.go:83		0xe35f8a		e85c2b64ff		CALL 0x478aeb										
  traffic.go:83		0xe35f8f		488b6d00		MOVQ 0(BP), BP										
  traffic.go:83		0xe35f93		488d05c6772400		LEAQ runtime.types+624480(SB), AX							
  traffic.go:83		0xe35f9a		488d4c2440		LEAQ 0x40(SP), CX									
  traffic.go:83		0xe35f9f		90			NOPL											
  traffic.go:83		0xe35fa0		e87b5d63ff		CALL runtime.mapiterinit(SB)								
  traffic.go:83		0xe35fa5		eb1e			JMP 0xe35fc5										
  traffic.go:79		0xe35fa7		c644242600		MOVB $0x0, 0x26(SP)									
  traffic.go:79		0xe35fac		31c0			XORL AX, AX										
  traffic.go:79		0xe35fae		4881c4a8000000		ADDQ $.file+91(SB), SP									
  traffic.go:79		0xe35fb5		5d			POPQ BP											
  traffic.go:79		0xe35fb6		c3			RET											
  traffic.go:83		0xe35fb7		488d442440		LEAQ 0x40(SP), AX									
  traffic.go:83		0xe35fbc		0f1f4000		NOPL 0(AX)										
  traffic.go:83		0xe35fc0		e87b5f63ff		CALL runtime.mapiternext(SB)								
  traffic.go:83		0xe35fc5		488b742440		MOVQ 0x40(SP), SI									
  traffic.go:83		0xe35fca		4885f6			TESTQ SI, SI										
  traffic.go:83		0xe35fcd		0f849a000000		JE 0xe3606d										
  traffic.go:83		0xe35fd3		488b4e08		MOVQ 0x8(SI), CX									
  traffic.go:83		0xe35fd7		488b542448		MOVQ 0x48(SP), DX									
  traffic.go:83		0xe35fdc		488b12			MOVQ 0(DX), DX										
  traffic.go:84		0xe35fdf		4c8b8424d8000000	MOVQ 0xd8(SP), R8									
  traffic.go:84		0xe35fe7		4939c8			CMPQ R8, CX										
  traffic.go:84		0xe35fea		752a			JNE 0xe36016										
  traffic.go:83		0xe35fec		4889542428		MOVQ DX, 0x28(SP)									
  traffic.go:83		0xe35ff1		488b06			MOVQ 0(SI), AX										
  traffic.go:84		0xe35ff4		488b9c24d0000000	MOVQ 0xd0(SP), BX									
  traffic.go:84		0xe35ffc		0f1f4000		NOPL 0(AX)										
  traffic.go:84		0xe36000		e85bce5cff		CALL runtime.memequal(SB)								
  traffic.go:84		0xe36005		84c0			TESTL AL, AL										
  traffic.go:84		0xe36007		75ae			JNE 0xe35fb7										
  traffic.go:87		0xe36009		488b542428		MOVQ 0x28(SP), DX									
  traffic.go:84		0xe3600e		4c8b8424d8000000	MOVQ 0xd8(SP), R8									
  traffic.go:87		0xe36016		4885d2			TESTQ DX, DX										
  traffic.go:87		0xe36019		749c			JE 0xe35fb7										
  traffic.go:90		0xe3601b		488b1a			MOVQ 0(DX), BX										
  traffic.go:90		0xe3601e		488d05bb752400		LEAQ runtime.types+624096(SB), AX							
  traffic.go:90		0xe36025		488b8c24c0000000	MOVQ 0xc0(SP), CX									
  traffic.go:90		0xe3602d		488bbc24c8000000	MOVQ 0xc8(SP), DI									
  traffic.go:90		0xe36035		e8067c63ff		CALL runtime.mapaccess2_faststr(SB)							
  traffic.go:90		0xe3603a		660f1f440000		NOPW 0(AX)(AX*1)									
  traffic.go:90		0xe36040		84db			TESTL BL, BL										
  traffic.go:90		0xe36042		0f846fffffff		JE 0xe35fb7										
  traffic.go:91		0xe36048		c644242601		MOVB $__minor_os_version__(SB), 0x26(SP)						
  traffic.go:91		0xe3604d		c644242700		MOVB $0x0, 0x27(SP)									
  traffic.go:91		0xe36052		488b9424a0000000	MOVQ 0xa0(SP), DX									
  traffic.go:91		0xe3605a		488b02			MOVQ 0(DX), AX										
  traffic.go:91		0xe3605d		ffd0			CALL AX											
  traffic.go:91		0xe3605f		0fb6442426		MOVZX 0x26(SP), AX									
  traffic.go:91		0xe36064		4881c4a8000000		ADDQ $.file+91(SB), SP									
  traffic.go:91		0xe3606b		5d			POPQ BP											
  traffic.go:91		0xe3606c		c3			RET											
  traffic.go:94		0xe3606d		c644242600		MOVB $0x0, 0x26(SP)									
  traffic.go:94		0xe36072		c644242700		MOVB $0x0, 0x27(SP)									
  traffic.go:94		0xe36077		488b9424a0000000	MOVQ 0xa0(SP), DX									
  traffic.go:94		0xe3607f		488b02			MOVQ 0(DX), AX										
  traffic.go:94		0xe36082		ffd0			CALL AX											
  traffic.go:94		0xe36084		0fb6442426		MOVZX 0x26(SP), AX									
  traffic.go:94		0xe36089		4881c4a8000000		ADDQ $.file+91(SB), SP									
  traffic.go:94		0xe36090		5d			POPQ BP											
  traffic.go:94		0xe36091		c3			RET											
  traffic.go:94		0xe36092		e8e93a60ff		CALL runtime.deferreturn(SB)								
  traffic.go:94		0xe36097		0fb6442426		MOVZX 0x26(SP), AX									
  traffic.go:94		0xe3609c		4881c4a8000000		ADDQ $.file+91(SB), SP									
  traffic.go:94		0xe360a3		5d			POPQ BP											
  traffic.go:94		0xe360a4		c3			RET											
  traffic.go:77		0xe360a5		4889442408		MOVQ AX, 0x8(SP)									
  traffic.go:77		0xe360aa		48895c2410		MOVQ BX, 0x10(SP)									
  traffic.go:77		0xe360af		48894c2418		MOVQ CX, 0x18(SP)									
  traffic.go:77		0xe360b4		48897c2420		MOVQ DI, 0x20(SP)									
  traffic.go:77		0xe360b9		4889742428		MOVQ SI, 0x28(SP)									
  traffic.go:77		0xe360be		6690			NOPW											
  traffic.go:77		0xe360c0		e81b0464ff		CALL runtime.morestack_noctxt.abi0(SB)							
  traffic.go:77		0xe360c5		488b442408		MOVQ 0x8(SP), AX									
  traffic.go:77		0xe360ca		488b5c2410		MOVQ 0x10(SP), BX									
  traffic.go:77		0xe360cf		488b4c2418		MOVQ 0x18(SP), CX									
  traffic.go:77		0xe360d4		488b7c2420		MOVQ 0x20(SP), DI									
  traffic.go:77		0xe360d9		488b742428		MOVQ 0x28(SP), SI									
  traffic.go:77		0xe360de		6690			NOPW											
  traffic.go:77		0xe360e0		e9bbfdffff		JMP CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther(SB)			
  :-1			0xe360e5		cc			INT $__subsystem__(SB)									
  :-1			0xe360e6		cc			INT $__subsystem__(SB)									
  :-1			0xe360e7		cc			INT $__subsystem__(SB)									
  :-1			0xe360e8		cc			INT $__subsystem__(SB)									
  :-1			0xe360e9		cc			INT $__subsystem__(SB)									
  :-1			0xe360ea		cc			INT $__subsystem__(SB)									
  :-1			0xe360eb		cc			INT $__subsystem__(SB)									
  :-1			0xe360ec		cc			INT $__subsystem__(SB)									
  :-1			0xe360ed		cc			INT $__subsystem__(SB)									
  :-1			0xe360ee		cc			INT $__subsystem__(SB)									
  :-1			0xe360ef		cc			INT $__subsystem__(SB)									
  :-1			0xe360f0		cc			INT $__subsystem__(SB)									
  :-1			0xe360f1		cc			INT $__subsystem__(SB)									
  :-1			0xe360f2		cc			INT $__subsystem__(SB)									
  :-1			0xe360f3		cc			INT $__subsystem__(SB)									
  :-1			0xe360f4		cc			INT $__subsystem__(SB)									
  :-1			0xe360f5		cc			INT $__subsystem__(SB)									
  :-1			0xe360f6		cc			INT $__subsystem__(SB)									
  :-1			0xe360f7		cc			INT $__subsystem__(SB)									
  :-1			0xe360f8		cc			INT $__subsystem__(SB)									
  :-1			0xe360f9		cc			INT $__subsystem__(SB)									
  :-1			0xe360fa		cc			INT $__subsystem__(SB)									
  :-1			0xe360fb		cc			INT $__subsystem__(SB)									
  :-1			0xe360fc		cc			INT $__subsystem__(SB)									
  :-1			0xe360fd		cc			INT $__subsystem__(SB)									
  :-1			0xe360fe		cc			INT $__subsystem__(SB)									
  :-1			0xe360ff		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic.go
  traffic.go:82		0xe36100		493b6610		CMPQ SP, 0x10(R14)								
  traffic.go:82		0xe36104		7630			JBE 0xe36136									
  traffic.go:82		0xe36106		55			PUSHQ BP									
  traffic.go:82		0xe36107		4889e5			MOVQ SP, BP									
  traffic.go:82		0xe3610a		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  traffic.go:82		0xe3610e		4d8b6620		MOVQ 0x20(R14), R12								
  traffic.go:82		0xe36112		4d85e4			TESTQ R12, R12									
  traffic.go:82		0xe36115		7526			JNE 0xe3613d									
  traffic.go:82		0xe36117		488b4208		MOVQ 0x8(DX), AX								
  rwmutex.go:118	0xe3611b		bbffffffff		MOVL $-0x1, BX									
  rwmutex.go:118	0xe36120		f00fc15810		LOCK XADDL BX, 0x10(AX)								
  type.go:88		0xe36125		ffcb			DECL BX										
  rwmutex.go:118	0xe36127		85db			TESTL BX, BX									
  rwmutex.go:118	0xe36129		7d05			JGE 0xe36130									
  rwmutex.go:120	0xe3612b		e8102d65ff		CALL sync.(*RWMutex).rUnlockSlow(SB)						
  traffic.go:82		0xe36130		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  traffic.go:82		0xe36134		5d			POPQ BP										
  traffic.go:82		0xe36135		c3			RET										
  traffic.go:82		0xe36136		e8250364ff		CALL runtime.morestack.abi0(SB)							
  traffic.go:82		0xe3613b		ebc3			JMP CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther.deferwrap1(SB)	
  traffic.go:82		0xe3613d		4c8d6c2420		LEAQ 0x20(SP), R13								
  traffic.go:82		0xe36142		4d392c24		CMPQ 0(R12), R13								
  traffic.go:82		0xe36146		75cf			JNE 0xe36117									
  traffic.go:82		0xe36148		49892424		MOVQ SP, 0(R12)									
  traffic.go:82		0xe3614c		ebc9			JMP 0xe36117									
  :-1			0xe3614e		cc			INT $__subsystem__(SB)								
  :-1			0xe3614f		cc			INT $__subsystem__(SB)								
  :-1			0xe36150		cc			INT $__subsystem__(SB)								
  :-1			0xe36151		cc			INT $__subsystem__(SB)								
  :-1			0xe36152		cc			INT $__subsystem__(SB)								
  :-1			0xe36153		cc			INT $__subsystem__(SB)								
  :-1			0xe36154		cc			INT $__subsystem__(SB)								
  :-1			0xe36155		cc			INT $__subsystem__(SB)								
  :-1			0xe36156		cc			INT $__subsystem__(SB)								
  :-1			0xe36157		cc			INT $__subsystem__(SB)								
  :-1			0xe36158		cc			INT $__subsystem__(SB)								
  :-1			0xe36159		cc			INT $__subsystem__(SB)								
  :-1			0xe3615a		cc			INT $__subsystem__(SB)								
  :-1			0xe3615b		cc			INT $__subsystem__(SB)								
  :-1			0xe3615c		cc			INT $__subsystem__(SB)								
  :-1			0xe3615d		cc			INT $__subsystem__(SB)								
  :-1			0xe3615e		cc			INT $__subsystem__(SB)								
  :-1			0xe3615f		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.(*TrafficManager).isEdgeLockedByOther(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic.go
  traffic.go:97		0xe36160		4c8da42468ffffff	LEAQ 0xffffff68(SP), R12								
  traffic.go:97		0xe36168		4d3b6610		CMPQ R12, 0x10(R14)									
  traffic.go:97		0xe3616c		0f86b8020000		JBE 0xe3642a										
  traffic.go:97		0xe36172		55			PUSHQ BP										
  traffic.go:97		0xe36173		4889e5			MOVQ SP, BP										
  traffic.go:97		0xe36176		4881ec10010000		SUBQ $.file+195(SB), SP									
  traffic.go:97		0xe3617d		48899c2428010000	MOVQ BX, 0x128(SP)									
  traffic.go:97		0xe36185		4889bc2438010000	MOVQ DI, 0x138(SP)									
  traffic.go:97		0xe3618d		4c89842448010000	MOVQ R8, 0x148(SP)									
  traffic.go:97		0xe36195		66440fd6bc2408010000	MOVQ X15, 0x108(SP)									
  traffic.go:97		0xe3619f		c644243f00		MOVB $0x0, 0x3f(SP)									
  traffic.go:97		0xe361a4		c644243e00		MOVB $0x0, 0x3e(SP)									
  traffic.go:98		0xe361a9		4885c0			TESTQ AX, AX										
  traffic.go:98		0xe361ac		0f8477010000		JE 0xe36329										
  traffic.go:98		0xe361b2		4885c9			TESTQ CX, CX										
  traffic.go:98		0xe361b5		0f846e010000		JE 0xe36329										
  traffic.go:98		0xe361bb		0f1f440000		NOPL 0(AX)(AX*1)									
  traffic.go:98		0xe361c0		4885f6			TESTQ SI, SI										
  traffic.go:98		0xe361c3		0f8460010000		JE 0xe36329										
  traffic.go:98		0xe361c9		4889842420010000	MOVQ AX, 0x120(SP)									
  traffic.go:98		0xe361d1		4889b42440010000	MOVQ SI, 0x140(SP)									
  traffic.go:98		0xe361d9		48898c2430010000	MOVQ CX, 0x130(SP)									
  traffic.go:98		0xe361e1		48899c2428010000	MOVQ BX, 0x128(SP)									
  traffic.go:98		0xe361e9		4889bc2438010000	MOVQ DI, 0x138(SP)									
  traffic.go:98		0xe361f1		4c898c2450010000	MOVQ R9, 0x150(SP)									
  traffic.go:98		0xe361f9		4c89842448010000	MOVQ R8, 0x148(SP)									
  traffic.go:35		0xe36201		4889d8			MOVQ BX, AX										
  traffic.go:35		0xe36204		4889cb			MOVQ CX, BX										
  traffic.go:35		0xe36207		4889f9			MOVQ DI, CX										
  traffic.go:35		0xe3620a		4889f7			MOVQ SI, DI										
  traffic.go:35		0xe3620d		e86ec85cff		CALL runtime.cmpstring(SB)								
  traffic.go:35		0xe36212		4885c0			TESTQ AX, AX										
  traffic.go:35		0xe36215		7d38			JGE 0xe3624f										
  traffic.go:36		0xe36217		488d442460		LEAQ 0x60(SP), AX									
  traffic.go:36		0xe3621c		488b9c2428010000	MOVQ 0x128(SP), BX									
  traffic.go:36		0xe36224		488b8c2430010000	MOVQ 0x130(SP), CX									
  traffic.go:36		0xe3622c		488d3dd7223300		LEAQ go:string.*+2(SB), DI								
  traffic.go:36		0xe36233		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic.go:36		0xe36238		4c8b842438010000	MOVQ 0x138(SP), R8									
  traffic.go:36		0xe36240		4c8b8c2440010000	MOVQ 0x140(SP), R9									
  traffic.go:36		0xe36248		e853f261ff		CALL runtime.concatstring3(SB)								
  traffic.go:101	0xe3624d		eb36			JMP 0xe36285										
  traffic.go:38		0xe3624f		488d442440		LEAQ 0x40(SP), AX									
  traffic.go:38		0xe36254		488b9c2438010000	MOVQ 0x138(SP), BX									
  traffic.go:38		0xe3625c		488b8c2440010000	MOVQ 0x140(SP), CX									
  traffic.go:38		0xe36264		488d3d9f223300		LEAQ go:string.*+2(SB), DI								
  traffic.go:38		0xe3626b		be01000000		MOVL $__minor_os_version__(SB), SI							
  traffic.go:38		0xe36270		4c8b842428010000	MOVQ 0x128(SP), R8									
  traffic.go:38		0xe36278		4c8b8c2430010000	MOVQ 0x130(SP), R9									
  traffic.go:38		0xe36280		e81bf261ff		CALL runtime.concatstring3(SB)								
  traffic.go:101	0xe36285		48899c2480000000	MOVQ BX, 0x80(SP)									
  traffic.go:101	0xe3628d		4889842488000000	MOVQ AX, 0x88(SP)									
  traffic.go:102	0xe36295		90			NOPL											
  type.go:88		0xe36296		ba01000000		MOVL $__minor_os_version__(SB), DX							
  type.go:88		0xe3629b		488bb42420010000	MOVQ 0x120(SP), SI									
  type.go:88		0xe362a3		f00fc15610		LOCK XADDL DX, 0x10(SI)									
  type.go:88		0xe362a8		ffc2			INCL DX											
  rwmutex.go:70		0xe362aa		85d2			TESTL DX, DX										
  rwmutex.go:70		0xe362ac		7d15			JGE 0xe362c3										
  rwmutex.go:72		0xe362ae		488d460c		LEAQ 0xc(SI), AX									
  rwmutex.go:72		0xe362b2		31db			XORL BX, BX										
  rwmutex.go:72		0xe362b4		31c9			XORL CX, CX										
  rwmutex.go:72		0xe362b6		e8a5b263ff		CALL sync.runtime_SemacquireRWMutexR(SB)						
  traffic.go:103	0xe362bb		488bb42420010000	MOVQ 0x120(SP), SI									
  traffic.go:103	0xe362c3		488d15b6010000		LEAQ CAS-Backend/pkg/diapdu.(*TrafficManager).isEdgeLockedByOther.deferwrap1(SB), DX	
  traffic.go:103	0xe362ca		4889942498000000	MOVQ DX, 0x98(SP)									
  traffic.go:103	0xe362d2		4889b424a0000000	MOVQ SI, 0xa0(SP)									
  traffic.go:103	0xe362da		488d942498000000	LEAQ 0x98(SP), DX									
  traffic.go:103	0xe362e2		4889942408010000	MOVQ DX, 0x108(SP)									
  traffic.go:103	0xe362ea		c644243f01		MOVB $__minor_os_version__(SB), 0x3f(SP)						
  traffic.go:104	0xe362ef		488b5e18		MOVQ 0x18(SI), BX									
  traffic.go:104	0xe362f3		488dbc24a8000000	LEAQ 0xa8(SP), DI									
  traffic.go:104	0xe362fb		488d7fe0		LEAQ -0x20(DI), DI									
  traffic.go:104	0xe362ff		90			NOPL											
  traffic.go:104	0xe36300		48896c24f0		MOVQ BP, -0x10(SP)									
  traffic.go:104	0xe36305		488d6c24f0		LEAQ -0x10(SP), BP									
  traffic.go:104	0xe3630a		e8dc2764ff		CALL 0x478aeb										
  traffic.go:104	0xe3630f		488b6d00		MOVQ 0(BP), BP										
  traffic.go:104	0xe36313		488d0546742400		LEAQ runtime.types+624480(SB), AX							
  traffic.go:104	0xe3631a		488d8c24a8000000	LEAQ 0xa8(SP), CX									
  traffic.go:104	0xe36322		e8f95963ff		CALL runtime.mapiterinit(SB)								
  traffic.go:104	0xe36327		eb1d			JMP 0xe36346										
  traffic.go:99		0xe36329		c644243e00		MOVB $0x0, 0x3e(SP)									
  traffic.go:99		0xe3632e		31c0			XORL AX, AX										
  traffic.go:99		0xe36330		4881c410010000		ADDQ $.file+195(SB), SP									
  traffic.go:99		0xe36337		5d			POPQ BP											
  traffic.go:99		0xe36338		c3			RET											
  traffic.go:104	0xe36339		488d8424a8000000	LEAQ 0xa8(SP), AX									
  traffic.go:104	0xe36341		e8fa5b63ff		CALL runtime.mapiternext(SB)								
  traffic.go:104	0xe36346		488bb424a8000000	MOVQ 0xa8(SP), SI									
  traffic.go:104	0xe3634e		4885f6			TESTQ SI, SI										
  traffic.go:104	0xe36351		0f849b000000		JE 0xe363f2										
  traffic.go:104	0xe36357		488b4e08		MOVQ 0x8(SI), CX									
  traffic.go:104	0xe3635b		488b9424b0000000	MOVQ 0xb0(SP), DX									
  traffic.go:104	0xe36363		488b12			MOVQ 0(DX), DX										
  traffic.go:105	0xe36366		4c8b842450010000	MOVQ 0x150(SP), R8									
  traffic.go:105	0xe3636e		4939c8			CMPQ R8, CX										
  traffic.go:105	0xe36371		752d			JNE 0xe363a0										
  traffic.go:104	0xe36373		4889942490000000	MOVQ DX, 0x90(SP)									
  traffic.go:104	0xe3637b		488b06			MOVQ 0(SI), AX										
  traffic.go:105	0xe3637e		488b9c2448010000	MOVQ 0x148(SP), BX									
  traffic.go:105	0xe36386		e8d5ca5cff		CALL runtime.memequal(SB)								
  traffic.go:105	0xe3638b		84c0			TESTL AL, AL										
  traffic.go:105	0xe3638d		75aa			JNE 0xe36339										
  traffic.go:108	0xe3638f		488b942490000000	MOVQ 0x90(SP), DX									
  traffic.go:105	0xe36397		4c8b842450010000	MOVQ 0x150(SP), R8									
  traffic.go:105	0xe3639f		90			NOPL											
  traffic.go:108	0xe363a0		4885d2			TESTQ DX, DX										
  traffic.go:108	0xe363a3		7494			JE 0xe36339										
  traffic.go:111	0xe363a5		488b5a08		MOVQ 0x8(DX), BX									
  traffic.go:111	0xe363a9		488d0530722400		LEAQ runtime.types+624096(SB), AX							
  traffic.go:111	0xe363b0		488b8c2488000000	MOVQ 0x88(SP), CX									
  traffic.go:111	0xe363b8		488bbc2480000000	MOVQ 0x80(SP), DI									
  traffic.go:111	0xe363c0		e87b7863ff		CALL runtime.mapaccess2_faststr(SB)							
  traffic.go:111	0xe363c5		84db			TESTL BL, BL										
  traffic.go:111	0xe363c7		0f846cffffff		JE 0xe36339										
  traffic.go:112	0xe363cd		c644243e01		MOVB $__minor_os_version__(SB), 0x3e(SP)						
  traffic.go:112	0xe363d2		c644243f00		MOVB $0x0, 0x3f(SP)									
  traffic.go:112	0xe363d7		488b942408010000	MOVQ 0x108(SP), DX									
  traffic.go:112	0xe363df		488b02			MOVQ 0(DX), AX										
  traffic.go:112	0xe363e2		ffd0			CALL AX											
  traffic.go:112	0xe363e4		0fb644243e		MOVZX 0x3e(SP), AX									
  traffic.go:112	0xe363e9		4881c410010000		ADDQ $.file+195(SB), SP									
  traffic.go:112	0xe363f0		5d			POPQ BP											
  traffic.go:112	0xe363f1		c3			RET											
  traffic.go:115	0xe363f2		c644243e00		MOVB $0x0, 0x3e(SP)									
  traffic.go:115	0xe363f7		c644243f00		MOVB $0x0, 0x3f(SP)									
  traffic.go:115	0xe363fc		488b942408010000	MOVQ 0x108(SP), DX									
  traffic.go:115	0xe36404		488b02			MOVQ 0(DX), AX										
  traffic.go:115	0xe36407		ffd0			CALL AX											
  traffic.go:115	0xe36409		0fb644243e		MOVZX 0x3e(SP), AX									
  traffic.go:115	0xe3640e		4881c410010000		ADDQ $.file+195(SB), SP									
  traffic.go:115	0xe36415		5d			POPQ BP											
  traffic.go:115	0xe36416		c3			RET											
  traffic.go:115	0xe36417		e8643760ff		CALL runtime.deferreturn(SB)								
  traffic.go:115	0xe3641c		0fb644243e		MOVZX 0x3e(SP), AX									
  traffic.go:115	0xe36421		4881c410010000		ADDQ $.file+195(SB), SP									
  traffic.go:115	0xe36428		5d			POPQ BP											
  traffic.go:115	0xe36429		c3			RET											
  traffic.go:97		0xe3642a		4889442408		MOVQ AX, 0x8(SP)									
  traffic.go:97		0xe3642f		48895c2410		MOVQ BX, 0x10(SP)									
  traffic.go:97		0xe36434		48894c2418		MOVQ CX, 0x18(SP)									
  traffic.go:97		0xe36439		48897c2420		MOVQ DI, 0x20(SP)									
  traffic.go:97		0xe3643e		4889742428		MOVQ SI, 0x28(SP)									
  traffic.go:97		0xe36443		4c89442430		MOVQ R8, 0x30(SP)									
  traffic.go:97		0xe36448		4c894c2438		MOVQ R9, 0x38(SP)									
  traffic.go:97		0xe3644d		e88e0064ff		CALL runtime.morestack_noctxt.abi0(SB)							
  traffic.go:97		0xe36452		488b442408		MOVQ 0x8(SP), AX									
  traffic.go:97		0xe36457		488b5c2410		MOVQ 0x10(SP), BX									
  traffic.go:97		0xe3645c		488b4c2418		MOVQ 0x18(SP), CX									
  traffic.go:97		0xe36461		488b7c2420		MOVQ 0x20(SP), DI									
  traffic.go:97		0xe36466		488b742428		MOVQ 0x28(SP), SI									
  traffic.go:97		0xe3646b		4c8b442430		MOVQ 0x30(SP), R8									
  traffic.go:97		0xe36470		4c8b4c2438		MOVQ 0x38(SP), R9									
  traffic.go:97		0xe36475		e9e6fcffff		JMP CAS-Backend/pkg/diapdu.(*TrafficManager).isEdgeLockedByOther(SB)			
  :-1			0xe3647a		cc			INT $__subsystem__(SB)									
  :-1			0xe3647b		cc			INT $__subsystem__(SB)									
  :-1			0xe3647c		cc			INT $__subsystem__(SB)									
  :-1			0xe3647d		cc			INT $__subsystem__(SB)									
  :-1			0xe3647e		cc			INT $__subsystem__(SB)									
  :-1			0xe3647f		cc			INT $__subsystem__(SB)									

TEXT CAS-Backend/pkg/diapdu.(*TrafficManager).isEdgeLockedByOther.deferwrap1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic.go
  traffic.go:103	0xe36480		493b6610		CMPQ SP, 0x10(R14)								
  traffic.go:103	0xe36484		7630			JBE 0xe364b6									
  traffic.go:103	0xe36486		55			PUSHQ BP									
  traffic.go:103	0xe36487		4889e5			MOVQ SP, BP									
  traffic.go:103	0xe3648a		4883ec10		SUBQ $__major_os_version__+10(SB), SP						
  traffic.go:103	0xe3648e		4d8b6620		MOVQ 0x20(R14), R12								
  traffic.go:103	0xe36492		4d85e4			TESTQ R12, R12									
  traffic.go:103	0xe36495		7526			JNE 0xe364bd									
  traffic.go:103	0xe36497		488b4208		MOVQ 0x8(DX), AX								
  rwmutex.go:118	0xe3649b		bbffffffff		MOVL $-0x1, BX									
  rwmutex.go:118	0xe364a0		f00fc15810		LOCK XADDL BX, 0x10(AX)								
  type.go:88		0xe364a5		ffcb			DECL BX										
  rwmutex.go:118	0xe364a7		85db			TESTL BX, BX									
  rwmutex.go:118	0xe364a9		7d05			JGE 0xe364b0									
  rwmutex.go:120	0xe364ab		e8902965ff		CALL sync.(*RWMutex).rUnlockSlow(SB)						
  traffic.go:103	0xe364b0		4883c410		ADDQ $__major_os_version__+10(SB), SP						
  traffic.go:103	0xe364b4		5d			POPQ BP										
  traffic.go:103	0xe364b5		c3			RET										
  traffic.go:103	0xe364b6		e8a5ff63ff		CALL runtime.morestack.abi0(SB)							
  traffic.go:103	0xe364bb		ebc3			JMP CAS-Backend/pkg/diapdu.(*TrafficManager).isEdgeLockedByOther.deferwrap1(SB)	
  traffic.go:103	0xe364bd		4c8d6c2420		LEAQ 0x20(SP), R13								
  traffic.go:103	0xe364c2		4d392c24		CMPQ 0(R12), R13								
  traffic.go:103	0xe364c6		75cf			JNE 0xe36497									
  traffic.go:103	0xe364c8		49892424		MOVQ SP, 0(R12)									
  traffic.go:103	0xe364cc		ebc9			JMP 0xe36497									
  :-1			0xe364ce		cc			INT $__subsystem__(SB)								
  :-1			0xe364cf		cc			INT $__subsystem__(SB)								
  :-1			0xe364d0		cc			INT $__subsystem__(SB)								
  :-1			0xe364d1		cc			INT $__subsystem__(SB)								
  :-1			0xe364d2		cc			INT $__subsystem__(SB)								
  :-1			0xe364d3		cc			INT $__subsystem__(SB)								
  :-1			0xe364d4		cc			INT $__subsystem__(SB)								
  :-1			0xe364d5		cc			INT $__subsystem__(SB)								
  :-1			0xe364d6		cc			INT $__subsystem__(SB)								
  :-1			0xe364d7		cc			INT $__subsystem__(SB)								
  :-1			0xe364d8		cc			INT $__subsystem__(SB)								
  :-1			0xe364d9		cc			INT $__subsystem__(SB)								
  :-1			0xe364da		cc			INT $__subsystem__(SB)								
  :-1			0xe364db		cc			INT $__subsystem__(SB)								
  :-1			0xe364dc		cc			INT $__subsystem__(SB)								
  :-1			0xe364dd		cc			INT $__subsystem__(SB)								
  :-1			0xe364de		cc			INT $__subsystem__(SB)								
  :-1			0xe364df		cc			INT $__subsystem__(SB)								

TEXT CAS-Backend/pkg/diapdu.closestNodeTo(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic.go
  traffic.go:120	0xe364e0		4885c0			TESTQ AX, AX				
  traffic.go:120	0xe364e3		741a			JE 0xe364ff				
  traffic.go:120	0xe364e5		488b4808		MOVQ 0x8(AX), CX			
  traffic.go:120	0xe364e9		4885c9			TESTQ CX, CX				
  traffic.go:120	0xe364ec		7411			JE 0xe364ff				
  traffic.go:120	0xe364ee		488b10			MOVQ 0(AX), DX				
  traffic.go:120	0xe364f1		31c0			XORL AX, AX				
  traffic.go:120	0xe364f3		f20f1015a5130302	MOVSD_XMM $f64.7fefffffffffffff(SB), X2	
  traffic.go:120	0xe364fb		31db			XORL BX, BX				
  traffic.go:126	0xe364fd		eb0c			JMP 0xe3650b				
  traffic.go:121	0xe364ff		31c0			XORL AX, AX				
  traffic.go:121	0xe36501		c3			RET					
  traffic.go:126	0xe36502		48ffc0			INCQ AX					
  traffic.go:131	0xe36505		0f10d3			MOVUPS X3, X2				
  traffic.go:136	0xe36508		4889f3			MOVQ SI, BX				
  traffic.go:126	0xe3650b		4839c8			CMPQ AX, CX				
  traffic.go:126	0xe3650e		7d42			JGE 0xe36552				
  traffic.go:126	0xe36510		488b34c2		MOVQ 0(DX)(AX*8), SI			
  traffic.go:127	0xe36514		4885f6			TESTQ SI, SI				
  traffic.go:127	0xe36517		7431			JE 0xe3654a				
  traffic.go:130	0xe36519		f20f105e10		MOVSD_XMM 0x10(SI), X3			
  traffic.go:130	0xe3651e		f20f106618		MOVSD_XMM 0x18(SI), X4			
  diaodu.go:319		0xe36523		f20f5cd8		SUBSD X0, X3				
  diaodu.go:320		0xe36527		f20f5ce1		SUBSD X1, X4				
  diaodu.go:321		0xe3652b		f20f59db		MULSD X3, X3				
  diaodu.go:321		0xe3652f		f20f59e4		MULSD X4, X4				
  diaodu.go:321		0xe36533		f20f58dc		ADDSD X4, X3				
  sqrt.go:94		0xe36537		f20f51db		SQRTSD X3, X3				
  traffic.go:131	0xe3653b		660f2ed3		UCOMISD X3, X2				
  traffic.go:131	0xe3653f		90			NOPL					
  traffic.go:131	0xe36540		77c0			JA 0xe36502				
  traffic.go:131	0xe36542		0f10da			MOVUPS X2, X3				
  traffic.go:136	0xe36545		4889de			MOVQ BX, SI				
  traffic.go:131	0xe36548		ebb8			JMP 0xe36502				
  traffic.go:131	0xe3654a		0f10da			MOVUPS X2, X3				
  traffic.go:136	0xe3654d		4889de			MOVQ BX, SI				
  traffic.go:128	0xe36550		ebb0			JMP 0xe36502				
  traffic.go:136	0xe36552		4889d8			MOVQ BX, AX				
  traffic.go:136	0xe36555		c3			RET					
  :-1			0xe36556		cc			INT $__subsystem__(SB)			
  :-1			0xe36557		cc			INT $__subsystem__(SB)			
  :-1			0xe36558		cc			INT $__subsystem__(SB)			
  :-1			0xe36559		cc			INT $__subsystem__(SB)			
  :-1			0xe3655a		cc			INT $__subsystem__(SB)			
  :-1			0xe3655b		cc			INT $__subsystem__(SB)			
  :-1			0xe3655c		cc			INT $__subsystem__(SB)			
  :-1			0xe3655d		cc			INT $__subsystem__(SB)			
  :-1			0xe3655e		cc			INT $__subsystem__(SB)			
  :-1			0xe3655f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic.go
  traffic.go:164	0xe36560		4c8da424a0faffff	LEAQ 0xfffffaa0(SP), R12						
  traffic.go:164	0xe36568		4d3b6610		CMPQ R12, 0x10(R14)							
  traffic.go:164	0xe3656c		0f86c70e0000		JBE 0xe37439								
  traffic.go:164	0xe36572		55			PUSHQ BP								
  traffic.go:164	0xe36573		4889e5			MOVQ SP, BP								
  traffic.go:164	0xe36576		4881ecd8050000		SUBQ $__file_alignment__+984(SB), SP					
  traffic.go:164	0xe3657d		48898c24f8050000	MOVQ CX, 0x5f8(SP)							
  traffic.go:164	0xe36585		4889b42408060000	MOVQ SI, 0x608(SP)							
  traffic.go:164	0xe3658d		4c898c2418060000	MOVQ R9, 0x618(SP)							
  traffic.go:165	0xe36595		4885c0			TESTQ AX, AX								
  traffic.go:165	0xe36598		0f8487020000		JE 0xe36825								
  traffic.go:165	0xe3659e		6690			NOPW									
  traffic.go:165	0xe365a0		4d85c0			TESTQ R8, R8								
  traffic.go:165	0xe365a3		0f847c020000		JE 0xe36825								
  traffic.go:165	0xe365a9		4d85d2			TESTQ R10, R10								
  traffic.go:165	0xe365ac		0f8473020000		JE 0xe36825								
  traffic.go:165	0xe365b2		48898424e8050000	MOVQ AX, 0x5e8(SP)							
  traffic.go:165	0xe365ba		48899c24f0050000	MOVQ BX, 0x5f0(SP)							
  traffic.go:165	0xe365c2		4c89942420060000	MOVQ R10, 0x620(SP)							
  traffic.go:165	0xe365ca		4c898c2418060000	MOVQ R9, 0x618(SP)							
  traffic.go:165	0xe365d2		4c89842410060000	MOVQ R8, 0x610(SP)							
  traffic.go:165	0xe365da		4889b42408060000	MOVQ SI, 0x608(SP)							
  traffic.go:165	0xe365e2		4889bc2400060000	MOVQ DI, 0x600(SP)							
  traffic.go:165	0xe365ea		48898c24f8050000	MOVQ CX, 0x5f8(SP)							
  traffic.go:168	0xe365f2		4d39d0			CMPQ R8, R10								
  traffic.go:168	0xe365f5		7556			JNE 0xe3664d								
  traffic.go:168	0xe365f7		4889f0			MOVQ SI, AX								
  traffic.go:168	0xe365fa		4c89cb			MOVQ R9, BX								
  traffic.go:168	0xe365fd		4c89c1			MOVQ R8, CX								
  traffic.go:168	0xe36600		e85bc85cff		CALL runtime.memequal(SB)						
  traffic.go:168	0xe36605		84c0			TESTL AL, AL								
  traffic.go:168	0xe36607		0f8574010000		JNE 0xe36781								
  traffic.go:188	0xe3660d		488b8424e8050000	MOVQ 0x5e8(SP), AX							
  traffic.go:175	0xe36615		488b8c24f8050000	MOVQ 0x5f8(SP), CX							
  traffic.go:175	0xe3661d		488b9c24f0050000	MOVQ 0x5f0(SP), BX							
  traffic.go:175	0xe36625		488bb42408060000	MOVQ 0x608(SP), SI							
  traffic.go:175	0xe3662d		488bbc2400060000	MOVQ 0x600(SP), DI							
  traffic.go:175	0xe36635		4c8b842410060000	MOVQ 0x610(SP), R8							
  traffic.go:178	0xe3663d		4c8b8c2418060000	MOVQ 0x618(SP), R9							
  traffic.go:178	0xe36645		4c8b942420060000	MOVQ 0x620(SP), R10							
  traffic.go:175	0xe3664d		4885db			TESTQ BX, BX								
  traffic.go:175	0xe36650		7467			JE 0xe366b9								
  traffic.go:175	0xe36652		4889d8			MOVQ BX, AX								
  traffic.go:175	0xe36655		4889f3			MOVQ SI, BX								
  traffic.go:175	0xe36658		4889fe			MOVQ DI, SI								
  traffic.go:175	0xe3665b		4889cf			MOVQ CX, DI								
  traffic.go:175	0xe3665e		4c89c1			MOVQ R8, CX								
  traffic.go:175	0xe36661		e83af8ffff		CALL CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther(SB)	
  traffic.go:175	0xe36666		84c0			TESTL AL, AL								
  traffic.go:175	0xe36668		0f85fd000000		JNE 0xe3676b								
  traffic.go:175	0xe3666e		488b8424f0050000	MOVQ 0x5f0(SP), AX							
  traffic.go:175	0xe36676		4885c0			TESTQ AX, AX								
  traffic.go:188	0xe36679		488b8424e8050000	MOVQ 0x5e8(SP), AX							
  traffic.go:178	0xe36681		488b8c24f8050000	MOVQ 0x5f8(SP), CX							
  traffic.go:178	0xe36689		488b9c24f0050000	MOVQ 0x5f0(SP), BX							
  traffic.go:204	0xe36691		488bb42408060000	MOVQ 0x608(SP), SI							
  traffic.go:178	0xe36699		488bbc2400060000	MOVQ 0x600(SP), DI							
  traffic.go:204	0xe366a1		4c8b842410060000	MOVQ 0x610(SP), R8							
  traffic.go:178	0xe366a9		4c8b8c2418060000	MOVQ 0x618(SP), R9							
  traffic.go:178	0xe366b1		4c8b942420060000	MOVQ 0x620(SP), R10							
  traffic.go:178	0xe366b9		741c			JE 0xe366d7								
  traffic.go:178	0xe366bb		4889d8			MOVQ BX, AX								
  traffic.go:178	0xe366be		4c89cb			MOVQ R9, BX								
  traffic.go:178	0xe366c1		4889fe			MOVQ DI, SI								
  traffic.go:178	0xe366c4		4889cf			MOVQ CX, DI								
  traffic.go:178	0xe366c7		4c89d1			MOVQ R10, CX								
  traffic.go:178	0xe366ca		e8d1f7ffff		CALL CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther(SB)	
  traffic.go:178	0xe366cf		84c0			TESTL AL, AL								
  traffic.go:178	0xe366d1		0f857f000000		JNE 0xe36756								
  traffic.go:187	0xe366d7		440f11bc2420050000	MOVUPS X15, 0x520(SP)							
  traffic.go:187	0xe366e0		440f11bc2430050000	MOVUPS X15, 0x530(SP)							
  traffic.go:187	0xe366e9		440f11bc2440050000	MOVUPS X15, 0x540(SP)							
  traffic.go:187	0xe366f2		488dbc24d0030000	LEAQ 0x3d0(SP), DI							
  traffic.go:187	0xe366fa		488d7fd0		LEAQ -0x30(DI), DI							
  traffic.go:187	0xe366fe		6690			NOPW									
  traffic.go:187	0xe36700		48896c24f0		MOVQ BP, -0x10(SP)							
  traffic.go:187	0xe36705		488d6c24f0		LEAQ -0x10(SP), BP							
  traffic.go:187	0xe3670a		e8852364ff		CALL 0x478a94								
  traffic.go:187	0xe3670f		488b6d00		MOVQ 0(BP), BP								
  traffic.go:187	0xe36713		488d8424d0030000	LEAQ 0x3d0(SP), AX							
  traffic.go:187	0xe3671b		4889842430050000	MOVQ AX, 0x530(SP)							
  traffic.go:187	0xe36723		e8586661ff		CALL runtime.rand32(SB)							
  traffic.go:187	0xe36728		8984242c050000		MOVL AX, 0x52c(SP)							
  traffic.go:188	0xe3672f		488b8424e8050000	MOVQ 0x5e8(SP), AX							
  traffic.go:188	0xe36737		488b4818		MOVQ 0x18(AX), CX							
  traffic.go:188	0xe3673b		48898c24d0050000	MOVQ CX, 0x5d0(SP)							
  traffic.go:188	0xe36743		488b4020		MOVQ 0x20(AX), AX							
  traffic.go:188	0xe36747		4889842490000000	MOVQ AX, 0x90(SP)							
  traffic.go:188	0xe3674f		31d2			XORL DX, DX								
  traffic.go:188	0xe36751		e9ea000000		JMP 0xe36840								
  traffic.go:179	0xe36756		31c0			XORL AX, AX								
  traffic.go:179	0xe36758		31db			XORL BX, BX								
  traffic.go:179	0xe3675a		4889d9			MOVQ BX, CX								
  traffic.go:179	0xe3675d		0f57c0			XORPS X0, X0								
  traffic.go:179	0xe36760		31ff			XORL DI, DI								
  traffic.go:179	0xe36762		4881c4d8050000		ADDQ $__file_alignment__+984(SB), SP					
  traffic.go:179	0xe36769		5d			POPQ BP									
  traffic.go:179	0xe3676a		c3			RET									
  traffic.go:176	0xe3676b		31c0			XORL AX, AX								
  traffic.go:176	0xe3676d		31db			XORL BX, BX								
  traffic.go:176	0xe3676f		4889d9			MOVQ BX, CX								
  traffic.go:176	0xe36772		0f57c0			XORPS X0, X0								
  traffic.go:176	0xe36775		31ff			XORL DI, DI								
  traffic.go:176	0xe36777		4881c4d8050000		ADDQ $__file_alignment__+984(SB), SP					
  traffic.go:176	0xe3677e		5d			POPQ BP									
  traffic.go:176	0xe3677f		90			NOPL									
  traffic.go:176	0xe36780		c3			RET									
  traffic.go:169	0xe36781		488b8424f0050000	MOVQ 0x5f0(SP), AX							
  traffic.go:169	0xe36789		4885c0			TESTQ AX, AX								
  traffic.go:169	0xe3678c		7429			JE 0xe367b7								
  traffic.go:169	0xe3678e		488b9c2408060000	MOVQ 0x608(SP), BX							
  traffic.go:169	0xe36796		488b8c2410060000	MOVQ 0x610(SP), CX							
  traffic.go:169	0xe3679e		488bbc24f8050000	MOVQ 0x5f8(SP), DI							
  traffic.go:169	0xe367a6		488bb42400060000	MOVQ 0x600(SP), SI							
  traffic.go:169	0xe367ae		e8edf6ffff		CALL CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther(SB)	
  traffic.go:169	0xe367b3		84c0			TESTL AL, AL								
  traffic.go:169	0xe367b5		7559			JNE 0xe36810								
  traffic.go:172	0xe367b7		488d0542772100		LEAQ runtime.types+429824(SB), AX					
  traffic.go:172	0xe367be		6690			NOPW									
  traffic.go:172	0xe367c0		e8dbaf5dff		CALL runtime.newobject(SB)						
  traffic.go:172	0xe367c5		488b8c2410060000	MOVQ 0x610(SP), CX							
  traffic.go:172	0xe367cd		48894808		MOVQ CX, 0x8(AX)							
  traffic.go:172	0xe367d1		833d7873720200		CMPL runtime.writeBarrier(SB), $0x0					
  traffic.go:172	0xe367d8		750a			JNE 0xe367e4								
  traffic.go:172	0xe367da		488b942408060000	MOVQ 0x608(SP), DX							
  traffic.go:172	0xe367e2		eb10			JMP 0xe367f4								
  traffic.go:172	0xe367e4		e8371c64ff		CALL runtime.gcWriteBarrier1(SB)					
  traffic.go:172	0xe367e9		488b942408060000	MOVQ 0x608(SP), DX							
  traffic.go:172	0xe367f1		498913			MOVQ DX, 0(R11)								
  traffic.go:172	0xe367f4		488910			MOVQ DX, 0(AX)								
  traffic.go:172	0xe367f7		bb01000000		MOVL $__minor_os_version__(SB), BX					
  traffic.go:172	0xe367fc		4889d9			MOVQ BX, CX								
  traffic.go:172	0xe367ff		0f57c0			XORPS X0, X0								
  traffic.go:172	0xe36802		bf01000000		MOVL $__minor_os_version__(SB), DI					
  traffic.go:172	0xe36807		4881c4d8050000		ADDQ $__file_alignment__+984(SB), SP					
  traffic.go:172	0xe3680e		5d			POPQ BP									
  traffic.go:172	0xe3680f		c3			RET									
  traffic.go:170	0xe36810		31c0			XORL AX, AX								
  traffic.go:170	0xe36812		31db			XORL BX, BX								
  traffic.go:170	0xe36814		4889d9			MOVQ BX, CX								
  traffic.go:170	0xe36817		0f57c0			XORPS X0, X0								
  traffic.go:170	0xe3681a		31ff			XORL DI, DI								
  traffic.go:170	0xe3681c		4881c4d8050000		ADDQ $__file_alignment__+984(SB), SP					
  traffic.go:170	0xe36823		5d			POPQ BP									
  traffic.go:170	0xe36824		c3			RET									
  traffic.go:166	0xe36825		31c0			XORL AX, AX								
  traffic.go:166	0xe36827		31db			XORL BX, BX								
  traffic.go:166	0xe36829		4889d9			MOVQ BX, CX								
  traffic.go:166	0xe3682c		0f57c0			XORPS X0, X0								
  traffic.go:166	0xe3682f		31ff			XORL DI, DI								
  traffic.go:166	0xe36831		4881c4d8050000		ADDQ $__file_alignment__+984(SB), SP					
  traffic.go:166	0xe36838		5d			POPQ BP									
  traffic.go:166	0xe36839		c3			RET									
  traffic.go:188	0xe3683a		48ffc2			INCQ DX									
  traffic.go:188	0xe3683d		0f1f00			NOPL 0(AX)								
  traffic.go:188	0xe36840		4839c2			CMPQ DX, AX								
  traffic.go:188	0xe36843		0f8d1c020000		JGE 0xe36a65								
  traffic.go:188	0xe36849		488b34d1		MOVQ 0(CX)(DX*8), SI							
  traffic.go:189	0xe3684d		4885f6			TESTQ SI, SI								
  traffic.go:189	0xe36850		74e8			JE 0xe3683a								
  traffic.go:189	0xe36852		48837e2800		CMPQ 0x28(SI), $0x0							
  traffic.go:189	0xe36857		7ee1			JLE 0xe3683a								
  traffic.go:188	0xe36859		4889942488000000	MOVQ DX, 0x88(SP)							
  traffic.go:188	0xe36861		4889b424a8000000	MOVQ SI, 0xa8(SP)							
  traffic.go:192	0xe36869		488b7e08		MOVQ 0x8(SI), DI							
  traffic.go:192	0xe3686d		48897c2478		MOVQ DI, 0x78(SP)							
  traffic.go:192	0xe36872		488b0e			MOVQ 0(SI), CX								
  traffic.go:192	0xe36875		48898c24c0000000	MOVQ CX, 0xc0(SP)							
  traffic.go:192	0xe3687d		488b5610		MOVQ 0x10(SI), DX							
  traffic.go:192	0xe36881		48899424b8000000	MOVQ DX, 0xb8(SP)							
  traffic.go:192	0xe36889		4c8b4618		MOVQ 0x18(SI), R8							
  traffic.go:192	0xe3688d		4c89442470		MOVQ R8, 0x70(SP)							
  traffic.go:193	0xe36892		f20f104620		MOVSD_XMM 0x20(SI), X0							
  traffic.go:193	0xe36897		f20f11842480000000	MOVSD_XMM X0, 0x80(SP)							
  traffic.go:193	0xe368a0		488d05d96f2400		LEAQ runtime.types+624768(SB), AX					
  traffic.go:193	0xe368a7		488d9c2420050000	LEAQ 0x520(SP), BX							
  traffic.go:193	0xe368af		e86c7763ff		CALL runtime.mapassign_faststr(SB)					
  traffic.go:193	0xe368b4		488b4810		MOVQ 0x10(AX), CX							
  traffic.go:193	0xe368b8		488b5808		MOVQ 0x8(AX), BX							
  traffic.go:193	0xe368bc		48ffc3			INCQ BX									
  traffic.go:193	0xe368bf		488b10			MOVQ 0(AX), DX								
  traffic.go:193	0xe368c2		4839d9			CMPQ CX, BX								
  traffic.go:193	0xe368c5		734e			JAE 0xe36915								
  traffic.go:193	0xe368c7		48898424c8050000	MOVQ AX, 0x5c8(SP)							
  traffic.go:193	0xe368cf		4889d0			MOVQ DX, AX								
  traffic.go:193	0xe368d2		bf01000000		MOVL $__minor_os_version__(SB), DI					
  traffic.go:193	0xe368d7		488d3522592800		LEAQ runtime.types+881152(SB), SI					
  traffic.go:193	0xe368de		6690			NOPW									
  traffic.go:193	0xe368e0		e85bb363ff		CALL runtime.growslice(SB)						
  traffic.go:193	0xe368e5		488b9424c8050000	MOVQ 0x5c8(SP), DX							
  traffic.go:193	0xe368ed		48894a10		MOVQ CX, 0x10(DX)							
  traffic.go:193	0xe368f1		833d5872720200		CMPL runtime.writeBarrier(SB), $0x0					
  traffic.go:193	0xe368f8		740f			JE 0xe36909								
  traffic.go:193	0xe368fa		e8411b64ff		CALL runtime.gcWriteBarrier2(SB)					
  traffic.go:193	0xe368ff		498903			MOVQ AX, 0(R11)								
  traffic.go:193	0xe36902		488b32			MOVQ 0(DX), SI								
  traffic.go:193	0xe36905		49897308		MOVQ SI, 0x8(R11)							
  traffic.go:193	0xe36909		488902			MOVQ AX, 0(DX)								
  traffic.go:193	0xe3690c		4889c1			MOVQ AX, CX								
  traffic.go:193	0xe3690f		4889d0			MOVQ DX, AX								
  traffic.go:193	0xe36912		4889ca			MOVQ CX, DX								
  traffic.go:193	0xe36915		48895808		MOVQ BX, 0x8(AX)							
  traffic.go:193	0xe36919		488d345b		LEAQ 0(BX)(BX*2), SI							
  traffic.go:193	0xe3691d		488b7c2470		MOVQ 0x70(SP), DI							
  traffic.go:193	0xe36922		48897cf2f0		MOVQ DI, -0x10(DX)(SI*8)						
  traffic.go:193	0xe36927		f20f10842480000000	MOVSD_XMM 0x80(SP), X0							
  traffic.go:193	0xe36930		f20f1144f2f8		MOVSD_XMM X0, -0x8(DX)(SI*8)						
  traffic.go:193	0xe36936		833d1372720200		CMPL runtime.writeBarrier(SB), $0x0					
  traffic.go:193	0xe3693d		750a			JNE 0xe36949								
  traffic.go:193	0xe3693f		488b8c24b8000000	MOVQ 0xb8(SP), CX							
  traffic.go:193	0xe36947		eb19			JMP 0xe36962								
  traffic.go:193	0xe36949		e8f21a64ff		CALL runtime.gcWriteBarrier2(SB)					
  traffic.go:193	0xe3694e		488b8c24b8000000	MOVQ 0xb8(SP), CX							
  traffic.go:193	0xe36956		49890b			MOVQ CX, 0(R11)								
  traffic.go:193	0xe36959		4c8b44f2e8		MOVQ -0x18(DX)(SI*8), R8						
  traffic.go:193	0xe3695e		4d894308		MOVQ R8, 0x8(R11)							
  traffic.go:193	0xe36962		48894cf2e8		MOVQ CX, -0x18(DX)(SI*8)						
  traffic.go:194	0xe36967		488b9424a8000000	MOVQ 0xa8(SP), DX							
  traffic.go:194	0xe3696f		f20f104220		MOVSD_XMM 0x20(DX), X0							
  traffic.go:194	0xe36974		f20f11842480000000	MOVSD_XMM X0, 0x80(SP)							
  traffic.go:194	0xe3697d		488d05fc6e2400		LEAQ runtime.types+624768(SB), AX					
  traffic.go:194	0xe36984		488d9c2420050000	LEAQ 0x520(SP), BX							
  traffic.go:194	0xe3698c		e88f7663ff		CALL runtime.mapassign_faststr(SB)					
  traffic.go:194	0xe36991		488b4810		MOVQ 0x10(AX), CX							
  traffic.go:194	0xe36995		488b5808		MOVQ 0x8(AX), BX							
  traffic.go:194	0xe36999		48ffc3			INCQ BX									
  traffic.go:194	0xe3699c		488b10			MOVQ 0(AX), DX								
  traffic.go:194	0xe3699f		90			NOPL									
  traffic.go:194	0xe369a0		4839d9			CMPQ CX, BX								
  traffic.go:194	0xe369a3		7350			JAE 0xe369f5								
  traffic.go:194	0xe369a5		48898424c8050000	MOVQ AX, 0x5c8(SP)							
  traffic.go:194	0xe369ad		4889d0			MOVQ DX, AX								
  traffic.go:194	0xe369b0		bf01000000		MOVL $__minor_os_version__(SB), DI					
  traffic.go:194	0xe369b5		488d3544582800		LEAQ runtime.types+881152(SB), SI					
  traffic.go:194	0xe369bc		0f1f4000		NOPL 0(AX)								
  traffic.go:194	0xe369c0		e87bb263ff		CALL runtime.growslice(SB)						
  traffic.go:194	0xe369c5		488b9424c8050000	MOVQ 0x5c8(SP), DX							
  traffic.go:194	0xe369cd		48894a10		MOVQ CX, 0x10(DX)							
  traffic.go:194	0xe369d1		833d7871720200		CMPL runtime.writeBarrier(SB), $0x0					
  traffic.go:194	0xe369d8		740f			JE 0xe369e9								
  traffic.go:194	0xe369da		e8611a64ff		CALL runtime.gcWriteBarrier2(SB)					
  traffic.go:194	0xe369df		498903			MOVQ AX, 0(R11)								
  traffic.go:194	0xe369e2		488b32			MOVQ 0(DX), SI								
  traffic.go:194	0xe369e5		49897308		MOVQ SI, 0x8(R11)							
  traffic.go:194	0xe369e9		488902			MOVQ AX, 0(DX)								
  traffic.go:194	0xe369ec		4889c1			MOVQ AX, CX								
  traffic.go:194	0xe369ef		4889d0			MOVQ DX, AX								
  traffic.go:194	0xe369f2		4889ca			MOVQ CX, DX								
  traffic.go:194	0xe369f5		48895808		MOVQ BX, 0x8(AX)							
  traffic.go:194	0xe369f9		488d345b		LEAQ 0(BX)(BX*2), SI							
  traffic.go:194	0xe369fd		4c8b442478		MOVQ 0x78(SP), R8							
  traffic.go:194	0xe36a02		4c8944f2f0		MOVQ R8, -0x10(DX)(SI*8)						
  traffic.go:194	0xe36a07		f20f10842480000000	MOVSD_XMM 0x80(SP), X0							
  traffic.go:194	0xe36a10		f20f1144f2f8		MOVSD_XMM X0, -0x8(DX)(SI*8)						
  traffic.go:194	0xe36a16		833d3371720200		CMPL runtime.writeBarrier(SB), $0x0					
  traffic.go:194	0xe36a1d		750a			JNE 0xe36a29								
  traffic.go:194	0xe36a1f		4c8b8424c0000000	MOVQ 0xc0(SP), R8							
  traffic.go:194	0xe36a27		eb19			JMP 0xe36a42								
  traffic.go:194	0xe36a29		e8121a64ff		CALL runtime.gcWriteBarrier2(SB)					
  traffic.go:194	0xe36a2e		4c8b8424c0000000	MOVQ 0xc0(SP), R8							
  traffic.go:194	0xe36a36		4d8903			MOVQ R8, 0(R11)								
  traffic.go:194	0xe36a39		4c8b4cf2e8		MOVQ -0x18(DX)(SI*8), R9						
  traffic.go:194	0xe36a3e		4d894b08		MOVQ R9, 0x8(R11)							
  traffic.go:194	0xe36a42		4c8944f2e8		MOVQ R8, -0x18(DX)(SI*8)						
  traffic.go:188	0xe36a47		488b842490000000	MOVQ 0x90(SP), AX							
  traffic.go:188	0xe36a4f		488b8c24d0050000	MOVQ 0x5d0(SP), CX							
  traffic.go:188	0xe36a57		488b942488000000	MOVQ 0x88(SP), DX							
  traffic.go:188	0xe36a5f		90			NOPL									
  traffic.go:194	0xe36a60		e9d5fdffff		JMP 0xe3683a								
  traffic.go:197	0xe36a65		440f11bc24a0030000	MOVUPS X15, 0x3a0(SP)							
  traffic.go:197	0xe36a6e		440f11bc24b0030000	MOVUPS X15, 0x3b0(SP)							
  traffic.go:197	0xe36a77		440f11bc24c0030000	MOVUPS X15, 0x3c0(SP)							
  traffic.go:197	0xe36a80		488dbc24d0020000	LEAQ 0x2d0(SP), DI							
  traffic.go:197	0xe36a88		488d7fd0		LEAQ -0x30(DI), DI							
  traffic.go:197	0xe36a8c		48896c24f0		MOVQ BP, -0x10(SP)							
  traffic.go:197	0xe36a91		488d6c24f0		LEAQ -0x10(SP), BP							
  traffic.go:197	0xe36a96		e8272064ff		CALL 0x478ac2								
  traffic.go:197	0xe36a9b		488b6d00		MOVQ 0(BP), BP								
  traffic.go:197	0xe36a9f		488d8424d0020000	LEAQ 0x2d0(SP), AX							
  traffic.go:197	0xe36aa7		48898424b0030000	MOVQ AX, 0x3b0(SP)							
  traffic.go:197	0xe36aaf		e8cc6261ff		CALL runtime.rand32(SB)							
  traffic.go:197	0xe36ab4		898424ac030000		MOVL AX, 0x3ac(SP)							
  traffic.go:198	0xe36abb		440f11bc24a0020000	MOVUPS X15, 0x2a0(SP)							
  traffic.go:198	0xe36ac4		440f11bc24b0020000	MOVUPS X15, 0x2b0(SP)							
  traffic.go:198	0xe36acd		440f11bc24c0020000	MOVUPS X15, 0x2c0(SP)							
  traffic.go:198	0xe36ad6		488dbc2490010000	LEAQ 0x190(SP), DI							
  traffic.go:198	0xe36ade		488d7fd0		LEAQ -0x30(DI), DI							
  traffic.go:198	0xe36ae2		48896c24f0		MOVQ BP, -0x10(SP)							
  traffic.go:198	0xe36ae7		488d6c24f0		LEAQ -0x10(SP), BP							
  traffic.go:198	0xe36aec		e8ba1f64ff		CALL 0x478aab								
  traffic.go:198	0xe36af1		488b6d00		MOVQ 0(BP), BP								
  traffic.go:198	0xe36af5		488d842490010000	LEAQ 0x190(SP), AX							
  traffic.go:198	0xe36afd		48898424b0020000	MOVQ AX, 0x2b0(SP)							
  traffic.go:198	0xe36b05		e8766261ff		CALL runtime.rand32(SB)							
  traffic.go:198	0xe36b0a		898424ac020000		MOVL AX, 0x2ac(SP)							
  traffic.go:199	0xe36b11		440f11bc2460010000	MOVUPS X15, 0x160(SP)							
  traffic.go:199	0xe36b1a		440f11bc2470010000	MOVUPS X15, 0x170(SP)							
  traffic.go:199	0xe36b23		440f11bc2480010000	MOVUPS X15, 0x180(SP)							
  traffic.go:199	0xe36b2c		440f11bc24c8000000	MOVUPS X15, 0xc8(SP)							
  traffic.go:199	0xe36b35		488dbc24d0000000	LEAQ 0xd0(SP), DI							
  traffic.go:199	0xe36b3d		488d7fd0		LEAQ -0x30(DI), DI							
  traffic.go:199	0xe36b41		48896c24f0		MOVQ BP, -0x10(SP)							
  traffic.go:199	0xe36b46		488d6c24f0		LEAQ -0x10(SP), BP							
  traffic.go:199	0xe36b4b		e8891f64ff		CALL 0x478ad9								
  traffic.go:199	0xe36b50		488b6d00		MOVQ 0(BP), BP								
  traffic.go:199	0xe36b54		488d8424c8000000	LEAQ 0xc8(SP), AX							
  traffic.go:199	0xe36b5c		4889842470010000	MOVQ AX, 0x170(SP)							
  traffic.go:199	0xe36b64		e8176261ff		CALL runtime.rand32(SB)							
  traffic.go:199	0xe36b69		8984246c010000		MOVL AX, 0x16c(SP)							
  traffic.go:201	0xe36b70		488dbc2450050000	LEAQ 0x550(SP), DI							
  traffic.go:201	0xe36b78		488d7fe0		LEAQ -0x20(DI), DI							
  traffic.go:201	0xe36b7c		0f1f4000		NOPL 0(AX)								
  traffic.go:201	0xe36b80		48896c24f0		MOVQ BP, -0x10(SP)							
  traffic.go:201	0xe36b85		488d6c24f0		LEAQ -0x10(SP), BP							
  traffic.go:201	0xe36b8a		e85c1f64ff		CALL 0x478aeb								
  traffic.go:201	0xe36b8f		488b6d00		MOVQ 0(BP), BP								
  traffic.go:201	0xe36b93		488d05e66c2400		LEAQ runtime.types+624768(SB), AX					
  traffic.go:201	0xe36b9a		488d9c2420050000	LEAQ 0x520(SP), BX							
  traffic.go:201	0xe36ba2		488d8c2450050000	LEAQ 0x550(SP), CX							
  traffic.go:201	0xe36baa		e8715163ff		CALL runtime.mapiterinit(SB)						
  traffic.go:201	0xe36baf		eb34			JMP 0xe36be5								
  traffic.go:201	0xe36bb1		488b0a			MOVQ 0(DX), CX								
  traffic.go:201	0xe36bb4		488b7a08		MOVQ 0x8(DX), DI							
  traffic.go:202	0xe36bb8		488d05e16d2400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:202	0xe36bbf		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:202	0xe36bc7		e8547463ff		CALL runtime.mapassign_faststr(SB)					
  traffic.go:202	0xe36bcc		f20f1005cc0c0302	MOVSD_XMM $f64.7fefffffffffffff(SB), X0					
  traffic.go:202	0xe36bd4		f20f1100		MOVSD_XMM X0, 0(AX)							
  traffic.go:201	0xe36bd8		488d842450050000	LEAQ 0x550(SP), AX							
  traffic.go:201	0xe36be0		e85b5363ff		CALL runtime.mapiternext(SB)						
  traffic.go:201	0xe36be5		488b942450050000	MOVQ 0x550(SP), DX							
  traffic.go:201	0xe36bed		4885d2			TESTQ DX, DX								
  traffic.go:201	0xe36bf0		75bf			JNE 0xe36bb1								
  traffic.go:204	0xe36bf2		488d05a76d2400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:204	0xe36bf9		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:204	0xe36c01		488b8c2408060000	MOVQ 0x608(SP), CX							
  traffic.go:204	0xe36c09		488bbc2410060000	MOVQ 0x610(SP), DI							
  traffic.go:204	0xe36c11		e82a7063ff		CALL runtime.mapaccess2_faststr(SB)					
  traffic.go:204	0xe36c16		84db			TESTL BL, BL								
  traffic.go:204	0xe36c18		742d			JE 0xe36c47								
  traffic.go:207	0xe36c1a		488d057f6d2400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:207	0xe36c21		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:207	0xe36c29		488b8c2408060000	MOVQ 0x608(SP), CX							
  traffic.go:207	0xe36c31		488bbc2410060000	MOVQ 0x610(SP), DI							
  traffic.go:207	0xe36c39		e8e27363ff		CALL runtime.mapassign_faststr(SB)					
  traffic.go:207	0xe36c3e		0f57c0			XORPS X0, X0								
  traffic.go:207	0xe36c41		f20f1100		MOVSD_XMM X0, 0(AX)							
  traffic.go:209	0xe36c45		eb15			JMP 0xe36c5c								
  traffic.go:205	0xe36c47		31c0			XORL AX, AX								
  traffic.go:205	0xe36c49		31db			XORL BX, BX								
  traffic.go:205	0xe36c4b		4889d9			MOVQ BX, CX								
  traffic.go:205	0xe36c4e		0f57c0			XORPS X0, X0								
  traffic.go:205	0xe36c51		31ff			XORL DI, DI								
  traffic.go:205	0xe36c53		4881c4d8050000		ADDQ $__file_alignment__+984(SB), SP					
  traffic.go:205	0xe36c5a		5d			POPQ BP									
  traffic.go:205	0xe36c5b		c3			RET									
  traffic.go:212	0xe36c5c		488dbc2450050000	LEAQ 0x550(SP), DI							
  traffic.go:212	0xe36c64		488d7fe0		LEAQ -0x20(DI), DI							
  traffic.go:212	0xe36c68		48896c24f0		MOVQ BP, -0x10(SP)							
  traffic.go:212	0xe36c6d		488d6c24f0		LEAQ -0x10(SP), BP							
  traffic.go:212	0xe36c72		e8741e64ff		CALL 0x478aeb								
  traffic.go:212	0xe36c77		488b6d00		MOVQ 0(BP), BP								
  traffic.go:212	0xe36c7b		488d051e6d2400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:212	0xe36c82		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:212	0xe36c8a		488d8c2450050000	LEAQ 0x550(SP), CX							
  traffic.go:212	0xe36c92		e8895063ff		CALL runtime.mapiterinit(SB)						
  traffic.go:212	0xe36c97		f20f1005010c0302	MOVSD_XMM $f64.7fefffffffffffff(SB), X0					
  traffic.go:212	0xe36c9f		31c0			XORL AX, AX								
  traffic.go:212	0xe36ca1		31c9			XORL CX, CX								
  traffic.go:212	0xe36ca3		e9b0010000		JMP 0xe36e58								
  traffic.go:221	0xe36ca8		4885c0			TESTQ AX, AX								
  traffic.go:221	0xe36cab		0f8476020000		JE 0xe36f27								
  traffic.go:224	0xe36cb1		488d9c2460010000	LEAQ 0x160(SP), BX							
  traffic.go:224	0xe36cb9		4889c7			MOVQ AX, DI								
  traffic.go:224	0xe36cbc		488d057d6c2400		LEAQ runtime.types+624960(SB), AX					
  traffic.go:224	0xe36cc3		e8587363ff		CALL runtime.mapassign_faststr(SB)					
  traffic.go:224	0xe36cc8		c60001			MOVB $__minor_os_version__(SB), 0(AX)					
  traffic.go:225	0xe36ccb		488b942420060000	MOVQ 0x620(SP), DX							
  traffic.go:225	0xe36cd3		488b7c2440		MOVQ 0x40(SP), DI							
  traffic.go:225	0xe36cd8		4839fa			CMPQ DX, DI								
  traffic.go:225	0xe36cdb		740d			JE 0xe36cea								
  traffic.go:175	0xe36cdd		488b8424f0050000	MOVQ 0x5f0(SP), AX							
  traffic.go:175	0xe36ce5		4885c0			TESTQ AX, AX								
  traffic.go:225	0xe36ce8		eb3b			JMP 0xe36d25								
  traffic.go:225	0xe36cea		488b842498000000	MOVQ 0x98(SP), AX							
  traffic.go:225	0xe36cf2		488b9c2418060000	MOVQ 0x618(SP), BX							
  traffic.go:225	0xe36cfa		4889f9			MOVQ DI, CX								
  traffic.go:225	0xe36cfd		0f1f00			NOPL 0(AX)								
  traffic.go:225	0xe36d00		e85bc15cff		CALL runtime.memequal(SB)						
  traffic.go:225	0xe36d05		84c0			TESTL AL, AL								
  traffic.go:225	0xe36d07		0f851a020000		JNE 0xe36f27								
  traffic.go:175	0xe36d0d		488b8424f0050000	MOVQ 0x5f0(SP), AX							
  traffic.go:175	0xe36d15		4885c0			TESTQ AX, AX								
  traffic.go:225	0xe36d18		488b942420060000	MOVQ 0x620(SP), DX							
  traffic.go:228	0xe36d20		488b7c2440		MOVQ 0x40(SP), DI							
  traffic.go:228	0xe36d25		0f849b000000		JE 0xe36dc6								
  traffic.go:228	0xe36d2b		4c8b842410060000	MOVQ 0x610(SP), R8							
  traffic.go:228	0xe36d33		4939f8			CMPQ R8, DI								
  traffic.go:228	0xe36d36		7407			JE 0xe36d3f								
  traffic.go:228	0xe36d38		b901000000		MOVL $__minor_os_version__(SB), CX					
  traffic.go:228	0xe36d3d		eb3a			JMP 0xe36d79								
  traffic.go:228	0xe36d3f		488b842498000000	MOVQ 0x98(SP), AX							
  traffic.go:228	0xe36d47		488b9c2408060000	MOVQ 0x608(SP), BX							
  traffic.go:228	0xe36d4f		4889f9			MOVQ DI, CX								
  traffic.go:228	0xe36d52		e809c15cff		CALL runtime.memequal(SB)						
  traffic.go:228	0xe36d57		83f001			XORL $__minor_os_version__(SB), AX					
  traffic.go:225	0xe36d5a		488b942420060000	MOVQ 0x620(SP), DX							
  traffic.go:228	0xe36d62		488b7c2440		MOVQ 0x40(SP), DI							
  traffic.go:228	0xe36d67		4c8b842410060000	MOVQ 0x610(SP), R8							
  traffic.go:228	0xe36d6f		89c1			MOVL AX, CX								
  traffic.go:228	0xe36d71		488b8424f0050000	MOVQ 0x5f0(SP), AX							
  traffic.go:228	0xe36d79		84c9			TESTL CL, CL								
  traffic.go:228	0xe36d7b		7505			JNE 0xe36d82								
  traffic.go:228	0xe36d7d		31c9			XORL CX, CX								
  traffic.go:228	0xe36d7f		90			NOPL									
  traffic.go:228	0xe36d80		eb4e			JMP 0xe36dd0								
  traffic.go:228	0xe36d82		488b9c2498000000	MOVQ 0x98(SP), BX							
  traffic.go:228	0xe36d8a		4889f9			MOVQ DI, CX								
  traffic.go:228	0xe36d8d		488bbc24f8050000	MOVQ 0x5f8(SP), DI							
  traffic.go:228	0xe36d95		488bb42400060000	MOVQ 0x600(SP), SI							
  traffic.go:228	0xe36d9d		0f1f00			NOPL 0(AX)								
  traffic.go:228	0xe36da0		e8fbf0ffff		CALL CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther(SB)	
  traffic.go:225	0xe36da5		488b942420060000	MOVQ 0x620(SP), DX							
  traffic.go:231	0xe36dad		488b7c2440		MOVQ 0x40(SP), DI							
  traffic.go:228	0xe36db2		4c8b842410060000	MOVQ 0x610(SP), R8							
  traffic.go:228	0xe36dba		89c1			MOVL AX, CX								
  traffic.go:175	0xe36dbc		488b8424f0050000	MOVQ 0x5f0(SP), AX							
  traffic.go:228	0xe36dc4		eb0a			JMP 0xe36dd0								
  traffic.go:228	0xe36dc6		4c8b842410060000	MOVQ 0x610(SP), R8							
  traffic.go:228	0xe36dce		31c9			XORL CX, CX								
  traffic.go:228	0xe36dd0		84c9			TESTL CL, CL								
  traffic.go:228	0xe36dd2		0f8584feffff		JNE 0xe36c5c								
  traffic.go:231	0xe36dd8		488d05a16a2400		LEAQ runtime.types+624768(SB), AX					
  traffic.go:231	0xe36ddf		488d9c2420050000	LEAQ 0x520(SP), BX							
  traffic.go:231	0xe36de7		488b8c2498000000	MOVQ 0x98(SP), CX							
  traffic.go:231	0xe36def		e84cd55dff		CALL runtime.mapaccess1_faststr(SB)					
  traffic.go:231	0xe36df4		488b10			MOVQ 0(AX), DX								
  traffic.go:231	0xe36df7		488b7008		MOVQ 0x8(AX), SI							
  traffic.go:231	0xe36dfb		4c8b8424f0050000	MOVQ 0x5f0(SP), R8							
  traffic.go:231	0xe36e03		e9b8030000		JMP 0xe371c0								
  traffic.go:175	0xe36e08		4c89c0			MOVQ R8, AX								
  traffic.go:225	0xe36e0b		488b942420060000	MOVQ 0x620(SP), DX							
  traffic.go:228	0xe36e13		4c8b842410060000	MOVQ 0x610(SP), R8							
  traffic.go:228	0xe36e1b		0f1f440000		NOPL 0(AX)(AX*1)							
  traffic.go:231	0xe36e20		e937feffff		JMP 0xe36c5c								
  traffic.go:221	0xe36e25		48898c2498000000	MOVQ CX, 0x98(SP)							
  traffic.go:221	0xe36e2d		4889442440		MOVQ AX, 0x40(SP)							
  traffic.go:216	0xe36e32		f20f11442468		MOVSD_XMM X0, 0x68(SP)							
  traffic.go:212	0xe36e38		488d842450050000	LEAQ 0x550(SP), AX							
  traffic.go:212	0xe36e40		e8fb5063ff		CALL runtime.mapiternext(SB)						
  traffic.go:216	0xe36e45		f20f10442468		MOVSD_XMM 0x68(SP), X0							
  traffic.go:221	0xe36e4b		488b442440		MOVQ 0x40(SP), AX							
  traffic.go:221	0xe36e50		488b8c2498000000	MOVQ 0x98(SP), CX							
  traffic.go:221	0xe36e58		4889442440		MOVQ AX, 0x40(SP)							
  traffic.go:221	0xe36e5d		48898c2498000000	MOVQ CX, 0x98(SP)							
  traffic.go:212	0xe36e65		488b942450050000	MOVQ 0x550(SP), DX							
  traffic.go:212	0xe36e6d		4885d2			TESTQ DX, DX								
  traffic.go:212	0xe36e70		0f8432feffff		JE 0xe36ca8								
  traffic.go:216	0xe36e76		f20f11442468		MOVSD_XMM X0, 0x68(SP)							
  traffic.go:212	0xe36e7c		488b0a			MOVQ 0(DX), CX								
  traffic.go:212	0xe36e7f		48898c24c0050000	MOVQ CX, 0x5c0(SP)							
  traffic.go:212	0xe36e87		488b7a08		MOVQ 0x8(DX), DI							
  traffic.go:212	0xe36e8b		4889bc2490000000	MOVQ DI, 0x90(SP)							
  traffic.go:212	0xe36e93		488b942458050000	MOVQ 0x558(SP), DX							
  traffic.go:212	0xe36e9b		f20f1002		MOVSD_XMM 0(DX), X0							
  traffic.go:212	0xe36e9f		f20f11842480000000	MOVSD_XMM X0, 0x80(SP)							
  traffic.go:213	0xe36ea8		488d05916a2400		LEAQ runtime.types+624960(SB), AX					
  traffic.go:213	0xe36eaf		488d9c2460010000	LEAQ 0x160(SP), BX							
  traffic.go:213	0xe36eb7		e884d45dff		CALL runtime.mapaccess1_faststr(SB)					
  traffic.go:213	0xe36ebc		803800			CMPB 0(AX), $0x0							
  traffic.go:213	0xe36ebf		90			NOPL									
  traffic.go:213	0xe36ec0		7517			JNE 0xe36ed9								
  traffic.go:213	0xe36ec2		f20f10842480000000	MOVSD_XMM 0x80(SP), X0							
  traffic.go:213	0xe36ecb		f20f100dc5090302	MOVSD_XMM $f64.7fdfffffffffffff(SB), X1					
  traffic.go:213	0xe36ed3		660f2ec1		UCOMISD X1, X0								
  traffic.go:213	0xe36ed7		7218			JB 0xe36ef1								
  traffic.go:216	0xe36ed9		f20f10442468		MOVSD_XMM 0x68(SP), X0							
  traffic.go:221	0xe36edf		488b442440		MOVQ 0x40(SP), AX							
  traffic.go:221	0xe36ee4		488b8c2498000000	MOVQ 0x98(SP), CX							
  traffic.go:214	0xe36eec		e934ffffff		JMP 0xe36e25								
  traffic.go:216	0xe36ef1		f20f10542468		MOVSD_XMM 0x68(SP), X2							
  traffic.go:216	0xe36ef7		660f2ed0		UCOMISD X0, X2								
  traffic.go:216	0xe36efb		7615			JBE 0xe36f12								
  traffic.go:221	0xe36efd		488b842490000000	MOVQ 0x90(SP), AX							
  traffic.go:221	0xe36f05		488b8c24c0050000	MOVQ 0x5c0(SP), CX							
  traffic.go:218	0xe36f0d		e913ffffff		JMP 0xe36e25								
  traffic.go:216	0xe36f12		0f10c2			MOVUPS X2, X0								
  traffic.go:221	0xe36f15		488b442440		MOVQ 0x40(SP), AX							
  traffic.go:221	0xe36f1a		488b8c2498000000	MOVQ 0x98(SP), CX							
  traffic.go:216	0xe36f22		e9fefeffff		JMP 0xe36e25								
  traffic.go:249	0xe36f27		488d05726a2400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:249	0xe36f2e		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:249	0xe36f36		488b8c2418060000	MOVQ 0x618(SP), CX							
  traffic.go:249	0xe36f3e		488bbc2420060000	MOVQ 0x620(SP), DI							
  traffic.go:249	0xe36f46		e8f56c63ff		CALL runtime.mapaccess2_faststr(SB)					
  traffic.go:249	0xe36f4b		84db			TESTL BL, BL								
  traffic.go:250	0xe36f4d		7467			JE 0xe36fb6								
  traffic.go:249	0xe36f4f		f20f1008		MOVSD_XMM 0(AX), X1							
  traffic.go:250	0xe36f53		f20f10153d090302	MOVSD_XMM $f64.7fdfffffffffffff(SB), X2					
  traffic.go:250	0xe36f5b		660f2eca		UCOMISD X2, X1								
  traffic.go:250	0xe36f5f		90			NOPL									
  traffic.go:250	0xe36f60		7354			JAE 0xe36fb6								
  traffic.go:255	0xe36f62		488d05976f2100		LEAQ runtime.types+429824(SB), AX					
  traffic.go:255	0xe36f69		e832a85dff		CALL runtime.newobject(SB)						
  traffic.go:255	0xe36f6e		488b8c2420060000	MOVQ 0x620(SP), CX							
  traffic.go:255	0xe36f76		48894808		MOVQ CX, 0x8(AX)							
  traffic.go:255	0xe36f7a		833dcf6b720200		CMPL runtime.writeBarrier(SB), $0x0					
  traffic.go:255	0xe36f81		750a			JNE 0xe36f8d								
  traffic.go:255	0xe36f83		488b942418060000	MOVQ 0x618(SP), DX							
  traffic.go:255	0xe36f8b		eb10			JMP 0xe36f9d								
  traffic.go:255	0xe36f8d		e88e1464ff		CALL runtime.gcWriteBarrier1(SB)					
  traffic.go:255	0xe36f92		488b942418060000	MOVQ 0x618(SP), DX							
  traffic.go:255	0xe36f9a		498913			MOVQ DX, 0(R11)								
  traffic.go:255	0xe36f9d		488910			MOVQ DX, 0(AX)								
  traffic.go:165	0xe36fa0		4889cb			MOVQ CX, BX								
  traffic.go:165	0xe36fa3		4889d6			MOVQ DX, SI								
  traffic.go:165	0xe36fa6		bf01000000		MOVL $__minor_os_version__(SB), DI					
  traffic.go:165	0xe36fab		41b801000000		MOVL $__minor_os_version__(SB), R8					
  traffic.go:256	0xe36fb1		e988000000		JMP 0xe3703e								
  traffic.go:251	0xe36fb6		31c0			XORL AX, AX								
  traffic.go:251	0xe36fb8		31db			XORL BX, BX								
  traffic.go:251	0xe36fba		4889d9			MOVQ BX, CX								
  traffic.go:251	0xe36fbd		0f57c0			XORPS X0, X0								
  traffic.go:251	0xe36fc0		31ff			XORL DI, DI								
  traffic.go:251	0xe36fc2		4881c4d8050000		ADDQ $__file_alignment__+984(SB), SP					
  traffic.go:251	0xe36fc9		5d			POPQ BP									
  traffic.go:251	0xe36fca		c3			RET									
  traffic.go:261	0xe36fcb		4c89442448		MOVQ R8, 0x48(SP)							
  traffic.go:261	0xe36fd0		48898424b8050000	MOVQ AX, 0x5b8(SP)							
  traffic.go:261	0xe36fd8		4889742450		MOVQ SI, 0x50(SP)							
  traffic.go:261	0xe36fdd		498d48ff		LEAQ -0x1(R8), CX							
  traffic.go:261	0xe36fe1		488d56ff		LEAQ -0x1(SI), DX							
  traffic.go:261	0xe36fe5		48f7da			NEGQ DX									
  traffic.go:261	0xe36fe8		48c1fa3f		SARQ $__major_os_version__+57(SB), DX					
  traffic.go:261	0xe36fec		83e210			ANDL $__major_os_version__+10(SB), DX					
  traffic.go:261	0xe36fef		4801c2			ADDQ AX, DX								
  traffic.go:261	0xe36ff2		488bbc24a0000000	MOVQ 0xa0(SP), DI							
  traffic.go:261	0xe36ffa		488d051fb92000		LEAQ runtime.types+383264(SB), AX					
  traffic.go:261	0xe37001		4989da			MOVQ BX, R10								
  traffic.go:261	0xe37004		4889d3			MOVQ DX, BX								
  traffic.go:261	0xe37007		4c89d6			MOVQ R10, SI								
  traffic.go:261	0xe3700a		e8317563ff		CALL runtime.typedslicecopy(SB)						
  traffic.go:264	0xe3700f		488b9c2420060000	MOVQ 0x620(SP), BX							
  traffic.go:264	0xe37017		488bb42418060000	MOVQ 0x618(SP), SI							
  traffic.go:256	0xe3701f		488b4c2460		MOVQ 0x60(SP), CX							
  traffic.go:256	0xe37024		488b9424b0000000	MOVQ 0xb0(SP), DX							
  traffic.go:261	0xe3702c		488b7c2448		MOVQ 0x48(SP), DI							
  traffic.go:261	0xe37031		488b8424b8050000	MOVQ 0x5b8(SP), AX							
  traffic.go:261	0xe37039		4c8b442450		MOVQ 0x50(SP), R8							
  traffic.go:261	0xe3703e		48897c2448		MOVQ DI, 0x48(SP)							
  traffic.go:261	0xe37043		48898424a0000000	MOVQ AX, 0xa0(SP)							
  traffic.go:256	0xe3704b		4c8b8c2410060000	MOVQ 0x610(SP), R9							
  traffic.go:256	0xe37053		4939c9			CMPQ R9, CX								
  traffic.go:256	0xe37056		753d			JNE 0xe37095								
  traffic.go:261	0xe37058		4c89442450		MOVQ R8, 0x50(SP)							
  traffic.go:256	0xe3705d		48894c2460		MOVQ CX, 0x60(SP)							
  traffic.go:256	0xe37062		48899424b0000000	MOVQ DX, 0xb0(SP)							
  traffic.go:256	0xe3706a		4889d0			MOVQ DX, AX								
  traffic.go:256	0xe3706d		488b9c2408060000	MOVQ 0x608(SP), BX							
  traffic.go:256	0xe37075		e8e6bd5cff		CALL runtime.memequal(SB)						
  traffic.go:256	0xe3707a		660f1f440000		NOPW 0(AX)(AX*1)							
  traffic.go:256	0xe37080		84c0			TESTL AL, AL								
  traffic.go:256	0xe37082		0f85e4000000		JNE 0xe3716c								
  traffic.go:257	0xe37088		488b4c2460		MOVQ 0x60(SP), CX							
  traffic.go:257	0xe3708d		488b9424b0000000	MOVQ 0xb0(SP), DX							
  traffic.go:257	0xe37095		488d05846a2400		LEAQ runtime.types+625440(SB), AX					
  traffic.go:257	0xe3709c		488d9c24a0020000	LEAQ 0x2a0(SP), BX							
  traffic.go:257	0xe370a4		4889cf			MOVQ CX, DI								
  traffic.go:257	0xe370a7		4889d1			MOVQ DX, CX								
  traffic.go:257	0xe370aa		e8916b63ff		CALL runtime.mapaccess2_faststr(SB)					
  traffic.go:257	0xe370af		84db			TESTL BL, BL								
  traffic.go:258	0xe370b1		0f84a0000000		JE 0xe37157								
  traffic.go:257	0xe370b7		488b5008		MOVQ 0x8(AX), DX							
  traffic.go:257	0xe370bb		0f1f440000		NOPL 0(AX)(AX*1)							
  traffic.go:258	0xe370c0		4885d2			TESTQ DX, DX								
  traffic.go:258	0xe370c3		0f848e000000		JE 0xe37157								
  traffic.go:257	0xe370c9		4889542460		MOVQ DX, 0x60(SP)							
  traffic.go:257	0xe370ce		488b08			MOVQ 0(AX), CX								
  traffic.go:257	0xe370d1		48898c24b0000000	MOVQ CX, 0xb0(SP)							
  traffic.go:261	0xe370d9		488d05206e2100		LEAQ runtime.types+429824(SB), AX					
  traffic.go:261	0xe370e0		e8bba65dff		CALL runtime.newobject(SB)						
  traffic.go:261	0xe370e5		488b4c2460		MOVQ 0x60(SP), CX							
  traffic.go:261	0xe370ea		48894808		MOVQ CX, 0x8(AX)							
  traffic.go:261	0xe370ee		833d5b6a720200		CMPL runtime.writeBarrier(SB), $0x0					
  traffic.go:261	0xe370f5		750b			JNE 0xe37102								
  traffic.go:261	0xe370f7		488b9424b0000000	MOVQ 0xb0(SP), DX							
  traffic.go:261	0xe370ff		90			NOPL									
  traffic.go:261	0xe37100		eb10			JMP 0xe37112								
  traffic.go:261	0xe37102		e8191364ff		CALL runtime.gcWriteBarrier1(SB)					
  traffic.go:261	0xe37107		488b9424b0000000	MOVQ 0xb0(SP), DX							
  traffic.go:261	0xe3710f		498913			MOVQ DX, 0(R11)								
  traffic.go:261	0xe37112		488910			MOVQ DX, 0(AX)								
  traffic.go:261	0xe37115		488b5c2448		MOVQ 0x48(SP), BX							
  traffic.go:261	0xe3711a		4c8d4301		LEAQ 0x1(BX), R8							
  traffic.go:261	0xe3711e		6690			NOPW									
  traffic.go:261	0xe37120		4983f801		CMPQ R8, $__minor_os_version__(SB)					
  traffic.go:261	0xe37124		770a			JA 0xe37130								
  traffic.go:261	0xe37126		be01000000		MOVL $__minor_os_version__(SB), SI					
  traffic.go:261	0xe3712b		e99bfeffff		JMP 0xe36fcb								
  traffic.go:261	0xe37130		b901000000		MOVL $__minor_os_version__(SB), CX					
  traffic.go:261	0xe37135		4889df			MOVQ BX, DI								
  traffic.go:261	0xe37138		488d35e1b72000		LEAQ runtime.types+383264(SB), SI					
  traffic.go:261	0xe3713f		4c89c3			MOVQ R8, BX								
  traffic.go:261	0xe37142		e8f9aa63ff		CALL runtime.growslice(SB)						
  traffic.go:261	0xe37147		4989d8			MOVQ BX, R8								
  traffic.go:261	0xe3714a		4889ce			MOVQ CX, SI								
  traffic.go:261	0xe3714d		488b5c2448		MOVQ 0x48(SP), BX							
  traffic.go:261	0xe37152		e974feffff		JMP 0xe36fcb								
  traffic.go:259	0xe37157		31c0			XORL AX, AX								
  traffic.go:259	0xe37159		31db			XORL BX, BX								
  traffic.go:259	0xe3715b		4889d9			MOVQ BX, CX								
  traffic.go:259	0xe3715e		0f57c0			XORPS X0, X0								
  traffic.go:259	0xe37161		31ff			XORL DI, DI								
  traffic.go:259	0xe37163		4881c4d8050000		ADDQ $__file_alignment__+984(SB), SP					
  traffic.go:259	0xe3716a		5d			POPQ BP									
  traffic.go:259	0xe3716b		c3			RET									
  traffic.go:264	0xe3716c		488d052d682400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:264	0xe37173		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:264	0xe3717b		488b8c2418060000	MOVQ 0x618(SP), CX							
  traffic.go:264	0xe37183		488bbc2420060000	MOVQ 0x620(SP), DI							
  traffic.go:264	0xe3718b		e8b0d15dff		CALL runtime.mapaccess1_faststr(SB)					
  traffic.go:264	0xe37190		f20f1000		MOVSD_XMM 0(AX), X0							
  traffic.go:264	0xe37194		488b8424a0000000	MOVQ 0xa0(SP), AX							
  traffic.go:264	0xe3719c		488b5c2448		MOVQ 0x48(SP), BX							
  traffic.go:264	0xe371a1		488b4c2450		MOVQ 0x50(SP), CX							
  traffic.go:264	0xe371a6		bf01000000		MOVL $__minor_os_version__(SB), DI					
  traffic.go:264	0xe371ab		4881c4d8050000		ADDQ $__file_alignment__+984(SB), SP					
  traffic.go:264	0xe371b2		5d			POPQ BP									
  traffic.go:264	0xe371b3		c3			RET									
  traffic.go:231	0xe371b4		4883c218		ADDQ $__major_os_version__+18(SB), DX					
  traffic.go:231	0xe371b8		48ffce			DECQ SI									
  traffic.go:231	0xe371bb		0f1f440000		NOPL 0(AX)(AX*1)							
  traffic.go:231	0xe371c0		4885f6			TESTQ SI, SI								
  traffic.go:231	0xe371c3		0f8e3ffcffff		JLE 0xe36e08								
  traffic.go:231	0xe371c9		4889b42490000000	MOVQ SI, 0x90(SP)							
  traffic.go:231	0xe371d1		48899424b0050000	MOVQ DX, 0x5b0(SP)							
  traffic.go:231	0xe371d9		488b0a			MOVQ 0(DX), CX								
  traffic.go:231	0xe371dc		48898c24c0050000	MOVQ CX, 0x5c0(SP)							
  traffic.go:231	0xe371e4		488b7a08		MOVQ 0x8(DX), DI							
  traffic.go:231	0xe371e8		4889bc2488000000	MOVQ DI, 0x88(SP)							
  traffic.go:231	0xe371f0		f20f104210		MOVSD_XMM 0x10(DX), X0							
  traffic.go:231	0xe371f5		f20f11842480000000	MOVSD_XMM X0, 0x80(SP)							
  traffic.go:231	0xe371fe		6690			NOPW									
  traffic.go:175	0xe37200		4d85c0			TESTQ R8, R8								
  traffic.go:232	0xe37203		7504			JNE 0xe37209								
  traffic.go:232	0xe37205		31c0			XORL AX, AX								
  traffic.go:232	0xe37207		eb5c			JMP 0xe37265								
  traffic.go:232	0xe37209		4c89c0			MOVQ R8, AX								
  traffic.go:232	0xe3720c		488b9c2498000000	MOVQ 0x98(SP), BX							
  traffic.go:232	0xe37214		4889fe			MOVQ DI, SI								
  traffic.go:232	0xe37217		4c8b8424f8050000	MOVQ 0x5f8(SP), R8							
  traffic.go:232	0xe3721f		4c8b8c2400060000	MOVQ 0x600(SP), R9							
  traffic.go:232	0xe37227		4889cf			MOVQ CX, DI								
  traffic.go:232	0xe3722a		488b4c2440		MOVQ 0x40(SP), CX							
  traffic.go:232	0xe3722f		e82cefffff		CALL CAS-Backend/pkg/diapdu.(*TrafficManager).isEdgeLockedByOther(SB)	
  traffic.go:235	0xe37234		488b8c24c0050000	MOVQ 0x5c0(SP), CX							
  traffic.go:231	0xe3723c		488b9424b0050000	MOVQ 0x5b0(SP), DX							
  traffic.go:231	0xe37244		488bb42490000000	MOVQ 0x90(SP), SI							
  traffic.go:235	0xe3724c		488bbc2488000000	MOVQ 0x88(SP), DI							
  traffic.go:175	0xe37254		4c8b8424f0050000	MOVQ 0x5f0(SP), R8							
  traffic.go:241	0xe3725c		f20f10842480000000	MOVSD_XMM 0x80(SP), X0							
  traffic.go:232	0xe37265		84c0			TESTL AL, AL								
  traffic.go:232	0xe37267		0f8547ffffff		JNE 0xe371b4								
  traffic.go:175	0xe3726d		4d85c0			TESTQ R8, R8								
  traffic.go:235	0xe37270		7504			JNE 0xe37276								
  traffic.go:235	0xe37272		31c0			XORL AX, AX								
  traffic.go:235	0xe37274		eb4f			JMP 0xe372c5								
  traffic.go:235	0xe37276		4c89c0			MOVQ R8, AX								
  traffic.go:235	0xe37279		4889cb			MOVQ CX, BX								
  traffic.go:235	0xe3727c		4889f9			MOVQ DI, CX								
  traffic.go:235	0xe3727f		488bbc24f8050000	MOVQ 0x5f8(SP), DI							
  traffic.go:235	0xe37287		488bb42400060000	MOVQ 0x600(SP), SI							
  traffic.go:235	0xe3728f		e80cecffff		CALL CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther(SB)	
  traffic.go:238	0xe37294		488b8c24c0050000	MOVQ 0x5c0(SP), CX							
  traffic.go:231	0xe3729c		488b9424b0050000	MOVQ 0x5b0(SP), DX							
  traffic.go:231	0xe372a4		488bb42490000000	MOVQ 0x90(SP), SI							
  traffic.go:238	0xe372ac		488bbc2488000000	MOVQ 0x88(SP), DI							
  traffic.go:175	0xe372b4		4c8b8424f0050000	MOVQ 0x5f0(SP), R8							
  traffic.go:241	0xe372bc		f20f10842480000000	MOVSD_XMM 0x80(SP), X0							
  traffic.go:235	0xe372c5		84c0			TESTL AL, AL								
  traffic.go:235	0xe372c7		0f85e7feffff		JNE 0xe371b4								
  traffic.go:238	0xe372cd		488d05cc662400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:238	0xe372d4		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:238	0xe372dc		0f1f4000		NOPL 0(AX)								
  traffic.go:238	0xe372e0		e85b6963ff		CALL runtime.mapaccess2_faststr(SB)					
  traffic.go:238	0xe372e5		84db			TESTL BL, BL								
  traffic.go:238	0xe372e7		7530			JNE 0xe37319								
  traffic.go:239	0xe372e9		488d05b0662400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:239	0xe372f0		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:239	0xe372f8		488b8c24c0050000	MOVQ 0x5c0(SP), CX							
  traffic.go:239	0xe37300		488bbc2488000000	MOVQ 0x88(SP), DI							
  traffic.go:239	0xe37308		e8136d63ff		CALL runtime.mapassign_faststr(SB)					
  traffic.go:239	0xe3730d		f20f10058b050302	MOVSD_XMM $f64.7fefffffffffffff(SB), X0					
  traffic.go:239	0xe37315		f20f1100		MOVSD_XMM X0, 0(AX)							
  traffic.go:241	0xe37319		488d0580662400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:241	0xe37320		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:241	0xe37328		488b8c2498000000	MOVQ 0x98(SP), CX							
  traffic.go:241	0xe37330		488b7c2440		MOVQ 0x40(SP), DI							
  traffic.go:241	0xe37335		e806d05dff		CALL runtime.mapaccess1_faststr(SB)					
  traffic.go:241	0xe3733a		f20f10842480000000	MOVSD_XMM 0x80(SP), X0							
  traffic.go:241	0xe37343		f20f5800		ADDSD 0(AX), X0								
  traffic.go:241	0xe37347		f20f11442458		MOVSD_XMM X0, 0x58(SP)							
  traffic.go:242	0xe3734d		488d054c662400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:242	0xe37354		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:242	0xe3735c		488b8c24c0050000	MOVQ 0x5c0(SP), CX							
  traffic.go:242	0xe37364		488bbc2488000000	MOVQ 0x88(SP), DI							
  traffic.go:242	0xe3736c		e8cfcf5dff		CALL runtime.mapaccess1_faststr(SB)					
  traffic.go:242	0xe37371		f20f1000		MOVSD_XMM 0(AX), X0							
  traffic.go:242	0xe37375		f20f104c2458		MOVSD_XMM 0x58(SP), X1							
  traffic.go:242	0xe3737b		660f2ec1		UCOMISD X1, X0								
  traffic.go:242	0xe3737f		90			NOPL									
  traffic.go:242	0xe37380		7712			JA 0xe37394								
  traffic.go:232	0xe37382		488b4c2440		MOVQ 0x40(SP), CX							
  traffic.go:232	0xe37387		488b9c2498000000	MOVQ 0x98(SP), BX							
  traffic.go:242	0xe3738f		e988000000		JMP 0xe3741c								
  traffic.go:243	0xe37394		488d0505662400		LEAQ runtime.types+625056(SB), AX					
  traffic.go:243	0xe3739b		488d9c24a0030000	LEAQ 0x3a0(SP), BX							
  traffic.go:243	0xe373a3		488b8c24c0050000	MOVQ 0x5c0(SP), CX							
  traffic.go:243	0xe373ab		488bbc2488000000	MOVQ 0x88(SP), DI							
  traffic.go:243	0xe373b3		e8686c63ff		CALL runtime.mapassign_faststr(SB)					
  traffic.go:243	0xe373b8		f20f10442458		MOVSD_XMM 0x58(SP), X0							
  traffic.go:243	0xe373be		f20f1100		MOVSD_XMM X0, 0(AX)							
  traffic.go:244	0xe373c2		488d0557672400		LEAQ runtime.types+625440(SB), AX					
  traffic.go:244	0xe373c9		488d9c24a0020000	LEAQ 0x2a0(SP), BX							
  traffic.go:244	0xe373d1		488b8c24c0050000	MOVQ 0x5c0(SP), CX							
  traffic.go:244	0xe373d9		488bbc2488000000	MOVQ 0x88(SP), DI							
  traffic.go:244	0xe373e1		e83a6c63ff		CALL runtime.mapassign_faststr(SB)					
  traffic.go:244	0xe373e6		488b4c2440		MOVQ 0x40(SP), CX							
  traffic.go:244	0xe373eb		48894808		MOVQ CX, 0x8(AX)							
  traffic.go:244	0xe373ef		833d5a67720200		CMPL runtime.writeBarrier(SB), $0x0					
  traffic.go:244	0xe373f6		750a			JNE 0xe37402								
  traffic.go:244	0xe373f8		488b9c2498000000	MOVQ 0x98(SP), BX							
  traffic.go:244	0xe37400		eb17			JMP 0xe37419								
  traffic.go:244	0xe37402		e8391064ff		CALL runtime.gcWriteBarrier2(SB)					
  traffic.go:244	0xe37407		488b9c2498000000	MOVQ 0x98(SP), BX							
  traffic.go:244	0xe3740f		49891b			MOVQ BX, 0(R11)								
  traffic.go:244	0xe37412		488b10			MOVQ 0(AX), DX								
  traffic.go:244	0xe37415		49895308		MOVQ DX, 0x8(R11)							
  traffic.go:244	0xe37419		488918			MOVQ BX, 0(AX)								
  traffic.go:231	0xe3741c		488b9424b0050000	MOVQ 0x5b0(SP), DX							
  traffic.go:231	0xe37424		488bb42490000000	MOVQ 0x90(SP), SI							
  traffic.go:175	0xe3742c		4c8b8424f0050000	MOVQ 0x5f0(SP), R8							
  traffic.go:175	0xe37434		e97bfdffff		JMP 0xe371b4								
  traffic.go:164	0xe37439		4889442408		MOVQ AX, 0x8(SP)							
  traffic.go:164	0xe3743e		48895c2410		MOVQ BX, 0x10(SP)							
  traffic.go:164	0xe37443		48894c2418		MOVQ CX, 0x18(SP)							
  traffic.go:164	0xe37448		48897c2420		MOVQ DI, 0x20(SP)							
  traffic.go:164	0xe3744d		4889742428		MOVQ SI, 0x28(SP)							
  traffic.go:164	0xe37452		4c89442430		MOVQ R8, 0x30(SP)							
  traffic.go:164	0xe37457		4c894c2438		MOVQ R9, 0x38(SP)							
  traffic.go:164	0xe3745c		4c89542440		MOVQ R10, 0x40(SP)							
  traffic.go:164	0xe37461		e87af063ff		CALL runtime.morestack_noctxt.abi0(SB)					
  traffic.go:164	0xe37466		488b442408		MOVQ 0x8(SP), AX							
  traffic.go:164	0xe3746b		488b5c2410		MOVQ 0x10(SP), BX							
  traffic.go:164	0xe37470		488b4c2418		MOVQ 0x18(SP), CX							
  traffic.go:164	0xe37475		488b7c2420		MOVQ 0x20(SP), DI							
  traffic.go:164	0xe3747a		488b742428		MOVQ 0x28(SP), SI							
  traffic.go:164	0xe3747f		4c8b442430		MOVQ 0x30(SP), R8							
  traffic.go:164	0xe37484		4c8b4c2438		MOVQ 0x38(SP), R9							
  traffic.go:164	0xe37489		4c8b542440		MOVQ 0x40(SP), R10							
  traffic.go:164	0xe3748e		e9cdf0ffff		JMP CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB)			
  :-1			0xe37493		cc			INT $__subsystem__(SB)							
  :-1			0xe37494		cc			INT $__subsystem__(SB)							
  :-1			0xe37495		cc			INT $__subsystem__(SB)							
  :-1			0xe37496		cc			INT $__subsystem__(SB)							
  :-1			0xe37497		cc			INT $__subsystem__(SB)							
  :-1			0xe37498		cc			INT $__subsystem__(SB)							
  :-1			0xe37499		cc			INT $__subsystem__(SB)							
  :-1			0xe3749a		cc			INT $__subsystem__(SB)							
  :-1			0xe3749b		cc			INT $__subsystem__(SB)							
  :-1			0xe3749c		cc			INT $__subsystem__(SB)							
  :-1			0xe3749d		cc			INT $__subsystem__(SB)							
  :-1			0xe3749e		cc			INT $__subsystem__(SB)							
  :-1			0xe3749f		cc			INT $__subsystem__(SB)							

TEXT CAS-Backend/pkg/diapdu.PlanTaskRoute(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic.go
  traffic.go:285	0xe374a0		4c8d642488			LEAQ -0x78(SP), R12					
  traffic.go:285	0xe374a5		4d3b6610			CMPQ R12, 0x10(R14)					
  traffic.go:285	0xe374a9		0f8686080000			JBE 0xe37d35						
  traffic.go:285	0xe374af		55				PUSHQ BP						
  traffic.go:285	0xe374b0		4889e5				MOVQ SP, BP						
  traffic.go:285	0xe374b3		4881ecf0000000			SUBQ $.file+163(SB), SP					
  traffic.go:285	0xe374ba		48898c2410010000		MOVQ CX, 0x110(SP)					
  traffic.go:286	0xe374c2		4885c0				TESTQ AX, AX						
  traffic.go:286	0xe374c5		0f845a080000			JE 0xe37d25						
  traffic.go:286	0xe374cb		4889842400010000		MOVQ AX, 0x100(SP)					
  traffic.go:286	0xe374d3		48899c2408010000		MOVQ BX, 0x108(SP)					
  traffic.go:286	0xe374db		f20f11ac24a0000000		MOVSD_XMM X5, 0xa0(SP)					
  traffic.go:286	0xe374e4		f20f11a42498000000		MOVSD_XMM X4, 0x98(SP)					
  traffic.go:286	0xe374ed		f20f11942490000000		MOVSD_XMM X2, 0x90(SP)					
  traffic.go:286	0xe374f6		4889bc2418010000		MOVQ DI, 0x118(SP)					
  traffic.go:286	0xe374fe		48898c2410010000		MOVQ CX, 0x110(SP)					
  traffic.go:286	0xe37506		f20f119c2488000000		MOVSD_XMM X3, 0x88(SP)					
  traffic.go:289	0xe3750f		e8ccefffff			CALL CAS-Backend/pkg/diapdu.closestNodeTo(SB)		
  traffic.go:289	0xe37514		48898424b8000000		MOVQ AX, 0xb8(SP)					
  traffic.go:290	0xe3751c		f20f10842490000000		MOVSD_XMM 0x90(SP), X0					
  traffic.go:290	0xe37525		f20f108c2488000000		MOVSD_XMM 0x88(SP), X1					
  traffic.go:290	0xe3752e		488b842400010000		MOVQ 0x100(SP), AX					
  traffic.go:290	0xe37536		e8a5efffff			CALL CAS-Backend/pkg/diapdu.closestNodeTo(SB)		
  traffic.go:290	0xe3753b		48898424c8000000		MOVQ AX, 0xc8(SP)					
  traffic.go:291	0xe37543		f20f10842498000000		MOVSD_XMM 0x98(SP), X0					
  traffic.go:291	0xe3754c		f20f108c24a0000000		MOVSD_XMM 0xa0(SP), X1					
  traffic.go:291	0xe37555		488b842400010000		MOVQ 0x100(SP), AX					
  traffic.go:291	0xe3755d		0f1f00				NOPL 0(AX)						
  traffic.go:291	0xe37560		e87befffff			CALL CAS-Backend/pkg/diapdu.closestNodeTo(SB)		
  traffic.go:292	0xe37565		488b8c24b8000000		MOVQ 0xb8(SP), CX					
  traffic.go:292	0xe3756d		4885c9				TESTQ CX, CX						
  traffic.go:292	0xe37570		0f84a2070000			JE 0xe37d18						
  traffic.go:292	0xe37576		488b9424c8000000		MOVQ 0xc8(SP), DX					
  traffic.go:292	0xe3757e		6690				NOPW							
  traffic.go:292	0xe37580		4885d2				TESTQ DX, DX						
  traffic.go:292	0xe37583		0f848f070000			JE 0xe37d18						
  traffic.go:292	0xe37589		4885c0				TESTQ AX, AX						
  traffic.go:292	0xe3758c		0f8486070000			JE 0xe37d18						
  traffic.go:291	0xe37592		48898424c0000000		MOVQ AX, 0xc0(SP)					
  traffic.go:296	0xe3759a		48c78424d000000000000000	MOVQ $0x0, 0xd0(SP)					
  traffic.go:296	0xe375a6		440f11bc24d8000000		MOVUPS X15, 0xd8(SP)					
  traffic.go:297	0xe375af		0f57c0				XORPS X0, X0						
  traffic.go:297	0xe375b2		f20f11442440			MOVSD_XMM X0, 0x40(SP)					
  traffic.go:318	0xe375b8		488b31				MOVQ 0(CX), SI						
  traffic.go:318	0xe375bb		4c8b4108			MOVQ 0x8(CX), R8					
  traffic.go:318	0xe375bf		4c8b0a				MOVQ 0(DX), R9						
  traffic.go:318	0xe375c2		4c8b5208			MOVQ 0x8(DX), R10					
  traffic.go:318	0xe375c6		488b842400010000		MOVQ 0x100(SP), AX					
  traffic.go:318	0xe375ce		488b9c2408010000		MOVQ 0x108(SP), BX					
  traffic.go:318	0xe375d6		488b8c2410010000		MOVQ 0x110(SP), CX					
  traffic.go:318	0xe375de		488bbc2418010000		MOVQ 0x118(SP), DI					
  traffic.go:318	0xe375e6		e875efffff			CALL CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB)	
  traffic.go:318	0xe375eb		4084ff				TESTL DI, DI						
  traffic.go:319	0xe375ee		0f8417070000			JE 0xe37d0b						
  traffic.go:300	0xe375f4		4885db				TESTQ BX, BX						
  traffic.go:300	0xe375f7		750c				JNE 0xe37605						
  traffic.go:300	0xe375f9		31c0				XORL AX, AX						
  traffic.go:300	0xe375fb		0f1f440000			NOPL 0(AX)(AX*1)					
  traffic.go:322	0xe37600		e90b030000			JMP 0xe37910						
  traffic.go:318	0xe37605		f20f11442470			MOVSD_XMM X0, 0x70(SP)					
  traffic.go:318	0xe3760b		48895c2458			MOVQ BX, 0x58(SP)					
  traffic.go:318	0xe37610		48898424b0000000		MOVQ AX, 0xb0(SP)					
  traffic.go:303	0xe37618		488b9424d8000000		MOVQ 0xd8(SP), DX					
  traffic.go:303	0xe37620		4c8b8424d0000000		MOVQ 0xd0(SP), R8					
  traffic.go:303	0xe37628		4885d2				TESTQ DX, DX						
  traffic.go:303	0xe3762b		0f85b4000000			JNE 0xe376e5						
  traffic.go:303	0xe37631		488b8c24e0000000		MOVQ 0xe0(SP), CX					
  traffic.go:304	0xe37639		4839cb				CMPQ BX, CX						
  traffic.go:304	0xe3763c		7705				JA 0xe37643						
  traffic.go:318	0xe3763e		4889da				MOVQ BX, DX						
  traffic.go:304	0xe37641		eb22				JMP 0xe37665						
  traffic.go:304	0xe37643		4c89c0				MOVQ R8, AX						
  traffic.go:304	0xe37646		4889df				MOVQ BX, DI						
  traffic.go:304	0xe37649		488d35d0b22000			LEAQ runtime.types+383264(SB), SI			
  traffic.go:304	0xe37650		e8eba563ff			CALL runtime.growslice(SB)				
  traffic.go:304	0xe37655		488b542458			MOVQ 0x58(SP), DX					
  traffic.go:304	0xe3765a		4989c0				MOVQ AX, R8						
  traffic.go:304	0xe3765d		488b8424b0000000		MOVQ 0xb0(SP), AX					
  traffic.go:304	0xe37665		48899c2480000000		MOVQ BX, 0x80(SP)					
  traffic.go:304	0xe3766d		4c898424e8000000		MOVQ R8, 0xe8(SP)					
  traffic.go:304	0xe37675		48894c2478			MOVQ CX, 0x78(SP)					
  traffic.go:304	0xe3767a		4889c7				MOVQ AX, DI						
  traffic.go:304	0xe3767d		4889d6				MOVQ DX, SI						
  traffic.go:304	0xe37680		488d0599b22000			LEAQ runtime.types+383264(SB), AX			
  traffic.go:304	0xe37687		4889da				MOVQ BX, DX						
  traffic.go:304	0xe3768a		4c89c3				MOVQ R8, BX						
  traffic.go:304	0xe3768d		4889d1				MOVQ DX, CX						
  traffic.go:304	0xe37690		e8ab6e63ff			CALL runtime.typedslicecopy(SB)				
  traffic.go:304	0xe37695		488b9424e8000000		MOVQ 0xe8(SP), DX					
  traffic.go:304	0xe3769d		48899424d0000000		MOVQ DX, 0xd0(SP)					
  traffic.go:304	0xe376a5		488b942480000000		MOVQ 0x80(SP), DX					
  traffic.go:304	0xe376ad		48899424d8000000		MOVQ DX, 0xd8(SP)					
  traffic.go:304	0xe376b5		488b542478			MOVQ 0x78(SP), DX					
  traffic.go:304	0xe376ba		48899424e0000000		MOVQ DX, 0xe0(SP)					
  traffic.go:305	0xe376c2		f20f10442440			MOVSD_XMM 0x40(SP), X0					
  traffic.go:305	0xe376c8		f20f104c2470			MOVSD_XMM 0x70(SP), X1					
  traffic.go:305	0xe376ce		f20f58c1			ADDSD X1, X0						
  traffic.go:305	0xe376d2		f20f11442440			MOVSD_XMM X0, 0x40(SP)					
  traffic.go:305	0xe376d8		b801000000			MOVL $__minor_os_version__(SB), AX			
  traffic.go:305	0xe376dd		0f1f00				NOPL 0(AX)						
  traffic.go:322	0xe376e0		e92b020000			JMP 0xe37910						
  traffic.go:309	0xe376e5		48ffca				DECQ DX							
  traffic.go:309	0xe376e8		48c1e204			SHLQ $__subsystem__+1(SB), DX				
  traffic.go:309	0xe376ec		4e8b4c0208			MOVQ 0x8(DX)(R8*1), R9					
  traffic.go:309	0xe376f1		4a8b1402			MOVQ 0(DX)(R8*1), DX					
  traffic.go:309	0xe376f5		4c394808			CMPQ 0x8(AX), R9					
  traffic.go:309	0xe376f9		0f852b010000			JNE 0xe3782a						
  traffic.go:318	0xe376ff		48894c2460			MOVQ CX, 0x60(SP)					
  traffic.go:309	0xe37704		488b18				MOVQ 0(AX), BX						
  traffic.go:309	0xe37707		4c89c9				MOVQ R9, CX						
  traffic.go:309	0xe3770a		4889d0				MOVQ DX, AX						
  traffic.go:309	0xe3770d		e84eb75cff			CALL runtime.memequal(SB)				
  traffic.go:309	0xe37712		84c0				TESTL AL, AL						
  traffic.go:309	0xe37714		0f84fd000000			JE 0xe37817						
  traffic.go:310	0xe3771a		488b9424d8000000		MOVQ 0xd8(SP), DX					
  traffic.go:310	0xe37722		488b7c2458			MOVQ 0x58(SP), DI					
  traffic.go:310	0xe37727		488d1c17			LEAQ 0(DI)(DX*1), BX					
  traffic.go:310	0xe3772b		488d5bff			LEAQ -0x1(BX), BX					
  traffic.go:310	0xe3772f		488b8c24e0000000		MOVQ 0xe0(SP), CX					
  traffic.go:310	0xe37737		4c8b442460			MOVQ 0x60(SP), R8					
  traffic.go:310	0xe3773c		49ffc8				DECQ R8							
  traffic.go:310	0xe3773f		49f7d8				NEGQ R8							
  traffic.go:310	0xe37742		49c1f83f			SARQ $__major_os_version__+57(SB), R8			
  traffic.go:310	0xe37746		4183e010			ANDL $__major_os_version__+10(SB), R8			
  traffic.go:310	0xe3774a		488b8424d0000000		MOVQ 0xd0(SP), AX					
  traffic.go:310	0xe37752		4c8b8c24b0000000		MOVQ 0xb0(SP), R9					
  traffic.go:310	0xe3775a		4d01c8				ADDQ R9, R8						
  traffic.go:310	0xe3775d		48ffcf				DECQ DI							
  traffic.go:310	0xe37760		4839d9				CMPQ CX, BX						
  traffic.go:310	0xe37763		7336				JAE 0xe3779b						
  traffic.go:310	0xe37765		4889bc2480000000		MOVQ DI, 0x80(SP)					
  traffic.go:310	0xe3776d		4c898424e8000000		MOVQ R8, 0xe8(SP)					
  traffic.go:310	0xe37775		4889542478			MOVQ DX, 0x78(SP)					
  traffic.go:310	0xe3777a		488d359fb12000			LEAQ runtime.types+383264(SB), SI			
  traffic.go:310	0xe37781		e8baa463ff			CALL runtime.growslice(SB)				
  traffic.go:310	0xe37786		488b542478			MOVQ 0x78(SP), DX					
  traffic.go:310	0xe3778b		488bbc2480000000		MOVQ 0x80(SP), DI					
  traffic.go:310	0xe37793		4c8b8424e8000000		MOVQ 0xe8(SP), R8					
  traffic.go:310	0xe3779b		48898424e8000000		MOVQ AX, 0xe8(SP)					
  traffic.go:310	0xe377a3		48899c2480000000		MOVQ BX, 0x80(SP)					
  traffic.go:310	0xe377ab		48894c2478			MOVQ CX, 0x78(SP)					
  traffic.go:310	0xe377b0		4829d3				SUBQ DX, BX						
  traffic.go:310	0xe377b3		4989d2				MOVQ DX, R10						
  traffic.go:310	0xe377b6		4829ca				SUBQ CX, DX						
  traffic.go:310	0xe377b9		49c1e204			SHLQ $__subsystem__+1(SB), R10				
  traffic.go:310	0xe377bd		48c1fa3f			SARQ $__major_os_version__+57(SB), DX			
  traffic.go:310	0xe377c1		4921d2				ANDQ DX, R10						
  traffic.go:310	0xe377c4		4a8d1410			LEAQ 0(AX)(R10*1), DX					
  traffic.go:310	0xe377c8		4889fe				MOVQ DI, SI						
  traffic.go:310	0xe377cb		4c89c7				MOVQ R8, DI						
  traffic.go:310	0xe377ce		488d054bb12000			LEAQ runtime.types+383264(SB), AX			
  traffic.go:310	0xe377d5		4989da				MOVQ BX, R10						
  traffic.go:310	0xe377d8		4889d3				MOVQ DX, BX						
  traffic.go:310	0xe377db		4c89d1				MOVQ R10, CX						
  traffic.go:310	0xe377de		6690				NOPW							
  traffic.go:310	0xe377e0		e85b6d63ff			CALL runtime.typedslicecopy(SB)				
  traffic.go:310	0xe377e5		488b9424e8000000		MOVQ 0xe8(SP), DX					
  traffic.go:310	0xe377ed		48899424d0000000		MOVQ DX, 0xd0(SP)					
  traffic.go:310	0xe377f5		488b942480000000		MOVQ 0x80(SP), DX					
  traffic.go:310	0xe377fd		48899424d8000000		MOVQ DX, 0xd8(SP)					
  traffic.go:310	0xe37805		488b542478			MOVQ 0x78(SP), DX					
  traffic.go:310	0xe3780a		48899424e0000000		MOVQ DX, 0xe0(SP)					
  traffic.go:310	0xe37812		e9de000000			JMP 0xe378f5						
  traffic.go:312	0xe37817		488b8424b0000000		MOVQ 0xb0(SP), AX					
  traffic.go:312	0xe3781f		488b5c2458			MOVQ 0x58(SP), BX					
  traffic.go:314	0xe37824		f20f10442470			MOVSD_XMM 0x70(SP), X0					
  traffic.go:312	0xe3782a		488b9424d8000000		MOVQ 0xd8(SP), DX					
  traffic.go:312	0xe37832		4c8d0413			LEAQ 0(BX)(DX*1), R8					
  traffic.go:312	0xe37836		488b8c24e0000000		MOVQ 0xe0(SP), CX					
  traffic.go:312	0xe3783e		4c8b8c24d0000000		MOVQ 0xd0(SP), R9					
  traffic.go:312	0xe37846		4c39c1				CMPQ CX, R8						
  traffic.go:312	0xe37849		7338				JAE 0xe37883						
  traffic.go:312	0xe3784b		4889942480000000		MOVQ DX, 0x80(SP)					
  traffic.go:312	0xe37853		4c89c8				MOVQ R9, AX						
  traffic.go:312	0xe37856		4889df				MOVQ BX, DI						
  traffic.go:312	0xe37859		488d35c0b02000			LEAQ runtime.types+383264(SB), SI			
  traffic.go:312	0xe37860		4c89c3				MOVQ R8, BX						
  traffic.go:312	0xe37863		e8d8a363ff			CALL runtime.growslice(SB)				
  traffic.go:312	0xe37868		488b942480000000		MOVQ 0x80(SP), DX					
  traffic.go:312	0xe37870		4989d8				MOVQ BX, R8						
  traffic.go:312	0xe37873		4989c1				MOVQ AX, R9						
  traffic.go:312	0xe37876		488b8424b0000000		MOVQ 0xb0(SP), AX					
  traffic.go:312	0xe3787e		488b5c2458			MOVQ 0x58(SP), BX					
  traffic.go:312	0xe37883		48898c2480000000		MOVQ CX, 0x80(SP)					
  traffic.go:312	0xe3788b		4c89442478			MOVQ R8, 0x78(SP)					
  traffic.go:312	0xe37890		4c898c24e8000000		MOVQ R9, 0xe8(SP)					
  traffic.go:312	0xe37898		4989d2				MOVQ DX, R10						
  traffic.go:312	0xe3789b		4829ca				SUBQ CX, DX						
  traffic.go:312	0xe3789e		4d29d0				SUBQ R10, R8						
  traffic.go:312	0xe378a1		49c1e204			SHLQ $__subsystem__+1(SB), R10				
  traffic.go:312	0xe378a5		48c1fa3f			SARQ $__major_os_version__+57(SB), DX			
  traffic.go:312	0xe378a9		4921d2				ANDQ DX, R10						
  traffic.go:312	0xe378ac		4b8d1411			LEAQ 0(R9)(R10*1), DX					
  traffic.go:312	0xe378b0		4889c7				MOVQ AX, DI						
  traffic.go:312	0xe378b3		4889de				MOVQ BX, SI						
  traffic.go:312	0xe378b6		488d0563b02000			LEAQ runtime.types+383264(SB), AX			
  traffic.go:312	0xe378bd		4889d3				MOVQ DX, BX						
  traffic.go:312	0xe378c0		4c89c1				MOVQ R8, CX						
  traffic.go:312	0xe378c3		e8786c63ff			CALL runtime.typedslicecopy(SB)				
  traffic.go:312	0xe378c8		488b9424e8000000		MOVQ 0xe8(SP), DX					
  traffic.go:312	0xe378d0		48899424d0000000		MOVQ DX, 0xd0(SP)					
  traffic.go:312	0xe378d8		488b542478			MOVQ 0x78(SP), DX					
  traffic.go:312	0xe378dd		48899424d8000000		MOVQ DX, 0xd8(SP)					
  traffic.go:312	0xe378e5		488b942480000000		MOVQ 0x80(SP), DX					
  traffic.go:312	0xe378ed		48899424e0000000		MOVQ DX, 0xe0(SP)					
  traffic.go:314	0xe378f5		f20f10442440			MOVSD_XMM 0x40(SP), X0					
  traffic.go:314	0xe378fb		f20f104c2470			MOVSD_XMM 0x70(SP), X1					
  traffic.go:314	0xe37901		f20f58c1			ADDSD X1, X0						
  traffic.go:314	0xe37905		f20f11442440			MOVSD_XMM X0, 0x40(SP)					
  traffic.go:314	0xe3790b		b801000000			MOVL $__minor_os_version__(SB), AX			
  traffic.go:322	0xe37910		84c0				TESTL AL, AL						
  traffic.go:322	0xe37912		0f84e6030000			JE 0xe37cfe						
  traffic.go:326	0xe37918		488b9424c8000000		MOVQ 0xc8(SP), DX					
  traffic.go:326	0xe37920		488b32				MOVQ 0(DX), SI						
  traffic.go:326	0xe37923		4c8b4208			MOVQ 0x8(DX), R8					
  traffic.go:326	0xe37927		488b9424c0000000		MOVQ 0xc0(SP), DX					
  traffic.go:326	0xe3792f		4c8b0a				MOVQ 0(DX), R9						
  traffic.go:326	0xe37932		4c8b5208			MOVQ 0x8(DX), R10					
  traffic.go:326	0xe37936		488b842400010000		MOVQ 0x100(SP), AX					
  traffic.go:326	0xe3793e		488b9c2408010000		MOVQ 0x108(SP), BX					
  traffic.go:326	0xe37946		488b8c2410010000		MOVQ 0x110(SP), CX					
  traffic.go:326	0xe3794e		488bbc2418010000		MOVQ 0x118(SP), DI					
  traffic.go:326	0xe37956		e805ecffff			CALL CAS-Backend/pkg/diapdu.shortestPathOnGraph(SB)	
  traffic.go:326	0xe3795b		0f1f440000			NOPL 0(AX)(AX*1)					
  traffic.go:326	0xe37960		4084ff				TESTL DI, DI						
  traffic.go:327	0xe37963		0f8488030000			JE 0xe37cf1						
  traffic.go:300	0xe37969		4885db				TESTQ BX, BX						
  traffic.go:300	0xe3796c		7507				JNE 0xe37975						
  traffic.go:300	0xe3796e		31c0				XORL AX, AX						
  traffic.go:330	0xe37970		e90e030000			JMP 0xe37c83						
  traffic.go:326	0xe37975		f20f11442468			MOVSD_XMM X0, 0x68(SP)					
  traffic.go:326	0xe3797b		48895c2448			MOVQ BX, 0x48(SP)					
  traffic.go:326	0xe37980		48898424a8000000		MOVQ AX, 0xa8(SP)					
  traffic.go:303	0xe37988		488b9424d8000000		MOVQ 0xd8(SP), DX					
  traffic.go:303	0xe37990		4c8b8424d0000000		MOVQ 0xd0(SP), R8					
  traffic.go:303	0xe37998		0f1f840000000000		NOPL 0(AX)(AX*1)					
  traffic.go:303	0xe379a0		4885d2				TESTQ DX, DX						
  traffic.go:303	0xe379a3		0f85b1000000			JNE 0xe37a5a						
  traffic.go:303	0xe379a9		488b8c24e0000000		MOVQ 0xe0(SP), CX					
  traffic.go:304	0xe379b1		4839cb				CMPQ BX, CX						
  traffic.go:304	0xe379b4		7705				JA 0xe379bb						
  traffic.go:326	0xe379b6		4889da				MOVQ BX, DX						
  traffic.go:304	0xe379b9		eb22				JMP 0xe379dd						
  traffic.go:304	0xe379bb		4c89c0				MOVQ R8, AX						
  traffic.go:304	0xe379be		4889df				MOVQ BX, DI						
  traffic.go:304	0xe379c1		488d3558af2000			LEAQ runtime.types+383264(SB), SI			
  traffic.go:304	0xe379c8		e873a263ff			CALL runtime.growslice(SB)				
  traffic.go:304	0xe379cd		488b542448			MOVQ 0x48(SP), DX					
  traffic.go:304	0xe379d2		4989c0				MOVQ AX, R8						
  traffic.go:304	0xe379d5		488b8424a8000000		MOVQ 0xa8(SP), AX					
  traffic.go:304	0xe379dd		48898c2480000000		MOVQ CX, 0x80(SP)					
  traffic.go:304	0xe379e5		48895c2478			MOVQ BX, 0x78(SP)					
  traffic.go:304	0xe379ea		4c898424e8000000		MOVQ R8, 0xe8(SP)					
  traffic.go:304	0xe379f2		4889c7				MOVQ AX, DI						
  traffic.go:304	0xe379f5		4889d6				MOVQ DX, SI						
  traffic.go:304	0xe379f8		488d0521af2000			LEAQ runtime.types+383264(SB), AX			
  traffic.go:304	0xe379ff		4889da				MOVQ BX, DX						
  traffic.go:304	0xe37a02		4c89c3				MOVQ R8, BX						
  traffic.go:304	0xe37a05		4889d1				MOVQ DX, CX						
  traffic.go:304	0xe37a08		e8336b63ff			CALL runtime.typedslicecopy(SB)				
  traffic.go:304	0xe37a0d		488b9424e8000000		MOVQ 0xe8(SP), DX					
  traffic.go:304	0xe37a15		48899424d0000000		MOVQ DX, 0xd0(SP)					
  traffic.go:304	0xe37a1d		488b542478			MOVQ 0x78(SP), DX					
  traffic.go:304	0xe37a22		48899424d8000000		MOVQ DX, 0xd8(SP)					
  traffic.go:304	0xe37a2a		488b942480000000		MOVQ 0x80(SP), DX					
  traffic.go:304	0xe37a32		48899424e0000000		MOVQ DX, 0xe0(SP)					
  traffic.go:305	0xe37a3a		f20f10442440			MOVSD_XMM 0x40(SP), X0					
  traffic.go:305	0xe37a40		f20f104c2468			MOVSD_XMM 0x68(SP), X1					
  traffic.go:305	0xe37a46		f20f58c1			ADDSD X1, X0						
  traffic.go:305	0xe37a4a		f20f11442440			MOVSD_XMM X0, 0x40(SP)					
  traffic.go:305	0xe37a50		b801000000			MOVL $__minor_os_version__(SB), AX			
  traffic.go:330	0xe37a55		e929020000			JMP 0xe37c83						
  traffic.go:309	0xe37a5a		48ffca				DECQ DX							
  traffic.go:309	0xe37a5d		48c1e204			SHLQ $__subsystem__+1(SB), DX				
  traffic.go:309	0xe37a61		4e8b4c0208			MOVQ 0x8(DX)(R8*1), R9					
  traffic.go:309	0xe37a66		4a8b1402			MOVQ 0(DX)(R8*1), DX					
  traffic.go:309	0xe37a6a		4c394808			CMPQ 0x8(AX), R9					
  traffic.go:309	0xe37a6e		0f8529010000			JNE 0xe37b9d						
  traffic.go:326	0xe37a74		48894c2450			MOVQ CX, 0x50(SP)					
  traffic.go:309	0xe37a79		488b18				MOVQ 0(AX), BX						
  traffic.go:309	0xe37a7c		4c89c9				MOVQ R9, CX						
  traffic.go:309	0xe37a7f		4889d0				MOVQ DX, AX						
  traffic.go:309	0xe37a82		e8d9b35cff			CALL runtime.memequal(SB)				
  traffic.go:309	0xe37a87		84c0				TESTL AL, AL						
  traffic.go:309	0xe37a89		0f84fb000000			JE 0xe37b8a						
  traffic.go:310	0xe37a8f		488b9424d8000000		MOVQ 0xd8(SP), DX					
  traffic.go:310	0xe37a97		488b7c2448			MOVQ 0x48(SP), DI					
  traffic.go:310	0xe37a9c		488d1c17			LEAQ 0(DI)(DX*1), BX					
  traffic.go:310	0xe37aa0		488d5bff			LEAQ -0x1(BX), BX					
  traffic.go:310	0xe37aa4		488b8c24e0000000		MOVQ 0xe0(SP), CX					
  traffic.go:310	0xe37aac		4c8b442450			MOVQ 0x50(SP), R8					
  traffic.go:310	0xe37ab1		49ffc8				DECQ R8							
  traffic.go:310	0xe37ab4		49f7d8				NEGQ R8							
  traffic.go:310	0xe37ab7		49c1f83f			SARQ $__major_os_version__+57(SB), R8			
  traffic.go:310	0xe37abb		4183e010			ANDL $__major_os_version__+10(SB), R8			
  traffic.go:310	0xe37abf		488b8424d0000000		MOVQ 0xd0(SP), AX					
  traffic.go:310	0xe37ac7		4c8b8c24a8000000		MOVQ 0xa8(SP), R9					
  traffic.go:310	0xe37acf		4d01c8				ADDQ R9, R8						
  traffic.go:310	0xe37ad2		48ffcf				DECQ DI							
  traffic.go:310	0xe37ad5		4839d9				CMPQ CX, BX						
  traffic.go:310	0xe37ad8		7336				JAE 0xe37b10						
  traffic.go:310	0xe37ada		4889942480000000		MOVQ DX, 0x80(SP)					
  traffic.go:310	0xe37ae2		48897c2478			MOVQ DI, 0x78(SP)					
  traffic.go:310	0xe37ae7		4c898424e8000000		MOVQ R8, 0xe8(SP)					
  traffic.go:310	0xe37aef		488d352aae2000			LEAQ runtime.types+383264(SB), SI			
  traffic.go:310	0xe37af6		e845a163ff			CALL runtime.growslice(SB)				
  traffic.go:310	0xe37afb		488b942480000000		MOVQ 0x80(SP), DX					
  traffic.go:310	0xe37b03		488b7c2478			MOVQ 0x78(SP), DI					
  traffic.go:310	0xe37b08		4c8b8424e8000000		MOVQ 0xe8(SP), R8					
  traffic.go:310	0xe37b10		48898424e8000000		MOVQ AX, 0xe8(SP)					
  traffic.go:310	0xe37b18		48899c2480000000		MOVQ BX, 0x80(SP)					
  traffic.go:310	0xe37b20		48894c2478			MOVQ CX, 0x78(SP)					
  traffic.go:310	0xe37b25		4989d1				MOVQ DX, R9						
  traffic.go:310	0xe37b28		4829ca				SUBQ CX, DX						
  traffic.go:310	0xe37b2b		4c29cb				SUBQ R9, BX						
  traffic.go:310	0xe37b2e		49c1e104			SHLQ $__subsystem__+1(SB), R9				
  traffic.go:310	0xe37b32		48c1fa3f			SARQ $__major_os_version__+57(SB), DX			
  traffic.go:310	0xe37b36		4921d1				ANDQ DX, R9						
  traffic.go:310	0xe37b39		4a8d1408			LEAQ 0(AX)(R9*1), DX					
  traffic.go:310	0xe37b3d		4889fe				MOVQ DI, SI						
  traffic.go:310	0xe37b40		4c89c7				MOVQ R8, DI						
  traffic.go:310	0xe37b43		488d05d6ad2000			LEAQ runtime.types+383264(SB), AX			
  traffic.go:310	0xe37b4a		4989d9				MOVQ BX, R9						
  traffic.go:310	0xe37b4d		4889d3				MOVQ DX, BX						
  traffic.go:310	0xe37b50		4c89c9				MOVQ R9, CX						
  traffic.go:310	0xe37b53		e8e86963ff			CALL runtime.typedslicecopy(SB)				
  traffic.go:310	0xe37b58		488b9424e8000000		MOVQ 0xe8(SP), DX					
  traffic.go:310	0xe37b60		48899424d0000000		MOVQ DX, 0xd0(SP)					
  traffic.go:310	0xe37b68		488b942480000000		MOVQ 0x80(SP), DX					
  traffic.go:310	0xe37b70		48899424d8000000		MOVQ DX, 0xd8(SP)					
  traffic.go:310	0xe37b78		488b542478			MOVQ 0x78(SP), DX					
  traffic.go:310	0xe37b7d		48899424e0000000		MOVQ DX, 0xe0(SP)					
  traffic.go:310	0xe37b85		e9de000000			JMP 0xe37c68						
  traffic.go:312	0xe37b8a		488b8424a8000000		MOVQ 0xa8(SP), AX					
  traffic.go:312	0xe37b92		488b5c2448			MOVQ 0x48(SP), BX					
  traffic.go:314	0xe37b97		f20f10442468			MOVSD_XMM 0x68(SP), X0					
  traffic.go:312	0xe37b9d		488b9424d8000000		MOVQ 0xd8(SP), DX					
  traffic.go:312	0xe37ba5		4c8d041a			LEAQ 0(DX)(BX*1), R8					
  traffic.go:312	0xe37ba9		488b8c24e0000000		MOVQ 0xe0(SP), CX					
  traffic.go:312	0xe37bb1		4c8b8c24d0000000		MOVQ 0xd0(SP), R9					
  traffic.go:312	0xe37bb9		4c39c1				CMPQ CX, R8						
  traffic.go:312	0xe37bbc		7338				JAE 0xe37bf6						
  traffic.go:312	0xe37bbe		4889942480000000		MOVQ DX, 0x80(SP)					
  traffic.go:312	0xe37bc6		4c89c8				MOVQ R9, AX						
  traffic.go:312	0xe37bc9		4889df				MOVQ BX, DI						
  traffic.go:312	0xe37bcc		488d354dad2000			LEAQ runtime.types+383264(SB), SI			
  traffic.go:312	0xe37bd3		4c89c3				MOVQ R8, BX						
  traffic.go:312	0xe37bd6		e865a063ff			CALL runtime.growslice(SB)				
  traffic.go:312	0xe37bdb		488b942480000000		MOVQ 0x80(SP), DX					
  traffic.go:312	0xe37be3		4989d8				MOVQ BX, R8						
  traffic.go:312	0xe37be6		4989c1				MOVQ AX, R9						
  traffic.go:312	0xe37be9		488b8424a8000000		MOVQ 0xa8(SP), AX					
  traffic.go:312	0xe37bf1		488b5c2448			MOVQ 0x48(SP), BX					
  traffic.go:312	0xe37bf6		4c898c24e8000000		MOVQ R9, 0xe8(SP)					
  traffic.go:312	0xe37bfe		4c89842480000000		MOVQ R8, 0x80(SP)					
  traffic.go:312	0xe37c06		48894c2478			MOVQ CX, 0x78(SP)					
  traffic.go:312	0xe37c0b		4989d2				MOVQ DX, R10						
  traffic.go:312	0xe37c0e		4829ca				SUBQ CX, DX						
  traffic.go:312	0xe37c11		4d29d0				SUBQ R10, R8						
  traffic.go:312	0xe37c14		49c1e204			SHLQ $__subsystem__+1(SB), R10				
  traffic.go:312	0xe37c18		48c1fa3f			SARQ $__major_os_version__+57(SB), DX			
  traffic.go:312	0xe37c1c		4921d2				ANDQ DX, R10						
  traffic.go:312	0xe37c1f		4b8d1411			LEAQ 0(R9)(R10*1), DX					
  traffic.go:312	0xe37c23		4889c7				MOVQ AX, DI						
  traffic.go:312	0xe37c26		4889de				MOVQ BX, SI						
  traffic.go:312	0xe37c29		488d05f0ac2000			LEAQ runtime.types+383264(SB), AX			
  traffic.go:312	0xe37c30		4889d3				MOVQ DX, BX						
  traffic.go:312	0xe37c33		4c89c1				MOVQ R8, CX						
  traffic.go:312	0xe37c36		e8056963ff			CALL runtime.typedslicecopy(SB)				
  traffic.go:312	0xe37c3b		488b9424e8000000		MOVQ 0xe8(SP), DX					
  traffic.go:312	0xe37c43		48899424d0000000		MOVQ DX, 0xd0(SP)					
  traffic.go:312	0xe37c4b		488b942480000000		MOVQ 0x80(SP), DX					
  traffic.go:312	0xe37c53		48899424d8000000		MOVQ DX, 0xd8(SP)					
  traffic.go:312	0xe37c5b		488b542478			MOVQ 0x78(SP), DX					
  traffic.go:312	0xe37c60		48899424e0000000		MOVQ DX, 0xe0(SP)					
  traffic.go:314	0xe37c68		f20f10442440			MOVSD_XMM 0x40(SP), X0					
  traffic.go:314	0xe37c6e		f20f104c2468			MOVSD_XMM 0x68(SP), X1					
  traffic.go:314	0xe37c74		f20f58c1			ADDSD X1, X0						
  traffic.go:314	0xe37c78		f20f11442440			MOVSD_XMM X0, 0x40(SP)					
  traffic.go:314	0xe37c7e		b801000000			MOVL $__minor_os_version__(SB), AX			
  traffic.go:330	0xe37c83		84c0				TESTL AL, AL						
  traffic.go:330	0xe37c85		745d				JE 0xe37ce4						
  traffic.go:334	0xe37c87		488d05f2472800			LEAQ runtime.types+881792(SB), AX			
  traffic.go:334	0xe37c8e		e80d9b5dff			CALL runtime.newobject(SB)				
  traffic.go:334	0xe37c93		488b8c24d8000000		MOVQ 0xd8(SP), CX					
  traffic.go:334	0xe37c9b		488b9424e0000000		MOVQ 0xe0(SP), DX					
  traffic.go:334	0xe37ca3		488b9c24d0000000		MOVQ 0xd0(SP), BX					
  traffic.go:334	0xe37cab		48894808			MOVQ CX, 0x8(AX)					
  traffic.go:334	0xe37caf		48895010			MOVQ DX, 0x10(AX)					
  traffic.go:334	0xe37cb3		833d965e720200			CMPL runtime.writeBarrier(SB), $0x0			
  traffic.go:334	0xe37cba		740c				JE 0xe37cc8						
  traffic.go:334	0xe37cbc		0f1f4000			NOPL 0(AX)						
  traffic.go:334	0xe37cc0		e85b0764ff			CALL runtime.gcWriteBarrier1(SB)			
  traffic.go:334	0xe37cc5		49891b				MOVQ BX, 0(R11)						
  traffic.go:334	0xe37cc8		488918				MOVQ BX, 0(AX)						
  traffic.go:334	0xe37ccb		f20f10442440			MOVSD_XMM 0x40(SP), X0					
  traffic.go:334	0xe37cd1		f20f114018			MOVSD_XMM X0, 0x18(AX)					
  traffic.go:334	0xe37cd6		bb01000000			MOVL $__minor_os_version__(SB), BX			
  traffic.go:334	0xe37cdb		4881c4f0000000			ADDQ $.file+163(SB), SP					
  traffic.go:334	0xe37ce2		5d				POPQ BP							
  traffic.go:334	0xe37ce3		c3				RET							
  traffic.go:331	0xe37ce4		31c0				XORL AX, AX						
  traffic.go:331	0xe37ce6		31db				XORL BX, BX						
  traffic.go:331	0xe37ce8		4881c4f0000000			ADDQ $.file+163(SB), SP					
  traffic.go:331	0xe37cef		5d				POPQ BP							
  traffic.go:331	0xe37cf0		c3				RET							
  traffic.go:328	0xe37cf1		31c0				XORL AX, AX						
  traffic.go:328	0xe37cf3		31db				XORL BX, BX						
  traffic.go:328	0xe37cf5		4881c4f0000000			ADDQ $.file+163(SB), SP					
  traffic.go:328	0xe37cfc		5d				POPQ BP							
  traffic.go:328	0xe37cfd		c3				RET							
  traffic.go:323	0xe37cfe		31c0				XORL AX, AX						
  traffic.go:323	0xe37d00		31db				XORL BX, BX						
  traffic.go:323	0xe37d02		4881c4f0000000			ADDQ $.file+163(SB), SP					
  traffic.go:323	0xe37d09		5d				POPQ BP							
  traffic.go:323	0xe37d0a		c3				RET							
  traffic.go:320	0xe37d0b		31c0				XORL AX, AX						
  traffic.go:320	0xe37d0d		31db				XORL BX, BX						
  traffic.go:320	0xe37d0f		4881c4f0000000			ADDQ $.file+163(SB), SP					
  traffic.go:320	0xe37d16		5d				POPQ BP							
  traffic.go:320	0xe37d17		c3				RET							
  traffic.go:293	0xe37d18		31c0				XORL AX, AX						
  traffic.go:293	0xe37d1a		31db				XORL BX, BX						
  traffic.go:293	0xe37d1c		4881c4f0000000			ADDQ $.file+163(SB), SP					
  traffic.go:293	0xe37d23		5d				POPQ BP							
  traffic.go:293	0xe37d24		c3				RET							
  traffic.go:287	0xe37d25		31c0				XORL AX, AX						
  traffic.go:287	0xe37d27		bb01000000			MOVL $__minor_os_version__(SB), BX			
  traffic.go:287	0xe37d2c		4881c4f0000000			ADDQ $.file+163(SB), SP					
  traffic.go:287	0xe37d33		5d				POPQ BP							
  traffic.go:287	0xe37d34		c3				RET							
  traffic.go:285	0xe37d35		4889442408			MOVQ AX, 0x8(SP)					
  traffic.go:285	0xe37d3a		48895c2410			MOVQ BX, 0x10(SP)					
  traffic.go:285	0xe37d3f		48894c2418			MOVQ CX, 0x18(SP)					
  traffic.go:285	0xe37d44		48897c2420			MOVQ DI, 0x20(SP)					
  traffic.go:285	0xe37d49		f20f11442428			MOVSD_XMM X0, 0x28(SP)					
  traffic.go:285	0xe37d4f		f20f114c2430			MOVSD_XMM X1, 0x30(SP)					
  traffic.go:285	0xe37d55		f20f11542438			MOVSD_XMM X2, 0x38(SP)					
  traffic.go:285	0xe37d5b		f20f115c2440			MOVSD_XMM X3, 0x40(SP)					
  traffic.go:285	0xe37d61		f20f11642448			MOVSD_XMM X4, 0x48(SP)					
  traffic.go:285	0xe37d67		f20f116c2450			MOVSD_XMM X5, 0x50(SP)					
  traffic.go:285	0xe37d6d		e86ee763ff			CALL runtime.morestack_noctxt.abi0(SB)			
  traffic.go:285	0xe37d72		488b442408			MOVQ 0x8(SP), AX					
  traffic.go:285	0xe37d77		488b5c2410			MOVQ 0x10(SP), BX					
  traffic.go:285	0xe37d7c		488b4c2418			MOVQ 0x18(SP), CX					
  traffic.go:285	0xe37d81		488b7c2420			MOVQ 0x20(SP), DI					
  traffic.go:285	0xe37d86		f20f10442428			MOVSD_XMM 0x28(SP), X0					
  traffic.go:285	0xe37d8c		f20f104c2430			MOVSD_XMM 0x30(SP), X1					
  traffic.go:285	0xe37d92		f20f10542438			MOVSD_XMM 0x38(SP), X2					
  traffic.go:285	0xe37d98		f20f105c2440			MOVSD_XMM 0x40(SP), X3					
  traffic.go:285	0xe37d9e		f20f10642448			MOVSD_XMM 0x48(SP), X4					
  traffic.go:285	0xe37da4		f20f106c2450			MOVSD_XMM 0x50(SP), X5					
  traffic.go:285	0xe37daa		e9f1f6ffff			JMP CAS-Backend/pkg/diapdu.PlanTaskRoute(SB)		
  :-1			0xe37daf		cc				INT $__subsystem__(SB)					
  :-1			0xe37db0		cc				INT $__subsystem__(SB)					
  :-1			0xe37db1		cc				INT $__subsystem__(SB)					
  :-1			0xe37db2		cc				INT $__subsystem__(SB)					
  :-1			0xe37db3		cc				INT $__subsystem__(SB)					
  :-1			0xe37db4		cc				INT $__subsystem__(SB)					
  :-1			0xe37db5		cc				INT $__subsystem__(SB)					
  :-1			0xe37db6		cc				INT $__subsystem__(SB)					
  :-1			0xe37db7		cc				INT $__subsystem__(SB)					
  :-1			0xe37db8		cc				INT $__subsystem__(SB)					
  :-1			0xe37db9		cc				INT $__subsystem__(SB)					
  :-1			0xe37dba		cc				INT $__subsystem__(SB)					
  :-1			0xe37dbb		cc				INT $__subsystem__(SB)					
  :-1			0xe37dbc		cc				INT $__subsystem__(SB)					
  :-1			0xe37dbd		cc				INT $__subsystem__(SB)					
  :-1			0xe37dbe		cc				INT $__subsystem__(SB)					
  :-1			0xe37dbf		cc				INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.StraightLineTaskDistance(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/traffic.go
  traffic.go:338	0xe37dc0		90			NOPL			
  diaodu.go:319		0xe37dc1		f20f5cc2		SUBSD X2, X0		
  diaodu.go:320		0xe37dc5		f20f5ccb		SUBSD X3, X1		
  diaodu.go:321		0xe37dc9		f20f59c0		MULSD X0, X0		
  diaodu.go:321		0xe37dcd		f20f59c9		MULSD X1, X1		
  diaodu.go:321		0xe37dd1		f20f58c8		ADDSD X0, X1		
  diaodu.go:319		0xe37dd5		f20f5cd4		SUBSD X4, X2		
  diaodu.go:320		0xe37dd9		f20f5cdd		SUBSD X5, X3		
  diaodu.go:321		0xe37ddd		f20f59d2		MULSD X2, X2		
  diaodu.go:321		0xe37de1		f20f59db		MULSD X3, X3		
  diaodu.go:321		0xe37de5		f20f58da		ADDSD X2, X3		
  sqrt.go:94		0xe37de9		f20f51c1		SQRTSD X1, X0		
  sqrt.go:94		0xe37ded		f20f51cb		SQRTSD X3, X1		
  traffic.go:342	0xe37df1		f20f58c1		ADDSD X1, X0		
  traffic.go:342	0xe37df5		c3			RET			
  :-1			0xe37df6		cc			INT $__subsystem__(SB)	
  :-1			0xe37df7		cc			INT $__subsystem__(SB)	
  :-1			0xe37df8		cc			INT $__subsystem__(SB)	
  :-1			0xe37df9		cc			INT $__subsystem__(SB)	
  :-1			0xe37dfa		cc			INT $__subsystem__(SB)	
  :-1			0xe37dfb		cc			INT $__subsystem__(SB)	
  :-1			0xe37dfc		cc			INT $__subsystem__(SB)	
  :-1			0xe37dfd		cc			INT $__subsystem__(SB)	
  :-1			0xe37dfe		cc			INT $__subsystem__(SB)	
  :-1			0xe37dff		cc			INT $__subsystem__(SB)	

