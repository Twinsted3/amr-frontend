/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).Start | VA 0xe2eec0 | taskservice.go:50
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler
   DWARF locals: (no entries) */
void __stdcall pkg_diapdu___TaskScheduler__Start(int64_t arg_8h, int64_t arg_50h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    pkg_diapdu_SetGlobalDynamicTraffic(*(undefined8 *)(in_RAX + 0x50));
    pkg_diapdu___TaskScheduler__loadPendingTasks(in_RAX);
    puVar1 = (undefined8 *)runtime_newobject(0x10b12c0);
    *puVar1 = 0xe2ef80;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11 = in_RAX;
    }
    puVar1[1] = in_RAX;
    runtime_newproc();
    var_18h = 0x1042920;
    var_10h = 0x2e67e40 /* "任务调度器已启动" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_18h, 1, 1);
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).Start.gowrap1 | VA 0xe2ef80 | taskservice.go:55
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: [rz-ghidra] Detected overlap for variable var_50h

void __stdcall
pkg_diapdu___TaskScheduler__Start_gowrap1
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
    pkg_diapdu___TaskScheduler__scheduleLoop(var_10h);
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).loadPendingTasks | VA 0xe2efe0 | taskservice.go:63
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler
   DWARF locals: graph *CAS-Backend/pkg/diapdu.Graph, allTasks []CAS-Backend/biz/dao.Task, err error, pendingTasks []*CAS-Backend/pkg/diapdu.Task1, task CAS-Backend/biz/dao.Task, task1 *CAS-Backend/pkg/diapdu.Task1 */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_230h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_228h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_220h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_218h because it doesn't fit into ProtoModel

void __stdcall pkg_diapdu___TaskScheduler__loadPendingTasks(int64_t arg_8h)
{
    int32_t *piVar1;
    uint32_t uVar2;
    int32_t iVar3;
    int64_t in_RAX;
    int64_t iVar4;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t extraout_RAX_01;
    undefined8 uVar5;
    int64_t iVar6;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    int64_t iVar7;
    int64_t extraout_RCX_02;
    int64_t iVar8;
    int64_t iVar9;
    int64_t extraout_RBX;
    uint64_t uVar10;
    uint64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    int64_t extraout_RBX_02;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t extraout_RDI;
    uint64_t extraout_R8;
    int64_t extraout_R9;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t unaff_R14;
    undefined auVar11 [16];
    int64_t var_290h;
    undefined auStack_200 [120];
    int64_t var_188h;
    int64_t var_180h;
    int64_t var_178h;
    int64_t var_170h;
    int64_t var_168h;
    int64_t var_160h;
    int64_t var_130h;
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
    
    while (auStack_200 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe2f3e5;
        runtime_morestack_noctxt_abi0();
    }
    auVar11 = biz_dao_GetAllTasks();
    var_178h = auVar11._8_8_;
    var_58h = auVar11._0_8_;
    if (extraout_RDI != 0) {
        var_30h = *(int64_t *)(extraout_RDI + 8);
        var_28h = extraout_RSI;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118a3ba /* "获取所有任务失败: %v\n" */, 0x1d, &var_30h, 1, 1);
        return;
    }
    var_38h = runtime_convT64(var_178h);
    var_40h = 0x1042b60;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1190a12, 0x23, &var_40h, 1, 1);
    if (*(int32_t *)0x355d300 == 0) {
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119c8db /* "地图信息未加载，无法解析任务位置\n" */, 0x31, 0, 0, 0);
        return;
    }
    iVar4 = pkg_diapdu_GetGraph();
    if (iVar4 != 0) {
        iVar7 = 0;
        iVar8 = 0;
        uVar10 = 0;
        iVar6 = var_58h;
        var_60h = iVar4;
        for (iVar9 = var_178h; var_188h = uVar10, var_180h = iVar7, var_70h = iVar8, 0 < iVar9; iVar9 = iVar9 + -1) {
            var_170h = iVar9;
            var_10h = iVar6;
            runtime_duffcopy_offset_686(iVar4, iVar9, iVar6, &var_160h, iVar6, uVar10, iVar8);
            if ((var_130h == 0) ||
               (iVar4 = extraout_RAX, iVar6 = extraout_RCX, iVar9 = extraout_RBX, uVar10 = extraout_R8,
               iVar8 = extraout_R9, var_130h == 1)) {
                runtime_duffcopy_offset_686();
                iVar4 = pkg_diapdu_convertDaoTaskToTask1();
                uVar10 = var_188h + 1;
                iVar7 = var_180h;
                iVar8 = var_70h;
                if ((uint64_t)var_180h < uVar10) {
                    var_168h = iVar4;
                    runtime_growslice(var_70h, uVar10, var_180h, 1, 0x10240a0);
                    iVar4 = var_168h;
                    iVar7 = extraout_RCX_00;
                    iVar8 = extraout_RAX_00;
                    uVar10 = extraout_RBX_00;
                }
                if (*(int32_t *)0x355db50 != 0) {
                    runtime_gcWriteBarrier2();
                    *extraout_R11 = extraout_RAX_01;
                    extraout_R11[1] = *(int64_t *)(iVar8 + -8 + extraout_RBX_01 * 8);
                    iVar4 = extraout_RAX_01;
                    iVar7 = extraout_RCX_01;
                    uVar10 = extraout_RBX_01;
                }
                *(int64_t *)(iVar8 + -8 + uVar10 * 8) = iVar4;
                iVar4 = var_60h;
                iVar6 = var_10h;
                iVar9 = var_170h;
            }
            iVar6 = iVar6 + 0xf0;
        }
        var_48h = runtime_convT64(uVar10);
        var_50h = 0x1042b60;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119e6aa /* "筛选出 %d 个待处理任务（status=0 或 1）\n" */, 0x34, &var_50h, 1, 1);
        var_68h = in_RAX + 0x20;
        uVar10 = 0;
        LOCK();
        uVar2 = *(uint32_t *)(in_RAX + 0x20);
        if (uVar2 == 0) {
            *(uint32_t *)(in_RAX + 0x20) = 1;
        } else {
            uVar10 = (uint64_t)uVar2;
        }
        UNLOCK();
        if (uVar2 != 0) {
            uVar10 = sync___Mutex__lockSlow(var_68h);
        }
        *(int64_t *)(in_RAX + 0x10) = var_188h;
        *(int64_t *)(in_RAX + 0x18) = var_180h;
        iVar4 = in_RAX;
        iVar7 = var_188h;
        iVar6 = var_180h;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2(uVar10);
            *extraout_R11_00 = var_70h;
            extraout_R11_00[1] = *(int64_t *)(extraout_RCX_02 + 8);
            iVar4 = extraout_RCX_02;
            iVar7 = extraout_RBX_02;
            iVar6 = extraout_RSI_00;
        }
        *(int64_t *)(iVar4 + 8) = var_70h;
        uVar5 = runtime_convTslice(var_70h, iVar7, iVar6);
        var_20h = 0xe2f400;
        sort_Slice(0x1035020, uVar5, &var_20h);
        LOCK();
        piVar1 = (int32_t *)(in_RAX + 0x20);
        iVar3 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar3 != 1) {
            sync___Mutex__unlockSlow(var_68h);
        }
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).loadPendingTasks.func1 | VA 0xe2f400 | taskservice.go:103
   DWARF parameters and results: i int, j int, ~r0 bool
   DWARF locals: s *CAS-Backend/pkg/diapdu.TaskScheduler */
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

bool __stdcall
pkg_diapdu___TaskScheduler__loadPendingTasks_func1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3)
{
    uint64_t uVar1;
    int64_t iVar2;
    code *pcVar3;
    undefined uVar4;
    uint64_t in_RAX;
    uint64_t unaff_RBX;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    uVar1 = *(uint64_t *)(*(int64_t *)(arg3 + 8) + 0x10);
    if (in_RAX < uVar1) {
        iVar2 = *(int64_t *)(*(int64_t *)(arg3 + 8) + 8);
        if (unaff_RBX < uVar1) {
            return *(int64_t *)(*(int64_t *)(iVar2 + unaff_RBX * 8) + 0x18) <
                   *(int64_t *)(*(int64_t *)(iVar2 + in_RAX * 8) + 0x18);
        }
        runtime_panicIndex(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    }
    runtime_panicIndex(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    pcVar3 = (code *)swi(3);
    uVar4 = (*pcVar3)();
    return (bool)uVar4;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask | VA 0xe2f460 | taskservice.go:118
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, task *CAS-Backend/pkg/diapdu.Task1
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: arg_10h
// WARNING: Restarted to delay deadcode elimination for space: stack
// WARNING: [rz-ghidra] Detected overlap for variable var_60h

void __stdcall
pkg_diapdu___TaskScheduler__enqueueTask(int64_t arg_8h, int64_t arg_10h, int64_t arg_58h, int64_t arg_b8h)
{
    int64_t iVar1;
    int64_t in_RAX;
    undefined8 extraout_RAX;
    int64_t extraout_RAX_00;
    undefined8 uVar2;
    undefined8 extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t iVar3;
    int64_t iVar4;
    int64_t *unaff_RBX;
    undefined8 extraout_RBX;
    int64_t *extraout_RBX_00;
    int64_t *piVar5;
    uint64_t uVar6;
    int64_t extraout_R8;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    bool bVar7;
    undefined auVar8 [16];
    int64_t var_61h;
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
    
    while (&var_28h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (unaff_RBX == (int64_t *)0x0) {
        return;
    }
    iVar3 = in_RAX + 0x20;
    LOCK();
    bVar7 = *(int32_t *)(in_RAX + 0x20) == 0;
    if (bVar7) {
        *(int32_t *)(in_RAX + 0x20) = 1;
    }
    UNLOCK();
    if (!bVar7) {
        sync___Mutex__lockSlow(iVar3);
    }
    var_30h = 0xe2f760;
    var_10h = (int64_t)&var_30h;
    iVar1 = *(int64_t *)(in_RAX + 8);
    iVar4 = 0;
    while( true ) {
        var_28h = iVar3;
        if (*(int64_t *)(in_RAX + 0x10) <= iVar4) {
            uVar6 = *(int64_t *)(in_RAX + 0x10) + 1;
            auVar8._8_8_ = uVar6;
            auVar8._0_8_ = iVar1;
            if (*(uint64_t *)(in_RAX + 0x18) < uVar6) {
                runtime_growslice(iVar1, uVar6, *(uint64_t *)(in_RAX + 0x18), 1, 0x10240a0);
                auVar8._8_8_ = extraout_RBX;
                auVar8._0_8_ = extraout_RAX;
                *(undefined8 *)(in_RAX + 0x18) = extraout_RCX;
                if (*(int32_t *)0x355db50 != 0) {
                    auVar8 = runtime_gcWriteBarrier2();
                    *extraout_R11 = auVar8._0_8_;
                    extraout_R11[1] = *(undefined8 *)(in_RAX + 8);
                }
                *(int64_t *)(in_RAX + 8) = auVar8._0_8_;
            }
            *(int64_t *)(in_RAX + 0x10) = auVar8._8_8_;
            iVar3 = in_RAX;
            piVar5 = unaff_RBX;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                auVar8._8_8_ = extraout_R8;
                auVar8._0_8_ = extraout_RAX_00;
                *extraout_R11_00 = extraout_RBX_00;
                extraout_R11_00[1] = *(undefined8 *)(extraout_RAX_00 + -8 + extraout_R8 * 8);
                iVar3 = extraout_RCX_00;
                piVar5 = extraout_RBX_00;
            }
            *(int64_t **)(auVar8._0_8_ + -8 + auVar8._8_8_ * 8) = piVar5;
            uVar2 = runtime_convTslice(*(undefined8 *)(iVar3 + 8), *(undefined8 *)(iVar3 + 0x10), 
                                    *(undefined8 *)(iVar3 + 0x18));
            var_20h = 0xe2f700;
            sort_Slice(0x1035020, uVar2, &var_20h);
            uVar2 = *(undefined8 *)(in_RAX + 0x10);
            var_48h = runtime_convT64(*unaff_RBX);
            var_50h = 0x1042b60;
            var_38h = runtime_convT64(uVar2);
            var_40h = 0x1042b60;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a7055 /* "[自动调度] 任务 %d 已加入调度队列，当前队列长度 %d\n" */, 0x47, &var_50h, 2, 2);
            (**(code **)var_10h)();
            return;
        }
        piVar5 = *(int64_t **)(iVar1 + iVar4 * 8);
        if ((piVar5 != (int64_t *)0x0) && (*piVar5 == *unaff_RBX)) break;
        iVar4 = iVar4 + 1;
    }
    (*(code *)0xe2f760)();
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask.deferwrap1 | VA 0xe2f760 | taskservice.go:123
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TaskScheduler__enqueueTask_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).enqueueTask.func1 | VA 0xe2f700 | taskservice.go:128
   DWARF parameters and results: i int, j int, ~r0 bool
   DWARF locals: s *CAS-Backend/pkg/diapdu.TaskScheduler */
// WARNING: [rz-ghidra] Detected overlap for variable var_10h

bool __stdcall
pkg_diapdu___TaskScheduler__enqueueTask_func1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3)
{
    uint64_t uVar1;
    int64_t iVar2;
    code *pcVar3;
    undefined uVar4;
    uint64_t in_RAX;
    uint64_t unaff_RBX;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    uVar1 = *(uint64_t *)(*(int64_t *)(arg3 + 8) + 0x10);
    if (in_RAX < uVar1) {
        iVar2 = *(int64_t *)(*(int64_t *)(arg3 + 8) + 8);
        if (unaff_RBX < uVar1) {
            return *(int64_t *)(*(int64_t *)(iVar2 + unaff_RBX * 8) + 0x18) <
                   *(int64_t *)(*(int64_t *)(iVar2 + in_RAX * 8) + 0x18);
        }
        runtime_panicIndex(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    }
    runtime_panicIndex(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    pcVar3 = (code *)swi(3);
    uVar4 = (*pcVar3)();
    return (bool)uVar4;
}

/* CAS-Backend/pkg/diapdu.EnqueuePendingTask | VA 0xe2f7c0 | taskservice.go:135
   DWARF parameters and results: daoTask CAS-Backend/biz/dao.Task, ~r0 bool
   DWARF locals: sched *CAS-Backend/pkg/diapdu.TaskScheduler, graph *CAS-Backend/pkg/diapdu.Graph, task1 *CAS-Backend/pkg/diapdu.Task1 */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_21h
// WARNING: [rz-ghidra] Detected overlap for variable var_2bh
// WARNING: [rz-ghidra] Detected overlap for variable var_28h
// WARNING: [rz-ghidra] Detected overlap for variable var_1ch
// WARNING: [rz-ghidra] Detected overlap for variable var_29h
// WARNING: [rz-ghidra] Detected overlap for variable var_20h
// WARNING: [rz-ghidra] Detected overlap for variable var_24h
// WARNING: [rz-ghidra] Detected overlap for variable var_60h

undefined8 __stdcall pkg_diapdu_EnqueuePendingTask(int64_t arg_8h, int64_t arg_38h)
{
    int32_t iVar1;
    char cVar2;
    int64_t iVar3;
    int64_t unaff_R14;
    bool bVar4;
    int64_t var_130h;
    int64_t in_stack_fffffffffffffee0;
    int64_t in_stack_fffffffffffffee8;
    int64_t in_stack_fffffffffffffef0;
    int64_t in_stack_fffffffffffffef8;
    int64_t in_stack_ffffffffffffff00;
    int64_t in_stack_ffffffffffffff08;
    int64_t in_stack_ffffffffffffff10;
    int64_t in_stack_ffffffffffffff30;
    undefined auStack_a0 [48];
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffffd0;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_a0 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if ((arg_38h != 0) && (arg_38h != 1)) {
        return 0;
    }
    LOCK();
    bVar4 = *(int32_t *)0x355d3c0 == 0;
    if (bVar4) {
        *(int32_t *)0x355d3c0 = 1;
    }
    UNLOCK();
    if (!bVar4) {
        sync___Mutex__lockSlow(in_stack_fffffffffffffee0);
    }
    cVar2 = *(char *)0x355d2a8;
    iVar3 = *(int64_t *)0x3512058;
    LOCK();
    iVar1 = *(int32_t *)0x355d3c0 + -1;
    UNLOCK();
    bVar4 = *(int32_t *)0x355d3c0 != 1;
    *(int32_t *)0x355d3c0 = iVar1;
    if (bVar4) {
        sync___Mutex__unlockSlow(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_ffffffffffffff08);
    }
    if ((cVar2 != '\0') && (iVar3 != 0)) {
        if (*(int32_t *)0x355d300 == 0) {
            runtime_convT64(in_stack_fffffffffffffee0);
            fmt_Fprintf(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_fffffffffffffef0, 
                         in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                         in_stack_ffffffffffffff10);
            return 0;
        }
        iVar3 = pkg_diapdu_GetGraph();
        if (iVar3 == 0) {
            return 0;
        }
        fcn.00478dce();
        pkg_diapdu_convertDaoTaskToTask1(in_stack_fffffffffffffee0, in_stack_ffffffffffffffd0);
        pkg_diapdu___TaskScheduler__enqueueTask(in_stack_fffffffffffffee0, in_stack_fffffffffffffee8, in_stack_ffffffffffffff30, 
                     in_stack_ffffffffffffff90);
        return 1;
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.convertDaoTaskToTask1 | VA 0xe2f980 | taskservice.go:160
   DWARF parameters and results: daoTask CAS-Backend/biz/dao.Task, graph *CAS-Backend/pkg/diapdu.Graph, ~r0 *CAS-Backend/pkg/diapdu.Task1
   DWARF locals: &daoTask *CAS-Backend/biz/dao.Task, task1 *CAS-Backend/pkg/diapdu.Task1 */
// WARNING: Variable defined which should be unmapped: var_8h

int64_t __stdcall pkg_diapdu_convertDaoTaskToTask1(int64_t arg_8h, int64_t arg_f8h)
{
    int32_t *piVar1;
    int64_t in_RAX;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 extraout_RAX;
    undefined8 uVar4;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 uVar5;
    undefined8 extraout_RCX_02;
    undefined8 extraout_RBX;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t extraout_RSI_01;
    int64_t extraout_RSI_02;
    int64_t extraout_RSI_03;
    int64_t extraout_RSI_04;
    int64_t iVar6;
    undefined8 extraout_R8;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar7 [16];
    int64_t var_138h;
    undefined auStack_128 [128];
    undefined auStack_a8 [128];
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    arg_f8h = in_RAX;
    while (auStack_a8 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe2fd09;
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x113baa0);
    if (*(int32_t *)0x355db50 != 0) {
        runtime_wbMove(0x113baa0, var_10h, &arg_8h);
    }
    iVar2 = fcn.00478dce();
    iVar6 = *(int64_t *)(iVar2 + 0x28);
    piVar1 = *(int32_t **)(iVar2 + 0x20);
    if (iVar6 == 3) {
        if (((int16_t)*piVar1 != 0x6f6c) || (*(char *)((int64_t)piVar1 + 2) != 'w')) goto code_r0x00e2fa54;
        var_20h = 1;
    } else if (iVar6 == 4) {
        if (*piVar1 == 0x68676968) {
            var_20h = 3;
        } else {
code_r0x00e2fa54:
            var_20h = 2;
        }
    } else {
        if (((iVar6 != 6) || (*piVar1 != 0x6964656d)) || ((int16_t)piVar1[1] != 0x6d75)) goto code_r0x00e2fa54;
        var_20h = 2;
    }
    iVar6 = *(int64_t *)(iVar2 + 0x30);
    if (iVar6 < 2) {
        if (iVar6 == 0) {
            var_28h = 0;
            goto code_r0x00e2faaf;
        }
        if (iVar6 == 1) {
            var_28h = 1;
            goto code_r0x00e2faaf;
        }
    } else {
        if (iVar6 == 2) {
            var_28h = 2;
            goto code_r0x00e2faaf;
        }
        if (iVar6 == 4) {
            var_28h = 4;
            goto code_r0x00e2faaf;
        }
        if (iVar6 == 5) {
            var_28h = 5;
            goto code_r0x00e2faaf;
        }
    }
    var_28h = 0;
code_r0x00e2faaf:
    puVar3 = (undefined8 *)runtime_newobject(0x113c540);
    *puVar3 = *(undefined8 *)var_10h;
    uVar4 = *(undefined8 *)(var_10h + 0xc0);
    puVar3[2] = *(undefined8 *)(var_10h + 200);
    iVar6 = var_10h;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11 = uVar4;
        iVar6 = extraout_RSI;
    }
    puVar3[1] = uVar4;
    puVar3[3] = var_20h;
    puVar3[8] = var_28h;
    puVar3[9] = in_XMM15_Qa;
    puVar3[10] = in_XMM15_Qb;
    uVar4 = *(undefined8 *)(iVar6 + 0x50);
    uVar5 = *(undefined8 *)(iVar6 + 0x58);
    puVar3[0xb] = *(undefined8 *)(iVar6 + 0x48);
    puVar3[0xc] = uVar4;
    iVar2 = iVar6 + 0x60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_00 = extraout_R8;
        extraout_R11_00[1] = extraout_RCX;
        iVar2 = extraout_RCX;
        iVar6 = extraout_RSI_00;
        uVar5 = extraout_R8;
    }
    puVar3[0xd] = uVar5;
    puVar3[0xf] = iVar2;
    uVar4 = *(undefined8 *)(iVar6 + 0x90);
    puVar3[0x15] = *(undefined8 *)(iVar6 + 0x98);
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_01 = uVar4;
        iVar6 = extraout_RSI_01;
    }
    puVar3[0x14] = uVar4;
    uVar4 = *(undefined8 *)(iVar6 + 0xa0);
    puVar3[0x17] = *(undefined8 *)(iVar6 + 0xa8);
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_02 = uVar4;
        iVar6 = extraout_RSI_02;
    }
    puVar3[0x16] = uVar4;
    uVar4 = *(undefined8 *)(iVar6 + 0xb0);
    puVar3[0x19] = *(undefined8 *)(iVar6 + 0xb8);
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_03 = uVar4;
        iVar6 = extraout_RSI_03;
    }
    puVar3[0x18] = uVar4;
    uVar5 = *(undefined8 *)(iVar6 + 0xd8);
    uVar4 = *(undefined8 *)(iVar6 + 0xd0);
    puVar3[0x1b] = uVar5;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_04 = uVar4;
        uVar5 = extraout_RCX_00;
        iVar6 = extraout_RSI_04;
    }
    puVar3[0x1a] = uVar4;
    puVar3[0x1f] = *(undefined8 *)(iVar6 + 0xe8);
    uVar4 = 0;
    var_18h = (int64_t)puVar3;
    if (*(int64_t *)(iVar6 + 0xb8) != 0) {
        pkg_diapdu_parseWaypointStations(*(undefined8 *)(iVar6 + 0xb0));
        puVar3 = (undefined8 *)var_18h;
        auVar7._8_8_ = extraout_RBX;
        auVar7._0_8_ = extraout_RAX;
        *(undefined8 *)(var_18h + 0xe8) = extraout_RBX;
        *(undefined8 *)(var_18h + 0xf0) = extraout_RCX_01;
        uVar5 = extraout_RCX_01;
        if (*(int32_t *)0x355db50 != 0) {
            auVar7 = runtime_gcWriteBarrier2();
            *extraout_R11_05 = auVar7._0_8_;
            uVar5 = *(undefined8 *)((int64_t)puVar3 + 0xe0);
            extraout_R11_05[1] = uVar5;
        }
        uVar4 = auVar7._8_8_;
        *(int64_t *)((int64_t)puVar3 + 0xe0) = auVar7._0_8_;
        iVar6 = var_10h;
    }
    uVar4 = fcn.00478dce(puVar3, uVar4, uVar5, auStack_128, iVar6);
    pkg_diapdu_applyTaskLocationsFromDAO(uVar4, arg_f8h);
    if (*(int64_t *)(var_10h + 0x88) != 0) {
        uVar4 = *(undefined8 *)(var_10h + 0x80);
        *(int64_t *)(var_18h + 0x50) = *(int64_t *)(var_10h + 0x88);
        if (*(int32_t *)0x355db50 != 0) {
            var_18h = runtime_gcWriteBarrier2();
            *extraout_R11_06 = extraout_RCX_02;
            extraout_R11_06[1] = *(undefined8 *)(var_18h + 0x48);
            uVar4 = extraout_RCX_02;
        }
        *(undefined8 *)(var_18h + 0x48) = uVar4;
    }
    return var_18h;
}

