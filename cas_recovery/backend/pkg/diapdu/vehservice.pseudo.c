/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).Start | VA 0xe43b40 | vehservice.go:50
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater
   DWARF locals: (no entries) */
void __stdcall pkg_diapdu___ForkliftUpdater__Start(int64_t arg_8h, int64_t arg_28h)
{
    undefined8 in_RAX;
    undefined8 *puVar1;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    puVar1 = (undefined8 *)runtime_newobject(0x10b1240);
    *puVar1 = 0xe43bc0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11 = in_RAX;
    }
    puVar1[1] = in_RAX;
    runtime_newproc();
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).Start.gowrap1 | VA 0xe43bc0 | vehservice.go:51
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_50h

void __stdcall
pkg_diapdu___ForkliftUpdater__Start_gowrap1
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
    pkg_diapdu___ForkliftUpdater__updateLoop(var_10h);
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateLoop | VA 0xe43c20 | vehservice.go:58
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater
   DWARF locals: ticker *time.Ticker */
// WARNING: Variable defined which should be unmapped: var_51h
// WARNING: Variable defined which should be unmapped: var_40h
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_50h
// WARNING: [rz-ghidra] Removing arg arg_3bh because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_edh
// WARNING: [rz-ghidra] Detected overlap for variable var_ebh
// WARNING: [rz-ghidra] Detected overlap for variable var_ech
// WARNING: [rz-ghidra] Detected overlap for variable var_eah
// WARNING: [rz-ghidra] Detected overlap for variable var_d0h

void __stdcall pkg_diapdu___ForkliftUpdater__updateLoop(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t iVar1;
    int64_t unaff_R14;
    int64_t in_stack_00000090;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t var_51h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_30h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0xfffffffffffffff8 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_51h._0_1_ = 0;
    var_48h = time_NewTicker(in_stack_ffffffffffffff78, stack0xffffffffffffffb0);
    var_20h = 0xe43d20;
    var_10h = (int64_t)&var_20h;
    var_51h._0_1_ = 1;
    var_18h = var_48h;
    while( true ) {
        var_30h = *(int64_t *)(in_RAX + 0x10);
        var_40h = *(int64_t *)var_48h;
        iVar1 = runtime_selectgo(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                             in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0);
        if (iVar1 != 0) break;
        pkg_diapdu___ForkliftUpdater__updateForkliftStatus(in_stack_ffffffffffffff78, var_40h, var_10h, in_stack_00000090);
    }
    var_51h._0_1_ = 0;
    (**(code **)var_10h)(*(code **)var_10h, (int64_t)&var_51h + 1);
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateLoop.deferwrap1 | VA 0xe43d20 | vehservice.go:60
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h

void __stdcall
pkg_diapdu___ForkliftUpdater__updateLoop_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_10h;
    }
    if (*(char *)(*(int64_t *)(arg3 + 8) + 8) != '\0') {
        time_stopTimer(var_10h);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift | VA 0xe43d80 | vehservice.go:72
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater, id string, ~r0 *CAS-Backend/pkg/diapdu.Forklift, ~r0 *CAS-Backend/pkg/diapdu.Forklift, ~r1 bool, ~r1 bool
   DWARF locals: exists bool, forklift *CAS-Backend/pkg/diapdu.Forklift */
// WARNING: Variable defined which should be unmapped: var_29h
// WARNING: Variable defined which should be unmapped: var_20h
// WARNING: [rz-ghidra] Detected overlap for variable var_28h
// WARNING: [rz-ghidra] Detected overlap for variable var_2ah
// WARNING: [rz-ghidra] Detected overlap for variable arg_27h
// WARNING: [rz-ghidra] Detected overlap for variable var_40h

undefined8 __stdcall
pkg_diapdu___ForkliftUpdater__GetForklift
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_60h)
{
    int32_t *piVar1;
    int32_t iVar2;
    undefined8 uVar3;
    int64_t in_RAX;
    undefined8 *puVar4;
    int64_t unaff_RBP;
    int64_t unaff_R14;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    unkuint6 Stack_30;
    int64_t var_29h;
    int64_t in_stack_00000030;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
        arg_18h = arg4;
    }
    LOCK();
    piVar1 = (int32_t *)(in_RAX + 0x28);
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    if ((int32_t)(iVar2 + 1) < 0) {
        sync_runtime_SemacquireRWMutexR(in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0);
        arg_18h = arg4;
    }
    var_20h = 0xe43ea0;
    var_18h = in_RAX + 0x18;
    var_10h = (int64_t)&var_20h;
    puVar4 = (undefined8 *)
             runtime_mapaccess2_faststr(in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, 
                          in_stack_ffffffffffffffc8, CONCAT17(1, (unkuint7)Stack_30), 0xe43ea0, unaff_RBP, arg_18h, 
                          in_stack_00000030);
    uVar3 = *puVar4;
    (**(code **)var_10h)();
    return uVar3;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetForklift.deferwrap1 | VA 0xe43ea0 | vehservice.go:74
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___ForkliftUpdater__GetForklift_deferwrap1
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

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForklifts | VA 0xe43f00 | vehservice.go:80
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater, ~r0 []*CAS-Backend/pkg/diapdu.Forklift, ~r0 []*CAS-Backend/pkg/diapdu.Forklift
   DWARF locals: forklifts []*CAS-Backend/pkg/diapdu.Forklift, f *CAS-Backend/pkg/diapdu.Forklift */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_c0h

