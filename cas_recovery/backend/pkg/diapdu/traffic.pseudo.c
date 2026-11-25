/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther | VA 0xe35ea0 | traffic.go:77
   DWARF parameters and results: tm *CAS-Backend/pkg/diapdu.TrafficManager, node string, selfID string, ~r0 bool, ~r0 bool
   DWARF locals: res *CAS-Backend/pkg/diapdu.pathReservation, vid string, ok bool, .autotmp_18 struct {}, .autotmp_8 struct {} */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_8ah
// WARNING: [rz-ghidra] Detected overlap for variable var_88h

undefined8 __stdcall
pkg_diapdu___TrafficManager__isNodeLockedByOther
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_30h)
{
    int32_t *piVar1;
    int32_t iVar2;
    undefined8 *puVar3;
    char cVar4;
    int64_t in_RAX;
    char extraout_BL;
    undefined8 unaff_RBX;
    undefined8 extraout_RBX;
    int64_t extraout_RSI;
    int64_t iVar5;
    int64_t unaff_R14;
    int64_t var_c0h;
    int64_t var_89h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    undefined auStack_30 [32];
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_30 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe360c5;
        runtime_morestack_noctxt_abi0();
    }
    if ((in_RAX != 0) && (arg4 != 0)) {
        LOCK();
        piVar1 = (int32_t *)(in_RAX + 0x10);
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + 1;
        UNLOCK();
        if ((int32_t)(iVar2 + 1) < 0) {
            sync_runtime_SemacquireRWMutexR(in_RAX + 0xc, 0, 0);
        }
        var_80h = 0xe36100;
        var_10h = (int64_t)&var_80h;
        runtime_duffzero_offset_331();
        runtime_mapiterinit(0x107d760, extraout_RBX, &var_70h);
        while( true ) {
            if (var_70h == 0) {
                (**(code **)var_10h)();
                return 0;
            }
            puVar3 = *(undefined8 **)var_68h;
            iVar5 = var_70h;
            if ((((arg2 != *(int64_t *)(var_70h + 8)) ||
                 (cVar4 = runtime_memequal(*(undefined8 *)var_70h, arg1), iVar5 = extraout_RSI, cVar4 == '\0')) &&
                (puVar3 != (undefined8 *)0x0)) &&
               (runtime_mapaccess2_faststr(0x107d5e0, *puVar3, unaff_RBX, arg4, iVar5, arg2), extraout_BL != '\0')) break;
            runtime_mapiternext(&var_70h);
        }
        (**(code **)var_10h)();
        return 1;
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.(*TrafficManager).isNodeLockedByOther.deferwrap1 | VA 0xe36100 | traffic.go:82
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TrafficManager__isNodeLockedByOther_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
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

/* CAS-Backend/pkg/diapdu.(*TrafficManager).isEdgeLockedByOther | VA 0xe36160 | traffic.go:97
   DWARF parameters and results: tm *CAS-Backend/pkg/diapdu.TrafficManager, a string, b string, selfID string, ~r0 bool, ~r0 bool
   DWARF locals: k string, ~r0.ptr *uint8, ~r0.len int, res *CAS-Backend/pkg/diapdu.pathReservation, vid string, ok bool, .autotmp_10 struct {}, .autotmp_24 struct {} */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_dah
// WARNING: [rz-ghidra] Detected overlap for variable var_d8h

undefined8 __stdcall
pkg_diapdu___TrafficManager__isEdgeLockedByOther
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_98h)
{
    int32_t *piVar1;
    int32_t iVar2;
    char cVar3;
    int64_t in_RAX;
    int64_t iVar4;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 uVar5;
    char extraout_BL;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    undefined8 extraout_RBX_01;
    int64_t extraout_RSI;
    int64_t iVar6;
    int64_t unaff_R14;
    int64_t var_128h;
    int64_t var_d9h;
    int64_t var_b8h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_98h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe36452;
        runtime_morestack_noctxt_abi0();
    }
    var_d9h._0_1_ = 0;
    if (((in_RAX != 0) && (arg4 != 0)) && (arg2 != 0)) {
        iVar4 = runtime_cmpstring(unaff_RBX, arg4, arg1, arg2);
        if (iVar4 < 0) {
            runtime_concatstring3(&var_b8h, unaff_RBX, arg4, 0x116850a /* "|" */, 1, arg1, arg2);
            iVar4 = extraout_RAX;
            uVar5 = extraout_RCX;
            var_98h = extraout_RBX;
        } else {
            runtime_concatstring3((int64_t)&var_d9h + 1, arg1, arg2, 0x116850a /* "|" */, 1, unaff_RBX, arg4);
            iVar4 = extraout_RAX_00;
            uVar5 = extraout_RCX_00;
            var_98h = extraout_RBX_00;
        }
        LOCK();
        piVar1 = (int32_t *)(in_RAX + 0x10);
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + 1;
        UNLOCK();
        var_90h = iVar4;
        if ((int32_t)(iVar2 + 1) < 0) {
            iVar4 = sync_runtime_SemacquireRWMutexR(in_RAX + 0xc, 0, 0);
            uVar5 = extraout_RCX_01;
        }
        var_80h = 0xe36480;
        var_10h = (int64_t)&var_80h;
        var_d9h._0_1_ = 1;
        runtime_duffzero_offset_331(iVar4, *(undefined8 *)(in_RAX + 0x18), uVar5, &var_90h);
        runtime_mapiterinit(0x107d760, extraout_RBX_01, &var_70h);
        while( true ) {
            if (var_70h == 0) {
                var_d9h._0_1_ = 0;
                (**(code **)var_10h)();
                return 0;
            }
            iVar4 = *(int64_t *)var_68h;
            iVar6 = var_70h;
            if (((arg6 != *(int64_t *)(var_70h + 8)) ||
                (var_88h = *(int64_t *)var_68h, cVar3 = runtime_memequal(*(undefined8 *)var_70h, arg5), iVar4 = var_88h,
                iVar6 = extraout_RSI, cVar3 == '\0')) &&
               ((iVar4 != 0 &&
                (runtime_mapaccess2_faststr(0x107d5e0, *(undefined8 *)(iVar4 + 8), var_90h, var_98h, iVar6, arg6),
                extraout_BL != '\0')))) break;
            runtime_mapiternext(&var_70h);
        }
        var_d9h._0_1_ = 0;
        (**(code **)var_10h)();
        return 1;
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.(*TrafficManager).isEdgeLockedByOther.deferwrap1 | VA 0xe36480 | traffic.go:103
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TrafficManager__isEdgeLockedByOther_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
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

/* CAS-Backend/pkg/diapdu.closestNodeTo | VA 0xe364e0 | traffic.go:119
   DWARF parameters and results: graph *CAS-Backend/pkg/diapdu.Graph, loc CAS-Backend/pkg/diapdu.Location, ~r0 *CAS-Backend/pkg/diapdu.Node
   DWARF locals: best *CAS-Backend/pkg/diapdu.Node, bestD float64, n *CAS-Backend/pkg/diapdu.Node, d float64 */
int64_t pkg_diapdu_closestNodeTo(double param_1, double param_2, int64_t *param_3)
{
    int64_t iVar1;
    int64_t iVar2;
    int64_t iVar3;
    int64_t iVar4;
    double dVar5;
    double dVar6;
    double dVar7;
    
    if ((param_3 != (int64_t *)0x0) && (param_3[1] != 0)) {
        iVar4 = 0;
        dVar5 = *(double *)0x2e678a0;
        for (iVar3 = 0; iVar3 < param_3[1]; iVar3 = iVar3 + 1) {
            iVar1 = *(int64_t *)(*param_3 + iVar3 * 8);
            iVar2 = iVar4;
            dVar6 = dVar5;
            if ((iVar1 != 0) &&
               (dVar6 = *(double *)(iVar1 + 0x10) - param_1, dVar7 = *(double *)(iVar1 + 0x18) - param_2,
               dVar6 = SQRT(dVar6 * dVar6 + dVar7 * dVar7), iVar2 = iVar1, dVar5 <= dVar6)) {
                iVar2 = iVar4;
                dVar6 = dVar5;
            }
            dVar5 = dVar6;
            iVar4 = iVar2;
        }
        return iVar4;
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.shortestPathOnGraph | VA 0xe36560 | traffic.go:164
   DWARF parameters and results: graph *CAS-Backend/pkg/diapdu.Graph, tm *CAS-Backend/pkg/diapdu.TrafficManager, selfID string, startName string, goalName string, ~r0 []string, ~r1 float64, ~r2 bool
   DWARF locals: adj map[string][]CAS-Backend/pkg/diapdu.nb·1, dist map[string]float64, prev map[string]string, visited map[string]bool, dg float64, ok bool, path []string, e *CAS-Backend/pkg/diapdu.Edge, a string, b string, k string, best float64, u string, d float64, name string, nd float64, cur string, p string */
// WARNING: Variable defined which should be unmapped: var_550h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_b4h
// WARNING: [rz-ghidra] Detected overlap for variable var_234h
// WARNING: [rz-ghidra] Detected overlap for variable var_334h
// WARNING: [rz-ghidra] Detected overlap for variable var_474h
// WARNING: [rz-ghidra] Removing arg arg_5f8h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_610h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_5f0h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_8ah
// WARNING: [rz-ghidra] Detected overlap for variable var_88h
// WARNING: [rz-ghidra] Detected overlap for variable var_dah
// WARNING: [rz-ghidra] Detected overlap for variable var_d8h

int64_t * __stdcall
pkg_diapdu_shortestPathOnGraph
          (int64_t arg1, int64_t arg2, double placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6, int64_t arg_8h,
          int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h,
          int64_t arg_40h, int64_t arg_68h)
{
    char cVar1;
    uint8_t uVar2;
    undefined4 uVar3;
    uint32_t uVar4;
    int64_t in_RAX;
    undefined8 *puVar5;
    undefined8 extraout_RAX;
    undefined8 extraout_RAX_00;
    undefined8 *extraout_RAX_01;
    uint64_t uVar6;
    undefined8 *extraout_RAX_02;
    char *pcVar7;
    int64_t *extraout_RAX_03;
    double *pdVar8;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t extraout_RCX_01;
    uint64_t extraout_RCX_02;
    uint64_t extraout_RCX_03;
    int64_t extraout_RCX_04;
    uint64_t extraout_RCX_05;
    int64_t iVar9;
    int64_t iVar10;
    int64_t *piVar11;
    char extraout_BL;
    char extraout_BL_00;
    char extraout_BL_01;
    char extraout_BL_02;
    undefined8 *unaff_RBX;
    int64_t extraout_RBX;
    uint64_t uVar12;
    undefined8 extraout_RBX_00;
    int64_t iVar13;
    undefined8 extraout_RBX_01;
    int64_t extraout_RBX_02;
    int64_t extraout_RBX_03;
    int64_t extraout_RBX_04;
    int64_t extraout_RBX_05;
    uint64_t extraout_RBX_06;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t iVar14;
    int64_t iVar15;
    uint64_t uVar16;
    uint64_t in_R10;
    int64_t *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t *extraout_R11_03;
    int64_t *extraout_R11_04;
    int64_t *extraout_R11_05;
    int64_t *extraout_R11_06;
    int64_t unaff_R14;
    double dVar17;
    double extraout_XMM0_Qa;
    double extraout_XMM0_Qa_00;
    double extraout_XMM0_Qa_01;
    double extraout_XMM0_Qa_02;
    double extraout_XMM0_Qa_03;
    double dVar18;
    double extraout_XMM0_Qa_04;
    double extraout_XMM0_Qa_05;
    undefined8 in_XMM4_Qa;
    undefined8 in_XMM5_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar19 [16];
    undefined auVar20 [16];
    int64_t var_5f0h;
    int64_t in_stack_fffffffffffffa20;
    int64_t in_stack_fffffffffffffa28;
    int64_t in_stack_fffffffffffffa30;
    int64_t in_stack_fffffffffffffa38;
    int64_t in_stack_fffffffffffffa40;
    int64_t in_stack_fffffffffffffa48;
    int64_t in_stack_fffffffffffffa50;
    int64_t var_5a0h;
    int64_t var_598h;
    int64_t var_590h;
    int64_t var_588h;
    int64_t var_580h;
    int64_t var_578h;
    int64_t var_570h;
    int64_t var_568h;
    int64_t var_560h;
    int64_t var_558h;
    int64_t var_550h;
    int64_t var_548h;
    int64_t var_540h;
    int64_t var_538h;
    int64_t var_530h;
    int64_t var_528h;
    int64_t var_520h;
    int64_t var_518h;
    int64_t var_510h;
    int64_t var_480h;
    undefined4 uStack_478;
    undefined4 var_474h;
    int64_t var_470h;
    int64_t var_460h;
    int64_t var_450h;
    int64_t var_340h;
    undefined4 uStack_338;
    undefined4 var_334h;
    int64_t var_330h;
    int64_t var_320h;
    int64_t var_310h;
    int64_t var_240h;
    undefined4 uStack_238;
    undefined4 var_234h;
    int64_t var_230h;
    int64_t var_220h;
    int64_t var_210h;
    int64_t var_c0h;
    undefined4 uStack_b8;
    undefined4 var_b4h;
    int64_t var_b0h;
    int64_t var_a0h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_560h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe37466;
        runtime_morestack_noctxt_abi0();
    }
    if (((in_RAX == 0) || (arg5 == 0)) || (in_R10 == 0)) {
        return (int64_t *)0x0;
    }
    if ((arg5 == in_R10) && (cVar1 = runtime_memequal(arg2, arg6, arg5), cVar1 != '\0')) {
        iVar14 = extraout_RBX;
        if ((unaff_RBX != (undefined8 *)0x0) &&
           (cVar1 = pkg_diapdu___TrafficManager__isNodeLockedByOther
                              (arg4, arg1, placeholder_2, arg5, in_XMM4_Qa, in_XMM5_Qa, in_stack_fffffffffffffa20, 
                               in_stack_fffffffffffffa28, in_stack_fffffffffffffa30, in_stack_fffffffffffffa38, 
                               in_stack_fffffffffffffa40, in_stack_fffffffffffffa48), iVar14 = arg2, cVar1 != '\0')) {
            return (int64_t *)0x0;
        }
        piVar11 = (int64_t *)runtime_newobject(0x104df00, iVar14);
        piVar11[1] = arg5;
        if (*(int32_t *)0x355db50 != 0) {
            piVar11 = (int64_t *)runtime_gcWriteBarrier1();
            *extraout_R11 = arg2;
        }
        *piVar11 = arg2;
        return piVar11;
    }
    if ((unaff_RBX != (undefined8 *)0x0) &&
       (cVar1 = pkg_diapdu___TrafficManager__isNodeLockedByOther
                          (arg4, arg1, placeholder_2, arg5, in_XMM4_Qa, in_XMM5_Qa, in_stack_fffffffffffffa20, 
                           in_stack_fffffffffffffa28, in_stack_fffffffffffffa30, in_stack_fffffffffffffa38, 
                           in_stack_fffffffffffffa40, in_stack_fffffffffffffa48), cVar1 != '\0')) {
        return (int64_t *)0x0;
    }
    if ((unaff_RBX != (undefined8 *)0x0) &&
       (cVar1 = pkg_diapdu___TrafficManager__isNodeLockedByOther
                          (arg4, arg1, placeholder_2, in_R10, in_XMM4_Qa, in_XMM5_Qa, in_stack_fffffffffffffa20, 
                           in_stack_fffffffffffffa28, in_stack_fffffffffffffa30, in_stack_fffffffffffffa38, 
                           in_stack_fffffffffffffa40, in_stack_fffffffffffffa48), cVar1 != '\0')) {
        return (int64_t *)0x0;
    }
    uStack_b8 = (undefined4)in_XMM15_Qb;
    runtime_duffzero_offset_244();
    var_b0h = (int64_t)&var_210h;
    uVar3 = runtime_rand32();
    _uStack_b8 = CONCAT44(uVar3, uStack_b8);
    iVar14 = *(int64_t *)(in_RAX + 0x18);
    iVar15 = *(int64_t *)(in_RAX + 0x20);
    var_550h = iVar15;
    var_10h = iVar14;
    for (iVar9 = 0; uStack_238 = (undefined4)in_XMM15_Qb, iVar9 < iVar15; iVar9 = iVar9 + 1) {
        piVar11 = *(int64_t **)(iVar14 + iVar9 * 8);
        if ((piVar11 != (int64_t *)0x0) && (0 < piVar11[5])) {
            iVar14 = piVar11[1];
            var_520h = *piVar11;
            var_528h = piVar11[2];
            iVar15 = piVar11[3];
            var_560h = piVar11[4];
            var_558h = iVar9;
            var_538h = (int64_t)piVar11;
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x107d880, &var_c0h);
            uVar12 = puVar5[1] + 1;
            auVar19._8_8_ = uVar12;
            auVar19._0_8_ = *puVar5;
            if ((uint64_t)puVar5[2] < uVar12) {
                var_18h = (int64_t)puVar5;
                runtime_growslice(*puVar5, uVar12, puVar5[2], 1, 0x10bc200);
                puVar5 = (undefined8 *)var_18h;
                auVar19._8_8_ = extraout_RBX_00;
                auVar19._0_8_ = extraout_RAX;
                *(undefined8 *)(var_18h + 0x10) = extraout_RCX;
                if (*(int32_t *)0x355db50 != 0) {
                    auVar19 = runtime_gcWriteBarrier2();
                    *extraout_R11_00 = auVar19._0_8_;
                    extraout_R11_00[1] = *puVar5;
                }
                *puVar5 = auVar19._0_8_;
            }
            iVar13 = auVar19._8_8_;
            iVar10 = auVar19._0_8_;
            puVar5[1] = iVar13;
            iVar9 = iVar13 * 3;
            *(int64_t *)(iVar10 + -0x10 + iVar13 * 0x18) = iVar15;
            *(int64_t *)(iVar10 + -8 + iVar13 * 0x18) = var_560h;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11_01 = var_528h;
                extraout_R11_01[1] = *(int64_t *)(iVar10 + -0x18 + extraout_RSI * 8);
                iVar9 = extraout_RSI;
            }
            *(int64_t *)(iVar10 + -0x18 + iVar9 * 8) = var_528h;
            var_560h = *(int64_t *)(var_538h + 0x20);
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x107d880, &var_c0h);
            uVar12 = puVar5[1] + 1;
            auVar20._8_8_ = uVar12;
            auVar20._0_8_ = *puVar5;
            if ((uint64_t)puVar5[2] < uVar12) {
                var_18h = (int64_t)puVar5;
                runtime_growslice(*puVar5, uVar12, puVar5[2], 1, 0x10bc200);
                puVar5 = (undefined8 *)var_18h;
                auVar20._8_8_ = extraout_RBX_01;
                auVar20._0_8_ = extraout_RAX_00;
                *(undefined8 *)(var_18h + 0x10) = extraout_RCX_00;
                if (*(int32_t *)0x355db50 != 0) {
                    auVar20 = runtime_gcWriteBarrier2();
                    *extraout_R11_02 = auVar20._0_8_;
                    extraout_R11_02[1] = *puVar5;
                }
                *puVar5 = auVar20._0_8_;
            }
            iVar10 = auVar20._8_8_;
            iVar9 = auVar20._0_8_;
            puVar5[1] = iVar10;
            iVar15 = iVar10 * 3;
            *(int64_t *)(iVar9 + -0x10 + iVar10 * 0x18) = iVar14;
            *(int64_t *)(iVar9 + -8 + iVar10 * 0x18) = var_560h;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11_03 = var_520h;
                extraout_R11_03[1] = *(int64_t *)(iVar9 + -0x18 + extraout_RSI_00 * 8);
                iVar15 = extraout_RSI_00;
            }
            *(int64_t *)(iVar9 + -0x18 + iVar15 * 8) = var_520h;
            iVar15 = var_550h;
            iVar14 = var_10h;
            iVar9 = var_558h;
        }
    }
    uStack_338 = uStack_238;
    runtime_duffzero_offset_290();
    var_230h = (int64_t)&var_310h;
    uVar3 = runtime_rand32();
    _uStack_238 = CONCAT44(uVar3, uStack_238);
    uStack_478 = uStack_338;
    runtime_duffzero_offset_267();
    var_330h = (int64_t)&var_450h;
    uVar3 = runtime_rand32();
    _uStack_338 = CONCAT44(uVar3, uStack_338);
    runtime_duffzero_offset_313();
    var_470h = (int64_t)&var_518h;
    uVar3 = runtime_rand32();
    _uStack_478 = CONCAT44(uVar3, uStack_478);
    runtime_duffzero_offset_331();
    runtime_mapiterinit(0x107d880, &var_c0h, &var_90h);
    while (var_90h != 0) {
        pdVar8 = (double *)runtime_mapassign_faststr(0x107d9a0, &var_240h, *(undefined8 *)var_90h, *(undefined8 *)(var_90h + 8));
        *pdVar8 = *(double *)0x2e678a0;
        runtime_mapiternext(&var_90h);
    }
    runtime_mapaccess2_faststr(0x107d9a0, &var_240h, arg2, arg5);
    if (extraout_BL == '\0') {
        return (int64_t *)0x0;
    }
    runtime_mapassign_faststr(0x107d9a0, &var_240h, arg2, arg5);
    dVar17 = 0.0;
    *extraout_RAX_01 = 0;
    puVar5 = extraout_RAX_01;
    uVar12 = extraout_RCX_01;
    iVar14 = extraout_RBX_02;
    while( true ) {
        runtime_duffzero_offset_331(dVar17, puVar5, iVar14, uVar12, &var_b0h);
        runtime_mapiterinit(0x107d9a0, &var_240h, &var_90h);
        uVar6 = 0;
        var_548h = 0;
        dVar17 = *(double *)0x2e678a0;
        while (var_90h != 0) {
            var_20h = *(int64_t *)var_90h;
            var_550h = *(int64_t *)(var_90h + 8);
            var_560h = *(int64_t *)var_88h;
            pcVar7 = (char *)runtime_mapaccess1_faststr(0x107d940, &var_480h);
            if (((*pcVar7 == '\0') && ((double)var_560h < *(double *)0x2e67898)) &&
               (placeholder_2 = dVar17, (double)var_560h < dVar17)) {
                uVar6 = var_550h;
                var_548h = var_20h;
                dVar17 = (double)var_560h;
            }
            runtime_mapiternext(&var_90h);
        }
        if (uVar6 == 0) break;
        auVar19 = runtime_mapassign_faststr(0x107d940, &var_480h, var_548h, uVar6);
        iVar14 = auVar19._8_8_;
        *auVar19._0_8_ = 1;
        dVar17 = extraout_XMM0_Qa;
        if ((in_R10 == uVar6) &&
           (cVar1 = runtime_memequal(var_548h, arg6, uVar6), iVar14 = extraout_RBX_03, dVar17 = extraout_XMM0_Qa_00,
           cVar1 != '\0')) break;
        if (unaff_RBX == (undefined8 *)0x0) {
            uVar12 = 0;
        } else {
            if (arg5 == uVar6) {
                uVar2 = runtime_memequal(var_548h, arg2, uVar6);
                uVar2 = uVar2 ^ 1;
                iVar15 = extraout_RBX_04;
                dVar17 = extraout_XMM0_Qa_01;
            } else {
                uVar2 = 1;
                iVar15 = iVar14;
            }
            iVar14 = var_548h;
            if (uVar2 == 0) {
                uVar12 = 0;
                iVar14 = iVar15;
            } else {
                uVar4 = pkg_diapdu___TrafficManager__isNodeLockedByOther
                                  (arg4, arg1, placeholder_2, uVar6, in_XMM4_Qa, in_XMM5_Qa, in_stack_fffffffffffffa20, 
                                   in_stack_fffffffffffffa28, in_stack_fffffffffffffa30, in_stack_fffffffffffffa38, 
                                   in_stack_fffffffffffffa40, in_stack_fffffffffffffa48);
                uVar12 = (uint64_t)uVar4;
                dVar17 = extraout_XMM0_Qa_02;
            }
        }
        puVar5 = unaff_RBX;
        if ((char)uVar12 == '\0') {
            runtime_mapaccess1_faststr(0x107d880, &var_c0h, var_548h, uVar6);
            piVar11 = (int64_t *)*extraout_RAX_02;
            iVar15 = extraout_RAX_02[1];
            uVar12 = extraout_RCX_02;
            iVar14 = extraout_RBX_05;
            dVar17 = extraout_XMM0_Qa_03;
            while (iVar9 = var_548h, 0 < iVar15) {
                var_20h = *piVar11;
                var_558h = piVar11[1];
                var_560h = piVar11[2];
                var_550h = iVar15;
                var_30h = (int64_t)piVar11;
                if (unaff_RBX == (undefined8 *)0x0) {
                    cVar1 = '\0';
                    iVar9 = iVar14;
                } else {
                    cVar1 = pkg_diapdu___TrafficManager__isEdgeLockedByOther
                                      (var_20h, var_558h, placeholder_2, uVar6, arg4, arg1, in_stack_fffffffffffffa20, 
                                       in_stack_fffffffffffffa28, in_stack_fffffffffffffa30, in_stack_fffffffffffffa38, 
                                       in_stack_fffffffffffffa40, in_stack_fffffffffffffa48, in_stack_fffffffffffffa50, 
                                       iVar15);
                }
                iVar15 = var_20h;
                uVar12 = var_20h;
                iVar14 = iVar9;
                dVar17 = (double)var_560h;
                if (cVar1 == '\0') {
                    if (unaff_RBX == (undefined8 *)0x0) {
                        cVar1 = '\0';
                        iVar15 = iVar9;
                    } else {
                        cVar1 = pkg_diapdu___TrafficManager__isNodeLockedByOther
                                          (arg4, arg1, placeholder_2, var_558h, in_XMM4_Qa, in_XMM5_Qa, 
                                           in_stack_fffffffffffffa20, in_stack_fffffffffffffa28, 
                                           in_stack_fffffffffffffa30, in_stack_fffffffffffffa38, 
                                           in_stack_fffffffffffffa40, in_stack_fffffffffffffa48);
                    }
                    uVar12 = var_20h;
                    iVar14 = iVar15;
                    dVar17 = (double)var_560h;
                    if (cVar1 == '\0') {
                        runtime_mapaccess2_faststr(0x107d9a0, &var_240h, var_20h, var_558h);
                        if (extraout_BL_02 == '\0') {
                            pdVar8 = (double *)runtime_mapassign_faststr(0x107d9a0, &var_240h, var_20h, var_558h);
                            *pdVar8 = *(double *)0x2e678a0;
                        }
                        pdVar8 = (double *)runtime_mapaccess1_faststr(0x107d9a0, &var_240h, var_548h, uVar6);
                        dVar18 = (double)var_560h + *pdVar8;
                        pdVar8 = (double *)runtime_mapaccess1_faststr(0x107d9a0, &var_240h, var_20h, var_558h);
                        dVar17 = *pdVar8;
                        uVar12 = uVar6;
                        iVar14 = var_548h;
                        if (dVar18 < dVar17) {
                            pdVar8 = (double *)runtime_mapassign_faststr(0x107d9a0, &var_240h, var_20h, var_558h);
                            *pdVar8 = dVar18;
                            piVar11 = (int64_t *)runtime_mapassign_faststr(0x107db20, &var_340h, var_20h, var_558h);
                            piVar11[1] = uVar6;
                            dVar17 = extraout_XMM0_Qa_04;
                            if (*(int32_t *)0x355db50 != 0) {
                                piVar11 = (int64_t *)runtime_gcWriteBarrier2();
                                *extraout_R11_06 = var_548h;
                                extraout_R11_06[1] = *piVar11;
                                uVar12 = extraout_RCX_05;
                                dVar17 = extraout_XMM0_Qa_05;
                            }
                            *piVar11 = var_548h;
                            iVar14 = var_548h;
                        }
                    }
                }
                piVar11 = (int64_t *)(var_30h + 0x18);
                iVar15 = var_550h + -1;
            }
        }
    }
    pdVar8 = (double *)runtime_mapaccess2_faststr(0x107d9a0, &var_240h, arg6, in_R10);
    if ((extraout_BL_00 != '\0') && (*pdVar8 < *(double *)0x2e67898)) {
        var_540h = runtime_newobject(0x104df00);
        *(uint64_t *)(var_540h + 8) = in_R10;
        uVar12 = in_R10;
        if (*(int32_t *)0x355db50 != 0) {
            var_540h = runtime_gcWriteBarrier1();
            *extraout_R11_04 = arg6;
            uVar12 = extraout_RCX_03;
        }
        *(int64_t *)var_540h = arg6;
        iVar14 = arg6;
        uVar6 = 1;
        while( true ) {
            if ((arg5 == uVar12) &&
               (var_530h = iVar14, cVar1 = runtime_memequal(iVar14, arg2, uVar12, uVar6, arg6), iVar14 = var_530h,
               cVar1 != '\0')) {
                runtime_mapaccess1_faststr(0x107d9a0, &var_240h, arg6, in_R10);
                return (int64_t *)var_540h;
            }
            piVar11 = (int64_t *)runtime_mapaccess2_faststr(0x107db20, &var_340h, iVar14, uVar12);
            if ((extraout_BL_01 == '\0') || (uVar12 = piVar11[1], uVar12 == 0)) break;
            var_530h = *piVar11;
            piVar11 = (int64_t *)runtime_newobject(0x104df00);
            piVar11[1] = uVar12;
            if (*(int32_t *)0x355db50 != 0) {
                piVar11 = (int64_t *)runtime_gcWriteBarrier1();
                *extraout_R11_05 = var_530h;
            }
            *piVar11 = var_530h;
            uVar16 = uVar6 + 1;
            if (uVar16 < 2) {
                iVar14 = 1;
            } else {
                runtime_growslice(piVar11, uVar16, 1, uVar6, 0x1042920);
                piVar11 = extraout_RAX_03;
                iVar14 = extraout_RCX_04;
                uVar16 = extraout_RBX_06;
            }
            var_28h = (int64_t)piVar11;
            runtime_typedslicecopy(0x1042920, (uint64_t)((uint32_t)(-(iVar14 + -1) >> 0x3f) & 0x10) + (int64_t)piVar11, 
                            uVar16 - 1, var_540h, uVar6);
            var_540h = var_28h;
            iVar14 = var_530h;
            uVar6 = uVar16;
        }
        return (int64_t *)0x0;
    }
    return (int64_t *)0x0;
}

