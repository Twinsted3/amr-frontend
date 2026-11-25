TEXT main.main.Printf.func1(SB) C:/Users/9Yu/Desktop/zhuanzhoujiance/pkg/mod/golang.org/toolchain@v0.0.1-go1.23.8.windows-amd64/src/log/log.go
  log.go:397		0xe983e0		493b6610		CMPQ SP, 0x10(R14)			
  log.go:397		0xe983e4		762c			JBE 0xe98412				
  log.go:397		0xe983e6		55			PUSHQ BP				
  log.go:397		0xe983e7		4889e5			MOVQ SP, BP				
  log.go:397		0xe983ea		4883ec40		SUBQ $__major_os_version__+58(SB), SP	
  log.go:397		0xe983ee		4889442450		MOVQ AX, 0x50(SP)			
  log.go:397		0xe983f3		488b7a08		MOVQ 0x8(DX), DI			
  log.go:397		0xe983f7		488b7210		MOVQ 0x10(DX), SI			
  log.go:397		0xe983fb		4c8b4218		MOVQ 0x18(DX), R8			
  log.go:397		0xe983ff		4c8b4a20		MOVQ 0x20(DX), R9			
  log.go:397		0xe98403		4c8b5228		MOVQ 0x28(DX), R10			
  log.go:398		0xe98407		e8147068ff		CALL fmt.Appendf(SB)			
  log.go:398		0xe9840c		4883c440		ADDQ $__major_os_version__+58(SB), SP	
  log.go:398		0xe98410		5d			POPQ BP					
  log.go:398		0xe98411		c3			RET					
  log.go:397		0xe98412		4889442408		MOVQ AX, 0x8(SP)			
  log.go:397		0xe98417		48895c2410		MOVQ BX, 0x10(SP)			
  log.go:397		0xe9841c		48894c2418		MOVQ CX, 0x18(SP)			
  log.go:397		0xe98421		e83ae05dff		CALL runtime.morestack.abi0(SB)		
  log.go:397		0xe98426		488b442408		MOVQ 0x8(SP), AX			
  log.go:397		0xe9842b		488b5c2410		MOVQ 0x10(SP), BX			
  log.go:397		0xe98430		488b4c2418		MOVQ 0x18(SP), CX			
  log.go:397		0xe98435		eba9			JMP main.main.Printf.func1(SB)		

