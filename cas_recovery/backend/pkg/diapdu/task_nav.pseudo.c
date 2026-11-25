/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.waitNavTasksComplete | VA 0xe2d3e0 | task_nav.go:128
   DWARF parameters and results: vehicleID string, ip string, taskIDs []string, finalStation string, timeout time.Duration, ~r0 bool, ~r0 bool
   DWARF locals: waitLogged time.Time, deadline <-chan time.Time, ticker *time.Ticker, fallbackLogged bool, done bool, haveMonitor bool, st string, err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_ebh
// WARNING: [rz-ghidra] Detected overlap for variable var_eah
// WARNING: [rz-ghidra] Detected overlap for variable var_e8h

undefined __stdcall
pkg_diapdu_waitNavTasksComplete
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, int64_t arg_50h, int64_t arg_150h, int64_t arg_180h)
{
    bool bVar1;
    char cVar2;
    undefined8 in_RAX;
    int64_t *piVar3;
    int64_t extraout_RAX;
    int64_t iVar4;
    int64_t extraout_RAX_00;
    undefined8 extraout_RAX_01;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t extraout_RCX_01;
    char extraout_BL;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    undefined8 in_R10;
    int64_t in_R11;
    int64_t unaff_R14;
    int64_t var_e9h;
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
    int64_t var_38h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&var_a8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_e9h._0_1_ = 0;
    piVar3 = (int64_t *)time_NewTimer(arg_8h);
    var_c0h = *piVar3;
    var_b0h = time_NewTicker(2000000000);
    var_28h = 0xe2d9a0;
    var_10h = (int64_t)&var_28h;
    var_e9h._0_1_ = 1;
    var_20h = var_b0h;
    time_Now();
    bVar1 = false;
    var_e0h = extraout_RAX;
    var_b8h = extraout_RCX;
    var_d8h = extraout_RBX;
    do {
        while( true ) {
            var_48h = *(int64_t *)var_b0h;
            var_38h = var_c0h;
            iVar4 = runtime_selectgo(&var_48h, (int64_t)&var_e9h + 1, 0, 0, 2, 1);
            if (iVar4 != 0) {
                var_a0h = runtime_convTstring(in_RAX, unaff_RBX);
                var_a8h = 0x1042920;
                var_90h = runtime_convTstring(in_R10, in_R11);
                var_98h = 0x1042920;
                var_80h = runtime_convT64(arg5);
                var_88h = 0x1042b60;
                fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a4bf4 /* "[任务] 车辆 %s 等待导航完成超时 final=%s taskIDs=%d\n" */, 0x40, &var_a8h, 3, 3);
                var_e9h._0_1_ = 0;
                (**(code **)var_10h)();
                return 0;
            }
            iVar4 = time_Since(var_e0h, var_d8h, var_b8h);
            if (59999999999 < iVar4) {
                time_Now();
                var_d0h = extraout_RBX_00;
                var_c8h = extraout_RAX_00;
                var_18h = extraout_RCX_00;
                var_60h = runtime_convTstring(in_RAX, unaff_RBX);
                var_68h = 0x1042920;
                var_50h = runtime_convTstring(in_R10, in_R11);
                var_58h = 0x1042920;
                fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a198b, 0x39, &var_68h, 2, 2);
                var_d8h = var_d0h;
                var_e0h = var_c8h;
                var_b8h = var_18h;
            }
            cVar2 = pkg_diapdu_navTasksCompleteFromMonitor(in_RAX, unaff_RBX, arg2, arg5, arg6, in_R10, in_R11);
            if (extraout_BL == '\0') break;
            if (cVar2 != '\0') {
                var_e9h._0_1_ = 0;
                (**(code **)var_10h)();
                return 1;
            }
        }
        if (!bVar1) {
            var_70h = runtime_convTstring(in_RAX, unaff_RBX);
            var_78h = 0x1042920;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a700e, 0x47, &var_78h, 1, 1);
        }
        cVar2 = pkg_diapdu_allNavSubTasksTerminal(arg4, arg1, arg2, arg5, arg6);
        if (cVar2 != '\0') {
            if (in_R11 == 0) {
                var_e9h._0_1_ = 0;
                (**(code **)var_10h)();
                return 1;
            }
            pkg_diapdu_queryVehicleStationQuiet(arg4, arg1);
            if (extraout_RCX_01 == 0) {
                if (extraout_RBX_01 == in_R11) {
                    cVar2 = runtime_memequal(extraout_RAX_01, in_R10, extraout_RBX_01);
                } else {
                    cVar2 = '\0';
                }
            } else {
                cVar2 = '\0';
            }
            if (cVar2 != '\0') {
                var_e9h._0_1_ = 0;
                (**(code **)var_10h)();
                return 1;
            }
        }
        bVar1 = true;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.waitNavTasksComplete.deferwrap1 | VA 0xe2d9a0 | task_nav.go:131
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h

void __stdcall
pkg_diapdu_waitNavTasksComplete_deferwrap1
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

/* CAS-Backend/pkg/diapdu.allNavSubTasksTerminal | VA 0xe2da00 | task_nav.go:169
   DWARF parameters and results: ip string, taskIDs []string, ~r0 bool
   DWARF locals: statusByID map[string]int, err error, res *CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, id string, st int, ok bool */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall
pkg_diapdu_allNavSubTasksTerminal
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h,
          int64_t arg_30h, undefined8 placeholder_12, int64_t arg_40h, undefined8 placeholder_14, int64_t arg_50h,
          int64_t arg_198h)
{
    undefined8 uVar1;
    int64_t iVar2;
    undefined8 uVar3;
    undefined8 *puVar4;
    int64_t *piVar5;
    char extraout_BL;
    int64_t extraout_RBX;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t var_188h;
    int64_t var_158h;
    int64_t var_150h;
    int64_t var_148h;
    int64_t var_140h;
    int64_t var_138h;
    int64_t var_130h;
    undefined auStack_f8 [152];
    int64_t var_60h;
    int64_t var_50h;
    int64_t var_40h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_f8 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe2dc5d;
        runtime_morestack_noctxt_abi0();
    }
    if (arg1 == 0) {
        return 0;
    }
    var_140h = 0;
    var_30h = 0xe2dc80;
    var_10h = (int64_t)&var_140h;
    var_28h = arg4;
    var_20h = arg1;
    var_18h = arg2;
    iVar2 = pkg_agvcontrol_DoWithConn();
    if ((iVar2 != 0) || (var_140h == 0)) {
        return 0;
    }
    iVar2 = *(int64_t *)(var_140h + 0xc0);
    var_50h = in_XMM15_Qa;
    if (iVar2 < 9) {
        runtime_duffzero_offset_290();
        var_50h = (int64_t)&var_130h;
        iVar2 = extraout_RBX;
    }
    uVar3 = runtime_makemap(0x107da00, iVar2, &var_60h);
    var_138h = *(undefined8 *)(var_140h + 0xb8);
    for (iVar2 = *(int64_t *)(var_140h + 0xc0); 0 < iVar2; iVar2 = iVar2 + -1) {
        uVar1 = *(undefined8 *)(var_138h + 0x10);
        puVar4 = (undefined8 *)runtime_mapassign_faststr(0x107da00, uVar3, *(undefined8 *)var_138h, *(undefined8 *)(var_138h + 8))
        ;
        *puVar4 = uVar1;
        var_138h = var_138h + 0x20;
    }
    while( true ) {
        if (arg1 < 1) {
            return 1;
        }
        var_138h = arg4;
        piVar5 = (int64_t *)runtime_mapaccess2_faststr(0x107da00, uVar3, *(undefined8 *)arg4, *(undefined8 *)(arg4 + 8));
        if (extraout_BL == '\0') break;
        if ((3 < *piVar5 - 4U) && (*piVar5 != 0x194)) {
            return 0;
        }
        arg4 = var_138h + 0x10;
        arg1 = arg1 + -1;
    }
    return 0;
}

/* CAS-Backend/pkg/diapdu.allNavSubTasksTerminal.func1 | VA 0xe2dc80 | task_nav.go:174
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &res **CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, r *CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, taskIDs []string, e error */
int64_t __stdcall
pkg_diapdu_allNavSubTasksTerminal_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_30h)
{
    undefined8 *puVar1;
    int64_t in_RAX;
    undefined8 uVar2;
    int64_t extraout_RDX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar3 [16];
    int64_t unaff_retaddr;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined8 **)(arg3 + 0x20);
    auVar3 = pkg_agvcontrol_SendRobotTaskStatusReq();
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

/* CAS-Backend/pkg/diapdu.navTasksCompleteFromMonitor | VA 0xe2dd20 | task_nav.go:202
   DWARF parameters and results: vehicleID string, taskIDs []string, finalStation string, done bool, haveMonitor bool
   DWARF locals: ok bool, pkg *CAS-Backend/pkg/diapdu.MonitorTaskStatusPackage, hubSnap *CAS-Backend/pkg/diapdu.VehicleRuntimeSnap */
// WARNING: Variable defined which should be unmapped: var_18h

undefined8 __stdcall
pkg_diapdu_navTasksCompleteFromMonitor
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_70h, int64_t arg_88h)
{
    char cVar1;
    int64_t in_RAX;
    int64_t arg_38h_00;
    undefined8 uVar2;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000150;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t var_18h;
    int64_t var_10h;
    
    cVar1 = (char)arg4;
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
        arg_10h = unaff_RBX;
    }
    arg_38h_00 = pkg_diapdu_MonitorSnapForVehicle(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, var_18h, in_RAX);
    if (cVar1 == '\0') {
        return 0;
    }
    if (arg_38h_00 == 0) {
        if ((unaff_RBX != 0) && (arg1 == 0)) {
            if (arg6 == 0) {
                uVar2 = 1;
            } else if (arg6 == *(int64_t *)(unaff_RBX + 0x48)) {
                uVar2 = runtime_memequal(*(undefined8 *)(unaff_RBX + 0x40), arg5);
            } else {
                uVar2 = 0;
            }
            return uVar2;
        }
        return 0;
    }
    if ((((arg1 != 0) && (*(int64_t *)(arg_38h_00 + 0x58) == 0)) && (*(int64_t *)(arg_38h_00 + 0x48) == 0)) &&
       ((*(int64_t *)(arg_38h_00 + 0x38) == 0 && (*(int64_t *)(arg_38h_00 + 8) == 0)))) {
        return 0;
    }
    cVar1 = pkg_diapdu_allSubTasksTerminalForDispatch(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                         in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_00000150);
    if (cVar1 == '\0') {
        return 0;
    }
    if (arg6 != 0) {
        if (unaff_RBX != 0) {
            if (arg6 == *(int64_t *)(unaff_RBX + 0x48)) {
                cVar1 = runtime_memequal(*(undefined8 *)(unaff_RBX + 0x40), arg5);
            } else {
                cVar1 = '\0';
            }
            if (cVar1 != '\0') {
                return 1;
            }
        }
        uVar2 = pkg_diapdu_NavTasksCompleteFromMonitor(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                             in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, arg_38h_00
                             , arg_10h);
        return uVar2;
    }
    return 1;
}