/* CAS-Backend/pkg/diapdu.applyTaskLocationsFromDAO | VA 0xe2fd20 | taskservice.go:235
   DWARF parameters and results: task1 *CAS-Backend/pkg/diapdu.Task1, daoTask CAS-Backend/biz/dao.Task, graph *CAS-Backend/pkg/diapdu.Graph
   DWARF locals: moveTask bool, startMeta CAS-Backend/pkg/diapdu.PositionData, endMeta CAS-Backend/pkg/diapdu.PositionData, err error, n *CAS-Backend/pkg/diapdu.Node */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Detected overlap for variable var_139h

void __stdcall
pkg_diapdu_applyTaskLocationsFromDAO
          (int64_t arg_98h, int64_t arg_a0h, int64_t arg_a8h, int64_t arg_b0h, int64_t arg_f8h, int64_t arg_100h)
{
    double dVar1;
    int64_t in_RAX;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    undefined8 extraout_RAX_01;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    int64_t extraout_RCX_02;
    int64_t extraout_RCX_03;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    undefined8 extraout_RBX_02;
    int64_t extraout_RBX_03;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    int64_t extraout_R8;
    int64_t extraout_R8_00;
    int64_t extraout_R9;
    int64_t extraout_R9_00;
    int64_t extraout_R10;
    int64_t extraout_R10_00;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t unaff_R14;
    bool bVar5;
    int64_t extraout_XMM0_Qa;
    int64_t extraout_XMM0_Qa_00;
    undefined8 extraout_XMM0_Qa_01;
    undefined8 extraout_XMM0_Qa_02;
    undefined8 in_XMM1_Qa;
    undefined auVar6 [16];
    int64_t var_170h;
    int64_t var_160h;
    int64_t var_138h;
    int64_t var_130h;
    int64_t var_128h;
    int64_t var_120h;
    int64_t var_118h;
    int64_t var_110h;
    undefined auStack_e0 [24];
    int64_t var_c8h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_b0h;
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
    
    while (auStack_e0 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe30196;
        runtime_morestack_noctxt_abi0();
    }
    if ((in_RAX != 0) && (unaff_RBX != 0)) {
        pkg_diapdu_parsePositionData(arg_98h, arg_a0h);
        var_68h = extraout_RAX;
        var_60h = extraout_RBX;
        var_58h = extraout_RCX;
        var_50h = extraout_RDI;
        var_48h = extraout_RSI;
        var_40h = extraout_R8;
        var_38h = extraout_XMM0_Qa;
        var_30h = extraout_R9;
        var_28h = extraout_R10;
        runtime_duffcopy_offset_812();
        pkg_diapdu_parsePositionData(arg_a8h, arg_b0h);
        var_68h = extraout_RAX_00;
        var_60h = extraout_RBX_00;
        var_58h = extraout_RCX_00;
        var_50h = extraout_RDI_00;
        var_48h = extraout_RSI_00;
        var_40h = extraout_R8_00;
        var_38h = extraout_XMM0_Qa_00;
        var_30h = extraout_R9_00;
        var_28h = extraout_R10_00;
        runtime_duffcopy_offset_812();
        if (var_160h == 0) {
            strings_TrimSpace(var_118h, var_110h);
            bVar5 = extraout_RBX_01 == 0;
            auVar6 = strings_TrimSpace(var_128h, var_120h);
            *(int64_t *)(in_RAX + 0x88) = auVar6._8_8_;
            iVar2 = in_RAX;
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                auVar6._8_8_ = extraout_RBX_02;
                auVar6._0_8_ = extraout_RAX_01;
                *extraout_R11 = extraout_RAX_01;
                extraout_R11[1] = *(undefined8 *)(extraout_RCX_01 + 0x80);
                iVar2 = extraout_RCX_01;
            }
            *(int64_t *)(iVar2 + 0x80) = auVar6._0_8_;
            iVar2 = pkg_diapdu_locationForStationName(unaff_RBX, auVar6._0_8_, auVar6._8_8_);
            if (iVar2 == 0) {
                *(undefined8 *)(in_RAX + 0x20) = extraout_XMM0_Qa_01;
                *(undefined8 *)(in_RAX + 0x28) = in_XMM1_Qa;
            }
        } else {
            bVar5 = false;
        }
        if (var_160h == 0) {
            iVar2 = in_RAX;
            if (bVar5) {
                auVar6 = strings_TrimSpace(var_b8h, var_b0h);
                uVar4 = auVar6._0_8_;
                *(int64_t *)(in_RAX + 0x98) = auVar6._8_8_;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar4 = runtime_gcWriteBarrier2();
                    *extraout_R11_00 = uVar4;
                    extraout_R11_00[1] = *(undefined8 *)(extraout_RCX_02 + 0x90);
                    iVar2 = extraout_RCX_02;
                }
                *(undefined8 *)(iVar2 + 0x90) = uVar4;
            } else {
                auVar6 = strings_TrimSpace(var_c8h, var_c0h);
                uVar4 = auVar6._0_8_;
                *(int64_t *)(in_RAX + 0x98) = auVar6._8_8_;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar4 = runtime_gcWriteBarrier2();
                    *extraout_R11_01 = uVar4;
                    extraout_R11_01[1] = *(undefined8 *)(extraout_RCX_03 + 0x90);
                    iVar2 = extraout_RCX_03;
                }
                *(undefined8 *)(iVar2 + 0x90) = uVar4;
            }
            iVar2 = pkg_diapdu_locationForStationName(unaff_RBX, *(undefined8 *)(iVar2 + 0x90), *(undefined8 *)(iVar2 + 0x98));
            if (iVar2 == 0) {
                *(undefined8 *)(in_RAX + 0x30) = extraout_XMM0_Qa_02;
                *(undefined8 *)(in_RAX + 0x38) = in_XMM1_Qa;
            }
        }
        iVar2 = in_RAX;
        if (*(int64_t *)(in_RAX + 0x88) == 0) {
            dVar1 = *(double *)(in_RAX + 0x20);
            if (((((dVar1 != 0.0) || (NAN(dVar1))) || (*(double *)(in_RAX + 0x28) != 0.0)) ||
                (NAN(*(double *)(in_RAX + 0x28)))) &&
               (puVar3 = (undefined8 *)pkg_diapdu_closestNodeTo(dVar1, *(undefined8 *)(in_RAX + 0x28), unaff_RBX),
               puVar3 != (undefined8 *)0x0)) {
                uVar4 = *puVar3;
                *(undefined8 *)(in_RAX + 0x88) = puVar3[1];
                if (*(int32_t *)0x355db50 != 0) {
                    runtime_gcWriteBarrier2();
                    *extraout_R11_02 = uVar4;
                    extraout_R11_02[1] = *(undefined8 *)(extraout_RBX_03 + 0x80);
                    iVar2 = extraout_RBX_03;
                }
                *(undefined8 *)(iVar2 + 0x80) = uVar4;
            }
        }
        if (*(int64_t *)(iVar2 + 0x98) == 0) {
            dVar1 = *(double *)(iVar2 + 0x30);
            if ((((dVar1 != 0.0) || (NAN(dVar1))) ||
                ((*(double *)(iVar2 + 0x38) != 0.0 || (NAN(*(double *)(iVar2 + 0x38)))))) &&
               (puVar3 = (undefined8 *)pkg_diapdu_closestNodeTo(dVar1, *(undefined8 *)(iVar2 + 0x38), unaff_RBX),
               puVar3 != (undefined8 *)0x0)) {
                uVar4 = *puVar3;
                *(undefined8 *)(in_RAX + 0x98) = puVar3[1];
                if (*(int32_t *)0x355db50 != 0) {
                    uVar4 = runtime_gcWriteBarrier2();
                    *extraout_R11_03 = uVar4;
                    extraout_R11_03[1] = *(undefined8 *)(in_RAX + 0x90);
                }
                *(undefined8 *)(in_RAX + 0x90) = uVar4;
            }
        }
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.locationForStationName | VA 0xe301c0 | taskservice.go:270
   DWARF parameters and results: graph *CAS-Backend/pkg/diapdu.Graph, name string, ~r0 CAS-Backend/pkg/diapdu.Location, ~r1 error
   DWARF locals: loc CAS-Backend/pkg/diapdu.Location, node *CAS-Backend/pkg/diapdu.Node */
undefined8 __stdcall
pkg_diapdu_locationForStationName
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_68h, int64_t arg_80h)
{
    int64_t iVar1;
    undefined8 *puVar2;
    char cVar3;
    int64_t *in_RAX;
    int64_t iVar4;
    undefined8 uVar5;
    int64_t iVar6;
    undefined8 unaff_RBX;
    int64_t iVar7;
    int64_t unaff_R14;
    undefined auVar8 [16];
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    auVar8 = strings_TrimSpace(unaff_RBX, arg4);
    iVar4 = auVar8._0_8_;
    if (auVar8._8_8_ != 0) {
        if (in_RAX == (int64_t *)0x0) {
            uVar5 = fmt_Errorf(0x117a768 /* "地图未加载" */, 0xf, 0, 0, 0);
            return uVar5;
        }
        iVar7 = *in_RAX;
        iVar1 = in_RAX[1];
        iVar6 = 0;
        var_18h = iVar7;
        var_10h = iVar4;
        do {
            if (iVar1 <= iVar6) {
                var_20h = runtime_convTstring();
                var_28h = 0x1042920;
                uVar5 = fmt_Errorf(0x119852a /* "在地图中找不到名称是 %s 的节点" */, 0x2b, &var_28h, 1, 1);
                return uVar5;
            }
            puVar2 = *(undefined8 **)(iVar7 + iVar6 * 8);
            if (puVar2 != (undefined8 *)0x0) {
                if (auVar8._8_8_ == puVar2[1]) {
                    cVar3 = runtime_memequal(*puVar2, iVar4, puVar2[1]);
                    iVar4 = var_10h;
                    iVar7 = var_18h;
                } else {
                    cVar3 = '\0';
                }
                if (cVar3 != '\0') {
                    return 0;
                }
            }
            iVar6 = iVar6 + 1;
        } while( true );
    }
    uVar5 = fmt_Errorf(0x117a759 /* "站点名为空" */, 0xf, 0, 0, 0);
    return uVar5;
}

/* CAS-Backend/pkg/diapdu.parsePositionData | VA 0xe30360 | taskservice.go:301
   DWARF parameters and results: posStr string, ~r0 CAS-Backend/pkg/diapdu.PositionData, ~r0 CAS-Backend/pkg/diapdu.PositionData, ~r1 error
   DWARF locals: &pos *CAS-Backend/pkg/diapdu.PositionData, err error */
// WARNING: Variable defined which should be unmapped: var_18h
// WARNING: Variable defined which should be unmapped: var_60h
// WARNING: Variable defined which should be unmapped: var_8h

int64_t __stdcall
pkg_diapdu_parsePositionData(int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_30h)
{
    undefined8 in_RAX;
    int64_t iVar1;
    undefined8 uVar2;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t var_a8h;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
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
    
    while (&var_18h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe305cd;
        runtime_morestack_noctxt_abi0();
    }
    fcn.00478aeb();
    var_10h = runtime_newobject(in_stack_ffffffffffffff68);
    if (unaff_RBX != 0) {
        runtime_stringtoslicebyte(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                     in_stack_ffffffffffffff88);
        iVar1 = encoding_json_Unmarshal(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                             in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, var_60h);
        if (iVar1 != 0) {
            fcn.00478e4c(iVar1, in_RAX);
            return var_70h;
        }
        fcn.00478e4c(0, in_RAX);
        return var_70h;
    }
    uVar2 = fmt_Errorf(in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                         in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, var_18h);
    fcn.00478e4c(uVar2, 0x15);
    return var_70h;
}

/* CAS-Backend/pkg/diapdu.parseWaypointStations | VA 0xe305e0 | taskservice.go:319
   DWARF parameters and results: roadPoint string, ~r0 []string
   DWARF locals: out []string, p string */
