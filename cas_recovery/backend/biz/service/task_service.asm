TEXT CAS-Backend/biz/service.GuaqiTask(SB) D:/CodeEnv_code/cas-backend/biz/service/task_service.go
  task_service.go:9	0xe48fa0		4c8da42490feffff	LEAQ 0xfffffe90(SP), R12				
  task_service.go:9	0xe48fa8		4d3b6610		CMPQ R12, 0x10(R14)					
  task_service.go:9	0xe48fac		0f86c1000000		JBE 0xe49073						
  task_service.go:9	0xe48fb2		55			PUSHQ BP						
  task_service.go:9	0xe48fb3		4889e5			MOVQ SP, BP						
  task_service.go:9	0xe48fb6		4881ece8010000		SUBQ $.file+411(SB), SP					
  task_service.go:10	0xe48fbd		48898424f8010000	MOVQ AX, 0x1f8(SP)					
  task_service.go:10	0xe48fc5		e8b6ffb4ff		CALL CAS-Backend/biz/dao.GuaqiTask(SB)			
  task_service.go:10	0xe48fca		84c0			TESTL AL, AL						
  task_service.go:10	0xe48fcc		0f8496000000		JE 0xe49068						
  task_service.go:13	0xe48fd2		488dbc24f8000000	LEAQ 0xf8(SP), DI					
  task_service.go:13	0xe48fda		488d7ff0		LEAQ -0x10(DI), DI					
  task_service.go:13	0xe48fde		6690			NOPW							
  task_service.go:13	0xe48fe0		48896c24f0		MOVQ BP, -0x10(SP)					
  task_service.go:13	0xe48fe5		488d6c24f0		LEAQ -0x10(SP), BP					
  task_service.go:13	0xe48fea		e8c9fa62ff		CALL 0x478ab8						
  task_service.go:13	0xe48fef		488b6d00		MOVQ 0(BP), BP						
  task_service.go:13	0xe48ff3		488b8424f8010000	MOVQ 0x1f8(SP), AX					
  task_service.go:13	0xe48ffb		0f1f440000		NOPL 0(AX)(AX*1)					
  task_service.go:13	0xe49000		e89bf6b4ff		CALL CAS-Backend/biz/dao.Select1_task(SB)		
  task_service.go:13	0xe49005		488dbc24f8000000	LEAQ 0xf8(SP), DI					
  task_service.go:13	0xe4900d		4889e6			MOVQ SP, SI						
  task_service.go:13	0xe49010		660f1f840000000000	NOPW 0(AX)(AX*1)					
  task_service.go:13	0xe49019		0f1f8000000000		NOPL 0(AX)						
  task_service.go:13	0xe49020		48896c24f0		MOVQ BP, -0x10(SP)					
  task_service.go:13	0xe49025		488d6c24f0		LEAQ -0x10(SP), BP					
  task_service.go:13	0xe4902a		e89ffd62ff		CALL 0x478dce						
  task_service.go:13	0xe4902f		488b6d00		MOVQ 0(BP), BP						
  task_service.go:13	0xe49033		84c0			TESTL AL, AL						
  task_service.go:13	0xe49035		7423			JE 0xe4905a						
  task_service.go:14	0xe49037		4889e7			MOVQ SP, DI						
  task_service.go:14	0xe4903a		488db424f8000000	LEAQ 0xf8(SP), SI					
  task_service.go:14	0xe49042		48896c24f0		MOVQ BP, -0x10(SP)					
  task_service.go:14	0xe49047		488d6c24f0		LEAQ -0x10(SP), BP					
  task_service.go:14	0xe4904c		e87dfd62ff		CALL 0x478dce						
  task_service.go:14	0xe49051		488b6d00		MOVQ 0(BP), BP						
  task_service.go:14	0xe49055		e86667feff		CALL CAS-Backend/pkg/diapdu.EnqueuePendingTask(SB)	
  task_service.go:16	0xe4905a		b801000000		MOVL $__minor_os_version__(SB), AX			
  task_service.go:16	0xe4905f		4881c4e8010000		ADDQ $.file+411(SB), SP					
  task_service.go:16	0xe49066		5d			POPQ BP							
  task_service.go:16	0xe49067		c3			RET							
  task_service.go:11	0xe49068		31c0			XORL AX, AX						
  task_service.go:11	0xe4906a		4881c4e8010000		ADDQ $.file+411(SB), SP					
  task_service.go:11	0xe49071		5d			POPQ BP							
  task_service.go:11	0xe49072		c3			RET							
  task_service.go:9	0xe49073		4889442408		MOVQ AX, 0x8(SP)					
  task_service.go:9	0xe49078		e863d462ff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_service.go:9	0xe4907d		488b442408		MOVQ 0x8(SP), AX					
  task_service.go:9	0xe49082		e919ffffff		JMP CAS-Backend/biz/service.GuaqiTask(SB)		
  :-1			0xe49087		cc			INT $__subsystem__(SB)					
  :-1			0xe49088		cc			INT $__subsystem__(SB)					
  :-1			0xe49089		cc			INT $__subsystem__(SB)					
  :-1			0xe4908a		cc			INT $__subsystem__(SB)					
  :-1			0xe4908b		cc			INT $__subsystem__(SB)					
  :-1			0xe4908c		cc			INT $__subsystem__(SB)					
  :-1			0xe4908d		cc			INT $__subsystem__(SB)					
  :-1			0xe4908e		cc			INT $__subsystem__(SB)					
  :-1			0xe4908f		cc			INT $__subsystem__(SB)					
  :-1			0xe49090		cc			INT $__subsystem__(SB)					
  :-1			0xe49091		cc			INT $__subsystem__(SB)					
  :-1			0xe49092		cc			INT $__subsystem__(SB)					
  :-1			0xe49093		cc			INT $__subsystem__(SB)					
  :-1			0xe49094		cc			INT $__subsystem__(SB)					
  :-1			0xe49095		cc			INT $__subsystem__(SB)					
  :-1			0xe49096		cc			INT $__subsystem__(SB)					
  :-1			0xe49097		cc			INT $__subsystem__(SB)					
  :-1			0xe49098		cc			INT $__subsystem__(SB)					
  :-1			0xe49099		cc			INT $__subsystem__(SB)					
  :-1			0xe4909a		cc			INT $__subsystem__(SB)					
  :-1			0xe4909b		cc			INT $__subsystem__(SB)					
  :-1			0xe4909c		cc			INT $__subsystem__(SB)					
  :-1			0xe4909d		cc			INT $__subsystem__(SB)					
  :-1			0xe4909e		cc			INT $__subsystem__(SB)					
  :-1			0xe4909f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/service.HuifuTask(SB) D:/CodeEnv_code/cas-backend/biz/service/task_service.go
  task_service.go:19	0xe490a0		4c8da42490feffff	LEAQ 0xfffffe90(SP), R12				
  task_service.go:19	0xe490a8		4d3b6610		CMPQ R12, 0x10(R14)					
  task_service.go:19	0xe490ac		0f86c1000000		JBE 0xe49173						
  task_service.go:19	0xe490b2		55			PUSHQ BP						
  task_service.go:19	0xe490b3		4889e5			MOVQ SP, BP						
  task_service.go:19	0xe490b6		4881ece8010000		SUBQ $.file+411(SB), SP					
  task_service.go:20	0xe490bd		48898424f8010000	MOVQ AX, 0x1f8(SP)					
  task_service.go:20	0xe490c5		e81601b5ff		CALL CAS-Backend/biz/dao.HuifuTask(SB)			
  task_service.go:20	0xe490ca		84c0			TESTL AL, AL						
  task_service.go:20	0xe490cc		0f8496000000		JE 0xe49168						
  task_service.go:23	0xe490d2		488dbc24f8000000	LEAQ 0xf8(SP), DI					
  task_service.go:23	0xe490da		488d7ff0		LEAQ -0x10(DI), DI					
  task_service.go:23	0xe490de		6690			NOPW							
  task_service.go:23	0xe490e0		48896c24f0		MOVQ BP, -0x10(SP)					
  task_service.go:23	0xe490e5		488d6c24f0		LEAQ -0x10(SP), BP					
  task_service.go:23	0xe490ea		e8c9f962ff		CALL 0x478ab8						
  task_service.go:23	0xe490ef		488b6d00		MOVQ 0(BP), BP						
  task_service.go:23	0xe490f3		488b8424f8010000	MOVQ 0x1f8(SP), AX					
  task_service.go:23	0xe490fb		0f1f440000		NOPL 0(AX)(AX*1)					
  task_service.go:23	0xe49100		e89bf5b4ff		CALL CAS-Backend/biz/dao.Select1_task(SB)		
  task_service.go:23	0xe49105		488dbc24f8000000	LEAQ 0xf8(SP), DI					
  task_service.go:23	0xe4910d		4889e6			MOVQ SP, SI						
  task_service.go:23	0xe49110		660f1f840000000000	NOPW 0(AX)(AX*1)					
  task_service.go:23	0xe49119		0f1f8000000000		NOPL 0(AX)						
  task_service.go:23	0xe49120		48896c24f0		MOVQ BP, -0x10(SP)					
  task_service.go:23	0xe49125		488d6c24f0		LEAQ -0x10(SP), BP					
  task_service.go:23	0xe4912a		e89ffc62ff		CALL 0x478dce						
  task_service.go:23	0xe4912f		488b6d00		MOVQ 0(BP), BP						
  task_service.go:23	0xe49133		84c0			TESTL AL, AL						
  task_service.go:23	0xe49135		7423			JE 0xe4915a						
  task_service.go:24	0xe49137		4889e7			MOVQ SP, DI						
  task_service.go:24	0xe4913a		488db424f8000000	LEAQ 0xf8(SP), SI					
  task_service.go:24	0xe49142		48896c24f0		MOVQ BP, -0x10(SP)					
  task_service.go:24	0xe49147		488d6c24f0		LEAQ -0x10(SP), BP					
  task_service.go:24	0xe4914c		e87dfc62ff		CALL 0x478dce						
  task_service.go:24	0xe49151		488b6d00		MOVQ 0(BP), BP						
  task_service.go:24	0xe49155		e86666feff		CALL CAS-Backend/pkg/diapdu.EnqueuePendingTask(SB)	
  task_service.go:26	0xe4915a		b801000000		MOVL $__minor_os_version__(SB), AX			
  task_service.go:26	0xe4915f		4881c4e8010000		ADDQ $.file+411(SB), SP					
  task_service.go:26	0xe49166		5d			POPQ BP							
  task_service.go:26	0xe49167		c3			RET							
  task_service.go:21	0xe49168		31c0			XORL AX, AX						
  task_service.go:21	0xe4916a		4881c4e8010000		ADDQ $.file+411(SB), SP					
  task_service.go:21	0xe49171		5d			POPQ BP							
  task_service.go:21	0xe49172		c3			RET							
  task_service.go:19	0xe49173		4889442408		MOVQ AX, 0x8(SP)					
  task_service.go:19	0xe49178		e863d362ff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_service.go:19	0xe4917d		488b442408		MOVQ 0x8(SP), AX					
  task_service.go:19	0xe49182		e919ffffff		JMP CAS-Backend/biz/service.HuifuTask(SB)		
  :-1			0xe49187		cc			INT $__subsystem__(SB)					
  :-1			0xe49188		cc			INT $__subsystem__(SB)					
  :-1			0xe49189		cc			INT $__subsystem__(SB)					
  :-1			0xe4918a		cc			INT $__subsystem__(SB)					
  :-1			0xe4918b		cc			INT $__subsystem__(SB)					
  :-1			0xe4918c		cc			INT $__subsystem__(SB)					
  :-1			0xe4918d		cc			INT $__subsystem__(SB)					
  :-1			0xe4918e		cc			INT $__subsystem__(SB)					
  :-1			0xe4918f		cc			INT $__subsystem__(SB)					
  :-1			0xe49190		cc			INT $__subsystem__(SB)					
  :-1			0xe49191		cc			INT $__subsystem__(SB)					
  :-1			0xe49192		cc			INT $__subsystem__(SB)					
  :-1			0xe49193		cc			INT $__subsystem__(SB)					
  :-1			0xe49194		cc			INT $__subsystem__(SB)					
  :-1			0xe49195		cc			INT $__subsystem__(SB)					
  :-1			0xe49196		cc			INT $__subsystem__(SB)					
  :-1			0xe49197		cc			INT $__subsystem__(SB)					
  :-1			0xe49198		cc			INT $__subsystem__(SB)					
  :-1			0xe49199		cc			INT $__subsystem__(SB)					
  :-1			0xe4919a		cc			INT $__subsystem__(SB)					
  :-1			0xe4919b		cc			INT $__subsystem__(SB)					
  :-1			0xe4919c		cc			INT $__subsystem__(SB)					
  :-1			0xe4919d		cc			INT $__subsystem__(SB)					
  :-1			0xe4919e		cc			INT $__subsystem__(SB)					
  :-1			0xe4919f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/service.AddTask(SB) D:/CodeEnv_code/cas-backend/biz/service/task_service.go
  task_service.go:29	0xe491a0		4c8da42460ffffff	LEAQ 0xffffff60(SP), R12				
  task_service.go:29	0xe491a8		4d3b6610		CMPQ R12, 0x10(R14)					
  task_service.go:29	0xe491ac		0f86a5010000		JBE 0xe49357						
  task_service.go:29	0xe491b2		55			PUSHQ BP						
  task_service.go:29	0xe491b3		4889e5			MOVQ SP, BP						
  task_service.go:29	0xe491b6		4881ec18010000		SUBQ $.file+203(SB), SP					
  task_service.go:29	0xe491bd		488d05dc282f00		LEAQ runtime.types+1403552(SB), AX			
  task_service.go:29	0xe491c4		e8d7855cff		CALL runtime.newobject(SB)				
  task_service.go:29	0xe491c9		4889842410010000	MOVQ AX, 0x110(SP)					
  task_service.go:29	0xe491d1		833d7849710200		CMPL runtime.writeBarrier(SB), $0x0			
  task_service.go:29	0xe491d8		741f			JE 0xe491f9						
  task_service.go:29	0xe491da		4889c3			MOVQ AX, BX						
  task_service.go:29	0xe491dd		488d8c2428010000	LEAQ 0x128(SP), CX					
  task_service.go:29	0xe491e5		488d05b4282f00		LEAQ runtime.types+1403552(SB), AX			
  task_service.go:29	0xe491ec		e82fbd5cff		CALL runtime.wbMove(SB)					
  task_service.go:29	0xe491f1		488b842410010000	MOVQ 0x110(SP), AX					
  task_service.go:29	0xe491f9		4889c7			MOVQ AX, DI						
  task_service.go:29	0xe491fc		488db42428010000	LEAQ 0x128(SP), SI					
  task_service.go:29	0xe49204		48896c24f0		MOVQ BP, -0x10(SP)					
  task_service.go:29	0xe49209		488d6c24f0		LEAQ -0x10(SP), BP					
  task_service.go:29	0xe4920e		e8bbfb62ff		CALL 0x478dce						
  task_service.go:29	0xe49213		488b6d00		MOVQ 0(BP), BP						
  task_service.go:30	0xe49217		488b08			MOVQ 0(AX), CX						
  task_service.go:30	0xe4921a		4885c9			TESTQ CX, CX						
  task_service.go:30	0xe4921d		7504			JNE 0xe49223						
  task_service.go:30	0xe4921f		31c9			XORL CX, CX						
  task_service.go:30	0xe49221		eb12			JMP 0xe49235						
  task_service.go:30	0xe49223		4889c8			MOVQ CX, AX						
  task_service.go:30	0xe49226		e895fbb4ff		CALL CAS-Backend/biz/dao.IsExist_task(SB)		
  task_service.go:30	0xe4922b		89c1			MOVL AX, CX						
  task_service.go:35	0xe4922d		488b842410010000	MOVQ 0x110(SP), AX					
  task_service.go:30	0xe49235		84c9			TESTL CL, CL						
  task_service.go:30	0xe49237		0f85b4000000		JNE 0xe492f1						
  task_service.go:30	0xe4923d		0f1f00			NOPL 0(AX)						
  task_service.go:35	0xe49240		e8dbe8b4ff		CALL CAS-Backend/biz/dao.Insert_task(SB)		
  task_service.go:35	0xe49245		84c0			TESTL AL, AL						
  task_service.go:35	0xe49247		0f8499000000		JE 0xe492e6						
  task_service.go:38	0xe4924d		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)					
  task_service.go:38	0xe49256		488b8c2410010000	MOVQ 0x110(SP), CX					
  task_service.go:38	0xe4925e		488b01			MOVQ 0(CX), AX						
  task_service.go:38	0xe49261		e83a0e62ff		CALL runtime.convT64(SB)				
  task_service.go:38	0xe49266		488d0df3981f00		LEAQ runtime.types+383840(SB), CX			
  task_service.go:38	0xe4926d		48898c24f0000000	MOVQ CX, 0xf0(SP)					
  task_service.go:38	0xe49275		48898424f8000000	MOVQ AX, 0xf8(SP)					
  print.go:233		0xe4927d		488b1dfc8d6c02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe49284		488d0555280202		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe4928b		488d0d049d3300		LEAQ go:string.*+109198(SB), CX				
  print.go:233		0xe49292		bf16000000		MOVL $__major_os_version__+16(SB), DI			
  print.go:233		0xe49297		488db424f0000000	LEAQ 0xf0(SP), SI					
  print.go:233		0xe4929f		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe492a5		4d89c1			MOVQ R8, R9						
  print.go:233		0xe492a8		e8735f6dff		CALL fmt.Fprintf(SB)					
  task_service.go:39	0xe492ad		4889e7			MOVQ SP, DI						
  task_service.go:39	0xe492b0		488bb42410010000	MOVQ 0x110(SP), SI					
  task_service.go:39	0xe492b8		0f1f840000000000	NOPL 0(AX)(AX*1)					
  task_service.go:39	0xe492c0		48896c24f0		MOVQ BP, -0x10(SP)					
  task_service.go:39	0xe492c5		488d6c24f0		LEAQ -0x10(SP), BP					
  task_service.go:39	0xe492ca		e8fffa62ff		CALL 0x478dce						
  task_service.go:39	0xe492cf		488b6d00		MOVQ 0(BP), BP						
  task_service.go:39	0xe492d3		e8e864feff		CALL CAS-Backend/pkg/diapdu.EnqueuePendingTask(SB)	
  task_service.go:40	0xe492d8		b801000000		MOVL $__minor_os_version__(SB), AX			
  task_service.go:40	0xe492dd		4881c418010000		ADDQ $.file+203(SB), SP					
  task_service.go:40	0xe492e4		5d			POPQ BP							
  task_service.go:40	0xe492e5		c3			RET							
  task_service.go:36	0xe492e6		31c0			XORL AX, AX						
  task_service.go:36	0xe492e8		4881c418010000		ADDQ $.file+203(SB), SP					
  task_service.go:36	0xe492ef		5d			POPQ BP							
  task_service.go:36	0xe492f0		c3			RET							
  task_service.go:31	0xe492f1		440f11bc2400010000	MOVUPS X15, 0x100(SP)					
  task_service.go:31	0xe492fa		488b00			MOVQ 0(AX), AX						
  task_service.go:31	0xe492fd		0f1f00			NOPL 0(AX)						
  task_service.go:31	0xe49300		e89b0d62ff		CALL runtime.convT64(SB)				
  task_service.go:31	0xe49305		488d0d54981f00		LEAQ runtime.types+383840(SB), CX			
  task_service.go:31	0xe4930c		48898c2400010000	MOVQ CX, 0x100(SP)					
  task_service.go:31	0xe49314		4889842408010000	MOVQ AX, 0x108(SP)					
  print.go:233		0xe4931c		488b1d5d8d6c02		MOVQ os.Stdout(SB), BX					
  print.go:233		0xe49323		488d05b6270202		LEAQ go:itab.*os.File,io.Writer(SB), AX			
  print.go:233		0xe4932a		488d0ddc803400		LEAQ go:string.*+167685(SB), CX				
  print.go:233		0xe49331		bf23000000		MOVL $__major_os_version__+29(SB), DI			
  print.go:233		0xe49336		488db42400010000	LEAQ 0x100(SP), SI					
  print.go:233		0xe4933e		41b801000000		MOVL $__minor_os_version__(SB), R8			
  print.go:233		0xe49344		4d89c1			MOVQ R8, R9						
  print.go:233		0xe49347		e8d45e6dff		CALL fmt.Fprintf(SB)					
  task_service.go:32	0xe4934c		31c0			XORL AX, AX						
  task_service.go:32	0xe4934e		4881c418010000		ADDQ $.file+203(SB), SP					
  task_service.go:32	0xe49355		5d			POPQ BP							
  task_service.go:32	0xe49356		c3			RET							
  task_service.go:29	0xe49357		e884d162ff		CALL runtime.morestack_noctxt.abi0(SB)			
  task_service.go:29	0xe4935c		0f1f4000		NOPL 0(AX)						
  task_service.go:29	0xe49360		e93bfeffff		JMP CAS-Backend/biz/service.AddTask(SB)			
  :-1			0xe49365		cc			INT $__subsystem__(SB)					
  :-1			0xe49366		cc			INT $__subsystem__(SB)					
  :-1			0xe49367		cc			INT $__subsystem__(SB)					
  :-1			0xe49368		cc			INT $__subsystem__(SB)					
  :-1			0xe49369		cc			INT $__subsystem__(SB)					
  :-1			0xe4936a		cc			INT $__subsystem__(SB)					
  :-1			0xe4936b		cc			INT $__subsystem__(SB)					
  :-1			0xe4936c		cc			INT $__subsystem__(SB)					
  :-1			0xe4936d		cc			INT $__subsystem__(SB)					
  :-1			0xe4936e		cc			INT $__subsystem__(SB)					
  :-1			0xe4936f		cc			INT $__subsystem__(SB)					
  :-1			0xe49370		cc			INT $__subsystem__(SB)					
  :-1			0xe49371		cc			INT $__subsystem__(SB)					
  :-1			0xe49372		cc			INT $__subsystem__(SB)					
  :-1			0xe49373		cc			INT $__subsystem__(SB)					
  :-1			0xe49374		cc			INT $__subsystem__(SB)					
  :-1			0xe49375		cc			INT $__subsystem__(SB)					
  :-1			0xe49376		cc			INT $__subsystem__(SB)					
  :-1			0xe49377		cc			INT $__subsystem__(SB)					
  :-1			0xe49378		cc			INT $__subsystem__(SB)					
  :-1			0xe49379		cc			INT $__subsystem__(SB)					
  :-1			0xe4937a		cc			INT $__subsystem__(SB)					
  :-1			0xe4937b		cc			INT $__subsystem__(SB)					
  :-1			0xe4937c		cc			INT $__subsystem__(SB)					
  :-1			0xe4937d		cc			INT $__subsystem__(SB)					
  :-1			0xe4937e		cc			INT $__subsystem__(SB)					
  :-1			0xe4937f		cc			INT $__subsystem__(SB)					