/* CAS-Backend/pkg/diapdu.stitchStationPaths | VA 0xe2df20 | task_nav.go:230
   DWARF parameters and results: a []string, b []string, ~r0 []string
   DWARF locals: bestK int, maxK int, k int, i int */
undefined8 __stdcall
pkg_diapdu_stitchStationPaths
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, undefined8 placeholder_5,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_60h, int64_t arg_a0h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 extraout_RAX;
    undefined8 uVar2;
    undefined8 extraout_RAX_00;
    undefined8 extraout_RAX_01;
    int64_t extraout_RAX_02;
    int64_t iVar3;
    undefined8 extraout_RAX_03;
    int64_t extraout_RAX_04;
    int64_t extraout_RAX_05;
    undefined8 extraout_RCX;
    undefined8 uVar4;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    int64_t iVar5;
    uint64_t extraout_RCX_02;
    undefined8 extraout_RCX_03;
    uint64_t extraout_RCX_04;
    int64_t extraout_RCX_05;
    int64_t iVar6;
    int64_t iVar7;
    uint64_t unaff_RBX;
    undefined8 extraout_RBX;
    undefined8 uVar8;
    undefined8 extraout_RBX_00;
    uint64_t uVar9;
    undefined8 extraout_RBX_01;
    uint64_t extraout_RBX_02;
    undefined8 extraout_RBX_03;
    uint64_t extraout_RBX_04;
    uint64_t extraout_RBX_05;
    int64_t *piVar10;
    undefined *unaff_RBP;
    undefined *puVar11;
    undefined8 uVar12;
    uint64_t extraout_RSI;
    int64_t extraout_RDI;
    int64_t extraout_R8;
    uint64_t uVar13;
    uint64_t uVar14;
    uint64_t extraout_R11;
    int64_t unaff_R14;
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
    
    while (piVar10 = (int64_t *)*(undefined **)0x20, puVar11 = unaff_RBP,
          *(undefined **)0x20 <= *(undefined **)(unaff_R14 + 0x10)) {
code_r0x00e2e386:
        piVar10[1] = in_RAX;
        piVar10[2] = unaff_RBX;
        piVar10[3] = arg4;
        piVar10[4] = arg1;
        piVar10[5] = arg2;
        piVar10[6] = arg5;
        piVar10[-1] = 0xe2e3a9;
        runtime_morestack_noctxt_abi0(*piVar10, piVar10[1]);
        in_RAX = piVar10[1];
        unaff_RBX = piVar10[2];
        arg4 = piVar10[3];
        arg1 = piVar10[4];
        arg2 = piVar10[5];
        arg5 = piVar10[6];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar10;
        unaff_RBP = puVar11;
    }
    puVar11 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
    *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
    piVar10 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x68);
    *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
    *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) = arg1;
    *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28) = arg2;
    if (unaff_RBX == 0) {
        if (arg2 == 0) {
            uVar8 = 0;
            uVar2 = 0;
            uVar4 = 0;
            uVar12 = 0;
        } else {
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e005;
            runtime_growslice(0, arg2, 0, arg2, 0x1042920);
            uVar12 = *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x28);
            arg1 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20);
            uVar2 = extraout_RAX_00;
            uVar4 = extraout_RCX_00;
            uVar8 = extraout_RBX_00;
        }
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = uVar4;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = uVar8;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = uVar2;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e03c;
        runtime_typedslicecopy(0x1042920, uVar2, uVar8, arg1, uVar12);
        return *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
    }
    *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
    *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
    if (arg2 == 0) {
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2df98;
        runtime_growslice(0);
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = extraout_RAX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = extraout_RBX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX;
        *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2dfc9;
        runtime_typedslicecopy(0x1042920, extraout_RAX, extraout_RBX, *(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 
                        *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10));
        return *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
    }
    *(int64_t *)((int64_t)*(undefined **)0x20 + 0x30) = arg5;
    uVar9 = unaff_RBX;
    if (arg2 < (int64_t)unaff_RBX) {
        uVar9 = arg2;
    }
    *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x40) = uVar9;
    iVar6 = 1;
    iVar7 = 0;
    do {
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30) = iVar7;
        if ((int64_t)uVar9 < iVar6) {
            if (iVar7 < 1) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e1e8;
                runtime_growslice(0, unaff_RBX, 0, unaff_RBX, 0x1042920, arg5);
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = extraout_RAX_03;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = extraout_RBX_03;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX_03;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e219;
                runtime_typedslicecopy(0x1042920, extraout_RAX_03, extraout_RBX_03, 
                                *(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 
                                *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10));
                iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20);
                iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28);
                uVar9 = iVar7 + iVar6;
                uVar13 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x28);
                if (uVar13 < uVar9) {
                    *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e24c;
                    runtime_growslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10));
                    iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20);
                    iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x28);
                    iVar5 = extraout_RAX_04;
                    uVar13 = extraout_RCX_04;
                    uVar9 = extraout_RBX_04;
                } else {
                    iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10);
                }
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x20) = uVar13;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x28) = uVar9;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) = iVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e2a5;
                runtime_typedslicecopy(0x1042920, iVar5 + (iVar6 << 4 & (int64_t)(iVar6 - uVar13) >> 0x3f), uVar9 - iVar6, 
                                *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x20), iVar7);
                return *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e0c5;
            runtime_growslice(0, unaff_RBX, 0, unaff_RBX, 0x1042920, arg5);
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10) = extraout_RAX_01;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x20) = extraout_RBX_01;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x28) = extraout_RCX_01;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e0f6;
            runtime_typedslicecopy(0x1042920, extraout_RAX_01, extraout_RBX_01, 
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + 8), 
                            *(undefined8 *)((int64_t)*(undefined **)0x20 + 0x10));
            uVar9 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x30);
            if (*(uint64_t *)((int64_t)*(undefined **)0x20 + 0x28) < uVar9) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e2bf;
                runtime_panicSliceB();
                goto code_r0x00e2e2bf;
            }
            iVar5 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x28) - uVar9;
            iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20);
            uVar13 = iVar5 + iVar7;
            iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20) +
                    (uVar9 << 4 & (int64_t)(uVar9 - *(int64_t *)((int64_t)*(undefined **)0x20 + 0x30)) >> 0x3f);
            uVar9 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x28);
            if (uVar9 < uVar13) {
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28) = iVar5;
                *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18) = iVar6;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e16f;
                runtime_growslice(*(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10), uVar13, uVar9, iVar5, 0x1042920);
                iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20);
                iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x18);
                iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x28);
                iVar3 = extraout_RAX_02;
                uVar13 = extraout_RBX_02;
                uVar9 = extraout_RCX_02;
            } else {
                iVar3 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10);
            }
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x20) = uVar9;
            *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10) = iVar3;
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x28) = uVar13;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e1bd;
            runtime_typedslicecopy(0x1042920, iVar3 + (iVar7 << 4 & (int64_t)(iVar7 - uVar9) >> 0x3f), uVar13 - iVar7, iVar6, 
                            iVar5);
            return *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x10);
        }
        *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38) = iVar6;
        uVar13 = 0;
        iVar5 = iVar7;
        while (iVar7 = iVar6, (int64_t)uVar13 < iVar6) {
            uVar14 = (unaff_RBX - iVar6) + uVar13;
            if (unaff_RBX <= uVar14) {
code_r0x00e2e378:
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e385;
                runtime_panicIndex(uVar14);
                in_RAX = extraout_RAX_05;
                arg4 = extraout_RCX_05;
                unaff_RBX = extraout_RBX_05;
                arg2 = extraout_RSI;
                arg1 = extraout_RDI;
                arg5 = extraout_R8;
                goto code_r0x00e2e386;
            }
            iVar3 = *(int64_t *)(in_RAX + 8 + uVar14 * 0x10);
            uVar12 = *(undefined8 *)(in_RAX + uVar14 * 0x10);
            if ((uint64_t)arg2 <= uVar13) {
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e378;
                runtime_panicIndex(uVar13);
                uVar14 = extraout_R11;
                goto code_r0x00e2e378;
            }
            uVar2 = *(undefined8 *)(arg1 + uVar13 * 0x10);
            iVar7 = iVar5;
            if (*(int64_t *)(arg1 + 8 + uVar13 * 0x10) != iVar3) break;
            *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x20) = uVar13;
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x70) = 0xe2e35c;
            cVar1 = runtime_memequal(uVar12, uVar2, iVar3);
            if (cVar1 == '\0') {
                in_RAX = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
                unaff_RBX = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x10);
                iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38);
                uVar9 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x40);
                arg2 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x28);
                arg1 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20);
                arg5 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x30);
                iVar7 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30);
                break;
            }
