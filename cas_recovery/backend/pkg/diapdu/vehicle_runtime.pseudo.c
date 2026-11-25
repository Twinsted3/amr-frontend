/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.ResolveCanonicalVehicleID | VA 0xe417e0 | vehicle_runtime.go:83
   DWARF parameters and results: pushID string, ~r0 string
   DWARF locals: hub *CAS-Backend/pkg/diapdu.VehicleRuntimeHub, vehicles []CAS-Backend/biz/dao.Vehicle, err error, c string, v CAS-Backend/biz/dao.Vehicle */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall
pkg_diapdu_ResolveCanonicalVehicleID(int64_t arg_8h, int64_t arg_10h, int64_t arg_30h, int64_t arg_68h, int64_t arg_d8h)
{
    undefined8 uVar1;
    char cVar2;
    undefined8 in_RAX;
    int64_t extraout_RAX;
    int64_t iVar3;
    int64_t extraout_RCX;
    int64_t iVar4;
    int64_t unaff_RBX;
    int64_t iVar5;
    int64_t extraout_RBX;
    int64_t iVar6;
    int64_t extraout_RDI;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t var_d0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_68h;
    int64_t iStack_60;
    undefined auStack_40 [40];
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_40 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe4199d;
        runtime_morestack_noctxt_abi0();
    }
    if (unaff_RBX == 0) {
        return 0;
    }
    var_18h = *(int64_t *)0xfb4b70;
    auVar7 = pkg_diapdu___VehicleRuntimeHub__cachedCanonical(*(int64_t *)0xfb4b70, in_RAX, unaff_RBX);
    if (auVar7._8_8_ != 0) {
        return auVar7._0_8_;
    }
    auVar7 = biz_dao_GetAllVehicles();
    iVar4 = unaff_RBX;
    if (extraout_RDI != 0) {
        return in_RAX;
    }
    while( true ) {
        iVar5 = auVar7._8_8_;
        var_10h = auVar7._0_8_;
        if (iVar5 < 1) {
            return in_RAX;
        }
        uVar1 = *(undefined8 *)var_10h;
        runtime_duffcopy_offset_798(var_10h, iVar5, iVar4, &var_88h, (undefined8 *)(var_10h + 8));
        if (extraout_RCX == var_88h) {
            cVar2 = runtime_memequal(uVar1, in_RAX, var_88h);
            iVar3 = var_10h;
            iVar4 = unaff_RBX;
            iVar6 = iVar5;
        } else {
            cVar2 = '\0';
            iVar3 = extraout_RAX;
            iVar4 = extraout_RCX;
            iVar6 = extraout_RBX;
        }
        if (cVar2 != '\0') break;
        if (iVar4 == iStack_60) {
            cVar2 = runtime_memequal(var_68h, in_RAX, iStack_60);
            iVar3 = var_10h;
            iVar4 = unaff_RBX;
        } else {
            cVar2 = '\0';
            iVar5 = iVar6;
        }
        if (cVar2 != '\0') break;
        auVar7._8_8_ = iVar5 + -1;
        auVar7._0_8_ = iVar3 + 0x78;
    }
    pkg_diapdu___VehicleRuntimeHub__setAlias(var_18h, in_RAX, iVar4, uVar1, var_88h);
    return uVar1;
}

/* CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).cachedCanonical | VA 0xe419c0 | vehicle_runtime.go:104
   DWARF parameters and results: h *CAS-Backend/pkg/diapdu.VehicleRuntimeHub, pushID string, ~r0 string, ~r0 string
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_31h
// WARNING: Variable defined which should be unmapped: var_28h
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_30h
// WARNING: [rz-ghidra] Detected overlap for variable arg_27h
// WARNING: [rz-ghidra] Detected overlap for variable var_40h

undefined8 __stdcall
pkg_diapdu___VehicleRuntimeHub__cachedCanonical
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_68h)
{
    int32_t *piVar1;
    int32_t iVar2;
    undefined8 uVar3;
    undefined8 uVar4;
    int64_t in_RAX;
    undefined8 *puVar5;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t in_XMM15_Qb;
    int64_t unaff_retaddr;
    int64_t in_stack_00000028;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    unkbyte7 Stack_38;
    int64_t var_31h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    LOCK();
    piVar1 = (int32_t *)(in_RAX + 0x10);
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    if ((int32_t)(iVar2 + 1) < 0) {
        sync_runtime_SemacquireRWMutexR(in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8);
    }
    var_20h = 0xe41ae0;
    var_10h = (int64_t)&var_20h;
    uVar3 = *(undefined8 *)(in_RAX + 0x38);
    puVar5 = (undefined8 *)
             runtime_mapaccess1_faststr(in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, 
                          in_stack_ffffffffffffffc0, CONCAT17(1, Stack_38), in_XMM15_Qb, var_10h, unaff_RBX, 
                          in_stack_00000028);
    uVar4 = *puVar5;
    (**(code **)var_10h)(puVar5, uVar3);
    return uVar4;
}

/* CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).cachedCanonical.deferwrap1 | VA 0xe41ae0 | vehicle_runtime.go:106
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___VehicleRuntimeHub__cachedCanonical_deferwrap1
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

/* CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).setAlias | VA 0xe41b40 | vehicle_runtime.go:110
   DWARF parameters and results: h *CAS-Backend/pkg/diapdu.VehicleRuntimeHub, pushID string, canonical string
   DWARF locals: (no entries) */
void __stdcall
pkg_diapdu___VehicleRuntimeHub__setAlias
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_50h)
{
    int64_t in_RAX;
    int64_t *piVar1;
    undefined8 extraout_RAX;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 uVar2;
    undefined8 unaff_RBX;
    undefined8 extraout_RBX;
    int64_t *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    sync___RWMutex__Lock();
    piVar1 = (int64_t *)runtime_mapassign_faststr(0x107db20, *(undefined8 *)(in_RAX + 0x38), unaff_RBX, arg4);
    piVar1[1] = arg2;
    if (*(int32_t *)0x355db50 != 0) {
        piVar1 = (int64_t *)runtime_gcWriteBarrier2();
        *extraout_R11 = arg1;
        extraout_R11[1] = *piVar1;
    }
    *piVar1 = arg1;
    time_Now();
    *(undefined8 *)(in_RAX + 0x20) = extraout_RAX;
    *(undefined8 *)(in_RAX + 0x28) = extraout_RBX;
    uVar2 = extraout_RCX;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11_00 = extraout_RCX_00;
        extraout_R11_00[1] = *(undefined8 *)(in_RAX + 0x30);
        uVar2 = extraout_RCX_00;
    }
    *(undefined8 *)(in_RAX + 0x30) = uVar2;
    sync___RWMutex__Unlock(in_RAX);
    return;
}

/* CAS-Backend/pkg/diapdu.HandleVehicleRuntimePush | VA 0xe41c60 | vehicle_runtime.go:129
   DWARF parameters and results: push *CAS-Backend/pkg/diapdu.VehicleRuntimePush, ~r0 string
   DWARF locals: snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, hub *CAS-Backend/pkg/diapdu.VehicleRuntimeHub, trafficPkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, canonical string, prev *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ok bool */