int64_t __stdcall pkg_diapdu_parseWaypointStations(int64_t arg_8h, int64_t arg_10h, int64_t arg_60h)
{
    undefined8 *puVar1;
    int64_t extraout_RAX;
    undefined8 uVar2;
    uint64_t uVar3;
    uint64_t extraout_RCX;
    uint64_t extraout_RCX_00;
    int64_t iVar4;
    uint64_t uVar5;
    int64_t unaff_RBX;
    uint64_t extraout_RBX;
    int64_t extraout_RSI;
    int64_t iVar6;
    int64_t extraout_RDI;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar7 [16];
    undefined auVar8 [16];
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (unaff_RBX == 0) {
        return 0;
    }
    auVar7 = strings_genSplit();
    uVar3 = 0;
    iVar4 = 0;
    uVar5 = 0;
    while( true ) {
        puVar1 = auVar7._0_8_;
        if (auVar7._8_8_ < 1) break;
        auVar8 = strings_TrimSpace(*puVar1, puVar1[1]);
        uVar2 = auVar8._0_8_;
        if (auVar8._8_8_ != 0) {
            uVar5 = uVar5 + 1;
            if (uVar3 < uVar5) {
                runtime_growslice(iVar4, uVar5, uVar3, 1, 0x1042920);
                uVar3 = extraout_RCX;
                uVar5 = extraout_RBX;
                iVar4 = extraout_RAX;
            }
            iVar6 = (uVar5 - 1) * 0x10;
            *(int64_t *)(iVar4 + 8 + iVar6) = auVar8._8_8_;
            if (*(int32_t *)0x355db50 != 0) {
                uVar2 = runtime_gcWriteBarrier2();
                *extraout_R11 = uVar2;
                extraout_R11[1] = *(undefined8 *)(extraout_RSI + extraout_RDI);
                uVar3 = extraout_RCX_00;
                iVar4 = extraout_RSI;
                iVar6 = extraout_RDI;
            }
            *(undefined8 *)(iVar4 + iVar6) = uVar2;
        }
        auVar7._8_8_ = auVar7._8_8_ + -1;
        auVar7._0_8_ = puVar1 + 2;
    }
    return iVar4;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).scheduleLoop | VA 0xe30740 | taskservice.go:348
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler
   DWARF locals: ticker *time.Ticker */
// WARNING: Variable defined which should be unmapped: var_51h
// WARNING: Variable defined which should be unmapped: var_20h
// WARNING: [rz-ghidra] Detected overlap for variable var_50h
// WARNING: [rz-ghidra] Removing arg arg_3bh because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_edh
// WARNING: [rz-ghidra] Detected overlap for variable var_ebh
// WARNING: [rz-ghidra] Detected overlap for variable var_ech
// WARNING: [rz-ghidra] Detected overlap for variable var_eah
// WARNING: [rz-ghidra] Detected overlap for variable var_190h
// WARNING: [rz-ghidra] Detected overlap for variable var_192h

void __stdcall pkg_diapdu___TaskScheduler__scheduleLoop(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t iVar1;
    int64_t unaff_R14;
    int64_t in_stack_00000038;
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
    var_20h = 0xe30840;
    var_10h = (int64_t)&var_20h;
    var_51h._0_1_ = 1;
    var_18h = var_48h;
    while( true ) {
        var_30h = *(int64_t *)(in_RAX + 0x28);
        var_40h = *(int64_t *)var_48h;
        iVar1 = runtime_selectgo(in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                             in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0);
        if (iVar1 != 0) break;
        pkg_diapdu___TaskScheduler__processTasks(in_stack_ffffffffffffff78, var_20h, in_stack_00000038);
        pkg_diapdu___TaskScheduler__returnIdleVehiclesToDock(in_stack_ffffffffffffff78);
    }
    var_51h._0_1_ = 0;
    (**(code **)var_10h)(*(code **)var_10h, (int64_t)&var_51h + 1);
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).scheduleLoop.deferwrap1 | VA 0xe30840 | taskservice.go:350
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h

void __stdcall
pkg_diapdu___TaskScheduler__scheduleLoop_deferwrap1
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

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).planTaskPath | VA 0xe308a0 | taskservice.go:364
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, fl *CAS-Backend/pkg/diapdu.Forklift, task *CAS-Backend/pkg/diapdu.Task1, ~r0 *CAS-Backend/pkg/diapdu.TrafficPathResult, ~r1 bool
   DWARF locals: veh CAS-Backend/pkg/diapdu.Location, current string, d float64, n *CAS-Backend/pkg/diapdu.Node, dist float64, ok bool, path []string */
void __stdcall
pkg_diapdu___TaskScheduler__planTaskPath
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_88h, int64_t arg_a0h)
{
    undefined8 uVar1;
    int64_t in_RAX;
    undefined8 *puVar2;
    int64_t extraout_RAX;
    int64_t *piVar3;
    int64_t extraout_RCX;
    undefined8 uVar4;
    undefined8 *unaff_RBX;
    int64_t extraout_RBX;
    char extraout_DIL;
    undefined8 uVar5;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    int64_t extraout_XMM0_Qa;
    undefined8 uVar6;
    int64_t in_stack_ffffffffffffff70;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&var_10h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    uVar6 = unaff_RBX[5];
    uVar1 = unaff_RBX[6];
    if (*(int64_t *)(in_RAX + 0x40) == 0) {
        uVar6 = pkg_diapdu_StraightLineTaskDistance(uVar6, uVar1, *(undefined8 *)(arg4 + 0x20), *(undefined8 *)(arg4 + 0x28), 
                                *(undefined8 *)(arg4 + 0x30), *(undefined8 *)(arg4 + 0x38));
        puVar2 = (undefined8 *)runtime_newobject(in_stack_ffffffffffffff70);
        *puVar2 = 0;
        puVar2[3] = uVar6;
        return;
    }
    puVar2 = (undefined8 *)pkg_diapdu_closestNodeTo(*(int64_t *)(in_RAX + 0x40));
    if (puVar2 == (undefined8 *)0x0) {
        uVar5 = 0;
        uVar4 = 0;
    } else {
        uVar4 = *puVar2;
        uVar5 = puVar2[1];
    }
    pkg_diapdu___TaskScheduler__planStationTaskRoute(in_RAX, uVar4, uVar5, arg4, *unaff_RBX, unaff_RBX[1]);
    if ((extraout_DIL != '\0') && (1 < extraout_RBX)) {
        var_10h = extraout_RAX;
        piVar3 = (int64_t *)runtime_newobject(in_stack_ffffffffffffff70);
        piVar3[1] = extraout_RBX;
        piVar3[2] = extraout_RCX;
        if (*(int32_t *)0x355db50 != 0) {
            piVar3 = (int64_t *)runtime_gcWriteBarrier1();
            *extraout_R11 = var_10h;
        }
        *piVar3 = var_10h;
        piVar3[3] = extraout_XMM0_Qa;
        return;
    }
    pkg_diapdu_PlanTaskRoute(uVar6, uVar1, *(undefined8 *)(arg4 + 0x20), *(undefined8 *)(arg4 + 0x28), 
                    *(undefined8 *)(arg4 + 0x30), *(undefined8 *)(arg4 + 0x38), *(undefined8 *)(in_RAX + 0x40), 0, 
                    *unaff_RBX, unaff_RBX[1]);
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).planStationTaskRoute | VA 0xe30aa0 | taskservice.go:380
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, current string, task *CAS-Backend/pkg/diapdu.Task1, vehicleID string, ~r0 []string, ~r1 float64, ~r2 bool
   DWARF locals: d float64, ok bool, pickup string, dropoff string, seg []string, full []string, total float64, err error */
int64_t __stdcall
pkg_diapdu___TaskScheduler__planStationTaskRoute
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, undefined8 placeholder_5,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_50h)
{
    int64_t iVar1;
    uint8_t uVar2;
    char cVar3;
    int64_t in_RAX;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t extraout_RAX_01;
    undefined8 extraout_RAX_02;
    int64_t extraout_RAX_03;
    int64_t extraout_RAX_04;
    int64_t iVar5;
    int64_t extraout_RAX_05;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t extraout_RCX_03;
    int64_t extraout_RCX_04;
    int64_t extraout_RCX_05;
    int64_t iVar6;
    int64_t iVar7;
    undefined8 unaff_RBX;
    undefined8 extraout_RBX;
    uint64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    int64_t extraout_RBX_02;
    uint64_t uVar8;
    undefined8 extraout_RBX_03;
    uint64_t extraout_RBX_04;
    uint64_t uVar9;
    uint64_t extraout_RBX_05;
    char extraout_DIL;
    char extraout_DIL_00;
    int64_t extraout_RDI;
    int64_t unaff_R14;
    bool bVar10;
    undefined8 extraout_XMM0_Qa;
    undefined8 uVar11;
    undefined8 extraout_XMM0_Qa_00;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar12 [16];
    undefined auVar13 [16];
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
    undefined8 *puVar4;
    
    while (&var_50h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if ((*(int64_t *)(in_RAX + 0x40) == 0) || (arg1 == 0)) {
        return 0;
    }
    iVar7 = *(int64_t *)(arg1 + 0x88);
    var_18h = *(int64_t *)(arg1 + 0x90);
    if ((iVar7 == 0) || (iVar5 = *(int64_t *)(arg1 + 0x98), iVar5 == 0)) {
        return 0;
    }
    var_38h = *(int64_t *)(arg1 + 0x80);
    var_30h = 0;
    var_20h = in_XMM15_Qb;
    var_28h = in_XMM15_Qa;
    if (arg4 == 0) {
        uVar2 = 0;
    } else if (arg4 == iVar7) {
        uVar2 = runtime_memequal(unaff_RBX, var_38h);
        uVar2 = uVar2 ^ 1;
    } else {
        uVar2 = 1;
    }
    if (uVar2 == 0) {
code_r0x00e30f63:
        if (*(int64_t *)(arg1 + 0xe8) == 0) {
            auVar13 = pkg_diapdu_shortestPathOnGraph(0, *(undefined8 *)(in_RAX + 0x40), 0, arg2, arg5, var_38h, iVar7, var_18h, iVar5);
            uVar11 = extraout_XMM0_Qa_00;
            cVar3 = extraout_DIL_00;
        } else {
            pkg_diapdu_PlanStationPath(*(undefined8 *)(in_RAX + 0x40), var_38h, iVar7, var_18h, iVar5, *(undefined8 *)(arg1 + 0xe0)
                            , *(int64_t *)(arg1 + 0xe8), *(undefined8 *)(arg1 + 0xf0));
            if ((extraout_RDI != 0) || (extraout_RBX_02 < 2)) {
                return 0;
            }
            uVar11 = pkg_diapdu_graphPathDistance(*(undefined8 *)(in_RAX + 0x40), extraout_RAX_02, extraout_RBX_02, extraout_RCX_02);
            cVar3 = '\x01';
            auVar13 = ZEXT816(0);
        }
        uVar8 = auVar13._8_8_;
        var_48h = auVar13._0_8_;
        if (cVar3 != '\0') {
            bVar10 = (int64_t)(uVar8 - 2) < 0;
            if (1 < (int64_t)uVar8) {
                if (var_28h == 0) {
                    iVar7 = var_20h;
                    iVar5 = var_30h;
                    if ((uint64_t)var_20h < uVar8) {
                        runtime_growslice(var_30h, uVar8, var_20h, uVar8, 0x1042920);
                        auVar13._8_8_ = extraout_RBX_03;
                        auVar13._0_8_ = var_48h;
                        iVar7 = extraout_RCX_03;
                        iVar5 = extraout_RAX_03;
                    }
                    var_48h = auVar13._0_8_;
                    var_50h = iVar7;
                    var_10h = iVar5;
                    runtime_typedslicecopy(0x1042920, iVar5, auVar13._8_8_, var_48h, uVar8);
                    var_30h = var_10h;
                    bVar10 = (int64_t)(uVar8 - 2) < 0;
                } else {
                    iVar7 = (var_28h + -1) * 0x10;
                    if ((*(int64_t *)(var_48h + 8) == *(int64_t *)(iVar7 + 8 + var_30h)) &&
                       (cVar3 = runtime_memequal(*(undefined8 *)(iVar7 + var_30h), *(undefined8 *)var_48h),
                       iVar7 = var_28h, cVar3 != '\0')) {
                        uVar9 = (var_28h + uVar8) - 1;
                        var_50h = uVar8 - 1;
                        iVar5 = var_30h;
                        iVar6 = var_20h;
                        if ((uint64_t)var_20h < uVar9) {
                            runtime_growslice();
                            iVar5 = extraout_RAX_04;
                            iVar6 = extraout_RCX_04;
                            uVar9 = extraout_RBX_04;
                        }
                        iVar1 = var_50h;
                        var_50h = iVar6;
                        var_10h = iVar5;
                        runtime_typedslicecopy(0x1042920, iVar5 + (iVar7 << 4 & iVar7 - iVar6 >> 0x3f), uVar9 - iVar7, 
                                        var_48h + 0x10, iVar1);
                        var_30h = var_10h;
                        bVar10 = (int64_t)(uVar8 - 2) < 0;
                    } else {
                        uVar9 = uVar8 + var_28h;
                        iVar7 = var_20h;
                        iVar5 = var_28h;
                        iVar6 = var_30h;
                        if ((uint64_t)var_20h < uVar9) {
                            var_50h = var_28h;
                            runtime_growslice(uVar11, var_30h, uVar9, var_20h, uVar8, 0x1042920);
                            iVar7 = extraout_RCX_05;
                            iVar5 = var_50h;
                            uVar9 = extraout_RBX_05;
                            iVar6 = extraout_RAX_05;
                        }
                        var_50h = iVar7;
                        var_10h = iVar6;
                        runtime_typedslicecopy(0x1042920, iVar6 + (iVar5 << 4 & iVar5 - iVar7 >> 0x3f), uVar9 - iVar5, var_48h
                                        , uVar8);
                        var_30h = var_10h;
                        bVar10 = (int64_t)(uVar8 - 2) < 0;
                    }
                }
            }
            if (SBORROW8(uVar8, 2) == bVar10) {
                return var_30h;
            }
        }
        return 0;
    }
    auVar12 = pkg_diapdu_shortestPathOnGraph(0, *(undefined8 *)(in_RAX + 0x40), 0, arg2, arg5, unaff_RBX, arg4, var_38h);
    uVar8 = auVar12._8_8_;
    puVar4 = auVar12._0_8_;
    if (extraout_DIL != '\0') {
        bVar10 = (int64_t)(uVar8 - 2) < 0;
        if (1 < (int64_t)uVar8) {
            var_40h = (int64_t)puVar4;
            if (var_28h == 0) {
                var_10h = var_30h;
                if ((uint64_t)var_20h < uVar8) {
                    runtime_growslice(var_30h, uVar8, var_20h, uVar8, 0x1042920);
                    auVar12._8_8_ = extraout_RBX;
                    auVar12._0_8_ = var_40h;
                    var_20h = extraout_RCX;
                    var_10h = extraout_RAX;
                }
                var_40h = auVar12._0_8_;
                var_50h = var_20h;
                runtime_typedslicecopy(0x1042920, var_10h, auVar12._8_8_, var_40h, uVar8);
                var_20h = var_50h;
                bVar10 = (int64_t)(uVar8 - 2) < 0;
                var_30h = var_10h;
                var_28h = auVar12._8_8_;
            } else {
                iVar6 = (var_28h + -1) * 0x10;
                if ((puVar4[1] == *(int64_t *)(iVar6 + 8 + var_30h)) &&
                   (cVar3 = runtime_memequal(*(undefined8 *)(iVar6 + var_30h), *puVar4), cVar3 != '\0')) {
                    uVar9 = (var_28h + uVar8) - 1;
                    var_50h = uVar8 - 1;
                    var_10h = var_30h;
                    if ((uint64_t)var_20h < uVar9) {
                        runtime_growslice();
                        var_10h = extraout_RAX_00;
                        var_20h = extraout_RCX_00;
                        uVar9 = extraout_RBX_00;
                    }
                    iVar6 = var_50h;
                    var_50h = uVar9;
                    runtime_typedslicecopy(0x1042920, var_10h + (var_28h << 4 & var_28h - var_20h >> 0x3f), uVar9 - var_28h, 
                                    var_40h + 0x10, iVar6);
                    var_28h = var_50h;
                    bVar10 = (int64_t)(uVar8 - 2) < 0;
                    var_30h = var_10h;
                } else {
                    uVar9 = uVar8 + var_28h;
                    var_10h = var_30h;
                    if ((uint64_t)var_20h < uVar9) {
                        var_50h = var_28h;
                        runtime_growslice(extraout_XMM0_Qa, var_30h, uVar9, var_20h, uVar8, 0x1042920);
                        var_20h = extraout_RCX_01;
                        var_28h = var_50h;
                        uVar9 = extraout_RBX_01;
                        var_10h = extraout_RAX_01;
                    }
                    var_50h = var_20h;
                    runtime_typedslicecopy(0x1042920, var_10h + (var_28h << 4 & var_28h - var_20h >> 0x3f), uVar9 - var_28h, 
                                    var_40h, uVar8);
                    var_20h = var_50h;
                    bVar10 = (int64_t)(uVar8 - 2) < 0;
                    var_30h = var_10h;
                    var_28h = uVar9;
                }
            }
        }
        if (SBORROW8(uVar8, 2) == bVar10) goto code_r0x00e30f63;
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).hasPendingTasks | VA 0xe313c0 | taskservice.go:430
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, ~r0 bool, ~r0 bool
   DWARF locals: (no entries) */
// WARNING: Restarted to delay deadcode elimination for space: stack
// WARNING: [rz-ghidra] Detected overlap for variable var_32h
// WARNING: [rz-ghidra] Detected overlap for variable var_30h
// WARNING: [rz-ghidra] Detected overlap for variable var_2bh
// WARNING: [rz-ghidra] Detected overlap for variable var_28h
// WARNING: [rz-ghidra] Detected overlap for variable var_1ch
// WARNING: [rz-ghidra] Detected overlap for variable var_29h
// WARNING: [rz-ghidra] Detected overlap for variable var_20h
// WARNING: [rz-ghidra] Detected overlap for variable var_24h

bool __stdcall pkg_diapdu___TaskScheduler__hasPendingTasks(int64_t arg_8h, int64_t arg_30h)
{
    int64_t iVar1;
    int64_t iVar2;
    int64_t in_RAX;
    int64_t unaff_R14;
    bool bVar3;
    int64_t in_stack_ffffffffffffffc0;
    int64_t var_31h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    iVar1 = in_RAX + 0x20;
    LOCK();
    bVar3 = *(int32_t *)(in_RAX + 0x20) == 0;
    if (bVar3) {
        *(int32_t *)(in_RAX + 0x20) = 1;
    }
    UNLOCK();
    if (!bVar3) {
        var_18h = in_RAX;
        sync___Mutex__lockSlow(in_stack_ffffffffffffffc0);
        in_RAX = var_18h;
    }
    var_28h = 0xe314a0;
    var_10h = (int64_t)&var_28h;
    iVar2 = *(int64_t *)(in_RAX + 0x10);
    var_20h = iVar1;
    (*(code *)0xe314a0)();
    return iVar2 != 0;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).hasPendingTasks.deferwrap1 | VA 0xe314a0 | taskservice.go:432
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TaskScheduler__hasPendingTasks_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).returnIdleVehiclesToDock | VA 0xe31500 | taskservice.go:437
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler
   DWARF locals: fl *CAS-Backend/pkg/diapdu.Forklift, st string, err error */
void __stdcall pkg_diapdu___TaskScheduler__returnIdleVehiclesToDock(int64_t arg_8h)
{
    undefined8 *puVar1;
    char cVar2;
    int64_t *in_RAX;
    undefined8 extraout_RAX;
    int16_t *piVar3;
    undefined8 extraout_RCX;
    int64_t iVar4;
    int64_t extraout_RCX_00;
    undefined8 extraout_RBX;
    int64_t iVar5;
    int64_t unaff_R14;
    bool bVar6;
    undefined auVar7 [16];
    undefined auVar8 [16];
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
    
    while (&var_10h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (((in_RAX != (int64_t *)0x0) && (*in_RAX != 0)) && (cVar2 = pkg_diapdu___TaskScheduler__hasPendingTasks(), cVar2 == '\0')) {
        pkg_diapdu___ForkliftUpdater__GetAllForklifts(*in_RAX);
        auVar7 = pkg_diapdu___TaskScheduler__getIdleForklifts(in_RAX, extraout_RAX, extraout_RBX, extraout_RCX);
        for (iVar4 = 0; iVar4 < auVar7._8_8_; iVar4 = iVar4 + 1) {
            puVar1 = *(undefined8 **)(auVar7._0_8_ + iVar4 * 8);
            if ((puVar1 != (undefined8 *)0x0) &&
               (pkg_diapdu_currentStationForVehicle(*puVar1, puVar1[1], puVar1[7], puVar1[8]), extraout_RCX_00 == 0)) {
                auVar8 = strings_TrimSpace();
                iVar5 = auVar8._8_8_;
                piVar3 = auVar8._0_8_;
                pkg_diapdu___TaskScheduler__syncVehicleDockFromRuntime(in_RAX, *puVar1, puVar1[1], piVar3, iVar5);
                if (iVar5 == 0) {
                    bVar6 = false;
                } else if (iVar5 < 2) {
                    bVar6 = false;
                } else {
                    bVar6 = *piVar3 == 0x5050;
                }
                if (!bVar6) {
                    var_20h = runtime_convTstring(*puVar1, puVar1[1]);
                    var_28h = 0x1042920;
                    var_10h = runtime_convTstring(piVar3, iVar5);
                    var_18h = 0x1042920;
                    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a2e3f, 0x3c, &var_28h, 2, 2);
                    pkg_diapdu___TaskScheduler__moveForkliftToNearestPPDock(in_RAX, *puVar1, puVar1[1]);
                }
            }
        }
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).processTasks | VA 0xe31720 | taskservice.go:459
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler
   DWARF locals: allForklifts []*CAS-Backend/pkg/diapdu.Forklift, idleForklifts []*CAS-Backend/pkg/diapdu.Forklift, idleNames []string, f *CAS-Backend/pkg/diapdu.Forklift, blockEnd int, topP CAS-Backend/pkg/diapdu.TaskPriority, assignedAny bool, nextQueue []*CAS-Backend/pkg/diapdu.Task1, task *CAS-Backend/pkg/diapdu.Task1, fl *CAS-Backend/pkg/diapdu.Forklift, bestTI int, bestFI int, bestPath *CAS-Backend/pkg/diapdu.TrafficPathResult, bestDist float64, ti int, fi int, path *CAS-Backend/pkg/diapdu.TrafficPathResult, ok bool, err error, i int, t *CAS-Backend/pkg/diapdu.Task1 */
// WARNING: [rz-ghidra] Detected overlap for variable var_190h
// WARNING: [rz-ghidra] Detected overlap for variable var_192h

void __stdcall pkg_diapdu___TaskScheduler__processTasks(int64_t arg_8h, int64_t arg_70h, int64_t arg_c8h)
{
    int32_t *piVar1;
    int32_t iVar2;
    int64_t *piVar3;
    uint64_t uVar4;
    uint8_t uVar5;
    undefined8 *in_RAX;
    undefined8 extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t iVar6;
    int64_t extraout_RAX_01;
    int64_t extraout_RAX_02;
    int64_t extraout_RAX_03;
    int64_t extraout_RAX_04;
    int64_t extraout_RAX_05;
    int64_t extraout_RAX_06;
    int64_t extraout_RAX_07;
    int64_t extraout_RAX_08;
    undefined8 extraout_RCX;
    undefined8 *extraout_RCX_00;
    undefined8 *extraout_RCX_01;
    undefined8 *extraout_RCX_02;
    uint64_t extraout_RCX_03;
    undefined8 *extraout_RCX_04;
    undefined8 *puVar7;
    undefined8 *extraout_RCX_05;
    undefined8 *extraout_RCX_06;
    undefined8 *extraout_RCX_07;
    uint64_t extraout_RCX_08;
    undefined8 *extraout_RCX_09;
    undefined8 *puVar8;
    undefined8 *extraout_RCX_10;
    uint64_t extraout_RCX_11;
    int64_t iVar9;
    undefined8 *puVar10;
    char extraout_BL;
    undefined8 extraout_RBX;
    undefined8 *extraout_RBX_00;
    undefined8 *extraout_RBX_01;
    undefined8 *extraout_RBX_02;
    uint64_t extraout_RBX_03;
    undefined8 *extraout_RBX_04;
    undefined8 *puVar11;
    undefined8 *extraout_RBX_05;
    undefined8 *extraout_RBX_06;
    uint64_t extraout_RBX_07;
    undefined8 *extraout_RBX_08;
    undefined8 *puVar12;
    undefined8 *extraout_RBX_09;
    undefined8 *extraout_RBX_10;
    undefined8 *extraout_RBX_11;
    int64_t iVar13;
    int64_t extraout_RSI;
    uint64_t uVar14;
    int64_t iVar15;
    int64_t extraout_RSI_00;
    uint64_t extraout_RSI_01;
    uint64_t uVar16;
    uint64_t extraout_RSI_02;
    char extraout_DIL;
    char cVar17;
    int64_t extraout_RDI;
    undefined8 uVar18;
    undefined8 *extraout_RDI_00;
    undefined8 extraout_RDI_01;
    undefined8 uVar19;
    undefined8 extraout_RDI_02;
    undefined8 *extraout_R8;
    int64_t extraout_R8_00;
    int64_t extraout_R8_01;
    uint64_t uVar20;
    uint64_t extraout_R8_02;
    undefined8 *extraout_R9;
    uint64_t uVar21;
    int64_t iVar22;
    int64_t extraout_R9_00;
    uint64_t extraout_R9_01;
    uint64_t extraout_R9_02;
    uint64_t extraout_R9_03;
    int64_t extraout_R10;
    uint64_t uVar23;
    int64_t extraout_R10_00;
    int64_t extraout_R10_01;
    int64_t extraout_R10_02;
    int64_t iVar24;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *puVar25;
    int64_t unaff_R14;
    bool bVar26;
    double extraout_XMM0_Qa;
    double extraout_XMM0_Qa_00;
    double dVar27;
    undefined auVar28 [16];
    int64_t in_stack_fffffffffffffe28;
    int64_t in_stack_fffffffffffffe30;
    int64_t in_stack_fffffffffffffe50;
    int64_t var_191h;
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
    
    while (&var_158h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_f0h = (int64_t)(in_RAX + 4);
    LOCK();
    bVar26 = *(int32_t *)(in_RAX + 4) == 0;
    if (bVar26) {
        *(int32_t *)(in_RAX + 4) = 1;
    }
    UNLOCK();
    if (!bVar26) {
        sync___Mutex__lockSlow(var_f0h);
    }
    if (in_RAX[2] == 0) {
        LOCK();
        piVar1 = (int32_t *)(in_RAX + 4);
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar2 != 1) {
            sync___Mutex__unlockSlow(in_stack_fffffffffffffe28, in_stack_fffffffffffffe30, in_stack_fffffffffffffe50);
        }
        pkg_diapdu___TaskScheduler__returnIdleVehiclesToDock(in_stack_fffffffffffffe28);
        return;
    }
    LOCK();
    piVar1 = (int32_t *)(in_RAX + 4);
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 != 1) {
        sync___Mutex__unlockSlow(in_stack_fffffffffffffe28, in_stack_fffffffffffffe30, in_stack_fffffffffffffe50);
    }
    pkg_diapdu___ForkliftUpdater__GetAllForklifts(*in_RAX);
    pkg_diapdu___TaskScheduler__getIdleForklifts(in_RAX, extraout_RAX, extraout_RBX, extraout_RCX);
    if (extraout_RBX_00 == (undefined8 *)0x0) {
        var_b0h = 0x1042920;
        var_a8h = 0x2e67e50 /* "没有空闲叉车，等待中..." */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_b0h, 1, 1);
        return;
    }
    var_e8h = extraout_RAX_00;
    iVar6 = runtime_makeslice(0x1042920, 0, extraout_RBX_00);
    puVar11 = (undefined8 *)0x0;
    puVar7 = extraout_RBX_00;
    iVar9 = var_e8h;
    puVar8 = extraout_RBX_00;
    for (iVar13 = 0; iVar13 < (int64_t)puVar8; iVar13 = iVar13 + 1) {
        piVar3 = *(int64_t **)(iVar9 + iVar13 * 8);
        puVar11 = (undefined8 *)((int64_t)puVar11 + 1);
        iVar15 = *piVar3;
        iVar22 = piVar3[1];
        if (puVar7 < puVar11) {
            var_120h = iVar22;
            var_118h = iVar13;
            var_88h = iVar15;
            runtime_growslice(iVar6, puVar11, puVar7, 1, 0x1042920);
            iVar6 = extraout_RAX_01;
            puVar7 = extraout_RCX_01;
            iVar9 = var_e8h;
            puVar8 = extraout_RBX_00;
            iVar13 = var_118h;
            iVar22 = var_120h;
            puVar11 = extraout_RBX_01;
            iVar15 = var_88h;
        }
        iVar24 = ((int64_t)puVar11 - 1U) * 0x10;
        *(int64_t *)(iVar6 + 8 + iVar24) = iVar22;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11 = extraout_R10;
            extraout_R11[1] = *(int64_t *)(extraout_RAX_02 + extraout_RDI);
            iVar6 = extraout_RAX_02;
            puVar7 = extraout_RCX_02;
            puVar8 = extraout_RBX_02;
            iVar13 = extraout_RSI;
            puVar11 = extraout_R9;
            iVar15 = extraout_R10;
            iVar24 = extraout_RDI;
        }
        *(int64_t *)(iVar6 + iVar24) = iVar15;
    }
    var_b8h = runtime_convTslice(iVar6, puVar11);
    var_c0h = 0x1038980;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1193be9 /* "[自动调度] 本轮空闲车辆: %v\n" */, 0x26, &var_c0h, 1, 1);
    LOCK();
    bVar26 = *(int32_t *)(in_RAX + 4) == 0;
    if (bVar26) {
        *(int32_t *)(in_RAX + 4) = 1;
    }
    UNLOCK();
    if (!bVar26) {
        sync___Mutex__lockSlow(var_f0h);
    }
    var_d0h = 0xe32500;
    var_c8h = var_f0h;
    var_10h = (int64_t)&var_d0h;
    iVar6 = var_e8h;
    puVar7 = extraout_RCX_00;
    puVar11 = extraout_RBX_00;
