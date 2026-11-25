TEXT CAS-Backend/biz/dao.InitDB(SB) D:/CodeEnv_code/cas-backend/biz/dao/db.go
  db.go:46		0x994920		4c8d642480			LEAQ -0x80(SP), R12								
  db.go:46		0x994925		4d3b6610			CMPQ R12, 0x10(R14)								
  db.go:46		0x994929		0f8644070000			JBE 0x995073									
  db.go:46		0x99492f		55				PUSHQ BP									
  db.go:46		0x994930		4889e5				MOVQ SP, BP									
  db.go:46		0x994933		4881ecf8000000			SUBQ $.file+171(SB), SP								
  db.go:47		0x99493a		488b0d8f1bb802			MOVQ CAS-Backend/config.Cfg+176(SB), CX						
  db.go:47		0x994941		488b15801bb802			MOVQ CAS-Backend/config.Cfg+168(SB), DX						
  db.go:48		0x994948		4885c9				TESTQ CX, CX									
  db.go:48		0x99494b		7518				JNE 0x994965									
  db.go:49		0x99494d		90				NOPL										
  appdir.go:55		0x99494e		488d05c4257e00			LEAQ go:string.*+59921(SB), AX							
  appdir.go:55		0x994955		bb0b000000			MOVL $__major_os_version__+5(SB), BX						
  appdir.go:55		0x99495a		e8812eb5ff			CALL CAS-Backend/pkg/appdir.Resolve(SB)						
  db.go:51		0x99495f		4889c2				MOVQ AX, DX									
  db.go:51		0x994962		4889d9				MOVQ BX, CX									
  db.go:51		0x994965		48899424c8000000		MOVQ DX, 0xc8(SP)								
  db.go:51		0x99496d		48894c2430			MOVQ CX, 0x30(SP)								
  path.go:466		0x994972		4889d0				MOVQ DX, AX									
  path.go:466		0x994975		4889cb				MOVQ CX, BX									
  path.go:466		0x994978		e82371b2ff			CALL internal/filepathlite.Dir(SB)						
  db.go:51		0x99497d		b9ed010000			MOVL $.file+416(SB), CX								
  db.go:51		0x994982		e839d3b3ff			CALL os.MkdirAll(SB)								
  db.go:51		0x994987		4885c0				TESTQ AX, AX									
  db.go:51		0x99498a		0f8407010000			JE 0x994a97									
  error.go:34		0x994990		440f117c2440			MOVUPS X15, 0x40(SP)								
  error.go:34		0x994996		440f117c2450			MOVUPS X15, 0x50(SP)								
  error.go:34		0x99499c		440f117c2460			MOVUPS X15, 0x60(SP)								
  error.go:34		0x9949a2		440f117c2470			MOVUPS X15, 0x70(SP)								
  error.go:48		0x9949a8		488d0d125c7d00			LEAQ go:string.*+8377(SB), CX							
  error.go:48		0x9949af		48894c2440			MOVQ CX, 0x40(SP)								
  error.go:48		0x9949b4		48c744244805000000		MOVQ $__subsystem__+2(SB), 0x48(SP)						
  error.go:48		0x9949bd		c64424501a			MOVB $__major_os_version__+20(SB), 0x50(SP)					
  error.go:48		0x9949c2		7404				JE 0x9949c8									
  error.go:48		0x9949c4		488b4008			MOVQ 0x8(AX), AX								
  error.go:48		0x9949c8		4889442470			MOVQ AX, 0x70(SP)								
  error.go:48		0x9949cd		48895c2478			MOVQ BX, 0x78(SP)								
  db.go:52		0x9949d2		0f10442440			MOVUPS 0x40(SP), X0								
  db.go:52		0x9949d7		0f11842480000000		MOVUPS X0, 0x80(SP)								
  db.go:52		0x9949df		0f10442450			MOVUPS 0x50(SP), X0								
  db.go:52		0x9949e4		0f11842490000000		MOVUPS X0, 0x90(SP)								
  db.go:52		0x9949ec		0f10442460			MOVUPS 0x60(SP), X0								
  db.go:52		0x9949f1		0f118424a0000000		MOVUPS X0, 0xa0(SP)								
  db.go:52		0x9949f9		0f10442470			MOVUPS 0x70(SP), X0								
  db.go:52		0x9949fe		0f118424b0000000		MOVUPS X0, 0xb0(SP)								
  db.go:52		0x994a06		488d0573996b00			LEAQ runtime.types+430976(SB), AX						
  db.go:52		0x994a0d		e88ecda7ff			CALL runtime.newobject(SB)							
  db.go:52		0x994a12		833d3791bc0200			CMPL runtime.writeBarrier(SB), $0x0						
  db.go:52		0x994a19		7427				JE 0x994a42									
  db.go:52		0x994a1b		48898424f0000000		MOVQ AX, 0xf0(SP)								
  db.go:52		0x994a23		4889c3				MOVQ AX, BX									
  db.go:52		0x994a26		488d8c2480000000		LEAQ 0x80(SP), CX								
  db.go:52		0x994a2e		488d056bdf7700			LEAQ runtime.types+1235360(SB), AX						
  db.go:52		0x994a35		e8e604a8ff			CALL runtime.wbMove(SB)								
  db.go:52		0x994a3a		488b8424f0000000		MOVQ 0xf0(SP), AX								
  db.go:52		0x994a42		0f10842480000000		MOVUPS 0x80(SP), X0								
  db.go:52		0x994a4a		0f1100				MOVUPS X0, 0(AX)								
  db.go:52		0x994a4d		0f10842490000000		MOVUPS 0x90(SP), X0								
  db.go:52		0x994a55		0f114010			MOVUPS X0, 0x10(AX)								
  db.go:52		0x994a59		0f108424a0000000		MOVUPS 0xa0(SP), X0								
  db.go:52		0x994a61		0f114020			MOVUPS X0, 0x20(AX)								
  db.go:52		0x994a65		0f108424b0000000		MOVUPS 0xb0(SP), X0								
  db.go:52		0x994a6d		0f114030			MOVUPS X0, 0x30(AX)								
  db.go:52		0x994a71		488b15f0d5b702			MOVQ CAS-Backend/pkg/logger.Log(SB), DX						
  db.go:52		0x994a78		488d1d8d587f00			LEAQ go:string.*+138756(SB), BX							
  db.go:52		0x994a7f		b91d000000			MOVL $__major_os_version__+23(SB), CX						
  db.go:52		0x994a84		4889c7				MOVQ AX, DI									
  db.go:52		0x994a87		be01000000			MOVL $__minor_os_version__(SB), SI						
  db.go:52		0x994a8c		4989f0				MOVQ SI, R8									
  db.go:52		0x994a8f		4889d0				MOVQ DX, AX									
  db.go:52		0x994a92		e8a90ceeff			CALL go.uber.org/zap.(*Logger).Fatal(SB)					
  sqlite.go:29		0x994a97		488d05c23a7900			LEAQ runtime.types+1324384(SB), AX						
  sqlite.go:29		0x994a9e		6690				NOPW										
  sqlite.go:29		0x994aa0		e8fbcca7ff			CALL runtime.newobject(SB)							
  sqlite.go:29		0x994aa5		488b4c2430			MOVQ 0x30(SP), CX								
  sqlite.go:29		0x994aaa		48894818			MOVQ CX, 0x18(AX)								
  sqlite.go:29		0x994aae		833d9b90bc0200			CMPL runtime.writeBarrier(SB), $0x0						
  sqlite.go:29		0x994ab5		750b				JNE 0x994ac2									
  sqlite.go:29		0x994ab7		488b9424c8000000		MOVQ 0xc8(SP), DX								
  sqlite.go:29		0x994abf		90				NOPL										
  sqlite.go:29		0x994ac0		eb10				JMP 0x994ad2									
  sqlite.go:29		0x994ac2		e85939aeff			CALL runtime.gcWriteBarrier1(SB)						
  sqlite.go:29		0x994ac7		488b9424c8000000		MOVQ 0xc8(SP), DX								
  sqlite.go:29		0x994acf		498913				MOVQ DX, 0(R11)									
  sqlite.go:29		0x994ad2		48898424e8000000		MOVQ AX, 0xe8(SP)								
  sqlite.go:29		0x994ada		48895010			MOVQ DX, 0x10(AX)								
  db.go:57		0x994ade		488b0d4beeb702			MOVQ gorm.io/gorm/logger.Default(SB), CX					
  db.go:57		0x994ae5		488b354ceeb702			MOVQ gorm.io/gorm/logger.Default+8(SB), SI					
  db.go:57		0x994aec		488b4928			MOVQ 0x28(CX), CX								
  db.go:57		0x994af0		bb03000000			MOVL $__subsystem__(SB), BX							
  db.go:57		0x994af5		4889f0				MOVQ SI, AX									
  db.go:57		0x994af8		ffd1				CALL CX										
  db.go:57		0x994afa		4889442438			MOVQ AX, 0x38(SP)								
  db.go:57		0x994aff		48899c24e0000000		MOVQ BX, 0xe0(SP)								
  db.go:56		0x994b07		488d05528e7b00			LEAQ runtime.types+1476960(SB), AX						
  db.go:56		0x994b0e		e88dcca7ff			CALL runtime.newobject(SB)							
  db.go:57		0x994b13		488b4c2438			MOVQ 0x38(SP), CX								
  db.go:57		0x994b18		48894828			MOVQ CX, 0x28(AX)								
  db.go:57		0x994b1c		833d2d90bc0200			CMPL runtime.writeBarrier(SB), $0x0						
  db.go:57		0x994b23		750a				JNE 0x994b2f									
  db.go:57		0x994b25		488b8c24e0000000		MOVQ 0xe0(SP), CX								
  db.go:57		0x994b2d		eb10				JMP 0x994b3f									
  db.go:57		0x994b2f		e8ec38aeff			CALL runtime.gcWriteBarrier1(SB)						
  db.go:57		0x994b34		488b8c24e0000000		MOVQ 0xe0(SP), CX								
  db.go:57		0x994b3c		49890b				MOVQ CX, 0(R11)									
  db.go:56		0x994b3f		48898424d8000000		MOVQ AX, 0xd8(SP)								
  db.go:57		0x994b47		48894830			MOVQ CX, 0x30(AX)								
  db.go:56		0x994b4b		488d050e9a6b00			LEAQ runtime.types+431456(SB), AX						
  db.go:56		0x994b52		e849cca7ff			CALL runtime.newobject(SB)							
  db.go:56		0x994b57		488d0daaa64d02			LEAQ go:itab.*gorm.io/gorm.Config,gorm.io/gorm.Option(SB), CX			
  db.go:56		0x994b5e		488908				MOVQ CX, 0(AX)									
  db.go:56		0x994b61		833de88fbc0200			CMPL runtime.writeBarrier(SB), $0x0						
  db.go:56		0x994b68		750a				JNE 0x994b74									
  db.go:56		0x994b6a		488b9424d8000000		MOVQ 0xd8(SP), DX								
  db.go:56		0x994b72		eb10				JMP 0x994b84									
  db.go:56		0x994b74		e8a738aeff			CALL runtime.gcWriteBarrier1(SB)						
  db.go:56		0x994b79		488b9424d8000000		MOVQ 0xd8(SP), DX								
  db.go:56		0x994b81		498913				MOVQ DX, 0(R11)									
  db.go:56		0x994b84		48895008			MOVQ DX, 0x8(AX)								
  db.go:56		0x994b88		488b9c24e8000000		MOVQ 0xe8(SP), BX								
  db.go:56		0x994b90		4889c1				MOVQ AX, CX									
  db.go:56		0x994b93		bf01000000			MOVL $__minor_os_version__(SB), DI						
  db.go:56		0x994b98		4889fe				MOVQ DI, SI									
  db.go:56		0x994b9b		488d0516294e02			LEAQ go:itab.*gorm.io/driver/sqlite.Dialector,gorm.io/gorm.Dialector(SB), AX	
  db.go:56		0x994ba2		e89919f9ff			CALL gorm.io/gorm.Open(SB)							
  db.go:56		0x994ba7		48898424d0000000		MOVQ AX, 0xd0(SP)								
  db.go:59		0x994baf		4885db				TESTQ BX, BX									
  db.go:59		0x994bb2		0f8415010000			JE 0x994ccd									
  error.go:34		0x994bb8		440f117c2440			MOVUPS X15, 0x40(SP)								
  error.go:34		0x994bbe		440f117c2450			MOVUPS X15, 0x50(SP)								
  error.go:34		0x994bc4		440f117c2460			MOVUPS X15, 0x60(SP)								
  error.go:34		0x994bca		440f117c2470			MOVUPS X15, 0x70(SP)								
  error.go:48		0x994bd0		488d15ea597d00			LEAQ go:string.*+8377(SB), DX							
  error.go:48		0x994bd7		4889542440			MOVQ DX, 0x40(SP)								
  error.go:48		0x994bdc		48c744244805000000		MOVQ $__subsystem__+2(SB), 0x48(SP)						
  error.go:48		0x994be5		c64424501a			MOVB $__major_os_version__+20(SB), 0x50(SP)					
  error.go:48		0x994bea		7404				JE 0x994bf0									
  error.go:48		0x994bec		488b5b08			MOVQ 0x8(BX), BX								
  error.go:48		0x994bf0		48895c2470			MOVQ BX, 0x70(SP)								
  error.go:48		0x994bf5		48894c2478			MOVQ CX, 0x78(SP)								
  db.go:60		0x994bfa		0f10442440			MOVUPS 0x40(SP), X0								
  db.go:60		0x994bff		0f11842480000000		MOVUPS X0, 0x80(SP)								
  db.go:60		0x994c07		0f10442450			MOVUPS 0x50(SP), X0								
  db.go:60		0x994c0c		0f11842490000000		MOVUPS X0, 0x90(SP)								
  db.go:60		0x994c14		0f10442460			MOVUPS 0x60(SP), X0								
  db.go:60		0x994c19		0f118424a0000000		MOVUPS X0, 0xa0(SP)								
  db.go:60		0x994c21		0f10442470			MOVUPS 0x70(SP), X0								
  db.go:60		0x994c26		0f118424b0000000		MOVUPS X0, 0xb0(SP)								
  db.go:60		0x994c2e		488d054b976b00			LEAQ runtime.types+430976(SB), AX						
  db.go:60		0x994c35		e866cba7ff			CALL runtime.newobject(SB)							
  db.go:60		0x994c3a		833d0f8fbc0200			CMPL runtime.writeBarrier(SB), $0x0						
  db.go:60		0x994c41		742a				JE 0x994c6d									
  db.go:60		0x994c43		48898424f0000000		MOVQ AX, 0xf0(SP)								
  db.go:60		0x994c4b		4889c3				MOVQ AX, BX									
  db.go:60		0x994c4e		488d8c2480000000		LEAQ 0x80(SP), CX								
  db.go:60		0x994c56		488d0543dd7700			LEAQ runtime.types+1235360(SB), AX						
  db.go:60		0x994c5d		0f1f00				NOPL 0(AX)									
  db.go:60		0x994c60		e8bb02a8ff			CALL runtime.wbMove(SB)								
  db.go:60		0x994c65		488b8424f0000000		MOVQ 0xf0(SP), AX								
  db.go:60		0x994c6d		0f10842480000000		MOVUPS 0x80(SP), X0								
  db.go:60		0x994c75		0f1100				MOVUPS X0, 0(AX)								
  db.go:60		0x994c78		0f10842490000000		MOVUPS 0x90(SP), X0								
  db.go:60		0x994c80		0f114010			MOVUPS X0, 0x10(AX)								
  db.go:60		0x994c84		0f108424a0000000		MOVUPS 0xa0(SP), X0								
  db.go:60		0x994c8c		0f114020			MOVUPS X0, 0x20(AX)								
  db.go:60		0x994c90		0f108424b0000000		MOVUPS 0xb0(SP), X0								
  db.go:60		0x994c98		0f114030			MOVUPS X0, 0x30(AX)								
  db.go:60		0x994c9c		488b15c5d3b702			MOVQ CAS-Backend/pkg/logger.Log(SB), DX						
  db.go:60		0x994ca3		488d1d7f567f00			LEAQ go:string.*+138785(SB), BX							
  db.go:60		0x994caa		b91d000000			MOVL $__major_os_version__+23(SB), CX						
  db.go:60		0x994caf		4889c7				MOVQ AX, DI									
  db.go:60		0x994cb2		be01000000			MOVL $__minor_os_version__(SB), SI						
  db.go:60		0x994cb7		4989f0				MOVQ SI, R8									
  db.go:60		0x994cba		4889d0				MOVQ DX, AX									
  db.go:60		0x994cbd		0f1f00				NOPL 0(AX)									
  db.go:60		0x994cc0		e87b0aeeff			CALL go.uber.org/zap.(*Logger).Fatal(SB)					
  db.go:64		0x994cc5		488b8424d0000000		MOVQ 0xd0(SP), AX								
  db.go:64		0x994ccd		e8ce38f9ff			CALL gorm.io/gorm.(*DB).DB(SB)							
  db.go:64		0x994cd2		48898424c0000000		MOVQ AX, 0xc0(SP)								
  db.go:64		0x994cda		660f1f440000			NOPW 0(AX)(AX*1)								
  db.go:65		0x994ce0		4885db				TESTQ BX, BX									
  db.go:65		0x994ce3		0f840f010000			JE 0x994df8									
  error.go:34		0x994ce9		440f117c2440			MOVUPS X15, 0x40(SP)								
  error.go:34		0x994cef		440f117c2450			MOVUPS X15, 0x50(SP)								
  error.go:34		0x994cf5		440f117c2460			MOVUPS X15, 0x60(SP)								
  error.go:34		0x994cfb		440f117c2470			MOVUPS X15, 0x70(SP)								
  error.go:48		0x994d01		488d15b9587d00			LEAQ go:string.*+8377(SB), DX							
  error.go:48		0x994d08		4889542440			MOVQ DX, 0x40(SP)								
  error.go:48		0x994d0d		48c744244805000000		MOVQ $__subsystem__+2(SB), 0x48(SP)						
  error.go:48		0x994d16		c64424501a			MOVB $__major_os_version__+20(SB), 0x50(SP)					
  error.go:48		0x994d1b		7404				JE 0x994d21									
  error.go:48		0x994d1d		488b5b08			MOVQ 0x8(BX), BX								
  error.go:48		0x994d21		48895c2470			MOVQ BX, 0x70(SP)								
  error.go:48		0x994d26		48894c2478			MOVQ CX, 0x78(SP)								
  db.go:66		0x994d2b		0f10442440			MOVUPS 0x40(SP), X0								
  db.go:66		0x994d30		0f11842480000000		MOVUPS X0, 0x80(SP)								
  db.go:66		0x994d38		0f10442450			MOVUPS 0x50(SP), X0								
  db.go:66		0x994d3d		0f11842490000000		MOVUPS X0, 0x90(SP)								
  db.go:66		0x994d45		0f10442460			MOVUPS 0x60(SP), X0								
  db.go:66		0x994d4a		0f118424a0000000		MOVUPS X0, 0xa0(SP)								
  db.go:66		0x994d52		0f10442470			MOVUPS 0x70(SP), X0								
  db.go:66		0x994d57		0f118424b0000000		MOVUPS X0, 0xb0(SP)								
  db.go:66		0x994d5f		488d051a966b00			LEAQ runtime.types+430976(SB), AX						
  db.go:66		0x994d66		e835caa7ff			CALL runtime.newobject(SB)							
  db.go:66		0x994d6b		833dde8dbc0200			CMPL runtime.writeBarrier(SB), $0x0						
  db.go:66		0x994d72		7427				JE 0x994d9b									
  db.go:66		0x994d74		48898424f0000000		MOVQ AX, 0xf0(SP)								
  db.go:66		0x994d7c		4889c3				MOVQ AX, BX									
  db.go:66		0x994d7f		488d8c2480000000		LEAQ 0x80(SP), CX								
  db.go:66		0x994d87		488d0512dc7700			LEAQ runtime.types+1235360(SB), AX						
  db.go:66		0x994d8e		e88d01a8ff			CALL runtime.wbMove(SB)								
  db.go:66		0x994d93		488b8424f0000000		MOVQ 0xf0(SP), AX								
  db.go:66		0x994d9b		0f10842480000000		MOVUPS 0x80(SP), X0								
  db.go:66		0x994da3		0f1100				MOVUPS X0, 0(AX)								
  db.go:66		0x994da6		0f10842490000000		MOVUPS 0x90(SP), X0								
  db.go:66		0x994dae		0f114010			MOVUPS X0, 0x10(AX)								
  db.go:66		0x994db2		0f108424a0000000		MOVUPS 0xa0(SP), X0								
  db.go:66		0x994dba		0f114020			MOVUPS X0, 0x20(AX)								
  db.go:66		0x994dbe		0f108424b0000000		MOVUPS 0xb0(SP), X0								
  db.go:66		0x994dc6		0f114030			MOVUPS X0, 0x30(AX)								
  db.go:66		0x994dca		488b1597d2b702			MOVQ CAS-Backend/pkg/logger.Log(SB), DX						
  db.go:66		0x994dd1		488d1d6e557f00			LEAQ go:string.*+138814(SB), BX							
  db.go:66		0x994dd8		b91d000000			MOVL $__major_os_version__+23(SB), CX						
  db.go:66		0x994ddd		4889c7				MOVQ AX, DI									
  db.go:66		0x994de0		be01000000			MOVL $__minor_os_version__(SB), SI						
  db.go:66		0x994de5		4989f0				MOVQ SI, R8									
  db.go:66		0x994de8		4889d0				MOVQ DX, AX									
  db.go:66		0x994deb		e85009eeff			CALL go.uber.org/zap.(*Logger).Fatal(SB)					
  db.go:70		0x994df0		488b8424c0000000		MOVQ 0xc0(SP), AX								
  db.go:70		0x994df8		bb01000000			MOVL $__minor_os_version__(SB), BX						
  db.go:70		0x994dfd		0f1f00				NOPL 0(AX)									
  db.go:70		0x994e00		e8bbb8efff			CALL database/sql.(*DB).SetMaxIdleConns(SB)					
  db.go:71		0x994e05		488b8424c0000000		MOVQ 0xc0(SP), AX								
  db.go:71		0x994e0d		bb01000000			MOVL $__minor_os_version__(SB), BX						
  db.go:71		0x994e12		e849baefff			CALL database/sql.(*DB).SetMaxOpenConns(SB)					
  db.go:72		0x994e17		488b8424c0000000		MOVQ 0xc0(SP), AX								
  db.go:72		0x994e1f		31db				XORL BX, BX									
  db.go:72		0x994e21		e83abbefff			CALL database/sql.(*DB).SetConnMaxLifetime(SB)					
  db.go:74		0x994e26		833d238dbc0200			CMPL runtime.writeBarrier(SB), $0x0						
  db.go:74		0x994e2d		750a				JNE 0x994e39									
  db.go:74		0x994e2f		488b8424d0000000		MOVQ 0xd0(SP), AX								
  db.go:74		0x994e37		eb1b				JMP 0x994e54									
  db.go:74		0x994e39		e80236aeff			CALL runtime.gcWriteBarrier2(SB)						
  db.go:74		0x994e3e		488b8424d0000000		MOVQ 0xd0(SP), AX								
  db.go:74		0x994e46		498903				MOVQ AX, 0(R11)									
  db.go:74		0x994e49		488b0df0d1b702			MOVQ runtime.bss(SB), CX							
  db.go:74		0x994e50		49894b08			MOVQ CX, 0x8(R11)								
  db.go:74		0x994e54		488905e5d1b702			MOVQ AX, runtime.bss(SB)							
  db.go:77		0x994e5b		0f1f440000			NOPL 0(AX)(AX*1)								
  db.go:77		0x994e60		e81b020000			CALL CAS-Backend/biz/dao.testConnection(SB)					
  db.go:77		0x994e65		4885c0				TESTQ AX, AX									
  db.go:77		0x994e68		0f8407010000			JE 0x994f75									
  error.go:34		0x994e6e		440f117c2440			MOVUPS X15, 0x40(SP)								
  error.go:34		0x994e74		440f117c2450			MOVUPS X15, 0x50(SP)								
  error.go:34		0x994e7a		440f117c2460			MOVUPS X15, 0x60(SP)								
  error.go:34		0x994e80		440f117c2470			MOVUPS X15, 0x70(SP)								
  error.go:48		0x994e86		488d0d34577d00			LEAQ go:string.*+8377(SB), CX							
  error.go:48		0x994e8d		48894c2440			MOVQ CX, 0x40(SP)								
  error.go:48		0x994e92		48c744244805000000		MOVQ $__subsystem__+2(SB), 0x48(SP)						
  error.go:48		0x994e9b		c64424501a			MOVB $__major_os_version__+20(SB), 0x50(SP)					
  error.go:48		0x994ea0		7404				JE 0x994ea6									
  error.go:48		0x994ea2		488b4008			MOVQ 0x8(AX), AX								
  error.go:48		0x994ea6		4889442470			MOVQ AX, 0x70(SP)								
  error.go:48		0x994eab		48895c2478			MOVQ BX, 0x78(SP)								
  db.go:78		0x994eb0		0f10442440			MOVUPS 0x40(SP), X0								
  db.go:78		0x994eb5		0f11842480000000		MOVUPS X0, 0x80(SP)								
  db.go:78		0x994ebd		0f10442450			MOVUPS 0x50(SP), X0								
  db.go:78		0x994ec2		0f11842490000000		MOVUPS X0, 0x90(SP)								
  db.go:78		0x994eca		0f10442460			MOVUPS 0x60(SP), X0								
  db.go:78		0x994ecf		0f118424a0000000		MOVUPS X0, 0xa0(SP)								
  db.go:78		0x994ed7		0f10442470			MOVUPS 0x70(SP), X0								
  db.go:78		0x994edc		0f118424b0000000		MOVUPS X0, 0xb0(SP)								
  db.go:78		0x994ee4		488d0595946b00			LEAQ runtime.types+430976(SB), AX						
  db.go:78		0x994eeb		e8b0c8a7ff			CALL runtime.newobject(SB)							
  db.go:78		0x994ef0		833d598cbc0200			CMPL runtime.writeBarrier(SB), $0x0						
  db.go:78		0x994ef7		7427				JE 0x994f20									
  db.go:78		0x994ef9		48898424f0000000		MOVQ AX, 0xf0(SP)								
  db.go:78		0x994f01		4889c3				MOVQ AX, BX									
  db.go:78		0x994f04		488d8c2480000000		LEAQ 0x80(SP), CX								
  db.go:78		0x994f0c		488d058dda7700			LEAQ runtime.types+1235360(SB), AX						
  db.go:78		0x994f13		e80800a8ff			CALL runtime.wbMove(SB)								
  db.go:78		0x994f18		488b8424f0000000		MOVQ 0xf0(SP), AX								
  db.go:78		0x994f20		0f10842480000000		MOVUPS 0x80(SP), X0								
  db.go:78		0x994f28		0f1100				MOVUPS X0, 0(AX)								
  db.go:78		0x994f2b		0f10842490000000		MOVUPS 0x90(SP), X0								
  db.go:78		0x994f33		0f114010			MOVUPS X0, 0x10(AX)								
  db.go:78		0x994f37		0f108424a0000000		MOVUPS 0xa0(SP), X0								
  db.go:78		0x994f3f		0f114020			MOVUPS X0, 0x20(AX)								
  db.go:78		0x994f43		0f108424b0000000		MOVUPS 0xb0(SP), X0								
  db.go:78		0x994f4b		0f114030			MOVUPS X0, 0x30(AX)								
  db.go:78		0x994f4f		488b1512d1b702			MOVQ CAS-Backend/pkg/logger.Log(SB), DX						
  db.go:78		0x994f56		488d1d92ba7f00			LEAQ go:string.*+165095(SB), BX							
  db.go:78		0x994f5d		b923000000			MOVL $__major_os_version__+29(SB), CX						
  db.go:78		0x994f62		4889c7				MOVQ AX, DI									
  db.go:78		0x994f65		be01000000			MOVL $__minor_os_version__(SB), SI						
  db.go:78		0x994f6a		4989f0				MOVQ SI, R8									
  db.go:78		0x994f6d		4889d0				MOVQ DX, AX									
  db.go:78		0x994f70		e8cb07eeff			CALL go.uber.org/zap.(*Logger).Fatal(SB)					
  db.go:81		0x994f75		440f11bc2480000000		MOVUPS X15, 0x80(SP)								
  db.go:81		0x994f7e		440f11bc2490000000		MOVUPS X15, 0x90(SP)								
  db.go:81		0x994f87		440f11bc24a0000000		MOVUPS X15, 0xa0(SP)								
  db.go:81		0x994f90		440f11bc24b0000000		MOVUPS X15, 0xb0(SP)								
  field.go:223		0x994f99		488d0dbbf07d00			LEAQ go:string.*+47955(SB), CX							
  field.go:223		0x994fa0		48898c2480000000		MOVQ CX, 0x80(SP)								
  field.go:223		0x994fa8		48c784248800000008000000	MOVQ $__major_os_version__+2(SB), 0x88(SP)					
  field.go:223		0x994fb4		c68424900000000f		MOVB $__major_os_version__+9(SB), 0x90(SP)					
  field.go:223		0x994fbc		488b8c24c8000000		MOVQ 0xc8(SP), CX								
  field.go:223		0x994fc4		48898c24a0000000		MOVQ CX, 0xa0(SP)								
  field.go:223		0x994fcc		488b4c2430			MOVQ 0x30(SP), CX								
  field.go:223		0x994fd1		48898c24a8000000		MOVQ CX, 0xa8(SP)								
  db.go:81		0x994fd9		488d05a0936b00			LEAQ runtime.types+430976(SB), AX						
  db.go:81		0x994fe0		e8bbc7a7ff			CALL runtime.newobject(SB)							
  db.go:81		0x994fe5		833d648bbc0200			CMPL runtime.writeBarrier(SB), $0x0						
  db.go:81		0x994fec		7427				JE 0x995015									
  db.go:81		0x994fee		48898424f0000000		MOVQ AX, 0xf0(SP)								
  db.go:81		0x994ff6		4889c3				MOVQ AX, BX									
  db.go:81		0x994ff9		488d8c2480000000		LEAQ 0x80(SP), CX								
  db.go:81		0x995001		488d0598d97700			LEAQ runtime.types+1235360(SB), AX						
  db.go:81		0x995008		e813ffa7ff			CALL runtime.wbMove(SB)								
  db.go:81		0x99500d		488b8424f0000000		MOVQ 0xf0(SP), AX								
  db.go:81		0x995015		0f10842480000000		MOVUPS 0x80(SP), X0								
  db.go:81		0x99501d		0f1100				MOVUPS X0, 0(AX)								
  db.go:81		0x995020		0f10842490000000		MOVUPS 0x90(SP), X0								
  db.go:81		0x995028		0f114010			MOVUPS X0, 0x10(AX)								
  db.go:81		0x99502c		0f108424a0000000		MOVUPS 0xa0(SP), X0								
  db.go:81		0x995034		0f114020			MOVUPS X0, 0x20(AX)								
  db.go:81		0x995038		0f108424b0000000		MOVUPS 0xb0(SP), X0								
  db.go:81		0x995040		0f114030			MOVUPS X0, 0x30(AX)								
  db.go:81		0x995044		488b151dd0b702			MOVQ CAS-Backend/pkg/logger.Log(SB), DX						
  db.go:81		0x99504b		488d1dbe2c7f00			LEAQ go:string.*+129032(SB), BX							
  db.go:81		0x995052		b91b000000			MOVL $__major_os_version__+21(SB), CX						
  db.go:81		0x995057		4889c7				MOVQ AX, DI									
  db.go:81		0x99505a		be01000000			MOVL $__minor_os_version__(SB), SI						
  db.go:81		0x99505f		4989f0				MOVQ SI, R8									
  db.go:81		0x995062		4889d0				MOVQ DX, AX									
  db.go:81		0x995065		e8b603eeff			CALL go.uber.org/zap.(*Logger).Info(SB)						
  db.go:82		0x99506a		4881c4f8000000			ADDQ $.file+171(SB), SP								
  db.go:82		0x995071		5d				POPQ BP										
  db.go:82		0x995072		c3				RET										
  db.go:46		0x995073		e86814aeff			CALL runtime.morestack_noctxt.abi0(SB)						
  db.go:46		0x995078		e9a3f8ffff			JMP CAS-Backend/biz/dao.InitDB(SB)						
  :-1			0x99507d		cc				INT $__subsystem__(SB)								
  :-1			0x99507e		cc				INT $__subsystem__(SB)								
  :-1			0x99507f		cc				INT $__subsystem__(SB)								