int64_t __stdcall pkg_diapdu___ForkliftUpdater__GetAllForklifts(int64_t arg_8h, int64_t arg_a8h)
{
    int32_t *piVar1;
    int32_t iVar2;
    int64_t in_RAX;
    uint64_t uVar3;
    int64_t extraout_RAX;
    undefined8 extraout_RCX;
    int64_t iVar4;
    uint64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    uint64_t uVar5;
    int64_t iVar6;
    undefined8 extraout_RBX;
    uint64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    int64_t var_118h;
    int64_t var_c1h;
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
    int64_t *piStack_68;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_88h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe4411c;
        runtime_morestack_noctxt_abi0();
    }
    LOCK();
    piVar1 = (int32_t *)(in_RAX + 0x28);
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    if ((int32_t)(iVar2 + 1) < 0) {
        sync_runtime_SemacquireRWMutexR(in_RAX + 0x24, 0, 0);
    }
    var_80h = 0xe44140;
    var_78h = in_RAX + 0x18;
    var_10h = (int64_t)&var_80h;
    if (*(uint64_t **)(in_RAX + 0x30) == (uint64_t *)0x0) {
        uVar3 = 0;
    } else {
        uVar3 = **(uint64_t **)(in_RAX + 0x30);
    }
    var_88h = runtime_makeslice(0x1023fa0, 0, uVar3);
    runtime_duffzero_offset_331(var_88h, *(undefined8 *)(in_RAX + 0x30), extraout_RCX, &var_90h);
    runtime_mapiterinit(0x107d640, extraout_RBX, &var_70h);
    uVar5 = 0;
    iVar4 = var_88h;
    while (var_70h != 0) {
        uVar5 = uVar5 + 1;
        iVar6 = *piStack_68;
        if (uVar3 < uVar5) {
            var_90h = *piStack_68;
            runtime_growslice(iVar4, uVar5, uVar3, 1, 0x1023fa0);
            uVar3 = extraout_RCX_00;
            iVar4 = extraout_RAX;
            iVar6 = var_90h;
            uVar5 = extraout_RBX_00;
        }
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11 = iVar6;
            extraout_R11[1] = *(int64_t *)(extraout_RCX_01 + -8 + extraout_RBX_01 * 8);
            iVar4 = extraout_RCX_01;
            uVar5 = extraout_RBX_01;
        }
        *(int64_t *)(iVar4 + -8 + uVar5 * 8) = iVar6;
        runtime_mapiternext(&var_70h);
    }
    (**(code **)var_10h)();
    return iVar4;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForklifts.deferwrap1 | VA 0xe44140 | vehservice.go:82
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___ForkliftUpdater__GetAllForklifts_deferwrap1
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

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus | VA 0xe441a0 | vehservice.go:96
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater, ~r0 []*CAS-Backend/pkg/diapdu.ForkliftStatus, ~r1 error
   DWARF locals: &wg *sync.WaitGroup, statusChan chan *CAS-Backend/pkg/diapdu.ForkliftStatus, allForklifts []*CAS-Backend/pkg/diapdu.ForkliftStatus, vehicles []CAS-Backend/biz/dao.Vehicle, err error, vehicle CAS-Backend/biz/dao.Vehicle, status *CAS-Backend/pkg/diapdu.ForkliftStatus */
