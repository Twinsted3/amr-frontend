/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.ParseForkliftTaskJSON | VA 0xe27aa0 | exc_task_build.go:29
   DWARF parameters and results: data string, ~r0 CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r1 error
   DWARF locals: &task *CAS-Backend/pkg/agvcontrol.ForkliftTask, err error */
// WARNING: Variable defined which should be unmapped: var_10h
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall pkg_diapdu_ParseForkliftTaskJSON(int64_t arg_8h, int64_t arg_30h, int64_t arg_e8h, int64_t arg_f0h)
{
    int64_t iVar1;
    undefined8 uVar2;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t in_stack_00000038;
    int64_t var_58h;
    int64_t in_stack_ffffffffffffffb8;
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
    fcn.00478abd();
    iVar1 = runtime_newobject(in_stack_ffffffffffffffb8);
    if (unaff_RBX == 0) {
        uVar2 = fmt_Errorf(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                             in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_00000038);
        uVar2 = fcn.00478ddc(uVar2, 0x12);
        return uVar2;
    }
    runtime_stringtoslicebyte(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd8);
    iVar1 = encoding_json_Unmarshal(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                         in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, iVar1);
    if (iVar1 == 0) {
        fcn.00478ddc();
        return 0;
    }
    uVar2 = fmt_Errorf(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                         in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_00000038);
    uVar2 = fcn.00478ddc(uVar2, 0x24);
    return uVar2;
}

/* CAS-Backend/pkg/diapdu.splitRoadPoint | VA 0xe27c40 | exc_task_build.go:40
   DWARF parameters and results: s string, ~r0 []string
   DWARF locals: out []string, item string */
int64_t __stdcall pkg_diapdu_splitRoadPoint(int64_t arg_8h, int64_t arg_10h, int64_t arg_60h)
{
    undefined8 *puVar1;
    int64_t iVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    uint64_t extraout_RCX;
    uint64_t uVar5;
    int64_t unaff_RBX;
    int64_t extraout_RSI;
    int64_t iVar6;
    int64_t extraout_RDI;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar7 [16];
    undefined auVar8 [16];
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
    int64_t in_stack_ffffffffffffffa0;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
        arg_10h = unaff_RBX;
    }
    if (unaff_RBX == 0) {
        return 0;
    }
    auVar7 = strings_genSplit();
    uVar4 = 0;
    iVar2 = 0;
    uVar5 = 0;
    while( true ) {
        puVar1 = auVar7._0_8_;
        if (auVar7._8_8_ < 1) break;
        auVar8 = strings_TrimSpace(*puVar1, puVar1[1]);
        uVar3 = auVar8._0_8_;
        if (auVar8._8_8_ != 0) {
            if (uVar4 < uVar5 + 1) {
                iVar2 = runtime_growslice(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                                     in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, arg_10h);
            }
            iVar6 = uVar5 * 0x10;
            *(int64_t *)(iVar2 + 8 + iVar6) = auVar8._8_8_;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = runtime_gcWriteBarrier2();
                *extraout_R11 = uVar3;
                extraout_R11[1] = *(undefined8 *)(extraout_RSI + extraout_RDI);
                uVar4 = extraout_RCX;
                iVar2 = extraout_RSI;
                iVar6 = extraout_RDI;
            }
            *(undefined8 *)(iVar2 + iVar6) = uVar3;
            uVar5 = uVar5 + 1;
        }
        auVar7._8_8_ = auVar7._8_8_ + -1;
        auVar7._0_8_ = puVar1 + 2;
    }
    return iVar2;
}

/* CAS-Backend/pkg/diapdu.PlanStationPathFromGraph | VA 0xe27da0 | exc_task_build.go:59
   DWARF parameters and results: start string, end string, waypoints []string, ~r0 []string, ~r1 error
   DWARF locals: g *CAS-Backend/pkg/diapdu.Graph */
// WARNING: [rz-ghidra] Detected overlap for variable var_28h

undefined8 __stdcall
pkg_diapdu_PlanStationPathFromGraph
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h)
{
    int64_t iVar1;
    undefined8 uVar2;
    int64_t unaff_R14;
    int64_t in_stack_00000060;
    int64_t in_stack_000000f0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    iVar1 = pkg_diapdu_GetGraph();
    if ((iVar1 != 0) && (*(int64_t *)(iVar1 + 8) != 0)) {
        uVar2 = pkg_diapdu_PlanStationPath(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                             in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                             in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000060, in_stack_000000f0)
        ;
        return uVar2;
    }
    fmt_Errorf(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, arg6);
    return 0;
}

/* CAS-Backend/pkg/diapdu.buildGotoTasks | VA 0xe27ea0 | exc_task_build.go:76
   DWARF parameters and results: now string, end string, timestamp string, waypoints []string, ~r0 []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r1 []string, ~r2 int, ~r3 bool
   DWARF locals: index int, taskids []string, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, roadpoints []string, err error, ~r0.ptr *string, ~r0.len int, i int */
undefined8 __stdcall
pkg_diapdu_buildGotoTasks
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, int64_t arg_90h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    undefined8 extraout_RAX_01;
    undefined8 extraout_RAX_02;
    int64_t iVar2;
    uint64_t uVar3;
    uint64_t extraout_RCX;
    uint64_t extraout_RCX_00;
    uint64_t extraout_RCX_01;
    int64_t extraout_RCX_02;
    undefined8 uVar4;
    uint64_t uVar5;
    undefined8 unaff_RBX;
    uint64_t extraout_RBX;
    uint64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    undefined8 extraout_RBX_02;
    undefined *puVar6;
    undefined8 unaff_RBP;
    undefined *puVar7;
    undefined8 extraout_RSI;
    undefined8 uVar8;
    int64_t extraout_RSI_00;
    int64_t extraout_RSI_01;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    int64_t extraout_R8;
    int64_t iVar9;
    int64_t extraout_R9;
    undefined8 in_R10;
    undefined8 extraout_R10;
    undefined8 in_R11;
    int64_t iVar10;
    undefined8 *extraout_R11;
    undefined8 extraout_R11_00;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined8 in_XMM15_Qb;
    undefined auVar11 [16];
    int64_t var_1c0h;
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
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    do {
        puVar6 = (undefined *)*(undefined **)0x20;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0x130)) {
            puVar7 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar6 = (undefined *)((int64_t)*(undefined **)0x20 + -0x1b0);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x38) = arg6;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x30) = arg5;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28) = arg2;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe27ef4;
            auVar11 = pkg_diapdu_PlanStationPathFromGraph();
            iVar10 = auVar11._8_8_;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) = auVar11._0_8_;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x170) = iVar10;
            if (extraout_RDI != 0) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = in_XMM15_Qa;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = in_XMM15_Qb;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x18) = *(undefined8 *)(extraout_RDI + 8);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = extraout_RSI;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe27f48;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, (undefined *)((int64_t)*(undefined **)0x20 + -0x18)
                                , 1, 1);
                iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x170);
            }
            if (iVar10 < 2) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = 0x1042920;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = 0x2e67e20 /* "路径点不足" */;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe27fbb;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, (undefined *)((int64_t)*(undefined **)0x20 + -0x28)
                                , 1, 1);
                return 0x355d2a0;
            }
            iVar2 = 0;
            uVar4 = 0;
            uVar8 = 0x355d2a0;
            uVar1 = 0;
            uVar3 = 0;
            iVar9 = 0x355d2a0;
            uVar5 = 0;
            while( true ) {
                if (iVar10 + -1 <= iVar2) {
                    return uVar8;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128) = uVar8;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x150) = uVar3;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x148) = iVar2;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x158) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x160) = uVar4;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120) = iVar9;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x168) = uVar1;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138) = iVar2 << 4;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x140) = iVar2 + 1;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe28071;
                strconv_FormatInt(iVar2, 10);
                *(undefined **)((int64_t)*(undefined **)0x20 + -0x1c0) = puVar7;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe2808f;
                auVar11 = runtime_duffcopy_offset_700();
                unaff_RBP = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c0);
                iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130);
                uVar1 = *(undefined8 *)(iVar10 + 8 + *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) =
                     *(undefined8 *)(iVar10 + *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138));
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100) = uVar1;
                uVar3 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x140);
                if (*(uint64_t *)((int64_t)*(undefined **)0x20 + -0x170) <= uVar3) break;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138) =
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x168) + 1;
                uVar1 = *(undefined8 *)(iVar10 + 8 + uVar3 * 0x10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = *(undefined8 *)(iVar10 + uVar3 * 0x10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = uVar1;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe28113;
                auVar11 = runtime_concatstring2(0, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28), 
                                          *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x30), auVar11._0_8_, 
                                          auVar11._8_8_);
                *(undefined (*) [16])((int64_t)*(undefined **)0x20 + -0xe8) = auVar11;
                uVar3 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x160);
                uVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x138);
                if (uVar3 < uVar5) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe28155;
                    runtime_growslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128), uVar5, uVar3, 1, 0x1142180);
                    iVar10 = extraout_RAX;
                    uVar3 = extraout_RCX;
                    uVar5 = extraout_RBX;
                } else {
                    iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128);
                }
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128) = iVar10;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x168) = uVar5;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x160) = uVar3;
                iVar10 = uVar5 * 0xe0 + iVar10 + -0xe0;
                if (*(int32_t *)0x355db50 != 0) {
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x110) = iVar10;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe281a5;
                    runtime_wbMove(0x1142180, iVar10, (undefined *)((int64_t)*(undefined **)0x20 + -0x108));
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1c0) = unaff_RBP;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe281cf;
                runtime_duffcopy_offset_700();
                puVar7 = *(undefined **)((int64_t)*(undefined **)0x20 + -0x1c0);
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138) =
                     *(int64_t *)((int64_t)*(undefined **)0x20 + -0x158) + 1;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe281ef;
                auVar11 = strconv_FormatInt(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x148), 10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe2820c;
                auVar11 = runtime_concatstring2(0, *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28), 
                                          *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x30), auVar11._0_8_, 
                                          auVar11._8_8_);
                uVar3 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x150);
                uVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x138);
                if (uVar3 < uVar5) {
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138) = auVar11._8_8_;
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x118) = auVar11._0_8_;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe2824e;
                    runtime_growslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x120), uVar5, uVar3, 1, 0x1042920);
                    auVar11._8_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138);
                    auVar11._0_8_ = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x118);
                    uVar3 = extraout_RCX_00;
                    uVar5 = extraout_RBX_00;
                    iVar9 = extraout_RAX_00;
                } else {
                    iVar9 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x120);
                }
                uVar1 = auVar11._0_8_;
                iVar10 = (uVar5 - 1) * 0x10;
                *(int64_t *)(iVar9 + 8 + iVar10) = auVar11._8_8_;
                if (*(int32_t *)0x355db50 != 0) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe28285;
                    runtime_gcWriteBarrier2(uVar1, iVar10);
                    *extraout_R11 = extraout_RAX_01;
                    extraout_R11[1] = *(undefined8 *)(extraout_RSI_00 + extraout_RBX_01);
                    uVar1 = extraout_RAX_01;
                    uVar3 = extraout_RCX_01;
                    iVar9 = extraout_RSI_00;
                    iVar10 = extraout_RBX_01;
                }
                *(undefined8 *)(iVar9 + iVar10) = uVar1;
                iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x170);
                uVar1 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x168);
                iVar2 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x140);
                uVar4 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x160);
                uVar8 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x128);
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x1b8) = 0xe282c5;
            runtime_panicIndex(uVar3);
            in_RAX = extraout_RAX_02;
            arg4 = extraout_RCX_02;
            unaff_RBX = extraout_RBX_02;
            arg2 = extraout_RSI_01;
            arg1 = extraout_RDI_00;
            arg5 = extraout_R8;
            arg6 = extraout_R9;
            in_R10 = extraout_R10;
            in_R11 = extraout_R11_00;
        }
        *(undefined8 *)(puVar6 + 8) = in_RAX;
        *(undefined8 *)(puVar6 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar6 + 0x18) = arg4;
        *(int64_t *)(puVar6 + 0x20) = arg1;
        *(int64_t *)(puVar6 + 0x28) = arg2;
        *(int64_t *)(puVar6 + 0x30) = arg5;
        *(int64_t *)(puVar6 + 0x38) = arg6;
        *(undefined8 *)(puVar6 + 0x40) = in_R10;
        *(undefined8 *)(puVar6 + 0x48) = in_R11;
        *(undefined8 *)(puVar6 + -8) = 0xe282f8;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar6 + 8);
        unaff_RBX = *(undefined8 *)(puVar6 + 0x10);
        arg4 = *(int64_t *)(puVar6 + 0x18);
        arg1 = *(int64_t *)(puVar6 + 0x20);
        arg2 = *(int64_t *)(puVar6 + 0x28);
        arg5 = *(int64_t *)(puVar6 + 0x30);
        arg6 = *(int64_t *)(puVar6 + 0x38);
        in_R10 = *(undefined8 *)(puVar6 + 0x40);
        in_R11 = *(undefined8 *)(puVar6 + 0x48);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar6;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.appendPathMiddleMoveTasks | VA 0xe28340 | exc_task_build.go:106
   DWARF parameters and results: tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, taskids []string, roadpoints []string, timestamp string, index int, ~r0 []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r1 []string, ~r2 int
   DWARF locals: i int */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall
