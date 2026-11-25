TEXT CAS-Backend/biz/router.mountPrometheusProxy.NewSingleHostReverseProxy.func3(SB) C:/Users/9Yu/Desktop/zhuanzhoujiance/pkg/mod/golang.org/toolchain@v0.0.1-go1.23.8.windows-amd64/src/net/http/httputil/reverseproxy.go
  reverseproxy.go:263	0xe95780		493b6610		CMPQ SP, 0x10(R14)									
  reverseproxy.go:263	0xe95784		7617			JBE 0xe9579d										
  reverseproxy.go:263	0xe95786		55			PUSHQ BP										
  reverseproxy.go:263	0xe95787		4889e5			MOVQ SP, BP										
  reverseproxy.go:263	0xe9578a		4883ec10		SUBQ $__major_os_version__+10(SB), SP							
  reverseproxy.go:263	0xe9578e		488b5a08		MOVQ 0x8(DX), BX									
  reverseproxy.go:264	0xe95792		e8497bb0ff		CALL net/http/httputil.rewriteRequestURL(SB)						
  reverseproxy.go:265	0xe95797		4883c410		ADDQ $__major_os_version__+10(SB), SP							
  reverseproxy.go:265	0xe9579b		5d			POPQ BP											
  reverseproxy.go:265	0xe9579c		c3			RET											
  reverseproxy.go:263	0xe9579d		4889442408		MOVQ AX, 0x8(SP)									
  reverseproxy.go:263	0xe957a2		e8b90c5eff		CALL runtime.morestack.abi0(SB)								
  reverseproxy.go:263	0xe957a7		488b442408		MOVQ 0x8(SP), AX									
  reverseproxy.go:263	0xe957ac		ebd2			JMP CAS-Backend/biz/router.mountPrometheusProxy.NewSingleHostReverseProxy.func3(SB)	
  :-1			0xe957ae		cc			INT $__subsystem__(SB)									
  :-1			0xe957af		cc			INT $__subsystem__(SB)									
  :-1			0xe957b0		cc			INT $__subsystem__(SB)									
  :-1			0xe957b1		cc			INT $__subsystem__(SB)									
  :-1			0xe957b2		cc			INT $__subsystem__(SB)									
  :-1			0xe957b3		cc			INT $__subsystem__(SB)									
  :-1			0xe957b4		cc			INT $__subsystem__(SB)									
  :-1			0xe957b5		cc			INT $__subsystem__(SB)									
  :-1			0xe957b6		cc			INT $__subsystem__(SB)									
  :-1			0xe957b7		cc			INT $__subsystem__(SB)									
  :-1			0xe957b8		cc			INT $__subsystem__(SB)									
  :-1			0xe957b9		cc			INT $__subsystem__(SB)									
  :-1			0xe957ba		cc			INT $__subsystem__(SB)									
  :-1			0xe957bb		cc			INT $__subsystem__(SB)									
  :-1			0xe957bc		cc			INT $__subsystem__(SB)									
  :-1			0xe957bd		cc			INT $__subsystem__(SB)									
  :-1			0xe957be		cc			INT $__subsystem__(SB)									
  :-1			0xe957bf		cc			INT $__subsystem__(SB)									

