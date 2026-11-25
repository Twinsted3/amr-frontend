/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/appdir.InitExe | VA 0x4e7660 | appdir.go:14
   DWARF parameters and results: ~r0 error
   DWARF locals: exe string, err error, resolved string */
int64_t __stdcall pkg_appdir_InitExe(int64_t arg_20h)
{
    undefined8 uVar1;
    int64_t extraout_RCX;
    undefined8 extraout_RBX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_stack_00000008);
    }
    os_Executable();
    if (extraout_RCX != 0) {
        return extraout_RCX;
    }
    path_filepath_evalSymlinks(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0);
    uVar1 = internal_filepathlite_Dir(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0);
    *(undefined8 *)0x35137f8 = extraout_RBX;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar1;
        extraout_R11[1] = *(undefined8 *)0x35137f0;
    }
    *(undefined8 *)0x35137f0 = uVar1;
    return 0;
}

/* CAS-Backend/pkg/appdir.SetRoot | VA 0x4e7700 | appdir.go:32
   DWARF parameters and results: dir string, ~r0 error
   DWARF locals: abs string, err error */
int64_t __stdcall pkg_appdir_SetRoot(int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    int64_t in_RCX;
    int64_t unaff_RBX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000040;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
        arg_10h = unaff_RBX;
    }
    uVar1 = path_filepath_abs(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    if (in_RCX == 0) {
        *(int64_t *)0x3513808 = unaff_RBX;
        if (*(int32_t *)0x355db50 != 0) {
            uVar1 = runtime_gcWriteBarrier2();
            *extraout_R11 = uVar1;
            extraout_R11[1] = *(undefined8 *)0x3513800;
        }
        *(undefined8 *)0x3513800 = uVar1;
        iVar2 = os_Chdir(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, arg_10h, in_stack_00000040);
        return iVar2;
    }
    return in_RCX;
}

/* CAS-Backend/pkg/appdir.RootDir | VA 0x4e7780 | appdir.go:42
   DWARF parameters and results: ~r0 string
   DWARF locals: wd string */
undefined8 pkg_appdir_RootDir(void)
{
    undefined8 uVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_stack_00000008);
    }
    if (*(int64_t *)0x3513808 == 0) {
        if (*(int64_t *)0x35137f8 != 0) {
            return *(undefined8 *)0x35137f0;
        }
        uVar1 = syscall_Getwd();
        return uVar1;
    }
    return *(undefined8 *)0x3513800;
}

/* CAS-Backend/pkg/appdir.Resolve | VA 0x4e77e0 | appdir.go:59
   DWARF parameters and results: p string, ~r0 string
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h
// WARNING: [rz-ghidra] Detected overlap for variable var_f1h
// WARNING: [rz-ghidra] Detected overlap for variable var_f0h
// WARNING: [rz-ghidra] Detected overlap for variable var_80h

undefined8 __stdcall pkg_appdir_Resolve(int64_t arg_8h, int64_t arg_10h, int64_t arg_50h, int64_t arg_58h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 uVar2;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000030;
    int64_t in_stack_00000048;
    int64_t in_stack_00000078;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    if (unaff_RBX != 0) {
        cVar1 = internal_filepathlite_IsAbs(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, var_18h);
        if (cVar1 != '\0') {
            uVar2 = internal_filepathlite_Clean(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_00000078);
            return uVar2;
        }
        pkg_appdir_RootDir();
        path_filepath_join(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, in_stack_00000030
                     , in_stack_00000048);
        uVar2 = internal_filepathlite_Clean(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_00000078);
        return uVar2;
    }
    return 0;
}
