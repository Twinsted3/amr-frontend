/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/controller.Move_forword | VA 0xe76540 | control_controller.go:43
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, ~r0.data *uint8, ~r0.itab uintptr, err error */
void __stdcall biz_controller_Move_forword(int64_t arg_8h, int64_t arg_68h, int64_t arg_98h, int64_t arg_a8h)
{
    undefined8 uVar1;
    int64_t in_RAX;
    uint64_t uVar2;
    uint64_t uVar3;
    int64_t unaff_R14;
    undefined auVar4 [16];
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
    
    while (&var_70h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_30h = 0x1042920;
    var_28h = 0x2e687c0 /* "开始前进" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    var_10h = runtime_newobject(0x111e520);
    uVar1 = *(undefined8 *)0xfb77e8;
    uVar2 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar2 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar3 = uVar2 & **(uint64_t **)0xfbafb0;
            if ((*(uint64_t **)0xfbafb0)[uVar3 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar2 = (*(uint64_t **)0xfbafb0)[uVar3 * 2 + 2];
                goto code_r0x00e765e5;
            }
            uVar2 = uVar2 + 1;
        } while ((*(uint64_t **)0xfbafb0)[uVar3 * 2 + 1] != 0);
        uVar2 = runtime_typeAssert(0xfbafb0);
    }
code_r0x00e765e5:
    auVar4 = (**(code **)(uVar2 + 0x18))(uVar1, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar4._0_8_ != 0) {
        var_40h = 0x1042920;
        var_38h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar4._0_8_, auVar4._8_8_);
        return;
    }
    var_48h = runtime_convT64(*(undefined8 *)(var_10h + 0x28));
    var_50h = 0x1042ce0;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    if ((*(double *)(var_10h + 0x28) == 0.0) && (!NAN(*(double *)(var_10h + 0x28)))) {
        *(undefined8 *)(var_10h + 0x28) = *(undefined8 *)0x2e67868;
    }
    if (*(int64_t *)(var_10h + 0x20) == 1) {
        *(char *)0x355d2b4 = '\x01';
    } else {
        *(char *)0x355d2b4 = '\0';
    }
    while( true ) {
        if (*(char *)0x355d2b4 == '\0') {
            auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, 0x2cd77a8
                                    );
            var_88h = auVar4._8_8_;
            if (auVar4._0_8_ == 0) {
                var_a0h = 0x1042920;
                var_98h = 0x2e687f0 /* "指令执行完毕" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_a0h, 1, 1);
                return;
            }
            var_90h = *(int64_t *)(auVar4._0_8_ + 8);
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183b3f /* "发送指令失败: %v\n" */, 0x17, &var_90h, 1, 1);
            return;
        }
        var_58h = runtime_convT64(*(undefined8 *)(var_10h + 0x28));
        var_60h = 0x1042ce0;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_60h, 1, 1);
        var_20h = 0xe76980;
        var_18h = var_10h;
        auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, &var_20h);
        var_68h = auVar4._8_8_;
        if (auVar4._0_8_ != 0) break;
        var_80h = 0x1042920;
        var_78h = 0x2e687e0 /* "指令执行成功" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_80h, 1, 1);
        time_Sleep(1000000000);
    }
    var_70h = *(int64_t *)(auVar4._0_8_ + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183b3f /* "发送指令失败: %v\n" */, 0x17, &var_70h, 1, 1);
    return;
}

/* CAS-Backend/biz/controller.Move_forword.func1 | VA 0xe76980 | control_controller.go:69
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr */
// WARNING: [rz-ghidra] Detected overlap for variable var_b4h
// WARNING: [rz-ghidra] Detected overlap for variable var_c4h

void __stdcall
biz_controller_Move_forword_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000088;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendMotionCommand(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000088);
    return;
}

/* CAS-Backend/biz/controller.Move_forword.func2 | VA 0xe917e0 | control_controller.go:88
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_5ch

void __stdcall biz_controller_Move_forword_func2(int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000018;
    int64_t in_stack_00000058;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendStopCommand(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000018, in_stack_00000058);
    return;
}

/* CAS-Backend/biz/controller.Move_back | VA 0xe769e0 | control_controller.go:104
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, ~r0.data *uint8, ~r0.itab uintptr, err error */
void __stdcall biz_controller_Move_back(int64_t arg_8h, int64_t arg_68h, int64_t arg_98h)
{
    undefined8 uVar1;
    int64_t in_RAX;
    uint64_t uVar2;
    uint64_t uVar3;
    int64_t unaff_R14;
    undefined auVar4 [16];
    int64_t in_stack_ffffffffffffff20;
    int64_t in_stack_ffffffffffffff28;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
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
    
    while (&var_60h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_30h = 0x1042920;
    var_28h = 0x2e68800 /* "开始后退" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    var_10h = runtime_newobject(in_stack_ffffffffffffff20);
    uVar1 = *(undefined8 *)0xfb77e8;
    uVar2 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar2 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar3 = uVar2 & **(uint64_t **)0xfbafd0;
            if ((*(uint64_t **)0xfbafd0)[uVar3 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar2 = (*(uint64_t **)0xfbafd0)[uVar3 * 2 + 2];
                goto code_r0x00e76a85;
            }
            uVar2 = uVar2 + 1;
        } while ((*(uint64_t **)0xfbafd0)[uVar3 * 2 + 1] != 0);
        uVar2 = runtime_typeAssert(in_stack_ffffffffffffff20, in_stack_ffffffffffffff28, in_stack_ffffffffffffff40, 
                             in_stack_ffffffffffffff48);
    }
code_r0x00e76a85:
    auVar4 = (**(code **)(uVar2 + 0x18))(uVar1, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar4._0_8_ != 0) {
        var_40h = 0x1042920;
        var_38h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar4._0_8_, auVar4._8_8_);
        return;
    }
    var_48h = runtime_convT(in_stack_ffffffffffffff20, in_stack_ffffffffffffff28);
    var_50h = 0x111e520;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    if ((*(double *)(var_10h + 0x28) == 0.0) && (!NAN(*(double *)(var_10h + 0x28)))) {
        *(undefined8 *)(var_10h + 0x28) = *(undefined8 *)0x2e67868;
    }
    if (*(int64_t *)(var_10h + 0x20) == 1) {
        *(char *)0x355d2b5 = '\x01';
    } else {
        *(char *)0x355d2b5 = '\0';
    }
    while( true ) {
        if (*(char *)0x355d2b5 == '\0') {
            auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, 0x2cd77a0
                                    );
            var_78h = auVar4._8_8_;
            if (auVar4._0_8_ == 0) {
                var_90h = 0x1042920;
                var_88h = 0x2e687f0 /* "指令执行完毕" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_90h, 1, 1);
                return;
            }
            var_80h = *(int64_t *)(auVar4._0_8_ + 8);
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183b3f /* "发送指令失败: %v\n" */, 0x17, &var_80h, 1, 1);
            return;
        }
        var_20h = 0xe76dc0;
        var_18h = var_10h;
        auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, &var_20h);
        var_58h = auVar4._8_8_;
        if (auVar4._0_8_ != 0) break;
        var_70h = 0x1042920;
        var_68h = 0x2e687e0 /* "指令执行成功" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_70h, 1, 1);
        time_Sleep(1000000000);
    }
    var_60h = *(int64_t *)(auVar4._0_8_ + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183b3f /* "发送指令失败: %v\n" */, 0x17, &var_60h, 1, 1);
    return;
}

/* CAS-Backend/biz/controller.Move_back.func1 | VA 0xe76dc0 | control_controller.go:168
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr */
// WARNING: [rz-ghidra] Detected overlap for variable var_b4h
// WARNING: [rz-ghidra] Detected overlap for variable var_c4h

void __stdcall
biz_controller_Move_back_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000088;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendMotionCommand(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000088);
    return;
}

/* CAS-Backend/biz/controller.Move_back.func2 | VA 0xe917a0 | control_controller.go:187
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_5ch

void __stdcall biz_controller_Move_back_func2(int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000018;
    int64_t in_stack_00000058;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendStopCommand(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000018, in_stack_00000058);
    return;
}

/* CAS-Backend/biz/controller.Turn_right | VA 0xe76e40 | control_controller.go:202
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, ~r0.data *uint8, ~r0.itab uintptr, err error */
void __stdcall biz_controller_Turn_right(int64_t arg_8h, int64_t arg_68h, int64_t arg_a8h)
{
    undefined8 uVar1;
    int64_t in_RAX;
    uint64_t uVar2;
    uint64_t uVar3;
    int64_t unaff_R14;
    undefined auVar4 [16];
    int64_t in_stack_ffffffffffffff10;
    int64_t in_stack_ffffffffffffff18;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
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
    
    while (&var_70h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_30h = 0x1042920;
    var_28h = 0x2e68810 /* "开始右转" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    var_10h = runtime_newobject(in_stack_ffffffffffffff10);
    uVar1 = *(undefined8 *)0xfb77e8;
    uVar2 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar2 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar3 = uVar2 & **(uint64_t **)0xfbaff0;
            if ((*(uint64_t **)0xfbaff0)[uVar3 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar2 = (*(uint64_t **)0xfbaff0)[uVar3 * 2 + 2];
                goto code_r0x00e76ee5;
            }
            uVar2 = uVar2 + 1;
        } while ((*(uint64_t **)0xfbaff0)[uVar3 * 2 + 1] != 0);
        uVar2 = runtime_typeAssert(in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_stack_ffffffffffffff30, 
                             in_stack_ffffffffffffff38);
    }
code_r0x00e76ee5:
    auVar4 = (**(code **)(uVar2 + 0x18))(uVar1, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar4._0_8_ != 0) {
        var_40h = 0x1042920;
        var_38h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar4._0_8_, auVar4._8_8_);
        return;
    }
    var_48h = runtime_convT64(*(undefined8 *)(var_10h + 0x28));
    var_50h = 0x1042ce0;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117a975, 0xf, &var_50h, 1, 1);
    var_58h = runtime_convT64(*(undefined8 *)(var_10h + 0x38));
    var_60h = 0x1042ce0;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117a984 /* "角速度：%v\n" */, 0xf, &var_60h, 1, 1);
    if (*(int64_t *)(var_10h + 0x20) == 1) {
        *(char *)0x355d2b6 = '\x01';
    } else {
        *(char *)0x355d2b6 = '\0';
    }
    while( true ) {
        if (*(char *)0x355d2b6 == '\0') {
            auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, 0x2cd77c8
                                    );
            var_88h = auVar4._8_8_;
            if (auVar4._0_8_ == 0) {
                var_a0h = 0x1042920;
                var_98h = 0x2e687f0 /* "指令执行完毕" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_a0h, 1, 1);
                return;
            }
            var_90h = *(int64_t *)(auVar4._0_8_ + 8);
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183b3f /* "发送指令失败: %v\n" */, 0x17, &var_90h, 1, 1);
            return;
        }
        var_20h = 0xe77280;
        var_18h = var_10h;
        auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, &var_20h);
        var_68h = auVar4._8_8_;
        if (auVar4._0_8_ != 0) break;
        var_80h = 0x1042920;
        var_78h = 0x2e687e0 /* "指令执行成功" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_80h, 1, 1);
        time_Sleep(1000000000);
    }
    var_70h = *(int64_t *)(auVar4._0_8_ + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183b3f /* "发送指令失败: %v\n" */, 0x17, &var_70h, 1, 1);
    return;
}

/* CAS-Backend/biz/controller.Turn_right.func1 | VA 0xe77280 | control_controller.go:229
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr */
// WARNING: [rz-ghidra] Detected overlap for variable var_b4h
// WARNING: [rz-ghidra] Detected overlap for variable var_c4h

void __stdcall
biz_controller_Turn_right_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000088;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendMotionCommand(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000088);
    return;
}

