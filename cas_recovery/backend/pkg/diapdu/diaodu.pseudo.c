/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.ConfigureDiaodu | VA 0xe233a0 | diaodu.go:46
   DWARF parameters and results: vehicleHost string, mapFileDir string
   DWARF locals: (no entries) */
void __stdcall
pkg_diapdu_ConfigureDiaodu
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t iVar2;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t unaff_RBX;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffffa0;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    iVar2 = *(int64_t *)0xfb5e00;
    if ((unaff_RBX != 0) && (iVar2 = in_RAX, *(int64_t *)0xfb5e08 = unaff_RBX, *(int32_t *)0x355db50 != 0)) {
        iVar2 = runtime_gcWriteBarrier2();
        *extraout_R11 = iVar2;
        extraout_R11[1] = *(int64_t *)0xfb5e00;
        arg4 = extraout_RCX;
        arg1 = extraout_RDI;
    }
    *(int64_t *)0xfb5e00 = iVar2;
    iVar2 = *(int64_t *)0xfb5e10;
    if (arg1 != 0) {
        *(int64_t *)0xfb5e18 = arg1;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11_00 = extraout_RCX_00;
            extraout_R11_00[1] = *(int64_t *)0xfb5e10;
            arg4 = extraout_RCX_00;
            arg1 = extraout_RDI_00;
        }
        if (((arg1 == 0) ||
            ((cVar1 = *(char *)(arg1 + -1 + arg4), iVar2 = arg4, cVar1 != '/' && (iVar2 = arg4, cVar1 != '\\')))) &&
           (*(int64_t *)0xfb5e10 = arg4,
           iVar2 = runtime_concatstring2(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                                in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0), *(int64_t *)0xfb5e18 = arg4,
           *(int32_t *)0x355db50 != 0)) {
            iVar2 = runtime_gcWriteBarrier2();
            *extraout_R11_01 = iVar2;
            extraout_R11_01[1] = *(int64_t *)0xfb5e10;
        }
    }
    *(int64_t *)0xfb5e10 = iVar2;
    var_20h = runtime_convTstring(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffc8);
    var_28h = 0x1042920;
    var_10h = runtime_convTstring(in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffc8);
    var_18h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a2e03 /* "[diaodu] 车辆连接地址 vehicle_host=%s map_file_dir=%s\n" */, 0x3c, &var_28h, 2, 2);
    return;
}

/* CAS-Backend/pkg/diapdu.setActiveMap | VA 0xe23540 | diaodu.go:68
   DWARF parameters and results: name string, path string
   DWARF locals: (no entries) */
void __stdcall
pkg_diapdu_setActiveMap
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h)
{
    int64_t in_RAX;
    undefined8 unaff_RBX;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    sync___RWMutex__Lock(0x355db80);
    *(undefined8 *)0x3513818 = unaff_RBX;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier4();
        *extraout_R11 = in_RAX;
        extraout_R11[1] = *(int64_t *)0x3513810;
        extraout_R11[2] = arg4;
        extraout_R11[3] = *(int64_t *)0x3513820;
    }
    *(int64_t *)0x3513810 = in_RAX;
    *(int64_t *)0x3513820 = arg4;
    *(int64_t *)0x3513828 = arg1;
    sync___RWMutex__Unlock(0x355db80);
    return;
}

/* CAS-Backend/pkg/diapdu.GetActiveMapInfo | VA 0xe23620 | diaodu.go:76
   DWARF parameters and results: ~r0 CAS-Backend/pkg/diapdu.ActiveMapInfo, ~r0 CAS-Backend/pkg/diapdu.ActiveMapInfo
   DWARF locals: ready bool */
// WARNING: Restarted to delay deadcode elimination for space: stack
// WARNING: [rz-ghidra] Detected overlap for variable var_48h

bool pkg_diapdu_GetActiveMapInfo(void)
{
    int32_t iVar1;
    int32_t iVar2;
    int64_t unaff_R14;
    bool bVar3;
    bool bVar4;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t var_49h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_stack_00000008);
    }
    LOCK();
    iVar1 = *(int32_t *)0x355db90 + 1;
    UNLOCK();
    iVar2 = *(int32_t *)0x355db90 + 1;
    *(int32_t *)0x355db90 = iVar1;
    if (iVar2 < 0) {
        sync_runtime_SemacquireRWMutexR(0x355db8c, 0, 0);
    }
    var_20h = 0xe23760;
    var_18h = 0x355db80;
    var_10h = (int64_t)&var_20h;
    bVar3 = *(int32_t *)0x355d300 != 0;
    bVar4 = *(int64_t *)0x3513828 != 0;
    (*(code *)0xe23760)();
    return bVar3 && bVar4;
}

/* CAS-Backend/pkg/diapdu.GetActiveMapInfo.deferwrap1 | VA 0xe23760 | diaodu.go:78
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu_GetActiveMapInfo_deferwrap1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t *piVar1;
    int32_t iVar2;
    int64_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar3 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar3 != (int64_t *)0x0) && ((int64_t *)*piVar3 == &arg_8h)) {
        *piVar3 = (int64_t)&var_18h;
    }
    LOCK();
    piVar1 = (int32_t *)(*(int64_t *)(arg3 + 8) + 0x10);
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if ((int32_t)(iVar2 + -1) < 0) {
        sync___RWMutex__rUnlockSlow(var_18h, in_stack_fffffffffffffff0);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.ReadActiveMapFile | VA 0xe237c0 | diaodu.go:88
   DWARF parameters and results: ~r0 []uint8, ~r1 error
   DWARF locals: path string */
