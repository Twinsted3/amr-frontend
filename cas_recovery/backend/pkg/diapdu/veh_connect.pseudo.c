/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/diapdu.probeVehicleReachable | VA 0xe412a0 | veh_connect.go:12
   DWARF parameters and results: vehicle CAS-Backend/biz/dao.Vehicle, ~r0 *CAS-Backend/pkg/diapdu.ForkliftStatus
   DWARF locals: status *CAS-Backend/pkg/diapdu.ForkliftStatus, err error, batch *CAS-Backend/pkg/agvcontrol.RobotBatchData1Response */
int64_t * __stdcall
pkg_diapdu_probeVehicleReachable
          (int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_20h, int64_t arg_30h, int64_t arg_38h,
          int64_t arg_50h, int64_t arg_68h)
{
    int64_t extraout_RAX;
    int64_t *piVar1;
    int64_t iVar2;
    undefined8 uVar3;
    int64_t extraout_RCX;
    undefined8 uVar4;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    int64_t extraout_RBX;
    int64_t extraout_RSI;
    int64_t extraout_RSI_00;
    undefined8 extraout_R8;
    undefined8 extraout_R10;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t *extraout_R11_02;
    int64_t *extraout_R11_03;
    undefined8 *extraout_R11_04;
    int64_t *extraout_R11_05;
    undefined8 *extraout_R11_06;
    undefined8 *extraout_R11_07;
    undefined8 *extraout_R11_08;
    int64_t *extraout_R11_09;
    int64_t unaff_R14;
    undefined auVar5 [16];
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
        runtime_morestack_noctxt_abi0();
    }
    time_Now();
    var_30h = extraout_RCX;
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
        *extraout_R11_00 = extraout_RSI;
        arg_30h = extraout_RSI;
    }
    piVar1[2] = arg_30h;
    piVar1[0x11] = arg_20h;
    iVar2 = arg_18h;
    if (*(int32_t *)0x355db50 != 0) {
        piVar1 = (int64_t *)runtime_gcWriteBarrier1();
        *extraout_R11_01 = extraout_RSI_00;
        iVar2 = extraout_RSI_00;
    }
    piVar1[0x10] = iVar2;
    piVar1[0x12] = 0x4b04;
    piVar1[0xb] = extraout_RAX;
    piVar1[0xc] = extraout_RBX;
    if (*(int32_t *)0x355db50 != 0) {
        piVar1 = (int64_t *)runtime_gcWriteBarrier1();
        *extraout_R11_02 = var_30h;
    }
    piVar1[0xd] = var_30h;
    piVar1[5] = 7;
    piVar1[4] = 0x1172b38;
    piVar1[0x13] = -1;
    if (arg_20h == 0) {
        piVar1[0xf] = 0xb;
        piVar1[0xe] = 0x1176f87;
        return piVar1;
    }
    var_38h = 0;
    var_18h = 0xe41740;
    var_10h = (int64_t)&var_38h;
    auVar5 = pkg_agvcontrol_DoWithConn(arg_18h, arg_20h, 0x4b04, &var_18h);
    var_20h = auVar5._8_8_;
    if (auVar5._0_8_ != 0) {
        var_28h = *(int64_t *)(auVar5._0_8_ + 8);
        auVar5 = fmt_Sprintf(0x1188e7c /* "查询车辆状态失败: %v" */, 0x1c, &var_28h, 1, 1);
        iVar2 = auVar5._0_8_;
        piVar1[0xf] = auVar5._8_8_;
        if (*(int32_t *)0x355db50 != 0) {
            iVar2 = runtime_gcWriteBarrier2();
            *extraout_R11_03 = iVar2;
            extraout_R11_03[1] = piVar1[0xe];
        }
        piVar1[0xe] = iVar2;
        return piVar1;
    }
    auVar5 = pkg_agvcontrol_ParseCurrentLock(*(undefined8 *)(var_38h + 0x18), *(undefined8 *)(var_38h + 0x20));
    iVar2 = -1;
    if ((auVar5._8_8_ & 0xff) != 0) {
        iVar2 = auVar5._0_8_;
    }
    piVar1[0x13] = iVar2;
    auVar5 = pkg_agvcontrol_ParseCurrentLock(*(undefined8 *)(var_38h + 0x18), *(undefined8 *)(var_38h + 0x20));
    if ((auVar5[8] != '\0') && (auVar5._0_8_ == 0)) {
        if ((*(char *)(var_38h + 0x51) == '\0') &&
           ((*(char *)(var_38h + 0x52) == '\0' && (*(char *)(var_38h + 0x53) == '\0')))) {
            if (*(char *)(var_38h + 0x50) != '\0') {
                piVar1[5] = 5;
                if (*(int32_t *)0x355db50 != 0) {
                    piVar1 = (int64_t *)runtime_gcWriteBarrier2(piVar1, auVar5._8_8_, piVar1[4]);
                    *extraout_R11_06 = extraout_RCX_00;
                    extraout_R11_06[1] = piVar1[0xe];
                }
                piVar1[4] = 0x116a5c1;
                piVar1[0xf] = 0x1d;
                piVar1[0xe] = 0x118a3f4;
                return piVar1;
            }
            piVar1[5] = 4;
            if (*(int32_t *)0x355db50 != 0) {
                piVar1 = (int64_t *)runtime_gcWriteBarrier1(piVar1, auVar5._8_8_, piVar1[4]);
                *extraout_R11_07 = extraout_RCX_01;
            }
            piVar1[4] = 0x1169564;
            piVar1[7] = *(int64_t *)(var_38h + 0x28);
            piVar1[8] = *(int64_t *)(var_38h + 0x30);
            if (*(double *)(var_38h + 0x48) <= 0.0) {
                piVar1[6] = 100;
            } else {
                piVar1[6] = (int64_t)*(double *)(var_38h + 0x48);
            }
            return piVar1;
        }
        piVar1[5] = 5;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier1();
            *extraout_R11_04 = extraout_R10;
        }
        piVar1[4] = 0x116a5c1;
        if (*(char *)(var_38h + 0x51) == '\0') {
            if (*(char *)(var_38h + 0x52) == '\0') {
                if (*(char *)(var_38h + 0x53) == '\0') {
                    uVar3 = 0;
                    uVar4 = 0;
                } else {
                    uVar3 = 0xf;
                    uVar4 = 0x117a777;
                }
            } else {
                uVar3 = 0xd;
                uVar4 = 0x1178d05;
            }
        } else {
            uVar3 = 0xe;
            uVar4 = 0x11799e1;
        }
        auVar5 = runtime_concatstring3(0, 0x1178d12, 0xd, uVar4, uVar3, 0x2e64cc8, 1);
        iVar2 = auVar5._0_8_;
        piVar1[0xf] = auVar5._8_8_;
        if (*(int32_t *)0x355db50 != 0) {
            iVar2 = runtime_gcWriteBarrier2();
            *extraout_R11_05 = iVar2;
            extraout_R11_05[1] = piVar1[0xe];
        }
        piVar1[0xe] = iVar2;
        return piVar1;
    }
    piVar1[5] = 6;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier1();
        *extraout_R11_08 = extraout_R8;
    }
    piVar1[4] = 0x116f2cd;
    var_28h = *(int64_t *)(var_38h + 0x18);
    var_20h = *(int64_t *)(var_38h + 0x20);
    auVar5 = fmt_Sprintf(0x1190a58 /* "控制权被占用(current_lock=%v)" */, 0x23, &var_28h, 1, 1);
    iVar2 = auVar5._0_8_;
    piVar1[0xf] = auVar5._8_8_;
    if (*(int32_t *)0x355db50 != 0) {
        iVar2 = runtime_gcWriteBarrier2();
        *extraout_R11_09 = iVar2;
        extraout_R11_09[1] = piVar1[0xe];
    }
    piVar1[0xe] = iVar2;
    return piVar1;
}

/* CAS-Backend/pkg/diapdu.probeVehicleReachable.func1 | VA 0xe41740 | veh_connect.go:28
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: res *CAS-Backend/pkg/agvcontrol.RobotBatchData1Response, &batch **CAS-Backend/pkg/agvcontrol.RobotBatchData1Response, e error */
int64_t __stdcall
pkg_diapdu_probeVehicleReachable_func1
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
    auVar3 = pkg_agvcontrol_QueryRobotBatchData1ForSchedule();
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