code_r0x00e31a20:
    if (in_RAX[2] == 0) {
code_r0x00e31b91:
        (**(code **)var_10h)();
        return;
    }
    iVar9 = *(int64_t *)(*(int64_t *)in_RAX[1] + 0x18);
    uVar14 = 0;
    while (((int64_t)uVar14 < (int64_t)in_RAX[2] && (*(int64_t *)(((int64_t *)in_RAX[1])[uVar14] + 0x18) == iVar9))) {
        uVar14 = uVar14 + 1;
    }
    uVar18 = 0;
    var_e8h = iVar6;
code_r0x00e31c44:
    iVar6 = var_e8h;
    puVar8 = puVar7;
    puVar12 = puVar11;
    uVar16 = uVar14;
    uVar19 = uVar18;
    iVar13 = iVar9;
    if (puVar11 == (undefined8 *)0x0) goto code_r0x00e31a4b;
    uVar20 = 0;
    uVar21 = 0xffffffffffffffff;
    iVar15 = 0;
    puVar25 = (undefined8 *)0xffffffffffffffff;
    dVar27 = *(double *)0x2e678a0;
    do {
        var_150h = (int64_t)puVar25;
        var_158h = uVar21;
        var_148h = (int64_t)dVar27;
        var_d8h = iVar15;
        if ((int64_t)uVar20 < (int64_t)uVar16) {
            if ((uint64_t)in_RAX[2] <= uVar20) {
                runtime_panicIndex(uVar20, puVar12, in_RAX[2]);
                runtime_deferreturn();
                return;
            }
            var_108h = *(int64_t *)(in_RAX[1] + uVar20 * 8);
            var_118h = uVar20;
            if (var_108h == 0) {
                uVar5 = 1;
            } else {
                uVar5 = pkg_diapdu_taskDispatchReady(var_108h);
                uVar5 = uVar5 ^ 1;
                iVar6 = var_e8h;
                puVar8 = puVar7;
                puVar12 = puVar11;
                uVar16 = uVar14;
                uVar19 = uVar18;
                iVar13 = iVar9;
            }
            iVar22 = var_118h;
            uVar21 = var_158h;
            iVar15 = var_d8h;
            dVar27 = (double)var_148h;
            if (uVar5 == 0) {
                iVar24 = 0;
                goto code_r0x00e32412;
            }
        } else {
            if ((int64_t)uVar21 < 0) {
code_r0x00e31a4b:
                uVar21 = 0;
                uVar20 = 0;
                iVar15 = 0;
                for (iVar22 = 0; (iVar22 < (int64_t)uVar16 && (iVar22 < (int64_t)in_RAX[2])); iVar22 = iVar22 + 1) {
                    var_100h = *(int64_t *)(in_RAX[1] + iVar22 * 8);
                    var_f8h = iVar15;
                    if (var_100h == 0) {
                        uVar5 = 0;
                    } else if (*(int64_t *)(var_100h + 0x18) == iVar13) {
                        uVar5 = pkg_diapdu_taskDispatchReady(var_100h);
                        uVar5 = uVar5 ^ 1;
                        iVar6 = var_e8h;
                        puVar8 = puVar7;
                        puVar12 = puVar11;
                        uVar16 = uVar14;
                        uVar19 = uVar18;
                        iVar13 = iVar9;
                    } else {
                        uVar5 = 0;
                    }
                    if (uVar5 == 0) {
                        uVar20 = uVar20 + 1;
                        iVar15 = var_f8h;
                        if (uVar21 < uVar20) {
                            runtime_growslice(var_f8h, uVar20, uVar21, 1, 0x10240a0);
                            iVar6 = var_e8h;
                            puVar8 = puVar7;
                            puVar12 = puVar11;
                            uVar16 = uVar14;
                            uVar19 = uVar18;
                            uVar21 = extraout_RCX_08;
                            iVar13 = iVar9;
                            uVar20 = extraout_RBX_07;
                            iVar15 = extraout_RAX_07;
                        }
                        iVar24 = var_100h;
                        if (*(int32_t *)0x355db50 != 0) {
                            runtime_gcWriteBarrier2();
                            *extraout_R11_02 = iVar24;
                            extraout_R11_02[1] = *(int64_t *)(iVar15 + -8 + uVar20 * 8);
                            iVar6 = var_e8h;
                            puVar8 = extraout_RCX_09;
                            puVar12 = extraout_RBX_08;
                            uVar16 = extraout_RSI_01;
                            uVar19 = extraout_RDI_01;
                            iVar22 = extraout_R8_00;
                            uVar21 = extraout_R9_01;
                            iVar13 = extraout_R10_01;
                        }
                        *(int64_t *)(iVar15 + -8 + uVar20 * 8) = iVar24;
                    } else {
                        var_68h = runtime_convT64(*(undefined8 *)var_100h);
                        var_70h = 0x1042b60;
                        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11aa137, 0x60, &var_70h, 1, 1);
                        iVar6 = var_e8h;
                        puVar8 = puVar7;
                        puVar12 = puVar11;
                        uVar16 = uVar14;
                        uVar19 = uVar18;
                        iVar13 = iVar9;
                        iVar15 = var_f8h;
                    }
                }
                uVar4 = in_RAX[2];
                uVar23 = uVar20;
                cVar17 = (char)uVar19;
                if ((int64_t)uVar16 < (int64_t)uVar4) {
                    if (uVar4 < uVar16) {
                        runtime_panicSliceB(uVar16, puVar12, uVar4);
                        iVar6 = extraout_RAX_08;
                        puVar8 = extraout_RCX_10;
                        puVar12 = extraout_RBX_09;
                        uVar16 = extraout_RSI_02;
                        uVar19 = extraout_RDI_02;
                        iVar22 = extraout_R8_01;
                        uVar21 = extraout_R9_02;
                        iVar13 = extraout_R10_02;
                        var_150h = (int64_t)extraout_R11_03;
                        dVar27 = extraout_XMM0_Qa;
                        goto code_r0x00e32245;
                    }
                    var_118h = uVar4 - uVar16;
                    uVar23 = uVar20 + var_118h;
                    var_90h = in_RAX[1] + (uVar14 << 3 & (int64_t)(uVar16 - in_RAX[3]) >> 0x3f);
                    if (uVar21 < uVar23) {
                        runtime_growslice(iVar15, uVar23, uVar21, var_118h, 0x10240a0);
                        uVar21 = extraout_RCX_03;
                        uVar23 = extraout_RBX_03;
                        iVar15 = extraout_RAX_03;
                    }
                    iVar6 = var_118h;
                    var_118h = uVar21;
                    iVar13 = var_90h;
                    var_90h = iVar15;
                    runtime_typedslicecopy(0x10240a0, iVar15 + ((int64_t)(uVar20 - uVar21) >> 0x3f & uVar20 << 3), 
                                    uVar23 - uVar20, iVar13, iVar6);
                    iVar6 = var_e8h;
                    puVar8 = puVar7;
                    puVar12 = puVar11;
                    uVar21 = var_118h;
                    iVar13 = iVar9;
                    iVar15 = var_90h;
                    cVar17 = (char)uVar18;
                }
                in_RAX[2] = uVar23;
                in_RAX[3] = uVar21;
                if (*(int32_t *)0x355db50 != 0) {
                    runtime_gcWriteBarrier2();
                    *extraout_R11_00 = iVar15;
                    extraout_R11_00[1] = in_RAX[1];
                    iVar6 = extraout_RAX_04;
                    puVar8 = extraout_RCX_04;
                    puVar12 = extraout_RBX_04;
                    iVar13 = extraout_R10_00;
                    cVar17 = extraout_DIL;
                }
                in_RAX[1] = iVar15;
                puVar7 = puVar8;
                puVar11 = puVar12;
                if (cVar17 != '\0') goto code_r0x00e31a20;
                var_78h = runtime_convT64(iVar13);
                var_80h = 0x10424e0;
                fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a9fbf /* "调度: 优先级 %d 的任务当前无可用拓扑路径或无空闲车辆，等待下一轮\n" */, 0x5e, &var_80h, 1, 1);
                goto code_r0x00e31b91;
            }
            uVar16 = in_RAX[2];
            puVar10 = in_RAX;
            if (uVar21 < uVar16) {
                puVar8 = *(undefined8 **)(in_RAX[1] + uVar21 * 8);
                if (puVar25 < puVar12) {
                    var_e0h = *(int64_t *)(iVar6 + (int64_t)puVar25 * 8);
                    var_110h = (int64_t)puVar8;
                    var_48h = runtime_convT64(*puVar8);
                    var_50h = 0x1042b60;
                    var_38h = runtime_convT64(*(undefined8 *)(var_110h + 0x18));
                    var_40h = 0x1042b60;
                    var_28h = runtime_convTstring(*(undefined8 *)(var_e0h + 0x10), *(undefined8 *)(var_e0h + 0x18));
                    var_30h = 0x1042920;
                    var_18h = runtime_convTstring(*(undefined8 *)var_e0h, *(undefined8 *)(var_e0h + 8));
                    var_20h = 0x1042920;
                    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a4c34, 0x40, &var_50h, 4, 4);
                    auVar28 = pkg_diapdu___TaskScheduler__assignTask(var_148h, in_RAX, var_110h, var_e0h, var_d8h);
                    if (auVar28._0_8_ != 0) {
                        var_60h = *(int64_t *)(auVar28._0_8_ + 8);
                        var_58h = auVar28._8_8_;
                        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183620 /* "分配任务失败: %v\n" */, 0x17, &var_60h, 1, 1);
                        iVar6 = var_e8h;
                        puVar8 = puVar7;
                        puVar12 = puVar11;
                        uVar16 = uVar14;
                        uVar19 = uVar18;
                        iVar13 = iVar9;
                        goto code_r0x00e31a4b;
                    }
                    puVar10 = (undefined8 *)in_RAX[3];
                    if ((uint64_t)var_158h <= puVar10) {
                        uVar21 = in_RAX[2];
                        uVar16 = var_158h + 1;
                        if (uVar16 <= uVar21) break;
                        runtime_panicSliceB(uVar16, uVar21, uVar21);
                    }
                    runtime_panicSliceAcap();
                    puVar12 = extraout_RBX_10;
                    puVar25 = extraout_R11_04;
                }
                runtime_panicIndex(puVar25, puVar12, puVar12);
                puVar12 = extraout_RBX_11;
                uVar16 = extraout_R8_02;
                uVar21 = extraout_R9_03;
            }
            iVar15 = runtime_panicIndex(uVar21, puVar12, uVar16);
            uVar21 = extraout_RCX_11;
            dVar27 = extraout_XMM0_Qa_00;
            while( true ) {
                iVar24 = var_150h + 1;
                iVar6 = var_e8h;
                puVar8 = puVar7;
                puVar12 = puVar11;
                uVar16 = uVar14;
                uVar19 = uVar18;
                iVar13 = iVar9;
                var_150h = (int64_t)puVar10;
code_r0x00e32412:
                iVar22 = var_118h;
                if ((int64_t)puVar12 <= iVar24) break;
                var_138h = var_150h;
                var_150h = iVar24;
                var_140h = uVar21;
                var_130h = (int64_t)dVar27;
                var_a0h = iVar15;
                iVar6 = pkg_diapdu___TaskScheduler__planTaskPath(in_RAX, *(undefined8 *)(iVar6 + iVar24 * 8), var_108h);
                iVar15 = var_a0h;
                uVar21 = var_140h;
                puVar10 = (undefined8 *)var_138h;
                dVar27 = (double)var_130h;
                if (((extraout_BL != '\0') && (iVar6 != 0)) && (*(double *)(iVar6 + 0x18) < (double)var_130h)) {
                    iVar15 = iVar6;
                    uVar21 = var_118h;
                    puVar10 = (undefined8 *)var_150h;
                    dVar27 = *(double *)(iVar6 + 0x18);
                }
            }
        }
