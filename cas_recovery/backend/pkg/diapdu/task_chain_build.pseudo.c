/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.PrependApproachToTaskChain | VA 0xe2d080 | task_chain_build.go:12
   DWARF parameters and results: currentStation string, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r0 []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r1 bool, ~r2 error
   DWARF locals: ok bool, current string, chainStart string, approach []CAS-Backend/pkg/agvcontrol.ForkliftTask, i int */
// WARNING: Variable defined which should be unmapped: var_28h

int64_t __stdcall
pkg_diapdu_PrependApproachToTaskChain
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_50h, int64_t arg_58h, int64_t arg_60h, int64_t arg_80h, int64_t arg_e0h)
{
    char cVar1;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    uint64_t uVar2;
    uint64_t extraout_RCX;
    uint64_t extraout_RCX_00;
    int64_t iVar3;
    uint64_t uVar4;
    int64_t iVar5;
    int64_t extraout_RBX;
    uint64_t extraout_RBX_00;
    int64_t iVar6;
    int64_t extraout_R8;
    undefined8 extraout_R9;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar7 [16];
    undefined auVar8 [16];
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
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
    
    while (&var_30h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (arg1 == 0) {
        return arg4;
    }
    auVar7 = strings_TrimSpace();
    iVar5 = auVar7._8_8_;
    if (iVar5 == 0) {
        fmt_Errorf(0x118b894 /* "无法获取车辆当前站点" */, 0x1e, 0, 0, 0);
        return 0;
    }
    auVar8 = strings_TrimSpace(*(undefined8 *)arg4, *(undefined8 *)(arg4 + 8));
    iVar3 = auVar8._8_8_;
    uVar4 = auVar8._0_8_;
    if (iVar3 == 0) {
        fmt_Errorf(0x118c869 /* "任务链首段缺少 source_id" */, 0x1f, 0, 0, 0);
        return 0;
    }
    if ((iVar3 == iVar5) && (cVar1 = runtime_memequal(auVar7._0_8_, uVar4), cVar1 != '\0')) {
        return arg4;
    }
    cVar1 = '\0';
    uVar2 = uVar4;
    var_30h = pkg_diapdu_buildGotoTasks
                        (iVar3, 0, placeholder_2, uVar4, 0, 0, in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, 
                         in_stack_ffffffffffffff60, in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, 
                         in_stack_ffffffffffffff78, in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, 
                         in_stack_ffffffffffffff90, var_28h);
    if (cVar1 == '\0') {
        var_20h = runtime_convTstring(auVar7._0_8_, iVar5);
        var_28h = 0x1042920;
        var_10h = runtime_convTstring(uVar4, iVar3);
        var_18h = 0x1042920;
        fmt_Errorf(0x11a2490 /* "无法规划从当前站 %s 到任务链起点 %s 的路径" */, 0x3b, &var_28h, 2, 2);
        return 0;
    }
    for (iVar3 = 0; iVar3 < iVar5; iVar3 = iVar3 + 1) {
        iVar6 = iVar3 * 0xe0;
        *(undefined8 *)(var_30h + 0x28 + iVar6) = 0;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier1();
            *extraout_R11 = extraout_R9;
            var_30h = extraout_RAX;
            uVar2 = extraout_RCX;
            iVar5 = extraout_RBX;
            iVar6 = extraout_R8;
        }
        *(undefined8 *)(var_30h + 0x20 + iVar6) = 0;
    }
    uVar4 = iVar5 + arg1;
    if (uVar2 < uVar4) {
        runtime_growslice(var_30h, uVar4);
        var_30h = extraout_RAX_00;
        uVar2 = extraout_RCX_00;
        uVar4 = extraout_RBX_00;
    }
    runtime_typedslicecopy(0x1142180, var_30h + (iVar5 * 0xe0 & (int64_t)(iVar5 - uVar2) >> 0x3f), uVar4 - iVar5, arg4, arg1);
    return var_30h;
}