/* CAS-Backend/biz/controller.Turn_right.func2 | VA 0xe91760 | control_controller.go:248
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_5ch

void __stdcall biz_controller_Turn_right_func2(int64_t arg_8h, int64_t arg_10h)
{
    int64_t unaff_R14;
    int64_t in_stack_00000018;
    int64_t in_stack_00000058;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    pkg_agvcontrol_SendStopCommand(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000018, in_stack_00000058);
    return;
}

/* CAS-Backend/biz/controller.Turn_left | VA 0xe77300 | control_controller.go:264
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, ~r0.data *uint8, ~r0.itab uintptr, err error */
void __stdcall biz_controller_Turn_left(int64_t arg_8h, int64_t arg_68h, int64_t arg_a8h)
{
    undefined8 uVar1;
    int64_t in_RAX;
    uint64_t uVar2;
    uint64_t uVar3;
    int64_t unaff_R14;
    undefined auVar4 [16];
    int64_t in_stack_ffffffffffffff10;
    int64_t in_stack_ffffffffffffff18;
    int64_t in_stack_ffffffffffffff30;
    int64_t in_stack_ffffffffffffff38;
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
    
    while (&var_70h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_30h = 0x1042920;
    var_28h = 0x2e68820 /* "开始左转" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    var_10h = runtime_newobject(in_stack_ffffffffffffff10);
    uVar1 = *(undefined8 *)0xfb77e8;
    uVar2 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar2 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar3 = uVar2 & **(uint64_t **)0xfbb010;
            if ((*(uint64_t **)0xfbb010)[uVar3 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar2 = (*(uint64_t **)0xfbb010)[uVar3 * 2 + 2];
                goto code_r0x00e773a5;
            }
            uVar2 = uVar2 + 1;
        } while ((*(uint64_t **)0xfbb010)[uVar3 * 2 + 1] != 0);
        uVar2 = runtime_typeAssert(in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_stack_ffffffffffffff30, 
                             in_stack_ffffffffffffff38);
    }
code_r0x00e773a5:
    auVar4 = (**(code **)(uVar2 + 0x18))(uVar1, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar4._0_8_ != 0) {
        var_40h = 0x1042920;
        var_38h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar4._0_8_, auVar4._8_8_);
        return;
    }
    var_48h = runtime_convT64(*(undefined8 *)(var_10h + 0x28));
    var_50h = 0x1042ce0;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117a975, 0xf, &var_50h, 1, 1);
    var_58h = runtime_convT64(*(undefined8 *)(var_10h + 0x38));
    var_60h = 0x1042ce0;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117a984 /* "角速度：%v\n" */, 0xf, &var_60h, 1, 1);
    if (*(int64_t *)(var_10h + 0x20) == 1) {
        *(char *)0x355d2b7 = '\x01';
    } else {
        *(char *)0x355d2b7 = '\0';
    }
    while( true ) {
        if (*(char *)0x355d2b7 == '\0') {
            auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, 0x2cd77c0
                                    );
            var_88h = auVar4._8_8_;
            if (auVar4._0_8_ == 0) {
                var_a0h = 0x1042920;
                var_98h = 0x2e687f0 /* "指令执行完毕" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_a0h, 1, 1);
                return;
            }
            var_90h = *(int64_t *)(auVar4._0_8_ + 8);
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183b3f /* "发送指令失败: %v\n" */, 0x17, &var_90h, 1, 1);
            return;
        }
        var_20h = 0xe77740;
        var_18h = var_10h;
        auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, &var_20h);
        var_68h = auVar4._8_8_;
        if (auVar4._0_8_ != 0) break;
        var_80h = 0x1042920;
        var_78h = 0x2e687e0 /* "指令执行成功" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_80h, 1, 1);
        time_Sleep(1000000000);
    }
    var_70h = *(int64_t *)(auVar4._0_8_ + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183b3f /* "发送指令失败: %v\n" */, 0x17, &var_70h, 1, 1);
    return;
}

/* CAS-Backend/biz/controller.Turn_left.func1 | VA 0xe77740 | control_controller.go:291
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr */
// WARNING: [rz-ghidra] Detected overlap for variable var_b4h
// WARNING: [rz-ghidra] Detected overlap for variable var_c4h

void __stdcall
biz_controller_Turn_left_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000088;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendMotionCommand(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000088);
    return;
}

/* CAS-Backend/biz/controller.Turn_left.func2 | VA 0xe91720 | control_controller.go:310
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_5ch

void __stdcall biz_controller_Turn_left_func2(int64_t arg_8h, int64_t arg_10h)
{
    int64_t unaff_R14;
    int64_t in_stack_00000018;
    int64_t in_stack_00000058;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    pkg_agvcontrol_SendStopCommand(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000018, in_stack_00000058);
    return;
}

/* CAS-Backend/biz/controller.Guiling | VA 0xe777a0 | control_controller.go:325
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, err error, ~r0.data *uint8, ~r0.itab uintptr */
void __stdcall biz_controller_Guiling(int64_t arg_8h, int64_t arg_68h, int64_t arg_78h)
{
    undefined8 uVar1;
    int64_t in_RAX;
    uint64_t uVar2;
    uint64_t uVar3;
    int64_t unaff_R14;
    undefined auVar4 [16];
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
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
    
    while (&var_30h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_20h = 0x1042920;
    var_18h = 0x2e68830 /* "归零" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_20h, 1, 1);
    var_10h = runtime_newobject(in_stack_ffffffffffffff50);
    uVar1 = *(undefined8 *)0xfb77e8;
    uVar2 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar2 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar3 = uVar2 & **(uint64_t **)0xfbb030;
            if ((*(uint64_t **)0xfbb030)[uVar3 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar2 = (*(uint64_t **)0xfbb030)[uVar3 * 2 + 2];
                goto code_r0x00e77845;
            }
            uVar2 = uVar2 + 1;
        } while ((*(uint64_t **)0xfbb030)[uVar3 * 2 + 1] != 0);
        uVar2 = runtime_typeAssert(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff70, 
                             in_stack_ffffffffffffff78);
    }
code_r0x00e77845:
    auVar4 = (**(code **)(uVar2 + 0x18))(uVar1, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar4._0_8_ != 0) {
        var_30h = 0x1042920;
        var_28h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar4._0_8_, auVar4._8_8_);
        return;
    }
    var_38h = runtime_convT(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58);
    var_40h = 0x111e520;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
    auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, 0x2cd7798);
    var_48h = auVar4._8_8_;
    if (auVar4._0_8_ == 0) {
        var_60h = 0x1042920;
        var_58h = 0x2e687e0 /* "指令执行成功" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_60h, 1, 1);
        return;
    }
    var_50h = *(int64_t *)(auVar4._0_8_ + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183b3f /* "发送指令失败: %v\n" */, 0x17, &var_50h, 1, 1);
    return;
}

/* CAS-Backend/biz/controller.Guiling.func1 | VA 0xe916c0 | control_controller.go:364
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_b4h
// WARNING: [rz-ghidra] Detected overlap for variable var_c4h

void __stdcall biz_controller_Guiling_func1(int64_t arg_8h, int64_t arg_10h)
{
    int64_t unaff_R14;
    int64_t in_stack_00000088;
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
    pkg_agvcontrol_SendMotionCommand(in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, 
                 in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, 
                 in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000088);
    return;
}

/* CAS-Backend/biz/controller.Qiangzhan | VA 0xe77a60 | control_controller.go:375
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, lock int, err error, ~r0.data *uint8, ~r0.itab uintptr */
// WARNING: Removing unreachable block (ram,0x00e77c2b)

void __stdcall biz_controller_Qiangzhan(int64_t arg_8h, int64_t arg_98h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    uint64_t uVar3;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    int64_t extraout_RBX;
    uint64_t uVar4;
    int64_t *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t unaff_R14;
    undefined auVar5 [16];
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
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
    
    while (&var_30h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff50);
    uVar1 = *(undefined8 *)0xfb77e8;
    uVar3 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar4 = uVar3 & **(uint64_t **)0xfbb050;
            if ((*(uint64_t **)0xfbb050)[uVar4 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb050)[uVar4 * 2 + 2];
                goto code_r0x00e77ac5;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb050)[uVar4 * 2 + 1] != 0);
        uVar3 = runtime_typeAssert(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff70, 
                             in_stack_ffffffffffffff78);
    }
code_r0x00e77ac5:
    auVar5 = (**(code **)(uVar3 + 0x18))(uVar1, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar5._0_8_ != 0) {
        var_18h = runtime_makemap_small();
        (**(code **)(auVar5._0_8_ + 0x18))(auVar5._8_8_);
        uVar1 = runtime_concatstring2(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                             in_stack_ffffffffffffff68, in_stack_ffffffffffffff70);
        var_20h = runtime_convTstring(uVar1, 0x118043e);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116a5c1 /* "error" */, 5);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = var_20h;
            extraout_R11[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar1 = runtime_convT(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar1);
        return;
    }
    pkg_agvcontrol_AcquireRobotConfigLockVerified(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x117a993 /* "srd-seer-mizhan" */, 0xf);
    if (extraout_RBX != 0) {
        var_40h = *(int64_t *)(extraout_RBX + 8);
        var_38h = extraout_RCX;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1186f26, 0x1a, &var_40h, 1, 1);
        var_18h = runtime_makemap_small();
        auVar5 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        puVar2 = auVar5._0_8_;
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar5._8_8_, puVar2[1]);
            *extraout_R11_00 = extraout_RCX_00;
        }
        puVar2[1] = 0x2e64ac0;
        (**(code **)(extraout_RBX + 0x18))(extraout_RCX);
        var_20h = runtime_convTstring();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_01 = var_20h;
            extraout_R11_01[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar1 = runtime_convT(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar1);
        return;
    }
    var_48h = runtime_convT64();
    var_50h = 0x1042b60;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1194ea4, 0x27, &var_50h, 1, 1);
    var_18h = runtime_makemap_small();
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
    *puVar2 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = puVar2[1];
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_02 = uVar1;
    }
    puVar2[1] = 0x2e67830;
    auVar5 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
    puVar2 = auVar5._0_8_;
    *puVar2 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar5._8_8_, puVar2[1]);
        *extraout_R11_03 = extraout_RCX_01;
    }
    puVar2[1] = 0x2e68840 /* "抢占控制权成功" */;
    var_30h = 0x10a4880;
    var_28h = var_18h;
    uVar1 = runtime_convT(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar1);
    return;
}

/* CAS-Backend/biz/controller.Shifang | VA 0xe77f40 | control_controller.go:399
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, ~r0.data *uint8, ~r0.itab uintptr, err error */
// WARNING: Removing unreachable block (ram,0x00e7810b)

void __stdcall biz_controller_Shifang(int64_t arg_8h, int64_t arg_98h)
{
    int64_t in_RAX;
    undefined8 uVar1;
    undefined8 *puVar2;
    int64_t iVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar5;
    int64_t *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t unaff_R14;
    undefined auVar6 [16];
    undefined auVar7 [16];
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
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
    
    while (&var_30h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff50);
    uVar1 = *(undefined8 *)0xfb77e8;
    uVar4 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar4 & **(uint64_t **)0xfbb070;
            if ((*(uint64_t **)0xfbb070)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb070)[uVar5 * 2 + 2];
                goto code_r0x00e77fa5;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb070)[uVar5 * 2 + 1] != 0);
        uVar4 = runtime_typeAssert(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff70, 
                             in_stack_ffffffffffffff78);
    }
code_r0x00e77fa5:
    auVar6 = (**(code **)(uVar4 + 0x18))(uVar1, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar6._0_8_ != 0) {
        var_18h = runtime_makemap_small();
        (**(code **)(auVar6._0_8_ + 0x18))(auVar6._8_8_);
        uVar1 = runtime_concatstring2(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                             in_stack_ffffffffffffff68, in_stack_ffffffffffffff70);
        var_20h = runtime_convTstring(uVar1, 0x118043e);
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116a5c1 /* "error" */, 5);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = var_20h;
            extraout_R11[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar1 = runtime_convT(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar1);
        return;
    }
    auVar6 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b07, 0x2cd77b8);
    iVar3 = auVar6._0_8_;
    if (iVar3 != 0) {
        var_40h = *(int64_t *)(iVar3 + 8);
        var_38h = auVar6._8_8_;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1186f40 /* "释放控制权失败: %v\n" */, 0x1a, &var_40h, 1, 1);
        var_18h = runtime_makemap_small();
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11_00 = extraout_RCX;
        }
        puVar2[1] = 0x2e64ac0;
        (**(code **)(iVar3 + 0x18))(auVar6._8_8_);
        var_20h = runtime_convTstring();
        puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        *puVar2 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_01 = var_20h;
            extraout_R11_01[1] = puVar2[1];
        }
        puVar2[1] = var_20h;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar1 = runtime_convT(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar1);
        return;
    }
    var_50h = 0x1042920;
    var_48h = 0x2e68850 /* "释放控制权成功" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    var_18h = runtime_makemap_small();
    puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
    *puVar2 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = puVar2[1];
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_02 = uVar1;
    }
    puVar2[1] = 0x2e67830;
    auVar6 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
    puVar2 = auVar6._0_8_;
    *puVar2 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar6._8_8_, puVar2[1]);
        *extraout_R11_03 = extraout_RCX_00;
    }
    puVar2[1] = 0x2e68850 /* "释放控制权成功" */;
    var_30h = 0x10a4880;
    var_28h = var_18h;
    uVar1 = runtime_convT(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar1);
    return;
}

