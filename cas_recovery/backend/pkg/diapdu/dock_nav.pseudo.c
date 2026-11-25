/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.buildDockNavTasks | VA 0xe27500 | dock_nav.go:24
   DWARF parameters and results: stationPath []string, taskPrefix string, ~r0 []CAS-Backend/pkg/agvcontrol.ForkliftTask
   DWARF locals: tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, i int */
undefined8 __stdcall
pkg_diapdu_buildDockNavTasks
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_78h, int64_t arg_190h)
{
    undefined8 in_RAX;
    undefined8 uVar1;
    undefined8 uVar2;
    undefined8 extraout_RAX;
    int64_t extraout_RAX_00;
    undefined8 extraout_RAX_01;
    int64_t iVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    uint64_t extraout_RCX_00;
    uint64_t extraout_RCX_01;
    int64_t extraout_RCX_02;
    undefined8 uVar5;
    int64_t iVar6;
    int64_t unaff_RBX;
    uint64_t uVar7;
    uint64_t extraout_RBX;
    uint64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    int64_t extraout_RBX_02;
    undefined *puVar8;
    undefined8 unaff_RBP;
    undefined *puVar9;
    int64_t extraout_RSI;
    int64_t iVar10;
    int64_t extraout_RDI;
    undefined8 extraout_R8;
    uint64_t uVar11;
    uint64_t uVar12;
    int64_t extraout_R9;
    int64_t unaff_R14;
    int64_t var_188h;
    int64_t var_170h;
    int64_t var_168h;
    int64_t var_160h;
    int64_t var_158h;
    int64_t var_150h;
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
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    do {
        puVar8 = (undefined *)*(undefined **)0x20;
        if (*(undefined **)(unaff_R14 + 0x10) < (undefined *)((int64_t)*(undefined **)0x20 + -0xf8)) {
            puVar9 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            puVar8 = (undefined *)((int64_t)*(undefined **)0x20 + -0x178);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
            if (unaff_RBX < 2) {
                return 0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28) = arg2;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) = unaff_RBX + -1;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe2756a;
            uVar1 = runtime_makeslice(0x1142180, 0);
            iVar3 = 0;
            uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x130);
            uVar2 = 0;
            while( true ) {
                if (*(int64_t *)((int64_t)*(undefined **)0x20 + -0x130) <= iVar3) {
                    return uVar1;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x108) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x138) = uVar2;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100) = uVar1;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128) = iVar3;
                uVar5 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe275f3;
                uVar2 = pkg_diapdu_formatDockTaskID
                                  (iVar3, *(int64_t *)((int64_t)*(undefined **)0x20 + -0x178), 
                                   *(int64_t *)((int64_t)*(undefined **)0x20 + -0x170), 
                                   *(int64_t *)((int64_t)*(undefined **)0x20 + -0x168));
                iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128) * 0x10;
                *(undefined **)((int64_t)*(undefined **)0x20 + -0x188) = puVar9;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe2762f;
                runtime_duffcopy_offset_700(uVar2, uVar5, *(int64_t *)((int64_t)*(undefined **)0x20 + -0x128) + 1, 
                                (undefined *)((int64_t)*(undefined **)0x20 + -0xf8), 0x2e7fac0);
                unaff_RBP = *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x188);
                iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
                uVar5 = *(undefined8 *)(iVar3 + 8 + iVar6);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf8) = *(undefined8 *)(iVar3 + iVar6);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xf0) = uVar5;
                if (*(uint64_t *)((int64_t)*(undefined **)0x20 + 0x10) <= extraout_RCX_00) break;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x110) = extraout_RCX_00;
                uVar11 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x138) + 1;
                uVar5 = *(undefined8 *)(iVar3 + 8 + extraout_RCX_00 * 0x10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe8) = *(undefined8 *)(iVar3 + extraout_RCX_00 * 0x10);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xe0) = uVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0xd8) = extraout_RAX;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0xd0) = extraout_RBX;
                uVar4 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x108);
                if (uVar4 < uVar11) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe276d0;
                    runtime_growslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x100), uVar11, uVar4, 1, 0x1142180
                                    , uVar11, extraout_RCX_00);
                    iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
                    uVar12 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x110);
                    iVar6 = extraout_RAX_00;
                    uVar4 = extraout_RCX_01;
                    uVar7 = extraout_RBX_00;
                    uVar11 = extraout_RBX_00;
                } else {
                    iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x100);
                    uVar7 = extraout_RBX;
                    uVar12 = extraout_RCX_00;
                }
                iVar10 = uVar11 * 0xe0 + iVar6 + -0xe0;
                if (*(int32_t *)0x355db50 != 0) {
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) = iVar6;
                    *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x118) = uVar11;
                    *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x120) = uVar4;
                    *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18) = iVar10;
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe27738;
                    runtime_wbMove(0x1142180, iVar10, (undefined *)((int64_t)*(undefined **)0x20 + -0xf8), iVar10, 
                                    iVar3, uVar11, uVar12);
                    iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10);
                    uVar4 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x120);
                    iVar10 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18);
                    uVar11 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x118);
                    uVar12 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x110);
                    uVar7 = extraout_RBX_01;
                }
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x188) = unaff_RBP;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe275af;
                uVar1 = runtime_duffcopy_offset_700(iVar6, uVar7, uVar4, iVar10, (undefined *)((int64_t)*(undefined **)0x20 + -0xf8)
                                        , uVar11, uVar12);
                puVar9 = *(undefined **)((int64_t)*(undefined **)0x20 + -0x188);
                iVar3 = extraout_R9;
                uVar5 = extraout_RCX;
                uVar2 = extraout_R8;
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x180) = 0xe27785;
            runtime_panicIndex(extraout_RCX_00, extraout_RBX, *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x10));
            in_RAX = extraout_RAX_01;
            arg4 = extraout_RCX_02;
            unaff_RBX = extraout_RBX_02;
            arg2 = extraout_RSI;
            arg1 = extraout_RDI;
        }
        *(undefined8 *)(puVar8 + 8) = in_RAX;
        *(int64_t *)(puVar8 + 0x10) = unaff_RBX;
        *(int64_t *)(puVar8 + 0x18) = arg4;
        *(int64_t *)(puVar8 + 0x20) = arg1;
        *(int64_t *)(puVar8 + 0x28) = arg2;
        *(undefined8 *)(puVar8 + -8) = 0xe277a5;
        runtime_morestack_noctxt_abi0();
        in_RAX = *(undefined8 *)(puVar8 + 8);
        unaff_RBX = *(int64_t *)(puVar8 + 0x10);
        arg4 = *(int64_t *)(puVar8 + 0x18);
        arg1 = *(int64_t *)(puVar8 + 0x20);
        arg2 = *(int64_t *)(puVar8 + 0x28);
        *(undefined **)0x20 = (BADSPACEBASE *)puVar8;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.queryVehicleStationQuiet | VA 0xe277e0 | dock_nav.go:48
   DWARF parameters and results: ip string, ~r0 string, ~r1 error
   DWARF locals: err error, loc *CAS-Backend/pkg/agvcontrol.VechileLocation */
