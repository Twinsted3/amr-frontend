/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/controller.RegisterHandler | VA 0xe8e320 | user_controller.go:67
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &req *CAS-Backend/biz/controller.RegisterRequest, success bool, u CAS-Backend/biz/dao.User, ~r0.data *uint8, ~r0.itab uintptr, err error */
void __stdcall biz_controller_RegisterHandler(int64_t arg_8h, int64_t arg_b0h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 uVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    uint64_t uVar5;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    int64_t iVar6;
    uint64_t uVar7;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    int64_t unaff_R14;
    undefined8 in_XMM15_Qa;
    undefined auVar8 [16];
    int64_t in_stack_ffffffffffffff10;
    int64_t in_stack_ffffffffffffff18;
    int64_t in_stack_ffffffffffffff20;
    int64_t in_stack_ffffffffffffff28;
    int64_t in_stack_ffffffffffffff30;
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
    var_10h = runtime_newobject(in_stack_ffffffffffffff10);
    uVar5 = 0;
    iVar6 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar7 = uVar5 & **(uint64_t **)0xfbb4b0;
            if ((*(uint64_t **)0xfbb4b0)[uVar7 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar5 = (*(uint64_t **)0xfbb4b0)[uVar7 * 2 + 2];
                goto code_r0x00e8e385;
            }
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbb4b0)[uVar7 * 2 + 1] != 0);
        var_60h = *(int64_t *)0xfb77e8;
        uVar5 = runtime_typeAssert(0xfbb4b0);
        iVar6 = var_60h;
    }
code_r0x00e8e385:
    auVar8 = (**(code **)(uVar5 + 0x18))(iVar6, *(undefined8 *)(in_RAX + 0x20), 0x1026620, var_10h);
    if (auVar8._0_8_ != 0) {
        var_38h = 0x1042920;
        var_30h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, 
                     in_stack_ffffffffffffff28, in_stack_ffffffffffffff30);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar8._0_8_, auVar8._8_8_);
        return;
    }
    var_40h = runtime_convT(in_stack_ffffffffffffff10, in_stack_ffffffffffffff18);
    var_48h = 0x10d5b40;
    fmt_Fprintln(in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, 
                 in_stack_ffffffffffffff28, in_stack_ffffffffffffff30);
    uVar4 = *(undefined8 *)0x3512080;
    if (((*(int64_t *)(var_10h + 8) != 0) && (*(int64_t *)(var_10h + 0x18) != 0)) && (*(int64_t *)(var_10h + 0x28) != 0)
       ) {
        var_70h = *(int64_t *)(var_10h + 0x28);
        cVar1 = biz_service_Register(in_XMM15_Qa, *(undefined8 *)var_10h, *(undefined8 *)(var_10h + 8));
        if (cVar1 == '\0') {
            var_18h = runtime_makemap_small();
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar4 = puVar3[1];
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_03 = uVar4;
            }
            puVar3[1] = 0x2e64ac0;
            auVar8 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
            puVar3 = auVar8._0_8_;
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
                *extraout_R11_04 = extraout_RCX_01;
            }
            puVar3[1] = 0x2e68f20 /* "注册失败,用户已存在" */;
            var_28h = 0x10a4880;
            var_20h = var_18h;
            uVar4 = runtime_convT(in_stack_ffffffffffffff10, in_stack_ffffffffffffff18);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
        } else {
            var_18h = runtime_makemap_small();
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar4 = puVar3[1];
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_01 = uVar4;
            }
            puVar3[1] = 0x2e67830;
            auVar8 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
            puVar3 = auVar8._0_8_;
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
                *extraout_R11_02 = extraout_RCX_00;
            }
            puVar3[1] = 0x2e68f10 /* "注册成功" */;
            var_28h = 0x10a4880;
            var_20h = var_18h;
            uVar4 = runtime_convT(in_stack_ffffffffffffff10, in_stack_ffffffffffffff18);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
        }
        return;
    }
    var_58h = 0x1042920;
    var_50h = 0x2e68ef0 /* "用户名、编号和密码为空" */;
    uVar2 = fmt_Fprintln(in_stack_ffffffffffffff10, in_stack_ffffffffffffff18, in_stack_ffffffffffffff20, 
                         in_stack_ffffffffffffff28, in_stack_ffffffffffffff30);
    var_18h = runtime_makemap_small(uVar2, uVar4);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar4 = puVar3[1];
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11 = uVar4;
    }
    puVar3[1] = 0x2e64ac0;
    auVar8 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
    puVar3 = auVar8._0_8_;
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
        *extraout_R11_00 = extraout_RCX;
    }
    puVar3[1] = 0x2e68f00 /* "用户名、编号和密码不能为空" */;
    var_28h = 0x10a4880;
    var_20h = var_18h;
    uVar4 = runtime_convT(in_stack_ffffffffffffff10, in_stack_ffffffffffffff18);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    return;
}