undefined8 __stdcall pkg_diapdu_ReadActiveMapFile(int64_t arg_38h)
{
    int32_t iVar1;
    int64_t iVar2;
    undefined8 uVar3;
    int32_t iVar4;
    int64_t unaff_R14;
    int64_t in_stack_00000040;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    LOCK();
    iVar1 = *(int32_t *)0x355db90 + 1;
    UNLOCK();
    iVar4 = *(int32_t *)0x355db90 + 1;
    *(int32_t *)0x355db90 = iVar1;
    if (iVar4 < 0) {
        sync_runtime_SemacquireRWMutexR(0x355db8c, 0, 0);
    }
    iVar2 = *(int64_t *)0x3513828;
    uVar3 = *(undefined8 *)0x3513820;
    LOCK();
    iVar1 = *(int32_t *)0x355db90 + -1;
    UNLOCK();
    iVar4 = *(int32_t *)0x355db90 + -1;
    *(int32_t *)0x355db90 = iVar1;
    if (iVar4 < 0) {
        sync___RWMutex__rUnlockSlow(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8);
    }
    if (iVar2 == 0) {
        fmt_Errorf(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                     in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_00000040);
        return 0;
    }
    uVar3 = os_ReadFile(uVar3);
    return uVar3;
}

/* CAS-Backend/pkg/diapdu.Initdiaodu | VA 0xe238a0 | diaodu.go:99
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
void pkg_diapdu_Initdiaodu
               (undefined8 param_1, undefined8 param_2, undefined8 param_3, undefined8 param_4, undefined8 param_5,
               undefined8 param_6)
{
    int64_t unaff_R14;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    runtime_newobject(in_stack_ffffffffffffffd8);
    pkg_diapdu_setGraph(in_stack_ffffffffffffffd8, in_stack_fffffffffffffff0);
    LOCK();
    *(undefined4 *)0x355d300 = 0;
    UNLOCK();
    pkg_diapdu_setActiveMap
              (0, param_2, param_3, 0, param_5, param_6, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
               in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    runtime_newproc(in_stack_ffffffffffffffd8);
    return;
}

/* CAS-Backend/pkg/diapdu.GetGraph | VA 0xe23900 | diaodu.go:112
   DWARF parameters and results: ~r0 *CAS-Backend/pkg/diapdu.Graph, ~r0 *CAS-Backend/pkg/diapdu.Graph
   DWARF locals: (no entries) */
// WARNING: Restarted to delay deadcode elimination for space: stack
// WARNING: [rz-ghidra] Detected overlap for variable var_28h

undefined8 pkg_diapdu_GetGraph(undefined8 param_1, undefined8 param_2)
{
    int32_t iVar1;
    undefined8 uVar2;
    undefined8 extraout_RBX;
    int32_t iVar3;
    int64_t unaff_R14;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t var_29h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
        param_2 = extraout_RBX;
    }
    LOCK();
    iVar1 = *(int32_t *)0x355db70 + 1;
    UNLOCK();
    iVar3 = *(int32_t *)0x355db70 + 1;
    *(int32_t *)0x355db70 = iVar1;
    if (iVar3 < 0) {
        param_2 = 0;
        sync_runtime_SemacquireRWMutexR(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8);
    }
    uVar2 = *(undefined8 *)0x3512048;
    var_20h = 0xe239c0;
    var_18h = 0x355db60;
    var_10h = (int64_t)&var_20h;
    (*(code *)0xe239c0)(0xe239c0, param_2);
    return uVar2;
}

/* CAS-Backend/pkg/diapdu.GetGraph.deferwrap1 | VA 0xe239c0 | diaodu.go:114
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu_GetGraph_deferwrap1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t *piVar1;
    int32_t iVar2;
    int64_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar3 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar3 != (int64_t *)0x0) && ((int64_t *)*piVar3 == &arg_8h)) {
        *piVar3 = (int64_t)&var_18h;
    }
    LOCK();
    piVar1 = (int32_t *)(*(int64_t *)(arg3 + 8) + 0x10);
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if ((int32_t)(iVar2 + -1) < 0) {
        sync___RWMutex__rUnlockSlow(var_18h, in_stack_fffffffffffffff0);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.setGraph | VA 0xe23a20 | diaodu.go:118
   DWARF parameters and results: g *CAS-Backend/pkg/diapdu.Graph
   DWARF locals: (no entries) */
void __stdcall pkg_diapdu_setGraph(int64_t arg_8h, int64_t arg_20h)
{
    undefined8 in_RAX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    sync___RWMutex__Lock(0x355db60);
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = in_RAX;
        extraout_R11[1] = *(undefined8 *)0x3512048;
    }
    *(undefined8 *)0x3512048 = in_RAX;
    sync___RWMutex__Unlock(0x355db60);
    return;
}

/* CAS-Backend/pkg/diapdu.resolveLocalMapFilePath | VA 0xe23aa0 | diaodu.go:125
   DWARF parameters and results: mapName string, filePath string, name string, path string
   DWARF locals: ~r0.ptr *uint8, ~r0.len int, base string */