/* CAS-Backend/biz/controller.Shifang.func1 | VA 0xe91680 | control_controller.go:407
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_9ch

void __stdcall biz_controller_Shifang_func1(int64_t arg_8h, int64_t arg_10h)
{
    int64_t unaff_R14;
    int64_t in_stack_00000078;
    int64_t in_stack_00000098;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    pkg_agvcontrol_UnlockControl(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000078, in_stack_00000098);
    return;
}

/* CAS-Backend/biz/controller.Huocha_up | VA 0xe78400 | control_controller.go:425
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, err error, height_cur float64 */
void __stdcall biz_controller_Huocha_up(int64_t arg_8h, int64_t arg_40h, int64_t arg_80h)
{
    int64_t in_RAX;
    uint64_t uVar1;
    uint64_t uVar2;
    int64_t iVar3;
    int64_t unaff_R14;
    undefined auVar4 [16];
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
    
    while (&var_48h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_30h = 0x1042920;
    var_28h = 0x2e68860 /* "货叉上升" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    var_10h = runtime_newobject(0x111e520);
    uVar1 = 0;
    iVar3 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar1 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar2 = uVar1 & **(uint64_t **)0xfbb090;
            if ((*(uint64_t **)0xfbb090)[uVar2 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar1 = (*(uint64_t **)0xfbb090)[uVar2 * 2 + 2];
                goto code_r0x00e784a5;
            }
            uVar1 = uVar1 + 1;
        } while ((*(uint64_t **)0xfbb090)[uVar2 * 2 + 1] != 0);
        var_78h = *(int64_t *)0xfb77e8;
        uVar1 = runtime_typeAssert(0xfbb090);
        iVar3 = var_78h;
    }
code_r0x00e784a5:
    auVar4 = (**(code **)(uVar1 + 0x18))(iVar3, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    var_80h = auVar4._8_8_;
    var_88h = auVar4._0_8_;
    if (var_88h != 0) {
        var_40h = 0x1042920;
        var_38h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_88h, var_80h);
        return;
    }
    var_48h = runtime_convT64(*(undefined8 *)(var_10h + 0x20));
    var_50h = 0x1042b60;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    var_90h = 0;
    if (*(int64_t *)(var_10h + 0x20) == 1) {
        *(char *)0x355d2b8 = '\x01';
        var_20h = 0xe78820;
        var_18h = (int64_t)&var_90h;
        auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b04, &var_20h);
        var_58h = auVar4._8_8_;
        if (auVar4._0_8_ != 0) {
            var_60h = *(int64_t *)(auVar4._0_8_ + 8);
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118a7b1 /* "查询货叉状态失败: %v\n" */, 0x1d, &var_60h, 1, 1);
            return;
        }
    } else {
        *(char *)0x355d2b8 = '\0';
    }
    while( true ) {
        if (*(char *)0x355d2b8 == '\0') {
            return;
        }
        var_90h = (int64_t)((double)var_90h + *(double *)0x2e67988);
        if (*(double *)0x2e67990 < (double)var_90h) {
            var_90h = (int64_t)*(double *)0x2e67990;
        }
        var_20h = 0xe787c0;
        var_18h = (int64_t)&var_90h;
        auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b0a, &var_20h);
        var_68h = auVar4._8_8_;
        if (auVar4._0_8_ != 0) break;
        time_Sleep(1000000000);
    }
    var_70h = *(int64_t *)(auVar4._0_8_ + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183b56 /* "货叉升高失败: %v\n" */, 0x17, &var_70h, 1, 1);
    return;
}

/* CAS-Backend/biz/controller.Huocha_up.func1 | VA 0xe78820 | control_controller.go:441
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: response *CAS-Backend/pkg/agvcontrol.ForkStatusDetail, &height_cur *float64, qerr error */
// WARNING: [rz-ghidra] Detected overlap for variable var_9ch

int64_t __stdcall
biz_controller_Huocha_up_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    undefined8 *puVar1;
    int64_t in_RAX;
    int64_t iVar2;
    int64_t extraout_RDX;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000038;
    int64_t in_stack_00000058;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined8 **)(arg3 + 8);
    iVar2 = pkg_agvcontrol_QueryForkStatus(in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, in_stack_00000038, in_stack_00000058);
    if (unaff_RBX != 0) {
        return unaff_RBX;
    }
    *puVar1 = *(undefined8 *)(iVar2 + 0x18);
    runtime_convT64(in_stack_ffffffffffffffa8);
    fmt_Fprintf(in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, 
                 in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                 in_stack_ffffffffffffffd8);
    return 0;
}

/* CAS-Backend/biz/controller.Huocha_up.func2 | VA 0xe787c0 | control_controller.go:464
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &height_cur *float64 */
// WARNING: [rz-ghidra] Detected overlap for variable var_15ch
// WARNING: [rz-ghidra] Detected overlap for variable var_16fh
// WARNING: [rz-ghidra] Detected overlap for variable var_16eh
// WARNING: [rz-ghidra] Detected overlap for variable var_16ch
// WARNING: [rz-ghidra] Detected overlap for variable var_168h
// WARNING: [rz-ghidra] Detected overlap for variable var_166h
// WARNING: [rz-ghidra] Detected overlap for variable var_17eh
// WARNING: [rz-ghidra] Detected overlap for variable var_17ch
// WARNING: [rz-ghidra] Detected overlap for variable var_178h
// WARNING: [rz-ghidra] Detected overlap for variable var_176h
// WARNING: [rz-ghidra] Detected overlap for variable var_172h
// WARNING: [rz-ghidra] Detected overlap for variable var_162h

void __stdcall
biz_controller_Huocha_up_func2
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000050;
    int64_t in_stack_000000a0;
    int64_t in_stack_00000168;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendHuochaHeightCommand(in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000050, 
                 in_stack_000000a0, in_stack_00000168);
    return;
}

/* CAS-Backend/biz/controller.Huocha_set | VA 0xe78900 | control_controller.go:484
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, err error */
void __stdcall biz_controller_Huocha_set(int64_t arg_8h, int64_t arg_58h, int64_t arg_68h)
{
    undefined8 uVar1;
    int64_t in_RAX;
    int64_t iVar2;
    uint64_t uVar3;
    uint64_t uVar4;
    int64_t unaff_R14;
    undefined auVar5 [16];
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
    int64_t in_stack_ffffffffffffff70;
    int64_t in_stack_ffffffffffffff78;
    int64_t in_stack_ffffffffffffff80;
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
    
    while (&var_30h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_30h = 0x1042920;
    var_28h = 0x2e68870 /* "货叉设置" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    var_10h = runtime_newobject(0x111e520);
    uVar1 = *(undefined8 *)0xfb77e8;
    uVar3 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar4 = uVar3 & **(uint64_t **)0xfbb0b0;
            if ((*(uint64_t **)0xfbb0b0)[uVar4 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb0b0)[uVar4 * 2 + 2];
                goto code_r0x00e789a5;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb0b0)[uVar4 * 2 + 1] != 0);
        uVar3 = runtime_typeAssert(0xfbb0b0);
    }
code_r0x00e789a5:
    auVar5 = (**(code **)(uVar3 + 0x18))(uVar1, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar5._0_8_ != 0) {
        var_40h = 0x1042920;
        var_38h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar5._0_8_, auVar5._8_8_);
        return;
    }
    var_48h = runtime_convT64(in_stack_ffffffffffffff50);
    var_50h = 0x1042ce0;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    if (*(double *)0x2e67990 < *(double *)(var_10h + 0x30)) {
        *(double *)(var_10h + 0x30) = *(double *)0x2e67990;
    }
    if (*(double *)(var_10h + 0x30) < *(double *)0x2e67858) {
        *(double *)(var_10h + 0x30) = *(double *)0x2e67858;
    }
    var_20h = 0xe78bc0;
    var_18h = var_10h;
    iVar2 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b0a, &var_20h);
    if (iVar2 == 0) {
        return;
    }
    fmt_Fprintf(in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                 in_stack_ffffffffffffff68, in_stack_ffffffffffffff70, in_stack_ffffffffffffff78, 
                 in_stack_ffffffffffffff80);
    return;
}

/* CAS-Backend/biz/controller.Huocha_set.func1 | VA 0xe78bc0 | control_controller.go:502
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr */
// WARNING: [rz-ghidra] Detected overlap for variable var_15ch
// WARNING: [rz-ghidra] Detected overlap for variable var_16fh
// WARNING: [rz-ghidra] Detected overlap for variable var_16eh
// WARNING: [rz-ghidra] Detected overlap for variable var_16ch
// WARNING: [rz-ghidra] Detected overlap for variable var_168h
// WARNING: [rz-ghidra] Detected overlap for variable var_166h
// WARNING: [rz-ghidra] Detected overlap for variable var_17eh
// WARNING: [rz-ghidra] Detected overlap for variable var_17ch
// WARNING: [rz-ghidra] Detected overlap for variable var_178h
// WARNING: [rz-ghidra] Detected overlap for variable var_176h
// WARNING: [rz-ghidra] Detected overlap for variable var_172h
// WARNING: [rz-ghidra] Detected overlap for variable var_162h

void __stdcall
biz_controller_Huocha_set_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000050;
    int64_t in_stack_000000a0;
    int64_t in_stack_00000168;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendHuochaHeightCommand(in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000050, 
                 in_stack_000000a0, in_stack_00000168);
    return;
}

/* CAS-Backend/biz/controller.Huocha_down | VA 0xe78c20 | control_controller.go:512
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, err error, height_cur float64 */
void __stdcall biz_controller_Huocha_down(int64_t arg_8h, int64_t arg_40h, int64_t arg_80h)
{
    int64_t in_RAX;
    uint64_t uVar1;
    uint64_t uVar2;
    int64_t iVar3;
    int64_t unaff_R14;
    undefined auVar4 [16];
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
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
    
    while (&var_48h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_30h = 0x1042920;
    var_28h = 0x2e68880 /* "货叉下降" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    var_10h = runtime_newobject(0x111e520);
    uVar1 = 0;
    iVar3 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar1 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar2 = uVar1 & **(uint64_t **)0xfbb0d0;
            if ((*(uint64_t **)0xfbb0d0)[uVar2 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar1 = (*(uint64_t **)0xfbb0d0)[uVar2 * 2 + 2];
                goto code_r0x00e78cc5;
            }
            uVar1 = uVar1 + 1;
        } while ((*(uint64_t **)0xfbb0d0)[uVar2 * 2 + 1] != 0);
        var_78h = *(int64_t *)0xfb77e8;
        uVar1 = runtime_typeAssert(0xfbb0d0);
        iVar3 = var_78h;
    }
code_r0x00e78cc5:
    auVar4 = (**(code **)(uVar1 + 0x18))(iVar3, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    var_80h = auVar4._8_8_;
    var_88h = auVar4._0_8_;
    if (var_88h != 0) {
        var_40h = 0x1042920;
        var_38h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_88h, var_80h);
        return;
    }
    var_48h = runtime_convT64(in_stack_ffffffffffffff38);
    var_50h = 0x1042b60;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    var_90h = 0;
    if (*(int64_t *)(var_10h + 0x20) == 1) {
        *(char *)0x355d2b9 = '\x01';
        var_20h = 0xe79040;
        var_18h = (int64_t)&var_90h;
        auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b04, &var_20h);
        var_58h = auVar4._8_8_;
        if (auVar4._0_8_ != 0) {
            var_60h = *(int64_t *)(auVar4._0_8_ + 8);
            fmt_Fprintf(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                         in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                         in_stack_ffffffffffffff68);
            return;
        }
    } else {
        *(char *)0x355d2b9 = '\0';
    }
    while( true ) {
        if (*(char *)0x355d2b9 == '\0') {
            return;
        }
        var_90h = (int64_t)((double)var_90h - *(double *)0x2e67988);
        if ((double)var_90h <= *(double *)0x2e67858) {
            var_90h = (int64_t)*(double *)0x2e67858;
        }
        var_20h = 0xe78fe0;
        var_18h = (int64_t)&var_90h;
        auVar4 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b0a, &var_20h);
        var_68h = auVar4._8_8_;
        if (auVar4._0_8_ != 0) break;
        time_Sleep(2000000000);
    }
    var_70h = *(int64_t *)(auVar4._0_8_ + 8);
    fmt_Fprintf(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                 in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                 in_stack_ffffffffffffff68);
    return;
}

/* CAS-Backend/biz/controller.Huocha_down.func1 | VA 0xe79040 | control_controller.go:528
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: response *CAS-Backend/pkg/agvcontrol.ForkStatusDetail, &height_cur *float64, qerr error */
// WARNING: [rz-ghidra] Detected overlap for variable var_9ch

int64_t __stdcall
biz_controller_Huocha_down_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    undefined8 *puVar1;
    int64_t in_RAX;
    int64_t iVar2;
    int64_t extraout_RDX;
    int64_t unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000038;
    int64_t in_stack_00000058;
    int64_t in_stack_ffffffffffffffa8;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined8 **)(arg3 + 8);
    iVar2 = pkg_agvcontrol_QueryForkStatus(in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, in_stack_00000038, in_stack_00000058);
    if (unaff_RBX != 0) {
        return unaff_RBX;
    }
    *puVar1 = *(undefined8 *)(iVar2 + 0x18);
    runtime_convT64(in_stack_ffffffffffffffa8);
    fmt_Fprintf(in_stack_ffffffffffffffa8, in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, 
                 in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                 in_stack_ffffffffffffffd8);
    return 0;
}

/* CAS-Backend/biz/controller.Huocha_down.func2 | VA 0xe78fe0 | control_controller.go:552
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &height_cur *float64 */
// WARNING: [rz-ghidra] Detected overlap for variable var_15ch
// WARNING: [rz-ghidra] Detected overlap for variable var_16fh
// WARNING: [rz-ghidra] Detected overlap for variable var_16eh
// WARNING: [rz-ghidra] Detected overlap for variable var_16ch
// WARNING: [rz-ghidra] Detected overlap for variable var_168h
// WARNING: [rz-ghidra] Detected overlap for variable var_166h
// WARNING: [rz-ghidra] Detected overlap for variable var_17eh
// WARNING: [rz-ghidra] Detected overlap for variable var_17ch
// WARNING: [rz-ghidra] Detected overlap for variable var_178h
// WARNING: [rz-ghidra] Detected overlap for variable var_176h
// WARNING: [rz-ghidra] Detected overlap for variable var_172h
// WARNING: [rz-ghidra] Detected overlap for variable var_162h

void __stdcall
biz_controller_Huocha_down_func2
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000050;
    int64_t in_stack_000000a0;
    int64_t in_stack_00000168;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendHuochaHeightCommand(in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000050, 
                 in_stack_000000a0, in_stack_00000168);
    return;
}