// WARNING: Variable defined which should be unmapped: var_8h

int64_t __stdcall pkg_diapdu___ForkliftUpdater__GetAllForkliftsStatus(int64_t arg_8h, int64_t arg_50h, int64_t arg_68h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 *puVar2;
    uint64_t uVar3;
    int64_t iVar4;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t *piVar5;
    uint64_t extraout_RCX;
    uint64_t extraout_RCX_00;
    int64_t iVar6;
    undefined8 extraout_RBX;
    uint64_t uVar7;
    uint64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    int64_t extraout_RSI;
    int64_t extraout_RDI;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar8 [16];
    undefined auVar9 [16];
    int64_t var_1c0h;
    int64_t var_170h;
    int64_t var_168h;
    int64_t var_160h;
    int64_t var_158h;
    int64_t var_150h;
    int64_t var_148h;
    int64_t var_140h;
    undefined auStack_130 [96];
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
    
    while (auStack_130 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe44585;
        runtime_morestack_noctxt_abi0();
    }
    auVar8 = biz_dao_GetAllVehicles();
    if (extraout_RDI == 0) {
        var_10h = runtime_newobject(0x10d68c0);
        auVar9 = runtime_makechan(0x1044ca0, auVar8._8_8_);
        while( true ) {
            var_d0h = auVar9._0_8_;
            piVar5 = auVar8._0_8_;
            if (auVar8._8_8_ < 1) break;
            iVar4 = *piVar5;
            var_a8h = (int64_t)piVar5;
            runtime_duffcopy_offset_798(var_d0h, auVar9._8_8_, piVar5, &var_140h, piVar5 + 1);
            sync___WaitGroup__Add(var_10h, 1);
            puVar2 = (undefined8 *)runtime_newobject(0x10e4800);
            *puVar2 = 0xe44660;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier3();
                *extraout_R11 = var_10h;
                extraout_R11[1] = in_RAX;
                extraout_R11[2] = var_d0h;
            }
            puVar2[1] = var_10h;
            puVar2[2] = in_RAX;
            puVar2[3] = var_d0h;
            var_b0h = (int64_t)puVar2;
            var_88h = iVar4;
            runtime_duffcopy_offset_798();
            puVar2 = (undefined8 *)runtime_newobject(0x10cdf60);
            *puVar2 = 0xe445e0;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_00 = var_b0h;
            }
            puVar2[1] = var_b0h;
            if (*(int32_t *)0x355db50 != 0) {
                var_b8h = (int64_t)puVar2;
                runtime_wbMove(0x1121680, puVar2 + 2, &var_88h);
                puVar2 = (undefined8 *)var_b8h;
            }
            puVar2[2] = var_88h;
            runtime_duffcopy_offset_798();
            runtime_newproc();
            auVar9._8_8_ = extraout_RBX;
            auVar9._0_8_ = var_d0h;
            auVar8._8_8_ = auVar8._8_8_ + -1;
            auVar8._0_8_ = var_a8h + 0x78;
        }
        puVar2 = (undefined8 *)runtime_newobject(0x10ce0a0);
        *puVar2 = 0xe445a0;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_01 = var_10h;
            extraout_R11_01[1] = var_d0h;
        }
        puVar2[1] = var_10h;
        puVar2[2] = var_d0h;
        runtime_newproc();
        var_a0h = 0;
        uVar3 = 0;
        iVar4 = 0;
        uVar7 = 0;
        while (var_c0h = iVar4, cVar1 = runtime_chanrecv2(var_d0h, &var_a0h), iVar6 = var_a0h, cVar1 != '\0') {
            uVar7 = uVar7 + 1;
            var_a0h = 0;
            iVar4 = var_c0h;
            if (uVar3 < uVar7) {
                var_c8h = iVar6;
                runtime_growslice(var_c0h, uVar7, uVar3, 1, 0x1023fe0);
                iVar4 = extraout_RAX;
                uVar3 = extraout_RCX;
                iVar6 = var_c8h;
                uVar7 = extraout_RBX_00;
            }
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11_02 = iVar6;
                extraout_R11_02[1] = *(int64_t *)(extraout_RAX_00 + -8 + extraout_RBX_01 * 8);
                iVar4 = extraout_RAX_00;
                uVar3 = extraout_RCX_00;
                uVar7 = extraout_RBX_01;
            }
            *(int64_t *)(iVar4 + -8 + uVar7 * 8) = iVar6;
        }
        return var_c0h;
    }
    var_98h = *(int64_t *)(extraout_RDI + 8);
    var_90h = extraout_RSI;
    fmt_Errorf(0x1195bbe /* "从数据库获取车辆信息失败: %v" */, 0x28, &var_98h, 1, 1);
    return 0;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.gowrap1 | VA 0xe445e0 | vehservice.go:111
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall
pkg_diapdu___ForkliftUpdater__GetAllForkliftsStatus_gowrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t extraout_RDX;
    code *extraout_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_90h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_8h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe44645;
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_80h;
    }
    var_80h = *(int64_t *)(arg3 + 0x10);
    fcn.00478e3e(*(undefined8 **)(arg3 + 8), **(undefined8 **)(arg3 + 8), var_80h, &var_78h, arg3 + 0x18);
    (*extraout_RBX)();
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func1 | VA 0xe44660 | vehservice.go:111
   DWARF parameters and results: v CAS-Backend/biz/dao.Vehicle
   DWARF locals: &wg *sync.WaitGroup, u *CAS-Backend/pkg/diapdu.ForkliftUpdater, statusChan chan *CAS-Backend/pkg/diapdu.ForkliftStatus, status *CAS-Backend/pkg/diapdu.ForkliftStatus */