code_r0x00e2e2bf:
            iVar6 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x38);
            unaff_RBX = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x10);
            arg2 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x28);
            arg1 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x20);
            in_RAX = *(int64_t *)((int64_t)*(undefined **)0x20 + 8);
            uVar9 = *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x40);
            arg5 = *(int64_t *)((int64_t)*(undefined **)0x20 + 0x30);
            iVar5 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x30);
            uVar13 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x20) + 1;
        }
        iVar6 = iVar6 + 1;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.mergeStationPaths | VA 0xe2e3e0 | task_nav.go:261
   DWARF parameters and results: parts [][]string, ~r0 []string
   DWARF locals: full []string, best []string, p []string */
// WARNING: Removing unreachable block (ram,0x00e2e47e)
// WARNING: Variable defined which should be unmapped: var_18h

undefined8 __stdcall pkg_diapdu_mergeStationPaths(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h)
{
    int64_t *in_RAX;
    int64_t *piVar1;
    int64_t iVar2;
    int64_t unaff_RBX;
    int64_t iVar3;
    int64_t unaff_R14;
    undefined8 in_XMM2_Qa;
    undefined8 in_XMM5_Qa;
    undefined auVar4 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_00000028;
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
        runtime_morestack_noctxt_abi0(unaff_retaddr, (int64_t)in_RAX);
    }
    iVar2 = 0;
    piVar1 = in_RAX;
    for (iVar3 = unaff_RBX; 0 < iVar3; iVar3 = iVar3 + -1) {
        if (1 < piVar1[1]) {
            pkg_diapdu_stitchStationPaths
                      (*piVar1, piVar1[1], in_XMM2_Qa, iVar2, piVar1[2], in_XMM5_Qa, in_stack_ffffffffffffff90, 
                       in_stack_ffffffffffffff98, in_stack_ffffffffffffffa0, in_stack_ffffffffffffffa8, 
                       in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, var_18h, in_stack_00000028);
        }
        piVar1 = piVar1 + 3;
    }
    auVar4 = ZEXT816(0);
    for (; 0 < unaff_RBX; unaff_RBX = unaff_RBX + -1) {
        iVar3 = in_RAX[1];
        if (auVar4._8_8_ < iVar3) {
            iVar2 = *in_RAX;
            auVar4 = runtime_growslice(0, iVar3, 0, iVar3, 0x1042920);
            runtime_typedslicecopy(0x1042920, auVar4._0_8_, auVar4._8_8_, iVar2, iVar3);
        }
        in_RAX = in_RAX + 3;
    }
    return auVar4._0_8_;
}

