/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.SetGlobalDynamicTraffic | VA 0xe37e00 | traffic_dynamic.go:77
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController
   DWARF locals: (no entries) */
void __stdcall pkg_diapdu_SetGlobalDynamicTraffic(int64_t arg_8h, int64_t arg_20h)
{
    undefined8 in_RAX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    sync___RWMutex__Lock(0x355dba0);
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = in_RAX;
        extraout_R11[1] = *(undefined8 *)0x3512060;
    }
    *(undefined8 *)0x3512060 = in_RAX;
    sync___RWMutex__Unlock(0x355dba0);
    return;
}

/* CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic | VA 0xe37e80 | traffic_dynamic.go:84
   DWARF parameters and results: ~r0 *CAS-Backend/pkg/diapdu.DynamicTrafficController, ~r0 *CAS-Backend/pkg/diapdu.DynamicTrafficController
   DWARF locals: (no entries) */
// WARNING: Restarted to delay deadcode elimination for space: stack
// WARNING: [rz-ghidra] Detected overlap for variable var_28h

undefined8 pkg_diapdu_GetGlobalDynamicTraffic(undefined8 param_1, undefined8 param_2)
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
    iVar1 = *(int32_t *)0x355dbb0 + 1;
    UNLOCK();
    iVar3 = *(int32_t *)0x355dbb0 + 1;
    *(int32_t *)0x355dbb0 = iVar1;
    if (iVar3 < 0) {
        param_2 = 0;
        sync_runtime_SemacquireRWMutexR(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8);
    }
    uVar2 = *(undefined8 *)0x3512060;
    var_20h = 0xe37f40;
    var_18h = 0x355dba0;
    var_10h = (int64_t)&var_20h;
    (*(code *)0xe37f40)(0xe37f40, param_2);
    return uVar2;
}

/* CAS-Backend/pkg/diapdu.GetGlobalDynamicTraffic.deferwrap1 | VA 0xe37f40 | traffic_dynamic.go:86
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu_GetGlobalDynamicTraffic_deferwrap1
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

/* CAS-Backend/pkg/diapdu.HandleMonitorPush | VA 0xe37fa0 | traffic_dynamic.go:99
   DWARF parameters and results: vehicleID string, pkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage
   DWARF locals: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController */
void __stdcall
pkg_diapdu_HandleMonitorPush(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_28h)
{
    int32_t iVar1;
    int64_t iVar2;
    undefined8 in_RAX;
    int32_t iVar3;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (((unaff_RBX == 0) || (arg4 == 0)) ||
       ((*(int64_t *)(arg4 + 0x58) == 0 &&
        (((*(int64_t *)(arg4 + 0x48) == 0 && (*(int64_t *)(arg4 + 0x38) == 0)) && (*(int64_t *)(arg4 + 8) == 0)))))) {
        return;
    }
    LOCK();
    iVar1 = *(int32_t *)0x355dbb0 + 1;
    UNLOCK();
    iVar3 = *(int32_t *)0x355dbb0 + 1;
    *(int32_t *)0x355dbb0 = iVar1;
    if (iVar3 < 0) {
        sync_runtime_SemacquireRWMutexR(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0);
    }
    iVar2 = *(int64_t *)0x3512060;
    LOCK();
    iVar3 = *(int32_t *)0x355dbb0 + -1;
    UNLOCK();
    iVar1 = *(int32_t *)0x355dbb0 + -1;
    *(int32_t *)0x355dbb0 = iVar3;
    if (iVar1 < 0) {
        sync___RWMutex__rUnlockSlow(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8);
    }
    if (iVar2 != 0) {
        pkg_diapdu___DynamicTrafficController__OnMonitorPush(iVar2, in_RAX, unaff_RBX, arg4);
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).RegisterRoute | VA 0xe380e0 | traffic_dynamic.go:138
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, vehicleID string, nodeNames []string, priority int
   DWARF locals: cp []string */
void __stdcall
pkg_diapdu___DynamicTrafficController__RegisterRoute
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t placeholder_13, int64_t arg_48h)
{
    int32_t iVar1;
    int32_t *in_RAX;
    undefined8 extraout_RAX;
    undefined8 *puVar2;
    int64_t *piVar3;
    undefined8 extraout_RCX;
    undefined8 unaff_RBX;
    undefined8 extraout_RBX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (((in_RAX != (int32_t *)0x0) && (arg4 != 0)) && (1 < arg2)) {
        runtime_growslice(0, arg2, 0, arg2, 0x1042920);
        runtime_typedslicecopy(0x1042920, extraout_RAX, extraout_RBX, arg1, arg2);
        LOCK();
        iVar1 = *in_RAX;
        if (iVar1 == 0) {
            *in_RAX = 1;
        }
        UNLOCK();
        if (placeholder_13 < 1) {
            placeholder_13 = 2;
        }
        if (iVar1 != 0) {
            sync___Mutex__lockSlow(in_RAX);
        }
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x107d8e0, *(undefined8 *)(in_RAX + 2), unaff_RBX, arg4);
        puVar2[1] = extraout_RBX;
        puVar2[2] = extraout_RCX;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = extraout_RAX;
            extraout_R11[1] = *puVar2;
        }
        *puVar2 = extraout_RAX;
        piVar3 = (int64_t *)runtime_mapassign_faststr(0x107da00, *(undefined8 *)(in_RAX + 4), unaff_RBX, arg4);
        *piVar3 = placeholder_13;
        LOCK();
        iVar1 = *in_RAX;
        *in_RAX = *in_RAX + -1;
        UNLOCK();
        if (iVar1 != 1) {
            sync___Mutex__unlockSlow();
        }
        pkg_diapdu___DynamicTrafficController__seedMonitorSnapFromHub(in_RAX, unaff_RBX, arg4);
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).seedMonitorSnapFromHub | VA 0xe382e0 | traffic_dynamic.go:154
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, vehicleID string
   DWARF locals: snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ok bool, pkg CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall
pkg_diapdu___DynamicTrafficController__seedMonitorSnapFromHub
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h)
{
    int64_t in_RAX;
    int64_t iVar1;
    char extraout_BL;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    int64_t var_a0h;
    int64_t var_70h;
    int64_t var_68h;
    undefined auStack_10 [8];
    int64_t var_8h;
    
    while (auStack_10 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe383e5;
        runtime_morestack_noctxt_abi0();
    }
    if ((in_RAX != 0) && (arg4 != 0)) {
        iVar1 = pkg_diapdu___VehicleRuntimeHub__Fresh(*(undefined8 *)0xfb4b70);
        if ((extraout_BL != '\0') &&
           ((((*(int64_t *)(iVar1 + 0xa8) != 0 || (*(int64_t *)(iVar1 + 0x98) != 0)) ||
             (*(int64_t *)(iVar1 + 0x88) != 0)) || (*(int64_t *)(iVar1 + 0x58) != 0)))) {
            var_70h = *(int64_t *)(iVar1 + 0x50);
            runtime_duffcopy_offset_812();
            pkg_diapdu___DynamicTrafficController__OnMonitorPush(in_RAX, unaff_RBX, arg4, &var_70h);
            return;
        }
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).UnregisterVehicle | VA 0xe38400 | traffic_dynamic.go:166
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, vehicleID string
   DWARF locals: m map[string]int64, pk string */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_2fh because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_80h

void __stdcall
pkg_diapdu___DynamicTrafficController__UnregisterVehicle
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_c0h)
{
    int32_t iVar1;
    int32_t *in_RAX;
    char *pcVar2;
    undefined8 uVar3;
    undefined8 extraout_RCX;
    int64_t iVar4;
    undefined8 unaff_RBX;
    undefined8 extraout_RBX;
    int64_t unaff_R14;
    int64_t var_b8h;
    undefined auStack_88 [7];
    int64_t var_81h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_60h;
    undefined auStack_28 [32];
    int64_t var_8h;
    
    while (auStack_28 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe386f5;
        runtime_morestack_noctxt_abi0();
    }
    if ((in_RAX != (int32_t *)0x0) && (arg4 != 0)) {
        LOCK();
        iVar1 = *in_RAX;
        if (iVar1 == 0) {
            *in_RAX = 1;
        }
        UNLOCK();
        if (iVar1 != 0) {
            sync___Mutex__lockSlow(in_RAX);
        }
        runtime_mapdelete_faststr(0x107d8e0, *(undefined8 *)(in_RAX + 2), unaff_RBX, arg4);
        runtime_mapdelete_faststr(0x107da00, *(undefined8 *)(in_RAX + 4), unaff_RBX, arg4);
        runtime_mapdelete_faststr(0x107d6a0, *(undefined8 *)(in_RAX + 6), unaff_RBX, arg4);
        runtime_mapdelete_faststr(0x107db80, *(undefined8 *)(in_RAX + 8), unaff_RBX, arg4);
        runtime_mapdelete_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x12), unaff_RBX, arg4);
        pcVar2 = (char *)runtime_mapaccess1_faststr(0x107d940, *(undefined8 *)(in_RAX + 10), unaff_RBX, arg4);
        var_81h._0_1_ = *pcVar2;
        uVar3 = runtime_mapdelete_faststr(0x107d940, *(undefined8 *)(in_RAX + 10), unaff_RBX, arg4);
        runtime_duffzero_offset_331(uVar3, *(undefined8 *)(in_RAX + 0xc), extraout_RCX, auStack_88);
        runtime_mapiterinit(0x107dac0, extraout_RBX, &var_68h);
        while (var_68h != 0) {
            var_70h = *(int64_t *)var_60h;
            var_78h = *(int64_t *)var_68h;
            unique0x00023e00 = *(undefined8 *)(var_68h + 8);
            runtime_mapdelete_faststr(0x107da60, var_70h, unaff_RBX, arg4);
            if (var_70h == 0) {
                iVar4 = 0;
            } else {
                iVar4 = *(int64_t *)var_70h;
            }
            if (iVar4 == 0) {
                runtime_mapdelete_faststr(0x107dac0, *(undefined8 *)(in_RAX + 0xc), var_78h, stack0xffffffffffffff80);
            }
            runtime_mapiternext(&var_68h);
        }
        LOCK();
        iVar1 = *in_RAX;
        *in_RAX = *in_RAX + -1;
        UNLOCK();
        if (iVar1 != 1) {
            sync___Mutex__unlockSlow();
        }
        if ((char)var_81h != '\0') {
            pkg_diapdu_sendResumeNavigationForVehicle(unaff_RBX, arg4);
        }
        pkg_diapdu___DynamicTrafficController__recompute(in_RAX);
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).OnMonitorPush | VA 0xe38720 | traffic_dynamic.go:191
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, vehicleID string, pkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage
   DWARF locals: &cp *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall
pkg_diapdu___DynamicTrafficController__OnMonitorPush
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h,
          undefined8 placeholder_10, undefined8 placeholder_11, int64_t arg_38h)
{
    int32_t iVar1;
    int32_t *in_RAX;
    undefined8 *puVar2;
    undefined8 *puVar3;
    undefined8 extraout_RAX;
    undefined8 extraout_RCX;
    undefined8 unaff_RBX;
    undefined8 extraout_RBX;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    int64_t var_58h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (((in_RAX != (int32_t *)0x0) && (arg1 != 0)) &&
       ((*(int64_t *)(arg1 + 0x58) != 0 ||
        (((*(int64_t *)(arg1 + 0x48) != 0 || (*(int64_t *)(arg1 + 0x38) != 0)) || (*(int64_t *)(arg1 + 8) != 0)))))) {
        puVar2 = (undefined8 *)runtime_newobject(0x11162a0);
        if (*(int32_t *)0x355db50 != 0) {
            runtime_wbMove(0x11162a0, puVar2, arg1);
        }
        *puVar2 = *(undefined8 *)arg1;
        runtime_duffcopy_offset_812();
        LOCK();
        iVar1 = *in_RAX;
        if (iVar1 == 0) {
            *in_RAX = 1;
        }
        UNLOCK();
        if (iVar1 != 0) {
            sync___Mutex__lockSlow(in_RAX);
        }
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x107d6a0, *(undefined8 *)(in_RAX + 6), unaff_RBX, placeholder_11);
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = puVar2;
            extraout_R11[1] = *puVar3;
        }
        *puVar3 = puVar2;
        time_Now();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x107db80, *(undefined8 *)(in_RAX + 8), unaff_RBX, placeholder_11);
        *puVar2 = extraout_RAX;
        puVar2[1] = extraout_RBX;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_00 = extraout_RCX;
            extraout_R11_00[1] = puVar2[2];
        }
        puVar2[2] = extraout_RCX;
        LOCK();
        iVar1 = *in_RAX;
        *in_RAX = *in_RAX + -1;
        UNLOCK();
        if (iVar1 != 1) {
            sync___Mutex__unlockSlow();
        }
        pkg_diapdu___DynamicTrafficController__recompute(in_RAX);
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).FreshMonitorSnap | VA 0xe38940 | traffic_dynamic.go:204
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, vehicleID string, maxAge time.Duration, ~r0 *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, ~r1 bool
   DWARF locals: &cp *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, snap *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall
pkg_diapdu___DynamicTrafficController__FreshMonitorSnap
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h,
          undefined8 placeholder_10, int64_t arg_30h, undefined8 placeholder_12, undefined8 placeholder_13,
          int64_t arg_48h, int64_t arg_78h)
{
    int32_t iVar1;
    undefined8 *puVar2;
    undefined8 uVar3;
    undefined8 uVar4;
    int32_t *in_RAX;
    int64_t *piVar5;
    undefined8 *puVar6;
    int64_t iVar7;
    undefined8 uVar8;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    int64_t var_60h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if ((in_RAX == (int32_t *)0x0) || (arg4 == 0)) {
        return 0;
    }
    LOCK();
    iVar1 = *in_RAX;
    if (iVar1 == 0) {
        *in_RAX = 1;
    }
    UNLOCK();
    if (iVar1 != 0) {
        sync___Mutex__lockSlow(in_RAX);
    }
    piVar5 = (int64_t *)runtime_mapaccess1_faststr(0x107d6a0, *(undefined8 *)(in_RAX + 6), unaff_RBX, arg4);
    puVar2 = (undefined8 *)*piVar5;
    puVar6 = (undefined8 *)runtime_mapaccess1_faststr(0x107db80, *(undefined8 *)(in_RAX + 8), unaff_RBX, arg4);
    uVar8 = *puVar6;
    uVar3 = puVar6[1];
    uVar4 = puVar6[2];
    LOCK();
    iVar1 = *in_RAX;
    *in_RAX = *in_RAX + -1;
    UNLOCK();
    if ((int32_t)(iVar1 + -1) != 0) {
        sync___Mutex__unlockSlow(in_RAX, iVar1 + -1);
    }
    if (((puVar2 != (undefined8 *)0x0) && (0 < arg1)) && (iVar7 = time_Since(uVar8, uVar3, uVar4), iVar7 <= arg1))
    {
        puVar6 = (undefined8 *)runtime_newobject(0x11162a0);
        if (*(int32_t *)0x355db50 != 0) {
            runtime_wbMove(0x11162a0, puVar6, puVar2);
        }
        *puVar6 = *puVar2;
        uVar8 = runtime_duffcopy_offset_812();
        return uVar8;
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.allSubTasksTerminalForDispatch | VA 0xe38b20 | traffic_dynamic.go:251
   DWARF parameters and results: snap *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, taskIDs []string, ~r0 bool
   DWARF locals: matched int, prefix string, ~r0.ptr *uint8, ~r0.len int */
undefined8 __stdcall
pkg_diapdu_allSubTasksTerminalForDispatch
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_1a0h)
{
    undefined8 uVar1;
    bool bVar2;
    char cVar3;
    int64_t in_RAX;
    undefined8 uVar4;
    int64_t *piVar5;
    undefined8 uVar6;
    int64_t extraout_RAX;
    uint8_t uVar7;
    int64_t iVar8;
    int64_t extraout_RCX;
    int64_t iVar9;
    char extraout_BL;
    undefined8 unaff_RBX;
    undefined8 extraout_RBX;
    undefined *puVar10;
    undefined *unaff_RBP;
    undefined *puVar11;
    undefined8 *puVar12;
    uint64_t uVar13;
    uint64_t uVar14;
    int64_t extraout_RDI;
    undefined8 *puVar15;
    int64_t iVar16;
    int64_t iVar17;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_188h;
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
    int64_t var_40h;
    int64_t var_30h;
    int64_t var_20h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (puVar10 = (undefined *)*(undefined **)0x20, puVar11 = unaff_RBP,
          (undefined *)((int64_t)*(undefined **)0x20 + -0xf8) <= *(undefined **)(unaff_R14 + 0x10)) {
code_r0x00e38ea6:
        *(int64_t *)(puVar10 + 8) = in_RAX;
        *(undefined8 *)(puVar10 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar10 + 0x18) = arg4;
        *(int64_t *)(puVar10 + 0x20) = arg1;
        *(undefined8 *)(puVar10 + -8) = 0xe38ebf;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(int64_t *)(puVar10 + 8);
        unaff_RBX = *(undefined8 *)(puVar10 + 0x10);
        arg4 = *(int64_t *)(puVar10 + 0x18);
        arg1 = *(int64_t *)(puVar10 + 0x20);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar10;
        unaff_RBP = puVar11;
    }
    puVar11 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
    *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
    puVar10 = (undefined *)((int64_t)*(undefined **)0x20 + -0x178);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
    if ((in_RAX == 0) || (arg4 == 0)) {
        return 0;
    }
    *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
    *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
    *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
    iVar8 = *(int64_t *)(in_RAX + 0x58);
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x40) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x38) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x30) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = in_XMM15_Qb;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = in_XMM15_Qa;
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qb;
    if (iVar8 < 9) {
        *(undefined **)((int64_t)*(undefined **)0x20 + -0x188) = (undefined *)((int64_t)*(undefined **)0x20 + -8);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe38bb4;
        runtime_duffzero_offset_290();
        puVar11 = *(undefined **)((int64_t)*(undefined **)0x20 + -0x188);
        *(undefined **)((int64_t)*(undefined **)0x20 + -0x30) = (undefined *)((int64_t)*(undefined **)0x20 + -0x110);
    }
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe38bdc;
    uVar4 = runtime_makemap(0x107da00, iVar8, (undefined *)((int64_t)*(undefined **)0x20 + -0x40));
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120) = uVar4;
    iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
    puVar12 = *(undefined8 **)(iVar9 + 0x50);
    iVar8 = *(int64_t *)(iVar9 + 0x58);
    while (0 < iVar8) {
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) = iVar8;
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10) = puVar12;
        uVar6 = *puVar12;
        uVar1 = puVar12[1];
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = puVar12[2];
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe38c2a;
        puVar12 = (undefined8 *)runtime_mapassign_faststr(0x107da00, uVar4, uVar6, uVar1);
        *puVar12 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138);
        puVar12 = (undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) + 0x20);
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120);
        iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) + -1;
    }
    puVar12 = *(undefined8 **)((int64_t)*(undefined **)0x20 + 0x10);
    iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18);
    puVar15 = puVar12;
    do {
        if (iVar8 < 1) {
            bVar2 = true;
code_r0x00e38cf3:
            if (bVar2) {
                return 1;
            }
            puVar12 = (undefined8 *)
                      ((uint64_t)((uint32_t)(-(*(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) + -1) >> 0x3f) & 0x10)
                      + (int64_t)puVar15);
            uVar13 = puVar15[1];
            uVar4 = *puVar15;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = uVar4;
            iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18);
            iVar16 = iVar8;
            do {
                iVar16 = iVar16 + -1;
                if (iVar16 < 1) {
                    if (uVar13 == 0) {
                        return 0;
                    }
                    *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x158) = uVar13;
                    puVar12 = *(undefined8 **)(iVar9 + 0x50);
                    iVar9 = *(int64_t *)(iVar9 + 0x58);
                    iVar16 = 0;
                    do {
                        if (iVar9 < 1) {
                            return CONCAT71((unkint7)((uint64_t)iVar16 >> 8), iVar8 <= iVar16);
                        }
                        iVar17 = puVar12[2];
                        if ((int64_t)puVar12[1] < (int64_t)uVar13) {
                            cVar3 = '\0';
                        } else {
                            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) = iVar9;
                            *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10) = puVar12;
                            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138) = iVar17;
                            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x148) = iVar16;
                            uVar6 = *puVar12;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe38dcc;
                            cVar3 = runtime_memequal(uVar6, uVar4, uVar13);
                            iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130);
                            uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128);
                            puVar12 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10);
                            uVar13 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x158);
                            iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18);
                            iVar17 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138);
                            iVar16 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x148);
                        }
                        if (cVar3 != '\0') {
                            if ((3 < iVar17 - 4U) && (iVar17 != 0x194)) {
                                return 0;
                            }
                            iVar16 = iVar16 + 1;
                        }
                        puVar12 = puVar12 + 4;
                        iVar9 = iVar9 + -1;
                    } while( true );
                }
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) = iVar16;
                *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10) = puVar12;
                uVar6 = *puVar12;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118) = uVar6;
                iVar17 = puVar12[1];
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x140) = iVar17;
                while( true ) {
                    if (uVar13 == 0) {
                        uVar7 = 0;
                        uVar14 = uVar13;
                    } else {
                        if (iVar17 < (int64_t)uVar13) {
                            uVar7 = 0;
                        } else {
                            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x150) = uVar13;
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe38e4f;
                            uVar7 = runtime_memequal(uVar6, uVar4, uVar13);
                            iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
                            uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128);
                            puVar12 = *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10);
                            uVar13 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x150);
                            iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18);
                            iVar16 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130);
                            iVar17 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x140);
                            uVar6 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118);
                        }
                        uVar7 = uVar7 ^ 1;
                        uVar14 = uVar13;
                    }
                    if (uVar7 == 0) break;
                    uVar13 = uVar14 - 1;
                    if (uVar14 < uVar13) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe38ea5;
                        runtime_panicSliceAlen();
                        in_RAX = extraout_RAX;
                        arg4 = extraout_RCX;
                        unaff_RBX = extraout_RBX;
                        arg1 = extraout_RDI;
                        goto code_r0x00e38ea6;
                    }
                }
                puVar12 = puVar12 + 2;
                uVar13 = uVar14;
            } while( true );
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) = iVar8;
        *(undefined8 **)((int64_t)*(undefined **)0x20 + -0x10) = puVar12;
        uVar6 = *puVar12;
        uVar1 = puVar12[1];
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe38cbe;
        piVar5 = (int64_t *)runtime_mapaccess2_faststr(0x107da00, uVar4, uVar6, uVar1);
        if ((extraout_BL == '\0') || ((3 < *piVar5 - 4U && (*piVar5 != 0x194)))) {
            iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
            puVar15 = *(undefined8 **)((int64_t)*(undefined **)0x20 + 0x10);
            bVar2 = false;
            goto code_r0x00e38cf3;
        }
        puVar12 = (undefined8 *)(*(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) + 0x10);
        iVar8 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) + -1;
        uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120);
        iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
        puVar15 = *(undefined8 **)((int64_t)*(undefined **)0x20 + 0x10);
    } while( true );
}

