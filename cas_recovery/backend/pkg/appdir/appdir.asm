TEXT CAS-Backend/pkg/appdir.InitExe(SB) D:/CodeEnv_code/cas-backend/pkg/appdir/appdir.go
  appdir.go:14		0x4e7660		493b6610		CMPQ SP, 0x10(R14)				
  appdir.go:14		0x4e7664		767f			JBE 0x4e76e5					
  appdir.go:14		0x4e7666		55			PUSHQ BP					
  appdir.go:14		0x4e7667		4889e5			MOVQ SP, BP					
  appdir.go:14		0x4e766a		4883ec20		SUBQ $__major_os_version__+26(SB), SP		
  appdir.go:15		0x4e766e		e8ed63feff		CALL os.Executable(SB)				
  appdir.go:16		0x4e7673		4885c9			TESTQ CX, CX					
  appdir.go:16		0x4e7676		7561			JNE 0x4e76d9					
  appdir.go:15		0x4e7678		4889442418		MOVQ AX, 0x18(SP)				
  appdir.go:15		0x4e767d		48895c2410		MOVQ BX, 0x10(SP)				
  path.go:148		0x4e7682		e8b9e1ffff		CALL path/filepath.evalSymlinks(SB)		
  appdir.go:19		0x4e7687		4885c9			TESTQ CX, CX					
  appdir.go:22		0x4e768a		488b4c2410		MOVQ 0x10(SP), CX				
  appdir.go:22		0x4e768f		480f45d9		CMOVNE CX, BX					
  appdir.go:22		0x4e7693		488b4c2418		MOVQ 0x18(SP), CX				
  appdir.go:22		0x4e7698		480f45c1		CMOVNE CX, AX					
  path.go:466		0x4e769c		0f1f4000		NOPL 0(AX)					
  path.go:466		0x4e76a0		e8fb43fdff		CALL internal/filepathlite.Dir(SB)		
  appdir.go:22		0x4e76a5		48891d4cc10203		MOVQ BX, CAS-Backend/pkg/appdir.exeDir+8(SB)	
  appdir.go:22		0x4e76ac		833d9d64070300		CMPL runtime.writeBarrier(SB), $0x0		
  appdir.go:22		0x4e76b3		7413			JE 0x4e76c8					
  appdir.go:22		0x4e76b5		e8860df9ff		CALL runtime.gcWriteBarrier2(SB)		
  appdir.go:22		0x4e76ba		498903			MOVQ AX, 0(R11)					
  appdir.go:22		0x4e76bd		488b0d2cc10203		MOVQ CAS-Backend/pkg/appdir.exeDir(SB), CX	
  appdir.go:22		0x4e76c4		49894b08		MOVQ CX, 0x8(R11)				
  appdir.go:22		0x4e76c8		48890521c10203		MOVQ AX, CAS-Backend/pkg/appdir.exeDir(SB)	
  appdir.go:23		0x4e76cf		31c0			XORL AX, AX					
  appdir.go:23		0x4e76d1		31db			XORL BX, BX					
  appdir.go:19		0x4e76d3		4883c420		ADDQ $__major_os_version__+26(SB), SP		
  appdir.go:19		0x4e76d7		5d			POPQ BP						
  appdir.go:19		0x4e76d8		c3			RET						
  appdir.go:17		0x4e76d9		4889c8			MOVQ CX, AX					
  appdir.go:17		0x4e76dc		4889fb			MOVQ DI, BX					
  appdir.go:17		0x4e76df		4883c420		ADDQ $__major_os_version__+26(SB), SP		
  appdir.go:17		0x4e76e3		5d			POPQ BP						
  appdir.go:17		0x4e76e4		c3			RET						
  appdir.go:14		0x4e76e5		e8f6edf8ff		CALL runtime.morestack_noctxt.abi0(SB)		
  appdir.go:14		0x4e76ea		e971ffffff		JMP CAS-Backend/pkg/appdir.InitExe(SB)		
  :-1			0x4e76ef		cc			INT $__subsystem__(SB)				
  :-1			0x4e76f0		cc			INT $__subsystem__(SB)				
  :-1			0x4e76f1		cc			INT $__subsystem__(SB)				
  :-1			0x4e76f2		cc			INT $__subsystem__(SB)				
  :-1			0x4e76f3		cc			INT $__subsystem__(SB)				
  :-1			0x4e76f4		cc			INT $__subsystem__(SB)				
  :-1			0x4e76f5		cc			INT $__subsystem__(SB)				
  :-1			0x4e76f6		cc			INT $__subsystem__(SB)				
  :-1			0x4e76f7		cc			INT $__subsystem__(SB)				
  :-1			0x4e76f8		cc			INT $__subsystem__(SB)				
  :-1			0x4e76f9		cc			INT $__subsystem__(SB)				
  :-1			0x4e76fa		cc			INT $__subsystem__(SB)				
  :-1			0x4e76fb		cc			INT $__subsystem__(SB)				
  :-1			0x4e76fc		cc			INT $__subsystem__(SB)				
  :-1			0x4e76fd		cc			INT $__subsystem__(SB)				
  :-1			0x4e76fe		cc			INT $__subsystem__(SB)				
  :-1			0x4e76ff		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/pkg/appdir.SetRoot(SB) D:/CodeEnv_code/cas-backend/pkg/appdir/appdir.go
  appdir.go:32		0x4e7700		493b6610		CMPQ SP, 0x10(R14)				
  appdir.go:32		0x4e7704		7659			JBE 0x4e775f					
  appdir.go:32		0x4e7706		55			PUSHQ BP					
  appdir.go:32		0x4e7707		4889e5			MOVQ SP, BP					
  appdir.go:32		0x4e770a		4883ec10		SUBQ $__major_os_version__+10(SB), SP		
  appdir.go:32		0x4e770e		4889442420		MOVQ AX, 0x20(SP)				
  appdir.go:33		0x4e7713		90			NOPL						
  path.go:162		0x4e7714		e8e7cfffff		CALL path/filepath.abs(SB)			
  appdir.go:34		0x4e7719		4885c9			TESTQ CX, CX					
  appdir.go:34		0x4e771c		7535			JNE 0x4e7753					
  appdir.go:37		0x4e771e		48891de3c00203		MOVQ BX, CAS-Backend/pkg/appdir.rootDir+8(SB)	
  appdir.go:37		0x4e7725		833d2464070300		CMPL runtime.writeBarrier(SB), $0x0		
  appdir.go:37		0x4e772c		7413			JE 0x4e7741					
  appdir.go:37		0x4e772e		e80d0df9ff		CALL runtime.gcWriteBarrier2(SB)		
  appdir.go:37		0x4e7733		498903			MOVQ AX, 0(R11)					
  appdir.go:37		0x4e7736		488b0dc3c00203		MOVQ CAS-Backend/pkg/appdir.rootDir(SB), CX	
  appdir.go:37		0x4e773d		49894b08		MOVQ CX, 0x8(R11)				
  appdir.go:37		0x4e7741		488905b8c00203		MOVQ AX, CAS-Backend/pkg/appdir.rootDir(SB)	
  appdir.go:38		0x4e7748		e83371feff		CALL os.Chdir(SB)				
  appdir.go:38		0x4e774d		4883c410		ADDQ $__major_os_version__+10(SB), SP		
  appdir.go:38		0x4e7751		5d			POPQ BP						
  appdir.go:38		0x4e7752		c3			RET						
  appdir.go:35		0x4e7753		4889c8			MOVQ CX, AX					
  appdir.go:35		0x4e7756		4889fb			MOVQ DI, BX					
  appdir.go:35		0x4e7759		4883c410		ADDQ $__major_os_version__+10(SB), SP		
  appdir.go:35		0x4e775d		5d			POPQ BP						
  appdir.go:35		0x4e775e		c3			RET						
  appdir.go:32		0x4e775f		4889442408		MOVQ AX, 0x8(SP)				
  appdir.go:32		0x4e7764		48895c2410		MOVQ BX, 0x10(SP)				
  appdir.go:32		0x4e7769		e872edf8ff		CALL runtime.morestack_noctxt.abi0(SB)		
  appdir.go:32		0x4e776e		488b442408		MOVQ 0x8(SP), AX				
  appdir.go:32		0x4e7773		488b5c2410		MOVQ 0x10(SP), BX				
  appdir.go:32		0x4e7778		eb86			JMP CAS-Backend/pkg/appdir.SetRoot(SB)		
  :-1			0x4e777a		cc			INT $__subsystem__(SB)				
  :-1			0x4e777b		cc			INT $__subsystem__(SB)				
  :-1			0x4e777c		cc			INT $__subsystem__(SB)				
  :-1			0x4e777d		cc			INT $__subsystem__(SB)				
  :-1			0x4e777e		cc			INT $__subsystem__(SB)				
  :-1			0x4e777f		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/pkg/appdir.RootDir(SB) D:/CodeEnv_code/cas-backend/pkg/appdir/appdir.go
  appdir.go:42		0x4e7780		493b6610		CMPQ SP, 0x10(R14)				
  appdir.go:42		0x4e7784		7639			JBE 0x4e77bf					
  appdir.go:42		0x4e7786		55			PUSHQ BP					
  appdir.go:42		0x4e7787		4889e5			MOVQ SP, BP					
  appdir.go:43		0x4e778a		488b1d77c00203		MOVQ CAS-Backend/pkg/appdir.rootDir+8(SB), BX	
  appdir.go:43		0x4e7791		4885db			TESTQ BX, BX					
  appdir.go:43		0x4e7794		7520			JNE 0x4e77b6					
  appdir.go:46		0x4e7796		488b1d5bc00203		MOVQ CAS-Backend/pkg/appdir.exeDir+8(SB), BX	
  appdir.go:46		0x4e779d		0f1f00			NOPL 0(AX)					
  appdir.go:46		0x4e77a0		4885db			TESTQ BX, BX					
  appdir.go:46		0x4e77a3		7409			JE 0x4e77ae					
  appdir.go:46		0x4e77a5		488b0544c00203		MOVQ CAS-Backend/pkg/appdir.exeDir(SB), AX	
  appdir.go:47		0x4e77ac		5d			POPQ BP						
  appdir.go:47		0x4e77ad		c3			RET						
  appdir.go:49		0x4e77ae		90			NOPL						
  getwd.go:24		0x4e77af		e86ca6faff		CALL syscall.Getwd(SB)				
  appdir.go:50		0x4e77b4		5d			POPQ BP						
  appdir.go:50		0x4e77b5		c3			RET						
  appdir.go:43		0x4e77b6		488b0543c00203		MOVQ CAS-Backend/pkg/appdir.rootDir(SB), AX	
  appdir.go:44		0x4e77bd		5d			POPQ BP						
  appdir.go:44		0x4e77be		c3			RET						
  appdir.go:42		0x4e77bf		90			NOPL						
  appdir.go:42		0x4e77c0		e81bedf8ff		CALL runtime.morestack_noctxt.abi0(SB)		
  appdir.go:42		0x4e77c5		ebb9			JMP CAS-Backend/pkg/appdir.RootDir(SB)		
  :-1			0x4e77c7		cc			INT $__subsystem__(SB)				
  :-1			0x4e77c8		cc			INT $__subsystem__(SB)				
  :-1			0x4e77c9		cc			INT $__subsystem__(SB)				
  :-1			0x4e77ca		cc			INT $__subsystem__(SB)				
  :-1			0x4e77cb		cc			INT $__subsystem__(SB)				
  :-1			0x4e77cc		cc			INT $__subsystem__(SB)				
  :-1			0x4e77cd		cc			INT $__subsystem__(SB)				
  :-1			0x4e77ce		cc			INT $__subsystem__(SB)				
  :-1			0x4e77cf		cc			INT $__subsystem__(SB)				
  :-1			0x4e77d0		cc			INT $__subsystem__(SB)				
  :-1			0x4e77d1		cc			INT $__subsystem__(SB)				
  :-1			0x4e77d2		cc			INT $__subsystem__(SB)				
  :-1			0x4e77d3		cc			INT $__subsystem__(SB)				
  :-1			0x4e77d4		cc			INT $__subsystem__(SB)				
  :-1			0x4e77d5		cc			INT $__subsystem__(SB)				
  :-1			0x4e77d6		cc			INT $__subsystem__(SB)				
  :-1			0x4e77d7		cc			INT $__subsystem__(SB)				
  :-1			0x4e77d8		cc			INT $__subsystem__(SB)				
  :-1			0x4e77d9		cc			INT $__subsystem__(SB)				
  :-1			0x4e77da		cc			INT $__subsystem__(SB)				
  :-1			0x4e77db		cc			INT $__subsystem__(SB)				
  :-1			0x4e77dc		cc			INT $__subsystem__(SB)				
  :-1			0x4e77dd		cc			INT $__subsystem__(SB)				
  :-1			0x4e77de		cc			INT $__subsystem__(SB)				
  :-1			0x4e77df		cc			INT $__subsystem__(SB)				