/* CAS-Backend/biz/controller.MapStream | VA 0xe79120 | control_controller.go:1046
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: session *CAS-Backend/biz/controller.MappingSession, exists bool, clientStopChan chan struct {}, ticker *time.Ticker, heartbeatTicker *time.Ticker, ip string, err error, imageData []uint8, base64Data string, data string */
// WARNING: [rz-ghidra] Detected overlap for variable var_18ch
// WARNING: [rz-ghidra] Detected overlap for variable var_18fh
// WARNING: [rz-ghidra] Detected overlap for variable var_18eh

void __stdcall biz_controller_MapStream(int64_t arg_8h, int64_t arg_48h, int64_t arg_1d0h)
{
    int32_t *piVar1;
    int32_t iVar2;
    int64_t in_RAX;
    int64_t *piVar3;
    undefined8 *puVar4;
    undefined8 uVar5;
    int64_t iVar6;
    undefined8 extraout_RAX;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t iVar7;
    undefined8 extraout_RCX_01;
    int64_t extraout_RCX_02;
    char extraout_BL;
    char extraout_BL_00;
    undefined8 extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t extraout_RBX_01;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t *extraout_R11_02;
    int64_t *extraout_R11_03;
    int64_t *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    int64_t unaff_R14;
    undefined auVar8 [16];
    int64_t var_18dh;
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
    int64_t var_a8h;
    int64_t var_98h;
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
    
    while (&var_140h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_18dh._0_1_ = 0;
    auVar8 = gin_gonic_gin___Context__Query();
    var_180h = auVar8._8_8_;
    var_148h = auVar8._0_8_;
    if (var_180h == 0) {
        var_f0h = runtime_makemap_small();
        auVar8 = runtime_mapassign_faststr(0x10a4880, var_f0h, 0x116a5c1 /* "error" */, 5);
        puVar4 = auVar8._0_8_;
        *puVar4 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar4 = (undefined8 *)runtime_gcWriteBarrier1(puVar4, auVar8._8_8_, puVar4[1]);
            *extraout_R11_06 = extraout_RCX_00;
        }
        puVar4[1] = 0x2e68890 /* "缺少IP参数" */;
        var_100h = 0x10a4880;
        var_f8h = var_f0h;
        uVar5 = runtime_convT(0x10cbee0, &var_100h);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar5);
        return;
    }
    var_60h = runtime_convTstring();
    var_68h = 0x1042920;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_68h, 1, 1);
    iVar7 = *(int64_t *)0xfb4c60;
    LOCK();
    piVar1 = (int32_t *)(*(int64_t *)0xfb4c60 + 0x10);
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    if ((int32_t)(iVar2 + 1) < 0) {
        sync_runtime_SemacquireRWMutexR(iVar7 + 0xc, 0, 0);
    }
    piVar3 = (int64_t *)runtime_mapaccess2_faststr(0x1081600, *(undefined8 *)(*(int64_t *)0xfb4c60 + 0x18), var_148h, var_180h);
    iVar6 = *(int64_t *)0xfb4c60;
    iVar7 = *piVar3;
    LOCK();
    piVar1 = (int32_t *)(*(int64_t *)0xfb4c60 + 0x10);
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if ((int32_t)(iVar2 + -1) < 0) {
        var_150h = iVar7;
        sync___RWMutex__rUnlockSlow(iVar6, iVar2 + -1);
        iVar7 = var_150h;
    }
    if ((extraout_BL != '\0') && (*(char *)(iVar7 + 0x10) != '\0')) {
        var_110h = (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x28))(*(undefined8 *)(in_RAX + 0x30));
        auVar8 = net_textproto_CanonicalMIMEHeaderKey(0x1177d32, 0xc);
        var_168h = auVar8._8_8_;
        var_e0h = auVar8._0_8_;
        var_e8h = runtime_newobject(0x104df00);
        *(undefined8 *)(var_e8h + 8) = 0x11;
        *(undefined8 *)var_e8h = 0x117cc5e;
        piVar3 = (int64_t *)runtime_mapassign_faststr(0x10f41a0, var_110h, var_e0h, var_168h);
        piVar3[1] = 1;
        piVar3[2] = 1;
        if (*(int32_t *)0x355db50 != 0) {
            piVar3 = (int64_t *)runtime_gcWriteBarrier2();
            *extraout_R11 = var_e8h;
            extraout_R11[1] = *piVar3;
        }
        *piVar3 = var_e8h;
        var_118h = (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x28))(*(undefined8 *)(in_RAX + 0x30));
        auVar8 = net_textproto_CanonicalMIMEHeaderKey(0x1178dd5, 0xd);
        var_168h = auVar8._8_8_;
        var_e0h = auVar8._0_8_;
        var_e8h = runtime_newobject(0x104df00);
        *(undefined8 *)(var_e8h + 8) = 8;
        *(undefined8 *)var_e8h = 0x11742c3;
        piVar3 = (int64_t *)runtime_mapassign_faststr(0x10f41a0, var_118h, var_e0h, var_168h);
        piVar3[1] = 1;
        piVar3[2] = 1;
        if (*(int32_t *)0x355db50 != 0) {
            piVar3 = (int64_t *)runtime_gcWriteBarrier2();
            *extraout_R11_00 = var_e8h;
            extraout_R11_00[1] = *piVar3;
        }
        *piVar3 = var_e8h;
        var_120h = (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x28))(*(undefined8 *)(in_RAX + 0x30));
        auVar8 = net_textproto_CanonicalMIMEHeaderKey(0x1176216, 10);
        var_168h = auVar8._8_8_;
        var_e0h = auVar8._0_8_;
        var_e8h = runtime_newobject(0x104df00);
        *(undefined8 *)(var_e8h + 8) = 10;
        *(undefined8 *)var_e8h = 0x11762d4;
        piVar3 = (int64_t *)runtime_mapassign_faststr(0x10f41a0, var_120h, var_e0h, var_168h);
        piVar3[1] = 1;
        piVar3[2] = 1;
        if (*(int32_t *)0x355db50 != 0) {
            piVar3 = (int64_t *)runtime_gcWriteBarrier2();
            *extraout_R11_01 = var_e8h;
            extraout_R11_01[1] = *piVar3;
        }
        *piVar3 = var_e8h;
        var_128h = (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x28))(*(undefined8 *)(in_RAX + 0x30));
        auVar8 = net_textproto_CanonicalMIMEHeaderKey(0x1187fce, 0x1b);
        var_168h = auVar8._8_8_;
        var_e0h = auVar8._0_8_;
        var_e8h = runtime_newobject(0x104df00);
        *(undefined8 *)(var_e8h + 8) = 1;
        *(undefined8 *)var_e8h = 0x2e64b08;
        piVar3 = (int64_t *)runtime_mapassign_faststr(0x10f41a0, var_128h, var_e0h, var_168h);
        piVar3[1] = 1;
        piVar3[2] = 1;
        if (*(int32_t *)0x355db50 != 0) {
            piVar3 = (int64_t *)runtime_gcWriteBarrier2();
            *extraout_R11_02 = var_e8h;
            extraout_R11_02[1] = *piVar3;
        }
        *piVar3 = var_e8h;
        var_130h = (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x28))(*(undefined8 *)(in_RAX + 0x30));
        auVar8 = net_textproto_CanonicalMIMEHeaderKey(0x117cc80, 0x11);
        var_168h = auVar8._8_8_;
        var_e0h = auVar8._0_8_;
        var_e8h = runtime_newobject(0x104df00);
        *(undefined8 *)(var_e8h + 8) = 2;
        *(undefined8 *)var_e8h = 0x1168512;
        piVar3 = (int64_t *)runtime_mapassign_faststr(0x10f41a0, var_130h, var_e0h, var_168h);
        piVar3[1] = 1;
        piVar3[2] = 1;
        if (*(int32_t *)0x355db50 != 0) {
            piVar3 = (int64_t *)runtime_gcWriteBarrier2();
            *extraout_R11_03 = var_e8h;
            extraout_R11_03[1] = *piVar3;
        }
        *piVar3 = var_e8h;
        var_108h = runtime_makechan(0x10465a0, 0);
        puVar4 = (undefined8 *)runtime_newobject(0x10e7b00);
        *puVar4 = 0xe79fa0;
        if (*(int32_t *)0x355db50 != 0) {
            puVar4 = (undefined8 *)runtime_gcWriteBarrier3();
            *extraout_R11_04 = in_RAX;
            extraout_R11_04[1] = var_108h;
            extraout_R11_04[2] = var_148h;
        }
        puVar4[1] = in_RAX;
        puVar4[2] = var_108h;
        puVar4[4] = var_180h;
        puVar4[3] = var_148h;
        runtime_newproc();
        var_160h = time_NewTicker(1000000000);
        var_78h = 0xe79f40;
        var_18h = (int64_t)&var_78h;
        var_18dh._0_1_ = 1;
        var_70h = var_160h;
        var_138h = time_NewTicker(15000000000);
        var_88h = 0xe79ee0;
        var_10h = (int64_t)&var_88h;
        var_18dh._0_1_ = 3;
        var_80h = var_138h;
        while( true ) {
            while( true ) {
                var_a8h = *(int64_t *)var_138h;
                var_b8h = *(int64_t *)var_160h;
                var_98h = var_108h;
                iVar6 = runtime_selectgo(&var_b8h, (int64_t)&var_18dh + 1, 0, 0, 3, 1);
                iVar7 = *(int64_t *)0xfb4c60;
                if (iVar6 != 0) break;
                LOCK();
                piVar1 = (int32_t *)(*(int64_t *)0xfb4c60 + 0x10);
                iVar2 = *piVar1;
                *piVar1 = *piVar1 + 1;
                UNLOCK();
                if ((int32_t)(iVar2 + 1) < 0) {
                    sync_runtime_SemacquireRWMutexR(iVar7 + 0xc, 0, 0);
                }
                piVar3 = (int64_t *)
                         runtime_mapaccess2_faststr(0x1081600, *(undefined8 *)(*(int64_t *)0xfb4c60 + 0x18), var_148h, var_180h);
                iVar7 = *(int64_t *)0xfb4c60;
                var_158h = *piVar3;
                LOCK();
                piVar1 = (int32_t *)(*(int64_t *)0xfb4c60 + 0x10);
                iVar2 = *piVar1;
                *piVar1 = *piVar1 + -1;
                UNLOCK();
                if ((int32_t)(iVar2 + -1) < 0) {
                    sync___RWMutex__rUnlockSlow(iVar7, iVar2 + -1);
                }
                if ((extraout_BL_00 == '\0') || (*(char *)(var_158h + 0x10) == '\0')) {
                    puVar4 = (undefined8 *)runtime_newobject(0x1055f40);
                    *puVar4 = 0x73203a746e657665;
                    *(undefined8 *)((int64_t)puVar4 + 5) = 0x737574617473203a;
                    *(undefined8 *)((int64_t)puVar4 + 0xd) = 0xe6203a617461640a;
                    *(undefined8 *)((int64_t)puVar4 + 0x15) = 0xb2b7e5be9be5ab89;
                    *(undefined8 *)((int64_t)puVar4 + 0x1d) = 0xa0aa2ade69c81e5;
                    (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x50))(*(undefined8 *)(in_RAX + 0x30), puVar4, 0x25);
                    (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x20))(*(undefined8 *)(in_RAX + 0x30));
                    var_18dh._0_1_ = 1;
                    (**(code **)var_10h)();
                    var_18dh._0_1_ = 0;
                    (**(code **)var_18h)();
                    return;
                }
                LOCK();
                piVar1 = (int32_t *)(var_158h + 0x48);
                iVar2 = *piVar1;
                *piVar1 = *piVar1 + 1;
                UNLOCK();
                if ((int32_t)(iVar2 + 1) < 0) {
                    sync_runtime_SemacquireRWMutexR(var_158h + 0x44, 0, 0);
                }
                LOCK();
                piVar1 = (int32_t *)(var_158h + 0x48);
                iVar2 = *piVar1;
                *piVar1 = *piVar1 + -1;
                UNLOCK();
                iVar7 = *(int64_t *)(var_158h + 0x28);
                iVar6 = *(int64_t *)(var_158h + 0x20);
                if ((int32_t)(iVar2 + -1) < 0) {
                    var_178h = *(int64_t *)(var_158h + 0x28);
                    var_170h = *(int64_t *)(var_158h + 0x30);
                    var_140h = *(int64_t *)(var_158h + 0x20);
                    sync___RWMutex__rUnlockSlow(var_158h + 0x38, iVar2 + -1);
                    iVar7 = var_178h;
                    iVar6 = var_140h;
                }
                if (iVar7 != 0) {
                    encoding_base64___Encoding__EncodeToString(*(undefined8 *)0x3512578, iVar6);
                    var_50h = runtime_convTstring();
                    var_58h = 0x1042920;
                    auVar8 = fmt_Sprintf(0x1183b84 /* "event: image\ndata: %s\n\n" */, 0x17, &var_58h, 1, 1);
                    runtime_stringtoslicebyte(0, auVar8._0_8_, auVar8._8_8_);
                    (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x50))
                              (*(undefined8 *)(in_RAX + 0x30), extraout_RAX, extraout_RBX, extraout_RCX_01);
                    if (extraout_RBX_00 != 0) {
                        var_c8h = *(int64_t *)(extraout_RBX_00 + 8);
                        var_48h = 0xe79e80;
                        var_38h = 0x1c;
                        var_40h = 0x1189288;
                        var_28h = 1;
                        var_20h = 1;
                        var_30h = (int64_t)&var_c8h;
                        var_c0h = extraout_RCX_02;
                        log___Logger__output(*(undefined8 *)0x3512070, 0, 2, &var_48h);
                        var_18dh._0_1_ = 1;
                        (**(code **)var_10h)();
                        var_18dh._0_1_ = 0;
                        (**(code **)var_18h)();
                        return;
                    }
                    (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x20))(*(undefined8 *)(in_RAX + 0x30));
                }
            }
            if (iVar6 != 1) {
                var_d0h = runtime_convTstring(var_148h, var_180h);
                var_d8h = 0x1042920;
                var_48h = 0xe79e20;
                var_38h = 0x22;
                var_40h = 0x118fe3f;
                var_28h = 1;
                var_20h = 1;
                var_30h = (int64_t)&var_d8h;
                log___Logger__output(*(undefined8 *)0x3512070, 0, 2, &var_48h);
                var_18dh._0_1_ = 1;
                (**(code **)var_10h)();
                var_18dh._0_1_ = 0;
                (**(code **)var_18h)();
                return;
            }
            puVar4 = (undefined8 *)runtime_newobject(0x1055ee0);
            *puVar4 = 0x627472616568203a;
            *(undefined8 *)((int64_t)puVar4 + 5) = 0xa0a746165627472;
            (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x50))(*(undefined8 *)(in_RAX + 0x30), puVar4, 0xd);
            if (extraout_RBX_01 != 0) break;
            (**(code **)(*(int64_t *)(in_RAX + 0x28) + 0x20))(*(undefined8 *)(in_RAX + 0x30));
        }
        var_18dh._0_1_ = 1;
        (**(code **)var_10h)();
        var_18dh._0_1_ = 0;
        (**(code **)var_18h)();
        return;
    }
    var_f0h = runtime_makemap_small();
    auVar8 = runtime_mapassign_faststr(0x10a4880, var_f0h, 0x116a5c1 /* "error" */, 5);
    puVar4 = auVar8._0_8_;
    *puVar4 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar4 = (undefined8 *)runtime_gcWriteBarrier1(puVar4, auVar8._8_8_, puVar4[1]);
        *extraout_R11_05 = extraout_RCX;
    }
    puVar4[1] = 0x2e688a0 /* "该IP没有活跃的扫图会话" */;
    var_100h = 0x10a4880;
    var_f8h = var_f0h;
    uVar5 = runtime_convT(0x10cbee0, &var_100h);
    gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar5);
    return;
}