// WARNING: Variable defined which should be unmapped: var_b0h
// WARNING: Variable defined which should be unmapped: var_31h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_30h

void __stdcall
pkg_diapdu___ForkliftUpdater__GetAllForkliftsStatus_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_c8h;
    int64_t var_b0h;
    int64_t in_stack_ffffffffffffffc0;
    undefined auStack_38 [7];
    int64_t var_31h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_38 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe44756;
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    var_20h = *(int64_t *)(arg3 + 8);
    unique0x00023e00 = *(int64_t *)(arg3 + 0x18);
    var_28h = 0xe44760;
    var_10h = (int64_t)&var_28h;
    var_31h._0_1_ = 1;
    fcn.00478e3e(*(undefined8 *)(arg3 + 0x10), 0xe44760, arg_8h, &var_b0h, &arg_10h);
    var_18h = pkg_diapdu___ForkliftUpdater__getSingleForkliftStatus(arg_8h, var_b0h, in_stack_ffffffffffffffc0, stack0xffffffffffffffd0);
    runtime_chansend1(stack0xffffffffffffffd0, &var_18h);
    var_31h._0_1_ = 0;
    (**(code **)var_10h)();
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func1.deferwrap1 | VA 0xe44760 | vehservice.go:112
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___ForkliftUpdater__GetAllForkliftsStatus_func1_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_18h;
    }
    sync___WaitGroup__Add(var_18h, in_stack_fffffffffffffff0);
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).GetAllForkliftsStatus.func2 | VA 0xe445a0 | vehservice.go:119
   DWARF parameters and results: (no entries)
   DWARF locals: &wg *sync.WaitGroup, statusChan chan *CAS-Backend/pkg/diapdu.ForkliftStatus */
void __stdcall
pkg_diapdu___ForkliftUpdater__GetAllForkliftsStatus_func2
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3)
{
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t in_stack_ffffffffffffffe8;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_stack_00000008);
    }
    sync___WaitGroup__Wait(in_stack_ffffffffffffffe8);
    runtime_closechan(in_stack_ffffffffffffffe8);
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).getSingleForkliftStatus | VA 0xe447c0 | vehservice.go:133
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater, vehicle CAS-Backend/biz/dao.Vehicle, ~r0 *CAS-Backend/pkg/diapdu.ForkliftStatus
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_78h
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall
pkg_diapdu___ForkliftUpdater__getSingleForkliftStatus(int64_t arg_8h, int64_t arg_10h, int64_t arg_80h, int64_t arg_90h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t var_90h;
    int64_t var_78h;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t var_8h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (*(char *)(in_RAX + 8) != '\0') {
        fcn.00478e3e();
        pkg_diapdu_VehicleLiveStatusFromPush(arg_8h, var_78h, in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffa8, 
                     in_stack_ffffffffffffffb0, arg_10h);
        return;
    }
    fcn.00478e3e();
    pkg_diapdu_VehicleLiveStatus(arg_8h, var_78h, arg_10h);
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).OnlineCount | VA 0xe44880 | vehservice.go:146
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater, ~r0 int, ~r0 int
   DWARF locals: (no entries) */