undefined  [16] __stdcall
pkg_diapdu_resolveLocalMapFilePath
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_58h,
          int64_t arg_68h, int64_t arg_90h)
{
    undefined auVar1 [16];
    char cVar2;
    undefined8 in_RAX;
    undefined8 uVar3;
    undefined8 uVar4;
    undefined8 extraout_RAX;
    uint64_t uVar5;
    int64_t extraout_RCX;
    uint64_t in_RDX;
    undefined8 unaff_RBX;
    int64_t iVar8;
    uint64_t extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined *puVar9;
    undefined *unaff_RBP;
    undefined *puVar10;
    int64_t extraout_RDI;
    int64_t iVar11;
    int64_t unaff_R14;
    bool bVar12;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar13 [16];
    undefined auVar14 [16];
    undefined auVar15 [16];
    undefined auVar16 [16];
    int64_t var_a8h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_68h;
    int64_t var_60h;
    int64_t var_58h;
    int64_t var_50h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t iVar6;
    uint64_t uVar7;
    
    do {
        puVar9 = (undefined *)*(undefined **)0x20;
        puVar10 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x30)) {
            puVar10 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar9 = (undefined *)((int64_t)*(undefined **)0x20 + -0xb0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe23ad7;
            auVar13 = strings_TrimSpace();
            iVar6 = auVar13._8_8_;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38) = auVar13._0_8_;
            if (iVar6 < 5) {
                cVar2 = '\0';
            } else {
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x58) = iVar6;
                in_RDX = (iVar6 + auVar13._0_8_) - 5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe23b0b;
                cVar2 = runtime_memequal(in_RDX, 0x116a5c6 /* ".smap" */, 5);
                auVar13._8_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x58);
                auVar13._0_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38);
            }
            uVar5 = auVar13._8_8_;
            if ((cVar2 == '\0') || (bVar12 = uVar5 - 5 <= uVar5, uVar5 = uVar5 - 5, bVar12)) {
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x60) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe23b47;
                auVar13 = strings_TrimSpace(*(undefined8 *)((int64_t)*(undefined **)0x20 + 0x18), 
                                          *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20));
                uVar4 = *(undefined8 *)0xfb5e18;
                uVar3 = auVar13._0_8_;
                if (auVar13._8_8_ == 0) {
                    if (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60) == 0) {
                        auVar1._8_8_ = 0;
                        auVar1._0_8_ = in_RDX;
                        return auVar1 << 0x40;
                    }
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = *(undefined8 *)0xfb5e18;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = *(undefined8 *)0xfb5e10;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe23bd5;
                    auVar13 = runtime_concatstring2((undefined *)((int64_t)*(undefined **)0x20 + -0x88), 
                                              *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38), 
                                              *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60), 0x116a5c6 /* ".smap" */, 5);
                    *(undefined (*) [16])((int64_t)*(undefined **)0x20 + -0x18) = auVar13;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe23bfa;
                    path_filepath_join((undefined *)((int64_t)*(undefined **)0x20 + -0x28), 2, 2);
                    auVar15._8_8_ = uVar4;
                    auVar15._0_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38);
                    return auVar15;
                }
                if (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x60) != 0) {
                    uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38);
                    goto code_r0x00e23c26;
                }
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50) = auVar13._8_8_;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = uVar3;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe23b69;
                auVar14 = internal_filepathlite_Base();
                uVar7 = auVar14._8_8_;
                iVar6 = auVar14._0_8_;
                uVar5 = uVar7;
                do {
                    uVar5 = uVar5 - 1;
                    if ((((int64_t)uVar5 < 0) || (cVar2 = *(char *)(iVar6 + uVar5), cVar2 == '\\')) || (cVar2 == '/')) {
                        iVar8 = 0;
                        iVar11 = 0;
                        goto code_r0x00e23c80;
                    }
                } while (cVar2 != '.');
                iVar8 = uVar7 - uVar5;
                iVar11 = (uVar5 & -iVar8 >> 0x3f) + iVar6;
code_r0x00e23c80:
                if ((int64_t)uVar7 < iVar8) {
                    cVar2 = '\0';
code_r0x00e23ce7:
                    uVar4 = auVar14._0_8_;
                    if ((cVar2 == '\0') || (auVar14._8_8_ - iVar8 <= auVar14._8_8_)) {
                        uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30);
code_r0x00e23c26:
                        auVar16._8_8_ = uVar3;
                        auVar16._0_8_ = uVar4;
                        return auVar16;
                    }
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe23d18;
                    runtime_panicSliceAlen();
                    uVar5 = extraout_RBX;
                } else {
                    uVar5 = uVar7 - iVar8;
                    if (uVar5 <= uVar7) {
                        if (iVar8 == uVar7 - uVar5) {
                            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x48) = uVar7;
                            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40) = iVar6;
                            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68) = iVar8;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe23ccd;
                            cVar2 = runtime_memequal(((int64_t)-(uVar7 - uVar5) >> 0x3f & uVar5) + iVar6, iVar11);
                            iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x68);
                            auVar14._8_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x48);
                            auVar14._0_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40);
                        } else {
                            cVar2 = '\0';
                        }
                        goto code_r0x00e23ce7;
                    }
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe23d25;
                auVar13 = runtime_panicSliceB(uVar5);
            }
            in_RDX = auVar13._8_8_;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xb8) = 0xe23d2d;
            runtime_panicSliceAlen(auVar13._0_8_);
            in_RAX = extraout_RAX;
            arg4 = extraout_RCX;
            unaff_RBX = extraout_RBX_00;
            arg1 = extraout_RDI;
        }
        *(undefined8 *)(puVar9 + 8) = in_RAX;
        *(undefined8 *)(puVar9 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar9 + 0x18) = arg4;
        *(int64_t *)(puVar9 + 0x20) = arg1;
        *(undefined8 *)(puVar9 + -8) = 0xe23d47;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar9 + 8);
        unaff_RBX = *(undefined8 *)(puVar9 + 0x10);
        arg4 = *(int64_t *)(puVar9 + 0x18);
        arg1 = *(int64_t *)(puVar9 + 0x20);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar9;
        unaff_RBP = puVar10;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.ReloadActiveMapFromLocalFile | VA 0xe23d80 | diaodu.go:142
   DWARF parameters and results: mapName string, filePath string, ~r0 error
   DWARF locals: graph *CAS-Backend/pkg/diapdu.Graph, name string, path string, err error */
// WARNING: Variable defined which should be unmapped: var_98h
// WARNING: Variable defined which should be unmapped: var_88h
// WARNING: Variable defined which should be unmapped: var_60h
// WARNING: Variable defined which should be unmapped: var_68h