/* CAS-Backend/pkg/diapdu.NavTasksCompleteFromMonitor | VA 0xe38ee0 | traffic_dynamic.go:290
   DWARF parameters and results: snap *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, taskIDs []string, finalStation string, ~r0 bool
   DWARF locals: st string */
undefined8 __stdcall
pkg_diapdu_NavTasksCompleteFromMonitor
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, undefined8 placeholder_5,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_60h)
{
    char cVar1;
    undefined8 *in_RAX;
    undefined8 uVar2;
    int64_t unaff_RBP;
    int64_t iVar3;
    int64_t unaff_R14;
    undefined8 in_XMM1_Qa;
    undefined8 in_XMM4_Qa;
    int64_t in_stack_00000170;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    cVar1 = pkg_diapdu_allSubTasksTerminalForDispatch
                      (arg1, in_XMM1_Qa, placeholder_2, arg4, in_XMM4_Qa, placeholder_5, in_stack_ffffffffffffffd8, 
                       in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, unaff_RBP, 
                       in_stack_00000170);
    if (cVar1 == '\0') {
        return 0;
    }
    if (arg5 == 0) {
        return 1;
    }
    if (in_RAX == (undefined8 *)0x0) {
        iVar3 = 0;
        uVar2 = 0;
    } else {
        iVar3 = in_RAX[1];
        if (iVar3 == 0) {
            iVar3 = in_RAX[9];
            if (iVar3 == 0) {
                iVar3 = in_RAX[7];
                uVar2 = in_RAX[6];
            } else {
                uVar2 = in_RAX[8];
            }
        } else {
            uVar2 = *in_RAX;
        }
    }
    if (iVar3 != 0) {
        if (arg5 == iVar3) {
            uVar2 = runtime_memequal(uVar2, arg2, iVar3);
        } else {
            uVar2 = 0;
        }
        return uVar2;
    }
    return 1;
}

/* CAS-Backend/pkg/diapdu.resolveCurrentEdge | VA 0xe38fe0 | traffic_dynamic.go:304
   DWARF parameters and results: path []string, list []CAS-Backend/pkg/diapdu.TaskStatusSnap, from string, to string, edgeIdx int, ok bool
   DWARF locals: ei int, numEdges int, offset int, curInList int, i int */
undefined8 __stdcall pkg_diapdu_resolveCurrentEdge(int64_t arg1, int64_t arg2, int64_t arg_8h, int64_t arg_20h)
{
    uint64_t uVar1;
    code *pcVar2;
    int64_t in_RAX;
    undefined8 uVar3;
    uint64_t unaff_RBX;
    int64_t iVar4;
    int64_t iVar5;
    uint64_t uVar6;
    uint64_t extraout_R9;
    
    if (((int64_t)unaff_RBX < 2) || (arg2 == 0)) {
        return 0;
    }
    if (arg2 < (int64_t)(unaff_RBX - 1)) {
        iVar5 = (unaff_RBX - arg2) + -1;
    } else {
        iVar5 = 0;
    }
    for (iVar4 = 0; iVar4 < arg2; iVar4 = iVar4 + 1) {
        if ((3 < *(int64_t *)(arg1 + 0x10) - 4U) && (*(int64_t *)(arg1 + 0x10) != 0x194)) goto code_r0x00e39072;
        arg1 = arg1 + 0x20;
    }
    iVar4 = -1;
code_r0x00e39072:
    if (iVar4 < 0) {
        return 0;
    }
    uVar6 = iVar5 + iVar4;
    if ((int64_t)uVar6 < 0) {
        uVar6 = 0;
    } else if ((int64_t)(unaff_RBX - 1) <= (int64_t)uVar6) {
        uVar6 = unaff_RBX - 2;
    }
    if (uVar6 < unaff_RBX) {
        uVar1 = uVar6 + 1;
        if (uVar1 < unaff_RBX) {
            if ((*(int64_t *)(in_RAX + 8 + uVar6 * 0x10) != 0) && (*(int64_t *)(in_RAX + 8 + uVar1 * 0x10) != 0)) {
                return *(undefined8 *)(in_RAX + uVar6 * 0x10);
            }
            return 0;
        }
        runtime_panicIndex(uVar1);
        uVar6 = extraout_R9;
    }
    runtime_panicIndex(uVar6);
    pcVar2 = (code *)swi(3);
    uVar3 = (*pcVar2)();
    return uVar3;
}

/* CAS-Backend/pkg/diapdu.resolveCurrentEdgeOnPath | VA 0xe39120 | traffic_dynamic.go:339
   DWARF parameters and results: path []string, pkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, from string, to string, edgeIdx int, ok bool
   DWARF locals: src string, tgt string, i int, ei int, ok bool, from string, to string, ct string */