/* CAS-Backend/pkg/diapdu.PlanTaskRoute | VA 0xe374a0 | traffic.go:285
   DWARF parameters and results: graph *CAS-Backend/pkg/diapdu.Graph, tm *CAS-Backend/pkg/diapdu.TrafficManager, vehicleID string, vehPos CAS-Backend/pkg/diapdu.Location, pickup CAS-Backend/pkg/diapdu.Location, dropoff CAS-Backend/pkg/diapdu.Location, ~r0 *CAS-Backend/pkg/diapdu.TrafficPathResult, ~r1 bool
   DWARF locals: d2 float64, nVeh *CAS-Backend/pkg/diapdu.Node, nFrom *CAS-Backend/pkg/diapdu.Node, nTo *CAS-Backend/pkg/diapdu.Node, ok2 bool, d1 float64, ok1 bool, p1 []string, p2 []string, full []string, total float64 */
// WARNING: Variable defined which should be unmapped: var_98h
// WARNING: [rz-ghidra] Detected overlap for variable var_b4h
// WARNING: [rz-ghidra] Detected overlap for variable var_234h
// WARNING: [rz-ghidra] Detected overlap for variable var_334h
// WARNING: [rz-ghidra] Detected overlap for variable var_474h
// WARNING: [rz-ghidra] Removing arg arg_5f8h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_610h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_5f0h because it doesn't fit into ProtoModel