int64_t __stdcall
pkg_diapdu_ReloadActiveMapFromLocalFile
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_48h,
          int64_t arg_50h)
{
    int64_t in_RAX;
    int64_t iVar1;
    int64_t unaff_R14;
    undefined8 in_XMM1_Qa;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff18;
    int64_t in_stack_ffffffffffffff20;
    int64_t in_stack_ffffffffffffff28;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t var_b0h;
    int64_t var_a8h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_60h;
    int64_t var_58h;
    int64_t var_50h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&var_68h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    pkg_diapdu_resolveLocalMapFilePath
              (arg1, in_XMM1_Qa, placeholder_2, arg4, placeholder_4, placeholder_5, in_stack_ffffffffffffff18, 
               in_stack_ffffffffffffff20, in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, var_98h, var_88h, 
               var_60h);
    if (arg1 == 0) {
        iVar1 = fmt_Errorf(in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, in_stack_ffffffffffffff28, 
                             in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, var_68h);
        return iVar1;
    }
    iVar1 = arg1;
    os_Stat(in_stack_ffffffffffffff18, in_stack_ffffffffffffff20);
    if (arg4 != 0) {
        var_20h = runtime_convTstring(in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, in_stack_ffffffffffffff40);
        var_28h = 0x1042920;
        var_18h = 0;
        if (arg4 != 0) {
            var_18h = *(int64_t *)(arg4 + 8);
        }
        var_10h = iVar1;
        iVar1 = fmt_Errorf(in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, in_stack_ffffffffffffff28, 
                             in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, var_68h);
        return iVar1;
    }
    pkg_diapdu_BuildGraphFromFile(in_stack_ffffffffffffff18, in_stack_ffffffffffffff20);
    if (arg1 != 0) {
        return arg1;
    }
    pkg_diapdu_setGraph(in_stack_ffffffffffffff18, in_stack_ffffffffffffff30);
    pkg_diapdu_setActiveMap(in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, in_stack_ffffffffffffff28, 
                 in_stack_ffffffffffffff30);
    LOCK();
    *(undefined4 *)0x355d300 = 1;
    UNLOCK();
    var_60h = runtime_convTstring(in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, in_stack_ffffffffffffff40);
    var_68h = 0x1042920;
    var_50h = runtime_convTstring(in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, in_stack_ffffffffffffff40);
    var_58h = 0x1042920;
    var_40h = runtime_convT64(in_stack_ffffffffffffff18);
    var_48h = 0x1042b60;
    var_30h = runtime_convT64(in_stack_ffffffffffffff18);
    var_38h = 0x1042b60;
    fmt_Fprintf(in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, in_stack_ffffffffffffff28, 
                 in_stack_ffffffffffffff30, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 
                 in_stack_ffffffffffffff48);
    return 0;
}

/* CAS-Backend/pkg/diapdu.diaoduConnectLoop | VA 0xe24040 | diaodu.go:161
   DWARF parameters and results: (no entries)
   DWARF locals: ~r0.ptr *uint8, ~r0.len int, graph *CAS-Backend/pkg/diapdu.Graph, err error, filename string, response *CAS-Backend/pkg/agvcontrol.MapResponse */
void __stdcall pkg_diapdu_diaoduConnectLoop(int64_t arg_b8h)
{
    int64_t iVar1;
    char cVar2;
    int64_t extraout_RAX;
    undefined8 extraout_RCX;
    undefined8 uVar3;
    int64_t extraout_RCX_00;
    int64_t iVar4;
    int64_t extraout_RBX;
    undefined8 extraout_RDI;
    undefined8 uVar5;
    int64_t unaff_R14;
    undefined auVar6 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t in_stack_fffffffffffffea8;
    int64_t in_stack_fffffffffffffeb0;
    int64_t in_stack_fffffffffffffeb8;
    int64_t in_stack_fffffffffffffec0;
    int64_t in_stack_fffffffffffffec8;
    int64_t in_stack_fffffffffffffed0;
    int64_t in_stack_fffffffffffffed8;
    int64_t var_120h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
    int64_t var_d8h;
    int64_t var_d0h;
    int64_t var_c8h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_b0h;
    int64_t var_a8h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_60h;
    int64_t var_58h;
    int64_t var_50h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&var_d8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_stack_00000008);
    }
    while( true ) {
        while( true ) {
            while( true ) {
                var_e8h = 0;
                var_18h = 0xe244a0;
                var_10h = (int64_t)&var_e8h;
                auVar6 = pkg_agvcontrol_DoWithConn(*(undefined8 *)0xfb5e00, *(undefined8 *)0xfb5e08, 0x4b04, &var_18h);
                uVar3 = *(undefined8 *)0x3512080;
                if (auVar6._0_8_ == 0) break;
                var_38h = *(int64_t *)(auVar6._0_8_ + 8);
                var_28h = 0x110d9c0;
                var_20h = 0x2e67838;
                var_30h = auVar6._8_8_;
                fmt_Fprintf(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, 
                             in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                             in_stack_fffffffffffffed8);
                time_Sleep(30000000000, uVar3);
            }
            var_40h = runtime_convTstring(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, in_stack_fffffffffffffed0);
            var_48h = 0x1042920;
            fmt_Fprintf(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, 
                         in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                         in_stack_fffffffffffffed8);
            var_60h = *(int64_t *)0xfb5e18;
            var_68h = *(int64_t *)0xfb5e10;
            auVar6 = runtime_concatstring2(&var_120h, *(undefined8 *)var_e8h, *(undefined8 *)(var_e8h + 8), 0x116a5c6 /* ".smap" */, 5);
            var_50h = auVar6._8_8_;
            var_58h = auVar6._0_8_;
            path_filepath_join(&var_68h, 2, 2);
            uVar3 = extraout_RCX;
            uVar5 = extraout_RDI;
            var_100h = extraout_RBX;
            var_f0h = extraout_RAX;
            os_Stat(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0);
            cVar2 = os_underlyingErrorIs(uVar3, uVar5, *(undefined8 *)0x35138b0, *(undefined8 *)0x35138b8);
            iVar1 = var_100h;
            if (cVar2 == '\0') break;
            var_80h = runtime_convTstring(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, in_stack_fffffffffffffed0);
            uVar3 = *(undefined8 *)0x3512080;
            var_88h = 0x1042920;
            var_78h = 0x110d9c0;
            var_70h = 0x2e67838;
            fmt_Fprintf(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, 
                         in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                         in_stack_fffffffffffffed8);
            time_Sleep(30000000000, uVar3);
        }
        iVar4 = extraout_RCX_00;
        var_e0h = pkg_diapdu_BuildGraphFromFile(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0);
        uVar3 = *(undefined8 *)0x3512080;
        if (iVar1 == 0) break;
        var_a8h = *(int64_t *)(iVar1 + 8);
        var_98h = 0x110d9c0;
        var_90h = 0x2e67838;
        var_a0h = iVar4;
        fmt_Fprintf(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, 
                     in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                     in_stack_fffffffffffffed8);
        time_Sleep(30000000000, uVar3);
    }
    pkg_diapdu_setGraph(in_stack_fffffffffffffea8, in_stack_fffffffffffffec0);
    pkg_diapdu_setActiveMap(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, 
                 in_stack_fffffffffffffec0);
    LOCK();
    *(undefined4 *)0x355d300 = 1;
    UNLOCK();
    var_f8h = *(int64_t *)(var_e0h + 0x20);
    var_d0h = runtime_convT64(in_stack_fffffffffffffea8);
    var_d8h = 0x1042b60;
    var_c0h = runtime_convT64(in_stack_fffffffffffffea8);
    var_c8h = 0x1042b60;
    var_b0h = runtime_convTstring(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, in_stack_fffffffffffffed0);
    var_b8h = 0x1042920;
    fmt_Fprintf(in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, in_stack_fffffffffffffeb8, 
                 in_stack_fffffffffffffec0, in_stack_fffffffffffffec8, in_stack_fffffffffffffed0, 
                 in_stack_fffffffffffffed8);
    return;
}