// WARNING: Restarted to delay deadcode elimination for space: stack
// WARNING: [rz-ghidra] Detected overlap for variable var_28h

undefined8 __stdcall pkg_diapdu___ForkliftUpdater__OnlineCount(int64_t arg_8h)
{
    int32_t *piVar1;
    int32_t iVar2;
    int64_t in_RAX;
    undefined8 uVar3;
    int64_t unaff_R14;
    int64_t var_29h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    LOCK();
    piVar1 = (int32_t *)(in_RAX + 0x28);
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    if ((int32_t)(iVar2 + 1) < 0) {
        sync_runtime_SemacquireRWMutexR(in_RAX + 0x24, 0, 0);
    }
    var_20h = 0xe44960;
    var_18h = in_RAX + 0x18;
    var_10h = (int64_t)&var_20h;
    if (*(undefined8 **)(in_RAX + 0x30) == (undefined8 *)0x0) {
        uVar3 = 0;
    } else {
        uVar3 = **(undefined8 **)(in_RAX + 0x30);
    }
    (*(code *)0xe44960)();
    return uVar3;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).OnlineCount.deferwrap1 | VA 0xe44960 | vehservice.go:148
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___ForkliftUpdater__OnlineCount_deferwrap1
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

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateForkliftStatus | VA 0xe449c0 | vehservice.go:187
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater
   DWARF locals: newMap map[string]*CAS-Backend/pkg/diapdu.Forklift, online int, forkliftsStatus []*CAS-Backend/pkg/diapdu.ForkliftStatus, err error, forkliftStatus *CAS-Backend/pkg/diapdu.ForkliftStatus, forklift *CAS-Backend/pkg/diapdu.Forklift, old *CAS-Backend/pkg/diapdu.Forklift, ok bool */
// WARNING: Variable defined which should be unmapped: var_c8h
// WARNING: Variable defined which should be unmapped: var_b0h
// WARNING: [rz-ghidra] Detected overlap for variable var_d0h