code_r0x00e32245:
        uVar20 = iVar22 + 1;
        puVar25 = (undefined8 *)var_150h;
    } while( true );
    puVar8 = (undefined8 *)(uVar21 - 1);
    iVar6 = in_RAX[1];
    iVar13 = uVar21 - var_158h;
    var_90h = iVar6 + (uVar16 * 8 & -((int64_t)puVar10 + (-1 - var_158h)) >> 0x3f);
    var_118h = iVar13 + -1;
    var_120h = uVar21;
    if (puVar10 < puVar8) {
        var_128h = iVar13;
        runtime_growslice(iVar6, puVar8, puVar10, var_118h, 0x10240a0);
        iVar13 = var_128h;
        puVar8 = extraout_RBX_05;
        iVar6 = extraout_RAX_05;
        puVar10 = extraout_RCX_05;
    }
    iVar13 = var_120h - iVar13;
    var_120h = (int64_t)puVar10;
    iVar15 = var_118h;
    var_118h = (int64_t)puVar8;
    iVar22 = var_90h;
    var_90h = iVar6;
    runtime_typedslicecopy(0x10240a0, iVar6 + (iVar13 * 8 & iVar13 - (int64_t)puVar10 >> 0x3f), (int64_t)puVar8 - iVar13, 
                    iVar22, iVar15);
    iVar6 = var_150h;
    in_RAX[2] = var_118h;
    in_RAX[3] = var_120h;
    iVar15 = (int64_t)puVar11 - var_150h;
    iVar22 = (-((int64_t)puVar7 + (-1 - var_150h)) >> 0x3f & (var_150h + 1) * 8) + var_e8h;
    iVar13 = var_e8h;
    puVar8 = in_RAX;
    if (*(int32_t *)0x355db50 != 0) {
        iVar13 = runtime_gcWriteBarrier2();
        *extraout_R11_01 = var_90h;
        extraout_R11_01[1] = extraout_R8[1];
        puVar7 = extraout_RCX_06;
        iVar15 = extraout_RSI_00;
        puVar11 = extraout_RDI_00;
        puVar8 = extraout_R8;
        iVar22 = extraout_R9_00;
    }
    puVar8[1] = var_90h;
    puVar11 = (undefined8 *)((int64_t)puVar11 - 1);
    iVar24 = iVar15 + -1;
    if (puVar7 < puVar11) {
        var_118h = iVar15 + -1;
        var_98h = iVar22;
        runtime_growslice();
        iVar13 = extraout_RAX_06;
        puVar7 = extraout_RCX_07;
        iVar6 = var_150h;
        puVar11 = extraout_RBX_06;
        iVar24 = var_118h;
        iVar22 = var_98h;
    }
    var_e8h = iVar13;
    runtime_typedslicecopy(0x1023fa0, (iVar6 - (int64_t)puVar7 >> 0x3f & iVar6 << 3) + iVar13, (int64_t)puVar11 - iVar6, iVar22
                    , iVar24);
    uVar14 = uVar14 - 1;
    uVar18 = 1;
    goto code_r0x00e31c44;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).processTasks.deferwrap1 | VA 0xe32500 | taskservice.go:482
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu___TaskScheduler__processTasks_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.taskDispatchReady | VA 0xe32560 | taskservice.go:557
   DWARF parameters and results: task *CAS-Backend/pkg/diapdu.Task1, ~r0 bool
   DWARF locals: err1 error, err2 error, start CAS-Backend/pkg/agvcontrol.ForkliftTask, end CAS-Backend/pkg/agvcontrol.ForkliftTask */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_3b0h because it doesn't fit into ProtoModel

uint64_t __stdcall pkg_diapdu_taskDispatchReady(int64_t arg_8h)
{
    int64_t in_RAX;
    int64_t iVar1;
    undefined8 extraout_RCX;
    uint64_t uVar2;
    undefined8 extraout_RCX_00;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    int64_t extraout_RBX_02;
    int64_t extraout_RBX_03;
    int64_t extraout_RBX_04;
    int64_t extraout_RBX_05;
    int64_t unaff_R14;
    bool bVar3;
    int64_t var_3b0h;
    undefined auStack_320 [112];
    int64_t var_2b0h;
    int64_t var_2a8h;
    int64_t var_2a0h;
    int64_t var_298h;
    int64_t var_290h;
    int64_t var_1c8h;
    int64_t var_1c0h;
    int64_t var_1b8h;
    int64_t var_1b0h;
    int64_t var_e8h;
    int64_t var_8h;
    
    while (auStack_320 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe327b0;
        runtime_morestack_noctxt_abi0();
    }
    if (in_RAX != 0) {
        iVar1 = runtime_duffzero_offset_285();
        var_2b0h = pkg_diapdu_ParseForkliftTaskJSON(*(undefined8 *)(iVar1 + 0xa0), *(undefined8 *)(iVar1 + 0xa8));
        runtime_duffcopy_offset_700();
        runtime_duffcopy_offset_700();
        runtime_duffzero_offset_285();
        pkg_diapdu_ParseForkliftTaskJSON(*(undefined8 *)(in_RAX + 0xb0), *(undefined8 *)(in_RAX + 0xb8));
        runtime_duffcopy_offset_700();
        iVar1 = runtime_duffcopy_offset_700();
        if ((var_2b0h == 0) && (iVar1 == 0)) {
            strings_TrimSpace(var_298h, var_290h);
            if (extraout_RBX == 0) {
                strings_TrimSpace(var_2a8h, var_2a0h);
                if (extraout_RBX_00 == 0) {
                    uVar2 = 0;
                } else {
                    strings_TrimSpace(var_1b8h, var_1b0h);
                    uVar2 = CONCAT71((unkint7)((uint64_t)extraout_RCX >> 8), extraout_RBX_01 != 0);
                }
                return uVar2 & 0xffffffff;
            }
            strings_TrimSpace(var_2a8h, var_2a0h);
            if (extraout_RBX_02 == 0) {
                bVar3 = false;
            } else {
                strings_TrimSpace(var_298h, var_290h);
                bVar3 = extraout_RBX_03 != 0;
            }
            if (bVar3) {
                strings_TrimSpace(var_1c8h, var_1c0h);
                if (extraout_RBX_04 == 0) {
                    uVar2 = 0;
                } else {
                    strings_TrimSpace(var_1b8h, var_1b0h);
                    uVar2 = CONCAT71((unkint7)((uint64_t)extraout_RCX_00 >> 8), extraout_RBX_05 != 0);
                }
            } else {
                uVar2 = 0;
            }
            return uVar2 & 0xffffffff;
        }
        return 0;
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).getIdleForklifts | VA 0xe327c0 | taskservice.go:575
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, forklifts []*CAS-Backend/pkg/diapdu.Forklift, ~r0 []*CAS-Backend/pkg/diapdu.Forklift
   DWARF locals: idle []*CAS-Backend/pkg/diapdu.Forklift, f *CAS-Backend/pkg/diapdu.Forklift */
int64_t __stdcall
pkg_diapdu___TaskScheduler__getIdleForklifts
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_58h)
{
    uint8_t uVar1;
    int64_t extraout_RAX;
    uint64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t iVar2;
    int64_t iVar3;
    int64_t unaff_RBX;
    uint64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t iVar4;
    uint64_t uVar5;
    uint64_t extraout_RSI;
    int64_t iVar6;
    int64_t extraout_RDI;
    uint64_t uVar7;
    uint64_t extraout_R8;
    int64_t extraout_R9;
    int64_t iVar8;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    uVar5 = 0;
    iVar6 = 0x355d2a0;
    uVar7 = 0;
    iVar2 = arg4;
    iVar4 = unaff_RBX;
    for (iVar3 = 0; iVar3 < iVar2; iVar3 = iVar3 + 1) {
        iVar8 = *(int64_t *)(iVar4 + iVar3 * 8);
        if (*(int64_t *)(iVar8 + 0x20) == 0) {
            if (*(int64_t *)(iVar8 + 0x58) < 0x15) {
                uVar1 = 0;
            } else if (*(int64_t *)(iVar8 + 0x50) == 0) {
                uVar1 = pkg_diapdu___TaskScheduler__isVehicleNavigatingToDock();
                uVar1 = uVar1 ^ 1;
                iVar2 = arg4;
                iVar4 = unaff_RBX;
            } else {
                uVar1 = 0;
            }
        } else {
            uVar1 = 0;
        }
        if (uVar1 != 0) {
            uVar7 = uVar7 + 1;
            if (uVar5 < uVar7) {
                runtime_growslice(iVar6, uVar7, uVar5, 1, 0x1023fa0);
                iVar2 = arg4;
                iVar4 = unaff_RBX;
                uVar5 = extraout_RCX;
                iVar6 = extraout_RAX;
                uVar7 = extraout_RBX;
            }
            if (*(int32_t *)0x355db50 != 0) {
                runtime_gcWriteBarrier2();
                *extraout_R11 = extraout_R9;
                extraout_R11[1] = *(int64_t *)(extraout_RDI + -8 + extraout_R8 * 8);
                iVar2 = extraout_RCX_00;
                iVar4 = extraout_RBX_00;
                uVar5 = extraout_RSI;
                iVar6 = extraout_RDI;
                uVar7 = extraout_R8;
                iVar8 = extraout_R9;
            }
            *(int64_t *)(iVar6 + -8 + uVar7 * 8) = iVar8;
        }
    }
    return iVar6;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).assignTask | VA 0xe32960 | taskservice.go:624
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, task *CAS-Backend/pkg/diapdu.Task1, forklift *CAS-Backend/pkg/diapdu.Forklift, distance float64, trafficPath *CAS-Backend/pkg/diapdu.TrafficPathResult, ~r0 error
   DWARF locals: &now *time.Time */
undefined8 __stdcall
pkg_diapdu___TaskScheduler__assignTask
          (int64_t arg7, int64_t arg1, undefined8 placeholder_2, undefined8 placeholder_3, int64_t arg4,
          undefined8 placeholder_5, undefined8 placeholder_6, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h,
          int64_t arg_20h, int64_t arg_28h, int64_t arg_48h)
{
    char cVar1;
    int64_t *in_RAX;
    undefined8 *puVar2;
    undefined8 extraout_RAX;
    undefined8 uVar3;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 *unaff_RBX;
    undefined8 extraout_RBX;
    undefined8 extraout_RSI;
    undefined8 *extraout_R8;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    pkg_diapdu___TaskScheduler__cancelDockNavigationForVehicle();
    unaff_RBX[8] = 1;
    puVar2 = (undefined8 *)runtime_newobject(0x11502e0);
    time_Now();
    *puVar2 = extraout_RAX;
    puVar2[1] = extraout_RBX;
    uVar3 = extraout_RCX;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier4();
        *extraout_R11 = extraout_RCX_00;
        extraout_R11[1] = puVar2[2];
        extraout_R11[2] = puVar2;
        extraout_R11[3] = unaff_RBX[0xe];
        uVar3 = extraout_RCX_00;
    }
    puVar2[2] = uVar3;
    unaff_RBX[0xe] = puVar2;
    if (*(int64_t *)(arg4 + 8) == 0) {
        uVar3 = fmt_Errorf(0x11929d1 /* "车辆 ID 为空，无法分配任务" */, 0x25, 0, 0, 0);
        return uVar3;
    }
    uVar3 = *(undefined8 *)arg4;
    unaff_RBX[10] = *(int64_t *)(arg4 + 8);
    puVar2 = unaff_RBX;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11_00 = extraout_RSI;
        extraout_R11_00[1] = extraout_R8[9];
        uVar3 = extraout_RSI;
        puVar2 = extraout_R8;
    }
    puVar2[9] = uVar3;
    if (*in_RAX == 0) {
        *(undefined8 *)(arg4 + 0x20) = 1;
        *(undefined8 *)(arg4 + 0x50) = *puVar2;
    } else {
        pkg_diapdu___ForkliftUpdater__MarkVehicleOnTask(*in_RAX, *(undefined8 *)arg4, *(undefined8 *)(arg4 + 8), *puVar2);
        puVar2 = unaff_RBX;
    }
    cVar1 = biz_dao_UpdateTaskDispatch(*puVar2, 1, *(undefined8 *)arg4, *(undefined8 *)(arg4 + 8));
    if (cVar1 == '\0') {
        uVar3 = fmt_Errorf(0x1197888 /* "更新任务派发状态到数据库失败" */, 0x2a, 0, 0, 0);
        return uVar3;
    }
    puVar2 = (undefined8 *)runtime_newobject(0x110b640);
    *puVar2 = 0xe32ba0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier4();
        *extraout_R11_01 = in_RAX;
        extraout_R11_01[1] = unaff_RBX;
        extraout_R11_01[2] = arg4;
        extraout_R11_01[3] = arg1;
    }
    puVar2[1] = in_RAX;
    puVar2[2] = unaff_RBX;
    puVar2[3] = arg4;
    puVar2[4] = arg7;
    puVar2[5] = arg1;
    runtime_newproc();
    return 0;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).assignTask.gowrap1 | VA 0xe32ba0 | taskservice.go:649
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_30h
// WARNING: [rz-ghidra] Removing arg arg_330h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_298h
// WARNING: [rz-ghidra] Removing arg arg_318h because it doesn't fit into ProtoModel

void __stdcall
pkg_diapdu___TaskScheduler__assignTask_gowrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_000000d8;
    int64_t var_30h;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_30h;
    }
    pkg_diapdu___TaskScheduler__executeTask(var_30h, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                 in_stack_fffffffffffffff0, in_stack_000000d8);
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).executeTask | VA 0xe32c00 | taskservice.go:654
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, task *CAS-Backend/pkg/diapdu.Task1, forklift *CAS-Backend/pkg/diapdu.Forklift, distance float64, trafficPath *CAS-Backend/pkg/diapdu.TrafficPathResult
   DWARF locals: okSend bool, timeout time.Duration, currentStation string, err error, timestamp string, subIDs []string, execPath []string, finalStation string, build CAS-Backend/pkg/diapdu.ExcNavBuildResult, n *CAS-Backend/pkg/diapdu.Node */
// WARNING: Variable defined which should be unmapped: var_300h
// WARNING: Variable defined which should be unmapped: var_2f8h
// WARNING: Variable defined which should be unmapped: var_278h
// WARNING: Variable defined which should be unmapped: var_270h
// WARNING: Variable defined which should be unmapped: var_1c8h
// WARNING: Variable defined which should be unmapped: var_1c0h
// WARNING: Variable defined which should be unmapped: var_180h
// WARNING: Variable defined which should be unmapped: var_1f0h
// WARNING: Variable defined which should be unmapped: var_190h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_330h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_298h
// WARNING: [rz-ghidra] Removing arg arg_318h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_338h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_30h
// WARNING: [rz-ghidra] Detected overlap for variable var_ebh
// WARNING: [rz-ghidra] Detected overlap for variable var_eah
// WARNING: [rz-ghidra] Detected overlap for variable var_e8h