// WARNING: Variable defined which should be unmapped: var_48h
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: Variable defined which should be unmapped: var_8h

undefined  [16] __stdcall pkg_diapdu_HandleVehicleRuntimePush(int64_t arg_8h, int64_t arg_58h)
{
    double dVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    int64_t iVar4;
    char cVar5;
    undefined8 *in_RAX;
    undefined8 extraout_RAX;
    undefined8 *puVar6;
    undefined8 *puVar7;
    int64_t *piVar8;
    undefined8 *puVar9;
    undefined8 extraout_RCX;
    undefined8 *extraout_RCX_00;
    undefined8 *extraout_RCX_01;
    undefined8 *extraout_RCX_02;
    undefined8 uVar10;
    undefined8 *extraout_RCX_03;
    uint64_t in_RDX;
    char extraout_BL;
    undefined8 extraout_RBX;
    int64_t iVar11;
    undefined8 extraout_RSI;
    undefined8 *extraout_RDI;
    undefined8 *extraout_RDI_00;
    undefined8 *extraout_RDI_01;
    undefined8 *extraout_RDI_02;
    undefined8 *puVar12;
    int64_t extraout_R8;
    int64_t extraout_R8_00;
    undefined8 extraout_R10;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t unaff_R14;
    undefined auVar13 [16];
    undefined auVar14 [16];
    int64_t in_stack_00000060;
    int64_t var_80h;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
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
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if ((in_RAX != (undefined8 *)0x0) && (iVar2 = in_RAX[1], iVar2 != 0)) {
        auVar14._0_8_ =
             pkg_diapdu_ResolveCanonicalVehicleID
                       (in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, var_48h, var_10h, in_stack_00000060);
        time_Now();
        puVar6 = (undefined8 *)runtime_newobject(0x113a8a0);
        uVar10 = *in_RAX;
        puVar6[1] = in_RAX[1];
        puVar9 = in_RAX;
        puVar12 = extraout_RDI;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = extraout_RSI;
            extraout_R11[1] = auVar14._0_8_;
            puVar9 = extraout_RCX_00;
            uVar10 = extraout_RSI;
            puVar12 = extraout_RDI_00;
        }
        *puVar6 = uVar10;
        puVar6[3] = iVar2;
        puVar6[2] = auVar14._0_8_;
        puVar6[4] = puVar9[2];
        puVar6[5] = puVar9[3];
        puVar6[6] = puVar9[4];
        uVar10 = puVar9[5];
        puVar6[9] = puVar9[6];
        iVar11 = iVar2;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_00 = extraout_R10;
            puVar9 = extraout_RCX_01;
            puVar12 = extraout_RDI_01;
            iVar11 = extraout_R8;
            uVar10 = extraout_R10;
        }
        puVar6[8] = uVar10;
        *(undefined *)(puVar6 + 0x17) = *(undefined *)(puVar9 + 8);
        puVar6[0x18] = puVar9[9];
        puVar6[0x19] = puVar9[10];
        *(undefined *)(puVar6 + 0x1a) = *(undefined *)(puVar9 + 0xb);
        *(undefined *)((int64_t)puVar6 + 0xd1) = *(undefined *)((int64_t)puVar9 + 0x59);
        *(undefined *)((int64_t)puVar6 + 0xd2) = *(undefined *)((int64_t)puVar9 + 0x5a);
        puVar6[0x1d] = extraout_RAX;
        puVar6[0x1e] = extraout_RBX;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_01 = extraout_RCX;
            puVar9 = extraout_RCX_02;
            puVar12 = extraout_RDI_02;
            iVar11 = extraout_R8_00;
        }
        puVar6[0x1f] = extraout_RCX;
        if (puVar9[0xc] != 0) {
            *(undefined *)(puVar6 + 0x1c) = 1;
            auVar13 = pkg_agvcontrol_ParseCurrentLock(puVar9[0xc], puVar9[0xd]);
            uVar10 = 0xffffffffffffffff;
            if ((auVar13._8_8_ & 0xff) != 0) {
                uVar10 = auVar13._0_8_;
            }
            puVar6[0x1b] = uVar10;
            puVar9 = in_RAX;
            puVar12 = puVar6;
            iVar11 = iVar2;
        }
        puVar3 = (undefined8 *)puVar9[0xe];
        puVar7 = puVar6;
        if (puVar3 != (undefined8 *)0x0) {
            if (*(int32_t *)0x355db50 != 0) {
                runtime_wbMove(0x11162a0, puVar6 + 10, puVar3, puVar12, puVar3, iVar11);
                puVar9 = in_RAX;
                iVar11 = iVar2;
            }
            uVar10 = *puVar3;
            puVar6[10] = uVar10;
            puVar7 = (undefined8 *)runtime_duffcopy_offset_812(puVar6, uVar10, puVar9, puVar6 + 0xb, puVar3 + 1, iVar11);
            puVar9 = extraout_RCX_03;
        }
        dVar1 = (double)puVar9[7];
        if (0.0 < dVar1) {
            if (*(double *)0x2e67880 < dVar1) {
                if (dVar1 <= *(double *)0x2e67890) {
                    iVar11 = (int64_t)(*(double *)0x2e67870 + dVar1);
                } else {
                    iVar11 = 100;
                }
            } else {
                iVar11 = (int64_t)(*(double *)0x2e67870 + dVar1 * *(double *)0x2e67890);
            }
        } else {
            iVar11 = 0;
        }
        puVar7[7] = iVar11;
        iVar11 = *(int64_t *)0xfb4b70;
        sync___RWMutex__Lock(*(int64_t *)0xfb4b70);
        piVar8 = (int64_t *)runtime_mapaccess2_faststr(0x107d700, *(undefined8 *)(iVar11 + 0x18), auVar14._0_8_, iVar2);
        if ((extraout_BL != '\0') && (in_RAX[0xe] == 0)) {
            iVar4 = *piVar8;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_wbMove(0x11162a0, puVar6 + 10, iVar4 + 0x50);
            }
            puVar6[10] = *(undefined8 *)(iVar4 + 0x50);
            runtime_duffcopy_offset_812();
        }
        piVar8 = (int64_t *)runtime_mapassign_faststr(0x107d700, *(undefined8 *)(iVar11 + 0x18), auVar14._0_8_, iVar2);
        if (*(int32_t *)0x355db50 != 0) {
            piVar8 = (int64_t *)runtime_gcWriteBarrier2();
            *extraout_R11_02 = (int64_t)puVar6;
            extraout_R11_02[1] = *piVar8;
        }
        *piVar8 = (int64_t)puVar6;
        puVar9 = (undefined8 *)runtime_mapassign_faststr(0x107db20, *(undefined8 *)(iVar11 + 0x38), *in_RAX, in_RAX[1]);
        puVar9[1] = iVar2;
        if (*(int32_t *)0x355db50 != 0) {
            puVar9 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_03 = auVar14._0_8_;
            extraout_R11_03[1] = *puVar9;
        }
        *puVar9 = auVar14._0_8_;
        sync___RWMutex__Unlock(iVar11);
        puVar9 = (undefined8 *)in_RAX[0xe];
        if ((puVar9 == (undefined8 *)0x0) ||
           ((((puVar9[0xb] == 0 && (puVar9[9] == 0)) && (puVar9[7] == 0)) && (puVar9[1] == 0)))) {
            if (((puVar6[0x15] == 0) && (puVar6[0x13] == 0)) && ((puVar6[0x11] == 0 && (puVar6[0xb] == 0)))) {
                puVar9 = (undefined8 *)0x0;
            } else {
                puVar9 = puVar6 + 10;
            }
        }
        if (puVar9 != (undefined8 *)0x0) {
            pkg_diapdu_pushMonitorTraffic(auVar14._0_8_, iVar2, puVar9);
        }
        cVar5 = pkg_diapdu_IsAutoTaskSchedulerRunning();
        if (cVar5 != '\0') {
            pkg_diapdu_ensureVehicleInSchedulerPool(auVar14._0_8_, iVar2, puVar6);
        }
        auVar14._8_8_ = puVar6;
        return auVar14;
    }
    auVar13._8_8_ = 0;
    auVar13._0_8_ = in_RDX;
    return auVar13 << 0x40;
}