/* CAS-Backend/biz/controller.MapStream.func1 | VA 0xe79fa0 | control_controller.go:1074
   DWARF parameters and results: (no entries)
   DWARF locals: c *github.com/gin-gonic/gin.Context, clientStopChan chan struct {}, ip string */
// WARNING: Variable defined which should be unmapped: var_58h
// WARNING: [rz-ghidra] Detected overlap for variable var_150h

void __stdcall biz_controller_MapStream_func1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3)
{
    int64_t arg_30h;
    undefined8 uVar1;
    int64_t extraout_RDX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000008;
    int64_t in_stack_00000090;
    int64_t in_stack_00000140;
    int64_t in_stack_ffffffffffffff80;
    int64_t in_stack_ffffffffffffff88;
    int64_t in_stack_ffffffffffffff90;
    int64_t in_stack_ffffffffffffff98;
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
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_stack_00000008);
        arg3 = extraout_RDX;
    }
    arg_30h = *(int64_t *)(arg3 + 0x18);
    uVar1 = (**(code **)(*(int64_t *)(*(int64_t *)(arg3 + 8) + 0x28) + 0x18))
                      (*(undefined8 *)(*(int64_t *)(arg3 + 8) + 0x30));
    runtime_chanrecv1(uVar1, 0);
    runtime_closechan(in_stack_ffffffffffffff80);
    var_40h = runtime_convTstring(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, arg_30h);
    var_48h = 0x1042920;
    var_38h = 0xe7a0a0;
    var_28h = 0x19;
    var_30h = 0x1185ded;
    var_18h = 1;
    var_10h = 1;
    var_20h = (int64_t)&var_48h;
    log___Logger__output(in_stack_ffffffffffffff80, in_stack_ffffffffffffff88, in_stack_ffffffffffffff90, 
                 in_stack_ffffffffffffff98, in_stack_00000090, in_stack_00000140);
    return;
}

/* CAS-Backend/biz/controller.MapStream.deferwrap1 | VA 0xe79f40 | control_controller.go:1081
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h

void __stdcall
biz_controller_MapStream_deferwrap1(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
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

/* CAS-Backend/biz/controller.MapStream.deferwrap2 | VA 0xe79ee0 | control_controller.go:1084
   DWARF parameters and results: (no entries)
   DWARF locals: (no entries) */
// WARNING: Variable defined which should be unmapped: var_10h

void __stdcall
biz_controller_MapStream_deferwrap2(undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h)
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

/* CAS-Backend/biz/controller.StopMap | VA 0xe7a100 | control_controller.go:1253
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, err error, response *CAS-Backend/pkg/agvcontrol.Response, ~r0.data *uint8, ~r0.itab uintptr */
// WARNING: Variable defined which should be unmapped: var_e0h
// WARNING: Removing unreachable block (ram,0x00e7a2f1)
// WARNING: [rz-ghidra] Detected overlap for variable var_150h

void __stdcall biz_controller_StopMap(int64_t arg_8h, int64_t arg_f0h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    undefined8 extraout_RCX;
    int64_t iVar4;
    uint64_t uVar5;
    int64_t *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    int64_t unaff_R14;
    undefined auVar6 [16];
    int64_t in_stack_000000b8;
    int64_t in_stack_fffffffffffffef8;
    int64_t in_stack_ffffffffffffff00;
    int64_t in_stack_ffffffffffffff08;
    int64_t in_stack_ffffffffffffff10;
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
    
    while (&var_88h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x111e520);
    uVar3 = 0;
    iVar4 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar3 & **(uint64_t **)0xfbb0f0;
            if ((*(uint64_t **)0xfbb0f0)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb0f0)[uVar5 * 2 + 2];
                goto code_r0x00e7a165;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb0f0)[uVar5 * 2 + 1] != 0);
        var_b8h = *(int64_t *)0xfb77e8;
        uVar3 = runtime_typeAssert(0xfbb0f0);
        iVar4 = var_b8h;
    }
code_r0x00e7a165:
    auVar6 = (**(code **)(uVar3 + 0x18))(iVar4, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    iVar4 = auVar6._0_8_;
    if (iVar4 != 0) {
        var_18h = runtime_makemap_small();
        auVar6 = (**(code **)(iVar4 + 0x18))(auVar6._8_8_);
        runtime_concatstring2(0, 0x118043e, 0x14, auVar6._0_8_, auVar6._8_8_);
        var_20h = runtime_convTstring(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, iVar4);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116a5c1 /* "error" */, 5);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = var_20h;
            extraout_R11[1] = puVar1[1];
        }
        puVar1[1] = var_20h;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar2 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar2);
        return;
    }
    var_c8h = 0;
    var_40h = 0xe7aa60;
    var_38h = (int64_t)&var_c8h;
    auVar6 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b0a, &var_40h);
    var_c0h = auVar6._8_8_;
    iVar4 = auVar6._0_8_;
    if (iVar4 != 0) {
        var_90h = *(int64_t *)(iVar4 + 8);
        var_70h = 0xe7aa00;
        var_60h = 0x22;
        var_68h = 0x118fe83;
        var_50h = 1;
        var_48h = 1;
        var_58h = (int64_t)&var_90h;
        var_88h = var_c0h;
        uVar2 = log___Logger__output(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                             in_stack_ffffffffffffff10, in_RAX, in_stack_000000b8);
        var_18h = runtime_makemap_small(uVar2, 0);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar1 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar1[1];
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_00 = uVar2;
        }
        puVar1[1] = 0x2e64ac0;
        if (iVar4 == 0) {
            var_80h = 0;
        } else {
            var_80h = *(int64_t *)(iVar4 + 8);
        }
        var_78h = var_c0h;
        fmt_Sprintf(0x1182740 /* "结束扫图失败: %v" */, 0x16, &var_80h, 1, 1);
        var_20h = runtime_convTstring(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, var_e0h);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_01 = var_20h;
            extraout_R11_01[1] = puVar1[1];
        }
        puVar1[1] = var_20h;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar2 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        return;
    }
    if (*(int64_t *)var_c8h != 0) {
        var_98h = runtime_convT64(*(undefined8 *)var_c8h);
        var_a0h = 0x1042b60;
        var_70h = 0xe7a9a0;
        var_60h = 0x28;
        var_68h = 0x1195e8e;
        var_50h = 1;
        var_48h = 1;
        var_58h = (int64_t)&var_a0h;
        uVar2 = log___Logger__output(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                             in_stack_ffffffffffffff10, in_RAX, in_stack_000000b8);
        var_18h = runtime_makemap_small(uVar2, 0);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar1 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar1[1];
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_02 = uVar2;
        }
        puVar1[1] = 0x2e64ac0;
        var_78h = runtime_convT64(*(undefined8 *)var_c8h);
        var_80h = 0x1042b60;
        fmt_Sprintf(0x118fea5 /* "结束扫图失败，错误码: %d" */, 0x22, &var_80h, 1, 1);
        var_20h = runtime_convTstring(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, var_e0h);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_03 = var_20h;
            extraout_R11_03[1] = puVar1[1];
        }
        puVar1[1] = var_20h;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar2 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        return;
    }
    var_a8h = runtime_convTstring(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, var_e0h);
    var_b0h = 0x1042920;
    var_70h = 0xe7a940;
    var_60h = 0x1c;
    var_68h = 0x11892c0;
    var_50h = 1;
    var_48h = 1;
    var_58h = (int64_t)&var_b0h;
    uVar2 = log___Logger__output(in_stack_fffffffffffffef8, in_stack_ffffffffffffff00, in_stack_ffffffffffffff08, 
                         in_stack_ffffffffffffff10, in_RAX, in_stack_000000b8);
    var_18h = runtime_makemap_small(uVar2, 0);
    puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
    *puVar1 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar2 = puVar1[1];
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_04 = uVar2;
    }
    puVar1[1] = 0x2e67830;
    auVar6 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
    puVar1 = auVar6._0_8_;
    *puVar1 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
        *extraout_R11_05 = extraout_RCX;
    }
    puVar1[1] = 0x2e688b0 /* "结束扫图成功" */;
    var_30h = 0x10a4880;
    var_28h = var_18h;
    uVar2 = runtime_convT(0x10cbee0, &var_30h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
    return;
}

/* CAS-Backend/biz/controller.StopMap.func1 | VA 0xe7aa60 | control_controller.go:1261
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &response **CAS-Backend/pkg/agvcontrol.Response, innerErr error */
undefined8 __stdcall
biz_controller_StopMap_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_18h)
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
    auVar2 = pkg_agvcontrol_SendStopSlamRequest();
    if (*(int32_t *)0x355db50 != 0) {
        auVar2 = runtime_gcWriteBarrier2();
        *extraout_R11 = auVar2._0_8_;
        extraout_R11[1] = *puVar1;
    }
    *puVar1 = auVar2._0_8_;
    return auVar2._8_8_;
}

/* CAS-Backend/biz/controller.StartMap | VA 0xe7aae0 | control_controller.go:1330
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, err error, response *CAS-Backend/pkg/agvcontrol.Response, mapstring map[string]interface {}, ~r0.data *uint8, ~r0.itab uintptr */
// WARNING: Variable defined which should be unmapped: var_148h
// WARNING: Variable defined which should be unmapped: var_60h
// WARNING: Removing unreachable block (ram,0x00e7acd4)
// WARNING: [rz-ghidra] Detected overlap for variable var_150h

void __stdcall biz_controller_StartMap(int64_t arg_8h, int64_t arg_128h, int64_t arg_158h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    undefined8 extraout_RCX;
    int64_t iVar4;
    uint64_t uVar5;
    int64_t *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    int64_t unaff_R14;
    undefined auVar6 [16];
    int64_t in_stack_00000050;
    int64_t in_stack_fffffffffffffe90;
    int64_t in_stack_fffffffffffffe98;
    int64_t in_stack_fffffffffffffea0;
    int64_t in_stack_fffffffffffffea8;
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
    
    while (&var_f0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x111e520);
    uVar3 = 0;
    iVar4 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar3 & **(uint64_t **)0xfbb110;
            if ((*(uint64_t **)0xfbb110)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb110)[uVar5 * 2 + 2];
                goto code_r0x00e7ab45;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb110)[uVar5 * 2 + 1] != 0);
        var_118h = *(int64_t *)0xfb77e8;
        uVar3 = runtime_typeAssert(0xfbb110);
        iVar4 = var_118h;
    }
