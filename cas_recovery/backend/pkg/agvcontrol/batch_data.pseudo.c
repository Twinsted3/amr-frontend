/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/pkg/agvcontrol.ParseCurrentLock | VA 0xe12900 | batch_data.go:38
   DWARF parameters and results: v interface {}, lock int, ok bool
   DWARF locals: n float64, n float32, n int, n int64, i int64, n encoding/json.Number, err error, n interface {} */
double __stdcall pkg_agvcontrol_ParseCurrentLock(int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    double *unaff_RBX;
    int64_t unaff_R14;
    undefined auVar1 [16];
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    if (in_RAX == 0) {
        return 0.0;
    }
    switch(*(uint32_t *)(in_RAX + 0x10) & 7) {
    case 1:
        if (in_RAX == 0x109d260) {
            auVar1 = strconv_ParseInt(*unaff_RBX, unaff_RBX[1], 10, 0x40);
            if (auVar1._8_8_ == 0) {
                return auVar1._0_8_;
            }
            return 0.0;
        }
        break;
    case 2:
        if (in_RAX == 0x1042b60) {
            return *unaff_RBX;
        }
        break;
    case 3:
        if (in_RAX == 0x1042ae0) {
            return *unaff_RBX;
        }
        break;
    case 4:
        if (in_RAX == 0x1042ce0) {
            return (double)(int64_t)*unaff_RBX;
        }
        break;
    case 5:
        if (in_RAX == 0x1042ca0) {
            return (double)(int64_t)*(float *)unaff_RBX;
        }
    }
    return 0.0;
}

/* CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1 | VA 0xe12a40 | batch_data.go:69
   DWARF parameters and results: conn net.Conn, req *CAS-Backend/pkg/agvcontrol.RobotBatchData1Request, ~r0 *CAS-Backend/pkg/agvcontrol.RobotBatchData1Response, ~r0 *CAS-Backend/pkg/agvcontrol.RobotBatchData1Response, ~r1 error, ~r1 error
   DWARF locals: &resp *CAS-Backend/pkg/agvcontrol.RobotBatchData1Response, &buf *bytes.Buffer, jsonData []uint8, err error, hdrBytes []uint8, body []uint8, header CAS-Backend/pkg/agvcontrol.ProtocolHeader, respHeader CAS-Backend/pkg/agvcontrol.ProtocolHeader */
// WARNING: [rz-ghidra] Detected overlap for variable var_d4h
// WARNING: [rz-ghidra] Detected overlap for variable var_e8h
// WARNING: [rz-ghidra] Removing arg arg_44h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_e4h