void __stdcall
pkg_diapdu___ForkliftUpdater__updateForkliftStatus(int64_t arg_8h, int64_t arg_50h, int64_t arg_80h, int64_t arg_120h)
{
    undefined8 *puVar1;
    int32_t *piVar2;
    int64_t iVar3;
    int64_t in_RAX;
    int64_t iVar4;
    undefined8 uVar5;
    undefined8 *puVar6;
    int64_t *piVar7;
    undefined8 *puVar8;
    char *pcVar9;
    undefined *puVar10;
    int64_t iVar11;
    int64_t iVar12;
    char extraout_BL;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t in_RSI;
    int64_t extraout_RSI;
    int64_t in_RDI;
    int64_t extraout_RDI;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    int64_t in_stack_fffffffffffffef0;
    int64_t var_d1h;
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
    
    while (&var_90h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
        unaff_RBX = extraout_RBX;
        in_RSI = extraout_RSI;
        in_RDI = extraout_RDI;
    }
    iVar4 = pkg_diapdu___ForkliftUpdater__GetAllForkliftsStatus(in_stack_fffffffffffffef0, var_c8h, var_b0h);
    if (in_RDI == 0) {
        var_18h = in_RAX + 0x18;
        sync___RWMutex__Lock(var_18h);
        var_38h = 0xe44ec0;
        var_30h = var_18h;
        var_10h = (int64_t)&var_38h;
        uVar5 = runtime_makemap(0x107d640, unaff_RBX, 0);
        iVar12 = 0;
        for (iVar11 = 0; iVar11 < unaff_RBX; iVar11 = iVar11 + 1) {
            puVar1 = *(undefined8 **)(iVar4 + iVar11 * 8);
            if (((((puVar1[5] == 7) && (piVar2 = (int32_t *)puVar1[4], *piVar2 == 0x6c66666f)) &&
                 ((int16_t)piVar2[1] == 0x6e69)) && (*(char *)((int64_t)piVar2 + 6) == 'e')) || (puVar1[0xf] != 0)) {
                runtime_mapdelete_faststr(0x107d940, *(undefined8 *)(in_RAX + 0x38), *puVar1, puVar1[1]);
            } else if (puVar1[0x13] == 0) {
                puVar6 = (undefined8 *)pkg_diapdu___ForkliftUpdater__convertToForklift(in_RAX);
                piVar7 = (int64_t *)runtime_mapaccess2_faststr(0x107d640, *(undefined8 *)(in_RAX + 0x30), *puVar6, puVar6[1]);
                if ((extraout_BL != '\0') && (iVar3 = *piVar7, *(int64_t *)(iVar3 + 0x50) != 0)) {
                    puVar6[4] = 1;
                    puVar6[10] = *(undefined8 *)(iVar3 + 0x50);
                }
                if (((int64_t)puVar6[0xb] < 0x14) && (puVar6[4] != 3)) {
                    puVar6[4] = 2;
                }
                puVar8 = (undefined8 *)runtime_mapassign_faststr(0x107d640, uVar5, *puVar6, puVar6[1]);
                if (*(int32_t *)0x355db50 != 0) {
                    puVar8 = (undefined8 *)runtime_gcWriteBarrier2();
                    *extraout_R11 = puVar6;
                    extraout_R11[1] = *puVar8;
                }
                *puVar8 = puVar6;
                pcVar9 = (char *)runtime_mapaccess1_faststr(0x107d940, *(undefined8 *)(in_RAX + 0x38), *puVar6, puVar6[1]);
                if (*pcVar9 == '\0') {
                    var_70h = runtime_convTstring(puVar1[2], puVar1[3]);
                    var_78h = 0x1042920;
                    var_60h = runtime_convTstring(*puVar6, puVar6[1]);
                    var_68h = 0x1042920;
                    var_50h = runtime_convTstring(puVar1[0x10], puVar1[0x11]);
                    var_58h = 0x1042920;
                    var_40h = runtime_convT64(puVar1[0x12]);
                    var_48h = 0x1042b60;
                    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a3727, 0x3d, &var_78h, 4, 4);
                    puVar10 = (undefined *)
                              runtime_mapassign_faststr(0x107d940, *(undefined8 *)(in_RAX + 0x38), *puVar6, puVar6[1]);
                    *puVar10 = 1;
                }
                iVar12 = iVar12 + 1;
            } else {
                runtime_mapdelete_faststr(0x107d940, *(undefined8 *)(in_RAX + 0x38), *puVar1, puVar1[1]);
            }
        }
        if (*(int32_t *)0x355db50 != 0) {
            uVar5 = runtime_gcWriteBarrier2();
            *extraout_R11_00 = uVar5;
            extraout_R11_00[1] = *(undefined8 *)(in_RAX + 0x30);
        }
        *(undefined8 *)(in_RAX + 0x30) = uVar5;
        if (*(int64_t *)(in_RAX + 0x40) != iVar12) {
            var_90h = runtime_convT64(iVar12);
            var_98h = 0x1042b60;
            var_80h = runtime_convT64(unaff_RBX);
            var_88h = 0x1042b60;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a2eb7 /* "[自动调度] 在线可调度车辆: %d / 数据库 %d 辆\n" */, 0x3c, &var_98h, 2, 2);
            *(int64_t *)(in_RAX + 0x40) = iVar12;
        }
        (**(code **)var_10h)();
        return;
    }
    var_28h = *(int64_t *)(in_RDI + 8);
    var_20h = in_RSI;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118b8b2 /* "获取叉车状态失败：%v\n" */, 0x1e, &var_28h, 1, 1);
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).updateForkliftStatus.deferwrap1 | VA 0xe44ec0 | vehservice.go:196
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

void __stdcall
pkg_diapdu___ForkliftUpdater__updateForkliftStatus_deferwrap1
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

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).convertToForklift | VA 0xe44f20 | vehservice.go:234
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater, status *CAS-Backend/pkg/diapdu.ForkliftStatus, ~r0 *CAS-Backend/pkg/diapdu.Forklift
   DWARF locals: forklift *CAS-Backend/pkg/diapdu.Forklift, taskID int, err error */
