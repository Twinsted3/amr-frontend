TEXT CAS-Backend/pkg/diapdu.currentStationForVehicle(SB) D:/CodeEnv_code/cas-backend/pkg/diapdu/monitor_nav.go
  monitor_nav.go:4		0xe2c4e0		493b6610		CMPQ SP, 0x10(R14)								
  monitor_nav.go:4		0xe2c4e4		0f86d1000000		JBE 0xe2c5bb									
  monitor_nav.go:4		0xe2c4ea		55			PUSHQ BP									
  monitor_nav.go:4		0xe2c4eb		4889e5			MOVQ SP, BP									
  monitor_nav.go:4		0xe2c4ee		4883ec20		SUBQ $__major_os_version__+26(SB), SP						
  monitor_nav.go:5		0xe2c4f2		48897c2448		MOVQ DI, 0x48(SP)								
  monitor_nav.go:5		0xe2c4f7		4889442430		MOVQ AX, 0x30(SP)								
  monitor_nav.go:5		0xe2c4fc		48895c2438		MOVQ BX, 0x38(SP)								
  monitor_nav.go:5		0xe2c501		48894c2440		MOVQ CX, 0x40(SP)								
  monitor_nav.go:5		0xe2c506		488b1563861800		MOVQ CAS-Backend/pkg/diapdu.globalVehicleRuntime(SB), DX			
  monitor_nav.go:5		0xe2c50d		4889c6			MOVQ AX, SI									
  monitor_nav.go:5		0xe2c510		4889d0			MOVQ DX, AX									
  monitor_nav.go:5		0xe2c513		4989d8			MOVQ BX, R8									
  monitor_nav.go:5		0xe2c516		4889f3			MOVQ SI, BX									
  monitor_nav.go:5		0xe2c519		4c89c1			MOVQ R8, CX									
  monitor_nav.go:5		0xe2c51c		0f1f4000		NOPL 0(AX)									
  monitor_nav.go:5		0xe2c520		e89b660100		CALL CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).CurrentStation(SB)		
  monitor_nav.go:5		0xe2c525		84c9			TESTL CL, CL									
  monitor_nav.go:5		0xe2c527		0f8584000000		JNE 0xe2c5b1									
  monitor_nav.go:8		0xe2c52d		e84eb90000		CALL CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic(SB)				
  monitor_nav.go:8		0xe2c532		4885c0			TESTQ AX, AX									
  monitor_nav.go:8		0xe2c535		7465			JE 0xe2c59c									
  monitor_nav.go:9		0xe2c537		488b5c2430		MOVQ 0x30(SP), BX								
  monitor_nav.go:9		0xe2c53c		488b4c2438		MOVQ 0x38(SP), CX								
  monitor_nav.go:9		0xe2c541		48bf00d6117e03000000	MOVQ $0x37e11d600, DI								
  monitor_nav.go:9		0xe2c54b		e8f0c30000		CALL CAS-Backend/pkg/diapdu.(*DynamicTrafficController).FreshMonitorSnap(SB)	
  monitor_nav.go:9		0xe2c550		84db			TESTL BL, BL									
  monitor_nav.go:9		0xe2c552		7448			JE 0xe2c59c									
  traffic_dynamic.go:277	0xe2c554		4885c0			TESTQ AX, AX									
  traffic_dynamic.go:277	0xe2c557		742a			JE 0xe2c583									
  traffic_dynamic.go:280	0xe2c559		488b5008		MOVQ 0x8(AX), DX								
  traffic_dynamic.go:280	0xe2c55d		0f1f00			NOPL 0(AX)									
  traffic_dynamic.go:280	0xe2c560		4885d2			TESTQ DX, DX									
  traffic_dynamic.go:280	0xe2c563		7405			JE 0xe2c56a									
  traffic_dynamic.go:280	0xe2c565		488b30			MOVQ 0(AX), SI									
  monitor_nav.go:10		0xe2c568		eb1d			JMP 0xe2c587									
  traffic_dynamic.go:283	0xe2c56a		488b5048		MOVQ 0x48(AX), DX								
  traffic_dynamic.go:283	0xe2c56e		4885d2			TESTQ DX, DX									
  traffic_dynamic.go:283	0xe2c571		7406			JE 0xe2c579									
  traffic_dynamic.go:283	0xe2c573		488b7040		MOVQ 0x40(AX), SI								
  monitor_nav.go:10		0xe2c577		eb0e			JMP 0xe2c587									
  traffic_dynamic.go:286	0xe2c579		488b5038		MOVQ 0x38(AX), DX								
  traffic_dynamic.go:286	0xe2c57d		488b7030		MOVQ 0x30(AX), SI								
  monitor_nav.go:10		0xe2c581		eb04			JMP 0xe2c587									
  monitor_nav.go:10		0xe2c583		31d2			XORL DX, DX									
  monitor_nav.go:10		0xe2c585		31f6			XORL SI, SI									
  monitor_nav.go:10		0xe2c587		4885d2			TESTQ DX, DX									
  monitor_nav.go:10		0xe2c58a		7410			JE 0xe2c59c									
  monitor_nav.go:11		0xe2c58c		4889f0			MOVQ SI, AX									
  monitor_nav.go:11		0xe2c58f		4889d3			MOVQ DX, BX									
  monitor_nav.go:11		0xe2c592		31c9			XORL CX, CX									
  monitor_nav.go:11		0xe2c594		31ff			XORL DI, DI									
  monitor_nav.go:11		0xe2c596		4883c420		ADDQ $__major_os_version__+26(SB), SP						
  monitor_nav.go:11		0xe2c59a		5d			POPQ BP										
  monitor_nav.go:11		0xe2c59b		c3			RET										
  dock_nav.go:44		0xe2c59c		488b442440		MOVQ 0x40(SP), AX								
  dock_nav.go:44		0xe2c5a1		488b5c2448		MOVQ 0x48(SP), BX								
  dock_nav.go:44		0xe2c5a6		e835b2ffff		CALL CAS-Backend/pkg/diapdu.queryVehicleStationQuiet(SB)			
  monitor_nav.go:15		0xe2c5ab		4883c420		ADDQ $__major_os_version__+26(SB), SP						
  monitor_nav.go:15		0xe2c5af		5d			POPQ BP										
  monitor_nav.go:15		0xe2c5b0		c3			RET										
  monitor_nav.go:6		0xe2c5b1		31c9			XORL CX, CX									
  monitor_nav.go:6		0xe2c5b3		31ff			XORL DI, DI									
  monitor_nav.go:6		0xe2c5b5		4883c420		ADDQ $__major_os_version__+26(SB), SP						
  monitor_nav.go:6		0xe2c5b9		5d			POPQ BP										
  monitor_nav.go:6		0xe2c5ba		c3			RET										
  monitor_nav.go:4		0xe2c5bb		4889442408		MOVQ AX, 0x8(SP)								
  monitor_nav.go:4		0xe2c5c0		48895c2410		MOVQ BX, 0x10(SP)								
  monitor_nav.go:4		0xe2c5c5		48894c2418		MOVQ CX, 0x18(SP)								
  monitor_nav.go:4		0xe2c5ca		48897c2420		MOVQ DI, 0x20(SP)								
  monitor_nav.go:4		0xe2c5cf		e80c9f64ff		CALL runtime.morestack_noctxt.abi0(SB)						
  monitor_nav.go:4		0xe2c5d4		488b442408		MOVQ 0x8(SP), AX								
  monitor_nav.go:4		0xe2c5d9		488b5c2410		MOVQ 0x10(SP), BX								
  monitor_nav.go:4		0xe2c5de		488b4c2418		MOVQ 0x18(SP), CX								
  monitor_nav.go:4		0xe2c5e3		488b7c2420		MOVQ 0x20(SP), DI								
  monitor_nav.go:4		0xe2c5e8		e9f3feffff		JMP CAS-Backend/pkg/diapdu.currentStationForVehicle(SB)				
  :-1				0xe2c5ed		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5ee		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5ef		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5f0		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5f1		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5f2		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5f3		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5f4		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5f5		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5f6		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5f7		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5f8		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5f9		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5fa		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5fb		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5fc		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5fd		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5fe		cc			INT $__subsystem__(SB)								
  :-1				0xe2c5ff		cc			INT $__subsystem__(SB)								