undefined8 __stdcall pkg_diapdu_queryVehicleStationQuiet(int64_t arg_8h, int64_t arg_10h)
{
    int64_t iVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_20h = 0;
    var_18h = 0xe27880;
    var_10h = (int64_t)&var_20h;
    iVar1 = pkg_agvcontrol_DoWithConn(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                         in_stack_ffffffffffffffd8, unaff_retaddr);
    if (iVar1 != 0) {
        return 0;
    }
    return *(undefined8 *)(var_20h + 0x48);
}

/* CAS-Backend/pkg/diapdu.queryVehicleStationQuiet.func1 | VA 0xe27880 | dock_nav.go:50
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &loc **CAS-Backend/pkg/agvcontrol.VechileLocation, e error */
undefined8 __stdcall
pkg_diapdu_queryVehicleStationQuiet_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_20h)
{
    undefined8 *puVar1;
    int64_t in_RAX;
    int64_t extraout_RDX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar2 [16];
    int64_t unaff_retaddr;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined8 **)(arg3 + 8);
    auVar2 = pkg_agvcontrol_queryAMRLocation();
    if (*(int32_t *)0x355db50 != 0) {
        auVar2 = runtime_gcWriteBarrier2();
        *extraout_R11 = auVar2._0_8_;
        extraout_R11[1] = *puVar1;
    }
    *puVar1 = auVar2._0_8_;
    return auVar2._8_8_;
}