pkg_diapdu_appendPathMiddleMoveTasks
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, int64_t arg_50h, int64_t arg_58h, int64_t arg_60h)
{
    int64_t in_RAX;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    uint64_t extraout_RCX;
    uint64_t extraout_RCX_00;
    uint64_t extraout_RCX_01;
    int64_t iVar1;
    uint64_t unaff_RBX;
    uint64_t extraout_RBX;
    uint64_t extraout_RBX_00;
    int64_t iVar2;
    int64_t extraout_RSI;
    int64_t in_R10;
    int64_t iVar3;
    int64_t extraout_R10;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    undefined auVar4 [16];
    int64_t var_198h;
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
    int64_t var_8h;
    
    while (&var_108h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe28673;
        runtime_morestack_noctxt_abi0();
    }
    for (iVar1 = 2; iVar1 < in_R10 + -1; iVar1 = iVar1 + 1) {
        unaff_RBX = unaff_RBX + 1;
        iVar2 = (iVar1 + -1) * 0x10;
        var_f8h = in_RAX;
        var_f0h = arg1;
        strconv_FormatInt(arg_18h, 10);
        auVar4 = runtime_duffcopy_offset_700();
        var_e8h = *(int64_t *)(arg6 + iVar2);
        var_e0h = *(int64_t *)(arg6 + 8 + iVar2);
        var_d8h = *(int64_t *)(arg6 + iVar1 * 0x10);
        var_d0h = *(int64_t *)(arg6 + 8 + iVar1 * 0x10);
        auVar4 = runtime_concatstring2(0, arg_8h, arg_10h, auVar4._0_8_, auVar4._8_8_);
        var_c0h = auVar4._8_8_;
        var_c8h = auVar4._0_8_;
        if ((uint64_t)arg4 < unaff_RBX) {
            runtime_growslice(var_f8h, unaff_RBX, arg4, 1, 0x1142180);
            auVar4._8_8_ = var_c0h;
            auVar4._0_8_ = var_c8h;
            var_f8h = extraout_RAX;
            arg4 = extraout_RCX;
            unaff_RBX = extraout_RBX;
        }
        var_c0h = auVar4._8_8_;
        var_c8h = auVar4._0_8_;
        iVar2 = unaff_RBX * 0xe0 + var_f8h + -0xe0;
        if (*(int32_t *)0x355db50 != 0) {
            var_100h = iVar2;
            runtime_wbMove(0x1142180, iVar2, &var_e8h);
            auVar4._8_8_ = var_c0h;
            auVar4._0_8_ = var_c8h;
        }
        var_c0h = auVar4._8_8_;
        var_c8h = auVar4._0_8_;
        runtime_duffcopy_offset_700();
        arg2 = arg2 + 1;
        auVar4 = strconv_FormatInt(arg_18h, 10);
        auVar4 = runtime_concatstring2(0, arg_8h, arg_10h, auVar4._0_8_, auVar4._8_8_);
        iVar2 = auVar4._0_8_;
        arg1 = var_f0h;
        if ((uint64_t)arg5 < (uint64_t)arg2) {
            var_108h = iVar2;
            runtime_growslice(var_f0h, arg2, arg5, 1, 0x1042920);
            iVar2 = var_108h;
            arg5 = extraout_RCX_00;
            arg2 = extraout_RBX_00;
            arg1 = extraout_RAX_00;
        }
        iVar3 = (arg2 - 1U) * 0x10;
        *(int64_t *)(arg1 + 8 + iVar3) = auVar4._8_8_;
        if (*(int32_t *)0x355db50 != 0) {
            iVar2 = runtime_gcWriteBarrier2();
            *extraout_R11 = iVar2;
            extraout_R11[1] = *(int64_t *)(extraout_RSI + extraout_R10);
            arg5 = extraout_RCX_01;
            arg1 = extraout_RSI;
            iVar3 = extraout_R10;
        }
        *(int64_t *)(arg1 + iVar3) = iVar2;
        arg_18h = arg_18h + 1;
        in_RAX = var_f8h;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.appendPathAllMoveTasks | VA 0xe286c0 | exc_task_build.go:124
   DWARF parameters and results: tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, taskids []string, roadpoints []string, timestamp string, index int, runHeight float64, ~r0 []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r1 []string, ~r2 int
   DWARF locals: forkMid float64, i int */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall
pkg_diapdu_appendPathAllMoveTasks
          (int64_t arg7, int64_t arg1, int64_t arg2, undefined8 placeholder_3, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, int64_t arg_50h, int64_t arg_58h, int64_t arg_60h,
          int64_t arg_68h)
{
    int64_t in_RAX;
    int64_t extraout_RAX;
    int64_t extraout_RAX_00;
    int64_t iVar1;
    int64_t extraout_RAX_01;
    int64_t extraout_RAX_02;
    int64_t extraout_RAX_03;
    int64_t extraout_RAX_04;
    int64_t extraout_RCX;
    uint64_t extraout_RCX_00;
    uint64_t extraout_RCX_01;
    int64_t extraout_RCX_02;
    uint64_t extraout_RCX_03;
    uint64_t extraout_RCX_04;
    int64_t extraout_RCX_05;
    uint64_t extraout_RCX_06;
    uint64_t extraout_RCX_07;
    int64_t iVar2;
    int64_t unaff_RBX;
    uint64_t extraout_RBX;
    uint64_t uVar3;
    uint64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    uint64_t extraout_RBX_02;
    uint64_t extraout_RBX_03;
    uint64_t extraout_RBX_04;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t extraout_RSI_01;
    int64_t in_R10;
    int64_t iVar4;
    int64_t extraout_R10;
    int64_t extraout_R10_00;
    int64_t extraout_R10_01;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t unaff_R14;
    undefined auVar5 [16];
    undefined auVar6 [16];
    undefined auVar7 [16];
    int64_t var_1a0h;
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
    int64_t var_30h;
    int64_t var_8h;
    
    while (&var_110h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe28eb2;
        runtime_morestack_noctxt_abi0();
    }
    if ((double)arg7 < *(double *)0x2e67858) {
        arg7 = *(int64_t *)0x2e67870;
    }
    for (iVar2 = 1; iVar2 < in_R10; iVar2 = iVar2 + 1) {
        var_f0h = in_RAX;
        var_110h = arg4;
        var_f8h = arg1;
        if (iVar2 == 2) {
            uVar3 = unaff_RBX + 1;
            strconv_FormatInt(arg7, arg_18h, 10);
            auVar5 = runtime_duffcopy_offset_700();
            var_e8h = *(int64_t *)(arg6 + 0x10);
            var_e0h = *(int64_t *)(arg6 + 0x18);
            var_d8h = *(int64_t *)(arg6 + 0x20);
            var_d0h = *(int64_t *)(arg6 + 0x28);
            auVar5 = runtime_concatstring2(0, arg_8h, arg_10h, auVar5._0_8_, auVar5._8_8_);
            var_c0h = auVar5._8_8_;
            var_c8h = auVar5._0_8_;
            arg4 = var_110h;
            var_30h = arg7;
            if ((uint64_t)var_110h < uVar3) {
                runtime_growslice(var_f0h, uVar3, var_110h, 1, 0x1142180);
                auVar5._8_8_ = var_c0h;
                auVar5._0_8_ = var_c8h;
                var_f0h = extraout_RAX_03;
                arg4 = extraout_RCX_05;
                uVar3 = extraout_RBX_03;
            }
            var_c0h = auVar5._8_8_;
            var_c8h = auVar5._0_8_;
            iVar1 = var_f0h + uVar3 * 0xe0 + -0xe0;
            var_110h = uVar3;
            if (*(int32_t *)0x355db50 != 0) {
                var_100h = iVar1;
                runtime_wbMove(arg7, 0x1142180, iVar1, &var_e8h);
                auVar5._8_8_ = var_c0h;
                auVar5._0_8_ = var_c8h;
            }
            var_c0h = auVar5._8_8_;
            var_c8h = auVar5._0_8_;
            runtime_duffcopy_offset_700();
            arg2 = arg2 + 1;
            auVar5 = strconv_FormatInt(arg_18h, 10);
            auVar5 = runtime_concatstring2(0, arg_8h, arg_10h, auVar5._0_8_, auVar5._8_8_);
            iVar1 = auVar5._0_8_;
            arg1 = var_f8h;
            if ((uint64_t)arg5 < (uint64_t)arg2) {
                var_108h = iVar1;
                runtime_growslice(var_f8h, arg2, arg5, 1, 0x1042920);
                iVar1 = var_108h;
                arg5 = extraout_RCX_06;
                arg2 = extraout_RBX_04;
                arg1 = extraout_RAX_04;
            }
            iVar4 = (arg2 - 1U) * 0x10;
            *(int64_t *)(arg1 + 8 + iVar4) = auVar5._8_8_;
            if (*(int32_t *)0x355db50 != 0) {
                iVar1 = runtime_gcWriteBarrier2();
                *extraout_R11_01 = iVar1;
                extraout_R11_01[1] = *(int64_t *)(extraout_RSI_01 + extraout_R10_01);
                arg5 = extraout_RCX_07;
                arg1 = extraout_RSI_01;
                iVar4 = extraout_R10_01;
            }
            *(int64_t *)(arg1 + iVar4) = iVar1;
            in_RAX = var_f0h;
        } else if (iVar2 == 1) {
            uVar3 = unaff_RBX + 1;
            strconv_FormatInt(arg7, arg_18h, 10);
            auVar5 = runtime_duffcopy_offset_700();
            var_e8h = *(int64_t *)arg6;
            var_e0h = *(int64_t *)(arg6 + 8);
            var_d8h = *(int64_t *)(arg6 + 0x10);
            var_d0h = *(int64_t *)(arg6 + 0x18);
            auVar6 = runtime_concatstring2(0, arg_8h, arg_10h, auVar5._0_8_, auVar5._8_8_);
            var_c0h = auVar6._8_8_;
            var_c8h = auVar6._0_8_;
            arg4 = var_110h;
            if ((uint64_t)var_110h < uVar3) {
                runtime_growslice(var_f0h, uVar3, var_110h, 1, 0x1142180);
                auVar6._8_8_ = var_c0h;
                auVar6._0_8_ = var_c8h;
                var_f0h = extraout_RAX;
                arg4 = extraout_RCX;
                uVar3 = extraout_RBX;
            }
            var_c0h = auVar6._8_8_;
            var_c8h = auVar6._0_8_;
            iVar1 = var_f0h + uVar3 * 0xe0 + -0xe0;
            var_110h = uVar3;
            if (*(int32_t *)0x355db50 != 0) {
                var_100h = iVar1;
                runtime_wbMove(0x1142180, iVar1, &var_e8h);
                auVar6._8_8_ = var_c0h;
                auVar6._0_8_ = var_c8h;
            }
            var_c0h = auVar6._8_8_;
            var_c8h = auVar6._0_8_;
            runtime_duffcopy_offset_700();
            arg2 = arg2 + 1;
            auVar5 = strconv_FormatInt(arg_18h, 10);
            auVar5 = runtime_concatstring2(0, arg_8h, arg_10h, auVar5._0_8_, auVar5._8_8_);
            iVar1 = auVar5._0_8_;
            arg1 = var_f8h;
            if ((uint64_t)arg5 < (uint64_t)arg2) {
                var_108h = iVar1;
                runtime_growslice(var_f8h, arg2, arg5, 1, 0x1042920);
                iVar1 = var_108h;
                arg5 = extraout_RCX_00;
                arg2 = extraout_RBX_00;
                arg1 = extraout_RAX_00;
            }
            iVar4 = (arg2 - 1U) * 0x10;
            *(int64_t *)(arg1 + 8 + iVar4) = auVar5._8_8_;
            if (*(int32_t *)0x355db50 != 0) {
                iVar1 = runtime_gcWriteBarrier2();
                *extraout_R11 = iVar1;
                extraout_R11[1] = *(int64_t *)(extraout_RSI + extraout_R10);
                arg5 = extraout_RCX_01;
                arg1 = extraout_RSI;
                iVar4 = extraout_R10;
            }
            *(int64_t *)(arg1 + iVar4) = iVar1;
            in_RAX = var_f0h;
        } else {
            uVar3 = unaff_RBX + 1;
            iVar1 = (iVar2 + -1) * 0x10;
            strconv_FormatInt(arg7, arg_18h, 10);
            auVar5 = runtime_duffcopy_offset_700();
            var_e8h = *(int64_t *)(arg6 + iVar1);
            var_e0h = *(int64_t *)(arg6 + 8 + iVar1);
            var_d8h = *(int64_t *)(arg6 + iVar2 * 0x10);
            var_d0h = *(int64_t *)(arg6 + 8 + iVar2 * 0x10);
            auVar7 = runtime_concatstring2(0, arg_8h, arg_10h, auVar5._0_8_, auVar5._8_8_);
            var_c0h = auVar7._8_8_;
            var_c8h = auVar7._0_8_;
            arg4 = var_110h;
            if ((uint64_t)var_110h < uVar3) {
                runtime_growslice(var_f0h, uVar3, var_110h, 1, 0x1142180);
                auVar7._8_8_ = var_c0h;
                auVar7._0_8_ = var_c8h;
                var_f0h = extraout_RAX_01;
                arg4 = extraout_RCX_02;
                uVar3 = extraout_RBX_01;
            }
            var_c0h = auVar7._8_8_;
            var_c8h = auVar7._0_8_;
            iVar1 = var_f0h + uVar3 * 0xe0 + -0xe0;
            var_110h = uVar3;
            if (*(int32_t *)0x355db50 != 0) {
                var_100h = iVar1;
                runtime_wbMove(0x1142180, iVar1, &var_e8h);
                auVar7._8_8_ = var_c0h;
                auVar7._0_8_ = var_c8h;
            }
            var_c0h = auVar7._8_8_;
            var_c8h = auVar7._0_8_;
            runtime_duffcopy_offset_700();
            arg2 = arg2 + 1;
            auVar5 = strconv_FormatInt(arg_18h, 10);
            auVar5 = runtime_concatstring2(0, arg_8h, arg_10h, auVar5._0_8_, auVar5._8_8_);
            iVar1 = auVar5._0_8_;
            arg1 = var_f8h;
            if ((uint64_t)arg5 < (uint64_t)arg2) {
                var_108h = iVar1;
                runtime_growslice(var_f8h, arg2, arg5, 1, 0x1042920);
                iVar1 = var_108h;
                arg5 = extraout_RCX_03;
                arg2 = extraout_RBX_02;
                arg1 = extraout_RAX_02;
            }
            iVar4 = (arg2 - 1U) * 0x10;
            *(int64_t *)(arg1 + 8 + iVar4) = auVar5._8_8_;
            if (*(int32_t *)0x355db50 != 0) {
                iVar1 = runtime_gcWriteBarrier2();
                *extraout_R11_00 = iVar1;
                extraout_R11_00[1] = *(int64_t *)(extraout_RSI_00 + extraout_R10_00);
                arg5 = extraout_RCX_04;
                arg1 = extraout_RSI_00;
                iVar4 = extraout_R10_00;
            }
            *(int64_t *)(arg1 + iVar4) = iVar1;
            in_RAX = var_f0h;
        }
        arg_18h = arg_18h + 1;
        unaff_RBX = var_110h;
    }
    return;
}

/* CAS-Backend/pkg/diapdu.BuildExcNavigationTasks | VA 0xe28f00 | exc_task_build.go:173
   DWARF parameters and results: in CAS-Backend/pkg/diapdu.ExcNavInput, timestamp string, ~r0 CAS-Backend/pkg/diapdu.ExcNavBuildResult, ~r0 CAS-Backend/pkg/diapdu.ExcNavBuildResult
   DWARF locals: runHeight float64, err error, roadpoints []string, current string, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, taskids []string, out CAS-Backend/pkg/diapdu.ExcNavBuildResult, startPos CAS-Backend/pkg/agvcontrol.ForkliftTask, endPos CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r0.ptr *string, ~r0.cap int, ~r0.len int, index int, start string, end string, rp []string, ok bool */
// WARNING: Variable defined which should be unmapped: var_628h
// WARNING: Variable defined which should be unmapped: var_620h
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_338h because it doesn't fit into ProtoModel

int64_t __stdcall
pkg_diapdu_BuildExcNavigationTasks
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, int64_t arg_50h, int64_t arg_58h, int64_t arg_60h,
          int64_t arg_68h, int64_t arg_148h, int64_t arg_150h, int64_t arg_190h)
{
    char cVar1;
    undefined8 in_RAX;
    int64_t extraout_RAX;
    int64_t iVar3;
    int64_t extraout_RAX_00;
    int64_t iVar4;
    int64_t extraout_RAX_01;
    int64_t extraout_RAX_02;
    int64_t extraout_RAX_03;
    undefined8 uVar5;
    int64_t extraout_RAX_04;
    int64_t arg6;
    int64_t *piVar6;
    undefined8 extraout_RAX_05;
    undefined8 extraout_RAX_06;
    int64_t *extraout_RAX_07;
    uint8_t uVar2;
    int64_t extraout_RAX_08;
    int64_t extraout_RAX_09;
    int64_t extraout_RAX_10;
    int64_t extraout_RAX_11;
    int64_t arg6_00;
    undefined8 extraout_RAX_12;
    int64_t *extraout_RAX_13;
    int64_t extraout_RAX_14;
    int64_t extraout_RAX_15;
    int64_t extraout_RAX_16;
    int64_t extraout_RAX_17;
    int64_t extraout_RAX_18;
    undefined8 extraout_RCX;
    uint64_t uVar7;
    uint64_t extraout_RCX_00;
    uint64_t extraout_RCX_01;
    uint64_t extraout_RCX_02;
    uint64_t extraout_RCX_03;
    uint64_t extraout_RCX_04;
    uint64_t extraout_RCX_05;
    uint64_t arg5;
    uint64_t extraout_RCX_06;
    uint64_t extraout_RCX_07;
    undefined8 extraout_RCX_08;
    undefined8 extraout_RCX_09;
    uint64_t arg5_00;
    undefined8 extraout_RCX_10;
    uint64_t arg4;
    uint64_t extraout_RCX_11;
    uint64_t extraout_RCX_12;
    uint64_t uVar8;
    uint64_t extraout_RCX_13;
    uint64_t extraout_RCX_14;
    uint64_t extraout_RCX_15;
    uint64_t extraout_RCX_16;
    uint64_t extraout_RCX_17;
    uint64_t extraout_RCX_18;
    uint64_t extraout_RCX_19;
    uint64_t extraout_RCX_20;
    undefined8 extraout_RCX_21;
    uint64_t arg5_01;
    undefined8 extraout_RCX_22;
    uint64_t arg4_00;
    uint64_t extraout_RCX_23;
    uint64_t extraout_RCX_24;
    uint64_t extraout_RCX_25;
    uint64_t uVar9;
    uint64_t extraout_RCX_26;
    uint64_t extraout_RCX_27;
    uint64_t extraout_RCX_28;
    uint64_t arg5_02;
    uint64_t extraout_RCX_29;
    uint64_t extraout_RCX_30;
    uint64_t extraout_RCX_31;
    int64_t iVar10;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    uint64_t extraout_RBX_00;
    uint64_t uVar11;
    uint64_t extraout_RBX_01;
    uint64_t extraout_RBX_02;
    uint64_t uVar12;
    uint64_t extraout_RBX_03;
    int64_t extraout_RBX_04;
    uint64_t extraout_RBX_05;
    undefined8 extraout_RBX_06;
    int64_t extraout_RBX_07;
    undefined8 extraout_RBX_08;
    undefined8 extraout_RBX_09;
    undefined8 extraout_RBX_10;
    undefined8 extraout_RBX_11;
    uint64_t extraout_RBX_12;
    undefined8 extraout_RBX_13;
    uint64_t extraout_RBX_14;
    uint64_t extraout_RBX_15;
    int64_t extraout_RBX_16;
    int64_t extraout_RBX_17;
    int64_t extraout_RBX_18;
    int64_t extraout_RBX_19;
    undefined8 extraout_RBX_20;
    undefined8 extraout_RBX_21;
    uint64_t extraout_RBX_22;
    int64_t extraout_RBX_23;
    uint64_t extraout_RBX_24;
    uint64_t extraout_RBX_25;
    int64_t extraout_RBX_26;
    uint64_t extraout_RBX_27;
    uint64_t extraout_RBX_28;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    int64_t extraout_RSI_01;
    int64_t extraout_RSI_02;
    int64_t extraout_RSI_03;
    int64_t extraout_RSI_04;
    int64_t extraout_RSI_05;
    int64_t *extraout_RSI_06;
    int64_t extraout_RSI_07;
    int64_t extraout_RSI_08;
    int64_t extraout_RSI_09;
    int64_t extraout_RSI_10;
    int64_t extraout_RSI_11;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    int64_t extraout_RDI_01;
    int64_t extraout_RDI_02;
    int64_t arg1;
    undefined8 extraout_R8;
    undefined8 extraout_R8_00;
    undefined8 extraout_R8_01;
    undefined8 extraout_R8_02;
    undefined8 extraout_R8_03;
    undefined8 extraout_R8_04;
    undefined8 extraout_R8_05;
    int64_t arg1_00;
    undefined8 extraout_R9;
    undefined8 extraout_R9_00;
    undefined8 extraout_R9_01;
    undefined8 extraout_R9_02;
    undefined8 extraout_R9_03;
    int64_t arg6_01;
    undefined8 extraout_R9_04;
    undefined8 extraout_R9_05;
    undefined8 extraout_R9_06;
    undefined8 extraout_R9_07;
    undefined8 extraout_R9_08;
    undefined8 extraout_R9_09;
    undefined8 extraout_R9_10;
    undefined8 extraout_R9_11;
    undefined8 extraout_R9_12;
    undefined8 extraout_R9_13;
    undefined8 uVar13;
    undefined8 extraout_R9_14;
    undefined8 extraout_R9_15;
    undefined8 extraout_R9_16;
    undefined8 extraout_R9_17;
    undefined8 extraout_R9_18;
    undefined8 extraout_R9_19;
    undefined8 extraout_R9_20;
    undefined8 extraout_R9_21;
    undefined8 extraout_R9_22;
    undefined8 extraout_R9_23;
    int64_t iVar14;
    int64_t extraout_R10;
    int64_t extraout_R10_00;
    int64_t extraout_R10_01;
    int64_t extraout_R10_02;
    int64_t extraout_R10_03;
    int64_t iVar15;
    int64_t extraout_R10_04;
    int64_t iVar16;
    int64_t extraout_R10_05;
    int64_t extraout_R10_06;
    int64_t extraout_R10_07;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t *extraout_R11_02;
    int64_t *extraout_R11_03;
    int64_t *extraout_R11_04;
    int64_t *extraout_R11_05;
    int64_t *extraout_R11_06;
    int64_t *extraout_R11_07;
    int64_t *extraout_R11_08;
    int64_t *extraout_R11_09;
    int64_t *extraout_R11_10;
    int64_t *extraout_R11_11;
    int64_t *extraout_R11_12;
    int64_t *extraout_R11_13;
    int64_t *extraout_R11_14;
    int64_t *extraout_R11_15;
    int64_t iVar17;
    int64_t iVar18;
    int64_t unaff_R14;
    undefined4 uVar19;
    undefined8 in_XMM2_Qa;
    undefined8 in_XMM3_Qa;
    int64_t in_XMM15_Qa;
    undefined auVar20 [16];
    undefined auVar21 [16];
    undefined auVar22 [16];
    undefined auVar23 [16];
    undefined auVar24 [16];
    undefined auVar25 [16];
    undefined auVar26 [16];
    undefined auVar27 [16];
    undefined auVar28 [16];
    undefined auVar29 [16];
    undefined auVar30 [16];
    undefined auVar31 [16];
    undefined auVar32 [16];
    undefined auVar33 [16];
    undefined auVar34 [16];
    undefined auVar35 [16];
    undefined auVar36 [16];
    undefined auVar37 [16];
    undefined auVar38 [16];
    undefined auVar39 [16];
    int64_t var_640h;
    int64_t in_stack_fffffffffffff9d0;
    int64_t var_628h;
    int64_t var_620h;
    int64_t in_stack_fffffffffffff9e8;
    int64_t in_stack_fffffffffffff9f0;
    int64_t in_stack_fffffffffffff9f8;
    int64_t in_stack_fffffffffffffa00;
    int64_t in_stack_fffffffffffffa08;
    int64_t in_stack_fffffffffffffa10;
    int64_t in_stack_fffffffffffffa18;
    int64_t in_stack_fffffffffffffa20;
    int64_t in_stack_fffffffffffffa28;
    int64_t in_stack_fffffffffffffa30;
    undefined auStack_5b0 [8];
    int64_t in_stack_fffffffffffffa58;
    int64_t var_540h;
    int64_t var_538h;
    int64_t var_530h;
    int64_t var_528h;
    int64_t var_520h;
    int64_t var_518h;
    int64_t var_510h;
    int64_t var_508h;
    int64_t var_500h;
    int64_t var_4f8h;
    int64_t var_4f0h;
    int64_t var_4e8h;
    int64_t var_4e0h;
    int64_t var_4d8h;
    int64_t var_4d0h;
    int64_t var_4c8h;
    int64_t var_4c0h;
    int64_t var_4b8h;
    int64_t var_4b0h;
    int64_t var_4a8h;
    int64_t var_4a0h;
    int64_t var_498h;
    int64_t var_490h;
    int64_t var_488h;
    int64_t var_480h;
    int64_t var_478h;
    int64_t var_470h;
    int64_t var_468h;
    int64_t var_460h;
    int64_t var_458h;
    int64_t var_450h;
    int64_t var_448h;
    int64_t var_440h;
    int64_t var_438h;
    int64_t var_430h;
    int64_t var_428h;
    int64_t var_420h;
    int64_t var_418h;
    int64_t var_410h;
    int64_t var_408h;
    int64_t var_400h;
    int64_t var_3f8h;
    int64_t var_3f0h;
    int64_t var_3e8h;
    int64_t var_3e0h;
    int64_t var_3d8h;
    int64_t var_3d0h;
    int64_t var_3c8h;
    int64_t var_3b8h;
    int64_t var_3b0h;
    int64_t var_3a8h;
    int64_t var_328h;
    int64_t var_320h;
    int64_t var_318h;
    int64_t var_310h;
    int64_t var_308h;
    int64_t var_300h;
    int64_t var_2f8h;
    int64_t var_2f0h;
    int64_t var_2e8h;
    int64_t var_2e0h;
    int64_t var_2d8h;
    int64_t var_2d0h;
    int64_t var_2c8h;
    int64_t var_2c0h;
    int64_t var_2b8h;
    int64_t var_2b0h;
    int64_t var_2a8h;
    int64_t var_2a0h;
    int64_t var_290h;
    int64_t var_288h;
    int64_t var_280h;
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
    int64_t var_30h;
    int64_t var_8h;
    
    auVar20._8_8_ = unaff_RBX;
    auVar20._0_8_ = in_RAX;
    while (auStack_5b0 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe2c4ba;
        runtime_morestack_noctxt_abi0();
    }
    var_300h = in_XMM15_Qa;
    if (unaff_RBX == 0) {
        time_Now();
        auVar20 = time_Time_Format();
    }
    uVar11 = auVar20._8_8_;
    var_1c0h = auVar20._0_8_;
    runtime_duffzero_offset_285();
    pkg_diapdu_ParseForkliftTaskJSON(arg_18h, arg_20h);
    runtime_duffcopy_offset_700();
    auVar20 = runtime_duffcopy_offset_700();
    var_f0h = auVar20._8_8_;
    if (auVar20._0_8_ != 0) {
        var_f8h = *(int64_t *)(auVar20._0_8_ + 8);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11835f2 /* "起点解析失败: %v\n" */, 0x17, &var_f8h, 1, 1);
        return var_300h;
    }
    if (var_3b0h == 0) {
        var_3b8h = 0x1172b31;
        var_3b0h = 7;
    }
    if (var_318h == 0) {
        var_320h = 0x1169558;
        var_318h = 4;
    }
    runtime_duffzero_offset_285(0, var_f0h, 0x1172b31, &var_108h);
    pkg_diapdu_ParseForkliftTaskJSON(arg_28h, arg_30h);
    runtime_duffcopy_offset_700();
    auVar20 = runtime_duffcopy_offset_700();
    var_100h = auVar20._8_8_;
    if (auVar20._0_8_ != 0) {
        var_108h = *(int64_t *)(auVar20._0_8_ + 8);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183609 /* "终点解析失败: %v\n" */, 0x17, &var_108h, 1, 1);
        return var_300h;
    }
    if (var_288h == 0) {
        var_290h = 0x1172b31;
        var_288h = 7;
    }
    if (var_1f0h == 0) {
        var_1f8h = 0x1169558;
        var_1f0h = 4;
    }
    pkg_diapdu_splitRoadPoint(arg_38h, arg_40h);
    var_1e0h = arg_8h;
    var_308h = extraout_RAX;
    if (var_3d8h == 0) {
        if ((var_3e8h == arg_10h) && (cVar1 = runtime_memequal(arg_8h, var_3f0h, arg_10h), cVar1 != '\0')) {
            pkg_diapdu_PlanStationPathFromGraph(var_3f0h, var_3e8h, var_2b8h, var_2b0h, var_308h, extraout_RBX, extraout_RCX);
            if (extraout_RDI_00 != 0) {
                var_118h = *(int64_t *)(extraout_RDI_00 + 8);
                var_110h = extraout_RSI_02;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_118h, 1, 1);
            }
            if (extraout_RBX_07 < 2) {
                var_128h = 0x1042920;
                var_120h = 0x2e67e20 /* "路径点不足" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_128h, 1, 1);
                return var_300h;
            }
            if (extraout_RBX_07 == 2) {
                auVar20 = strconv_FormatInt(0, 10, extraout_RCX_08);
                auVar20 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                var_3d0h = auVar20._0_8_;
                var_3c8h = auVar20._8_8_;
                var_1c0h = var_3d0h;
                piVar6 = (int64_t *)runtime_growslice(0x355d2a0, 1, 0, 1, 0x1042920);
                piVar6[1] = auVar20._8_8_;
                if (*(int32_t *)0x355db50 != 0) {
                    piVar6 = (int64_t *)runtime_gcWriteBarrier2();
                    *extraout_R11_02 = var_1c0h;
                    extraout_R11_02[1] = *piVar6;
                }
                *piVar6 = var_1c0h;
                var_3e0h = *(int64_t *)(arg6 + 0x10);
                var_3d8h = *(int64_t *)(arg6 + 0x18);
                var_3a8h = *(int64_t *)0x2e67878;
                runtime_growslice(0, 1, 0, 1, 0x1142180);
                uVar5 = extraout_RBX_08;
                if (*(int32_t *)0x355db50 != 0) {
                    runtime_wbMove(0x1142180, extraout_RAX_05, &var_3f0h);
                    uVar5 = extraout_RBX_09;
                }
                uVar5 = runtime_duffcopy_offset_700(extraout_RAX_05, uVar5, extraout_RCX_09, extraout_RAX_05, &var_3f0h);
                auVar22._8_8_ = 1;
                auVar22._0_8_ = uVar5;
            } else {
                auVar20 = strconv_FormatInt(0, 10, extraout_RCX_08);
                auVar20 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                var_3d0h = auVar20._0_8_;
                var_3c8h = auVar20._8_8_;
                var_1d8h = var_3d0h;
                piVar6 = (int64_t *)runtime_growslice(0x355d2a0, 1, 0, 1, 0x1042920);
                piVar6[1] = auVar20._8_8_;
                if (*(int32_t *)0x355db50 != 0) {
                    piVar6 = (int64_t *)runtime_gcWriteBarrier2();
                    *extraout_R11_03 = var_1d8h;
                    extraout_R11_03[1] = *piVar6;
                }
                *piVar6 = var_1d8h;
                var_3e0h = *(int64_t *)(arg6 + 0x10);
                var_3d8h = *(int64_t *)(arg6 + 0x18);
                var_3a8h = *(int64_t *)0x2e67878;
                runtime_growslice(0, 1, 0, 1, 0x1142180);
                uVar5 = extraout_RBX_10;
                if (*(int32_t *)0x355db50 != 0) {
                    runtime_wbMove(0x1142180, extraout_RAX_06, &var_3f0h);
                    uVar5 = extraout_RBX_11;
                }
                runtime_duffcopy_offset_700(extraout_RAX_06, uVar5, extraout_RCX_10, extraout_RAX_06, &var_3f0h);
                iVar10 = 1;
                uVar8 = arg4;
                uVar7 = arg5_00;
                iVar3 = arg6;
                uVar5 = pkg_diapdu_appendPathMiddleMoveTasks
                                  ((int64_t)piVar6, 1, in_XMM2_Qa, arg4, arg5_00, arg6, var_1c0h, uVar11, 1, 
                                   in_stack_fffffffffffff9e8, in_stack_fffffffffffff9f0, in_stack_fffffffffffff9f8, 
                                   in_stack_fffffffffffffa00, in_stack_fffffffffffffa08, in_stack_fffffffffffffa10, 
                                   in_stack_fffffffffffffa18, in_stack_fffffffffffffa20, in_stack_fffffffffffffa28);
                iVar4 = (extraout_RBX_07 + -2) * 0x10;
                uVar9 = iVar10 + 1;
                auVar20 = strconv_FormatInt(iVar3, 10);
                auVar26 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                iVar10 = auVar26._8_8_;
                iVar3 = auVar26._0_8_;
                var_2c8h = *(int64_t *)(arg6 + iVar4);
                var_2c0h = *(int64_t *)(arg6 + 8 + iVar4);
                var_280h = *(int64_t *)0x2e67878;
                if (uVar7 < uVar9) {
                    var_2a8h = iVar3;
                    var_2a0h = iVar10;
                    var_1c0h = iVar3;
                    runtime_growslice(piVar6, uVar9, uVar7, 1, 0x1042920);
                    auVar26._8_8_ = var_2a0h;
                    auVar26._0_8_ = var_2a8h;
                    piVar6 = extraout_RAX_07;
                    uVar7 = extraout_RCX_11;
                    iVar3 = var_1c0h;
                    uVar9 = extraout_RBX_12;
                }
                var_2a0h = auVar26._8_8_;
                var_2a8h = auVar26._0_8_;
                iVar4 = (uVar9 - 1) * 0x10;
                piVar6[(uVar9 - 1) * 2 + 1] = iVar10;
                if (*(int32_t *)0x355db50 != 0) {
                    piVar6 = (int64_t *)runtime_gcWriteBarrier2();
                    auVar26._8_8_ = var_2a0h;
                    auVar26._0_8_ = var_2a8h;
                    *extraout_R11_04 = iVar3;
                    extraout_R11_04[1] = *(int64_t *)(extraout_R10_01 + (int64_t)piVar6);
                    uVar7 = extraout_RCX_12;
                    iVar4 = extraout_R10_01;
                }
                var_2a0h = auVar26._8_8_;
                var_2a8h = auVar26._0_8_;
                *(int64_t *)((int64_t)piVar6 + iVar4) = iVar3;
                auVar27._8_8_ = 2;
                auVar27._0_8_ = uVar5;
                if (uVar8 < 2) {
                    auVar27 = runtime_growslice(uVar5, 2, uVar8, 1, 0x1142180);
                    auVar26._8_8_ = var_2a0h;
                    auVar26._0_8_ = var_2a8h;
                }
                iVar4 = auVar27._0_8_;
                var_2a0h = auVar26._8_8_;
                var_2a8h = auVar26._0_8_;
                iVar3 = auVar27._8_8_ * 0xe0 + iVar4 + -0xe0;
                if (*(int32_t *)0x355db50 != 0) {
                    var_1d0h = iVar3;
                    var_1c8h = iVar4;
                    runtime_wbMove(0x1142180, iVar3, &var_2c8h);
                    auVar26._8_8_ = var_2a0h;
                    auVar26._0_8_ = var_2a8h;
                    iVar4 = var_1c8h;
                    iVar3 = var_1d0h;
                }
                var_2a0h = auVar26._8_8_;
                var_2a8h = auVar26._0_8_;
                runtime_duffcopy_offset_700(piVar6, auVar27._8_8_, uVar7, iVar3, &var_2c8h, iVar4);
                auVar22._8_8_ = extraout_RBX_13;
                auVar22._0_8_ = extraout_R8_00;
            }
        } else {
            iVar16 = 0;
            cVar1 = '\0';
            uVar9 = var_3f0h;
            iVar4 = var_1c0h;
            iVar10 = var_3e8h;
            uVar8 = uVar11;
            iVar3 = pkg_diapdu_buildGotoTasks
                              (var_3e8h, var_1c0h, in_XMM2_Qa, var_3f0h, uVar11, 0, in_stack_fffffffffffff9d0, var_628h
                               , var_620h, in_stack_fffffffffffff9e8, in_stack_fffffffffffff9f0, 
                               in_stack_fffffffffffff9f8, in_stack_fffffffffffffa00, in_stack_fffffffffffffa08, 
                               in_stack_fffffffffffffa10, in_stack_fffffffffffffa58);
            if (cVar1 == '\0') {
                var_138h = 0x1042920;
                var_130h = 0x2e67e30 /* "移动路径生成失败" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_138h, 1, 1);
                return var_300h;
            }
            auVar20 = pkg_diapdu_PlanStationPathFromGraph(var_3f0h, var_3e8h, var_2b8h, var_2b0h, var_308h, extraout_RBX, extraout_RCX);
            iVar14 = auVar20._8_8_;
            iVar15 = auVar20._0_8_;
            if (extraout_RDI != 0) {
                var_148h = *(int64_t *)(extraout_RDI + 8);
                var_140h = extraout_RSI;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_148h, 1, 1);
            }
            if (iVar14 < 2) {
                var_158h = 0x1042920;
                var_150h = 0x2e67e20 /* "路径点不足" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_158h, 1, 1);
                return var_300h;
            }
            if (iVar14 == 2) {
                uVar7 = iVar4 + 1;
                auVar20 = strconv_FormatInt(iVar16, 10);
                auVar21 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                iVar16 = auVar21._8_8_;
                iVar4 = auVar21._0_8_;
                var_3a8h = *(int64_t *)0x2e67878;
                uVar5 = extraout_R9;
                if (uVar8 < uVar7) {
                    var_3d0h = iVar4;
                    var_3c8h = iVar16;
                    var_1c0h = iVar4;
                    runtime_growslice(iVar10, uVar7, uVar8, 1, 0x1042920);
                    auVar21._8_8_ = var_3c8h;
                    auVar21._0_8_ = var_3d0h;
                    iVar4 = var_1c0h;
                    uVar8 = extraout_RCX_00;
                    uVar7 = extraout_RBX_00;
                    iVar10 = extraout_RAX_00;
                    uVar5 = extraout_R9_00;
                }
                var_3c8h = auVar21._8_8_;
                var_3d0h = auVar21._0_8_;
                iVar14 = (uVar7 - 1) * 0x10;
                *(int64_t *)(iVar10 + 8 + iVar14) = iVar16;
                if (*(int32_t *)0x355db50 != 0) {
                    iVar4 = runtime_gcWriteBarrier2();
                    auVar21._8_8_ = var_3c8h;
                    auVar21._0_8_ = var_3d0h;
                    *extraout_R11 = iVar4;
                    extraout_R11[1] = *(int64_t *)(extraout_RSI_00 + extraout_R10);
                    uVar8 = extraout_RCX_01;
                    iVar10 = extraout_RSI_00;
                    uVar5 = extraout_R9_01;
                    iVar14 = extraout_R10;
                }
                var_3c8h = auVar21._8_8_;
                var_3d0h = auVar21._0_8_;
                *(int64_t *)(iVar10 + iVar14) = iVar4;
                var_3e0h = *(int64_t *)(iVar15 + 0x10);
                var_3d8h = *(int64_t *)(iVar15 + 0x18);
                uVar11 = arg_10h + 1;
                if (uVar9 < uVar11) {
                    runtime_growslice(iVar3, uVar11, uVar9, 1, 0x1142180);
                    auVar21._8_8_ = var_3c8h;
                    auVar21._0_8_ = var_3d0h;
                    iVar3 = extraout_RAX_01;
                    uVar11 = extraout_RBX_01;
                    uVar5 = extraout_R9_02;
                    uVar9 = extraout_RCX_02;
                }
                var_3c8h = auVar21._8_8_;
                var_3d0h = auVar21._0_8_;
                iVar4 = uVar11 * 0xe0 + iVar3 + -0xe0;
                if (*(int32_t *)0x355db50 != 0) {
                    var_1d0h = iVar4;
                    var_1c8h = iVar3;
                    runtime_wbMove(0x1142180, iVar4, &var_3f0h);
                    auVar21._8_8_ = var_3c8h;
                    auVar21._0_8_ = var_3d0h;
                    iVar3 = var_1c8h;
                    iVar4 = var_1d0h;
                    uVar5 = extraout_R9_03;
                }
                var_3c8h = auVar21._8_8_;
                var_3d0h = auVar21._0_8_;
                auVar22 = runtime_duffcopy_offset_700(iVar3, uVar11, uVar8, iVar4, &var_3f0h, iVar10, uVar5, uVar9);
            } else {
                uVar7 = iVar4 + 1;
                auVar20 = strconv_FormatInt(iVar16, 10);
                auVar23 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                iVar18 = auVar23._8_8_;
                iVar4 = auVar23._0_8_;
                if (uVar8 < uVar7) {
                    var_3d0h = iVar4;
                    var_3c8h = iVar18;
                    var_1d8h = iVar4;
                    runtime_growslice(iVar10, uVar7, uVar8, 1, 0x1042920);
                    auVar23._8_8_ = var_3c8h;
                    auVar23._0_8_ = var_3d0h;
                    iVar4 = var_1d8h;
                    uVar8 = extraout_RCX_03;
                    uVar7 = extraout_RBX_02;
                    iVar10 = extraout_RAX_02;
                }
                var_3c8h = auVar23._8_8_;
                var_3d0h = auVar23._0_8_;
                iVar17 = (uVar7 - 1) * 0x10;
                *(int64_t *)(iVar10 + 8 + iVar17) = iVar18;
                if (*(int32_t *)0x355db50 != 0) {
                    iVar4 = runtime_gcWriteBarrier2();
                    auVar23._8_8_ = var_3c8h;
                    auVar23._0_8_ = var_3d0h;
                    *extraout_R11_00 = iVar4;
                    extraout_R11_00[1] = *(int64_t *)(iVar17 + extraout_RSI_01);
                    uVar8 = extraout_RCX_04;
                    iVar10 = extraout_RSI_01;
                }
                var_3c8h = auVar23._8_8_;
                var_3d0h = auVar23._0_8_;
                *(int64_t *)(iVar10 + iVar17) = iVar4;
                var_3e0h = *(int64_t *)(iVar15 + 0x10);
                var_3d8h = *(int64_t *)(iVar15 + 0x18);
                uVar19 = (undefined4)*(int64_t *)0x2e67878;
                var_3a8h = *(int64_t *)0x2e67878;
                uVar12 = arg_10h + 1;
                if (uVar9 < uVar12) {
                    runtime_growslice(iVar3, uVar12, uVar9, 1, 0x1142180);
                    auVar23._8_8_ = var_3c8h;
                    auVar23._0_8_ = var_3d0h;
                    uVar19 = (undefined4)*(int64_t *)0x2e67878;
                    iVar3 = extraout_RAX_03;
                    uVar12 = extraout_RBX_03;
                    uVar9 = extraout_RCX_05;
                }
                var_3c8h = auVar23._8_8_;
                var_3d0h = auVar23._0_8_;
                iVar4 = uVar12 * 0xe0 + iVar3 + -0xe0;
                if (*(int32_t *)0x355db50 != 0) {
                    var_1c8h = iVar4;
                    runtime_wbMove(uVar19, 0x1142180, iVar4, &var_3f0h);
                    auVar23._8_8_ = var_3c8h;
                    auVar23._0_8_ = var_3d0h;
                    iVar4 = var_1c8h;
                }
                var_3c8h = auVar23._8_8_;
                var_3d0h = auVar23._0_8_;
                runtime_duffcopy_offset_700(iVar3, uVar12, uVar8, iVar4, &var_3f0h, iVar10, iVar15);
                iVar3 = arg1;
                uVar8 = arg5;
                iVar4 = arg6_01;
                uVar5 = pkg_diapdu_appendPathMiddleMoveTasks
                                  (arg1, uVar7, in_XMM2_Qa, uVar9, arg5, arg6_01, var_1c0h, uVar11, iVar16 + 1, 
                                   in_stack_fffffffffffff9e8, in_stack_fffffffffffff9f0, in_stack_fffffffffffff9f8, 
                                   in_stack_fffffffffffffa00, in_stack_fffffffffffffa08, in_stack_fffffffffffffa10, 
                                   in_stack_fffffffffffffa18, in_stack_fffffffffffffa20, in_stack_fffffffffffffa28);
                iVar10 = (iVar14 + -2) * 0x10;
                uVar7 = uVar7 + 1;
                auVar20 = strconv_FormatInt(iVar4, 10);
                auVar24 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                iVar16 = auVar24._8_8_;
                iVar4 = auVar24._0_8_;
                var_2c8h = *(int64_t *)(iVar15 + iVar10);
                var_2c0h = *(int64_t *)(iVar15 + 8 + iVar10);
                var_280h = *(int64_t *)0x2e67878;
                if (uVar8 < uVar7) {
                    var_2a8h = iVar4;
                    var_2a0h = iVar16;
                    var_1c0h = iVar4;
                    runtime_growslice(iVar3, uVar7, uVar8, 1, 0x1042920);
                    auVar24._8_8_ = var_2a0h;
                    auVar24._0_8_ = var_2a8h;
                    iVar3 = extraout_RAX_04;
                    uVar8 = extraout_RCX_06;
                    iVar4 = var_1c0h;
                    uVar7 = extraout_RBX_05;
                }
                var_2a0h = auVar24._8_8_;
                var_2a8h = auVar24._0_8_;
                iVar10 = (uVar7 - 1) * 0x10;
                *(int64_t *)(iVar3 + 8 + iVar10) = iVar16;
                if (*(int32_t *)0x355db50 != 0) {
                    iVar3 = runtime_gcWriteBarrier2();
                    auVar24._8_8_ = var_2a0h;
                    auVar24._0_8_ = var_2a8h;
                    *extraout_R11_01 = iVar4;
                    extraout_R11_01[1] = *(int64_t *)(extraout_R10_00 + iVar3);
                    uVar8 = extraout_RCX_07;
                    iVar10 = extraout_R10_00;
                }
                var_2a0h = auVar24._8_8_;
                var_2a8h = auVar24._0_8_;
                *(int64_t *)(iVar3 + iVar10) = iVar4;
                uVar11 = extraout_RBX_04 + 1;
                auVar25._8_8_ = uVar11;
                auVar25._0_8_ = uVar5;
                if (uVar9 < uVar11) {
                    auVar25 = runtime_growslice(uVar5, uVar11, uVar9, 1, 0x1142180);
                    auVar24._8_8_ = var_2a0h;
                    auVar24._0_8_ = var_2a8h;
                }
                iVar10 = auVar25._0_8_;
                var_2a0h = auVar24._8_8_;
                var_2a8h = auVar24._0_8_;
                iVar4 = auVar25._8_8_ * 0xe0 + iVar10 + -0xe0;
                if (*(int32_t *)0x355db50 != 0) {
                    var_1d0h = iVar10;
                    var_1c8h = iVar4;
                    runtime_wbMove(0x1142180, iVar4, &var_2c8h);
                    auVar24._8_8_ = var_2a0h;
                    auVar24._0_8_ = var_2a8h;
                    iVar10 = var_1d0h;
                    iVar4 = var_1c8h;
                }
                var_2a0h = auVar24._8_8_;
                var_2a8h = auVar24._0_8_;
                runtime_duffcopy_offset_700(iVar3, auVar25._8_8_, uVar8, iVar4, &var_2c8h, iVar10);
                auVar22._8_8_ = extraout_RBX_06;
                auVar22._0_8_ = extraout_R8;
            }
        }
    } else if ((var_2b0h == 0) && (var_2c0h == 0)) {
        if (var_3e8h == arg_10h) {
            uVar2 = runtime_memequal(arg_8h, var_3f0h, arg_10h);
            uVar2 = uVar2 ^ 1;
        } else {
            uVar2 = 1;
        }
        if ((uVar2 == 0) && (extraout_RBX == 0)) {
            iVar16 = 0;
            uVar9 = 0;
            iVar4 = 0;
            iVar10 = 0x355d2a0;
            uVar8 = 0;
            iVar3 = 0;
            arg_10h = 0;
        } else {
            iVar4 = var_1c0h;
            uVar9 = uVar11;
            iVar16 = var_308h;
            iVar15 = extraout_RBX;
            iVar3 = pkg_diapdu_buildGotoTasks
                              (var_3e8h, var_1c0h, in_XMM2_Qa, var_3f0h, uVar11, var_308h, in_stack_fffffffffffff9d0, 
                               var_628h, var_620h, in_stack_fffffffffffff9e8, in_stack_fffffffffffff9f0, 
                               in_stack_fffffffffffff9f8, in_stack_fffffffffffffa00, in_stack_fffffffffffffa08, 
                               in_stack_fffffffffffffa10, in_stack_fffffffffffffa58);
            uVar8 = var_3f0h;
            iVar10 = var_3e8h;
            if ((char)iVar15 == '\0') {
                var_168h = 0x1042920;
                var_160h = 0x2e67e30 /* "移动路径生成失败" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_168h, 1, 1);
                return var_300h;
            }
        }
        uVar7 = iVar4 + 1;
        auVar20 = strconv_FormatInt(iVar16, 10);
        auVar28 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
        iVar15 = auVar28._8_8_;
        iVar4 = auVar28._0_8_;
        uVar5 = extraout_R9_04;
        if (uVar9 < uVar7) {
            var_3d0h = iVar4;
            var_3c8h = iVar15;
            var_1d8h = iVar4;
            runtime_growslice(iVar10, uVar7, uVar9, 1, 0x1042920);
            auVar28._8_8_ = var_3c8h;
            auVar28._0_8_ = var_3d0h;
            iVar4 = var_1d8h;
            uVar9 = extraout_RCX_13;
            uVar7 = extraout_RBX_14;
            iVar10 = extraout_RAX_08;
            uVar5 = extraout_R9_05;
        }
        var_3c8h = auVar28._8_8_;
        var_3d0h = auVar28._0_8_;
        iVar14 = (uVar7 - 1) * 0x10;
        *(int64_t *)(iVar10 + 8 + iVar14) = iVar15;
        if (*(int32_t *)0x355db50 != 0) {
            iVar4 = runtime_gcWriteBarrier2();
            auVar28._8_8_ = var_3c8h;
            auVar28._0_8_ = var_3d0h;
            *extraout_R11_05 = iVar4;
            extraout_R11_05[1] = *(int64_t *)(extraout_RSI_03 + extraout_R10_02);
            uVar9 = extraout_RCX_14;
            iVar10 = extraout_RSI_03;
            uVar5 = extraout_R9_06;
            iVar14 = extraout_R10_02;
        }
        var_3c8h = auVar28._8_8_;
        var_3d0h = auVar28._0_8_;
        *(int64_t *)(iVar10 + iVar14) = iVar4;
        var_328h._0_1_ = 1;
        var_3a8h = *(int64_t *)0x2e67860;
        var_3b8h = 0x1174123;
        var_3b0h = 8;
        uVar12 = arg_10h + 1;
        if (uVar8 < uVar12) {
            runtime_growslice(iVar3, uVar12, uVar8, 1, 0x1142180);
            auVar28._8_8_ = var_3c8h;
            auVar28._0_8_ = var_3d0h;
            iVar3 = extraout_RAX_09;
            uVar12 = extraout_RBX_15;
            uVar5 = extraout_R9_07;
            uVar8 = extraout_RCX_15;
        }
        var_3c8h = auVar28._8_8_;
        var_3d0h = auVar28._0_8_;
        iVar4 = uVar12 * 0xe0 + iVar3 + -0xe0;
        if (*(int32_t *)0x355db50 != 0) {
            var_1c8h = iVar4;
            runtime_wbMove(0x1142180, iVar4, &var_3f0h);
            auVar28._8_8_ = var_3c8h;
            auVar28._0_8_ = var_3d0h;
            iVar4 = var_1c8h;
            uVar5 = extraout_R9_08;
        }
        var_3c8h = auVar28._8_8_;
        var_3d0h = auVar28._0_8_;
        auVar22 = runtime_duffcopy_offset_700(iVar3, uVar12, uVar9, iVar4, &var_3f0h, iVar10, uVar5, uVar8);
        if (arg_50h != 0) {
            uVar12 = auVar22._8_8_ + 1;
            auVar22._8_8_ = uVar12;
            auVar22._0_8_ = iVar3;
            strconv_FormatInt(iVar16 + 1, 10);
            auVar20 = runtime_duffcopy_offset_700();
            var_e8h = var_3e0h;
            var_e0h = var_3d8h;
            var_d8h = arg_48h;
            var_d0h = arg_50h;
            auVar29 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
            var_c0h = auVar29._8_8_;
            var_c8h = auVar29._0_8_;
            var_30h = arg_58h;
            if (uVar8 < uVar12) {
                auVar22 = runtime_growslice(iVar3, uVar12, uVar8, 1, 0x1142180);
                auVar29._8_8_ = var_c0h;
                auVar29._0_8_ = var_c8h;
            }
            var_c0h = auVar29._8_8_;
            var_c8h = auVar29._0_8_;
            iVar3 = auVar22._8_8_ * 0xe0 + auVar22._0_8_ + -0xe0;
            if (*(int32_t *)0x355db50 != 0) {
                var_1c8h = iVar3;
                runtime_wbMove(0x1142180, iVar3, &var_e8h);
                auVar29._8_8_ = var_c0h;
                auVar29._0_8_ = var_c8h;
            }
            var_c0h = auVar29._8_8_;
            var_c8h = auVar29._0_8_;
            runtime_duffcopy_offset_700();
            uVar7 = uVar7 + 1;
            auVar30._8_8_ = uVar7;
            auVar30._0_8_ = iVar10;
            auVar20 = strconv_FormatInt(iVar16 + 1, 10);
            auVar20 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
            iVar3 = auVar20._0_8_;
            if (uVar9 < uVar7) {
                var_1c0h = iVar3;
                auVar30 = runtime_growslice(iVar10, uVar7, uVar9, 1, 0x1042920);
                iVar3 = var_1c0h;
            }
            iVar4 = auVar30._0_8_;
            iVar10 = (auVar30._8_8_ + -1) * 0x10;
            *(int64_t *)(iVar4 + 8 + iVar10) = auVar20._8_8_;
            if (*(int32_t *)0x355db50 != 0) {
                iVar3 = runtime_gcWriteBarrier2();
                *extraout_R11_06 = iVar3;
                extraout_R11_06[1] = *(int64_t *)(extraout_R10_03 + extraout_RSI_04);
                iVar4 = extraout_RSI_04;
                iVar10 = extraout_R10_03;
            }
            *(int64_t *)(iVar4 + iVar10) = iVar3;
        }
    } else {
        var_3b8h = 0x1174123;
        var_3b0h = 8;
        var_290h = 0x1174123;
        var_288h = 8;
        var_328h._0_1_ = 1;
        var_200h._0_1_ = 1;
        if ((var_3e8h == arg_10h) && (cVar1 = runtime_memequal(arg_8h, var_3f0h, arg_10h), cVar1 != '\0')) {
            if (var_2c0h == var_3d8h) {
                var_310h = var_3e0h;
                var_1e8h = var_2c8h;
                cVar1 = runtime_memequal(var_3e0h, var_2c8h, var_3d8h);
                var_3e0h = var_310h;
                var_2c8h = var_1e8h;
            } else {
                cVar1 = '\0';
            }
            if ((cVar1 == '\0') || (arg_40h != 0)) {
                pkg_diapdu_PlanStationPathFromGraph(var_3e0h, var_3d8h, var_2c8h, var_2c0h, var_308h, extraout_RBX, extraout_RCX);
                if (extraout_RDI_01 != 0) {
                    var_178h = *(int64_t *)(extraout_RDI_01 + 8);
                    var_170h = extraout_RSI_05;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_178h, 1, 1);
                }
                if (extraout_RBX_19 < 2) {
                    var_188h = 0x1042920;
                    var_180h = 0x2e67e20 /* "路径点不足" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_188h, 1, 1);
                    return var_300h;
                }
                auVar20 = strconv_FormatInt(0, 10, extraout_RCX_21);
                auVar20 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                var_3d0h = auVar20._0_8_;
                var_3c8h = auVar20._8_8_;
                var_1d8h = var_3d0h;
                piVar6 = (int64_t *)runtime_growslice(0x355d2a0, 1, 0, 1, 0x1042920);
                piVar6[1] = auVar20._8_8_;
                if (*(int32_t *)0x355db50 != 0) {
                    piVar6 = (int64_t *)runtime_gcWriteBarrier2();
                    *extraout_R11_10 = var_1d8h;
                    extraout_R11_10[1] = *piVar6;
                }
                *piVar6 = var_1d8h;
                var_3a8h = *(int64_t *)0x2e67860;
                runtime_growslice(0, 1, 0, 1, 0x1142180);
                uVar5 = extraout_RBX_20;
                if (*(int32_t *)0x355db50 != 0) {
                    runtime_wbMove(0x1142180, extraout_RAX_12, &var_3f0h);
                    uVar5 = extraout_RBX_21;
                }
                runtime_duffcopy_offset_700(extraout_RAX_12, uVar5, extraout_RCX_22, extraout_RAX_12, &var_3f0h);
                iVar4 = 1;
                uVar8 = arg4_00;
                uVar7 = arg5_01;
                iVar10 = arg6_00;
                iVar3 = pkg_diapdu_appendPathAllMoveTasks
                                  (arg_58h, (int64_t)piVar6, 1, in_XMM3_Qa, arg4_00, arg5_01, arg6_00, var_1c0h, uVar11
                                   , 1, in_stack_fffffffffffff9e8, in_stack_fffffffffffff9f0, in_stack_fffffffffffff9f8
                                   , in_stack_fffffffffffffa00, in_stack_fffffffffffffa08, in_stack_fffffffffffffa10, 
                                   in_stack_fffffffffffffa18, in_stack_fffffffffffffa20, in_stack_fffffffffffffa28, 
                                   in_stack_fffffffffffffa30);
                uVar9 = iVar4 + 1;
                auVar20 = strconv_FormatInt(iVar10, 10);
                auVar33 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                iVar16 = auVar33._8_8_;
                iVar4 = auVar33._0_8_;
                var_280h = *(int64_t *)0x2e67860;
                uVar5 = extraout_R9_14;
                if (uVar7 < uVar9) {
                    var_2a8h = iVar4;
                    var_2a0h = iVar16;
                    var_1d8h = iVar4;
                    runtime_growslice(piVar6, uVar9, uVar7, 1, 0x1042920);
                    auVar33._8_8_ = var_2a0h;
                    auVar33._0_8_ = var_2a8h;
                    iVar4 = var_1d8h;
                    uVar7 = extraout_RCX_23;
                    uVar9 = extraout_RBX_22;
                    piVar6 = extraout_RAX_13;
                    uVar5 = extraout_R9_15;
                }
                var_2a0h = auVar33._8_8_;
                var_2a8h = auVar33._0_8_;
                iVar15 = (uVar9 - 1) * 0x10;
                piVar6[(uVar9 - 1) * 2 + 1] = iVar16;
                if (*(int32_t *)0x355db50 != 0) {
                    iVar4 = runtime_gcWriteBarrier2();
                    auVar33._8_8_ = var_2a0h;
                    auVar33._0_8_ = var_2a8h;
                    *extraout_R11_11 = iVar4;
                    extraout_R11_11[1] = *(int64_t *)((int64_t)extraout_RSI_06 + extraout_R10_04);
                    uVar7 = extraout_RCX_24;
                    piVar6 = extraout_RSI_06;
                    uVar5 = extraout_R9_16;
                    iVar15 = extraout_R10_04;
                }
                var_2a0h = auVar33._8_8_;
                var_2a8h = auVar33._0_8_;
                *(int64_t *)((int64_t)piVar6 + iVar15) = iVar4;
                iVar4 = 2;
                if (uVar8 < 2) {
                    runtime_growslice(iVar3, 2, uVar8, 1, 0x1142180);
                    auVar33._8_8_ = var_2a0h;
                    auVar33._0_8_ = var_2a8h;
                    iVar3 = extraout_RAX_14;
                    iVar4 = extraout_RBX_23;
                    uVar5 = extraout_R9_17;
                    uVar8 = extraout_RCX_25;
                }
                var_2a0h = auVar33._8_8_;
                var_2a8h = auVar33._0_8_;
                iVar16 = iVar3 + iVar4 * 0xe0 + -0xe0;
                if (*(int32_t *)0x355db50 != 0) {
                    var_1c8h = iVar16;
                    runtime_wbMove(0x1142180, iVar16, &var_2c8h);
                    auVar33._8_8_ = var_2a0h;
                    auVar33._0_8_ = var_2a8h;
                    iVar16 = var_1c8h;
                    uVar5 = extraout_R9_18;
                }
                var_2a0h = auVar33._8_8_;
                var_2a8h = auVar33._0_8_;
                auVar22 = runtime_duffcopy_offset_700(iVar3, iVar4, uVar7, iVar16, &var_2c8h, piVar6, uVar5, uVar8);
                if (arg_50h != 0) {
                    uVar12 = auVar22._8_8_ + 1;
                    auVar22._8_8_ = uVar12;
                    auVar22._0_8_ = iVar3;
                    strconv_FormatInt(iVar10 + 1, 10);
                    auVar20 = runtime_duffcopy_offset_700();
                    var_e8h = var_2b8h;
                    var_e0h = var_2b0h;
                    var_d8h = arg_48h;
                    var_d0h = arg_50h;
                    auVar34 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                    var_c0h = auVar34._8_8_;
                    var_c8h = auVar34._0_8_;
                    var_30h = arg_58h;
                    if (uVar8 < uVar12) {
                        auVar22 = runtime_growslice(iVar3, uVar12, uVar8, 1, 0x1142180);
                        auVar34._8_8_ = var_c0h;
                        auVar34._0_8_ = var_c8h;
                    }
                    var_c0h = auVar34._8_8_;
                    var_c8h = auVar34._0_8_;
                    iVar3 = auVar22._8_8_ * 0xe0 + auVar22._0_8_ + -0xe0;
                    if (*(int32_t *)0x355db50 != 0) {
                        var_1c8h = iVar3;
                        runtime_wbMove(0x1142180, iVar3, &var_e8h);
                        auVar34._8_8_ = var_c0h;
                        auVar34._0_8_ = var_c8h;
                    }
                    var_c0h = auVar34._8_8_;
                    var_c8h = auVar34._0_8_;
                    runtime_duffcopy_offset_700();
                    uVar9 = uVar9 + 1;
                    auVar35._8_8_ = uVar9;
                    auVar35._0_8_ = piVar6;
                    auVar20 = strconv_FormatInt(iVar10 + 1, 10);
                    auVar20 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                    iVar3 = auVar20._0_8_;
                    if (uVar7 < uVar9) {
                        var_1c0h = iVar3;
                        auVar35 = runtime_growslice(piVar6, uVar9, uVar7, 1, 0x1042920);
                        iVar3 = var_1c0h;
                    }
                    iVar10 = auVar35._0_8_;
                    iVar4 = auVar35._8_8_ + -1;
                    iVar16 = iVar4 * 0x10;
                    *(int64_t *)(iVar10 + (iVar4 * 2 + 1) * 8) = auVar20._8_8_;
                    if (*(int32_t *)0x355db50 != 0) {
                        iVar3 = runtime_gcWriteBarrier2();
                        *extraout_R11_12 = iVar3;
                        extraout_R11_12[1] = *(int64_t *)(extraout_RSI_07 + extraout_R10_05);
                        iVar10 = extraout_RSI_07;
                        iVar16 = extraout_R10_05;
                    }
                    *(int64_t *)(iVar10 + iVar16) = iVar3;
                }
            } else {
                auVar20 = strconv_FormatInt(0, 10);
                auVar20 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                var_3d0h = auVar20._0_8_;
                var_3c8h = auVar20._8_8_;
                var_1d8h = var_3d0h;
                piVar6 = (int64_t *)runtime_growslice(0x355d2a0, 1, 0, 1, 0x1042920);
                piVar6[1] = auVar20._8_8_;
                if (*(int32_t *)0x355db50 != 0) {
                    piVar6 = (int64_t *)runtime_gcWriteBarrier2();
                    *extraout_R11_07 = var_1d8h;
                    extraout_R11_07[1] = *piVar6;
                }
                *piVar6 = var_1d8h;
                var_3a8h = *(int64_t *)0x2e67860;
                iVar3 = runtime_growslice(0, 1, 0, 1, 0x1142180);
                if (*(int32_t *)0x355db50 != 0) {
                    runtime_wbMove(0x1142180, iVar3, &var_3f0h);
                }
                runtime_duffcopy_offset_700();
                auVar20 = strconv_FormatInt(1, 10);
                auVar31 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                iVar10 = auVar31._8_8_;
                iVar4 = auVar31._0_8_;
                var_280h = *(int64_t *)0x2e67860;
                uVar9 = extraout_RCX_16;
                uVar5 = extraout_R8_01;
                uVar13 = extraout_R9_09;
                if (extraout_RCX_16 < 2) {
                    var_2a8h = iVar4;
                    var_2a0h = iVar10;
                    var_1d8h = iVar4;
                    piVar6 = (int64_t *)runtime_growslice(piVar6, 2, extraout_RCX_16, 1, 0x1042920);
                    auVar31._8_8_ = var_2a0h;
                    auVar31._0_8_ = var_2a8h;
                    iVar4 = var_1d8h;
                    uVar9 = extraout_RCX_18;
                    uVar5 = extraout_R8_02;
                    uVar13 = extraout_R9_10;
                }
                var_2a0h = auVar31._8_8_;
                var_2a8h = auVar31._0_8_;
                piVar6[3] = iVar10;
                if (*(int32_t *)0x355db50 != 0) {
                    runtime_gcWriteBarrier2();
                    auVar31._8_8_ = var_2a0h;
                    auVar31._0_8_ = var_2a8h;
                    *extraout_R11_08 = extraout_RAX_10;
                    extraout_R11_08[1] = piVar6[2];
                    iVar4 = extraout_RAX_10;
                    uVar9 = extraout_RCX_19;
                    iVar10 = extraout_RBX_16;
                    uVar5 = extraout_R8_03;
                    uVar13 = extraout_R9_11;
                }
                var_2a0h = auVar31._8_8_;
                var_2a8h = auVar31._0_8_;
                piVar6[2] = iVar4;
                uVar8 = extraout_RCX_17;
                if (extraout_RCX_17 < 2) {
                    runtime_growslice(iVar3, 2, extraout_RCX_17, 1, 0x1142180);
                    auVar31._8_8_ = var_2a0h;
                    auVar31._0_8_ = var_2a8h;
                    iVar3 = extraout_RAX_11;
                    iVar10 = extraout_RBX_17;
                    uVar5 = extraout_R8_04;
                    uVar13 = extraout_R9_12;
                    uVar8 = extraout_RCX_20;
                }
                var_2a0h = auVar31._8_8_;
                var_2a8h = auVar31._0_8_;
                iVar4 = iVar3 + 0xe0;
                if (*(int32_t *)0x355db50 != 0) {
                    var_1c8h = iVar4;
                    runtime_wbMove(0x1142180, iVar4, &var_2c8h);
                    auVar31._8_8_ = var_2a0h;
                    auVar31._0_8_ = var_2a8h;
                    iVar10 = extraout_RBX_18;
                    iVar4 = var_1c8h;
                    uVar5 = extraout_R8_05;
                    uVar13 = extraout_R9_13;
                }
                var_2a0h = auVar31._8_8_;
                var_2a8h = auVar31._0_8_;
                uVar5 = runtime_duffcopy_offset_700(iVar3, iVar10, uVar9, iVar4, &var_2c8h, uVar5, uVar13, uVar8);
                if (arg_50h == 0) {
                    auVar22._8_8_ = 2;
                    auVar22._0_8_ = uVar5;
                } else {
                    strconv_FormatInt(2, 10);
                    auVar20 = runtime_duffcopy_offset_700();
                    var_e8h = var_2b8h;
                    var_e0h = var_2b0h;
                    var_d8h = arg_48h;
                    var_d0h = arg_50h;
                    auVar32 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                    var_c0h = auVar32._8_8_;
                    var_c8h = auVar32._0_8_;
                    var_30h = arg_58h;
                    if (uVar8 < 3) {
                        iVar3 = runtime_growslice(iVar3, 3, uVar8, 1, 0x1142180);
                        auVar32._8_8_ = var_c0h;
                        auVar32._0_8_ = var_c8h;
                    }
                    var_c0h = auVar32._8_8_;
                    var_c8h = auVar32._0_8_;
                    if (*(int32_t *)0x355db50 != 0) {
                        var_1c8h = iVar3 + 0x1c0;
                        runtime_wbMove(0x1142180, iVar3 + 0x1c0, &var_e8h);
                        auVar32._8_8_ = var_c0h;
                        auVar32._0_8_ = var_c8h;
                    }
                    var_c0h = auVar32._8_8_;
                    var_c8h = auVar32._0_8_;
                    runtime_duffcopy_offset_700();
                    auVar20 = strconv_FormatInt(2, 10);
                    auVar20 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                    iVar4 = auVar20._0_8_;
                    if (uVar9 < 3) {
                        var_1c0h = iVar4;
                        piVar6 = (int64_t *)runtime_growslice(piVar6, 3, uVar9, 1, 0x1042920);
                        iVar4 = var_1c0h;
                    }
                    piVar6[5] = auVar20._8_8_;
                    if (*(int32_t *)0x355db50 != 0) {
                        iVar4 = runtime_gcWriteBarrier2();
                        *extraout_R11_09 = iVar4;
                        extraout_R11_09[1] = piVar6[4];
                    }
                    piVar6[4] = iVar4;
                    auVar22._8_8_ = 3;
                    auVar22._0_8_ = iVar3;
                }
            }
        } else {
            iVar16 = 0;
            cVar1 = '\0';
            uVar9 = var_3f0h;
            iVar4 = var_1c0h;
            iVar10 = var_3e8h;
            uVar8 = uVar11;
            iVar3 = pkg_diapdu_buildGotoTasks
                              (var_3e8h, var_1c0h, in_XMM2_Qa, var_3f0h, uVar11, 0, in_stack_fffffffffffff9d0, var_628h
                               , var_620h, in_stack_fffffffffffff9e8, in_stack_fffffffffffff9f0, 
                               in_stack_fffffffffffff9f8, in_stack_fffffffffffffa00, in_stack_fffffffffffffa08, 
                               in_stack_fffffffffffffa10, in_stack_fffffffffffffa58);
            if (cVar1 == '\0') {
                var_198h = 0x1042920;
                var_190h = 0x2e67e30 /* "移动路径生成失败" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_198h, 1, 1);
                return var_300h;
            }
            auVar20 = pkg_diapdu_PlanStationPathFromGraph(var_3e0h, var_3d8h, var_2c8h, var_2c0h, var_308h, extraout_RBX, extraout_RCX);
            iVar15 = auVar20._0_8_;
            if (extraout_RDI_02 != 0) {
                var_1a8h = *(int64_t *)(extraout_RDI_02 + 8);
                var_1a0h = extraout_RSI_08;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_1a8h, 1, 1);
            }
            if (auVar20._8_8_ < 2) {
                var_1b8h = 0x1042920;
                var_1b0h = 0x2e67e20 /* "路径点不足" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_1b8h, 1, 1);
                return var_300h;
            }
            uVar7 = iVar4 + 1;
            auVar20 = strconv_FormatInt(iVar16, 10);
            auVar36 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
            iVar14 = auVar36._8_8_;
            iVar4 = auVar36._0_8_;
            if (uVar8 < uVar7) {
                var_3d0h = iVar4;
                var_3c8h = iVar14;
                var_1d8h = iVar4;
                runtime_growslice(iVar10, uVar7, uVar8, 1, 0x1042920);
                auVar36._8_8_ = var_3c8h;
                auVar36._0_8_ = var_3d0h;
                iVar4 = var_1d8h;
                uVar8 = extraout_RCX_26;
                uVar7 = extraout_RBX_24;
                iVar10 = extraout_RAX_15;
            }
            var_3c8h = auVar36._8_8_;
            var_3d0h = auVar36._0_8_;
            iVar18 = (uVar7 - 1) * 0x10;
            *(int64_t *)(iVar10 + 8 + iVar18) = iVar14;
            if (*(int32_t *)0x355db50 != 0) {
                iVar4 = runtime_gcWriteBarrier2();
                auVar36._8_8_ = var_3c8h;
                auVar36._0_8_ = var_3d0h;
                *extraout_R11_13 = iVar4;
                extraout_R11_13[1] = *(int64_t *)(extraout_RSI_09 + iVar18);
                uVar8 = extraout_RCX_27;
                iVar10 = extraout_RSI_09;
            }
            var_3c8h = auVar36._8_8_;
            var_3d0h = auVar36._0_8_;
            *(int64_t *)(iVar10 + iVar18) = iVar4;
            uVar19 = (undefined4)*(int64_t *)0x2e67860;
            var_3a8h = *(int64_t *)0x2e67860;
            uVar12 = arg_10h + 1;
            if (uVar9 < uVar12) {
                runtime_growslice(iVar3, uVar12, uVar9, 1, 0x1142180);
                auVar36._8_8_ = var_3c8h;
                auVar36._0_8_ = var_3d0h;
                uVar19 = (undefined4)*(int64_t *)0x2e67860;
                iVar3 = extraout_RAX_16;
                uVar12 = extraout_RBX_25;
                uVar9 = extraout_RCX_28;
            }
            var_3c8h = auVar36._8_8_;
            var_3d0h = auVar36._0_8_;
            iVar4 = iVar3 + uVar12 * 0xe0 + -0xe0;
            if (*(int32_t *)0x355db50 != 0) {
                var_1c8h = iVar4;
                runtime_wbMove(uVar19, 0x1142180, iVar4, &var_3f0h);
                auVar36._8_8_ = var_3c8h;
                auVar36._0_8_ = var_3d0h;
                iVar4 = var_1c8h;
            }
            var_3c8h = auVar36._8_8_;
            var_3d0h = auVar36._0_8_;
            runtime_duffcopy_offset_700(iVar3, uVar12, uVar8, iVar4, &var_3f0h, iVar10);
            iVar10 = arg1_00;
            uVar8 = arg5_02;
            iVar3 = pkg_diapdu_appendPathAllMoveTasks
                              (arg_58h, arg1_00, uVar7, in_XMM3_Qa, uVar9, arg5_02, iVar15, var_1c0h, uVar11, iVar16 + 1
                               , in_stack_fffffffffffff9e8, in_stack_fffffffffffff9f0, in_stack_fffffffffffff9f8, 
                               in_stack_fffffffffffffa00, in_stack_fffffffffffffa08, in_stack_fffffffffffffa10, 
                               in_stack_fffffffffffffa18, in_stack_fffffffffffffa20, in_stack_fffffffffffffa28, 
                               in_stack_fffffffffffffa30);
            uVar7 = uVar7 + 1;
            auVar20 = strconv_FormatInt(iVar15, 10);
            auVar37 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
            iVar16 = auVar37._8_8_;
            iVar4 = auVar37._0_8_;
            var_280h = *(int64_t *)0x2e67860;
            uVar5 = extraout_R9_19;
            if (uVar8 < uVar7) {
                var_2a8h = iVar4;
                var_2a0h = iVar16;
                var_1d8h = iVar4;
                runtime_growslice(iVar10, uVar7, uVar8, 1, 0x1042920);
                auVar37._8_8_ = var_2a0h;
                auVar37._0_8_ = var_2a8h;
                iVar4 = var_1d8h;
                uVar8 = extraout_RCX_29;
                uVar7 = extraout_RBX_27;
                iVar10 = extraout_RAX_17;
                uVar5 = extraout_R9_20;
            }
            var_2a0h = auVar37._8_8_;
            var_2a8h = auVar37._0_8_;
            iVar14 = (uVar7 - 1) * 0x10;
            *(int64_t *)(iVar10 + 8 + iVar14) = iVar16;
            if (*(int32_t *)0x355db50 != 0) {
                iVar4 = runtime_gcWriteBarrier2();
                auVar37._8_8_ = var_2a0h;
                auVar37._0_8_ = var_2a8h;
                *extraout_R11_14 = iVar4;
                extraout_R11_14[1] = *(int64_t *)(extraout_RSI_10 + extraout_R10_06);
                uVar8 = extraout_RCX_30;
                iVar10 = extraout_RSI_10;
                uVar5 = extraout_R9_21;
                iVar14 = extraout_R10_06;
            }
            var_2a0h = auVar37._8_8_;
            var_2a8h = auVar37._0_8_;
            *(int64_t *)(iVar10 + iVar14) = iVar4;
            uVar12 = extraout_RBX_26 + 1;
            if (uVar9 < uVar12) {
                runtime_growslice(iVar3, uVar12, uVar9, 1, 0x1142180);
                auVar37._8_8_ = var_2a0h;
                auVar37._0_8_ = var_2a8h;
                iVar3 = extraout_RAX_18;
                uVar12 = extraout_RBX_28;
                uVar5 = extraout_R9_22;
                uVar9 = extraout_RCX_31;
            }
            var_2a0h = auVar37._8_8_;
            var_2a8h = auVar37._0_8_;
            iVar4 = iVar3 + uVar12 * 0xe0 + -0xe0;
            if (*(int32_t *)0x355db50 != 0) {
                var_1c8h = iVar4;
                runtime_wbMove(0x1142180, iVar4, &var_2c8h);
                auVar37._8_8_ = var_2a0h;
                auVar37._0_8_ = var_2a8h;
                iVar4 = var_1c8h;
                uVar5 = extraout_R9_23;
            }
            var_2a0h = auVar37._8_8_;
            var_2a8h = auVar37._0_8_;
            auVar22 = runtime_duffcopy_offset_700(iVar3, uVar12, uVar8, iVar4, &var_2c8h, iVar10, uVar5, uVar9);
            if (arg_50h != 0) {
                uVar12 = auVar22._8_8_ + 1;
                auVar22._8_8_ = uVar12;
                auVar22._0_8_ = iVar3;
                strconv_FormatInt(iVar15 + 1, 10);
                auVar20 = runtime_duffcopy_offset_700();
                var_e8h = var_2b8h;
                var_e0h = var_2b0h;
                var_d8h = arg_48h;
                var_d0h = arg_50h;
                auVar38 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                var_c0h = auVar38._8_8_;
                var_c8h = auVar38._0_8_;
                var_30h = arg_58h;
                if (uVar9 < uVar12) {
                    auVar22 = runtime_growslice(iVar3, uVar12, uVar9, 1, 0x1142180);
                    auVar38._8_8_ = var_c0h;
                    auVar38._0_8_ = var_c8h;
                }
                var_c0h = auVar38._8_8_;
                var_c8h = auVar38._0_8_;
                iVar3 = auVar22._0_8_ + auVar22._8_8_ * 0xe0 + -0xe0;
                if (*(int32_t *)0x355db50 != 0) {
                    var_1c8h = iVar3;
                    runtime_wbMove(0x1142180, iVar3, &var_e8h);
                    auVar38._8_8_ = var_c0h;
                    auVar38._0_8_ = var_c8h;
                }
                var_c0h = auVar38._8_8_;
                var_c8h = auVar38._0_8_;
                runtime_duffcopy_offset_700();
                uVar7 = uVar7 + 1;
                auVar39._8_8_ = uVar7;
                auVar39._0_8_ = iVar10;
                auVar20 = strconv_FormatInt(iVar15 + 1, 10);
                auVar20 = runtime_concatstring2(0, var_1c0h, uVar11, auVar20._0_8_, auVar20._8_8_);
                iVar3 = auVar20._0_8_;
                if (uVar8 < uVar7) {
                    var_1c0h = iVar3;
                    auVar39 = runtime_growslice(iVar10, uVar7, uVar8, 1, 0x1042920);
                    iVar3 = var_1c0h;
                }
                iVar4 = auVar39._0_8_;
                iVar10 = (auVar39._8_8_ + -1) * 0x10;
                *(int64_t *)(iVar4 + 8 + iVar10) = auVar20._8_8_;
                if (*(int32_t *)0x355db50 != 0) {
                    iVar3 = runtime_gcWriteBarrier2();
                    *extraout_R11_15 = iVar3;
                    extraout_R11_15[1] = *(int64_t *)(extraout_RSI_11 + extraout_R10_07);
                    iVar4 = extraout_RSI_11;
                    iVar10 = extraout_R10_07;
                }
                *(int64_t *)(iVar4 + iVar10) = iVar3;
            }
        }
    }
    if (auVar22._8_8_ != 0) {
        return auVar22._0_8_;
    }
    return var_300h;
}