undefined8 * __stdcall pkg_diapdu___ForkliftUpdater__convertToForklift(int64_t arg_8h, int64_t arg_10h, int64_t arg_18h)
{
    int64_t iVar1;
    int64_t *piVar2;
    undefined8 *puVar3;
    undefined8 *extraout_RAX;
    undefined8 *extraout_RCX;
    undefined8 *extraout_RCX_00;
    undefined8 *extraout_RCX_01;
    undefined8 *extraout_RCX_02;
    undefined8 *unaff_RBX;
    undefined8 extraout_RBX;
    undefined8 uVar4;
    undefined8 extraout_RSI;
    undefined8 extraout_RSI_00;
    undefined8 extraout_RDI;
    undefined8 uVar5;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar6 [16];
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    puVar3 = (undefined8 *)runtime_newobject(0x1121f20);
    uVar4 = *unaff_RBX;
    puVar3[1] = unaff_RBX[1];
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier1();
        *extraout_R11 = extraout_RBX;
        puVar3 = extraout_RAX;
        unaff_RBX = extraout_RCX;
        uVar4 = extraout_RBX;
    }
    *puVar3 = uVar4;
    uVar4 = unaff_RBX[2];
    puVar3[3] = unaff_RBX[3];
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_00 = extraout_RSI;
        unaff_RBX = extraout_RCX_00;
        uVar4 = extraout_RSI;
    }
    puVar3[2] = uVar4;
    puVar3[5] = unaff_RBX[7];
    puVar3[6] = unaff_RBX[8];
    puVar3[0xb] = unaff_RBX[6];
    uVar4 = unaff_RBX[0xc];
    uVar5 = unaff_RBX[0xd];
    puVar3[0xc] = unaff_RBX[0xb];
    puVar3[0xd] = uVar4;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_01 = extraout_RDI;
        unaff_RBX = extraout_RCX_01;
        uVar5 = extraout_RDI;
    }
    puVar3[0xe] = uVar5;
    uVar4 = unaff_RBX[0x10];
    puVar3[8] = unaff_RBX[0x11];
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_02 = extraout_RSI_00;
        unaff_RBX = extraout_RCX_02;
        uVar4 = extraout_RSI_00;
    }
    puVar3[7] = uVar4;
    puVar3[9] = unaff_RBX[0x12];
    iVar1 = unaff_RBX[5];
    piVar2 = (int64_t *)unaff_RBX[4];
    if (iVar1 < 6) {
        if (iVar1 != 4) {
            if ((iVar1 == 5) &&
               ((((int32_t)*piVar2 == 0x6f727265 && (*(char *)((int64_t)piVar2 + 4) == 'r')) ||
                (((int32_t)*piVar2 == 0x6c756166 && (*(char *)((int64_t)piVar2 + 4) == 't')))))) {
                puVar3[4] = 3;
            }
            goto code_r0x00e450c5;
        }
        if ((int32_t)*piVar2 != 0x79737562) {
            if ((int32_t)*piVar2 == 0x656c6469) {
                puVar3[4] = 0;
            }
            goto code_r0x00e450c5;
        }
    } else {
        if (iVar1 != 7) {
            if ((iVar1 == 8) && (*piVar2 == 0x676e696772616863)) {
                puVar3[4] = 2;
            }
            goto code_r0x00e450c5;
        }
        if (((((int32_t)*piVar2 != 0x6e6e7572) || (*(int16_t *)((int64_t)piVar2 + 4) != 0x6e69)) ||
            (*(char *)((int64_t)piVar2 + 6) != 'g')) &&
           ((((int32_t)*piVar2 != 0x6b726f77 || (*(int16_t *)((int64_t)piVar2 + 4) != 0x6e69)) ||
            (*(char *)((int64_t)piVar2 + 6) != 'g')))) goto code_r0x00e450c5;
    }
    puVar3[4] = 1;
code_r0x00e450c5:
    if (unaff_RBX[10] != 0) {
        auVar6 = strconv_Atoi(unaff_RBX[9]);
        if (auVar6._8_8_ == 0) {
            puVar3[10] = auVar6._0_8_;
        }
    }
    return puVar3;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).MarkVehicleOnTask | VA 0xe45120 | vehservice.go:276
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater, vehicleID string, taskID int
   DWARF locals: ok bool, f *CAS-Backend/pkg/diapdu.Forklift */
