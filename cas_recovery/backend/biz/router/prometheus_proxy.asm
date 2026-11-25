TEXT CAS-Backend/biz/router.mountPrometheusProxy(SB) D:/CodeEnv_code/cas-backend/biz/router/prometheus_proxy.go
  prometheus_proxy.go:13	0xe95260		493b6610		CMPQ SP, 0x10(R14)										
  prometheus_proxy.go:13	0xe95264		0f863c020000		JBE 0xe954a6											
  prometheus_proxy.go:13	0xe9526a		55			PUSHQ BP											
  prometheus_proxy.go:13	0xe9526b		4889e5			MOVQ SP, BP											
  prometheus_proxy.go:13	0xe9526e		4883ec68		SUBQ $.file+27(SB), SP										
  prometheus_proxy.go:13	0xe95272		48899c2480000000	MOVQ BX, 0x80(SP)										
  strings.go:21			0xe9527a		4889442478		MOVQ AX, 0x78(SP)										
  prometheus_proxy.go:14	0xe9527f		4889d8			MOVQ BX, AX											
  prometheus_proxy.go:14	0xe95282		4889cb			MOVQ CX, BX											
  prometheus_proxy.go:14	0xe95285		e836d764ff		CALL strings.TrimSpace(SB)									
  strings.go:1082		0xe9528a		90			NOPL												
  strings.go:21			0xe9528b		4885db			TESTQ BX, BX											
  strings.go:21			0xe9528e		7504			JNE 0xe95294											
  strings.go:21			0xe95290		31c9			XORL CX, CX											
  strings.go:21			0xe95292		eb32			JMP 0xe952c6											
  prometheus_proxy.go:14	0xe95294		4889442448		MOVQ AX, 0x48(SP)										
  prometheus_proxy.go:14	0xe95299		48895c2430		MOVQ BX, 0x30(SP)										
  strings.go:21			0xe9529e		488d1403		LEAQ 0(BX)(AX*1), DX										
  strings.go:21			0xe952a2		488d52ff		LEAQ -0x1(DX), DX										
  strings.go:21			0xe952a6		b901000000		MOVL $__minor_os_version__(SB), CX								
  strings.go:21			0xe952ab		4889d0			MOVQ DX, AX											
  strings.go:21			0xe952ae		488d1d53322d00		LEAQ go:string.*(SB), BX									
  strings.go:21			0xe952b5		e8a6db56ff		CALL runtime.memequal(SB)									
  strings.go:138		0xe952ba		488b5c2430		MOVQ 0x30(SP), BX										
  strings.go:137		0xe952bf		89c1			MOVL AX, CX											
  prometheus_proxy.go:15	0xe952c1		488b442448		MOVQ 0x48(SP), AX										
  strings.go:137		0xe952c6		84c9			TESTL CL, CL											
  strings.go:137		0xe952c8		740e			JE 0xe952d8											
  strings.go:138		0xe952ca		488d4bff		LEAQ -0x1(BX), CX										
  strings.go:138		0xe952ce		4839cb			CMPQ BX, CX											
  strings.go:138		0xe952d1		7308			JAE 0xe952db											
  strings.go:138		0xe952d3		e9c1010000		JMP 0xe95499											
  prometheus_proxy.go:14	0xe952d8		4889d9			MOVQ BX, CX											
  prometheus_proxy.go:15	0xe952db		4889cb			MOVQ CX, BX											
  prometheus_proxy.go:15	0xe952de		6690			NOPW												
  prometheus_proxy.go:15	0xe952e0		e8db4d70ff		CALL net/url.Parse(SB)										
  prometheus_proxy.go:16	0xe952e5		4885db			TESTQ BX, BX											
  prometheus_proxy.go:16	0xe952e8		0f8574010000		JNE 0xe95462											
  prometheus_proxy.go:15	0xe952ee		4889442440		MOVQ AX, 0x40(SP)										
  prometheus_proxy.go:20	0xe952f3		90			NOPL												
  reverseproxy.go:263		0xe952f4		488d0545bb2100		LEAQ runtime.types+835136(SB), AX								
  reverseproxy.go:263		0xe952fb		0f1f440000		NOPL 0(AX)(AX*1)										
  reverseproxy.go:263		0xe95300		e89bc457ff		CALL runtime.newobject(SB)									
  reverseproxy.go:263		0xe95305		488d0d74040000		LEAQ CAS-Backend/biz/router.mountPrometheusProxy.NewSingleHostReverseProxy.func3(SB), CX	
  reverseproxy.go:263		0xe9530c		488908			MOVQ CX, 0(AX)											
  reverseproxy.go:263		0xe9530f		833d3a886c0200		CMPL runtime.writeBarrier(SB), $0x0								
  reverseproxy.go:263		0xe95316		7508			JNE 0xe95320											
  reverseproxy.go:263		0xe95318		488b4c2440		MOVQ 0x40(SP), CX										
  reverseproxy.go:263		0xe9531d		eb0e			JMP 0xe9532d											
  reverseproxy.go:263		0xe9531f		90			NOPL												
  reverseproxy.go:263		0xe95320		e8fb305eff		CALL runtime.gcWriteBarrier1(SB)								
  reverseproxy.go:263		0xe95325		488b4c2440		MOVQ 0x40(SP), CX										
  reverseproxy.go:263		0xe9532a		49890b			MOVQ CX, 0(R11)											
  reverseproxy.go:263		0xe9532d		4889442460		MOVQ AX, 0x60(SP)										
  reverseproxy.go:263		0xe95332		48894808		MOVQ CX, 0x8(AX)										
  reverseproxy.go:266		0xe95336		488d05838e2800		LEAQ runtime.types+1282496(SB), AX								
  reverseproxy.go:266		0xe9533d		0f1f00			NOPL 0(AX)											
  reverseproxy.go:266		0xe95340		e85bc457ff		CALL runtime.newobject(SB)									
  reverseproxy.go:266		0xe95345		833d04886c0200		CMPL runtime.writeBarrier(SB), $0x0								
  reverseproxy.go:266		0xe9534c		7507			JNE 0xe95355											
  reverseproxy.go:266		0xe9534e		488b4c2460		MOVQ 0x60(SP), CX										
  reverseproxy.go:266		0xe95353		eb0d			JMP 0xe95362											
  reverseproxy.go:266		0xe95355		e8c6305eff		CALL runtime.gcWriteBarrier1(SB)								
  reverseproxy.go:266		0xe9535a		488b4c2460		MOVQ 0x60(SP), CX										
  reverseproxy.go:266		0xe9535f		49890b			MOVQ CX, 0(R11)											
  reverseproxy.go:266		0xe95362		4889442438		MOVQ AX, 0x38(SP)										
  reverseproxy.go:266		0xe95367		48894808		MOVQ CX, 0x8(AX)										
  prometheus_proxy.go:21	0xe9536b		488b4808		MOVQ 0x8(AX), CX										
  prometheus_proxy.go:21	0xe9536f		48894c2450		MOVQ CX, 0x50(SP)										
  prometheus_proxy.go:22	0xe95374		488d05a58a2300		LEAQ runtime.types+953888(SB), AX								
  prometheus_proxy.go:22	0xe9537b		0f1f440000		NOPL 0(AX)(AX*1)										
  prometheus_proxy.go:22	0xe95380		e81bc457ff		CALL runtime.newobject(SB)									
  prometheus_proxy.go:22	0xe95385		488d0d74030000		LEAQ CAS-Backend/biz/router.mountPrometheusProxy.func1(SB), CX					
  prometheus_proxy.go:22	0xe9538c		488908			MOVQ CX, 0(AX)											
  prometheus_proxy.go:22	0xe9538f		833dba876c0200		CMPL runtime.writeBarrier(SB), $0x0								
  prometheus_proxy.go:22	0xe95396		7511			JNE 0xe953a9											
  prometheus_proxy.go:22	0xe95398		488b4c2450		MOVQ 0x50(SP), CX										
  prometheus_proxy.go:22	0xe9539d		488b542440		MOVQ 0x40(SP), DX										
  prometheus_proxy.go:22	0xe953a2		488b5c2438		MOVQ 0x38(SP), BX										
  prometheus_proxy.go:22	0xe953a7		eb27			JMP 0xe953d0											
  prometheus_proxy.go:22	0xe953a9		e8d2305eff		CALL runtime.gcWriteBarrier4(SB)								
  prometheus_proxy.go:22	0xe953ae		488b4c2450		MOVQ 0x50(SP), CX										
  prometheus_proxy.go:22	0xe953b3		49890b			MOVQ CX, 0(R11)											
  prometheus_proxy.go:22	0xe953b6		488b542440		MOVQ 0x40(SP), DX										
  prometheus_proxy.go:22	0xe953bb		49895308		MOVQ DX, 0x8(R11)										
  prometheus_proxy.go:22	0xe953bf		49894310		MOVQ AX, 0x10(R11)										
  prometheus_proxy.go:22	0xe953c3		488b5c2438		MOVQ 0x38(SP), BX										
  prometheus_proxy.go:22	0xe953c8		488b7308		MOVQ 0x8(BX), SI										
  prometheus_proxy.go:22	0xe953cc		49897318		MOVQ SI, 0x18(R11)										
  prometheus_proxy.go:22	0xe953d0		48894808		MOVQ CX, 0x8(AX)										
  prometheus_proxy.go:22	0xe953d4		48895010		MOVQ DX, 0x10(AX)										
  prometheus_proxy.go:22	0xe953d8		48894308		MOVQ AX, 0x8(BX)										
  prometheus_proxy.go:27	0xe953dc		488d05bd931b00		LEAQ runtime.types+432032(SB), AX								
  prometheus_proxy.go:27	0xe953e3		e8b8c357ff		CALL runtime.newobject(SB)									
  prometheus_proxy.go:27	0xe953e8		4889442458		MOVQ AX, 0x58(SP)										
  prometheus_proxy.go:27	0xe953ed		488d05ccbb2100		LEAQ runtime.types+835520(SB), AX								
  prometheus_proxy.go:27	0xe953f4		e8a7c357ff		CALL runtime.newobject(SB)									
  prometheus_proxy.go:27	0xe953f9		488d0de0000000		LEAQ CAS-Backend/biz/router.mountPrometheusProxy.func2(SB), CX					
  prometheus_proxy.go:27	0xe95400		488908			MOVQ CX, 0(AX)											
  prometheus_proxy.go:27	0xe95403		833d46876c0200		CMPL runtime.writeBarrier(SB), $0x0								
  prometheus_proxy.go:27	0xe9540a		750c			JNE 0xe95418											
  prometheus_proxy.go:27	0xe9540c		488b542438		MOVQ 0x38(SP), DX										
  prometheus_proxy.go:27	0xe95411		488b7c2458		MOVQ 0x58(SP), DI										
  prometheus_proxy.go:27	0xe95416		eb1d			JMP 0xe95435											
  prometheus_proxy.go:27	0xe95418		e843305eff		CALL runtime.gcWriteBarrier3(SB)								
  prometheus_proxy.go:27	0xe9541d		488b542438		MOVQ 0x38(SP), DX										
  prometheus_proxy.go:27	0xe95422		498913			MOVQ DX, 0(R11)											
  prometheus_proxy.go:27	0xe95425		49894308		MOVQ AX, 0x8(R11)										
  prometheus_proxy.go:27	0xe95429		488b7c2458		MOVQ 0x58(SP), DI										
  prometheus_proxy.go:27	0xe9542e		4c8b0f			MOVQ 0(DI), R9											
  prometheus_proxy.go:27	0xe95431		4d894b10		MOVQ R9, 0x10(R11)										
  prometheus_proxy.go:27	0xe95435		48895008		MOVQ DX, 0x8(AX)										
  prometheus_proxy.go:27	0xe95439		488907			MOVQ AX, 0(DI)											
  prometheus_proxy.go:27	0xe9543c		488b442478		MOVQ 0x78(SP), AX										
  prometheus_proxy.go:27	0xe95441		8400			TESTB AL, 0(AX)											
  prometheus_proxy.go:27	0xe95443		488d1d05be2e00		LEAQ go:string.*+101703(SB), BX									
  prometheus_proxy.go:27	0xe9544a		b915000000		MOVL $__major_os_version__+15(SB), CX								
  prometheus_proxy.go:27	0xe9544f		be01000000		MOVL $__minor_os_version__(SB), SI								
  prometheus_proxy.go:27	0xe95454		4989f0			MOVQ SI, R8											
  prometheus_proxy.go:27	0xe95457		e8a458f7ff		CALL github.com/gin-gonic/gin.(*RouterGroup).Any(SB)						
  prometheus_proxy.go:36	0xe9545c		4883c468		ADDQ $.file+27(SB), SP										
  prometheus_proxy.go:36	0xe95460		5d			POPQ BP												
  prometheus_proxy.go:36	0xe95461		c3			RET												
  prometheus_proxy.go:17	0xe95462		488b5318		MOVQ 0x18(BX), DX										
  prometheus_proxy.go:17	0xe95466		4889c8			MOVQ CX, AX											
  prometheus_proxy.go:17	0xe95469		ffd2			CALL DX												
  prometheus_proxy.go:17	0xe9546b		b916000000		MOVL $__major_os_version__+16(SB), CX								
  prometheus_proxy.go:17	0xe95470		4889c7			MOVQ AX, DI											
  prometheus_proxy.go:17	0xe95473		4889de			MOVQ BX, SI											
  prometheus_proxy.go:17	0xe95476		31c0			XORL AX, AX											
  prometheus_proxy.go:17	0xe95478		488d1df9ce2e00		LEAQ go:string.*+106096(SB), BX									
  prometheus_proxy.go:17	0xe9547f		90			NOPL												
  prometheus_proxy.go:17	0xe95480		e87bff5bff		CALL runtime.concatstring2(SB)									
  prometheus_proxy.go:17	0xe95485		e8964c5dff		CALL runtime.convTstring(SB)									
  prometheus_proxy.go:17	0xe9548a		4889c3			MOVQ AX, BX											
  prometheus_proxy.go:17	0xe9548d		488d058cd41a00		LEAQ runtime.types+383264(SB), AX								
  prometheus_proxy.go:17	0xe95494		e887a65dff		CALL runtime.gopanic(SB)									
  strings.go:138		0xe95499		4889da			MOVQ BX, DX											
  strings.go:138		0xe9549c		0f1f4000		NOPL 0(AX)											
  strings.go:138		0xe954a0		e87b335eff		CALL runtime.panicSliceAlen(SB)									
  strings.go:138		0xe954a5		90			NOPL												
  prometheus_proxy.go:13	0xe954a6		4889442408		MOVQ AX, 0x8(SP)										
  prometheus_proxy.go:13	0xe954ab		48895c2410		MOVQ BX, 0x10(SP)										
  prometheus_proxy.go:13	0xe954b0		48894c2418		MOVQ CX, 0x18(SP)										
  prometheus_proxy.go:13	0xe954b5		e826105eff		CALL runtime.morestack_noctxt.abi0(SB)								
  prometheus_proxy.go:13	0xe954ba		488b442408		MOVQ 0x8(SP), AX										
  prometheus_proxy.go:13	0xe954bf		488b5c2410		MOVQ 0x10(SP), BX										
  prometheus_proxy.go:13	0xe954c4		488b4c2418		MOVQ 0x18(SP), CX										
  prometheus_proxy.go:13	0xe954c9		e992fdffff		JMP CAS-Backend/biz/router.mountPrometheusProxy(SB)						
  :-1				0xe954ce		cc			INT $__subsystem__(SB)										
  :-1				0xe954cf		cc			INT $__subsystem__(SB)										
  :-1				0xe954d0		cc			INT $__subsystem__(SB)										
  :-1				0xe954d1		cc			INT $__subsystem__(SB)										
  :-1				0xe954d2		cc			INT $__subsystem__(SB)										
  :-1				0xe954d3		cc			INT $__subsystem__(SB)										
  :-1				0xe954d4		cc			INT $__subsystem__(SB)										
  :-1				0xe954d5		cc			INT $__subsystem__(SB)										
  :-1				0xe954d6		cc			INT $__subsystem__(SB)										
  :-1				0xe954d7		cc			INT $__subsystem__(SB)										
  :-1				0xe954d8		cc			INT $__subsystem__(SB)										
  :-1				0xe954d9		cc			INT $__subsystem__(SB)										
  :-1				0xe954da		cc			INT $__subsystem__(SB)										
  :-1				0xe954db		cc			INT $__subsystem__(SB)										
  :-1				0xe954dc		cc			INT $__subsystem__(SB)										
  :-1				0xe954dd		cc			INT $__subsystem__(SB)										
  :-1				0xe954de		cc			INT $__subsystem__(SB)										
  :-1				0xe954df		cc			INT $__subsystem__(SB)										