TEXT CAS-Backend/biz/service.DelTask(SB) D:/CodeEnv_code/cas-backend/biz/service/task_service.go
  task_service.go:43	0xe49380		493b6610		CMPQ SP, 0x10(R14)				
  task_service.go:43	0xe49384		0f86c9000000		JBE 0xe49453					
  task_service.go:43	0xe4938a		55			PUSHQ BP					
  task_service.go:43	0xe4938b		4889e5			MOVQ SP, BP					
  task_service.go:43	0xe4938e		4883ec58		SUBQ $.file+11(SB), SP				
  task_service.go:45	0xe49392		4889442468		MOVQ AX, 0x68(SP)				
  task_service.go:44	0xe49397		e8a4e8b4ff		CALL CAS-Backend/biz/dao.Delete_task(SB)	
  task_service.go:44	0xe4939c		0f1f4000		NOPL 0(AX)					
  task_service.go:44	0xe493a0		84c0			TESTL AL, AL					
  task_service.go:45	0xe493a2		7459			JE 0xe493fd					
  task_service.go:46	0xe493a4		440f117c2448		MOVUPS X15, 0x48(SP)				
  task_service.go:46	0xe493aa		488b442468		MOVQ 0x68(SP), AX				
  task_service.go:46	0xe493af		e8ec0c62ff		CALL runtime.convT64(SB)			
  task_service.go:46	0xe493b4		488d0da5971f00		LEAQ runtime.types+383840(SB), CX		
  task_service.go:46	0xe493bb		48894c2448		MOVQ CX, 0x48(SP)				
  task_service.go:46	0xe493c0		4889442450		MOVQ AX, 0x50(SP)				
  print.go:233		0xe493c5		488b1db48c6c02		MOVQ os.Stdout(SB), BX				
  print.go:233		0xe493cc		488d050d270202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe493d3		488d0dd29b3300		LEAQ go:string.*+109220(SB), CX			
  print.go:233		0xe493da		bf16000000		MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0xe493df		488d742448		LEAQ 0x48(SP), SI				
  print.go:233		0xe493e4		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0xe493ea		4d89c1			MOVQ R8, R9					
  print.go:233		0xe493ed		e82e5e6dff		CALL fmt.Fprintf(SB)				
  task_service.go:47	0xe493f2		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_service.go:47	0xe493f7		4883c458		ADDQ $.file+11(SB), SP				
  task_service.go:47	0xe493fb		5d			POPQ BP						
  task_service.go:47	0xe493fc		c3			RET						
  task_service.go:49	0xe493fd		440f117c2438		MOVUPS X15, 0x38(SP)				
  task_service.go:49	0xe49403		488b442468		MOVQ 0x68(SP), AX				
  task_service.go:49	0xe49408		e8930c62ff		CALL runtime.convT64(SB)			
  task_service.go:49	0xe4940d		488d0d4c971f00		LEAQ runtime.types+383840(SB), CX		
  task_service.go:49	0xe49414		48894c2438		MOVQ CX, 0x38(SP)				
  task_service.go:49	0xe49419		4889442440		MOVQ AX, 0x40(SP)				
  print.go:233		0xe4941e		488b1d5b8c6c02		MOVQ os.Stdout(SB), BX				
  print.go:233		0xe49425		488d05b4260202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe4942c		488d0d8f9b3300		LEAQ go:string.*+109242(SB), CX			
  print.go:233		0xe49433		bf16000000		MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0xe49438		488d742438		LEAQ 0x38(SP), SI				
  print.go:233		0xe4943d		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0xe49443		4d89c1			MOVQ R8, R9					
  print.go:233		0xe49446		e8d55d6dff		CALL fmt.Fprintf(SB)				
  task_service.go:50	0xe4944b		31c0			XORL AX, AX					
  task_service.go:50	0xe4944d		4883c458		ADDQ $.file+11(SB), SP				
  task_service.go:50	0xe49451		5d			POPQ BP						
  task_service.go:50	0xe49452		c3			RET						
  task_service.go:43	0xe49453		4889442408		MOVQ AX, 0x8(SP)				
  task_service.go:43	0xe49458		e883d062ff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_service.go:43	0xe4945d		488b442408		MOVQ 0x8(SP), AX				
  task_service.go:43	0xe49462		e919ffffff		JMP CAS-Backend/biz/service.DelTask(SB)		
  :-1			0xe49467		cc			INT $__subsystem__(SB)				
  :-1			0xe49468		cc			INT $__subsystem__(SB)				
  :-1			0xe49469		cc			INT $__subsystem__(SB)				
  :-1			0xe4946a		cc			INT $__subsystem__(SB)				
  :-1			0xe4946b		cc			INT $__subsystem__(SB)				
  :-1			0xe4946c		cc			INT $__subsystem__(SB)				
  :-1			0xe4946d		cc			INT $__subsystem__(SB)				
  :-1			0xe4946e		cc			INT $__subsystem__(SB)				
  :-1			0xe4946f		cc			INT $__subsystem__(SB)				
  :-1			0xe49470		cc			INT $__subsystem__(SB)				
  :-1			0xe49471		cc			INT $__subsystem__(SB)				
  :-1			0xe49472		cc			INT $__subsystem__(SB)				
  :-1			0xe49473		cc			INT $__subsystem__(SB)				
  :-1			0xe49474		cc			INT $__subsystem__(SB)				
  :-1			0xe49475		cc			INT $__subsystem__(SB)				
  :-1			0xe49476		cc			INT $__subsystem__(SB)				
  :-1			0xe49477		cc			INT $__subsystem__(SB)				
  :-1			0xe49478		cc			INT $__subsystem__(SB)				
  :-1			0xe49479		cc			INT $__subsystem__(SB)				
  :-1			0xe4947a		cc			INT $__subsystem__(SB)				
  :-1			0xe4947b		cc			INT $__subsystem__(SB)				
  :-1			0xe4947c		cc			INT $__subsystem__(SB)				
  :-1			0xe4947d		cc			INT $__subsystem__(SB)				
  :-1			0xe4947e		cc			INT $__subsystem__(SB)				
  :-1			0xe4947f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/service.UpdateTask(SB) D:/CodeEnv_code/cas-backend/biz/service/task_service.go
  task_service.go:54	0xe49480		4c8da42468ffffff	LEAQ 0xffffff68(SP), R12			
  task_service.go:54	0xe49488		4d3b6610		CMPQ R12, 0x10(R14)				
  task_service.go:54	0xe4948c		0f860a010000		JBE 0xe4959c					
  task_service.go:54	0xe49492		55			PUSHQ BP					
  task_service.go:54	0xe49493		4889e5			MOVQ SP, BP					
  task_service.go:54	0xe49496		4881ec10010000		SUBQ $.file+195(SB), SP				
  task_service.go:55	0xe4949d		4889e7			MOVQ SP, DI					
  task_service.go:55	0xe494a0		488db42420010000	LEAQ 0x120(SP), SI				
  task_service.go:55	0xe494a8		48896c24f0		MOVQ BP, -0x10(SP)				
  task_service.go:55	0xe494ad		488d6c24f0		LEAQ -0x10(SP), BP				
  task_service.go:55	0xe494b2		e817f962ff		CALL 0x478dce					
  task_service.go:55	0xe494b7		488b6d00		MOVQ 0(BP), BP					
  task_service.go:55	0xe494bb		0f1f440000		NOPL 0(AX)(AX*1)				
  task_service.go:55	0xe494c0		e85be9b4ff		CALL CAS-Backend/biz/dao.Update_task(SB)	
  task_service.go:55	0xe494c5		84c0			TESTL AL, AL					
  task_service.go:56	0xe494c7		746b			JE 0xe49534					
  task_service.go:57	0xe494c9		440f11bc2400010000	MOVUPS X15, 0x100(SP)				
  task_service.go:57	0xe494d2		488b842420010000	MOVQ 0x120(SP), AX				
  task_service.go:57	0xe494da		e8c10b62ff		CALL runtime.convT64(SB)			
  task_service.go:57	0xe494df		488d0d7a961f00		LEAQ runtime.types+383840(SB), CX		
  task_service.go:57	0xe494e6		48898c2400010000	MOVQ CX, 0x100(SP)				
  task_service.go:57	0xe494ee		4889842408010000	MOVQ AX, 0x108(SP)				
  print.go:233		0xe494f6		488b1d838b6c02		MOVQ os.Stdout(SB), BX				
  print.go:233		0xe494fd		488d05dc250202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe49504		488d0dcd9a3300		LEAQ go:string.*+109264(SB), CX			
  print.go:233		0xe4950b		bf16000000		MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0xe49510		488db42400010000	LEAQ 0x100(SP), SI				
  print.go:233		0xe49518		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0xe4951e		4d89c1			MOVQ R8, R9					
  print.go:233		0xe49521		e8fa5c6dff		CALL fmt.Fprintf(SB)				
  task_service.go:58	0xe49526		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_service.go:58	0xe4952b		4881c410010000		ADDQ $.file+195(SB), SP				
  task_service.go:58	0xe49532		5d			POPQ BP						
  task_service.go:58	0xe49533		c3			RET						
  task_service.go:60	0xe49534		440f11bc24f0000000	MOVUPS X15, 0xf0(SP)				
  task_service.go:60	0xe4953d		488b842420010000	MOVQ 0x120(SP), AX				
  task_service.go:60	0xe49545		e8560b62ff		CALL runtime.convT64(SB)			
  task_service.go:60	0xe4954a		488d0d0f961f00		LEAQ runtime.types+383840(SB), CX		
  task_service.go:60	0xe49551		48898c24f0000000	MOVQ CX, 0xf0(SP)				
  task_service.go:60	0xe49559		48898424f8000000	MOVQ AX, 0xf8(SP)				
  print.go:233		0xe49561		488b1d188b6c02		MOVQ os.Stdout(SB), BX				
  print.go:233		0xe49568		488d0571250202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe4956f		488d0d789a3300		LEAQ go:string.*+109286(SB), CX			
  print.go:233		0xe49576		bf16000000		MOVL $__major_os_version__+16(SB), DI		
  print.go:233		0xe4957b		488db424f0000000	LEAQ 0xf0(SP), SI				
  print.go:233		0xe49583		41b801000000		MOVL $__minor_os_version__(SB), R8		
  print.go:233		0xe49589		4d89c1			MOVQ R8, R9					
  print.go:233		0xe4958c		e88f5c6dff		CALL fmt.Fprintf(SB)				
  task_service.go:61	0xe49591		31c0			XORL AX, AX					
  task_service.go:61	0xe49593		4881c410010000		ADDQ $.file+195(SB), SP				
  task_service.go:61	0xe4959a		5d			POPQ BP						
  task_service.go:61	0xe4959b		c3			RET						
  task_service.go:54	0xe4959c		0f1f4000		NOPL 0(AX)					
  task_service.go:54	0xe495a0		e83bcf62ff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_service.go:54	0xe495a5		e9d6feffff		JMP CAS-Backend/biz/service.UpdateTask(SB)	
  :-1			0xe495aa		cc			INT $__subsystem__(SB)				
  :-1			0xe495ab		cc			INT $__subsystem__(SB)				
  :-1			0xe495ac		cc			INT $__subsystem__(SB)				
  :-1			0xe495ad		cc			INT $__subsystem__(SB)				
  :-1			0xe495ae		cc			INT $__subsystem__(SB)				
  :-1			0xe495af		cc			INT $__subsystem__(SB)				
  :-1			0xe495b0		cc			INT $__subsystem__(SB)				
  :-1			0xe495b1		cc			INT $__subsystem__(SB)				
  :-1			0xe495b2		cc			INT $__subsystem__(SB)				
  :-1			0xe495b3		cc			INT $__subsystem__(SB)				
  :-1			0xe495b4		cc			INT $__subsystem__(SB)				
  :-1			0xe495b5		cc			INT $__subsystem__(SB)				
  :-1			0xe495b6		cc			INT $__subsystem__(SB)				
  :-1			0xe495b7		cc			INT $__subsystem__(SB)				
  :-1			0xe495b8		cc			INT $__subsystem__(SB)				
  :-1			0xe495b9		cc			INT $__subsystem__(SB)				
  :-1			0xe495ba		cc			INT $__subsystem__(SB)				
  :-1			0xe495bb		cc			INT $__subsystem__(SB)				
  :-1			0xe495bc		cc			INT $__subsystem__(SB)				
  :-1			0xe495bd		cc			INT $__subsystem__(SB)				
  :-1			0xe495be		cc			INT $__subsystem__(SB)				
  :-1			0xe495bf		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/biz/service.SlAllTask(SB) D:/CodeEnv_code/cas-backend/biz/service/task_service.go
  task_service.go:79	0xe495c0		493b6610		CMPQ SP, 0x10(R14)				
  task_service.go:79	0xe495c4		0f86c2000000		JBE 0xe4968c					
  task_service.go:79	0xe495ca		55			PUSHQ BP					
  task_service.go:79	0xe495cb		4889e5			MOVQ SP, BP					
  task_service.go:79	0xe495ce		4883ec60		SUBQ $.file+19(SB), SP				
  task_service.go:79	0xe495d2		48898c2480000000	MOVQ CX, 0x80(SP)				
  task_service.go:79	0xe495da		4889b42490000000	MOVQ SI, 0x90(SP)				
  task_service.go:79	0xe495e2		4c898c24a0000000	MOVQ R9, 0xa0(SP)				
  task_service.go:81	0xe495ea		e891f2b4ff		CALL CAS-Backend/biz/dao.SelectALL_task(SB)	
  task_service.go:81	0xe495ef		84c0			TESTL AL, AL					
  task_service.go:82	0xe495f1		745b			JE 0xe4964e					
  task_service.go:81	0xe495f3		48895c2450		MOVQ BX, 0x50(SP)				
  task_service.go:81	0xe495f8		48897c2440		MOVQ DI, 0x40(SP)				
  task_service.go:81	0xe495fd		4889742448		MOVQ SI, 0x48(SP)				
  task_service.go:81	0xe49602		48894c2458		MOVQ CX, 0x58(SP)				
  print.go:233		0xe49607		488b1d728a6c02		MOVQ os.Stdout(SB), BX				
  task_service.go:83	0xe4960e		90			NOPL						
  print.go:233		0xe4960f		488d05ca240202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe49616		488d0d87483300		LEAQ go:string.*+88476(SB), CX			
  print.go:233		0xe4961d		bf12000000		MOVL $__major_os_version__+12(SB), DI		
  print.go:233		0xe49622		31f6			XORL SI, SI					
  print.go:233		0xe49624		4531c0			XORL R8, R8					
  print.go:233		0xe49627		4d89c1			MOVQ R8, R9					
  print.go:233		0xe4962a		e8f15b6dff		CALL fmt.Fprintf(SB)				
  task_service.go:84	0xe4962f		b801000000		MOVL $__minor_os_version__(SB), AX		
  task_service.go:84	0xe49634		488b5c2450		MOVQ 0x50(SP), BX				
  task_service.go:84	0xe49639		488b4c2458		MOVQ 0x58(SP), CX				
  task_service.go:84	0xe4963e		488b7c2440		MOVQ 0x40(SP), DI				
  task_service.go:84	0xe49643		488b742448		MOVQ 0x48(SP), SI				
  task_service.go:84	0xe49648		4883c460		ADDQ $.file+19(SB), SP				
  task_service.go:84	0xe4964c		5d			POPQ BP						
  task_service.go:84	0xe4964d		c3			RET						
  print.go:233		0xe4964e		488b1d2b8a6c02		MOVQ os.Stdout(SB), BX				
  task_service.go:87	0xe49655		90			NOPL						
  print.go:233		0xe49656		488d0583240202		LEAQ go:itab.*os.File,io.Writer(SB), AX		
  print.go:233		0xe4965d		488d0d52483300		LEAQ go:string.*+88494(SB), CX			
  print.go:233		0xe49664		bf12000000		MOVL $__major_os_version__+12(SB), DI		
  print.go:233		0xe49669		31f6			XORL SI, SI					
  print.go:233		0xe4966b		4531c0			XORL R8, R8					
  print.go:233		0xe4966e		4d89c1			MOVQ R8, R9					
  print.go:233		0xe49671		e8aa5b6dff		CALL fmt.Fprintf(SB)				
  task_service.go:88	0xe49676		31c0			XORL AX, AX					
  task_service.go:88	0xe49678		31db			XORL BX, BX					
  task_service.go:88	0xe4967a		488d0d1f3c7102		LEAQ unicode..stmp_365(SB), CX			
  task_service.go:88	0xe49681		31ff			XORL DI, DI					
  task_service.go:88	0xe49683		4889fe			MOVQ DI, SI					
  task_service.go:88	0xe49686		4883c460		ADDQ $.file+19(SB), SP				
  task_service.go:88	0xe4968a		5d			POPQ BP						
  task_service.go:88	0xe4968b		c3			RET						
  task_service.go:79	0xe4968c		4889442408		MOVQ AX, 0x8(SP)				
  task_service.go:79	0xe49691		48895c2410		MOVQ BX, 0x10(SP)				
  task_service.go:79	0xe49696		48894c2418		MOVQ CX, 0x18(SP)				
  task_service.go:79	0xe4969b		48897c2420		MOVQ DI, 0x20(SP)				
  task_service.go:79	0xe496a0		4889742428		MOVQ SI, 0x28(SP)				
  task_service.go:79	0xe496a5		4c89442430		MOVQ R8, 0x30(SP)				
  task_service.go:79	0xe496aa		4c894c2438		MOVQ R9, 0x38(SP)				
  task_service.go:79	0xe496af		4c89542440		MOVQ R10, 0x40(SP)				
  task_service.go:79	0xe496b4		e827ce62ff		CALL runtime.morestack_noctxt.abi0(SB)		
  task_service.go:79	0xe496b9		488b442408		MOVQ 0x8(SP), AX				
  task_service.go:79	0xe496be		488b5c2410		MOVQ 0x10(SP), BX				
  task_service.go:79	0xe496c3		488b4c2418		MOVQ 0x18(SP), CX				
  task_service.go:79	0xe496c8		488b7c2420		MOVQ 0x20(SP), DI				
  task_service.go:79	0xe496cd		488b742428		MOVQ 0x28(SP), SI				
  task_service.go:79	0xe496d2		4c8b442430		MOVQ 0x30(SP), R8				
  task_service.go:79	0xe496d7		4c8b4c2438		MOVQ 0x38(SP), R9				
  task_service.go:79	0xe496dc		4c8b542440		MOVQ 0x40(SP), R10				
  task_service.go:79	0xe496e1		e9dafeffff		JMP CAS-Backend/biz/service.SlAllTask(SB)	
  :-1			0xe496e6		cc			INT $__subsystem__(SB)				
  :-1			0xe496e7		cc			INT $__subsystem__(SB)				
  :-1			0xe496e8		cc			INT $__subsystem__(SB)				
  :-1			0xe496e9		cc			INT $__subsystem__(SB)				
  :-1			0xe496ea		cc			INT $__subsystem__(SB)				
  :-1			0xe496eb		cc			INT $__subsystem__(SB)				
  :-1			0xe496ec		cc			INT $__subsystem__(SB)				
  :-1			0xe496ed		cc			INT $__subsystem__(SB)				
  :-1			0xe496ee		cc			INT $__subsystem__(SB)				
  :-1			0xe496ef		cc			INT $__subsystem__(SB)				
  :-1			0xe496f0		cc			INT $__subsystem__(SB)				
  :-1			0xe496f1		cc			INT $__subsystem__(SB)				
  :-1			0xe496f2		cc			INT $__subsystem__(SB)				
  :-1			0xe496f3		cc			INT $__subsystem__(SB)				
  :-1			0xe496f4		cc			INT $__subsystem__(SB)				
  :-1			0xe496f5		cc			INT $__subsystem__(SB)				
  :-1			0xe496f6		cc			INT $__subsystem__(SB)				
  :-1			0xe496f7		cc			INT $__subsystem__(SB)				
  :-1			0xe496f8		cc			INT $__subsystem__(SB)				
  :-1			0xe496f9		cc			INT $__subsystem__(SB)				
  :-1			0xe496fa		cc			INT $__subsystem__(SB)				
  :-1			0xe496fb		cc			INT $__subsystem__(SB)				
  :-1			0xe496fc		cc			INT $__subsystem__(SB)				
  :-1			0xe496fd		cc			INT $__subsystem__(SB)				
  :-1			0xe496fe		cc			INT $__subsystem__(SB)				
  :-1			0xe496ff		cc			INT $__subsystem__(SB)				