/* CAS-Backend/pkg/diapdu.stationPathFromNavTasks | VA 0xe2e560 | task_nav.go:282
   DWARF parameters and results: tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r0 []string
   DWARF locals: appendStation func([]string, string) []string, path []string, t CAS-Backend/pkg/agvcontrol.ForkliftTask */
// WARNING: Variable defined which should be unmapped: var_8h

undefined8 __stdcall pkg_diapdu_stationPathFromNavTasks(int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h)
{
    int64_t in_RAX;
    undefined8 extraout_RAX;
    int64_t iVar1;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 uVar2;
    int64_t unaff_RBX;
    undefined8 extraout_RBX;
    int64_t extraout_RBX_00;
    undefined8 uVar3;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_130h;
    int64_t var_f8h;
    int64_t var_f0h;
    int64_t var_e8h;
    int64_t var_e0h;
    int64_t var_d8h;
    undefined auStack_a0 [144];
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_a0 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe2e685;
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    if (unaff_RBX == 0) {
        return 0;
    }
    iVar1 = 0;
    uVar2 = 0;
    uVar3 = 0;
    for (; 0 < unaff_RBX; unaff_RBX = unaff_RBX + -1) {
        var_10h = in_RAX;
        fcn.00478ddc();
        (**(code **)0x2cd70a0)(extraout_RBX, extraout_RCX, uVar2, var_f0h, var_e8h);
        (**(code **)0x2cd70a0)();
        in_RAX = var_10h + 0xe0;
        iVar1 = extraout_RBX_00;
        uVar2 = extraout_RCX_00;
        uVar3 = extraout_RAX;
    }
    if (iVar1 < 2) {
        return 0;
    }
    return uVar3;
}

/* CAS-Backend/pkg/diapdu.stationPathFromNavTasks.func1 | VA 0xe45480 | task_nav.go:286
   DWARF parameters and results: path []string, name string, ~r0 []string
   DWARF locals: (no entries) */
int64_t __stdcall
pkg_diapdu_stationPathFromNavTasks_func1
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h)
{
    uint8_t uVar1;
    int64_t in_RAX;
    int64_t *piVar2;
    uint64_t uVar3;
    int64_t unaff_RBX;
    int64_t iVar4;
    int64_t iVar5;
    int64_t extraout_RSI;
    int64_t extraout_R9;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar6 [16];
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    auVar6 = strings_TrimSpace(arg1, arg2);
    iVar4 = auVar6._8_8_;
    piVar2 = auVar6._0_8_;
    if ((iVar4 != 0) &&
       ((((iVar4 != 0xd || (*piVar2 != 0x534f505f464c4553)) || ((int32_t)piVar2[1] != 0x4f495449)) ||
        (*(char *)((int64_t)piVar2 + 0xc) != 'N')))) {
        if (unaff_RBX == 0) {
            uVar1 = 1;
        } else {
            iVar5 = (unaff_RBX + -1) * 0x10;
            if (iVar4 == *(int64_t *)(in_RAX + 8 + iVar5)) {
                uVar1 = runtime_memequal(*(undefined8 *)(in_RAX + iVar5), piVar2);
                uVar1 = uVar1 ^ 1;
            } else {
                uVar1 = 1;
            }
        }
        if (uVar1 != 0) {
            uVar3 = unaff_RBX + 1;
            if ((uint64_t)arg4 < uVar3) {
                auVar6 = runtime_growslice(in_RAX, uVar3, arg4, 1, 0x1042920);
                uVar3 = auVar6._8_8_;
                in_RAX = auVar6._0_8_;
            }
            iVar5 = (uVar3 - 1) * 0x10;
            *(int64_t *)(in_RAX + 8 + iVar5) = iVar4;
            if (*(int32_t *)0x355db50 != 0) {
                piVar2 = (int64_t *)runtime_gcWriteBarrier2();
                *extraout_R11 = piVar2;
                extraout_R11[1] = *(undefined8 *)(extraout_R9 + extraout_RSI);
                iVar5 = extraout_RSI;
                in_RAX = extraout_R9;
            }
            *(int64_t **)(in_RAX + iVar5) = piVar2;
        }
        return in_RAX;
    }
    return in_RAX;
}