/* CAS-Backend/pkg/diapdu.pushMonitorTraffic | VA 0xe42140 | vehicle_runtime.go:183
   DWARF parameters and results: canonicalID string, pkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage
   DWARF locals: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController */
void __stdcall
pkg_diapdu_pushMonitorTraffic(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_30h)
{
    undefined8 in_RAX;
    int64_t iVar1;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if ((unaff_RBX != 0) && (arg4 != 0)) {
        if ((*(int64_t *)(arg4 + 0x58) != 0) ||
           (((*(int64_t *)(arg4 + 0x48) != 0 || (*(int64_t *)(arg4 + 0x38) != 0)) || (*(int64_t *)(arg4 + 8) != 0)))) {
            iVar1 = pkg_diapdu_GetGlobalDynamicTraffic();
            if (iVar1 != 0) {
                pkg_diapdu_HandleMonitorPush(in_RAX, unaff_RBX, arg4);
                pkg_diapdu_syncHubTaskPkgFromTraffic(in_RAX, unaff_RBX);
                return;
            }
            return;
        }
    }
    return;
}

/* CAS-Backend/pkg/diapdu.syncHubTaskPkgFromTraffic | VA 0xe42200 | vehicle_runtime.go:196
   DWARF parameters and results: canonicalID string
   DWARF locals: dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, pkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, ok bool, hub *CAS-Backend/pkg/diapdu.VehicleRuntimeHub, snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap */
// WARNING: Variable defined which should be unmapped: var_20h
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable arg_27h
// WARNING: [rz-ghidra] Detected overlap for variable var_40h