code_r0x00e7ab45:
    auVar6 = (**(code **)(uVar3 + 0x18))(iVar4, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    iVar4 = auVar6._0_8_;
    if (iVar4 != 0) {
        var_48h = runtime_makemap_small();
        auVar6 = (**(code **)(iVar4 + 0x18))(auVar6._8_8_);
        runtime_concatstring2(0, 0x118043e, 0x14, auVar6._0_8_, auVar6._8_8_);
        var_50h = runtime_convTstring(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, iVar4);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x116a5c1 /* "error" */, 5);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = var_50h;
            extraout_R11[1] = puVar1[1];
        }
        puVar1[1] = var_50h;
        var_60h = 0x10a4880;
        var_58h = var_48h;
        uVar2 = runtime_convT(0x10cbee0, &var_60h);
        gin_gonic_gin___Context__Render(in_RAX, 400, 0x2e6f230, uVar2);
        return;
    }
    var_130h = 0;
    var_70h = 0xe7b680;
    var_68h = (int64_t)&var_130h;
    auVar6 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b0a, &var_70h);
    var_120h = auVar6._8_8_;
    iVar4 = auVar6._0_8_;
    if (iVar4 == 0) {
        if (*(int64_t *)var_130h == 0) {
            var_108h = runtime_convTstring(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, var_148h);
            var_110h = 0x1042920;
            var_a0h = 0xe7b560;
            var_90h = 0x1c;
            var_98h = 0x11892a4;
            var_80h = 1;
            var_78h = 1;
            var_88h = (int64_t)&var_110h;
            uVar2 = log___Logger__output(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, in_stack_fffffffffffffea0, 
                                 in_stack_fffffffffffffea8, var_60h, in_stack_00000050);
            var_48h = runtime_makemap_small(uVar2, 0);
            puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x116968c /* "code" */, 4);
            *puVar1 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar2 = puVar1[1];
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_04 = uVar2;
            }
            puVar1[1] = 0x2e67830;
            auVar6 = runtime_mapassign_faststr(0x10a4880, var_48h, 0x1168a54 /* "msg" */, 3);
            puVar1 = auVar6._0_8_;
            *puVar1 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                *extraout_R11_05 = extraout_RCX;
            }
            puVar1[1] = 0x2e688c0 /* "开始扫图成功" */;
            var_60h = 0x10a4880;
            var_58h = var_48h;
            uVar2 = runtime_convT(0x10cbee0, &var_60h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
            var_128h = 0;
            var_c0h = 0xe7b4e0;
            var_b8h = (int64_t)&var_128h;
            auVar6 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b04, &var_c0h)
            ;
            var_18h = auVar6._8_8_;
            if (auVar6._0_8_ == 0) {
                var_30h = 0x1042920;
                var_28h = 0x2e688d0 /* "状态，开始扫图\n" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
                var_40h = 0x107d4c0;
                var_38h = var_128h;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
            } else {
                var_20h = *(int64_t *)(auVar6._0_8_ + 8);
                var_e0h = 0xe7b480;
                var_d0h = 1;
                var_c8h = 1;
                var_d8h = (int64_t)&var_20h;
                log___Logger__output(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, in_stack_fffffffffffffea0, 
                             in_stack_fffffffffffffea8, var_60h, in_stack_00000050);
            }
            return;
        }
        var_f8h = runtime_convT64(*(undefined8 *)var_130h);
        var_100h = 0x1042b60;
        var_a0h = 0xe7b5c0;
        var_90h = 0x28;
        var_98h = 0x1195e66;
        var_80h = 1;
        var_78h = 1;
        var_88h = (int64_t)&var_100h;
        uVar2 = log___Logger__output(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, in_stack_fffffffffffffea0, 
                             in_stack_fffffffffffffea8, var_60h, in_stack_00000050);
        var_48h = runtime_makemap_small(uVar2, 0);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x116968c /* "code" */, 4);
        *puVar1 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar1[1];
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_02 = uVar2;
        }
        puVar1[1] = 0x2e64ac0;
        var_a8h = runtime_convT64(*(undefined8 *)var_130h);
        var_b0h = 0x1042b60;
        fmt_Sprintf(0x118fec7 /* "开始扫图失败，错误码: %d" */, 0x22, &var_b0h, 1, 1);
        var_50h = runtime_convTstring(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, var_148h);
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x1168a54 /* "msg" */, 3);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_03 = var_50h;
            extraout_R11_03[1] = puVar1[1];
        }
        puVar1[1] = var_50h;
        var_60h = 0x10a4880;
        var_58h = var_48h;
        uVar2 = runtime_convT(0x10cbee0, &var_60h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        return;
    }
    var_f0h = *(int64_t *)(iVar4 + 8);
    var_a0h = 0xe7b620;
    var_90h = 0x22;
    var_98h = 0x118fe61;
    var_80h = 1;
    var_78h = 1;
    var_88h = (int64_t)&var_f0h;
    var_e8h = var_120h;
    uVar2 = log___Logger__output(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, in_stack_fffffffffffffea0, 
                         in_stack_fffffffffffffea8, var_60h, in_stack_00000050);
    var_48h = runtime_makemap_small(uVar2, 0);
    puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x116968c /* "code" */, 4);
    *puVar1 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar2 = puVar1[1];
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_00 = uVar2;
    }
    puVar1[1] = 0x2e64ac0;
    if (iVar4 == 0) {
        var_b0h = 0;
    } else {
        var_b0h = *(int64_t *)(iVar4 + 8);
    }
    var_a8h = var_120h;
    fmt_Sprintf(0x118276c /* "开始扫图失败: %v" */, 0x16, &var_b0h, 1, 1);
    var_50h = runtime_convTstring(in_stack_fffffffffffffe90, in_stack_fffffffffffffe98, var_148h);
    puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x1168a54 /* "msg" */, 3);
    *puVar1 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_01 = var_50h;
        extraout_R11_01[1] = puVar1[1];
    }
    puVar1[1] = var_50h;
    var_60h = 0x10a4880;
    var_58h = var_48h;
    uVar2 = runtime_convT(0x10cbee0, &var_60h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
    return;
}

/* CAS-Backend/biz/controller.StartMap.func1 | VA 0xe7b680 | control_controller.go:1338
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &response **CAS-Backend/pkg/agvcontrol.Response, innerErr error */
undefined8 __stdcall
biz_controller_StartMap_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_28h)
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
    auVar2 = pkg_agvcontrol_SendStartSlamRequest();
    if (*(int32_t *)0x355db50 != 0) {
        auVar2 = runtime_gcWriteBarrier2();
        *extraout_R11 = auVar2._0_8_;
        extraout_R11[1] = *puVar1;
    }
    *puVar1 = auVar2._0_8_;
    return auVar2._8_8_;
}

/* CAS-Backend/biz/controller.StartMap.func2 | VA 0xe7b4e0 | control_controller.go:1368
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &mapstring *map[string]interface {}, innerErr error */
undefined8 __stdcall
biz_controller_StartMap_func2
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_18h)
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
    auVar2 = pkg_agvcontrol_SltGetMapRequest();
    if (*(int32_t *)0x355db50 != 0) {
        auVar2 = runtime_gcWriteBarrier2();
        *extraout_R11 = auVar2._0_8_;
        extraout_R11[1] = *puVar1;
    }
    *puVar1 = auVar2._0_8_;
    return auVar2._8_8_;
}

/* CAS-Backend/biz/controller.Chongdingwei | VA 0xe7b700 | control_controller.go:1382
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, connErr error, apiErr error, ~r0.data *uint8, ~r0.itab uintptr, success bool, err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_e1h

void __stdcall biz_controller_Chongdingwei(int64_t arg_8h, int64_t arg_a0h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t iVar4;
    uint64_t uVar5;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar6 [16];
    char var_e1h;
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
    
    while (&var_a0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x111e520);
    uVar3 = 0;
    iVar4 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar3 & **(uint64_t **)0xfbb130;
            if ((*(uint64_t **)0xfbb130)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb130)[uVar5 * 2 + 2];
                goto code_r0x00e7b765;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb130)[uVar5 * 2 + 1] != 0);
        var_d0h = *(int64_t *)0xfb77e8;
        uVar3 = runtime_typeAssert(0xfbb130);
        iVar4 = var_d0h;
    }
code_r0x00e7b765:
    auVar6 = (**(code **)(uVar3 + 0x18))(iVar4, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    var_d8h = auVar6._8_8_;
    var_e0h = auVar6._0_8_;
    if (var_e0h != 0) {
        var_78h = 0x1042920;
        var_70h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_78h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_e0h, var_d8h);
        return;
    }
    var_80h = runtime_convT(0x111e520, var_10h);
    var_88h = 0x111e520;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_88h, 1, 1);
    var_e1h = '\0';
    var_58h = 0xe7bec0;
    var_50h = var_10h;
    var_48h = (int64_t)&var_e1h;
    var_40h = (int64_t)&var_c8h;
    var_c8h = in_XMM15_Qa;
    var_c0h = in_XMM15_Qb;
    auVar6 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, &var_58h);
    var_90h = auVar6._8_8_;
    if (auVar6._0_8_ == 0) {
        if (*(int64_t *)(var_10h + 0x20) != 1) {
            if (var_e1h == '\0') {
                var_30h = 0;
                if (var_c8h != 0) {
                    var_30h = *(int64_t *)(var_c8h + 8);
                }
                var_28h = var_c0h;
                fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1185e06 /* "取消重定位失败: %v" */, 0x19, &var_30h, 1, 1);
                var_38h = runtime_makemap_small();
                puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_38h, 0x116968c /* "code" */, 4);
                *puVar1 = 0x1042b60;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar2 = puVar1[1];
                    puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                    *extraout_R11_03 = uVar2;
                }
                puVar1[1] = 0x2e64ac0;
                auVar6 = runtime_mapassign_faststr(0x10a4880, var_38h, 0x1168a54 /* "msg" */, 3);
                puVar1 = auVar6._0_8_;
                *puVar1 = 0x1042920;
                if (*(int32_t *)0x355db50 != 0) {
                    puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                    *extraout_R11_04 = extraout_RCX_01;
                }
                puVar1[1] = 0x2e68920 /* "取消重定位失败" */;
                var_68h = 0x10a4880;
                var_60h = var_38h;
                uVar2 = runtime_convT(0x10cbee0, &var_68h);
                gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
            } else {
                var_20h = 0x1042920;
                var_18h = 0x2e68900 /* "取消重定位" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_20h, 1, 1);
                var_38h = runtime_makemap_small();
                puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_38h, 0x116968c /* "code" */, 4);
                *puVar1 = 0x1042b60;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar2 = puVar1[1];
                    puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                    *extraout_R11_05 = uVar2;
                }
                puVar1[1] = 0x2e67830;
                auVar6 = runtime_mapassign_faststr(0x10a4880, var_38h, 0x1168a54 /* "msg" */, 3);
                puVar1 = auVar6._0_8_;
                *puVar1 = 0x1042920;
                if (*(int32_t *)0x355db50 != 0) {
                    puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                    *extraout_R11_06 = extraout_RCX_02;
                }
                puVar1[1] = 0x2e68910 /* "成功取消重定位" */;
                var_68h = 0x10a4880;
                var_60h = var_38h;
                uVar2 = runtime_convT(0x10cbee0, &var_68h);
                gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
            }
            return;
        }
        if (var_e1h == '\0') {
            var_b8h = 0;
            if (var_c8h != 0) {
                var_b8h = *(int64_t *)(var_c8h + 8);
            }
            var_b0h = var_c0h;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117f22f /* "重定位失败: %v" */, 0x13, &var_b8h, 1, 1);
            var_38h = runtime_makemap_small();
            puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_38h, 0x116968c /* "code" */, 4);
            *puVar1 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar2 = puVar1[1];
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11 = uVar2;
            }
            puVar1[1] = 0x2e64ac0;
            auVar6 = runtime_mapassign_faststr(0x10a4880, var_38h, 0x1168a54 /* "msg" */, 3);
            puVar1 = auVar6._0_8_;
            *puVar1 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                *extraout_R11_00 = extraout_RCX;
            }
            puVar1[1] = 0x2e688f0 /* "重定位失败" */;
            var_68h = 0x10a4880;
            var_60h = var_38h;
            uVar2 = runtime_convT(0x10cbee0, &var_68h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        } else {
            var_a8h = 0x1042920;
            var_a0h = 0x2e688e0 /* "开始重定位" */;
            fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_a8h, 1, 1);
            var_38h = runtime_makemap_small();
            puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_38h, 0x116968c /* "code" */, 4);
            *puVar1 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar2 = puVar1[1];
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_01 = uVar2;
            }
            puVar1[1] = 0x2e67830;
            auVar6 = runtime_mapassign_faststr(0x10a4880, var_38h, 0x1168a54 /* "msg" */, 3);
            puVar1 = auVar6._0_8_;
            *puVar1 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                *extraout_R11_02 = extraout_RCX_00;
            }
            puVar1[1] = 0x2e688e0 /* "开始重定位" */;
            var_68h = 0x10a4880;
            var_60h = var_38h;
            uVar2 = runtime_convT(0x10cbee0, &var_68h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        }
        return;
    }
    var_98h = *(int64_t *)(auVar6._0_8_ + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117ba93 /* "连接失败: %v" */, 0x10, &var_98h, 1, 1);
    return;
}