void __stdcall
pkg_diapdu___TaskScheduler__executeTask
          (int64_t arg7, int64_t arg1, undefined8 placeholder_2, undefined8 placeholder_3, int64_t arg4,
          undefined8 placeholder_5, undefined8 placeholder_6, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h,
          int64_t arg_20h, int64_t arg_28h, int64_t arg_110h)
{
    undefined8 *puVar1;
    char cVar2;
    int64_t in_RAX;
    undefined8 uVar3;
    int64_t *piVar4;
    int64_t iVar5;
    int64_t iVar6;
    int64_t iVar7;
    int64_t iVar8;
    int64_t extraout_RCX;
    int64_t iVar9;
    int64_t iVar10;
    int64_t unaff_RBX;
    int64_t arg_10h_00;
    int64_t extraout_RSI;
    int64_t extraout_RDI;
    int64_t extraout_R8;
    int64_t iVar11;
    char extraout_R9B;
    int64_t unaff_R14;
    int64_t var_318h;
    int64_t in_stack_fffffffffffffcf8;
    int64_t var_300h;
    int64_t var_2f8h;
    int64_t in_stack_fffffffffffffd10;
    int64_t in_stack_fffffffffffffd18;
    int64_t in_stack_fffffffffffffd20;
    int64_t in_stack_fffffffffffffd28;
    int64_t in_stack_fffffffffffffd30;
    int64_t in_stack_fffffffffffffd38;
    int64_t in_stack_fffffffffffffd40;
    int64_t in_stack_fffffffffffffd48;
    int64_t in_stack_fffffffffffffd50;
    int64_t in_stack_fffffffffffffd58;
    int64_t var_299h;
    int64_t var_290h;
    int64_t var_288h;
    int64_t var_280h;
    int64_t var_278h;
    int64_t var_270h;
    int64_t var_268h;
    int64_t var_260h;
    int64_t var_258h;
    int64_t var_250h;
    int64_t var_248h;
    int64_t var_240h;
    int64_t var_238h;
    int64_t var_230h;
    int64_t var_228h;
    int64_t var_220h;
    int64_t var_218h;
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
    int64_t var_8h;
    
    while (&var_288h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe33a25;
        runtime_morestack_noctxt_abi0();
    }
    var_190h = 0xe33a60;
    var_10h = (int64_t)&var_190h;
    var_180h = arg4;
    if (*(int64_t *)(arg4 + 0x40) == 0) {
        var_1a8h = runtime_convTstring(in_stack_fffffffffffffcf8, var_300h, in_stack_fffffffffffffd20);
        var_1b0h = 0x1042920;
        var_198h = runtime_convT64(in_stack_fffffffffffffcf8);
        var_1a0h = 0x1042b60;
        fmt_Fprintf(in_stack_fffffffffffffcf8, var_300h, var_2f8h, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18
                     , in_stack_fffffffffffffd20, in_stack_fffffffffffffd28);
        uVar3 = pkg_diapdu___TaskScheduler__finishTaskExecution(in_stack_fffffffffffffcf8, var_300h, var_2f8h, in_stack_fffffffffffffd10, var_278h);
        (**(code **)var_10h)(uVar3, unaff_RBX);
        return;
    }
    *(undefined8 *)(unaff_RBX + 0x40) = 2;
    biz_dao_UpdateTaskStatusByID(in_stack_fffffffffffffcf8, var_300h, var_270h);
    iVar10 = *(int64_t *)(arg4 + 8);
    iVar8 = *(int64_t *)(arg4 + 0x38);
    iVar9 = *(int64_t *)(arg4 + 0x40);
    pkg_diapdu_currentStationForVehicle(in_stack_fffffffffffffcf8, var_300h, var_2f8h, in_stack_fffffffffffffd10, in_stack_fffffffffffffd28);
    if (iVar8 != 0) {
        var_268h = iVar8;
        var_218h = iVar9;
        var_1c8h = runtime_convTstring(in_stack_fffffffffffffcf8, var_300h, in_stack_fffffffffffffd20);
        var_1d0h = 0x1042920;
        var_1c0h = 0;
        if (var_268h != 0) {
            var_1c0h = *(int64_t *)(var_268h + 8);
        }
        var_1b8h = var_218h;
        fmt_Fprintf(in_stack_fffffffffffffcf8, var_300h, var_2f8h, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18
                     , in_stack_fffffffffffffd20, in_stack_fffffffffffffd28);
        uVar3 = pkg_diapdu___TaskScheduler__finishTaskExecution(in_stack_fffffffffffffcf8, var_300h, var_2f8h, in_stack_fffffffffffffd10, var_278h);
        (**(code **)var_10h)(uVar3, unaff_RBX);
        return;
    }
    var_210h = strings_TrimSpace(in_stack_fffffffffffffcf8, var_300h);
    var_260h = iVar10;
    if (((iVar10 == 0) && (*(int64_t *)(in_RAX + 0x40) != 0)) &&
       (piVar4 = (int64_t *)
                 pkg_diapdu_closestNodeTo((int32_t)*(undefined8 *)(arg4 + 0x28), *(undefined8 *)(arg4 + 0x30), 
                              *(int64_t *)(in_RAX + 0x40)), piVar4 != (int64_t *)0x0)) {
        var_210h = *piVar4;
        var_260h = piVar4[1];
    }
    time_Now();
    time_Time_Format(in_stack_fffffffffffffcf8, var_300h, var_2f8h, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                 in_stack_fffffffffffffd38);
    fcn.00478af0();
    var_68h = var_210h;
    var_60h = var_260h;
    var_58h = *(int64_t *)(unaff_RBX + 0xa0);
    var_50h = *(int64_t *)(unaff_RBX + 0xa8);
    var_48h = *(int64_t *)(unaff_RBX + 0xb0);
    var_40h = *(int64_t *)(unaff_RBX + 0xb8);
    var_38h = *(int64_t *)(unaff_RBX + 0xc0);
    var_30h = *(int64_t *)(unaff_RBX + 200);
    var_28h = *(int64_t *)(unaff_RBX + 0xd0);
    var_20h = *(int64_t *)(unaff_RBX + 0xd8);
    var_18h = *(int64_t *)(unaff_RBX + 0xf8);
    iVar11 = var_210h;
    fcn.00478e5a();
    iVar8 = extraout_RCX;
    iVar9 = extraout_RSI;
    iVar6 = extraout_RDI;
    iVar7 = extraout_R8;
    cVar2 = extraout_R9B;
    iVar5 = pkg_diapdu_BuildExcNavigationTasks(iVar11, var_300h, var_2f8h, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                         in_stack_fffffffffffffd20, in_stack_fffffffffffffd28, in_stack_fffffffffffffd30, 
                         in_stack_fffffffffffffd38, in_stack_fffffffffffffd40, in_stack_fffffffffffffd48, 
                         in_stack_fffffffffffffd50, in_stack_fffffffffffffd58, var_1c8h, var_1c0h, var_180h);
    iVar10 = var_210h;
    var_38h = CONCAT71(var_38h._1_7_, cVar2);
    var_1d8h = var_38h;
    var_208h = iVar5;
    var_200h = arg_10h_00;
    var_1f8h = iVar8;
    var_1f0h = iVar6;
    var_1e8h = iVar9;
    var_1e0h = iVar7;
    var_68h = iVar5;
    var_60h = arg_10h_00;
    var_58h = iVar8;
    var_50h = iVar6;
    var_48h = iVar9;
    var_40h = iVar7;
    if ((cVar2 == '\0') || (arg_10h_00 == 0)) {
        var_70h = runtime_convT64(iVar11);
        var_78h = 0x1042b60;
        fmt_Fprintf(iVar11, var_300h, var_2f8h, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                     in_stack_fffffffffffffd20, in_stack_fffffffffffffd28);
        uVar3 = pkg_diapdu___TaskScheduler__finishTaskExecution(iVar11, var_300h, var_2f8h, in_stack_fffffffffffffd10, var_278h);
        (**(code **)var_10h)(uVar3, unaff_RBX);
        return;
    }
    iVar9 = var_260h;
    var_250h = iVar8;
    var_248h = arg_10h_00;
    var_238h = iVar6;
    var_170h = iVar5;
    iVar6 = pkg_diapdu___TaskScheduler__resolveFullTrafficPath(iVar5, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                         in_stack_fffffffffffffd20, in_stack_fffffffffffffd28, in_stack_fffffffffffffd30, 
                         in_stack_fffffffffffffd38, in_stack_fffffffffffffd40, iVar6);
    if ((1 < iVar10) && (*(int64_t *)(in_RAX + 0x50) != 0)) {
        var_278h = iVar10;
        var_270h = iVar9;
        var_220h = iVar6;
        pkg_diapdu___DynamicTrafficController__RegisterRoute(iVar5, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                     in_stack_fffffffffffffd20, in_stack_fffffffffffffd28, in_stack_fffffffffffffd38);
        pkg_diapdu___DynamicTrafficController__LogTaskAssignment(iVar5, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                     in_stack_fffffffffffffd20, in_stack_fffffffffffffd28, in_stack_fffffffffffffd30, var_190h);
        iVar10 = var_278h;
        var_178h = strings_Join(iVar5, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                                in_stack_fffffffffffffd58);
        var_258h = iVar10;
        fcn.00478af0();
        var_c0h = runtime_convT64(iVar5);
        var_c8h = 0x1042b60;
        var_b0h = runtime_convTstring(iVar5, arg_10h_00, in_stack_fffffffffffffd20);
        var_b8h = 0x1042920;
        var_a0h = runtime_convTstring(iVar5, arg_10h_00, in_stack_fffffffffffffd20);
        var_a8h = 0x1042920;
        var_90h = runtime_convTstring(iVar5, arg_10h_00, in_stack_fffffffffffffd20);
        var_98h = 0x1042920;
        var_80h = runtime_convTstring(iVar5, arg_10h_00, in_stack_fffffffffffffd20);
        iVar10 = *(int64_t *)0x3512080;
        var_88h = 0x1042920;
        iVar6 = fmt_Fprintf(iVar5, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                             in_stack_fffffffffffffd20, in_stack_fffffffffffffd28);
    }
    fcn.00478aeb(iVar6, iVar10);
    var_120h = runtime_convT64(iVar5);
    var_128h = 0x1042b60;
    var_110h = runtime_convTstring(iVar5, arg_10h_00, in_stack_fffffffffffffd20);
    var_118h = 0x1042920;
    var_100h = runtime_convTstring(iVar5, arg_10h_00, in_stack_fffffffffffffd20);
    var_108h = 0x1042920;
    var_f0h = runtime_convT64(iVar5);
    var_f8h = 0x1042b60;
    var_e0h = runtime_convT64(iVar5);
    var_e8h = 0x1042b60;
    var_d0h = runtime_convTslice(iVar5, arg_10h_00, iVar8);
    var_d8h = 0x1038980;
    fmt_Fprintf(iVar5, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                 in_stack_fffffffffffffd20, in_stack_fffffffffffffd28);
    iVar10 = *(int64_t *)(arg4 + 0x40);
    iVar9 = var_170h;
    cVar2 = pkg_diapdu_sendDockNavigation(iVar5, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18);
    var_268h = iVar10;
    var_218h = iVar9;
    if ((iVar10 != 0) || (cVar2 == '\0')) {
        var_140h = runtime_convT64(iVar5);
        var_148h = 0x1042b60;
        if (var_268h == 0) {
            var_138h = 0;
        } else {
            var_138h = *(int64_t *)(var_268h + 8);
        }
        var_130h = var_218h;
        fmt_Fprintf(iVar5, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                     in_stack_fffffffffffffd20, in_stack_fffffffffffffd28);
        uVar3 = pkg_diapdu___TaskScheduler__finishTaskExecution(iVar5, arg_10h_00, iVar8, in_stack_fffffffffffffd10, var_278h);
        (**(code **)var_10h)(uVar3, unaff_RBX);
        return;
    }
    iVar10 = (int64_t)(double)arg7 * 1000000000 + 1800000000000;
    var_280h = *(int64_t *)(unaff_RBX + 0xd8);
    var_228h = *(int64_t *)(unaff_RBX + 0xd0);
    if (iVar10 < 600000000000) {
        iVar10 = 600000000000;
    }
    if (var_280h == 0) {
        var_280h = *(int64_t *)(unaff_RBX + 0x98);
        var_228h = *(int64_t *)(unaff_RBX + 0x90);
    }
    if (var_280h == 0) {
        var_228h = *(int64_t *)(var_248h * 0xe0 + -0xd0 + var_170h);
        var_280h = *(int64_t *)(var_248h * 0xe0 + -200 + var_170h);
    }
    cVar2 = pkg_diapdu_waitNavTasksComplete(iVar10, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                         in_stack_fffffffffffffd20, in_stack_fffffffffffffd28, in_stack_fffffffffffffd30, 
                         in_stack_fffffffffffffd38, in_stack_fffffffffffffd40, var_1c0h, var_190h);
    if (cVar2 == '\0') {
        var_150h = runtime_convT64(iVar10);
        var_158h = 0x1042b60;
        fmt_Fprintf(iVar10, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                     in_stack_fffffffffffffd20, in_stack_fffffffffffffd28);
        uVar3 = pkg_diapdu___TaskScheduler__finishTaskExecution(iVar10, arg_10h_00, iVar8, in_stack_fffffffffffffd10, var_278h);
        (**(code **)var_10h)(uVar3, unaff_RBX);
        return;
    }
    piVar4 = *(int64_t **)(in_RAX + 0x40);
    if (piVar4 == (int64_t *)0x0) {
        *(undefined8 *)(arg4 + 0x28) = *(undefined8 *)(unaff_RBX + 0x30);
        *(undefined8 *)(arg4 + 0x30) = *(undefined8 *)(unaff_RBX + 0x38);
    } else {
        iVar9 = *piVar4;
        iVar6 = piVar4[1];
        iVar11 = var_280h;
        var_288h = iVar6;
        var_230h = iVar9;
        for (iVar7 = 0; iVar7 < iVar6; iVar7 = iVar7 + 1) {
            puVar1 = *(undefined8 **)(iVar9 + iVar7 * 8);
            if ((iVar11 == puVar1[1]) &&
               (var_248h = iVar7, var_240h = (int64_t)puVar1, cVar2 = runtime_memequal(*puVar1, var_228h), iVar5 = var_240h,
               iVar7 = var_248h, iVar6 = var_288h, iVar9 = var_230h, iVar11 = var_280h, cVar2 != '\0'))
            goto code_r0x00e33999;
        }
        iVar5 = 0;
code_r0x00e33999:
        if (iVar5 == 0) {
            *(undefined8 *)(arg4 + 0x28) = *(undefined8 *)(unaff_RBX + 0x30);
            *(undefined8 *)(arg4 + 0x30) = *(undefined8 *)(unaff_RBX + 0x38);
        } else {
            *(undefined8 *)(arg4 + 0x28) = *(undefined8 *)(iVar5 + 0x10);
            *(undefined8 *)(arg4 + 0x30) = *(undefined8 *)(iVar5 + 0x18);
        }
    }
    var_160h = runtime_convT64(iVar10);
    var_168h = 0x1042b60;
    fmt_Fprintf(iVar10, arg_10h_00, iVar8, in_stack_fffffffffffffd10, in_stack_fffffffffffffd18, 
                 in_stack_fffffffffffffd20, in_stack_fffffffffffffd28);
    uVar3 = pkg_diapdu___TaskScheduler__finishTaskExecution(iVar10, arg_10h_00, iVar8, in_stack_fffffffffffffd10, var_278h);
    (**(code **)var_10h)(uVar3, unaff_RBX);
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).executeTask.func1 | VA 0xe33a60 | taskservice.go:655
   DWARF parameters and results: (no entries)
   DWARF locals: s *CAS-Backend/pkg/diapdu.TaskScheduler, forklift *CAS-Backend/pkg/diapdu.Forklift */
// WARNING: [rz-ghidra] Removing arg arg_2fh because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_80h

void __stdcall
pkg_diapdu___TaskScheduler__executeTask_func1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3)
{
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t in_stack_00000098;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_stack_00000008);
        arg3 = extraout_RDX;
    }
    if (*(int64_t *)(*(int64_t *)(arg3 + 8) + 0x50) != 0) {
        pkg_diapdu___DynamicTrafficController__UnregisterVehicle(in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000098)
        ;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).finishTaskExecution | VA 0xe33aa0 | taskservice.go:753
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, task *CAS-Backend/pkg/diapdu.Task1, forklift *CAS-Backend/pkg/diapdu.Forklift, success bool
   DWARF locals: &now *time.Time, dbStatus int */
void __stdcall
pkg_diapdu___TaskScheduler__finishTaskExecution
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_98h)
{
    char cVar1;
    int64_t *in_RAX;
    undefined8 *puVar2;
    undefined8 extraout_RAX;
    undefined8 uVar3;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 *extraout_RCX_01;
    undefined8 *puVar4;
    undefined8 *extraout_RCX_02;
    undefined8 *unaff_RBX;
    undefined8 extraout_RBX;
    char in_DIL;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    puVar2 = (undefined8 *)runtime_newobject(0x11502e0);
    time_Now();
    *puVar2 = extraout_RAX;
    puVar2[1] = extraout_RBX;
    uVar3 = extraout_RCX;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = extraout_RCX_00;
        extraout_R11[1] = puVar2[2];
        uVar3 = extraout_RCX_00;
    }
    puVar2[2] = uVar3;
    if (in_DIL == '\0') {
        unaff_RBX[8] = 5;
        puVar4 = unaff_RBX;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11_01 = puVar2;
            extraout_R11_01[1] = extraout_RCX_02[0xf];
            puVar4 = extraout_RCX_02;
        }
        puVar4[0xf] = puVar2;
        runtime_convT64(in_stack_ffffffffffffff88);
        fmt_Fprintf(in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, 
                     in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                     in_stack_ffffffffffffffb8);
        uVar3 = 5;
    } else {
        unaff_RBX[8] = 4;
        puVar4 = unaff_RBX;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11_00 = puVar2;
            extraout_R11_00[1] = extraout_RCX_01[0xf];
            puVar4 = extraout_RCX_01;
        }
        puVar4[0xf] = puVar2;
        runtime_convT64(in_stack_ffffffffffffff88);
        fmt_Fprintf(in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, 
                     in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                     in_stack_ffffffffffffffb8);
        uVar3 = 4;
    }
    cVar1 = biz_dao_UpdateTaskCompletion(*unaff_RBX, uVar3, *puVar2, puVar2[1], puVar2[2]);
    if (cVar1 == '\0') {
        runtime_convT64(in_stack_ffffffffffffff88);
        fmt_Fprintf(in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, 
                     in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, 
                     in_stack_ffffffffffffffb8);
    }
    if (*in_RAX == 0) {
        *(undefined8 *)(arg4 + 0x20) = 0;
        *(undefined8 *)(arg4 + 0x50) = 0;
    } else {
        pkg_diapdu___ForkliftUpdater__ClearVehicleTask(*in_RAX, *(undefined8 *)arg4, *(undefined8 *)(arg4 + 8));
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).cancelDockNavigationForVehicle | VA 0xe33d20 | taskservice.go:782
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, forklift *CAS-Backend/pkg/diapdu.Forklift
   DWARF locals: hadDock bool, cancel func(), err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_51h