TEXT CAS-Backend/biz/dao.testConnection(SB) D:/CodeEnv_code/cas-backend/biz/dao/db.go
  db.go:84		0x995080		493b6610		CMPQ SP, 0x10(R14)				
  db.go:84		0x995084		7661			JBE 0x9950e7					
  db.go:84		0x995086		55			PUSHQ BP					
  db.go:84		0x995087		4889e5			MOVQ SP, BP					
  db.go:84		0x99508a		4883ec38		SUBQ $__major_os_version__+50(SB), SP		
  db.go:85		0x99508e		488d05cbda6a00		LEAQ runtime.types+383840(SB), AX		
  db.go:85		0x995095		e806c7a7ff		CALL runtime.newobject(SB)			
  db.go:85		0x99509a		4889442430		MOVQ AX, 0x30(SP)				
  db.go:87		0x99509f		488b0d9acfb702		MOVQ runtime.bss(SB), CX			
  db.go:87		0x9950a6		488d1db6ef7d00		LEAQ go:string.*+47963(SB), BX			
  db.go:87		0x9950ad		31ff			XORL DI, DI					
  db.go:87		0x9950af		31f6			XORL SI, SI					
  db.go:87		0x9950b1		4989f0			MOVQ SI, R8					
  db.go:87		0x9950b4		4889c8			MOVQ CX, AX					
  db.go:87		0x9950b7		b908000000		MOVL $__major_os_version__+2(SB), CX		
  db.go:87		0x9950bc		0f1f4000		NOPL 0(AX)					
  db.go:87		0x9950c0		e89ba7f8ff		CALL gorm.io/gorm.(*DB).Raw(SB)			
  db.go:87		0x9950c5		488d1d94336900		LEAQ runtime.types+275552(SB), BX		
  db.go:87		0x9950cc		488b4c2430		MOVQ 0x30(SP), CX				
  db.go:87		0x9950d1		e84af2f8ff		CALL gorm.io/gorm.(*DB).Scan(SB)		
  db.go:87		0x9950d6		488b4808		MOVQ 0x8(AX), CX				
  db.go:87		0x9950da		488b5810		MOVQ 0x10(AX), BX				
  db.go:87		0x9950de		4889c8			MOVQ CX, AX					
  db.go:87		0x9950e1		4883c438		ADDQ $__major_os_version__+50(SB), SP		
  db.go:87		0x9950e5		5d			POPQ BP						
  db.go:87		0x9950e6		c3			RET						
  db.go:84		0x9950e7		e8f413aeff		CALL runtime.morestack_noctxt.abi0(SB)		
  db.go:84		0x9950ec		eb92			JMP CAS-Backend/biz/dao.testConnection(SB)	
  :-1			0x9950ee		cc			INT $__subsystem__(SB)				
  :-1			0x9950ef		cc			INT $__subsystem__(SB)				
  :-1			0x9950f0		cc			INT $__subsystem__(SB)				
  :-1			0x9950f1		cc			INT $__subsystem__(SB)				
  :-1			0x9950f2		cc			INT $__subsystem__(SB)				
  :-1			0x9950f3		cc			INT $__subsystem__(SB)				
  :-1			0x9950f4		cc			INT $__subsystem__(SB)				
  :-1			0x9950f5		cc			INT $__subsystem__(SB)				
  :-1			0x9950f6		cc			INT $__subsystem__(SB)				
  :-1			0x9950f7		cc			INT $__subsystem__(SB)				
  :-1			0x9950f8		cc			INT $__subsystem__(SB)				
  :-1			0x9950f9		cc			INT $__subsystem__(SB)				
  :-1			0x9950fa		cc			INT $__subsystem__(SB)				
  :-1			0x9950fb		cc			INT $__subsystem__(SB)				
  :-1			0x9950fc		cc			INT $__subsystem__(SB)				
  :-1			0x9950fd		cc			INT $__subsystem__(SB)				
  :-1			0x9950fe		cc			INT $__subsystem__(SB)				
  :-1			0x9950ff		cc			INT $__subsystem__(SB)				