void __stdcall
pkg_diapdu_syncHubTaskPkgFromTraffic(int64_t arg_8h, int64_t arg_10h, int64_t arg_30h, int64_t arg_50h, int64_t arg_58h)
{
    int64_t iVar1;
    int64_t in_RAX;
    int64_t iVar2;
    undefined8 *arg_38h;
    int64_t *piVar3;
    undefined8 extraout_RAX;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 uVar4;
    char extraout_BL;
    int64_t unaff_RBX;
    undefined8 extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t in_stack_00000028;
    int64_t in_stack_00000040;
    int64_t var_50h;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (unaff_RBX == 0) {
        return;
    }
    iVar2 = pkg_diapdu_GetGlobalDynamicTraffic();
    if (iVar2 == 0) {
        return;
    }
    arg_38h = (undefined8 *)pkg_diapdu___DynamicTrafficController__FreshMonitorSnap(iVar2, in_RAX, unaff_RBX, 15000000000);
    iVar2 = *(int64_t *)0xfb4b70;
    if (((extraout_BL != '\0') && (arg_38h != (undefined8 *)0x0)) &&
       ((arg_38h[0xb] != 0 || (((arg_38h[9] != 0 || (arg_38h[7] != 0)) || (arg_38h[1] != 0)))))) {
        sync___RWMutex__Lock();
        uVar4 = *(undefined8 *)(iVar2 + 0x18);
        piVar3 = (int64_t *)
                 runtime_mapaccess1_faststr(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                              in_stack_ffffffffffffffd8, iVar2, (int64_t)arg_38h, in_RAX, in_stack_00000028, 
                              in_stack_00000040);
        iVar1 = *piVar3;
        if (iVar1 != 0) {
            if (*(int32_t *)0x355db50 != 0) {
                runtime_wbMove(0x11162a0, iVar1 + 0x50, arg_38h);
                uVar4 = extraout_RBX;
            }
            *(undefined8 *)(iVar1 + 0x50) = *arg_38h;
            runtime_duffcopy_offset_812(iVar1 + 0x58, uVar4);
            time_Now();
            *(undefined8 *)(iVar1 + 0xe8) = extraout_RAX;
            *(undefined8 *)(iVar1 + 0xf0) = extraout_RBX_00;
            uVar4 = extraout_RCX;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11 = extraout_RCX_00;
                extraout_R11[1] = *(undefined8 *)(iVar1 + 0xf8);
                uVar4 = extraout_RCX_00;
            }
            *(undefined8 *)(iVar1 + 0xf8) = uVar4;
        }
        sync___RWMutex__Unlock(iVar2);
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.MonitorSnapForVehicle | VA 0xe423c0 | vehicle_runtime.go:231
   DWARF parameters and results: vehicleID string, pkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, hubSnap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ok bool
   DWARF locals: hubPkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, trafficPkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, hs *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, fresh bool, &cp *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, &p *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, dt *CAS-Backend/pkg/diapdu.DynamicTrafficController, p *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage */
// WARNING: Variable defined which should be unmapped: var_8h

int64_t __stdcall pkg_diapdu_MonitorSnapForVehicle(int64_t arg_8h, int64_t arg_10h, int64_t arg_38h, int64_t arg_58h)
{
    undefined8 in_RAX;
    int64_t iVar1;
    int64_t iVar2;
    int64_t iVar3;
    undefined8 *puVar4;
    undefined8 uVar5;
    char extraout_BL;
    char extraout_BL_00;
    int64_t unaff_RBX;
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
    if (unaff_RBX == 0) {
        return 0;
    }
    iVar1 = pkg_diapdu___VehicleRuntimeHub__Fresh(*(undefined8 *)0xfb4b70, in_RAX, unaff_RBX);
    if (extraout_BL == '\0') {
        uVar5 = 0;
        iVar3 = 0;
    } else {
        iVar2 = runtime_newobject(0x113a8a0);
        if (*(int32_t *)0x355db50 != 0) {
            runtime_wbMove(0x113a8a0, iVar2, iVar1);
        }
        iVar3 = runtime_duffcopy_offset_672();
        if ((((*(int64_t *)(iVar1 + 0xa8) == 0) && (*(int64_t *)(iVar1 + 0x98) == 0)) &&
            (*(int64_t *)(iVar1 + 0x88) == 0)) && (*(int64_t *)(iVar1 + 0x58) == 0)) {
            uVar5 = 0;
        } else {
            puVar4 = (undefined8 *)runtime_newobject(0x11162a0);
            if (*(int32_t *)0x355db50 != 0) {
                runtime_wbMove(0x11162a0, puVar4, iVar1 + 0x50);
            }
            *puVar4 = *(undefined8 *)(iVar1 + 0x50);
            uVar5 = runtime_duffcopy_offset_812();
            iVar3 = iVar2;
        }
    }
    iVar1 = pkg_diapdu_GetGlobalDynamicTraffic();
    if (iVar1 == 0) {
        iVar1 = 0;
        goto code_r0x00e4256a;
    }
    iVar1 = pkg_diapdu___DynamicTrafficController__FreshMonitorSnap(iVar1, in_RAX, unaff_RBX, 15000000000);
    if (extraout_BL_00 != '\0') {
        if (iVar1 == 0) {
            iVar1 = 0;
            goto code_r0x00e4256a;
        }
        if (((*(int64_t *)(iVar1 + 0x58) != 0) || (*(int64_t *)(iVar1 + 0x48) != 0)) ||
           ((*(int64_t *)(iVar1 + 0x38) != 0 || (*(int64_t *)(iVar1 + 8) != 0)))) goto code_r0x00e4256a;
    }
    iVar1 = 0;
code_r0x00e4256a:
    iVar1 = pkg_diapdu_pickRicherMonitorPackage(uVar5, iVar1);
    if ((iVar1 == 0) && (iVar3 == 0)) {
        return 0;
    }
    return iVar1;
}

/* CAS-Backend/pkg/diapdu.pickRicherMonitorPackage | VA 0xe425e0 | vehicle_runtime.go:257
   DWARF parameters and results: a *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, b *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, ~r0 *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage
   DWARF locals: (no entries) */
int64_t pkg_diapdu_pickRicherMonitorPackage(int64_t param_1, int64_t param_2)
{
    int64_t iVar1;
    int64_t iVar2;
    
    if (param_1 == 0) {
        return param_2;
    }
    if (param_2 == 0) {
        return param_1;
    }
    iVar1 = *(int64_t *)(param_2 + 0x58);
    iVar2 = *(int64_t *)(param_1 + 0x58);
    if (iVar2 < iVar1) {
        return param_2;
    }
    if (((iVar2 == iVar1) &&
        ((((iVar1 != 0 || (*(int64_t *)(param_2 + 0x48) != 0)) || (*(int64_t *)(param_2 + 0x38) != 0)) ||
         (*(int64_t *)(param_2 + 8) != 0)))) &&
       (((iVar2 == 0 && (*(int64_t *)(param_1 + 0x48) == 0)) &&
        ((*(int64_t *)(param_1 + 0x38) == 0 && (*(int64_t *)(param_1 + 8) == 0)))))) {
        return param_2;
    }
    return param_1;
}

/* CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).Fresh | VA 0xe42640 | vehicle_runtime.go:279
   DWARF parameters and results: h *CAS-Backend/pkg/diapdu.VehicleRuntimeHub, canonicalID string, ~r0 *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ~r1 bool
   DWARF locals: &cp *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap */
// WARNING: Variable defined which should be unmapped: var_18h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable arg_27h
// WARNING: [rz-ghidra] Detected overlap for variable var_40h

undefined8 __stdcall
pkg_diapdu___VehicleRuntimeHub__Fresh
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_30h, int64_t arg_48h)
{
    int32_t *piVar1;
    int32_t iVar2;
    int64_t iVar3;
    int64_t in_RAX;
    int64_t *piVar4;
    int64_t iVar5;
    undefined8 uVar6;
    int64_t unaff_RBX;
    int64_t unaff_RBP;
    int64_t unaff_R14;
    int64_t var_48h;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (arg4 != 0) {
        LOCK();
        piVar1 = (int32_t *)(in_RAX + 0x10);
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + 1;
        UNLOCK();
        if ((int32_t)(iVar2 + 1) < 0) {
            sync_runtime_SemacquireRWMutexR(in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8);
        }
        piVar4 = (int64_t *)
                 runtime_mapaccess1_faststr(in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, 
                              in_stack_ffffffffffffffe0, var_18h, unaff_RBP, unaff_RBX, arg_30h, arg_48h);
        iVar3 = *piVar4;
        LOCK();
        piVar1 = (int32_t *)(in_RAX + 0x10);
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if ((int32_t)(iVar2 + -1) < 0) {
            sync___RWMutex__rUnlockSlow(in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0);
        }
        if (iVar3 != 0) {
            iVar5 = time_Since(*(undefined8 *)(iVar3 + 0xe8), *(undefined8 *)(iVar3 + 0xf0), 
                                    *(undefined8 *)(iVar3 + 0xf8));
            if (iVar5 < 0x37e11d601) {
                uVar6 = runtime_newobject(0x113a8a0);
                if (*(int32_t *)0x355db50 != 0) {
                    runtime_wbMove(0x113a8a0, uVar6, iVar3);
                }
                uVar6 = runtime_duffcopy_offset_672();
                return uVar6;
            }
        }
        return 0;
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).FreshByQuery | VA 0xe427c0 | vehicle_runtime.go:294
   DWARF parameters and results: h *CAS-Backend/pkg/diapdu.VehicleRuntimeHub, query string, ~r0 *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ~r0 *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ~r1 bool, ~r1 bool
   DWARF locals: q string, snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ok bool, canon string, &cp *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap */
// WARNING: Variable defined which should be unmapped: var_a0h
// WARNING: Variable defined which should be unmapped: var_88h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_aah
// WARNING: [rz-ghidra] Detected overlap for variable var_a8h
// WARNING: [rz-ghidra] Detected overlap for variable var_49h

undefined8 __stdcall
pkg_diapdu___VehicleRuntimeHub__FreshByQuery
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_60h, int64_t arg_b8h,
          int64_t arg_d8h, int64_t arg_e0h)
{
    int32_t *piVar1;
    int32_t iVar2;
    bool bVar3;
    char cVar4;
    int64_t in_RAX;
    undefined8 uVar5;
    int64_t iVar6;
    undefined8 extraout_RCX;
    char unaff_BL;
    undefined8 extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t unaff_R14;
    int64_t var_d8h;
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t var_a9h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t *piStack_70;
    int64_t in_stack_ffffffffffffff98;
    undefined auStack_48 [48];
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_48 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe42b45;
        runtime_morestack_noctxt_abi0();
    }
    if (arg4 == 0) {
        return 0;
    }
    uVar5 = pkg_diapdu___VehicleRuntimeHub__Fresh
                      (arg4, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 0, var_88h
                      );
    if (unaff_BL != '\0') {
        return uVar5;
    }
    cVar4 = pkg_diapdu_ResolveCanonicalVehicleID
                      (in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, 0, in_stack_ffffffffffffff98, in_RAX);
    if (arg4 != 0) {
        uVar5 = pkg_diapdu___VehicleRuntimeHub__Fresh
                          (arg4, in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 0, 
                           var_88h);
        if (cVar4 != '\0') {
            return uVar5;
        }
    }
    LOCK();
    piVar1 = (int32_t *)(in_RAX + 0x10);
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    if ((int32_t)(iVar2 + 1) < 0) {
        sync_runtime_SemacquireRWMutexR(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48);
    }
    var_88h = 0xe42b60;
    var_10h = (int64_t)&var_88h;
    var_90h = strings_TrimSpace(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40);
    fcn.00478aeb(var_90h, arg4, *(undefined8 *)(in_RAX + 0x18), &var_98h);
    runtime_mapiterinit(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48);
    uVar5 = extraout_RCX;
    do {
        if (var_78h == 0) {
            (**(code **)var_10h)(*(code **)var_10h, uVar5);
            return 0;
        }
        var_98h = *piStack_70;
        if (var_98h == 0) {
            bVar3 = true;
        } else {
            uVar5 = *(undefined8 *)(var_98h + 0xf0);
            iVar6 = time_Since(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48);
            bVar3 = 15000000000 < iVar6;
        }
        if (!bVar3) {
            if (arg4 == *(int64_t *)(var_98h + 0x18)) {
                cVar4 = runtime_memequal(*(undefined8 *)(var_98h + 0x10), var_90h, *(int64_t *)(var_98h + 0x18));
                uVar5 = extraout_RBX;
            } else {
                cVar4 = '\0';
            }
            if (cVar4 == '\0') {
                if (arg4 == *(int64_t *)(var_98h + 8)) {
                    cVar4 = runtime_memequal(*(undefined8 *)var_98h, var_90h, *(int64_t *)(var_98h + 8));
                    uVar5 = extraout_RBX_00;
                } else {
                    cVar4 = '\0';
                }
            } else {
                cVar4 = '\x01';
            }
            if (cVar4 != '\0') {
                iVar6 = runtime_newobject(in_stack_ffffffffffffff38);
                if (*(int32_t *)0x355db50 != 0) {
                    var_18h = iVar6;
                    runtime_wbMove(0x113a8a0, iVar6, var_98h);
                }
                uVar5 = fcn.00478dc0();
                (**(code **)var_10h)();
                return uVar5;
            }
        }
        runtime_mapiternext(in_stack_ffffffffffffff38);
    } while( true );
}

/* CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).FreshByQuery.deferwrap1 | VA 0xe42b60 | vehicle_runtime.go:307
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___VehicleRuntimeHub__FreshByQuery_deferwrap1
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

/* CAS-Backend/pkg/diapdu.(*VehicleRuntimeHub).CurrentStation | VA 0xe42bc0 | vehicle_runtime.go:321
   DWARF parameters and results: h *CAS-Backend/pkg/diapdu.VehicleRuntimeHub, canonicalID string, ~r0 string, ~r1 bool
   DWARF locals: snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ok bool, st string */
undefined  [16] __stdcall
pkg_diapdu___VehicleRuntimeHub__CurrentStation(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h)
{
    undefined auVar1 [16];
    int64_t iVar2;
    uint64_t in_RDX;
    int64_t iVar3;
    char extraout_BL;
    undefined8 uVar4;
    int64_t unaff_R14;
    undefined auVar5 [16];
    undefined auVar6 [16];
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    iVar2 = pkg_diapdu___VehicleRuntimeHub__Fresh();
    if (extraout_BL != '\0') {
        if (*(int64_t *)(iVar2 + 0x48) == 0) {
            iVar3 = *(int64_t *)(iVar2 + 0x58);
            if (iVar3 == 0) {
                iVar3 = *(int64_t *)(iVar2 + 0x98);
                if (iVar3 == 0) {
                    iVar3 = *(int64_t *)(iVar2 + 0x88);
                    uVar4 = *(undefined8 *)(iVar2 + 0x80);
                } else {
                    uVar4 = *(undefined8 *)(iVar2 + 0x90);
                }
            } else {
                uVar4 = *(undefined8 *)(iVar2 + 0x50);
            }
            auVar5._8_8_ = iVar3;
            auVar5._0_8_ = uVar4;
            return auVar5;
        }
        auVar6._8_8_ = in_RDX;
        auVar6._0_8_ = *(undefined8 *)(iVar2 + 0x40);
        return auVar6;
    }
    auVar1._8_8_ = 0;
    auVar1._0_8_ = in_RDX;
    return auVar1 << 0x40;
}

/* CAS-Backend/pkg/diapdu.runtimeSnapForVehicle | VA 0xe42c80 | vehicle_runtime.go:334
   DWARF parameters and results: vehicle CAS-Backend/biz/dao.Vehicle, ~r0 *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ~r1 bool
   DWARF locals: snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ok bool */