void __stdcall
pkg_diapdu___TaskScheduler__cancelDockNavigationForVehicle(int64_t arg_8h, int64_t arg_10h, int64_t arg_a8h)
{
    int32_t *piVar1;
    int32_t iVar2;
    int64_t in_RAX;
    undefined8 *puVar3;
    char extraout_BL;
    undefined8 *unaff_RBX;
    int64_t unaff_R14;
    bool bVar4;
    undefined auVar5 [16];
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t var_50h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&var_10h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (((in_RAX != 0) && (unaff_RBX != (undefined8 *)0x0)) && (unaff_RBX[1] != 0)) {
        puVar3 = (undefined8 *)pkg_diapdu___TaskScheduler__getDockCancel();
        if (puVar3 != (undefined8 *)0x0) {
            (*(code *)*puVar3)();
        }
        LOCK();
        bVar4 = *(int32_t *)(in_RAX + 0x58) == 0;
        if (bVar4) {
            *(int32_t *)(in_RAX + 0x58) = 1;
        }
        UNLOCK();
        if (!bVar4) {
            sync___Mutex__lockSlow(in_RAX + 0x58);
        }
        runtime_mapaccess2_faststr(0x107d7c0, *(undefined8 *)(in_RAX + 0x68), *unaff_RBX, unaff_RBX[1]);
        LOCK();
        piVar1 = (int32_t *)(in_RAX + 0x58);
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar2 != 1) {
            sync___Mutex__unlockSlow(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff98);
        }
        if ((extraout_BL != '\0') && (unaff_RBX[8] != 0)) {
            auVar5 = pkg_diapdu_sendCancelNavigation(unaff_RBX[7]);
            if (auVar5._0_8_ == 0) {
                runtime_convTstring(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff98);
                fmt_Fprintf(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                             in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, 
                             in_stack_ffffffffffffffa0);
            } else {
                runtime_convTstring(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff98);
                var_10h = auVar5._8_8_;
                fmt_Fprintf(in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, 
                             in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, in_stack_ffffffffffffff98, 
                             in_stack_ffffffffffffffa0);
            }
        }
        pkg_diapdu___TaskScheduler__releaseDockForVehicle(in_RAX, *unaff_RBX, unaff_RBX[1]);
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).moveForkliftToNearestPPDock | VA 0xe33fa0 | taskservice.go:803
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, vehicleID string
   DWARF locals: fl *CAS-Backend/pkg/diapdu.Forklift, ok bool */
void __stdcall
pkg_diapdu___TaskScheduler__moveForkliftToNearestPPDock
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_40h, int64_t arg_68h)
{
    char cVar1;
    int64_t *in_RAX;
    int64_t iVar2;
    undefined8 *puVar3;
    char extraout_BL;
    undefined8 unaff_RBX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (((in_RAX == (int64_t *)0x0) || (arg4 == 0)) || (in_RAX[8] == 0)) {
        return;
    }
    if (*in_RAX == 0) {
        return;
    }
    iVar2 = pkg_diapdu___ForkliftUpdater__GetForklift(*in_RAX);
    if ((extraout_BL != '\0') && (iVar2 != 0)) {
        if (*(int64_t *)(iVar2 + 0x50) != 0) {
            return;
        }
        if (*(int64_t *)(iVar2 + 0x40) == 0) {
            var_10h = runtime_convTstring(unaff_RBX, arg4);
            var_18h = 0x1042920;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x119f108 /* "[停靠] 车辆 %s 无 IP，无法下发停靠导航\n" */, 0x35, &var_18h, 1, 1);
            return;
        }
        cVar1 = pkg_diapdu___TaskScheduler__isVehicleNavigatingToDock(in_RAX, unaff_RBX, arg4);
        if (cVar1 != '\0') {
            return;
        }
        puVar3 = (undefined8 *)runtime_newobject(0x10ce000);
        *puVar3 = 0xe34140;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = in_RAX;
            extraout_R11[1] = iVar2;
        }
        puVar3[1] = in_RAX;
        puVar3[2] = iVar2;
        runtime_newproc();
        return;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).moveForkliftToNearestPPDock.gowrap1 | VA 0xe34140 | taskservice.go:824
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h
// WARNING: [rz-ghidra] Removing arg arg_220h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_218h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_1b8h

void __stdcall
pkg_diapdu___TaskScheduler__moveForkliftToNearestPPDock_gowrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000048;
    int64_t in_stack_000000a8;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_18h;
    }
    pkg_diapdu___TaskScheduler__runDockNavigation(var_18h, in_stack_fffffffffffffff0, in_stack_00000048, in_stack_000000a8);
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).runDockNavigation | VA 0xe341a0 | taskservice.go:832
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, forklift *CAS-Backend/pkg/diapdu.Forklift
   DWARF locals: pathOK bool, okSend bool, from CAS-Backend/pkg/diapdu.Location, cancel context.CancelFunc, occupied map[string]string, dock *CAS-Backend/pkg/diapdu.Node, stationRaw string, err error, station string, pathNodes []string, ctx context.Context, taskPrefix string, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, .autotmp_98 context.backgroundCtx, fresh *CAS-Backend/pkg/diapdu.Forklift, ok bool, try int */
// WARNING: [rz-ghidra] Removing arg arg_220h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Removing arg arg_218h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_1b8h

void __stdcall
pkg_diapdu___TaskScheduler__runDockNavigation(int64_t arg_8h, int64_t arg_10h, int64_t arg_68h, int64_t arg_c8h)
{
    undefined8 uVar1;
    undefined8 uVar2;
    char cVar3;
    int64_t *in_RAX;
    int64_t iVar4;
    int64_t extraout_RAX;
    undefined8 *puVar5;
    int64_t extraout_RAX_00;
    int64_t extraout_RAX_01;
    undefined8 extraout_RAX_02;
    int64_t extraout_RCX;
    int64_t iVar6;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t extraout_RCX_03;
    char extraout_BL;
    char extraout_BL_00;
    undefined8 *unaff_RBX;
    undefined8 extraout_RBX;
    undefined8 extraout_RBX_00;
    int64_t extraout_RBX_01;
    int64_t extraout_RBX_02;
    undefined8 extraout_RBX_03;
    int64_t extraout_RBX_04;
    char extraout_DIL;
    int64_t extraout_RDI;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    bool bVar7;
    undefined auVar8 [16];
    int64_t var_1b9h;
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
    
    arg_10h = (int64_t)unaff_RBX;
    while (&var_188h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (((undefined8 *)arg_10h == (undefined8 *)0x0) || (*(int64_t *)(arg_10h + 8) == 0)) {
        return;
    }
    if ((*in_RAX != 0) &&
       ((iVar4 = pkg_diapdu___ForkliftUpdater__GetForklift(*in_RAX, *(undefined8 *)arg_10h), extraout_BL != '\0' && (iVar4 != 0)))) {
        arg_10h = iVar4;
    }
    cVar3 = pkg_diapdu___TaskScheduler__isVehicleNavigatingToDock();
    if (cVar3 != '\0') {
        return;
    }
    pkg_diapdu_currentStationForVehicle(*(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8), *(undefined8 *)(arg_10h + 0x38), 
                    *(undefined8 *)(arg_10h + 0x40));
    if (extraout_RCX != 0) {
        var_180h = extraout_RCX;
        var_150h = extraout_RDI;
        var_28h = runtime_convTstring(*(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8));
        var_30h = 0x1042920;
        var_20h = 0;
        if (var_180h != 0) {
            var_20h = *(int64_t *)(var_180h + 8);
        }
        var_18h = var_150h;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1197906 /* "[停靠] 查询车辆 %s 位置失败: %v\n" */, 0x2a, &var_30h, 2, 2);
        return;
    }
    var_188h = *(int64_t *)(arg_10h + 0x28);
    uVar1 = *(undefined8 *)(arg_10h + 0x30);
    var_170h = extraout_RAX;
    auVar8 = pkg_diapdu_resolveDockStartStation(in_RAX[8], *(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8), extraout_RAX, extraout_RBX
                            );
    iVar4 = auVar8._8_8_;
    var_168h = auVar8._0_8_;
    if (iVar4 == 0) {
        var_48h = runtime_convTstring(*(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8));
        var_50h = 0x1042920;
        var_38h = runtime_convTstring(var_170h, extraout_RBX);
        var_40h = 0x1042920;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a8965 /* "[停靠] 车辆 %s 无法解析当前站点(推送=%q)，暂不前往停靠点\n" */, 0x4f, &var_50h, 2, 2);
        return;
    }
    pkg_diapdu___TaskScheduler__syncVehicleDockFromRuntime(in_RAX, *(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8), var_168h, iVar4);
    if (iVar4 < 2) {
        bVar7 = false;
    } else {
        bVar7 = *(int16_t *)var_168h == 0x5050;
    }
    if (bVar7) {
        var_68h = runtime_convTstring(*(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8));
        var_70h = 0x1042920;
        var_58h = runtime_convTstring(var_168h, iVar4);
        var_60h = 0x1042920;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1193c0f /* "[停靠] 车辆 %s 已在停靠点 %s\n" */, 0x26, &var_70h, 2, 2);
        return;
    }
    var_158h = pkg_diapdu___TaskScheduler__dockOccupancyIncludingLivePositions(in_RAX, extraout_RBX_00, var_168h);
    for (iVar6 = 0; iVar6 < 0x10; iVar6 = iVar6 + 1) {
        puVar5 = (undefined8 *)
                 pkg_diapdu_NearestAvailablePPDock(var_188h, uVar1, in_RAX[8], var_168h, iVar4, var_158h, *(undefined8 *)arg_10h, 
                                 *(undefined8 *)(arg_10h + 8));
        if ((puVar5 == (undefined8 *)0x0) ||
           (var_148h = (int64_t)puVar5,
           cVar3 = pkg_diapdu___TaskScheduler__tryReserveDock(in_RAX, *(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8), *puVar5, puVar5[1]),
           puVar5 = (undefined8 *)var_148h, cVar3 != '\0')) goto code_r0x00e34644;
        puVar5 = (undefined8 *)
                 runtime_mapassign_faststr(0x107db20, var_158h, *(undefined8 *)var_148h, *(undefined8 *)(var_148h + 8));
        puVar5[1] = 0xb;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = *puVar5;
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar2;
        }
        *puVar5 = 0x1176f7c;
    }
    puVar5 = (undefined8 *)0x0;
code_r0x00e34644:
    if (puVar5 == (undefined8 *)0x0) {
        var_88h = runtime_convTstring(var_168h, iVar4);
        var_90h = 0x1042920;
        var_78h = runtime_convTstring(*(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8));
        var_80h = 0x1042920;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a83a2 /* "[停靠] 无可用 PP 停靠点(当前站=%s)，车辆 %s 保持当前位置\n" */, 0x4d, &var_90h, 2, 2);
        return;
    }
    var_148h = (int64_t)puVar5;
    pkg_diapdu_planDockPathNodes(in_RAX[8], *(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8), var_168h, iVar4, *puVar5, puVar5[1]
                   );
    if ((extraout_DIL == '\0') || (extraout_RBX_01 < 2)) {
        var_b8h = runtime_convTstring(*(undefined8 *)var_148h, *(undefined8 *)(var_148h + 8));
        var_c0h = 0x1042920;
        var_a8h = runtime_convTstring(var_168h, iVar4);
        var_b0h = 0x1042920;
        var_98h = runtime_convTstring(var_170h, extraout_RBX);
        var_a0h = 0x1042920;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a70e3 /* "[停靠] 无法规划到停靠点 %s 的路径(当前站=%s 推送=%q)\n" */, 0x47, &var_c0h, 3, 3);
        pkg_diapdu___TaskScheduler__releaseDockForVehicle(in_RAX, *(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8));
        return;
    }
    var_160h = extraout_RAX_00;
    context_WithCancel(0x2e72f80, 0x355d2a0);
    var_178h = extraout_RAX_01;
    var_140h = extraout_RBX_02;
    pkg_diapdu___TaskScheduler__setDockNavigating(in_RAX, *(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8), 1, extraout_RCX_01);
    var_d8h = 0xe34ca0;
    var_c8h = (int64_t)&arg_10h;
    var_10h = (int64_t)&var_d8h;
    if ((*in_RAX != 0) &&
       ((iVar4 = pkg_diapdu___ForkliftUpdater__GetForklift(*in_RAX, *(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8)), extraout_BL_00 != '\0'
        && (iVar4 != 0)))) {
        arg_10h = iVar4;
    }
    if (*(int64_t *)(arg_10h + 0x50) != 0) {
        pkg_diapdu___TaskScheduler__releaseDockForVehicle(in_RAX, *(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8));
        (**(code **)var_10h)();
        return;
    }
    auVar8 = time_Now();
    iVar4 = auVar8._8_8_;
    if ((int64_t)auVar8._0_8_ < 0) {
        iVar4 = ((auVar8._0_8_ & 0x7fffffffffffffff) >> 0x1e) + 0xdd7b17f80;
    }
    auVar8 = strconv_FormatInt(iVar4 + -0xe7791f700, 10);
    auVar8 = runtime_concatstring4(0, 0x116a625, 5, *(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8), 0x1168509 /* "-" */, 1, 
                             auVar8._0_8_, auVar8._8_8_);
    pkg_diapdu_buildDockNavTasks(var_160h, extraout_RBX_01, extraout_RCX_00, auVar8._0_8_, auVar8._8_8_);
    cVar3 = pkg_diapdu_sendDockNavigation(*(undefined8 *)(arg_10h + 0x38), *(undefined8 *)(arg_10h + 0x40), extraout_RAX_02, 
                            extraout_RBX_03, extraout_RCX_02);
    var_180h = extraout_RBX_04;
    var_150h = extraout_RCX_03;
    if ((extraout_RBX_04 == 0) && (cVar3 != '\0')) {
        var_130h = runtime_convTstring(*(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8));
        var_138h = 0x1042920;
        var_120h = runtime_convTstring(*(undefined8 *)var_148h, *(undefined8 *)(var_148h + 8));
        var_128h = 0x1042920;
        var_110h = runtime_convTslice(var_160h, extraout_RBX_01, extraout_RCX_00);
        var_118h = 0x1038980;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a0df2 /* "[停靠] 车辆 %s 开始前往停靠点 %s，路径 %v\n" */, 0x38, &var_138h, 3, 3);
        pkg_diapdu___TaskScheduler__waitDockArrival(in_RAX, var_178h, var_140h, arg_10h, *(undefined8 *)var_148h, *(undefined8 *)(var_148h + 8));
        (**(code **)var_10h)();
        return;
    }
    var_100h = runtime_convTstring(*(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8));
    var_108h = 0x1042920;
    var_f0h = runtime_convTstring(*(undefined8 *)var_148h, *(undefined8 *)(var_148h + 8));
    var_f8h = 0x1042920;
    if (var_180h == 0) {
        var_e8h = 0;
    } else {
        var_e8h = *(int64_t *)(var_180h + 8);
    }
    var_e0h = var_150h;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a19c4 /* "[停靠] 下发停靠导航失败 vehicle=%s dock=%s: %v\n" */, 0x39, &var_108h, 3, 3);
    pkg_diapdu___TaskScheduler__releaseDockForVehicle(in_RAX, *(undefined8 *)arg_10h, *(undefined8 *)(arg_10h + 8));
    (**(code **)var_10h)();
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).runDockNavigation.func1 | VA 0xe34ca0 | taskservice.go:889
   DWARF parameters and results: (no entries)
   DWARF locals: s *CAS-Backend/pkg/diapdu.TaskScheduler, &forklift **CAS-Backend/pkg/diapdu.Forklift */
// WARNING: [rz-ghidra] Detected overlap for variable var_30h

void __stdcall
pkg_diapdu___TaskScheduler__runDockNavigation_func1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3)
{
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_stack_00000008);
    }
    pkg_diapdu___TaskScheduler__setDockNavigating(in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0);
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).waitDockArrival | VA 0xe34ce0 | taskservice.go:916
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, ctx context.Context, forklift *CAS-Backend/pkg/diapdu.Forklift, dockName string
   DWARF locals: ticker *time.Ticker, deadline <-chan time.Time, st string, err error, fresh *CAS-Backend/pkg/diapdu.Forklift, ok bool, occ map[string]string, n *CAS-Backend/pkg/diapdu.Node */
// WARNING: Variable defined which should be unmapped: var_11dh
// WARNING: Variable defined which should be unmapped: var_f8h
// WARNING: [rz-ghidra] Detected overlap for variable var_11ch