undefined8 __stdcall
pkg_diapdu_resolveCurrentEdgeOnPath
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_60h,
          int64_t arg_a0h)
{
    undefined8 uVar1;
    char cVar2;
    undefined8 in_RAX;
    undefined8 uVar3;
    undefined8 extraout_RAX;
    uint64_t uVar4;
    int64_t extraout_RCX;
    int64_t iVar5;
    int64_t iVar6;
    uint64_t uVar7;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    undefined *puVar8;
    undefined *unaff_RBP;
    undefined *puVar9;
    int64_t extraout_RSI;
    int64_t iVar10;
    undefined8 *extraout_RDI;
    undefined8 *extraout_RDI_00;
    undefined8 *extraout_RDI_01;
    int64_t extraout_R9;
    int64_t extraout_R9_00;
    undefined8 extraout_R10;
    undefined8 extraout_R10_00;
    uint64_t extraout_R11;
    undefined8 extraout_R11_00;
    undefined8 uVar11;
    int64_t unaff_R14;
    undefined auVar12 [16];
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
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
    
code_r0x00e39120:
    auVar12._8_8_ = unaff_RBX;
    auVar12._0_8_ = in_RAX;
    puVar8 = (undefined *)*(undefined **)0x20;
    puVar9 = unaff_RBP;
    if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x10)) {
        puVar9 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
        *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
        puVar8 = (undefined *)((int64_t)*(undefined **)0x20 + -0x90);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
        if ((unaff_RBX < 2) || ((undefined8 *)arg1 == (undefined8 *)0x0)) {
            return 0;
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
        *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
        uVar7 = *(uint64_t *)(arg1 + 0x38);
        iVar5 = *(int64_t *)(arg1 + 0x48);
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60) = iVar5;
        uVar3 = *(undefined8 *)(arg1 + 0x40);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar3;
        if (uVar7 == 0) goto code_r0x00e391c4;
        if (iVar5 == 0) goto code_r0x00e391c4;
        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x58) = uVar7;
        *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
        uVar11 = *(undefined8 *)(arg1 + 0x30);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = uVar11;
        iVar10 = 0;
        do {
            if (iVar10 < auVar12._8_8_ + -1) {
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40) = iVar10;
                uVar4 = *(uint64_t *)(auVar12._0_8_ + 8 + iVar10 * 0x10);
                uVar1 = *(undefined8 *)(iVar10 * 0x10 + auVar12._0_8_);
                if (uVar4 == uVar7) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = 0xe3941a;
                    cVar2 = runtime_memequal(uVar1, uVar11, uVar4);
                    uVar7 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x58);
                    iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40);
                    arg1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20);
                    iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60);
                    uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                    uVar11 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                    auVar12 = *(undefined (*) [16])((int64_t)*(undefined **)0x20 + 8);
                } else {
                    cVar2 = '\0';
                }
                if (cVar2 != '\0') {
                    uVar4 = iVar10 + 1;
                    if (auVar12._8_8_ <= uVar4) goto code_r0x00e394f0;
                    iVar6 = *(int64_t *)(auVar12._0_8_ + 8 + uVar4 * 0x10);
                    uVar1 = *(undefined8 *)(uVar4 * 0x10 + auVar12._0_8_);
                    if (iVar6 == iVar5) {
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = 0xe39490;
                        cVar2 = runtime_memequal(uVar1, uVar3, iVar6);
                        uVar7 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x58);
                        iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x40);
                        arg1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20);
                        iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60);
                        uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                        uVar11 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18);
                        auVar12 = *(undefined (*) [16])((int64_t)*(undefined **)0x20 + 8);
                    } else {
                        cVar2 = '\0';
                    }
                    if (cVar2 != '\0') {
                        return uVar11;
                    }
                }
            } else {
code_r0x00e391c4:
                iVar10 = *(int64_t *)(arg1 + 0x58);
                if (iVar10 != 0) {
                    iVar5 = *(int64_t *)(arg1 + 0x50);
                    cVar2 = (char)*(undefined8 *)(arg1 + 0x60);
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = 0xe391dd;
                    uVar3 = pkg_diapdu_resolveCurrentEdge
                                      (iVar5, iVar10, *(int64_t *)((int64_t)*(undefined **)0x20 + -0x90), 
                                       *(int64_t *)((int64_t)*(undefined **)0x20 + -0x78));
                    if (cVar2 != '\0') {
                        return uVar3;
                    }
                    auVar12 = *(undefined (*) [16])((int64_t)*(undefined **)0x20 + 8);
                    arg1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20);
                    iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60);
                    uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                }
                if (iVar5 == 0) goto code_r0x00e3921c;
                uVar7 = 0;
                while( true ) {
                    while( true ) {
                        uVar4 = uVar7;
                        if ((int64_t)uVar4 < (int64_t)(auVar12._8_8_ - 1)) break;
code_r0x00e3921c:
                        iVar5 = *(int64_t *)(arg1 + 8);
                        if (iVar5 == 0) {
                            return 0;
                        }
                        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38) = iVar5;
                        uVar3 = *(undefined8 *)arg1;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar3;
                        uVar7 = 0;
                        while( true ) {
                            uVar4 = uVar7;
                            if ((int64_t)(auVar12._8_8_ - 1) <= (int64_t)uVar4) {
                                return 0;
                            }
                            uVar7 = uVar4 + 1;
                            if (auVar12._8_8_ <= uVar7) break;
                            iVar6 = uVar7 * 0x10;
                            iVar10 = *(int64_t *)(auVar12._0_8_ + 8 + iVar6);
                            uVar11 = *(undefined8 *)(auVar12._0_8_ + iVar6);
                            if (iVar10 == iVar5) {
                                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) = iVar6;
                                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x50) = uVar4;
                                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x30) = uVar7;
                                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = 0xe392a5;
                                cVar2 = runtime_memequal(uVar11, uVar3, iVar10);
                                if (cVar2 != '\0') {
                                    return *(undefined8 *)
                                            (*(int64_t *)((int64_t)*(undefined **)0x20 + 8) +
                                            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x50) * 0x10);
                                }
                                iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38);
                                auVar12 = *(undefined (*) [16])((int64_t)*(undefined **)0x20 + 8);
                                uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
                                uVar7 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x30);
                            }
                        }
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = 0xe39312;
                        auVar12 = runtime_panicIndex(uVar7);
                        uVar7 = extraout_R11;
                        arg1 = (int64_t)extraout_RDI;
                        iVar5 = extraout_R9;
                        uVar3 = extraout_R10;
                    }
                    uVar7 = uVar4 + 1;
                    if (auVar12._8_8_ <= uVar7) break;
                    iVar6 = uVar7 * 0x10;
                    iVar10 = *(int64_t *)(auVar12._0_8_ + 8 + iVar6);
                    uVar11 = *(undefined8 *)(auVar12._0_8_ + iVar6);
                    if (iVar10 == iVar5) {
                        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) = iVar6;
                        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x48) = uVar4;
                        *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x30) = uVar7;
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = 0xe39368;
                        cVar2 = runtime_memequal(uVar11, uVar3, iVar10);
                        if (cVar2 != '\0') {
                            return *(undefined8 *)
                                    (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x48) * 0x10 +
                                    *(int64_t *)((int64_t)*(undefined **)0x20 + 8));
                        }
                        auVar12 = *(undefined (*) [16])((int64_t)*(undefined **)0x20 + 8);
                        arg1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20);
                        iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x60);
                        uVar3 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20);
                        uVar7 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x30);
                    }
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = 0xe393dd;
                auVar12 = runtime_panicIndex(uVar7);
                iVar10 = extraout_RSI;
                arg1 = (int64_t)extraout_RDI_00;
                iVar5 = extraout_R9_00;
                uVar3 = extraout_R10_00;
                uVar11 = extraout_R11_00;
            }
            iVar10 = iVar10 + 1;
        } while( true );
    }
    goto code_r0x00e394fc;
code_r0x00e394f0:
    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x98) = 0xe394fb;
    runtime_panicIndex(uVar4);
    in_RAX = extraout_RAX;
    arg4 = extraout_RCX;
    unaff_RBX = extraout_RBX;
    arg1 = (int64_t)extraout_RDI_01;
code_r0x00e394fc:
    *(undefined8 *)(puVar8 + 8) = in_RAX;
    *(int64_t *)(puVar8 + 0x10) = unaff_RBX;
    *(int64_t *)(puVar8 + 0x18) = arg4;
    *(int64_t *)(puVar8 + 0x20) = arg1;
    *(undefined8 *)(puVar8 + -8) = 0xe39515;
    runtime_morestack_noctxt_abi0();
    in_RAX = *(undefined8 *)(puVar8 + 8);
    unaff_RBX = *(int64_t *)(puVar8 + 0x10);
    arg4 = *(int64_t *)(puVar8 + 0x18);
    arg1 = *(int64_t *)(puVar8 + 0x20);
    *(undefined **)0x20 = (BADSPACEBASE *)puVar8;
    unaff_RBP = puVar9;
    goto code_r0x00e39120;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).buildRunSnapExLocked | VA 0xe39540 | traffic_dynamic.go:405
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, ~r0 []CAS-Backend/pkg/diapdu.runSnapEx
   DWARF locals: out []CAS-Backend/pkg/diapdu.runSnapEx, vid string, path []string, ok bool, pkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, eidx int, from string, to string */
// WARNING: Variable defined which should be unmapped: var_148h
// WARNING: Variable defined which should be unmapped: var_108h
// WARNING: Variable defined which should be unmapped: var_8h

undefined  [16] __stdcall pkg_diapdu___DynamicTrafficController__buildRunSnapExLocked(int64_t arg_8h, int64_t arg_70h)
{
    int64_t iVar1;
    int64_t arg4;
    int64_t in_RAX;
    uint64_t uVar2;
    int64_t *piVar3;
    int64_t iVar4;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t iVar5;
    int64_t extraout_RCX;
    uint64_t extraout_RCX_00;
    uint64_t extraout_RCX_01;
    undefined8 extraout_RBX;
    int64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    char extraout_R8B;
    char cVar6;
    int64_t extraout_R8;
    int64_t iVar7;
    uint64_t extraout_R9;
    uint64_t uVar8;
    int64_t extraout_R10;
    int64_t extraout_R11;
    int64_t unaff_R14;
    undefined8 in_XMM1_Qa;
    undefined8 in_XMM2_Qa;
    undefined8 in_XMM4_Qa;
    undefined8 in_XMM5_Qa;
    undefined auVar9 [16];
    int64_t var_1b0h;
    int64_t in_stack_fffffffffffffe60;
    int64_t in_stack_fffffffffffffe68;
    int64_t in_stack_fffffffffffffe70;
    int64_t in_stack_fffffffffffffe78;
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
    int64_t var_d0h;
    int64_t var_c8h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_b0h;
    int64_t var_a8h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_60h;
    int64_t var_8h;
    
    while (&var_120h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3993b;
        runtime_morestack_noctxt_abi0();
    }
    runtime_duffzero_offset_331();
    runtime_mapiterinit(0x107d8e0, extraout_RBX, &var_68h);
    uVar2 = 0;
    var_e8h = 0;
    while (var_68h != 0) {
        var_108h = *(int64_t *)var_68h;
        iVar7 = *(int64_t *)(var_68h + 8);
        var_f0h = *(int64_t *)var_60h;
        iVar1 = *(int64_t *)(var_60h + 8);
        arg4 = *(int64_t *)(var_60h + 0x10);
        piVar3 = (int64_t *)runtime_mapaccess1_faststr(0x107d6a0, *(undefined8 *)(in_RAX + 0x18));
        iVar4 = *piVar3;
        if ((iVar4 != 0) &&
           (iVar5 = arg4, cVar6 = extraout_R8B, var_f8h = iVar4,
           iVar4 = pkg_diapdu_resolveCurrentEdgeOnPath
                             (iVar4, in_XMM1_Qa, in_XMM2_Qa, arg4, in_XMM4_Qa, in_XMM5_Qa, in_stack_fffffffffffffe60, 
                              in_stack_fffffffffffffe68, in_stack_fffffffffffffe70, in_stack_fffffffffffffe78, arg4, 
                              var_108h), cVar6 != '\0')) {
            if (*(int64_t *)(in_RAX + 0x10) != 0) {
                var_100h = iVar5;
                var_e0h = iVar4;
                runtime_mapaccess2_faststr(0x107da00, *(int64_t *)(in_RAX + 0x10), var_108h, iVar7);
                iVar4 = var_e0h;
            }
            var_d0h = 0;
            runtime_duffcopy_offset_812(iVar4, iVar1);
            var_d0h = var_108h;
            var_98h = *(int64_t *)(var_f8h + 0x28);
            var_80h = var_f0h;
            iVar4 = var_e8h;
            uVar8 = extraout_R9;
            var_c8h = iVar7;
            var_c0h = extraout_RAX;
            var_b8h = extraout_RBX_00;
            var_b0h = extraout_RCX;
            var_a8h = extraout_R10;
            var_a0h = extraout_R11;
            var_90h = extraout_R8;
            var_78h = iVar1;
            var_70h = arg4;
            if (uVar2 < extraout_R9) {
                runtime_growslice(var_e8h, extraout_R9, uVar2, 1, 0x111d8c0);
                iVar4 = extraout_RAX_00;
                uVar2 = extraout_RCX_00;
                uVar8 = extraout_RBX_01;
            }
            iVar7 = uVar8 * 0x68;
            if (*(int32_t *)0x355db50 != 0) {
                var_120h = iVar7;
                var_118h = uVar2;
                var_110h = uVar8;
                var_d8h = iVar4;
                runtime_wbMove(0x111d8c0, iVar7 + iVar4 + -0x68, &var_d0h);
                iVar4 = var_d8h;
                uVar2 = var_118h;
                iVar7 = var_120h;
                uVar8 = var_110h;
            }
            *(int64_t *)(iVar7 + -0x68 + iVar4) = var_d0h;
            var_e8h = runtime_duffcopy_offset_812(iVar4, var_d0h, uVar2, iVar7 + iVar4 + -0x60, &var_c8h, iVar7, uVar8);
            uVar2 = extraout_RCX_01;
        }
        runtime_mapiternext(&var_68h);
    }
    auVar9._8_8_ = uVar2;
    auVar9._0_8_ = var_e8h;
    return auVar9;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).computePausedVehicles | VA 0xe39960 | traffic_dynamic.go:431
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, snaps []CAS-Backend/pkg/diapdu.runSnapEx, ~r0 map[string]bool
   DWARF locals: nextPaused map[string]bool, locks []CAS-Backend/pkg/diapdu.edgeLock, s CAS-Backend/pkg/diapdu.runSnapEx, ok bool, lk CAS-Backend/pkg/diapdu.edgeLock, waiter CAS-Backend/pkg/diapdu.runSnapEx, lock CAS-Backend/pkg/diapdu.edgeLock */
