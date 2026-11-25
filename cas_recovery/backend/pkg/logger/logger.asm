TEXT CAS-Backend/pkg/logger.InitLogger(SB) D:/CodeEnv_code/cas-backend/pkg/logger/logger.go
  logger.go:11		0x887a60		4c8da424d0fdffff		LEAQ 0xfffffdd0(SP), R12									
  logger.go:11		0x887a68		4d3b6610			CMPQ R12, 0x10(R14)										
  logger.go:11		0x887a6c		0f8613040000			JBE 0x887e85											
  logger.go:11		0x887a72		55				PUSHQ BP											
  logger.go:11		0x887a73		4889e5				MOVQ SP, BP											
  logger.go:11		0x887a76		4881eca8020000			SUBQ $__file_alignment__+168(SB), SP								
  config.go:137		0x887a7d		488b0d04705f02			MOVQ CAS-Backend/pkg/logger..stmp_1(SB), CX							
  config.go:137		0x887a84		48898c24a8010000		MOVQ CX, 0x1a8(SP)										
  config.go:137		0x887a8c		488dbc24b0010000		LEAQ 0x1b0(SP), DI										
  config.go:137		0x887a94		488d35f56f5f02			LEAQ CAS-Backend/pkg/logger..stmp_1+8(SB), SI							
  config.go:137		0x887a9b		0f1f440000			NOPL 0(AX)(AX*1)										
  config.go:137		0x887aa0		48896c24f0			MOVQ BP, -0x10(SP)										
  config.go:137		0x887aa5		488d6c24f0			LEAQ -0x10(SP), BP										
  config.go:137		0x887aaa		e84913bfff			CALL 0x478df8											
  config.go:137		0x887aaf		488b6d00			MOVQ 0(BP), BP											
  config.go:134		0x887ab3		488d0d06f64402			LEAQ go:func.*+4312(SB), CX									
  config.go:134		0x887aba		48898c2430020000		MOVQ CX, 0x230(SP)										
  config.go:135		0x887ac2		488d0de7f54402			LEAQ go:func.*+4296(SB), CX									
  config.go:135		0x887ac9		48898c2438020000		MOVQ CX, 0x238(SP)										
  config.go:136		0x887ad1		488d0df0f54402			LEAQ go:func.*+4320(SB), CX									
  config.go:136		0x887ad8		48898c2440020000		MOVQ CX, 0x240(SP)										
  config.go:137		0x887ae0		488d0de9f54402			LEAQ go:func.*+4328(SB), CX									
  config.go:137		0x887ae7		48898c2448020000		MOVQ CX, 0x248(SP)										
  logger.go:12		0x887aef		488b8c24a8010000		MOVQ 0x1a8(SP), CX										
  logger.go:12		0x887af7		48898c24e0000000		MOVQ CX, 0xe0(SP)										
  logger.go:12		0x887aff		488dbc24e8000000		LEAQ 0xe8(SP), DI										
  logger.go:12		0x887b07		488db424b0010000		LEAQ 0x1b0(SP), SI										
  logger.go:12		0x887b0f		660f1f840000000000		NOPW 0(AX)(AX*1)										
  logger.go:12		0x887b18		0f1f840000000000		NOPL 0(AX)(AX*1)										
  logger.go:12		0x887b20		48896c24f0			MOVQ BP, -0x10(SP)										
  logger.go:12		0x887b25		488d6c24f0			LEAQ -0x10(SP), BP										
  logger.go:12		0x887b2a		e8c912bfff			CALL 0x478df8											
  logger.go:12		0x887b2f		488b6d00			MOVQ 0(BP), BP											
  logger.go:13		0x887b33		488d0d2e1a8e00			LEAQ go:string.*+4192(SB), CX									
  logger.go:13		0x887b3a		48898c2400010000		MOVQ CX, 0x100(SP)										
  logger.go:13		0x887b42		48c784240801000004000000	MOVQ $__subsystem__+1(SB), 0x108(SP)								
  logger.go:14		0x887b4e		488d0d63f54402			LEAQ go:func.*+4304(SB), CX									
  logger.go:14		0x887b55		48898c2470010000		MOVQ CX, 0x170(SP)										
  logger.go:15		0x887b5d		488d0dc62a8e00			LEAQ go:string.*+8482(SB), CX									
  logger.go:15		0x887b64		48898c24f0000000		MOVQ CX, 0xf0(SP)										
  logger.go:15		0x887b6c		48c78424f800000005000000	MOVQ $__subsystem__+2(SB), 0xf8(SP)								
  logger.go:16		0x887b78		488d0d5a778e00			LEAQ go:string.*+28113(SB), CX									
  logger.go:16		0x887b7f		48898c2420010000		MOVQ CX, 0x120(SP)										
  logger.go:16		0x887b87		48c784242801000006000000	MOVQ $__major_os_version__(SB), 0x128(SP)							
  logger.go:17		0x887b93		488d0dba0e8e00			LEAQ go:string.*+1356(SB), CX									
  logger.go:17		0x887b9a		48898c24e0000000		MOVQ CX, 0xe0(SP)										
  logger.go:17		0x887ba2		48c78424e800000003000000	MOVQ $__subsystem__(SB), 0xe8(SP)								
  logger.go:20		0x887bae		488b8c24e0000000		MOVQ 0xe0(SP), CX										
  logger.go:20		0x887bb6		48898c24a8010000		MOVQ CX, 0x1a8(SP)										
  logger.go:20		0x887bbe		488dbc24b0010000		LEAQ 0x1b0(SP), DI										
  logger.go:20		0x887bc6		488db424e8000000		LEAQ 0xe8(SP), SI										
  logger.go:20		0x887bce		660f1f840000000000		NOPW 0(AX)(AX*1)										
  logger.go:20		0x887bd7		660f1f840000000000		NOPW 0(AX)(AX*1)										
  logger.go:20		0x887be0		48896c24f0			MOVQ BP, -0x10(SP)										
  logger.go:20		0x887be5		488d6c24f0			LEAQ -0x10(SP), BP										
  logger.go:20		0x887bea		e80912bfff			CALL 0x478df8											
  logger.go:20		0x887bef		488b6d00			MOVQ 0(BP), BP											
  console_encoder.go:59	0x887bf3		4883bc246802000000		CMPQ 0x268(SP), $0x0										
  console_encoder.go:59	0x887bfc		751b				JNE 0x887c19											
  console_encoder.go:61	0x887bfe		488d0dabcf5d02			LEAQ runtime.gcbits.*+240(SB), CX								
  console_encoder.go:61	0x887c05		48898c2460020000		MOVQ CX, 0x260(SP)										
  console_encoder.go:61	0x887c0d		48c784246802000001000000	MOVQ $__minor_os_version__(SB), 0x268(SP)							
  console_encoder.go:63	0x887c19		488b8c24a8010000		MOVQ 0x1a8(SP), CX										
  console_encoder.go:63	0x887c21		48890c24			MOVQ CX, 0(SP)											
  console_encoder.go:63	0x887c25		488d7c2408			LEAQ 0x8(SP), DI										
  console_encoder.go:63	0x887c2a		488db424b0010000		LEAQ 0x1b0(SP), SI										
  console_encoder.go:63	0x887c32		660f1f840000000000		NOPW 0(AX)(AX*1)										
  console_encoder.go:63	0x887c3b		0f1f440000			NOPL 0(AX)(AX*1)										
  console_encoder.go:63	0x887c40		48896c24f0			MOVQ BP, -0x10(SP)										
  console_encoder.go:63	0x887c45		488d6c24f0			LEAQ -0x10(SP), BP										
  console_encoder.go:63	0x887c4a		e8a911bfff			CALL 0x478df8											
  console_encoder.go:63	0x887c4f		488b6d00			MOVQ 0(BP), BP											
  console_encoder.go:63	0x887c53		b801000000			MOVL $__minor_os_version__(SB), AX								
  console_encoder.go:63	0x887c58		e8e372fdff			CALL go.uber.org/zap/zapcore.newJSONEncoder(SB)							
  console_encoder.go:63	0x887c5d		4889842480020000		MOVQ AX, 0x280(SP)										
  logger.go:21		0x887c65		488b0d14a4c802			MOVQ os.Stdout(SB), CX										
  logger.go:21		0x887c6c		48898c2478020000		MOVQ CX, 0x278(SP)										
  write_syncer.go:41	0x887c74		488b1d6d3e5e02			MOVQ go:itab.*os.File,io.Writer+8(SB), BX							
  write_syncer.go:41	0x887c7b		8b156f3e5e02			MOVL go:itab.*os.File,io.Writer+16(SB), DX							
  write_syncer.go:41	0x887c81		4c8b05c8117300			MOVQ CAS-Backend/pkg/logger..interfaceSwitch.0(SB), R8						
  write_syncer.go:41	0x887c88		4d8b08				MOVQ 0(R8), R9											
  write_syncer.go:41	0x887c8b		4889d6				MOVQ DX, SI											
  write_syncer.go:41	0x887c8e		4c21ca				ANDQ R9, DX											
  write_syncer.go:41	0x887c91		488d1452			LEAQ 0(DX)(DX*2), DX										
  write_syncer.go:41	0x887c95		498b7cd008			MOVQ 0x8(R8)(DX*8), DI										
  write_syncer.go:41	0x887c9a		4839df				CMPQ DI, BX											
  write_syncer.go:41	0x887c9d		742a				JE 0x887cc9											
  write_syncer.go:41	0x887c9f		488d5601			LEAQ 0x1(SI), DX										
  write_syncer.go:41	0x887ca3		4885ff				TESTQ DI, DI											
  write_syncer.go:41	0x887ca6		75e3				JNE 0x887c8b											
  write_syncer.go:41	0x887ca8		488d05a1117300			LEAQ CAS-Backend/pkg/logger..interfaceSwitch.0(SB), AX						
  write_syncer.go:41	0x887caf		e80c7ab8ff			CALL runtime.interfaceSwitch(SB)								
  write_syncer.go:45	0x887cb4		488b8c2478020000		MOVQ 0x278(SP), CX										
  write_syncer.go:41	0x887cbc		4889c2				MOVQ AX, DX											
  core.go:61		0x887cbf		488b842480020000		MOVQ 0x280(SP), AX										
  write_syncer.go:41	0x887cc7		eb05				JMP 0x887cce											
  write_syncer.go:41	0x887cc9		498b54d010			MOVQ 0x10(R8)(DX*8), DX										
  write_syncer.go:41	0x887cce		4885d2				TESTQ DX, DX											
  write_syncer.go:41	0x887cd1		751c				JNE 0x887cef											
  write_syncer.go:42	0x887cd3		488b1d0e3e5e02			MOVQ go:itab.*os.File,io.Writer+8(SB), BX							
  write_syncer.go:42	0x887cda		488b158f117300			MOVQ CAS-Backend/pkg/logger..typeAssert.0(SB), DX						
  write_syncer.go:42	0x887ce1		488b32				MOVQ 0(DX), SI											
  write_syncer.go:42	0x887ce4		8b3d063e5e02			MOVL go:itab.*os.File,io.Writer+16(SB), DI							
  write_syncer.go:42	0x887cea		e943010000			JMP 0x887e32											
  write_syncer.go:45	0x887cef		488d15ea3d5e02			LEAQ go:itab.*os.File,io.Writer(SB), DX								
  write_syncer.go:45	0x887cf6		4889942498020000		MOVQ DX, 0x298(SP)										
  write_syncer.go:45	0x887cfe		48898c24a0020000		MOVQ CX, 0x2a0(SP)										
  write_syncer.go:45	0x887d06		488d05f3308400			LEAQ runtime.types+941568(SB), AX								
  write_syncer.go:45	0x887d0d		488d9c2498020000		LEAQ 0x298(SP), BX										
  write_syncer.go:45	0x887d15		e88673b8ff			CALL runtime.convT(SB)										
  write_syncer.go:45	0x887d1a		488d0d37755e02			LEAQ go:itab.go.uber.org/zap/zapcore.writerWrapper,go.uber.org/zap/zapcore.WriteSyncer(SB), CX	
  logger.go:19		0x887d21		48898c24d0000000		MOVQ CX, 0xd0(SP)										
  logger.go:19		0x887d29		48898424d8000000		MOVQ AX, 0xd8(SP)										
  core.go:59		0x887d31		488d0568bb8600			LEAQ runtime.types+1108128(SB), AX								
  core.go:59		0x887d38		e8639ab8ff			CALL runtime.newobject(SB)									
  core.go:60		0x887d3d		488d0ddc3d5e02			LEAQ go:itab.go.uber.org/zap/zapcore.Level,go.uber.org/zap/zapcore.LevelEnabler(SB), CX		
  core.go:60		0x887d44		488908				MOVQ CX, 0(AX)											
  core.go:60		0x887d47		488d0dca316f00			LEAQ runtime.staticuint64s+2040(SB), CX								
  core.go:60		0x887d4e		48894808			MOVQ CX, 0x8(AX)										
  core.go:61		0x887d52		488d0d57875f02			LEAQ go:itab.go.uber.org/zap/zapcore.consoleEncoder,go.uber.org/zap/zapcore.Encoder(SB), CX	
  core.go:61		0x887d59		48894810			MOVQ CX, 0x10(AX)										
  core.go:61		0x887d5d		833dec5dcd0200			CMPL runtime.writeBarrier(SB), $0x0								
  core.go:61		0x887d64		7512				JNE 0x887d78											
  core.go:61		0x887d66		488b8c2480020000		MOVQ 0x280(SP), CX										
  core.go:62		0x887d6e		488b9424d8000000		MOVQ 0xd8(SP), DX										
  core.go:61		0x887d76		eb1c				JMP 0x887d94											
  core.go:61		0x887d78		e8c306bfff			CALL runtime.gcWriteBarrier2(SB)								
  core.go:61		0x887d7d		488b8c2480020000		MOVQ 0x280(SP), CX										
  core.go:61		0x887d85		49890b				MOVQ CX, 0(R11)											
  core.go:62		0x887d88		488b9424d8000000		MOVQ 0xd8(SP), DX										
  core.go:62		0x887d90		49895308			MOVQ DX, 0x8(R11)										
  core.go:59		0x887d94		4889842470020000		MOVQ AX, 0x270(SP)										
  core.go:61		0x887d9c		48894818			MOVQ CX, 0x18(AX)										
  core.go:62		0x887da0		488b8c24d0000000		MOVQ 0xd0(SP), CX										
  core.go:62		0x887da8		48894820			MOVQ CX, 0x20(AX)										
  core.go:62		0x887dac		48895028			MOVQ DX, 0x28(AX)										
  options.go:92		0x887db0		90				NOPL												
  options.go:99		0x887db1		488d0588958200			LEAQ runtime.types+836416(SB), AX								
  options.go:99		0x887db8		e8e399b8ff			CALL runtime.newobject(SB)									
  options.go:99		0x887dbd		488d0ddc000000			LEAQ CAS-Backend/pkg/logger.InitLogger.AddCaller.WithCaller.func1(SB), CX			
  options.go:99		0x887dc4		488908				MOVQ CX, 0(AX)											
  options.go:99		0x887dc7		c6400801			MOVB $__minor_os_version__(SB), 0x8(AX)								
  logger.go:24		0x887dcb		488d0d6e3d5e02			LEAQ go:itab.go.uber.org/zap.optionFunc,go.uber.org/zap.Option(SB), CX				
  logger.go:24		0x887dd2		48898c2488020000		MOVQ CX, 0x288(SP)										
  logger.go:24		0x887dda		4889842490020000		MOVQ AX, 0x290(SP)										
  logger.go:24		0x887de2		488d05d7c95e02			LEAQ go:itab.*go.uber.org/zap/zapcore.ioCore,go.uber.org/zap/zapcore.Core(SB), AX		
  logger.go:24		0x887de9		488b9c2470020000		MOVQ 0x270(SP), BX										
  logger.go:24		0x887df1		488d8c2488020000		LEAQ 0x288(SP), CX										
  logger.go:24		0x887df9		bf01000000			MOVL $__minor_os_version__(SB), DI								
  logger.go:24		0x887dfe		4889fe				MOVQ DI, SI											
  logger.go:24		0x887e01		e87ac9feff			CALL go.uber.org/zap.New(SB)									
  logger.go:24		0x887e06		833d435dcd0200			CMPL runtime.writeBarrier(SB), $0x0								
  logger.go:24		0x887e0d		7413				JE 0x887e22											
  logger.go:24		0x887e0f		e82c06bfff			CALL runtime.gcWriteBarrier2(SB)								
  logger.go:24		0x887e14		498903				MOVQ AX, 0(R11)											
  logger.go:24		0x887e17		488b0d4aa2c802			MOVQ CAS-Backend/pkg/logger.Log(SB), CX								
  logger.go:24		0x887e1e		49894b08			MOVQ CX, 0x8(R11)										
  logger.go:24		0x887e22		4889053fa2c802			MOVQ AX, CAS-Backend/pkg/logger.Log(SB)								
  logger.go:25		0x887e29		4881c4a8020000			ADDQ $__file_alignment__+168(SB), SP								
  logger.go:25		0x887e30		5d				POPQ BP												
  logger.go:25		0x887e31		c3				RET												
  write_syncer.go:42	0x887e32		4989f8				MOVQ DI, R8											
  write_syncer.go:42	0x887e35		4821f7				ANDQ SI, DI											
  write_syncer.go:42	0x887e38		48c1e704			SHLQ $__subsystem__+1(SB), DI									
  write_syncer.go:42	0x887e3c		4c8b4c1708			MOVQ 0x8(DI)(DX*1), R9										
  write_syncer.go:42	0x887e41		4939d9				CMPQ R9, BX											
  write_syncer.go:42	0x887e44		742a				JE 0x887e70											
  write_syncer.go:42	0x887e46		498d7801			LEAQ 0x1(R8), DI										
  write_syncer.go:42	0x887e4a		4d85c9				TESTQ R9, R9											
  write_syncer.go:42	0x887e4d		75e3				JNE 0x887e32											
  write_syncer.go:42	0x887e4f		488d051a107300			LEAQ CAS-Backend/pkg/logger..typeAssert.0(SB), AX						
  write_syncer.go:42	0x887e56		e88574b8ff			CALL runtime.typeAssert(SB)									
  logger.go:19		0x887e5b		488b8c2478020000		MOVQ 0x278(SP), CX										
  write_syncer.go:42	0x887e63		4889c2				MOVQ AX, DX											
  core.go:61		0x887e66		488b842480020000		MOVQ 0x280(SP), AX										
  write_syncer.go:42	0x887e6e		eb05				JMP 0x887e75											
  write_syncer.go:42	0x887e70		488b541710			MOVQ 0x10(DI)(DX*1), DX										
  logger.go:19		0x887e75		4889c8				MOVQ CX, AX											
  logger.go:19		0x887e78		4889d1				MOVQ DX, CX											
  logger.go:19		0x887e7b		0f1f440000			NOPL 0(AX)(AX*1)										
  logger.go:21		0x887e80		e99cfeffff			JMP 0x887d21											
  logger.go:11		0x887e85		e856e6beff			CALL runtime.morestack_noctxt.abi0(SB)								
  logger.go:11		0x887e8a		e9d1fbffff			JMP CAS-Backend/pkg/logger.InitLogger(SB)							
  :-1			0x887e8f		cc				INT $__subsystem__(SB)										
  :-1			0x887e90		cc				INT $__subsystem__(SB)										
  :-1			0x887e91		cc				INT $__subsystem__(SB)										
  :-1			0x887e92		cc				INT $__subsystem__(SB)										
  :-1			0x887e93		cc				INT $__subsystem__(SB)										
  :-1			0x887e94		cc				INT $__subsystem__(SB)										
  :-1			0x887e95		cc				INT $__subsystem__(SB)										
  :-1			0x887e96		cc				INT $__subsystem__(SB)										
  :-1			0x887e97		cc				INT $__subsystem__(SB)										
  :-1			0x887e98		cc				INT $__subsystem__(SB)										
  :-1			0x887e99		cc				INT $__subsystem__(SB)										
  :-1			0x887e9a		cc				INT $__subsystem__(SB)										
  :-1			0x887e9b		cc				INT $__subsystem__(SB)										
  :-1			0x887e9c		cc				INT $__subsystem__(SB)										
  :-1			0x887e9d		cc				INT $__subsystem__(SB)										
  :-1			0x887e9e		cc				INT $__subsystem__(SB)										
  :-1			0x887e9f		cc				INT $__subsystem__(SB)										