// WARNING: Variable defined which should be unmapped: var_29h
// WARNING: Variable defined which should be unmapped: var_20h
// WARNING: [rz-ghidra] Detected overlap for variable var_28h
// WARNING: [rz-ghidra] Detected overlap for variable arg_27h
// WARNING: [rz-ghidra] Detected overlap for variable var_40h

void __stdcall
pkg_diapdu___ForkliftUpdater__MarkVehicleOnTask
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h)
{
    undefined8 uVar1;
    int64_t iVar2;
    int64_t in_RAX;
    int64_t *piVar3;
    int64_t unaff_RBP;
    int64_t unaff_R14;
    int64_t in_stack_00000030;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    unkbyte7 Stack_30;
    int64_t var_29h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    sync___RWMutex__Lock(in_stack_ffffffffffffffb0, in_stack_ffffffffffffffc8);
    var_20h = 0xe45240;
    var_10h = (int64_t)&var_20h;
    uVar1 = *(undefined8 *)(in_RAX + 0x30);
    var_18h = in_RAX + 0x18;
    piVar3 = (int64_t *)
             runtime_mapaccess2_faststr(in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, 
                          in_stack_ffffffffffffffc8, CONCAT17(1, Stack_30), 0xe45240, unaff_RBP, arg4, in_stack_00000030
                         );
    if ((char)uVar1 != '\0') {
        iVar2 = *piVar3;
        *(undefined8 *)(iVar2 + 0x20) = 1;
        *(int64_t *)(iVar2 + 0x50) = arg1;
        (**(code **)var_10h)();
        return;
    }
    (**(code **)var_10h)();
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).MarkVehicleOnTask.deferwrap1 | VA 0xe45240 | vehservice.go:278
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

void __stdcall
pkg_diapdu___ForkliftUpdater__MarkVehicleOnTask_deferwrap1
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

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).ClearVehicleTask | VA 0xe452a0 | vehservice.go:288
   DWARF parameters and results: u *CAS-Backend/pkg/diapdu.ForkliftUpdater, vehicleID string
   DWARF locals: ok bool, f *CAS-Backend/pkg/diapdu.Forklift */
// WARNING: Variable defined which should be unmapped: var_29h
// WARNING: Variable defined which should be unmapped: var_20h
// WARNING: [rz-ghidra] Detected overlap for variable var_28h
// WARNING: [rz-ghidra] Detected overlap for variable arg_27h
// WARNING: [rz-ghidra] Detected overlap for variable var_40h

void __stdcall
pkg_diapdu___ForkliftUpdater__ClearVehicleTask(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h)
{
    undefined8 uVar1;
    int64_t iVar2;
    int64_t in_RAX;
    int64_t *piVar3;
    int64_t unaff_RBP;
    int64_t unaff_R14;
    int64_t in_stack_00000030;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    unkbyte7 Stack_30;
    int64_t var_29h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    sync___RWMutex__Lock(in_stack_ffffffffffffffb0, in_stack_ffffffffffffffc8);
    var_20h = 0xe453a0;
    var_10h = (int64_t)&var_20h;
    uVar1 = *(undefined8 *)(in_RAX + 0x30);
    var_18h = in_RAX + 0x18;
    piVar3 = (int64_t *)
             runtime_mapaccess2_faststr(in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, 
                          in_stack_ffffffffffffffc8, CONCAT17(1, Stack_30), 0xe453a0, unaff_RBP, arg4, in_stack_00000030
                         );
    if ((char)uVar1 != '\0') {
        iVar2 = *piVar3;
        *(undefined8 *)(iVar2 + 0x20) = 0;
        *(undefined8 *)(iVar2 + 0x50) = 0;
        (**(code **)var_10h)();
        return;
    }
    (**(code **)var_10h)();
    return;
}

/* CAS-Backend/pkg/diapdu.(*ForkliftUpdater).ClearVehicleTask.deferwrap1 | VA 0xe453a0 | vehservice.go:290
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

void __stdcall
pkg_diapdu___ForkliftUpdater__ClearVehicleTask_deferwrap1
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