// WARNING: Variable defined which should be unmapped: var_8h

int64_t __stdcall
pkg_diapdu___DynamicTrafficController__computePausedVehicles
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_78h)
{
    bool bVar1;
    char cVar2;
    uint8_t uVar3;
    undefined8 in_RAX;
    int64_t iVar4;
    int64_t extraout_RAX;
    int64_t iVar5;
    int64_t extraout_RAX_00;
    undefined *puVar6;
    int64_t extraout_RAX_01;
    int64_t *piVar7;
    int64_t extraout_RCX;
    int64_t iVar8;
    int64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    int64_t iVar9;
    int64_t *piVar10;
    int64_t *unaff_RBX;
    int64_t *extraout_RBX;
    int64_t *extraout_RBX_00;
    int64_t *extraout_RBX_01;
    int64_t *piVar11;
    int64_t iVar12;
    int64_t *piVar13;
    int64_t *extraout_R8;
    int64_t *extraout_R8_00;
    int64_t extraout_R8_01;
    int64_t iVar14;
    int64_t iVar15;
    int64_t extraout_R9;
    uint64_t uVar16;
    int64_t extraout_R9_00;
    int64_t extraout_R9_01;
    int64_t iVar17;
    int64_t *extraout_R10;
    uint64_t extraout_R11;
    int64_t extraout_R11_00;
    int64_t extraout_R11_01;
    int64_t iVar18;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar19 [16];
    undefined auVar20 [16];
    int64_t var_228h;
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
    int64_t iStack_170;
    int64_t var_168h;
    undefined4 uStack_160;
    undefined4 uStack_15c;
    int64_t var_158h;
    int64_t var_138h;
    int64_t var_130h;
    int64_t var_128h;
    int64_t var_120h;
    int64_t var_118h;
    int64_t var_110h;
    int64_t var_108h;
    int64_t var_100h;
    int64_t var_f8h;
    int64_t var_d0h;
    int64_t var_c8h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_b0h;
    int64_t var_a8h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t iStack_90;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t iStack_68;
    int64_t var_60h;
    int64_t iStack_58;
    int64_t var_50h;
    int64_t iStack_48;
    int64_t var_40h;
    undefined4 uStack_38;
    undefined4 uStack_34;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_198h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3a228;
        runtime_morestack_noctxt_abi0();
    }
    iVar4 = runtime_makemap_small();
    auVar19._8_8_ = var_100h;
    auVar19._0_8_ = var_108h;
    piVar13 = (int64_t *)0x0;
    iVar15 = 0;
    piVar7 = unaff_RBX;
    iVar9 = arg4;
    piVar10 = unaff_RBX;
    iVar5 = arg4;
    var_d0h = iVar4;
    while( true ) {
        var_100h = auVar19._8_8_;
        var_108h = auVar19._0_8_;
        piVar11 = piVar10;
        iVar12 = iVar5;
        iVar8 = iVar15;
        var_c8h = (int64_t)piVar13;
        if (iVar9 < 1) break;
        var_138h = *piVar7;
        var_10h = (int64_t)piVar7;
        runtime_duffcopy_offset_812();
        var_1a0h = var_138h;
        runtime_duffcopy_offset_812();
        iVar8 = var_178h;
        iVar4 = var_188h;
        auVar19._8_8_ = in_XMM15_Qa;
        auVar19._0_8_ = in_XMM15_Qb;
        if ((((char)var_158h == '\0') || (var_188h == 0)) || (var_178h == 0)) {
            bVar1 = false;
            iVar4 = extraout_RAX;
            iVar8 = extraout_RCX;
            piVar10 = extraout_RBX;
            piVar13 = extraout_R8;
            iVar15 = extraout_R9;
            var_138h = in_XMM15_Qa;
            var_130h = in_XMM15_Qa;
            var_128h = in_XMM15_Qb;
            var_120h = in_XMM15_Qa;
            var_118h = in_XMM15_Qb;
            var_110h = in_XMM15_Qa;
            var_f8h = in_XMM15_Qb;
        } else {
            var_18h = var_190h;
            var_20h = var_180h;
            iVar5 = runtime_cmpstring(var_190h, var_188h);
            if (iVar5 < 0) {
                auVar19 = runtime_concatstring3(0, var_18h, iVar4, 0x116850a /* "|" */, 1, var_20h, iVar8);
            } else {
                auVar19 = runtime_concatstring3(0, var_20h, iVar8, 0x116850a /* "|" */, 1, var_18h, iVar4);
            }
            var_138h = var_1a0h;
            var_130h = var_198h;
            var_128h = var_190h;
            var_120h = var_188h;
            var_118h = var_180h;
            var_110h = var_178h;
            var_f8h = CONCAT44(var_168h._4_4_, (undefined4)var_168h);
            bVar1 = true;
            iVar4 = var_d0h;
            iVar8 = var_10h;
            piVar10 = unaff_RBX;
            piVar13 = (int64_t *)var_c8h;
            iVar5 = arg4;
        }
        var_100h = auVar19._8_8_;
        iVar12 = var_100h;
        var_108h = auVar19._0_8_;
        var_1a0h = var_138h;
        var_198h = var_130h;
        var_190h = var_128h;
        var_188h = var_120h;
        var_180h = var_118h;
        var_178h = var_110h;
        iStack_170 = var_108h;
        var_100h._0_4_ = auVar19._8_4_;
        var_168h._0_4_ = (undefined4)var_100h;
        var_100h._4_4_ = auVar19._12_4_;
        var_168h._4_4_ = var_100h._4_4_;
        uStack_160 = (undefined4)var_f8h;
        uStack_15c = var_f8h._4_4_;
        if (bVar1) {
            uVar16 = iVar15 + 1;
            auVar20._8_8_ = uVar16;
            auVar20._0_8_ = piVar13;
            if (extraout_R11 < uVar16) {
                var_100h = iVar12;
                auVar20 = runtime_growslice(piVar13, uVar16, extraout_R11, 1, 0x1103140);
                auVar19._8_8_ = var_100h;
                auVar19._0_8_ = var_108h;
                iVar4 = var_d0h;
                iVar8 = var_10h;
                piVar10 = unaff_RBX;
                iVar5 = arg4;
            }
            var_100h = auVar19._8_8_;
            var_108h = auVar19._0_8_;
            iVar15 = auVar20._8_8_;
            piVar13 = auVar20._0_8_;
            if (*(int32_t *)0x355db50 != 0) {
                var_28h = (int64_t)piVar13;
                runtime_wbMove(0x1103140, piVar13 + iVar15 * 9 + -9, &var_1a0h);
                auVar19._8_8_ = var_100h;
                auVar19._0_8_ = var_108h;
                iVar4 = var_d0h;
                iVar8 = var_10h;
                piVar10 = unaff_RBX;
                piVar13 = (int64_t *)var_28h;
                iVar5 = arg4;
            }
            piVar13[iVar15 * 9 + -9] = var_1a0h;
            piVar13[iVar15 * 9 + -8] = var_198h;
            piVar13[iVar15 * 9 + -7] = var_190h;
            piVar13[iVar15 * 9 + -6] = var_188h;
            piVar13[iVar15 * 9 + -5] = var_180h;
            piVar13[iVar15 * 9 + -4] = var_178h;
            piVar13[iVar15 * 9 + -3] = iStack_170;
            *(undefined4 *)(piVar13 + iVar15 * 9 + -2) = (undefined4)var_168h;
            *(undefined4 *)((int64_t)piVar13 + iVar15 * 0x48 + -0xc) = var_168h._4_4_;
            *(undefined4 *)(piVar13 + iVar15 * 9 + -1) = uStack_160;
            *(undefined4 *)((int64_t)piVar13 + iVar15 * 0x48 + -4) = uStack_15c;
        }
        piVar7 = (int64_t *)(iVar8 + 0x68);
        iVar9 = iVar9 + -1;
    }
    do {
        var_100h = auVar19._8_8_;
        var_108h = auVar19._0_8_;
        if (iVar12 < 1) {
            pkg_diapdu___DynamicTrafficController__applyOppositePause(in_RAX, piVar11, iVar5, arg1, iVar4, piVar13, iVar8);
            return var_d0h;
        }
        var_138h = *piVar10;
        var_10h = (int64_t)piVar10;
        runtime_duffcopy_offset_812();
        iVar4 = extraout_RAX_00;
        iVar5 = extraout_RCX_00;
        piVar11 = extraout_RBX_00;
        iVar8 = extraout_R9_00;
        piVar7 = extraout_R8_00;
        piVar13 = extraout_R8_00;
        iVar18 = extraout_R11_00;
        for (iVar9 = extraout_R9_00; 0 < iVar9; iVar9 = iVar9 + -1) {
            var_78h = *piVar7;
            var_70h = piVar7[1];
            iStack_68 = piVar7[2];
            var_60h = piVar7[3];
            iStack_58 = piVar7[4];
            var_50h = piVar7[5];
            iStack_48 = piVar7[6];
            var_40h._0_4_ = (undefined4)piVar7[7];
            var_40h._4_4_ = *(undefined4 *)((int64_t)piVar7 + 0x3c);
            uStack_38 = (undefined4)piVar7[8];
            uStack_34 = *(undefined4 *)((int64_t)piVar7 + 0x44);
            var_1a0h = var_138h;
            var_30h = (int64_t)piVar7;
            runtime_duffcopy_offset_812();
            var_c0h = var_78h;
            var_b8h = var_70h;
            var_b0h = iStack_68;
            var_a8h = var_60h;
            var_a0h = iStack_58;
            var_98h = var_50h;
            iStack_90 = iStack_48;
            var_88h._0_4_ = (undefined4)var_40h;
            var_88h._4_4_ = var_40h._4_4_;
            var_80h._0_4_ = uStack_38;
            var_80h._4_4_ = uStack_34;
            if ((char)var_158h == '\0') {
                cVar2 = '\x01';
                iVar4 = extraout_RAX_01;
                iVar5 = extraout_RCX_01;
                piVar11 = extraout_RBX_01;
                iVar14 = extraout_R8_01;
                iVar17 = extraout_R9_01;
                piVar13 = extraout_R10;
                iVar18 = extraout_R11_01;
            } else if (var_70h == 0) {
                cVar2 = '\x01';
                iVar4 = extraout_RAX_01;
                iVar5 = extraout_RCX_01;
                piVar11 = extraout_RBX_01;
                iVar14 = extraout_R8_01;
                iVar17 = extraout_R9_01;
                piVar13 = extraout_R10;
                iVar18 = extraout_R11_01;
            } else if (var_70h == var_198h) {
                cVar2 = runtime_memequal(var_1a0h, var_78h, var_198h);
                iVar4 = var_d0h;
                iVar5 = arg4;
                piVar10 = (int64_t *)var_10h;
                piVar11 = unaff_RBX;
                iVar14 = var_30h;
                iVar17 = iVar9;
                piVar13 = (int64_t *)var_c8h;
                iVar18 = iVar12;
                iVar8 = iVar15;
            } else {
                cVar2 = '\0';
                iVar4 = extraout_RAX_01;
                iVar5 = extraout_RCX_01;
                piVar11 = extraout_RBX_01;
                iVar14 = extraout_R8_01;
                iVar17 = extraout_R9_01;
                piVar13 = extraout_R10;
                iVar18 = extraout_R11_01;
            }
            if (cVar2 == '\0') {
                if (var_a8h == var_188h) {
                    uVar3 = runtime_memequal(var_190h, var_b0h, var_188h);
                    uVar3 = uVar3 ^ 1;
                    iVar4 = var_d0h;
                    iVar5 = arg4;
                    piVar10 = (int64_t *)var_10h;
                    piVar11 = unaff_RBX;
                    iVar14 = var_30h;
                    iVar17 = iVar9;
                    piVar13 = (int64_t *)var_c8h;
                    iVar18 = iVar12;
                    iVar8 = iVar15;
                } else {
                    uVar3 = 1;
                }
                if (uVar3 == 0) {
                    if (var_98h == var_178h) {
                        uVar3 = runtime_memequal(var_180h, var_a0h, var_178h);
                        uVar3 = uVar3 ^ 1;
                        iVar4 = var_d0h;
                        iVar5 = arg4;
                        piVar10 = (int64_t *)var_10h;
                        piVar11 = unaff_RBX;
                        iVar14 = var_30h;
                        iVar17 = iVar9;
                        piVar13 = (int64_t *)var_c8h;
                        iVar18 = iVar12;
                        iVar8 = iVar15;
                    } else {
                        uVar3 = 1;
                    }
                } else {
                    uVar3 = 1;
                }
                if (uVar3 == 0) {
                    if ((double)CONCAT44(var_80h._4_4_, (undefined4)var_80h) - *(double *)0x2e67848 <=
                        (double)CONCAT44(var_168h._4_4_, (undefined4)var_168h)) {
                        if ((double)CONCAT44(var_168h._4_4_, (undefined4)var_168h) <=
                            (double)CONCAT44(var_80h._4_4_, (undefined4)var_80h) + *(double *)0x2e67848) {
                            iVar4 = runtime_cmpstring(var_1a0h, var_198h, var_c0h, var_b8h);
                            bVar1 = 0 < iVar4;
                            iVar4 = var_d0h;
                            iVar5 = arg4;
                            piVar10 = (int64_t *)var_10h;
                            piVar11 = unaff_RBX;
                            iVar14 = var_30h;
                            piVar13 = (int64_t *)var_c8h;
                            iVar18 = iVar12;
                            iVar8 = iVar15;
                        } else {
                            bVar1 = false;
                            iVar9 = iVar17;
                        }
                    } else {
                        bVar1 = true;
                        iVar9 = iVar17;
                    }
                } else {
                    bVar1 = false;
                    iVar9 = iVar17;
                }
            } else {
                bVar1 = false;
                iVar9 = iVar17;
            }
            if (bVar1) {
                puVar6 = (undefined *)runtime_mapassign_faststr(0x107d940, iVar4, var_138h, var_130h);
                *puVar6 = 1;
                iVar4 = var_d0h;
                iVar5 = arg4;
                piVar10 = (int64_t *)var_10h;
                piVar11 = unaff_RBX;
                iVar8 = iVar15;
                piVar13 = (int64_t *)var_c8h;
                iVar18 = iVar12;
                break;
            }
            piVar7 = (int64_t *)(iVar14 + 0x48);
        }
        auVar19._8_8_ = var_100h;
        auVar19._0_8_ = var_108h;
        piVar10 = piVar10 + 0xd;
        iVar12 = iVar18 + -1;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).logTrafficStateIfChanged | VA 0xe3a260 | traffic_dynamic.go:456
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, snaps []CAS-Backend/pkg/diapdu.runSnapEx, owners map[string]string
   DWARF locals: seen map[string]bool, locksStr string, ~r0.ptr *uint8, ~r0.len int, s CAS-Backend/pkg/diapdu.runSnapEx, edge string, vid string */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_258h because it doesn't fit into ProtoModel

