TEXT CAS-Backend/biz/dao.Task.TableName(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:221	0x997a00		488d057cc67d00		LEAQ go:string.*+47995(SB), AX		
  task_dao.go:221	0x997a07		bb08000000		MOVL $__major_os_version__+2(SB), BX	
  task_dao.go:221	0x997a0c		c3			RET					
  :-1			0x997a0d		cc			INT $__subsystem__(SB)			
  :-1			0x997a0e		cc			INT $__subsystem__(SB)			
  :-1			0x997a0f		cc			INT $__subsystem__(SB)			
  :-1			0x997a10		cc			INT $__subsystem__(SB)			
  :-1			0x997a11		cc			INT $__subsystem__(SB)			
  :-1			0x997a12		cc			INT $__subsystem__(SB)			
  :-1			0x997a13		cc			INT $__subsystem__(SB)			
  :-1			0x997a14		cc			INT $__subsystem__(SB)			
  :-1			0x997a15		cc			INT $__subsystem__(SB)			
  :-1			0x997a16		cc			INT $__subsystem__(SB)			
  :-1			0x997a17		cc			INT $__subsystem__(SB)			
  :-1			0x997a18		cc			INT $__subsystem__(SB)			
  :-1			0x997a19		cc			INT $__subsystem__(SB)			
  :-1			0x997a1a		cc			INT $__subsystem__(SB)			
  :-1			0x997a1b		cc			INT $__subsystem__(SB)			
  :-1			0x997a1c		cc			INT $__subsystem__(SB)			
  :-1			0x997a1d		cc			INT $__subsystem__(SB)			
  :-1			0x997a1e		cc			INT $__subsystem__(SB)			
  :-1			0x997a1f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.(*Task).JSONMarshal(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:225	0x997a20		493b6610		CMPQ SP, 0x10(R14)				
  task_dao.go:225	0x997a24		764b			JBE 0x997a71					
  task_dao.go:225	0x997a26		55			PUSHQ BP					
  task_dao.go:225	0x997a27		4889e5			MOVQ SP, BP					
  task_dao.go:225	0x997a2a		4883ec18		SUBQ $__major_os_version__+18(SB), SP		
  task_dao.go:225	0x997a2e		48895c2430		MOVQ BX, 0x30(SP)				
  task_dao.go:225	0x997a33		48894c2438		MOVQ CX, 0x38(SP)				
  task_dao.go:226	0x997a38		4889d8			MOVQ BX, AX					
  task_dao.go:226	0x997a3b		4889cb			MOVQ CX, BX					
  task_dao.go:226	0x997a3e		6690			NOPW						
  task_dao.go:226	0x997a40		e85b5abdff		CALL encoding/json.Marshal(SB)			
  task_dao.go:227	0x997a45		4885ff			TESTQ DI, DI					
  task_dao.go:227	0x997a48		7410			JE 0x997a5a					
  task_dao.go:228	0x997a4a		31c0			XORL AX, AX					
  task_dao.go:228	0x997a4c		31db			XORL BX, BX					
  task_dao.go:228	0x997a4e		4889f9			MOVQ DI, CX					
  task_dao.go:228	0x997a51		4889f7			MOVQ SI, DI					
  task_dao.go:228	0x997a54		4883c418		ADDQ $__major_os_version__+18(SB), SP		
  task_dao.go:228	0x997a58		5d			POPQ BP						
  task_dao.go:228	0x997a59		c3			RET						
  task_dao.go:230	0x997a5a		4889d9			MOVQ BX, CX					
  task_dao.go:230	0x997a5d		4889c3			MOVQ AX, BX					
  task_dao.go:230	0x997a60		31c0			XORL AX, AX					
  task_dao.go:230	0x997a62		e819acadff		CALL runtime.slicebytetostring(SB)		
  task_dao.go:230	0x997a67		31c9			XORL CX, CX					
  task_dao.go:230	0x997a69		31ff			XORL DI, DI					
  task_dao.go:230	0x997a6b		4883c418		ADDQ $__major_os_version__+18(SB), SP		
  task_dao.go:230	0x997a6f		5d			POPQ BP						
  task_dao.go:230	0x997a70		c3			RET						
  task_dao.go:225	0x997a71		4889442408		MOVQ AX, 0x8(SP)				
  task_dao.go:225	0x997a76		48895c2410		MOVQ BX, 0x10(SP)				
  task_dao.go:225	0x997a7b		48894c2418		MOVQ CX, 0x18(SP)				
  task_dao.go:225	0x997a80		e85beaadff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_dao.go:225	0x997a85		488b442408		MOVQ 0x8(SP), AX				
  task_dao.go:225	0x997a8a		488b5c2410		MOVQ 0x10(SP), BX				
  task_dao.go:225	0x997a8f		488b4c2418		MOVQ 0x18(SP), CX				
  task_dao.go:225	0x997a94		eb8a			JMP CAS-Backend/biz/dao.(*Task).JSONMarshal(SB)	
  :-1			0x997a96		cc			INT $__subsystem__(SB)				
  :-1			0x997a97		cc			INT $__subsystem__(SB)				
  :-1			0x997a98		cc			INT $__subsystem__(SB)				
  :-1			0x997a99		cc			INT $__subsystem__(SB)				
  :-1			0x997a9a		cc			INT $__subsystem__(SB)				
  :-1			0x997a9b		cc			INT $__subsystem__(SB)				
  :-1			0x997a9c		cc			INT $__subsystem__(SB)				
  :-1			0x997a9d		cc			INT $__subsystem__(SB)				
  :-1			0x997a9e		cc			INT $__subsystem__(SB)				
  :-1			0x997a9f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.(*Task).JSONUnmarshal(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:234	0x997aa0		493b6610		CMPQ SP, 0x10(R14)					
  task_dao.go:234	0x997aa4		7634			JBE 0x997ada						
  task_dao.go:234	0x997aa6		55			PUSHQ BP						
  task_dao.go:234	0x997aa7		4889e5			MOVQ SP, BP						
  task_dao.go:234	0x997aaa		4883ec28		SUBQ $__major_os_version__+34(SB), SP			
  task_dao.go:234	0x997aae		48895c2440		MOVQ BX, 0x40(SP)					
  task_dao.go:235	0x997ab3		48897c2450		MOVQ DI, 0x50(SP)					
  task_dao.go:235	0x997ab8		4889742458		MOVQ SI, 0x58(SP)					
  task_dao.go:235	0x997abd		31c0			XORL AX, AX						
  task_dao.go:235	0x997abf		90			NOPL							
  task_dao.go:235	0x997ac0		e87bddabff		CALL runtime.stringtoslicebyte(SB)			
  task_dao.go:235	0x997ac5		488b7c2450		MOVQ 0x50(SP), DI					
  task_dao.go:235	0x997aca		488b742458		MOVQ 0x58(SP), SI					
  task_dao.go:235	0x997acf		e80cfabcff		CALL encoding/json.Unmarshal(SB)			
  task_dao.go:235	0x997ad4		4883c428		ADDQ $__major_os_version__+34(SB), SP			
  task_dao.go:235	0x997ad8		5d			POPQ BP							
  task_dao.go:235	0x997ad9		c3			RET							
  task_dao.go:234	0x997ada		4889442408		MOVQ AX, 0x8(SP)					
  task_dao.go:234	0x997adf		48895c2410		MOVQ BX, 0x10(SP)					
  task_dao.go:234	0x997ae4		48894c2418		MOVQ CX, 0x18(SP)					
  task_dao.go:234	0x997ae9		48897c2420		MOVQ DI, 0x20(SP)					
  task_dao.go:234	0x997aee		4889742428		MOVQ SI, 0x28(SP)					
  task_dao.go:234	0x997af3		e8e8e9adff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_dao.go:234	0x997af8		488b442408		MOVQ 0x8(SP), AX					
  task_dao.go:234	0x997afd		488b5c2410		MOVQ 0x10(SP), BX					
  task_dao.go:234	0x997b02		488b4c2418		MOVQ 0x18(SP), CX					
  task_dao.go:234	0x997b07		488b7c2420		MOVQ 0x20(SP), DI					
  task_dao.go:234	0x997b0c		488b742428		MOVQ 0x28(SP), SI					
  task_dao.go:234	0x997b11		eb8d			JMP CAS-Backend/biz/dao.(*Task).JSONUnmarshal(SB)	
  :-1			0x997b13		cc			INT $__subsystem__(SB)					
  :-1			0x997b14		cc			INT $__subsystem__(SB)					
  :-1			0x997b15		cc			INT $__subsystem__(SB)					
  :-1			0x997b16		cc			INT $__subsystem__(SB)					
  :-1			0x997b17		cc			INT $__subsystem__(SB)					
  :-1			0x997b18		cc			INT $__subsystem__(SB)					
  :-1			0x997b19		cc			INT $__subsystem__(SB)					
  :-1			0x997b1a		cc			INT $__subsystem__(SB)					
  :-1			0x997b1b		cc			INT $__subsystem__(SB)					
  :-1			0x997b1c		cc			INT $__subsystem__(SB)					
  :-1			0x997b1d		cc			INT $__subsystem__(SB)					
  :-1			0x997b1e		cc			INT $__subsystem__(SB)					
  :-1			0x997b1f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/dao.Insert_task(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:238	0x997b20		493b6610		CMPQ SP, 0x10(R14)			
  task_dao.go:238	0x997b24		0f86e6000000		JBE 0x997c10				
  task_dao.go:238	0x997b2a		55			PUSHQ BP				
  task_dao.go:238	0x997b2b		4889e5			MOVQ SP, BP				
  task_dao.go:238	0x997b2e		4883ec58		SUBQ $.file+11(SB), SP			
  task_dao.go:240	0x997b32		4889442468		MOVQ AX, 0x68(SP)			
  task_dao.go:239	0x997b37		488b1502a5b702		MOVQ runtime.bss(SB), DX		
  task_dao.go:239	0x997b3e		488d1dbbb17000		LEAQ runtime.types+777472(SB), BX	
  task_dao.go:239	0x997b45		4889c1			MOVQ AX, CX				
  task_dao.go:239	0x997b48		4889d0			MOVQ DX, AX				
  task_dao.go:239	0x997b4b		e8f07ef8ff		CALL gorm.io/gorm.(*DB).Create(SB)	
  task_dao.go:240	0x997b50		4883780800		CMPQ 0x8(AX), $0x0			
  task_dao.go:240	0x997b55		7456			JE 0x997bad				
  task_dao.go:241	0x997b57		440f117c2448		MOVUPS X15, 0x48(SP)			
  task_dao.go:241	0x997b5d		488b5008		MOVQ 0x8(AX), DX			
  task_dao.go:241	0x997b61		4885d2			TESTQ DX, DX				
  task_dao.go:241	0x997b64		7404			JE 0x997b6a				
  task_dao.go:241	0x997b66		488b5208		MOVQ 0x8(DX), DX			
  task_dao.go:241	0x997b6a		4c8b5010		MOVQ 0x10(AX), R10			
  task_dao.go:241	0x997b6e		4889542448		MOVQ DX, 0x48(SP)			
  task_dao.go:241	0x997b73		4c89542450		MOVQ R10, 0x50(SP)			
  print.go:233		0x997b78		488b1d01a5b702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x997b7f		488d055a3f4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x997b86		488d0d163c7e00		LEAQ go:string.*+78491(SB), CX		
  print.go:233		0x997b8d		bf10000000		MOVL $__major_os_version__+10(SB), DI	
  print.go:233		0x997b92		488d742448		LEAQ 0x48(SP), SI			
  print.go:233		0x997b97		41b801000000		MOVL $__minor_os_version__(SB), R8	
  print.go:233		0x997b9d		4d89c1			MOVQ R8, R9				
  print.go:233		0x997ba0		e87b76b8ff		CALL fmt.Fprintf(SB)			
  task_dao.go:242	0x997ba5		31c0			XORL AX, AX				
  task_dao.go:242	0x997ba7		4883c458		ADDQ $.file+11(SB), SP			
  task_dao.go:242	0x997bab		5d			POPQ BP					
  task_dao.go:242	0x997bac		c3			RET					
  task_dao.go:245	0x997bad		440f117c2438		MOVUPS X15, 0x38(SP)			
  task_dao.go:245	0x997bb3		488b4c2468		MOVQ 0x68(SP), CX			
  task_dao.go:245	0x997bb8		488b01			MOVQ 0(CX), AX				
  task_dao.go:245	0x997bbb		0f1f440000		NOPL 0(AX)(AX*1)			
  task_dao.go:245	0x997bc0		e8db24adff		CALL runtime.convT64(SB)		
  task_dao.go:245	0x997bc5		488d0d94af6a00		LEAQ runtime.types+383840(SB), CX	
  task_dao.go:245	0x997bcc		48894c2438		MOVQ CX, 0x38(SP)			
  task_dao.go:245	0x997bd1		4889442440		MOVQ AX, 0x40(SP)			
  print.go:233		0x997bd6		488b1da3a4b702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x997bdd		488d05fc3e4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x997be4		488d0df7847e00		LEAQ go:string.*+97242(SB), CX		
  print.go:233		0x997beb		bf14000000		MOVL $__major_os_version__+14(SB), DI	
  print.go:233		0x997bf0		488d742438		LEAQ 0x38(SP), SI			
  print.go:233		0x997bf5		41b801000000		MOVL $__minor_os_version__(SB), R8	
  print.go:233		0x997bfb		4d89c1			MOVQ R8, R9				
  print.go:233		0x997bfe		6690			NOPW					
  print.go:233		0x997c00		e81b76b8ff		CALL fmt.Fprintf(SB)			
  task_dao.go:246	0x997c05		b801000000		MOVL $__minor_os_version__(SB), AX	
  task_dao.go:246	0x997c0a		4883c458		ADDQ $.file+11(SB), SP			
  task_dao.go:246	0x997c0e		5d			POPQ BP					
  task_dao.go:246	0x997c0f		c3			RET					
  task_dao.go:238	0x997c10		4889442408		MOVQ AX, 0x8(SP)			
  task_dao.go:238	0x997c15		e8c6e8adff		CALL runtime.morestack_noctxt.abi0(SB)	
  task_dao.go:238	0x997c1a		488b442408		MOVQ 0x8(SP), AX			
  task_dao.go:238	0x997c1f		90			NOPL					
  task_dao.go:238	0x997c20		e9fbfeffff		JMP CAS-Backend/biz/dao.Insert_task(SB)	
  :-1			0x997c25		cc			INT $__subsystem__(SB)			
  :-1			0x997c26		cc			INT $__subsystem__(SB)			
  :-1			0x997c27		cc			INT $__subsystem__(SB)			
  :-1			0x997c28		cc			INT $__subsystem__(SB)			
  :-1			0x997c29		cc			INT $__subsystem__(SB)			
  :-1			0x997c2a		cc			INT $__subsystem__(SB)			
  :-1			0x997c2b		cc			INT $__subsystem__(SB)			
  :-1			0x997c2c		cc			INT $__subsystem__(SB)			
  :-1			0x997c2d		cc			INT $__subsystem__(SB)			
  :-1			0x997c2e		cc			INT $__subsystem__(SB)			
  :-1			0x997c2f		cc			INT $__subsystem__(SB)			
  :-1			0x997c30		cc			INT $__subsystem__(SB)			
  :-1			0x997c31		cc			INT $__subsystem__(SB)			
  :-1			0x997c32		cc			INT $__subsystem__(SB)			
  :-1			0x997c33		cc			INT $__subsystem__(SB)			
  :-1			0x997c34		cc			INT $__subsystem__(SB)			
  :-1			0x997c35		cc			INT $__subsystem__(SB)			
  :-1			0x997c36		cc			INT $__subsystem__(SB)			
  :-1			0x997c37		cc			INT $__subsystem__(SB)			
  :-1			0x997c38		cc			INT $__subsystem__(SB)			
  :-1			0x997c39		cc			INT $__subsystem__(SB)			
  :-1			0x997c3a		cc			INT $__subsystem__(SB)			
  :-1			0x997c3b		cc			INT $__subsystem__(SB)			
  :-1			0x997c3c		cc			INT $__subsystem__(SB)			
  :-1			0x997c3d		cc			INT $__subsystem__(SB)			
  :-1			0x997c3e		cc			INT $__subsystem__(SB)			
  :-1			0x997c3f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.Delete_task(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:249	0x997c40		4c8d6424e8		LEAQ -0x18(SP), R12			
  task_dao.go:249	0x997c45		4d3b6610		CMPQ R12, 0x10(R14)			
  task_dao.go:249	0x997c49		0f86ad010000		JBE 0x997dfc				
  task_dao.go:249	0x997c4f		55			PUSHQ BP				
  task_dao.go:249	0x997c50		4889e5			MOVQ SP, BP				
  task_dao.go:249	0x997c53		4881ec90000000		SUBQ $.file+67(SB), SP			
  task_dao.go:252	0x997c5a		48898424a0000000	MOVQ AX, 0xa0(SP)			
  task_dao.go:251	0x997c62		488d05373e7a00		LEAQ runtime.types+1403552(SB), AX	
  task_dao.go:251	0x997c69		e8329ba7ff		CALL runtime.newobject(SB)		
  task_dao.go:251	0x997c6e		4889442448		MOVQ AX, 0x48(SP)			
  task_dao.go:251	0x997c73		488d0526626b00		LEAQ runtime.types+429728(SB), AX	
  task_dao.go:251	0x997c7a		e8219ba7ff		CALL runtime.newobject(SB)		
  task_dao.go:251	0x997c7f		4889442440		MOVQ AX, 0x40(SP)			
  task_dao.go:251	0x997c84		488b8424a0000000	MOVQ 0xa0(SP), AX			
  task_dao.go:251	0x997c8c		e80f24adff		CALL runtime.convT64(SB)		
  task_dao.go:251	0x997c91		488d0dc8ae6a00		LEAQ runtime.types+383840(SB), CX	
  task_dao.go:251	0x997c98		488b7c2440		MOVQ 0x40(SP), DI			
  task_dao.go:251	0x997c9d		48890f			MOVQ CX, 0(DI)				
  task_dao.go:251	0x997ca0		833da95ebc0200		CMPL runtime.writeBarrier(SB), $0x0	
  task_dao.go:251	0x997ca7		7410			JE 0x997cb9				
  task_dao.go:251	0x997ca9		e89207aeff		CALL runtime.gcWriteBarrier2(SB)	
  task_dao.go:251	0x997cae		498903			MOVQ AX, 0(R11)				
  task_dao.go:251	0x997cb1		488b5708		MOVQ 0x8(DI), DX			
  task_dao.go:251	0x997cb5		49895308		MOVQ DX, 0x8(R11)			
  task_dao.go:251	0x997cb9		48894708		MOVQ AX, 0x8(DI)			
  task_dao.go:251	0x997cbd		488b057ca3b702		MOVQ runtime.bss(SB), AX		
  task_dao.go:251	0x997cc4		488d1d35b07000		LEAQ runtime.types+777472(SB), BX	
  task_dao.go:251	0x997ccb		488b4c2448		MOVQ 0x48(SP), CX			
  task_dao.go:251	0x997cd0		be01000000		MOVL $__minor_os_version__(SB), SI	
  task_dao.go:251	0x997cd5		4989f0			MOVQ SI, R8				
  task_dao.go:251	0x997cd8		e843b4f8ff		CALL gorm.io/gorm.(*DB).Delete(SB)	
  task_dao.go:251	0x997cdd		4889442438		MOVQ AX, 0x38(SP)			
  task_dao.go:252	0x997ce2		4883780800		CMPQ 0x8(AX), $0x0			
  task_dao.go:252	0x997ce7		0f848b000000		JE 0x997d78				
  task_dao.go:253	0x997ced		440f117c2470		MOVUPS X15, 0x70(SP)			
  task_dao.go:253	0x997cf3		440f11bc2480000000	MOVUPS X15, 0x80(SP)			
  task_dao.go:253	0x997cfc		488b8424a0000000	MOVQ 0xa0(SP), AX			
  task_dao.go:253	0x997d04		e89723adff		CALL runtime.convT64(SB)		
  task_dao.go:253	0x997d09		488d0d50ae6a00		LEAQ runtime.types+383840(SB), CX	
  task_dao.go:253	0x997d10		48894c2470		MOVQ CX, 0x70(SP)			
  task_dao.go:253	0x997d15		4889442478		MOVQ AX, 0x78(SP)			
  task_dao.go:253	0x997d1a		488b4c2438		MOVQ 0x38(SP), CX			
  task_dao.go:253	0x997d1f		488b5108		MOVQ 0x8(CX), DX			
  task_dao.go:253	0x997d23		4885d2			TESTQ DX, DX				
  task_dao.go:253	0x997d26		7404			JE 0x997d2c				
  task_dao.go:253	0x997d28		488b5208		MOVQ 0x8(DX), DX			
  task_dao.go:253	0x997d2c		4c8b5110		MOVQ 0x10(CX), R10			
  task_dao.go:253	0x997d30		4889942480000000	MOVQ DX, 0x80(SP)			
  task_dao.go:253	0x997d38		4c89942488000000	MOVQ R10, 0x88(SP)			
  print.go:233		0x997d40		488b1d39a3b702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x997d47		488d05923d4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x997d4e		488d0d335b7f00		LEAQ go:string.*+152448(SB), CX		
  print.go:233		0x997d55		bf20000000		MOVL $__major_os_version__+26(SB), DI	
  print.go:233		0x997d5a		488d742470		LEAQ 0x70(SP), SI			
  print.go:233		0x997d5f		41b802000000		MOVL $__minor_os_version__+1(SB), R8	
  print.go:233		0x997d65		4d89c1			MOVQ R8, R9				
  print.go:233		0x997d68		e8b374b8ff		CALL fmt.Fprintf(SB)			
  task_dao.go:254	0x997d6d		31c0			XORL AX, AX				
  task_dao.go:254	0x997d6f		4881c490000000		ADDQ $.file+67(SB), SP			
  task_dao.go:254	0x997d76		5d			POPQ BP					
  task_dao.go:254	0x997d77		c3			RET					
  task_dao.go:257	0x997d78		440f117c2450		MOVUPS X15, 0x50(SP)			
  task_dao.go:257	0x997d7e		440f117c2460		MOVUPS X15, 0x60(SP)			
  task_dao.go:257	0x997d84		488b8424a0000000	MOVQ 0xa0(SP), AX			
  task_dao.go:257	0x997d8c		e80f23adff		CALL runtime.convT64(SB)		
  task_dao.go:257	0x997d91		488d0dc8ad6a00		LEAQ runtime.types+383840(SB), CX	
  task_dao.go:257	0x997d98		48894c2450		MOVQ CX, 0x50(SP)			
  task_dao.go:257	0x997d9d		4889442458		MOVQ AX, 0x58(SP)			
  task_dao.go:257	0x997da2		488b4c2438		MOVQ 0x38(SP), CX			
  task_dao.go:257	0x997da7		488b4118		MOVQ 0x18(CX), AX			
  task_dao.go:257	0x997dab		e8f022adff		CALL runtime.convT64(SB)		
  task_dao.go:257	0x997db0		488d0d29ad6a00		LEAQ runtime.types+383712(SB), CX	
  task_dao.go:257	0x997db7		48894c2460		MOVQ CX, 0x60(SP)			
  task_dao.go:257	0x997dbc		4889442468		MOVQ AX, 0x68(SP)			
  print.go:233		0x997dc1		488b1db8a2b702		MOVQ os.Stdout(SB), BX			
  print.go:233		0x997dc8		488d05113d4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX	
  print.go:233		0x997dcf		488d0d2fbd7f00		LEAQ go:string.*+177661(SB), CX		
  print.go:233		0x997dd6		bf26000000		MOVL $__major_os_version__+32(SB), DI	
  print.go:233		0x997ddb		488d742450		LEAQ 0x50(SP), SI			
  print.go:233		0x997de0		41b802000000		MOVL $__minor_os_version__+1(SB), R8	
  print.go:233		0x997de6		4d89c1			MOVQ R8, R9				
  print.go:233		0x997de9		e83274b8ff		CALL fmt.Fprintf(SB)			
  task_dao.go:258	0x997dee		b801000000		MOVL $__minor_os_version__(SB), AX	
  task_dao.go:258	0x997df3		4881c490000000		ADDQ $.file+67(SB), SP			
  task_dao.go:258	0x997dfa		5d			POPQ BP					
  task_dao.go:258	0x997dfb		c3			RET					
  task_dao.go:249	0x997dfc		4889442408		MOVQ AX, 0x8(SP)			
  task_dao.go:249	0x997e01		e8dae6adff		CALL runtime.morestack_noctxt.abi0(SB)	
  task_dao.go:249	0x997e06		488b442408		MOVQ 0x8(SP), AX			
  task_dao.go:249	0x997e0b		e930feffff		JMP CAS-Backend/biz/dao.Delete_task(SB)	
  :-1			0x997e10		cc			INT $__subsystem__(SB)			
  :-1			0x997e11		cc			INT $__subsystem__(SB)			
  :-1			0x997e12		cc			INT $__subsystem__(SB)			
  :-1			0x997e13		cc			INT $__subsystem__(SB)			
  :-1			0x997e14		cc			INT $__subsystem__(SB)			
  :-1			0x997e15		cc			INT $__subsystem__(SB)			
  :-1			0x997e16		cc			INT $__subsystem__(SB)			
  :-1			0x997e17		cc			INT $__subsystem__(SB)			
  :-1			0x997e18		cc			INT $__subsystem__(SB)			
  :-1			0x997e19		cc			INT $__subsystem__(SB)			
  :-1			0x997e1a		cc			INT $__subsystem__(SB)			
  :-1			0x997e1b		cc			INT $__subsystem__(SB)			
  :-1			0x997e1c		cc			INT $__subsystem__(SB)			
  :-1			0x997e1d		cc			INT $__subsystem__(SB)			
  :-1			0x997e1e		cc			INT $__subsystem__(SB)			
  :-1			0x997e1f		cc			INT $__subsystem__(SB)			

TEXT CAS-Backend/biz/dao.Update_task(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:261	0x997e20		4c8d6424c0		LEAQ -0x40(SP), R12				
  task_dao.go:261	0x997e25		4d3b6610		CMPQ R12, 0x10(R14)				
  task_dao.go:261	0x997e29		0f8659080000		JBE 0x998688					
  task_dao.go:261	0x997e2f		55			PUSHQ BP					
  task_dao.go:261	0x997e30		4889e5			MOVQ SP, BP					
  task_dao.go:261	0x997e33		4881ecb8000000		SUBQ $.file+107(SB), SP				
  task_dao.go:263	0x997e3a		488d055f3c7a00		LEAQ runtime.types+1403552(SB), AX		
  task_dao.go:263	0x997e41		e85a99a7ff		CALL runtime.newobject(SB)			
  task_dao.go:263	0x997e46		4889442470		MOVQ AX, 0x70(SP)				
  task_dao.go:263	0x997e4b		488b0deea1b702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x997e52		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x997e55		e82609f9ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x997e5a		4889442440		MOVQ AX, 0x40(SP)				
  chainable_api.go:20	0x997e5f		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x997e63		488d1596ae7000		LEAQ runtime.types+777472(SB), DX		
  chainable_api.go:20	0x997e6a		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x997e6e		833ddb5cbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x997e75		7509			JNE 0x997e80					
  chainable_api.go:20	0x997e77		488b542470		MOVQ 0x70(SP), DX				
  chainable_api.go:20	0x997e7c		eb17			JMP 0x997e95					
  chainable_api.go:20	0x997e7e		6690			NOPW						
  chainable_api.go:20	0x997e80		e8bb05aeff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x997e85		488b542470		MOVQ 0x70(SP), DX				
  chainable_api.go:20	0x997e8a		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x997e8d		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x997e91		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x997e95		48895128		MOVQ DX, 0x28(CX)				
  task_dao.go:263	0x997e99		488d0500606b00		LEAQ runtime.types+429728(SB), AX		
  task_dao.go:263	0x997ea0		e8fb98a7ff		CALL runtime.newobject(SB)			
  task_dao.go:263	0x997ea5		4889442468		MOVQ AX, 0x68(SP)				
  task_dao.go:263	0x997eaa		488b8c24c8000000	MOVQ 0xc8(SP), CX				
  task_dao.go:263	0x997eb2		4889c8			MOVQ CX, AX					
  task_dao.go:263	0x997eb5		e8e621adff		CALL runtime.convT64(SB)			
  task_dao.go:263	0x997eba		488d0d9fac6a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:263	0x997ec1		488b7c2468		MOVQ 0x68(SP), DI				
  task_dao.go:263	0x997ec6		48890f			MOVQ CX, 0(DI)					
  task_dao.go:263	0x997ec9		833d805cbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x997ed0		7410			JE 0x997ee2					
  task_dao.go:263	0x997ed2		e86905aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x997ed7		498903			MOVQ AX, 0(R11)					
  task_dao.go:263	0x997eda		488b5708		MOVQ 0x8(DI), DX				
  task_dao.go:263	0x997ede		49895308		MOVQ DX, 0x8(R11)				
  task_dao.go:263	0x997ee2		48894708		MOVQ AX, 0x8(DI)				
  task_dao.go:263	0x997ee6		488b442440		MOVQ 0x40(SP), AX				
  task_dao.go:263	0x997eeb		488d1d2eaa6a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:263	0x997ef2		488d0d67fe4c02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX	
  task_dao.go:263	0x997ef9		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_dao.go:263	0x997efe		4989f0			MOVQ SI, R8					
  task_dao.go:263	0x997f01		e89a62f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_dao.go:263	0x997f06		4889442460		MOVQ AX, 0x60(SP)				
  task_dao.go:263	0x997f0b		bb0f000000		MOVL $__major_os_version__+9(SB), BX		
  task_dao.go:263	0x997f10		31c9			XORL CX, CX					
  task_dao.go:263	0x997f12		488d05a7556e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x997f19		e80231adff		CALL runtime.makemap(SB)			
  task_dao.go:263	0x997f1e		4889442458		MOVQ AX, 0x58(SP)				
  task_dao.go:264	0x997f23		488b9424d0000000	MOVQ 0xd0(SP), DX				
  task_dao.go:264	0x997f2b		488b9c24d8000000	MOVQ 0xd8(SP), BX				
  task_dao.go:264	0x997f33		4889d0			MOVQ DX, AX					
  task_dao.go:264	0x997f36		e8e521adff		CALL runtime.convTstring(SB)			
  task_dao.go:264	0x997f3b		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x997f40		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x997f45		488d0d3fc17d00		LEAQ go:string.*+48003(SB), CX			
  task_dao.go:263	0x997f4c		bf08000000		MOVL $__major_os_version__+2(SB), DI		
  task_dao.go:263	0x997f51		488d0568556e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x997f58		e8c360adff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x997f5d		488d15bca96a00		LEAQ runtime.types+383264(SB), DX		
  task_dao.go:263	0x997f64		488910			MOVQ DX, 0(AX)					
  task_dao.go:263	0x997f67		833de25bbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x997f6e		7507			JNE 0x997f77					
  task_dao.go:263	0x997f70		488b4c2450		MOVQ 0x50(SP), CX				
  task_dao.go:263	0x997f75		eb15			JMP 0x997f8c					
  task_dao.go:263	0x997f77		e8c404aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x997f7c		488b4c2450		MOVQ 0x50(SP), CX				
  task_dao.go:263	0x997f81		49890b			MOVQ CX, 0(R11)					
  task_dao.go:263	0x997f84		488b5808		MOVQ 0x8(AX), BX				
  task_dao.go:263	0x997f88		49895b08		MOVQ BX, 0x8(R11)				
  task_dao.go:263	0x997f8c		48894808		MOVQ CX, 0x8(AX)				
  task_dao.go:265	0x997f90		488b8424e0000000	MOVQ 0xe0(SP), AX				
  task_dao.go:265	0x997f98		e80321adff		CALL runtime.convT64(SB)			
  task_dao.go:265	0x997f9d		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x997fa2		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x997fa7		488d0d36ab7d00		LEAQ go:string.*+42460(SB), CX			
  task_dao.go:263	0x997fae		bf07000000		MOVL $__major_os_version__+1(SB), DI		
  task_dao.go:263	0x997fb3		488d0506556e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x997fba		e86160adff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x997fbf		488d0d9aab6a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:263	0x997fc6		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x997fc9		833d805bbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x997fd0		7507			JNE 0x997fd9					
  task_dao.go:263	0x997fd2		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x997fd7		eb15			JMP 0x997fee					
  task_dao.go:263	0x997fd9		e86204aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x997fde		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x997fe3		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x997fe6		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:263	0x997fea		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:263	0x997fee		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:266	0x997ff2		488b8424e8000000	MOVQ 0xe8(SP), AX				
  task_dao.go:266	0x997ffa		488b9c24f0000000	MOVQ 0xf0(SP), BX				
  task_dao.go:266	0x998002		e81921adff		CALL runtime.convTstring(SB)			
  task_dao.go:266	0x998007		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x99800c		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x998011		488d0d270a7d00		LEAQ go:string.*+1335(SB), CX			
  task_dao.go:263	0x998018		bf03000000		MOVL $__subsystem__(SB), DI			
  task_dao.go:263	0x99801d		488d059c546e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x998024		e8f75fadff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x998029		488d0df0a86a00		LEAQ runtime.types+383264(SB), CX		
  task_dao.go:263	0x998030		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x998033		833d165bbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x99803a		7507			JNE 0x998043					
  task_dao.go:263	0x99803c		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x998041		eb15			JMP 0x998058					
  task_dao.go:263	0x998043		e8f803aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x998048		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x99804d		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x998050		488b5808		MOVQ 0x8(AX), BX				
  task_dao.go:263	0x998054		49895b08		MOVQ BX, 0x8(R11)				
  task_dao.go:263	0x998058		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:267	0x99805c		488b8424f8000000	MOVQ 0xf8(SP), AX				
  task_dao.go:267	0x998064		e83720adff		CALL runtime.convT64(SB)			
  task_dao.go:267	0x998069		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x99806e		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x998073		488d0ded717d00		LEAQ go:string.*+27999(SB), CX			
  task_dao.go:263	0x99807a		bf06000000		MOVL $__major_os_version__(SB), DI		
  task_dao.go:263	0x99807f		488d053a546e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x998086		e8955fadff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x99808b		488d0dceaa6a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:263	0x998092		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x998095		833db45abc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x99809c		7507			JNE 0x9980a5					
  task_dao.go:263	0x99809e		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x9980a3		eb15			JMP 0x9980ba					
  task_dao.go:263	0x9980a5		e89603aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x9980aa		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x9980af		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x9980b2		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:263	0x9980b6		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:263	0x9980ba		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:268	0x9980be		488b842400010000	MOVQ 0x100(SP), AX				
  task_dao.go:268	0x9980c6		488b9c2408010000	MOVQ 0x108(SP), BX				
  task_dao.go:268	0x9980ce		e84d20adff		CALL runtime.convTstring(SB)			
  task_dao.go:268	0x9980d3		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x9980d8		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x9980dd		488d0de7247d00		LEAQ go:string.*+8387(SB), CX			
  task_dao.go:263	0x9980e4		bf05000000		MOVL $__subsystem__+2(SB), DI			
  task_dao.go:263	0x9980e9		488d05d0536e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x9980f0		e82b5fadff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x9980f5		488d0d24a86a00		LEAQ runtime.types+383264(SB), CX		
  task_dao.go:263	0x9980fc		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x9980ff		833d4a5abc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x998106		7507			JNE 0x99810f					
  task_dao.go:263	0x998108		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x99810d		eb15			JMP 0x998124					
  task_dao.go:263	0x99810f		e82c03aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x998114		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x998119		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x99811c		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:263	0x998120		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:263	0x998124		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:269	0x998128		488d05b1817b00		LEAQ runtime.types+1487584(SB), AX		
  task_dao.go:269	0x99812f		488d9c2428010000	LEAQ 0x128(SP), BX				
  task_dao.go:269	0x998137		e8646fa7ff		CALL runtime.convT(SB)				
  task_dao.go:269	0x99813c		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x998141		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x998146		488d0d82a97d00		LEAQ go:string.*+42439(SB), CX			
  task_dao.go:263	0x99814d		bf07000000		MOVL $__major_os_version__+1(SB), DI		
  task_dao.go:263	0x998152		488d0567536e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x998159		e8c25eadff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x99815e		488d0d7b817b00		LEAQ runtime.types+1487584(SB), CX		
  task_dao.go:263	0x998165		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x998168		833de159bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x99816f		7507			JNE 0x998178					
  task_dao.go:263	0x998171		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x998176		eb15			JMP 0x99818d					
  task_dao.go:263	0x998178		e8c302aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x99817d		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x998182		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x998185		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:263	0x998189		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:263	0x99818d		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:270	0x998191		0fb6942440010000	MOVZX 0x140(SP), DX				
  task_dao.go:270	0x998199		4889542438		MOVQ DX, 0x38(SP)				
  task_dao.go:263	0x99819e		488d051b536e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x9981a5		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x9981aa		488d0d8b087d00		LEAQ go:string.*+1332(SB), CX			
  task_dao.go:263	0x9981b1		bf03000000		MOVL $__subsystem__(SB), DI			
  task_dao.go:263	0x9981b6		e8655eadff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x9981bb		488d155eab6a00		LEAQ runtime.types+384288(SB), DX		
  task_dao.go:263	0x9981c2		488910			MOVQ DX, 0(AX)					
  task_dao.go:270	0x9981c5		488b742438		MOVQ 0x38(SP), SI				
  task_dao.go:270	0x9981ca		4c8d054f255e00		LEAQ runtime.staticuint64s(SB), R8		
  task_dao.go:270	0x9981d1		498d34f0		LEAQ 0(R8)(SI*8), SI				
  task_dao.go:263	0x9981d5		833d7459bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x9981dc		740c			JE 0x9981ea					
  task_dao.go:263	0x9981de		488b4808		MOVQ 0x8(AX), CX				
  task_dao.go:263	0x9981e2		e83902aeff		CALL runtime.gcWriteBarrier1(SB)		
  task_dao.go:263	0x9981e7		49890b			MOVQ CX, 0(R11)					
  task_dao.go:263	0x9981ea		48897008		MOVQ SI, 0x8(AX)				
  task_dao.go:271	0x9981ee		488b842448010000	MOVQ 0x148(SP), AX				
  task_dao.go:271	0x9981f6		488b9c2450010000	MOVQ 0x150(SP), BX				
  task_dao.go:271	0x9981fe		6690			NOPW						
  task_dao.go:271	0x998200		e81b1fadff		CALL runtime.convTstring(SB)			
  task_dao.go:271	0x998205		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x99820a		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x99820f		488d0dba237d00		LEAQ go:string.*+8392(SB), CX			
  task_dao.go:263	0x998216		bf05000000		MOVL $__subsystem__+2(SB), DI			
  task_dao.go:263	0x99821b		488d059e526e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x998222		e8f95dadff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x998227		488d0df2a66a00		LEAQ runtime.types+383264(SB), CX		
  task_dao.go:263	0x99822e		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x998231		833d1859bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x998238		7508			JNE 0x998242					
  task_dao.go:263	0x99823a		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x99823f		90			NOPL						
  task_dao.go:263	0x998240		eb15			JMP 0x998257					
  task_dao.go:263	0x998242		e8f901aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x998247		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x99824c		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x99824f		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:263	0x998253		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:263	0x998257		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:272	0x99825b		488b842458010000	MOVQ 0x158(SP), AX				
  task_dao.go:272	0x998263		488b9c2460010000	MOVQ 0x160(SP), BX				
  task_dao.go:272	0x99826b		e8b01eadff		CALL runtime.convTstring(SB)			
  task_dao.go:272	0x998270		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x998275		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x99827a		488d0d12be7d00		LEAQ go:string.*+48011(SB), CX			
  task_dao.go:263	0x998281		bf08000000		MOVL $__major_os_version__+2(SB), DI		
  task_dao.go:263	0x998286		488d0533526e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x99828d		e88e5dadff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x998292		488d0d87a66a00		LEAQ runtime.types+383264(SB), CX		
  task_dao.go:263	0x998299		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x99829c		833dad58bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x9982a3		7507			JNE 0x9982ac					
  task_dao.go:263	0x9982a5		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x9982aa		eb15			JMP 0x9982c1					
  task_dao.go:263	0x9982ac		e88f01aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x9982b1		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x9982b6		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x9982b9		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:263	0x9982bd		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:263	0x9982c1		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:273	0x9982c5		488b842468010000	MOVQ 0x168(SP), AX				
  task_dao.go:273	0x9982cd		488b9c2470010000	MOVQ 0x170(SP), BX				
  task_dao.go:273	0x9982d5		e8461eadff		CALL runtime.convTstring(SB)			
  task_dao.go:273	0x9982da		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x9982df		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x9982e4		488d0d826f7d00		LEAQ go:string.*+28005(SB), CX			
  task_dao.go:263	0x9982eb		bf06000000		MOVL $__major_os_version__(SB), DI		
  task_dao.go:263	0x9982f0		488d05c9516e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x9982f7		e8245dadff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x9982fc		488d0d1da66a00		LEAQ runtime.types+383264(SB), CX		
  task_dao.go:263	0x998303		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x998306		833d4358bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x99830d		7507			JNE 0x998316					
  task_dao.go:263	0x99830f		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x998314		eb15			JMP 0x99832b					
  task_dao.go:263	0x998316		e82501aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x99831b		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x998320		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x998323		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:263	0x998327		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:263	0x99832b		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:274	0x99832f		488b842478010000	MOVQ 0x178(SP), AX				
  task_dao.go:274	0x998337		488b9c2480010000	MOVQ 0x180(SP), BX				
  task_dao.go:274	0x99833f		90			NOPL						
  task_dao.go:274	0x998340		e8db1dadff		CALL runtime.convTstring(SB)			
  task_dao.go:274	0x998345		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x99834a		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x99834f		488d0d77cf7d00		LEAQ go:string.*+52677(SB), CX			
  task_dao.go:263	0x998356		bf09000000		MOVL $__major_os_version__+3(SB), DI		
  task_dao.go:263	0x99835b		488d055e516e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x998362		e8b95cadff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x998367		488d0db2a56a00		LEAQ runtime.types+383264(SB), CX		
  task_dao.go:263	0x99836e		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x998371		833dd857bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x998378		7508			JNE 0x998382					
  task_dao.go:263	0x99837a		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x99837f		90			NOPL						
  task_dao.go:263	0x998380		eb15			JMP 0x998397					
  task_dao.go:263	0x998382		e8b900aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x998387		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x99838c		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x99838f		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:263	0x998393		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:263	0x998397		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:275	0x99839b		488b842488010000	MOVQ 0x188(SP), AX				
  task_dao.go:275	0x9983a3		488b9c2490010000	MOVQ 0x190(SP), BX				
  task_dao.go:275	0x9983ab		e8701dadff		CALL runtime.convTstring(SB)			
  task_dao.go:275	0x9983b0		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x9983b5		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x9983ba		488d0ddabc7d00		LEAQ go:string.*+48019(SB), CX			
  task_dao.go:263	0x9983c1		bf08000000		MOVL $__major_os_version__+2(SB), DI		
  task_dao.go:263	0x9983c6		488d05f3506e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x9983cd		e84e5cadff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x9983d2		488d0d47a56a00		LEAQ runtime.types+383264(SB), CX		
  task_dao.go:263	0x9983d9		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x9983dc		833d6d57bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x9983e3		7507			JNE 0x9983ec					
  task_dao.go:263	0x9983e5		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x9983ea		eb15			JMP 0x998401					
  task_dao.go:263	0x9983ec		e84f00aeff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x9983f1		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x9983f6		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x9983f9		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:263	0x9983fd		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:263	0x998401		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:276	0x998405		0fb69424a8010000	MOVZX 0x1a8(SP), DX				
  task_dao.go:276	0x99840d		4889542438		MOVQ DX, 0x38(SP)				
  task_dao.go:263	0x998412		488d05a7506e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x998419		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x99841e		488d0dc6a67d00		LEAQ go:string.*+42467(SB), CX			
  task_dao.go:263	0x998425		bf07000000		MOVL $__major_os_version__+1(SB), DI		
  task_dao.go:263	0x99842a		e8f15badff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x99842f		488d15eaa86a00		LEAQ runtime.types+384288(SB), DX		
  task_dao.go:263	0x998436		488910			MOVQ DX, 0(AX)					
  task_dao.go:276	0x998439		488b542438		MOVQ 0x38(SP), DX				
  task_dao.go:276	0x99843e		488d35db225e00		LEAQ runtime.staticuint64s(SB), SI		
  task_dao.go:276	0x998445		488d14d6		LEAQ 0(SI)(DX*8), DX				
  task_dao.go:263	0x998449		833d0057bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x998450		740c			JE 0x99845e					
  task_dao.go:263	0x998452		488b4808		MOVQ 0x8(AX), CX				
  task_dao.go:263	0x998456		e8c5ffadff		CALL runtime.gcWriteBarrier1(SB)		
  task_dao.go:263	0x99845b		49890b			MOVQ CX, 0(R11)					
  task_dao.go:263	0x99845e		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:277	0x998462		488b842498010000	MOVQ 0x198(SP), AX				
  task_dao.go:277	0x99846a		488b9c24a0010000	MOVQ 0x1a0(SP), BX				
  task_dao.go:277	0x998472		e8a91cadff		CALL runtime.convTstring(SB)			
  task_dao.go:277	0x998477		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x99847c		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x998481		488d0d1bbc7d00		LEAQ go:string.*+48027(SB), CX			
  task_dao.go:263	0x998488		bf08000000		MOVL $__major_os_version__+2(SB), DI		
  task_dao.go:263	0x99848d		488d052c506e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x998494		e8875badff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x998499		488d0d80a46a00		LEAQ runtime.types+383264(SB), CX		
  task_dao.go:263	0x9984a0		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x9984a3		833da656bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x9984aa		7507			JNE 0x9984b3					
  task_dao.go:263	0x9984ac		488b4c2450		MOVQ 0x50(SP), CX				
  task_dao.go:263	0x9984b1		eb15			JMP 0x9984c8					
  task_dao.go:263	0x9984b3		e888ffadff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x9984b8		488b4c2450		MOVQ 0x50(SP), CX				
  task_dao.go:263	0x9984bd		49890b			MOVQ CX, 0(R11)					
  task_dao.go:263	0x9984c0		488b5008		MOVQ 0x8(AX), DX				
  task_dao.go:263	0x9984c4		49895308		MOVQ DX, 0x8(R11)				
  task_dao.go:263	0x9984c8		48894808		MOVQ CX, 0x8(AX)				
  task_dao.go:278	0x9984cc		f20f108424b0010000	MOVSD_XMM 0x1b0(SP), X0				
  task_dao.go:278	0x9984d5		66480f7ec0		MOVQ X0, AX					
  task_dao.go:278	0x9984da		e8c11badff		CALL runtime.convT64(SB)			
  task_dao.go:278	0x9984df		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:263	0x9984e4		488b5c2458		MOVQ 0x58(SP), BX				
  task_dao.go:263	0x9984e9		488d0de6cd7d00		LEAQ go:string.*+52686(SB), CX			
  task_dao.go:263	0x9984f0		bf09000000		MOVL $__major_os_version__+3(SB), DI		
  task_dao.go:263	0x9984f5		488d05c44f6e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:263	0x9984fc		0f1f4000		NOPL 0(AX)					
  task_dao.go:263	0x998500		e81b5badff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:263	0x998505		488d0dd4a76a00		LEAQ runtime.types+384224(SB), CX		
  task_dao.go:263	0x99850c		488908			MOVQ CX, 0(AX)					
  task_dao.go:263	0x99850f		833d3a56bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:263	0x998516		7508			JNE 0x998520					
  task_dao.go:263	0x998518		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x99851d		eb16			JMP 0x998535					
  task_dao.go:263	0x99851f		90			NOPL						
  task_dao.go:263	0x998520		e81bffadff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:263	0x998525		488b542450		MOVQ 0x50(SP), DX				
  task_dao.go:263	0x99852a		498913			MOVQ DX, 0(R11)					
  task_dao.go:263	0x99852d		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:263	0x998531		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:263	0x998535		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:263	0x998539		488b442460		MOVQ 0x60(SP), AX				
  task_dao.go:263	0x99853e		488d1d7b4f6e00		LEAQ runtime.types+623808(SB), BX		
  task_dao.go:263	0x998545		488b4c2458		MOVQ 0x58(SP), CX				
  task_dao.go:263	0x99854a		e8b1a8f8ff		CALL gorm.io/gorm.(*DB).Updates(SB)		
  task_dao.go:263	0x99854f		4889442448		MOVQ AX, 0x48(SP)				
  task_dao.go:281	0x998554		4883780800		CMPQ 0x8(AX), $0x0				
  task_dao.go:281	0x998559		0f8499000000		JE 0x9985f8					
  task_dao.go:282	0x99855f		440f11bc2498000000	MOVUPS X15, 0x98(SP)				
  task_dao.go:282	0x998568		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)				
  task_dao.go:282	0x998571		488b8424c8000000	MOVQ 0xc8(SP), AX				
  task_dao.go:282	0x998579		e8221badff		CALL runtime.convT64(SB)			
  task_dao.go:282	0x99857e		488d0ddba56a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:282	0x998585		48898c2498000000	MOVQ CX, 0x98(SP)				
  task_dao.go:282	0x99858d		48898424a0000000	MOVQ AX, 0xa0(SP)				
  task_dao.go:282	0x998595		488b4c2448		MOVQ 0x48(SP), CX				
  task_dao.go:282	0x99859a		488b5108		MOVQ 0x8(CX), DX				
  task_dao.go:282	0x99859e		6690			NOPW						
  task_dao.go:282	0x9985a0		4885d2			TESTQ DX, DX					
  task_dao.go:282	0x9985a3		7404			JE 0x9985a9					
  task_dao.go:282	0x9985a5		488b5208		MOVQ 0x8(DX), DX				
  task_dao.go:282	0x9985a9		4c8b5110		MOVQ 0x10(CX), R10				
  task_dao.go:282	0x9985ad		48899424a8000000	MOVQ DX, 0xa8(SP)				
  task_dao.go:282	0x9985b5		4c899424b0000000	MOVQ R10, 0xb0(SP)				
  print.go:233		0x9985bd		488b1dbc9ab702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x9985c4		488d0515354d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x9985cb		488d0d76527f00		LEAQ go:string.*+152384(SB), CX			
  print.go:233		0x9985d2		bf20000000		MOVL $__major_os_version__+26(SB), DI		
  print.go:233		0x9985d7		488db42498000000	LEAQ 0x98(SP), SI				
  print.go:233		0x9985df		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x9985e5		4d89c1			MOVQ R8, R9					
  print.go:233		0x9985e8		e8336cb8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:283	0x9985ed		31c0			XORL AX, AX					
  task_dao.go:283	0x9985ef		4881c4b8000000		ADDQ $.file+107(SB), SP				
  task_dao.go:283	0x9985f6		5d			POPQ BP						
  task_dao.go:283	0x9985f7		c3			RET						
  task_dao.go:286	0x9985f8		440f117c2478		MOVUPS X15, 0x78(SP)				
  task_dao.go:286	0x9985fe		440f11bc2488000000	MOVUPS X15, 0x88(SP)				
  task_dao.go:286	0x998607		488b8424c8000000	MOVQ 0xc8(SP), AX				
  task_dao.go:286	0x99860f		e88c1aadff		CALL runtime.convT64(SB)			
  task_dao.go:286	0x998614		488d0d45a56a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:286	0x99861b		48894c2478		MOVQ CX, 0x78(SP)				
  task_dao.go:286	0x998620		4889842480000000	MOVQ AX, 0x80(SP)				
  task_dao.go:286	0x998628		488b4c2448		MOVQ 0x48(SP), CX				
  task_dao.go:286	0x99862d		488b4118		MOVQ 0x18(CX), AX				
  task_dao.go:286	0x998631		e86a1aadff		CALL runtime.convT64(SB)			
  task_dao.go:286	0x998636		488d0da3a46a00		LEAQ runtime.types+383712(SB), CX		
  task_dao.go:286	0x99863d		48898c2488000000	MOVQ CX, 0x88(SP)				
  task_dao.go:286	0x998645		4889842490000000	MOVQ AX, 0x90(SP)				
  print.go:233		0x99864d		488b1d2c9ab702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x998654		488d0585344d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99865b		488d0dc9b47f00		LEAQ go:string.*+177699(SB), CX			
  print.go:233		0x998662		bf26000000		MOVL $__major_os_version__+32(SB), DI		
  print.go:233		0x998667		488d742478		LEAQ 0x78(SP), SI				
  print.go:233		0x99866c		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x998672		4d89c1			MOVQ R8, R9					
  print.go:233		0x998675		e8a66bb8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:287	0x99867a		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_dao.go:287	0x99867f		4881c4b8000000		ADDQ $.file+107(SB), SP				
  task_dao.go:287	0x998686		5d			POPQ BP						
  task_dao.go:287	0x998687		c3			RET						
  task_dao.go:261	0x998688		e853deadff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_dao.go:261	0x99868d		e98ef7ffff		JMP CAS-Backend/biz/dao.Update_task(SB)		
  :-1			0x998692		cc			INT $__subsystem__(SB)				
  :-1			0x998693		cc			INT $__subsystem__(SB)				
  :-1			0x998694		cc			INT $__subsystem__(SB)				
  :-1			0x998695		cc			INT $__subsystem__(SB)				
  :-1			0x998696		cc			INT $__subsystem__(SB)				
  :-1			0x998697		cc			INT $__subsystem__(SB)				
  :-1			0x998698		cc			INT $__subsystem__(SB)				
  :-1			0x998699		cc			INT $__subsystem__(SB)				
  :-1			0x99869a		cc			INT $__subsystem__(SB)				
  :-1			0x99869b		cc			INT $__subsystem__(SB)				
  :-1			0x99869c		cc			INT $__subsystem__(SB)				
  :-1			0x99869d		cc			INT $__subsystem__(SB)				
  :-1			0x99869e		cc			INT $__subsystem__(SB)				
  :-1			0x99869f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.Select1_task(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:290	0x9986a0		493b6610		CMPQ SP, 0x10(R14)				
  task_dao.go:290	0x9986a4		0f869c010000		JBE 0x998846					
  task_dao.go:290	0x9986aa		55			PUSHQ BP					
  task_dao.go:290	0x9986ab		4889e5			MOVQ SP, BP					
  task_dao.go:290	0x9986ae		4883ec70		SUBQ $.file+35(SB), SP				
  task_dao.go:294	0x9986b2		4889842470010000	MOVQ AX, 0x170(SP)				
  task_dao.go:290	0x9986ba		488dbc2480000000	LEAQ 0x80(SP), DI				
  task_dao.go:290	0x9986c2		488d7ff0		LEAQ -0x10(DI), DI				
  task_dao.go:290	0x9986c6		48896c24f0		MOVQ BP, -0x10(SP)				
  task_dao.go:290	0x9986cb		488d6c24f0		LEAQ -0x10(SP), BP				
  task_dao.go:290	0x9986d0		e8e303aeff		CALL 0x478ab8					
  task_dao.go:290	0x9986d5		488b6d00		MOVQ 0(BP), BP					
  task_dao.go:291	0x9986d9		488d05c0337a00		LEAQ runtime.types+1403552(SB), AX		
  task_dao.go:291	0x9986e0		e8bb90a7ff		CALL runtime.newobject(SB)			
  task_dao.go:291	0x9986e5		4889442468		MOVQ AX, 0x68(SP)				
  task_dao.go:293	0x9986ea		488d05af576b00		LEAQ runtime.types+429728(SB), AX		
  task_dao.go:293	0x9986f1		e8aa90a7ff		CALL runtime.newobject(SB)			
  task_dao.go:293	0x9986f6		4889442440		MOVQ AX, 0x40(SP)				
  task_dao.go:293	0x9986fb		488b842470010000	MOVQ 0x170(SP), AX				
  task_dao.go:293	0x998703		e89819adff		CALL runtime.convT64(SB)			
  task_dao.go:293	0x998708		488d0d51a46a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:293	0x99870f		488b7c2440		MOVQ 0x40(SP), DI				
  task_dao.go:293	0x998714		48890f			MOVQ CX, 0(DI)					
  task_dao.go:293	0x998717		833d3254bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:293	0x99871e		6690			NOPW						
  task_dao.go:293	0x998720		7410			JE 0x998732					
  task_dao.go:293	0x998722		e819fdadff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:293	0x998727		498903			MOVQ AX, 0(R11)					
  task_dao.go:293	0x99872a		488b5708		MOVQ 0x8(DI), DX				
  task_dao.go:293	0x99872e		49895308		MOVQ DX, 0x8(R11)				
  task_dao.go:293	0x998732		48894708		MOVQ AX, 0x8(DI)				
  task_dao.go:293	0x998736		488b050399b702		MOVQ runtime.bss(SB), AX			
  task_dao.go:293	0x99873d		488d1dbca57000		LEAQ runtime.types+777472(SB), BX		
  task_dao.go:293	0x998744		488b4c2468		MOVQ 0x68(SP), CX				
  task_dao.go:293	0x998749		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_dao.go:293	0x99874e		4989f0			MOVQ SI, R8					
  task_dao.go:293	0x998751		e86a7ff8ff		CALL gorm.io/gorm.(*DB).First(SB)		
  task_dao.go:294	0x998756		4883780800		CMPQ 0x8(AX), $0x0				
  task_dao.go:294	0x99875b		0f1f440000		NOPL 0(AX)(AX*1)				
  task_dao.go:294	0x998760		0f84b5000000		JE 0x99881b					
  task_dao.go:293	0x998766		4889442438		MOVQ AX, 0x38(SP)				
  task_dao.go:295	0x99876b		440f117c2448		MOVUPS X15, 0x48(SP)				
  task_dao.go:295	0x998771		440f117c2458		MOVUPS X15, 0x58(SP)				
  task_dao.go:295	0x998777		488b842470010000	MOVQ 0x170(SP), AX				
  task_dao.go:295	0x99877f		90			NOPL						
  task_dao.go:295	0x998780		e81b19adff		CALL runtime.convT64(SB)			
  task_dao.go:295	0x998785		488d0dd4a36a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:295	0x99878c		48894c2448		MOVQ CX, 0x48(SP)				
  task_dao.go:295	0x998791		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:295	0x998796		488b4c2438		MOVQ 0x38(SP), CX				
  task_dao.go:295	0x99879b		488b5108		MOVQ 0x8(CX), DX				
  task_dao.go:295	0x99879f		90			NOPL						
  task_dao.go:295	0x9987a0		4885d2			TESTQ DX, DX					
  task_dao.go:295	0x9987a3		7404			JE 0x9987a9					
  task_dao.go:295	0x9987a5		488b5208		MOVQ 0x8(DX), DX				
  task_dao.go:295	0x9987a9		4c8b5110		MOVQ 0x10(CX), R10				
  task_dao.go:295	0x9987ad		4889542458		MOVQ DX, 0x58(SP)				
  task_dao.go:295	0x9987b2		4c89542460		MOVQ R10, 0x60(SP)				
  print.go:233		0x9987b7		488b1dc298b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x9987be		488d051b334d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x9987c5		488d0d5c507f00		LEAQ go:string.*+152352(SB), CX			
  print.go:233		0x9987cc		bf20000000		MOVL $__major_os_version__+26(SB), DI		
  print.go:233		0x9987d1		488d742448		LEAQ 0x48(SP), SI				
  print.go:233		0x9987d6		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x9987dc		4d89c1			MOVQ R8, R9					
  print.go:233		0x9987df		90			NOPL						
  print.go:233		0x9987e0		e83b6ab8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:296	0x9987e5		488dbc2480000000	LEAQ 0x80(SP), DI				
  task_dao.go:296	0x9987ed		488d7ff0		LEAQ -0x10(DI), DI				
  task_dao.go:296	0x9987f1		660f1f840000000000	NOPW 0(AX)(AX*1)				
  task_dao.go:296	0x9987fa		660f1f440000		NOPW 0(AX)(AX*1)				
  task_dao.go:296	0x998800		48896c24f0		MOVQ BP, -0x10(SP)				
  task_dao.go:296	0x998805		488d6c24f0		LEAQ -0x10(SP), BP				
  task_dao.go:296	0x99880a		e8a902aeff		CALL 0x478ab8					
  task_dao.go:296	0x99880f		488b6d00		MOVQ 0(BP), BP					
  task_dao.go:296	0x998813		31c0			XORL AX, AX					
  task_dao.go:296	0x998815		4883c470		ADDQ $.file+35(SB), SP				
  task_dao.go:296	0x998819		5d			POPQ BP						
  task_dao.go:296	0x99881a		c3			RET						
  task_dao.go:299	0x99881b		488dbc2480000000	LEAQ 0x80(SP), DI				
  task_dao.go:299	0x998823		488b742468		MOVQ 0x68(SP), SI				
  task_dao.go:299	0x998828		48896c24f0		MOVQ BP, -0x10(SP)				
  task_dao.go:299	0x99882d		488d6c24f0		LEAQ -0x10(SP), BP				
  task_dao.go:299	0x998832		e89705aeff		CALL 0x478dce					
  task_dao.go:299	0x998837		488b6d00		MOVQ 0(BP), BP					
  task_dao.go:299	0x99883b		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_dao.go:299	0x998840		4883c470		ADDQ $.file+35(SB), SP				
  task_dao.go:299	0x998844		5d			POPQ BP						
  task_dao.go:299	0x998845		c3			RET						
  task_dao.go:290	0x998846		48898424f8000000	MOVQ AX, 0xf8(SP)				
  task_dao.go:290	0x99884e		e88ddcadff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_dao.go:290	0x998853		488b8424f8000000	MOVQ 0xf8(SP), AX				
  task_dao.go:290	0x99885b		0f1f440000		NOPL 0(AX)(AX*1)				
  task_dao.go:290	0x998860		e93bfeffff		JMP CAS-Backend/biz/dao.Select1_task(SB)	
  :-1			0x998865		cc			INT $__subsystem__(SB)				
  :-1			0x998866		cc			INT $__subsystem__(SB)				
  :-1			0x998867		cc			INT $__subsystem__(SB)				
  :-1			0x998868		cc			INT $__subsystem__(SB)				
  :-1			0x998869		cc			INT $__subsystem__(SB)				
  :-1			0x99886a		cc			INT $__subsystem__(SB)				
  :-1			0x99886b		cc			INT $__subsystem__(SB)				
  :-1			0x99886c		cc			INT $__subsystem__(SB)				
  :-1			0x99886d		cc			INT $__subsystem__(SB)				
  :-1			0x99886e		cc			INT $__subsystem__(SB)				
  :-1			0x99886f		cc			INT $__subsystem__(SB)				
  :-1			0x998870		cc			INT $__subsystem__(SB)				
  :-1			0x998871		cc			INT $__subsystem__(SB)				
  :-1			0x998872		cc			INT $__subsystem__(SB)				
  :-1			0x998873		cc			INT $__subsystem__(SB)				
  :-1			0x998874		cc			INT $__subsystem__(SB)				
  :-1			0x998875		cc			INT $__subsystem__(SB)				
  :-1			0x998876		cc			INT $__subsystem__(SB)				
  :-1			0x998877		cc			INT $__subsystem__(SB)				
  :-1			0x998878		cc			INT $__subsystem__(SB)				
  :-1			0x998879		cc			INT $__subsystem__(SB)				
  :-1			0x99887a		cc			INT $__subsystem__(SB)				
  :-1			0x99887b		cc			INT $__subsystem__(SB)				
  :-1			0x99887c		cc			INT $__subsystem__(SB)				
  :-1			0x99887d		cc			INT $__subsystem__(SB)				
  :-1			0x99887e		cc			INT $__subsystem__(SB)				
  :-1			0x99887f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.SelectALL_task(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:302	0x998880		4c8d6424d0		LEAQ -0x30(SP), R12				
  task_dao.go:302	0x998885		4d3b6610		CMPQ R12, 0x10(R14)				
  task_dao.go:302	0x998889		0f86d0040000		JBE 0x998d5f					
  task_dao.go:302	0x99888f		55			PUSHQ BP					
  task_dao.go:302	0x998890		4889e5			MOVQ SP, BP					
  task_dao.go:302	0x998893		4881eca8000000		SUBQ $.file+91(SB), SP				
  task_dao.go:310	0x99889a		48898424b8000000	MOVQ AX, 0xb8(SP)				
  task_dao.go:310	0x9988a2		48899c24c0000000	MOVQ BX, 0xc0(SP)				
  task_dao.go:310	0x9988aa		4c899424f0000000	MOVQ R10, 0xf0(SP)				
  task_dao.go:310	0x9988b2		4c898c24e8000000	MOVQ R9, 0xe8(SP)				
  task_dao.go:310	0x9988ba		4c898424e0000000	MOVQ R8, 0xe0(SP)				
  task_dao.go:310	0x9988c2		4889b424d8000000	MOVQ SI, 0xd8(SP)				
  task_dao.go:310	0x9988ca		4889bc24d0000000	MOVQ DI, 0xd0(SP)				
  task_dao.go:310	0x9988d2		48898c24c8000000	MOVQ CX, 0xc8(SP)				
  task_dao.go:303	0x9988da		488d05ffa16a00		LEAQ runtime.types+383712(SB), AX		
  task_dao.go:303	0x9988e1		e8ba8ea7ff		CALL runtime.newobject(SB)			
  task_dao.go:303	0x9988e6		48898424a0000000	MOVQ AX, 0xa0(SP)				
  task_dao.go:304	0x9988ee		488d052bbf6900		LEAQ runtime.types+325664(SB), AX		
  task_dao.go:304	0x9988f5		e8a68ea7ff		CALL runtime.newobject(SB)			
  task_dao.go:304	0x9988fa		4889842498000000	MOVQ AX, 0x98(SP)				
  task_dao.go:304	0x998902		48c70000000000		MOVQ $0x0, 0(AX)				
  task_dao.go:307	0x998909		488d0590317a00		LEAQ runtime.types+1403552(SB), AX		
  task_dao.go:307	0x998910		e88b8ea7ff		CALL runtime.newobject(SB)			
  task_dao.go:307	0x998915		4889442470		MOVQ AX, 0x70(SP)				
  task_dao.go:307	0x99891a		488b0d1f97b702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x998921		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x998924		e857fef8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:20	0x998929		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x99892d		488d15cca37000		LEAQ runtime.types+777472(SB), DX		
  chainable_api.go:20	0x998934		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x998938		833d1152bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x99893f		90			NOPL						
  chainable_api.go:20	0x998940		7507			JNE 0x998949					
  chainable_api.go:20	0x998942		488b542470		MOVQ 0x70(SP), DX				
  chainable_api.go:20	0x998947		eb15			JMP 0x99895e					
  chainable_api.go:20	0x998949		e8f2faadff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x99894e		488b542470		MOVQ 0x70(SP), DX				
  chainable_api.go:20	0x998953		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x998956		4c8b5128		MOVQ 0x28(CX), R10				
  chainable_api.go:20	0x99895a		4d895308		MOVQ R10, 0x8(R11)				
  chainable_api.go:20	0x99895e		48895128		MOVQ DX, 0x28(CX)				
  task_dao.go:310	0x998962		488bb424d0000000	MOVQ 0xd0(SP), SI				
  task_dao.go:310	0x99896a		4885f6			TESTQ SI, SI					
  task_dao.go:310	0x99896d		0f841a010000		JE 0x998a8d					
  chainable_api.go:19	0x998973		4889442448		MOVQ AX, 0x48(SP)				
  task_dao.go:311	0x998978		31c0			XORL AX, AX					
  task_dao.go:311	0x99897a		488d1dafc14c02		LEAQ runtime.gcbits.*+112(SB), BX		
  task_dao.go:311	0x998981		b901000000		MOVL $__minor_os_version__(SB), CX		
  task_dao.go:311	0x998986		488bbc24c8000000	MOVQ 0xc8(SP), DI				
  task_dao.go:311	0x99898e		4989d8			MOVQ BX, R8					
  task_dao.go:311	0x998991		4989c9			MOVQ CX, R9					
  task_dao.go:311	0x998994		e807cbabff		CALL runtime.concatstring3(SB)			
  task_dao.go:311	0x998999		4889442440		MOVQ AX, 0x40(SP)				
  task_dao.go:311	0x99899e		48895c2438		MOVQ BX, 0x38(SP)				
  task_dao.go:312	0x9989a3		488d05965a6b00		LEAQ runtime.types+431168(SB), AX		
  task_dao.go:312	0x9989aa		e8f18da7ff		CALL runtime.newobject(SB)			
  task_dao.go:312	0x9989af		4889442468		MOVQ AX, 0x68(SP)				
  task_dao.go:313	0x9989b4		488b5c2438		MOVQ 0x38(SP), BX				
  task_dao.go:313	0x9989b9		488b442440		MOVQ 0x40(SP), AX				
  task_dao.go:313	0x9989be		6690			NOPW						
  task_dao.go:313	0x9989c0		e85b17adff		CALL runtime.convTstring(SB)			
  task_dao.go:313	0x9989c5		488d15549f6a00		LEAQ runtime.types+383264(SB), DX		
  task_dao.go:313	0x9989cc		4c8b542468		MOVQ 0x68(SP), R10				
  task_dao.go:313	0x9989d1		498912			MOVQ DX, 0(R10)					
  task_dao.go:313	0x9989d4		833d7551bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:313	0x9989db		7413			JE 0x9989f0					
  task_dao.go:313	0x9989dd		0f1f00			NOPL 0(AX)					
  task_dao.go:313	0x9989e0		e85bfaadff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:313	0x9989e5		498903			MOVQ AX, 0(R11)					
  task_dao.go:313	0x9989e8		498b4a08		MOVQ 0x8(R10), CX				
  task_dao.go:313	0x9989ec		49894b08		MOVQ CX, 0x8(R11)				
  task_dao.go:313	0x9989f0		49894208		MOVQ AX, 0x8(R10)				
  task_dao.go:313	0x9989f4		488b442440		MOVQ 0x40(SP), AX				
  task_dao.go:313	0x9989f9		488b5c2438		MOVQ 0x38(SP), BX				
  task_dao.go:313	0x9989fe		6690			NOPW						
  task_dao.go:313	0x998a00		e81b17adff		CALL runtime.convTstring(SB)			
  task_dao.go:313	0x998a05		488d0d149f6a00		LEAQ runtime.types+383264(SB), CX		
  task_dao.go:313	0x998a0c		488b542468		MOVQ 0x68(SP), DX				
  task_dao.go:313	0x998a11		48894a10		MOVQ CX, 0x10(DX)				
  task_dao.go:313	0x998a15		833d3451bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:313	0x998a1c		7412			JE 0x998a30					
  task_dao.go:313	0x998a1e		6690			NOPW						
  task_dao.go:313	0x998a20		e81bfaadff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:313	0x998a25		498903			MOVQ AX, 0(R11)					
  task_dao.go:313	0x998a28		488b7218		MOVQ 0x18(DX), SI				
  task_dao.go:313	0x998a2c		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:313	0x998a30		48894218		MOVQ AX, 0x18(DX)				
  task_dao.go:313	0x998a34		488b442440		MOVQ 0x40(SP), AX				
  task_dao.go:313	0x998a39		488b5c2438		MOVQ 0x38(SP), BX				
  task_dao.go:313	0x998a3e		6690			NOPW						
  task_dao.go:313	0x998a40		e8db16adff		CALL runtime.convTstring(SB)			
  task_dao.go:313	0x998a45		488d1dd49e6a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:313	0x998a4c		488b7c2468		MOVQ 0x68(SP), DI				
  task_dao.go:313	0x998a51		48895f20		MOVQ BX, 0x20(DI)				
  task_dao.go:313	0x998a55		833df450bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:313	0x998a5c		7412			JE 0x998a70					
  task_dao.go:313	0x998a5e		6690			NOPW						
  task_dao.go:313	0x998a60		e8dbf9adff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:313	0x998a65		498903			MOVQ AX, 0(R11)					
  task_dao.go:313	0x998a68		488b5728		MOVQ 0x28(DI), DX				
  task_dao.go:313	0x998a6c		49895308		MOVQ DX, 0x8(R11)				
  task_dao.go:313	0x998a70		48894728		MOVQ AX, 0x28(DI)				
  task_dao.go:312	0x998a74		488b442448		MOVQ 0x48(SP), AX				
  task_dao.go:312	0x998a79		488d0d20f34c02		LEAQ CAS-Backend/biz/dao..stmp_13(SB), CX	
  task_dao.go:312	0x998a80		be03000000		MOVL $__subsystem__(SB), SI			
  task_dao.go:312	0x998a85		4989f0			MOVQ SI, R8					
  task_dao.go:312	0x998a88		e81357f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_dao.go:317	0x998a8d		488b8c24e0000000	MOVQ 0xe0(SP), CX				
  task_dao.go:317	0x998a95		4885c9			TESTQ CX, CX					
  task_dao.go:317	0x998a98		7473			JE 0x998b0d					
  task_dao.go:327	0x998a9a		4889442460		MOVQ AX, 0x60(SP)				
  task_dao.go:318	0x998a9f		488d05fa536b00		LEAQ runtime.types+429728(SB), AX		
  task_dao.go:318	0x998aa6		e8f58ca7ff		CALL runtime.newobject(SB)			
  task_dao.go:318	0x998aab		4889442458		MOVQ AX, 0x58(SP)				
  task_dao.go:318	0x998ab0		488b9c24e0000000	MOVQ 0xe0(SP), BX				
  task_dao.go:318	0x998ab8		488b8424d8000000	MOVQ 0xd8(SP), AX				
  task_dao.go:318	0x998ac0		e85b16adff		CALL runtime.convTstring(SB)			
  task_dao.go:318	0x998ac5		488d1d549e6a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:318	0x998acc		488b7c2458		MOVQ 0x58(SP), DI				
  task_dao.go:318	0x998ad1		48891f			MOVQ BX, 0(DI)					
  task_dao.go:318	0x998ad4		833d7550bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:318	0x998adb		7413			JE 0x998af0					
  task_dao.go:318	0x998add		0f1f00			NOPL 0(AX)					
  task_dao.go:318	0x998ae0		e85bf9adff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:318	0x998ae5		498903			MOVQ AX, 0(R11)					
  task_dao.go:318	0x998ae8		488b5708		MOVQ 0x8(DI), DX				
  task_dao.go:318	0x998aec		49895308		MOVQ DX, 0x8(R11)				
  task_dao.go:318	0x998af0		48894708		MOVQ AX, 0x8(DI)				
  task_dao.go:318	0x998af4		488b442460		MOVQ 0x60(SP), AX				
  task_dao.go:318	0x998af9		488d0db0f24c02		LEAQ CAS-Backend/biz/dao..stmp_14(SB), CX	
  task_dao.go:318	0x998b00		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_dao.go:318	0x998b05		4989f0			MOVQ SI, R8					
  task_dao.go:318	0x998b08		e89356f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_dao.go:322	0x998b0d		488b8c24f0000000	MOVQ 0xf0(SP), CX				
  task_dao.go:322	0x998b15		4885c9			TESTQ CX, CX					
  task_dao.go:322	0x998b18		7473			JE 0x998b8d					
  task_dao.go:327	0x998b1a		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:323	0x998b1f		488d057a536b00		LEAQ runtime.types+429728(SB), AX		
  task_dao.go:323	0x998b26		e8758ca7ff		CALL runtime.newobject(SB)			
  task_dao.go:323	0x998b2b		4889442458		MOVQ AX, 0x58(SP)				
  task_dao.go:323	0x998b30		488b9c24f0000000	MOVQ 0xf0(SP), BX				
  task_dao.go:323	0x998b38		488b8424e8000000	MOVQ 0xe8(SP), AX				
  task_dao.go:323	0x998b40		e8db15adff		CALL runtime.convTstring(SB)			
  task_dao.go:323	0x998b45		488d1dd49d6a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:323	0x998b4c		488b7c2458		MOVQ 0x58(SP), DI				
  task_dao.go:323	0x998b51		48891f			MOVQ BX, 0(DI)					
  task_dao.go:323	0x998b54		833df54fbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:323	0x998b5b		7413			JE 0x998b70					
  task_dao.go:323	0x998b5d		0f1f00			NOPL 0(AX)					
  task_dao.go:323	0x998b60		e8dbf8adff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:323	0x998b65		498903			MOVQ AX, 0(R11)					
  task_dao.go:323	0x998b68		488b5708		MOVQ 0x8(DI), DX				
  task_dao.go:323	0x998b6c		49895308		MOVQ DX, 0x8(R11)				
  task_dao.go:323	0x998b70		48894708		MOVQ AX, 0x8(DI)				
  task_dao.go:323	0x998b74		488b442450		MOVQ 0x50(SP), AX				
  task_dao.go:323	0x998b79		488d0d40f24c02		LEAQ CAS-Backend/biz/dao..stmp_15(SB), CX	
  task_dao.go:323	0x998b80		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_dao.go:323	0x998b85		4989f0			MOVQ SI, R8					
  task_dao.go:323	0x998b88		e81356f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_dao.go:327	0x998b8d		4889442448		MOVQ AX, 0x48(SP)				
  task_dao.go:327	0x998b92		488d0507536b00		LEAQ runtime.types+429728(SB), AX		
  task_dao.go:327	0x998b99		e8028ca7ff		CALL runtime.newobject(SB)			
  task_dao.go:327	0x998b9e		488d0d7ba16a00		LEAQ runtime.types+384288(SB), CX		
  task_dao.go:327	0x998ba5		488908			MOVQ CX, 0(AX)					
  task_dao.go:327	0x998ba8		488d0d711b5e00		LEAQ runtime.staticuint64s(SB), CX		
  task_dao.go:327	0x998baf		48894808		MOVQ CX, 0x8(AX)				
  task_dao.go:327	0x998bb3		488d1d669d6a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:327	0x998bba		488d0daff14c02		LEAQ CAS-Backend/biz/dao..stmp_6(SB), CX	
  task_dao.go:327	0x998bc1		4889c7			MOVQ AX, DI					
  task_dao.go:327	0x998bc4		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_dao.go:327	0x998bc9		4989f0			MOVQ SI, R8					
  task_dao.go:327	0x998bcc		488b442448		MOVQ 0x48(SP), AX				
  task_dao.go:327	0x998bd1		e8ca55f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_dao.go:327	0x998bd6		4889442448		MOVQ AX, 0x48(SP)				
  task_dao.go:330	0x998bdb		488b9c24a0000000	MOVQ 0xa0(SP), BX				
  task_dao.go:330	0x998be3		e8d8a6f8ff		CALL gorm.io/gorm.(*DB).Count(SB)		
  task_dao.go:330	0x998be8		488b4808		MOVQ 0x8(AX), CX				
  task_dao.go:330	0x998bec		488b5010		MOVQ 0x10(AX), DX				
  task_dao.go:330	0x998bf0		4885c9			TESTQ CX, CX					
  task_dao.go:330	0x998bf3		746a			JE 0x998c5f					
  task_dao.go:331	0x998bf5		440f11bc2488000000	MOVUPS X15, 0x88(SP)				
  task_dao.go:331	0x998bfe		6690			NOPW						
  task_dao.go:331	0x998c00		7404			JE 0x998c06					
  task_dao.go:331	0x998c02		488b4908		MOVQ 0x8(CX), CX				
  task_dao.go:331	0x998c06		48898c2488000000	MOVQ CX, 0x88(SP)				
  task_dao.go:331	0x998c0e		4889942490000000	MOVQ DX, 0x90(SP)				
  print.go:233		0x998c16		488b1d6394b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x998c1d		488d05bc2e4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x998c24		488d0d37977e00		LEAQ go:string.*+106074(SB), CX			
  print.go:233		0x998c2b		bf16000000		MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0x998c30		488db42488000000	LEAQ 0x88(SP), SI				
  print.go:233		0x998c38		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x998c3e		4d89c1			MOVQ R8, R9					
  print.go:233		0x998c41		e8da65b8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:332	0x998c46		31c0			XORL AX, AX					
  task_dao.go:332	0x998c48		31db			XORL BX, BX					
  task_dao.go:332	0x998c4a		488d0d4f46bc02		LEAQ unicode..stmp_365(SB), CX			
  task_dao.go:332	0x998c51		31ff			XORL DI, DI					
  task_dao.go:332	0x998c53		4889fe			MOVQ DI, SI					
  task_dao.go:332	0x998c56		4881c4a8000000		ADDQ $.file+91(SB), SP				
  task_dao.go:332	0x998c5d		5d			POPQ BP						
  task_dao.go:332	0x998c5e		c3			RET						
  task_dao.go:342	0x998c5f		488b442448		MOVQ 0x48(SP), AX				
  task_dao.go:342	0x998c64		488d1db59c6a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:342	0x998c6b		488d0dcef04c02		LEAQ CAS-Backend/biz/dao..stmp_1(SB), CX	
  task_dao.go:342	0x998c72		e84962f8ff		CALL gorm.io/gorm.(*DB).Order(SB)		
  task_dao.go:336	0x998c77		488b9c24b8000000	MOVQ 0xb8(SP), BX				
  task_dao.go:336	0x998c7f		48ffcb			DECQ BX						
  task_dao.go:336	0x998c82		488b9424c0000000	MOVQ 0xc0(SP), DX				
  task_dao.go:336	0x998c8a		480fafda		IMULQ DX, BX					
  task_dao.go:337	0x998c8e		4885db			TESTQ BX, BX					
  task_dao.go:342	0x998c91		be00000000		MOVL $0x0, SI					
  task_dao.go:342	0x998c96		480f4cde		CMOVL SI, BX					
  task_dao.go:342	0x998c9a		e82166f8ff		CALL gorm.io/gorm.(*DB).Offset(SB)		
  task_dao.go:342	0x998c9f		488b9c24c0000000	MOVQ 0xc0(SP), BX				
  task_dao.go:342	0x998ca7		e85465f8ff		CALL gorm.io/gorm.(*DB).Limit(SB)		
  task_dao.go:342	0x998cac		488d1dadbb6900		LEAQ runtime.types+325728(SB), BX		
  task_dao.go:342	0x998cb3		488b8c2498000000	MOVQ 0x98(SP), CX				
  task_dao.go:342	0x998cbb		31ff			XORL DI, DI					
  task_dao.go:342	0x998cbd		31f6			XORL SI, SI					
  task_dao.go:342	0x998cbf		4989f0			MOVQ SI, R8					
  task_dao.go:342	0x998cc2		e8f97ff8ff		CALL gorm.io/gorm.(*DB).Find(SB)		
  task_dao.go:342	0x998cc7		488b5008		MOVQ 0x8(AX), DX				
  task_dao.go:342	0x998ccb		488b7010		MOVQ 0x10(AX), SI				
  task_dao.go:342	0x998ccf		4885d2			TESTQ DX, DX					
  task_dao.go:337	0x998cd2		745f			JE 0x998d33					
  task_dao.go:343	0x998cd4		440f117c2478		MOVUPS X15, 0x78(SP)				
  task_dao.go:343	0x998cda		7404			JE 0x998ce0					
  task_dao.go:343	0x998cdc		488b5208		MOVQ 0x8(DX), DX				
  task_dao.go:343	0x998ce0		4889542478		MOVQ DX, 0x78(SP)				
  task_dao.go:343	0x998ce5		4889b42480000000	MOVQ SI, 0x80(SP)				
  print.go:233		0x998ced		488b1d8c93b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x998cf4		488d05e52d4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x998cfb		488d0db12a7e00		LEAQ go:string.*+78507(SB), CX			
  print.go:233		0x998d02		bf10000000		MOVL $__major_os_version__+10(SB), DI		
  print.go:233		0x998d07		488d742478		LEAQ 0x78(SP), SI				
  print.go:233		0x998d0c		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x998d12		4d89c1			MOVQ R8, R9					
  print.go:233		0x998d15		e80665b8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:344	0x998d1a		31c0			XORL AX, AX					
  task_dao.go:344	0x998d1c		31db			XORL BX, BX					
  task_dao.go:344	0x998d1e		488d0d7b45bc02		LEAQ unicode..stmp_365(SB), CX			
  task_dao.go:344	0x998d25		31ff			XORL DI, DI					
  task_dao.go:344	0x998d27		4889fe			MOVQ DI, SI					
  task_dao.go:344	0x998d2a		4881c4a8000000		ADDQ $.file+91(SB), SP				
  task_dao.go:344	0x998d31		5d			POPQ BP						
  task_dao.go:344	0x998d32		c3			RET						
  task_dao.go:347	0x998d33		488b942498000000	MOVQ 0x98(SP), DX				
  task_dao.go:347	0x998d3b		488b0a			MOVQ 0(DX), CX					
  task_dao.go:347	0x998d3e		488b7a08		MOVQ 0x8(DX), DI				
  task_dao.go:347	0x998d42		488b7210		MOVQ 0x10(DX), SI				
  task_dao.go:347	0x998d46		488b9424a0000000	MOVQ 0xa0(SP), DX				
  task_dao.go:347	0x998d4e		488b1a			MOVQ 0(DX), BX					
  task_dao.go:347	0x998d51		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_dao.go:347	0x998d56		4881c4a8000000		ADDQ $.file+91(SB), SP				
  task_dao.go:347	0x998d5d		5d			POPQ BP						
  task_dao.go:347	0x998d5e		c3			RET						
  task_dao.go:302	0x998d5f		4889442408		MOVQ AX, 0x8(SP)				
  task_dao.go:302	0x998d64		48895c2410		MOVQ BX, 0x10(SP)				
  task_dao.go:302	0x998d69		48894c2418		MOVQ CX, 0x18(SP)				
  task_dao.go:302	0x998d6e		48897c2420		MOVQ DI, 0x20(SP)				
  task_dao.go:302	0x998d73		4889742428		MOVQ SI, 0x28(SP)				
  task_dao.go:302	0x998d78		4c89442430		MOVQ R8, 0x30(SP)				
  task_dao.go:302	0x998d7d		4c894c2438		MOVQ R9, 0x38(SP)				
  task_dao.go:302	0x998d82		4c89542440		MOVQ R10, 0x40(SP)				
  task_dao.go:302	0x998d87		e854d7adff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_dao.go:302	0x998d8c		488b442408		MOVQ 0x8(SP), AX				
  task_dao.go:302	0x998d91		488b5c2410		MOVQ 0x10(SP), BX				
  task_dao.go:302	0x998d96		488b4c2418		MOVQ 0x18(SP), CX				
  task_dao.go:302	0x998d9b		488b7c2420		MOVQ 0x20(SP), DI				
  task_dao.go:302	0x998da0		488b742428		MOVQ 0x28(SP), SI				
  task_dao.go:302	0x998da5		4c8b442430		MOVQ 0x30(SP), R8				
  task_dao.go:302	0x998daa		4c8b4c2438		MOVQ 0x38(SP), R9				
  task_dao.go:302	0x998daf		4c8b542440		MOVQ 0x40(SP), R10				
  task_dao.go:302	0x998db4		e9c7faffff		JMP CAS-Backend/biz/dao.SelectALL_task(SB)	
  :-1			0x998db9		cc			INT $__subsystem__(SB)				
  :-1			0x998dba		cc			INT $__subsystem__(SB)				
  :-1			0x998dbb		cc			INT $__subsystem__(SB)				
  :-1			0x998dbc		cc			INT $__subsystem__(SB)				
  :-1			0x998dbd		cc			INT $__subsystem__(SB)				
  :-1			0x998dbe		cc			INT $__subsystem__(SB)				
  :-1			0x998dbf		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.IsExist_task(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:350	0x998dc0		4c8d6424f8		LEAQ -0x8(SP), R12				
  task_dao.go:350	0x998dc5		4d3b6610		CMPQ R12, 0x10(R14)				
  task_dao.go:350	0x998dc9		0f8697010000		JBE 0x998f66					
  task_dao.go:350	0x998dcf		55			PUSHQ BP					
  task_dao.go:350	0x998dd0		4889e5			MOVQ SP, BP					
  task_dao.go:350	0x998dd3		4883c480		ADDQ $-0x80, SP					
  task_dao.go:354	0x998dd7		4889842490000000	MOVQ AX, 0x90(SP)				
  task_dao.go:351	0x998ddf		488d05fa9c6a00		LEAQ runtime.types+383712(SB), AX		
  task_dao.go:351	0x998de6		e8b589a7ff		CALL runtime.newobject(SB)			
  task_dao.go:351	0x998deb		4889442478		MOVQ AX, 0x78(SP)				
  task_dao.go:353	0x998df0		488d05a92c7a00		LEAQ runtime.types+1403552(SB), AX		
  task_dao.go:353	0x998df7		e8a489a7ff		CALL runtime.newobject(SB)			
  task_dao.go:353	0x998dfc		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:353	0x998e01		488b0d3892b702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x998e08		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x998e0b		e870f9f8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x998e10		4889442438		MOVQ AX, 0x38(SP)				
  chainable_api.go:20	0x998e15		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x998e19		488d15e09e7000		LEAQ runtime.types+777472(SB), DX		
  chainable_api.go:20	0x998e20		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x998e24		833d254dbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x998e2b		7507			JNE 0x998e34					
  chainable_api.go:20	0x998e2d		488b542450		MOVQ 0x50(SP), DX				
  chainable_api.go:20	0x998e32		eb15			JMP 0x998e49					
  chainable_api.go:20	0x998e34		e807f6adff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x998e39		488b542450		MOVQ 0x50(SP), DX				
  chainable_api.go:20	0x998e3e		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x998e41		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x998e45		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x998e49		48895128		MOVQ DX, 0x28(CX)				
  task_dao.go:353	0x998e4d		488d054c506b00		LEAQ runtime.types+429728(SB), AX		
  task_dao.go:353	0x998e54		e84789a7ff		CALL runtime.newobject(SB)			
  task_dao.go:353	0x998e59		4889442448		MOVQ AX, 0x48(SP)				
  task_dao.go:353	0x998e5e		488b842490000000	MOVQ 0x90(SP), AX				
  task_dao.go:353	0x998e66		e83512adff		CALL runtime.convT64(SB)			
  task_dao.go:353	0x998e6b		488d0dee9c6a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:353	0x998e72		488b7c2448		MOVQ 0x48(SP), DI				
  task_dao.go:353	0x998e77		48890f			MOVQ CX, 0(DI)					
  task_dao.go:353	0x998e7a		833dcf4cbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:353	0x998e81		7410			JE 0x998e93					
  task_dao.go:353	0x998e83		e8b8f5adff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:353	0x998e88		498903			MOVQ AX, 0(R11)					
  task_dao.go:353	0x998e8b		488b5708		MOVQ 0x8(DI), DX				
  task_dao.go:353	0x998e8f		49895308		MOVQ DX, 0x8(R11)				
  task_dao.go:353	0x998e93		48894708		MOVQ AX, 0x8(DI)				
  task_dao.go:353	0x998e97		488b442438		MOVQ 0x38(SP), AX				
  task_dao.go:353	0x998e9c		488d1d7d9a6a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:353	0x998ea3		488d0db6ee4c02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX	
  task_dao.go:353	0x998eaa		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_dao.go:353	0x998eaf		4989f0			MOVQ SI, R8					
  task_dao.go:353	0x998eb2		e8e952f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_dao.go:353	0x998eb7		488b5c2478		MOVQ 0x78(SP), BX				
  task_dao.go:353	0x998ebc		0f1f4000		NOPL 0(AX)					
  task_dao.go:353	0x998ec0		e8fba3f8ff		CALL gorm.io/gorm.(*DB).Count(SB)		
  task_dao.go:354	0x998ec5		4883780800		CMPQ 0x8(AX), $0x0				
  task_dao.go:354	0x998eca		0f8484000000		JE 0x998f54					
  task_dao.go:353	0x998ed0		4889442440		MOVQ AX, 0x40(SP)				
  task_dao.go:355	0x998ed5		440f117c2458		MOVUPS X15, 0x58(SP)				
  task_dao.go:355	0x998edb		440f117c2468		MOVUPS X15, 0x68(SP)				
  task_dao.go:355	0x998ee1		488b842490000000	MOVQ 0x90(SP), AX				
  task_dao.go:355	0x998ee9		e8b211adff		CALL runtime.convT64(SB)			
  task_dao.go:355	0x998eee		488d0d6b9c6a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:355	0x998ef5		48894c2458		MOVQ CX, 0x58(SP)				
  task_dao.go:355	0x998efa		4889442460		MOVQ AX, 0x60(SP)				
  task_dao.go:355	0x998eff		488b4c2440		MOVQ 0x40(SP), CX				
  task_dao.go:355	0x998f04		488b5108		MOVQ 0x8(CX), DX				
  task_dao.go:355	0x998f08		4885d2			TESTQ DX, DX					
  task_dao.go:355	0x998f0b		7404			JE 0x998f11					
  task_dao.go:355	0x998f0d		488b5208		MOVQ 0x8(DX), DX				
  task_dao.go:355	0x998f11		4c8b5110		MOVQ 0x10(CX), R10				
  task_dao.go:355	0x998f15		4889542468		MOVQ DX, 0x68(SP)				
  task_dao.go:355	0x998f1a		4c89542470		MOVQ R10, 0x70(SP)				
  print.go:233		0x998f1f		488b1d5a91b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x998f26		488d05b32b4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x998f2d		488d0df4487f00		LEAQ go:string.*+152352(SB), CX			
  print.go:233		0x998f34		bf20000000		MOVL $__major_os_version__+26(SB), DI		
  print.go:233		0x998f39		488d742458		LEAQ 0x58(SP), SI				
  print.go:233		0x998f3e		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x998f44		4d89c1			MOVQ R8, R9					
  print.go:233		0x998f47		e8d462b8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:356	0x998f4c		31c0			XORL AX, AX					
  task_dao.go:356	0x998f4e		4883ec80		SUBQ $-0x80, SP					
  task_dao.go:356	0x998f52		5d			POPQ BP						
  task_dao.go:356	0x998f53		c3			RET						
  task_dao.go:359	0x998f54		488b4c2478		MOVQ 0x78(SP), CX				
  task_dao.go:359	0x998f59		48833900		CMPQ 0(CX), $0x0				
  task_dao.go:359	0x998f5d		0f9fc0			SETG AL						
  task_dao.go:359	0x998f60		4883ec80		SUBQ $-0x80, SP					
  task_dao.go:359	0x998f64		5d			POPQ BP						
  task_dao.go:359	0x998f65		c3			RET						
  task_dao.go:350	0x998f66		4889442408		MOVQ AX, 0x8(SP)				
  task_dao.go:350	0x998f6b		e870d5adff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_dao.go:350	0x998f70		488b442408		MOVQ 0x8(SP), AX				
  task_dao.go:350	0x998f75		e946feffff		JMP CAS-Backend/biz/dao.IsExist_task(SB)	
  :-1			0x998f7a		cc			INT $__subsystem__(SB)				
  :-1			0x998f7b		cc			INT $__subsystem__(SB)				
  :-1			0x998f7c		cc			INT $__subsystem__(SB)				
  :-1			0x998f7d		cc			INT $__subsystem__(SB)				
  :-1			0x998f7e		cc			INT $__subsystem__(SB)				
  :-1			0x998f7f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.GuaqiTask(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:362	0x998f80		4c8d6424e0		LEAQ -0x20(SP), R12				
  task_dao.go:362	0x998f85		4d3b6610		CMPQ R12, 0x10(R14)				
  task_dao.go:362	0x998f89		0f862c020000		JBE 0x9991bb					
  task_dao.go:362	0x998f8f		55			PUSHQ BP					
  task_dao.go:362	0x998f90		4889e5			MOVQ SP, BP					
  task_dao.go:362	0x998f93		4881ec98000000		SUBQ $.file+75(SB), SP				
  task_dao.go:365	0x998f9a		48898424a8000000	MOVQ AX, 0xa8(SP)				
  task_dao.go:364	0x998fa2		488d05f72a7a00		LEAQ runtime.types+1403552(SB), AX		
  task_dao.go:364	0x998fa9		e8f287a7ff		CALL runtime.newobject(SB)			
  task_dao.go:364	0x998fae		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:364	0x998fb3		488b0d8690b702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x998fba		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x998fbd		0f1f00			NOPL 0(AX)					
  chainable_api.go:19	0x998fc0		e8bbf7f8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x998fc5		4889442438		MOVQ AX, 0x38(SP)				
  chainable_api.go:20	0x998fca		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x998fce		488d152b9d7000		LEAQ runtime.types+777472(SB), DX		
  chainable_api.go:20	0x998fd5		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x998fd9		833d704bbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x998fe0		7507			JNE 0x998fe9					
  chainable_api.go:20	0x998fe2		488b542450		MOVQ 0x50(SP), DX				
  chainable_api.go:20	0x998fe7		eb15			JMP 0x998ffe					
  chainable_api.go:20	0x998fe9		e852f4adff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x998fee		488b542450		MOVQ 0x50(SP), DX				
  chainable_api.go:20	0x998ff3		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x998ff6		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x998ffa		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x998ffe		48895128		MOVQ DX, 0x28(CX)				
  task_dao.go:364	0x999002		488d05974e6b00		LEAQ runtime.types+429728(SB), AX		
  task_dao.go:364	0x999009		e89287a7ff		CALL runtime.newobject(SB)			
  task_dao.go:364	0x99900e		4889442448		MOVQ AX, 0x48(SP)				
  task_dao.go:364	0x999013		488b8424a8000000	MOVQ 0xa8(SP), AX				
  task_dao.go:364	0x99901b		0f1f440000		NOPL 0(AX)(AX*1)				
  task_dao.go:364	0x999020		e87b10adff		CALL runtime.convT64(SB)			
  task_dao.go:364	0x999025		488d0d349b6a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:364	0x99902c		488b7c2448		MOVQ 0x48(SP), DI				
  task_dao.go:364	0x999031		48890f			MOVQ CX, 0(DI)					
  task_dao.go:364	0x999034		833d154bbc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:364	0x99903b		7413			JE 0x999050					
  task_dao.go:364	0x99903d		0f1f00			NOPL 0(AX)					
  task_dao.go:364	0x999040		e8fbf3adff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:364	0x999045		498903			MOVQ AX, 0(R11)					
  task_dao.go:364	0x999048		488b5708		MOVQ 0x8(DI), DX				
  task_dao.go:364	0x99904c		49895308		MOVQ DX, 0x8(R11)				
  task_dao.go:364	0x999050		48894708		MOVQ AX, 0x8(DI)				
  task_dao.go:364	0x999054		488b442438		MOVQ 0x38(SP), AX				
  task_dao.go:364	0x999059		488d1dc0986a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:364	0x999060		488d0df9ec4c02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX	
  task_dao.go:364	0x999067		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_dao.go:364	0x99906c		4989f0			MOVQ SI, R8					
  task_dao.go:364	0x99906f		e82c51f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_dao.go:364	0x999074		488d1dec617d00		LEAQ go:string.*+27999(SB), BX			
  task_dao.go:364	0x99907b		b906000000		MOVL $__major_os_version__(SB), CX		
  task_dao.go:364	0x999080		488d3dd99a6a00		LEAQ runtime.types+383840(SB), DI		
  task_dao.go:364	0x999087		488d35a2e74c02		LEAQ CAS-Backend/biz/dao..stmp_21(SB), SI	
  task_dao.go:364	0x99908e		e82d9cf8ff		CALL gorm.io/gorm.(*DB).Update(SB)		
  task_dao.go:364	0x999093		4889442440		MOVQ AX, 0x40(SP)				
  task_dao.go:365	0x999098		4883780800		CMPQ 0x8(AX), $0x0				
  task_dao.go:365	0x99909d		0f1f00			NOPL 0(AX)					
  task_dao.go:365	0x9990a0		0f8491000000		JE 0x999137					
  task_dao.go:366	0x9990a6		440f117c2478		MOVUPS X15, 0x78(SP)				
  task_dao.go:366	0x9990ac		440f11bc2488000000	MOVUPS X15, 0x88(SP)				
  task_dao.go:366	0x9990b5		488b8424a8000000	MOVQ 0xa8(SP), AX				
  task_dao.go:366	0x9990bd		0f1f00			NOPL 0(AX)					
  task_dao.go:366	0x9990c0		e8db0fadff		CALL runtime.convT64(SB)			
  task_dao.go:366	0x9990c5		488d0d949a6a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:366	0x9990cc		48894c2478		MOVQ CX, 0x78(SP)				
  task_dao.go:366	0x9990d1		4889842480000000	MOVQ AX, 0x80(SP)				
  task_dao.go:366	0x9990d9		488b4c2440		MOVQ 0x40(SP), CX				
  task_dao.go:366	0x9990de		488b5108		MOVQ 0x8(CX), DX				
  task_dao.go:366	0x9990e2		4885d2			TESTQ DX, DX					
  task_dao.go:366	0x9990e5		7404			JE 0x9990eb					
  task_dao.go:366	0x9990e7		488b5208		MOVQ 0x8(DX), DX				
  task_dao.go:366	0x9990eb		4c8b5110		MOVQ 0x10(CX), R10				
  task_dao.go:366	0x9990ef		4889942488000000	MOVQ DX, 0x88(SP)				
  task_dao.go:366	0x9990f7		4c89942490000000	MOVQ R10, 0x90(SP)				
  print.go:233		0x9990ff		488b1d7a8fb702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x999106		488d05d3294d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99910d		488d0d94477f00		LEAQ go:string.*+152480(SB), CX			
  print.go:233		0x999114		bf20000000		MOVL $__major_os_version__+26(SB), DI		
  print.go:233		0x999119		488d742478		LEAQ 0x78(SP), SI				
  print.go:233		0x99911e		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x999124		4d89c1			MOVQ R8, R9					
  print.go:233		0x999127		e8f460b8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:367	0x99912c		31c0			XORL AX, AX					
  task_dao.go:367	0x99912e		4881c498000000		ADDQ $.file+75(SB), SP				
  task_dao.go:367	0x999135		5d			POPQ BP						
  task_dao.go:367	0x999136		c3			RET						
  task_dao.go:370	0x999137		440f117c2458		MOVUPS X15, 0x58(SP)				
  task_dao.go:370	0x99913d		440f117c2468		MOVUPS X15, 0x68(SP)				
  task_dao.go:370	0x999143		488b8424a8000000	MOVQ 0xa8(SP), AX				
  task_dao.go:370	0x99914b		e8500fadff		CALL runtime.convT64(SB)			
  task_dao.go:370	0x999150		488d0d099a6a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:370	0x999157		48894c2458		MOVQ CX, 0x58(SP)				
  task_dao.go:370	0x99915c		4889442460		MOVQ AX, 0x60(SP)				
  task_dao.go:370	0x999161		488b4c2440		MOVQ 0x40(SP), CX				
  task_dao.go:370	0x999166		488b4118		MOVQ 0x18(CX), AX				
  task_dao.go:370	0x99916a		e8310fadff		CALL runtime.convT64(SB)			
  task_dao.go:370	0x99916f		488d0d6a996a00		LEAQ runtime.types+383712(SB), CX		
  task_dao.go:370	0x999176		48894c2468		MOVQ CX, 0x68(SP)				
  task_dao.go:370	0x99917b		4889442470		MOVQ AX, 0x70(SP)				
  print.go:233		0x999180		488b1df98eb702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x999187		488d0552294d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99918e		488d0dbca97f00		LEAQ go:string.*+177737(SB), CX			
  print.go:233		0x999195		bf26000000		MOVL $__major_os_version__+32(SB), DI		
  print.go:233		0x99919a		488d742458		LEAQ 0x58(SP), SI				
  print.go:233		0x99919f		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x9991a5		4d89c1			MOVQ R8, R9					
  print.go:233		0x9991a8		e87360b8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:371	0x9991ad		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_dao.go:371	0x9991b2		4881c498000000		ADDQ $.file+75(SB), SP				
  task_dao.go:371	0x9991b9		5d			POPQ BP						
  task_dao.go:371	0x9991ba		c3			RET						
  task_dao.go:362	0x9991bb		4889442408		MOVQ AX, 0x8(SP)				
  task_dao.go:362	0x9991c0		e81bd3adff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_dao.go:362	0x9991c5		488b442408		MOVQ 0x8(SP), AX				
  task_dao.go:362	0x9991ca		e9b1fdffff		JMP CAS-Backend/biz/dao.GuaqiTask(SB)		
  :-1			0x9991cf		cc			INT $__subsystem__(SB)				
  :-1			0x9991d0		cc			INT $__subsystem__(SB)				
  :-1			0x9991d1		cc			INT $__subsystem__(SB)				
  :-1			0x9991d2		cc			INT $__subsystem__(SB)				
  :-1			0x9991d3		cc			INT $__subsystem__(SB)				
  :-1			0x9991d4		cc			INT $__subsystem__(SB)				
  :-1			0x9991d5		cc			INT $__subsystem__(SB)				
  :-1			0x9991d6		cc			INT $__subsystem__(SB)				
  :-1			0x9991d7		cc			INT $__subsystem__(SB)				
  :-1			0x9991d8		cc			INT $__subsystem__(SB)				
  :-1			0x9991d9		cc			INT $__subsystem__(SB)				
  :-1			0x9991da		cc			INT $__subsystem__(SB)				
  :-1			0x9991db		cc			INT $__subsystem__(SB)				
  :-1			0x9991dc		cc			INT $__subsystem__(SB)				
  :-1			0x9991dd		cc			INT $__subsystem__(SB)				
  :-1			0x9991de		cc			INT $__subsystem__(SB)				
  :-1			0x9991df		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.HuifuTask(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:374	0x9991e0		4c8d6424e0		LEAQ -0x20(SP), R12				
  task_dao.go:374	0x9991e5		4d3b6610		CMPQ R12, 0x10(R14)				
  task_dao.go:374	0x9991e9		0f862c020000		JBE 0x99941b					
  task_dao.go:374	0x9991ef		55			PUSHQ BP					
  task_dao.go:374	0x9991f0		4889e5			MOVQ SP, BP					
  task_dao.go:374	0x9991f3		4881ec98000000		SUBQ $.file+75(SB), SP				
  task_dao.go:377	0x9991fa		48898424a8000000	MOVQ AX, 0xa8(SP)				
  task_dao.go:376	0x999202		488d0597287a00		LEAQ runtime.types+1403552(SB), AX		
  task_dao.go:376	0x999209		e89285a7ff		CALL runtime.newobject(SB)			
  task_dao.go:376	0x99920e		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:376	0x999213		488b0d268eb702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x99921a		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x99921d		0f1f00			NOPL 0(AX)					
  chainable_api.go:19	0x999220		e85bf5f8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x999225		4889442438		MOVQ AX, 0x38(SP)				
  chainable_api.go:20	0x99922a		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x99922e		488d15cb9a7000		LEAQ runtime.types+777472(SB), DX		
  chainable_api.go:20	0x999235		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x999239		833d1049bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x999240		7507			JNE 0x999249					
  chainable_api.go:20	0x999242		488b542450		MOVQ 0x50(SP), DX				
  chainable_api.go:20	0x999247		eb15			JMP 0x99925e					
  chainable_api.go:20	0x999249		e8f2f1adff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x99924e		488b542450		MOVQ 0x50(SP), DX				
  chainable_api.go:20	0x999253		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x999256		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x99925a		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x99925e		48895128		MOVQ DX, 0x28(CX)				
  task_dao.go:376	0x999262		488d05374c6b00		LEAQ runtime.types+429728(SB), AX		
  task_dao.go:376	0x999269		e83285a7ff		CALL runtime.newobject(SB)			
  task_dao.go:376	0x99926e		4889442448		MOVQ AX, 0x48(SP)				
  task_dao.go:376	0x999273		488b8424a8000000	MOVQ 0xa8(SP), AX				
  task_dao.go:376	0x99927b		0f1f440000		NOPL 0(AX)(AX*1)				
  task_dao.go:376	0x999280		e81b0eadff		CALL runtime.convT64(SB)			
  task_dao.go:376	0x999285		488d0dd4986a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:376	0x99928c		488b7c2448		MOVQ 0x48(SP), DI				
  task_dao.go:376	0x999291		48890f			MOVQ CX, 0(DI)					
  task_dao.go:376	0x999294		833db548bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:376	0x99929b		7413			JE 0x9992b0					
  task_dao.go:376	0x99929d		0f1f00			NOPL 0(AX)					
  task_dao.go:376	0x9992a0		e89bf1adff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:376	0x9992a5		498903			MOVQ AX, 0(R11)					
  task_dao.go:376	0x9992a8		488b5708		MOVQ 0x8(DI), DX				
  task_dao.go:376	0x9992ac		49895308		MOVQ DX, 0x8(R11)				
  task_dao.go:376	0x9992b0		48894708		MOVQ AX, 0x8(DI)				
  task_dao.go:376	0x9992b4		488b442438		MOVQ 0x38(SP), AX				
  task_dao.go:376	0x9992b9		488d1d60966a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:376	0x9992c0		488d0d99ea4c02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX	
  task_dao.go:376	0x9992c7		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_dao.go:376	0x9992cc		4989f0			MOVQ SI, R8					
  task_dao.go:376	0x9992cf		e8cc4ef8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_dao.go:376	0x9992d4		488d1d8c5f7d00		LEAQ go:string.*+27999(SB), BX			
  task_dao.go:376	0x9992db		b906000000		MOVL $__major_os_version__(SB), CX		
  task_dao.go:376	0x9992e0		488d3d79986a00		LEAQ runtime.types+383840(SB), DI		
  task_dao.go:376	0x9992e7		488d35d2b74c02		LEAQ runtime.gcbits.*(SB), SI			
  task_dao.go:376	0x9992ee		e8cd99f8ff		CALL gorm.io/gorm.(*DB).Update(SB)		
  task_dao.go:376	0x9992f3		4889442440		MOVQ AX, 0x40(SP)				
  task_dao.go:377	0x9992f8		4883780800		CMPQ 0x8(AX), $0x0				
  task_dao.go:377	0x9992fd		0f1f00			NOPL 0(AX)					
  task_dao.go:377	0x999300		0f8491000000		JE 0x999397					
  task_dao.go:378	0x999306		440f117c2478		MOVUPS X15, 0x78(SP)				
  task_dao.go:378	0x99930c		440f11bc2488000000	MOVUPS X15, 0x88(SP)				
  task_dao.go:378	0x999315		488b8424a8000000	MOVQ 0xa8(SP), AX				
  task_dao.go:378	0x99931d		0f1f00			NOPL 0(AX)					
  task_dao.go:378	0x999320		e87b0dadff		CALL runtime.convT64(SB)			
  task_dao.go:378	0x999325		488d0d34986a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:378	0x99932c		48894c2478		MOVQ CX, 0x78(SP)				
  task_dao.go:378	0x999331		4889842480000000	MOVQ AX, 0x80(SP)				
  task_dao.go:378	0x999339		488b4c2440		MOVQ 0x40(SP), CX				
  task_dao.go:378	0x99933e		488b5108		MOVQ 0x8(CX), DX				
  task_dao.go:378	0x999342		4885d2			TESTQ DX, DX					
  task_dao.go:378	0x999345		7404			JE 0x99934b					
  task_dao.go:378	0x999347		488b5208		MOVQ 0x8(DX), DX				
  task_dao.go:378	0x99934b		4c8b5110		MOVQ 0x10(CX), R10				
  task_dao.go:378	0x99934f		4889942488000000	MOVQ DX, 0x88(SP)				
  task_dao.go:378	0x999357		4c89942490000000	MOVQ R10, 0x90(SP)				
  print.go:233		0x99935f		488b1d1a8db702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x999366		488d0573274d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x99936d		488d0d54457f00		LEAQ go:string.*+152512(SB), CX			
  print.go:233		0x999374		bf20000000		MOVL $__major_os_version__+26(SB), DI		
  print.go:233		0x999379		488d742478		LEAQ 0x78(SP), SI				
  print.go:233		0x99937e		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x999384		4d89c1			MOVQ R8, R9					
  print.go:233		0x999387		e8945eb8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:379	0x99938c		31c0			XORL AX, AX					
  task_dao.go:379	0x99938e		4881c498000000		ADDQ $.file+75(SB), SP				
  task_dao.go:379	0x999395		5d			POPQ BP						
  task_dao.go:379	0x999396		c3			RET						
  task_dao.go:382	0x999397		440f117c2458		MOVUPS X15, 0x58(SP)				
  task_dao.go:382	0x99939d		440f117c2468		MOVUPS X15, 0x68(SP)				
  task_dao.go:382	0x9993a3		488b8424a8000000	MOVQ 0xa8(SP), AX				
  task_dao.go:382	0x9993ab		e8f00cadff		CALL runtime.convT64(SB)			
  task_dao.go:382	0x9993b0		488d0da9976a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:382	0x9993b7		48894c2458		MOVQ CX, 0x58(SP)				
  task_dao.go:382	0x9993bc		4889442460		MOVQ AX, 0x60(SP)				
  task_dao.go:382	0x9993c1		488b4c2440		MOVQ 0x40(SP), CX				
  task_dao.go:382	0x9993c6		488b4118		MOVQ 0x18(CX), AX				
  task_dao.go:382	0x9993ca		e8d10cadff		CALL runtime.convT64(SB)			
  task_dao.go:382	0x9993cf		488d0d0a976a00		LEAQ runtime.types+383712(SB), CX		
  task_dao.go:382	0x9993d6		48894c2468		MOVQ CX, 0x68(SP)				
  task_dao.go:382	0x9993db		4889442470		MOVQ AX, 0x70(SP)				
  print.go:233		0x9993e0		488b1d998cb702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x9993e7		488d05f2264d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x9993ee		488d0d82a77f00		LEAQ go:string.*+177775(SB), CX			
  print.go:233		0x9993f5		bf26000000		MOVL $__major_os_version__+32(SB), DI		
  print.go:233		0x9993fa		488d742458		LEAQ 0x58(SP), SI				
  print.go:233		0x9993ff		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x999405		4d89c1			MOVQ R8, R9					
  print.go:233		0x999408		e8135eb8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:383	0x99940d		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_dao.go:383	0x999412		4881c498000000		ADDQ $.file+75(SB), SP				
  task_dao.go:383	0x999419		5d			POPQ BP						
  task_dao.go:383	0x99941a		c3			RET						
  task_dao.go:374	0x99941b		4889442408		MOVQ AX, 0x8(SP)				
  task_dao.go:374	0x999420		e8bbd0adff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_dao.go:374	0x999425		488b442408		MOVQ 0x8(SP), AX				
  task_dao.go:374	0x99942a		e9b1fdffff		JMP CAS-Backend/biz/dao.HuifuTask(SB)		
  :-1			0x99942f		cc			INT $__subsystem__(SB)				
  :-1			0x999430		cc			INT $__subsystem__(SB)				
  :-1			0x999431		cc			INT $__subsystem__(SB)				
  :-1			0x999432		cc			INT $__subsystem__(SB)				
  :-1			0x999433		cc			INT $__subsystem__(SB)				
  :-1			0x999434		cc			INT $__subsystem__(SB)				
  :-1			0x999435		cc			INT $__subsystem__(SB)				
  :-1			0x999436		cc			INT $__subsystem__(SB)				
  :-1			0x999437		cc			INT $__subsystem__(SB)				
  :-1			0x999438		cc			INT $__subsystem__(SB)				
  :-1			0x999439		cc			INT $__subsystem__(SB)				
  :-1			0x99943a		cc			INT $__subsystem__(SB)				
  :-1			0x99943b		cc			INT $__subsystem__(SB)				
  :-1			0x99943c		cc			INT $__subsystem__(SB)				
  :-1			0x99943d		cc			INT $__subsystem__(SB)				
  :-1			0x99943e		cc			INT $__subsystem__(SB)				
  :-1			0x99943f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.UpdateTaskStatusByID(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:386	0x999440		4c8d6424b0		LEAQ -0x50(SP), R12					
  task_dao.go:386	0x999445		4d3b6610		CMPQ R12, 0x10(R14)					
  task_dao.go:386	0x999449		0f86e9020000		JBE 0x999738						
  task_dao.go:386	0x99944f		55			PUSHQ BP						
  task_dao.go:386	0x999450		4889e5			MOVQ SP, BP						
  task_dao.go:386	0x999453		4881ecc8000000		SUBQ $.file+123(SB), SP					
  task_dao.go:389	0x99945a		48898424d8000000	MOVQ AX, 0xd8(SP)					
  task_dao.go:389	0x999462		48899c24e0000000	MOVQ BX, 0xe0(SP)					
  task_dao.go:388	0x99946a		488d052f267a00		LEAQ runtime.types+1403552(SB), AX			
  task_dao.go:388	0x999471		e82a83a7ff		CALL runtime.newobject(SB)				
  task_dao.go:388	0x999476		4889442460		MOVQ AX, 0x60(SP)					
  task_dao.go:388	0x99947b		488b0dbe8bb702		MOVQ runtime.bss(SB), CX				
  chainable_api.go:19	0x999482		4889c8			MOVQ CX, AX						
  chainable_api.go:19	0x999485		e8f6f2f8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)			
  chainable_api.go:19	0x99948a		4889442440		MOVQ AX, 0x40(SP)					
  chainable_api.go:20	0x99948f		488b4820		MOVQ 0x20(AX), CX					
  chainable_api.go:20	0x999493		488d1566987000		LEAQ runtime.types+777472(SB), DX			
  chainable_api.go:20	0x99949a		48895120		MOVQ DX, 0x20(CX)					
  chainable_api.go:20	0x99949e		833dab46bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  chainable_api.go:20	0x9994a5		7507			JNE 0x9994ae						
  chainable_api.go:20	0x9994a7		488b542460		MOVQ 0x60(SP), DX					
  chainable_api.go:20	0x9994ac		eb15			JMP 0x9994c3						
  chainable_api.go:20	0x9994ae		e88defadff		CALL runtime.gcWriteBarrier2(SB)			
  chainable_api.go:20	0x9994b3		488b542460		MOVQ 0x60(SP), DX					
  chainable_api.go:20	0x9994b8		498913			MOVQ DX, 0(R11)						
  chainable_api.go:20	0x9994bb		488b5928		MOVQ 0x28(CX), BX					
  chainable_api.go:20	0x9994bf		49895b08		MOVQ BX, 0x8(R11)					
  chainable_api.go:20	0x9994c3		48895128		MOVQ DX, 0x28(CX)					
  task_dao.go:388	0x9994c7		488d05d2496b00		LEAQ runtime.types+429728(SB), AX			
  task_dao.go:388	0x9994ce		e8cd82a7ff		CALL runtime.newobject(SB)				
  task_dao.go:388	0x9994d3		4889442458		MOVQ AX, 0x58(SP)					
  task_dao.go:388	0x9994d8		488b8424d8000000	MOVQ 0xd8(SP), AX					
  task_dao.go:388	0x9994e0		e8bb0badff		CALL runtime.convT64(SB)				
  task_dao.go:388	0x9994e5		488d0d74966a00		LEAQ runtime.types+383840(SB), CX			
  task_dao.go:388	0x9994ec		488b7c2458		MOVQ 0x58(SP), DI					
  task_dao.go:388	0x9994f1		48890f			MOVQ CX, 0(DI)						
  task_dao.go:388	0x9994f4		833d5546bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  task_dao.go:388	0x9994fb		7413			JE 0x999510						
  task_dao.go:388	0x9994fd		0f1f00			NOPL 0(AX)						
  task_dao.go:388	0x999500		e83befadff		CALL runtime.gcWriteBarrier2(SB)			
  task_dao.go:388	0x999505		498903			MOVQ AX, 0(R11)						
  task_dao.go:388	0x999508		488b5708		MOVQ 0x8(DI), DX					
  task_dao.go:388	0x99950c		49895308		MOVQ DX, 0x8(R11)					
  task_dao.go:388	0x999510		48894708		MOVQ AX, 0x8(DI)					
  task_dao.go:388	0x999514		488b442440		MOVQ 0x40(SP), AX					
  task_dao.go:388	0x999519		488d1d00946a00		LEAQ runtime.types+383264(SB), BX			
  task_dao.go:388	0x999520		488d0d39e84c02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX		
  task_dao.go:388	0x999527		be01000000		MOVL $__minor_os_version__(SB), SI			
  task_dao.go:388	0x99952c		4989f0			MOVQ SI, R8						
  task_dao.go:388	0x99952f		e86c4cf8ff		CALL gorm.io/gorm.(*DB).Where(SB)			
  task_dao.go:388	0x999534		4889442450		MOVQ AX, 0x50(SP)					
  task_dao.go:388	0x999539		488b8424e0000000	MOVQ 0xe0(SP), AX					
  task_dao.go:388	0x999541		e85a0badff		CALL runtime.convT64(SB)				
  task_dao.go:388	0x999546		488d1d1a5d7d00		LEAQ go:string.*+27999(SB), BX				
  task_dao.go:388	0x99954d		b906000000		MOVL $__major_os_version__(SB), CX			
  task_dao.go:388	0x999552		488d3d07966a00		LEAQ runtime.types+383840(SB), DI			
  task_dao.go:388	0x999559		4889c6			MOVQ AX, SI						
  task_dao.go:388	0x99955c		488b442450		MOVQ 0x50(SP), AX					
  task_dao.go:388	0x999561		e85a97f8ff		CALL gorm.io/gorm.(*DB).Update(SB)			
  task_dao.go:389	0x999566		4883780800		CMPQ 0x8(AX), $0x0					
  task_dao.go:389	0x99956b		0f8526010000		JNE 0x999697						
  task_dao.go:394	0x999571		488b4818		MOVQ 0x18(AX), CX					
  task_dao.go:395	0x999575		4885c9			TESTQ CX, CX						
  task_dao.go:395	0x999578		7568			JNE 0x9995e2						
  task_dao.go:396	0x99957a		440f11bc2498000000	MOVUPS X15, 0x98(SP)					
  task_dao.go:396	0x999583		488b8424d8000000	MOVQ 0xd8(SP), AX					
  task_dao.go:396	0x99958b		e8100badff		CALL runtime.convT64(SB)				
  task_dao.go:396	0x999590		488d0dc9956a00		LEAQ runtime.types+383840(SB), CX			
  task_dao.go:396	0x999597		48898c2498000000	MOVQ CX, 0x98(SP)					
  task_dao.go:396	0x99959f		48898424a0000000	MOVQ AX, 0xa0(SP)					
  print.go:233		0x9995a7		488b1dd28ab702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x9995ae		488d052b254d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x9995b5		488d0d7e7c7e00		LEAQ go:string.*+101682(SB), CX				
  print.go:233		0x9995bc		bf15000000		MOVL $__major_os_version__+15(SB), DI			
  print.go:233		0x9995c1		488db42498000000	LEAQ 0x98(SP), SI					
  print.go:233		0x9995c9		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0x9995cf		4d89c1			MOVQ R8, R9						
  print.go:233		0x9995d2		e8495cb8ff		CALL fmt.Fprintf(SB)					
  task_dao.go:397	0x9995d7		31c0			XORL AX, AX						
  task_dao.go:397	0x9995d9		4881c4c8000000		ADDQ $.file+123(SB), SP					
  task_dao.go:397	0x9995e0		5d			POPQ BP							
  task_dao.go:397	0x9995e1		c3			RET							
  task_dao.go:394	0x9995e2		48894c2438		MOVQ CX, 0x38(SP)					
  task_dao.go:400	0x9995e7		440f117c2468		MOVUPS X15, 0x68(SP)					
  task_dao.go:400	0x9995ed		440f117c2478		MOVUPS X15, 0x78(SP)					
  task_dao.go:400	0x9995f3		440f11bc2488000000	MOVUPS X15, 0x88(SP)					
  task_dao.go:400	0x9995fc		488b8424d8000000	MOVQ 0xd8(SP), AX					
  task_dao.go:400	0x999604		e8970aadff		CALL runtime.convT64(SB)				
  task_dao.go:400	0x999609		488d0d50956a00		LEAQ runtime.types+383840(SB), CX			
  task_dao.go:400	0x999610		48894c2468		MOVQ CX, 0x68(SP)					
  task_dao.go:400	0x999615		4889442470		MOVQ AX, 0x70(SP)					
  task_dao.go:400	0x99961a		488b8424e0000000	MOVQ 0xe0(SP), AX					
  task_dao.go:400	0x999622		e8790aadff		CALL runtime.convT64(SB)				
  task_dao.go:400	0x999627		488d0d32956a00		LEAQ runtime.types+383840(SB), CX			
  task_dao.go:400	0x99962e		48894c2478		MOVQ CX, 0x78(SP)					
  task_dao.go:400	0x999633		4889842480000000	MOVQ AX, 0x80(SP)					
  task_dao.go:400	0x99963b		488b442438		MOVQ 0x38(SP), AX					
  task_dao.go:400	0x999640		e85b0aadff		CALL runtime.convT64(SB)				
  task_dao.go:400	0x999645		488d0d94946a00		LEAQ runtime.types+383712(SB), CX			
  task_dao.go:400	0x99964c		48898c2488000000	MOVQ CX, 0x88(SP)					
  task_dao.go:400	0x999654		4889842490000000	MOVQ AX, 0x90(SP)					
  print.go:233		0x99965c		488b1d1d8ab702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x999663		488d0576244d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x99966a		488d0d173e8000		LEAQ go:string.*+216960(SB), CX				
  print.go:233		0x999671		bf32000000		MOVL $__major_os_version__+44(SB), DI			
  print.go:233		0x999676		488d742468		LEAQ 0x68(SP), SI					
  print.go:233		0x99967b		41b803000000		MOVL $__subsystem__(SB), R8				
  print.go:233		0x999681		4d89c1			MOVQ R8, R9						
  print.go:233		0x999684		e8975bb8ff		CALL fmt.Fprintf(SB)					
  task_dao.go:401	0x999689		b801000000		MOVL $__minor_os_version__(SB), AX			
  task_dao.go:401	0x99968e		4881c4c8000000		ADDQ $.file+123(SB), SP					
  task_dao.go:401	0x999695		5d			POPQ BP							
  task_dao.go:401	0x999696		c3			RET							
  task_dao.go:388	0x999697		4889442448		MOVQ AX, 0x48(SP)					
  task_dao.go:390	0x99969c		440f11bc24a8000000	MOVUPS X15, 0xa8(SP)					
  task_dao.go:390	0x9996a5		440f11bc24b8000000	MOVUPS X15, 0xb8(SP)					
  task_dao.go:390	0x9996ae		488b8424d8000000	MOVQ 0xd8(SP), AX					
  task_dao.go:390	0x9996b6		e8e509adff		CALL runtime.convT64(SB)				
  task_dao.go:390	0x9996bb		488d0d9e946a00		LEAQ runtime.types+383840(SB), CX			
  task_dao.go:390	0x9996c2		48898c24a8000000	MOVQ CX, 0xa8(SP)					
  task_dao.go:390	0x9996ca		48898424b0000000	MOVQ AX, 0xb0(SP)					
  task_dao.go:390	0x9996d2		488b4c2448		MOVQ 0x48(SP), CX					
  task_dao.go:390	0x9996d7		488b5108		MOVQ 0x8(CX), DX					
  task_dao.go:390	0x9996db		0f1f440000		NOPL 0(AX)(AX*1)					
  task_dao.go:390	0x9996e0		4885d2			TESTQ DX, DX						
  task_dao.go:390	0x9996e3		7404			JE 0x9996e9						
  task_dao.go:390	0x9996e5		488b5208		MOVQ 0x8(DX), DX					
  task_dao.go:390	0x9996e9		4c8b5110		MOVQ 0x10(CX), R10					
  task_dao.go:390	0x9996ed		48899424b8000000	MOVQ DX, 0xb8(SP)					
  task_dao.go:390	0x9996f5		4c899424c0000000	MOVQ R10, 0xc0(SP)					
  print.go:233		0x9996fd		488b1d7c89b702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x999704		488d05d5234d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x99970b		488d0db1fa7f00		LEAQ go:string.*+199867(SB), CX				
  print.go:233		0x999712		bf2c000000		MOVL $__major_os_version__+38(SB), DI			
  print.go:233		0x999717		488db424a8000000	LEAQ 0xa8(SP), SI					
  print.go:233		0x99971f		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0x999725		4d89c1			MOVQ R8, R9						
  print.go:233		0x999728		e8f35ab8ff		CALL fmt.Fprintf(SB)					
  task_dao.go:391	0x99972d		31c0			XORL AX, AX						
  task_dao.go:391	0x99972f		4881c4c8000000		ADDQ $.file+123(SB), SP					
  task_dao.go:391	0x999736		5d			POPQ BP							
  task_dao.go:391	0x999737		c3			RET							
  task_dao.go:386	0x999738		4889442408		MOVQ AX, 0x8(SP)					
  task_dao.go:386	0x99973d		48895c2410		MOVQ BX, 0x10(SP)					
  task_dao.go:386	0x999742		e899cdadff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_dao.go:386	0x999747		488b442408		MOVQ 0x8(SP), AX					
  task_dao.go:386	0x99974c		488b5c2410		MOVQ 0x10(SP), BX					
  task_dao.go:386	0x999751		e9eafcffff		JMP CAS-Backend/biz/dao.UpdateTaskStatusByID(SB)	
  :-1			0x999756		cc			INT $__subsystem__(SB)					
  :-1			0x999757		cc			INT $__subsystem__(SB)					
  :-1			0x999758		cc			INT $__subsystem__(SB)					
  :-1			0x999759		cc			INT $__subsystem__(SB)					
  :-1			0x99975a		cc			INT $__subsystem__(SB)					
  :-1			0x99975b		cc			INT $__subsystem__(SB)					
  :-1			0x99975c		cc			INT $__subsystem__(SB)					
  :-1			0x99975d		cc			INT $__subsystem__(SB)					
  :-1			0x99975e		cc			INT $__subsystem__(SB)					
  :-1			0x99975f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/dao.UpdateTaskDispatch(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:405	0x999760		4c8d6424f0		LEAQ -0x10(SP), R12				
  task_dao.go:405	0x999765		4d3b6610		CMPQ R12, 0x10(R14)				
  task_dao.go:405	0x999769		0f8694020000		JBE 0x999a03					
  task_dao.go:405	0x99976f		55			PUSHQ BP					
  task_dao.go:405	0x999770		4889e5			MOVQ SP, BP					
  task_dao.go:405	0x999773		4881ec88000000		SUBQ $.file+59(SB), SP				
  task_dao.go:407	0x99977a		4889842498000000	MOVQ AX, 0x98(SP)				
  task_dao.go:407	0x999782		48899c24a0000000	MOVQ BX, 0xa0(SP)				
  task_dao.go:407	0x99978a		4889bc24b0000000	MOVQ DI, 0xb0(SP)				
  task_dao.go:407	0x999792		48898c24a8000000	MOVQ CX, 0xa8(SP)				
  task_dao.go:406	0x99979a		e84118adff		CALL runtime.makemap_small(SB)			
  task_dao.go:406	0x99979f		4889442438		MOVQ AX, 0x38(SP)				
  task_dao.go:406	0x9997a4		488b8424a0000000	MOVQ 0xa0(SP), AX				
  task_dao.go:406	0x9997ac		e8ef08adff		CALL runtime.convT64(SB)			
  task_dao.go:406	0x9997b1		4889442460		MOVQ AX, 0x60(SP)				
  task_dao.go:406	0x9997b6		488b5c2438		MOVQ 0x38(SP), BX				
  task_dao.go:406	0x9997bb		488d0da55a7d00		LEAQ go:string.*+27999(SB), CX			
  task_dao.go:406	0x9997c2		bf06000000		MOVL $__major_os_version__(SB), DI		
  task_dao.go:406	0x9997c7		488d05f23c6e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:406	0x9997ce		e84d48adff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:406	0x9997d3		488d0d86936a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:406	0x9997da		488908			MOVQ CX, 0(AX)					
  task_dao.go:406	0x9997dd		833d6c43bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:406	0x9997e4		7507			JNE 0x9997ed					
  task_dao.go:406	0x9997e6		488b542460		MOVQ 0x60(SP), DX				
  task_dao.go:406	0x9997eb		eb15			JMP 0x999802					
  task_dao.go:406	0x9997ed		e84eecadff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:406	0x9997f2		488b542460		MOVQ 0x60(SP), DX				
  task_dao.go:406	0x9997f7		498913			MOVQ DX, 0(R11)					
  task_dao.go:406	0x9997fa		488b7008		MOVQ 0x8(AX), SI				
  task_dao.go:406	0x9997fe		49897308		MOVQ SI, 0x8(R11)				
  task_dao.go:406	0x999802		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:407	0x999806		488b9c24b0000000	MOVQ 0xb0(SP), BX				
  task_dao.go:407	0x99980e		4885db			TESTQ BX, BX					
  task_dao.go:407	0x999811		7468			JE 0x99987b					
  task_dao.go:408	0x999813		488b8424a8000000	MOVQ 0xa8(SP), AX				
  task_dao.go:408	0x99981b		0f1f440000		NOPL 0(AX)(AX*1)				
  task_dao.go:408	0x999820		e8fb08adff		CALL runtime.convTstring(SB)			
  task_dao.go:408	0x999825		4889442460		MOVQ AX, 0x60(SP)				
  task_dao.go:408	0x99982a		488b5c2438		MOVQ 0x38(SP), BX				
  task_dao.go:408	0x99982f		488d0d9a0d7d00		LEAQ go:string.*+8392(SB), CX			
  task_dao.go:408	0x999836		bf05000000		MOVL $__subsystem__+2(SB), DI			
  task_dao.go:408	0x99983b		488d057e3c6e00		LEAQ runtime.types+623808(SB), AX		
  task_dao.go:408	0x999842		e8d947adff		CALL runtime.mapassign_faststr(SB)		
  task_dao.go:408	0x999847		488d0dd2906a00		LEAQ runtime.types+383264(SB), CX		
  task_dao.go:408	0x99984e		488908			MOVQ CX, 0(AX)					
  task_dao.go:408	0x999851		833df842bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:408	0x999858		7508			JNE 0x999862					
  task_dao.go:408	0x99985a		488b542460		MOVQ 0x60(SP), DX				
  task_dao.go:408	0x99985f		90			NOPL						
  task_dao.go:408	0x999860		eb15			JMP 0x999877					
  task_dao.go:408	0x999862		e8d9ebadff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:408	0x999867		488b542460		MOVQ 0x60(SP), DX				
  task_dao.go:408	0x99986c		498913			MOVQ DX, 0(R11)					
  task_dao.go:408	0x99986f		488b5808		MOVQ 0x8(AX), BX				
  task_dao.go:408	0x999873		49895b08		MOVQ BX, 0x8(R11)				
  task_dao.go:408	0x999877		48895008		MOVQ DX, 0x8(AX)				
  task_dao.go:410	0x99987b		488d051e227a00		LEAQ runtime.types+1403552(SB), AX		
  task_dao.go:410	0x999882		e8197fa7ff		CALL runtime.newobject(SB)			
  task_dao.go:410	0x999887		4889442458		MOVQ AX, 0x58(SP)				
  task_dao.go:410	0x99988c		488b0dad87b702		MOVQ runtime.bss(SB), CX			
  chainable_api.go:19	0x999893		4889c8			MOVQ CX, AX					
  chainable_api.go:19	0x999896		e8e5eef8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)		
  chainable_api.go:19	0x99989b		4889442440		MOVQ AX, 0x40(SP)				
  chainable_api.go:20	0x9998a0		488b4820		MOVQ 0x20(AX), CX				
  chainable_api.go:20	0x9998a4		488d1555947000		LEAQ runtime.types+777472(SB), DX		
  chainable_api.go:20	0x9998ab		48895120		MOVQ DX, 0x20(CX)				
  chainable_api.go:20	0x9998af		833d9a42bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  chainable_api.go:20	0x9998b6		7508			JNE 0x9998c0					
  chainable_api.go:20	0x9998b8		488b542458		MOVQ 0x58(SP), DX				
  chainable_api.go:20	0x9998bd		eb16			JMP 0x9998d5					
  chainable_api.go:20	0x9998bf		90			NOPL						
  chainable_api.go:20	0x9998c0		e87bebadff		CALL runtime.gcWriteBarrier2(SB)		
  chainable_api.go:20	0x9998c5		488b542458		MOVQ 0x58(SP), DX				
  chainable_api.go:20	0x9998ca		498913			MOVQ DX, 0(R11)					
  chainable_api.go:20	0x9998cd		488b5928		MOVQ 0x28(CX), BX				
  chainable_api.go:20	0x9998d1		49895b08		MOVQ BX, 0x8(R11)				
  chainable_api.go:20	0x9998d5		48895128		MOVQ DX, 0x28(CX)				
  task_dao.go:410	0x9998d9		488d05c0456b00		LEAQ runtime.types+429728(SB), AX		
  task_dao.go:410	0x9998e0		e8bb7ea7ff		CALL runtime.newobject(SB)			
  task_dao.go:410	0x9998e5		4889442450		MOVQ AX, 0x50(SP)				
  task_dao.go:410	0x9998ea		488b842498000000	MOVQ 0x98(SP), AX				
  task_dao.go:410	0x9998f2		e8a907adff		CALL runtime.convT64(SB)			
  task_dao.go:410	0x9998f7		488d0d62926a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:410	0x9998fe		488b7c2450		MOVQ 0x50(SP), DI				
  task_dao.go:410	0x999903		48890f			MOVQ CX, 0(DI)					
  task_dao.go:410	0x999906		833d4342bc0200		CMPL runtime.writeBarrier(SB), $0x0		
  task_dao.go:410	0x99990d		7410			JE 0x99991f					
  task_dao.go:410	0x99990f		e82cebadff		CALL runtime.gcWriteBarrier2(SB)		
  task_dao.go:410	0x999914		498903			MOVQ AX, 0(R11)					
  task_dao.go:410	0x999917		488b5708		MOVQ 0x8(DI), DX				
  task_dao.go:410	0x99991b		49895308		MOVQ DX, 0x8(R11)				
  task_dao.go:410	0x99991f		48894708		MOVQ AX, 0x8(DI)				
  task_dao.go:410	0x999923		488b442440		MOVQ 0x40(SP), AX				
  task_dao.go:410	0x999928		488d1df18f6a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:410	0x99992f		488d0d2ae44c02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX	
  task_dao.go:410	0x999936		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_dao.go:410	0x99993b		4989f0			MOVQ SI, R8					
  task_dao.go:410	0x99993e		6690			NOPW						
  task_dao.go:410	0x999940		e85b48f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_dao.go:410	0x999945		488d1d743b6e00		LEAQ runtime.types+623808(SB), BX		
  task_dao.go:410	0x99994c		488b4c2438		MOVQ 0x38(SP), CX				
  task_dao.go:410	0x999951		e8aa94f8ff		CALL gorm.io/gorm.(*DB).Updates(SB)		
  task_dao.go:411	0x999956		4883780800		CMPQ 0x8(AX), $0x0				
  task_dao.go:411	0x99995b		0f1f440000		NOPL 0(AX)(AX*1)				
  task_dao.go:411	0x999960		0f848c000000		JE 0x9999f2					
  task_dao.go:410	0x999966		4889442448		MOVQ AX, 0x48(SP)				
  task_dao.go:412	0x99996b		440f117c2468		MOVUPS X15, 0x68(SP)				
  task_dao.go:412	0x999971		440f117c2478		MOVUPS X15, 0x78(SP)				
  task_dao.go:412	0x999977		488b842498000000	MOVQ 0x98(SP), AX				
  task_dao.go:412	0x99997f		90			NOPL						
  task_dao.go:412	0x999980		e81b07adff		CALL runtime.convT64(SB)			
  task_dao.go:412	0x999985		488d0dd4916a00		LEAQ runtime.types+383840(SB), CX		
  task_dao.go:412	0x99998c		48894c2468		MOVQ CX, 0x68(SP)				
  task_dao.go:412	0x999991		4889442470		MOVQ AX, 0x70(SP)				
  task_dao.go:412	0x999996		488b4c2448		MOVQ 0x48(SP), CX				
  task_dao.go:412	0x99999b		488b5108		MOVQ 0x8(CX), DX				
  task_dao.go:412	0x99999f		90			NOPL						
  task_dao.go:412	0x9999a0		4885d2			TESTQ DX, DX					
  task_dao.go:412	0x9999a3		7404			JE 0x9999a9					
  task_dao.go:412	0x9999a5		488b5208		MOVQ 0x8(DX), DX				
  task_dao.go:412	0x9999a9		4c8b5110		MOVQ 0x10(CX), R10				
  task_dao.go:412	0x9999ad		4889542478		MOVQ DX, 0x78(SP)				
  task_dao.go:412	0x9999b2		4c89942480000000	MOVQ R10, 0x80(SP)				
  print.go:233		0x9999ba		488b1dbf86b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x9999c1		488d0518214d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x9999c8		488d0deb3a8000		LEAQ go:string.*+217010(SB), CX			
  print.go:233		0x9999cf		bf32000000		MOVL $__major_os_version__+44(SB), DI		
  print.go:233		0x9999d4		488d742468		LEAQ 0x68(SP), SI				
  print.go:233		0x9999d9		41b802000000		MOVL $__minor_os_version__+1(SB), R8		
  print.go:233		0x9999df		4d89c1			MOVQ R8, R9					
  print.go:233		0x9999e2		e83958b8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:413	0x9999e7		31c0			XORL AX, AX					
  task_dao.go:413	0x9999e9		4881c488000000		ADDQ $.file+59(SB), SP				
  task_dao.go:413	0x9999f0		5d			POPQ BP						
  task_dao.go:413	0x9999f1		c3			RET						
  task_dao.go:415	0x9999f2		4883781800		CMPQ 0x18(AX), $0x0				
  task_dao.go:415	0x9999f7		0f9fc0			SETG AL						
  task_dao.go:415	0x9999fa		4881c488000000		ADDQ $.file+59(SB), SP				
  task_dao.go:415	0x999a01		5d			POPQ BP						
  task_dao.go:415	0x999a02		c3			RET						
  task_dao.go:405	0x999a03		4889442408		MOVQ AX, 0x8(SP)				
  task_dao.go:405	0x999a08		48895c2410		MOVQ BX, 0x10(SP)				
  task_dao.go:405	0x999a0d		48894c2418		MOVQ CX, 0x18(SP)				
  task_dao.go:405	0x999a12		48897c2420		MOVQ DI, 0x20(SP)				
  task_dao.go:405	0x999a17		e8c4caadff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_dao.go:405	0x999a1c		488b442408		MOVQ 0x8(SP), AX				
  task_dao.go:405	0x999a21		488b5c2410		MOVQ 0x10(SP), BX				
  task_dao.go:405	0x999a26		488b4c2418		MOVQ 0x18(SP), CX				
  task_dao.go:405	0x999a2b		488b7c2420		MOVQ 0x20(SP), DI				
  task_dao.go:405	0x999a30		e92bfdffff		JMP CAS-Backend/biz/dao.UpdateTaskDispatch(SB)	
  :-1			0x999a35		cc			INT $__subsystem__(SB)				
  :-1			0x999a36		cc			INT $__subsystem__(SB)				
  :-1			0x999a37		cc			INT $__subsystem__(SB)				
  :-1			0x999a38		cc			INT $__subsystem__(SB)				
  :-1			0x999a39		cc			INT $__subsystem__(SB)				
  :-1			0x999a3a		cc			INT $__subsystem__(SB)				
  :-1			0x999a3b		cc			INT $__subsystem__(SB)				
  :-1			0x999a3c		cc			INT $__subsystem__(SB)				
  :-1			0x999a3d		cc			INT $__subsystem__(SB)				
  :-1			0x999a3e		cc			INT $__subsystem__(SB)				
  :-1			0x999a3f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/dao.UpdateTaskCompletion(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:419	0x999a40		4c8d6424b8		LEAQ -0x48(SP), R12					
  task_dao.go:419	0x999a45		4d3b6610		CMPQ R12, 0x10(R14)					
  task_dao.go:419	0x999a49		0f8698030000		JBE 0x999de7						
  task_dao.go:419	0x999a4f		55			PUSHQ BP						
  task_dao.go:419	0x999a50		4889e5			MOVQ SP, BP						
  task_dao.go:419	0x999a53		4881ecc0000000		SUBQ $.file+115(SB), SP					
  task_dao.go:424	0x999a5a		48898424d0000000	MOVQ AX, 0xd0(SP)					
  task_dao.go:424	0x999a62		48899c24d8000000	MOVQ BX, 0xd8(SP)					
  task_dao.go:419	0x999a6a		48898c24e0000000	MOVQ CX, 0xe0(SP)					
  task_dao.go:419	0x999a72		4889bc24e8000000	MOVQ DI, 0xe8(SP)					
  task_dao.go:419	0x999a7a		4889b424f0000000	MOVQ SI, 0xf0(SP)					
  task_dao.go:420	0x999a82		488d0517207a00		LEAQ runtime.types+1403552(SB), AX			
  task_dao.go:420	0x999a89		e8127da7ff		CALL runtime.newobject(SB)				
  task_dao.go:420	0x999a8e		4889442468		MOVQ AX, 0x68(SP)					
  task_dao.go:420	0x999a93		488b0da685b702		MOVQ runtime.bss(SB), CX				
  chainable_api.go:19	0x999a9a		4889c8			MOVQ CX, AX						
  chainable_api.go:19	0x999a9d		0f1f00			NOPL 0(AX)						
  chainable_api.go:19	0x999aa0		e8dbecf8ff		CALL gorm.io/gorm.(*DB).getInstance(SB)			
  chainable_api.go:19	0x999aa5		4889442438		MOVQ AX, 0x38(SP)					
  chainable_api.go:20	0x999aaa		488b4820		MOVQ 0x20(AX), CX					
  chainable_api.go:20	0x999aae		488d154b927000		LEAQ runtime.types+777472(SB), DX			
  chainable_api.go:20	0x999ab5		48895120		MOVQ DX, 0x20(CX)					
  chainable_api.go:20	0x999ab9		833d9040bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  chainable_api.go:20	0x999ac0		7507			JNE 0x999ac9						
  chainable_api.go:20	0x999ac2		488b542468		MOVQ 0x68(SP), DX					
  chainable_api.go:20	0x999ac7		eb15			JMP 0x999ade						
  chainable_api.go:20	0x999ac9		e872e9adff		CALL runtime.gcWriteBarrier2(SB)			
  chainable_api.go:20	0x999ace		488b542468		MOVQ 0x68(SP), DX					
  chainable_api.go:20	0x999ad3		498913			MOVQ DX, 0(R11)						
  chainable_api.go:20	0x999ad6		488b5928		MOVQ 0x28(CX), BX					
  chainable_api.go:20	0x999ada		49895b08		MOVQ BX, 0x8(R11)					
  chainable_api.go:20	0x999ade		48895128		MOVQ DX, 0x28(CX)					
  task_dao.go:420	0x999ae2		488d05b7436b00		LEAQ runtime.types+429728(SB), AX			
  task_dao.go:420	0x999ae9		e8b27ca7ff		CALL runtime.newobject(SB)				
  task_dao.go:420	0x999aee		4889442460		MOVQ AX, 0x60(SP)					
  task_dao.go:420	0x999af3		488b8424d0000000	MOVQ 0xd0(SP), AX					
  task_dao.go:420	0x999afb		0f1f440000		NOPL 0(AX)(AX*1)					
  task_dao.go:420	0x999b00		e89b05adff		CALL runtime.convT64(SB)				
  task_dao.go:420	0x999b05		488d0d54906a00		LEAQ runtime.types+383840(SB), CX			
  task_dao.go:420	0x999b0c		488b7c2460		MOVQ 0x60(SP), DI					
  task_dao.go:420	0x999b11		48890f			MOVQ CX, 0(DI)						
  task_dao.go:420	0x999b14		833d3540bc0200		CMPL runtime.writeBarrier(SB), $0x0			
  task_dao.go:420	0x999b1b		7413			JE 0x999b30						
  task_dao.go:420	0x999b1d		0f1f00			NOPL 0(AX)						
  task_dao.go:420	0x999b20		e81be9adff		CALL runtime.gcWriteBarrier2(SB)			
  task_dao.go:420	0x999b25		498903			MOVQ AX, 0(R11)						
  task_dao.go:420	0x999b28		488b5708		MOVQ 0x8(DI), DX					
  task_dao.go:420	0x999b2c		49895308		MOVQ DX, 0x8(R11)					
  task_dao.go:420	0x999b30		48894708		MOVQ AX, 0x8(DI)					
  task_dao.go:420	0x999b34		488b442438		MOVQ 0x38(SP), AX					
  task_dao.go:420	0x999b39		488d1de08d6a00		LEAQ runtime.types+383264(SB), BX			
  task_dao.go:420	0x999b40		488d0d19e24c02		LEAQ CAS-Backend/biz/dao..stmp_3(SB), CX		
  task_dao.go:420	0x999b47		be01000000		MOVL $__minor_os_version__(SB), SI			
  task_dao.go:420	0x999b4c		4989f0			MOVQ SI, R8						
  task_dao.go:420	0x999b4f		e84c46f8ff		CALL gorm.io/gorm.(*DB).Where(SB)			
  task_dao.go:420	0x999b54		4889442458		MOVQ AX, 0x58(SP)					
  task_dao.go:420	0x999b59		e88214adff		CALL runtime.makemap_small(SB)				
  task_dao.go:420	0x999b5e		4889442450		MOVQ AX, 0x50(SP)					
  task_dao.go:421	0x999b63		488b8424d8000000	MOVQ 0xd8(SP), AX					
  task_dao.go:421	0x999b6b		e83005adff		CALL runtime.convT64(SB)				
  task_dao.go:421	0x999b70		4889442448		MOVQ AX, 0x48(SP)					
  task_dao.go:420	0x999b75		488b5c2450		MOVQ 0x50(SP), BX					
  task_dao.go:420	0x999b7a		488d0de6567d00		LEAQ go:string.*+27999(SB), CX				
  task_dao.go:420	0x999b81		bf06000000		MOVL $__major_os_version__(SB), DI			
  task_dao.go:420	0x999b86		488d0533396e00		LEAQ runtime.types+623808(SB), AX			
  task_dao.go:420	0x999b8d		e88e44adff		CALL runtime.mapassign_faststr(SB)			
  task_dao.go:420	0x999b92		488d15c78f6a00		LEAQ runtime.types+383840(SB), DX			
  task_dao.go:420	0x999b99		488910			MOVQ DX, 0(AX)						
  task_dao.go:420	0x999b9c		833dad3fbc0200		CMPL runtime.writeBarrier(SB), $0x0			
  task_dao.go:420	0x999ba3		7507			JNE 0x999bac						
  task_dao.go:420	0x999ba5		488b4c2448		MOVQ 0x48(SP), CX					
  task_dao.go:420	0x999baa		eb15			JMP 0x999bc1						
  task_dao.go:420	0x999bac		e88fe8adff		CALL runtime.gcWriteBarrier2(SB)			
  task_dao.go:420	0x999bb1		488b4c2448		MOVQ 0x48(SP), CX					
  task_dao.go:420	0x999bb6		49890b			MOVQ CX, 0(R11)						
  task_dao.go:420	0x999bb9		488b7008		MOVQ 0x8(AX), SI					
  task_dao.go:420	0x999bbd		49897308		MOVQ SI, 0x8(R11)					
  task_dao.go:420	0x999bc1		48894808		MOVQ CX, 0x8(AX)					
  task_dao.go:422	0x999bc5		488d0514677b00		LEAQ runtime.types+1487584(SB), AX			
  task_dao.go:422	0x999bcc		488d9c24e0000000	LEAQ 0xe0(SP), BX					
  task_dao.go:422	0x999bd4		e8c754a7ff		CALL runtime.convT(SB)					
  task_dao.go:422	0x999bd9		4889442448		MOVQ AX, 0x48(SP)					
  task_dao.go:420	0x999bde		488b5c2450		MOVQ 0x50(SP), BX					
  task_dao.go:420	0x999be3		488d0de58e7d00		LEAQ go:string.*+42439(SB), CX				
  task_dao.go:420	0x999bea		bf07000000		MOVL $__major_os_version__+1(SB), DI			
  task_dao.go:420	0x999bef		488d05ca386e00		LEAQ runtime.types+623808(SB), AX			
  task_dao.go:420	0x999bf6		e82544adff		CALL runtime.mapassign_faststr(SB)			
  task_dao.go:420	0x999bfb		488d0dde667b00		LEAQ runtime.types+1487584(SB), CX			
  task_dao.go:420	0x999c02		488908			MOVQ CX, 0(AX)						
  task_dao.go:420	0x999c05		833d443fbc0200		CMPL runtime.writeBarrier(SB), $0x0			
  task_dao.go:420	0x999c0c		7507			JNE 0x999c15						
  task_dao.go:420	0x999c0e		488b542448		MOVQ 0x48(SP), DX					
  task_dao.go:420	0x999c13		eb15			JMP 0x999c2a						
  task_dao.go:420	0x999c15		e826e8adff		CALL runtime.gcWriteBarrier2(SB)			
  task_dao.go:420	0x999c1a		488b542448		MOVQ 0x48(SP), DX					
  task_dao.go:420	0x999c1f		498913			MOVQ DX, 0(R11)						
  task_dao.go:420	0x999c22		488b7008		MOVQ 0x8(AX), SI					
  task_dao.go:420	0x999c26		49897308		MOVQ SI, 0x8(R11)					
  task_dao.go:420	0x999c2a		48895008		MOVQ DX, 0x8(AX)					
  task_dao.go:420	0x999c2e		488b442458		MOVQ 0x58(SP), AX					
  task_dao.go:420	0x999c33		488d1d86386e00		LEAQ runtime.types+623808(SB), BX			
  task_dao.go:420	0x999c3a		488b4c2450		MOVQ 0x50(SP), CX					
  task_dao.go:420	0x999c3f		90			NOPL							
  task_dao.go:420	0x999c40		e8bb91f8ff		CALL gorm.io/gorm.(*DB).Updates(SB)			
  task_dao.go:424	0x999c45		4883780800		CMPQ 0x8(AX), $0x0					
  task_dao.go:424	0x999c4a		0f85fb000000		JNE 0x999d4b						
  task_dao.go:428	0x999c50		4883781800		CMPQ 0x18(AX), $0x0					
  task_dao.go:428	0x999c55		7568			JNE 0x999cbf						
  task_dao.go:429	0x999c57		440f11bc2490000000	MOVUPS X15, 0x90(SP)					
  task_dao.go:429	0x999c60		488b8424d0000000	MOVQ 0xd0(SP), AX					
  task_dao.go:429	0x999c68		e83304adff		CALL runtime.convT64(SB)				
  task_dao.go:429	0x999c6d		488d0dec8e6a00		LEAQ runtime.types+383840(SB), CX			
  task_dao.go:429	0x999c74		48898c2490000000	MOVQ CX, 0x90(SP)					
  task_dao.go:429	0x999c7c		4889842498000000	MOVQ AX, 0x98(SP)					
  print.go:233		0x999c84		488b1df583b702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x999c8b		488d054e1e4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x999c92		488d0da1757e00		LEAQ go:string.*+101682(SB), CX				
  print.go:233		0x999c99		bf15000000		MOVL $__major_os_version__+15(SB), DI			
  print.go:233		0x999c9e		488db42490000000	LEAQ 0x90(SP), SI					
  print.go:233		0x999ca6		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0x999cac		4d89c1			MOVQ R8, R9						
  print.go:233		0x999caf		e86c55b8ff		CALL fmt.Fprintf(SB)					
  task_dao.go:430	0x999cb4		31c0			XORL AX, AX						
  task_dao.go:430	0x999cb6		4881c4c0000000		ADDQ $.file+115(SB), SP					
  task_dao.go:430	0x999cbd		5d			POPQ BP							
  task_dao.go:430	0x999cbe		c3			RET							
  task_dao.go:432	0x999cbf		440f117c2470		MOVUPS X15, 0x70(SP)					
  task_dao.go:432	0x999cc5		440f11bc2480000000	MOVUPS X15, 0x80(SP)					
  task_dao.go:432	0x999cce		488b8424d0000000	MOVQ 0xd0(SP), AX					
  task_dao.go:432	0x999cd6		e8c503adff		CALL runtime.convT64(SB)				
  task_dao.go:432	0x999cdb		488d0d7e8e6a00		LEAQ runtime.types+383840(SB), CX			
  task_dao.go:432	0x999ce2		48894c2470		MOVQ CX, 0x70(SP)					
  task_dao.go:432	0x999ce7		4889442478		MOVQ AX, 0x78(SP)					
  task_dao.go:432	0x999cec		488b8424d8000000	MOVQ 0xd8(SP), AX					
  task_dao.go:432	0x999cf4		e8a703adff		CALL runtime.convT64(SB)				
  task_dao.go:432	0x999cf9		488d0d608e6a00		LEAQ runtime.types+383840(SB), CX			
  task_dao.go:432	0x999d00		48898c2480000000	MOVQ CX, 0x80(SP)					
  task_dao.go:432	0x999d08		4889842488000000	MOVQ AX, 0x88(SP)					
  print.go:233		0x999d10		488b1d6983b702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x999d17		488d05c21d4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x999d1e		488d0df9378000		LEAQ go:string.*+217110(SB), CX				
  print.go:233		0x999d25		bf32000000		MOVL $__major_os_version__+44(SB), DI			
  print.go:233		0x999d2a		488d742470		LEAQ 0x70(SP), SI					
  print.go:233		0x999d2f		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0x999d35		4d89c1			MOVQ R8, R9						
  print.go:233		0x999d38		e8e354b8ff		CALL fmt.Fprintf(SB)					
  task_dao.go:433	0x999d3d		b801000000		MOVL $__minor_os_version__(SB), AX			
  task_dao.go:433	0x999d42		4881c4c0000000		ADDQ $.file+115(SB), SP					
  task_dao.go:433	0x999d49		5d			POPQ BP							
  task_dao.go:433	0x999d4a		c3			RET							
  task_dao.go:420	0x999d4b		4889442440		MOVQ AX, 0x40(SP)					
  task_dao.go:425	0x999d50		440f11bc24a0000000	MOVUPS X15, 0xa0(SP)					
  task_dao.go:425	0x999d59		440f11bc24b0000000	MOVUPS X15, 0xb0(SP)					
  task_dao.go:425	0x999d62		488b8424d0000000	MOVQ 0xd0(SP), AX					
  task_dao.go:425	0x999d6a		e83103adff		CALL runtime.convT64(SB)				
  task_dao.go:425	0x999d6f		488d0dea8d6a00		LEAQ runtime.types+383840(SB), CX			
  task_dao.go:425	0x999d76		48898c24a0000000	MOVQ CX, 0xa0(SP)					
  task_dao.go:425	0x999d7e		48898424a8000000	MOVQ AX, 0xa8(SP)					
  task_dao.go:425	0x999d86		488b4c2440		MOVQ 0x40(SP), CX					
  task_dao.go:425	0x999d8b		488b5108		MOVQ 0x8(CX), DX					
  task_dao.go:425	0x999d8f		4885d2			TESTQ DX, DX						
  task_dao.go:425	0x999d92		7404			JE 0x999d98						
  task_dao.go:425	0x999d94		488b5208		MOVQ 0x8(DX), DX					
  task_dao.go:425	0x999d98		4c8b5110		MOVQ 0x10(CX), R10					
  task_dao.go:425	0x999d9c		48899424b0000000	MOVQ DX, 0xb0(SP)					
  task_dao.go:425	0x999da4		4c899424b8000000	MOVQ R10, 0xb8(SP)					
  print.go:233		0x999dac		488b1dcd82b702		MOVQ os.Stdout(SB), BX					
  print.go:233		0x999db3		488d05261d4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0x999dba		488d0d2b378000		LEAQ go:string.*+217060(SB), CX				
  print.go:233		0x999dc1		bf32000000		MOVL $__major_os_version__+44(SB), DI			
  print.go:233		0x999dc6		488db424a0000000	LEAQ 0xa0(SP), SI					
  print.go:233		0x999dce		41b802000000		MOVL $__minor_os_version__+1(SB), R8			
  print.go:233		0x999dd4		4d89c1			MOVQ R8, R9						
  print.go:233		0x999dd7		e84454b8ff		CALL fmt.Fprintf(SB)					
  task_dao.go:426	0x999ddc		31c0			XORL AX, AX						
  task_dao.go:426	0x999dde		4881c4c0000000		ADDQ $.file+115(SB), SP					
  task_dao.go:426	0x999de5		5d			POPQ BP							
  task_dao.go:426	0x999de6		c3			RET							
  task_dao.go:419	0x999de7		4889442408		MOVQ AX, 0x8(SP)					
  task_dao.go:419	0x999dec		48895c2410		MOVQ BX, 0x10(SP)					
  task_dao.go:419	0x999df1		48894c2418		MOVQ CX, 0x18(SP)					
  task_dao.go:419	0x999df6		48897c2420		MOVQ DI, 0x20(SP)					
  task_dao.go:419	0x999dfb		4889742428		MOVQ SI, 0x28(SP)					
  task_dao.go:419	0x999e00		e8dbc6adff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_dao.go:419	0x999e05		488b442408		MOVQ 0x8(SP), AX					
  task_dao.go:419	0x999e0a		488b5c2410		MOVQ 0x10(SP), BX					
  task_dao.go:419	0x999e0f		488b4c2418		MOVQ 0x18(SP), CX					
  task_dao.go:419	0x999e14		488b7c2420		MOVQ 0x20(SP), DI					
  task_dao.go:419	0x999e19		488b742428		MOVQ 0x28(SP), SI					
  task_dao.go:419	0x999e1e		6690			NOPW							
  task_dao.go:419	0x999e20		e91bfcffff		JMP CAS-Backend/biz/dao.UpdateTaskCompletion(SB)	
  :-1			0x999e25		cc			INT $__subsystem__(SB)					
  :-1			0x999e26		cc			INT $__subsystem__(SB)					
  :-1			0x999e27		cc			INT $__subsystem__(SB)					
  :-1			0x999e28		cc			INT $__subsystem__(SB)					
  :-1			0x999e29		cc			INT $__subsystem__(SB)					
  :-1			0x999e2a		cc			INT $__subsystem__(SB)					
  :-1			0x999e2b		cc			INT $__subsystem__(SB)					
  :-1			0x999e2c		cc			INT $__subsystem__(SB)					
  :-1			0x999e2d		cc			INT $__subsystem__(SB)					
  :-1			0x999e2e		cc			INT $__subsystem__(SB)					
  :-1			0x999e2f		cc			INT $__subsystem__(SB)					
  :-1			0x999e30		cc			INT $__subsystem__(SB)					
  :-1			0x999e31		cc			INT $__subsystem__(SB)					
  :-1			0x999e32		cc			INT $__subsystem__(SB)					
  :-1			0x999e33		cc			INT $__subsystem__(SB)					
  :-1			0x999e34		cc			INT $__subsystem__(SB)					
  :-1			0x999e35		cc			INT $__subsystem__(SB)					
  :-1			0x999e36		cc			INT $__subsystem__(SB)					
  :-1			0x999e37		cc			INT $__subsystem__(SB)					
  :-1			0x999e38		cc			INT $__subsystem__(SB)					
  :-1			0x999e39		cc			INT $__subsystem__(SB)					
  :-1			0x999e3a		cc			INT $__subsystem__(SB)					
  :-1			0x999e3b		cc			INT $__subsystem__(SB)					
  :-1			0x999e3c		cc			INT $__subsystem__(SB)					
  :-1			0x999e3d		cc			INT $__subsystem__(SB)					
  :-1			0x999e3e		cc			INT $__subsystem__(SB)					
  :-1			0x999e3f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/dao.GetAllTasks(SB) D:/CodeEnv_code/cas-backend/biz/dao/task_dao.go
  task_dao.go:460	0x999e40		493b6610		CMPQ SP, 0x10(R14)				
  task_dao.go:460	0x999e44		0f8611010000		JBE 0x999f5b					
  task_dao.go:460	0x999e4a		55			PUSHQ BP					
  task_dao.go:460	0x999e4b		4889e5			MOVQ SP, BP					
  task_dao.go:460	0x999e4e		4883ec60		SUBQ $.file+19(SB), SP				
  task_dao.go:461	0x999e52		488d05c7a96900		LEAQ runtime.types+325664(SB), AX		
  task_dao.go:461	0x999e59		e84279a7ff		CALL runtime.newobject(SB)			
  task_dao.go:461	0x999e5e		4889442458		MOVQ AX, 0x58(SP)				
  task_dao.go:461	0x999e63		48c70000000000		MOVQ $0x0, 0(AX)				
  task_dao.go:464	0x999e6a		488d052f406b00		LEAQ runtime.types+429728(SB), AX		
  task_dao.go:464	0x999e71		e82a79a7ff		CALL runtime.newobject(SB)			
  task_dao.go:464	0x999e76		488d0da38e6a00		LEAQ runtime.types+384288(SB), CX		
  task_dao.go:464	0x999e7d		488908			MOVQ CX, 0(AX)					
  task_dao.go:464	0x999e80		488d0d99085e00		LEAQ runtime.staticuint64s(SB), CX		
  task_dao.go:464	0x999e87		48894808		MOVQ CX, 0x8(AX)				
  task_dao.go:464	0x999e8b		488b0dae81b702		MOVQ runtime.bss(SB), CX			
  task_dao.go:464	0x999e92		488d1d878a6a00		LEAQ runtime.types+383264(SB), BX		
  task_dao.go:464	0x999e99		4889c7			MOVQ AX, DI					
  task_dao.go:464	0x999e9c		be01000000		MOVL $__minor_os_version__(SB), SI		
  task_dao.go:464	0x999ea1		4989f0			MOVQ SI, R8					
  task_dao.go:464	0x999ea4		4889c8			MOVQ CX, AX					
  task_dao.go:464	0x999ea7		488d0dc2de4c02		LEAQ CAS-Backend/biz/dao..stmp_6(SB), CX	
  task_dao.go:464	0x999eae		e8ed42f8ff		CALL gorm.io/gorm.(*DB).Where(SB)		
  task_dao.go:464	0x999eb3		488d1da6a96900		LEAQ runtime.types+325728(SB), BX		
  task_dao.go:464	0x999eba		488b4c2458		MOVQ 0x58(SP), CX				
  task_dao.go:464	0x999ebf		31ff			XORL DI, DI					
  task_dao.go:464	0x999ec1		31f6			XORL SI, SI					
  task_dao.go:464	0x999ec3		4989f0			MOVQ SI, R8					
  task_dao.go:464	0x999ec6		e8f56df8ff		CALL gorm.io/gorm.(*DB).Find(SB)		
  task_dao.go:464	0x999ecb		488b4808		MOVQ 0x8(AX), CX				
  task_dao.go:464	0x999ecf		488b5010		MOVQ 0x10(AX), DX				
  task_dao.go:464	0x999ed3		4885c9			TESTQ CX, CX					
  task_dao.go:464	0x999ed6		7469			JE 0x999f41					
  task_dao.go:464	0x999ed8		48894c2438		MOVQ CX, 0x38(SP)				
  task_dao.go:465	0x999edd		440f117c2448		MOVUPS X15, 0x48(SP)				
  task_dao.go:465	0x999ee3		7406			JE 0x999eeb					
  task_dao.go:465	0x999ee5		4c8b5108		MOVQ 0x8(CX), R10				
  task_dao.go:465	0x999ee9		eb03			JMP 0x999eee					
  task_dao.go:465	0x999eeb		4989ca			MOVQ CX, R10					
  task_dao.go:464	0x999eee		4889542440		MOVQ DX, 0x40(SP)				
  task_dao.go:465	0x999ef3		4c89542448		MOVQ R10, 0x48(SP)				
  task_dao.go:465	0x999ef8		4889542450		MOVQ DX, 0x50(SP)				
  print.go:233		0x999efd		488b1d7c81b702		MOVQ os.Stdout(SB), BX				
  print.go:233		0x999f04		488d05d51b4d02		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0x999f0b		488d0d6e047f00		LEAQ go:string.*+138872(SB), CX			
  print.go:233		0x999f12		bf1d000000		MOVL $__major_os_version__+23(SB), DI		
  print.go:233		0x999f17		488d742448		LEAQ 0x48(SP), SI				
  print.go:233		0x999f1c		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0x999f22		4d89c1			MOVQ R8, R9					
  print.go:233		0x999f25		e8f652b8ff		CALL fmt.Fprintf(SB)				
  task_dao.go:466	0x999f2a		31c0			XORL AX, AX					
  task_dao.go:466	0x999f2c		31db			XORL BX, BX					
  task_dao.go:466	0x999f2e		4889d9			MOVQ BX, CX					
  task_dao.go:466	0x999f31		488b7c2438		MOVQ 0x38(SP), DI				
  task_dao.go:466	0x999f36		488b742440		MOVQ 0x40(SP), SI				
  task_dao.go:466	0x999f3b		4883c460		ADDQ $.file+19(SB), SP				
  task_dao.go:466	0x999f3f		5d			POPQ BP						
  task_dao.go:466	0x999f40		c3			RET						
  task_dao.go:469	0x999f41		488b542458		MOVQ 0x58(SP), DX				
  task_dao.go:469	0x999f46		488b02			MOVQ 0(DX), AX					
  task_dao.go:469	0x999f49		488b5a08		MOVQ 0x8(DX), BX				
  task_dao.go:469	0x999f4d		488b4a10		MOVQ 0x10(DX), CX				
  task_dao.go:469	0x999f51		31ff			XORL DI, DI					
  task_dao.go:469	0x999f53		31f6			XORL SI, SI					
  task_dao.go:469	0x999f55		4883c460		ADDQ $.file+19(SB), SP				
  task_dao.go:469	0x999f59		5d			POPQ BP						
  task_dao.go:469	0x999f5a		c3			RET						
  task_dao.go:460	0x999f5b		0f1f440000		NOPL 0(AX)(AX*1)				
  task_dao.go:460	0x999f60		e87bc5adff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_dao.go:460	0x999f65		e9d6feffff		JMP CAS-Backend/biz/dao.GetAllTasks(SB)		
  :-1			0x999f6a		cc			INT $__subsystem__(SB)				
  :-1			0x999f6b		cc			INT $__subsystem__(SB)				
  :-1			0x999f6c		cc			INT $__subsystem__(SB)				
  :-1			0x999f6d		cc			INT $__subsystem__(SB)				
  :-1			0x999f6e		cc			INT $__subsystem__(SB)				
  :-1			0x999f6f		cc			INT $__subsystem__(SB)				
  :-1			0x999f70		cc			INT $__subsystem__(SB)				
  :-1			0x999f71		cc			INT $__subsystem__(SB)				
  :-1			0x999f72		cc			INT $__subsystem__(SB)				
  :-1			0x999f73		cc			INT $__subsystem__(SB)				
  :-1			0x999f74		cc			INT $__subsystem__(SB)				
  :-1			0x999f75		cc			INT $__subsystem__(SB)				
  :-1			0x999f76		cc			INT $__subsystem__(SB)				
  :-1			0x999f77		cc			INT $__subsystem__(SB)				
  :-1			0x999f78		cc			INT $__subsystem__(SB)				
  :-1			0x999f79		cc			INT $__subsystem__(SB)				
  :-1			0x999f7a		cc			INT $__subsystem__(SB)				
  :-1			0x999f7b		cc			INT $__subsystem__(SB)				
  :-1			0x999f7c		cc			INT $__subsystem__(SB)				
  :-1			0x999f7d		cc			INT $__subsystem__(SB)				
  :-1			0x999f7e		cc			INT $__subsystem__(SB)				
  :-1			0x999f7f		cc			INT $__subsystem__(SB)				