int64_t __stdcall pkg_diapdu_runtimeSnapForVehicle(int64_t arg_8h, int64_t arg_10h, int64_t arg_38h, int64_t arg_60h)
{
    char cVar1;
    int64_t iVar2;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000018;
    int64_t in_stack_000000a8;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    iVar2 = pkg_diapdu___VehicleRuntimeHub__Fresh(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, unaff_retaddr
                         , in_stack_00000018);
    if (((char)arg_8h != '\0') && (*(char *)(iVar2 + 0xe0) != '\0')) {
        return iVar2;
    }
    if (arg_38h != 0) {
        cVar1 = pkg_diapdu_ResolveCanonicalVehicleID(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, unaff_retaddr, arg_38h, 
                             in_stack_000000a8);
        iVar2 = pkg_diapdu___VehicleRuntimeHub__Fresh(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                             unaff_retaddr, in_stack_00000018);
        if ((cVar1 != '\0') && (*(char *)(iVar2 + 0xe0) != '\0')) {
            return iVar2;
        }
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.VehicleLiveStatusFromPush | VA 0xe42d40 | vehicle_runtime.go:347
   DWARF parameters and results: vehicle CAS-Backend/biz/dao.Vehicle, ~r0 *CAS-Backend/pkg/diapdu.ForkliftStatus
   DWARF locals: snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ok bool */
// WARNING: Variable defined which should be unmapped: var_98h
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall
pkg_diapdu_VehicleLiveStatusFromPush
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_30h, int64_t arg_38h,
          int64_t arg_98h)
{
    int64_t *piVar1;
    int64_t extraout_RCX;
    char extraout_BL;
    undefined extraout_BL_00;
    unkbyte7 extraout_RBX;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t *extraout_R11_02;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_b0h;
    int64_t arg_8h_00;
    int64_t var_98h;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffffb8;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_20h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe42f26;
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    arg_8h_00 = arg_8h;
    runtime_duffcopy_offset_798();
    pkg_diapdu_runtimeSnapForVehicle(arg_8h_00, var_98h, in_stack_ffffffffffffff90, in_stack_ffffffffffffffb8);
    if (extraout_BL != '\0') {
        runtime_duffcopy_offset_798();
        pkg_diapdu_statusFromRuntimeSnap();
        return;
    }
    var_18h = time_Now();
    var_20h = CONCAT71(extraout_RBX, extraout_BL_00);
    var_10h = extraout_RCX;
    piVar1 = (int64_t *)runtime_newobject(0x112d1e0);
    piVar1[1] = arg_10h;
    if (*(int32_t *)0x355db50 != 0) {
        piVar1 = (int64_t *)runtime_gcWriteBarrier1();
        *extraout_R11 = arg_8h;
    }
    *piVar1 = arg_8h;
    piVar1[3] = arg_38h;
    if (*(int32_t *)0x355db50 != 0) {
        piVar1 = (int64_t *)runtime_gcWriteBarrier1();
        *extraout_R11_00 = arg_30h;
    }
    piVar1[2] = arg_30h;
    piVar1[0x11] = arg_20h;
    if (*(int32_t *)0x355db50 != 0) {
        piVar1 = (int64_t *)runtime_gcWriteBarrier1();
        *extraout_R11_01 = arg_18h;
    }
    piVar1[0x10] = arg_18h;
    piVar1[0x12] = 0x4b04;
    piVar1[5] = 7;
    piVar1[4] = 0x1172b38;
    piVar1[0xf] = 0x18;
    piVar1[0xe] = 0x1184aa2;
    piVar1[0x13] = -1;
    piVar1[0xb] = var_18h;
    piVar1[0xc] = var_20h;
    if (*(int32_t *)0x355db50 != 0) {
        piVar1 = (int64_t *)runtime_gcWriteBarrier1();
        *extraout_R11_02 = var_10h;
    }
    piVar1[0xd] = var_10h;
    return;
}

/* CAS-Backend/pkg/diapdu.VehicleLiveStatus | VA 0xe42f40 | vehicle_runtime.go:364
   DWARF parameters and results: vehicle CAS-Backend/biz/dao.Vehicle, ~r0 *CAS-Backend/pkg/diapdu.ForkliftStatus
   DWARF locals: snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ok bool */
// WARNING: Variable defined which should be unmapped: var_80h
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall pkg_diapdu_VehicleLiveStatus(int64_t arg_8h, int64_t arg_10h, int64_t arg_98h)
{
    char extraout_BL;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_98h;
    int64_t arg_8h_00;
    int64_t var_80h;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffffa0;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_fffffffffffffff0;
    int64_t var_8h;
    
    while (&var_8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe43025;
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    arg_8h_00 = arg_8h;
    fcn.00478e3e();
    pkg_diapdu_runtimeSnapForVehicle(arg_8h_00, var_80h, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffd0);
    if (extraout_BL != '\0') {
        fcn.00478e3e();
        pkg_diapdu_statusFromRuntimeSnap(arg_8h, var_80h, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_stack_ffffffffffffffa0, 
                     in_stack_ffffffffffffffa8, in_stack_ffffffffffffffe0, in_stack_fffffffffffffff0);
        return;
    }
    fcn.00478e3e();
    pkg_diapdu_probeVehicleReachable(arg_8h, var_80h, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_stack_ffffffffffffffa0, 
                 in_stack_ffffffffffffffa8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffd8);
    return;
}

/* CAS-Backend/pkg/diapdu.statusFromRuntimeSnap | VA 0xe43040 | vehicle_runtime.go:371
   DWARF parameters and results: vehicle CAS-Backend/biz/dao.Vehicle, snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap, ~r0 *CAS-Backend/pkg/diapdu.ForkliftStatus
   DWARF locals: lock int, bat int, taskStatus string, errMsg string */
void __stdcall
pkg_diapdu_statusFromRuntimeSnap
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_30h, int64_t arg_38h,
          int64_t arg_70h, int64_t arg_80h)
{
    char cVar1;
    int64_t iVar2;
    int64_t in_RAX;
    int64_t *piVar3;
    int64_t *extraout_RAX;
    int64_t *extraout_RAX_00;
    int64_t *extraout_RAX_01;
    int64_t *extraout_RAX_02;
    undefined8 uVar4;
    int64_t iVar5;
    int64_t iVar6;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    int64_t extraout_RCX_02;
    undefined8 uVar7;
    int64_t iVar8;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    int64_t extraout_RBX_02;
    int64_t iVar9;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar10 [16];
    int64_t unaff_retaddr;
    int64_t var_50h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0xfffffffffffffff8 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
    }
    if (((*(char *)(in_RAX + 0xd0) == '\0') && (*(char *)(in_RAX + 0xd1) == '\0')) && (*(char *)(in_RAX + 0xd2) == '\0')
       ) {
        if (*(char *)(in_RAX + 0xb8) == '\0') {
            if (*(char *)(in_RAX + 0xe0) == '\0') {
                iVar5 = 4;
                iVar8 = 0x1169564;
                auVar10 = ZEXT816(0);
            } else if (*(int64_t *)(in_RAX + 0xd8) == 0) {
                iVar5 = 4;
                iVar8 = 0x1169564;
                auVar10 = ZEXT816(0);
            } else {
                var_10h = runtime_convT64(*(undefined8 *)(in_RAX + 0xd8));
                var_18h = 0x1042b60;
                auVar10 = fmt_Sprintf(0x1190a7b /* "控制权被占用(current_lock=%d)" */, 0x23, &var_18h, 1, 1);
                iVar5 = 6;
                iVar8 = 0x116f2cd;
            }
        } else {
            iVar5 = 5;
            iVar8 = 0x116a5c1;
            auVar10._8_8_ = 0x1d;
            auVar10._0_8_ = 0x118a3f4;
        }
    } else {
        if (*(char *)(in_RAX + 0xd0) == '\0') {
            if (*(char *)(in_RAX + 0xd1) == '\0') {
                if (*(char *)(in_RAX + 0xd2) == '\0') {
                    uVar4 = 0;
                    uVar7 = 0;
                } else {
                    uVar4 = 0xf;
                    uVar7 = 0x117a777;
                }
            } else {
                uVar4 = 0xd;
                uVar7 = 0x1178d05;
            }
        } else {
            uVar4 = 0xe;
            uVar7 = 0x11799e1;
        }
        auVar10 = runtime_concatstring3(0, 0x1178d12, 0xd, uVar7, uVar4, 0x2e64cc8, 1);
        iVar8 = 0x116a5c1;
        iVar5 = 5;
    }
    iVar6 = *(int64_t *)(in_RAX + 0x38);
    iVar2 = *(int64_t *)(in_RAX + 0xd8);
    cVar1 = *(char *)(in_RAX + 0xe0);
    piVar3 = (int64_t *)runtime_newobject(0x112d1e0);
    piVar3[1] = arg_10h;
    if (iVar6 < 1) {
        iVar6 = 100;
    }
    iVar9 = -1;
    if (cVar1 != '\0') {
        iVar9 = iVar2;
    }
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier1();
        *extraout_R11 = arg_8h;
        piVar3 = extraout_RAX;
        iVar6 = extraout_RCX;
        iVar9 = extraout_RBX;
    }
    *piVar3 = arg_8h;
    piVar3[3] = arg_38h;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier1();
        *extraout_R11_00 = extraout_RSI;
        piVar3 = extraout_RAX_00;
        iVar6 = extraout_RCX_00;
        iVar9 = extraout_RBX_00;
        arg_30h = extraout_RSI;
    }
    piVar3[2] = arg_30h;
    piVar3[0x11] = arg_20h;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11_01 = extraout_RSI_00;
        extraout_R11_01[1] = iVar8;
        piVar3 = extraout_RAX_01;
        iVar6 = extraout_RCX_01;
        iVar9 = extraout_RBX_01;
        arg_18h = extraout_RSI_00;
    }
    piVar3[0x10] = arg_18h;
    piVar3[0x12] = 0x4b04;
    piVar3[5] = iVar5;
    piVar3[4] = iVar8;
    piVar3[6] = iVar6;
    piVar3[7] = *(int64_t *)(in_RAX + 0x20);
    piVar3[8] = *(int64_t *)(in_RAX + 0x28);
    iVar5 = *(int64_t *)(in_RAX + 0xf0);
    iVar8 = *(int64_t *)(in_RAX + 0xf8);
    piVar3[0xb] = *(int64_t *)(in_RAX + 0xe8);
    piVar3[0xc] = iVar5;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11_02 = extraout_RCX_02;
        extraout_R11_02[1] = auVar10._0_8_;
        piVar3 = extraout_RAX_02;
        iVar8 = extraout_RCX_02;
        iVar9 = extraout_RBX_02;
    }
    piVar3[0xd] = iVar8;
    *(undefined (*) [16])(piVar3 + 0xe) = auVar10;
    piVar3[0x13] = iVar9;
    return;
}