void __stdcall
pkg_diapdu___DynamicTrafficController__logTrafficStateIfChanged
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h)
{
    undefined8 uVar1;
    char cVar2;
    int64_t in_RAX;
    undefined8 uVar3;
    undefined8 uVar4;
    undefined8 extraout_RAX;
    undefined *puVar5;
    undefined8 uVar6;
    undefined8 *puVar7;
    char *pcVar8;
    undefined8 extraout_RCX;
    undefined8 uVar9;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    undefined8 *unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t iVar10;
    undefined8 extraout_RBX_01;
    int64_t *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    undefined auVar11 [16];
    int64_t var_258h;
    int64_t var_210h;
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
    int64_t var_190h;
    int64_t var_170h;
    int64_t var_168h;
    int64_t var_160h;
    int64_t var_158h;
    int64_t var_150h;
    int64_t var_148h;
    int64_t var_140h;
    int64_t var_138h;
    int64_t var_a8h;
    int64_t var_98h;
    int64_t var_88h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_8h;
    
    while (&var_1c8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3a717;
        runtime_morestack_noctxt_abi0();
    }
    if (in_RAX != 0) {
        auVar11 = pkg_diapdu_formatLockList(arg2);
        iVar10 = auVar11._8_8_;
        var_170h = auVar11._0_8_;
        if ((*(int64_t *)(in_RAX + 0x40) != iVar10) ||
           (cVar2 = runtime_memequal(var_170h, *(undefined8 *)(in_RAX + 0x38), iVar10), cVar2 == '\0')) {
            var_70h = runtime_convTstring(var_170h, iVar10);
            var_78h = 0x1042920;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1190a35, 0x23, &var_78h, 1, 1);
            *(int64_t *)(in_RAX + 0x40) = iVar10;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11 = var_170h;
                extraout_R11[1] = *(int64_t *)(in_RAX + 0x38);
            }
            *(int64_t *)(in_RAX + 0x38) = var_170h;
        }
        iVar10 = arg4;
        var_98h = in_XMM15_Qa;
        if (arg4 < 9) {
            runtime_duffzero_offset_313();
            var_98h = (int64_t)&var_140h;
            iVar10 = extraout_RBX;
        }
        uVar3 = runtime_makemap(0x107d940, iVar10, &var_a8h);
        uVar4 = uVar3;
        uVar9 = extraout_RCX;
        while (0 < arg4) {
            uVar1 = *unaff_RBX;
            runtime_duffcopy_offset_812();
            uVar4 = extraout_RAX;
            uVar9 = extraout_RCX_00;
            if ((char)var_190h != '\0') {
                var_168h = (int64_t)unaff_RBX;
                puVar5 = (undefined *)runtime_mapassign_faststr(0x107d940, extraout_RAX, uVar1, var_1d0h);
                *puVar5 = 1;
                if ((var_1c0h == 0) || (var_1b0h == 0)) {
                    auVar11._8_8_ = 6;
                    auVar11._0_8_ = 0x116f2c7;
                } else {
                    auVar11 = runtime_concatstring3(0, var_1c8h, var_1c0h, 0x1168a48 /* "→" */, 3, var_1b8h);
                }
                iVar10 = auVar11._8_8_;
                uVar6 = auVar11._0_8_;
                puVar7 = (undefined8 *)runtime_mapaccess1_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x48), uVar1, var_1d0h);
                if ((iVar10 != puVar7[1]) ||
                   (cVar2 = runtime_memequal(*puVar7, uVar6), uVar4 = uVar3, uVar9 = extraout_RCX_01,
                   unaff_RBX = (undefined8 *)var_168h, cVar2 == '\0')) {
                    puVar7 = (undefined8 *)runtime_mapassign_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x48), uVar1, var_1d0h);
                    puVar7[1] = iVar10;
                    if (*(int32_t *)0x355db50 != 0) {
                        puVar7 = (undefined8 *)runtime_gcWriteBarrier2();
                        *extraout_R11_00 = uVar6;
                        extraout_R11_00[1] = *puVar7;
                    }
                    *puVar7 = uVar6;
                    var_158h = runtime_convTstring(uVar1, var_1d0h);
                    var_160h = 0x1042920;
                    var_148h = runtime_convTstring(uVar6, iVar10);
                    var_150h = 0x1042920;
                    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119e6de, 0x34, &var_160h, 2, 2);
                    uVar4 = uVar3;
                    uVar9 = extraout_RCX_02;
                    unaff_RBX = (undefined8 *)var_168h;
                }
            }
            unaff_RBX = unaff_RBX + 0xd;
            arg4 = extraout_RBX_00 + -1;
        }
        runtime_duffzero_offset_331(uVar4, *(undefined8 *)(in_RAX + 0x48), uVar9, &var_88h);
        runtime_mapiterinit(0x107db20, extraout_RBX_01, &var_68h);
        while (var_68h != 0) {
            uVar4 = *(undefined8 *)var_68h;
            uVar9 = *(undefined8 *)(var_68h + 8);
            pcVar8 = (char *)runtime_mapaccess1_faststr(0x107d940, uVar3);
            if (*pcVar8 == '\0') {
                runtime_mapdelete_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x48), uVar4, uVar9);
            }
            runtime_mapiternext(&var_68h);
        }
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*DynamicTrafficController).recompute | VA 0xe3a740 | traffic_dynamic.go:485
   DWARF parameters and results: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController
   DWARF locals: owners map[string]string, nextPaused map[string]bool, snaps []CAS-Backend/pkg/diapdu.runSnapEx, toResume []string, toPause []string, vid string */