/* CAS-Backend/pkg/diapdu.sendCancelNavigation | VA 0xe27900 | dock_nav.go:61
   DWARF parameters and results: ip string, ~r0 error
   DWARF locals: (no entries) */
void __stdcall pkg_diapdu_sendCancelNavigation(int64_t arg_8h, int64_t arg_10h)
{
    int64_t unaff_R14;
    int64_t in_stack_00000018;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    pkg_agvcontrol_DoWithConn(in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                 in_stack_fffffffffffffff0, in_stack_00000018);
    return;
}

/* CAS-Backend/pkg/diapdu.sendCancelNavigation.func1 | VA 0xe45620 | dock_nav.go:62
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

void __stdcall pkg_diapdu_sendCancelNavigation_func1(int64_t arg_8h, int64_t arg_10h)
{
    int64_t unaff_R14;
    int64_t in_stack_00000050;
    int64_t in_stack_00000070;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    pkg_agvcontrol_SendCancelNavigation(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000050, in_stack_00000070);
    return;
}

/* CAS-Backend/pkg/diapdu.sendDockNavigation | VA 0xe27960 | dock_nav.go:67
   DWARF parameters and results: ip string, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r0 bool, ~r1 error
   DWARF locals: err error, ok bool */
// WARNING: Variable defined which should be unmapped: var_18h
// WARNING: [rz-ghidra] Detected overlap for variable var_30h

undefined __stdcall
pkg_diapdu_sendDockNavigation
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h)
{
    int64_t unaff_R14;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t var_31h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_31h._0_1_ = 0;
    stack0xffffffffffffffd0 = 0xe27a20;
    var_28h = (int64_t)&var_31h;
    var_20h = arg4;
    var_18h = arg1;
    var_10h = arg2;
    pkg_agvcontrol_DoWithConn(in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, 
                 in_stack_ffffffffffffffc0, arg1);
    return (undefined)var_31h;
}

/* CAS-Backend/pkg/diapdu.sendDockNavigation.func1 | VA 0xe27a20 | dock_nav.go:69
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &ok *bool, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, e error */
// WARNING: [rz-ghidra] Detected overlap for variable var_10eh
// WARNING: [rz-ghidra] Detected overlap for variable var_f8h
// WARNING: [rz-ghidra] Detected overlap for variable var_10ch
// WARNING: [rz-ghidra] Detected overlap for variable var_108h
// WARNING: [rz-ghidra] Detected overlap for variable var_d8h

undefined8 __stdcall
pkg_diapdu_sendDockNavigation_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    undefined *puVar1;
    undefined uVar2;
    int64_t in_RAX;
    int64_t extraout_RDX;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000030;
    int64_t in_stack_000000d0;
    int64_t in_stack_000000e0;
    int64_t in_stack_00000110;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined **)(arg3 + 8);
    uVar2 = pkg_agvcontrol_SendForkliftSpecifiedPathNavigation(in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, 
                         in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_00000030, in_stack_000000d0, 
                         in_stack_000000e0, in_stack_00000110);
    *puVar1 = uVar2;
    return unaff_RBX;
}