int64_t __stdcall
pkg_agvcontrol_QueryRobotBatchData1
          (int64_t arg4, int64_t arg_8h, int64_t arg_10h, int64_t arg_18h, int64_t arg_d0h, int64_t arg_f0h,
          int64_t arg_130h)
{
    int64_t in_RAX;
    int64_t extraout_RAX;
    undefined8 extraout_RAX_00;
    int64_t *piVar1;
    uint64_t uVar2;
    int64_t extraout_RCX;
    int64_t extraout_RCX_00;
    undefined8 extraout_RCX_01;
    int64_t extraout_RCX_02;
    int64_t extraout_RCX_03;
    undefined8 unaff_RBX;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    undefined8 extraout_RBX_01;
    int64_t extraout_RBX_02;
    int64_t extraout_RBX_03;
    int64_t extraout_RSI;
    int64_t extraout_RDI;
    uint64_t uVar3;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    uint64_t in_XMM15_Qa;
    undefined auVar4 [16];
    int64_t in_stack_fffffffffffffee0;
    int64_t var_e9h;
    int64_t var_d8h;
    int64_t var_d0h;
    int64_t var_c8h;
    undefined4 uStack_c0;
    undefined4 uStack_bc;
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
    
    while (&var_a0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_e9h._0_1_ = 0;
    var_88h = 0;
    if (in_RAX == 0) {
        fmt_Errorf(0x1178056 /* "连接为空" */, 0xc, 0, 0, 0);
        return 0;
    }
    if (arg4 == 0) {
        arg4 = runtime_newobject(in_stack_fffffffffffffee0);
        *(undefined8 *)arg4 = 0;
    }
    encoding_json_Marshal(0x1026f20, arg4);
    if (extraout_RDI != 0) {
        var_38h = *(int64_t *)(extraout_RDI + 8);
        var_30h = extraout_RSI;
        fmt_Errorf(0x1183c3c /* "JSON序列化失败: %w" */, 0x17, &var_38h, 1, 1);
        return 0;
    }
    var_d0h = 0x44c;
    var_d8h = CONCAT44((int32_t)extraout_RBX, 0x1015a);
    var_b8h = extraout_RBX;
    var_b0h = extraout_RCX;
    var_80h = extraout_RAX;
    var_18h = runtime_newobject(in_stack_fffffffffffffee0);
    var_c8h._0_4_ = (undefined4)var_d8h;
    var_c8h._4_4_ = var_d8h._4_4_;
    uStack_c0 = (undefined4)var_d0h;
    uStack_bc = var_d0h._4_4_;
    auVar4 = encoding_binary_Write(0x2e6d060, var_18h, 0x2e76f40, 0x355d2a0, 0x110e8c0, &var_c8h);
    var_30h = auVar4._8_8_;
    if (auVar4._0_8_ != 0) {
        var_38h = *(int64_t *)(auVar4._0_8_ + 8);
        fmt_Errorf(0x1189384 /* "编码协议头部失败: %w" */, 0x1c, &var_38h, 1, 1);
        return 0;
    }
    bytes___Buffer__Write(var_18h, var_80h, var_b8h, var_b0h);
    uVar2 = *(uint64_t *)(var_18h + 0x18);
    if (*(uint64_t *)(var_18h + 8) < uVar2) {
        runtime_panicSliceB();
        runtime_deferreturn();
        return var_88h;
    }
    (**(code **)(in_RAX + 0x50))
              (unaff_RBX, *(int64_t *)var_18h + (uVar2 & (int64_t)-(*(int64_t *)(var_18h + 0x10) - uVar2) >> 0x3f), 
               *(uint64_t *)(var_18h + 8) - uVar2);
    if (extraout_RBX_00 != 0) {
        var_38h = *(int64_t *)(extraout_RBX_00 + 8);
        var_30h = extraout_RCX_00;
        fmt_Errorf(0x118ff0b /* "发送批量数据请求失败: %w" */, 0x22, &var_38h, 1, 1);
        return 0;
    }
    time_Now();
    time_Time_Add();
    (**(code **)(in_RAX + 0x40))(unaff_RBX, extraout_RAX_00, extraout_RBX_01, extraout_RCX_01);
    var_70h = 0xe13440;
    var_10h = (int64_t)&var_70h;
    var_e9h._0_1_ = 1;
    var_28h = runtime_makeslice(0x10429a0, 0x10, 0x10);
    uVar2 = 0;
    if (in_RAX != 0) {
        uVar2 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
        do {
            uVar3 = uVar2 & **(uint64_t **)0xfbb650;
            if ((*(uint64_t **)0xfbb650)[uVar3 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) {
                uVar2 = (*(uint64_t **)0xfbb650)[uVar3 * 2 + 2];
                goto code_r0x00e12e49;
            }
            uVar2 = uVar2 + 1;
        } while ((*(uint64_t **)0xfbb650)[uVar3 * 2 + 1] != 0);
        uVar2 = runtime_typeAssert(0xfbb650);
    }
code_r0x00e12e49:
    io_ReadAtLeast(uVar2, unaff_RBX, var_28h, 0x10, 0x10, 0x10);
    if (extraout_RBX_02 != 0) {
        var_38h = *(int64_t *)(extraout_RBX_02 + 8);
        var_30h = extraout_RCX_02;
        auVar4 = fmt_Errorf(0x1195eb6 /* "读取批量数据响应头部失败: %w" */, 0x28, &var_38h, 1, 1);
        var_90h = auVar4._8_8_;
        var_98h = auVar4._0_8_;
        var_88h = 0;
        var_e9h._0_1_ = 0;
        (**(code **)var_10h)();
        return var_88h;
    }
    unique0x100006c0 = in_XMM15_Qa;
    piVar1 = (int64_t *)runtime_newobject(in_stack_fffffffffffffee0);
    piVar1[1] = 0x10;
    piVar1[2] = 0x10;
    if (*(int32_t *)0x355db50 != 0) {
        piVar1 = (int64_t *)runtime_gcWriteBarrier1();
        *extraout_R11 = var_28h;
    }
    *piVar1 = var_28h;
    piVar1[3] = 0;
    piVar1[4] = -1;
    auVar4 = encoding_binary_Read(0x2e6cae0, piVar1, 0x2e76f40, 0x355d2a0, 0x1026c20, (int64_t)&var_e9h + 1);
    var_30h = auVar4._8_8_;
    if (auVar4._0_8_ != 0) {
        var_38h = *(int64_t *)(auVar4._0_8_ + 8);
        auVar4 = fmt_Errorf(0x1195ede /* "解析批量数据响应头部失败: %w" */, 0x28, &var_38h, 1, 1);
        var_90h = auVar4._8_8_;
        var_98h = auVar4._0_8_;
        var_88h = 0;
        var_e9h._0_1_ = 0;
        (**(code **)var_10h)();
        return var_88h;
    }
    if (stack0xffffffffffffff1c == 0) {
        var_a8h = 0;
        var_78h = 0;
    } else {
        var_28h = runtime_makeslice(0x10429a0, stack0xffffffffffffff1c);
        var_a0h = stack0xffffffffffffff18 >> 0x20;
        uVar2 = 0;
        if (in_RAX != 0) {
            uVar2 = (uint64_t)*(uint32_t *)(in_RAX + 0x10);
            do {
                uVar3 = uVar2 & **(uint64_t **)0xfbb670;
                if ((*(uint64_t **)0xfbb670)[uVar3 * 2 + 1] == *(uint64_t *)(in_RAX + 8)) {
                    uVar2 = (*(uint64_t **)0xfbb670)[uVar3 * 2 + 2];
                    goto code_r0x00e1328b;
                }
                uVar2 = uVar2 + 1;
            } while ((*(uint64_t **)0xfbb670)[uVar3 * 2 + 1] != 0);
            uVar2 = runtime_typeAssert(0xfbb670);
        }
code_r0x00e1328b:
        io_ReadAtLeast(uVar2, unaff_RBX, var_28h, var_a0h, var_a0h);
        var_a8h = var_a0h;
        var_78h = var_28h;
        if (extraout_RBX_03 != 0) {
            var_38h = *(int64_t *)(extraout_RBX_03 + 8);
            var_30h = extraout_RCX_03;
            auVar4 = fmt_Errorf(0x1192c46 /* "读取批量数据响应体失败: %w" */, 0x25, &var_38h, 1, 1);
            var_90h = auVar4._8_8_;
            var_98h = auVar4._0_8_;
            var_88h = 0;
            var_e9h._0_1_ = 0;
            (**(code **)var_10h)();
            return var_88h;
        }
    }
    var_20h = runtime_newobject(in_stack_fffffffffffffee0);
    if (var_a8h != 0) {
        auVar4 = encoding_json_Unmarshal(var_78h, var_a8h, var_a8h, 0x1026f60, var_20h);
        var_30h = auVar4._8_8_;
        if (auVar4._0_8_ != 0) {
            var_38h = *(int64_t *)(auVar4._0_8_ + 8);
            auVar4 = fmt_Errorf(0x118dc08 /* "解析批量数据JSON失败: %w" */, 0x20, &var_38h, 1, 1);
            var_90h = auVar4._8_8_;
            var_98h = auVar4._0_8_;
            var_88h = 0;
            var_e9h._0_1_ = 0;
            (**(code **)var_10h)();
            return var_88h;
        }
    }
    if (*(int64_t *)var_20h == 0) {
        var_e9h._0_1_ = 0;
        var_88h = var_20h;
        (**(code **)var_10h)();
        return var_88h;
    }
    var_50h = runtime_convT64(*(undefined8 *)var_20h);
    var_58h = 0x1042b60;
    var_40h = runtime_convTstring(*(undefined8 *)(var_20h + 8), *(undefined8 *)(var_20h + 0x10));
    var_48h = 0x1042920;
    auVar4 = fmt_Errorf(0x119cb27 /* "查询批量数据失败: ret_code=%d, err_msg=%s" */, 0x31, &var_58h, 2, 2);
    var_90h = auVar4._8_8_;
    var_98h = auVar4._0_8_;
    var_88h = var_20h;
    var_e9h._0_1_ = 0;
    (**(code **)var_10h)();
    return var_88h;
}

/* CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1.deferwrap1 | VA 0xe13440 | batch_data.go:98
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_18h

void __stdcall
pkg_agvcontrol_QueryRobotBatchData1_deferwrap1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
{
    int64_t *piVar1;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000020;
    int64_t var_18h;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, arg_8h);
    }
    piVar1 = *(int64_t **)(unaff_R14 + 0x20);
    if ((piVar1 != (int64_t *)0x0) && ((int64_t *)*piVar1 == &arg_8h)) {
        *piVar1 = (int64_t)&var_18h;
    }
    pkg_agvcontrol_ClearConnDeadlines(var_18h, in_stack_fffffffffffffff0, in_stack_00000020);
    return;
}

/* CAS-Backend/pkg/agvcontrol.QueryRobotBatchData1ForSchedule | VA 0xe134a0 | batch_data.go:128
   DWARF parameters and results: conn net.Conn, ~r0 *CAS-Backend/pkg/agvcontrol.RobotBatchData1Response, ~r1 error
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_d4h
// WARNING: [rz-ghidra] Detected overlap for variable var_e8h
// WARNING: [rz-ghidra] Removing arg arg_44h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_e4h

void __stdcall pkg_agvcontrol_QueryRobotBatchData1ForSchedule(int64_t arg_8h, int64_t arg_10h)
{
    undefined8 *arg4;
    undefined8 *puVar1;
    undefined8 *extraout_RCX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    int64_t in_stack_000000a0;
    int64_t in_stack_000000c0;
    int64_t in_stack_00000100;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    arg4 = (undefined8 *)runtime_newobject(in_stack_ffffffffffffffd8);
    puVar1 = (undefined8 *)runtime_newobject(in_stack_ffffffffffffffd8);
    puVar1[1] = 0xc;
    *puVar1 = 0x1178062;
    puVar1[3] = 1;
    puVar1[2] = 0x116850d;
    puVar1[5] = 1;
    puVar1[4] = 0x2e65028;
    puVar1[7] = 0xf;
    puVar1[6] = 0x117aa56;
    puVar1[9] = 0xd;
    puVar1[8] = 0x1178f4e;
    puVar1[0xb] = 7;
    puVar1[10] = 0x1172d30;
    puVar1[0xd] = 9;
    puVar1[0xc] = 0x11754a1;
    puVar1[0xf] = 8;
    puVar1[0xe] = 0x117437b;
    puVar1[0x11] = 10;
    puVar1[0x10] = 0x117637e;
    arg4[1] = 9;
    arg4[2] = 9;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11 = puVar1;
        extraout_R11[1] = *extraout_RCX;
        arg4 = extraout_RCX;
    }
    *arg4 = puVar1;
    pkg_agvcontrol_QueryRobotBatchData1
              ((int64_t)arg4, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
               in_stack_000000a0, in_stack_000000c0, in_stack_00000100);
    return;
}