// WARNING: Variable defined which should be unmapped: var_8h

undefined * __stdcall pkg_diapdu___DynamicTrafficController__recompute(int64_t arg_8h, int64_t arg_138h)
{
    uint32_t uVar1;
    uint32_t *in_RAX;
    int64_t extraout_RAX;
    undefined8 uVar2;
    char *pcVar3;
    int64_t extraout_RAX_00;
    int64_t extraout_RAX_01;
    int64_t extraout_RAX_02;
    int64_t extraout_RAX_03;
    int64_t iVar4;
    undefined *puVar5;
    undefined8 extraout_RCX;
    uint64_t uVar6;
    uint64_t extraout_RCX_00;
    uint64_t extraout_RCX_01;
    uint64_t extraout_RCX_02;
    uint64_t extraout_RCX_03;
    int64_t iVar7;
    undefined8 extraout_RBX;
    undefined8 extraout_RBX_00;
    uint64_t uVar8;
    uint64_t extraout_RBX_01;
    uint64_t extraout_RBX_02;
    uint64_t uVar9;
    uint64_t extraout_RBX_03;
    uint64_t extraout_RBX_04;
    undefined8 *puVar10;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t unaff_R14;
    int64_t var_138h;
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
    int64_t var_8h;
    
    while (&var_a8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3ad78;
        runtime_morestack_noctxt_abi0();
    }
    if (in_RAX == (uint32_t *)0x0) {
        return (undefined *)0x0;
    }
    LOCK();
    uVar1 = *in_RAX;
    if (uVar1 == 0) {
        *in_RAX = 1;
    }
    UNLOCK();
    if (uVar1 != 0) {
        sync___Mutex__lockSlow(in_RAX);
    }
    pkg_diapdu___DynamicTrafficController__buildRunSnapExLocked(in_RAX);
    var_80h = extraout_RAX;
    uVar2 = pkg_diapdu___DynamicTrafficController__collectActiveEdgeLocks(in_RAX, extraout_RAX, extraout_RBX, extraout_RCX);
    pkg_diapdu___DynamicTrafficController__logTrafficStateIfChanged(in_RAX, var_80h, extraout_RBX, extraout_RCX, uVar2);
    var_78h = pkg_diapdu___DynamicTrafficController__computePausedVehicles(in_RAX, var_80h, extraout_RBX, extraout_RCX);
    runtime_duffzero_offset_331(var_78h, *(undefined8 *)(in_RAX + 10), in_RAX, &var_88h);
    runtime_mapiterinit(0x107d940, extraout_RBX_00, &var_68h);
    var_90h = 0;
    uVar6 = 0;
    uVar8 = 0;
    while (var_68h != 0) {
        var_98h = *(int64_t *)var_68h;
        uVar2 = *(undefined8 *)(var_68h + 8);
        pcVar3 = (char *)runtime_mapaccess1_faststr(0x107d940, var_78h);
        if (*pcVar3 == '\0') {
            uVar8 = uVar8 + 1;
            iVar4 = var_90h;
            if (uVar6 < uVar8) {
                runtime_growslice(var_90h, uVar8, uVar6, 1, 0x1042920);
                iVar4 = extraout_RAX_00;
                uVar6 = extraout_RCX_00;
                uVar8 = extraout_RBX_01;
            }
            iVar7 = (uVar8 - 1) * 0x10;
            *(undefined8 *)(iVar4 + 8 + iVar7) = uVar2;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11 = var_98h;
                extraout_R11[1] = *(int64_t *)(extraout_RAX_01 + iVar7);
                iVar4 = extraout_RAX_01;
                uVar6 = extraout_RCX_01;
                uVar8 = extraout_RBX_02;
            }
            *(int64_t *)(iVar4 + iVar7) = var_98h;
            var_90h = iVar4;
        }
        runtime_mapiternext(&var_68h);
    }
    runtime_duffzero_offset_331();
    runtime_mapiterinit(0x107d940, var_78h, &var_68h);
    var_88h = 0;
    uVar6 = 0;
    uVar9 = 0;
    while (var_68h != 0) {
        var_a0h = *(int64_t *)var_68h;
        uVar2 = *(undefined8 *)(var_68h + 8);
        pcVar3 = (char *)runtime_mapaccess1_faststr(0x107d940, *(undefined8 *)(in_RAX + 10));
        if (*pcVar3 == '\0') {
            uVar9 = uVar9 + 1;
            iVar4 = var_88h;
            if (uVar6 < uVar9) {
                runtime_growslice(var_88h, uVar9, uVar6, 1, 0x1042920);
                iVar4 = extraout_RAX_02;
                uVar6 = extraout_RCX_02;
                uVar9 = extraout_RBX_03;
            }
            iVar7 = (uVar9 - 1) * 0x10;
            *(undefined8 *)(iVar4 + 8 + iVar7) = uVar2;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11_00 = var_a0h;
                extraout_R11_00[1] = *(int64_t *)(extraout_RAX_03 + iVar7);
                iVar4 = extraout_RAX_03;
                uVar6 = extraout_RCX_03;
                uVar9 = extraout_RBX_04;
            }
            *(int64_t *)(iVar4 + iVar7) = var_a0h;
            var_88h = iVar4;
        }
        runtime_mapiternext(&var_68h);
    }
    LOCK();
    uVar1 = *in_RAX;
    *in_RAX = *in_RAX - 1;
    UNLOCK();
    uVar6 = uVar8;
    puVar10 = (undefined8 *)var_90h;
    if (uVar1 != 1) {
        sync___Mutex__unlockSlow(in_RAX);
        puVar10 = (undefined8 *)var_90h;
    }
    while (0 < (int64_t)uVar6) {
        var_a8h = uVar6;
        var_70h = (int64_t)puVar10;
        pkg_diapdu_sendResumeNavigationForVehicle(*puVar10, puVar10[1]);
        puVar10 = (undefined8 *)(var_70h + 0x10);
        uVar6 = var_a8h - 1;
    }
    LOCK();
    uVar1 = *in_RAX;
    if (uVar1 == 0) {
        *in_RAX = 1;
    }
    UNLOCK();
    puVar10 = (undefined8 *)var_90h;
    if (uVar1 != 0) {
        sync___Mutex__lockSlow(in_RAX);
        puVar10 = (undefined8 *)var_90h;
    }
    while (0 < (int64_t)uVar8) {
        var_a8h = uVar8;
        var_70h = (int64_t)puVar10;
        runtime_mapdelete_faststr(0x107d940, *(undefined8 *)(in_RAX + 10), *puVar10, puVar10[1]);
        puVar10 = (undefined8 *)(var_70h + 0x10);
        uVar8 = var_a8h - 1;
    }
    LOCK();
    uVar1 = *in_RAX;
    *in_RAX = *in_RAX - 1;
    UNLOCK();
    puVar10 = (undefined8 *)var_88h;
    uVar6 = uVar9;
    if (uVar1 != 1) {
        sync___Mutex__unlockSlow(in_RAX);
        puVar10 = (undefined8 *)var_88h;
    }
    while (0 < (int64_t)uVar6) {
        var_a8h = uVar6;
        var_70h = (int64_t)puVar10;
        pkg_diapdu_sendPauseNavigationForVehicle(*puVar10, puVar10[1]);
        puVar10 = (undefined8 *)(var_70h + 0x10);
        uVar6 = var_a8h - 1;
    }
    puVar5 = (undefined *)0x0;
    LOCK();
    uVar1 = *in_RAX;
    if (uVar1 == 0) {
        *in_RAX = 1;
    } else {
        puVar5 = (undefined *)(uint64_t)uVar1;
    }
    UNLOCK();
    puVar10 = (undefined8 *)var_88h;
    if (uVar1 != 0) {
        puVar5 = (undefined *)sync___Mutex__lockSlow(in_RAX);
        puVar10 = (undefined8 *)var_88h;
    }
    while (0 < (int64_t)uVar9) {
        var_a8h = uVar9;
        var_70h = (int64_t)puVar10;
        puVar5 = (undefined *)runtime_mapassign_faststr(0x107d940, *(undefined8 *)(in_RAX + 10), *puVar10, puVar10[1]);
        *puVar5 = 1;
        puVar10 = (undefined8 *)(var_70h + 0x10);
        uVar9 = var_a8h - 1;
    }
    LOCK();
    uVar1 = *in_RAX;
    *in_RAX = *in_RAX - 1;
    UNLOCK();
    if (uVar1 != 1) {
        puVar5 = (undefined *)sync___Mutex__unlockSlow(in_RAX);
    }
    return puVar5;
}