/* CAS-Backend/biz/controller.LoginHandler | VA 0xe8e8a0 | user_controller.go:122
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &req *CAS-Backend/biz/controller.LoginRequest, success bool, msg string, user CAS-Backend/biz/dao.User, err error */
// WARNING: Variable defined which should be unmapped: var_138h
// WARNING: Variable defined which should be unmapped: var_128h
// WARNING: Variable defined which should be unmapped: var_118h

void __stdcall biz_controller_LoginHandler(int64_t arg_8h, int64_t arg_c0h, int64_t arg_120h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 uVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    uint64_t uVar5;
    undefined8 extraout_RCX;
    int64_t extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t iVar6;
    char *extraout_RBX;
    uint64_t uVar7;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    int64_t *extraout_R11_06;
    int64_t *extraout_R11_07;
    int64_t *extraout_R11_08;
    int64_t *extraout_R11_09;
    int64_t unaff_R14;
    undefined auVar8 [16];
    int64_t var_138h;
    int64_t in_stack_fffffffffffffed0;
    int64_t var_128h;
    int64_t in_stack_fffffffffffffee0;
    int64_t var_118h;
    int64_t in_stack_fffffffffffffef0;
    int64_t var_108h;
    undefined8 uStack_100;
    int64_t var_d8h;
    int64_t var_d0h;
    int64_t var_c8h;
    int64_t var_c0h;
    int64_t var_b8h;
    int64_t var_a8h;
    int64_t var_a0h;
    int64_t var_98h;
    int64_t var_90h;
    int64_t var_88h;
    int64_t var_80h;
    int64_t var_78h;
    int64_t var_70h;
    int64_t var_60h;
    int64_t var_50h;
    int64_t var_40h;
    undefined4 uStack_38;
    undefined4 uStack_34;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&var_b8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(var_138h);
    *(undefined8 *)var_10h = 0;
    *(undefined8 *)(var_10h + 0x10) = 0;
    uVar5 = 0;
    iVar6 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar5 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar7 = uVar5 & **(uint64_t **)0xfbb4d0;
            if ((*(uint64_t **)0xfbb4d0)[uVar7 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar5 = (*(uint64_t **)0xfbb4d0)[uVar7 * 2 + 2];
                goto code_r0x00e8e912;
            }
            uVar5 = uVar5 + 1;
        } while ((*(uint64_t **)0xfbb4d0)[uVar7 * 2 + 1] != 0);
        var_98h = *(int64_t *)0xfb77e8;
        uVar5 = runtime_typeAssert(0xfbb4d0);
        iVar6 = var_98h;
    }