/* CAS-Backend/pkg/diapdu.(*TaskScheduler).resolveFullTrafficPath | VA 0xe2e6a0 | task_nav.go:308
   DWARF parameters and results: s *CAS-Backend/pkg/diapdu.TaskScheduler, current string, task *CAS-Backend/pkg/diapdu.Task1, vehicleID string, planned *CAS-Backend/pkg/diapdu.TrafficPathResult, navTasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, ~r0 []string
   DWARF locals: parts [][]string, full []string, dropoff string, ~r0.ptr *string, ~r0.cap int, ~r0.len int, ok bool, path []string, nav []string, tail []string */
// WARNING: Variable defined which should be unmapped: var_a0h
// WARNING: Variable defined which should be unmapped: var_60h

int64_t __stdcall
pkg_diapdu___TaskScheduler__resolveFullTrafficPath
          (int64_t arg1, int64_t arg2, undefined8 placeholder_2, int64_t arg4, int64_t arg5, int64_t arg6,
          int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_28h, int64_t arg_30h,
          int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, int64_t arg_50h, int64_t arg_120h)
{
    uint8_t uVar1;
    char cVar2;
    int64_t in_RAX;
    int64_t extraout_RAX;
    int64_t *extraout_RAX_00;
    int64_t iVar3;
    int64_t extraout_RAX_01;
    int64_t arg1_00;
    int64_t *piVar4;
    int64_t extraout_RAX_02;
    int64_t extraout_RCX;
    uint64_t extraout_RCX_00;
    uint64_t extraout_RCX_01;
    uint64_t uVar5;
    int64_t arg5_00;
    uint64_t extraout_RCX_02;
    uint64_t extraout_RCX_03;
    int64_t iVar6;
    int64_t extraout_RCX_04;
    int64_t extraout_RBX;
    uint64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    int64_t arg2_00;
    int64_t extraout_RBX_02;
    int64_t *extraout_RSI;
    int64_t extraout_RSI_00;
    char extraout_DIL;
    char extraout_DIL_00;
    int64_t extraout_RDI;
    int64_t extraout_RDI_00;
    int64_t iVar7;
    uint64_t extraout_R8;
    uint64_t extraout_R8_00;
    int64_t extraout_R9;
    undefined8 *extraout_R10;
    uint64_t uVar8;
    undefined8 *puVar9;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t iVar10;
    int64_t unaff_R14;
    undefined8 in_XMM5_Qa;
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffff08;
    int64_t in_stack_ffffffffffffff10;
    int64_t in_stack_ffffffffffffff18;
    int64_t in_stack_ffffffffffffff20;
    int64_t in_stack_ffffffffffffff28;
    int64_t in_stack_ffffffffffffff30;
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
        runtime_morestack_noctxt_abi0(unaff_retaddr, arg_8h);
        arg_30h = arg4;
    }
    if (arg1 == 0) {
        return 0;
    }
    if (arg6 == 0) {
        uVar5 = 0;
        piVar4 = (int64_t *)0x0;
        uVar8 = 0;
        goto code_r0x00e2e772;
    }
    iVar3 = *(int64_t *)(arg6 + 8);
    if (iVar3 < 2) {
        uVar5 = 0;
        piVar4 = (int64_t *)0x0;
        uVar8 = 0;
        goto code_r0x00e2e772;
    }
    var_48h = *(int64_t *)arg6;
    iVar6 = *(int64_t *)(arg6 + 0x10);
    arg_30h = arg4;
    if (arg4 != 0) {
        puVar9 = (undefined8 *)var_48h;
        var_58h = iVar3;
        var_50h = iVar6;
        var_10h = var_48h;
        for (iVar10 = 0; iVar10 < iVar3; iVar10 = iVar10 + 1) {
            if ((arg4 == puVar9[1]) &&
               (var_78h = iVar10, var_18h = (int64_t)puVar9, cVar2 = runtime_memequal(*puVar9), iVar3 = var_58h,
               iVar6 = var_50h, puVar9 = (undefined8 *)var_18h, var_48h = var_10h, iVar10 = var_78h, cVar2 != '\0')) {
                iVar7 = var_58h - var_78h;
                iVar10 = (var_78h - var_50h >> 0x3f & var_78h << 4) + var_10h;
                if (iVar7 == 0) {
                    iVar3 = 0;
                    var_48h = 0;
                    iVar6 = 0;
                } else {
                    var_50h = iVar7;
                    var_10h = iVar10;
                    runtime_growslice(0, iVar7, 0, iVar7, 0x1042920);
                    var_48h = extraout_RAX_02;
                    iVar6 = extraout_RCX_04;
                    iVar10 = var_10h;
                    iVar3 = extraout_RBX_02;
                    iVar7 = var_50h;
                }
                runtime_typedslicecopy(0x1042920, var_48h, iVar3, iVar10, iVar7);
                break;
            }
            puVar9 = puVar9 + 2;
        }
    }
    do {
        piVar4 = (int64_t *)runtime_growslice(0, 1, 0, 1, 0x1038980);
        piVar4[1] = iVar3;
        piVar4[2] = iVar6;
        uVar5 = extraout_RCX_02;
        if (*(int32_t *)0x355db50 != 0) {
            piVar4 = (int64_t *)runtime_gcWriteBarrier2();
            *extraout_R11_01 = var_48h;
            extraout_R11_01[1] = *piVar4;
            uVar5 = extraout_RCX_03;
        }
        *piVar4 = var_48h;
        uVar8 = 1;
        arg4 = arg_30h;
code_r0x00e2e772:
        var_38h = (int64_t)piVar4;
        if (((*(int64_t *)(in_RAX + 0x40) != 0) && (arg4 != 0)) && (pkg_diapdu___TaskScheduler__planStationTaskRoute(), extraout_DIL != '\0')) {
            uVar8 = uVar8 + 1;
            iVar3 = extraout_RAX;
            piVar4 = (int64_t *)var_38h;
            if (uVar5 < uVar8) {
                var_40h = extraout_RAX;
                runtime_growslice(var_38h, uVar8, uVar5, 1, 0x1038980);
                iVar3 = var_40h;
                uVar8 = extraout_RBX_00;
                piVar4 = extraout_RAX_00;
                uVar5 = extraout_RCX_00;
                var_a0h = extraout_RCX;
            }
            iVar6 = uVar8 * 3;
            piVar4[uVar8 * 3 + -2] = extraout_RBX;
            piVar4[uVar8 * 3 + -1] = extraout_RCX;
            if (*(int32_t *)0x355db50 != 0) {
                iVar3 = runtime_gcWriteBarrier2();
                *extraout_R11 = iVar3;
                extraout_R11[1] = extraout_RSI[extraout_RDI + -3];
                piVar4 = extraout_RSI;
                iVar6 = extraout_RDI;
                uVar5 = extraout_R8;
            }
            piVar4[iVar6 + -3] = iVar3;
            var_38h = (int64_t)piVar4;
        }
        iVar6 = arg_18h;
        iVar3 = pkg_diapdu_stationPathFromNavTasks
                          (arg_18h, in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, in_stack_ffffffffffffff18);
        if (1 < arg_10h) {
            uVar8 = uVar8 + 1;
            iVar10 = var_38h;
            if (uVar5 < uVar8) {
                var_30h = iVar3;
                runtime_growslice(var_38h, uVar8, uVar5, 1, 0x1038980);
                iVar3 = var_30h;
                uVar8 = extraout_RBX_01;
                iVar10 = extraout_RAX_01;
                uVar5 = extraout_RCX_01;
            }
            iVar7 = uVar8 * 3;
            *(int64_t *)(iVar10 + -0x10 + uVar8 * 0x18) = arg_10h;
            *(int64_t *)(iVar10 + -8 + uVar8 * 0x18) = iVar6;
            if (*(int32_t *)0x355db50 != 0) {
                iVar3 = runtime_gcWriteBarrier2();
                *extraout_R11_00 = iVar3;
                extraout_R11_00[1] = *(int64_t *)(extraout_RSI_00 + -0x18 + extraout_RDI_00 * 8);
                iVar10 = extraout_RSI_00;
                iVar7 = extraout_RDI_00;
                uVar5 = extraout_R8_00;
            }
            *(int64_t *)(iVar10 + -0x18 + iVar7 * 8) = iVar3;
        }
        var_28h = pkg_diapdu_mergeStationPaths
                            (uVar5, in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, in_stack_ffffffffffffff18);
        iVar3 = *(int64_t *)(arg1 + 0x98);
        iVar6 = *(int64_t *)(arg1 + 0x90);
        if (iVar3 == 0) {
            iVar3 = *(int64_t *)(arg1 + 0xd8);
            iVar6 = *(int64_t *)(arg1 + 0xd0);
        }
        var_70h = uVar8;
        var_68h = uVar5;
        if (*(int64_t *)(in_RAX + 0x40) == 0) {
            uVar1 = 0;
        } else if (iVar3 == 0) {
            uVar1 = 0;
        } else if (uVar8 == 0) {
            uVar1 = 0;
        } else {
            iVar7 = (uVar8 - 1) * 0x10;
            iVar10 = *(int64_t *)(var_28h + 8 + iVar7);
            if (iVar3 == iVar10) {
                var_60h = iVar3;
                var_20h = iVar6;
                uVar1 = runtime_memequal(*(undefined8 *)(var_28h + iVar7), iVar6, iVar10);
                uVar1 = uVar1 ^ 1;
                iVar3 = var_60h;
                iVar6 = var_20h;
            } else {
                uVar1 = 1;
            }
        }
        iVar10 = var_70h;
        if (uVar1 == 0) goto code_r0x00e2eb05;
        uVar5 = var_70h - 1;
        if (uVar5 < (uint64_t)var_70h) {
            pkg_diapdu_shortestPathOnGraph(*(undefined8 *)(in_RAX + 0x40), 0, arg2, arg5, *(undefined8 *)(var_28h + uVar5 * 0x10), 
                            *(undefined8 *)(var_28h + 8 + uVar5 * 0x10), iVar6, iVar3);
            iVar10 = var_70h;
            if ((extraout_DIL_00 != '\0') && (1 < arg2_00)) {
                var_28h = pkg_diapdu_stitchStationPaths
                                    (arg1_00, arg2_00, placeholder_2, var_68h, arg5_00, in_XMM5_Qa, 
                                     in_stack_ffffffffffffff08, in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, 
                                     in_stack_ffffffffffffff20, in_stack_ffffffffffffff28, in_stack_ffffffffffffff30, 
                                     var_a0h, var_60h);
            }
code_r0x00e2eb05:
            if (1 < iVar10) {
                return var_28h;
            }
            return 0;
        }
        runtime_panicIndex(uVar5, var_70h, var_70h);
        iVar3 = in_RAX;
        iVar6 = extraout_R9;
        var_48h = (int64_t)extraout_R10;
    } while( true );
}