/* CAS-Backend/pkg/diapdu.ensureVehicleInSchedulerPool | VA 0xe43380 | vehicle_runtime.go:412
   DWARF parameters and results: canonicalID string, snap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap
   DWARF locals: up *CAS-Backend/pkg/diapdu.ForkliftUpdater, sched *CAS-Backend/pkg/diapdu.TaskScheduler, veh *CAS-Backend/biz/dao.Vehicle, st *CAS-Backend/pkg/diapdu.ForkliftStatus, fl *CAS-Backend/pkg/diapdu.Forklift, vehicles []CAS-Backend/biz/dao.Vehicle, err error, station string, i int, existing *CAS-Backend/pkg/diapdu.Forklift, ok bool */
// WARNING: Variable defined which should be unmapped: var_198h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_11ah
// WARNING: [rz-ghidra] Detected overlap for variable var_118h

void __stdcall
pkg_diapdu_ensureVehicleInSchedulerPool
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_90h, int64_t arg_b0h,
          int64_t arg_d0h)
{
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 uVar3;
    int32_t iVar4;
    char cVar5;
    int64_t in_RAX;
    uint64_t uVar6;
    int64_t iVar7;
    int64_t *piVar8;
    char *pcVar9;
    undefined *puVar10;
    int64_t iVar11;
    int64_t extraout_RCX;
    char extraout_BL;
    int64_t unaff_RBX;
    int64_t extraout_RDI;
    int64_t iVar12;
    int32_t iVar13;
    undefined8 *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t unaff_R14;
    bool bVar14;
    undefined auVar15 [16];
    undefined auVar16 [16];
    int64_t unaff_retaddr;
    int64_t var_1b0h;
    int64_t var_198h;
    int64_t in_stack_fffffffffffffe70;
    int64_t in_stack_fffffffffffffe78;
    int64_t in_stack_fffffffffffffe88;
    int64_t in_stack_fffffffffffffe90;
    int64_t in_stack_fffffffffffffec8;
    int64_t in_stack_fffffffffffffed8;
    undefined auStack_120 [6];
    char var_11ah;
    int64_t var_119h;
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
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_120 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe43aae;
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    var_119h._0_1_ = 0;
    if ((arg4 == 0) || (unaff_RBX == 0)) {
        return;
    }
    uVar6 = 0;
    LOCK();
    bVar14 = *(uint32_t *)0x355d3c0 == 0;
    if (bVar14) {
        *(uint32_t *)0x355d3c0 = 1;
    } else {
        uVar6 = (uint64_t)*(uint32_t *)0x355d3c0;
    }
    UNLOCK();
    if (!bVar14) {
        uVar6 = sync___Mutex__lockSlow(0x355d3c0);
    }
    var_f0h = *(int64_t *)0x3512050;
    LOCK();
    iVar4 = *(uint32_t *)0x355d3c0 - 1;
    UNLOCK();
    iVar13 = *(uint32_t *)0x355d3c0 - 1;
    cVar5 = *(char *)0x355d2a8;
    *(int32_t *)0x355d3c0 = iVar4;
    if (iVar13 != 0) {
        var_11ah = *(char *)0x355d2a8;
        uVar6 = sync___Mutex__unlockSlow(0x355d3c0, iVar13, arg4, 1);
        cVar5 = var_11ah;
    }
    if ((cVar5 == '\0') || (var_f0h == 0)) {
        return;
    }
    auVar15 = biz_dao_GetAllVehicles(uVar6);
    if (extraout_RDI != 0) {
        return;
    }
    iVar11 = 0;
    auVar16 = auVar15;
    while( true ) {
        stack0xfffffffffffffee8 = auVar16._8_8_;
        var_100h = auVar16._0_8_;
        iVar7 = auVar15._0_8_;
        if (auVar15._8_8_ <= iVar11) break;
        iVar12 = iVar11 * 0x78;
        iVar2 = *(int64_t *)(iVar7 + 8 + iVar12);
        if (unaff_RBX == iVar2) {
            var_108h = iVar11;
            var_c0h = iVar7 + iVar12;
            cVar5 = runtime_memequal(*(undefined8 *)(iVar7 + iVar12), in_RAX, iVar2);
            auVar15._8_8_ = stack0xfffffffffffffee8;
            auVar15._0_8_ = var_100h;
            var_f8h = var_c0h;
            iVar11 = var_108h;
            auVar16 = auVar15;
            if (cVar5 != '\0') goto code_r0x00e43584;
        }
        iVar11 = iVar11 + 1;
    }
    var_f8h = (int64_t)(int64_t *)0x0;
    auVar15 = auVar16;
code_r0x00e43584:
    stack0xfffffffffffffee8 = auVar15._8_8_;
    var_100h = auVar15._0_8_;
    if ((int64_t *)var_f8h == (int64_t *)0x0) {
        return;
    }
    var_88h = *(int64_t *)var_f8h;
    fcn.00478e3e();
    iVar11 = var_88h;
    fcn.00478e3e();
    var_e0h = pkg_diapdu_statusFromRuntimeSnap
                        (iVar11, var_198h, in_stack_fffffffffffffe70, in_stack_fffffffffffffe78, 
                         in_stack_fffffffffffffe88, in_stack_fffffffffffffe90, in_stack_fffffffffffffec8, 
                         in_stack_fffffffffffffed8);
    var_c8h = var_f0h + 0x18;
    sync___RWMutex__Lock(var_c8h);
    var_98h = 0xe43ae0;
    var_90h = var_c8h;
    var_10h = (int64_t)&var_98h;
    var_119h._0_1_ = 1;
    if ((*(int64_t *)(var_e0h + 0x78) == 0) && (*(int64_t *)(var_e0h + 0x98) == 0)) {
        var_d0h = pkg_diapdu___ForkliftUpdater__convertToForklift(var_f0h);
        piVar8 = (int64_t *)runtime_mapaccess2_faststr(0x107d640, *(undefined8 *)(var_f0h + 0x30), in_RAX, unaff_RBX);
        if (extraout_BL == '\0') {
            piVar8 = (int64_t *)runtime_mapassign_faststr(0x107d640, *(undefined8 *)(var_f0h + 0x30), in_RAX, unaff_RBX);
            if (*(int32_t *)0x355db50 != 0) {
                piVar8 = (int64_t *)runtime_gcWriteBarrier2();
                *extraout_R11_00 = var_d0h;
                extraout_R11_00[1] = *piVar8;
            }
            *piVar8 = var_d0h;
            pcVar9 = (char *)runtime_mapaccess1_faststr(0x107d940, *(undefined8 *)(var_f0h + 0x38), in_RAX, unaff_RBX);
            if (*pcVar9 != '\x01') {
                var_b0h = runtime_convTstring(*(undefined8 *)(var_f8h + 0x28), *(undefined8 *)(var_f8h + 0x30));
                var_b8h = 0x1042920;
                var_a0h = runtime_convTstring(in_RAX, unaff_RBX);
                var_a8h = 0x1042920;
                fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a2e7b /* "[自动调度] 车辆可调度(数据中心推送): %s (%s)\n" */, 0x3c, &var_b8h, 2, 2);
                puVar10 = (undefined *)runtime_mapassign_faststr(0x107d940, *(undefined8 *)(var_f0h + 0x38), in_RAX, unaff_RBX);
                *puVar10 = 1;
            }
        } else {
            iVar11 = *piVar8;
            uVar1 = *(undefined8 *)(var_d0h + 0x30);
            *(undefined8 *)(iVar11 + 0x28) = *(undefined8 *)(var_d0h + 0x28);
            *(undefined8 *)(iVar11 + 0x30) = uVar1;
            *(undefined8 *)(iVar11 + 0x58) = *(undefined8 *)(var_d0h + 0x58);
            uVar1 = *(undefined8 *)(var_d0h + 0x68);
            uVar3 = *(undefined8 *)(var_d0h + 0x70);
            *(undefined8 *)(iVar11 + 0x60) = *(undefined8 *)(var_d0h + 0x60);
            *(undefined8 *)(iVar11 + 0x68) = uVar1;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11 = uVar3;
                extraout_R11[1] = *(undefined8 *)(extraout_RCX + 0x70);
                iVar11 = extraout_RCX;
            }
            *(undefined8 *)(iVar11 + 0x70) = uVar3;
            if ((((*(char *)(arg4 + 0xd0) != '\0') || (*(char *)(arg4 + 0xd1) != '\0')) ||
                (*(char *)(arg4 + 0xd2) != '\0')) || (*(char *)(arg4 + 0xb8) != '\0')) {
                *(undefined8 *)(iVar11 + 0x20) = 3;
            }
        }
        auVar16 = strings_TrimSpace(*(undefined8 *)(arg4 + 0x40), *(undefined8 *)(arg4 + 0x48));
        if ((auVar16._8_8_ == 0) &&
           (((*(int64_t *)(arg4 + 0xa8) != 0 || (*(int64_t *)(arg4 + 0x98) != 0)) ||
            ((*(int64_t *)(arg4 + 0x88) != 0 || (*(int64_t *)(arg4 + 0x58) != 0)))))) {
            if (*(int64_t *)(arg4 + 0x58) == 0) {
                if (*(int64_t *)(arg4 + 0x98) == 0) {
                    auVar16 = *(undefined (*) [16])(arg4 + 0x80);
                } else {
                    auVar16._8_8_ = *(int64_t *)(arg4 + 0x98);
                    auVar16._0_8_ = *(undefined8 *)(arg4 + 0x90);
                }
            } else {
                auVar16._8_8_ = *(int64_t *)(arg4 + 0x58);
                auVar16._0_8_ = *(undefined8 *)(arg4 + 0x50);
            }
        }
        var_110h = auVar16._8_8_;
        var_e8h = auVar16._0_8_;
        LOCK();
        bVar14 = *(int32_t *)0x355d3c0 == 0;
        if (bVar14) {
            *(int32_t *)0x355d3c0 = 1;
        }
        UNLOCK();
        if (!bVar14) {
            sync___Mutex__lockSlow(0x355d3c0);
            auVar16._8_8_ = var_110h;
            auVar16._0_8_ = var_e8h;
        }
        var_110h = auVar16._8_8_;
        var_e8h = auVar16._0_8_;
        LOCK();
        iVar4 = *(int32_t *)0x355d3c0 + -1;
        UNLOCK();
        bVar14 = *(int32_t *)0x355d3c0 != 1;
        iVar11 = *(int64_t *)0x3512058;
        *(int32_t *)0x355d3c0 = iVar4;
        if (bVar14) {
            var_d8h = *(int64_t *)0x3512058;
            sync___Mutex__unlockSlow(0x355d3c0);
            auVar16._8_8_ = var_110h;
            auVar16._0_8_ = var_e8h;
            iVar11 = var_d8h;
        }
        var_110h = auVar16._8_8_;
        var_e8h = auVar16._0_8_;
        if ((iVar11 != 0) && (var_110h != 0)) {
            pkg_diapdu___TaskScheduler__syncVehicleDockFromRuntime(iVar11, in_RAX, unaff_RBX, var_e8h, var_110h);
            auVar16._8_8_ = var_110h;
            auVar16._0_8_ = var_e8h;
        }
        var_110h = auVar16._8_8_;
        var_e8h = auVar16._0_8_;
        var_119h._0_1_ = 0;
        (**(code **)var_10h)();
        return;
    }
    runtime_mapdelete_faststr(0x107d640, *(undefined8 *)(var_f0h + 0x30), in_RAX, unaff_RBX);
    runtime_mapdelete_faststr(0x107d940, *(undefined8 *)(var_f0h + 0x38), in_RAX, unaff_RBX);
    var_119h._0_1_ = 0;
    (**(code **)var_10h)();
    return;
}

/* CAS-Backend/pkg/diapdu.ensureVehicleInSchedulerPool.deferwrap1 | VA 0xe43ae0 | vehicle_runtime.go:439
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

void __stdcall
pkg_diapdu_ensureVehicleInSchedulerPool_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_10h;
    }
    sync___RWMutex__Unlock(var_10h);
    return;
}
