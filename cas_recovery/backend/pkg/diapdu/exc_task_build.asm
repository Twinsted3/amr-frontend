TEXT CAS-Backend/pkg/diapdu.ParseForkliftTaskJSON(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/exc_task_build.go
  exc_task_build.go:29	0xe27aa0		493b6610		CMPQ SP, 0x10(R14)					
  exc_task_build.go:29	0xe27aa4		0f8652010000		JBE 0xe27bfc						
  exc_task_build.go:29	0xe27aaa		55			PUSHQ BP						
  exc_task_build.go:29	0xe27aab		4889e5			MOVQ SP, BP						
  exc_task_build.go:29	0xe27aae		4883ec40		SUBQ $__major_os_version__+58(SB), SP			
  exc_task_build.go:31	0xe27ab2		4889842430010000	MOVQ AX, 0x130(SP)					
  exc_task_build.go:31	0xe27aba		48899c2438010000	MOVQ BX, 0x138(SP)					
  exc_task_build.go:29	0xe27ac2		488d7c2450		LEAQ 0x50(SP), DI					
  exc_task_build.go:29	0xe27ac7		488d7fe0		LEAQ -0x20(DI), DI					
  exc_task_build.go:29	0xe27acb		48896c24f0		MOVQ BP, -0x10(SP)					
  exc_task_build.go:29	0xe27ad0		488d6c24f0		LEAQ -0x10(SP), BP					
  exc_task_build.go:29	0xe27ad5		e8e30f65ff		CALL 0x478abd						
  exc_task_build.go:29	0xe27ada		488b6d00		MOVQ 0(BP), BP						
  exc_task_build.go:30	0xe27ade		488d059ba63100		LEAQ runtime.types+1429888(SB), AX			
  exc_task_build.go:30	0xe27ae5		e8b69c5eff		CALL runtime.newobject(SB)				
  exc_task_build.go:30	0xe27aea		4889442438		MOVQ AX, 0x38(SP)					
  exc_task_build.go:31	0xe27aef		488b8c2438010000	MOVQ 0x138(SP), CX					
  exc_task_build.go:31	0xe27af7		660f1f840000000000	NOPW 0(AX)(AX*1)					
  exc_task_build.go:31	0xe27b00		4885c9			TESTQ CX, CX						
  exc_task_build.go:31	0xe27b03		0f84b8000000		JE 0xe27bc1						
  exc_task_build.go:34	0xe27b09		31c0			XORL AX, AX						
  exc_task_build.go:34	0xe27b0b		488b9c2430010000	MOVQ 0x130(SP), BX					
  exc_task_build.go:34	0xe27b13		e828dd62ff		CALL runtime.stringtoslicebyte(SB)			
  exc_task_build.go:34	0xe27b18		488d3d41f01f00		LEAQ runtime.types+269152(SB), DI			
  exc_task_build.go:34	0xe27b1f		488b742438		MOVQ 0x38(SP), SI					
  exc_task_build.go:34	0xe27b24		e8b7f973ff		CALL encoding/json.Unmarshal(SB)			
  exc_task_build.go:34	0xe27b29		4885c0			TESTQ AX, AX						
  exc_task_build.go:34	0xe27b2c		746b			JE 0xe27b99						
  exc_task_build.go:35	0xe27b2e		440f117c2428		MOVUPS X15, 0x28(SP)					
  exc_task_build.go:35	0xe27b34		7404			JE 0xe27b3a						
  exc_task_build.go:35	0xe27b36		488b4008		MOVQ 0x8(AX), AX					
  exc_task_build.go:35	0xe27b3a		4889442428		MOVQ AX, 0x28(SP)					
  exc_task_build.go:35	0xe27b3f		48895c2430		MOVQ BX, 0x30(SP)					
  exc_task_build.go:35	0xe27b44		488d059b9f3600		LEAQ go:string.*+169438(SB), AX				
  exc_task_build.go:35	0xe27b4b		bb24000000		MOVL $__major_os_version__+30(SB), BX			
  exc_task_build.go:35	0xe27b50		488d4c2428		LEAQ 0x28(SP), CX					
  exc_task_build.go:35	0xe27b55		bf01000000		MOVL $__minor_os_version__(SB), DI			
  exc_task_build.go:35	0xe27b5a		4889fe			MOVQ DI, SI						
  exc_task_build.go:35	0xe27b5d		0f1f00			NOPL 0(AX)						
  exc_task_build.go:35	0xe27b60		e85b486fff		CALL fmt.Errorf(SB)					
  exc_task_build.go:35	0xe27b65		488d7c2450		LEAQ 0x50(SP), DI					
  exc_task_build.go:35	0xe27b6a		488b742438		MOVQ 0x38(SP), SI					
  exc_task_build.go:35	0xe27b6f		660f1f840000000000	NOPW 0(AX)(AX*1)					
  exc_task_build.go:35	0xe27b78		0f1f840000000000	NOPL 0(AX)(AX*1)					
  exc_task_build.go:35	0xe27b80		48896c24f0		MOVQ BP, -0x10(SP)					
  exc_task_build.go:35	0xe27b85		488d6c24f0		LEAQ -0x10(SP), BP					
  exc_task_build.go:35	0xe27b8a		e84d1265ff		CALL 0x478ddc						
  exc_task_build.go:35	0xe27b8f		488b6d00		MOVQ 0(BP), BP						
  exc_task_build.go:35	0xe27b93		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  exc_task_build.go:35	0xe27b97		5d			POPQ BP							
  exc_task_build.go:35	0xe27b98		c3			RET							
  exc_task_build.go:37	0xe27b99		488d7c2450		LEAQ 0x50(SP), DI					
  exc_task_build.go:37	0xe27b9e		488b742438		MOVQ 0x38(SP), SI					
  exc_task_build.go:37	0xe27ba3		48896c24f0		MOVQ BP, -0x10(SP)					
  exc_task_build.go:37	0xe27ba8		488d6c24f0		LEAQ -0x10(SP), BP					
  exc_task_build.go:37	0xe27bad		e82a1265ff		CALL 0x478ddc						
  exc_task_build.go:37	0xe27bb2		488b6d00		MOVQ 0(BP), BP						
  exc_task_build.go:37	0xe27bb6		31c0			XORL AX, AX						
  exc_task_build.go:37	0xe27bb8		31db			XORL BX, BX						
  exc_task_build.go:37	0xe27bba		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  exc_task_build.go:37	0xe27bbe		5d			POPQ BP							
  exc_task_build.go:37	0xe27bbf		90			NOPL							
  exc_task_build.go:37	0xe27bc0		c3			RET							
  exc_task_build.go:32	0xe27bc1		488d05025e3500		LEAQ go:string.*+87234(SB), AX				
  exc_task_build.go:32	0xe27bc8		bb12000000		MOVL $__major_os_version__+12(SB), BX			
  exc_task_build.go:32	0xe27bcd		31c9			XORL CX, CX						
  exc_task_build.go:32	0xe27bcf		31ff			XORL DI, DI						
  exc_task_build.go:32	0xe27bd1		4889fe			MOVQ DI, SI						
  exc_task_build.go:32	0xe27bd4		e8e7476fff		CALL fmt.Errorf(SB)					
  exc_task_build.go:32	0xe27bd9		488d7c2450		LEAQ 0x50(SP), DI					
  exc_task_build.go:32	0xe27bde		488b742438		MOVQ 0x38(SP), SI					
  exc_task_build.go:32	0xe27be3		48896c24f0		MOVQ BP, -0x10(SP)					
  exc_task_build.go:32	0xe27be8		488d6c24f0		LEAQ -0x10(SP), BP					
  exc_task_build.go:32	0xe27bed		e8ea1165ff		CALL 0x478ddc						
  exc_task_build.go:32	0xe27bf2		488b6d00		MOVQ 0(BP), BP						
  exc_task_build.go:32	0xe27bf6		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  exc_task_build.go:32	0xe27bfa		5d			POPQ BP							
  exc_task_build.go:32	0xe27bfb		c3			RET							
  exc_task_build.go:29	0xe27bfc		48898424e8000000	MOVQ AX, 0xe8(SP)					
  exc_task_build.go:29	0xe27c04		48899c24f0000000	MOVQ BX, 0xf0(SP)					
  exc_task_build.go:29	0xe27c0c		e8cfe864ff		CALL runtime.morestack_noctxt.abi0(SB)			
  exc_task_build.go:29	0xe27c11		488b8424e8000000	MOVQ 0xe8(SP), AX					
  exc_task_build.go:29	0xe27c19		488b9c24f0000000	MOVQ 0xf0(SP), BX					
  exc_task_build.go:29	0xe27c21		e97afeffff		JMP CAS-Backend/pkg/diapdu.ParseForkliftTaskJSON(SB)	
  :-1			0xe27c26		cc			INT $__subsystem__(SB)					
  :-1			0xe27c27		cc			INT $__subsystem__(SB)					
  :-1			0xe27c28		cc			INT $__subsystem__(SB)					
  :-1			0xe27c29		cc			INT $__subsystem__(SB)					
  :-1			0xe27c2a		cc			INT $__subsystem__(SB)					
  :-1			0xe27c2b		cc			INT $__subsystem__(SB)					
  :-1			0xe27c2c		cc			INT $__subsystem__(SB)					
  :-1			0xe27c2d		cc			INT $__subsystem__(SB)					
  :-1			0xe27c2e		cc			INT $__subsystem__(SB)					
  :-1			0xe27c2f		cc			INT $__subsystem__(SB)					
  :-1			0xe27c30		cc			INT $__subsystem__(SB)					
  :-1			0xe27c31		cc			INT $__subsystem__(SB)					
  :-1			0xe27c32		cc			INT $__subsystem__(SB)					
  :-1			0xe27c33		cc			INT $__subsystem__(SB)					
  :-1			0xe27c34		cc			INT $__subsystem__(SB)					
  :-1			0xe27c35		cc			INT $__subsystem__(SB)					
  :-1			0xe27c36		cc			INT $__subsystem__(SB)					
  :-1			0xe27c37		cc			INT $__subsystem__(SB)					
  :-1			0xe27c38		cc			INT $__subsystem__(SB)					
  :-1			0xe27c39		cc			INT $__subsystem__(SB)					
  :-1			0xe27c3a		cc			INT $__subsystem__(SB)					
  :-1			0xe27c3b		cc			INT $__subsystem__(SB)					
  :-1			0xe27c3c		cc			INT $__subsystem__(SB)					
  :-1			0xe27c3d		cc			INT $__subsystem__(SB)					
  :-1			0xe27c3e		cc			INT $__subsystem__(SB)					
  :-1			0xe27c3f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.splitRoadPoint(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/exc_task_build.go
  exc_task_build.go:40	0xe27c40		493b6610		CMPQ SP, 0x10(R14)				
  exc_task_build.go:40	0xe27c44		0f8631010000		JBE 0xe27d7b					
  exc_task_build.go:40	0xe27c4a		55			PUSHQ BP					
  exc_task_build.go:40	0xe27c4b		4889e5			MOVQ SP, BP					
  exc_task_build.go:40	0xe27c4e		4883ec78		SUBQ $.file+43(SB), SP				
  exc_task_build.go:40	0xe27c52		4889842488000000	MOVQ AX, 0x88(SP)				
  exc_task_build.go:41	0xe27c5a		4885db			TESTQ BX, BX					
  exc_task_build.go:41	0xe27c5d		7423			JE 0xe27c82					
  strings.go:306	0xe27c5f		488d0d52d00302		LEAQ runtime.gcbits.*+504(SB), CX		
  strings.go:306	0xe27c66		bf01000000		MOVL $__minor_os_version__(SB), DI		
  strings.go:306	0xe27c6b		31f6			XORL SI, SI					
  strings.go:306	0xe27c6d		49c7c0ffffffff		MOVQ $-0x1, R8					
  strings.go:306	0xe27c74		e827826bff		CALL strings.genSplit(SB)			
  exc_task_build.go:45	0xe27c79		31c9			XORL CX, CX					
  exc_task_build.go:45	0xe27c7b		31d2			XORL DX, DX					
  exc_task_build.go:45	0xe27c7d		31f6			XORL SI, SI					
  exc_task_build.go:45	0xe27c7f		90			NOPL						
  exc_task_build.go:45	0xe27c80		eb27			JMP 0xe27ca9					
  exc_task_build.go:42	0xe27c82		31c0			XORL AX, AX					
  exc_task_build.go:42	0xe27c84		31db			XORL BX, BX					
  exc_task_build.go:42	0xe27c86		4889d9			MOVQ BX, CX					
  exc_task_build.go:42	0xe27c89		4883c478		ADDQ $.file+43(SB), SP				
  exc_task_build.go:42	0xe27c8d		5d			POPQ BP						
  exc_task_build.go:42	0xe27c8e		c3			RET						
  exc_task_build.go:45	0xe27c8f		488b442470		MOVQ 0x70(SP), AX				
  exc_task_build.go:45	0xe27c94		4883c010		ADDQ $__major_os_version__+10(SB), AX		
  exc_task_build.go:45	0xe27c98		488b5c2458		MOVQ 0x58(SP), BX				
  exc_task_build.go:45	0xe27c9d		48ffcb			DECQ BX						
  exc_task_build.go:48	0xe27ca0		4889d7			MOVQ DX, DI					
  exc_task_build.go:48	0xe27ca3		4889f2			MOVQ SI, DX					
  exc_task_build.go:48	0xe27ca6		4889fe			MOVQ DI, SI					
  exc_task_build.go:45	0xe27ca9		4885db			TESTQ BX, BX					
  exc_task_build.go:45	0xe27cac		0f8ebd000000		JLE 0xe27d6f					
  exc_task_build.go:45	0xe27cb2		48895c2458		MOVQ BX, 0x58(SP)				
  exc_task_build.go:48	0xe27cb7		4889542460		MOVQ DX, 0x60(SP)				
  exc_task_build.go:48	0xe27cbc		4889742440		MOVQ SI, 0x40(SP)				
  exc_task_build.go:48	0xe27cc1		48894c2448		MOVQ CX, 0x48(SP)				
  exc_task_build.go:45	0xe27cc6		4889442470		MOVQ AX, 0x70(SP)				
  exc_task_build.go:45	0xe27ccb		488b08			MOVQ 0(AX), CX					
  exc_task_build.go:45	0xe27cce		488b5808		MOVQ 0x8(AX), BX				
  exc_task_build.go:46	0xe27cd2		4889c8			MOVQ CX, AX					
  exc_task_build.go:46	0xe27cd5		e8e6ac6bff		CALL strings.TrimSpace(SB)			
  exc_task_build.go:47	0xe27cda		4885db			TESTQ BX, BX					
  exc_task_build.go:47	0xe27cdd		747c			JE 0xe27d5b					
  exc_task_build.go:48	0xe27cdf		488b542440		MOVQ 0x40(SP), DX				
  exc_task_build.go:48	0xe27ce4		48ffc2			INCQ DX						
  exc_task_build.go:48	0xe27ce7		488b4c2448		MOVQ 0x48(SP), CX				
  exc_task_build.go:48	0xe27cec		4839d1			CMPQ CX, DX					
  exc_task_build.go:48	0xe27cef		7207			JB 0xe27cf8					
  exc_task_build.go:48	0xe27cf1		488b742460		MOVQ 0x60(SP), SI				
  exc_task_build.go:48	0xe27cf6		eb33			JMP 0xe27d2b					
  exc_task_build.go:46	0xe27cf8		4889442468		MOVQ AX, 0x68(SP)				
  exc_task_build.go:46	0xe27cfd		48895c2450		MOVQ BX, 0x50(SP)				
  exc_task_build.go:48	0xe27d02		488b442460		MOVQ 0x60(SP), AX				
  exc_task_build.go:48	0xe27d07		4889d3			MOVQ DX, BX					
  exc_task_build.go:48	0xe27d0a		bf01000000		MOVL $__minor_os_version__(SB), DI		
  exc_task_build.go:48	0xe27d0f		488d350aac2100		LEAQ runtime.types+383264(SB), SI		
  exc_task_build.go:48	0xe27d16		e8259f64ff		CALL runtime.growslice(SB)			
  exc_task_build.go:48	0xe27d1b		4889c6			MOVQ AX, SI					
  exc_task_build.go:48	0xe27d1e		4889da			MOVQ BX, DX					
  exc_task_build.go:48	0xe27d21		488b442468		MOVQ 0x68(SP), AX				
  exc_task_build.go:48	0xe27d26		488b5c2450		MOVQ 0x50(SP), BX				
  exc_task_build.go:48	0xe27d2b		488d7aff		LEAQ -0x1(DX), DI				
  exc_task_build.go:48	0xe27d2f		48c1e704		SHLQ $__subsystem__+1(SB), DI			
  exc_task_build.go:48	0xe27d33		48895c3e08		MOVQ BX, 0x8(SI)(DI*1)				
  exc_task_build.go:48	0xe27d38		833d115e730200		CMPL runtime.writeBarrier(SB), $0x0		
  exc_task_build.go:48	0xe27d3f		90			NOPL						
  exc_task_build.go:48	0xe27d40		7410			JE 0xe27d52					
  exc_task_build.go:48	0xe27d42		e8f90665ff		CALL runtime.gcWriteBarrier2(SB)		
  exc_task_build.go:48	0xe27d47		498903			MOVQ AX, 0(R11)					
  exc_task_build.go:48	0xe27d4a		4c8b043e		MOVQ 0(SI)(DI*1), R8				
  exc_task_build.go:48	0xe27d4e		4d894308		MOVQ R8, 0x8(R11)				
  exc_task_build.go:48	0xe27d52		4889043e		MOVQ AX, 0(SI)(DI*1)				
  exc_task_build.go:48	0xe27d56		e934ffffff		JMP 0xe27c8f					
  exc_task_build.go:48	0xe27d5b		488b542440		MOVQ 0x40(SP), DX				
  exc_task_build.go:48	0xe27d60		488b4c2448		MOVQ 0x48(SP), CX				
  exc_task_build.go:48	0xe27d65		488b742460		MOVQ 0x60(SP), SI				
  exc_task_build.go:47	0xe27d6a		e920ffffff		JMP 0xe27c8f					
  exc_task_build.go:51	0xe27d6f		4889d0			MOVQ DX, AX					
  exc_task_build.go:51	0xe27d72		4889f3			MOVQ SI, BX					
  exc_task_build.go:51	0xe27d75		4883c478		ADDQ $.file+43(SB), SP				
  exc_task_build.go:51	0xe27d79		5d			POPQ BP						
  exc_task_build.go:51	0xe27d7a		c3			RET						
  exc_task_build.go:40	0xe27d7b		4889442408		MOVQ AX, 0x8(SP)				
  exc_task_build.go:40	0xe27d80		48895c2410		MOVQ BX, 0x10(SP)				
  exc_task_build.go:40	0xe27d85		e856e764ff		CALL runtime.morestack_noctxt.abi0(SB)		
  exc_task_build.go:40	0xe27d8a		488b442408		MOVQ 0x8(SP), AX				
  exc_task_build.go:40	0xe27d8f		488b5c2410		MOVQ 0x10(SP), BX				
  exc_task_build.go:40	0xe27d94		e9a7feffff		JMP CAS-Backend/pkg/diapdu.splitRoadPoint(SB)	
  :-1			0xe27d99		cc			INT $__subsystem__(SB)				
  :-1			0xe27d9a		cc			INT $__subsystem__(SB)				
  :-1			0xe27d9b		cc			INT $__subsystem__(SB)				
  :-1			0xe27d9c		cc			INT $__subsystem__(SB)				
  :-1			0xe27d9d		cc			INT $__subsystem__(SB)				
  :-1			0xe27d9e		cc			INT $__subsystem__(SB)				
  :-1			0xe27d9f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/pkg/diapdu.PlanStationPathFromGraph(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/exc_task_build.go
  exc_task_build.go:59	0xe27da0		493b6610		CMPQ SP, 0x10(R14)					
  exc_task_build.go:59	0xe27da4		0f869e000000		JBE 0xe27e48						
  exc_task_build.go:59	0xe27daa		55			PUSHQ BP						
  exc_task_build.go:59	0xe27dab		4889e5			MOVQ SP, BP						
  exc_task_build.go:59	0xe27dae		4883ec40		SUBQ $__major_os_version__+58(SB), SP			
  exc_task_build.go:61	0xe27db2		4889442450		MOVQ AX, 0x50(SP)					
  exc_task_build.go:61	0xe27db7		48894c2460		MOVQ CX, 0x60(SP)					
  exc_task_build.go:61	0xe27dbc		48895c2458		MOVQ BX, 0x58(SP)					
  exc_task_build.go:61	0xe27dc1		4c898c2480000000	MOVQ R9, 0x80(SP)					
  exc_task_build.go:61	0xe27dc9		4c89442478		MOVQ R8, 0x78(SP)					
  exc_task_build.go:61	0xe27dce		4889742470		MOVQ SI, 0x70(SP)					
  exc_task_build.go:61	0xe27dd3		48897c2468		MOVQ DI, 0x68(SP)					
  exc_task_build.go:60	0xe27dd8		e823bbffff		CALL CAS-Backend/pkg/diapdu.GetGraph(SB)		
  exc_task_build.go:60	0xe27ddd		0f1f00			NOPL 0(AX)						
  exc_task_build.go:61	0xe27de0		4885c0			TESTQ AX, AX						
  exc_task_build.go:61	0xe27de3		7438			JE 0xe27e1d						
  exc_task_build.go:61	0xe27de5		4883780800		CMPQ 0x8(AX), $0x0					
  exc_task_build.go:61	0xe27dea		7431			JE 0xe27e1d						
  exc_task_build.go:64	0xe27dec		488b5c2450		MOVQ 0x50(SP), BX					
  exc_task_build.go:64	0xe27df1		488b4c2458		MOVQ 0x58(SP), CX					
  exc_task_build.go:64	0xe27df6		488b7c2460		MOVQ 0x60(SP), DI					
  exc_task_build.go:64	0xe27dfb		488b742468		MOVQ 0x68(SP), SI					
  exc_task_build.go:64	0xe27e00		4c8b442470		MOVQ 0x70(SP), R8					
  exc_task_build.go:64	0xe27e05		4c8b4c2478		MOVQ 0x78(SP), R9					
  exc_task_build.go:64	0xe27e0a		4c8b942480000000	MOVQ 0x80(SP), R10					
  exc_task_build.go:64	0xe27e12		e8e9470000		CALL CAS-Backend/pkg/diapdu.PlanStationPath(SB)		
  exc_task_build.go:64	0xe27e17		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  exc_task_build.go:64	0xe27e1b		5d			POPQ BP							
  exc_task_build.go:64	0xe27e1c		c3			RET							
  exc_task_build.go:62	0xe27e1d		488d052e9b3700		LEAQ go:string.*+234570(SB), AX				
  exc_task_build.go:62	0xe27e24		bb39000000		MOVL $__major_os_version__+51(SB), BX			
  exc_task_build.go:62	0xe27e29		31c9			XORL CX, CX						
  exc_task_build.go:62	0xe27e2b		31ff			XORL DI, DI						
  exc_task_build.go:62	0xe27e2d		4889fe			MOVQ DI, SI						
  exc_task_build.go:62	0xe27e30		e88b456fff		CALL fmt.Errorf(SB)					
  exc_task_build.go:62	0xe27e35		31c9			XORL CX, CX						
  exc_task_build.go:62	0xe27e37		4889c7			MOVQ AX, DI						
  exc_task_build.go:62	0xe27e3a		4889de			MOVQ BX, SI						
  exc_task_build.go:62	0xe27e3d		31c0			XORL AX, AX						
  exc_task_build.go:62	0xe27e3f		4889cb			MOVQ CX, BX						
  exc_task_build.go:62	0xe27e42		4883c440		ADDQ $__major_os_version__+58(SB), SP			
  exc_task_build.go:62	0xe27e46		5d			POPQ BP							
  exc_task_build.go:62	0xe27e47		c3			RET							
  exc_task_build.go:59	0xe27e48		4889442408		MOVQ AX, 0x8(SP)					
  exc_task_build.go:59	0xe27e4d		48895c2410		MOVQ BX, 0x10(SP)					
  exc_task_build.go:59	0xe27e52		48894c2418		MOVQ CX, 0x18(SP)					
  exc_task_build.go:59	0xe27e57		48897c2420		MOVQ DI, 0x20(SP)					
  exc_task_build.go:59	0xe27e5c		4889742428		MOVQ SI, 0x28(SP)					
  exc_task_build.go:59	0xe27e61		4c89442430		MOVQ R8, 0x30(SP)					
  exc_task_build.go:59	0xe27e66		4c894c2438		MOVQ R9, 0x38(SP)					
  exc_task_build.go:59	0xe27e6b		e870e664ff		CALL runtime.morestack_noctxt.abi0(SB)			
  exc_task_build.go:59	0xe27e70		488b442408		MOVQ 0x8(SP), AX					
  exc_task_build.go:59	0xe27e75		488b5c2410		MOVQ 0x10(SP), BX					
  exc_task_build.go:59	0xe27e7a		488b4c2418		MOVQ 0x18(SP), CX					
  exc_task_build.go:59	0xe27e7f		488b7c2420		MOVQ 0x20(SP), DI					
  exc_task_build.go:59	0xe27e84		488b742428		MOVQ 0x28(SP), SI					
  exc_task_build.go:59	0xe27e89		4c8b442430		MOVQ 0x30(SP), R8					
  exc_task_build.go:59	0xe27e8e		4c8b4c2438		MOVQ 0x38(SP), R9					
  exc_task_build.go:59	0xe27e93		e908ffffff		JMP CAS-Backend/pkg/diapdu.PlanStationPathFromGraph(SB)	
  :-1			0xe27e98		cc			INT $__subsystem__(SB)					
  :-1			0xe27e99		cc			INT $__subsystem__(SB)					
  :-1			0xe27e9a		cc			INT $__subsystem__(SB)					
  :-1			0xe27e9b		cc			INT $__subsystem__(SB)					
  :-1			0xe27e9c		cc			INT $__subsystem__(SB)					
  :-1			0xe27e9d		cc			INT $__subsystem__(SB)					
  :-1			0xe27e9e		cc			INT $__subsystem__(SB)					
  :-1			0xe27e9f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.buildGotoTasks(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/exc_task_build.go
  exc_task_build.go:76	0xe27ea0		4c8da424d0feffff	LEAQ 0xfffffed0(SP), R12					
  exc_task_build.go:76	0xe27ea8		4d3b6610		CMPQ R12, 0x10(R14)						
  exc_task_build.go:76	0xe27eac		0f8614040000		JBE 0xe282c6							
  exc_task_build.go:76	0xe27eb2		55			PUSHQ BP							
  exc_task_build.go:76	0xe27eb3		4889e5			MOVQ SP, BP							
  exc_task_build.go:76	0xe27eb6		4881eca8010000		SUBQ $.file+347(SB), SP						
  exc_task_build.go:76	0xe27ebd		48898424b8010000	MOVQ AX, 0x1b8(SP)						
  exc_task_build.go:76	0xe27ec5		48898c24c8010000	MOVQ CX, 0x1c8(SP)						
  exc_task_build.go:76	0xe27ecd		4c898c24e8010000	MOVQ R9, 0x1e8(SP)						
  exc_task_build.go:81	0xe27ed5		4c898424e0010000	MOVQ R8, 0x1e0(SP)						
  exc_task_build.go:81	0xe27edd		4889b424d8010000	MOVQ SI, 0x1d8(SP)						
  exc_task_build.go:80	0xe27ee5		90			NOPL								
  exc_task_build.go:55	0xe27ee6		4c89ce			MOVQ R9, SI							
  exc_task_build.go:55	0xe27ee9		4d89d0			MOVQ R10, R8							
  exc_task_build.go:55	0xe27eec		4d89d9			MOVQ R11, R9							
  exc_task_build.go:55	0xe27eef		e8acfeffff		CALL CAS-Backend/pkg/diapdu.PlanStationPathFromGraph(SB)	
  exc_task_build.go:55	0xe27ef4		4889842480000000	MOVQ AX, 0x80(SP)						
  exc_task_build.go:55	0xe27efc		48895c2440		MOVQ BX, 0x40(SP)						
  exc_task_build.go:81	0xe27f01		4885ff			TESTQ DI, DI							
  exc_task_build.go:81	0xe27f04		744f			JE 0xe27f55							
  exc_task_build.go:82	0xe27f06		440f11bc2498010000	MOVUPS X15, 0x198(SP)						
  exc_task_build.go:82	0xe27f0f		7404			JE 0xe27f15							
  exc_task_build.go:82	0xe27f11		488b7f08		MOVQ 0x8(DI), DI						
  exc_task_build.go:82	0xe27f15		4889bc2498010000	MOVQ DI, 0x198(SP)						
  exc_task_build.go:82	0xe27f1d		4889b424a0010000	MOVQ SI, 0x1a0(SP)						
  print.go:314		0xe27f25		488b1d54a16e02		MOVQ os.Stdout(SB), BX						
  print.go:314		0xe27f2c		488d05ad3b0402		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe27f33		488d8c2498010000	LEAQ 0x198(SP), CX						
  print.go:314		0xe27f3b		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe27f40		4889fe			MOVQ DI, SI							
  print.go:314		0xe27f43		e818796fff		CALL fmt.Fprintln(SB)						
  exc_task_build.go:91	0xe27f48		488b842480000000	MOVQ 0x80(SP), AX						
  exc_task_build.go:85	0xe27f50		488b5c2440		MOVQ 0x40(SP), BX						
  exc_task_build.go:85	0xe27f55		4883fb02		CMPQ BX, $__minor_os_version__+1(SB)				
  exc_task_build.go:85	0xe27f59		7c1f			JL 0xe27f7a							
  exc_task_build.go:85	0xe27f5b		31c9			XORL CX, CX							
  exc_task_build.go:85	0xe27f5d		31d2			XORL DX, DX							
  exc_task_build.go:78	0xe27f5f		488d353a537302		LEAQ unicode..stmp_365(SB), SI					
  exc_task_build.go:78	0xe27f66		31ff			XORL DI, DI							
  exc_task_build.go:78	0xe27f68		4531c0			XORL R8, R8							
  exc_task_build.go:77	0xe27f6b		4c8d0d2e537302		LEAQ unicode..stmp_365(SB), R9					
  exc_task_build.go:77	0xe27f72		4531d2			XORL R10, R10							
  exc_task_build.go:85	0xe27f75		e99a000000		JMP 0xe28014							
  exc_task_build.go:86	0xe27f7a		488d159fa92100		LEAQ runtime.types+383264(SB), DX				
  exc_task_build.go:86	0xe27f81		4889942488010000	MOVQ DX, 0x188(SP)						
  exc_task_build.go:86	0xe27f89		488d1590fe0302		LEAQ CAS-Backend/pkg/diapdu..stmp_5(SB), DX			
  exc_task_build.go:86	0xe27f90		4889942490010000	MOVQ DX, 0x190(SP)						
  print.go:314		0xe27f98		488b1de1a06e02		MOVQ os.Stdout(SB), BX						
  print.go:314		0xe27f9f		488d053a3b0402		LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe27fa6		488d8c2488010000	LEAQ 0x188(SP), CX						
  print.go:314		0xe27fae		bf01000000		MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe27fb3		4889fe			MOVQ DI, SI							
  print.go:314		0xe27fb6		e8a5786fff		CALL fmt.Fprintln(SB)						
  exc_task_build.go:87	0xe27fbb		488d05de527302		LEAQ unicode..stmp_365(SB), AX					
  exc_task_build.go:87	0xe27fc2		31db			XORL BX, BX							
  exc_task_build.go:87	0xe27fc4		4889d9			MOVQ BX, CX							
  exc_task_build.go:87	0xe27fc7		488d3dd2527302		LEAQ unicode..stmp_365(SB), DI					
  exc_task_build.go:87	0xe27fce		4889ce			MOVQ CX, SI							
  exc_task_build.go:87	0xe27fd1		4989c8			MOVQ CX, R8							
  exc_task_build.go:87	0xe27fd4		4989c9			MOVQ CX, R9							
  exc_task_build.go:87	0xe27fd7		4531d2			XORL R10, R10							
  exc_task_build.go:87	0xe27fda		4881c4a8010000		ADDQ $.file+347(SB), SP						
  exc_task_build.go:87	0xe27fe1		5d			POPQ BP								
  exc_task_build.go:87	0xe27fe2		c3			RET								
  exc_task_build.go:100	0xe27fe3		4a89041e		MOVQ AX, 0(SI)(R11*1)						
  exc_task_build.go:91	0xe27fe7		488b842480000000	MOVQ 0x80(SP), AX						
  exc_task_build.go:89	0xe27fef		488b5c2440		MOVQ 0x40(SP), BX						
  exc_task_build.go:90	0xe27ff4		488b7c2448		MOVQ 0x48(SP), DI						
  exc_task_build.go:100	0xe27ff9		4989c8			MOVQ CX, R8							
  exc_task_build.go:100	0xe27ffc		4989f1			MOVQ SI, R9							
  exc_task_build.go:100	0xe27fff		4989d2			MOVQ DX, R10							
  exc_task_build.go:89	0xe28002		488b4c2470		MOVQ 0x70(SP), CX						
  exc_task_build.go:90	0xe28007		488b542450		MOVQ 0x50(SP), DX						
  exc_task_build.go:90	0xe2800c		488bb42488000000	MOVQ 0x88(SP), SI						
  exc_task_build.go:89	0xe28014		4c8d5bff		LEAQ -0x1(BX), R11						
  exc_task_build.go:89	0xe28018		0f1f840000000000	NOPL 0(AX)(AX*1)						
  exc_task_build.go:89	0xe28020		4c39d9			CMPQ CX, R11							
  exc_task_build.go:89	0xe28023		0f8d6f020000		JGE 0xe28298							
  exc_task_build.go:90	0xe28029		4889b42488000000	MOVQ SI, 0x88(SP)						
  exc_task_build.go:100	0xe28031		4c89442460		MOVQ R8, 0x60(SP)						
  exc_task_build.go:89	0xe28036		48894c2468		MOVQ CX, 0x68(SP)						
  exc_task_build.go:100	0xe2803b		4c89542458		MOVQ R10, 0x58(SP)						
  exc_task_build.go:90	0xe28040		4889542450		MOVQ DX, 0x50(SP)						
  exc_task_build.go:100	0xe28045		4c898c2490000000	MOVQ R9, 0x90(SP)						
  exc_task_build.go:90	0xe2804d		48897c2448		MOVQ DI, 0x48(SP)						
  exc_task_build.go:91	0xe28052		4889c8			MOVQ CX, AX							
  exc_task_build.go:91	0xe28055		48c1e104		SHLQ $__subsystem__+1(SB), CX					
  exc_task_build.go:91	0xe28059		48894c2478		MOVQ CX, 0x78(SP)						
  exc_task_build.go:92	0xe2805e		488d5001		LEAQ 0x1(AX), DX						
  exc_task_build.go:92	0xe28062		4889542470		MOVQ DX, 0x70(SP)						
  itoa.go:35		0xe28067		bb0a000000		MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2806c		e84f786cff		CALL strconv.FormatInt(SB)					
  exc_task_build.go:98	0xe28071		488dbc24a8000000	LEAQ 0xa8(SP), DI						
  exc_task_build.go:98	0xe28079		488d35207b0502		LEAQ CAS-Backend/pkg/diapdu..stmp_6(SB), SI			
  exc_task_build.go:98	0xe28080		48896c24f0		MOVQ BP, -0x10(SP)						
  exc_task_build.go:98	0xe28085		488d6c24f0		LEAQ -0x10(SP), BP						
  exc_task_build.go:98	0xe2808a		e84d0d65ff		CALL 0x478ddc							
  exc_task_build.go:98	0xe2808f		488b6d00		MOVQ 0(BP), BP							
  exc_task_build.go:91	0xe28093		488b4c2478		MOVQ 0x78(SP), CX						
  exc_task_build.go:91	0xe28098		488b942480000000	MOVQ 0x80(SP), DX						
  exc_task_build.go:91	0xe280a0		488b340a		MOVQ 0(DX)(CX*1), SI						
  exc_task_build.go:91	0xe280a4		488b4c0a08		MOVQ 0x8(DX)(CX*1), CX						
  exc_task_build.go:91	0xe280a9		4889b424a8000000	MOVQ SI, 0xa8(SP)						
  exc_task_build.go:91	0xe280b1		48898c24b0000000	MOVQ CX, 0xb0(SP)						
  exc_task_build.go:92	0xe280b9		488b4c2440		MOVQ 0x40(SP), CX						
  exc_task_build.go:92	0xe280be		488b742470		MOVQ 0x70(SP), SI						
  exc_task_build.go:92	0xe280c3		4839f1			CMPQ CX, SI							
  exc_task_build.go:92	0xe280c6		0f86ed010000		JBE 0xe282b9							
  exc_task_build.go:90	0xe280cc		4c8b442448		MOVQ 0x48(SP), R8						
  exc_task_build.go:90	0xe280d1		49ffc0			INCQ R8								
  exc_task_build.go:90	0xe280d4		4c89442478		MOVQ R8, 0x78(SP)						
  exc_task_build.go:92	0xe280d9		48c1e604		SHLQ $__subsystem__+1(SB), SI					
  exc_task_build.go:92	0xe280dd		4c8b1432		MOVQ 0(DX)(SI*1), R10						
  exc_task_build.go:92	0xe280e1		4c8b5c3208		MOVQ 0x8(DX)(SI*1), R11						
  exc_task_build.go:92	0xe280e6		4c899424b8000000	MOVQ R10, 0xb8(SP)						
  exc_task_build.go:92	0xe280ee		4c899c24c0000000	MOVQ R11, 0xc0(SP)						
  exc_task_build.go:93	0xe280f6		488b8c24e0010000	MOVQ 0x1e0(SP), CX						
  exc_task_build.go:93	0xe280fe		4889c7			MOVQ AX, DI							
  exc_task_build.go:93	0xe28101		4889de			MOVQ BX, SI							
  exc_task_build.go:93	0xe28104		31c0			XORL AX, AX							
  exc_task_build.go:93	0xe28106		488b9c24d8010000	MOVQ 0x1d8(SP), BX						
  exc_task_build.go:93	0xe2810e		e8edd262ff		CALL runtime.concatstring2(SB)					
  exc_task_build.go:93	0xe28113		48898424c8000000	MOVQ AX, 0xc8(SP)						
  exc_task_build.go:93	0xe2811b		48899c24d0000000	MOVQ BX, 0xd0(SP)						
  exc_task_build.go:90	0xe28123		488b4c2450		MOVQ 0x50(SP), CX						
  exc_task_build.go:90	0xe28128		488b5c2478		MOVQ 0x78(SP), BX						
  exc_task_build.go:90	0xe2812d		4839d9			CMPQ CX, BX							
  exc_task_build.go:90	0xe28130		720a			JB 0xe2813c							
  exc_task_build.go:90	0xe28132		488b842488000000	MOVQ 0x88(SP), AX						
  exc_task_build.go:90	0xe2813a		eb19			JMP 0xe28155							
  exc_task_build.go:90	0xe2813c		488b842488000000	MOVQ 0x88(SP), AX						
  exc_task_build.go:90	0xe28144		bf01000000		MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:90	0xe28149		488d3530a03100		LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:90	0xe28150		e8eb9a64ff		CALL runtime.growslice(SB)					
  exc_task_build.go:90	0xe28155		4889842488000000	MOVQ AX, 0x88(SP)						
  exc_task_build.go:90	0xe2815d		48895c2448		MOVQ BX, 0x48(SP)						
  exc_task_build.go:90	0xe28162		48894c2450		MOVQ CX, 0x50(SP)						
  exc_task_build.go:90	0xe28167		4869d3e0000000		IMULQ $.file+147(SB), BX, DX					
  exc_task_build.go:90	0xe2816e		488d3c02		LEAQ 0(DX)(AX*1), DI						
  exc_task_build.go:90	0xe28172		488dbf20ffffff		LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:90	0xe28179		833dd059730200		CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:90	0xe28180		742b			JE 0xe281ad							
  exc_task_build.go:90	0xe28182		4889bc24a0000000	MOVQ DI, 0xa0(SP)						
  exc_task_build.go:90	0xe2818a		488d05ef9f3100		LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:90	0xe28191		4889fb			MOVQ DI, BX							
  exc_task_build.go:90	0xe28194		488d8c24a8000000	LEAQ 0xa8(SP), CX						
  exc_task_build.go:90	0xe2819c		0f1f4000		NOPL 0(AX)							
  exc_task_build.go:90	0xe281a0		e87bcd5eff		CALL runtime.wbMove(SB)						
  exc_task_build.go:90	0xe281a5		488bbc24a0000000	MOVQ 0xa0(SP), DI						
  exc_task_build.go:90	0xe281ad		488db424a8000000	LEAQ 0xa8(SP), SI						
  exc_task_build.go:90	0xe281b5		660f1f840000000000	NOPW 0(AX)(AX*1)						
  exc_task_build.go:90	0xe281be		6690			NOPW								
  exc_task_build.go:90	0xe281c0		48896c24f0		MOVQ BP, -0x10(SP)						
  exc_task_build.go:90	0xe281c5		488d6c24f0		LEAQ -0x10(SP), BP						
  exc_task_build.go:90	0xe281ca		e80d0c65ff		CALL 0x478ddc							
  exc_task_build.go:90	0xe281cf		488b6d00		MOVQ 0(BP), BP							
  exc_task_build.go:100	0xe281d3		488b4c2458		MOVQ 0x58(SP), CX						
  exc_task_build.go:100	0xe281d8		48ffc1			INCQ CX								
  exc_task_build.go:100	0xe281db		48894c2478		MOVQ CX, 0x78(SP)						
  itoa.go:35		0xe281e0		488b442468		MOVQ 0x68(SP), AX						
  itoa.go:35		0xe281e5		bb0a000000		MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe281ea		e8d1766cff		CALL strconv.FormatInt(SB)					
  exc_task_build.go:100	0xe281ef		488b8c24e0010000	MOVQ 0x1e0(SP), CX						
  exc_task_build.go:100	0xe281f7		4889c7			MOVQ AX, DI							
  exc_task_build.go:100	0xe281fa		4889de			MOVQ BX, SI							
  exc_task_build.go:100	0xe281fd		31c0			XORL AX, AX							
  exc_task_build.go:100	0xe281ff		488b9c24d8010000	MOVQ 0x1d8(SP), BX						
  exc_task_build.go:100	0xe28207		e8f4d162ff		CALL runtime.concatstring2(SB)					
  exc_task_build.go:100	0xe2820c		488b4c2460		MOVQ 0x60(SP), CX						
  exc_task_build.go:100	0xe28211		488b542478		MOVQ 0x78(SP), DX						
  exc_task_build.go:100	0xe28216		4839d1			CMPQ CX, DX							
  exc_task_build.go:100	0xe28219		720a			JB 0xe28225							
  exc_task_build.go:100	0xe2821b		488bb42490000000	MOVQ 0x90(SP), SI						
  exc_task_build.go:100	0xe28223		eb3c			JMP 0xe28261							
  exc_task_build.go:100	0xe28225		48895c2478		MOVQ BX, 0x78(SP)						
  exc_task_build.go:100	0xe2822a		4889842498000000	MOVQ AX, 0x98(SP)						
  exc_task_build.go:100	0xe28232		488b842490000000	MOVQ 0x90(SP), AX						
  exc_task_build.go:100	0xe2823a		4889d3			MOVQ DX, BX							
  exc_task_build.go:100	0xe2823d		bf01000000		MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:100	0xe28242		488d35d7a62100		LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:100	0xe28249		e8f29964ff		CALL runtime.growslice(SB)					
  exc_task_build.go:100	0xe2824e		4889c6			MOVQ AX, SI							
  exc_task_build.go:100	0xe28251		4889da			MOVQ BX, DX							
  exc_task_build.go:100	0xe28254		488b842498000000	MOVQ 0x98(SP), AX						
  exc_task_build.go:100	0xe2825c		488b5c2478		MOVQ 0x78(SP), BX						
  exc_task_build.go:100	0xe28261		4c8d5aff		LEAQ -0x1(DX), R11						
  exc_task_build.go:100	0xe28265		49c1e304		SHLQ $__subsystem__+1(SB), R11					
  exc_task_build.go:100	0xe28269		4a895c1e08		MOVQ BX, 0x8(SI)(R11*1)						
  exc_task_build.go:100	0xe2826e		833ddb58730200		CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:100	0xe28275		0f8468fdffff		JE 0xe27fe3							
  exc_task_build.go:100	0xe2827b		4c89db			MOVQ R11, BX							
  exc_task_build.go:100	0xe2827e		6690			NOPW								
  exc_task_build.go:100	0xe28280		e8bb0165ff		CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:100	0xe28285		498903			MOVQ AX, 0(R11)							
  exc_task_build.go:100	0xe28288		4c8b241e		MOVQ 0(SI)(BX*1), R12						
  exc_task_build.go:100	0xe2828c		4d896308		MOVQ R12, 0x8(R11)						
  exc_task_build.go:100	0xe28290		4989db			MOVQ BX, R11							
  exc_task_build.go:100	0xe28293		e94bfdffff		JMP 0xe27fe3							
  exc_task_build.go:103	0xe28298		4889f0			MOVQ SI, AX							
  exc_task_build.go:103	0xe2829b		4889fb			MOVQ DI, BX							
  exc_task_build.go:103	0xe2829e		4c89cf			MOVQ R9, DI							
  exc_task_build.go:103	0xe282a1		4c89d6			MOVQ R10, SI							
  exc_task_build.go:103	0xe282a4		4989c9			MOVQ CX, R9							
  exc_task_build.go:103	0xe282a7		41ba01000000		MOVL $__minor_os_version__(SB), R10				
  exc_task_build.go:103	0xe282ad		4889d1			MOVQ DX, CX							
  exc_task_build.go:103	0xe282b0		4881c4a8010000		ADDQ $.file+347(SB), SP						
  exc_task_build.go:103	0xe282b7		5d			POPQ BP								
  exc_task_build.go:103	0xe282b8		c3			RET								
  exc_task_build.go:92	0xe282b9		4889f0			MOVQ SI, AX							
  exc_task_build.go:92	0xe282bc		0f1f4000		NOPL 0(AX)							
  exc_task_build.go:92	0xe282c0		e81b0565ff		CALL runtime.panicIndex(SB)					
  exc_task_build.go:92	0xe282c5		90			NOPL								
  exc_task_build.go:76	0xe282c6		4889442408		MOVQ AX, 0x8(SP)						
  exc_task_build.go:76	0xe282cb		48895c2410		MOVQ BX, 0x10(SP)						
  exc_task_build.go:76	0xe282d0		48894c2418		MOVQ CX, 0x18(SP)						
  exc_task_build.go:76	0xe282d5		48897c2420		MOVQ DI, 0x20(SP)						
  exc_task_build.go:76	0xe282da		4889742428		MOVQ SI, 0x28(SP)						
  exc_task_build.go:76	0xe282df		4c89442430		MOVQ R8, 0x30(SP)						
  exc_task_build.go:76	0xe282e4		4c894c2438		MOVQ R9, 0x38(SP)						
  exc_task_build.go:76	0xe282e9		4c89542440		MOVQ R10, 0x40(SP)						
  exc_task_build.go:76	0xe282ee		4c895c2448		MOVQ R11, 0x48(SP)						
  exc_task_build.go:76	0xe282f3		e8e8e164ff		CALL runtime.morestack_noctxt.abi0(SB)				
  exc_task_build.go:76	0xe282f8		488b442408		MOVQ 0x8(SP), AX						
  exc_task_build.go:76	0xe282fd		488b5c2410		MOVQ 0x10(SP), BX						
  exc_task_build.go:76	0xe28302		488b4c2418		MOVQ 0x18(SP), CX						
  exc_task_build.go:76	0xe28307		488b7c2420		MOVQ 0x20(SP), DI						
  exc_task_build.go:76	0xe2830c		488b742428		MOVQ 0x28(SP), SI						
  exc_task_build.go:76	0xe28311		4c8b442430		MOVQ 0x30(SP), R8						
  exc_task_build.go:76	0xe28316		4c8b4c2438		MOVQ 0x38(SP), R9						
  exc_task_build.go:76	0xe2831b		4c8b542440		MOVQ 0x40(SP), R10						
  exc_task_build.go:76	0xe28320		4c8b5c2448		MOVQ 0x48(SP), R11						
  exc_task_build.go:76	0xe28325		e976fbffff		JMP CAS-Backend/pkg/diapdu.buildGotoTasks(SB)			
  :-1			0xe2832a		cc			INT $__subsystem__(SB)						
  :-1			0xe2832b		cc			INT $__subsystem__(SB)						
  :-1			0xe2832c		cc			INT $__subsystem__(SB)						
  :-1			0xe2832d		cc			INT $__subsystem__(SB)						
  :-1			0xe2832e		cc			INT $__subsystem__(SB)						
  :-1			0xe2832f		cc			INT $__subsystem__(SB)						
  :-1			0xe28330		cc			INT $__subsystem__(SB)						
  :-1			0xe28331		cc			INT $__subsystem__(SB)						
  :-1			0xe28332		cc			INT $__subsystem__(SB)						
  :-1			0xe28333		cc			INT $__subsystem__(SB)						
  :-1			0xe28334		cc			INT $__subsystem__(SB)						
  :-1			0xe28335		cc			INT $__subsystem__(SB)						
  :-1			0xe28336		cc			INT $__subsystem__(SB)						
  :-1			0xe28337		cc			INT $__subsystem__(SB)						
  :-1			0xe28338		cc			INT $__subsystem__(SB)						
  :-1			0xe28339		cc			INT $__subsystem__(SB)						
  :-1			0xe2833a		cc			INT $__subsystem__(SB)						
  :-1			0xe2833b		cc			INT $__subsystem__(SB)						
  :-1			0xe2833c		cc			INT $__subsystem__(SB)						
  :-1			0xe2833d		cc			INT $__subsystem__(SB)						
  :-1			0xe2833e		cc			INT $__subsystem__(SB)						
  :-1			0xe2833f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.appendPathMiddleMoveTasks(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/exc_task_build.go
  exc_task_build.go:106	0xe28340		4c8da424f8feffff	LEAQ 0xfffffef8(SP), R12					
  exc_task_build.go:106	0xe28348		4d3b6610		CMPQ R12, 0x10(R14)						
  exc_task_build.go:106	0xe2834c		0f86ef020000		JBE 0xe28641							
  exc_task_build.go:106	0xe28352		55			PUSHQ BP							
  exc_task_build.go:106	0xe28353		4889e5			MOVQ SP, BP							
  exc_task_build.go:106	0xe28356		4881ec80010000		SUBQ $.file+307(SB), SP						
  exc_task_build.go:106	0xe2835d		48898424a8010000	MOVQ AX, 0x1a8(SP)						
  exc_task_build.go:106	0xe28365		4889bc24c0010000	MOVQ DI, 0x1c0(SP)						
  exc_task_build.go:107	0xe2836d		4c899424e0010000	MOVQ R10, 0x1e0(SP)						
  exc_task_build.go:107	0xe28375		4c898c24d8010000	MOVQ R9, 0x1d8(SP)						
  exc_task_build.go:106	0xe2837d		ba02000000		MOVL $__minor_os_version__+1(SB), DX				
  exc_task_build.go:121	0xe28382		4c8b9c24a0010000	MOVQ 0x1a0(SP), R11						
  exc_task_build.go:107	0xe2838a		eb42			JMP 0xe283ce							
  exc_task_build.go:118	0xe2838c		4a890416		MOVQ AX, 0(SI)(R10*1)						
  exc_task_build.go:107	0xe28390		4c8b642448		MOVQ 0x48(SP), R12						
  exc_task_build.go:107	0xe28395		49ffc4			INCQ R12							
  exc_task_build.go:119	0xe28398		4c8b5c2440		MOVQ 0x40(SP), R11						
  exc_task_build.go:119	0xe2839d		49ffc3			INCQ R11							
  exc_task_build.go:109	0xe283a0		4c8b8c24d8010000	MOVQ 0x1d8(SP), R9						
  exc_task_build.go:107	0xe283a8		4c8b9424e0010000	MOVQ 0x1e0(SP), R10						
  exc_task_build.go:108	0xe283b0		488b842490000000	MOVQ 0x90(SP), AX						
  exc_task_build.go:108	0xe283b8		488b5c2468		MOVQ 0x68(SP), BX						
  exc_task_build.go:118	0xe283bd		4989c8			MOVQ CX, R8							
  exc_task_build.go:118	0xe283c0		4889f7			MOVQ SI, DI							
  exc_task_build.go:118	0xe283c3		4889d6			MOVQ DX, SI							
  exc_task_build.go:107	0xe283c6		4c89e2			MOVQ R12, DX							
  exc_task_build.go:108	0xe283c9		488b4c2460		MOVQ 0x60(SP), CX						
  exc_task_build.go:107	0xe283ce		4d8d62ff		LEAQ -0x1(R10), R12						
  exc_task_build.go:107	0xe283d2		4c39e2			CMPQ DX, R12							
  exc_task_build.go:107	0xe283d5		0f8d5a020000		JGE 0xe28635							
  exc_task_build.go:107	0xe283db		4889542448		MOVQ DX, 0x48(SP)						
  exc_task_build.go:121	0xe283e0		4c895c2440		MOVQ R11, 0x40(SP)						
  exc_task_build.go:118	0xe283e5		4889bc2498000000	MOVQ DI, 0x98(SP)						
  exc_task_build.go:118	0xe283ed		4889742478		MOVQ SI, 0x78(SP)						
  exc_task_build.go:118	0xe283f2		4c89442470		MOVQ R8, 0x70(SP)						
  exc_task_build.go:108	0xe283f7		4889842490000000	MOVQ AX, 0x90(SP)						
  exc_task_build.go:108	0xe283ff		48894c2468		MOVQ CX, 0x68(SP)						
  exc_task_build.go:108	0xe28404		488d4b01		LEAQ 0x1(BX), CX						
  exc_task_build.go:108	0xe28408		48894c2460		MOVQ CX, 0x60(SP)						
  exc_task_build.go:109	0xe2840d		488d72ff		LEAQ -0x1(DX), SI						
  exc_task_build.go:109	0xe28411		48c1e604		SHLQ $__subsystem__+1(SB), SI					
  exc_task_build.go:109	0xe28415		4889742458		MOVQ SI, 0x58(SP)						
  exc_task_build.go:110	0xe2841a		48c1e204		SHLQ $__subsystem__+1(SB), DX					
  exc_task_build.go:110	0xe2841e		4889542450		MOVQ DX, 0x50(SP)						
  itoa.go:35		0xe28423		4c89d8			MOVQ R11, AX							
  itoa.go:35		0xe28426		bb0a000000		MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2842b		e890746cff		CALL strconv.FormatInt(SB)					
  exc_task_build.go:116	0xe28430		488dbc24a0000000	LEAQ 0xa0(SP), DI						
  exc_task_build.go:116	0xe28438		488d3561770502		LEAQ CAS-Backend/pkg/diapdu..stmp_6(SB), SI			
  exc_task_build.go:116	0xe2843f		90			NOPL								
  exc_task_build.go:116	0xe28440		48896c24f0		MOVQ BP, -0x10(SP)						
  exc_task_build.go:116	0xe28445		488d6c24f0		LEAQ -0x10(SP), BP						
  exc_task_build.go:116	0xe2844a		e88d0965ff		CALL 0x478ddc							
  exc_task_build.go:116	0xe2844f		488b6d00		MOVQ 0(BP), BP							
  exc_task_build.go:109	0xe28453		488b4c2458		MOVQ 0x58(SP), CX						
  exc_task_build.go:109	0xe28458		488b9424d8010000	MOVQ 0x1d8(SP), DX						
  exc_task_build.go:109	0xe28460		488b340a		MOVQ 0(DX)(CX*1), SI						
  exc_task_build.go:109	0xe28464		488b4c0a08		MOVQ 0x8(DX)(CX*1), CX						
  exc_task_build.go:109	0xe28469		4889b424a0000000	MOVQ SI, 0xa0(SP)						
  exc_task_build.go:109	0xe28471		48898c24a8000000	MOVQ CX, 0xa8(SP)						
  exc_task_build.go:110	0xe28479		488b4c2450		MOVQ 0x50(SP), CX						
  exc_task_build.go:110	0xe2847e		488b340a		MOVQ 0(DX)(CX*1), SI						
  exc_task_build.go:110	0xe28482		488b4c0a08		MOVQ 0x8(DX)(CX*1), CX						
  exc_task_build.go:110	0xe28487		4889b424b0000000	MOVQ SI, 0xb0(SP)						
  exc_task_build.go:110	0xe2848f		48898c24b8000000	MOVQ CX, 0xb8(SP)						
  exc_task_build.go:111	0xe28497		488b8c2498010000	MOVQ 0x198(SP), CX						
  exc_task_build.go:111	0xe2849f		4889c7			MOVQ AX, DI							
  exc_task_build.go:111	0xe284a2		4889de			MOVQ BX, SI							
  exc_task_build.go:111	0xe284a5		31c0			XORL AX, AX							
  exc_task_build.go:111	0xe284a7		488b9c2490010000	MOVQ 0x190(SP), BX						
  exc_task_build.go:111	0xe284af		e84ccf62ff		CALL runtime.concatstring2(SB)					
  exc_task_build.go:111	0xe284b4		48898424c0000000	MOVQ AX, 0xc0(SP)						
  exc_task_build.go:111	0xe284bc		48899c24c8000000	MOVQ BX, 0xc8(SP)						
  exc_task_build.go:108	0xe284c4		488b4c2468		MOVQ 0x68(SP), CX						
  exc_task_build.go:108	0xe284c9		488b5c2460		MOVQ 0x60(SP), BX						
  exc_task_build.go:108	0xe284ce		4839d9			CMPQ CX, BX							
  exc_task_build.go:108	0xe284d1		720a			JB 0xe284dd							
  exc_task_build.go:108	0xe284d3		488b842490000000	MOVQ 0x90(SP), AX						
  exc_task_build.go:108	0xe284db		eb19			JMP 0xe284f6							
  exc_task_build.go:108	0xe284dd		488b842490000000	MOVQ 0x90(SP), AX						
  exc_task_build.go:108	0xe284e5		bf01000000		MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:108	0xe284ea		488d358f9c3100		LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:108	0xe284f1		e84a9764ff		CALL runtime.growslice(SB)					
  exc_task_build.go:108	0xe284f6		4889842490000000	MOVQ AX, 0x90(SP)						
  exc_task_build.go:108	0xe284fe		48895c2468		MOVQ BX, 0x68(SP)						
  exc_task_build.go:108	0xe28503		48894c2460		MOVQ CX, 0x60(SP)						
  exc_task_build.go:108	0xe28508		4869d3e0000000		IMULQ $.file+147(SB), BX, DX					
  exc_task_build.go:108	0xe2850f		488d3c02		LEAQ 0(DX)(AX*1), DI						
  exc_task_build.go:108	0xe28513		488dbf20ffffff		LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:108	0xe2851a		833d2f56730200		CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:108	0xe28521		742a			JE 0xe2854d							
  exc_task_build.go:108	0xe28523		4889bc2488000000	MOVQ DI, 0x88(SP)						
  exc_task_build.go:108	0xe2852b		488d054e9c3100		LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:108	0xe28532		4889fb			MOVQ DI, BX							
  exc_task_build.go:108	0xe28535		488d8c24a0000000	LEAQ 0xa0(SP), CX						
  exc_task_build.go:108	0xe2853d		0f1f00			NOPL 0(AX)							
  exc_task_build.go:108	0xe28540		e8dbc95eff		CALL runtime.wbMove(SB)						
  exc_task_build.go:108	0xe28545		488bbc2488000000	MOVQ 0x88(SP), DI						
  exc_task_build.go:108	0xe2854d		488db424a0000000	LEAQ 0xa0(SP), SI						
  exc_task_build.go:108	0xe28555		660f1f840000000000	NOPW 0(AX)(AX*1)						
  exc_task_build.go:108	0xe2855e		6690			NOPW								
  exc_task_build.go:108	0xe28560		48896c24f0		MOVQ BP, -0x10(SP)						
  exc_task_build.go:108	0xe28565		488d6c24f0		LEAQ -0x10(SP), BP						
  exc_task_build.go:108	0xe2856a		e86d0865ff		CALL 0x478ddc							
  exc_task_build.go:108	0xe2856f		488b6d00		MOVQ 0(BP), BP							
  exc_task_build.go:118	0xe28573		488b4c2478		MOVQ 0x78(SP), CX						
  exc_task_build.go:118	0xe28578		48ffc1			INCQ CX								
  exc_task_build.go:118	0xe2857b		48894c2478		MOVQ CX, 0x78(SP)						
  itoa.go:35		0xe28580		488b442440		MOVQ 0x40(SP), AX						
  itoa.go:35		0xe28585		bb0a000000		MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2858a		e831736cff		CALL strconv.FormatInt(SB)					
  exc_task_build.go:118	0xe2858f		488b8c2498010000	MOVQ 0x198(SP), CX						
  exc_task_build.go:118	0xe28597		4889c7			MOVQ AX, DI							
  exc_task_build.go:118	0xe2859a		4889de			MOVQ BX, SI							
  exc_task_build.go:118	0xe2859d		31c0			XORL AX, AX							
  exc_task_build.go:118	0xe2859f		488b9c2490010000	MOVQ 0x190(SP), BX						
  exc_task_build.go:118	0xe285a7		e854ce62ff		CALL runtime.concatstring2(SB)					
  exc_task_build.go:118	0xe285ac		488b4c2470		MOVQ 0x70(SP), CX						
  exc_task_build.go:118	0xe285b1		488b542478		MOVQ 0x78(SP), DX						
  exc_task_build.go:118	0xe285b6		4839d1			CMPQ CX, DX							
  exc_task_build.go:118	0xe285b9		720a			JB 0xe285c5							
  exc_task_build.go:118	0xe285bb		488bb42498000000	MOVQ 0x98(SP), SI						
  exc_task_build.go:118	0xe285c3		eb3c			JMP 0xe28601							
  exc_task_build.go:118	0xe285c5		4889842480000000	MOVQ AX, 0x80(SP)						
  exc_task_build.go:118	0xe285cd		48895c2478		MOVQ BX, 0x78(SP)						
  exc_task_build.go:118	0xe285d2		488b842498000000	MOVQ 0x98(SP), AX						
  exc_task_build.go:118	0xe285da		4889d3			MOVQ DX, BX							
  exc_task_build.go:118	0xe285dd		bf01000000		MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:118	0xe285e2		488d3537a32100		LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:118	0xe285e9		e8529664ff		CALL runtime.growslice(SB)					
  exc_task_build.go:118	0xe285ee		4889c6			MOVQ AX, SI							
  exc_task_build.go:118	0xe285f1		4889da			MOVQ BX, DX							
  exc_task_build.go:118	0xe285f4		488b842480000000	MOVQ 0x80(SP), AX						
  exc_task_build.go:118	0xe285fc		488b5c2478		MOVQ 0x78(SP), BX						
  exc_task_build.go:118	0xe28601		4c8d52ff		LEAQ -0x1(DX), R10						
  exc_task_build.go:118	0xe28605		49c1e204		SHLQ $__subsystem__+1(SB), R10					
  exc_task_build.go:118	0xe28609		4a895c1608		MOVQ BX, 0x8(SI)(R10*1)						
  exc_task_build.go:118	0xe2860e		833d3b55730200		CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:118	0xe28615		0f8471fdffff		JE 0xe2838c							
  exc_task_build.go:118	0xe2861b		0f1f440000		NOPL 0(AX)(AX*1)						
  exc_task_build.go:118	0xe28620		e81bfe64ff		CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:118	0xe28625		498903			MOVQ AX, 0(R11)							
  exc_task_build.go:118	0xe28628		4e8b2416		MOVQ 0(SI)(R10*1), R12						
  exc_task_build.go:118	0xe2862c		4d896308		MOVQ R12, 0x8(R11)						
  exc_task_build.go:118	0xe28630		e957fdffff		JMP 0xe2838c							
  exc_task_build.go:121	0xe28635		4d89d9			MOVQ R11, R9							
  exc_task_build.go:121	0xe28638		4881c480010000		ADDQ $.file+307(SB), SP						
  exc_task_build.go:121	0xe2863f		5d			POPQ BP								
  exc_task_build.go:121	0xe28640		c3			RET								
  exc_task_build.go:106	0xe28641		4889442420		MOVQ AX, 0x20(SP)						
  exc_task_build.go:106	0xe28646		48895c2428		MOVQ BX, 0x28(SP)						
  exc_task_build.go:106	0xe2864b		48894c2430		MOVQ CX, 0x30(SP)						
  exc_task_build.go:106	0xe28650		48897c2438		MOVQ DI, 0x38(SP)						
  exc_task_build.go:106	0xe28655		4889742440		MOVQ SI, 0x40(SP)						
  exc_task_build.go:106	0xe2865a		4c89442448		MOVQ R8, 0x48(SP)						
  exc_task_build.go:106	0xe2865f		4c894c2450		MOVQ R9, 0x50(SP)						
  exc_task_build.go:106	0xe28664		4c89542458		MOVQ R10, 0x58(SP)						
  exc_task_build.go:106	0xe28669		4c895c2460		MOVQ R11, 0x60(SP)						
  exc_task_build.go:106	0xe2866e		e86dde64ff		CALL runtime.morestack_noctxt.abi0(SB)				
  exc_task_build.go:106	0xe28673		488b442420		MOVQ 0x20(SP), AX						
  exc_task_build.go:106	0xe28678		488b5c2428		MOVQ 0x28(SP), BX						
  exc_task_build.go:106	0xe2867d		488b4c2430		MOVQ 0x30(SP), CX						
  exc_task_build.go:106	0xe28682		488b7c2438		MOVQ 0x38(SP), DI						
  exc_task_build.go:106	0xe28687		488b742440		MOVQ 0x40(SP), SI						
  exc_task_build.go:106	0xe2868c		4c8b442448		MOVQ 0x48(SP), R8						
  exc_task_build.go:106	0xe28691		4c8b4c2450		MOVQ 0x50(SP), R9						
  exc_task_build.go:106	0xe28696		4c8b542458		MOVQ 0x58(SP), R10						
  exc_task_build.go:106	0xe2869b		4c8b5c2460		MOVQ 0x60(SP), R11						
  exc_task_build.go:106	0xe286a0		e99bfcffff		JMP CAS-Backend/pkg/diapdu.appendPathMiddleMoveTasks(SB)	
  :-1			0xe286a5		cc			INT $__subsystem__(SB)						
  :-1			0xe286a6		cc			INT $__subsystem__(SB)						
  :-1			0xe286a7		cc			INT $__subsystem__(SB)						
  :-1			0xe286a8		cc			INT $__subsystem__(SB)						
  :-1			0xe286a9		cc			INT $__subsystem__(SB)						
  :-1			0xe286aa		cc			INT $__subsystem__(SB)						
  :-1			0xe286ab		cc			INT $__subsystem__(SB)						
  :-1			0xe286ac		cc			INT $__subsystem__(SB)						
  :-1			0xe286ad		cc			INT $__subsystem__(SB)						
  :-1			0xe286ae		cc			INT $__subsystem__(SB)						
  :-1			0xe286af		cc			INT $__subsystem__(SB)						
  :-1			0xe286b0		cc			INT $__subsystem__(SB)						
  :-1			0xe286b1		cc			INT $__subsystem__(SB)						
  :-1			0xe286b2		cc			INT $__subsystem__(SB)						
  :-1			0xe286b3		cc			INT $__subsystem__(SB)						
  :-1			0xe286b4		cc			INT $__subsystem__(SB)						
  :-1			0xe286b5		cc			INT $__subsystem__(SB)						
  :-1			0xe286b6		cc			INT $__subsystem__(SB)						
  :-1			0xe286b7		cc			INT $__subsystem__(SB)						
  :-1			0xe286b8		cc			INT $__subsystem__(SB)						
  :-1			0xe286b9		cc			INT $__subsystem__(SB)						
  :-1			0xe286ba		cc			INT $__subsystem__(SB)						
  :-1			0xe286bb		cc			INT $__subsystem__(SB)						
  :-1			0xe286bc		cc			INT $__subsystem__(SB)						
  :-1			0xe286bd		cc			INT $__subsystem__(SB)						
  :-1			0xe286be		cc			INT $__subsystem__(SB)						
  :-1			0xe286bf		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.appendPathAllMoveTasks(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/exc_task_build.go
  exc_task_build.go:124	0xe286c0		4c8da424f0feffff	LEAQ 0xfffffef0(SP), R12				
  exc_task_build.go:124	0xe286c8		4d3b6610		CMPQ R12, 0x10(R14)					
  exc_task_build.go:124	0xe286cc		0f86a8070000		JBE 0xe28e7a						
  exc_task_build.go:124	0xe286d2		55			PUSHQ BP						
  exc_task_build.go:124	0xe286d3		4889e5			MOVQ SP, BP						
  exc_task_build.go:124	0xe286d6		4881ec88010000		SUBQ $.file+315(SB), SP					
  exc_task_build.go:124	0xe286dd		48898424b0010000	MOVQ AX, 0x1b0(SP)					
  exc_task_build.go:124	0xe286e5		4889bc24c8010000	MOVQ DI, 0x1c8(SP)					
  exc_task_build.go:124	0xe286ed		4c898c24e0010000	MOVQ R9, 0x1e0(SP)					
  exc_task_build.go:69	0xe286f5		f20f100d5bf10302	MOVSD_XMM $f64.3fb604189374bc6a(SB), X1			
  exc_task_build.go:69	0xe286fd		660f2ec8		UCOMISD X0, X1						
  exc_task_build.go:69	0xe28701		7608			JBE 0xe2870b						
  exc_task_build.go:69	0xe28703		f20f100565f10302	MOVSD_XMM $f64.3fe0000000000000(SB), X0			
  exc_task_build.go:125	0xe2870b		f20f11442440		MOVSD_XMM X0, 0x40(SP)					
  exc_task_build.go:69	0xe28711		4c898c24e0010000	MOVQ R9, 0x1e0(SP)					
  exc_task_build.go:69	0xe28719		4c899424e8010000	MOVQ R10, 0x1e8(SP)					
  exc_task_build.go:69	0xe28721		ba01000000		MOVL $__minor_os_version__(SB), DX			
  exc_task_build.go:157	0xe28726		4c8b9c24a8010000	MOVQ 0x1a8(SP), R11					
  exc_task_build.go:126	0xe2872e		eb33			JMP 0xe28763						
  exc_task_build.go:126	0xe28730		4c8b642450		MOVQ 0x50(SP), R12					
  exc_task_build.go:126	0xe28735		49ffc4			INCQ R12						
  exc_task_build.go:142	0xe28738		4c8b8c24e0010000	MOVQ 0x1e0(SP), R9					
  exc_task_build.go:133	0xe28740		f20f10442440		MOVSD_XMM 0x40(SP), X0					
  exc_task_build.go:157	0xe28746		4d89d3			MOVQ R10, R11						
  exc_task_build.go:164	0xe28749		4989c8			MOVQ CX, R8						
  exc_task_build.go:126	0xe2874c		4c8b9424e8010000	MOVQ 0x1e8(SP), R10					
  exc_task_build.go:154	0xe28754		4889c1			MOVQ AX, CX						
  exc_task_build.go:154	0xe28757		4889f8			MOVQ DI, AX						
  exc_task_build.go:164	0xe2875a		4889f7			MOVQ SI, DI						
  exc_task_build.go:164	0xe2875d		4889d6			MOVQ DX, SI						
  exc_task_build.go:126	0xe28760		4c89e2			MOVQ R12, DX						
  exc_task_build.go:126	0xe28763		4939d2			CMPQ R10, DX						
  exc_task_build.go:126	0xe28766		0f8e02070000		JLE 0xe28e6e						
  exc_task_build.go:126	0xe2876c		4889542450		MOVQ DX, 0x50(SP)					
  exc_task_build.go:154	0xe28771		48898c2480000000	MOVQ CX, 0x80(SP)					
  exc_task_build.go:154	0xe28779		48898424a0000000	MOVQ AX, 0xa0(SP)					
  exc_task_build.go:164	0xe28781		4889bc2498000000	MOVQ DI, 0x98(SP)					
  exc_task_build.go:164	0xe28789		4c89442478		MOVQ R8, 0x78(SP)					
  exc_task_build.go:164	0xe2878e		4889742470		MOVQ SI, 0x70(SP)					
  exc_task_build.go:157	0xe28793		4c895c2448		MOVQ R11, 0x48(SP)					
  exc_task_build.go:157	0xe28798		0f1f840000000000	NOPL 0(AX)(AX*1)					
  exc_task_build.go:127	0xe287a0		4883fa02		CMPQ DX, $__minor_os_version__+1(SB)			
  exc_task_build.go:127	0xe287a4		0f8483040000		JE 0xe28c2d						
  exc_task_build.go:140	0xe287aa		4883fa01		CMPQ DX, $__minor_os_version__(SB)			
  exc_task_build.go:140	0xe287ae		0f8524020000		JNE 0xe289d8						
  exc_task_build.go:141	0xe287b4		488d4b01		LEAQ 0x1(BX), CX					
  exc_task_build.go:141	0xe287b8		48894c2468		MOVQ CX, 0x68(SP)					
  itoa.go:35		0xe287bd		4c89d8			MOVQ R11, AX						
  itoa.go:35		0xe287c0		bb0a000000		MOVL $__major_os_version__+4(SB), BX			
  itoa.go:35		0xe287c5		e8f6706cff		CALL strconv.FormatInt(SB)				
  exc_task_build.go:149	0xe287ca		488dbc24a8000000	LEAQ 0xa8(SP), DI					
  exc_task_build.go:149	0xe287d2		488d3587750502		LEAQ CAS-Backend/pkg/diapdu..stmp_9(SB), SI		
  exc_task_build.go:149	0xe287d9		0f1f8000000000		NOPL 0(AX)						
  exc_task_build.go:149	0xe287e0		48896c24f0		MOVQ BP, -0x10(SP)					
  exc_task_build.go:149	0xe287e5		488d6c24f0		LEAQ -0x10(SP), BP					
  exc_task_build.go:149	0xe287ea		e8ed0565ff		CALL 0x478ddc						
  exc_task_build.go:149	0xe287ef		488b6d00		MOVQ 0(BP), BP						
  exc_task_build.go:142	0xe287f3		488b8c24e0010000	MOVQ 0x1e0(SP), CX					
  exc_task_build.go:142	0xe287fb		488b11			MOVQ 0(CX), DX						
  exc_task_build.go:142	0xe287fe		488b7108		MOVQ 0x8(CX), SI					
  exc_task_build.go:142	0xe28802		48899424a8000000	MOVQ DX, 0xa8(SP)					
  exc_task_build.go:142	0xe2880a		4889b424b0000000	MOVQ SI, 0xb0(SP)					
  exc_task_build.go:143	0xe28812		488b5110		MOVQ 0x10(CX), DX					
  exc_task_build.go:143	0xe28816		488b7118		MOVQ 0x18(CX), SI					
  exc_task_build.go:143	0xe2881a		48899424b8000000	MOVQ DX, 0xb8(SP)					
  exc_task_build.go:143	0xe28822		4889b424c0000000	MOVQ SI, 0xc0(SP)					
  exc_task_build.go:144	0xe2882a		4889c7			MOVQ AX, DI						
  exc_task_build.go:144	0xe2882d		4889de			MOVQ BX, SI						
  exc_task_build.go:144	0xe28830		31c0			XORL AX, AX						
  exc_task_build.go:144	0xe28832		488b9c2498010000	MOVQ 0x198(SP), BX					
  exc_task_build.go:144	0xe2883a		488b8c24a0010000	MOVQ 0x1a0(SP), CX					
  exc_task_build.go:144	0xe28842		e8b9cb62ff		CALL runtime.concatstring2(SB)				
  exc_task_build.go:144	0xe28847		48898424c8000000	MOVQ AX, 0xc8(SP)					
  exc_task_build.go:144	0xe2884f		48899c24d0000000	MOVQ BX, 0xd0(SP)					
  exc_task_build.go:141	0xe28857		488b8c2480000000	MOVQ 0x80(SP), CX					
  exc_task_build.go:141	0xe2885f		488b5c2468		MOVQ 0x68(SP), BX					
  exc_task_build.go:141	0xe28864		4839d9			CMPQ CX, BX						
  exc_task_build.go:141	0xe28867		720a			JB 0xe28873						
  exc_task_build.go:141	0xe28869		488b8424a0000000	MOVQ 0xa0(SP), AX					
  exc_task_build.go:141	0xe28871		eb19			JMP 0xe2888c						
  exc_task_build.go:141	0xe28873		488b8424a0000000	MOVQ 0xa0(SP), AX					
  exc_task_build.go:141	0xe2887b		bf01000000		MOVL $__minor_os_version__(SB), DI			
  exc_task_build.go:141	0xe28880		488d35f9983100		LEAQ runtime.types+1429888(SB), SI			
  exc_task_build.go:141	0xe28887		e8b49364ff		CALL runtime.growslice(SB)				
  exc_task_build.go:141	0xe2888c		48898424a0000000	MOVQ AX, 0xa0(SP)					
  exc_task_build.go:141	0xe28894		48899c2480000000	MOVQ BX, 0x80(SP)					
  exc_task_build.go:141	0xe2889c		48894c2468		MOVQ CX, 0x68(SP)					
  exc_task_build.go:141	0xe288a1		4869d3e0000000		IMULQ $.file+147(SB), BX, DX				
  exc_task_build.go:141	0xe288a8		488d3c10		LEAQ 0(AX)(DX*1), DI					
  exc_task_build.go:141	0xe288ac		488dbf20ffffff		LEAQ 0xffffff20(DI), DI					
  exc_task_build.go:141	0xe288b3		833d9652730200		CMPL runtime.writeBarrier(SB), $0x0			
  exc_task_build.go:141	0xe288ba		7427			JE 0xe288e3						
  exc_task_build.go:141	0xe288bc		4889bc2490000000	MOVQ DI, 0x90(SP)					
  exc_task_build.go:141	0xe288c4		488d05b5983100		LEAQ runtime.types+1429888(SB), AX			
  exc_task_build.go:141	0xe288cb		4889fb			MOVQ DI, BX						
  exc_task_build.go:141	0xe288ce		488d8c24a8000000	LEAQ 0xa8(SP), CX					
  exc_task_build.go:141	0xe288d6		e845c65eff		CALL runtime.wbMove(SB)					
  exc_task_build.go:141	0xe288db		488bbc2490000000	MOVQ 0x90(SP), DI					
  exc_task_build.go:141	0xe288e3		488db424a8000000	LEAQ 0xa8(SP), SI					
  exc_task_build.go:141	0xe288eb		48896c24f0		MOVQ BP, -0x10(SP)					
  exc_task_build.go:141	0xe288f0		488d6c24f0		LEAQ -0x10(SP), BP					
  exc_task_build.go:141	0xe288f5		e8e20465ff		CALL 0x478ddc						
  exc_task_build.go:141	0xe288fa		488b6d00		MOVQ 0(BP), BP						
  exc_task_build.go:151	0xe288fe		488b4c2470		MOVQ 0x70(SP), CX					
  exc_task_build.go:151	0xe28903		48ffc1			INCQ CX							
  exc_task_build.go:151	0xe28906		48894c2470		MOVQ CX, 0x70(SP)					
  itoa.go:35		0xe2890b		488b442448		MOVQ 0x48(SP), AX					
  itoa.go:35		0xe28910		bb0a000000		MOVL $__major_os_version__+4(SB), BX			
  itoa.go:35		0xe28915		e8a66f6cff		CALL strconv.FormatInt(SB)				
  exc_task_build.go:151	0xe2891a		488b8c24a0010000	MOVQ 0x1a0(SP), CX					
  exc_task_build.go:151	0xe28922		4889c7			MOVQ AX, DI						
  exc_task_build.go:151	0xe28925		4889de			MOVQ BX, SI						
  exc_task_build.go:151	0xe28928		31c0			XORL AX, AX						
  exc_task_build.go:151	0xe2892a		488b9c2498010000	MOVQ 0x198(SP), BX					
  exc_task_build.go:151	0xe28932		e8c9ca62ff		CALL runtime.concatstring2(SB)				
  exc_task_build.go:151	0xe28937		488b4c2478		MOVQ 0x78(SP), CX					
  exc_task_build.go:151	0xe2893c		488b542470		MOVQ 0x70(SP), DX					
  exc_task_build.go:151	0xe28941		4839d1			CMPQ CX, DX						
  exc_task_build.go:151	0xe28944		720a			JB 0xe28950						
  exc_task_build.go:151	0xe28946		488bb42498000000	MOVQ 0x98(SP), SI					
  exc_task_build.go:151	0xe2894e		eb3c			JMP 0xe2898c						
  exc_task_build.go:151	0xe28950		4889842488000000	MOVQ AX, 0x88(SP)					
  exc_task_build.go:151	0xe28958		48895c2478		MOVQ BX, 0x78(SP)					
  exc_task_build.go:151	0xe2895d		488b842498000000	MOVQ 0x98(SP), AX					
  exc_task_build.go:151	0xe28965		4889d3			MOVQ DX, BX						
  exc_task_build.go:151	0xe28968		bf01000000		MOVL $__minor_os_version__(SB), DI			
  exc_task_build.go:151	0xe2896d		488d35ac9f2100		LEAQ runtime.types+383264(SB), SI			
  exc_task_build.go:151	0xe28974		e8c79264ff		CALL runtime.growslice(SB)				
  exc_task_build.go:151	0xe28979		4889c6			MOVQ AX, SI						
  exc_task_build.go:151	0xe2897c		4889da			MOVQ BX, DX						
  exc_task_build.go:151	0xe2897f		488b842488000000	MOVQ 0x88(SP), AX					
  exc_task_build.go:151	0xe28987		488b5c2478		MOVQ 0x78(SP), BX					
  exc_task_build.go:151	0xe2898c		4c8d52ff		LEAQ -0x1(DX), R10					
  exc_task_build.go:151	0xe28990		49c1e204		SHLQ $__subsystem__+1(SB), R10				
  exc_task_build.go:151	0xe28994		4a895c1608		MOVQ BX, 0x8(SI)(R10*1)					
  exc_task_build.go:151	0xe28999		833db051730200		CMPL runtime.writeBarrier(SB), $0x0			
  exc_task_build.go:151	0xe289a0		7410			JE 0xe289b2						
  exc_task_build.go:151	0xe289a2		e899fa64ff		CALL runtime.gcWriteBarrier2(SB)			
  exc_task_build.go:151	0xe289a7		498903			MOVQ AX, 0(R11)						
  exc_task_build.go:151	0xe289aa		4e8b2416		MOVQ 0(SI)(R10*1), R12					
  exc_task_build.go:151	0xe289ae		4d896308		MOVQ R12, 0x8(R11)					
  exc_task_build.go:151	0xe289b2		4a890416		MOVQ AX, 0(SI)(R10*1)					
  exc_task_build.go:152	0xe289b6		4c8b542448		MOVQ 0x48(SP), R10					
  exc_task_build.go:152	0xe289bb		49ffc2			INCQ R10						
  exc_task_build.go:154	0xe289be		488b442468		MOVQ 0x68(SP), AX					
  exc_task_build.go:154	0xe289c3		488b9c2480000000	MOVQ 0x80(SP), BX					
  exc_task_build.go:154	0xe289cb		488bbc24a0000000	MOVQ 0xa0(SP), DI					
  exc_task_build.go:152	0xe289d3		e958fdffff		JMP 0xe28730						
  exc_task_build.go:154	0xe289d8		488d4b01		LEAQ 0x1(BX), CX					
  exc_task_build.go:154	0xe289dc		48894c2468		MOVQ CX, 0x68(SP)					
  exc_task_build.go:155	0xe289e1		488d72ff		LEAQ -0x1(DX), SI					
  exc_task_build.go:155	0xe289e5		48c1e604		SHLQ $__subsystem__+1(SB), SI				
  exc_task_build.go:155	0xe289e9		4889742460		MOVQ SI, 0x60(SP)					
  exc_task_build.go:156	0xe289ee		48c1e204		SHLQ $__subsystem__+1(SB), DX				
  exc_task_build.go:156	0xe289f2		4889542458		MOVQ DX, 0x58(SP)					
  itoa.go:35		0xe289f7		4c89d8			MOVQ R11, AX						
  itoa.go:35		0xe289fa		bb0a000000		MOVL $__major_os_version__+4(SB), BX			
  itoa.go:35		0xe289ff		90			NOPL							
  itoa.go:35		0xe28a00		e8bb6e6cff		CALL strconv.FormatInt(SB)				
  exc_task_build.go:162	0xe28a05		488dbc24a8000000	LEAQ 0xa8(SP), DI					
  exc_task_build.go:162	0xe28a0d		488d352c740502		LEAQ CAS-Backend/pkg/diapdu..stmp_10(SB), SI		
  exc_task_build.go:162	0xe28a14		660f1f840000000000	NOPW 0(AX)(AX*1)					
  exc_task_build.go:162	0xe28a1d		0f1f00			NOPL 0(AX)						
  exc_task_build.go:162	0xe28a20		48896c24f0		MOVQ BP, -0x10(SP)					
  exc_task_build.go:162	0xe28a25		488d6c24f0		LEAQ -0x10(SP), BP					
  exc_task_build.go:162	0xe28a2a		e8ad0365ff		CALL 0x478ddc						
  exc_task_build.go:162	0xe28a2f		488b6d00		MOVQ 0(BP), BP						
  exc_task_build.go:155	0xe28a33		488b4c2460		MOVQ 0x60(SP), CX					
  exc_task_build.go:155	0xe28a38		488b9424e0010000	MOVQ 0x1e0(SP), DX					
  exc_task_build.go:155	0xe28a40		488b340a		MOVQ 0(DX)(CX*1), SI					
  exc_task_build.go:155	0xe28a44		488b4c0a08		MOVQ 0x8(DX)(CX*1), CX					
  exc_task_build.go:155	0xe28a49		4889b424a8000000	MOVQ SI, 0xa8(SP)					
  exc_task_build.go:155	0xe28a51		48898c24b0000000	MOVQ CX, 0xb0(SP)					
  exc_task_build.go:156	0xe28a59		488b4c2458		MOVQ 0x58(SP), CX					
  exc_task_build.go:156	0xe28a5e		488b340a		MOVQ 0(DX)(CX*1), SI					
  exc_task_build.go:156	0xe28a62		488b4c0a08		MOVQ 0x8(DX)(CX*1), CX					
  exc_task_build.go:156	0xe28a67		4889b424b8000000	MOVQ SI, 0xb8(SP)					
  exc_task_build.go:156	0xe28a6f		48898c24c0000000	MOVQ CX, 0xc0(SP)					
  exc_task_build.go:157	0xe28a77		488b8c24a0010000	MOVQ 0x1a0(SP), CX					
  exc_task_build.go:157	0xe28a7f		4889c7			MOVQ AX, DI						
  exc_task_build.go:157	0xe28a82		4889de			MOVQ BX, SI						
  exc_task_build.go:157	0xe28a85		31c0			XORL AX, AX						
  exc_task_build.go:157	0xe28a87		488b9c2498010000	MOVQ 0x198(SP), BX					
  exc_task_build.go:157	0xe28a8f		e86cc962ff		CALL runtime.concatstring2(SB)				
  exc_task_build.go:157	0xe28a94		48898424c8000000	MOVQ AX, 0xc8(SP)					
  exc_task_build.go:157	0xe28a9c		48899c24d0000000	MOVQ BX, 0xd0(SP)					
  exc_task_build.go:154	0xe28aa4		488b8c2480000000	MOVQ 0x80(SP), CX					
  exc_task_build.go:154	0xe28aac		488b5c2468		MOVQ 0x68(SP), BX					
  exc_task_build.go:154	0xe28ab1		4839d9			CMPQ CX, BX						
  exc_task_build.go:154	0xe28ab4		720c			JB 0xe28ac2						
  exc_task_build.go:154	0xe28ab6		488b8424a0000000	MOVQ 0xa0(SP), AX					
  exc_task_build.go:154	0xe28abe		6690			NOPW							
  exc_task_build.go:154	0xe28ac0		eb19			JMP 0xe28adb						
  exc_task_build.go:154	0xe28ac2		488b8424a0000000	MOVQ 0xa0(SP), AX					
  exc_task_build.go:154	0xe28aca		bf01000000		MOVL $__minor_os_version__(SB), DI			
  exc_task_build.go:154	0xe28acf		488d35aa963100		LEAQ runtime.types+1429888(SB), SI			
  exc_task_build.go:154	0xe28ad6		e8659164ff		CALL runtime.growslice(SB)				
  exc_task_build.go:154	0xe28adb		48898424a0000000	MOVQ AX, 0xa0(SP)					
  exc_task_build.go:154	0xe28ae3		48899c2480000000	MOVQ BX, 0x80(SP)					
  exc_task_build.go:154	0xe28aeb		48894c2468		MOVQ CX, 0x68(SP)					
  exc_task_build.go:154	0xe28af0		4869d3e0000000		IMULQ $.file+147(SB), BX, DX				
  exc_task_build.go:154	0xe28af7		488d3c10		LEAQ 0(AX)(DX*1), DI					
  exc_task_build.go:154	0xe28afb		488dbf20ffffff		LEAQ 0xffffff20(DI), DI					
  exc_task_build.go:154	0xe28b02		833d4750730200		CMPL runtime.writeBarrier(SB), $0x0			
  exc_task_build.go:154	0xe28b09		7427			JE 0xe28b32						
  exc_task_build.go:154	0xe28b0b		4889bc2490000000	MOVQ DI, 0x90(SP)					
  exc_task_build.go:154	0xe28b13		488d0566963100		LEAQ runtime.types+1429888(SB), AX			
  exc_task_build.go:154	0xe28b1a		4889fb			MOVQ DI, BX						
  exc_task_build.go:154	0xe28b1d		488d8c24a8000000	LEAQ 0xa8(SP), CX					
  exc_task_build.go:154	0xe28b25		e8f6c35eff		CALL runtime.wbMove(SB)					
  exc_task_build.go:154	0xe28b2a		488bbc2490000000	MOVQ 0x90(SP), DI					
  exc_task_build.go:154	0xe28b32		488db424a8000000	LEAQ 0xa8(SP), SI					
  exc_task_build.go:154	0xe28b3a		660f1f440000		NOPW 0(AX)(AX*1)					
  exc_task_build.go:154	0xe28b40		48896c24f0		MOVQ BP, -0x10(SP)					
  exc_task_build.go:154	0xe28b45		488d6c24f0		LEAQ -0x10(SP), BP					
  exc_task_build.go:154	0xe28b4a		e88d0265ff		CALL 0x478ddc						
  exc_task_build.go:154	0xe28b4f		488b6d00		MOVQ 0(BP), BP						
  exc_task_build.go:164	0xe28b53		488b4c2470		MOVQ 0x70(SP), CX					
  exc_task_build.go:164	0xe28b58		48ffc1			INCQ CX							
  exc_task_build.go:164	0xe28b5b		48894c2470		MOVQ CX, 0x70(SP)					
  itoa.go:35		0xe28b60		488b442448		MOVQ 0x48(SP), AX					
  itoa.go:35		0xe28b65		bb0a000000		MOVL $__major_os_version__+4(SB), BX			
  itoa.go:35		0xe28b6a		e8516d6cff		CALL strconv.FormatInt(SB)				
  exc_task_build.go:164	0xe28b6f		488b8c24a0010000	MOVQ 0x1a0(SP), CX					
  exc_task_build.go:164	0xe28b77		4889c7			MOVQ AX, DI						
  exc_task_build.go:164	0xe28b7a		4889de			MOVQ BX, SI						
  exc_task_build.go:164	0xe28b7d		31c0			XORL AX, AX						
  exc_task_build.go:164	0xe28b7f		488b9c2498010000	MOVQ 0x198(SP), BX					
  exc_task_build.go:164	0xe28b87		e874c862ff		CALL runtime.concatstring2(SB)				
  exc_task_build.go:164	0xe28b8c		488b4c2478		MOVQ 0x78(SP), CX					
  exc_task_build.go:164	0xe28b91		488b542470		MOVQ 0x70(SP), DX					
  exc_task_build.go:164	0xe28b96		4839d1			CMPQ CX, DX						
  exc_task_build.go:164	0xe28b99		720a			JB 0xe28ba5						
  exc_task_build.go:164	0xe28b9b		488bb42498000000	MOVQ 0x98(SP), SI					
  exc_task_build.go:164	0xe28ba3		eb3c			JMP 0xe28be1						
  exc_task_build.go:164	0xe28ba5		4889842488000000	MOVQ AX, 0x88(SP)					
  exc_task_build.go:164	0xe28bad		48895c2478		MOVQ BX, 0x78(SP)					
  exc_task_build.go:164	0xe28bb2		488b842498000000	MOVQ 0x98(SP), AX					
  exc_task_build.go:164	0xe28bba		4889d3			MOVQ DX, BX						
  exc_task_build.go:164	0xe28bbd		bf01000000		MOVL $__minor_os_version__(SB), DI			
  exc_task_build.go:164	0xe28bc2		488d35579d2100		LEAQ runtime.types+383264(SB), SI			
  exc_task_build.go:164	0xe28bc9		e8729064ff		CALL runtime.growslice(SB)				
  exc_task_build.go:164	0xe28bce		4889c6			MOVQ AX, SI						
  exc_task_build.go:164	0xe28bd1		4889da			MOVQ BX, DX						
  exc_task_build.go:164	0xe28bd4		488b842488000000	MOVQ 0x88(SP), AX					
  exc_task_build.go:164	0xe28bdc		488b5c2478		MOVQ 0x78(SP), BX					
  exc_task_build.go:164	0xe28be1		4c8d52ff		LEAQ -0x1(DX), R10					
  exc_task_build.go:164	0xe28be5		49c1e204		SHLQ $__subsystem__+1(SB), R10				
  exc_task_build.go:164	0xe28be9		4a895c1608		MOVQ BX, 0x8(SI)(R10*1)					
  exc_task_build.go:164	0xe28bee		833d5b4f730200		CMPL runtime.writeBarrier(SB), $0x0			
  exc_task_build.go:164	0xe28bf5		7410			JE 0xe28c07						
  exc_task_build.go:164	0xe28bf7		e844f864ff		CALL runtime.gcWriteBarrier2(SB)			
  exc_task_build.go:164	0xe28bfc		498903			MOVQ AX, 0(R11)						
  exc_task_build.go:164	0xe28bff		4e8b2416		MOVQ 0(SI)(R10*1), R12					
  exc_task_build.go:164	0xe28c03		4d896308		MOVQ R12, 0x8(R11)					
  exc_task_build.go:164	0xe28c07		4a890416		MOVQ AX, 0(SI)(R10*1)					
  exc_task_build.go:165	0xe28c0b		4c8b542448		MOVQ 0x48(SP), R10					
  exc_task_build.go:165	0xe28c10		49ffc2			INCQ R10						
  exc_task_build.go:154	0xe28c13		488b442468		MOVQ 0x68(SP), AX					
  exc_task_build.go:154	0xe28c18		488b9c2480000000	MOVQ 0x80(SP), BX					
  exc_task_build.go:154	0xe28c20		488bbc24a0000000	MOVQ 0xa0(SP), DI					
  exc_task_build.go:165	0xe28c28		e903fbffff		JMP 0xe28730						
  exc_task_build.go:128	0xe28c2d		488d4b01		LEAQ 0x1(BX), CX					
  exc_task_build.go:128	0xe28c31		48894c2468		MOVQ CX, 0x68(SP)					
  itoa.go:35		0xe28c36		4c89d8			MOVQ R11, AX						
  itoa.go:35		0xe28c39		bb0a000000		MOVL $__major_os_version__+4(SB), BX			
  itoa.go:35		0xe28c3e		6690			NOPW							
  itoa.go:35		0xe28c40		e87b6c6cff		CALL strconv.FormatInt(SB)				
  exc_task_build.go:136	0xe28c45		488dbc24a8000000	LEAQ 0xa8(SP), DI					
  exc_task_build.go:136	0xe28c4d		488d352c700502		LEAQ CAS-Backend/pkg/diapdu..stmp_8(SB), SI		
  exc_task_build.go:136	0xe28c54		660f1f840000000000	NOPW 0(AX)(AX*1)					
  exc_task_build.go:136	0xe28c5d		0f1f00			NOPL 0(AX)						
  exc_task_build.go:136	0xe28c60		48896c24f0		MOVQ BP, -0x10(SP)					
  exc_task_build.go:136	0xe28c65		488d6c24f0		LEAQ -0x10(SP), BP					
  exc_task_build.go:136	0xe28c6a		e86d0165ff		CALL 0x478ddc						
  exc_task_build.go:136	0xe28c6f		488b6d00		MOVQ 0(BP), BP						
  exc_task_build.go:129	0xe28c73		488b8c24e0010000	MOVQ 0x1e0(SP), CX					
  exc_task_build.go:129	0xe28c7b		488b5110		MOVQ 0x10(CX), DX					
  exc_task_build.go:129	0xe28c7f		488b7118		MOVQ 0x18(CX), SI					
  exc_task_build.go:129	0xe28c83		48899424a8000000	MOVQ DX, 0xa8(SP)					
  exc_task_build.go:129	0xe28c8b		4889b424b0000000	MOVQ SI, 0xb0(SP)					
  exc_task_build.go:130	0xe28c93		488b5120		MOVQ 0x20(CX), DX					
  exc_task_build.go:130	0xe28c97		488b7128		MOVQ 0x28(CX), SI					
  exc_task_build.go:130	0xe28c9b		48899424b8000000	MOVQ DX, 0xb8(SP)					
  exc_task_build.go:130	0xe28ca3		4889b424c0000000	MOVQ SI, 0xc0(SP)					
  exc_task_build.go:131	0xe28cab		4889c7			MOVQ AX, DI						
  exc_task_build.go:131	0xe28cae		4889de			MOVQ BX, SI						
  exc_task_build.go:131	0xe28cb1		31c0			XORL AX, AX						
  exc_task_build.go:131	0xe28cb3		488b9c2498010000	MOVQ 0x198(SP), BX					
  exc_task_build.go:131	0xe28cbb		488b8c24a0010000	MOVQ 0x1a0(SP), CX					
  exc_task_build.go:131	0xe28cc3		e838c762ff		CALL runtime.concatstring2(SB)				
  exc_task_build.go:131	0xe28cc8		48898424c8000000	MOVQ AX, 0xc8(SP)					
  exc_task_build.go:131	0xe28cd0		48899c24d0000000	MOVQ BX, 0xd0(SP)					
  exc_task_build.go:133	0xe28cd8		f20f10442440		MOVSD_XMM 0x40(SP), X0					
  exc_task_build.go:133	0xe28cde		f20f11842460010000	MOVSD_XMM X0, 0x160(SP)					
  exc_task_build.go:128	0xe28ce7		488b8c2480000000	MOVQ 0x80(SP), CX					
  exc_task_build.go:128	0xe28cef		488b5c2468		MOVQ 0x68(SP), BX					
  exc_task_build.go:128	0xe28cf4		4839d9			CMPQ CX, BX						
  exc_task_build.go:128	0xe28cf7		720a			JB 0xe28d03						
  exc_task_build.go:128	0xe28cf9		488b8424a0000000	MOVQ 0xa0(SP), AX					
  exc_task_build.go:128	0xe28d01		eb1f			JMP 0xe28d22						
  exc_task_build.go:128	0xe28d03		488b8424a0000000	MOVQ 0xa0(SP), AX					
  exc_task_build.go:128	0xe28d0b		bf01000000		MOVL $__minor_os_version__(SB), DI			
  exc_task_build.go:128	0xe28d10		488d3569943100		LEAQ runtime.types+1429888(SB), SI			
  exc_task_build.go:128	0xe28d17		e8248f64ff		CALL runtime.growslice(SB)				
  exc_task_build.go:133	0xe28d1c		f20f10442440		MOVSD_XMM 0x40(SP), X0					
  exc_task_build.go:128	0xe28d22		48898424a0000000	MOVQ AX, 0xa0(SP)					
  exc_task_build.go:128	0xe28d2a		48899c2480000000	MOVQ BX, 0x80(SP)					
  exc_task_build.go:128	0xe28d32		48894c2468		MOVQ CX, 0x68(SP)					
  exc_task_build.go:128	0xe28d37		4869d3e0000000		IMULQ $.file+147(SB), BX, DX				
  exc_task_build.go:128	0xe28d3e		488d3c10		LEAQ 0(AX)(DX*1), DI					
  exc_task_build.go:128	0xe28d42		488dbf20ffffff		LEAQ 0xffffff20(DI), DI					
  exc_task_build.go:128	0xe28d49		833d004e730200		CMPL runtime.writeBarrier(SB), $0x0			
  exc_task_build.go:128	0xe28d50		7427			JE 0xe28d79						
  exc_task_build.go:128	0xe28d52		4889bc2490000000	MOVQ DI, 0x90(SP)					
  exc_task_build.go:128	0xe28d5a		488d051f943100		LEAQ runtime.types+1429888(SB), AX			
  exc_task_build.go:128	0xe28d61		4889fb			MOVQ DI, BX						
  exc_task_build.go:128	0xe28d64		488d8c24a8000000	LEAQ 0xa8(SP), CX					
  exc_task_build.go:128	0xe28d6c		e8afc15eff		CALL runtime.wbMove(SB)					
  exc_task_build.go:128	0xe28d71		488bbc2490000000	MOVQ 0x90(SP), DI					
  exc_task_build.go:128	0xe28d79		488db424a8000000	LEAQ 0xa8(SP), SI					
  exc_task_build.go:128	0xe28d81		48896c24f0		MOVQ BP, -0x10(SP)					
  exc_task_build.go:128	0xe28d86		488d6c24f0		LEAQ -0x10(SP), BP					
  exc_task_build.go:128	0xe28d8b		e84c0065ff		CALL 0x478ddc						
  exc_task_build.go:128	0xe28d90		488b6d00		MOVQ 0(BP), BP						
  exc_task_build.go:138	0xe28d94		488b4c2470		MOVQ 0x70(SP), CX					
  exc_task_build.go:138	0xe28d99		48ffc1			INCQ CX							
  exc_task_build.go:138	0xe28d9c		48894c2470		MOVQ CX, 0x70(SP)					
  itoa.go:35		0xe28da1		488b442448		MOVQ 0x48(SP), AX					
  itoa.go:35		0xe28da6		bb0a000000		MOVL $__major_os_version__+4(SB), BX			
  itoa.go:35		0xe28dab		e8106b6cff		CALL strconv.FormatInt(SB)				
  exc_task_build.go:138	0xe28db0		488b8c24a0010000	MOVQ 0x1a0(SP), CX					
  exc_task_build.go:138	0xe28db8		4889c7			MOVQ AX, DI						
  exc_task_build.go:138	0xe28dbb		4889de			MOVQ BX, SI						
  exc_task_build.go:138	0xe28dbe		31c0			XORL AX, AX						
  exc_task_build.go:138	0xe28dc0		488b9c2498010000	MOVQ 0x198(SP), BX					
  exc_task_build.go:138	0xe28dc8		e833c662ff		CALL runtime.concatstring2(SB)				
  exc_task_build.go:138	0xe28dcd		488b4c2478		MOVQ 0x78(SP), CX					
  exc_task_build.go:138	0xe28dd2		488b542470		MOVQ 0x70(SP), DX					
  exc_task_build.go:138	0xe28dd7		4839d1			CMPQ CX, DX						
  exc_task_build.go:138	0xe28dda		720a			JB 0xe28de6						
  exc_task_build.go:138	0xe28ddc		488bb42498000000	MOVQ 0x98(SP), SI					
  exc_task_build.go:138	0xe28de4		eb3c			JMP 0xe28e22						
  exc_task_build.go:138	0xe28de6		4889842488000000	MOVQ AX, 0x88(SP)					
  exc_task_build.go:138	0xe28dee		48895c2478		MOVQ BX, 0x78(SP)					
  exc_task_build.go:138	0xe28df3		488b842498000000	MOVQ 0x98(SP), AX					
  exc_task_build.go:138	0xe28dfb		4889d3			MOVQ DX, BX						
  exc_task_build.go:138	0xe28dfe		bf01000000		MOVL $__minor_os_version__(SB), DI			
  exc_task_build.go:138	0xe28e03		488d35169b2100		LEAQ runtime.types+383264(SB), SI			
  exc_task_build.go:138	0xe28e0a		e8318e64ff		CALL runtime.growslice(SB)				
  exc_task_build.go:138	0xe28e0f		4889c6			MOVQ AX, SI						
  exc_task_build.go:138	0xe28e12		4889da			MOVQ BX, DX						
  exc_task_build.go:138	0xe28e15		488b842488000000	MOVQ 0x88(SP), AX					
  exc_task_build.go:138	0xe28e1d		488b5c2478		MOVQ 0x78(SP), BX					
  exc_task_build.go:138	0xe28e22		4c8d52ff		LEAQ -0x1(DX), R10					
  exc_task_build.go:138	0xe28e26		49c1e204		SHLQ $__subsystem__+1(SB), R10				
  exc_task_build.go:138	0xe28e2a		4a895c1608		MOVQ BX, 0x8(SI)(R10*1)					
  exc_task_build.go:138	0xe28e2f		833d1a4d730200		CMPL runtime.writeBarrier(SB), $0x0			
  exc_task_build.go:138	0xe28e36		7410			JE 0xe28e48						
  exc_task_build.go:138	0xe28e38		e803f664ff		CALL runtime.gcWriteBarrier2(SB)			
  exc_task_build.go:138	0xe28e3d		498903			MOVQ AX, 0(R11)						
  exc_task_build.go:138	0xe28e40		4e8b2416		MOVQ 0(SI)(R10*1), R12					
  exc_task_build.go:138	0xe28e44		4d896308		MOVQ R12, 0x8(R11)					
  exc_task_build.go:138	0xe28e48		4a890416		MOVQ AX, 0(SI)(R10*1)					
  exc_task_build.go:139	0xe28e4c		4c8b542448		MOVQ 0x48(SP), R10					
  exc_task_build.go:139	0xe28e51		49ffc2			INCQ R10						
  exc_task_build.go:154	0xe28e54		488b442468		MOVQ 0x68(SP), AX					
  exc_task_build.go:154	0xe28e59		488b9c2480000000	MOVQ 0x80(SP), BX					
  exc_task_build.go:154	0xe28e61		488bbc24a0000000	MOVQ 0xa0(SP), DI					
  exc_task_build.go:139	0xe28e69		e9c2f8ffff		JMP 0xe28730						
  exc_task_build.go:169	0xe28e6e		4d89d9			MOVQ R11, R9						
  exc_task_build.go:169	0xe28e71		4881c488010000		ADDQ $.file+315(SB), SP					
  exc_task_build.go:169	0xe28e78		5d			POPQ BP							
  exc_task_build.go:169	0xe28e79		c3			RET							
  exc_task_build.go:124	0xe28e7a		4889442420		MOVQ AX, 0x20(SP)					
  exc_task_build.go:124	0xe28e7f		48895c2428		MOVQ BX, 0x28(SP)					
  exc_task_build.go:124	0xe28e84		48894c2430		MOVQ CX, 0x30(SP)					
  exc_task_build.go:124	0xe28e89		48897c2438		MOVQ DI, 0x38(SP)					
  exc_task_build.go:124	0xe28e8e		4889742440		MOVQ SI, 0x40(SP)					
  exc_task_build.go:124	0xe28e93		4c89442448		MOVQ R8, 0x48(SP)					
  exc_task_build.go:124	0xe28e98		4c894c2450		MOVQ R9, 0x50(SP)					
  exc_task_build.go:124	0xe28e9d		4c89542458		MOVQ R10, 0x58(SP)					
  exc_task_build.go:124	0xe28ea2		4c895c2460		MOVQ R11, 0x60(SP)					
  exc_task_build.go:124	0xe28ea7		f20f11442468		MOVSD_XMM X0, 0x68(SP)					
  exc_task_build.go:124	0xe28ead		e82ed664ff		CALL runtime.morestack_noctxt.abi0(SB)			
  exc_task_build.go:124	0xe28eb2		488b442420		MOVQ 0x20(SP), AX					
  exc_task_build.go:124	0xe28eb7		488b5c2428		MOVQ 0x28(SP), BX					
  exc_task_build.go:124	0xe28ebc		488b4c2430		MOVQ 0x30(SP), CX					
  exc_task_build.go:124	0xe28ec1		488b7c2438		MOVQ 0x38(SP), DI					
  exc_task_build.go:124	0xe28ec6		488b742440		MOVQ 0x40(SP), SI					
  exc_task_build.go:124	0xe28ecb		4c8b442448		MOVQ 0x48(SP), R8					
  exc_task_build.go:124	0xe28ed0		4c8b4c2450		MOVQ 0x50(SP), R9					
  exc_task_build.go:124	0xe28ed5		4c8b542458		MOVQ 0x58(SP), R10					
  exc_task_build.go:124	0xe28eda		4c8b5c2460		MOVQ 0x60(SP), R11					
  exc_task_build.go:124	0xe28edf		f20f10442468		MOVSD_XMM 0x68(SP), X0					
  exc_task_build.go:124	0xe28ee5		e9d6f7ffff		JMP CAS-Backend/pkg/diapdu.appendPathAllMoveTasks(SB)	
  :-1			0xe28eea		cc			INT $__subsystem__(SB)					
  :-1			0xe28eeb		cc			INT $__subsystem__(SB)					
  :-1			0xe28eec		cc			INT $__subsystem__(SB)					
  :-1			0xe28eed		cc			INT $__subsystem__(SB)					
  :-1			0xe28eee		cc			INT $__subsystem__(SB)					
  :-1			0xe28eef		cc			INT $__subsystem__(SB)					
  :-1			0xe28ef0		cc			INT $__subsystem__(SB)					
  :-1			0xe28ef1		cc			INT $__subsystem__(SB)					
  :-1			0xe28ef2		cc			INT $__subsystem__(SB)					
  :-1			0xe28ef3		cc			INT $__subsystem__(SB)					
  :-1			0xe28ef4		cc			INT $__subsystem__(SB)					
  :-1			0xe28ef5		cc			INT $__subsystem__(SB)					
  :-1			0xe28ef6		cc			INT $__subsystem__(SB)					
  :-1			0xe28ef7		cc			INT $__subsystem__(SB)					
  :-1			0xe28ef8		cc			INT $__subsystem__(SB)					
  :-1			0xe28ef9		cc			INT $__subsystem__(SB)					
  :-1			0xe28efa		cc			INT $__subsystem__(SB)					
  :-1			0xe28efb		cc			INT $__subsystem__(SB)					
  :-1			0xe28efc		cc			INT $__subsystem__(SB)					
  :-1			0xe28efd		cc			INT $__subsystem__(SB)					
  :-1			0xe28efe		cc			INT $__subsystem__(SB)					
  :-1			0xe28eff		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/pkg/diapdu.BuildExcNavigationTasks(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/exc_task_build.go
  exc_task_build.go:173	0xe28f00		4c8da42450faffff		LEAQ 0xfffffa50(SP), R12					
  exc_task_build.go:173	0xe28f08		4d3b6610			CMPQ R12, 0x10(R14)						
  exc_task_build.go:173	0xe28f0c		0f8699350000			JBE 0xe2c4ab							
  exc_task_build.go:173	0xe28f12		55				PUSHQ BP							
  exc_task_build.go:173	0xe28f13		4889e5				MOVQ SP, BP							
  exc_task_build.go:173	0xe28f16		4881ec28060000			SUBQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:173	0xe28f1d		4889842490060000		MOVQ AX, 0x690(SP)						
  exc_task_build.go:173	0xe28f25		440f11bc24f8010000		MOVUPS X15, 0x1f8(SP)						
  exc_task_build.go:173	0xe28f2e		440f11bc2400020000		MOVUPS X15, 0x200(SP)						
  exc_task_build.go:173	0xe28f37		440f11bc2410020000		MOVUPS X15, 0x210(SP)						
  exc_task_build.go:173	0xe28f40		440f11bc2420020000		MOVUPS X15, 0x220(SP)						
  exc_task_build.go:174	0xe28f49		440f11bc2430030000		MOVUPS X15, 0x330(SP)						
  exc_task_build.go:174	0xe28f52		440f11bc2438030000		MOVUPS X15, 0x338(SP)						
  exc_task_build.go:174	0xe28f5b		440f11bc2448030000		MOVUPS X15, 0x348(SP)						
  exc_task_build.go:174	0xe28f64		440f11bc2458030000		MOVUPS X15, 0x358(SP)						
  exc_task_build.go:175	0xe28f6d		4885db				TESTQ BX, BX							
  exc_task_build.go:175	0xe28f70		7516				JNE 0xe28f88							
  exc_task_build.go:176	0xe28f72		e8295168ff			CALL time.Now(SB)						
  exc_task_build.go:176	0xe28f77		488d3d390a3500			LEAQ go:string.*+70831(SB), DI					
  exc_task_build.go:176	0xe28f7e		be0e000000			MOVL $__major_os_version__+8(SB), SI				
  exc_task_build.go:176	0xe28f83		e8f82367ff			CALL time.Time.Format(SB)					
  exc_task_build.go:365	0xe28f88		48899c24d0010000		MOVQ BX, 0x1d0(SP)						
  exc_task_build.go:365	0xe28f90		4889842470040000		MOVQ AX, 0x470(SP)						
  exc_task_build.go:178	0xe28f98		f20f10842488060000		MOVSD_XMM 0x688(SP), X0						
  exc_task_build.go:178	0xe28fa1		f20f11842458010000		MOVSD_XMM X0, 0x158(SP)						
  exc_task_build.go:180	0xe28faa		488dbc2448050000		LEAQ 0x548(SP), DI						
  exc_task_build.go:180	0xe28fb2		488d7fe0			LEAQ -0x20(DI), DI						
  exc_task_build.go:180	0xe28fb6		660f1f840000000000		NOPW 0(AX)(AX*1)						
  exc_task_build.go:180	0xe28fbf		90				NOPL								
  exc_task_build.go:180	0xe28fc0		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:180	0xe28fc5		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:180	0xe28fca		e8eefa64ff			CALL 0x478abd							
  exc_task_build.go:180	0xe28fcf		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:180	0xe28fd3		488b8c2448060000		MOVQ 0x648(SP), CX						
  exc_task_build.go:180	0xe28fdb		488b942450060000		MOVQ 0x650(SP), DX						
  exc_task_build.go:180	0xe28fe3		4889c8				MOVQ CX, AX							
  exc_task_build.go:180	0xe28fe6		4889d3				MOVQ DX, BX							
  exc_task_build.go:180	0xe28fe9		e8b2eaffff			CALL CAS-Backend/pkg/diapdu.ParseForkliftTaskJSON(SB)		
  exc_task_build.go:180	0xe28fee		488dbc2448050000		LEAQ 0x548(SP), DI						
  exc_task_build.go:180	0xe28ff6		4889e6				MOVQ SP, SI							
  exc_task_build.go:180	0xe28ff9		0f1f8000000000			NOPL 0(AX)							
  exc_task_build.go:180	0xe29000		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:180	0xe29005		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:180	0xe2900a		e8cdfd64ff			CALL 0x478ddc							
  exc_task_build.go:180	0xe2900f		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:180	0xe29013		488dbc2440020000		LEAQ 0x240(SP), DI						
  exc_task_build.go:180	0xe2901b		488db42448050000		LEAQ 0x548(SP), SI						
  exc_task_build.go:180	0xe29023		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:180	0xe29028		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:180	0xe2902d		e8aafd64ff			CALL 0x478ddc							
  exc_task_build.go:180	0xe29032		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:181	0xe29036		4885c0				TESTQ AX, AX							
  exc_task_build.go:181	0xe29039		0f84d1000000			JE 0xe29110							
  exc_task_build.go:182	0xe2903f		440f11bc2438050000		MOVUPS X15, 0x538(SP)						
  exc_task_build.go:182	0xe29048		7404				JE 0xe2904e							
  exc_task_build.go:182	0xe2904a		488b4008			MOVQ 0x8(AX), AX						
  exc_task_build.go:182	0xe2904e		4889842438050000		MOVQ AX, 0x538(SP)						
  exc_task_build.go:182	0xe29056		48899c2440050000		MOVQ BX, 0x540(SP)						
  print.go:233		0xe2905e		488b1d1b906e02			MOVQ os.Stdout(SB), BX						
  print.go:233		0xe29065		488d05742a0402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe2906c		488d0d7fa53500			LEAQ go:string.*+110826(SB), CX					
  print.go:233		0xe29073		bf17000000			MOVL $__major_os_version__+17(SB), DI				
  print.go:233		0xe29078		488db42438050000		LEAQ 0x538(SP), SI						
  print.go:233		0xe29080		41b801000000			MOVL $__minor_os_version__(SB), R8				
  print.go:233		0xe29086		4d89c1				MOVQ R8, R9							
  print.go:233		0xe29089		e892616fff			CALL fmt.Fprintf(SB)						
  exc_task_build.go:183	0xe2908e		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:183	0xe29096		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:183	0xe2909e		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:183	0xe290a6		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:183	0xe290ae		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:183	0xe290b6		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:183	0xe290be		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:183	0xe290c6		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:183	0xe290ce		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:183	0xe290d6		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:183	0xe290de		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:183	0xe290e6		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:183	0xe290ee		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:183	0xe290f6		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:183	0xe290fe		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:183	0xe29107		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:183	0xe2910e		5d				POPQ BP								
  exc_task_build.go:183	0xe2910f		c3				RET								
  exc_task_build.go:185	0xe29110		4883bc248002000000		CMPQ 0x280(SP), $0x0						
  exc_task_build.go:185	0xe29119		751d				JNE 0xe29138							
  exc_task_build.go:186	0xe2911b		488d0d0f9a3400			LEAQ go:string.*+42537(SB), CX					
  exc_task_build.go:186	0xe29122		48898c2478020000		MOVQ CX, 0x278(SP)						
  exc_task_build.go:186	0xe2912a		48c784248002000007000000	MOVQ $__major_os_version__+1(SB), 0x280(SP)			
  exc_task_build.go:186	0xe29136		eb07				JMP 0xe2913f							
  exc_task_build.go:186	0xe29138		488d0df2993400			LEAQ go:string.*+42537(SB), CX					
  exc_task_build.go:188	0xe2913f		4883bc241803000000		CMPQ 0x318(SP), $0x0						
  exc_task_build.go:188	0xe29148		751b				JNE 0xe29165							
  exc_task_build.go:189	0xe2914a		488d1507043400			LEAQ go:string.*+4176(SB), DX					
  exc_task_build.go:189	0xe29151		4889942410030000		MOVQ DX, 0x310(SP)						
  exc_task_build.go:189	0xe29159		48c784241803000004000000	MOVQ $__subsystem__+1(SB), 0x318(SP)				
  exc_task_build.go:192	0xe29165		488dbc2448050000		LEAQ 0x548(SP), DI						
  exc_task_build.go:192	0xe2916d		488d7fe0			LEAQ -0x20(DI), DI						
  exc_task_build.go:192	0xe29171		660f1f840000000000		NOPW 0(AX)(AX*1)						
  exc_task_build.go:192	0xe2917a		660f1f440000			NOPW 0(AX)(AX*1)						
  exc_task_build.go:192	0xe29180		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:192	0xe29185		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:192	0xe2918a		e82ef964ff			CALL 0x478abd							
  exc_task_build.go:192	0xe2918f		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:192	0xe29193		488b842458060000		MOVQ 0x658(SP), AX						
  exc_task_build.go:192	0xe2919b		488b9c2460060000		MOVQ 0x660(SP), BX						
  exc_task_build.go:192	0xe291a3		e8f8e8ffff			CALL CAS-Backend/pkg/diapdu.ParseForkliftTaskJSON(SB)		
  exc_task_build.go:192	0xe291a8		488dbc2448050000		LEAQ 0x548(SP), DI						
  exc_task_build.go:192	0xe291b0		4889e6				MOVQ SP, SI							
  exc_task_build.go:192	0xe291b3		660f1f840000000000		NOPW 0(AX)(AX*1)						
  exc_task_build.go:192	0xe291bc		0f1f4000			NOPL 0(AX)							
  exc_task_build.go:192	0xe291c0		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:192	0xe291c5		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:192	0xe291ca		e80dfc64ff			CALL 0x478ddc							
  exc_task_build.go:192	0xe291cf		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:192	0xe291d3		488dbc2468030000		LEAQ 0x368(SP), DI						
  exc_task_build.go:192	0xe291db		488db42448050000		LEAQ 0x548(SP), SI						
  exc_task_build.go:192	0xe291e3		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:192	0xe291e8		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:192	0xe291ed		e8eafb64ff			CALL 0x478ddc							
  exc_task_build.go:192	0xe291f2		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:193	0xe291f6		4885c0				TESTQ AX, AX							
  exc_task_build.go:193	0xe291f9		0f84d1000000			JE 0xe292d0							
  exc_task_build.go:194	0xe291ff		440f11bc2428050000		MOVUPS X15, 0x528(SP)						
  exc_task_build.go:194	0xe29208		7404				JE 0xe2920e							
  exc_task_build.go:194	0xe2920a		488b4008			MOVQ 0x8(AX), AX						
  exc_task_build.go:194	0xe2920e		4889842428050000		MOVQ AX, 0x528(SP)						
  exc_task_build.go:194	0xe29216		48899c2430050000		MOVQ BX, 0x530(SP)						
  print.go:233		0xe2921e		488b1d5b8e6e02			MOVQ os.Stdout(SB), BX						
  print.go:233		0xe29225		488d05b4280402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:233		0xe2922c		488d0dd6a33500			LEAQ go:string.*+110849(SB), CX					
  print.go:233		0xe29233		bf17000000			MOVL $__major_os_version__+17(SB), DI				
  print.go:233		0xe29238		488db42428050000		LEAQ 0x528(SP), SI						
  print.go:233		0xe29240		41b801000000			MOVL $__minor_os_version__(SB), R8				
  print.go:233		0xe29246		4d89c1				MOVQ R8, R9							
  print.go:233		0xe29249		e8d25f6fff			CALL fmt.Fprintf(SB)						
  exc_task_build.go:195	0xe2924e		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:195	0xe29256		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:195	0xe2925e		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:195	0xe29266		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:195	0xe2926e		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:195	0xe29276		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:195	0xe2927e		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:195	0xe29286		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:195	0xe2928e		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:195	0xe29296		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:195	0xe2929e		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:195	0xe292a6		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:195	0xe292ae		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:195	0xe292b6		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:195	0xe292be		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:195	0xe292c7		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:195	0xe292ce		5d				POPQ BP								
  exc_task_build.go:195	0xe292cf		c3				RET								
  exc_task_build.go:197	0xe292d0		4883bc24a803000000		CMPQ 0x3a8(SP), $0x0						
  exc_task_build.go:197	0xe292d9		751b				JNE 0xe292f6							
  exc_task_build.go:198	0xe292db		488d0d4f983400			LEAQ go:string.*+42537(SB), CX					
  exc_task_build.go:198	0xe292e2		48898c24a0030000		MOVQ CX, 0x3a0(SP)						
  exc_task_build.go:198	0xe292ea		48c78424a803000007000000	MOVQ $__major_os_version__+1(SB), 0x3a8(SP)			
  exc_task_build.go:200	0xe292f6		4883bc244004000000		CMPQ 0x440(SP), $0x0						
  exc_task_build.go:200	0xe292ff		90				NOPL								
  exc_task_build.go:200	0xe29300		751b				JNE 0xe2931d							
  exc_task_build.go:201	0xe29302		488d0d4f023400			LEAQ go:string.*+4176(SB), CX					
  exc_task_build.go:201	0xe29309		48898c2438040000		MOVQ CX, 0x438(SP)						
  exc_task_build.go:201	0xe29311		48c784244004000004000000	MOVQ $__subsystem__+1(SB), 0x440(SP)				
  exc_task_build.go:204	0xe2931d		488b842468060000		MOVQ 0x668(SP), AX						
  exc_task_build.go:204	0xe29325		488b9c2470060000		MOVQ 0x670(SP), BX						
  exc_task_build.go:204	0xe2932d		e80ee9ffff			CALL CAS-Backend/pkg/diapdu.splitRoadPoint(SB)			
  exc_task_build.go:204	0xe29332		4889842428030000		MOVQ AX, 0x328(SP)						
  exc_task_build.go:204	0xe2933a		48899c2460010000		MOVQ BX, 0x160(SP)						
  exc_task_build.go:204	0xe29342		48898c2468010000		MOVQ CX, 0x168(SP)						
  exc_task_build.go:205	0xe2934a		488b942440060000		MOVQ 0x640(SP), DX						
  exc_task_build.go:205	0xe29352		48899424a8010000		MOVQ DX, 0x1a8(SP)						
  exc_task_build.go:205	0xe2935a		488bb42438060000		MOVQ 0x638(SP), SI						
  exc_task_build.go:205	0xe29362		4889b42450040000		MOVQ SI, 0x450(SP)						
  exc_task_build.go:210	0xe2936a		4883bc245802000000		CMPQ 0x258(SP), $0x0						
  exc_task_build.go:210	0xe29373		0f859d110000			JNE 0xe2a516							
  exc_task_build.go:210	0xe29379		0f1f8000000000			NOPL 0(AX)							
  exc_task_build.go:212	0xe29380		4839942448020000		CMPQ 0x248(SP), DX						
  exc_task_build.go:212	0xe29388		752e				JNE 0xe293b8							
  exc_task_build.go:212	0xe2938a		488b9c2440020000		MOVQ 0x240(SP), BX						
  exc_task_build.go:212	0xe29392		4889f0				MOVQ SI, AX							
  exc_task_build.go:212	0xe29395		4889d1				MOVQ DX, CX							
  exc_task_build.go:212	0xe29398		e8c39a5dff			CALL runtime.memequal(SB)					
  exc_task_build.go:212	0xe2939d		0f1f00				NOPL 0(AX)							
  exc_task_build.go:212	0xe293a0		84c0				TESTL AL, AL							
  exc_task_build.go:212	0xe293a2		0f85270a0000			JNE 0xe29dcf							
  exc_task_build.go:248	0xe293a8		488b9424a8010000		MOVQ 0x1a8(SP), DX						
  exc_task_build.go:248	0xe293b0		488bb42450040000		MOVQ 0x450(SP), SI						
  exc_task_build.go:248	0xe293b8		488b8c2440020000		MOVQ 0x240(SP), CX						
  exc_task_build.go:248	0xe293c0		488bbc2448020000		MOVQ 0x248(SP), DI						
  exc_task_build.go:248	0xe293c8		4889f0				MOVQ SI, AX							
  exc_task_build.go:248	0xe293cb		4889d3				MOVQ DX, BX							
  exc_task_build.go:248	0xe293ce		488bb42470040000		MOVQ 0x470(SP), SI						
  exc_task_build.go:248	0xe293d6		4c8b8424d0010000		MOVQ 0x1d0(SP), R8						
  exc_task_build.go:248	0xe293de		4531c9				XORL R9, R9							
  exc_task_build.go:248	0xe293e1		4531d2				XORL R10, R10							
  exc_task_build.go:248	0xe293e4		4d89d3				MOVQ R10, R11							
  exc_task_build.go:248	0xe293e7		e8b4eaffff			CALL CAS-Backend/pkg/diapdu.buildGotoTasks(SB)			
  exc_task_build.go:248	0xe293ec		4584d2				TESTL R10, R10							
  exc_task_build.go:249	0xe293ef		0f8417090000			JE 0xe29d0c							
  exc_task_build.go:248	0xe293f5		4889b42440010000		MOVQ SI, 0x140(SP)						
  exc_task_build.go:248	0xe293fd		4889bc2438020000		MOVQ DI, 0x238(SP)						
  exc_task_build.go:248	0xe29405		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:248	0xe2940d		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:248	0xe29415		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:248	0xe2941d		4c898c2498010000		MOVQ R9, 0x198(SP)						
  exc_task_build.go:248	0xe29425		4c89842448010000		MOVQ R8, 0x148(SP)						
  exc_task_build.go:253	0xe2942d		488b842440020000		MOVQ 0x240(SP), AX						
  exc_task_build.go:253	0xe29435		488b9c2448020000		MOVQ 0x248(SP), BX						
  exc_task_build.go:254	0xe2943d		488b8c2478030000		MOVQ 0x378(SP), CX						
  exc_task_build.go:254	0xe29445		488bbc2480030000		MOVQ 0x380(SP), DI						
  exc_task_build.go:255	0xe2944d		90				NOPL								
  exc_task_build.go:55	0xe2944e		488bb42428030000		MOVQ 0x328(SP), SI						
  exc_task_build.go:55	0xe29456		4c8b842460010000		MOVQ 0x160(SP), R8						
  exc_task_build.go:55	0xe2945e		4c8b8c2468010000		MOVQ 0x168(SP), R9						
  exc_task_build.go:55	0xe29466		e835e9ffff			CALL CAS-Backend/pkg/diapdu.PlanStationPathFromGraph(SB)	
  exc_task_build.go:55	0xe2946b		48898424e8010000		MOVQ AX, 0x1e8(SP)						
  exc_task_build.go:55	0xe29473		48899c2400010000		MOVQ BX, 0x100(SP)						
  exc_task_build.go:55	0xe2947b		48898c2420010000		MOVQ CX, 0x120(SP)						
  exc_task_build.go:256	0xe29483		4885ff				TESTQ DI, DI							
  exc_task_build.go:256	0xe29486		745a				JE 0xe294e2							
  exc_task_build.go:257	0xe29488		440f11bc24e8040000		MOVUPS X15, 0x4e8(SP)						
  exc_task_build.go:257	0xe29491		7404				JE 0xe29497							
  exc_task_build.go:257	0xe29493		488b7f08			MOVQ 0x8(DI), DI						
  exc_task_build.go:257	0xe29497		4889bc24e8040000		MOVQ DI, 0x4e8(SP)						
  exc_task_build.go:257	0xe2949f		4889b424f0040000		MOVQ SI, 0x4f0(SP)						
  print.go:314		0xe294a7		488b1dd28b6e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe294ae		488d052b260402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe294b5		488d8c24e8040000		LEAQ 0x4e8(SP), CX						
  print.go:314		0xe294bd		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe294c2		4889fe				MOVQ DI, SI							
  print.go:314		0xe294c5		e896636fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:273	0xe294ca		488b8424e8010000		MOVQ 0x1e8(SP), AX						
  exc_task_build.go:277	0xe294d2		488b8c2420010000		MOVQ 0x120(SP), CX						
  exc_task_build.go:259	0xe294da		488b9c2400010000		MOVQ 0x100(SP), BX						
  exc_task_build.go:259	0xe294e2		4883fb02			CMPQ BX, $__minor_os_version__+1(SB)				
  exc_task_build.go:259	0xe294e6		0f8c5d070000			JL 0xe29c49							
  exc_task_build.go:263	0xe294ec		0f8533020000			JNE 0xe29725							
  exc_task_build.go:266	0xe294f2		488b8c2440010000		MOVQ 0x140(SP), CX						
  exc_task_build.go:266	0xe294fa		48ffc1				INCQ CX								
  exc_task_build.go:266	0xe294fd		48898c24c8010000		MOVQ CX, 0x1c8(SP)						
  itoa.go:35		0xe29505		488b842498010000		MOVQ 0x198(SP), AX						
  itoa.go:35		0xe2950d		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe29512		e8a9636cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:264	0xe29517		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:264	0xe2951f		4889c7				MOVQ AX, DI							
  exc_task_build.go:264	0xe29522		4889de				MOVQ BX, SI							
  exc_task_build.go:264	0xe29525		31c0				XORL AX, AX							
  exc_task_build.go:264	0xe29527		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:264	0xe2952f		e8ccbe62ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:264	0xe29534		4889842460020000		MOVQ AX, 0x260(SP)						
  exc_task_build.go:264	0xe2953c		48899c2468020000		MOVQ BX, 0x268(SP)						
  exc_task_build.go:265	0xe29544		f20f10052ce30302		MOVSD_XMM $f64.3fe3333333333333(SB), X0				
  exc_task_build.go:265	0xe2954c		f20f11842488020000		MOVSD_XMM X0, 0x288(SP)						
  exc_task_build.go:266	0xe29555		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:266	0xe2955d		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:266	0xe29565		4839d1				CMPQ CX, DX							
  exc_task_build.go:266	0xe29568		720a				JB 0xe29574							
  exc_task_build.go:266	0xe2956a		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:266	0xe29572		eb47				JMP 0xe295bb							
  exc_task_build.go:264	0xe29574		48899c24d0010000		MOVQ BX, 0x1d0(SP)						
  exc_task_build.go:264	0xe2957c		4889842470040000		MOVQ AX, 0x470(SP)						
  exc_task_build.go:266	0xe29584		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:266	0xe2958c		4889d3				MOVQ DX, BX							
  exc_task_build.go:266	0xe2958f		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:266	0xe29594		488d3585932100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:266	0xe2959b		0f1f440000			NOPL 0(AX)(AX*1)						
  exc_task_build.go:266	0xe295a0		e89b8664ff			CALL runtime.growslice(SB)					
  exc_task_build.go:266	0xe295a5		4889c6				MOVQ AX, SI							
  exc_task_build.go:266	0xe295a8		4889da				MOVQ BX, DX							
  exc_task_build.go:266	0xe295ab		488b842470040000		MOVQ 0x470(SP), AX						
  exc_task_build.go:266	0xe295b3		488b9c24d0010000		MOVQ 0x1d0(SP), BX						
  exc_task_build.go:266	0xe295bb		4c8d52ff			LEAQ -0x1(DX), R10						
  exc_task_build.go:266	0xe295bf		49c1e204			SHLQ $__subsystem__+1(SB), R10					
  exc_task_build.go:266	0xe295c3		4a895c1608			MOVQ BX, 0x8(SI)(R10*1)						
  exc_task_build.go:266	0xe295c8		833d8145730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:266	0xe295cf		7410				JE 0xe295e1							
  exc_task_build.go:266	0xe295d1		e86aee64ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:266	0xe295d6		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:266	0xe295d9		4e8b2416			MOVQ 0(SI)(R10*1), R12						
  exc_task_build.go:266	0xe295dd		4d896308			MOVQ R12, 0x8(R11)						
  exc_task_build.go:266	0xe295e1		4889b42438020000		MOVQ SI, 0x238(SP)						
  exc_task_build.go:266	0xe295e9		4889942440010000		MOVQ DX, 0x140(SP)						
  exc_task_build.go:266	0xe295f1		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:266	0xe295f9		4a890416			MOVQ AX, 0(SI)(R10*1)						
  exc_task_build.go:267	0xe295fd		4c8b9424e8010000		MOVQ 0x1e8(SP), R10						
  exc_task_build.go:267	0xe29605		4d8b5a10			MOVQ 0x10(R10), R11						
  exc_task_build.go:267	0xe29609		4d8b5218			MOVQ 0x18(R10), R10						
  exc_task_build.go:267	0xe2960d		4c899c2450020000		MOVQ R11, 0x250(SP)						
  exc_task_build.go:267	0xe29615		4c89942458020000		MOVQ R10, 0x258(SP)						
  exc_task_build.go:269	0xe2961d		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:269	0xe29625		48ffc3				INCQ BX								
  exc_task_build.go:269	0xe29628		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:269	0xe29630		4939da				CMPQ R10, BX							
  exc_task_build.go:269	0xe29633		720a				JB 0xe2963f							
  exc_task_build.go:269	0xe29635		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:269	0xe2963d		eb37				JMP 0xe29676							
  exc_task_build.go:269	0xe2963f		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:269	0xe29647		4c89d1				MOVQ R10, CX							
  exc_task_build.go:269	0xe2964a		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:269	0xe2964f		488d352a8b3100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:269	0xe29656		e8e58564ff			CALL runtime.growslice(SB)					
  exc_task_build.go:444	0xe2965b		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:444	0xe29663		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:269	0xe2966b		4989ca				MOVQ CX, R10							
  exc_task_build.go:444	0xe2966e		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:269	0xe29676		4c69dbe0000000			IMULQ $.file+147(SB), BX, R11					
  exc_task_build.go:269	0xe2967d		498d3c03			LEAQ 0(R11)(AX*1), DI						
  exc_task_build.go:269	0xe29681		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:269	0xe29688		833dc144730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:269	0xe2968f		746f				JE 0xe29700							
  exc_task_build.go:269	0xe29691		4889842468040000		MOVQ AX, 0x468(SP)						
  exc_task_build.go:269	0xe29699		48899c24c0010000		MOVQ BX, 0x1c0(SP)						
  exc_task_build.go:269	0xe296a1		4c899424b8010000		MOVQ R10, 0x1b8(SP)						
  exc_task_build.go:269	0xe296a9		4889bc2460040000		MOVQ DI, 0x460(SP)						
  exc_task_build.go:269	0xe296b1		488d05c88a3100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:269	0xe296b8		4889fb				MOVQ DI, BX							
  exc_task_build.go:269	0xe296bb		488d8c2440020000		LEAQ 0x240(SP), CX						
  exc_task_build.go:269	0xe296c3		e858b85eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:440	0xe296c8		488b842468040000		MOVQ 0x468(SP), AX						
  exc_task_build.go:444	0xe296d0		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:444	0xe296d8		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:440	0xe296e0		488b9c24c0010000		MOVQ 0x1c0(SP), BX						
  exc_task_build.go:444	0xe296e8		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:269	0xe296f0		488bbc2460040000		MOVQ 0x460(SP), DI						
  exc_task_build.go:440	0xe296f8		4c8b9424b8010000		MOVQ 0x1b8(SP), R10						
  exc_task_build.go:266	0xe29700		4989f0				MOVQ SI, R8							
  exc_task_build.go:269	0xe29703		488db42440020000		LEAQ 0x240(SP), SI						
  exc_task_build.go:269	0xe2970b		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:269	0xe29710		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:269	0xe29715		e8c2f664ff			CALL 0x478ddc							
  exc_task_build.go:269	0xe2971a		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:269	0xe2971e		6690				NOPW								
  exc_task_build.go:269	0xe29720		e9bb2a0000			JMP 0xe2c1e0							
  exc_task_build.go:272	0xe29725		488b8c2440010000		MOVQ 0x140(SP), CX						
  exc_task_build.go:272	0xe2972d		48ffc1				INCQ CX								
  exc_task_build.go:272	0xe29730		48898c24c8010000		MOVQ CX, 0x1c8(SP)						
  itoa.go:35		0xe29738		488b842498010000		MOVQ 0x198(SP), AX						
  itoa.go:35		0xe29740		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe29745		e876616cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:271	0xe2974a		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:271	0xe29752		4889c7				MOVQ AX, DI							
  exc_task_build.go:271	0xe29755		4889de				MOVQ BX, SI							
  exc_task_build.go:271	0xe29758		31c0				XORL AX, AX							
  exc_task_build.go:271	0xe2975a		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:271	0xe29762		e899bc62ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:271	0xe29767		4889842460020000		MOVQ AX, 0x260(SP)						
  exc_task_build.go:271	0xe2976f		48899c2468020000		MOVQ BX, 0x268(SP)						
  exc_task_build.go:272	0xe29777		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:272	0xe2977f		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:272	0xe29787		4839d1				CMPQ CX, DX							
  exc_task_build.go:272	0xe2978a		720a				JB 0xe29796							
  exc_task_build.go:272	0xe2978c		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:272	0xe29794		eb45				JMP 0xe297db							
  exc_task_build.go:271	0xe29796		48899c24c8010000		MOVQ BX, 0x1c8(SP)						
  exc_task_build.go:271	0xe2979e		4889842458040000		MOVQ AX, 0x458(SP)						
  exc_task_build.go:272	0xe297a6		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:272	0xe297ae		4889d3				MOVQ DX, BX							
  exc_task_build.go:272	0xe297b1		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:272	0xe297b6		488d3563912100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:272	0xe297bd		0f1f00				NOPL 0(AX)							
  exc_task_build.go:272	0xe297c0		e87b8464ff			CALL runtime.growslice(SB)					
  exc_task_build.go:272	0xe297c5		4889c6				MOVQ AX, SI							
  exc_task_build.go:272	0xe297c8		4889da				MOVQ BX, DX							
  exc_task_build.go:272	0xe297cb		488b842458040000		MOVQ 0x458(SP), AX						
  exc_task_build.go:272	0xe297d3		488b9c24c8010000		MOVQ 0x1c8(SP), BX						
  exc_task_build.go:272	0xe297db		4c8d62ff			LEAQ -0x1(DX), R12						
  exc_task_build.go:272	0xe297df		49c1e404			SHLQ $__subsystem__+1(SB), R12					
  exc_task_build.go:272	0xe297e3		4a895c2608			MOVQ BX, 0x8(SI)(R12*1)						
  exc_task_build.go:272	0xe297e8		833d6143730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:272	0xe297ef		7410				JE 0xe29801							
  exc_task_build.go:272	0xe297f1		e84aec64ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:272	0xe297f6		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:272	0xe297f9		4d8b2c34			MOVQ 0(R12)(SI*1), R13						
  exc_task_build.go:272	0xe297fd		4d896b08			MOVQ R13, 0x8(R11)						
  exc_task_build.go:272	0xe29801		4889b42438020000		MOVQ SI, 0x238(SP)						
  exc_task_build.go:272	0xe29809		4889942440010000		MOVQ DX, 0x140(SP)						
  exc_task_build.go:272	0xe29811		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:272	0xe29819		4a890426			MOVQ AX, 0(SI)(R12*1)						
  exc_task_build.go:273	0xe2981d		4c8b8c24e8010000		MOVQ 0x1e8(SP), R9						
  exc_task_build.go:273	0xe29825		4d8b6110			MOVQ 0x10(R9), R12						
  exc_task_build.go:273	0xe29829		4d8b6918			MOVQ 0x18(R9), R13						
  exc_task_build.go:273	0xe2982d		4c89a42450020000		MOVQ R12, 0x250(SP)						
  exc_task_build.go:273	0xe29835		4c89ac2458020000		MOVQ R13, 0x258(SP)						
  exc_task_build.go:274	0xe2983d		f20f100533e00302		MOVSD_XMM $f64.3fe3333333333333(SB), X0				
  exc_task_build.go:274	0xe29845		f20f11842488020000		MOVSD_XMM X0, 0x288(SP)						
  exc_task_build.go:276	0xe2984e		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:276	0xe29856		48ffc3				INCQ BX								
  exc_task_build.go:276	0xe29859		4c8ba42438010000		MOVQ 0x138(SP), R12						
  exc_task_build.go:276	0xe29861		4939dc				CMPQ R12, BX							
  exc_task_build.go:276	0xe29864		720a				JB 0xe29870							
  exc_task_build.go:276	0xe29866		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:276	0xe2986e		eb47				JMP 0xe298b7							
  exc_task_build.go:276	0xe29870		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:276	0xe29878		4c89e1				MOVQ R12, CX							
  exc_task_build.go:276	0xe2987b		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:276	0xe29880		488d35f9883100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:276	0xe29887		e8b48364ff			CALL runtime.growslice(SB)					
  exc_task_build.go:277	0xe2988c		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:277	0xe29894		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:277	0xe2989c		4c8b8c24e8010000		MOVQ 0x1e8(SP), R9						
  exc_task_build.go:277	0xe298a4		f20f1005ccdf0302		MOVSD_XMM $f64.3fe3333333333333(SB), X0				
  exc_task_build.go:276	0xe298ac		4989cc				MOVQ CX, R12							
  exc_task_build.go:277	0xe298af		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:276	0xe298b7		4c69ebe0000000			IMULQ $.file+147(SB), BX, R13					
  exc_task_build.go:276	0xe298be		498d7c0500			LEAQ 0(R13)(AX*1), DI						
  exc_task_build.go:276	0xe298c3		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:276	0xe298ca		833d7f42730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:276	0xe298d1		7477				JE 0xe2994a							
  exc_task_build.go:276	0xe298d3		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:276	0xe298db		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:276	0xe298e3		4c89a42438010000		MOVQ R12, 0x138(SP)						
  exc_task_build.go:276	0xe298eb		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:276	0xe298f3		488d0586883100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:276	0xe298fa		4889fb				MOVQ DI, BX							
  exc_task_build.go:276	0xe298fd		488d8c2440020000		LEAQ 0x240(SP), CX						
  exc_task_build.go:276	0xe29905		e816b65eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:277	0xe2990a		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:277	0xe29912		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:277	0xe2991a		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:277	0xe29922		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:277	0xe2992a		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:276	0xe29932		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:277	0xe2993a		4c8b8c24e8010000		MOVQ 0x1e8(SP), R9						
  exc_task_build.go:277	0xe29942		4c8ba42438010000		MOVQ 0x138(SP), R12						
  exc_task_build.go:272	0xe2994a		4989f0				MOVQ SI, R8							
  exc_task_build.go:276	0xe2994d		488db42440020000		LEAQ 0x240(SP), SI						
  exc_task_build.go:276	0xe29955		660f1f840000000000		NOPW 0(AX)(AX*1)						
  exc_task_build.go:276	0xe2995e		6690				NOPW								
  exc_task_build.go:276	0xe29960		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:276	0xe29965		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:276	0xe2996a		e86df464ff			CALL 0x478ddc							
  exc_task_build.go:276	0xe2996f		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:277	0xe29973		4c8bac2470040000		MOVQ 0x470(SP), R13						
  exc_task_build.go:277	0xe2997b		4c892c24			MOVQ R13, 0(SP)							
  exc_task_build.go:277	0xe2997f		4c8bbc24d0010000		MOVQ 0x1d0(SP), R15						
  exc_task_build.go:277	0xe29987		4c897c2408			MOVQ R15, 0x8(SP)						
  exc_task_build.go:275	0xe2998c		4c8bac2498010000		MOVQ 0x198(SP), R13						
  exc_task_build.go:275	0xe29994		49ffc5				INCQ R13							
  exc_task_build.go:277	0xe29997		4c896c2410			MOVQ R13, 0x10(SP)						
  exc_task_build.go:277	0xe2999c		4c89c7				MOVQ R8, DI							
  exc_task_build.go:277	0xe2999f		4989c8				MOVQ CX, R8							
  exc_task_build.go:277	0xe299a2		4c8b942400010000		MOVQ 0x100(SP), R10						
  exc_task_build.go:277	0xe299aa		4c8b9c2420010000		MOVQ 0x120(SP), R11						
  exc_task_build.go:277	0xe299b2		4c89e1				MOVQ R12, CX							
  exc_task_build.go:277	0xe299b5		4889d6				MOVQ DX, SI							
  exc_task_build.go:277	0xe299b8		e883e9ffff			CALL CAS-Backend/pkg/diapdu.appendPathMiddleMoveTasks(SB)	
  exc_task_build.go:277	0xe299bd		4c89842448010000		MOVQ R8, 0x148(SP)						
  exc_task_build.go:277	0xe299c5		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:277	0xe299cd		4889bc2438020000		MOVQ DI, 0x238(SP)						
  exc_task_build.go:277	0xe299d5		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:277	0xe299dd		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:279	0xe299e5		488b942400010000		MOVQ 0x100(SP), DX						
  exc_task_build.go:279	0xe299ed		4883c2fe			ADDQ $-0x2, DX							
  exc_task_build.go:279	0xe299f1		48c1e204			SHLQ $__subsystem__+1(SB), DX					
  exc_task_build.go:279	0xe299f5		48899424c8010000		MOVQ DX, 0x1c8(SP)						
  exc_task_build.go:281	0xe299fd		4c8d6601			LEAQ 0x1(SI), R12						
  exc_task_build.go:281	0xe29a01		4c89a424c0010000		MOVQ R12, 0x1c0(SP)						
  itoa.go:35		0xe29a09		4c89c8				MOVQ R9, AX							
  itoa.go:35		0xe29a0c		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe29a11		e8aa5e6cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:278	0xe29a16		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:278	0xe29a1e		4889c7				MOVQ AX, DI							
  exc_task_build.go:278	0xe29a21		4889de				MOVQ BX, SI							
  exc_task_build.go:278	0xe29a24		31c0				XORL AX, AX							
  exc_task_build.go:278	0xe29a26		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:278	0xe29a2e		e8cdb962ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:278	0xe29a33		4889842488030000		MOVQ AX, 0x388(SP)						
  exc_task_build.go:278	0xe29a3b		48899c2490030000		MOVQ BX, 0x390(SP)						
  exc_task_build.go:279	0xe29a43		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:279	0xe29a4b		4c8ba424e8010000		MOVQ 0x1e8(SP), R12						
  exc_task_build.go:279	0xe29a53		4d8b2c14			MOVQ 0(R12)(DX*1), R13						
  exc_task_build.go:279	0xe29a57		498b541408			MOVQ 0x8(R12)(DX*1), DX						
  exc_task_build.go:279	0xe29a5c		4c89ac2468030000		MOVQ R13, 0x368(SP)						
  exc_task_build.go:279	0xe29a64		4889942470030000		MOVQ DX, 0x370(SP)						
  exc_task_build.go:280	0xe29a6c		f20f100504de0302		MOVSD_XMM $f64.3fe3333333333333(SB), X0				
  exc_task_build.go:280	0xe29a74		f20f118424b0030000		MOVSD_XMM X0, 0x3b0(SP)						
  exc_task_build.go:281	0xe29a7d		488b942488030000		MOVQ 0x388(SP), DX						
  exc_task_build.go:281	0xe29a85		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:281	0xe29a8d		4c8ba424c0010000		MOVQ 0x1c0(SP), R12						
  exc_task_build.go:281	0xe29a95		4c39e1				CMPQ CX, R12							
  exc_task_build.go:281	0xe29a98		720a				JB 0xe29aa4							
  exc_task_build.go:281	0xe29a9a		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:281	0xe29aa2		eb3f				JMP 0xe29ae3							
  exc_task_build.go:278	0xe29aa4		48899c24d0010000		MOVQ BX, 0x1d0(SP)						
  exc_task_build.go:281	0xe29aac		4889942470040000		MOVQ DX, 0x470(SP)						
  exc_task_build.go:281	0xe29ab4		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:281	0xe29abc		4c89e3				MOVQ R12, BX							
  exc_task_build.go:281	0xe29abf		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:281	0xe29ac4		488d35558e2100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:281	0xe29acb		e8708164ff			CALL runtime.growslice(SB)					
  exc_task_build.go:281	0xe29ad0		488b942470040000		MOVQ 0x470(SP), DX						
  exc_task_build.go:281	0xe29ad8		4989dc				MOVQ BX, R12							
  exc_task_build.go:281	0xe29adb		488b9c24d0010000		MOVQ 0x1d0(SP), BX						
  exc_task_build.go:281	0xe29ae3		4d8d5424ff			LEAQ -0x1(R12), R10						
  exc_task_build.go:281	0xe29ae8		49c1e204			SHLQ $__subsystem__+1(SB), R10					
  exc_task_build.go:281	0xe29aec		4a895c1008			MOVQ BX, 0x8(AX)(R10*1)						
  exc_task_build.go:281	0xe29af1		833d5840730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:281	0xe29af8		7410				JE 0xe29b0a							
  exc_task_build.go:281	0xe29afa		e841e964ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:281	0xe29aff		498913				MOVQ DX, 0(R11)							
  exc_task_build.go:281	0xe29b02		4d8b2c02			MOVQ 0(R10)(AX*1), R13						
  exc_task_build.go:281	0xe29b06		4d896b08			MOVQ R13, 0x8(R11)						
  exc_task_build.go:281	0xe29b0a		4889842438020000		MOVQ AX, 0x238(SP)						
  exc_task_build.go:281	0xe29b12		4c89a42440010000		MOVQ R12, 0x140(SP)						
  exc_task_build.go:281	0xe29b1a		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:281	0xe29b22		4a891410			MOVQ DX, 0(AX)(R10*1)						
  exc_task_build.go:282	0xe29b26		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:282	0xe29b2e		48ffc3				INCQ BX								
  exc_task_build.go:282	0xe29b31		488b942438010000		MOVQ 0x138(SP), DX						
  exc_task_build.go:282	0xe29b39		4839da				CMPQ DX, BX							
  exc_task_build.go:282	0xe29b3c		720a				JB 0xe29b48							
  exc_task_build.go:282	0xe29b3e		488bb42430020000		MOVQ 0x230(SP), SI						
  exc_task_build.go:282	0xe29b46		eb3b				JMP 0xe29b83							
  exc_task_build.go:282	0xe29b48		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:282	0xe29b50		4889d1				MOVQ DX, CX							
  exc_task_build.go:282	0xe29b53		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:282	0xe29b58		488d3521863100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:282	0xe29b5f		90				NOPL								
  exc_task_build.go:282	0xe29b60		e8db8064ff			CALL runtime.growslice(SB)					
  exc_task_build.go:444	0xe29b65		4c8ba42440010000		MOVQ 0x140(SP), R12						
  exc_task_build.go:282	0xe29b6d		4889c6				MOVQ AX, SI							
  exc_task_build.go:282	0xe29b70		4889ca				MOVQ CX, DX							
  exc_task_build.go:444	0xe29b73		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:444	0xe29b7b		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:282	0xe29b83		4c69d3e0000000			IMULQ $.file+147(SB), BX, R10					
  exc_task_build.go:282	0xe29b8a		498d3c32			LEAQ 0(R10)(SI*1), DI						
  exc_task_build.go:282	0xe29b8e		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:282	0xe29b95		833db43f730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:282	0xe29b9c		746f				JE 0xe29c0d							
  exc_task_build.go:282	0xe29b9e		4889b42460040000		MOVQ SI, 0x460(SP)						
  exc_task_build.go:282	0xe29ba6		48899c24b8010000		MOVQ BX, 0x1b8(SP)						
  exc_task_build.go:282	0xe29bae		48899424b0010000		MOVQ DX, 0x1b0(SP)						
  exc_task_build.go:282	0xe29bb6		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:282	0xe29bbe		488d05bb853100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:282	0xe29bc5		4889fb				MOVQ DI, BX							
  exc_task_build.go:282	0xe29bc8		488d8c2468030000		LEAQ 0x368(SP), CX						
  exc_task_build.go:282	0xe29bd0		e84bb35eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:444	0xe29bd5		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:444	0xe29bdd		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:440	0xe29be5		488b9424b0010000		MOVQ 0x1b0(SP), DX						
  exc_task_build.go:440	0xe29bed		488b9c24b8010000		MOVQ 0x1b8(SP), BX						
  exc_task_build.go:440	0xe29bf5		488bb42460040000		MOVQ 0x460(SP), SI						
  exc_task_build.go:282	0xe29bfd		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:444	0xe29c05		4c8ba42440010000		MOVQ 0x140(SP), R12						
  exc_task_build.go:282	0xe29c0d		4989f0				MOVQ SI, R8							
  exc_task_build.go:282	0xe29c10		488db42468030000		LEAQ 0x368(SP), SI						
  exc_task_build.go:282	0xe29c18		0f1f840000000000		NOPL 0(AX)(AX*1)						
  exc_task_build.go:282	0xe29c20		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:282	0xe29c25		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:282	0xe29c2a		e8adf164ff			CALL 0x478ddc							
  exc_task_build.go:282	0xe29c2f		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:440	0xe29c33		4989d2				MOVQ DX, R10							
  exc_task_build.go:440	0xe29c36		4c89c0				MOVQ R8, AX							
  exc_task_build.go:444	0xe29c39		4c89e2				MOVQ R12, DX							
  exc_task_build.go:444	0xe29c3c		4c8b842438020000		MOVQ 0x238(SP), R8						
  exc_task_build.go:282	0xe29c44		e997250000			JMP 0xe2c1e0							
  exc_task_build.go:260	0xe29c49		488d15d08c2100			LEAQ runtime.types+383264(SB), DX				
  exc_task_build.go:260	0xe29c50		48899424d8040000		MOVQ DX, 0x4d8(SP)						
  exc_task_build.go:260	0xe29c58		488d15c1e10302			LEAQ CAS-Backend/pkg/diapdu..stmp_5(SB), DX			
  exc_task_build.go:260	0xe29c5f		48899424e0040000		MOVQ DX, 0x4e0(SP)						
  print.go:314		0xe29c67		488b1d12846e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe29c6e		488d056b1e0402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe29c75		488d8c24d8040000		LEAQ 0x4d8(SP), CX						
  print.go:314		0xe29c7d		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe29c82		4889fe				MOVQ DI, SI							
  print.go:314		0xe29c85		e8d65b6fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:261	0xe29c8a		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:261	0xe29c92		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:261	0xe29c9a		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:261	0xe29ca2		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:261	0xe29caa		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:261	0xe29cb2		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:261	0xe29cba		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:261	0xe29cc2		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:261	0xe29cca		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:261	0xe29cd2		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:261	0xe29cda		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:261	0xe29ce2		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:261	0xe29cea		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:261	0xe29cf2		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:261	0xe29cfa		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:261	0xe29d03		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:261	0xe29d0a		5d				POPQ BP								
  exc_task_build.go:261	0xe29d0b		c3				RET								
  exc_task_build.go:250	0xe29d0c		488d150d8c2100			LEAQ runtime.types+383264(SB), DX				
  exc_task_build.go:250	0xe29d13		48899424f8040000		MOVQ DX, 0x4f8(SP)						
  exc_task_build.go:250	0xe29d1b		488d150ee10302			LEAQ CAS-Backend/pkg/diapdu..stmp_12(SB), DX			
  exc_task_build.go:250	0xe29d22		4889942400050000		MOVQ DX, 0x500(SP)						
  print.go:314		0xe29d2a		488b1d4f836e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe29d31		488d05a81d0402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe29d38		488d8c24f8040000		LEAQ 0x4f8(SP), CX						
  print.go:314		0xe29d40		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe29d45		4889fe				MOVQ DI, SI							
  print.go:314		0xe29d48		e8135b6fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:251	0xe29d4d		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:251	0xe29d55		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:251	0xe29d5d		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:251	0xe29d65		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:251	0xe29d6d		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:251	0xe29d75		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:251	0xe29d7d		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:251	0xe29d85		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:251	0xe29d8d		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:251	0xe29d95		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:251	0xe29d9d		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:251	0xe29da5		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:251	0xe29dad		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:251	0xe29db5		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:251	0xe29dbd		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:251	0xe29dc6		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:251	0xe29dcd		5d				POPQ BP								
  exc_task_build.go:251	0xe29dce		c3				RET								
  exc_task_build.go:213	0xe29dcf		488b842440020000		MOVQ 0x240(SP), AX						
  exc_task_build.go:213	0xe29dd7		488b9c2448020000		MOVQ 0x248(SP), BX						
  exc_task_build.go:214	0xe29ddf		488b8c2478030000		MOVQ 0x378(SP), CX						
  exc_task_build.go:214	0xe29de7		488bbc2480030000		MOVQ 0x380(SP), DI						
  exc_task_build.go:215	0xe29def		90				NOPL								
  exc_task_build.go:55	0xe29df0		488bb42428030000		MOVQ 0x328(SP), SI						
  exc_task_build.go:55	0xe29df8		4c8b842460010000		MOVQ 0x160(SP), R8						
  exc_task_build.go:55	0xe29e00		4c8b8c2468010000		MOVQ 0x168(SP), R9						
  exc_task_build.go:55	0xe29e08		e893dfffff			CALL CAS-Backend/pkg/diapdu.PlanStationPathFromGraph(SB)	
  exc_task_build.go:55	0xe29e0d		48898424f0010000		MOVQ AX, 0x1f0(SP)						
  exc_task_build.go:55	0xe29e15		48899c2408010000		MOVQ BX, 0x108(SP)						
  exc_task_build.go:55	0xe29e1d		48898c2428010000		MOVQ CX, 0x128(SP)						
  exc_task_build.go:216	0xe29e25		4885ff				TESTQ DI, DI							
  exc_task_build.go:216	0xe29e28		745a				JE 0xe29e84							
  exc_task_build.go:217	0xe29e2a		440f11bc2418050000		MOVUPS X15, 0x518(SP)						
  exc_task_build.go:217	0xe29e33		7404				JE 0xe29e39							
  exc_task_build.go:217	0xe29e35		488b7f08			MOVQ 0x8(DI), DI						
  exc_task_build.go:217	0xe29e39		4889bc2418050000		MOVQ DI, 0x518(SP)						
  exc_task_build.go:217	0xe29e41		4889b42420050000		MOVQ SI, 0x520(SP)						
  print.go:314		0xe29e49		488b1d30826e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe29e50		488d05891c0402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe29e57		488d8c2418050000		LEAQ 0x518(SP), CX						
  print.go:314		0xe29e5f		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe29e64		4889fe				MOVQ DI, SI							
  print.go:314		0xe29e67		e8f4596fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:227	0xe29e6c		488b8424f0010000		MOVQ 0x1f0(SP), AX						
  exc_task_build.go:238	0xe29e74		488b8c2428010000		MOVQ 0x128(SP), CX						
  exc_task_build.go:219	0xe29e7c		488b9c2408010000		MOVQ 0x108(SP), BX						
  exc_task_build.go:219	0xe29e84		4883fb02			CMPQ BX, $__minor_os_version__+1(SB)				
  exc_task_build.go:219	0xe29e88		0f8cc5050000			JL 0xe2a453							
  exc_task_build.go:224	0xe29e8e		0f8589010000			JNE 0xe2a01d							
  itoa.go:35		0xe29e94		31c0				XORL AX, AX							
  itoa.go:35		0xe29e96		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe29e9b		0f1f440000			NOPL 0(AX)(AX*1)						
  itoa.go:35		0xe29ea0		e81b5a6cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:225	0xe29ea5		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:225	0xe29ead		4889c7				MOVQ AX, DI							
  exc_task_build.go:225	0xe29eb0		4889de				MOVQ BX, SI							
  exc_task_build.go:225	0xe29eb3		31c0				XORL AX, AX							
  exc_task_build.go:225	0xe29eb5		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:225	0xe29ebd		0f1f00				NOPL 0(AX)							
  exc_task_build.go:225	0xe29ec0		e83bb562ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:225	0xe29ec5		4889842470040000		MOVQ AX, 0x470(SP)						
  exc_task_build.go:225	0xe29ecd		48899c24d0010000		MOVQ BX, 0x1d0(SP)						
  exc_task_build.go:225	0xe29ed5		4889842460020000		MOVQ AX, 0x260(SP)						
  exc_task_build.go:225	0xe29edd		48899c2468020000		MOVQ BX, 0x268(SP)						
  exc_task_build.go:226	0xe29ee5		31c9				XORL CX, CX							
  exc_task_build.go:226	0xe29ee7		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:226	0xe29eec		488d352d8a2100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:226	0xe29ef3		488d05a6337302			LEAQ unicode..stmp_365(SB), AX					
  exc_task_build.go:226	0xe29efa		4889fb				MOVQ DI, BX							
  exc_task_build.go:226	0xe29efd		0f1f00				NOPL 0(AX)							
  exc_task_build.go:226	0xe29f00		e83b7d64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:226	0xe29f05		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:226	0xe29f0d		488b9424d0010000		MOVQ 0x1d0(SP), DX						
  exc_task_build.go:226	0xe29f15		48895008			MOVQ DX, 0x8(AX)						
  exc_task_build.go:226	0xe29f19		833d303c730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:226	0xe29f20		750a				JNE 0xe29f2c							
  exc_task_build.go:226	0xe29f22		488b942470040000		MOVQ 0x470(SP), DX						
  exc_task_build.go:226	0xe29f2a		eb17				JMP 0xe29f43							
  exc_task_build.go:226	0xe29f2c		e80fe564ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:226	0xe29f31		488b942470040000		MOVQ 0x470(SP), DX						
  exc_task_build.go:226	0xe29f39		498913				MOVQ DX, 0(R11)							
  exc_task_build.go:226	0xe29f3c		4c8b00				MOVQ 0(AX), R8							
  exc_task_build.go:226	0xe29f3f		4d894308			MOVQ R8, 0x8(R11)						
  exc_task_build.go:226	0xe29f43		4889842438020000		MOVQ AX, 0x238(SP)						
  exc_task_build.go:226	0xe29f4b		488910				MOVQ DX, 0(AX)							
  exc_task_build.go:227	0xe29f4e		488b9424f0010000		MOVQ 0x1f0(SP), DX						
  exc_task_build.go:227	0xe29f56		4c8b4210			MOVQ 0x10(DX), R8						
  exc_task_build.go:227	0xe29f5a		488b5218			MOVQ 0x18(DX), DX						
  exc_task_build.go:227	0xe29f5e		4c89842450020000		MOVQ R8, 0x250(SP)						
  exc_task_build.go:227	0xe29f66		4889942458020000		MOVQ DX, 0x258(SP)						
  exc_task_build.go:228	0xe29f6e		f20f100502d90302		MOVSD_XMM $f64.3fe3333333333333(SB), X0				
  exc_task_build.go:228	0xe29f76		f20f11842488020000		MOVSD_XMM X0, 0x288(SP)						
  exc_task_build.go:230	0xe29f7f		bb01000000			MOVL $__minor_os_version__(SB), BX				
  exc_task_build.go:230	0xe29f84		31c9				XORL CX, CX							
  exc_task_build.go:230	0xe29f86		4889df				MOVQ BX, DI							
  exc_task_build.go:230	0xe29f89		488d35f0813100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:230	0xe29f90		31c0				XORL AX, AX							
  exc_task_build.go:230	0xe29f92		e8a97c64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:230	0xe29f97		833db23b730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:230	0xe29f9e		6690				NOPW								
  exc_task_build.go:230	0xe29fa0		7437				JE 0xe29fd9							
  exc_task_build.go:230	0xe29fa2		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:230	0xe29faa		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:230	0xe29fb2		4889c3				MOVQ AX, BX							
  exc_task_build.go:230	0xe29fb5		488d8c2440020000		LEAQ 0x240(SP), CX						
  exc_task_build.go:230	0xe29fbd		488d05bc813100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:230	0xe29fc4		e857af5eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:230	0xe29fc9		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:440	0xe29fd1		488b8c2438010000		MOVQ 0x138(SP), CX						
  exc_task_build.go:230	0xe29fd9		4889c7				MOVQ AX, DI							
  exc_task_build.go:230	0xe29fdc		488db42440020000		LEAQ 0x240(SP), SI						
  exc_task_build.go:230	0xe29fe4		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:230	0xe29fe9		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:230	0xe29fee		e8e9ed64ff			CALL 0x478ddc							
  exc_task_build.go:230	0xe29ff3		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:440	0xe29ff7		4889ca				MOVQ CX, DX							
  exc_task_build.go:440	0xe29ffa		bb01000000			MOVL $__minor_os_version__(SB), BX				
  exc_task_build.go:440	0xe29fff		4989c0				MOVQ AX, R8							
  exc_task_build.go:444	0xe2a002		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:444	0xe2a00a		41bc01000000			MOVL $__minor_os_version__(SB), R12				
  exc_task_build.go:444	0xe2a010		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:230	0xe2a018		e922040000			JMP 0xe2a43f							
  itoa.go:35		0xe2a01d		31c0				XORL AX, AX							
  itoa.go:35		0xe2a01f		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2a024		e897586cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:232	0xe2a029		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:232	0xe2a031		4889c7				MOVQ AX, DI							
  exc_task_build.go:232	0xe2a034		4889de				MOVQ BX, SI							
  exc_task_build.go:232	0xe2a037		31c0				XORL AX, AX							
  exc_task_build.go:232	0xe2a039		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:232	0xe2a041		e8bab362ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:232	0xe2a046		4889842458040000		MOVQ AX, 0x458(SP)						
  exc_task_build.go:232	0xe2a04e		48899c24c8010000		MOVQ BX, 0x1c8(SP)						
  exc_task_build.go:232	0xe2a056		4889842460020000		MOVQ AX, 0x260(SP)						
  exc_task_build.go:232	0xe2a05e		48899c2468020000		MOVQ BX, 0x268(SP)						
  exc_task_build.go:233	0xe2a066		31c9				XORL CX, CX							
  exc_task_build.go:233	0xe2a068		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:233	0xe2a06d		488d35ac882100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:233	0xe2a074		488d0525327302			LEAQ unicode..stmp_365(SB), AX					
  exc_task_build.go:233	0xe2a07b		4889fb				MOVQ DI, BX							
  exc_task_build.go:233	0xe2a07e		6690				NOPW								
  exc_task_build.go:233	0xe2a080		e8bb7b64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:233	0xe2a085		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:233	0xe2a08d		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:233	0xe2a095		48895008			MOVQ DX, 0x8(AX)						
  exc_task_build.go:233	0xe2a099		833db03a730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:233	0xe2a0a0		750a				JNE 0xe2a0ac							
  exc_task_build.go:233	0xe2a0a2		488b942458040000		MOVQ 0x458(SP), DX						
  exc_task_build.go:233	0xe2a0aa		eb17				JMP 0xe2a0c3							
  exc_task_build.go:233	0xe2a0ac		e88fe364ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:233	0xe2a0b1		488b942458040000		MOVQ 0x458(SP), DX						
  exc_task_build.go:233	0xe2a0b9		498913				MOVQ DX, 0(R11)							
  exc_task_build.go:233	0xe2a0bc		4c8b00				MOVQ 0(AX), R8							
  exc_task_build.go:233	0xe2a0bf		4d894308			MOVQ R8, 0x8(R11)						
  exc_task_build.go:233	0xe2a0c3		4889842438020000		MOVQ AX, 0x238(SP)						
  exc_task_build.go:233	0xe2a0cb		488910				MOVQ DX, 0(AX)							
  exc_task_build.go:234	0xe2a0ce		488b9424f0010000		MOVQ 0x1f0(SP), DX						
  exc_task_build.go:234	0xe2a0d6		4c8b4210			MOVQ 0x10(DX), R8						
  exc_task_build.go:234	0xe2a0da		4c8b4a18			MOVQ 0x18(DX), R9						
  exc_task_build.go:234	0xe2a0de		4c89842450020000		MOVQ R8, 0x250(SP)						
  exc_task_build.go:234	0xe2a0e6		4c898c2458020000		MOVQ R9, 0x258(SP)						
  exc_task_build.go:235	0xe2a0ee		f20f100582d70302		MOVSD_XMM $f64.3fe3333333333333(SB), X0				
  exc_task_build.go:235	0xe2a0f6		f20f11842488020000		MOVSD_XMM X0, 0x288(SP)						
  exc_task_build.go:237	0xe2a0ff		bb01000000			MOVL $__minor_os_version__(SB), BX				
  exc_task_build.go:237	0xe2a104		31c9				XORL CX, CX							
  exc_task_build.go:237	0xe2a106		4889df				MOVQ BX, DI							
  exc_task_build.go:237	0xe2a109		488d3570803100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:237	0xe2a110		31c0				XORL AX, AX							
  exc_task_build.go:237	0xe2a112		e8297b64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:237	0xe2a117		833d323a730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:237	0xe2a11e		6690				NOPW								
  exc_task_build.go:237	0xe2a120		7437				JE 0xe2a159							
  exc_task_build.go:237	0xe2a122		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:237	0xe2a12a		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:237	0xe2a132		4889c3				MOVQ AX, BX							
  exc_task_build.go:237	0xe2a135		488d8c2440020000		LEAQ 0x240(SP), CX						
  exc_task_build.go:237	0xe2a13d		488d053c803100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:237	0xe2a144		e8d7ad5eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:237	0xe2a149		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:238	0xe2a151		488b8c2438010000		MOVQ 0x138(SP), CX						
  exc_task_build.go:237	0xe2a159		4889c7				MOVQ AX, DI							
  exc_task_build.go:237	0xe2a15c		488db42440020000		LEAQ 0x240(SP), SI						
  exc_task_build.go:237	0xe2a164		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:237	0xe2a169		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:237	0xe2a16e		e869ec64ff			CALL 0x478ddc							
  exc_task_build.go:237	0xe2a173		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:238	0xe2a177		488b942470040000		MOVQ 0x470(SP), DX						
  exc_task_build.go:238	0xe2a17f		48891424			MOVQ DX, 0(SP)							
  exc_task_build.go:238	0xe2a183		4c8ba424d0010000		MOVQ 0x1d0(SP), R12						
  exc_task_build.go:238	0xe2a18b		4c89642408			MOVQ R12, 0x8(SP)						
  exc_task_build.go:238	0xe2a190		48c744241001000000		MOVQ $__minor_os_version__(SB), 0x10(SP)			
  exc_task_build.go:238	0xe2a199		bb01000000			MOVL $__minor_os_version__(SB), BX				
  exc_task_build.go:238	0xe2a19e		488bbc2438020000		MOVQ 0x238(SP), DI						
  exc_task_build.go:238	0xe2a1a6		4889de				MOVQ BX, SI							
  exc_task_build.go:238	0xe2a1a9		4c8b842448010000		MOVQ 0x148(SP), R8						
  exc_task_build.go:238	0xe2a1b1		4c8b8c24f0010000		MOVQ 0x1f0(SP), R9						
  exc_task_build.go:238	0xe2a1b9		4c8b942408010000		MOVQ 0x108(SP), R10						
  exc_task_build.go:238	0xe2a1c1		4c8b9c2428010000		MOVQ 0x128(SP), R11						
  exc_task_build.go:238	0xe2a1c9		e872e1ffff			CALL CAS-Backend/pkg/diapdu.appendPathMiddleMoveTasks(SB)	
  exc_task_build.go:238	0xe2a1ce		4c89842448010000		MOVQ R8, 0x148(SP)						
  exc_task_build.go:238	0xe2a1d6		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:238	0xe2a1de		4889bc2438020000		MOVQ DI, 0x238(SP)						
  exc_task_build.go:238	0xe2a1e6		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:238	0xe2a1ee		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:240	0xe2a1f6		488b942408010000		MOVQ 0x108(SP), DX						
  exc_task_build.go:240	0xe2a1fe		4883c2fe			ADDQ $-0x2, DX							
  exc_task_build.go:240	0xe2a202		48c1e204			SHLQ $__subsystem__+1(SB), DX					
  exc_task_build.go:240	0xe2a206		48899424c8010000		MOVQ DX, 0x1c8(SP)						
  exc_task_build.go:242	0xe2a20e		4c8d6601			LEAQ 0x1(SI), R12						
  exc_task_build.go:242	0xe2a212		4c89a424c0010000		MOVQ R12, 0x1c0(SP)						
  itoa.go:35		0xe2a21a		4c89c8				MOVQ R9, AX							
  itoa.go:35		0xe2a21d		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2a222		e899566cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:239	0xe2a227		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:239	0xe2a22f		4889c7				MOVQ AX, DI							
  exc_task_build.go:239	0xe2a232		4889de				MOVQ BX, SI							
  exc_task_build.go:239	0xe2a235		31c0				XORL AX, AX							
  exc_task_build.go:239	0xe2a237		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:239	0xe2a23f		90				NOPL								
  exc_task_build.go:239	0xe2a240		e8bbb162ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:239	0xe2a245		4889842488030000		MOVQ AX, 0x388(SP)						
  exc_task_build.go:239	0xe2a24d		48899c2490030000		MOVQ BX, 0x390(SP)						
  exc_task_build.go:240	0xe2a255		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:240	0xe2a25d		4c8ba424f0010000		MOVQ 0x1f0(SP), R12						
  exc_task_build.go:240	0xe2a265		4d8b2c14			MOVQ 0(R12)(DX*1), R13						
  exc_task_build.go:240	0xe2a269		498b541408			MOVQ 0x8(R12)(DX*1), DX						
  exc_task_build.go:240	0xe2a26e		4c89ac2468030000		MOVQ R13, 0x368(SP)						
  exc_task_build.go:240	0xe2a276		4889942470030000		MOVQ DX, 0x370(SP)						
  exc_task_build.go:241	0xe2a27e		f20f1005f2d50302		MOVSD_XMM $f64.3fe3333333333333(SB), X0				
  exc_task_build.go:241	0xe2a286		f20f118424b0030000		MOVSD_XMM X0, 0x3b0(SP)						
  exc_task_build.go:242	0xe2a28f		488b942488030000		MOVQ 0x388(SP), DX						
  exc_task_build.go:242	0xe2a297		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:242	0xe2a29f		4c8ba424c0010000		MOVQ 0x1c0(SP), R12						
  exc_task_build.go:242	0xe2a2a7		4c39e1				CMPQ CX, R12							
  exc_task_build.go:242	0xe2a2aa		720a				JB 0xe2a2b6							
  exc_task_build.go:242	0xe2a2ac		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:242	0xe2a2b4		eb42				JMP 0xe2a2f8							
  exc_task_build.go:239	0xe2a2b6		48899c24d0010000		MOVQ BX, 0x1d0(SP)						
  exc_task_build.go:242	0xe2a2be		4889942470040000		MOVQ DX, 0x470(SP)						
  exc_task_build.go:242	0xe2a2c6		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:242	0xe2a2ce		4c89e3				MOVQ R12, BX							
  exc_task_build.go:242	0xe2a2d1		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:242	0xe2a2d6		488d3543862100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:242	0xe2a2dd		0f1f00				NOPL 0(AX)							
  exc_task_build.go:242	0xe2a2e0		e85b7964ff			CALL runtime.growslice(SB)					
  exc_task_build.go:242	0xe2a2e5		488b942470040000		MOVQ 0x470(SP), DX						
  exc_task_build.go:242	0xe2a2ed		4989dc				MOVQ BX, R12							
  exc_task_build.go:242	0xe2a2f0		488b9c24d0010000		MOVQ 0x1d0(SP), BX						
  exc_task_build.go:242	0xe2a2f8		4d8d5424ff			LEAQ -0x1(R12), R10						
  exc_task_build.go:242	0xe2a2fd		49c1e204			SHLQ $__subsystem__+1(SB), R10					
  exc_task_build.go:242	0xe2a301		4a895c1008			MOVQ BX, 0x8(AX)(R10*1)						
  exc_task_build.go:242	0xe2a306		833d4338730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:242	0xe2a30d		7410				JE 0xe2a31f							
  exc_task_build.go:242	0xe2a30f		e82ce164ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:242	0xe2a314		498913				MOVQ DX, 0(R11)							
  exc_task_build.go:242	0xe2a317		4d8b2c02			MOVQ 0(R10)(AX*1), R13						
  exc_task_build.go:242	0xe2a31b		4d896b08			MOVQ R13, 0x8(R11)						
  exc_task_build.go:242	0xe2a31f		4889842438020000		MOVQ AX, 0x238(SP)						
  exc_task_build.go:242	0xe2a327		4c89a42440010000		MOVQ R12, 0x140(SP)						
  exc_task_build.go:242	0xe2a32f		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:242	0xe2a337		4a891410			MOVQ DX, 0(AX)(R10*1)						
  exc_task_build.go:243	0xe2a33b		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:243	0xe2a343		48ffc3				INCQ BX								
  exc_task_build.go:243	0xe2a346		488b942438010000		MOVQ 0x138(SP), DX						
  exc_task_build.go:243	0xe2a34e		4839da				CMPQ DX, BX							
  exc_task_build.go:243	0xe2a351		720a				JB 0xe2a35d							
  exc_task_build.go:243	0xe2a353		488bb42430020000		MOVQ 0x230(SP), SI						
  exc_task_build.go:243	0xe2a35b		eb3a				JMP 0xe2a397							
  exc_task_build.go:243	0xe2a35d		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:243	0xe2a365		4889d1				MOVQ DX, CX							
  exc_task_build.go:243	0xe2a368		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:243	0xe2a36d		488d350c7e3100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:243	0xe2a374		e8c77864ff			CALL runtime.growslice(SB)					
  exc_task_build.go:444	0xe2a379		4c8ba42440010000		MOVQ 0x140(SP), R12						
  exc_task_build.go:243	0xe2a381		4889c6				MOVQ AX, SI							
  exc_task_build.go:243	0xe2a384		4889ca				MOVQ CX, DX							
  exc_task_build.go:444	0xe2a387		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:444	0xe2a38f		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:243	0xe2a397		4c69d3e0000000			IMULQ $.file+147(SB), BX, R10					
  exc_task_build.go:243	0xe2a39e		498d3c32			LEAQ 0(R10)(SI*1), DI						
  exc_task_build.go:243	0xe2a3a2		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:243	0xe2a3a9		833da037730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:243	0xe2a3b0		746f				JE 0xe2a421							
  exc_task_build.go:243	0xe2a3b2		4889b42468040000		MOVQ SI, 0x468(SP)						
  exc_task_build.go:243	0xe2a3ba		48899c24b8010000		MOVQ BX, 0x1b8(SP)						
  exc_task_build.go:243	0xe2a3c2		48899424b0010000		MOVQ DX, 0x1b0(SP)						
  exc_task_build.go:243	0xe2a3ca		4889bc2460040000		MOVQ DI, 0x460(SP)						
  exc_task_build.go:243	0xe2a3d2		488d05a77d3100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:243	0xe2a3d9		4889fb				MOVQ DI, BX							
  exc_task_build.go:243	0xe2a3dc		488d8c2468030000		LEAQ 0x368(SP), CX						
  exc_task_build.go:243	0xe2a3e4		e837ab5eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:444	0xe2a3e9		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:444	0xe2a3f1		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:440	0xe2a3f9		488b9424b0010000		MOVQ 0x1b0(SP), DX						
  exc_task_build.go:440	0xe2a401		488b9c24b8010000		MOVQ 0x1b8(SP), BX						
  exc_task_build.go:440	0xe2a409		488bb42468040000		MOVQ 0x468(SP), SI						
  exc_task_build.go:243	0xe2a411		488bbc2460040000		MOVQ 0x460(SP), DI						
  exc_task_build.go:444	0xe2a419		4c8ba42440010000		MOVQ 0x140(SP), R12						
  exc_task_build.go:243	0xe2a421		4989f0				MOVQ SI, R8							
  exc_task_build.go:243	0xe2a424		488db42468030000		LEAQ 0x368(SP), SI						
  exc_task_build.go:243	0xe2a42c		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:243	0xe2a431		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:243	0xe2a436		e8a1e964ff			CALL 0x478ddc							
  exc_task_build.go:243	0xe2a43b		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:440	0xe2a43f		4989d2				MOVQ DX, R10							
  exc_task_build.go:444	0xe2a442		4c89e2				MOVQ R12, DX							
  exc_task_build.go:440	0xe2a445		4889c6				MOVQ AX, SI							
  exc_task_build.go:440	0xe2a448		4c89c0				MOVQ R8, AX							
  exc_task_build.go:444	0xe2a44b		4989f0				MOVQ SI, R8							
  exc_task_build.go:444	0xe2a44e		e98d1d0000			JMP 0xe2c1e0							
  exc_task_build.go:220	0xe2a453		488d15c6842100			LEAQ runtime.types+383264(SB), DX				
  exc_task_build.go:220	0xe2a45a		4889942408050000		MOVQ DX, 0x508(SP)						
  exc_task_build.go:220	0xe2a462		488d15b7d90302			LEAQ CAS-Backend/pkg/diapdu..stmp_5(SB), DX			
  exc_task_build.go:220	0xe2a469		4889942410050000		MOVQ DX, 0x510(SP)						
  print.go:314		0xe2a471		488b1d087c6e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe2a478		488d0561160402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe2a47f		488d8c2408050000		LEAQ 0x508(SP), CX						
  print.go:314		0xe2a487		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe2a48c		4889fe				MOVQ DI, SI							
  print.go:314		0xe2a48f		e8cc536fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:221	0xe2a494		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:221	0xe2a49c		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:221	0xe2a4a4		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:221	0xe2a4ac		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:221	0xe2a4b4		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:221	0xe2a4bc		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:221	0xe2a4c4		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:221	0xe2a4cc		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:221	0xe2a4d4		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:221	0xe2a4dc		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:221	0xe2a4e4		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:221	0xe2a4ec		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:221	0xe2a4f4		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:221	0xe2a4fc		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:221	0xe2a504		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:221	0xe2a50d		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:221	0xe2a514		5d				POPQ BP								
  exc_task_build.go:221	0xe2a515		c3				RET								
  exc_task_build.go:287	0xe2a516		4883bc248003000000		CMPQ 0x380(SP), $0x0						
  exc_task_build.go:287	0xe2a51f		90				NOPL								
  exc_task_build.go:287	0xe2a520		0f855f060000			JNE 0xe2ab85							
  exc_task_build.go:287	0xe2a526		4883bc247003000000		CMPQ 0x370(SP), $0x0						
  exc_task_build.go:287	0xe2a52f		0f8550060000			JNE 0xe2ab85							
  exc_task_build.go:289	0xe2a535		4839942448020000		CMPQ 0x248(SP), DX						
  exc_task_build.go:289	0xe2a53d		7407				JE 0xe2a546							
  exc_task_build.go:289	0xe2a53f		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:289	0xe2a544		eb40				JMP 0xe2a586							
  exc_task_build.go:289	0xe2a546		488b9c2440020000		MOVQ 0x240(SP), BX						
  exc_task_build.go:289	0xe2a54e		4889f0				MOVQ SI, AX							
  exc_task_build.go:289	0xe2a551		4889d1				MOVQ DX, CX							
  exc_task_build.go:289	0xe2a554		e807895dff			CALL runtime.memequal(SB)					
  exc_task_build.go:289	0xe2a559		83f001				XORL $__minor_os_version__(SB), AX				
  exc_task_build.go:293	0xe2a55c		488b8c2468010000		MOVQ 0x168(SP), CX						
  exc_task_build.go:293	0xe2a564		488b9424a8010000		MOVQ 0x1a8(SP), DX						
  exc_task_build.go:289	0xe2a56c		488b9c2460010000		MOVQ 0x160(SP), BX						
  exc_task_build.go:293	0xe2a574		488bb42450040000		MOVQ 0x450(SP), SI						
  exc_task_build.go:289	0xe2a57c		89c7				MOVL AX, DI							
  exc_task_build.go:293	0xe2a57e		488b842428030000		MOVQ 0x328(SP), AX						
  exc_task_build.go:289	0xe2a586		4084ff				TESTL DI, DI							
  exc_task_build.go:289	0xe2a589		7509				JNE 0xe2a594							
  exc_task_build.go:289	0xe2a58b		4885db				TESTQ BX, BX							
  exc_task_build.go:291	0xe2a58e		0f8403010000			JE 0xe2a697							
  exc_task_build.go:293	0xe2a594		4c8ba42440020000		MOVQ 0x240(SP), R12						
  exc_task_build.go:293	0xe2a59c		488bbc2448020000		MOVQ 0x248(SP), DI						
  exc_task_build.go:293	0xe2a5a4		4c8b8424d0010000		MOVQ 0x1d0(SP), R8						
  exc_task_build.go:293	0xe2a5ac		4989c1				MOVQ AX, R9							
  exc_task_build.go:293	0xe2a5af		4989da				MOVQ BX, R10							
  exc_task_build.go:293	0xe2a5b2		4989cb				MOVQ CX, R11							
  exc_task_build.go:293	0xe2a5b5		4889f0				MOVQ SI, AX							
  exc_task_build.go:293	0xe2a5b8		4889d3				MOVQ DX, BX							
  exc_task_build.go:293	0xe2a5bb		4c89e1				MOVQ R12, CX							
  exc_task_build.go:293	0xe2a5be		488bb42470040000		MOVQ 0x470(SP), SI						
  exc_task_build.go:293	0xe2a5c6		e8d5d8ffff			CALL CAS-Backend/pkg/diapdu.buildGotoTasks(SB)			
  exc_task_build.go:293	0xe2a5cb		4584d2				TESTL R10, R10							
  exc_task_build.go:294	0xe2a5ce		0f85d8000000			JNE 0xe2a6ac							
  exc_task_build.go:295	0xe2a5d4		488d1545832100			LEAQ runtime.types+383264(SB), DX				
  exc_task_build.go:295	0xe2a5db		48899424c8040000		MOVQ DX, 0x4c8(SP)						
  exc_task_build.go:295	0xe2a5e3		488d1546d80302			LEAQ CAS-Backend/pkg/diapdu..stmp_12(SB), DX			
  exc_task_build.go:295	0xe2a5ea		48899424d0040000		MOVQ DX, 0x4d0(SP)						
  print.go:314		0xe2a5f2		488b1d877a6e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe2a5f9		488d05e0140402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe2a600		488d8c24c8040000		LEAQ 0x4c8(SP), CX						
  print.go:314		0xe2a608		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe2a60d		4889fe				MOVQ DI, SI							
  print.go:314		0xe2a610		e84b526fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:296	0xe2a615		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:296	0xe2a61d		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:296	0xe2a625		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:296	0xe2a62d		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:296	0xe2a635		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:296	0xe2a63d		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:296	0xe2a645		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:296	0xe2a64d		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:296	0xe2a655		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:296	0xe2a65d		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:296	0xe2a665		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:296	0xe2a66d		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:296	0xe2a675		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:296	0xe2a67d		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:296	0xe2a685		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:296	0xe2a68e		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:296	0xe2a695		5d				POPQ BP								
  exc_task_build.go:296	0xe2a696		c3				RET								
  exc_task_build.go:296	0xe2a697		4531c9				XORL R9, R9							
  exc_task_build.go:296	0xe2a69a		4531c0				XORL R8, R8							
  exc_task_build.go:296	0xe2a69d		31f6				XORL SI, SI							
  exc_task_build.go:208	0xe2a69f		488d3dfa2b7302			LEAQ unicode..stmp_365(SB), DI					
  exc_task_build.go:208	0xe2a6a6		31c9				XORL CX, CX							
  exc_task_build.go:208	0xe2a6a8		31c0				XORL AX, AX							
  exc_task_build.go:208	0xe2a6aa		31db				XORL BX, BX							
  exc_task_build.go:300	0xe2a6ac		4c89842448010000		MOVQ R8, 0x148(SP)						
  exc_task_build.go:300	0xe2a6b4		4889bc2438020000		MOVQ DI, 0x238(SP)						
  exc_task_build.go:304	0xe2a6bc		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:304	0xe2a6c4		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:304	0xe2a6cc		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:299	0xe2a6d4		4c898c2478010000		MOVQ R9, 0x178(SP)						
  exc_task_build.go:300	0xe2a6dc		488d5601			LEAQ 0x1(SI), DX						
  exc_task_build.go:300	0xe2a6e0		48899424c8010000		MOVQ DX, 0x1c8(SP)						
  itoa.go:35		0xe2a6e8		4c89c8				MOVQ R9, AX							
  itoa.go:35		0xe2a6eb		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2a6f0		e8cb516cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:299	0xe2a6f5		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:299	0xe2a6fd		4889c7				MOVQ AX, DI							
  exc_task_build.go:299	0xe2a700		4889de				MOVQ BX, SI							
  exc_task_build.go:299	0xe2a703		31c0				XORL AX, AX							
  exc_task_build.go:299	0xe2a705		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:299	0xe2a70d		e8eeac62ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:299	0xe2a712		4889842460020000		MOVQ AX, 0x260(SP)						
  exc_task_build.go:299	0xe2a71a		48899c2468020000		MOVQ BX, 0x268(SP)						
  exc_task_build.go:300	0xe2a722		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:300	0xe2a72a		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:300	0xe2a732		4839d1				CMPQ CX, DX							
  exc_task_build.go:300	0xe2a735		720b				JB 0xe2a742							
  exc_task_build.go:300	0xe2a737		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:300	0xe2a73f		90				NOPL								
  exc_task_build.go:300	0xe2a740		eb42				JMP 0xe2a784							
  exc_task_build.go:299	0xe2a742		4889842458040000		MOVQ AX, 0x458(SP)						
  exc_task_build.go:299	0xe2a74a		48899c24c8010000		MOVQ BX, 0x1c8(SP)						
  exc_task_build.go:300	0xe2a752		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:300	0xe2a75a		4889d3				MOVQ DX, BX							
  exc_task_build.go:300	0xe2a75d		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:300	0xe2a762		488d35b7812100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:300	0xe2a769		e8d27464ff			CALL runtime.growslice(SB)					
  exc_task_build.go:300	0xe2a76e		4889c6				MOVQ AX, SI							
  exc_task_build.go:300	0xe2a771		4889da				MOVQ BX, DX							
  exc_task_build.go:300	0xe2a774		488b842458040000		MOVQ 0x458(SP), AX						
  exc_task_build.go:300	0xe2a77c		488b9c24c8010000		MOVQ 0x1c8(SP), BX						
  exc_task_build.go:300	0xe2a784		4c8d52ff			LEAQ -0x1(DX), R10						
  exc_task_build.go:300	0xe2a788		49c1e204			SHLQ $__subsystem__+1(SB), R10					
  exc_task_build.go:300	0xe2a78c		4a895c1608			MOVQ BX, 0x8(SI)(R10*1)						
  exc_task_build.go:300	0xe2a791		833db833730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:300	0xe2a798		7410				JE 0xe2a7aa							
  exc_task_build.go:300	0xe2a79a		e8a1dc64ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:300	0xe2a79f		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:300	0xe2a7a2		4e8b2416			MOVQ 0(SI)(R10*1), R12						
  exc_task_build.go:300	0xe2a7a6		4d896308			MOVQ R12, 0x8(R11)						
  exc_task_build.go:300	0xe2a7aa		4889b42438020000		MOVQ SI, 0x238(SP)						
  exc_task_build.go:300	0xe2a7b2		4889942440010000		MOVQ DX, 0x140(SP)						
  exc_task_build.go:300	0xe2a7ba		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:300	0xe2a7c2		4a890416			MOVQ AX, 0(SI)(R10*1)						
  exc_task_build.go:301	0xe2a7c6		c684240803000001		MOVB $__minor_os_version__(SB), 0x308(SP)			
  exc_task_build.go:302	0xe2a7ce		f20f10058ad00302		MOVSD_XMM $f64.3fc999999999999a(SB), X0				
  exc_task_build.go:302	0xe2a7d6		f20f11842488020000		MOVSD_XMM X0, 0x288(SP)						
  exc_task_build.go:303	0xe2a7df		4c8d153d993400			LEAQ go:string.*+48155(SB), R10					
  exc_task_build.go:303	0xe2a7e6		4c89942478020000		MOVQ R10, 0x278(SP)						
  exc_task_build.go:303	0xe2a7ee		48c784248002000008000000	MOVQ $__major_os_version__+2(SB), 0x280(SP)			
  exc_task_build.go:304	0xe2a7fa		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:304	0xe2a802		48ffc3				INCQ BX								
  exc_task_build.go:304	0xe2a805		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:304	0xe2a80d		4939da				CMPQ R10, BX							
  exc_task_build.go:304	0xe2a810		720a				JB 0xe2a81c							
  exc_task_build.go:304	0xe2a812		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:304	0xe2a81a		eb37				JMP 0xe2a853							
  exc_task_build.go:304	0xe2a81c		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:304	0xe2a824		4c89d1				MOVQ R10, CX							
  exc_task_build.go:304	0xe2a827		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:304	0xe2a82c		488d354d793100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:304	0xe2a833		e8087464ff			CALL runtime.growslice(SB)					
  exc_task_build.go:444	0xe2a838		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:444	0xe2a840		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:304	0xe2a848		4989ca				MOVQ CX, R10							
  exc_task_build.go:444	0xe2a84b		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:304	0xe2a853		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:304	0xe2a85b		4c89942438010000		MOVQ R10, 0x138(SP)						
  exc_task_build.go:304	0xe2a863		4c69dbe0000000			IMULQ $.file+147(SB), BX, R11					
  exc_task_build.go:304	0xe2a86a		498d3c03			LEAQ 0(R11)(AX*1), DI						
  exc_task_build.go:304	0xe2a86e		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:304	0xe2a875		833dd432730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:304	0xe2a87c		745f				JE 0xe2a8dd							
  exc_task_build.go:304	0xe2a87e		48899c24c0010000		MOVQ BX, 0x1c0(SP)						
  exc_task_build.go:304	0xe2a886		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:304	0xe2a88e		488d05eb783100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:304	0xe2a895		4889fb				MOVQ DI, BX							
  exc_task_build.go:304	0xe2a898		488d8c2440020000		LEAQ 0x240(SP), CX						
  exc_task_build.go:304	0xe2a8a0		e87ba65eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:440	0xe2a8a5		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:444	0xe2a8ad		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:444	0xe2a8b5		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:440	0xe2a8bd		488b9c24c0010000		MOVQ 0x1c0(SP), BX						
  exc_task_build.go:444	0xe2a8c5		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:304	0xe2a8cd		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:440	0xe2a8d5		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:300	0xe2a8dd		4989f0				MOVQ SI, R8							
  exc_task_build.go:304	0xe2a8e0		488db42440020000		LEAQ 0x240(SP), SI						
  exc_task_build.go:304	0xe2a8e8		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:304	0xe2a8ed		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:304	0xe2a8f2		e8e5e464ff			CALL 0x478ddc							
  exc_task_build.go:304	0xe2a8f7		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:306	0xe2a8fb		4883bc248006000000		CMPQ 0x680(SP), $0x0						
  exc_task_build.go:306	0xe2a904		0f84d6180000			JE 0xe2c1e0							
  exc_task_build.go:305	0xe2a90a		488b842478010000		MOVQ 0x178(SP), AX						
  exc_task_build.go:305	0xe2a912		48ffc0				INCQ AX								
  exc_task_build.go:305	0xe2a915		4889842478010000		MOVQ AX, 0x178(SP)						
  exc_task_build.go:307	0xe2a91d		488d4b01			LEAQ 0x1(BX), CX						
  exc_task_build.go:307	0xe2a921		48898c24c8010000		MOVQ CX, 0x1c8(SP)						
  itoa.go:35		0xe2a929		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2a92e		e88d4f6cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:316	0xe2a933		488dbc2448050000		LEAQ 0x548(SP), DI						
  exc_task_build.go:316	0xe2a93b		488d35de550502			LEAQ CAS-Backend/pkg/diapdu..stmp_18(SB), SI			
  exc_task_build.go:316	0xe2a942		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:316	0xe2a947		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:316	0xe2a94c		e88be464ff			CALL 0x478ddc							
  exc_task_build.go:316	0xe2a951		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:308	0xe2a955		488b8c2450020000		MOVQ 0x250(SP), CX						
  exc_task_build.go:308	0xe2a95d		488b942458020000		MOVQ 0x258(SP), DX						
  exc_task_build.go:308	0xe2a965		48898c2448050000		MOVQ CX, 0x548(SP)						
  exc_task_build.go:308	0xe2a96d		4889942450050000		MOVQ DX, 0x550(SP)						
  exc_task_build.go:309	0xe2a975		488b8c2478060000		MOVQ 0x678(SP), CX						
  exc_task_build.go:309	0xe2a97d		488b942480060000		MOVQ 0x680(SP), DX						
  exc_task_build.go:309	0xe2a985		48898c2458050000		MOVQ CX, 0x558(SP)						
  exc_task_build.go:309	0xe2a98d		4889942460050000		MOVQ DX, 0x560(SP)						
  exc_task_build.go:310	0xe2a995		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:310	0xe2a99d		4889c7				MOVQ AX, DI							
  exc_task_build.go:310	0xe2a9a0		4889de				MOVQ BX, SI							
  exc_task_build.go:310	0xe2a9a3		31c0				XORL AX, AX							
  exc_task_build.go:310	0xe2a9a5		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:310	0xe2a9ad		e84eaa62ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:310	0xe2a9b2		4889842468050000		MOVQ AX, 0x568(SP)						
  exc_task_build.go:310	0xe2a9ba		48899c2470050000		MOVQ BX, 0x570(SP)						
  exc_task_build.go:312	0xe2a9c2		f20f10842458010000		MOVSD_XMM 0x158(SP), X0						
  exc_task_build.go:312	0xe2a9cb		f20f11842400060000		MOVSD_XMM X0, 0x600(SP)						
  exc_task_build.go:307	0xe2a9d4		488b8c2438010000		MOVQ 0x138(SP), CX						
  exc_task_build.go:307	0xe2a9dc		488b9c24c8010000		MOVQ 0x1c8(SP), BX						
  exc_task_build.go:307	0xe2a9e4		4839d9				CMPQ CX, BX							
  exc_task_build.go:307	0xe2a9e7		720a				JB 0xe2a9f3							
  exc_task_build.go:307	0xe2a9e9		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:307	0xe2a9f1		eb19				JMP 0xe2aa0c							
  exc_task_build.go:307	0xe2a9f3		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:307	0xe2a9fb		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:307	0xe2aa00		488d3579773100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:307	0xe2aa07		e8347264ff			CALL runtime.growslice(SB)					
  exc_task_build.go:307	0xe2aa0c		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:307	0xe2aa14		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:307	0xe2aa1c		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:307	0xe2aa24		4869d3e0000000			IMULQ $.file+147(SB), BX, DX					
  exc_task_build.go:307	0xe2aa2b		488d3c02			LEAQ 0(DX)(AX*1), DI						
  exc_task_build.go:307	0xe2aa2f		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:307	0xe2aa36		833d1331730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:307	0xe2aa3d		7427				JE 0xe2aa66							
  exc_task_build.go:307	0xe2aa3f		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:307	0xe2aa47		488d0532773100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:307	0xe2aa4e		4889fb				MOVQ DI, BX							
  exc_task_build.go:307	0xe2aa51		488d8c2448050000		LEAQ 0x548(SP), CX						
  exc_task_build.go:307	0xe2aa59		e8c2a45eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:307	0xe2aa5e		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:307	0xe2aa66		488db42448050000		LEAQ 0x548(SP), SI						
  exc_task_build.go:307	0xe2aa6e		660f1f840000000000		NOPW 0(AX)(AX*1)						
  exc_task_build.go:307	0xe2aa77		660f1f840000000000		NOPW 0(AX)(AX*1)						
  exc_task_build.go:307	0xe2aa80		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:307	0xe2aa85		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:307	0xe2aa8a		e84de364ff			CALL 0x478ddc							
  exc_task_build.go:307	0xe2aa8f		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:318	0xe2aa93		488b8c2440010000		MOVQ 0x140(SP), CX						
  exc_task_build.go:318	0xe2aa9b		48ffc1				INCQ CX								
  exc_task_build.go:318	0xe2aa9e		48898c24c8010000		MOVQ CX, 0x1c8(SP)						
  itoa.go:35		0xe2aaa6		488b842478010000		MOVQ 0x178(SP), AX						
  itoa.go:35		0xe2aaae		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2aab3		e8084e6cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:318	0xe2aab8		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:318	0xe2aac0		4889c7				MOVQ AX, DI							
  exc_task_build.go:318	0xe2aac3		4889de				MOVQ BX, SI							
  exc_task_build.go:318	0xe2aac6		31c0				XORL AX, AX							
  exc_task_build.go:318	0xe2aac8		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:318	0xe2aad0		e82ba962ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:318	0xe2aad5		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:318	0xe2aadd		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:318	0xe2aae5		4839d1				CMPQ CX, DX							
  exc_task_build.go:318	0xe2aae8		720a				JB 0xe2aaf4							
  exc_task_build.go:318	0xe2aaea		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:318	0xe2aaf2		eb47				JMP 0xe2ab3b							
  exc_task_build.go:318	0xe2aaf4		4889842470040000		MOVQ AX, 0x470(SP)						
  exc_task_build.go:318	0xe2aafc		48899c24d0010000		MOVQ BX, 0x1d0(SP)						
  exc_task_build.go:318	0xe2ab04		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:318	0xe2ab0c		4889d3				MOVQ DX, BX							
  exc_task_build.go:318	0xe2ab0f		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:318	0xe2ab14		488d35057e2100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:318	0xe2ab1b		0f1f440000			NOPL 0(AX)(AX*1)						
  exc_task_build.go:318	0xe2ab20		e81b7164ff			CALL runtime.growslice(SB)					
  exc_task_build.go:318	0xe2ab25		4889c6				MOVQ AX, SI							
  exc_task_build.go:318	0xe2ab28		4889da				MOVQ BX, DX							
  exc_task_build.go:318	0xe2ab2b		488b842470040000		MOVQ 0x470(SP), AX						
  exc_task_build.go:318	0xe2ab33		488b9c24d0010000		MOVQ 0x1d0(SP), BX						
  exc_task_build.go:318	0xe2ab3b		4c8d52ff			LEAQ -0x1(DX), R10						
  exc_task_build.go:318	0xe2ab3f		49c1e204			SHLQ $__subsystem__+1(SB), R10					
  exc_task_build.go:318	0xe2ab43		4a895c1608			MOVQ BX, 0x8(SI)(R10*1)						
  exc_task_build.go:318	0xe2ab48		833d0130730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:318	0xe2ab4f		7410				JE 0xe2ab61							
  exc_task_build.go:318	0xe2ab51		e8ead864ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:318	0xe2ab56		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:318	0xe2ab59		4d8b2432			MOVQ 0(R10)(SI*1), R12						
  exc_task_build.go:318	0xe2ab5d		4d896308			MOVQ R12, 0x8(R11)						
  exc_task_build.go:318	0xe2ab61		4a890416			MOVQ AX, 0(SI)(R10*1)						
  exc_task_build.go:440	0xe2ab65		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:440	0xe2ab6d		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:440	0xe2ab75		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:444	0xe2ab7d		4989f0				MOVQ SI, R8							
  exc_task_build.go:318	0xe2ab80		e95b160000			JMP 0xe2c1e0							
  exc_task_build.go:322	0xe2ab85		4c8d2597953400			LEAQ go:string.*+48155(SB), R12					
  exc_task_build.go:322	0xe2ab8c		4c89a42478020000		MOVQ R12, 0x278(SP)						
  exc_task_build.go:322	0xe2ab94		48c784248002000008000000	MOVQ $__major_os_version__+2(SB), 0x280(SP)			
  exc_task_build.go:323	0xe2aba0		4c89a424a0030000		MOVQ R12, 0x3a0(SP)						
  exc_task_build.go:323	0xe2aba8		48c78424a803000008000000	MOVQ $__major_os_version__+2(SB), 0x3a8(SP)			
  exc_task_build.go:324	0xe2abb4		c684240803000001		MOVB $__minor_os_version__(SB), 0x308(SP)			
  exc_task_build.go:325	0xe2abbc		c684243004000001		MOVB $__minor_os_version__(SB), 0x430(SP)			
  exc_task_build.go:326	0xe2abc4		4839942448020000		CMPQ 0x248(SP), DX						
  exc_task_build.go:326	0xe2abcc		0f859b0d0000			JNE 0xe2b96d							
  exc_task_build.go:326	0xe2abd2		488b9c2440020000		MOVQ 0x240(SP), BX						
  exc_task_build.go:326	0xe2abda		4889f0				MOVQ SI, AX							
  exc_task_build.go:326	0xe2abdd		4889d1				MOVQ DX, CX							
  exc_task_build.go:326	0xe2abe0		e87b825dff			CALL runtime.memequal(SB)					
  exc_task_build.go:326	0xe2abe5		84c0				TESTL AL, AL							
  exc_task_build.go:326	0xe2abe7		0f84700d0000			JE 0xe2b95d							
  exc_task_build.go:327	0xe2abed		488b9c2458020000		MOVQ 0x258(SP), BX						
  exc_task_build.go:328	0xe2abf5		488bbc2470030000		MOVQ 0x370(SP), DI						
  exc_task_build.go:327	0xe2abfd		488b842450020000		MOVQ 0x250(SP), AX						
  exc_task_build.go:328	0xe2ac05		488b8c2468030000		MOVQ 0x368(SP), CX						
  exc_task_build.go:329	0xe2ac0d		4839df				CMPQ DI, BX							
  exc_task_build.go:329	0xe2ac10		7404				JE 0xe2ac16							
  exc_task_build.go:329	0xe2ac12		31d2				XORL DX, DX							
  exc_task_build.go:329	0xe2ac14		eb51				JMP 0xe2ac67							
  exc_task_build.go:327	0xe2ac16		4889842420030000		MOVQ AX, 0x320(SP)						
  exc_task_build.go:327	0xe2ac1e		48899c2450010000		MOVQ BX, 0x150(SP)						
  exc_task_build.go:328	0xe2ac26		48898c2448040000		MOVQ CX, 0x448(SP)						
  exc_task_build.go:328	0xe2ac2e		4889bc24a0010000		MOVQ DI, 0x1a0(SP)						
  exc_task_build.go:327	0xe2ac36		4889da				MOVQ BX, DX							
  exc_task_build.go:329	0xe2ac39		4889cb				MOVQ CX, BX							
  exc_task_build.go:329	0xe2ac3c		4889d1				MOVQ DX, CX							
  exc_task_build.go:329	0xe2ac3f		90				NOPL								
  exc_task_build.go:329	0xe2ac40		e81b825dff			CALL runtime.memequal(SB)					
  exc_task_build.go:55	0xe2ac45		488b8c2448040000		MOVQ 0x448(SP), CX						
  exc_task_build.go:55	0xe2ac4d		488b9c2450010000		MOVQ 0x150(SP), BX						
  exc_task_build.go:55	0xe2ac55		488bbc24a0010000		MOVQ 0x1a0(SP), DI						
  exc_task_build.go:329	0xe2ac5d		89c2				MOVL AX, DX							
  exc_task_build.go:55	0xe2ac5f		488b842420030000		MOVQ 0x320(SP), AX						
  exc_task_build.go:329	0xe2ac67		84d2				TESTL DL, DL							
  exc_task_build.go:329	0xe2ac69		0f842d050000			JE 0xe2b19c							
  exc_task_build.go:329	0xe2ac6f		4883bc247006000000		CMPQ 0x670(SP), $0x0						
  exc_task_build.go:329	0xe2ac78		0f851e050000			JNE 0xe2b19c							
  itoa.go:35		0xe2ac7e		31c0				XORL AX, AX							
  itoa.go:35		0xe2ac80		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2ac85		e8364c6cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:330	0xe2ac8a		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:330	0xe2ac92		4889c7				MOVQ AX, DI							
  exc_task_build.go:330	0xe2ac95		4889de				MOVQ BX, SI							
  exc_task_build.go:330	0xe2ac98		31c0				XORL AX, AX							
  exc_task_build.go:330	0xe2ac9a		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:330	0xe2aca2		e859a762ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:330	0xe2aca7		4889842458040000		MOVQ AX, 0x458(SP)						
  exc_task_build.go:330	0xe2acaf		48899c24c8010000		MOVQ BX, 0x1c8(SP)						
  exc_task_build.go:330	0xe2acb7		4889842460020000		MOVQ AX, 0x260(SP)						
  exc_task_build.go:330	0xe2acbf		48899c2468020000		MOVQ BX, 0x268(SP)						
  exc_task_build.go:331	0xe2acc7		31c9				XORL CX, CX							
  exc_task_build.go:331	0xe2acc9		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:331	0xe2acce		488d354b7c2100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:331	0xe2acd5		488d05c4257302			LEAQ unicode..stmp_365(SB), AX					
  exc_task_build.go:331	0xe2acdc		4889fb				MOVQ DI, BX							
  exc_task_build.go:331	0xe2acdf		90				NOPL								
  exc_task_build.go:331	0xe2ace0		e85b6f64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:331	0xe2ace5		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:331	0xe2aced		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:331	0xe2acf5		48895008			MOVQ DX, 0x8(AX)						
  exc_task_build.go:331	0xe2acf9		833d502e730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:331	0xe2ad00		750a				JNE 0xe2ad0c							
  exc_task_build.go:331	0xe2ad02		488b942458040000		MOVQ 0x458(SP), DX						
  exc_task_build.go:331	0xe2ad0a		eb17				JMP 0xe2ad23							
  exc_task_build.go:331	0xe2ad0c		e82fd764ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:331	0xe2ad11		488b942458040000		MOVQ 0x458(SP), DX						
  exc_task_build.go:331	0xe2ad19		498913				MOVQ DX, 0(R11)							
  exc_task_build.go:331	0xe2ad1c		4c8b00				MOVQ 0(AX), R8							
  exc_task_build.go:331	0xe2ad1f		4d894308			MOVQ R8, 0x8(R11)						
  exc_task_build.go:331	0xe2ad23		4889842438020000		MOVQ AX, 0x238(SP)						
  exc_task_build.go:331	0xe2ad2b		488910				MOVQ DX, 0(AX)							
  exc_task_build.go:333	0xe2ad2e		f20f10052acb0302		MOVSD_XMM $f64.3fc999999999999a(SB), X0				
  exc_task_build.go:333	0xe2ad36		f20f11842488020000		MOVSD_XMM X0, 0x288(SP)						
  exc_task_build.go:334	0xe2ad3f		bb01000000			MOVL $__minor_os_version__(SB), BX				
  exc_task_build.go:334	0xe2ad44		31c9				XORL CX, CX							
  exc_task_build.go:334	0xe2ad46		4889df				MOVQ BX, DI							
  exc_task_build.go:334	0xe2ad49		488d3530743100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:334	0xe2ad50		31c0				XORL AX, AX							
  exc_task_build.go:334	0xe2ad52		e8e96e64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:334	0xe2ad57		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:334	0xe2ad5f		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:334	0xe2ad67		833de22d730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:334	0xe2ad6e		741f				JE 0xe2ad8f							
  exc_task_build.go:334	0xe2ad70		4889c3				MOVQ AX, BX							
  exc_task_build.go:334	0xe2ad73		488d8c2440020000		LEAQ 0x240(SP), CX						
  exc_task_build.go:334	0xe2ad7b		488d05fe733100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:334	0xe2ad82		e899a15eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:334	0xe2ad87		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:334	0xe2ad8f		4889c7				MOVQ AX, DI							
  exc_task_build.go:334	0xe2ad92		488db42440020000		LEAQ 0x240(SP), SI						
  exc_task_build.go:334	0xe2ad9a		660f1f440000			NOPW 0(AX)(AX*1)						
  exc_task_build.go:334	0xe2ada0		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:334	0xe2ada5		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:334	0xe2adaa		e82de064ff			CALL 0x478ddc							
  exc_task_build.go:334	0xe2adaf		488b6d00			MOVQ 0(BP), BP							
  itoa.go:35		0xe2adb3		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2adb8		b801000000			MOVL $__minor_os_version__(SB), AX				
  itoa.go:35		0xe2adbd		0f1f00				NOPL 0(AX)							
  itoa.go:35		0xe2adc0		e8fb4a6cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:336	0xe2adc5		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:336	0xe2adcd		4889c7				MOVQ AX, DI							
  exc_task_build.go:336	0xe2add0		4889de				MOVQ BX, SI							
  exc_task_build.go:336	0xe2add3		31c0				XORL AX, AX							
  exc_task_build.go:336	0xe2add5		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:336	0xe2addd		0f1f00				NOPL 0(AX)							
  exc_task_build.go:336	0xe2ade0		e81ba662ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:336	0xe2ade5		4889842488030000		MOVQ AX, 0x388(SP)						
  exc_task_build.go:336	0xe2aded		48899c2490030000		MOVQ BX, 0x390(SP)						
  exc_task_build.go:337	0xe2adf5		f20f100563ca0302		MOVSD_XMM $f64.3fc999999999999a(SB), X0				
  exc_task_build.go:337	0xe2adfd		f20f118424b0030000		MOVSD_XMM X0, 0x3b0(SP)						
  exc_task_build.go:339	0xe2ae06		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:339	0xe2ae0e		4883f902			CMPQ CX, $__minor_os_version__+1(SB)				
  exc_task_build.go:339	0xe2ae12		720a				JB 0xe2ae1e							
  exc_task_build.go:339	0xe2ae14		488b942438020000		MOVQ 0x238(SP), DX						
  exc_task_build.go:339	0xe2ae1c		eb41				JMP 0xe2ae5f							
  exc_task_build.go:336	0xe2ae1e		48899c24c8010000		MOVQ BX, 0x1c8(SP)						
  exc_task_build.go:336	0xe2ae26		4889842458040000		MOVQ AX, 0x458(SP)						
  exc_task_build.go:339	0xe2ae2e		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:339	0xe2ae36		bb02000000			MOVL $__minor_os_version__+1(SB), BX				
  exc_task_build.go:339	0xe2ae3b		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:339	0xe2ae40		488d35d97a2100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:339	0xe2ae47		e8f46d64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:339	0xe2ae4c		488b9c24c8010000		MOVQ 0x1c8(SP), BX						
  exc_task_build.go:339	0xe2ae54		4889c2				MOVQ AX, DX							
  exc_task_build.go:339	0xe2ae57		488b842458040000		MOVQ 0x458(SP), AX						
  exc_task_build.go:339	0xe2ae5f		48895a18			MOVQ BX, 0x18(DX)						
  exc_task_build.go:339	0xe2ae63		833de62c730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:339	0xe2ae6a		7410				JE 0xe2ae7c							
  exc_task_build.go:339	0xe2ae6c		e8cfd564ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:339	0xe2ae71		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:339	0xe2ae74		4c8b5210			MOVQ 0x10(DX), R10						
  exc_task_build.go:339	0xe2ae78		4d895308			MOVQ R10, 0x8(R11)						
  exc_task_build.go:339	0xe2ae7c		4889942438020000		MOVQ DX, 0x238(SP)						
  exc_task_build.go:339	0xe2ae84		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:339	0xe2ae8c		48894210			MOVQ AX, 0x10(DX)						
  exc_task_build.go:340	0xe2ae90		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:340	0xe2ae98		4983fa02			CMPQ R10, $__minor_os_version__+1(SB)				
  exc_task_build.go:340	0xe2ae9c		720a				JB 0xe2aea8							
  exc_task_build.go:340	0xe2ae9e		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:340	0xe2aea6		eb34				JMP 0xe2aedc							
  exc_task_build.go:340	0xe2aea8		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:340	0xe2aeb0		bb02000000			MOVL $__minor_os_version__+1(SB), BX				
  exc_task_build.go:340	0xe2aeb5		4c89d1				MOVQ R10, CX							
  exc_task_build.go:340	0xe2aeb8		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:340	0xe2aebd		488d35bc723100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:340	0xe2aec4		e8776d64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:444	0xe2aec9		488b942438020000		MOVQ 0x238(SP), DX						
  exc_task_build.go:340	0xe2aed1		4989ca				MOVQ CX, R10							
  exc_task_build.go:444	0xe2aed4		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:340	0xe2aedc		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:340	0xe2aee4		4c89942438010000		MOVQ R10, 0x138(SP)						
  exc_task_build.go:340	0xe2aeec		488db8e0000000			LEAQ 0xe0(AX), DI						
  exc_task_build.go:340	0xe2aef3		833d562c730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:340	0xe2aefa		7447				JE 0xe2af43							
  exc_task_build.go:340	0xe2aefc		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:340	0xe2af04		488d0575723100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:340	0xe2af0b		4889fb				MOVQ DI, BX							
  exc_task_build.go:340	0xe2af0e		488d8c2468030000		LEAQ 0x368(SP), CX						
  exc_task_build.go:340	0xe2af16		e805a05eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:440	0xe2af1b		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:444	0xe2af23		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:444	0xe2af2b		488b942438020000		MOVQ 0x238(SP), DX						
  exc_task_build.go:340	0xe2af33		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:440	0xe2af3b		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:340	0xe2af43		488db42468030000		LEAQ 0x368(SP), SI						
  exc_task_build.go:340	0xe2af4b		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:340	0xe2af50		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:340	0xe2af55		e882de64ff			CALL 0x478ddc							
  exc_task_build.go:340	0xe2af5a		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:341	0xe2af5e		4883bc248006000000		CMPQ 0x680(SP), $0x0						
  exc_task_build.go:341	0xe2af67		750a				JNE 0xe2af73							
  exc_task_build.go:341	0xe2af69		bb02000000			MOVL $__minor_os_version__+1(SB), BX				
  exc_task_build.go:341	0xe2af6e		e921020000			JMP 0xe2b194							
  itoa.go:35		0xe2af73		b802000000			MOVL $__minor_os_version__+1(SB), AX				
  itoa.go:35		0xe2af78		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2af7d		0f1f00				NOPL 0(AX)							
  itoa.go:35		0xe2af80		e83b496cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:351	0xe2af85		488dbc2448050000		LEAQ 0x548(SP), DI						
  exc_task_build.go:351	0xe2af8d		488d358c4f0502			LEAQ CAS-Backend/pkg/diapdu..stmp_18(SB), SI			
  exc_task_build.go:351	0xe2af94		660f1f840000000000		NOPW 0(AX)(AX*1)						
  exc_task_build.go:351	0xe2af9d		0f1f00				NOPL 0(AX)							
  exc_task_build.go:351	0xe2afa0		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:351	0xe2afa5		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:351	0xe2afaa		e82dde64ff			CALL 0x478ddc							
  exc_task_build.go:351	0xe2afaf		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:343	0xe2afb3		488b8c2478030000		MOVQ 0x378(SP), CX						
  exc_task_build.go:343	0xe2afbb		488b942480030000		MOVQ 0x380(SP), DX						
  exc_task_build.go:343	0xe2afc3		48898c2448050000		MOVQ CX, 0x548(SP)						
  exc_task_build.go:343	0xe2afcb		4889942450050000		MOVQ DX, 0x550(SP)						
  exc_task_build.go:344	0xe2afd3		488b8c2478060000		MOVQ 0x678(SP), CX						
  exc_task_build.go:344	0xe2afdb		488b942480060000		MOVQ 0x680(SP), DX						
  exc_task_build.go:344	0xe2afe3		48898c2458050000		MOVQ CX, 0x558(SP)						
  exc_task_build.go:344	0xe2afeb		4889942460050000		MOVQ DX, 0x560(SP)						
  exc_task_build.go:345	0xe2aff3		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:345	0xe2affb		4889c7				MOVQ AX, DI							
  exc_task_build.go:345	0xe2affe		4889de				MOVQ BX, SI							
  exc_task_build.go:345	0xe2b001		31c0				XORL AX, AX							
  exc_task_build.go:345	0xe2b003		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:345	0xe2b00b		e8f0a362ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:345	0xe2b010		4889842468050000		MOVQ AX, 0x568(SP)						
  exc_task_build.go:345	0xe2b018		48899c2470050000		MOVQ BX, 0x570(SP)						
  exc_task_build.go:347	0xe2b020		f20f10842458010000		MOVSD_XMM 0x158(SP), X0						
  exc_task_build.go:347	0xe2b029		f20f11842400060000		MOVSD_XMM X0, 0x600(SP)						
  exc_task_build.go:342	0xe2b032		488b8c2438010000		MOVQ 0x138(SP), CX						
  exc_task_build.go:342	0xe2b03a		660f1f440000			NOPW 0(AX)(AX*1)						
  exc_task_build.go:342	0xe2b040		4883f903			CMPQ CX, $__subsystem__(SB)					
  exc_task_build.go:342	0xe2b044		720a				JB 0xe2b050							
  exc_task_build.go:342	0xe2b046		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:342	0xe2b04e		eb1e				JMP 0xe2b06e							
  exc_task_build.go:342	0xe2b050		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:342	0xe2b058		bb03000000			MOVL $__subsystem__(SB), BX					
  exc_task_build.go:342	0xe2b05d		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:342	0xe2b062		488d3517713100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:342	0xe2b069		e8d26b64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:342	0xe2b06e		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:342	0xe2b076		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:342	0xe2b07e		488db8c0010000			LEAQ 0x1c0(AX), DI						
  exc_task_build.go:342	0xe2b085		833dc42a730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:342	0xe2b08c		7427				JE 0xe2b0b5							
  exc_task_build.go:342	0xe2b08e		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:342	0xe2b096		488d05e3703100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:342	0xe2b09d		4889fb				MOVQ DI, BX							
  exc_task_build.go:342	0xe2b0a0		488d8c2448050000		LEAQ 0x548(SP), CX						
  exc_task_build.go:342	0xe2b0a8		e8739e5eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:342	0xe2b0ad		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:342	0xe2b0b5		488db42448050000		LEAQ 0x548(SP), SI						
  exc_task_build.go:342	0xe2b0bd		0f1f00				NOPL 0(AX)							
  exc_task_build.go:342	0xe2b0c0		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:342	0xe2b0c5		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:342	0xe2b0ca		e80ddd64ff			CALL 0x478ddc							
  exc_task_build.go:342	0xe2b0cf		488b6d00			MOVQ 0(BP), BP							
  itoa.go:35		0xe2b0d3		b802000000			MOVL $__minor_os_version__+1(SB), AX				
  itoa.go:35		0xe2b0d8		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2b0dd		0f1f00				NOPL 0(AX)							
  itoa.go:35		0xe2b0e0		e8db476cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:353	0xe2b0e5		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:353	0xe2b0ed		4889c7				MOVQ AX, DI							
  exc_task_build.go:353	0xe2b0f0		4889de				MOVQ BX, SI							
  exc_task_build.go:353	0xe2b0f3		31c0				XORL AX, AX							
  exc_task_build.go:353	0xe2b0f5		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:353	0xe2b0fd		0f1f00				NOPL 0(AX)							
  exc_task_build.go:353	0xe2b100		e8fba262ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:353	0xe2b105		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:353	0xe2b10d		4883f903			CMPQ CX, $__subsystem__(SB)					
  exc_task_build.go:353	0xe2b111		720a				JB 0xe2b11d							
  exc_task_build.go:353	0xe2b113		488b942438020000		MOVQ 0x238(SP), DX						
  exc_task_build.go:353	0xe2b11b		eb41				JMP 0xe2b15e							
  exc_task_build.go:353	0xe2b11d		4889842470040000		MOVQ AX, 0x470(SP)						
  exc_task_build.go:353	0xe2b125		48899c24d0010000		MOVQ BX, 0x1d0(SP)						
  exc_task_build.go:353	0xe2b12d		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:353	0xe2b135		bb03000000			MOVL $__subsystem__(SB), BX					
  exc_task_build.go:353	0xe2b13a		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:353	0xe2b13f		488d35da772100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:353	0xe2b146		e8f56a64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:353	0xe2b14b		488b9c24d0010000		MOVQ 0x1d0(SP), BX						
  exc_task_build.go:353	0xe2b153		4889c2				MOVQ AX, DX							
  exc_task_build.go:353	0xe2b156		488b842470040000		MOVQ 0x470(SP), AX						
  exc_task_build.go:353	0xe2b15e		48895a28			MOVQ BX, 0x28(DX)						
  exc_task_build.go:353	0xe2b162		833de729730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:353	0xe2b169		7410				JE 0xe2b17b							
  exc_task_build.go:353	0xe2b16b		e8d0d264ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:353	0xe2b170		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:353	0xe2b173		4c8b5220			MOVQ 0x20(DX), R10						
  exc_task_build.go:353	0xe2b177		4d895308			MOVQ R10, 0x8(R11)						
  exc_task_build.go:353	0xe2b17b		48894220			MOVQ AX, 0x20(DX)						
  exc_task_build.go:342	0xe2b17f		bb03000000			MOVL $__subsystem__(SB), BX					
  exc_task_build.go:440	0xe2b184		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:440	0xe2b18c		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:444	0xe2b194		4889de				MOVQ BX, SI							
  exc_task_build.go:444	0xe2b197		e939100000			JMP 0xe2c1d5							
  exc_task_build.go:356	0xe2b19c		90				NOPL								
  exc_task_build.go:55	0xe2b19d		488bb42428030000		MOVQ 0x328(SP), SI						
  exc_task_build.go:55	0xe2b1a5		4c8b842460010000		MOVQ 0x160(SP), R8						
  exc_task_build.go:55	0xe2b1ad		4c8b8c2468010000		MOVQ 0x168(SP), R9						
  exc_task_build.go:55	0xe2b1b5		e8e6cbffff			CALL CAS-Backend/pkg/diapdu.PlanStationPathFromGraph(SB)	
  exc_task_build.go:55	0xe2b1ba		48898424e0010000		MOVQ AX, 0x1e0(SP)						
  exc_task_build.go:55	0xe2b1c2		48899c24f8000000		MOVQ BX, 0xf8(SP)						
  exc_task_build.go:55	0xe2b1ca		48898c2418010000		MOVQ CX, 0x118(SP)						
  exc_task_build.go:357	0xe2b1d2		4885ff				TESTQ DI, DI							
  exc_task_build.go:357	0xe2b1d5		745a				JE 0xe2b231							
  exc_task_build.go:358	0xe2b1d7		440f11bc24b8040000		MOVUPS X15, 0x4b8(SP)						
  exc_task_build.go:358	0xe2b1e0		7404				JE 0xe2b1e6							
  exc_task_build.go:358	0xe2b1e2		488b7f08			MOVQ 0x8(DI), DI						
  exc_task_build.go:358	0xe2b1e6		4889bc24b8040000		MOVQ DI, 0x4b8(SP)						
  exc_task_build.go:358	0xe2b1ee		4889b424c0040000		MOVQ SI, 0x4c0(SP)						
  print.go:314		0xe2b1f6		488b1d836e6e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe2b1fd		488d05dc080402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe2b204		488d8c24b8040000		LEAQ 0x4b8(SP), CX						
  print.go:314		0xe2b20c		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe2b211		4889fe				MOVQ DI, SI							
  print.go:314		0xe2b214		e847466fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:371	0xe2b219		488b8424e0010000		MOVQ 0x1e0(SP), AX						
  exc_task_build.go:371	0xe2b221		488b8c2418010000		MOVQ 0x118(SP), CX						
  exc_task_build.go:360	0xe2b229		488b9c24f8000000		MOVQ 0xf8(SP), BX						
  exc_task_build.go:360	0xe2b231		4883fb02			CMPQ BX, $__minor_os_version__+1(SB)				
  exc_task_build.go:360	0xe2b235		0f8c5f060000			JL 0xe2b89a							
  itoa.go:35		0xe2b23b		31c0				XORL AX, AX							
  itoa.go:35		0xe2b23d		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2b242		e879466cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:365	0xe2b247		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:365	0xe2b24f		4889c7				MOVQ AX, DI							
  exc_task_build.go:365	0xe2b252		4889de				MOVQ BX, SI							
  exc_task_build.go:365	0xe2b255		31c0				XORL AX, AX							
  exc_task_build.go:365	0xe2b257		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:365	0xe2b25f		90				NOPL								
  exc_task_build.go:365	0xe2b260		e89ba162ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:365	0xe2b265		4889842458040000		MOVQ AX, 0x458(SP)						
  exc_task_build.go:365	0xe2b26d		48899c24c8010000		MOVQ BX, 0x1c8(SP)						
  exc_task_build.go:365	0xe2b275		4889842460020000		MOVQ AX, 0x260(SP)						
  exc_task_build.go:365	0xe2b27d		48899c2468020000		MOVQ BX, 0x268(SP)						
  exc_task_build.go:366	0xe2b285		31c9				XORL CX, CX							
  exc_task_build.go:366	0xe2b287		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:366	0xe2b28c		488d358d762100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:366	0xe2b293		488d0506207302			LEAQ unicode..stmp_365(SB), AX					
  exc_task_build.go:366	0xe2b29a		4889fb				MOVQ DI, BX							
  exc_task_build.go:366	0xe2b29d		0f1f00				NOPL 0(AX)							
  exc_task_build.go:366	0xe2b2a0		e89b6964ff			CALL runtime.growslice(SB)					
  exc_task_build.go:366	0xe2b2a5		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:366	0xe2b2ad		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:366	0xe2b2b5		48895008			MOVQ DX, 0x8(AX)						
  exc_task_build.go:366	0xe2b2b9		833d9028730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:366	0xe2b2c0		750a				JNE 0xe2b2cc							
  exc_task_build.go:366	0xe2b2c2		488b942458040000		MOVQ 0x458(SP), DX						
  exc_task_build.go:366	0xe2b2ca		eb17				JMP 0xe2b2e3							
  exc_task_build.go:366	0xe2b2cc		e86fd164ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:366	0xe2b2d1		488b942458040000		MOVQ 0x458(SP), DX						
  exc_task_build.go:366	0xe2b2d9		498913				MOVQ DX, 0(R11)							
  exc_task_build.go:366	0xe2b2dc		4c8b00				MOVQ 0(AX), R8							
  exc_task_build.go:366	0xe2b2df		4d894308			MOVQ R8, 0x8(R11)						
  exc_task_build.go:366	0xe2b2e3		4889842438020000		MOVQ AX, 0x238(SP)						
  exc_task_build.go:366	0xe2b2eb		488910				MOVQ DX, 0(AX)							
  exc_task_build.go:368	0xe2b2ee		f20f10056ac50302		MOVSD_XMM $f64.3fc999999999999a(SB), X0				
  exc_task_build.go:368	0xe2b2f6		f20f11842488020000		MOVSD_XMM X0, 0x288(SP)						
  exc_task_build.go:369	0xe2b2ff		bb01000000			MOVL $__minor_os_version__(SB), BX				
  exc_task_build.go:369	0xe2b304		31c9				XORL CX, CX							
  exc_task_build.go:369	0xe2b306		4889df				MOVQ BX, DI							
  exc_task_build.go:369	0xe2b309		488d35706e3100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:369	0xe2b310		31c0				XORL AX, AX							
  exc_task_build.go:369	0xe2b312		e8296964ff			CALL runtime.growslice(SB)					
  exc_task_build.go:369	0xe2b317		833d3228730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:369	0xe2b31e		6690				NOPW								
  exc_task_build.go:369	0xe2b320		7437				JE 0xe2b359							
  exc_task_build.go:369	0xe2b322		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:369	0xe2b32a		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:369	0xe2b332		4889c3				MOVQ AX, BX							
  exc_task_build.go:369	0xe2b335		488d8c2440020000		LEAQ 0x240(SP), CX						
  exc_task_build.go:369	0xe2b33d		488d053c6e3100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:369	0xe2b344		e8d79b5eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:369	0xe2b349		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:371	0xe2b351		488b8c2438010000		MOVQ 0x138(SP), CX						
  exc_task_build.go:369	0xe2b359		4889c7				MOVQ AX, DI							
  exc_task_build.go:369	0xe2b35c		488db42440020000		LEAQ 0x240(SP), SI						
  exc_task_build.go:369	0xe2b364		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:369	0xe2b369		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:369	0xe2b36e		e869da64ff			CALL 0x478ddc							
  exc_task_build.go:369	0xe2b373		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:371	0xe2b377		488b942470040000		MOVQ 0x470(SP), DX						
  exc_task_build.go:371	0xe2b37f		48891424			MOVQ DX, 0(SP)							
  exc_task_build.go:371	0xe2b383		4c8ba424d0010000		MOVQ 0x1d0(SP), R12						
  exc_task_build.go:371	0xe2b38b		4c89642408			MOVQ R12, 0x8(SP)						
  exc_task_build.go:371	0xe2b390		48c744241001000000		MOVQ $__minor_os_version__(SB), 0x10(SP)			
  exc_task_build.go:371	0xe2b399		bb01000000			MOVL $__minor_os_version__(SB), BX				
  exc_task_build.go:371	0xe2b39e		488bbc2438020000		MOVQ 0x238(SP), DI						
  exc_task_build.go:371	0xe2b3a6		4889de				MOVQ BX, SI							
  exc_task_build.go:371	0xe2b3a9		4c8b842448010000		MOVQ 0x148(SP), R8						
  exc_task_build.go:371	0xe2b3b1		4c8b8c24e0010000		MOVQ 0x1e0(SP), R9						
  exc_task_build.go:371	0xe2b3b9		4c8b9424f8000000		MOVQ 0xf8(SP), R10						
  exc_task_build.go:371	0xe2b3c1		4c8b9c2418010000		MOVQ 0x118(SP), R11						
  exc_task_build.go:371	0xe2b3c9		f20f10842458010000		MOVSD_XMM 0x158(SP), X0						
  exc_task_build.go:371	0xe2b3d2		e8e9d2ffff			CALL CAS-Backend/pkg/diapdu.appendPathAllMoveTasks(SB)		
  exc_task_build.go:371	0xe2b3d7		4c898c2470010000		MOVQ R9, 0x170(SP)						
  exc_task_build.go:371	0xe2b3df		4c89842448010000		MOVQ R8, 0x148(SP)						
  exc_task_build.go:371	0xe2b3e7		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:371	0xe2b3ef		4889bc2438020000		MOVQ DI, 0x238(SP)						
  exc_task_build.go:371	0xe2b3f7		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:371	0xe2b3ff		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:375	0xe2b407		488d5601			LEAQ 0x1(SI), DX						
  exc_task_build.go:375	0xe2b40b		48899424c8010000		MOVQ DX, 0x1c8(SP)						
  itoa.go:35		0xe2b413		4c89c8				MOVQ R9, AX							
  itoa.go:35		0xe2b416		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2b41b		0f1f440000			NOPL 0(AX)(AX*1)						
  itoa.go:35		0xe2b420		e89b446cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:372	0xe2b425		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:372	0xe2b42d		4889c7				MOVQ AX, DI							
  exc_task_build.go:372	0xe2b430		4889de				MOVQ BX, SI							
  exc_task_build.go:372	0xe2b433		31c0				XORL AX, AX							
  exc_task_build.go:372	0xe2b435		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:372	0xe2b43d		0f1f00				NOPL 0(AX)							
  exc_task_build.go:372	0xe2b440		e8bb9f62ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:372	0xe2b445		4889842488030000		MOVQ AX, 0x388(SP)						
  exc_task_build.go:372	0xe2b44d		48899c2490030000		MOVQ BX, 0x390(SP)						
  exc_task_build.go:374	0xe2b455		f20f100503c40302		MOVSD_XMM $f64.3fc999999999999a(SB), X0				
  exc_task_build.go:374	0xe2b45d		f20f118424b0030000		MOVSD_XMM X0, 0x3b0(SP)						
  exc_task_build.go:375	0xe2b466		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:375	0xe2b46e		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:375	0xe2b476		4839d1				CMPQ CX, DX							
  exc_task_build.go:375	0xe2b479		720a				JB 0xe2b485							
  exc_task_build.go:375	0xe2b47b		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:375	0xe2b483		eb42				JMP 0xe2b4c7							
  exc_task_build.go:372	0xe2b485		48899c24c8010000		MOVQ BX, 0x1c8(SP)						
  exc_task_build.go:372	0xe2b48d		4889842458040000		MOVQ AX, 0x458(SP)						
  exc_task_build.go:375	0xe2b495		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:375	0xe2b49d		4889d3				MOVQ DX, BX							
  exc_task_build.go:375	0xe2b4a0		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:375	0xe2b4a5		488d3574742100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:375	0xe2b4ac		e88f6764ff			CALL runtime.growslice(SB)					
  exc_task_build.go:375	0xe2b4b1		4889c6				MOVQ AX, SI							
  exc_task_build.go:375	0xe2b4b4		4889da				MOVQ BX, DX							
  exc_task_build.go:375	0xe2b4b7		488b842458040000		MOVQ 0x458(SP), AX						
  exc_task_build.go:375	0xe2b4bf		488b9c24c8010000		MOVQ 0x1c8(SP), BX						
  exc_task_build.go:375	0xe2b4c7		4c8d52ff			LEAQ -0x1(DX), R10						
  exc_task_build.go:375	0xe2b4cb		49c1e204			SHLQ $__subsystem__+1(SB), R10					
  exc_task_build.go:375	0xe2b4cf		4a895c1608			MOVQ BX, 0x8(SI)(R10*1)						
  exc_task_build.go:375	0xe2b4d4		833d7526730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:375	0xe2b4db		7413				JE 0xe2b4f0							
  exc_task_build.go:375	0xe2b4dd		0f1f00				NOPL 0(AX)							
  exc_task_build.go:375	0xe2b4e0		e85bcf64ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:375	0xe2b4e5		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:375	0xe2b4e8		4e8b2416			MOVQ 0(SI)(R10*1), R12						
  exc_task_build.go:375	0xe2b4ec		4d896308			MOVQ R12, 0x8(R11)						
  exc_task_build.go:375	0xe2b4f0		4889b42438020000		MOVQ SI, 0x238(SP)						
  exc_task_build.go:375	0xe2b4f8		4889942440010000		MOVQ DX, 0x140(SP)						
  exc_task_build.go:375	0xe2b500		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:375	0xe2b508		4a890416			MOVQ AX, 0(SI)(R10*1)						
  exc_task_build.go:376	0xe2b50c		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:376	0xe2b514		48ffc3				INCQ BX								
  exc_task_build.go:376	0xe2b517		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:376	0xe2b51f		90				NOPL								
  exc_task_build.go:376	0xe2b520		4939da				CMPQ R10, BX							
  exc_task_build.go:376	0xe2b523		720a				JB 0xe2b52f							
  exc_task_build.go:376	0xe2b525		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:376	0xe2b52d		eb37				JMP 0xe2b566							
  exc_task_build.go:376	0xe2b52f		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:376	0xe2b537		4c89d1				MOVQ R10, CX							
  exc_task_build.go:376	0xe2b53a		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:376	0xe2b53f		488d353a6c3100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:376	0xe2b546		e8f56664ff			CALL runtime.growslice(SB)					
  exc_task_build.go:444	0xe2b54b		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:444	0xe2b553		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:376	0xe2b55b		4989ca				MOVQ CX, R10							
  exc_task_build.go:444	0xe2b55e		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:376	0xe2b566		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:376	0xe2b56e		4c89942438010000		MOVQ R10, 0x138(SP)						
  exc_task_build.go:376	0xe2b576		4c69dbe0000000			IMULQ $.file+147(SB), BX, R11					
  exc_task_build.go:376	0xe2b57d		4a8d3c18			LEAQ 0(AX)(R11*1), DI						
  exc_task_build.go:376	0xe2b581		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:376	0xe2b588		833dc125730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:376	0xe2b58f		745f				JE 0xe2b5f0							
  exc_task_build.go:376	0xe2b591		48899c24c0010000		MOVQ BX, 0x1c0(SP)						
  exc_task_build.go:376	0xe2b599		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:376	0xe2b5a1		488d05d86b3100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:376	0xe2b5a8		4889fb				MOVQ DI, BX							
  exc_task_build.go:376	0xe2b5ab		488d8c2468030000		LEAQ 0x368(SP), CX						
  exc_task_build.go:376	0xe2b5b3		e868995eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:440	0xe2b5b8		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:444	0xe2b5c0		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:444	0xe2b5c8		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:440	0xe2b5d0		488b9c24c0010000		MOVQ 0x1c0(SP), BX						
  exc_task_build.go:444	0xe2b5d8		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:376	0xe2b5e0		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:440	0xe2b5e8		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:375	0xe2b5f0		4989f0				MOVQ SI, R8							
  exc_task_build.go:376	0xe2b5f3		488db42468030000		LEAQ 0x368(SP), SI						
  exc_task_build.go:376	0xe2b5fb		0f1f440000			NOPL 0(AX)(AX*1)						
  exc_task_build.go:376	0xe2b600		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:376	0xe2b605		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:376	0xe2b60a		e8cdd764ff			CALL 0x478ddc							
  exc_task_build.go:376	0xe2b60f		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:377	0xe2b613		4883bc248006000000		CMPQ 0x680(SP), $0x0						
  exc_task_build.go:377	0xe2b61c		0f1f4000			NOPL 0(AX)							
  exc_task_build.go:377	0xe2b620		0f8469020000			JE 0xe2b88f							
  exc_task_build.go:373	0xe2b626		488b842470010000		MOVQ 0x170(SP), AX						
  exc_task_build.go:373	0xe2b62e		48ffc0				INCQ AX								
  exc_task_build.go:373	0xe2b631		4889842470010000		MOVQ AX, 0x170(SP)						
  exc_task_build.go:378	0xe2b639		488d4b01			LEAQ 0x1(BX), CX						
  exc_task_build.go:378	0xe2b63d		48898c24c8010000		MOVQ CX, 0x1c8(SP)						
  itoa.go:35		0xe2b645		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2b64a		e871426cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:387	0xe2b64f		488dbc2448050000		LEAQ 0x548(SP), DI						
  exc_task_build.go:387	0xe2b657		488d35c2480502			LEAQ CAS-Backend/pkg/diapdu..stmp_18(SB), SI			
  exc_task_build.go:387	0xe2b65e		6690				NOPW								
  exc_task_build.go:387	0xe2b660		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:387	0xe2b665		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:387	0xe2b66a		e86dd764ff			CALL 0x478ddc							
  exc_task_build.go:387	0xe2b66f		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:379	0xe2b673		488b8c2478030000		MOVQ 0x378(SP), CX						
  exc_task_build.go:379	0xe2b67b		488b942480030000		MOVQ 0x380(SP), DX						
  exc_task_build.go:379	0xe2b683		48898c2448050000		MOVQ CX, 0x548(SP)						
  exc_task_build.go:379	0xe2b68b		4889942450050000		MOVQ DX, 0x550(SP)						
  exc_task_build.go:380	0xe2b693		488b8c2478060000		MOVQ 0x678(SP), CX						
  exc_task_build.go:380	0xe2b69b		488b942480060000		MOVQ 0x680(SP), DX						
  exc_task_build.go:380	0xe2b6a3		48898c2458050000		MOVQ CX, 0x558(SP)						
  exc_task_build.go:380	0xe2b6ab		4889942460050000		MOVQ DX, 0x560(SP)						
  exc_task_build.go:381	0xe2b6b3		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:381	0xe2b6bb		4889c7				MOVQ AX, DI							
  exc_task_build.go:381	0xe2b6be		4889de				MOVQ BX, SI							
  exc_task_build.go:381	0xe2b6c1		31c0				XORL AX, AX							
  exc_task_build.go:381	0xe2b6c3		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:381	0xe2b6cb		e8309d62ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:381	0xe2b6d0		4889842468050000		MOVQ AX, 0x568(SP)						
  exc_task_build.go:381	0xe2b6d8		48899c2470050000		MOVQ BX, 0x570(SP)						
  exc_task_build.go:383	0xe2b6e0		f20f10842458010000		MOVSD_XMM 0x158(SP), X0						
  exc_task_build.go:383	0xe2b6e9		f20f11842400060000		MOVSD_XMM X0, 0x600(SP)						
  exc_task_build.go:378	0xe2b6f2		488b8c2438010000		MOVQ 0x138(SP), CX						
  exc_task_build.go:378	0xe2b6fa		488b9c24c8010000		MOVQ 0x1c8(SP), BX						
  exc_task_build.go:378	0xe2b702		4839d9				CMPQ CX, BX							
  exc_task_build.go:378	0xe2b705		720a				JB 0xe2b711							
  exc_task_build.go:378	0xe2b707		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:378	0xe2b70f		eb19				JMP 0xe2b72a							
  exc_task_build.go:378	0xe2b711		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:378	0xe2b719		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:378	0xe2b71e		488d355b6a3100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:378	0xe2b725		e8166564ff			CALL runtime.growslice(SB)					
  exc_task_build.go:378	0xe2b72a		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:378	0xe2b732		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:378	0xe2b73a		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:378	0xe2b742		4869d3e0000000			IMULQ $.file+147(SB), BX, DX					
  exc_task_build.go:378	0xe2b749		488d3c02			LEAQ 0(DX)(AX*1), DI						
  exc_task_build.go:378	0xe2b74d		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:378	0xe2b754		833df523730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:378	0xe2b75b		7427				JE 0xe2b784							
  exc_task_build.go:378	0xe2b75d		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:378	0xe2b765		488d05146a3100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:378	0xe2b76c		4889fb				MOVQ DI, BX							
  exc_task_build.go:378	0xe2b76f		488d8c2448050000		LEAQ 0x548(SP), CX						
  exc_task_build.go:378	0xe2b777		e8a4975eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:378	0xe2b77c		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:378	0xe2b784		488db42448050000		LEAQ 0x548(SP), SI						
  exc_task_build.go:378	0xe2b78c		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:378	0xe2b791		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:378	0xe2b796		e841d664ff			CALL 0x478ddc							
  exc_task_build.go:378	0xe2b79b		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:389	0xe2b79f		488b8c2440010000		MOVQ 0x140(SP), CX						
  exc_task_build.go:389	0xe2b7a7		48ffc1				INCQ CX								
  exc_task_build.go:389	0xe2b7aa		48898c24c8010000		MOVQ CX, 0x1c8(SP)						
  itoa.go:35		0xe2b7b2		488b842470010000		MOVQ 0x170(SP), AX						
  itoa.go:35		0xe2b7ba		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2b7bf		90				NOPL								
  itoa.go:35		0xe2b7c0		e8fb406cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:389	0xe2b7c5		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:389	0xe2b7cd		4889c7				MOVQ AX, DI							
  exc_task_build.go:389	0xe2b7d0		4889de				MOVQ BX, SI							
  exc_task_build.go:389	0xe2b7d3		31c0				XORL AX, AX							
  exc_task_build.go:389	0xe2b7d5		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:389	0xe2b7dd		0f1f00				NOPL 0(AX)							
  exc_task_build.go:389	0xe2b7e0		e81b9c62ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:389	0xe2b7e5		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:389	0xe2b7ed		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:389	0xe2b7f5		4839d1				CMPQ CX, DX							
  exc_task_build.go:389	0xe2b7f8		720a				JB 0xe2b804							
  exc_task_build.go:389	0xe2b7fa		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:389	0xe2b802		eb42				JMP 0xe2b846							
  exc_task_build.go:389	0xe2b804		48899c24d0010000		MOVQ BX, 0x1d0(SP)						
  exc_task_build.go:389	0xe2b80c		4889842470040000		MOVQ AX, 0x470(SP)						
  exc_task_build.go:389	0xe2b814		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:389	0xe2b81c		4889d3				MOVQ DX, BX							
  exc_task_build.go:389	0xe2b81f		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:389	0xe2b824		488d35f5702100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:389	0xe2b82b		e8106464ff			CALL runtime.growslice(SB)					
  exc_task_build.go:389	0xe2b830		4889c6				MOVQ AX, SI							
  exc_task_build.go:389	0xe2b833		4889da				MOVQ BX, DX							
  exc_task_build.go:389	0xe2b836		488b842470040000		MOVQ 0x470(SP), AX						
  exc_task_build.go:389	0xe2b83e		488b9c24d0010000		MOVQ 0x1d0(SP), BX						
  exc_task_build.go:389	0xe2b846		4c8d52ff			LEAQ -0x1(DX), R10						
  exc_task_build.go:389	0xe2b84a		49c1e204			SHLQ $__subsystem__+1(SB), R10					
  exc_task_build.go:389	0xe2b84e		4a895c1608			MOVQ BX, 0x8(SI)(R10*1)						
  exc_task_build.go:389	0xe2b853		833df622730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:389	0xe2b85a		7414				JE 0xe2b870							
  exc_task_build.go:389	0xe2b85c		0f1f4000			NOPL 0(AX)							
  exc_task_build.go:389	0xe2b860		e8dbcb64ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:389	0xe2b865		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:389	0xe2b868		4e8b2416			MOVQ 0(SI)(R10*1), R12						
  exc_task_build.go:389	0xe2b86c		4d896308			MOVQ R12, 0x8(R11)						
  exc_task_build.go:389	0xe2b870		4a890416			MOVQ AX, 0(SI)(R10*1)						
  exc_task_build.go:440	0xe2b874		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:440	0xe2b87c		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:440	0xe2b884		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:444	0xe2b88c		4989f0				MOVQ SI, R8							
  exc_task_build.go:444	0xe2b88f		4889d6				MOVQ DX, SI							
  exc_task_build.go:444	0xe2b892		4c89c2				MOVQ R8, DX							
  exc_task_build.go:444	0xe2b895		e93b090000			JMP 0xe2c1d5							
  exc_task_build.go:361	0xe2b89a		488d157f702100			LEAQ runtime.types+383264(SB), DX				
  exc_task_build.go:361	0xe2b8a1		48899424a8040000		MOVQ DX, 0x4a8(SP)						
  exc_task_build.go:361	0xe2b8a9		488d1570c50302			LEAQ CAS-Backend/pkg/diapdu..stmp_5(SB), DX			
  exc_task_build.go:361	0xe2b8b0		48899424b0040000		MOVQ DX, 0x4b0(SP)						
  print.go:314		0xe2b8b8		488b1dc1676e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe2b8bf		488d051a020402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe2b8c6		488d8c24a8040000		LEAQ 0x4a8(SP), CX						
  print.go:314		0xe2b8ce		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe2b8d3		4889fe				MOVQ DI, SI							
  print.go:314		0xe2b8d6		e8853f6fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:362	0xe2b8db		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:362	0xe2b8e3		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:362	0xe2b8eb		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:362	0xe2b8f3		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:362	0xe2b8fb		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:362	0xe2b903		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:362	0xe2b90b		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:362	0xe2b913		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:362	0xe2b91b		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:362	0xe2b923		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:362	0xe2b92b		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:362	0xe2b933		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:362	0xe2b93b		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:362	0xe2b943		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:362	0xe2b94b		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:362	0xe2b954		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:362	0xe2b95b		5d				POPQ BP								
  exc_task_build.go:362	0xe2b95c		c3				RET								
  exc_task_build.go:395	0xe2b95d		488b9424a8010000		MOVQ 0x1a8(SP), DX						
  exc_task_build.go:395	0xe2b965		488bb42450040000		MOVQ 0x450(SP), SI						
  exc_task_build.go:395	0xe2b96d		488b8c2440020000		MOVQ 0x240(SP), CX						
  exc_task_build.go:395	0xe2b975		488bbc2448020000		MOVQ 0x248(SP), DI						
  exc_task_build.go:395	0xe2b97d		4889f0				MOVQ SI, AX							
  exc_task_build.go:395	0xe2b980		4889d3				MOVQ DX, BX							
  exc_task_build.go:395	0xe2b983		488bb42470040000		MOVQ 0x470(SP), SI						
  exc_task_build.go:395	0xe2b98b		4c8b8424d0010000		MOVQ 0x1d0(SP), R8						
  exc_task_build.go:395	0xe2b993		4531c9				XORL R9, R9							
  exc_task_build.go:395	0xe2b996		4531d2				XORL R10, R10							
  exc_task_build.go:395	0xe2b999		4d89d3				MOVQ R10, R11							
  exc_task_build.go:395	0xe2b99c		0f1f4000			NOPL 0(AX)							
  exc_task_build.go:395	0xe2b9a0		e8fbc4ffff			CALL CAS-Backend/pkg/diapdu.buildGotoTasks(SB)			
  exc_task_build.go:395	0xe2b9a5		4584d2				TESTL R10, R10							
  exc_task_build.go:396	0xe2b9a8		0f843a0a0000			JE 0xe2c3e8							
  exc_task_build.go:395	0xe2b9ae		4c89842448010000		MOVQ R8, 0x148(SP)						
  exc_task_build.go:395	0xe2b9b6		4889b42440010000		MOVQ SI, 0x140(SP)						
  exc_task_build.go:395	0xe2b9be		4889bc2438020000		MOVQ DI, 0x238(SP)						
  exc_task_build.go:395	0xe2b9c6		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:395	0xe2b9ce		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:395	0xe2b9d6		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:395	0xe2b9de		4c898c2490010000		MOVQ R9, 0x190(SP)						
  exc_task_build.go:400	0xe2b9e6		488b842450020000		MOVQ 0x250(SP), AX						
  exc_task_build.go:400	0xe2b9ee		488b9c2458020000		MOVQ 0x258(SP), BX						
  exc_task_build.go:401	0xe2b9f6		488b8c2468030000		MOVQ 0x368(SP), CX						
  exc_task_build.go:401	0xe2b9fe		488bbc2470030000		MOVQ 0x370(SP), DI						
  exc_task_build.go:402	0xe2ba06		90				NOPL								
  exc_task_build.go:55	0xe2ba07		488bb42428030000		MOVQ 0x328(SP), SI						
  exc_task_build.go:55	0xe2ba0f		4c8b842460010000		MOVQ 0x160(SP), R8						
  exc_task_build.go:55	0xe2ba17		4c8b8c2468010000		MOVQ 0x168(SP), R9						
  exc_task_build.go:55	0xe2ba1f		90				NOPL								
  exc_task_build.go:55	0xe2ba20		e87bc3ffff			CALL CAS-Backend/pkg/diapdu.PlanStationPathFromGraph(SB)	
  exc_task_build.go:55	0xe2ba25		48898424d8010000		MOVQ AX, 0x1d8(SP)						
  exc_task_build.go:55	0xe2ba2d		48899c24f0000000		MOVQ BX, 0xf0(SP)						
  exc_task_build.go:55	0xe2ba35		48898c2410010000		MOVQ CX, 0x110(SP)						
  exc_task_build.go:55	0xe2ba3d		0f1f00				NOPL 0(AX)							
  exc_task_build.go:403	0xe2ba40		4885ff				TESTQ DI, DI							
  exc_task_build.go:403	0xe2ba43		745b				JE 0xe2baa0							
  exc_task_build.go:404	0xe2ba45		440f11bc2488040000		MOVUPS X15, 0x488(SP)						
  exc_task_build.go:404	0xe2ba4e		7404				JE 0xe2ba54							
  exc_task_build.go:404	0xe2ba50		488b7f08			MOVQ 0x8(DI), DI						
  exc_task_build.go:404	0xe2ba54		4889bc2488040000		MOVQ DI, 0x488(SP)						
  exc_task_build.go:404	0xe2ba5c		4889b42490040000		MOVQ SI, 0x490(SP)						
  print.go:314		0xe2ba64		488b1d15666e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe2ba6b		488d056e000402			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe2ba72		488d8c2488040000		LEAQ 0x488(SP), CX						
  print.go:314		0xe2ba7a		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe2ba7f		4889fe				MOVQ DI, SI							
  print.go:314		0xe2ba82		e8d93d6fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:416	0xe2ba87		488b8424d8010000		MOVQ 0x1d8(SP), AX						
  exc_task_build.go:416	0xe2ba8f		488b8c2410010000		MOVQ 0x110(SP), CX						
  exc_task_build.go:406	0xe2ba97		488b9c24f0000000		MOVQ 0xf0(SP), BX						
  exc_task_build.go:406	0xe2ba9f		90				NOPL								
  exc_task_build.go:406	0xe2baa0		4883fb02			CMPQ BX, $__minor_os_version__+1(SB)				
  exc_task_build.go:406	0xe2baa4		0f8c7b080000			JL 0xe2c325							
  exc_task_build.go:411	0xe2baaa		488b8c2440010000		MOVQ 0x140(SP), CX						
  exc_task_build.go:411	0xe2bab2		48ffc1				INCQ CX								
  exc_task_build.go:411	0xe2bab5		48898c24c8010000		MOVQ CX, 0x1c8(SP)						
  itoa.go:35		0xe2babd		488b842490010000		MOVQ 0x190(SP), AX						
  itoa.go:35		0xe2bac5		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2baca		e8f13d6cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:410	0xe2bacf		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:410	0xe2bad7		4889c7				MOVQ AX, DI							
  exc_task_build.go:410	0xe2bada		4889de				MOVQ BX, SI							
  exc_task_build.go:410	0xe2badd		31c0				XORL AX, AX							
  exc_task_build.go:410	0xe2badf		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:410	0xe2bae7		e8149962ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:410	0xe2baec		4889842460020000		MOVQ AX, 0x260(SP)						
  exc_task_build.go:410	0xe2baf4		48899c2468020000		MOVQ BX, 0x268(SP)						
  exc_task_build.go:411	0xe2bafc		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:411	0xe2bb04		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:411	0xe2bb0c		4839d1				CMPQ CX, DX							
  exc_task_build.go:411	0xe2bb0f		720a				JB 0xe2bb1b							
  exc_task_build.go:411	0xe2bb11		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:411	0xe2bb19		eb42				JMP 0xe2bb5d							
  exc_task_build.go:410	0xe2bb1b		48899c24c8010000		MOVQ BX, 0x1c8(SP)						
  exc_task_build.go:410	0xe2bb23		4889842458040000		MOVQ AX, 0x458(SP)						
  exc_task_build.go:411	0xe2bb2b		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:411	0xe2bb33		4889d3				MOVQ DX, BX							
  exc_task_build.go:411	0xe2bb36		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:411	0xe2bb3b		488d35de6d2100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:411	0xe2bb42		e8f96064ff			CALL runtime.growslice(SB)					
  exc_task_build.go:411	0xe2bb47		4889c6				MOVQ AX, SI							
  exc_task_build.go:411	0xe2bb4a		4889da				MOVQ BX, DX							
  exc_task_build.go:411	0xe2bb4d		488b842458040000		MOVQ 0x458(SP), AX						
  exc_task_build.go:411	0xe2bb55		488b9c24c8010000		MOVQ 0x1c8(SP), BX						
  exc_task_build.go:411	0xe2bb5d		4c8d62ff			LEAQ -0x1(DX), R12						
  exc_task_build.go:411	0xe2bb61		49c1e404			SHLQ $__subsystem__+1(SB), R12					
  exc_task_build.go:411	0xe2bb65		4a895c2608			MOVQ BX, 0x8(SI)(R12*1)						
  exc_task_build.go:411	0xe2bb6a		833ddf1f730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:411	0xe2bb71		7410				JE 0xe2bb83							
  exc_task_build.go:411	0xe2bb73		e8c8c864ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:411	0xe2bb78		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:411	0xe2bb7b		4e8b2c26			MOVQ 0(SI)(R12*1), R13						
  exc_task_build.go:411	0xe2bb7f		4d896b08			MOVQ R13, 0x8(R11)						
  exc_task_build.go:411	0xe2bb83		4889b42438020000		MOVQ SI, 0x238(SP)						
  exc_task_build.go:411	0xe2bb8b		4889942440010000		MOVQ DX, 0x140(SP)						
  exc_task_build.go:411	0xe2bb93		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:411	0xe2bb9b		4a890426			MOVQ AX, 0(SI)(R12*1)						
  exc_task_build.go:413	0xe2bb9f		f20f1005b9bc0302		MOVSD_XMM $f64.3fc999999999999a(SB), X0				
  exc_task_build.go:413	0xe2bba7		f20f11842488020000		MOVSD_XMM X0, 0x288(SP)						
  exc_task_build.go:414	0xe2bbb0		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:414	0xe2bbb8		48ffc3				INCQ BX								
  exc_task_build.go:414	0xe2bbbb		4c8ba42438010000		MOVQ 0x138(SP), R12						
  exc_task_build.go:414	0xe2bbc3		4939dc				CMPQ R12, BX							
  exc_task_build.go:414	0xe2bbc6		720a				JB 0xe2bbd2							
  exc_task_build.go:414	0xe2bbc8		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:414	0xe2bbd0		eb3f				JMP 0xe2bc11							
  exc_task_build.go:414	0xe2bbd2		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:414	0xe2bbda		4c89e1				MOVQ R12, CX							
  exc_task_build.go:414	0xe2bbdd		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:414	0xe2bbe2		488d3597653100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:414	0xe2bbe9		e8526064ff			CALL runtime.growslice(SB)					
  exc_task_build.go:416	0xe2bbee		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:416	0xe2bbf6		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:416	0xe2bbfe		f20f10055abc0302		MOVSD_XMM $f64.3fc999999999999a(SB), X0				
  exc_task_build.go:414	0xe2bc06		4989cc				MOVQ CX, R12							
  exc_task_build.go:416	0xe2bc09		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:414	0xe2bc11		4c69ebe0000000			IMULQ $.file+147(SB), BX, R13					
  exc_task_build.go:414	0xe2bc18		4a8d3c28			LEAQ 0(AX)(R13*1), DI						
  exc_task_build.go:414	0xe2bc1c		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:414	0xe2bc23		833d261f730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:414	0xe2bc2a		7471				JE 0xe2bc9d							
  exc_task_build.go:414	0xe2bc2c		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:414	0xe2bc34		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:414	0xe2bc3c		4c89a42438010000		MOVQ R12, 0x138(SP)						
  exc_task_build.go:414	0xe2bc44		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:414	0xe2bc4c		488d052d653100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:414	0xe2bc53		4889fb				MOVQ DI, BX							
  exc_task_build.go:414	0xe2bc56		488d8c2440020000		LEAQ 0x240(SP), CX						
  exc_task_build.go:414	0xe2bc5e		6690				NOPW								
  exc_task_build.go:414	0xe2bc60		e8bb925eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:416	0xe2bc65		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:416	0xe2bc6d		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:416	0xe2bc75		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:416	0xe2bc7d		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:416	0xe2bc85		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:414	0xe2bc8d		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:416	0xe2bc95		4c8ba42438010000		MOVQ 0x138(SP), R12						
  exc_task_build.go:411	0xe2bc9d		4989f0				MOVQ SI, R8							
  exc_task_build.go:414	0xe2bca0		488db42440020000		LEAQ 0x240(SP), SI						
  exc_task_build.go:414	0xe2bca8		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:414	0xe2bcad		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:414	0xe2bcb2		e825d164ff			CALL 0x478ddc							
  exc_task_build.go:414	0xe2bcb7		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:416	0xe2bcbb		4c8bac2470040000		MOVQ 0x470(SP), R13						
  exc_task_build.go:416	0xe2bcc3		4c892c24			MOVQ R13, 0(SP)							
  exc_task_build.go:416	0xe2bcc7		4c8bbc24d0010000		MOVQ 0x1d0(SP), R15						
  exc_task_build.go:416	0xe2bccf		4c897c2408			MOVQ R15, 0x8(SP)						
  exc_task_build.go:415	0xe2bcd4		4c8bac2490010000		MOVQ 0x190(SP), R13						
  exc_task_build.go:415	0xe2bcdc		49ffc5				INCQ R13							
  exc_task_build.go:416	0xe2bcdf		4c896c2410			MOVQ R13, 0x10(SP)						
  exc_task_build.go:416	0xe2bce4		4c89c7				MOVQ R8, DI							
  exc_task_build.go:416	0xe2bce7		4989c8				MOVQ CX, R8							
  exc_task_build.go:416	0xe2bcea		4c8b8c24d8010000		MOVQ 0x1d8(SP), R9						
  exc_task_build.go:416	0xe2bcf2		4c8b9424f0000000		MOVQ 0xf0(SP), R10						
  exc_task_build.go:416	0xe2bcfa		4c8b9c2410010000		MOVQ 0x110(SP), R11						
  exc_task_build.go:416	0xe2bd02		f20f10842458010000		MOVSD_XMM 0x158(SP), X0						
  exc_task_build.go:416	0xe2bd0b		4c89e1				MOVQ R12, CX							
  exc_task_build.go:416	0xe2bd0e		4889d6				MOVQ DX, SI							
  exc_task_build.go:416	0xe2bd11		e8aac9ffff			CALL CAS-Backend/pkg/diapdu.appendPathAllMoveTasks(SB)		
  exc_task_build.go:416	0xe2bd16		4c898c2488010000		MOVQ R9, 0x188(SP)						
  exc_task_build.go:416	0xe2bd1e		4c89842448010000		MOVQ R8, 0x148(SP)						
  exc_task_build.go:416	0xe2bd26		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:416	0xe2bd2e		4889bc2438020000		MOVQ DI, 0x238(SP)						
  exc_task_build.go:416	0xe2bd36		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:416	0xe2bd3e		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:420	0xe2bd46		488d5601			LEAQ 0x1(SI), DX						
  exc_task_build.go:420	0xe2bd4a		48899424c8010000		MOVQ DX, 0x1c8(SP)						
  itoa.go:35		0xe2bd52		4c89c8				MOVQ R9, AX							
  itoa.go:35		0xe2bd55		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2bd5a		e8613b6cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:417	0xe2bd5f		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:417	0xe2bd67		4889c7				MOVQ AX, DI							
  exc_task_build.go:417	0xe2bd6a		4889de				MOVQ BX, SI							
  exc_task_build.go:417	0xe2bd6d		31c0				XORL AX, AX							
  exc_task_build.go:417	0xe2bd6f		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:417	0xe2bd77		e8849662ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:417	0xe2bd7c		4889842488030000		MOVQ AX, 0x388(SP)						
  exc_task_build.go:417	0xe2bd84		48899c2490030000		MOVQ BX, 0x390(SP)						
  exc_task_build.go:419	0xe2bd8c		f20f1005ccba0302		MOVSD_XMM $f64.3fc999999999999a(SB), X0				
  exc_task_build.go:419	0xe2bd94		f20f118424b0030000		MOVSD_XMM X0, 0x3b0(SP)						
  exc_task_build.go:420	0xe2bd9d		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:420	0xe2bda5		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:420	0xe2bdad		4839d1				CMPQ CX, DX							
  exc_task_build.go:420	0xe2bdb0		720a				JB 0xe2bdbc							
  exc_task_build.go:420	0xe2bdb2		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:420	0xe2bdba		eb42				JMP 0xe2bdfe							
  exc_task_build.go:417	0xe2bdbc		4889842458040000		MOVQ AX, 0x458(SP)						
  exc_task_build.go:417	0xe2bdc4		48899c24c8010000		MOVQ BX, 0x1c8(SP)						
  exc_task_build.go:420	0xe2bdcc		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:420	0xe2bdd4		4889d3				MOVQ DX, BX							
  exc_task_build.go:420	0xe2bdd7		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:420	0xe2bddc		488d353d6b2100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:420	0xe2bde3		e8585e64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:420	0xe2bde8		4889c6				MOVQ AX, SI							
  exc_task_build.go:420	0xe2bdeb		4889da				MOVQ BX, DX							
  exc_task_build.go:420	0xe2bdee		488b842458040000		MOVQ 0x458(SP), AX						
  exc_task_build.go:420	0xe2bdf6		488b9c24c8010000		MOVQ 0x1c8(SP), BX						
  exc_task_build.go:420	0xe2bdfe		4c8d52ff			LEAQ -0x1(DX), R10						
  exc_task_build.go:420	0xe2be02		49c1e204			SHLQ $__subsystem__+1(SB), R10					
  exc_task_build.go:420	0xe2be06		4a895c1608			MOVQ BX, 0x8(SI)(R10*1)						
  exc_task_build.go:420	0xe2be0b		833d3e1d730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:420	0xe2be12		7410				JE 0xe2be24							
  exc_task_build.go:420	0xe2be14		e827c664ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:420	0xe2be19		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:420	0xe2be1c		4e8b2416			MOVQ 0(SI)(R10*1), R12						
  exc_task_build.go:420	0xe2be20		4d896308			MOVQ R12, 0x8(R11)						
  exc_task_build.go:420	0xe2be24		4889b42438020000		MOVQ SI, 0x238(SP)						
  exc_task_build.go:420	0xe2be2c		4889942440010000		MOVQ DX, 0x140(SP)						
  exc_task_build.go:420	0xe2be34		48898c2448010000		MOVQ CX, 0x148(SP)						
  exc_task_build.go:420	0xe2be3c		4a890416			MOVQ AX, 0(SI)(R10*1)						
  exc_task_build.go:421	0xe2be40		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:421	0xe2be48		48ffc3				INCQ BX								
  exc_task_build.go:421	0xe2be4b		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:421	0xe2be53		4939da				CMPQ R10, BX							
  exc_task_build.go:421	0xe2be56		720a				JB 0xe2be62							
  exc_task_build.go:421	0xe2be58		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:421	0xe2be60		eb37				JMP 0xe2be99							
  exc_task_build.go:421	0xe2be62		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:421	0xe2be6a		4c89d1				MOVQ R10, CX							
  exc_task_build.go:421	0xe2be6d		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:421	0xe2be72		488d3507633100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:421	0xe2be79		e8c25d64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:444	0xe2be7e		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:444	0xe2be86		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:421	0xe2be8e		4989ca				MOVQ CX, R10							
  exc_task_build.go:444	0xe2be91		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:421	0xe2be99		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:421	0xe2bea1		4c89942438010000		MOVQ R10, 0x138(SP)						
  exc_task_build.go:421	0xe2bea9		4c69dbe0000000			IMULQ $.file+147(SB), BX, R11					
  exc_task_build.go:421	0xe2beb0		4a8d3c18			LEAQ 0(AX)(R11*1), DI						
  exc_task_build.go:421	0xe2beb4		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:421	0xe2bebb		833d8e1c730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:421	0xe2bec2		745f				JE 0xe2bf23							
  exc_task_build.go:421	0xe2bec4		48899c24c0010000		MOVQ BX, 0x1c0(SP)						
  exc_task_build.go:421	0xe2becc		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:421	0xe2bed4		488d05a5623100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:421	0xe2bedb		4889fb				MOVQ DI, BX							
  exc_task_build.go:421	0xe2bede		488d8c2468030000		LEAQ 0x368(SP), CX						
  exc_task_build.go:421	0xe2bee6		e835905eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:440	0xe2beeb		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:444	0xe2bef3		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:444	0xe2befb		488b942440010000		MOVQ 0x140(SP), DX						
  exc_task_build.go:440	0xe2bf03		488b9c24c0010000		MOVQ 0x1c0(SP), BX						
  exc_task_build.go:444	0xe2bf0b		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:421	0xe2bf13		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:440	0xe2bf1b		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:420	0xe2bf23		4989f0				MOVQ SI, R8							
  exc_task_build.go:421	0xe2bf26		488db42468030000		LEAQ 0x368(SP), SI						
  exc_task_build.go:421	0xe2bf2e		660f1f840000000000		NOPW 0(AX)(AX*1)						
  exc_task_build.go:421	0xe2bf37		660f1f840000000000		NOPW 0(AX)(AX*1)						
  exc_task_build.go:421	0xe2bf40		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:421	0xe2bf45		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:421	0xe2bf4a		e88dce64ff			CALL 0x478ddc							
  exc_task_build.go:421	0xe2bf4f		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:422	0xe2bf53		4883bc248006000000		CMPQ 0x680(SP), $0x0						
  exc_task_build.go:422	0xe2bf5c		0f1f4000			NOPL 0(AX)							
  exc_task_build.go:422	0xe2bf60		0f8469020000			JE 0xe2c1cf							
  exc_task_build.go:418	0xe2bf66		488b842488010000		MOVQ 0x188(SP), AX						
  exc_task_build.go:418	0xe2bf6e		48ffc0				INCQ AX								
  exc_task_build.go:418	0xe2bf71		4889842480010000		MOVQ AX, 0x180(SP)						
  exc_task_build.go:423	0xe2bf79		488d4b01			LEAQ 0x1(BX), CX						
  exc_task_build.go:423	0xe2bf7d		48898c24c8010000		MOVQ CX, 0x1c8(SP)						
  itoa.go:35		0xe2bf85		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2bf8a		e831396cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:432	0xe2bf8f		488dbc2448050000		LEAQ 0x548(SP), DI						
  exc_task_build.go:432	0xe2bf97		488d35823f0502			LEAQ CAS-Backend/pkg/diapdu..stmp_18(SB), SI			
  exc_task_build.go:432	0xe2bf9e		6690				NOPW								
  exc_task_build.go:432	0xe2bfa0		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:432	0xe2bfa5		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:432	0xe2bfaa		e82dce64ff			CALL 0x478ddc							
  exc_task_build.go:432	0xe2bfaf		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:424	0xe2bfb3		488b8c2478030000		MOVQ 0x378(SP), CX						
  exc_task_build.go:424	0xe2bfbb		488b942480030000		MOVQ 0x380(SP), DX						
  exc_task_build.go:424	0xe2bfc3		48898c2448050000		MOVQ CX, 0x548(SP)						
  exc_task_build.go:424	0xe2bfcb		4889942450050000		MOVQ DX, 0x550(SP)						
  exc_task_build.go:425	0xe2bfd3		488b8c2478060000		MOVQ 0x678(SP), CX						
  exc_task_build.go:425	0xe2bfdb		488b942480060000		MOVQ 0x680(SP), DX						
  exc_task_build.go:425	0xe2bfe3		48898c2458050000		MOVQ CX, 0x558(SP)						
  exc_task_build.go:425	0xe2bfeb		4889942460050000		MOVQ DX, 0x560(SP)						
  exc_task_build.go:426	0xe2bff3		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:426	0xe2bffb		4889c7				MOVQ AX, DI							
  exc_task_build.go:426	0xe2bffe		4889de				MOVQ BX, SI							
  exc_task_build.go:426	0xe2c001		31c0				XORL AX, AX							
  exc_task_build.go:426	0xe2c003		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:426	0xe2c00b		e8f09362ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:426	0xe2c010		4889842468050000		MOVQ AX, 0x568(SP)						
  exc_task_build.go:426	0xe2c018		48899c2470050000		MOVQ BX, 0x570(SP)						
  exc_task_build.go:428	0xe2c020		f20f10842458010000		MOVSD_XMM 0x158(SP), X0						
  exc_task_build.go:428	0xe2c029		f20f11842400060000		MOVSD_XMM X0, 0x600(SP)						
  exc_task_build.go:423	0xe2c032		488b8c2438010000		MOVQ 0x138(SP), CX						
  exc_task_build.go:423	0xe2c03a		488b9c24c8010000		MOVQ 0x1c8(SP), BX						
  exc_task_build.go:423	0xe2c042		4839d9				CMPQ CX, BX							
  exc_task_build.go:423	0xe2c045		720a				JB 0xe2c051							
  exc_task_build.go:423	0xe2c047		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:423	0xe2c04f		eb19				JMP 0xe2c06a							
  exc_task_build.go:423	0xe2c051		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:423	0xe2c059		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:423	0xe2c05e		488d351b613100			LEAQ runtime.types+1429888(SB), SI				
  exc_task_build.go:423	0xe2c065		e8d65b64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:423	0xe2c06a		4889842430020000		MOVQ AX, 0x230(SP)						
  exc_task_build.go:423	0xe2c072		48899c2430010000		MOVQ BX, 0x130(SP)						
  exc_task_build.go:423	0xe2c07a		48898c2438010000		MOVQ CX, 0x138(SP)						
  exc_task_build.go:423	0xe2c082		4869d3e0000000			IMULQ $.file+147(SB), BX, DX					
  exc_task_build.go:423	0xe2c089		488d3c10			LEAQ 0(AX)(DX*1), DI						
  exc_task_build.go:423	0xe2c08d		488dbf20ffffff			LEAQ 0xffffff20(DI), DI						
  exc_task_build.go:423	0xe2c094		833db51a730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:423	0xe2c09b		7427				JE 0xe2c0c4							
  exc_task_build.go:423	0xe2c09d		4889bc2468040000		MOVQ DI, 0x468(SP)						
  exc_task_build.go:423	0xe2c0a5		488d05d4603100			LEAQ runtime.types+1429888(SB), AX				
  exc_task_build.go:423	0xe2c0ac		4889fb				MOVQ DI, BX							
  exc_task_build.go:423	0xe2c0af		488d8c2448050000		LEAQ 0x548(SP), CX						
  exc_task_build.go:423	0xe2c0b7		e8648e5eff			CALL runtime.wbMove(SB)						
  exc_task_build.go:423	0xe2c0bc		488bbc2468040000		MOVQ 0x468(SP), DI						
  exc_task_build.go:423	0xe2c0c4		488db42448050000		LEAQ 0x548(SP), SI						
  exc_task_build.go:423	0xe2c0cc		48896c24f0			MOVQ BP, -0x10(SP)						
  exc_task_build.go:423	0xe2c0d1		488d6c24f0			LEAQ -0x10(SP), BP						
  exc_task_build.go:423	0xe2c0d6		e801cd64ff			CALL 0x478ddc							
  exc_task_build.go:423	0xe2c0db		488b6d00			MOVQ 0(BP), BP							
  exc_task_build.go:434	0xe2c0df		488b8c2440010000		MOVQ 0x140(SP), CX						
  exc_task_build.go:434	0xe2c0e7		48ffc1				INCQ CX								
  exc_task_build.go:434	0xe2c0ea		48898c24c8010000		MOVQ CX, 0x1c8(SP)						
  itoa.go:35		0xe2c0f2		488b842480010000		MOVQ 0x180(SP), AX						
  itoa.go:35		0xe2c0fa		bb0a000000			MOVL $__major_os_version__+4(SB), BX				
  itoa.go:35		0xe2c0ff		90				NOPL								
  itoa.go:35		0xe2c100		e8bb376cff			CALL strconv.FormatInt(SB)					
  exc_task_build.go:434	0xe2c105		488b8c24d0010000		MOVQ 0x1d0(SP), CX						
  exc_task_build.go:434	0xe2c10d		4889c7				MOVQ AX, DI							
  exc_task_build.go:434	0xe2c110		4889de				MOVQ BX, SI							
  exc_task_build.go:434	0xe2c113		31c0				XORL AX, AX							
  exc_task_build.go:434	0xe2c115		488b9c2470040000		MOVQ 0x470(SP), BX						
  exc_task_build.go:434	0xe2c11d		0f1f00				NOPL 0(AX)							
  exc_task_build.go:434	0xe2c120		e8db9262ff			CALL runtime.concatstring2(SB)					
  exc_task_build.go:434	0xe2c125		488b8c2448010000		MOVQ 0x148(SP), CX						
  exc_task_build.go:434	0xe2c12d		488b9424c8010000		MOVQ 0x1c8(SP), DX						
  exc_task_build.go:434	0xe2c135		4839d1				CMPQ CX, DX							
  exc_task_build.go:434	0xe2c138		720a				JB 0xe2c144							
  exc_task_build.go:434	0xe2c13a		488bb42438020000		MOVQ 0x238(SP), SI						
  exc_task_build.go:434	0xe2c142		eb42				JMP 0xe2c186							
  exc_task_build.go:434	0xe2c144		4889842470040000		MOVQ AX, 0x470(SP)						
  exc_task_build.go:434	0xe2c14c		48899c24d0010000		MOVQ BX, 0x1d0(SP)						
  exc_task_build.go:434	0xe2c154		488b842438020000		MOVQ 0x238(SP), AX						
  exc_task_build.go:434	0xe2c15c		4889d3				MOVQ DX, BX							
  exc_task_build.go:434	0xe2c15f		bf01000000			MOVL $__minor_os_version__(SB), DI				
  exc_task_build.go:434	0xe2c164		488d35b5672100			LEAQ runtime.types+383264(SB), SI				
  exc_task_build.go:434	0xe2c16b		e8d05a64ff			CALL runtime.growslice(SB)					
  exc_task_build.go:434	0xe2c170		4889c6				MOVQ AX, SI							
  exc_task_build.go:434	0xe2c173		4889da				MOVQ BX, DX							
  exc_task_build.go:434	0xe2c176		488b842470040000		MOVQ 0x470(SP), AX						
  exc_task_build.go:434	0xe2c17e		488b9c24d0010000		MOVQ 0x1d0(SP), BX						
  exc_task_build.go:434	0xe2c186		4c8d52ff			LEAQ -0x1(DX), R10						
  exc_task_build.go:434	0xe2c18a		49c1e204			SHLQ $__subsystem__+1(SB), R10					
  exc_task_build.go:434	0xe2c18e		4a895c1608			MOVQ BX, 0x8(SI)(R10*1)						
  exc_task_build.go:434	0xe2c193		833db619730200			CMPL runtime.writeBarrier(SB), $0x0				
  exc_task_build.go:434	0xe2c19a		7414				JE 0xe2c1b0							
  exc_task_build.go:434	0xe2c19c		0f1f4000			NOPL 0(AX)							
  exc_task_build.go:434	0xe2c1a0		e89bc264ff			CALL runtime.gcWriteBarrier2(SB)				
  exc_task_build.go:434	0xe2c1a5		498903				MOVQ AX, 0(R11)							
  exc_task_build.go:434	0xe2c1a8		4e8b2416			MOVQ 0(SI)(R10*1), R12						
  exc_task_build.go:434	0xe2c1ac		4d896308			MOVQ R12, 0x8(R11)						
  exc_task_build.go:434	0xe2c1b0		4a890416			MOVQ AX, 0(SI)(R10*1)						
  exc_task_build.go:440	0xe2c1b4		488b9c2430010000		MOVQ 0x130(SP), BX						
  exc_task_build.go:440	0xe2c1bc		4c8b942438010000		MOVQ 0x138(SP), R10						
  exc_task_build.go:440	0xe2c1c4		488b842430020000		MOVQ 0x230(SP), AX						
  exc_task_build.go:444	0xe2c1cc		4989f0				MOVQ SI, R8							
  exc_task_build.go:444	0xe2c1cf		4889d6				MOVQ DX, SI							
  exc_task_build.go:444	0xe2c1d2		4c89c2				MOVQ R8, DX							
  exc_task_build.go:444	0xe2c1d5		4989d0				MOVQ DX, R8							
  exc_task_build.go:444	0xe2c1d8		4889f2				MOVQ SI, DX							
  exc_task_build.go:444	0xe2c1db		0f1f440000			NOPL 0(AX)(AX*1)						
  exc_task_build.go:440	0xe2c1e0		4885db				TESTQ BX, BX							
  exc_task_build.go:440	0xe2c1e3		0f8582000000			JNE 0xe2c26b							
  exc_task_build.go:441	0xe2c1e9		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:441	0xe2c1f1		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:441	0xe2c1f9		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:441	0xe2c201		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:441	0xe2c209		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:441	0xe2c211		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:441	0xe2c219		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:441	0xe2c221		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:441	0xe2c229		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:441	0xe2c231		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:441	0xe2c239		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:441	0xe2c241		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:441	0xe2c249		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:441	0xe2c251		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:441	0xe2c259		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:441	0xe2c262		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:441	0xe2c269		5d				POPQ BP								
  exc_task_build.go:441	0xe2c26a		c3				RET								
  exc_task_build.go:443	0xe2c26b		4889842430030000		MOVQ AX, 0x330(SP)						
  exc_task_build.go:443	0xe2c273		48899c2438030000		MOVQ BX, 0x338(SP)						
  exc_task_build.go:443	0xe2c27b		4c89942440030000		MOVQ R10, 0x340(SP)						
  exc_task_build.go:444	0xe2c283		4c89842448030000		MOVQ R8, 0x348(SP)						
  exc_task_build.go:444	0xe2c28b		4889942450030000		MOVQ DX, 0x350(SP)						
  exc_task_build.go:444	0xe2c293		48898c2458030000		MOVQ CX, 0x358(SP)						
  exc_task_build.go:445	0xe2c29b		c684246003000001		MOVB $__minor_os_version__(SB), 0x360(SP)			
  exc_task_build.go:446	0xe2c2a3		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:446	0xe2c2ab		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:446	0xe2c2b3		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:446	0xe2c2bb		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:446	0xe2c2c3		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:446	0xe2c2cb		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:446	0xe2c2d3		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:446	0xe2c2db		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:446	0xe2c2e3		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:446	0xe2c2eb		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:446	0xe2c2f3		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:446	0xe2c2fb		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:446	0xe2c303		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:446	0xe2c30b		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:446	0xe2c313		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:446	0xe2c31c		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:446	0xe2c323		5d				POPQ BP								
  exc_task_build.go:446	0xe2c324		c3				RET								
  exc_task_build.go:407	0xe2c325		488d15f4652100			LEAQ runtime.types+383264(SB), DX				
  exc_task_build.go:407	0xe2c32c		4889942478040000		MOVQ DX, 0x478(SP)						
  exc_task_build.go:407	0xe2c334		488d15e5ba0302			LEAQ CAS-Backend/pkg/diapdu..stmp_5(SB), DX			
  exc_task_build.go:407	0xe2c33b		4889942480040000		MOVQ DX, 0x480(SP)						
  print.go:314		0xe2c343		488b1d365d6e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe2c34a		488d058ff70302			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe2c351		488d8c2478040000		LEAQ 0x478(SP), CX						
  print.go:314		0xe2c359		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe2c35e		4889fe				MOVQ DI, SI							
  print.go:314		0xe2c361		e8fa346fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:408	0xe2c366		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:408	0xe2c36e		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:408	0xe2c376		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:408	0xe2c37e		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:408	0xe2c386		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:408	0xe2c38e		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:408	0xe2c396		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:408	0xe2c39e		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:408	0xe2c3a6		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:408	0xe2c3ae		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:408	0xe2c3b6		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:408	0xe2c3be		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:408	0xe2c3c6		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:408	0xe2c3ce		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:408	0xe2c3d6		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:408	0xe2c3df		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:408	0xe2c3e6		5d				POPQ BP								
  exc_task_build.go:408	0xe2c3e7		c3				RET								
  exc_task_build.go:397	0xe2c3e8		488d1531652100			LEAQ runtime.types+383264(SB), DX				
  exc_task_build.go:397	0xe2c3ef		4889942498040000		MOVQ DX, 0x498(SP)						
  exc_task_build.go:397	0xe2c3f7		488d1532ba0302			LEAQ CAS-Backend/pkg/diapdu..stmp_12(SB), DX			
  exc_task_build.go:397	0xe2c3fe		48899424a0040000		MOVQ DX, 0x4a0(SP)						
  print.go:314		0xe2c406		488b1d735c6e02			MOVQ os.Stdout(SB), BX						
  print.go:314		0xe2c40d		488d05ccf60302			LEAQ go:itab.*os.File,io.Writer(SB), AX				
  print.go:314		0xe2c414		488d8c2498040000		LEAQ 0x498(SP), CX						
  print.go:314		0xe2c41c		bf01000000			MOVL $__minor_os_version__(SB), DI				
  print.go:314		0xe2c421		4889fe				MOVQ DI, SI							
  print.go:314		0xe2c424		e837346fff			CALL fmt.Fprintln(SB)						
  exc_task_build.go:398	0xe2c429		488b942430030000		MOVQ 0x330(SP), DX						
  exc_task_build.go:398	0xe2c431		48899424f8010000		MOVQ DX, 0x1f8(SP)						
  exc_task_build.go:398	0xe2c439		0f10842438030000		MOVUPS 0x338(SP), X0						
  exc_task_build.go:398	0xe2c441		0f11842400020000		MOVUPS X0, 0x200(SP)						
  exc_task_build.go:398	0xe2c449		0f10842448030000		MOVUPS 0x348(SP), X0						
  exc_task_build.go:398	0xe2c451		0f11842410020000		MOVUPS X0, 0x210(SP)						
  exc_task_build.go:398	0xe2c459		0f10842458030000		MOVUPS 0x358(SP), X0						
  exc_task_build.go:398	0xe2c461		0f11842420020000		MOVUPS X0, 0x220(SP)						
  exc_task_build.go:398	0xe2c469		488b8424f8010000		MOVQ 0x1f8(SP), AX						
  exc_task_build.go:398	0xe2c471		488b9c2400020000		MOVQ 0x200(SP), BX						
  exc_task_build.go:398	0xe2c479		488b8c2408020000		MOVQ 0x208(SP), CX						
  exc_task_build.go:398	0xe2c481		488bbc2410020000		MOVQ 0x210(SP), DI						
  exc_task_build.go:398	0xe2c489		488bb42418020000		MOVQ 0x218(SP), SI						
  exc_task_build.go:398	0xe2c491		4c8b842420020000		MOVQ 0x220(SP), R8						
  exc_task_build.go:398	0xe2c499		440fb68c2428020000		MOVZX 0x228(SP), R9						
  exc_task_build.go:398	0xe2c4a2		4881c428060000			ADDQ $__file_alignment__+1064(SB), SP				
  exc_task_build.go:398	0xe2c4a9		5d				POPQ BP								
  exc_task_build.go:398	0xe2c4aa		c3				RET								
  exc_task_build.go:173	0xe2c4ab		4889442460			MOVQ AX, 0x60(SP)						
  exc_task_build.go:173	0xe2c4b0		48895c2468			MOVQ BX, 0x68(SP)						
  exc_task_build.go:173	0xe2c4b5		e826a064ff			CALL runtime.morestack_noctxt.abi0(SB)				
  exc_task_build.go:173	0xe2c4ba		488b442460			MOVQ 0x60(SP), AX						
  exc_task_build.go:173	0xe2c4bf		488b5c2468			MOVQ 0x68(SP), BX						
  exc_task_build.go:173	0xe2c4c4		e937caffff			JMP CAS-Backend/pkg/diapdu.BuildExcNavigationTasks(SB)		
  :-1			0xe2c4c9		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4ca		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4cb		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4cc		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4cd		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4ce		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4cf		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4d0		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4d1		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4d2		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4d3		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4d4		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4d5		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4d6		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4d7		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4d8		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4d9		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4da		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4db		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4dc		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4dd		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4de		cc				INT $__subsystem__(SB)						
  :-1			0xe2c4df		cc				INT $__subsystem__(SB)						