/* CAS-Backend/pkg/diapdu.diaoduConnectLoop.func1 | VA 0xe244a0 | diaodu.go:164
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: res *CAS-Backend/pkg/agvcontrol.MapResponse, &response **CAS-Backend/pkg/agvcontrol.MapResponse, e error */
int64_t __stdcall
pkg_diapdu_diaoduConnectLoop_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_18h)
{
    undefined8 *puVar1;
    undefined8 uVar2;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar3 [16];
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0();
    }
    puVar1 = *(undefined8 **)(arg3 + 8);
    auVar3 = pkg_agvcontrol_SendSltMapRequest();
    uVar2 = auVar3._0_8_;
    if (auVar3._8_8_ != 0) {
        return auVar3._8_8_;
    }
    if (*(int32_t *)0x355db50 != 0) {
        uVar2 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar2;
        extraout_R11[1] = *puVar1;
    }
    *puVar1 = uVar2;
    return 0;
}

/* CAS-Backend/pkg/diapdu.BuildGraphFromFile | VA 0xe24540 | diaodu.go:347
   DWARF parameters and results: filename string, ~r0 *CAS-Backend/pkg/diapdu.Graph, ~r1 error
   DWARF locals: &doc *CAS-Backend/pkg/diapdu.Document, graph *CAS-Backend/pkg/diapdu.Graph, tolerance float64, file []uint8, err error, ~r0.ptr *uint8, ~r0.cap int, ~r0.len int, point struct { ClassName string "json:\"className\""; InstanceName string "json:\"instanceName\""; Pos struct { X float64 "json:\"x\""; Y float64 "json:\"y\"" } "json:\"pos\""; Property []struct { Key string "json:\"key\""; Type string "json:\"type\""; Value string "json:\"value\""; BoolValue bool "json:\"boolValue,omitempty\""; StringValue string "json:\"stringValue,omitempty\""; DoubleValue float64 "json:\"doubleValue,omitempty\""; Int32Value int32 "json:\"int32Value,omitempty\"" } "json:\"property\""; IgnoreDir bool "json:\"ignoreDir\"" }, node *CAS-Backend/pkg/diapdu.Node, pos CAS-Backend/pkg/diapdu.Position, curve struct { ClassName string "json:\"className\""; InstanceName string "json:\"instanceName\""; StartPos struct { InstanceName string "json:\"instanceName\""; Pos struct { X float64 "json:\"x\""; Y float64 "json:\"y\"" } "json:\"pos\"" } "json:\"startPos\""; EndPos struct { InstanceName string "json:\"instanceName\""; Pos struct { X float64 "json:\"x\""; Y float64 "json:\"y\"" } "json:\"pos\"" } "json:\"endPos\""; ControlPos1 struct { X float64 "json:\"x\""; Y float64 "json:\"y\"" } "json:\"controlPos1\""; ControlPos2 struct { X float64 "json:\"x\""; Y float64 "json:\"y\"" } "json:\"controlPos2\""; Property []struct { Key string "json:\"key\""; Type string "json:\"type\""; Value string "json:\"value\""; Int32Value int32 "json:\"int32Value\"" } "json:\"property\"" }, fromNode *CAS-Backend/pkg/diapdu.Node, toNode *CAS-Backend/pkg/diapdu.Node, distance float64, edge *CAS-Backend/pkg/diapdu.Edge, fromName string, toName string, line struct { ClassName string "json:\"className\""; InstanceName string "json:\"instanceName\""; Line struct { StartPos struct { X float64 "json:\"x\""; Y float64 "json:\"y\"" } "json:\"startPos\""; EndPos struct { X float64 "json:\"x\""; Y float64 "json:\"y\"" } "json:\"endPos\"" } "json:\"line\""; Property []struct { Key string "json:\"key\""; Type string "json:\"type\""; Value string "json:\"value\""; DoubleValue float64 "json:\"doubleValue\"" } "json:\"property\"" }, startPos CAS-Backend/pkg/diapdu.Position, endPos CAS-Backend/pkg/diapdu.Position */
// WARNING: Variable defined which should be unmapped: var_1f0h
// WARNING: Variable defined which should be unmapped: var_1d0h
// WARNING: Variable defined which should be unmapped: var_1b0h
// WARNING: Variable defined which should be unmapped: var_1a8h
// WARNING: Variable defined which should be unmapped: var_1c8h
// WARNING: Variable defined which should be unmapped: var_1b8h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_80h