void __stdcall
pkg_diapdu___TaskScheduler__waitDockArrival
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, undefined8 placeholder_5,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_98h, int64_t arg_b8h, int64_t arg_148h, int64_t arg_168h)
{
    undefined8 uVar1;
    char cVar2;
    uint8_t uVar3;
    int64_t *in_RAX;
    int64_t *piVar4;
    int64_t iVar5;
    undefined8 extraout_RAX;
    undefined8 *puVar6;
    undefined8 uVar7;
    int64_t iVar8;
    int64_t iVar9;
    int64_t extraout_RCX;
    int64_t iVar10;
    char extraout_BL;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t unaff_R14;
    int64_t in_stack_fffffffffffffea8;
    int64_t in_stack_fffffffffffffeb0;
    int64_t in_stack_fffffffffffffeb8;
    undefined auStack_120 [3];
    int64_t var_11dh;
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
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_68h;
    int64_t var_60h;
    int64_t var_58h;
    int64_t var_48h;
    int64_t var_38h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&var_d8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_f0h = time_NewTicker(2000000000);
    var_28h = 0xe35420;
    var_10h = (int64_t)&var_28h;
    _auStack_120 = CONCAT13(1, auStack_120);
    var_20h = var_f0h;
    piVar4 = (int64_t *)time_NewTimer(7200000000000);
    var_f8h = *piVar4;
    do {
        var_18h = arg1;
        var_38h = (**(code **)(unaff_RBX + 0x20))(arg4);
        var_58h = *(int64_t *)var_f0h;
        var_48h = var_f8h;
        iVar5 = runtime_selectgo(&var_58h, (int64_t)&var_11dh + 1, 0, 0, 3, 1);
        if (iVar5 != 0) {
            if (iVar5 != 1) {
                var_d0h = runtime_convTstring(*(undefined8 *)var_18h, *(undefined8 *)(var_18h + 8));
                var_d8h = 0x1042920;
                fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1196abf /* "[停靠] 车辆 %s 停靠导航已取消\n" */, 0x29, &var_d8h, 1, 1);
                pkg_diapdu___TaskScheduler__releaseDockForVehicle(in_RAX, *(undefined8 *)var_18h, *(undefined8 *)(var_18h + 8));
                (**(code **)var_10h)();
                return;
            }
            var_c0h = runtime_convTstring(*(undefined8 *)var_18h, *(undefined8 *)(var_18h + 8));
            var_c8h = 0x1042920;
            var_b0h = runtime_convTstring(arg2, arg5);
            var_b8h = 0x1042920;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1191b0a /* "[停靠] 车辆 %s 前往 %s 超时\n" */, 0x24, &var_c8h, 2, 2);
            (**(code **)var_10h)();
            return;
        }
        puVar6 = (undefined8 *)var_18h;
        if ((*in_RAX != 0) &&
           ((puVar6 = (undefined8 *)pkg_diapdu___ForkliftUpdater__GetForklift(*in_RAX, *(undefined8 *)var_18h, *(undefined8 *)(var_18h + 8)),
            extraout_BL == '\0' || (puVar6 == (undefined8 *)0x0)))) {
            puVar6 = (undefined8 *)var_18h;
        }
        if (puVar6[10] != 0) {
            (**(code **)var_10h)();
            return;
        }
        var_18h = (int64_t)puVar6;
        pkg_diapdu_currentStationForVehicle(*puVar6, puVar6[1], puVar6[7], puVar6[8]);
        arg1 = var_18h;
    } while (((extraout_RCX != 0) || (extraout_RBX != arg5)) ||
            (cVar2 = runtime_memequal(extraout_RAX, arg2, extraout_RBX), arg1 = var_18h, cVar2 == '\0'));
    var_e8h = pkg_diapdu___TaskScheduler__dockOccupancyIncludingLivePositions(in_RAX);
    iVar5 = runtime_mapaccess1_faststr(0x107db20, var_e8h, arg2, arg5);
    if (*(int64_t *)(iVar5 + 8) == 0) {
        uVar3 = 0;
    } else {
        puVar6 = (undefined8 *)runtime_mapaccess1_faststr(0x107db20, var_e8h, arg2, arg5);
        if (*(int64_t *)(var_18h + 8) == puVar6[1]) {
            uVar3 = runtime_memequal(*puVar6, *(undefined8 *)var_18h);
            uVar3 = uVar3 ^ 1;
        } else {
            uVar3 = 1;
        }
    }
    if (uVar3 != 0) {
        var_80h = runtime_convTstring(*(undefined8 *)var_18h, *(undefined8 *)(var_18h + 8));
        var_88h = 0x1042920;
        var_70h = runtime_convTstring(arg2, arg5);
        var_78h = 0x1042920;
        puVar6 = (undefined8 *)runtime_mapaccess1_faststr(0x107db20, var_e8h, arg2, arg5);
        var_60h = runtime_convTstring(*puVar6, puVar6[1]);
        var_68h = 0x1042920;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a6d52 /* "[停靠] 车辆 %s 到达 %s 但该点已被 %s 占用，释放预约\n" */, 0x46, &var_88h, 3, 3);
        pkg_diapdu___TaskScheduler__releaseDockForVehicle(in_RAX, *(undefined8 *)var_18h, *(undefined8 *)(var_18h + 8));
        uVar1 = *(undefined8 *)var_18h;
        uVar7 = pkg_diapdu___TaskScheduler__moveForkliftToNearestPPDock
                          (*(int64_t *)(var_18h + 8), in_stack_fffffffffffffea8, in_stack_fffffffffffffeb0, 
                           in_stack_fffffffffffffeb8, CONCAT44(var_11dh._1_4_, _auStack_120), var_f8h);
        (**(code **)var_10h)(uVar7, uVar1);
        return;
    }
    var_a0h = runtime_convTstring(*(undefined8 *)var_18h, *(undefined8 *)(var_18h + 8));
    var_a8h = 0x1042920;
    var_90h = runtime_convTstring(arg2, arg5);
    var_98h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1196a96 /* "[停靠] 车辆 %s 已到达停靠点 %s\n" */, 0x29, &var_a8h, 2, 2);
    pkg_diapdu___TaskScheduler__claimDockIfParked(in_RAX, *(undefined8 *)var_18h, *(undefined8 *)(var_18h + 8), arg2, arg5);
    iVar5 = *(int64_t *)in_RAX[8];
    iVar10 = ((int64_t *)in_RAX[8])[1];
    var_110h = iVar10;
    var_e0h = iVar5;
    for (iVar8 = 0; iVar8 < iVar10; iVar8 = iVar8 + 1) {
        puVar6 = *(undefined8 **)(iVar5 + iVar8 * 8);
        if ((arg5 == puVar6[1]) &&
           (var_108h = iVar8, var_100h = (int64_t)puVar6, cVar2 = runtime_memequal(*puVar6, arg2, puVar6[1]),
           iVar9 = var_100h, iVar8 = var_108h, iVar10 = var_110h, iVar5 = var_e0h, cVar2 != '\0'))
        goto code_r0x00e35380;
    }
    iVar9 = 0;
code_r0x00e35380:
    if (iVar9 != 0) {
        *(undefined8 *)(var_18h + 0x28) = *(undefined8 *)(iVar9 + 0x10);
        *(undefined8 *)(var_18h + 0x30) = *(undefined8 *)(iVar9 + 0x18);
    }
    (**(code **)var_10h)();
    return;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).waitDockArrival.deferwrap1 | VA 0xe35420 | taskservice.go:918
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h

void __stdcall
pkg_diapdu___TaskScheduler__waitDockArrival_deferwrap1
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

/* CAS-Backend/pkg/diapdu.StartAutoTaskScheduler | VA 0xe35480 | taskservice.go:1022
   DWARF parameters and results: updateInterval time.Duration, scheduleInterval time.Duration, alreadyRunning bool, alreadyRunning bool, err error
   DWARF locals: graph *CAS-Backend/pkg/diapdu.Graph */
// WARNING: Variable defined which should be unmapped: arg_10h
// WARNING: Restarted to delay deadcode elimination for space: stack
// WARNING: [rz-ghidra] Detected overlap for variable var_cah
// WARNING: [rz-ghidra] Detected overlap for variable var_c8h

undefined __stdcall pkg_diapdu_StartAutoTaskScheduler(int64_t arg_8h, int64_t arg_10h, int64_t arg_58h)
{
    undefined8 in_RAX;
    uint64_t uVar1;
    int64_t iVar2;
    undefined8 *puVar3;
    int64_t iVar4;
    int64_t iVar5;
    int64_t iVar6;
    int64_t iVar7;
    undefined8 *puVar8;
    undefined8 unaff_RBX;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t *extraout_R11_03;
    int64_t unaff_R14;
    bool bVar9;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    int64_t var_c9h;
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
    
    while (&var_88h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    uVar1 = 0;
    LOCK();
    bVar9 = *(uint32_t *)0x355d3c0 == 0;
    if (bVar9) {
        *(uint32_t *)0x355d3c0 = 1;
    } else {
        uVar1 = (uint64_t)*(uint32_t *)0x355d3c0;
    }
    UNLOCK();
    if (!bVar9) {
        uVar1 = sync___Mutex__lockSlow(0x355d3c0);
    }
    var_20h = 0xe35ae0;
    var_18h = 0x355d3c0;
    var_10h = (int64_t)&var_20h;
    if (*(char *)0x355d2a8 != '\0') {
        (*(code *)0xe35ae0)();
        return 1;
    }
    if (*(int32_t *)0x355d300 == 0) {
        fmt_Errorf(0x11a8ff0 /* "地图未加载，请等待车辆连接并加载地图，或先上传/加载地图" */, 0x52, 0, 0, 0);
        (**(code **)var_10h)();
        return 0;
    }
    iVar2 = pkg_diapdu_GetGraph(uVar1);
    if (iVar2 == 0) {
        fmt_Errorf(0x117a768 /* "地图未加载" */, 0xf, 0, 0, 0);
        (**(code **)var_10h)();
        return 0;
    }
    var_48h = runtime_makechan(0x1044ce0, 0);
    var_50h = runtime_makemap_small();
    var_58h = runtime_makemap_small();
    puVar3 = (undefined8 *)runtime_newobject(0x11163c0);
    *puVar3 = in_RAX;
    *(undefined *)(puVar3 + 1) = 1;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier5();
        *extraout_R11 = var_48h;
        extraout_R11[1] = var_50h;
        extraout_R11[2] = var_58h;
        extraout_R11[3] = (int64_t)puVar3;
        extraout_R11[4] = (int64_t)*(int64_t *)0x3512050;
    }
    puVar3[2] = var_48h;
    puVar3[6] = var_50h;
    puVar3[7] = var_58h;
    puVar3[8] = 0xffffffffffffffff;
    *(undefined8 **)0x3512050 = puVar3;
    pkg_diapdu___ForkliftUpdater__updateForkliftStatus();
    pkg_diapdu___ForkliftUpdater__Start(*(undefined8 **)0x3512050);
    puVar3 = *(undefined8 **)0x3512050;
    var_48h = runtime_makechan(0x1044ce0, 0);
    var_60h = runtime_makemap_small();
    iVar4 = runtime_newobject(0x10bc3e0);
    if (*(int32_t *)0x355db50 != 0) {
        iVar4 = runtime_gcWriteBarrier1();
        *extraout_R11_00 = var_60h;
    }
    *(int64_t *)(iVar4 + 0x18) = var_60h;
    var_68h = runtime_makemap_small();
    var_70h = runtime_makemap_small();
    var_78h = runtime_makemap_small();
    var_80h = runtime_makemap_small();
    var_58h = runtime_makemap_small();
    var_88h = runtime_makemap_small();
    iVar5 = runtime_makemap_small();
    iVar6 = runtime_newobject(0x1122060);
    if (*(int32_t *)0x355db50 != 0) {
        iVar6 = runtime_gcWriteBarrier7();
        *extraout_R11_01 = var_68h;
        extraout_R11_01[1] = var_70h;
        extraout_R11_01[2] = var_78h;
        extraout_R11_01[3] = var_80h;
        extraout_R11_01[4] = var_58h;
        extraout_R11_01[5] = var_88h;
        extraout_R11_01[6] = iVar5;
    }
    *(int64_t *)(iVar6 + 8) = var_68h;
    *(int64_t *)(iVar6 + 0x10) = var_70h;
    *(int64_t *)(iVar6 + 0x18) = var_78h;
    *(int64_t *)(iVar6 + 0x20) = var_80h;
    *(int64_t *)(iVar6 + 0x28) = var_58h;
    *(int64_t *)(iVar6 + 0x30) = var_88h;
    *(int64_t *)(iVar6 + 0x48) = iVar5;
    iVar5 = runtime_makemap_small();
    iVar7 = runtime_makemap_small();
    puVar8 = (undefined8 *)runtime_newobject(0x112d360);
    if (*(int32_t *)0x355db50 != 0) {
        puVar8 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_02 = puVar3;
    }
    *puVar8 = puVar3;
    puVar8[2] = in_XMM15_Qa;
    puVar8[3] = in_XMM15_Qb;
    puVar8[1] = 0x355d2a0;
    if (*(int32_t *)0x355db50 != 0) {
        puVar8 = (undefined8 *)runtime_gcWriteBarrier8();
        *extraout_R11_03 = var_48h;
        extraout_R11_03[1] = iVar2;
        extraout_R11_03[2] = iVar4;
        extraout_R11_03[3] = iVar6;
        extraout_R11_03[4] = iVar5;
        extraout_R11_03[5] = iVar7;
        extraout_R11_03[6] = (int64_t)puVar8;
        extraout_R11_03[7] = (int64_t)*(int64_t *)0x3512058;
    }
    puVar8[5] = var_48h;
    puVar8[6] = unaff_RBX;
    puVar8[7] = 3;
    puVar8[8] = iVar2;
    puVar8[9] = iVar4;
    puVar8[10] = iVar6;
    puVar8[0xc] = iVar5;
    puVar8[0xd] = iVar7;
    *(undefined8 **)0x3512058 = puVar8;
    pkg_diapdu___TaskScheduler__Start();
    *(undefined *)0x355d2a8 = 1;
    iVar2 = pkg_diapdu___ForkliftUpdater__OnlineCount(*(undefined8 **)0x3512050);
    if (iVar2 == 0) {
        var_30h = 0x1042920;
        var_28h = 0x2e67e60 /* "自动任务调度已启动，等待数据中心 runtime-push 推送车辆状态（不向车辆 TCP 轮询）" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    } else {
        pkg_diapdu___ForkliftUpdater__OnlineCount(*(undefined8 **)0x3512050);
        var_38h = runtime_convT64();
        var_40h = 0x1042b60;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11aa378 /* "自动任务调度已启动，当前可调度车辆 %d 辆（数据来源：数据中心推送）\n" */, 0x62, &var_40h, 1, 1);
    }
    (**(code **)var_10h)();
    return 0;
}

/* CAS-Backend/pkg/diapdu.StartAutoTaskScheduler.deferwrap1 | VA 0xe35ae0 | taskservice.go:1024
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu_StartAutoTaskScheduler_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.StopAutoTaskScheduler | VA 0xe35b40 | taskservice.go:1050
   DWARF parameters and results: wasRunning bool, wasRunning bool, err error
   DWARF locals: (no entries) */
// WARNING: Restarted to delay deadcode elimination for space: stack
// WARNING: [rz-ghidra] Detected overlap for variable var_42h
// WARNING: [rz-ghidra] Detected overlap for variable var_40h

undefined pkg_diapdu_StopAutoTaskScheduler(void)
{
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    bool bVar1;
    undefined auVar2 [16];
    int64_t var_41h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    LOCK();
    bVar1 = *(int32_t *)0x355d3c0 == 0;
    if (bVar1) {
        *(int32_t *)0x355d3c0 = 1;
    }
    UNLOCK();
    if (!bVar1) {
        sync___Mutex__lockSlow(0x355d3c0);
    }
    var_20h = 0xe35d20;
    var_18h = 0x355d3c0;
    var_10h = (int64_t)&var_20h;
    if (*(char *)0x355d2a8 == '\0') {
        (*(code *)0xe35d20)();
        return 0;
    }
    if (*(int64_t *)0x3512058 != 0) {
        auVar2 = runtime_closechan(*(undefined8 *)(*(int64_t *)0x3512058 + 0x28));
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier1(auVar2._0_8_, auVar2._8_8_, *(int64_t *)0x3512058);
            *extraout_R11 = extraout_RCX;
        }
        *(int64_t *)0x3512058 = 0;
    }
    if (*(int64_t *)0x3512050 != 0) {
        auVar2 = runtime_closechan(*(undefined8 *)(*(int64_t *)0x3512050 + 0x10));
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier1(auVar2._0_8_, auVar2._8_8_, *(int64_t *)0x3512050);
            *extraout_R11_00 = extraout_RCX_00;
        }
        *(int64_t *)0x3512050 = 0;
    }
    pkg_diapdu_SetGlobalDynamicTraffic(0);
    *(undefined *)0x355d2a8 = 0;
    var_30h = 0x1042920;
    var_28h = 0x2e67e70 /* "自动任务调度已停止" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    (**(code **)var_10h)();
    return 1;
}

/* CAS-Backend/pkg/diapdu.StopAutoTaskScheduler.deferwrap1 | VA 0xe35d20 | taskservice.go:1052
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu_StopAutoTaskScheduler_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}

/* CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning | VA 0xe35d80 | taskservice.go:1071
   DWARF parameters and results: ~r0 bool, ~r0 bool
   DWARF locals: (no entries) */
// WARNING: Restarted to delay deadcode elimination for space: stack
// WARNING: [rz-ghidra] Detected overlap for variable var_22h
// WARNING: [rz-ghidra] Detected overlap for variable var_20h
// WARNING: [rz-ghidra] Detected overlap for variable var_2bh
// WARNING: [rz-ghidra] Detected overlap for variable var_28h
// WARNING: [rz-ghidra] Detected overlap for variable var_1ch
// WARNING: [rz-ghidra] Detected overlap for variable var_29h
// WARNING: [rz-ghidra] Detected overlap for variable var_24h

undefined pkg_diapdu_IsAutoTaskSchedulerRunning(void)
{
    undefined uVar1;
    int64_t unaff_R14;
    bool bVar2;
    int64_t in_stack_ffffffffffffffd0;
    int64_t var_21h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_21h._0_1_ = 0;
    LOCK();
    bVar2 = *(int32_t *)0x355d3c0 == 0;
    if (bVar2) {
        *(int32_t *)0x355d3c0 = 1;
    }
    UNLOCK();
    if (!bVar2) {
        sync___Mutex__lockSlow(in_stack_ffffffffffffffd0);
    }
    uVar1 = *(undefined *)0x355d2a8;
    stack0xffffffffffffffe0 = 0xe35e40;
    var_18h = 0x355d3c0;
    var_10h = (int64_t)&var_21h + 1;
    var_21h._0_1_ = 0;
    (*(code *)0xe35e40)();
    return uVar1;
}

/* CAS-Backend/pkg/diapdu.IsAutoTaskSchedulerRunning.deferwrap1 | VA 0xe35e40 | taskservice.go:1073
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_diapdu_IsAutoTaskSchedulerRunning_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int32_t iVar1;
    int64_t *piVar2;
    int32_t *piVar3;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000010;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
        arg3 = extraout_RDX;
    }
    piVar2 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar2 != (int64_t *)0x0) && ((int64_t *)*piVar2 == &arg_8h)) {
        *piVar2 = (int64_t)&var_18h;
    }
    piVar3 = *(int32_t **)(arg3 + 8);
    LOCK();
    iVar1 = *piVar3;
    *piVar3 = *piVar3 + -1;
    UNLOCK();
    if (iVar1 != 1) {
        sync___Mutex__unlockSlow(var_18h, in_stack_fffffffffffffff0, in_stack_00000010);
    }
    return;
}
