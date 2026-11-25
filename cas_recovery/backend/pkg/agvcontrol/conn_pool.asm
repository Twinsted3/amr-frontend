TEXT CAS-Backend/pkg/agvcontrol.DoWithConn(SB) D:/CodeEnv_code/cas-backend/pkg/agvcontrol/conn_pool.go
  conn_pool.go:29	0xe13600		493b6610		CMPQ SP, 0x10(R14)					
  conn_pool.go:29	0xe13604		0f86c3010000		JBE 0xe137cd						
  conn_pool.go:29	0xe1360a		55			PUSHQ BP						
  conn_pool.go:29	0xe1360b		4889e5			MOVQ SP, BP						
  conn_pool.go:29	0xe1360e		4883ec68		SUBQ $.file+27(SB), SP					
  mutex.go:85		0xe13612		48898c2488000000	MOVQ CX, 0x88(SP)					
  mutex.go:85		0xe1361a		4889bc2490000000	MOVQ DI, 0x90(SP)					
  mutex.go:85		0xe13622		48899c2480000000	MOVQ BX, 0x80(SP)					
  mutex.go:85		0xe1362a		4889442478		MOVQ AX, 0x78(SP)					
  conn_pool.go:30	0xe1362f		90			NOPL							
  conn_pool.go:20	0xe13630		440f117c2448		MOVUPS X15, 0x48(SP)					
  conn_pool.go:20	0xe13636		440f117c2458		MOVUPS X15, 0x58(SP)					
  conn_pool.go:20	0xe1363c		0f1f4000		NOPL 0(AX)						
  conn_pool.go:20	0xe13640		e8db6a65ff		CALL runtime.convTstring(SB)				
  conn_pool.go:20	0xe13645		488d0dd4f22200		LEAQ runtime.types+383264(SB), CX			
  conn_pool.go:20	0xe1364c		48894c2448		MOVQ CX, 0x48(SP)					
  conn_pool.go:20	0xe13651		4889442450		MOVQ AX, 0x50(SP)					
  conn_pool.go:20	0xe13656		488b842488000000	MOVQ 0x88(SP), AX					
  conn_pool.go:20	0xe1365e		6690			NOPW							
  conn_pool.go:20	0xe13660		e83b6a65ff		CALL runtime.convT64(SB)				
  conn_pool.go:20	0xe13665		488d0df4f42200		LEAQ runtime.types+383840(SB), CX			
  conn_pool.go:20	0xe1366c		48894c2458		MOVQ CX, 0x58(SP)					
  conn_pool.go:20	0xe13671		4889442460		MOVQ AX, 0x60(SP)					
  conn_pool.go:20	0xe13676		488d05b1703500		LEAQ go:string.*+8742(SB), AX				
  conn_pool.go:20	0xe1367d		bb05000000		MOVL $__subsystem__+2(SB), BX				
  conn_pool.go:20	0xe13682		488d4c2448		LEAQ 0x48(SP), CX					
  conn_pool.go:20	0xe13687		bf02000000		MOVL $__minor_os_version__+1(SB), DI			
  conn_pool.go:20	0xe1368c		4889fe			MOVQ DI, SI						
  conn_pool.go:20	0xe1368f		e8acbc70ff		CALL fmt.Sprintf(SB)					
  conn_pool.go:20	0xe13694		4889442430		MOVQ AX, 0x30(SP)					
  conn_pool.go:20	0xe13699		48895c2428		MOVQ BX, 0x28(SP)					
  conn_pool.go:31	0xe1369e		488b0dc3151a00		MOVQ CAS-Backend/pkg/agvcontrol.defaultPool(SB), CX	
  conn_pool.go:20	0xe136a5		4889c2			MOVQ AX, DX						
  conn_pool.go:31	0xe136a8		31c0			XORL AX, AX						
  conn_pool.go:31	0xe136aa		be01000000		MOVL $__minor_os_version__(SB), SI			
  conn_pool.go:31	0xe136af		f00fb131		LOCK CMPXCHGL SI, 0(CX)					
  conn_pool.go:31	0xe136b3		400f94c6		SETE SI							
  mutex.go:85		0xe136b7		4084f6			TESTL SI, SI						
  mutex.go:85		0xe136ba		7513			JNE 0xe136cf						
  mutex.go:92		0xe136bc		4889c8			MOVQ CX, AX						
  mutex.go:92		0xe136bf		90			NOPL							
  mutex.go:92		0xe136c0		e85b4367ff		CALL sync.(*Mutex).lockSlow(SB)				
  conn_pool.go:32	0xe136c5		488b542430		MOVQ 0x30(SP), DX					
  conn_pool.go:32	0xe136ca		488b5c2428		MOVQ 0x28(SP), BX					
  conn_pool.go:32	0xe136cf		488b3592151a00		MOVQ CAS-Backend/pkg/agvcontrol.defaultPool(SB), SI	
  conn_pool.go:32	0xe136d6		488b7608		MOVQ 0x8(SI), SI					
  conn_pool.go:32	0xe136da		488d053fe02600		LEAQ runtime.types+640800(SB), AX			
  conn_pool.go:32	0xe136e1		4889d1			MOVQ DX, CX						
  conn_pool.go:32	0xe136e4		4889df			MOVQ BX, DI						
  conn_pool.go:32	0xe136e7		4889f3			MOVQ SI, BX						
  conn_pool.go:32	0xe136ea		e851a565ff		CALL runtime.mapaccess2_faststr(SB)			
  conn_pool.go:32	0xe136ef		488b10			MOVQ 0(AX), DX						
  conn_pool.go:32	0xe136f2		84db			TESTL BL, BL						
  conn_pool.go:33	0xe136f4		0f8598000000		JNE 0xe13792						
  conn_pool.go:34	0xe136fa		90			NOPL							
  agv.go:95		0xe136fb		488d05de182f00		LEAQ runtime.types+1179616(SB), AX			
  agv.go:95		0xe13702		e899e05fff		CALL runtime.newobject(SB)				
  agv.go:96		0xe13707		488b8c2480000000	MOVQ 0x80(SP), CX					
  agv.go:96		0xe1370f		48894820		MOVQ CX, 0x20(AX)					
  agv.go:96		0xe13713		833d36a4740200		CMPL runtime.writeBarrier(SB), $0x0			
  agv.go:96		0xe1371a		7507			JNE 0xe13723						
  agv.go:96		0xe1371c		488b542478		MOVQ 0x78(SP), DX					
  agv.go:96		0xe13721		eb0d			JMP 0xe13730						
  agv.go:96		0xe13723		e8f84c66ff		CALL runtime.gcWriteBarrier1(SB)			
  agv.go:96		0xe13728		488b542478		MOVQ 0x78(SP), DX					
  agv.go:96		0xe1372d		498913			MOVQ DX, 0(R11)						
  agv.go:95		0xe13730		4889442438		MOVQ AX, 0x38(SP)					
  agv.go:96		0xe13735		48895018		MOVQ DX, 0x18(AX)					
  agv.go:97		0xe13739		488b942488000000	MOVQ 0x88(SP), DX					
  agv.go:97		0xe13741		48895028		MOVQ DX, 0x28(AX)					
  conn_pool.go:35	0xe13745		488b151c151a00		MOVQ CAS-Backend/pkg/agvcontrol.defaultPool(SB), DX	
  conn_pool.go:35	0xe1374c		488b5a08		MOVQ 0x8(DX), BX					
  conn_pool.go:35	0xe13750		488b4c2430		MOVQ 0x30(SP), CX					
  conn_pool.go:35	0xe13755		488b7c2428		MOVQ 0x28(SP), DI					
  conn_pool.go:35	0xe1375a		488d05bfdf2600		LEAQ runtime.types+640800(SB), AX			
  conn_pool.go:35	0xe13761		e8baa865ff		CALL runtime.mapassign_faststr(SB)			
  conn_pool.go:35	0xe13766		8400			TESTB AL, 0(AX)						
  conn_pool.go:35	0xe13768		833de1a3740200		CMPL runtime.writeBarrier(SB), $0x0			
  conn_pool.go:35	0xe1376f		7507			JNE 0xe13778						
  conn_pool.go:35	0xe13771		488b4c2438		MOVQ 0x38(SP), CX					
  conn_pool.go:35	0xe13776		eb14			JMP 0xe1378c						
  conn_pool.go:35	0xe13778		e8c34c66ff		CALL runtime.gcWriteBarrier2(SB)			
  conn_pool.go:35	0xe1377d		488b4c2438		MOVQ 0x38(SP), CX					
  conn_pool.go:35	0xe13782		49890b			MOVQ CX, 0(R11)						
  conn_pool.go:35	0xe13785		488b10			MOVQ 0(AX), DX						
  conn_pool.go:35	0xe13788		49895308		MOVQ DX, 0x8(R11)					
  conn_pool.go:35	0xe1378c		488908			MOVQ CX, 0(AX)						
  conn_pool.go:38	0xe1378f		4889ca			MOVQ CX, DX						
  conn_pool.go:37	0xe13792		488b05cf141a00		MOVQ CAS-Backend/pkg/agvcontrol.defaultPool(SB), AX	
  conn_pool.go:37	0xe13799		bbffffffff		MOVL $-0x1, BX						
  conn_pool.go:37	0xe1379e		f00fc118		LOCK XADDL BX, 0(AX)					
  mutex.go:221		0xe137a2		ffcb			DECL BX							
  mutex.go:222		0xe137a4		85db			TESTL BX, BX						
  mutex.go:222		0xe137a6		740f			JE 0xe137b7						
  conn_pool.go:38	0xe137a8		4889542440		MOVQ DX, 0x40(SP)					
  mutex.go:225		0xe137ad		e84e4567ff		CALL sync.(*Mutex).unlockSlow(SB)			
  conn_pool.go:38	0xe137b2		488b542440		MOVQ 0x40(SP), DX					
  conn_pool.go:38	0xe137b7		4889d0			MOVQ DX, AX						
  conn_pool.go:38	0xe137ba		488b9c2490000000	MOVQ 0x90(SP), BX					
  conn_pool.go:38	0xe137c2		e839eeffff		CALL CAS-Backend/pkg/agvcontrol.(*AGVClient).Run(SB)	
  conn_pool.go:38	0xe137c7		4883c468		ADDQ $.file+27(SB), SP					
  conn_pool.go:38	0xe137cb		5d			POPQ BP							
  conn_pool.go:38	0xe137cc		c3			RET							
  conn_pool.go:29	0xe137cd		4889442408		MOVQ AX, 0x8(SP)					
  conn_pool.go:29	0xe137d2		48895c2410		MOVQ BX, 0x10(SP)					
  conn_pool.go:29	0xe137d7		48894c2418		MOVQ CX, 0x18(SP)					
  conn_pool.go:29	0xe137dc		48897c2420		MOVQ DI, 0x20(SP)					
  conn_pool.go:29	0xe137e1		e8fa2c66ff		CALL runtime.morestack_noctxt.abi0(SB)			
  conn_pool.go:29	0xe137e6		488b442408		MOVQ 0x8(SP), AX					
  conn_pool.go:29	0xe137eb		488b5c2410		MOVQ 0x10(SP), BX					
  conn_pool.go:29	0xe137f0		488b4c2418		MOVQ 0x18(SP), CX					
  conn_pool.go:29	0xe137f5		488b7c2420		MOVQ 0x20(SP), DI					
  conn_pool.go:29	0xe137fa		e901feffff		JMP CAS-Backend/pkg/agvcontrol.DoWithConn(SB)		
  :-1			0xe137ff		cc			INT $__subsystem__(SB)					