/* CAS-Backend/pkg/diapdu.lookupVehicleDaohang | VA 0xe3ada0 | traffic_dynamic.go:528
   DWARF parameters and results: vehicleID string, ip string, port int, ok bool
   DWARF locals: vehicles []CAS-Backend/biz/dao.Vehicle, err error, v CAS-Backend/biz/dao.Vehicle */
// WARNING: Variable defined which should be unmapped: var_8h

int64_t __stdcall
pkg_diapdu_lookupVehicleDaohang(int64_t arg_8h, int64_t arg_10h, int64_t arg_40h, int64_t arg_78h, int64_t arg_f0h)
{
    undefined8 uVar1;
    char cVar2;
    undefined8 in_RAX;
    int64_t unaff_RBX;
    int64_t iVar3;
    int64_t extraout_RSI;
    int64_t extraout_RDI;
    int64_t unaff_R14;
    undefined auVar4 [16];
    undefined auVar5 [16];
    int64_t var_e8h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_70h;
    int64_t iStack_68;
    undefined auStack_58 [56];
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_58 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe3af50;
        runtime_morestack_noctxt_abi0();
    }
    auVar4 = biz_dao_GetAllVehicles();
    if (extraout_RDI != 0) {
        var_18h = *(int64_t *)(extraout_RDI + 8);
        var_10h = extraout_RSI;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11991ef /* "[交通管制] 查询车辆列表失败: %v\n" */, 0x2c, &var_18h, 1, 1);
        return 0;
    }
    while( true ) {
        iVar3 = auVar4._8_8_;
        var_20h = auVar4._0_8_;
        if (iVar3 < 1) {
            return 0;
        }
        uVar1 = *(undefined8 *)var_20h;
        auVar5 = runtime_duffcopy_offset_798();
        if (unaff_RBX == var_90h) {
            cVar2 = runtime_memequal(uVar1, in_RAX);
            auVar5._8_8_ = iVar3;
            auVar5._0_8_ = var_20h;
        } else {
            cVar2 = '\0';
        }
        if (cVar2 != '\0') break;
        if (unaff_RBX == iStack_68) {
            cVar2 = runtime_memequal(var_70h, in_RAX);
            auVar5._8_8_ = iVar3;
            auVar5._0_8_ = var_20h;
        } else {
            cVar2 = '\0';
        }
        if (cVar2 != '\0') {
            return var_88h;
        }
        auVar4._8_8_ = auVar5._8_8_ + -1;
        auVar4._0_8_ = auVar5._0_8_ + 0x78;
    }
    return var_88h;
}

/* CAS-Backend/pkg/diapdu.sendPauseNavigationForVehicle | VA 0xe3af60 | traffic_dynamic.go:543
   DWARF parameters and results: vehicleID string
   DWARF locals: port int, ok bool, ip string, err error */
// WARNING: Variable defined which should be unmapped: var_90h
// WARNING: Variable defined which should be unmapped: var_58h

void __stdcall
pkg_diapdu_sendPauseNavigationForVehicle(int64_t arg_8h, int64_t arg_10h, int64_t arg_40h, int64_t arg_50h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 in_RCX;
    undefined8 extraout_RCX;
    undefined8 unaff_RBX;
    char cVar3;
    undefined8 in_RDI;
    undefined8 extraout_RDI;
    int64_t unaff_R14;
    undefined auVar4 [16];
    int64_t in_stack_00000020;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
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
    
    while (cVar3 = (char)in_RDI, &var_48h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
        in_RCX = extraout_RCX;
        in_RDI = extraout_RDI;
    }
    uVar1 = pkg_diapdu_lookupVehicleDaohang
                      (in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, var_90h, var_58h, in_stack_00000020);
    if (cVar3 != '\0') {
        auVar4 = pkg_agvcontrol_DoWithConn();
        iVar2 = auVar4._0_8_;
        if (iVar2 != 0) {
            var_30h = runtime_convTstring(in_RAX, unaff_RBX);
            var_38h = 0x1042920;
            if (iVar2 == 0) {
                var_28h = 0;
            } else {
                var_28h = *(int64_t *)(iVar2 + 8);
            }
            var_20h = auVar4._8_8_;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119c90c /* "[交通管制] 暂停导航失败 vehicle=%s: %v\n" */, 0x31, &var_38h, 2, 2);
            return;
        }
        var_60h = runtime_convTstring(in_RAX, unaff_RBX);
        var_68h = 0x1042920;
        var_50h = runtime_convTstring(uVar1, unaff_RBX);
        var_58h = 0x1042920;
        var_40h = runtime_convT64(in_RCX);
        var_48h = 0x1042b60;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a8065 /* "[交通管制] 已暂停导航 vehicle=%s (%s:%d) 等待前车释放路段\n" */, 0x4b, &var_68h, 3, 3);
        return;
    }
    var_10h = runtime_convTstring(in_RAX, unaff_RBX);
    var_18h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a24cb /* "[交通管制] 暂停导航跳过: vehicle=%s 未找到 IP\n" */, 0x3b, &var_18h, 1, 1);
    return;
}

/* CAS-Backend/pkg/diapdu.sendPauseNavigationForVehicle.func1 | VA 0xe45440 | traffic_dynamic.go:549
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_5fh
// WARNING: [rz-ghidra] Detected overlap for variable var_5eh
// WARNING: [rz-ghidra] Detected overlap for variable var_5ch
// WARNING: [rz-ghidra] Detected overlap for variable var_56h
// WARNING: [rz-ghidra] Detected overlap for variable var_6fh
// WARNING: [rz-ghidra] Detected overlap for variable var_6eh
// WARNING: [rz-ghidra] Detected overlap for variable var_6ch
// WARNING: [rz-ghidra] Detected overlap for variable var_68h
// WARNING: [rz-ghidra] Detected overlap for variable var_66h
// WARNING: [rz-ghidra] Detected overlap for variable var_50h
// WARNING: [rz-ghidra] Detected overlap for variable var_62h
// WARNING: [rz-ghidra] Removing arg arg_4ah because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_52h

void __stdcall pkg_diapdu_sendPauseNavigationForVehicle_func1(int64_t arg_8h, int64_t arg_10h)
{
    int64_t unaff_R14;
    int64_t in_stack_00000060;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    pkg_agvcontrol_SendPauseNavigation(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000060);
    return;
}

/* CAS-Backend/pkg/diapdu.sendResumeNavigationForVehicle | VA 0xe3b1c0 | traffic_dynamic.go:558
   DWARF parameters and results: vehicleID string
   DWARF locals: port int, ok bool, ip string, err error */
// WARNING: Variable defined which should be unmapped: var_90h
// WARNING: Variable defined which should be unmapped: var_58h

void __stdcall
pkg_diapdu_sendResumeNavigationForVehicle(int64_t arg_8h, int64_t arg_10h, int64_t arg_40h, int64_t arg_50h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 in_RCX;
    undefined8 extraout_RCX;
    undefined8 unaff_RBX;
    char cVar3;
    undefined8 in_RDI;
    undefined8 extraout_RDI;
    int64_t unaff_R14;
    undefined auVar4 [16];
    int64_t in_stack_00000020;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
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
    
    while (cVar3 = (char)in_RDI, &var_48h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
        in_RCX = extraout_RCX;
        in_RDI = extraout_RDI;
    }
    uVar1 = pkg_diapdu_lookupVehicleDaohang
                      (in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, var_90h, var_58h, in_stack_00000020);
    if (cVar3 != '\0') {
        auVar4 = pkg_agvcontrol_DoWithConn();
        iVar2 = auVar4._0_8_;
        if (iVar2 != 0) {
            var_30h = runtime_convTstring(in_RAX, unaff_RBX);
            var_38h = 0x1042920;
            if (iVar2 == 0) {
                var_28h = 0;
            } else {
                var_28h = *(int64_t *)(iVar2 + 8);
            }
            var_20h = auVar4._8_8_;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119c93d /* "[交通管制] 恢复导航失败 vehicle=%s: %v\n" */, 0x31, &var_38h, 2, 2);
            return;
        }
        var_60h = runtime_convTstring(in_RAX, unaff_RBX);
        var_68h = 0x1042920;
        var_50h = runtime_convTstring(uVar1, unaff_RBX);
        var_58h = 0x1042920;
        var_40h = runtime_convT64(in_RCX);
        var_48h = 0x1042b60;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119d550 /* "[交通管制] 已恢复导航 vehicle=%s (%s:%d)\n" */, 0x32, &var_68h, 3, 3);
        return;
    }
    var_10h = runtime_convTstring(in_RAX, unaff_RBX);
    var_18h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a2506 /* "[交通管制] 恢复导航跳过: vehicle=%s 未找到 IP\n" */, 0x3b, &var_18h, 1, 1);
    return;
}

/* CAS-Backend/pkg/diapdu.sendResumeNavigationForVehicle.func1 | VA 0xe45400 | traffic_dynamic.go:564
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_43h
// WARNING: [rz-ghidra] Detected overlap for variable var_42h
// WARNING: [rz-ghidra] Detected overlap for variable var_40h
// WARNING: [rz-ghidra] Detected overlap for variable var_3ah
// WARNING: [rz-ghidra] Detected overlap for variable var_2fh
// WARNING: [rz-ghidra] Detected overlap for variable var_2eh
// WARNING: [rz-ghidra] Detected overlap for variable var_2ch
// WARNING: [rz-ghidra] Detected overlap for variable var_28h
// WARNING: [rz-ghidra] Detected overlap for variable var_4ah
// WARNING: [rz-ghidra] Detected overlap for variable var_50h
// WARNING: [rz-ghidra] Detected overlap for variable var_34h
// WARNING: [rz-ghidra] Detected overlap for variable var_46h
// WARNING: [rz-ghidra] Removing arg arg_4eh because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_36h

void __stdcall pkg_diapdu_sendResumeNavigationForVehicle_func1(int64_t arg_8h, int64_t arg_10h)
{
    int64_t unaff_R14;
    int64_t in_stack_00000050;
    int64_t in_stack_00000070;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    pkg_agvcontrol_SendResumeNavigation(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000050, in_stack_00000070);
    return;
}