code_r0x00e8e912:
    auVar8 = (**(code **)(uVar5 + 0x18))(iVar6, *(undefined8 *)(in_RAX + 0x20), 0x10265a0, var_10h);
    if (auVar8._0_8_ != 0) {
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar8._0_8_, auVar8._8_8_);
        return;
    }
    var_78h = runtime_convT(var_138h, in_stack_fffffffffffffed0);
    var_80h = 0x10bdf60;
    fmt_Fprintln(var_138h, in_stack_fffffffffffffed0, var_128h, in_stack_fffffffffffffee0, var_118h);
    uVar4 = *(undefined8 *)0x3512080;
    if ((*(int64_t *)(var_10h + 8) != 0) && (*(int64_t *)(var_10h + 0x18) != 0)) {
        cVar1 = biz_service_Login(*(undefined8 *)var_10h, *(undefined8 *)(var_10h + 8), *(undefined8 *)(var_10h + 0x10), 
                                *(undefined8 *)(var_10h + 0x18));
        uStack_38 = (undefined4)uStack_100;
        uStack_34 = (undefined4)((uint64_t)uStack_100 >> 0x20);
        var_a0h._0_4_ = uStack_38;
        var_a0h._4_4_ = uStack_34;
        var_a8h = var_108h;
        if (cVar1 == '\0') {
            if ((extraout_RCX_00 == 1) && (*extraout_RBX == '1')) {
                var_18h = runtime_makemap_small();
                puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
                *puVar3 = 0x1042b60;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar4 = puVar3[1];
                    puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                    *extraout_R11_01 = uVar4;
                }
                puVar3[1] = 0x2e64ac0;
                auVar8 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
                puVar3 = auVar8._0_8_;
                *puVar3 = 0x1042920;
                if (*(int32_t *)0x355db50 != 0) {
                    puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
                    *extraout_R11_02 = extraout_RCX_01;
                }
                puVar3[1] = 0x2e68f50 /* "密码错误" */;
                var_30h = 0x10a4880;
                var_28h = var_18h;
                uVar4 = runtime_convT(var_138h, in_stack_fffffffffffffed0);
                gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
            } else {
                var_18h = runtime_makemap_small();
                puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
                *puVar3 = 0x1042b60;
                if (*(int32_t *)0x355db50 != 0) {
                    uVar4 = puVar3[1];
                    puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                    *extraout_R11_03 = uVar4;
                }
                puVar3[1] = 0x2e64ac0;
                auVar8 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
                puVar3 = auVar8._0_8_;
                *puVar3 = 0x1042920;
                if (*(int32_t *)0x355db50 != 0) {
                    puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
                    *extraout_R11_04 = extraout_RCX_02;
                }
                puVar3[1] = 0x2e68f60 /* "账户不存在" */;
                var_30h = 0x10a4880;
                var_28h = var_18h;
                uVar4 = runtime_convT(var_138h, in_stack_fffffffffffffed0);
                gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
            }
        } else {
            var_18h = runtime_makemap_small();
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar4 = puVar3[1];
                puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_05 = uVar4;
            }
            puVar3[1] = 0x2e67830;
            var_20h = runtime_convT64(var_138h);
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116859a /* "id" */, 2);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_06 = var_20h;
                extraout_R11_06[1] = puVar3[1];
            }
            puVar3[1] = var_20h;
            var_20h = runtime_convTstring(var_138h, in_stack_fffffffffffffed0, in_stack_fffffffffffffef0);
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1169528 /* "name" */, 4);
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_07 = var_20h;
                extraout_R11_07[1] = puVar3[1];
            }
            puVar3[1] = var_20h;
            var_20h = runtime_convTstring(var_138h, in_stack_fffffffffffffed0, in_stack_fffffffffffffef0);
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x117435b /* "username" */, 8);
            *puVar3 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_08 = var_20h;
                extraout_R11_08[1] = puVar3[1];
            }
            puVar3[1] = var_20h;
            var_20h = runtime_convT64(var_138h);
            puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116a5d5 /* "roles" */, 5);
            *puVar3 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                puVar3 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_09 = var_20h;
                extraout_R11_09[1] = puVar3[1];
            }
            puVar3[1] = var_20h;
            var_30h = 0x10a4880;
            var_28h = var_18h;
            uVar4 = runtime_convT(var_138h, in_stack_fffffffffffffed0);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
        }
        return;
    }
    var_90h = 0x1042920;
    var_88h = 0x2e68f30 /* "编号和密码为空" */;
    uVar2 = fmt_Fprintln(var_138h, in_stack_fffffffffffffed0, var_128h, in_stack_fffffffffffffee0, var_118h);
    var_18h = runtime_makemap_small(uVar2, uVar4);
    puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x116968c /* "code" */, 4);
    *puVar3 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar4 = puVar3[1];
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11 = uVar4;
    }
    puVar3[1] = 0x2e64ac0;
    auVar8 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1168a54 /* "msg" */, 3);
    puVar3 = auVar8._0_8_;
    *puVar3 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar8._8_8_, puVar3[1]);
        *extraout_R11_00 = extraout_RCX;
    }
    puVar3[1] = 0x2e68f40 /* "编号和密码不能为空" */;
    var_30h = 0x10a4880;
    var_28h = var_18h;
    uVar4 = runtime_convT(var_138h, in_stack_fffffffffffffed0);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    return;
}
