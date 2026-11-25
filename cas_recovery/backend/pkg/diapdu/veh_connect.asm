TEXT CAS-Backend/pkg/diapdu.probeVehicleReachable(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/veh_connect.go
  veh_connect.go:12	0xe412a0		4c8d6424f8		LEAQ -0x8(SP), R12						
  veh_connect.go:12	0xe412a5		4d3b6610		CMPQ R12, 0x10(R14)						
  veh_connect.go:12	0xe412a9		0f8680040000		JBE 0xe4172f							
  veh_connect.go:12	0xe412af		55			PUSHQ BP							
  veh_connect.go:12	0xe412b0		4889e5			MOVQ SP, BP							
  veh_connect.go:12	0xe412b3		4883c480		ADDQ $-0x80, SP							
  veh_connect.go:18	0xe412b7		e8e4cd66ff		CALL time.Now(SB)						
  veh_connect.go:18	0xe412bc		4889442440		MOVQ AX, 0x40(SP)						
  veh_connect.go:18	0xe412c1		48894c2458		MOVQ CX, 0x58(SP)						
  veh_connect.go:18	0xe412c6		48895c2438		MOVQ BX, 0x38(SP)						
  veh_connect.go:13	0xe412cb		488d050ebf2e00		LEAQ runtime.types+1343968(SB), AX				
  veh_connect.go:13	0xe412d2		e8c9045dff		CALL runtime.newobject(SB)					
  veh_connect.go:14	0xe412d7		488b8c2498000000	MOVQ 0x98(SP), CX						
  veh_connect.go:14	0xe412df		488b942490000000	MOVQ 0x90(SP), DX						
  veh_connect.go:14	0xe412e7		48894808		MOVQ CX, 0x8(AX)						
  veh_connect.go:14	0xe412eb		833d5ec8710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:14	0xe412f2		7408			JE 0xe412fc							
  veh_connect.go:14	0xe412f4		e8277163ff		CALL runtime.gcWriteBarrier1(SB)				
  veh_connect.go:14	0xe412f9		498913			MOVQ DX, 0(R11)							
  veh_connect.go:14	0xe412fc		488910			MOVQ DX, 0(AX)							
  veh_connect.go:15	0xe412ff		488b9424c0000000	MOVQ 0xc0(SP), DX						
  veh_connect.go:15	0xe41307		488bb424b8000000	MOVQ 0xb8(SP), SI						
  veh_connect.go:15	0xe4130f		48895018		MOVQ DX, 0x18(AX)						
  veh_connect.go:15	0xe41313		833d36c8710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:15	0xe4131a		740c			JE 0xe41328							
  veh_connect.go:15	0xe4131c		0f1f4000		NOPL 0(AX)							
  veh_connect.go:15	0xe41320		e8fb7063ff		CALL runtime.gcWriteBarrier1(SB)				
  veh_connect.go:15	0xe41325		498933			MOVQ SI, 0(R11)							
  veh_connect.go:15	0xe41328		48897010		MOVQ SI, 0x10(AX)						
  veh_connect.go:16	0xe4132c		488b9424a8000000	MOVQ 0xa8(SP), DX						
  veh_connect.go:16	0xe41334		488bb424a0000000	MOVQ 0xa0(SP), SI						
  veh_connect.go:16	0xe4133c		48899088000000		MOVQ DX, 0x88(AX)						
  veh_connect.go:16	0xe41343		833d06c8710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:16	0xe4134a		7408			JE 0xe41354							
  veh_connect.go:16	0xe4134c		e8cf7063ff		CALL runtime.gcWriteBarrier1(SB)				
  veh_connect.go:16	0xe41351		498933			MOVQ SI, 0(R11)							
  veh_connect.go:16	0xe41354		4889b080000000		MOVQ SI, 0x80(AX)						
  veh_connect.go:17	0xe4135b		48c78090000000044b0000	MOVQ $__size_of_stack_commit__+15108(SB), 0x90(AX)		
  veh_connect.go:18	0xe41366		488b542440		MOVQ 0x40(SP), DX						
  veh_connect.go:18	0xe4136b		48895058		MOVQ DX, 0x58(AX)						
  veh_connect.go:18	0xe4136f		488b542438		MOVQ 0x38(SP), DX						
  veh_connect.go:18	0xe41374		48895060		MOVQ DX, 0x60(AX)						
  veh_connect.go:18	0xe41378		833dd1c7710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:18	0xe4137f		90			NOPL								
  veh_connect.go:18	0xe41380		7507			JNE 0xe41389							
  veh_connect.go:18	0xe41382		488b542458		MOVQ 0x58(SP), DX						
  veh_connect.go:18	0xe41387		eb0d			JMP 0xe41396							
  veh_connect.go:18	0xe41389		e8927063ff		CALL runtime.gcWriteBarrier1(SB)				
  veh_connect.go:18	0xe4138e		488b542458		MOVQ 0x58(SP), DX						
  veh_connect.go:18	0xe41393		498913			MOVQ DX, 0(R11)							
  veh_connect.go:18	0xe41396		48895068		MOVQ DX, 0x68(AX)						
  veh_connect.go:19	0xe4139a		48c7402807000000	MOVQ $__major_os_version__+1(SB), 0x28(AX)			
  veh_connect.go:19	0xe413a2		488d158f173300		LEAQ go:string.*+42544(SB), DX					
  veh_connect.go:19	0xe413a9		48895020		MOVQ DX, 0x20(AX)						
  veh_connect.go:20	0xe413ad		48c78098000000ffffffff	MOVQ $-0x1, 0x98(AX)						
  veh_connect.go:22	0xe413b8		4883bc24a800000000	CMPQ 0xa8(SP), $0x0						
  veh_connect.go:22	0xe413c1		0f844f030000		JE 0xe41716							
  veh_connect.go:13	0xe413c7		4889442448		MOVQ AX, 0x48(SP)						
  veh_connect.go:27	0xe413cc		48c744245000000000	MOVQ $0x0, 0x50(SP)						
  veh_connect.go:28	0xe413d5		488d1564030000		LEAQ CAS-Backend/pkg/diapdu.probeVehicleReachable.func1(SB), DX	
  veh_connect.go:28	0xe413dc		4889542470		MOVQ DX, 0x70(SP)						
  veh_connect.go:28	0xe413e1		488d542450		LEAQ 0x50(SP), DX						
  veh_connect.go:28	0xe413e6		4889542478		MOVQ DX, 0x78(SP)						
  veh_connect.go:28	0xe413eb		488b8424a0000000	MOVQ 0xa0(SP), AX						
  veh_connect.go:28	0xe413f3		488b9c24a8000000	MOVQ 0xa8(SP), BX						
  veh_connect.go:28	0xe413fb		b9044b0000		MOVL $__size_of_stack_commit__+15108(SB), CX			
  veh_connect.go:28	0xe41400		488d7c2470		LEAQ 0x70(SP), DI						
  veh_connect.go:28	0xe41405		e8f621fdff		CALL CAS-Backend/pkg/agvcontrol.DoWithConn(SB)			
  veh_connect.go:36	0xe4140a		4885c0			TESTQ AX, AX							
  veh_connect.go:36	0xe4140d		7465			JE 0xe41474							
  veh_connect.go:37	0xe4140f		440f117c2460		MOVUPS X15, 0x60(SP)						
  veh_connect.go:37	0xe41415		7404			JE 0xe4141b							
  veh_connect.go:37	0xe41417		488b4008		MOVQ 0x8(AX), AX						
  veh_connect.go:37	0xe4141b		4889442460		MOVQ AX, 0x60(SP)						
  veh_connect.go:37	0xe41420		48895c2468		MOVQ BX, 0x68(SP)						
  veh_connect.go:37	0xe41425		488d05507a3400		LEAQ go:string.*+133492(SB), AX					
  veh_connect.go:37	0xe4142c		bb1c000000		MOVL $__major_os_version__+22(SB), BX				
  veh_connect.go:37	0xe41431		488d4c2460		LEAQ 0x60(SP), CX						
  veh_connect.go:37	0xe41436		bf01000000		MOVL $__minor_os_version__(SB), DI				
  veh_connect.go:37	0xe4143b		4889fe			MOVQ DI, SI							
  veh_connect.go:37	0xe4143e		6690			NOPW								
  veh_connect.go:37	0xe41440		e8fbde6dff		CALL fmt.Sprintf(SB)						
  veh_connect.go:37	0xe41445		488b542448		MOVQ 0x48(SP), DX						
  veh_connect.go:37	0xe4144a		48895a78		MOVQ BX, 0x78(DX)						
  veh_connect.go:37	0xe4144e		833dfbc6710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:37	0xe41455		7410			JE 0xe41467							
  veh_connect.go:37	0xe41457		e8e46f63ff		CALL runtime.gcWriteBarrier2(SB)				
  veh_connect.go:37	0xe4145c		498903			MOVQ AX, 0(R11)							
  veh_connect.go:37	0xe4145f		488b4a70		MOVQ 0x70(DX), CX						
  veh_connect.go:37	0xe41463		49894b08		MOVQ CX, 0x8(R11)						
  veh_connect.go:37	0xe41467		48894270		MOVQ AX, 0x70(DX)						
  veh_connect.go:38	0xe4146b		4889d0			MOVQ DX, AX							
  veh_connect.go:38	0xe4146e		4883ec80		SUBQ $-0x80, SP							
  veh_connect.go:38	0xe41472		5d			POPQ BP								
  veh_connect.go:38	0xe41473		c3			RET								
  veh_connect.go:41	0xe41474		488b4c2450		MOVQ 0x50(SP), CX						
  veh_connect.go:41	0xe41479		488b4118		MOVQ 0x18(CX), AX						
  veh_connect.go:41	0xe4147d		488b5920		MOVQ 0x20(CX), BX						
  veh_lock.go:7		0xe41481		e87a14fdff		CALL CAS-Backend/pkg/agvcontrol.ParseCurrentLock(SB)		
  veh_connect.go:41	0xe41486		0fb6cb			MOVZX BL, CX							
  veh_connect.go:41	0xe41489		4885c9			TESTQ CX, CX							
  veh_connect.go:41	0xe4148c		48c7c1ffffffff		MOVQ $-0x1, CX							
  veh_connect.go:41	0xe41493		480f45c8		CMOVNE AX, CX							
  veh_connect.go:41	0xe41497		488b542448		MOVQ 0x48(SP), DX						
  veh_connect.go:41	0xe4149c		48898a98000000		MOVQ CX, 0x98(DX)						
  veh_connect.go:42	0xe414a3		488b4c2450		MOVQ 0x50(SP), CX						
  veh_connect.go:42	0xe414a8		488b4118		MOVQ 0x18(CX), AX						
  veh_connect.go:42	0xe414ac		488b5920		MOVQ 0x20(CX), BX						
  veh_lock.go:14	0xe414b0		90			NOPL								
  batch_data.go:64	0xe414b1		e84a14fdff		CALL CAS-Backend/pkg/agvcontrol.ParseCurrentLock(SB)		
  batch_data.go:64	0xe414b6		84db			TESTL BL, BL							
  veh_lock.go:7		0xe414b8		0f84c1010000		JE 0xe4167f							
  veh_lock.go:7		0xe414be		6690			NOPW								
  batch_data.go:65	0xe414c0		4885c0			TESTQ AX, AX							
  veh_connect.go:42	0xe414c3		0f85b6010000		JNE 0xe4167f							
  veh_connect.go:47	0xe414c9		488b542450		MOVQ 0x50(SP), DX						
  veh_connect.go:47	0xe414ce		807a5100		CMPB 0x51(DX), $0x0						
  veh_safety.go:6	0xe414d2		7512			JNE 0xe414e6							
  veh_connect.go:47	0xe414d4		807a5200		CMPB 0x52(DX), $0x0						
  veh_safety.go:6	0xe414d8		750c			JNE 0xe414e6							
  veh_connect.go:47	0xe414da		807a5300		CMPB 0x53(DX), $0x0						
  veh_connect.go:47	0xe414de		6690			NOPW								
  veh_connect.go:47	0xe414e0		0f84ce000000		JE 0xe415b4							
  veh_connect.go:48	0xe414e6		488b542448		MOVQ 0x48(SP), DX						
  veh_connect.go:48	0xe414eb		48c7422805000000	MOVQ $__subsystem__+2(SB), 0x28(DX)				
  veh_connect.go:48	0xe414f3		833d56c6710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:48	0xe414fa		740c			JE 0xe41508							
  veh_connect.go:48	0xe414fc		4c8b5220		MOVQ 0x20(DX), R10						
  veh_connect.go:48	0xe41500		e81b6f63ff		CALL runtime.gcWriteBarrier1(SB)				
  veh_connect.go:48	0xe41505		4d8913			MOVQ R10, 0(R11)						
  veh_connect.go:48	0xe41508		4c8d15b2903200		LEAQ go:string.*+8377(SB), R10					
  veh_connect.go:48	0xe4150f		4c895220		MOVQ R10, 0x20(DX)						
  veh_connect.go:49	0xe41513		4c8b542450		MOVQ 0x50(SP), R10						
  veh_connect.go:49	0xe41518		41807a5100		CMPB 0x51(R10), $0x0						
  veh_safety.go:11	0xe4151d		740e			JE 0xe4152d							
  veh_safety.go:11	0xe4151f		b80e000000		MOVL $__major_os_version__+8(SB), AX				
  veh_safety.go:11	0xe41524		488d0db6843300		LEAQ go:string.*+70873(SB), CX					
  veh_connect.go:49	0xe4152b		eb2e			JMP 0xe4155b							
  veh_connect.go:49	0xe4152d		41807a5200		CMPB 0x52(R10), $0x0						
  veh_safety.go:14	0xe41532		740e			JE 0xe41542							
  veh_safety.go:14	0xe41534		b80d000000		MOVL $__major_os_version__+7(SB), AX				
  veh_safety.go:14	0xe41539		488d0dc5773300		LEAQ go:string.*+67581(SB), CX					
  veh_connect.go:49	0xe41540		eb19			JMP 0xe4155b							
  veh_connect.go:49	0xe41542		41807a5300		CMPB 0x53(R10), $0x0						
  veh_safety.go:17	0xe41547		740e			JE 0xe41557							
  veh_safety.go:17	0xe41549		b80f000000		MOVL $__major_os_version__+9(SB), AX				
  veh_safety.go:17	0xe4154e		488d0d22923300		LEAQ go:string.*+74351(SB), CX					
  veh_connect.go:49	0xe41555		eb04			JMP 0xe4155b							
  veh_connect.go:49	0xe41557		31c0			XORL AX, AX							
  veh_connect.go:49	0xe41559		31c9			XORL CX, CX							
  veh_connect.go:49	0xe4155b		488d1db0773300		LEAQ go:string.*+67594(SB), BX					
  veh_connect.go:49	0xe41562		4889cf			MOVQ CX, DI							
  veh_connect.go:49	0xe41565		4889c6			MOVQ AX, SI							
  veh_connect.go:49	0xe41568		4c8d0559370202		LEAQ runtime.gcbits.*+520(SB), R8				
  veh_connect.go:49	0xe4156f		41b901000000		MOVL $__minor_os_version__(SB), R9				
  veh_connect.go:49	0xe41575		31c0			XORL AX, AX							
  veh_connect.go:49	0xe41577		b90d000000		MOVL $__major_os_version__+7(SB), CX				
  veh_connect.go:49	0xe4157c		0f1f4000		NOPL 0(AX)							
  veh_connect.go:49	0xe41580		e81b3f61ff		CALL runtime.concatstring3(SB)					
  veh_connect.go:49	0xe41585		488b542448		MOVQ 0x48(SP), DX						
  veh_connect.go:49	0xe4158a		48895a78		MOVQ BX, 0x78(DX)						
  veh_connect.go:49	0xe4158e		833dbbc5710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:49	0xe41595		7410			JE 0xe415a7							
  veh_connect.go:49	0xe41597		e8a46e63ff		CALL runtime.gcWriteBarrier2(SB)				
  veh_connect.go:49	0xe4159c		498903			MOVQ AX, 0(R11)							
  veh_connect.go:49	0xe4159f		488b4a70		MOVQ 0x70(DX), CX						
  veh_connect.go:49	0xe415a3		49894b08		MOVQ CX, 0x8(R11)						
  veh_connect.go:49	0xe415a7		48894270		MOVQ AX, 0x70(DX)						
  veh_connect.go:50	0xe415ab		4889d0			MOVQ DX, AX							
  veh_connect.go:50	0xe415ae		4883ec80		SUBQ $-0x80, SP							
  veh_connect.go:50	0xe415b2		5d			POPQ BP								
  veh_connect.go:50	0xe415b3		c3			RET								
  veh_connect.go:52	0xe415b4		807a5000		CMPB 0x50(DX), $0x0						
  veh_connect.go:52	0xe415b8		744e			JE 0xe41608							
  veh_connect.go:53	0xe415ba		488b442448		MOVQ 0x48(SP), AX						
  veh_connect.go:53	0xe415bf		48c7402805000000	MOVQ $__subsystem__+2(SB), 0x28(AX)				
  veh_connect.go:53	0xe415c7		833d82c5710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:53	0xe415ce		7414			JE 0xe415e4							
  veh_connect.go:53	0xe415d0		488b4820		MOVQ 0x20(AX), CX						
  veh_connect.go:53	0xe415d4		e8676e63ff		CALL runtime.gcWriteBarrier2(SB)				
  veh_connect.go:53	0xe415d9		49890b			MOVQ CX, 0(R11)							
  veh_connect.go:54	0xe415dc		488b4870		MOVQ 0x70(AX), CX						
  veh_connect.go:54	0xe415e0		49894b08		MOVQ CX, 0x8(R11)						
  veh_connect.go:53	0xe415e4		488d0dd68f3200		LEAQ go:string.*+8377(SB), CX					
  veh_connect.go:53	0xe415eb		48894820		MOVQ CX, 0x20(AX)						
  veh_connect.go:54	0xe415ef		48c740781d000000	MOVQ $__major_os_version__+23(SB), 0x78(AX)			
  veh_connect.go:54	0xe415f7		488d0df68d3400		LEAQ go:string.*+138988(SB), CX					
  veh_connect.go:54	0xe415fe		48894870		MOVQ CX, 0x70(AX)						
  veh_connect.go:55	0xe41602		4883ec80		SUBQ $-0x80, SP							
  veh_connect.go:55	0xe41606		5d			POPQ BP								
  veh_connect.go:55	0xe41607		c3			RET								
  veh_connect.go:58	0xe41608		488b442448		MOVQ 0x48(SP), AX						
  veh_connect.go:58	0xe4160d		48c7402804000000	MOVQ $__subsystem__+1(SB), 0x28(AX)				
  veh_connect.go:58	0xe41615		833d34c5710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:58	0xe4161c		740c			JE 0xe4162a							
  veh_connect.go:58	0xe4161e		488b4820		MOVQ 0x20(AX), CX						
  veh_connect.go:58	0xe41622		e8f96d63ff		CALL runtime.gcWriteBarrier1(SB)				
  veh_connect.go:58	0xe41627		49890b			MOVQ CX, 0(R11)							
  veh_connect.go:58	0xe4162a		488d0d337f3200		LEAQ go:string.*+4188(SB), CX					
  veh_connect.go:58	0xe41631		48894820		MOVQ CX, 0x20(AX)						
  veh_connect.go:59	0xe41635		488b4c2450		MOVQ 0x50(SP), CX						
  veh_connect.go:59	0xe4163a		f20f104128		MOVSD_XMM 0x28(CX), X0						
  veh_connect.go:59	0xe4163f		f20f114038		MOVSD_XMM X0, 0x38(AX)						
  veh_connect.go:60	0xe41644		488b4c2450		MOVQ 0x50(SP), CX						
  veh_connect.go:60	0xe41649		f20f104130		MOVSD_XMM 0x30(CX), X0						
  veh_connect.go:60	0xe4164e		f20f114040		MOVSD_XMM X0, 0x40(AX)						
  veh_connect.go:61	0xe41653		488b4c2450		MOVQ 0x50(SP), CX						
  veh_connect.go:61	0xe41658		f20f104148		MOVSD_XMM 0x48(CX), X0						
  veh_connect.go:61	0xe4165d		0f57c9			XORPS X1, X1							
  veh_connect.go:61	0xe41660		660f2ec1		UCOMISD X1, X0							
  veh_connect.go:61	0xe41664		760b			JBE 0xe41671							
  veh_connect.go:62	0xe41666		f2480f2cc8		CVTTSD2SIQ X0, CX						
  veh_connect.go:62	0xe4166b		48894830		MOVQ CX, 0x30(AX)						
  veh_connect.go:62	0xe4166f		eb08			JMP 0xe41679							
  veh_connect.go:64	0xe41671		48c7403064000000	MOVQ $.file+23(SB), 0x30(AX)					
  veh_connect.go:66	0xe41679		4883ec80		SUBQ $-0x80, SP							
  veh_connect.go:66	0xe4167d		5d			POPQ BP								
  veh_connect.go:66	0xe4167e		c3			RET								
  veh_connect.go:43	0xe4167f		488b542448		MOVQ 0x48(SP), DX						
  veh_connect.go:43	0xe41684		48c7422806000000	MOVQ $__major_os_version__(SB), 0x28(DX)			
  veh_connect.go:43	0xe4168c		833dbdc4710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:43	0xe41693		740c			JE 0xe416a1							
  veh_connect.go:43	0xe41695		4c8b4220		MOVQ 0x20(DX), R8						
  veh_connect.go:43	0xe41699		e8826d63ff		CALL runtime.gcWriteBarrier1(SB)				
  veh_connect.go:43	0xe4169e		4d8903			MOVQ R8, 0(R11)							
  veh_connect.go:43	0xe416a1		4c8d0525dc3200		LEAQ go:string.*+28101(SB), R8					
  veh_connect.go:43	0xe416a8		4c894220		MOVQ R8, 0x20(DX)						
  veh_connect.go:44	0xe416ac		440f117c2460		MOVUPS X15, 0x60(SP)						
  veh_connect.go:44	0xe416b2		4c8b442450		MOVQ 0x50(SP), R8						
  veh_connect.go:44	0xe416b7		4d8b4818		MOVQ 0x18(R8), R9						
  veh_connect.go:44	0xe416bb		4d8b4020		MOVQ 0x20(R8), R8						
  veh_connect.go:44	0xe416bf		4c894c2460		MOVQ R9, 0x60(SP)						
  veh_connect.go:44	0xe416c4		4c89442468		MOVQ R8, 0x68(SP)						
  veh_connect.go:44	0xe416c9		488d0588f33400		LEAQ go:string.*+165200(SB), AX					
  veh_connect.go:44	0xe416d0		bb23000000		MOVL $__major_os_version__+29(SB), BX				
  veh_connect.go:44	0xe416d5		488d4c2460		LEAQ 0x60(SP), CX						
  veh_connect.go:44	0xe416da		bf01000000		MOVL $__minor_os_version__(SB), DI				
  veh_connect.go:44	0xe416df		4889fe			MOVQ DI, SI							
  veh_connect.go:44	0xe416e2		e859dc6dff		CALL fmt.Sprintf(SB)						
  veh_connect.go:44	0xe416e7		488b542448		MOVQ 0x48(SP), DX						
  veh_connect.go:44	0xe416ec		48895a78		MOVQ BX, 0x78(DX)						
  veh_connect.go:44	0xe416f0		833d59c4710200		CMPL runtime.writeBarrier(SB), $0x0				
  veh_connect.go:44	0xe416f7		7410			JE 0xe41709							
  veh_connect.go:44	0xe416f9		e8426d63ff		CALL runtime.gcWriteBarrier2(SB)				
  veh_connect.go:44	0xe416fe		498903			MOVQ AX, 0(R11)							
  veh_connect.go:44	0xe41701		488b4a70		MOVQ 0x70(DX), CX						
  veh_connect.go:44	0xe41705		49894b08		MOVQ CX, 0x8(R11)						
  veh_connect.go:44	0xe41709		48894270		MOVQ AX, 0x70(DX)						
  veh_connect.go:45	0xe4170d		4889d0			MOVQ DX, AX							
  veh_connect.go:45	0xe41710		4883ec80		SUBQ $-0x80, SP							
  veh_connect.go:45	0xe41714		5d			POPQ BP								
  veh_connect.go:45	0xe41715		c3			RET								
  veh_connect.go:23	0xe41716		48c740780b000000	MOVQ $__major_os_version__+5(SB), 0x78(AX)			
  veh_connect.go:23	0xe4171e		488d0d62583300		LEAQ go:string.*+60031(SB), CX					
  veh_connect.go:23	0xe41725		48894870		MOVQ CX, 0x70(AX)						
  veh_connect.go:24	0xe41729		4883ec80		SUBQ $-0x80, SP							
  veh_connect.go:24	0xe4172d		5d			POPQ BP								
  veh_connect.go:24	0xe4172e		c3			RET								
  veh_connect.go:12	0xe4172f		e8ac4d63ff		CALL runtime.morestack_noctxt.abi0(SB)				
  veh_connect.go:12	0xe41734		e967fbffff		JMP CAS-Backend/pkg/diapdu.probeVehicleReachable(SB)		
  :-1			0xe41739		cc			INT $__subsystem__(SB)						
  :-1			0xe4173a		cc			INT $__subsystem__(SB)						
  :-1			0xe4173b		cc			INT $__subsystem__(SB)						
  :-1			0xe4173c		cc			INT $__subsystem__(SB)						
  :-1			0xe4173d		cc			INT $__subsystem__(SB)						
  :-1			0xe4173e		cc			INT $__subsystem__(SB)						
  :-1			0xe4173f		cc			INT $__subsystem__(SB)						

TEXT CAS-Backend/pkg/diapdu.probeVehicleReachable.func1(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/veh_connect.go
  veh_connect.go:28	0xe41740		493b6610		CMPQ SP, 0x10(R14)							
  veh_connect.go:28	0xe41744		7667			JBE 0xe417ad								
  veh_connect.go:28	0xe41746		55			PUSHQ BP								
  veh_connect.go:28	0xe41747		4889e5			MOVQ SP, BP								
  veh_connect.go:28	0xe4174a		4883ec18		SUBQ $__major_os_version__+18(SB), SP					
  veh_connect.go:28	0xe4174e		4889442428		MOVQ AX, 0x28(SP)							
  veh_connect.go:28	0xe41753		48895c2430		MOVQ BX, 0x30(SP)							
  veh_connect.go:28	0xe41758		488b4a08		MOVQ 0x8(DX), CX							
  veh_connect.go:28	0xe4175c		48894c2410		MOVQ CX, 0x10(SP)							
  veh_connect.go:29	0xe41761		e83a1dfdff		CALL CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1ForSchedule(SB)	
  veh_connect.go:30	0xe41766		4885db			TESTQ BX, BX								
  veh_connect.go:30	0xe41769		7536			JNE 0xe417a1								
  veh_connect.go:33	0xe4176b		833ddec3710200		CMPL runtime.writeBarrier(SB), $0x0					
  veh_connect.go:33	0xe41772		750c			JNE 0xe41780								
  veh_connect.go:33	0xe41774		488b4c2410		MOVQ 0x10(SP), CX							
  veh_connect.go:33	0xe41779		eb19			JMP 0xe41794								
  veh_connect.go:33	0xe4177b		0f1f440000		NOPL 0(AX)(AX*1)							
  veh_connect.go:33	0xe41780		e8bb6c63ff		CALL runtime.gcWriteBarrier2(SB)					
  veh_connect.go:33	0xe41785		498903			MOVQ AX, 0(R11)								
  veh_connect.go:33	0xe41788		488b4c2410		MOVQ 0x10(SP), CX							
  veh_connect.go:33	0xe4178d		488b11			MOVQ 0(CX), DX								
  veh_connect.go:33	0xe41790		49895308		MOVQ DX, 0x8(R11)							
  veh_connect.go:33	0xe41794		488901			MOVQ AX, 0(CX)								
  veh_connect.go:34	0xe41797		31c0			XORL AX, AX								
  veh_connect.go:34	0xe41799		31db			XORL BX, BX								
  veh_connect.go:34	0xe4179b		4883c418		ADDQ $__major_os_version__+18(SB), SP					
  veh_connect.go:34	0xe4179f		5d			POPQ BP									
  veh_connect.go:34	0xe417a0		c3			RET									
  veh_connect.go:31	0xe417a1		4889d8			MOVQ BX, AX								
  veh_connect.go:31	0xe417a4		4889cb			MOVQ CX, BX								
  veh_connect.go:31	0xe417a7		4883c418		ADDQ $__major_os_version__+18(SB), SP					
  veh_connect.go:31	0xe417ab		5d			POPQ BP									
  veh_connect.go:31	0xe417ac		c3			RET									
  veh_connect.go:28	0xe417ad		4889442408		MOVQ AX, 0x8(SP)							
  veh_connect.go:28	0xe417b2		48895c2410		MOVQ BX, 0x10(SP)							
  veh_connect.go:28	0xe417b7		e8a44c63ff		CALL runtime.morestack.abi0(SB)						
  veh_connect.go:28	0xe417bc		488b442408		MOVQ 0x8(SP), AX							
  veh_connect.go:28	0xe417c1		488b5c2410		MOVQ 0x10(SP), BX							
  veh_connect.go:28	0xe417c6		e975ffffff		JMP CAS-Backend/pkg/diapdu.probeVehicleReachable.func1(SB)		
  :-1			0xe417cb		cc			INT $__subsystem__(SB)							
  :-1			0xe417cc		cc			INT $__subsystem__(SB)							
  :-1			0xe417cd		cc			INT $__subsystem__(SB)							
  :-1			0xe417ce		cc			INT $__subsystem__(SB)							
  :-1			0xe417cf		cc			INT $__subsystem__(SB)							
  :-1			0xe417d0		cc			INT $__subsystem__(SB)							
  :-1			0xe417d1		cc			INT $__subsystem__(SB)							
  :-1			0xe417d2		cc			INT $__subsystem__(SB)							
  :-1			0xe417d3		cc			INT $__subsystem__(SB)							
  :-1			0xe417d4		cc			INT $__subsystem__(SB)							
  :-1			0xe417d5		cc			INT $__subsystem__(SB)							
  :-1			0xe417d6		cc			INT $__subsystem__(SB)							
  :-1			0xe417d7		cc			INT $__subsystem__(SB)							
  :-1			0xe417d8		cc			INT $__subsystem__(SB)							
  :-1			0xe417d9		cc			INT $__subsystem__(SB)							
  :-1			0xe417da		cc			INT $__subsystem__(SB)							
  :-1			0xe417db		cc			INT $__subsystem__(SB)							
  :-1			0xe417dc		cc			INT $__subsystem__(SB)							
  :-1			0xe417dd		cc			INT $__subsystem__(SB)							
  :-1			0xe417de		cc			INT $__subsystem__(SB)							
  :-1			0xe417df		cc			INT $__subsystem__(SB)							