TEXT CAS-Backend/biz/router.mountPrometheusProxy.func2(SB) D:/CodeEnv_code/cas-backend/biz/router/prometheus_proxy.go
  prometheus_proxy.go:27	0xe954e0		493b6610		CMPQ SP, 0x10(R14)						
  prometheus_proxy.go:27	0xe954e4		0f86e7010000		JBE 0xe956d1							
  prometheus_proxy.go:27	0xe954ea		55			PUSHQ BP							
  prometheus_proxy.go:27	0xe954eb		4889e5			MOVQ SP, BP							
  prometheus_proxy.go:27	0xe954ee		4883ec50		SUBQ $.file+3(SB), SP						
  tree.go:37			0xe954f2		4889442460		MOVQ AX, 0x60(SP)						
  context.go:405		0xe954f7		4c8b4038		MOVQ 0x38(AX), R8						
  prometheus_proxy.go:27	0xe954fb		488b5208		MOVQ 0x8(DX), DX						
  prometheus_proxy.go:27	0xe954ff		4889542438		MOVQ DX, 0x38(SP)						
  prometheus_proxy.go:28	0xe95504		90			NOPL								
  context.go:405		0xe95505		4c8b4840		MOVQ 0x40(AX), R9						
  tree.go:37			0xe95509		eb07			JMP 0xe95512							
  tree.go:37			0xe9550b		4983c020		ADDQ $__major_os_version__+26(SB), R8				
  tree.go:37			0xe9550f		49ffc9			DECQ R9								
  tree.go:37			0xe95512		4d85c9			TESTQ R9, R9							
  tree.go:37			0xe95515		7e67			JLE 0xe9557e							
  tree.go:37			0xe95517		4d8b5010		MOVQ 0x10(R8), R10						
  tree.go:37			0xe9551b		4d8b5818		MOVQ 0x18(R8), R11						
  tree.go:38			0xe9551f		4983780808		CMPQ 0x8(R8), $__major_os_version__+2(SB)			
  tree.go:38			0xe95524		75e5			JNE 0xe9550b							
  tree.go:37			0xe95526		4c894c2430		MOVQ R9, 0x30(SP)						
  tree.go:37			0xe9552b		4c89442448		MOVQ R8, 0x48(SP)						
  tree.go:37			0xe95530		4c895c2428		MOVQ R11, 0x28(SP)						
  tree.go:37			0xe95535		4c89542440		MOVQ R10, 0x40(SP)						
  tree.go:37			0xe9553a		498b00			MOVQ 0(R8), AX							
  tree.go:38			0xe9553d		488d1d77eb2d00		LEAQ go:string.*+48051(SB), BX					
  tree.go:38			0xe95544		b908000000		MOVL $__major_os_version__+2(SB), CX				
  tree.go:38			0xe95549		e812d956ff		CALL runtime.memequal(SB)					
  tree.go:38			0xe9554e		84c0			TESTL AL, AL							
  tree.go:38			0xe95550		7516			JNE 0xe95568							
  prometheus_proxy.go:30	0xe95552		488b442460		MOVQ 0x60(SP), AX						
  prometheus_proxy.go:34	0xe95557		488b542438		MOVQ 0x38(SP), DX						
  tree.go:37			0xe9555c		4c8b442448		MOVQ 0x48(SP), R8						
  tree.go:37			0xe95561		4c8b4c2430		MOVQ 0x30(SP), R9						
  tree.go:38			0xe95566		eba3			JMP 0xe9550b							
  prometheus_proxy.go:30	0xe95568		488b442460		MOVQ 0x60(SP), AX						
  prometheus_proxy.go:34	0xe9556d		488b542438		MOVQ 0x38(SP), DX						
  tree.go:48			0xe95572		488b4c2428		MOVQ 0x28(SP), CX						
  tree.go:48			0xe95577		488b5c2440		MOVQ 0x40(SP), BX						
  tree.go:48			0xe9557c		eb04			JMP 0xe95582							
  tree.go:48			0xe9557e		31c9			XORL CX, CX							
  tree.go:48			0xe95580		31db			XORL BX, BX							
  prometheus_proxy.go:28	0xe95582		90			NOPL								
  strings.go:1076		0xe95583		90			NOPL								
  strings.go:17			0xe95584		4885c9			TESTQ CX, CX							
  strings.go:17			0xe95587		7409			JE 0xe95592							
  strings.go:17			0xe95589		803b2f			CMPB 0(BX), $__major_os_version__+41(SB)			
  strings.go:17			0xe9558c		410f94c0		SETE R8								
  strings.go:17			0xe95590		eb03			JMP 0xe95595							
  strings.go:17			0xe95592		4531c0			XORL R8, R8							
  strings.go:130		0xe95595		4584c0			TESTL R8, R8							
  strings.go:130		0xe95598		7426			JE 0xe955c0							
  strings.go:130		0xe9559a		660f1f440000		NOPW 0(AX)(AX*1)						
  strings.go:131		0xe955a0		4883f901		CMPQ CX, $__minor_os_version__(SB)				
  strings.go:131		0xe955a4		0f821a010000		JB 0xe956c4							
  strings.go:131		0xe955aa		48ffc9			DECQ CX								
  strings.go:131		0xe955ad		4989c8			MOVQ CX, R8							
  strings.go:131		0xe955b0		49f7d8			NEGQ R8								
  strings.go:131		0xe955b3		49c1f83f		SARQ $__major_os_version__+57(SB), R8				
  strings.go:131		0xe955b7		4183e001		ANDL $__minor_os_version__(SB), R8				
  strings.go:131		0xe955bb		4c01c3			ADDQ R8, BX							
  strings.go:131		0xe955be		6690			NOPW								
  prometheus_proxy.go:29	0xe955c0		4885c9			TESTQ CX, CX							
  prometheus_proxy.go:29	0xe955c3		7532			JNE 0xe955f7							
  prometheus_proxy.go:30	0xe955c5		488b7020		MOVQ 0x20(AX), SI						
  prometheus_proxy.go:30	0xe955c9		488b7610		MOVQ 0x10(SI), SI						
  prometheus_proxy.go:30	0xe955cd		48c7464001000000	MOVQ $__minor_os_version__(SB), 0x40(SI)			
  prometheus_proxy.go:30	0xe955d5		833d74856c0200		CMPL runtime.writeBarrier(SB), $0x0				
  prometheus_proxy.go:30	0xe955dc		740c			JE 0xe955ea							
  prometheus_proxy.go:30	0xe955de		4c8b4638		MOVQ 0x38(SI), R8						
  prometheus_proxy.go:30	0xe955e2		e8392e5eff		CALL runtime.gcWriteBarrier1(SB)				
  prometheus_proxy.go:30	0xe955e7		4d8903			MOVQ R8, 0(R11)							
  prometheus_proxy.go:30	0xe955ea		4c8d05172f2d00		LEAQ go:string.*(SB), R8					
  prometheus_proxy.go:30	0xe955f1		4c894638		MOVQ R8, 0x38(SI)						
  prometheus_proxy.go:30	0xe955f5		eb4f			JMP 0xe95646							
  prometheus_proxy.go:32	0xe955f7		31c0			XORL AX, AX							
  prometheus_proxy.go:32	0xe955f9		4889df			MOVQ BX, DI							
  prometheus_proxy.go:32	0xe955fc		4889ce			MOVQ CX, SI							
  prometheus_proxy.go:32	0xe955ff		488d1d022f2d00		LEAQ go:string.*(SB), BX					
  prometheus_proxy.go:32	0xe95606		b901000000		MOVL $__minor_os_version__(SB), CX				
  prometheus_proxy.go:32	0xe9560b		e8f0fd5bff		CALL runtime.concatstring2(SB)					
  prometheus_proxy.go:32	0xe95610		488b542460		MOVQ 0x60(SP), DX						
  prometheus_proxy.go:32	0xe95615		4c8b4220		MOVQ 0x20(DX), R8						
  prometheus_proxy.go:32	0xe95619		4d8b4010		MOVQ 0x10(R8), R8						
  prometheus_proxy.go:32	0xe9561d		49895840		MOVQ BX, 0x40(R8)						
  prometheus_proxy.go:32	0xe95621		833d28856c0200		CMPL runtime.writeBarrier(SB), $0x0				
  prometheus_proxy.go:32	0xe95628		7410			JE 0xe9563a							
  prometheus_proxy.go:32	0xe9562a		e8112e5eff		CALL runtime.gcWriteBarrier2(SB)				
  prometheus_proxy.go:32	0xe9562f		498903			MOVQ AX, 0(R11)							
  prometheus_proxy.go:32	0xe95632		498b7038		MOVQ 0x38(R8), SI						
  prometheus_proxy.go:32	0xe95636		49897308		MOVQ SI, 0x8(R11)						
  prometheus_proxy.go:32	0xe9563a		49894038		MOVQ AX, 0x38(R8)						
  prometheus_proxy.go:34	0xe9563e		4889d0			MOVQ DX, AX							
  prometheus_proxy.go:34	0xe95641		488b542438		MOVQ 0x38(SP), DX						
  prometheus_proxy.go:34	0xe95646		488b7028		MOVQ 0x28(AX), SI						
  prometheus_proxy.go:34	0xe9564a		488b4830		MOVQ 0x30(AX), CX						
  prometheus_proxy.go:34	0xe9564e		4885f6			TESTQ SI, SI							
  prometheus_proxy.go:34	0xe95651		7413			JE 0xe95666							
  prometheus_proxy.go:34	0xe95653		488b5e08		MOVQ 0x8(SI), BX						
  prometheus_proxy.go:34	0xe95657		4c8b05d2371200		MOVQ CAS-Backend/biz/router..typeAssert.0(SB), R8		
  prometheus_proxy.go:34	0xe9565e		4d8b08			MOVQ 0(R8), R9							
  prometheus_proxy.go:34	0xe95661		8b7610			MOVL 0x10(SI), SI						
  prometheus_proxy.go:34	0xe95664		eb15			JMP 0xe9567b							
  prometheus_proxy.go:34	0xe95666		488b7820		MOVQ 0x20(AX), DI						
  prometheus_proxy.go:34	0xe9566a		4889d0			MOVQ DX, AX							
  prometheus_proxy.go:34	0xe9566d		4889f3			MOVQ SI, BX							
  prometheus_proxy.go:34	0xe95670		e8ab81b0ff		CALL net/http/httputil.(*ReverseProxy).ServeHTTP(SB)		
  prometheus_proxy.go:35	0xe95675		4883c450		ADDQ $.file+3(SB), SP						
  prometheus_proxy.go:35	0xe95679		5d			POPQ BP								
  prometheus_proxy.go:35	0xe9567a		c3			RET								
  prometheus_proxy.go:34	0xe9567b		4989f2			MOVQ SI, R10							
  prometheus_proxy.go:34	0xe9567e		4c21ce			ANDQ R9, SI							
  prometheus_proxy.go:34	0xe95681		48c1e604		SHLQ $__subsystem__+1(SB), SI					
  prometheus_proxy.go:34	0xe95685		4e8b5c0608		MOVQ 0x8(SI)(R8*1), R11						
  prometheus_proxy.go:34	0xe9568a		4939db			CMPQ R11, BX							
  prometheus_proxy.go:34	0xe9568d		742e			JE 0xe956bd							
  prometheus_proxy.go:34	0xe9568f		498d7201		LEAQ 0x1(R10), SI						
  prometheus_proxy.go:34	0xe95693		4d85db			TESTQ R11, R11							
  prometheus_proxy.go:34	0xe95696		75e3			JNE 0xe9567b							
  prometheus_proxy.go:34	0xe95698		48894c2440		MOVQ CX, 0x40(SP)						
  prometheus_proxy.go:34	0xe9569d		488d058c371200		LEAQ CAS-Backend/biz/router..typeAssert.0(SB), AX		
  prometheus_proxy.go:34	0xe956a4		e8379c57ff		CALL runtime.typeAssert(SB)					
  prometheus_proxy.go:34	0xe956a9		488b4c2440		MOVQ 0x40(SP), CX						
  prometheus_proxy.go:34	0xe956ae		488b542438		MOVQ 0x38(SP), DX						
  prometheus_proxy.go:34	0xe956b3		4889c6			MOVQ AX, SI							
  prometheus_proxy.go:34	0xe956b6		488b442460		MOVQ 0x60(SP), AX						
  prometheus_proxy.go:34	0xe956bb		eba9			JMP 0xe95666							
  prometheus_proxy.go:34	0xe956bd		4a8b740610		MOVQ 0x10(SI)(R8*1), SI						
  prometheus_proxy.go:34	0xe956c2		eba2			JMP 0xe95666							
  strings.go:131		0xe956c4		b801000000		MOVL $__minor_os_version__(SB), AX				
  strings.go:131		0xe956c9		31c9			XORL CX, CX							
  strings.go:131		0xe956cb		e8d0315eff		CALL runtime.panicSliceB(SB)					
  strings.go:131		0xe956d0		90			NOPL								
  prometheus_proxy.go:27	0xe956d1		4889442408		MOVQ AX, 0x8(SP)						
  prometheus_proxy.go:27	0xe956d6		e8850d5eff		CALL runtime.morestack.abi0(SB)					
  prometheus_proxy.go:27	0xe956db		488b442408		MOVQ 0x8(SP), AX						
  prometheus_proxy.go:27	0xe956e0		e9fbfdffff		JMP CAS-Backend/biz/router.mountPrometheusProxy.func2(SB)	
  :-1				0xe956e5		cc			INT $__subsystem__(SB)						
  :-1				0xe956e6		cc			INT $__subsystem__(SB)						
  :-1				0xe956e7		cc			INT $__subsystem__(SB)						
  :-1				0xe956e8		cc			INT $__subsystem__(SB)						
  :-1				0xe956e9		cc			INT $__subsystem__(SB)						
  :-1				0xe956ea		cc			INT $__subsystem__(SB)						
  :-1				0xe956eb		cc			INT $__subsystem__(SB)						
  :-1				0xe956ec		cc			INT $__subsystem__(SB)						
  :-1				0xe956ed		cc			INT $__subsystem__(SB)						
  :-1				0xe956ee		cc			INT $__subsystem__(SB)						
  :-1				0xe956ef		cc			INT $__subsystem__(SB)						
  :-1				0xe956f0		cc			INT $__subsystem__(SB)						
  :-1				0xe956f1		cc			INT $__subsystem__(SB)						
  :-1				0xe956f2		cc			INT $__subsystem__(SB)						
  :-1				0xe956f3		cc			INT $__subsystem__(SB)						
  :-1				0xe956f4		cc			INT $__subsystem__(SB)						
  :-1				0xe956f5		cc			INT $__subsystem__(SB)						
  :-1				0xe956f6		cc			INT $__subsystem__(SB)						
  :-1				0xe956f7		cc			INT $__subsystem__(SB)						
  :-1				0xe956f8		cc			INT $__subsystem__(SB)						
  :-1				0xe956f9		cc			INT $__subsystem__(SB)						
  :-1				0xe956fa		cc			INT $__subsystem__(SB)						
  :-1				0xe956fb		cc			INT $__subsystem__(SB)						
  :-1				0xe956fc		cc			INT $__subsystem__(SB)						
  :-1				0xe956fd		cc			INT $__subsystem__(SB)						
  :-1				0xe956fe		cc			INT $__subsystem__(SB)						
  :-1				0xe956ff		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/biz/router.mountPrometheusProxy.func1(SB) D:/CodeEnv_code/cas-backend/biz/router/prometheus_proxy.go
  prometheus_proxy.go:22	0xe95700		493b6610		CMPQ SP, 0x10(R14)						
  prometheus_proxy.go:22	0xe95704		7661			JBE 0xe95767							
  prometheus_proxy.go:22	0xe95706		55			PUSHQ BP							
  prometheus_proxy.go:22	0xe95707		4889e5			MOVQ SP, BP							
  prometheus_proxy.go:22	0xe9570a		4883ec10		SUBQ $__major_os_version__+10(SB), SP				
  prometheus_proxy.go:25	0xe9570e		4889442420		MOVQ AX, 0x20(SP)						
  prometheus_proxy.go:22	0xe95713		488b4a10		MOVQ 0x10(DX), CX						
  prometheus_proxy.go:22	0xe95717		48894c2408		MOVQ CX, 0x8(SP)						
  prometheus_proxy.go:22	0xe9571c		488b5208		MOVQ 0x8(DX), DX						
  prometheus_proxy.go:23	0xe95720		488b1a			MOVQ 0(DX), BX							
  prometheus_proxy.go:23	0xe95723		ffd3			CALL BX								
  prometheus_proxy.go:24	0xe95725		488b4c2408		MOVQ 0x8(SP), CX						
  prometheus_proxy.go:24	0xe9572a		488b5930		MOVQ 0x30(CX), BX						
  prometheus_proxy.go:24	0xe9572e		488b4928		MOVQ 0x28(CX), CX						
  prometheus_proxy.go:24	0xe95732		488b742420		MOVQ 0x20(SP), SI						
  prometheus_proxy.go:24	0xe95737		48899e88000000		MOVQ BX, 0x88(SI)						
  prometheus_proxy.go:24	0xe9573e		833d0b846c0200		CMPL runtime.writeBarrier(SB), $0x0				
  prometheus_proxy.go:24	0xe95745		7413			JE 0xe9575a							
  prometheus_proxy.go:24	0xe95747		e8f42c5eff		CALL runtime.gcWriteBarrier2(SB)				
  prometheus_proxy.go:24	0xe9574c		49890b			MOVQ CX, 0(R11)							
  prometheus_proxy.go:24	0xe9574f		488b8680000000		MOVQ 0x80(SI), AX						
  prometheus_proxy.go:24	0xe95756		49894308		MOVQ AX, 0x8(R11)						
  prometheus_proxy.go:24	0xe9575a		48898e80000000		MOVQ CX, 0x80(SI)						
  prometheus_proxy.go:25	0xe95761		4883c410		ADDQ $__major_os_version__+10(SB), SP				
  prometheus_proxy.go:25	0xe95765		5d			POPQ BP								
  prometheus_proxy.go:25	0xe95766		c3			RET								
  prometheus_proxy.go:22	0xe95767		4889442408		MOVQ AX, 0x8(SP)						
  prometheus_proxy.go:22	0xe9576c		e8ef0c5eff		CALL runtime.morestack.abi0(SB)					
  prometheus_proxy.go:22	0xe95771		488b442408		MOVQ 0x8(SP), AX						
  prometheus_proxy.go:22	0xe95776		eb88			JMP CAS-Backend/biz/router.mountPrometheusProxy.func1(SB)	
  :-1				0xe95778		cc			INT $__subsystem__(SB)						
  :-1				0xe95779		cc			INT $__subsystem__(SB)						
  :-1				0xe9577a		cc			INT $__subsystem__(SB)						
  :-1				0xe9577b		cc			INT $__subsystem__(SB)						
  :-1				0xe9577c		cc			INT $__subsystem__(SB)						
  :-1				0xe9577d		cc			INT $__subsystem__(SB)						
  :-1				0xe9577e		cc			INT $__subsystem__(SB)						
  :-1				0xe9577f		cc			INT $__subsystem__(SB)						