/* CAS-Backend/pkg/diapdu.graphPathDistance | VA 0xe2eda0 | task_nav.go:341
   DWARF parameters and results: g *CAS-Backend/pkg/diapdu.Graph, nodeNames []string, ~r0 float64
   DWARF locals: total float64, i int, ok bool, d float64 */
double __stdcall
pkg_diapdu_graphPathDistance
          (int64_t arg1, undefined8 placeholder_1, undefined8 placeholder_2, int64_t arg4, undefined8 placeholder_4,
          undefined8 placeholder_5, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h)
{
    int64_t in_RAX;
    int64_t extraout_RAX;
    uint64_t extraout_RCX;
    int64_t iVar1;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t *piVar2;
    undefined *unaff_RBP;
    undefined *puVar3;
    char extraout_DIL;
    int64_t extraout_RDI;
    uint64_t uVar4;
    int64_t unaff_R14;
    double dVar5;
    int64_t var_50h;
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_18h;
    int64_t var_10h;
    
    do {
        piVar2 = (int64_t *)*(undefined **)0x20;
        puVar3 = unaff_RBP;
        if (*(undefined **)(unaff_R14 + 0x10) < *(undefined **)0x20) {
            puVar3 = (undefined *)((int64_t)*(undefined **)0x20 + -8);
            *(undefined **)((int64_t)*(undefined **)0x20 + -8) = unaff_RBP;
            piVar2 = (int64_t *)((int64_t)*(undefined **)0x20 + -0x58);
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            if ((in_RAX == 0) || (arg4 < 2)) {
                return 0.0;
            }
            *(int64_t *)((int64_t)*(undefined **)0x20 + 8) = in_RAX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x10) = unaff_RBX;
            *(int64_t *)((int64_t)*(undefined **)0x20 + 0x18) = arg4;
            iVar1 = 0;
            dVar5 = 0.0;
            while( true ) {
                if ((int64_t)(arg4 - 1U) <= iVar1) {
                    if (dVar5 <= 0.0) {
                        dVar5 = (double)arg4;
                    }
                    return dVar5;
                }
                uVar4 = iVar1 + 1;
                if ((uint64_t)arg4 <= uVar4) break;
                *(uint64_t *)((int64_t)*(undefined **)0x20 + -0x10) = uVar4;
                *(double *)((int64_t)*(undefined **)0x20 + -0x18) = dVar5;
                *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0xe2ee45;
                dVar5 = (double)pkg_diapdu_shortestPathOnGraph();
                if (extraout_DIL == '\0') {
                    dVar5 = *(double *)((int64_t)*(undefined **)0x20 + -0x18);
                } else {
                    dVar5 = dVar5 + *(double *)((int64_t)*(undefined **)0x20 + -0x18);
                }
                arg4 = *(uint64_t *)((int64_t)*(undefined **)0x20 + 0x18);
                iVar1 = *(int64_t *)((int64_t)*(undefined **)0x20 + -0x10);
            }
            *(undefined8 *)((int64_t)*(undefined **)0x20 + -0x60) = 0xe2ee7d;
            runtime_panicIndex(uVar4);
            in_RAX = extraout_RAX;
            arg4 = extraout_RCX;
            unaff_RBX = extraout_RBX;
            arg1 = extraout_RDI;
        }
        piVar2[1] = in_RAX;
        piVar2[2] = unaff_RBX;
        piVar2[3] = arg4;
        piVar2[4] = arg1;
        piVar2[-1] = 0xe2ee97;
        runtime_morestack_noctxt_abi0(*piVar2, piVar2[1]);
        in_RAX = piVar2[1];
        unaff_RBX = piVar2[2];
        arg4 = piVar2[3];
        arg1 = piVar2[4];
        *(int64_t **)0x20 = (BADSPACEBASE *)piVar2;
        unaff_RBP = puVar3;
    } while( true );
}