undefined8 * __stdcall
pkg_diapdu_PlanTaskRoute
          (int64_t arg7, int64_t arg8, int64_t arg9, int64_t arg10, int64_t arg11, int64_t arg1,
          undefined8 placeholder_6, undefined8 placeholder_7, int64_t arg4, undefined8 placeholder_9,
          undefined8 placeholder_10, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_30h, int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, int64_t arg_50h, int64_t arg_88h,
          int64_t arg_d0h, int64_t arg_108h)
{
    bool bVar1;
    int64_t iVar2;
    char cVar3;
    int64_t in_RAX;
    undefined8 *puVar4;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t extraout_RAX_01;
    int64_t extraout_RAX_02;
    int64_t extraout_RAX_03;
    int64_t extraout_RAX_04;
    int64_t iVar5;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    int64_t extraout_RCX_02;
    int64_t extraout_RCX_03;
    int64_t extraout_RCX_04;
    int64_t iVar6;
    int64_t iVar7;
    uint64_t unaff_RBX;
    uint64_t extraout_RBX;
    uint64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    uint64_t extraout_RBX_02;
    uint64_t uVar8;
    uint64_t extraout_RBX_03;
    uint64_t extraout_RBX_04;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    double extraout_XMM0_Qa;
    double extraout_XMM0_Qa_00;
    int64_t in_XMM5_Qa;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar9 [16];
    int64_t in_stack_ffffffffffffff08;
    int64_t in_stack_ffffffffffffff10;
    int64_t in_stack_ffffffffffffff18;
    int64_t in_stack_ffffffffffffff20;
    int64_t in_stack_ffffffffffffff28;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
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
    
    while (&var_78h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (in_RAX == 0) {
        return (undefined8 *)0x0;
    }
    var_70h = arg10;
    var_68h = arg9;
    var_60h = arg11;
    var_58h = in_XMM5_Qa;
    var_40h = pkg_diapdu_closestNodeTo();
    var_30h = pkg_diapdu_closestNodeTo(var_68h, var_70h, in_RAX);
    var_38h = pkg_diapdu_closestNodeTo(var_60h, var_58h, in_RAX);
    if (((var_40h == 0) || (var_30h == 0)) || (var_38h == 0)) {
        return (undefined8 *)0x0;
    }
    var_28h = 0;
    var_b8h = 0;
    iVar5 = arg4;
    iVar7 = arg1;
    var_20h = in_XMM15_Qa;
    var_18h = in_XMM15_Qb;
    puVar4 = (undefined8 *)
             pkg_diapdu_shortestPathOnGraph
                       (arg1, *(int64_t *)var_40h, arg9, arg4, *(int64_t *)(var_40h + 8), *(int64_t *)var_30h, 
                        in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, 
                        in_stack_ffffffffffffff20, in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, 
                        in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, var_98h);
    if ((char)iVar7 == '\0') {
        return (undefined8 *)0x0;
    }
    if (unaff_RBX == 0) {
        bVar1 = false;
    } else {
        var_48h = (int64_t)puVar4;
        if (var_20h == 0) {
            var_78h = unaff_RBX;
            var_10h = var_28h;
            if ((uint64_t)var_18h < unaff_RBX) {
                runtime_growslice(var_28h, unaff_RBX, var_18h, unaff_RBX, 0x1042920);
                var_18h = extraout_RCX;
                var_78h = extraout_RBX;
                var_10h = extraout_RAX;
            }
            runtime_typedslicecopy(0x1042920, var_10h, var_78h, var_48h, unaff_RBX);
            var_28h = var_10h;
            var_20h = var_78h;
            var_b8h = (int64_t)(extraout_XMM0_Qa + 0.0);
            bVar1 = true;
        } else {
            iVar6 = (var_20h + -1) * 0x10;
            iVar7 = *(int64_t *)(iVar6 + 8 + var_28h);
            if ((puVar4[1] == iVar7) &&
               (cVar3 = runtime_memequal(*(undefined8 *)(iVar6 + var_28h), *puVar4, iVar7), var_98h = iVar5,
               cVar3 != '\0')) {
                uVar8 = (unaff_RBX + var_20h) - 1;
                var_10h = (uint64_t)((uint32_t)(-(iVar5 + -1) >> 0x3f) & 0x10) + var_48h;
                var_78h = unaff_RBX - 1;
                iVar5 = var_28h;
                if ((uint64_t)var_18h < uVar8) {
                    runtime_growslice();
                    iVar5 = extraout_RAX_00;
                    var_18h = extraout_RCX_00;
                    uVar8 = extraout_RBX_00;
                }
                iVar7 = var_78h;
                var_78h = uVar8;
                iVar6 = var_10h;
                var_10h = iVar5;
                runtime_typedslicecopy(0x1042920, iVar5 + (var_20h << 4 & var_20h - var_18h >> 0x3f), uVar8 - var_20h, iVar6, 
                                iVar7);
                var_20h = var_78h;
            } else {
                uVar8 = unaff_RBX + var_20h;
                var_10h = var_28h;
                if ((uint64_t)var_18h < uVar8) {
                    var_78h = var_20h;
                    runtime_growslice(extraout_XMM0_Qa, var_28h, uVar8, var_18h, unaff_RBX, 0x1042920);
                    var_18h = extraout_RCX_01;
                    var_20h = var_78h;
                    uVar8 = extraout_RBX_01;
                    var_10h = extraout_RAX_01;
                }
                var_78h = var_18h;
                runtime_typedslicecopy(0x1042920, var_10h + (var_20h << 4 & var_20h - var_18h >> 0x3f), uVar8 - var_20h, 
                                var_48h, unaff_RBX);
                var_18h = var_78h;
                var_20h = uVar8;
            }
            var_b8h = (int64_t)(extraout_XMM0_Qa + 0.0);
            bVar1 = true;
            var_28h = var_10h;
        }
    }
    if (bVar1) {
        puVar4 = (undefined8 *)
                 pkg_diapdu_shortestPathOnGraph
                           (arg1, *(int64_t *)var_30h, arg9, arg4, *(int64_t *)(var_30h + 8), *(int64_t *)var_38h, 
                            in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, 
                            in_stack_ffffffffffffff20, in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, 
                            in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, var_98h);
        if ((char)arg1 == '\0') {
            return (undefined8 *)0x0;
        }
        if (unaff_RBX == 0) {
            bVar1 = false;
        } else {
            var_50h = (int64_t)puVar4;
            if (var_20h == 0) {
                iVar5 = var_18h;
                uVar8 = unaff_RBX;
                iVar7 = var_28h;
                if ((uint64_t)var_18h < unaff_RBX) {
                    runtime_growslice(var_28h, unaff_RBX, var_18h, unaff_RBX, 0x1042920);
                    iVar5 = extraout_RCX_02;
                    uVar8 = extraout_RBX_02;
                    iVar7 = extraout_RAX_02;
                }
                var_78h = iVar5;
                var_10h = iVar7;
                runtime_typedslicecopy(0x1042920, iVar7, uVar8, var_50h, unaff_RBX);
                var_28h = var_10h;
                var_18h = var_78h;
                var_b8h = (int64_t)((double)var_b8h + extraout_XMM0_Qa_00);
                bVar1 = true;
                var_20h = uVar8;
            } else {
                iVar7 = (var_20h + -1) * 0x10;
                iVar5 = *(int64_t *)(iVar7 + 8 + var_28h);
                if ((puVar4[1] == iVar5) &&
                   (cVar3 = runtime_memequal(*(undefined8 *)(iVar7 + var_28h), *puVar4, iVar5), cVar3 != '\0')) {
                    var_78h = (unaff_RBX + var_20h) - 1;
                    var_10h = (uint64_t)((uint32_t)(-(arg4 + -1) >> 0x3f) & 0x10) + var_50h;
                    iVar5 = var_28h;
                    iVar7 = var_18h;
                    iVar6 = var_20h;
                    if ((uint64_t)var_18h < (uint64_t)var_78h) {
                        var_78h = var_20h;
                        runtime_growslice();
                        iVar5 = extraout_RAX_03;
                        iVar7 = extraout_RCX_03;
                        iVar6 = var_78h;
                        var_78h = extraout_RBX_03;
                    }
                    iVar2 = var_10h;
                    var_10h = iVar5;
                    runtime_typedslicecopy(0x1042920, iVar5 + (iVar6 << 4 & iVar6 - iVar7 >> 0x3f), var_78h - iVar6, iVar2, 
                                    unaff_RBX - 1);
                    var_18h = iVar7;
                } else {
                    uVar8 = var_20h + unaff_RBX;
                    iVar5 = var_18h;
                    iVar7 = var_20h;
                    iVar6 = var_28h;
                    if ((uint64_t)var_18h < uVar8) {
                        var_78h = var_20h;
                        runtime_growslice(extraout_XMM0_Qa_00, var_28h, uVar8, var_18h, unaff_RBX, 0x1042920);
                        iVar5 = extraout_RCX_04;
                        iVar7 = var_78h;
                        uVar8 = extraout_RBX_04;
                        iVar6 = extraout_RAX_04;
                    }
                    var_78h = uVar8;
                    var_10h = iVar6;
                    runtime_typedslicecopy(0x1042920, iVar6 + (iVar7 << 4 & iVar7 - iVar5 >> 0x3f), uVar8 - iVar7, var_50h, 
                                    unaff_RBX);
                    var_18h = iVar5;
                }
                var_b8h = (int64_t)((double)var_b8h + extraout_XMM0_Qa_00);
                bVar1 = true;
                var_28h = var_10h;
                var_20h = var_78h;
            }
        }
        if (!bVar1) {
            return (undefined8 *)0x0;
        }
        iVar5 = runtime_newobject(0x10bc480);
        auVar9._8_8_ = var_28h;
        auVar9._0_8_ = iVar5;
        *(int64_t *)(iVar5 + 8) = var_20h;
        *(int64_t *)(iVar5 + 0x10) = var_18h;
        if (*(int32_t *)0x355db50 != 0) {
            auVar9 = runtime_gcWriteBarrier1();
            *extraout_R11 = auVar9._8_8_;
        }
        puVar4 = auVar9._0_8_;
        *puVar4 = auVar9._8_8_;
        puVar4[3] = var_b8h;
        return puVar4;
    }
    return (undefined8 *)0x0;
}

/* CAS-Backend/pkg/diapdu.StraightLineTaskDistance | VA 0xe37dc0 | traffic.go:338
   DWARF parameters and results: vehPos CAS-Backend/pkg/diapdu.Location, pickup CAS-Backend/pkg/diapdu.Location, dropoff CAS-Backend/pkg/diapdu.Location, ~r0 float64
   DWARF locals: (no entries) */
double __stdcall pkg_diapdu_StraightLineTaskDistance(int64_t arg7, int64_t arg8, int64_t arg9, int64_t arg10)
{
    double in_XMM4_Qa;
    double in_XMM5_Qa;
    
    return SQRT(((double)arg8 - (double)arg10) * ((double)arg8 - (double)arg10) +
                ((double)arg7 - (double)arg9) * ((double)arg7 - (double)arg9)) +
           SQRT(((double)arg10 - in_XMM5_Qa) * ((double)arg10 - in_XMM5_Qa) +
                ((double)arg9 - in_XMM4_Qa) * ((double)arg9 - in_XMM4_Qa));
}