TEXT CAS-Backend/pkg/appdir.Resolve(SB) D:/CodeEnv_code/cas-backend/pkg/appdir/appdir.go
  appdir.go:59		0x4e77e0		493b6610		CMPQ SP, 0x10(R14)			
  appdir.go:59		0x4e77e4		0f8690000000		JBE 0x4e787a				
  appdir.go:59		0x4e77ea		55			PUSHQ BP				
  appdir.go:59		0x4e77eb		4889e5			MOVQ SP, BP				
  appdir.go:59		0x4e77ee		4883ec38		SUBQ $__major_os_version__+50(SB), SP	
  appdir.go:59		0x4e77f2		4889442448		MOVQ AX, 0x48(SP)			
  appdir.go:60		0x4e77f7		4885db			TESTQ BX, BX				
  appdir.go:60		0x4e77fa		7474			JE 0x4e7870				
  appdir.go:60		0x4e77fc		48895c2450		MOVQ BX, 0x50(SP)			
  appdir.go:60		0x4e7801		4889442448		MOVQ AX, 0x48(SP)			
  path.go:153		0x4e7806		e85549fdff		CALL internal/filepathlite.IsAbs(SB)	
  path.go:153		0x4e780b		84c0			TESTL AL, AL				
  appdir.go:63		0x4e780d		7415			JE 0x4e7824				
  path.go:56		0x4e780f		488b442448		MOVQ 0x48(SP), AX			
  path.go:56		0x4e7814		488b5c2450		MOVQ 0x50(SP), BX			
  path.go:56		0x4e7819		e8c232fdff		CALL internal/filepathlite.Clean(SB)	
  appdir.go:64		0x4e781e		4883c438		ADDQ $__major_os_version__+50(SB), SP	
  appdir.go:64		0x4e7822		5d			POPQ BP					
  appdir.go:64		0x4e7823		c3			RET					
  appdir.go:66		0x4e7824		e857ffffff		CALL CAS-Backend/pkg/appdir.RootDir(SB)	
  appdir.go:66		0x4e7829		440f117c2418		MOVUPS X15, 0x18(SP)			
  appdir.go:66		0x4e782f		440f117c2428		MOVUPS X15, 0x28(SP)			
  appdir.go:66		0x4e7835		48895c2420		MOVQ BX, 0x20(SP)			
  appdir.go:66		0x4e783a		4889442418		MOVQ AX, 0x18(SP)			
  appdir.go:66		0x4e783f		488b442450		MOVQ 0x50(SP), AX			
  appdir.go:66		0x4e7844		4889442430		MOVQ AX, 0x30(SP)			
  appdir.go:66		0x4e7849		488b442448		MOVQ 0x48(SP), AX			
  appdir.go:66		0x4e784e		4889442428		MOVQ AX, 0x28(SP)			
  path.go:131		0x4e7853		488d442418		LEAQ 0x18(SP), AX			
  path.go:131		0x4e7858		bb02000000		MOVL $__minor_os_version__+1(SB), BX	
  path.go:131		0x4e785d		4889d9			MOVQ BX, CX				
  path.go:131		0x4e7860		e81bcfffff		CALL path/filepath.join(SB)		
  path.go:56		0x4e7865		e87632fdff		CALL internal/filepathlite.Clean(SB)	
  appdir.go:66		0x4e786a		4883c438		ADDQ $__major_os_version__+50(SB), SP	
  appdir.go:66		0x4e786e		5d			POPQ BP					
  appdir.go:66		0x4e786f		c3			RET					
  appdir.go:61		0x4e7870		31c0			XORL AX, AX				
  appdir.go:61		0x4e7872		31db			XORL BX, BX				
  appdir.go:61		0x4e7874		4883c438		ADDQ $__major_os_version__+50(SB), SP	
  appdir.go:61		0x4e7878		5d			POPQ BP					
  appdir.go:61		0x4e7879		c3			RET					
  appdir.go:59		0x4e787a		4889442408		MOVQ AX, 0x8(SP)			
  appdir.go:59		0x4e787f		48895c2410		MOVQ BX, 0x10(SP)			
  appdir.go:59		0x4e7884		e857ecf8ff		CALL runtime.morestack_noctxt.abi0(SB)	
  appdir.go:59		0x4e7889		488b442408		MOVQ 0x8(SP), AX			
  appdir.go:59		0x4e788e		488b5c2410		MOVQ 0x10(SP), BX			
  appdir.go:59		0x4e7893		e948ffffff		JMP CAS-Backend/pkg/appdir.Resolve(SB)	
  :-1			0x4e7898		cc			INT $__subsystem__(SB)			
  :-1			0x4e7899		cc			INT $__subsystem__(SB)			
  :-1			0x4e789a		cc			INT $__subsystem__(SB)			
  :-1			0x4e789b		cc			INT $__subsystem__(SB)			
  :-1			0x4e789c		cc			INT $__subsystem__(SB)			
  :-1			0x4e789d		cc			INT $__subsystem__(SB)			
  :-1			0x4e789e		cc			INT $__subsystem__(SB)			
  :-1			0x4e789f		cc			INT $__subsystem__(SB)			