undefined8 * __stdcall pkg_diapdu_BuildGraphFromFile(int64_t arg_8h, int64_t arg_10h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t iVar2;
    undefined8 *puVar3;
    int64_t *piVar4;
    undefined8 uVar5;
    int64_t *piVar6;
    undefined8 extraout_RCX;
    uint64_t uVar7;
    undefined8 extraout_RCX_00;
    int64_t iVar8;
    uint64_t uVar9;
    int64_t iVar10;
    int64_t iVar11;
    int64_t iVar12;
    int64_t in_RDI;
    int64_t extraout_R8;
    int64_t extraout_R8_00;
    int64_t extraout_R8_01;
    int64_t extraout_R8_02;
    int64_t iVar13;
    int64_t extraout_R8_03;
    int64_t iVar14;
    int64_t iVar15;
    int64_t iVar16;
    int64_t *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    int64_t *extraout_R11_05;
    undefined8 *extraout_R11_06;
    undefined8 *extraout_R11_07;
    undefined8 *extraout_R11_08;
    int64_t *extraout_R11_09;
    int64_t unaff_R14;
    double dVar17;
    double dVar18;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar19 [16];
    undefined auVar20 [16];
    undefined auVar21 [16];
    int64_t unaff_retaddr;
    int64_t var_258h;
    int64_t in_stack_fffffffffffffdb8;
    int64_t in_stack_fffffffffffffdc0;
    int64_t in_stack_fffffffffffffdc8;
    int64_t in_stack_fffffffffffffdd0;
    int64_t in_stack_fffffffffffffdd8;
    int64_t in_stack_fffffffffffffde0;
    int64_t in_stack_fffffffffffffde8;
    int64_t in_stack_fffffffffffffdf0;
    int64_t var_208h;
    int64_t var_200h;
    int64_t var_1f8h;
    int64_t var_1f0h;
    int64_t var_1e8h;
    int64_t var_1e0h;
    int64_t var_1d8h;
    int64_t var_1d0h;
    int64_t var_1c8h;
    int64_t var_1c0h;
    int64_t var_1b8h;
    int64_t var_1b0h;
    int64_t var_1a8h;
    int64_t var_1a0h;
    int64_t var_198h;
    int64_t var_190h;
    int64_t var_188h;
    int64_t var_180h;
    int64_t var_178h;
    int64_t var_170h;
    int64_t var_168h;
    int64_t var_160h;
    int64_t var_158h;
    int64_t var_150h;
    int64_t var_148h;
    int64_t var_140h;
    int64_t var_138h;
    int64_t var_130h;
    int64_t var_128h;
    int64_t var_120h;
    int64_t var_118h;
    int64_t var_110h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
    int64_t var_d8h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_60h;
    int64_t var_58h;
    int64_t var_50h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_1c8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe25125;
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    var_188h = os_ReadFile(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, var_1f0h, var_1d0h, var_1b0h, var_1a8h
                           );
    if (in_RDI != 0) {
        var_20h = *(int64_t *)(in_RDI + 8);
        fmt_Errorf(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffdc8, 
                     in_stack_fffffffffffffdd0, in_stack_fffffffffffffdd8, var_1c8h);
        return (undefined8 *)0x0;
    }
    var_10h = runtime_newobject(in_stack_fffffffffffffdb8);
    iVar2 = encoding_json_Unmarshal(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffdc8, 
                         in_stack_fffffffffffffdd0, in_stack_fffffffffffffdd8, in_stack_fffffffffffffdf0);
    if (iVar2 != 0) {
        var_20h = *(int64_t *)(iVar2 + 8);
        fmt_Errorf(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffdc8, 
                     in_stack_fffffffffffffdd0, in_stack_fffffffffffffdd8, var_1c8h);
        return (undefined8 *)0x0;
    }
    puVar3 = (undefined8 *)runtime_newobject(in_stack_fffffffffffffdb8);
    *puVar3 = 0x355d2a0;
    puVar3[4] = in_XMM15_Qa;
    puVar3[5] = in_XMM15_Qb;
    puVar3[3] = 0x355d2a0;
    iVar2 = *(int64_t *)(var_10h + 0x58);
    iVar8 = *(int64_t *)(var_10h + 0x60);
    var_140h = (int64_t)puVar3;
    while (0 < iVar8) {
        var_190h = iVar8;
        var_88h = iVar2;
        fcn.00478e5a(puVar3, iVar8, var_10h, &var_120h, iVar2);
        iVar14 = var_f8h;
        iVar8 = var_100h;
        piVar4 = (int64_t *)runtime_newobject(in_stack_fffffffffffffdb8);
        iVar2 = var_110h;
        piVar4[1] = var_108h;
        if (*(int32_t *)0x355db50 != 0) {
            piVar4 = (int64_t *)runtime_gcWriteBarrier1();
            *extraout_R11 = iVar2;
        }
        *piVar4 = iVar2;
        piVar4[2] = iVar8;
        piVar4[3] = iVar14;
        uVar7 = *(uint64_t *)(var_140h + 0x10);
        uVar9 = *(int64_t *)(var_140h + 8) + 1;
        auVar19._8_8_ = uVar9;
        auVar19._0_8_ = *(undefined8 *)var_140h;
        puVar3 = (undefined8 *)var_140h;
        if (uVar7 < uVar9) {
            var_148h = (int64_t)piVar4;
            uVar5 = runtime_growslice(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffdc8, 
                                 in_stack_fffffffffffffdd0, in_stack_fffffffffffffdd8, var_1b8h);
            puVar3 = (undefined8 *)var_140h;
            auVar19._0_8_ = uVar5;
            *(uint64_t *)(var_140h + 0x10) = uVar7;
            if (*(int32_t *)0x355db50 != 0) {
                auVar19 = runtime_gcWriteBarrier2();
                *extraout_R11_00 = auVar19._0_8_;
                extraout_R11_00[1] = *puVar3;
            }
            *puVar3 = auVar19._0_8_;
            piVar4 = (int64_t *)var_148h;
        }
        puVar3[1] = auVar19._8_8_;
        if (*(int32_t *)0x355db50 != 0) {
            auVar20 = runtime_gcWriteBarrier2();
            auVar19._8_8_ = auVar20._8_8_;
            auVar19._0_8_ = extraout_R8;
            piVar4 = auVar20._0_8_;
            *extraout_R11_01 = (int64_t)piVar4;
            extraout_R11_01[1] = *(int64_t *)(extraout_R8 + -8 + auVar20._8_8_ * 8);
        }
        *(int64_t **)(auVar19._0_8_ + -8 + auVar19._8_8_ * 8) = piVar4;
        iVar2 = var_88h + 0x50;
        iVar8 = var_190h + -1;
    }
    piVar4 = *(int64_t **)(var_10h + 0x88);
    iVar2 = *(int64_t *)(var_10h + 0x90);
    do {
        if (iVar2 < 1) {
            piVar4 = *(int64_t **)(var_10h + 0x70);
            iVar2 = *(int64_t *)(var_10h + 0x78);
            do {
                if (iVar2 < 1) {
                    return puVar3;
                }
                var_120h = *piVar4;
                piVar6 = (int64_t *)fcn.00478e5a(puVar3, iVar8, var_120h, &var_118h, piVar4 + 1);
                for (iVar2 = 0; iVar2 < piVar6[1]; iVar2 = iVar2 + 1) {
                    iVar8 = *(int64_t *)(*piVar6 + iVar2 * 8);
                    if (ABS(*(double *)(iVar8 + 0x10) - (double)var_100h) < *(double *)0x2e67850 &&
                        ABS(*(double *)(iVar8 + 0x18) - (double)var_f8h) < *(double *)0x2e67850) goto code_r0x00e24a3d;
                }
                iVar8 = 0;
code_r0x00e24a3d:
                var_190h = extraout_R8_01;
                var_88h = (int64_t)piVar4;
                if (iVar8 == 0) {
                    var_1c8h = var_f8h;
                    var_58h = runtime_convT64(in_stack_fffffffffffffdb8);
                    var_60h = 0x1042ce0;
                    var_48h = runtime_convT64(in_stack_fffffffffffffdb8);
                    iVar8 = *(int64_t *)0x3512080;
                    var_50h = 0x1042ce0;
                    fmt_Fprintf(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffdc8, 
                                 in_stack_fffffffffffffdd0, in_stack_fffffffffffffdd8, in_stack_fffffffffffffde0, 
                                 in_stack_fffffffffffffde8);
                } else {
                    for (iVar2 = 0; iVar2 < piVar6[1]; iVar2 = iVar2 + 1) {
                        iVar14 = *(int64_t *)(*piVar6 + iVar2 * 8);
                        if (ABS(*(double *)(iVar14 + 0x10) - (double)var_f0h) < *(double *)0x2e67850 &&
                            ABS(*(double *)(iVar14 + 0x18) - (double)var_e8h) < *(double *)0x2e67850)
                        goto code_r0x00e24be0;
                    }
                    iVar14 = 0;
code_r0x00e24be0:
                    if (iVar14 == 0) {
                        var_78h = runtime_convT64(in_stack_fffffffffffffdb8);
                        var_80h = 0x1042ce0;
                        var_68h = runtime_convT64(in_stack_fffffffffffffdb8);
                        iVar8 = *(int64_t *)0x3512080;
                        var_70h = 0x1042ce0;
                        fmt_Fprintf(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffdc8, 
                                     in_stack_fffffffffffffdd0, in_stack_fffffffffffffdd8, in_stack_fffffffffffffde0, 
                                     in_stack_fffffffffffffde8);
                    } else {
                        var_198h = (int64_t)(((double)var_100h - (double)var_f0h) * ((double)var_100h - (double)var_f0h)
                                            );
                        var_1a0h = (int64_t)(((double)var_f8h - (double)var_e8h) * ((double)var_f8h - (double)var_e8h));
                        var_180h = iVar8;
                        var_168h = iVar14;
                        puVar3 = (undefined8 *)runtime_newobject(in_stack_fffffffffffffdb8);
                        uVar5 = *(undefined8 *)var_180h;
                        puVar3[1] = *(undefined8 *)(var_180h + 8);
                        dVar17 = (double)var_1a0h + (double)var_198h;
                        if (*(int32_t *)0x355db50 != 0) {
                            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                            *extraout_R11_02 = extraout_RCX;
                            uVar5 = extraout_RCX;
                        }
                        *puVar3 = uVar5;
                        uVar5 = *(undefined8 *)var_168h;
                        puVar3[3] = *(undefined8 *)(var_168h + 8);
                        if (*(int32_t *)0x355db50 != 0) {
                            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                            *extraout_R11_03 = uVar5;
                        }
                        puVar3[2] = uVar5;
                        puVar3[4] = SQRT(dVar17);
                        puVar3[5] = 1;
                        uVar7 = *(uint64_t *)(var_140h + 0x28);
                        uVar9 = *(int64_t *)(var_140h + 0x20) + 1;
                        auVar20._8_8_ = uVar9;
                        auVar20._0_8_ = *(undefined8 *)(var_140h + 0x18);
                        iVar2 = var_140h;
                        if (uVar7 < uVar9) {
                            var_130h = (int64_t)puVar3;
                            uVar5 = runtime_growslice(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, 
                                                 in_stack_fffffffffffffdc8, in_stack_fffffffffffffdd0, 
                                                 in_stack_fffffffffffffdd8, var_1b8h);
                            iVar2 = var_140h;
                            auVar20._0_8_ = uVar5;
                            *(uint64_t *)(var_140h + 0x28) = uVar7;
                            if (*(int32_t *)0x355db50 != 0) {
                                auVar20 = runtime_gcWriteBarrier2();
                                *extraout_R11_04 = auVar20._0_8_;
                                extraout_R11_04[1] = *(undefined8 *)(iVar2 + 0x18);
                            }
                            *(int64_t *)(iVar2 + 0x18) = auVar20._0_8_;
                            puVar3 = (undefined8 *)var_130h;
                        }
                        *(int64_t *)(iVar2 + 0x20) = auVar20._8_8_;
                        if (*(int32_t *)0x355db50 != 0) {
                            auVar19 = runtime_gcWriteBarrier2();
                            auVar20._8_8_ = auVar19._8_8_;
                            auVar20._0_8_ = extraout_R8_02;
                            puVar3 = auVar19._0_8_;
                            *extraout_R11_05 = (int64_t)puVar3;
                            extraout_R11_05[1] = *(int64_t *)(extraout_R8_02 + -8 + auVar19._8_8_ * 8);
                        }
                        iVar8 = auVar20._8_8_;
                        *(undefined8 **)(auVar20._0_8_ + -8 + iVar8 * 8) = puVar3;
                    }
                }
                piVar4 = (int64_t *)(var_88h + 0x58);
                iVar2 = var_190h + -1;
                puVar3 = (undefined8 *)var_140h;
            } while( true );
        }
        var_120h = *piVar4;
        var_190h = iVar2;
        var_88h = (int64_t)piVar4;
        piVar4 = (int64_t *)fcn.00478e22();
        iVar14 = var_d8h;
        var_138h = var_100h;
        var_1b0h = var_f8h;
        var_160h = var_e0h;
        iVar2 = *piVar4;
        iVar8 = piVar4[1];
        iVar10 = var_100h;
        iVar13 = extraout_R8_00;
        iVar15 = var_f8h;
        iVar16 = var_e0h;
        var_1b8h = iVar8;
        var_150h = iVar2;
        for (iVar11 = 0; iVar11 < iVar8; iVar11 = iVar11 + 1) {
            puVar3 = *(undefined8 **)(iVar2 + iVar11 * 8);
            if ((puVar3[1] == iVar15) &&
               (var_1a8h = iVar11, var_170h = (int64_t)puVar3,
               cVar1 = runtime_memequal(*puVar3, iVar10, puVar3[1], puVar3, iVar11, iVar13), piVar4 = (int64_t *)var_140h,
               iVar10 = var_138h, iVar11 = var_1a8h, iVar12 = var_170h, iVar13 = var_190h, iVar15 = var_1b0h,
               iVar16 = var_160h, iVar2 = var_150h, iVar8 = var_1b8h, cVar1 != '\0')) goto code_r0x00e24917;
        }
        iVar12 = 0;
code_r0x00e24917:
        if (iVar12 == 0) {
            var_28h = runtime_convTstring(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffde0);
            iVar8 = *(int64_t *)0x3512080;
            var_30h = 0x1042920;
            fmt_Fprintf(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffdc8, 
                         in_stack_fffffffffffffdd0, in_stack_fffffffffffffdd8, in_stack_fffffffffffffde0, 
                         in_stack_fffffffffffffde8);
        } else {
            iVar2 = *piVar4;
            iVar8 = piVar4[1];
            var_1c0h = iVar8;
            var_170h = iVar12;
            var_158h = iVar2;
            for (iVar10 = 0; iVar10 < iVar8; iVar10 = iVar10 + 1) {
                puVar3 = *(undefined8 **)(iVar2 + iVar10 * 8);
                if ((puVar3[1] == iVar14) &&
                   (var_1a8h = iVar10, var_178h = (int64_t)puVar3,
                   cVar1 = runtime_memequal(*puVar3, iVar16, puVar3[1], iVar2, iVar12, iVar13), iVar11 = var_178h,
                   iVar10 = var_1a8h, iVar12 = var_170h, iVar2 = var_158h, iVar13 = var_190h, iVar8 = var_1c0h,
                   iVar16 = var_160h, cVar1 != '\0')) goto code_r0x00e24f46;
            }
            iVar11 = 0;
code_r0x00e24f46:
            if (iVar11 == 0) {
                var_38h = runtime_convTstring(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffde0);
                iVar8 = *(int64_t *)0x3512080;
                var_40h = 0x1042920;
                fmt_Fprintf(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffdc8, 
                             in_stack_fffffffffffffdd0, in_stack_fffffffffffffdd8, in_stack_fffffffffffffde0, 
                             in_stack_fffffffffffffde8);
            } else {
                dVar17 = *(double *)(iVar12 + 0x10) - *(double *)(iVar11 + 0x10);
                dVar18 = *(double *)(iVar12 + 0x18) - *(double *)(iVar11 + 0x18);
                var_198h = (int64_t)(dVar17 * dVar17);
                var_1a0h = (int64_t)(dVar18 * dVar18);
                var_178h = iVar11;
                puVar3 = (undefined8 *)runtime_newobject(in_stack_fffffffffffffdb8);
                uVar5 = *(undefined8 *)var_170h;
                puVar3[1] = *(undefined8 *)(var_170h + 8);
                dVar17 = (double)var_1a0h + (double)var_198h;
                if (*(int32_t *)0x355db50 != 0) {
                    puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                    *extraout_R11_06 = extraout_RCX_00;
                    uVar5 = extraout_RCX_00;
                }
                *puVar3 = uVar5;
                uVar5 = *(undefined8 *)var_178h;
                puVar3[3] = *(undefined8 *)(var_178h + 8);
                if (*(int32_t *)0x355db50 != 0) {
                    puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                    *extraout_R11_07 = uVar5;
                }
                puVar3[2] = uVar5;
                puVar3[4] = SQRT(dVar17);
                puVar3[5] = 1;
                uVar7 = *(uint64_t *)(var_140h + 0x28);
                uVar9 = *(int64_t *)(var_140h + 0x20) + 1;
                auVar21._8_8_ = uVar9;
                auVar21._0_8_ = *(undefined8 *)(var_140h + 0x18);
                iVar2 = var_140h;
                if (uVar7 < uVar9) {
                    var_128h = (int64_t)puVar3;
                    uVar5 = runtime_growslice(in_stack_fffffffffffffdb8, in_stack_fffffffffffffdc0, in_stack_fffffffffffffdc8
                                         , in_stack_fffffffffffffdd0, in_stack_fffffffffffffdd8, var_1b8h);
                    iVar2 = var_140h;
                    auVar21._0_8_ = uVar5;
                    *(uint64_t *)(var_140h + 0x28) = uVar7;
                    if (*(int32_t *)0x355db50 != 0) {
                        auVar21 = runtime_gcWriteBarrier2();
                        *extraout_R11_08 = auVar21._0_8_;
                        extraout_R11_08[1] = *(undefined8 *)(iVar2 + 0x18);
                    }
                    *(int64_t *)(iVar2 + 0x18) = auVar21._0_8_;
                    puVar3 = (undefined8 *)var_128h;
                }
                *(int64_t *)(iVar2 + 0x20) = auVar21._8_8_;
                if (*(int32_t *)0x355db50 != 0) {
                    auVar19 = runtime_gcWriteBarrier2();
                    auVar21._8_8_ = auVar19._8_8_;
                    auVar21._0_8_ = extraout_R8_03;
                    puVar3 = auVar19._0_8_;
                    *extraout_R11_09 = (int64_t)puVar3;
                    extraout_R11_09[1] = *(int64_t *)(extraout_R8_03 + -8 + auVar19._8_8_ * 8);
                }
                iVar8 = auVar21._8_8_;
                *(undefined8 **)(auVar21._0_8_ + -8 + iVar8 * 8) = puVar3;
            }
        }
        piVar4 = (int64_t *)(var_88h + 0x98);
        iVar2 = var_190h + -1;
        puVar3 = (undefined8 *)var_140h;
    } while( true );
}