/* CAS-Backend/biz/controller.Chongdingwei.func1 | VA 0xe7bec0 | control_controller.go:1395
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &apiErr *error, &ac *CAS-Backend/biz/controller.Controllamr, &success *bool */
undefined8 __stdcall
biz_controller_Chongdingwei_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    undefined8 *puVar1;
    undefined *puVar2;
    undefined uVar3;
    int64_t in_RAX;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 uVar4;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t extraout_RDX;
    undefined8 extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined8 **)(arg3 + 0x18);
    puVar2 = *(undefined **)(arg3 + 0x10);
    if (*(int64_t *)(*(int64_t *)(arg3 + 8) + 0x20) == 1) {
        uVar3 = pkg_agvcontrol_Chongdingweiapi(0, 0, 0, 0);
        *puVar2 = uVar3;
        *puVar1 = extraout_RBX;
        uVar4 = extraout_RCX;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11 = extraout_RCX_00;
            extraout_R11[1] = puVar1[1];
            uVar4 = extraout_RCX_00;
        }
        puVar1[1] = uVar4;
    } else {
        uVar3 = pkg_agvcontrol_CancerChongdingweiapi();
        *puVar2 = uVar3;
        *puVar1 = extraout_RBX_00;
        uVar4 = extraout_RCX_01;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11_00 = extraout_RCX_02;
            extraout_R11_00[1] = puVar1[1];
            uVar4 = extraout_RCX_02;
        }
        puVar1[1] = uVar4;
    }
    return *puVar1;
}

/* CAS-Backend/biz/controller.Ruanjiting | VA 0xe7bfa0 | control_controller.go:1440
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, connErr error, apiErr error, ~r0.data *uint8, ~r0.itab uintptr, success bool, err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_e1h

void __stdcall biz_controller_Ruanjiting(int64_t arg_8h, int64_t arg_a0h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t iVar4;
    uint64_t uVar5;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar6 [16];
    char var_e1h;
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
    
    while (&var_a0h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x111e520);
    uVar3 = 0;
    iVar4 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar3 & **(uint64_t **)0xfbb150;
            if ((*(uint64_t **)0xfbb150)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb150)[uVar5 * 2 + 2];
                goto code_r0x00e7c005;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb150)[uVar5 * 2 + 1] != 0);
        var_d0h = *(int64_t *)0xfb77e8;
        uVar3 = runtime_typeAssert(0xfbb150);
        iVar4 = var_d0h;
    }
code_r0x00e7c005:
    auVar6 = (**(code **)(uVar3 + 0x18))(iVar4, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    var_d8h = auVar6._8_8_;
    var_e0h = auVar6._0_8_;
    if (var_e0h != 0) {
        var_78h = 0x1042920;
        var_70h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_78h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_e0h, var_d8h);
        return;
    }
    var_80h = runtime_convT(0x111e520, var_10h);
    var_88h = 0x111e520;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_88h, 1, 1);
    var_e1h = '\0';
    var_58h = 0xe7c760;
    var_50h = var_10h;
    var_48h = (int64_t)&var_e1h;
    var_40h = (int64_t)&var_c8h;
    var_c8h = in_XMM15_Qa;
    var_c0h = in_XMM15_Qb;
    auVar6 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b0a, &var_58h);
    var_90h = auVar6._8_8_;
    if (auVar6._0_8_ == 0) {
        if (*(int64_t *)(var_10h + 0x20) != 1) {
            if (var_e1h == '\0') {
                var_30h = 0;
                if (var_c8h != 0) {
                    var_30h = *(int64_t *)(var_c8h + 8);
                }
                var_28h = var_c0h;
                fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1185e1f /* "取消软急停失败: %v" */, 0x19, &var_30h, 1, 1);
                var_38h = runtime_makemap_small();
                puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_38h, 0x116968c /* "code" */, 4);
                *puVar1 = 0x1042b60;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar2 = puVar1[1];
                    puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                    *extraout_R11_03 = uVar2;
                }
                puVar1[1] = 0x2e64ac0;
                auVar6 = runtime_mapassign_faststr(0x10a4880, var_38h, 0x1168a54 /* "msg" */, 3);
                puVar1 = auVar6._0_8_;
                *puVar1 = 0x1042920;
                if (*(int32_t *)0x355db50 != 0) {
                    puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                    *extraout_R11_04 = extraout_RCX_01;
                }
                puVar1[1] = 0x2e68970 /* "取消软急停失败" */;
                var_68h = 0x10a4880;
                var_60h = var_38h;
                uVar2 = runtime_convT(0x10cbee0, &var_68h);
                gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
            } else {
                var_20h = 0x1042920;
                var_18h = 0x2e68950 /* "取消软急停" */;
                fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_20h, 1, 1);
                var_38h = runtime_makemap_small();
                puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_38h, 0x116968c /* "code" */, 4);
                *puVar1 = 0x1042b60;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar2 = puVar1[1];
                    puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                    *extraout_R11_05 = uVar2;
                }
                puVar1[1] = 0x2e67830;
                auVar6 = runtime_mapassign_faststr(0x10a4880, var_38h, 0x1168a54 /* "msg" */, 3);
                puVar1 = auVar6._0_8_;
                *puVar1 = 0x1042920;
                if (*(int32_t *)0x355db50 != 0) {
                    puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                    *extraout_R11_06 = extraout_RCX_02;
                }
                puVar1[1] = 0x2e68960 /* "成功取消软急停" */;
                var_68h = 0x10a4880;
                var_60h = var_38h;
                uVar2 = runtime_convT(0x10cbee0, &var_68h);
                gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
            }
            return;
        }
        if (var_e1h == '\0') {
            var_b8h = 0;
            if (var_c8h != 0) {
                var_b8h = *(int64_t *)(var_c8h + 8);
            }
            var_b0h = var_c0h;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117baa3 /* "急停失败: %v" */, 0x10, &var_b8h, 1, 1);
            var_38h = runtime_makemap_small();
            puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_38h, 0x116968c /* "code" */, 4);
            *puVar1 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar2 = puVar1[1];
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11 = uVar2;
            }
            puVar1[1] = 0x2e64ac0;
            auVar6 = runtime_mapassign_faststr(0x10a4880, var_38h, 0x1168a54 /* "msg" */, 3);
            puVar1 = auVar6._0_8_;
            *puVar1 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                *extraout_R11_00 = extraout_RCX;
            }
            puVar1[1] = 0x2e68940 /* "急停失败" */;
            var_68h = 0x10a4880;
            var_60h = var_38h;
            uVar2 = runtime_convT(0x10cbee0, &var_68h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        } else {
            var_a8h = 0x1042920;
            var_a0h = 0x2e68930 /* "急停成功" */;
            fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_a8h, 1, 1);
            var_38h = runtime_makemap_small();
            puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_38h, 0x116968c /* "code" */, 4);
            *puVar1 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar2 = puVar1[1];
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_01 = uVar2;
            }
            puVar1[1] = 0x2e67830;
            auVar6 = runtime_mapassign_faststr(0x10a4880, var_38h, 0x1168a54 /* "msg" */, 3);
            puVar1 = auVar6._0_8_;
            *puVar1 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                *extraout_R11_02 = extraout_RCX_00;
            }
            puVar1[1] = 0x2e68930 /* "急停成功" */;
            var_68h = 0x10a4880;
            var_60h = var_38h;
            uVar2 = runtime_convT(0x10cbee0, &var_68h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        }
        return;
    }
    var_98h = *(int64_t *)(auVar6._0_8_ + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117ba93 /* "连接失败: %v" */, 0x10, &var_98h, 1, 1);
    return;
}

/* CAS-Backend/biz/controller.Ruanjiting.func1 | VA 0xe7c760 | control_controller.go:1453
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &apiErr *error, &ac *CAS-Backend/biz/controller.Controllamr, &success *bool */
undefined8 __stdcall
biz_controller_Ruanjiting_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    undefined8 *puVar1;
    undefined *puVar2;
    undefined uVar3;
    int64_t in_RAX;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 uVar4;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t extraout_RDX;
    undefined8 extraout_RBX;
    undefined8 extraout_RBX_00;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined8 **)(arg3 + 0x18);
    puVar2 = *(undefined **)(arg3 + 0x10);
    if (*(int64_t *)(*(int64_t *)(arg3 + 8) + 0x20) == 1) {
        uVar3 = pkg_agvcontrol_Ruanjiting();
        *puVar2 = uVar3;
        *puVar1 = extraout_RBX;
        uVar4 = extraout_RCX;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11 = extraout_RCX_00;
            extraout_R11[1] = puVar1[1];
            uVar4 = extraout_RCX_00;
        }
        puVar1[1] = uVar4;
    } else {
        uVar3 = pkg_agvcontrol_Ruanjiting();
        *puVar2 = uVar3;
        *puVar1 = extraout_RBX_00;
        uVar4 = extraout_RCX_01;
        if (*(int32_t *)0x355db50 != 0) {
            runtime_gcWriteBarrier2();
            *extraout_R11_00 = extraout_RCX_02;
            extraout_R11_00[1] = puVar1[1];
            uVar4 = extraout_RCX_02;
        }
        puVar1[1] = uVar4;
    }
    return *puVar1;
}

/* CAS-Backend/biz/controller.Pingdong | VA 0xe7c840 | control_controller.go:1498
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, err error, ~r0.data *uint8, ~r0.itab uintptr */
void __stdcall biz_controller_Pingdong(int64_t arg_8h, int64_t arg_78h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar4;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar5 [16];
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
    
    while (&var_48h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x111e520);
    uVar2 = *(undefined8 *)0xfb77e8;
    uVar3 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar4 = uVar3 & **(uint64_t **)0xfbb170;
            if ((*(uint64_t **)0xfbb170)[uVar4 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb170)[uVar4 * 2 + 2];
                goto code_r0x00e7c8a5;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb170)[uVar4 * 2 + 1] != 0);
        uVar3 = runtime_typeAssert(0xfbb170);
    }
code_r0x00e7c8a5:
    auVar5 = (**(code **)(uVar3 + 0x18))(uVar2, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar5._0_8_ != 0) {
        var_48h = 0x1042920;
        var_40h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_48h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar5._0_8_, auVar5._8_8_);
        return;
    }
    var_50h = runtime_convT(0x111e520, var_10h);
    var_58h = 0x111e520;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_58h, 1, 1);
    var_28h = 0xe7cca0;
    var_20h = var_10h;
    auVar5 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b06, &var_28h);
    var_70h = auVar5._8_8_;
    if (auVar5._0_8_ == 0) {
        var_68h = 0x1042920;
        var_60h = 0x2e68980 /* "平动" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_68h, 1, 1);
        var_18h = runtime_makemap_small();
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar1 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar1[1];
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_01 = uVar2;
        }
        puVar1[1] = 0x2e67830;
        auVar5 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar1 = auVar5._0_8_;
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar5._8_8_, puVar1[1]);
            *extraout_R11_02 = extraout_RCX_00;
        }
        puVar1[1] = 0x2e68990 /* "平动成功" */;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar2 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
    } else {
        var_78h = *(int64_t *)(auVar5._0_8_ + 8);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117bab3 /* "平动失败: %v" */, 0x10, &var_78h, 1, 1);
        var_18h = runtime_makemap_small();
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar1 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar2 = puVar1[1];
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar2;
        }
        puVar1[1] = 0x2e64ac0;
        auVar5 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar1 = auVar5._0_8_;
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar5._8_8_, puVar1[1]);
            *extraout_R11_00 = extraout_RCX;
        }
        puVar1[1] = 0x2e689a0 /* "平动失败" */;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar2 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
    }
    return;
}

/* CAS-Backend/biz/controller.Pingdong.func1 | VA 0xe7cca0 | control_controller.go:1509
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, innerErr error */
// WARNING: [rz-ghidra] Detected overlap for variable var_e4h
// WARNING: [rz-ghidra] Removing arg arg_44h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_f4h

undefined8 __stdcall
biz_controller_Pingdong_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    undefined8 unaff_RBX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000050;
    int64_t in_stack_000000c8;
    int64_t in_stack_000000e0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendTranslateRequest(in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, 
                 in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000050, 
                 in_stack_000000c8, in_stack_000000e0);
    return unaff_RBX;
}

/* CAS-Backend/biz/controller.Zhuandong | VA 0xe7cd00 | control_controller.go:1530
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, err error, ~r0.data *uint8, ~r0.itab uintptr */
void __stdcall biz_controller_Zhuandong(int64_t arg_8h, int64_t arg_78h)
{
    int64_t in_RAX;
    int64_t iVar1;
    undefined8 uVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    uint64_t uVar5;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
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
    
    while (&var_48h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff38);
    uVar4 = *(undefined8 *)0xfb77e8;
    uVar5 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar5 & **(uint64_t **)0xfbb190;
            if ((*(uint64_t **)0xfbb190)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar5 = (*(uint64_t **)0xfbb190)[uVar6 * 2 + 2];
                goto code_r0x00e7cd65;
            }
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbb190)[uVar6 * 2 + 1] != 0);
        uVar5 = runtime_typeAssert(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff58, 
                             in_stack_ffffffffffffff60);
    }
code_r0x00e7cd65:
    auVar7 = (**(code **)(uVar5 + 0x18))(uVar4, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar7._0_8_ != 0) {
        var_48h = 0x1042920;
        var_40h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_48h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar7._0_8_, auVar7._8_8_);
        return;
    }
    var_50h = runtime_convT(0x111e520, var_10h);
    var_58h = 0x111e520;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_58h, 1, 1);
    var_28h = 0xe7d160;
    var_20h = var_10h;
    iVar1 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b06, &var_28h);
    uVar4 = *(undefined8 *)0x3512080;
    if (iVar1 == 0) {
        var_68h = 0x1042920;
        var_60h = 0x2e689b0 /* "转动" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_68h, 1, 1);
        var_18h = runtime_makemap_small();
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = puVar3[1];
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_01 = uVar4;
        }
        puVar3[1] = 0x2e67830;
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar3 = auVar7._0_8_;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar7._8_8_, puVar3[1]);
            *extraout_R11_02 = extraout_RCX_00;
        }
        puVar3[1] = 0x2e689c0 /* "转动成功" */;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar4 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    } else {
        uVar2 = fmt_Fprintf(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                             in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                             in_stack_ffffffffffffff68);
        var_18h = runtime_makemap_small(uVar2, uVar4);
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = puVar3[1];
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar4;
        }
        puVar3[1] = 0x2e64ac0;
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar3 = auVar7._0_8_;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar7._8_8_, puVar3[1]);
            *extraout_R11_00 = extraout_RCX;
        }
        puVar3[1] = 0x2e689d0 /* "转动失败" */;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar4 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    }
    return;
}

/* CAS-Backend/biz/controller.Zhuandong.func1 | VA 0xe7d160 | control_controller.go:1541
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr */
// WARNING: [rz-ghidra] Detected overlap for variable var_1feh
// WARNING: [rz-ghidra] Detected overlap for variable var_1fch
// WARNING: [rz-ghidra] Detected overlap for variable var_20fh
// WARNING: [rz-ghidra] Detected overlap for variable var_20eh
// WARNING: [rz-ghidra] Detected overlap for variable var_20ch
// WARNING: [rz-ghidra] Detected overlap for variable var_208h
// WARNING: [rz-ghidra] Detected overlap for variable var_206h
// WARNING: [rz-ghidra] Detected overlap for variable var_21eh
// WARNING: [rz-ghidra] Detected overlap for variable var_21ch
// WARNING: [rz-ghidra] Detected overlap for variable var_218h
// WARNING: [rz-ghidra] Detected overlap for variable var_216h
// WARNING: [rz-ghidra] Removing arg arg_220h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_212h
// WARNING: [rz-ghidra] Detected overlap for variable var_202h

void __stdcall
biz_controller_Zhuandong_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000038;
    int64_t in_stack_00000078;
    int64_t in_stack_00000100;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendTurnCommand(in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, 
                 in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000038, 
                 in_stack_00000078, in_stack_00000100);
    return;
}

/* CAS-Backend/biz/controller.Yuanhuyundong | VA 0xe7d1c0 | control_controller.go:1561
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, err error, ~r0.data *uint8, ~r0.itab uintptr */
void __stdcall biz_controller_Yuanhuyundong(int64_t arg_8h, int64_t arg_78h)
{
    int64_t in_RAX;
    int64_t iVar1;
    undefined8 uVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    uint64_t uVar5;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t in_stack_ffffffffffffff38;
    int64_t in_stack_ffffffffffffff40;
    int64_t in_stack_ffffffffffffff48;
    int64_t in_stack_ffffffffffffff50;
    int64_t in_stack_ffffffffffffff58;
    int64_t in_stack_ffffffffffffff60;
    int64_t in_stack_ffffffffffffff68;
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
    
    while (&var_48h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff38);
    uVar4 = *(undefined8 *)0xfb77e8;
    uVar5 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar5 & **(uint64_t **)0xfbb1b0;
            if ((*(uint64_t **)0xfbb1b0)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar5 = (*(uint64_t **)0xfbb1b0)[uVar6 * 2 + 2];
                goto code_r0x00e7d225;
            }
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbb1b0)[uVar6 * 2 + 1] != 0);
        uVar5 = runtime_typeAssert(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff58, 
                             in_stack_ffffffffffffff60);
    }
code_r0x00e7d225:
    auVar7 = (**(code **)(uVar5 + 0x18))(uVar4, *(undefined8 *)(in_RAX + 0x20), 0x1026560, var_10h);
    if (auVar7._0_8_ != 0) {
        var_48h = 0x1042920;
        var_40h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_48h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar7._0_8_, auVar7._8_8_);
        return;
    }
    var_50h = runtime_convT(0x111e520, var_10h);
    var_58h = 0x111e520;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_58h, 1, 1);
    var_28h = 0xe7d620;
    var_20h = var_10h;
    iVar1 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b06, &var_28h);
    uVar4 = *(undefined8 *)0x3512080;
    if (iVar1 == 0) {
        var_68h = 0x1042920;
        var_60h = 0x2e689e0 /* "圆弧运动" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_68h, 1, 1);
        var_18h = runtime_makemap_small();
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = puVar3[1];
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_01 = uVar4;
        }
        puVar3[1] = 0x2e67830;
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar3 = auVar7._0_8_;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar7._8_8_, puVar3[1]);
            *extraout_R11_02 = extraout_RCX_00;
        }
        puVar3[1] = 0x2e689f0 /* "圆弧运动成功" */;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar4 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    } else {
        uVar2 = fmt_Fprintf(in_stack_ffffffffffffff38, in_stack_ffffffffffffff40, in_stack_ffffffffffffff48, 
                             in_stack_ffffffffffffff50, in_stack_ffffffffffffff58, in_stack_ffffffffffffff60, 
                             in_stack_ffffffffffffff68);
        var_18h = runtime_makemap_small(uVar2, uVar4);
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = puVar3[1];
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar4;
        }
        puVar3[1] = 0x2e64ac0;
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
        puVar3 = auVar7._0_8_;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar7._8_8_, puVar3[1]);
            *extraout_R11_00 = extraout_RCX;
        }
        puVar3[1] = 0x2e68a00 /* "圆弧运动失败" */;
        var_38h = 0x10a4880;
        var_30h = var_18h;
        uVar4 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    }
    return;
}

/* CAS-Backend/biz/controller.Yuanhuyundong.func1 | VA 0xe7d620 | control_controller.go:1572
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &ac *CAS-Backend/biz/controller.Controllamr, innerErr error */
// WARNING: [rz-ghidra] Detected overlap for variable var_a2h
// WARNING: [rz-ghidra] Detected overlap for variable var_a0h
// WARNING: [rz-ghidra] Detected overlap for variable var_b4h
// WARNING: [rz-ghidra] Detected overlap for variable var_ach
// WARNING: [rz-ghidra] Detected overlap for variable var_80h

undefined8 __stdcall
biz_controller_Yuanhuyundong_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t in_RAX;
    undefined8 unaff_RBX;
    int64_t unaff_RBP;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000028;
    int64_t in_stack_00000078;
    int64_t in_stack_00000088;
    int64_t in_stack_00000090;
    int64_t in_stack_000000b0;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
    }
    pkg_agvcontrol_SendCircularMotionCommand(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                 in_stack_ffffffffffffffd8, in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, 
                 in_stack_fffffffffffffff0, unaff_RBP, in_stack_00000028, in_stack_00000078, in_stack_00000088, 
                 in_stack_00000090, in_stack_000000b0);
    return unaff_RBX;
}

/* CAS-Backend/biz/controller.ChongdingweiManu | VA 0xe7d680 | control_controller.go:1603
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ac *CAS-Backend/biz/controller.CDW, connErr error, apiErr error, ~r0.data *uint8, ~r0.itab uintptr, success bool, err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_c1h

void __stdcall biz_controller_ChongdingweiManu(int64_t arg_8h, int64_t arg_a0h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t iVar4;
    uint64_t uVar5;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    int64_t in_XMM15_Qa;
    int64_t in_XMM15_Qb;
    undefined auVar6 [16];
    int64_t in_stack_ffffffffffffff00;
    char var_c1h;
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
    
    while (&var_80h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(in_stack_ffffffffffffff00);
    uVar3 = 0;
    iVar4 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar3 & **(uint64_t **)0xfbb1d0;
            if ((*(uint64_t **)0xfbb1d0)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb1d0)[uVar5 * 2 + 2];
                goto code_r0x00e7d6e5;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb1d0)[uVar5 * 2 + 1] != 0);
        var_b0h = *(int64_t *)0xfb77e8;
        uVar3 = runtime_typeAssert(0xfbb1d0);
        iVar4 = var_b0h;
    }
code_r0x00e7d6e5:
    auVar6 = (**(code **)(uVar3 + 0x18))(iVar4, *(undefined8 *)(in_RAX + 0x20), 0x1026520, var_10h);
    var_b8h = auVar6._8_8_;
    var_c0h = auVar6._0_8_;
    if (var_c0h != 0) {
        var_58h = 0x1042920;
        var_50h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_58h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_c0h, var_b8h);
        return;
    }
    var_60h = runtime_convT(0x110e4c0, var_10h);
    var_68h = 0x110e4c0;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_68h, 1, 1);
    var_c1h = '\0';
    var_38h = 0xe7db80;
    var_30h = (int64_t)&var_c1h;
    var_28h = (int64_t)&var_a8h;
    var_20h = var_10h;
    var_a8h = in_XMM15_Qa;
    var_a0h = in_XMM15_Qb;
    auVar6 = pkg_agvcontrol_DoWithConn(*(undefined8 *)(var_10h + 0x10), *(undefined8 *)(var_10h + 0x18), 0x4b05, &var_38h);
    var_70h = auVar6._8_8_;
    if (auVar6._0_8_ == 0) {
        if (var_c1h == '\0') {
            var_98h = 0;
            if (var_a8h != 0) {
                var_98h = *(int64_t *)(var_a8h + 8);
            }
            var_90h = var_a0h;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117f22f /* "重定位失败: %v" */, 0x13, &var_98h, 1, 1);
            var_18h = runtime_makemap_small();
            puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
            *puVar1 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar2 = puVar1[1];
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11 = uVar2;
            }
            puVar1[1] = 0x2e64ac0;
            auVar6 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
            puVar1 = auVar6._0_8_;
            *puVar1 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                *extraout_R11_00 = extraout_RCX;
            }
            puVar1[1] = 0x2e688f0 /* "重定位失败" */;
            var_48h = 0x10a4880;
            var_40h = var_18h;
            uVar2 = runtime_convT(0x10cbee0, &var_48h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        } else {
            var_88h = 0x1042920;
            var_80h = 0x2e688e0 /* "开始重定位" */;
            fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_88h, 1, 1);
            var_18h = runtime_makemap_small();
            puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
            *puVar1 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar2 = puVar1[1];
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_01 = uVar2;
            }
            puVar1[1] = 0x2e67830;
            auVar6 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
            puVar1 = auVar6._0_8_;
            *puVar1 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
                *extraout_R11_02 = extraout_RCX_00;
            }
            puVar1[1] = 0x2e688e0 /* "开始重定位" */;
            var_48h = 0x10a4880;
            var_40h = var_18h;
            uVar2 = runtime_convT(0x10cbee0, &var_48h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        }
        return;
    }
    var_78h = *(int64_t *)(auVar6._0_8_ + 8);
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117ba93 /* "连接失败: %v" */, 0x10, &var_78h, 1, 1);
    return;
}

/* CAS-Backend/biz/controller.ChongdingweiManu.func1 | VA 0xe7db80 | control_controller.go:1616
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &ac *CAS-Backend/biz/controller.CDW, &success *bool, &apiErr *error */
// WARNING: [rz-ghidra] Detected overlap for variable var_e4h
// WARNING: [rz-ghidra] Detected overlap for variable arg_3ch
// WARNING: [rz-ghidra] Detected overlap for variable var_f4h

int64_t __stdcall
biz_controller_ChongdingweiManu_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h)
{
    int64_t *piVar1;
    undefined *puVar2;
    undefined uVar3;
    int64_t in_RAX;
    int64_t iVar4;
    int64_t extraout_RCX;
    int64_t extraout_RDX;
    int64_t unaff_RBX;
    int64_t extraout_RBX;
    int64_t *extraout_R11;
    int64_t unaff_R14;
    int64_t unaff_retaddr;
    int64_t in_stack_00000018;
    int64_t in_stack_00000058;
    int64_t in_stack_000000b0;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t in_stack_ffffffffffffffd8;
    int64_t in_stack_ffffffffffffffe0;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    piVar1 = *(int64_t **)(arg3 + 0x10);
    puVar2 = *(undefined **)(arg3 + 8);
    iVar4 = 0;
    uVar3 = pkg_agvcontrol_Chongdingweiapi(in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, 
                         in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, 
                         in_stack_ffffffffffffffe0, unaff_RBX, in_stack_00000018, in_stack_00000058, in_stack_000000b0);
    *puVar2 = uVar3;
    *piVar1 = unaff_RBX;
    if (*(int32_t *)0x355db50 != 0) {
        runtime_gcWriteBarrier2();
        *extraout_R11 = extraout_RCX;
        extraout_R11[1] = piVar1[1];
        iVar4 = extraout_RCX;
        unaff_RBX = extraout_RBX;
    }
    piVar1[1] = iVar4;
    return unaff_RBX;
}
