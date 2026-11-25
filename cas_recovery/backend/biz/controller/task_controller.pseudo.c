/* cas-backend.exe | Go 1.23.8, Windows x64 | rz-ghidra pseudocode.
   Use the recorded Go signature and original instruction listing to check inferred types and register arguments. */

/* CAS-Backend/biz/controller.NewTaskHandler | VA 0xe88880 | task_controller.go:56
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ta *CAS-Backend/biz/controller.TaskRequest, success bool, t CAS-Backend/biz/dao.Task, ~r0.data *uint8, ~r0.itab uintptr, err error */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_218h because it doesn't fit into ProtoModel

void __stdcall biz_controller_NewTaskHandler(int64_t arg_8h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 *puVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t iVar5;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t var_260h;
    undefined auStack_1d0 [112];
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
    
    while (auStack_1d0 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe88e51;
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x113c760);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar4 & **(uint64_t **)0xfbb3f0;
            if ((*(uint64_t **)0xfbb3f0)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb3f0)[uVar6 * 2 + 2];
                goto code_r0x00e888e5;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb3f0)[uVar6 * 2 + 1] != 0);
        var_60h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(0xfbb3f0);
        iVar5 = var_60h;
    }
code_r0x00e888e5:
    auVar7 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x10266a0, var_10h);
    var_158h = auVar7._8_8_;
    var_160h = auVar7._0_8_;
    if (var_160h == 0) {
        var_38h = runtime_convT(0x113c760, var_10h);
        var_40h = 0x113c760;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        runtime_duffzero_offset_280();
        var_150h = *(int64_t *)var_10h;
        var_148h = *(int64_t *)(var_10h + 8);
        var_140h = *(int64_t *)(var_10h + 0x10);
        var_138h = *(int64_t *)(var_10h + 0x18);
        var_130h = *(int64_t *)(var_10h + 0x20);
        var_128h = *(int64_t *)(var_10h + 0x28);
        var_120h = *(int64_t *)(var_10h + 0x30);
        var_118h = *(int64_t *)(var_10h + 0x38);
        var_110h = *(int64_t *)(var_10h + 0x40);
        var_108h = *(int64_t *)(var_10h + 0x48);
        var_100h = *(int64_t *)(var_10h + 0x50);
        var_f8h = *(int64_t *)(var_10h + 0x58);
        var_d8h._0_1_ = *(undefined *)(var_10h + 0x78);
        var_d0h = *(int64_t *)(var_10h + 0x80);
        var_c8h = *(int64_t *)(var_10h + 0x88);
        var_c0h = *(int64_t *)(var_10h + 0x90);
        var_b8h = *(int64_t *)(var_10h + 0x98);
        var_b0h = *(int64_t *)(var_10h + 0xa0);
        var_a8h = *(int64_t *)(var_10h + 0xa8);
        var_a0h = *(int64_t *)(var_10h + 0xb0);
        var_98h = *(int64_t *)(var_10h + 0xb8);
        var_90h = *(int64_t *)(var_10h + 0xd8);
        var_88h = *(int64_t *)(var_10h + 0xe0);
        var_80h = *(int64_t *)(var_10h + 0xc0);
        var_78h = *(int64_t *)(var_10h + 200);
        var_70h._0_1_ = *(undefined *)(var_10h + 0xd0);
        var_68h = *(int64_t *)(var_10h + 0xf8);
        var_48h = runtime_convTstring(*(undefined8 *)(var_10h + 0xb0), *(undefined8 *)(var_10h + 0xb8));
        var_50h = 0x1042920;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
        runtime_duffcopy_offset_686();
        cVar1 = biz_service_AddTask();
        if (cVar1 == '\0') {
            var_58h = runtime_makemap_small();
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_58h, 0x116968c /* "code" */, 4);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_01 = uVar3;
            }
            puVar2[1] = 0x2e64ac0;
            auVar7 = runtime_mapassign_faststr(0x10a4880, var_58h, 0x1168a54 /* "msg" */, 3);
            puVar2 = auVar7._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                *extraout_R11_02 = extraout_RCX_00;
            }
            puVar2[1] = 0x2e68cf0 /* "任务添加失败" */;
            var_20h = 0x10a4880;
            var_18h = var_58h;
            uVar3 = runtime_convT(0x10cbee0, &var_20h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        } else {
            var_58h = runtime_makemap_small();
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_58h, 0x116968c /* "code" */, 4);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11 = uVar3;
            }
            puVar2[1] = 0x2e67830;
            auVar7 = runtime_mapassign_faststr(0x10a4880, var_58h, 0x1168a54 /* "msg" */, 3);
            puVar2 = auVar7._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                *extraout_R11_00 = extraout_RCX;
            }
            puVar2[1] = 0x2e68ce0 /* "任务添加成功" */;
            var_20h = 0x10a4880;
            var_18h = var_58h;
            uVar3 = runtime_convT(0x10cbee0, &var_20h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        }
        return;
    }
    var_30h = 0x1042920;
    var_28h = 0x2e687d0 /* "注册解析错误" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_160h, var_158h);
    return;
}

/* CAS-Backend/biz/controller.DeleteTaskHandler | VA 0xe88e60 | task_controller.go:105
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: id1 int, sucess bool, id string, err error */
// WARNING: Removing unreachable block (ram,0x00e88f2b)
// WARNING: Removing unreachable block (ram,0x00e88fcc)
// WARNING: Removing unreachable block (ram,0x00e89004)
// WARNING: Removing unreachable block (ram,0x00e89010)
// WARNING: Removing unreachable block (ram,0x00e88f38)
// WARNING: Removing unreachable block (ram,0x00e88f70)
// WARNING: Removing unreachable block (ram,0x00e88f7c)
// WARNING: Removing unreachable block (ram,0x00e8905e)
// WARNING: Variable defined which should be unmapped: var_20h
// WARNING: [rz-ghidra] Detected overlap for variable var_49h

void __stdcall biz_controller_DeleteTaskHandler(int64_t arg_8h)
{
    undefined8 uVar1;
    undefined8 *puVar2;
    undefined8 extraout_RCX;
    undefined8 *extraout_R11;
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
    gin_gonic_gin___Context__Query(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0);
    strconv_Atoi(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, var_20h);
    uVar1 = runtime_makemap_small();
    puVar2 = (undefined8 *)
             runtime_mapassign_faststr(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                          in_stack_ffffffffffffffd8, unaff_retaddr);
    *puVar2 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, uVar1, puVar2[1]);
        *extraout_R11 = extraout_RCX;
    }
    puVar2[1] = 0x2e68d00 /* "无效的任务ID" */;
    runtime_convT(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8);
    gin_gonic_gin___Context__Render(in_stack_ffffffffffffffc0, in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, 
                 in_stack_ffffffffffffffd8);
    return;
}

/* CAS-Backend/biz/controller.GuaqiTaskHandler | VA 0xe89080 | task_controller.go:126
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: id1 int, id string */
void __stdcall biz_controller_GuaqiTaskHandler(int64_t arg_8h)
{
    char cVar1;
    undefined8 in_RAX;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar5 [16];
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    gin_gonic_gin___Context__Query();
    strconv_Atoi();
    cVar1 = biz_service_GuaqiTask();
    if (cVar1 == '\0') {
        iVar2 = runtime_makemap_small();
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar2, 0x116968c /* "code" */, 4);
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = puVar3[1];
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_01 = uVar4;
        }
        puVar3[1] = 0x2e64ac0;
        auVar5 = runtime_mapassign_faststr(0x10a4880, iVar2, 0x1168a54 /* "msg" */, 3);
        puVar3 = auVar5._0_8_;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar5._8_8_, puVar3[1]);
            *extraout_R11_02 = extraout_RCX_00;
        }
        puVar3[1] = 0x2e68d20 /* "任务挂起失败" */;
        var_18h = 0x10a4880;
        var_10h = iVar2;
        uVar4 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    } else {
        iVar2 = runtime_makemap_small();
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar2, 0x116968c /* "code" */, 4);
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = puVar3[1];
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar4;
        }
        puVar3[1] = 0x2e67830;
        auVar5 = runtime_mapassign_faststr(0x10a4880, iVar2, 0x1168a54 /* "msg" */, 3);
        puVar3 = auVar5._0_8_;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar5._8_8_, puVar3[1]);
            *extraout_R11_00 = extraout_RCX;
        }
        puVar3[1] = 0x2e68d10 /* "任务挂起成功" */;
        var_18h = 0x10a4880;
        var_10h = iVar2;
        uVar4 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    }
    return;
}

/* CAS-Backend/biz/controller.HuifuTaskHandler | VA 0xe892a0 | task_controller.go:144
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: id1 int, id string */
void __stdcall biz_controller_HuifuTaskHandler(int64_t arg_8h)
{
    char cVar1;
    undefined8 in_RAX;
    int64_t iVar2;
    undefined8 *puVar3;
    undefined8 uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar5 [16];
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    gin_gonic_gin___Context__Query();
    strconv_Atoi();
    cVar1 = biz_service_HuifuTask();
    if (cVar1 == '\0') {
        iVar2 = runtime_makemap_small();
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar2, 0x116968c /* "code" */, 4);
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = puVar3[1];
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_01 = uVar4;
        }
        puVar3[1] = 0x2e64ac0;
        auVar5 = runtime_mapassign_faststr(0x10a4880, iVar2, 0x1168a54 /* "msg" */, 3);
        puVar3 = auVar5._0_8_;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar5._8_8_, puVar3[1]);
            *extraout_R11_02 = extraout_RCX_00;
        }
        puVar3[1] = 0x2e68d40 /* "任务恢复失败" */;
        var_18h = 0x10a4880;
        var_10h = iVar2;
        uVar4 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    } else {
        iVar2 = runtime_makemap_small();
        puVar3 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar2, 0x116968c /* "code" */, 4);
        *puVar3 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar4 = puVar3[1];
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar4;
        }
        puVar3[1] = 0x2e67830;
        auVar5 = runtime_mapassign_faststr(0x10a4880, iVar2, 0x1168a54 /* "msg" */, 3);
        puVar3 = auVar5._0_8_;
        *puVar3 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar3 = (undefined8 *)runtime_gcWriteBarrier1(puVar3, auVar5._8_8_, puVar3[1]);
            *extraout_R11_00 = extraout_RCX;
        }
        puVar3[1] = 0x2e68d30 /* "任务恢复成功" */;
        var_18h = 0x10a4880;
        var_10h = iVar2;
        uVar4 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar4);
    }
    return;
}

/* CAS-Backend/biz/controller.GetAutoTaskScheduleStatusHandler | VA 0xe894c0 | task_controller.go:162
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_29h

void __stdcall biz_controller_GetAutoTaskScheduleStatusHandler(int64_t arg_8h, int64_t arg_30h)
{
    undefined8 uVar1;
    uint8_t uVar2;
    undefined8 in_RAX;
    int64_t iVar3;
    undefined8 *puVar4;
    undefined8 uVar5;
    undefined8 extraout_RCX;
    int64_t extraout_RCX_00;
    int64_t iVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    iVar3 = runtime_makemap_small();
    auVar7 = runtime_mapassign_faststr(0x10a4880, iVar3, 0x116968c /* "code" */, 4);
    puVar4 = auVar7._0_8_;
    *puVar4 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        puVar4 = (undefined8 *)runtime_gcWriteBarrier1(puVar4, auVar7._8_8_, puVar4[1]);
        *extraout_R11 = extraout_RCX;
    }
    puVar4[1] = 0x2e67830;
    uVar5 = runtime_makemap_small();
    uVar2 = pkg_diapdu_IsAutoTaskSchedulerRunning();
    puVar4 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar5, 0x1172d22 /* "running" */, 7);
    *puVar4 = 0x1042d20;
    iVar6 = (uint64_t)uVar2 * 8 + 0xf7a720;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = puVar4[1];
        puVar4 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_00 = uVar1;
        iVar6 = extraout_RCX_00;
    }
    puVar4[1] = iVar6;
    puVar4 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar3, 0x1169698 /* "data" */, 4);
    *puVar4 = 0x10a4880;
    if (*(int32_t *)0x355db50 != 0) {
        puVar4 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_01 = uVar5;
        extraout_R11_01[1] = puVar4[1];
    }
    puVar4[1] = uVar5;
    var_18h = 0x10a4880;
    var_10h = iVar3;
    uVar5 = runtime_convT(0x10cbee0, &var_18h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar5);
    return;
}

/* CAS-Backend/biz/controller.AutoTaskScheduleHandler | VA 0xe89640 | task_controller.go:172
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: already bool, err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_41h

void __stdcall biz_controller_AutoTaskScheduleHandler(int64_t arg_8h, int64_t arg_48h)
{
    undefined8 uVar1;
    char cVar2;
    uint8_t uVar3;
    undefined8 in_RAX;
    int64_t iVar4;
    undefined8 *puVar5;
    undefined8 uVar6;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t extraout_RCX_03;
    int64_t iVar7;
    int64_t extraout_RBX;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    undefined8 *extraout_R11_07;
    undefined8 *extraout_R11_08;
    undefined8 *extraout_R11_09;
    undefined8 *extraout_R11_10;
    int64_t unaff_R14;
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
    cVar2 = pkg_diapdu_StartAutoTaskScheduler(5000000000, 3000000000);
    if (extraout_RBX != 0) {
        iVar4 = runtime_makemap_small();
        auVar8 = runtime_mapassign_faststr(0x10a4880, iVar4, 0x116968c /* "code" */, 4);
        puVar5 = auVar8._0_8_;
        *puVar5 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar8._8_8_, puVar5[1]);
            *extraout_R11_07 = extraout_RCX_02;
        }
        puVar5[1] = 0x2e64ac0;
        (**(code **)(extraout_RBX + 0x18))(extraout_RCX);
        uVar6 = runtime_convTstring();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x1168a54 /* "msg" */, 3);
        *puVar5 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_08 = uVar6;
            extraout_R11_08[1] = puVar5[1];
        }
        puVar5[1] = uVar6;
        uVar6 = runtime_makemap_small();
        uVar3 = pkg_diapdu_IsAutoTaskSchedulerRunning();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar6, 0x1172d22 /* "running" */, 7);
        *puVar5 = 0x1042d20;
        iVar7 = (uint64_t)uVar3 * 8 + 0xf7a720;
        if (*(int32_t *)0x355db50 != 0) {
            uVar1 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_09 = uVar1;
            iVar7 = extraout_RCX_03;
        }
        puVar5[1] = iVar7;
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x1169698 /* "data" */, 4);
        *puVar5 = 0x10a4880;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_10 = uVar6;
            extraout_R11_10[1] = puVar5[1];
        }
        puVar5[1] = uVar6;
        var_18h = 0x10a4880;
        var_10h = iVar4;
        uVar6 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
        return;
    }
    if (cVar2 == '\0') {
        iVar4 = runtime_makemap_small();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x116968c /* "code" */, 4);
        *puVar5 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar6 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_03 = uVar6;
        }
        puVar5[1] = 0x2e67830;
        auVar8 = runtime_mapassign_faststr(0x10a4880, iVar4, 0x1168a54 /* "msg" */, 3);
        puVar5 = auVar8._0_8_;
        *puVar5 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar8._8_8_, puVar5[1]);
            *extraout_R11_04 = extraout_RCX_01;
        }
        puVar5[1] = 0x2e68d60 /* "自动任务调度已启动" */;
        uVar6 = runtime_makemap_small();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar6, 0x1172d22 /* "running" */, 7);
        *puVar5 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar1 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_05 = uVar1;
        }
        puVar5[1] = 0xf7a728;
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x1169698 /* "data" */, 4);
        *puVar5 = 0x10a4880;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_06 = uVar6;
            extraout_R11_06[1] = puVar5[1];
        }
        puVar5[1] = uVar6;
        var_18h = 0x10a4880;
        var_10h = iVar4;
        uVar6 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
        return;
    }
    iVar4 = runtime_makemap_small();
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x116968c /* "code" */, 4);
    *puVar5 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar6 = puVar5[1];
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11 = uVar6;
    }
    puVar5[1] = 0x2e67830;
    auVar8 = runtime_mapassign_faststr(0x10a4880, iVar4, 0x1168a54 /* "msg" */, 3);
    puVar5 = auVar8._0_8_;
    *puVar5 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar8._8_8_, puVar5[1]);
        *extraout_R11_00 = extraout_RCX_00;
    }
    puVar5[1] = 0x2e68d50 /* "自动任务调度已在运行" */;
    uVar6 = runtime_makemap_small();
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar6, 0x1172d22 /* "running" */, 7);
    *puVar5 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = puVar5[1];
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_01 = uVar1;
    }
    puVar5[1] = 0xf7a728;
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x1169698 /* "data" */, 4);
    *puVar5 = 0x10a4880;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_02 = uVar6;
        extraout_R11_02[1] = puVar5[1];
    }
    puVar5[1] = uVar6;
    var_18h = 0x10a4880;
    var_10h = iVar4;
    uVar6 = runtime_convT(0x10cbee0, &var_18h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
    return;
}

/* CAS-Backend/biz/controller.StopAutoTaskScheduleHandler | VA 0xe89b60 | task_controller.go:198
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: wasRunning bool, err error */
// WARNING: [rz-ghidra] Detected overlap for variable var_41h

void __stdcall biz_controller_StopAutoTaskScheduleHandler(int64_t arg_8h, int64_t arg_48h)
{
    undefined8 uVar1;
    char cVar2;
    uint8_t uVar3;
    undefined8 in_RAX;
    int64_t iVar4;
    undefined8 *puVar5;
    undefined8 uVar6;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    undefined8 extraout_RCX_02;
    int64_t extraout_RCX_03;
    int64_t iVar7;
    int64_t extraout_RBX;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    undefined8 *extraout_R11_06;
    undefined8 *extraout_R11_07;
    undefined8 *extraout_R11_08;
    undefined8 *extraout_R11_09;
    undefined8 *extraout_R11_10;
    int64_t unaff_R14;
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
    cVar2 = pkg_diapdu_StopAutoTaskScheduler();
    if (extraout_RBX != 0) {
        iVar4 = runtime_makemap_small();
        auVar8 = runtime_mapassign_faststr(0x10a4880, iVar4, 0x116968c /* "code" */, 4);
        puVar5 = auVar8._0_8_;
        *puVar5 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar8._8_8_, puVar5[1]);
            *extraout_R11_07 = extraout_RCX_02;
        }
        puVar5[1] = 0x2e64ac0;
        (**(code **)(extraout_RBX + 0x18))(extraout_RCX);
        uVar6 = runtime_convTstring();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x1168a54 /* "msg" */, 3);
        *puVar5 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_08 = uVar6;
            extraout_R11_08[1] = puVar5[1];
        }
        puVar5[1] = uVar6;
        uVar6 = runtime_makemap_small();
        uVar3 = pkg_diapdu_IsAutoTaskSchedulerRunning();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar6, 0x1172d22 /* "running" */, 7);
        *puVar5 = 0x1042d20;
        iVar7 = (uint64_t)uVar3 * 8 + 0xf7a720;
        if (*(int32_t *)0x355db50 != 0) {
            uVar1 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_09 = uVar1;
            iVar7 = extraout_RCX_03;
        }
        puVar5[1] = iVar7;
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x1169698 /* "data" */, 4);
        *puVar5 = 0x10a4880;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_10 = uVar6;
            extraout_R11_10[1] = puVar5[1];
        }
        puVar5[1] = uVar6;
        var_18h = 0x10a4880;
        var_10h = iVar4;
        uVar6 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
        return;
    }
    if (cVar2 == '\0') {
        iVar4 = runtime_makemap_small();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x116968c /* "code" */, 4);
        *puVar5 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            uVar6 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_03 = uVar6;
        }
        puVar5[1] = 0x2e67830;
        auVar8 = runtime_mapassign_faststr(0x10a4880, iVar4, 0x1168a54 /* "msg" */, 3);
        puVar5 = auVar8._0_8_;
        *puVar5 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar8._8_8_, puVar5[1]);
            *extraout_R11_04 = extraout_RCX_01;
        }
        puVar5[1] = 0x2e68d70 /* "自动任务调度未在运行" */;
        uVar6 = runtime_makemap_small();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar6, 0x1172d22 /* "running" */, 7);
        *puVar5 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar1 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_05 = uVar1;
        }
        puVar5[1] = 0xf7a720;
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x1169698 /* "data" */, 4);
        *puVar5 = 0x10a4880;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_06 = uVar6;
            extraout_R11_06[1] = puVar5[1];
        }
        puVar5[1] = uVar6;
        var_18h = 0x10a4880;
        var_10h = iVar4;
        uVar6 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
        return;
    }
    iVar4 = runtime_makemap_small();
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x116968c /* "code" */, 4);
    *puVar5 = 0x1042b60;
    if (*(int32_t *)0x355db50 != 0) {
        uVar6 = puVar5[1];
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11 = uVar6;
    }
    puVar5[1] = 0x2e67830;
    auVar8 = runtime_mapassign_faststr(0x10a4880, iVar4, 0x1168a54 /* "msg" */, 3);
    puVar5 = auVar8._0_8_;
    *puVar5 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar8._8_8_, puVar5[1]);
        *extraout_R11_00 = extraout_RCX_00;
    }
    puVar5[1] = 0x2e67e70 /* "自动任务调度已停止" */;
    uVar6 = runtime_makemap_small();
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, uVar6, 0x1172d22 /* "running" */, 7);
    *puVar5 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        uVar1 = puVar5[1];
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_01 = uVar1;
    }
    puVar5[1] = 0xf7a720;
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, iVar4, 0x1169698 /* "data" */, 4);
    *puVar5 = 0x10a4880;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_02 = uVar6;
        extraout_R11_02[1] = puVar5[1];
    }
    puVar5[1] = uVar6;
    var_18h = 0x10a4880;
    var_10h = iVar4;
    uVar6 = runtime_convT(0x10cbee0, &var_18h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
    return;
}

/* CAS-Backend/biz/controller.UpdateTaskHandler | VA 0xe8a060 | task_controller.go:223
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ta *CAS-Backend/biz/controller.TaskRequest, success bool, t CAS-Backend/biz/dao.Task, ~r0.data *uint8, ~r0.itab uintptr, err error */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: [rz-ghidra] Removing arg arg_208h because it doesn't fit into ProtoModel

void __stdcall biz_controller_UpdateTaskHandler(int64_t arg_8h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 *puVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t iVar5;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar7 [16];
    int64_t var_250h;
    undefined auStack_1c0 [112];
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
    
    while (auStack_1c0 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe8a5f1;
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x113c760);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar4 & **(uint64_t **)0xfbb410;
            if ((*(uint64_t **)0xfbb410)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb410)[uVar6 * 2 + 2];
                goto code_r0x00e8a0c5;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb410)[uVar6 * 2 + 1] != 0);
        var_50h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(0xfbb410);
        iVar5 = var_50h;
    }
code_r0x00e8a0c5:
    auVar7 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x10266a0, var_10h);
    var_148h = auVar7._8_8_;
    var_150h = auVar7._0_8_;
    if (var_150h == 0) {
        var_38h = runtime_convT(0x113c760, var_10h);
        var_40h = 0x113c760;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        runtime_duffzero_offset_280();
        var_140h = *(int64_t *)var_10h;
        var_138h = *(int64_t *)(var_10h + 8);
        var_130h = *(int64_t *)(var_10h + 0x10);
        var_128h = *(int64_t *)(var_10h + 0x18);
        var_120h = *(int64_t *)(var_10h + 0x20);
        var_118h = *(int64_t *)(var_10h + 0x28);
        var_110h = *(int64_t *)(var_10h + 0x30);
        var_108h = *(int64_t *)(var_10h + 0x38);
        var_100h = *(int64_t *)(var_10h + 0x40);
        var_f8h = *(int64_t *)(var_10h + 0x48);
        var_f0h = *(int64_t *)(var_10h + 0x50);
        var_e8h = *(int64_t *)(var_10h + 0x58);
        var_c8h._0_1_ = *(undefined *)(var_10h + 0x78);
        var_c0h = *(int64_t *)(var_10h + 0x80);
        var_b8h = *(int64_t *)(var_10h + 0x88);
        var_b0h = *(int64_t *)(var_10h + 0x90);
        var_a8h = *(int64_t *)(var_10h + 0x98);
        var_a0h = *(int64_t *)(var_10h + 0xa0);
        var_98h = *(int64_t *)(var_10h + 0xa8);
        var_90h = *(int64_t *)(var_10h + 0xb0);
        var_88h = *(int64_t *)(var_10h + 0xb8);
        var_70h = *(int64_t *)(var_10h + 0xc0);
        var_68h = *(int64_t *)(var_10h + 200);
        var_60h._0_1_ = *(undefined *)(var_10h + 0xd0);
        var_80h = *(int64_t *)(var_10h + 0xd8);
        var_78h = *(int64_t *)(var_10h + 0xe0);
        var_58h = *(int64_t *)(var_10h + 0xf8);
        runtime_duffcopy_offset_686();
        cVar1 = biz_service_UpdateTask();
        if (cVar1 == '\0') {
            var_48h = runtime_makemap_small();
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x116968c /* "code" */, 4);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_01 = uVar3;
            }
            puVar2[1] = 0x2e64ac0;
            auVar7 = runtime_mapassign_faststr(0x10a4880, var_48h, 0x1168a54 /* "msg" */, 3);
            puVar2 = auVar7._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                *extraout_R11_02 = extraout_RCX_00;
            }
            puVar2[1] = 0x2e68d90 /* "任务更新失败" */;
            var_20h = 0x10a4880;
            var_18h = var_48h;
            uVar3 = runtime_convT(0x10cbee0, &var_20h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        } else {
            var_48h = runtime_makemap_small();
            puVar2 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_48h, 0x116968c /* "code" */, 4);
            *puVar2 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                uVar3 = puVar2[1];
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11 = uVar3;
            }
            puVar2[1] = 0x2e67830;
            auVar7 = runtime_mapassign_faststr(0x10a4880, var_48h, 0x1168a54 /* "msg" */, 3);
            puVar2 = auVar7._0_8_;
            *puVar2 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
                *extraout_R11_00 = extraout_RCX;
            }
            puVar2[1] = 0x2e68d80 /* "任务更新成功" */;
            var_20h = 0x10a4880;
            var_18h = var_48h;
            uVar3 = runtime_convT(0x10cbee0, &var_20h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        }
        return;
    }
    var_30h = 0x1042920;
    var_28h = 0x2e687d0 /* "注册解析错误" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_30h, 1, 1);
    gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_150h, var_148h);
    return;
}

/* CAS-Backend/biz/controller.GetAllTaskHandler | VA 0xe8a600 | task_controller.go:299
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: success bool, num int64, page1 int, size1 int, page string, size string, search1 string, status string, priority string, ts []CAS-Backend/biz/dao.Task, tas []CAS-Backend/biz/controller.TaskRequest */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_GetAllTaskHandler(int64_t arg_8h)
{
    undefined8 uVar1;
    char cVar2;
    undefined8 in_RAX;
    undefined8 uVar3;
    undefined8 uVar4;
    uint64_t extraout_RAX;
    int64_t extraout_RAX_00;
    uint64_t uVar5;
    undefined8 *puVar6;
    int64_t extraout_RCX;
    undefined8 extraout_RCX_00;
    int64_t iVar7;
    int64_t extraout_RCX_01;
    int64_t iVar8;
    int64_t extraout_RCX_02;
    uint64_t extraout_RCX_03;
    undefined8 extraout_RCX_04;
    int64_t iVar9;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    uint64_t extraout_RBX_01;
    undefined8 uVar10;
    undefined8 extraout_RSI;
    undefined8 extraout_RSI_00;
    undefined8 extraout_RSI_01;
    int64_t extraout_RDI;
    int64_t iVar11;
    int64_t iVar12;
    int64_t extraout_R8;
    int64_t extraout_R8_00;
    undefined8 extraout_R9;
    int64_t extraout_R9_00;
    uint64_t uVar13;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    undefined8 *extraout_R11_02;
    undefined8 *extraout_R11_03;
    int64_t *extraout_R11_04;
    int64_t *extraout_R11_05;
    int64_t *extraout_R11_06;
    int64_t *extraout_R11_07;
    int64_t unaff_R14;
    undefined auVar14 [16];
    undefined auVar15 [16];
    undefined auVar16 [16];
    undefined auVar17 [16];
    int64_t var_310h;
    int64_t var_2c0h;
    int64_t var_2b8h;
    int64_t var_2b0h;
    int64_t var_2a8h;
    int64_t var_2a0h;
    int64_t var_298h;
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
    int64_t var_48h;
    int64_t var_40h;
    int64_t var_38h;
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (&var_280h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe8aede;
        runtime_morestack_noctxt_abi0();
    }
    auVar14 = gin_gonic_gin___Context__DefaultQuery();
    var_270h = auVar14._8_8_;
    var_38h = auVar14._0_8_;
    auVar14 = gin_gonic_gin___Context__DefaultQuery(in_RAX, 0x1169694 /* "size" */, 4, 0x116859e /* "20" */, 2);
    var_158h = auVar14._0_8_;
    auVar15 = gin_gonic_gin___Context__Query(in_RAX, 0x116f489, 6);
    var_150h = auVar15._0_8_;
    auVar16 = gin_gonic_gin___Context__Query(in_RAX, 0x116f267, 6);
    var_160h = auVar16._0_8_;
    auVar17 = gin_gonic_gin___Context__Query(in_RAX, 0x1174283, 8);
    var_280h = auVar17._8_8_;
    var_40h = auVar17._0_8_;
    var_278h = strconv_Atoi(var_38h, var_270h);
    uVar3 = strconv_Atoi(var_158h, auVar14._8_8_);
    cVar2 = biz_service_SlAllTask(var_278h, uVar3, var_150h, auVar15._8_8_, var_160h, auVar16._8_8_, var_40h, var_280h);
    if (cVar2 == '\0') {
        var_20h = runtime_makemap_small();
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x116f48f /* "sucess" */, 6);
        *puVar6 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar3 = puVar6[1];
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11 = uVar3;
        }
        puVar6[1] = 0xf7a720;
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x1172cf1 /* "message" */, 7);
        *puVar6 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_00 = extraout_RSI;
        }
        puVar6[1] = 0x2e68db0 /* "任务获取失败" */;
        auVar14 = runtime_mapassign_faststr(0x10a4880, var_20h, 0x116a5c1 /* "error" */, 5);
        puVar6 = auVar14._0_8_;
        *puVar6 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, auVar14._8_8_, puVar6[1]);
            *extraout_R11_01 = extraout_RCX_00;
        }
        puVar6[1] = 0x2e68a30 /* "内部错误" */;
        var_18h = 0x10a4880;
        var_10h = var_20h;
        uVar3 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    } else {
        uVar4 = 0;
        iVar9 = 0;
        uVar10 = 0;
        iVar8 = extraout_RCX;
        iVar7 = extraout_RDI;
        var_268h = extraout_RBX;
        while (0 < iVar7) {
            var_260h = iVar7;
            var_28h = iVar8;
            runtime_duffcopy_offset_686();
            runtime_duffzero_offset_276();
            var_140h = var_258h;
            var_138h = var_250h;
            var_130h = var_248h;
            var_128h = var_240h;
            var_120h = var_238h;
            var_118h = var_230h;
            var_110h = var_228h;
            var_c8h._0_1_ = (undefined)var_1e0h;
            var_c0h = var_1d8h;
            var_b8h = var_1d0h;
            var_f8h = var_210h;
            var_f0h = var_208h;
            var_e8h = var_200h;
            var_e0h = var_1f8h;
            var_d8h = var_1f0h;
            var_d0h = var_1e8h;
            var_68h = var_198h;
            var_60h = var_190h;
            var_90h = var_1a8h;
            var_88h = var_1a0h;
            var_80h = var_188h;
            var_78h = var_180h;
            var_70h._0_1_ = (undefined)var_178h;
            var_48h = var_170h;
            var_108h = var_220h;
            var_100h = var_218h;
            var_b0h = var_1c8h;
            var_a8h = var_1c0h;
            var_a0h = var_1b8h;
            var_98h = var_1b0h;
            uVar13 = extraout_R9_00 + 1;
            uVar5 = extraout_RAX;
            iVar7 = extraout_RCX_02;
            iVar8 = extraout_RBX_00;
            uVar10 = extraout_RSI_00;
            iVar12 = extraout_R8_00;
            if (extraout_RAX < uVar13) {
                runtime_growslice(iVar9, uVar13, extraout_RAX, 1, 0x113c760);
                uVar5 = extraout_RCX_03;
                iVar7 = var_28h;
                iVar9 = extraout_RAX_00;
                iVar8 = var_268h;
                uVar10 = extraout_RSI_01;
                iVar12 = var_260h;
                uVar13 = extraout_RBX_01;
            }
            iVar11 = iVar9 + (uVar13 - 1) * 0x100;
            if (*(int32_t *)0x355db50 != 0) {
                var_148h = iVar9;
                var_30h = iVar11;
                runtime_wbMove(0x113c760, iVar11, &var_140h, iVar11, uVar10, iVar12);
                iVar7 = var_28h;
                iVar9 = var_148h;
                iVar8 = var_268h;
                iVar11 = var_30h;
                iVar12 = var_260h;
            }
            uVar4 = runtime_duffcopy_offset_672(uVar5, iVar8, iVar7, iVar11, &var_140h, iVar12, uVar13);
            iVar8 = extraout_RCX_01 + 0xf0;
            uVar10 = extraout_R9;
            iVar7 = extraout_R8 + -1;
        }
        var_168h = iVar9;
        var_20h = runtime_makemap_small();
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x116f48f /* "sucess" */, 6);
        *puVar6 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar1 = puVar6[1];
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_02 = uVar1;
        }
        puVar6[1] = 0xf7a728;
        auVar14 = runtime_mapassign_faststr(0x10a4880, var_20h, 0x1172cf1 /* "message" */, 7);
        puVar6 = auVar14._0_8_;
        *puVar6 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier1(puVar6, auVar14._8_8_, puVar6[1]);
            *extraout_R11_03 = extraout_RCX_04;
        }
        puVar6[1] = 0x2e68da0 /* "任务获取成功" */;
        var_28h = runtime_convT64(var_268h);
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x116a760 /* "total" */, 5);
        *puVar6 = 0x1042ae0;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_04 = var_28h;
            extraout_R11_04[1] = puVar6[1];
        }
        puVar6[1] = var_28h;
        var_28h = runtime_convT64(var_278h);
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x1169690 /* "page" */, 4);
        *puVar6 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_05 = var_28h;
            extraout_R11_05[1] = puVar6[1];
        }
        puVar6[1] = var_28h;
        var_28h = runtime_convT64(uVar3);
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x1169694 /* "size" */, 4);
        *puVar6 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_06 = var_28h;
            extraout_R11_06[1] = puVar6[1];
        }
        puVar6[1] = var_28h;
        var_28h = runtime_convTslice(var_168h, uVar10, uVar4);
        puVar6 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_20h, 0x1169698 /* "data" */, 4);
        *puVar6 = 0x1037900;
        if (*(int32_t *)0x355db50 != 0) {
            puVar6 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_07 = var_28h;
            extraout_R11_07[1] = puVar6[1];
        }
        puVar6[1] = var_28h;
        var_18h = 0x10a4880;
        var_10h = var_20h;
        uVar3 = runtime_convT(0x10cbee0, &var_18h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    }
    return;
}

/* CAS-Backend/biz/controller.TaskStatusHandler | VA 0xe8af00 | task_controller.go:673
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: taskId int, taskid string, taskids []string, taskName string, err error, tasts []struct { TaskID string "json:\"task_id\""; Status int "json:\"status\""; Type int "json:\"type\"" }, taskListResponse *CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, st int, listRes *CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes, i int, suc_slt bool */
// WARNING: Variable defined which should be unmapped: var_8h

void __stdcall biz_controller_TaskStatusHandler(int64_t arg_8h, int64_t arg_b0h)
{
    undefined8 uVar1;
    int64_t iVar2;
    char cVar3;
    undefined8 in_RAX;
    int64_t iVar4;
    int64_t extraout_RAX;
    undefined8 *puVar5;
    undefined8 uVar6;
    int64_t iVar7;
    int64_t extraout_RCX;
    int64_t iVar8;
    int64_t extraout_RBX;
    int64_t extraout_RBX_00;
    int64_t iVar9;
    int64_t *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    int64_t *extraout_R11_02;
    int64_t unaff_R14;
    undefined auVar10 [16];
    int64_t var_278h;
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
    
    while (&var_1e8h <= *(int64_t **)(unaff_R14 + 0x10)) {
        var_8h = 0xe8bbeb;
        runtime_morestack_noctxt_abi0();
    }
    gin_gonic_gin___Context__Query();
    iVar4 = strconv_Atoi();
    gin_gonic_gin___Context__GetQueryArray(in_RAX, 0x1172d1b /* "taskids" */, 7);
    var_1e8h = extraout_RAX;
    auVar10 = gin_gonic_gin___Context__Query(in_RAX, 0x1175486 /* "task_name" */, 9);
    iVar9 = auVar10._8_8_;
    var_1d8h = auVar10._0_8_;
    var_88h = runtime_convT64(iVar4);
    var_90h = 0x1042b60;
    var_78h = runtime_convTslice(var_1e8h, extraout_RBX, extraout_RCX);
    var_80h = 0x1038980;
    var_68h = runtime_convTstring(var_1d8h, iVar9);
    var_70h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a4801 /* "[任务状态] 收到查询 task_id=%d taskids=%v task_name=%q\n" */, 0x3f, &var_90h, 3, 3);
    if ((extraout_RBX == 0) && (iVar9 != 0)) {
        var_1c8h = 0;
        iVar8 = *(int64_t *)0x3516458;
        uVar6 = *(undefined8 *)0x3516450;
        if ((*(int64_t *)0x3516458 == 0) &&
           (iVar8 = *(int64_t *)0xfb5e08, uVar6 = *(undefined8 *)0xfb5e00, *(int64_t *)0xfb5e08 == 0)) {
            iVar8 = 9;
            uVar6 = 0x1175303;
        }
        var_28h = 0xe8bca0;
        var_20h = var_1d8h;
        var_10h = (int64_t)&var_1c8h;
        var_18h = iVar9;
        auVar10 = pkg_agvcontrol_DoWithConn(uVar6, iVar8, 0x4b06, &var_28h);
        var_98h = auVar10._8_8_;
        if (auVar10._0_8_ == 0) {
            iVar8 = *(int64_t *)(var_1c8h + 0x58);
            var_b8h = runtime_convTstring(var_1d8h, iVar9);
            var_c0h = 0x1042920;
            var_a8h = runtime_convT64(iVar8);
            var_b0h = 0x1042b60;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1193dfd, 0x26, &var_c0h, 2, 2);
            if (((0 < iVar4) && (*(int64_t *)0x355d3f0 != iVar8)) && (cVar3 = biz_dao_UpdateTaskStatusByID(), cVar3 != '\0')) {
                *(int64_t *)0x355d3f0 = iVar8;
            }
            var_1b8h = runtime_makemap_small();
            var_1c0h = runtime_convT64(*(int64_t *)0x355d3f0);
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_1b8h, 0x116f267 /* "status" */, 6);
            *puVar5 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_00 = var_1c0h;
                extraout_R11_00[1] = puVar5[1];
            }
            puVar5[1] = var_1c0h;
            var_38h = 0x10a4880;
            var_30h = var_1b8h;
            uVar6 = runtime_convT(0x10cbee0, &var_38h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
            return;
        }
        var_a0h = *(int64_t *)(auVar10._0_8_ + 8);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1196da1 /* "[任务状态] 任务链查询失败: %v\n" */, 0x29, &var_a0h, 1, 1);
        var_1b8h = runtime_makemap_small();
        var_1c0h = runtime_convT64(*(int64_t *)0x355d3f0);
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_1b8h, 0x116f267 /* "status" */, 6);
        *puVar5 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11 = var_1c0h;
            extraout_R11[1] = puVar5[1];
        }
        puVar5[1] = var_1c0h;
        var_38h = 0x10a4880;
        var_30h = var_1b8h;
        uVar6 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
        return;
    }
    var_1d0h = 0;
    iVar9 = *(int64_t *)0x3516458;
    uVar6 = *(undefined8 *)0x3516450;
    if ((*(int64_t *)0x3516458 == 0) &&
       (iVar9 = *(int64_t *)0xfb5e08, uVar6 = *(undefined8 *)0xfb5e00, *(int64_t *)0xfb5e08 == 0)) {
        iVar9 = 9;
        uVar6 = 0x1175303;
    }
    var_60h = 0xe8bc00;
    var_58h = var_1e8h;
    var_40h = (int64_t)&var_1d0h;
    var_50h = extraout_RBX;
    var_48h = extraout_RCX;
    auVar10 = pkg_agvcontrol_DoWithConn(uVar6, iVar9, 0x4b04, &var_60h);
    var_c8h = auVar10._8_8_;
    if (auVar10._0_8_ != 0) {
        var_d0h = *(int64_t *)(auVar10._0_8_ + 8);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118dba8 /* "[任务状态] 查询失败: %v\n" */, 0x20, &var_d0h, 1, 1);
        var_1b8h = runtime_makemap_small();
        var_1c0h = runtime_convT64(*(int64_t *)0x355d3f0);
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_1b8h, 0x116f267 /* "status" */, 6);
        *puVar5 = 0x1042b60;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_01 = var_1c0h;
            extraout_R11_01[1] = puVar5[1];
        }
        puVar5[1] = var_1c0h;
        var_38h = 0x10a4880;
        var_30h = var_1b8h;
        uVar6 = runtime_convT(0x10cbee0, &var_38h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
        return;
    }
    puVar5 = *(undefined8 **)(var_1d0h + 0xb8);
    iVar9 = *(int64_t *)(var_1d0h + 0xc0);
    var_1e0h = (int64_t)puVar5;
    for (iVar8 = iVar9; 0 < iVar8; iVar8 = iVar8 + -1) {
        uVar6 = puVar5[2];
        uVar1 = puVar5[3];
        var_1c0h = (int64_t)puVar5;
        var_f8h = runtime_convTstring(*puVar5, puVar5[1]);
        var_100h = 0x1042920;
        var_e8h = runtime_convT64(uVar6);
        var_f0h = 0x1042b60;
        var_d8h = runtime_convT64(uVar1);
        var_e0h = 0x1042b60;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11993a7, 0x2c, &var_100h, 3, 3);
        puVar5 = (undefined8 *)(var_1c0h + 0x20);
        var_c8h = extraout_RBX_00;
    }
    runtime_duffzero_offset_336(iVar9, var_c8h, iVar8, &var_180h, var_1e0h);
    var_148h = runtime_convTstring(*(undefined8 *)(var_1d0h + 0x38), *(undefined8 *)(var_1d0h + 0x40));
    var_150h = 0x1042920;
    var_138h = runtime_convTstring(*(undefined8 *)(var_1d0h + 0x88), *(undefined8 *)(var_1d0h + 0x90));
    var_140h = 0x1042920;
    var_128h = runtime_convTstring(*(undefined8 *)(var_1d0h + 0xa8), *(undefined8 *)(var_1d0h + 0xb0));
    var_130h = 0x1042920;
    var_118h = runtime_convT32(*(undefined4 *)(var_1d0h + 0x70));
    var_120h = 0x1042ca0;
    var_108h = runtime_convTstring(*(undefined8 *)(var_1d0h + 0x60), *(undefined8 *)(var_1d0h + 0x68));
    var_110h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11a76fd, 0x48, &var_150h, 5, 5);
    iVar8 = 0;
    do {
        if (iVar9 <= iVar8) {
code_r0x00e8bb05:
            var_1b8h = runtime_makemap_small();
            var_1c0h = runtime_convT64(*(int64_t *)0x355d3f0);
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_1b8h, 0x116f267 /* "status" */, 6);
            *puVar5 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_02 = var_1c0h;
                extraout_R11_02[1] = puVar5[1];
            }
            puVar5[1] = var_1c0h;
            var_38h = 0x10a4880;
            var_30h = var_1b8h;
            uVar6 = runtime_convT(0x10cbee0, &var_38h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
            return;
        }
        iVar7 = iVar8 * 0x20;
        iVar2 = *(int64_t *)(iVar7 + 0x10 + var_1e0h);
        if (iVar2 == 4) {
            if (iVar8 == iVar9 + -1) {
                *(int64_t *)0x355d3f0 = 4;
                cVar3 = biz_dao_UpdateTaskStatusByID(iVar4, 4);
                if (cVar3 == '\0') {
                    var_170h = 0x1042920;
                    var_168h = 0x2e68dd0 /* "更新状态失败4" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_170h, 1, 1);
                } else {
                    var_160h = 0x1042920;
                    var_158h = 0x2e68dc0 /* "任务完成" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_160h, 1, 1);
                }
                goto code_r0x00e8bb05;
            }
        } else {
            if ((((iVar2 == 3) || (iVar2 == 5)) || (iVar2 == 6)) && (*(int64_t *)0x355d3f0 != iVar2)) {
                cVar3 = biz_dao_UpdateTaskStatusByID(iVar4);
                if (cVar3 == '\0') {
                    *(int64_t *)0x355d3f0 = *(int64_t *)(iVar7 + 0x10 + var_1e0h);
                    var_190h = 0x1042920;
                    var_188h = 0x2e68df0 /* "更新状态失败3、5、6" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_190h, 1, 1);
                } else {
                    *(int64_t *)0x355d3f0 = *(int64_t *)(iVar7 + 0x10 + var_1e0h);
                    var_180h = 0x1042920;
                    var_178h = 0x2e68de0 /* "任务异常3、5、6" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_180h, 1, 1);
                }
                goto code_r0x00e8bb05;
            }
            if ((iVar2 == 2) && (*(int64_t *)0x355d3f0 != 2)) {
                cVar3 = biz_dao_UpdateTaskStatusByID(iVar4, 2);
                if (cVar3 == '\0') {
                    *(int64_t *)0x355d3f0 = *(int64_t *)(iVar7 + 0x10 + var_1e0h);
                    var_1b0h = 0x1042920;
                    var_1a8h = 0x2e68e10 /* "更新状态失败2" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_1b0h, 1, 1);
                } else {
                    *(int64_t *)0x355d3f0 = *(int64_t *)(iVar7 + 0x10 + var_1e0h);
                    var_1a0h = 0x1042920;
                    var_198h = 0x2e68e00 /* "任务运行" */;
                    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_1a0h, 1, 1);
                }
                goto code_r0x00e8bb05;
            }
        }
        iVar8 = iVar8 + 1;
    } while( true );
}

/* CAS-Backend/biz/controller.TaskStatusHandler.func1 | VA 0xe8bca0 | task_controller.go:684
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &listRes **CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes, res *CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes, taskName string, e error */
int64_t __stdcall
biz_controller_TaskStatusHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_30h)
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
    puVar1 = *(undefined8 **)(arg3 + 0x18);
    auVar3 = pkg_agvcontrol_SendRobotTaskListStatusReq();
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

/* CAS-Backend/biz/controller.TaskStatusHandler.func2 | VA 0xe8bc00 | task_controller.go:709
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &taskListResponse **CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, res *CAS-Backend/pkg/agvcontrol.RobotTaskStatusRes, taskids []string, e error */
int64_t __stdcall
biz_controller_TaskStatusHandler_func2
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_30h)
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

/* CAS-Backend/biz/controller.PauseNavigationHandler | VA 0xe8bd40 | task_controller.go:808
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ta *CAS-Backend/biz/controller.TaskRequest, err error, ~r0.data *uint8, ~r0.itab uintptr */
// WARNING: Removing unreachable block (ram,0x00e8bea2)

void __stdcall biz_controller_PauseNavigationHandler(int64_t arg_8h, int64_t arg_48h, int64_t arg_88h, int64_t arg_b8h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    int64_t iVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar5;
    undefined8 *extraout_R11;
    int64_t *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    undefined auVar6 [16];
    undefined auVar7 [16];
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
    
    while (&var_50h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x113c760);
    uVar2 = *(undefined8 *)0xfb77e8;
    uVar3 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar3 & **(uint64_t **)0xfbb430;
            if ((*(uint64_t **)0xfbb430)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb430)[uVar5 * 2 + 2];
                goto code_r0x00e8bda5;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb430)[uVar5 * 2 + 1] != 0);
        uVar3 = runtime_typeAssert(0xfbb430);
    }
code_r0x00e8bda5:
    auVar6 = (**(code **)(uVar3 + 0x18))(uVar2, *(undefined8 *)(in_RAX + 0x20), 0x10266a0, var_10h);
    if (auVar6._0_8_ != 0) {
        var_40h = 0x1042920;
        var_38h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar6._0_8_, auVar6._8_8_);
        return;
    }
    var_48h = runtime_convTstring(*(undefined8 *)(var_10h + 0xd8), *(undefined8 *)(var_10h + 0xe0));
    var_50h = 0x1042920;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    iVar4 = *(int64_t *)0x3516458;
    uVar2 = *(undefined8 *)0x3516450;
    if ((*(int64_t *)0x3516458 == 0) &&
       (iVar4 = *(int64_t *)0xfb5e08, uVar2 = *(undefined8 *)0xfb5e00, *(int64_t *)0xfb5e08 == 0)) {
        iVar4 = 9;
        uVar2 = 0x1175303;
    }
    auVar6 = pkg_agvcontrol_DoWithConn(uVar2, iVar4, 0x4b06, 0x2cd77b0);
    iVar4 = auVar6._0_8_;
    if (iVar4 != 0) {
        var_60h = *(int64_t *)(iVar4 + 8);
        var_58h = auVar6._8_8_;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183bc9 /* "暂停导航失败: %v\n" */, 0x17, &var_60h, 1, 1);
        var_18h = runtime_makemap_small();
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
        puVar1 = auVar7._0_8_;
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar7._8_8_, puVar1[1]);
            *extraout_R11 = extraout_RCX;
        }
        puVar1[1] = 0xf7a720;
        (**(code **)(iVar4 + 0x18))(auVar6._8_8_);
        var_20h = runtime_convTstring();
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_00 = var_20h;
            extraout_R11_00[1] = puVar1[1];
        }
        puVar1[1] = var_20h;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar2 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        return;
    }
    var_70h = 0x1042920;
    var_68h = 0x2e68e20 /* "暂停导航指令已下发，等待状态轮询确认" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_70h, 1, 1);
    var_18h = runtime_makemap_small();
    auVar6 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
    puVar1 = auVar6._0_8_;
    *puVar1 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
        *extraout_R11_01 = extraout_RCX_00;
    }
    puVar1[1] = 0xf7a728;
    var_30h = 0x10a4880;
    var_28h = var_18h;
    uVar2 = runtime_convT(0x10cbee0, &var_30h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
    return;
}

/* CAS-Backend/biz/controller.PauseNavigationHandler.func1 | VA 0xe91640 | task_controller.go:818
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: (no entries) */
// WARNING: [rz-ghidra] Detected overlap for variable var_5fh
// WARNING: [rz-ghidra] Detected overlap for variable var_5eh
// WARNING: [rz-ghidra] Detected overlap for variable var_5ch
// WARNING: [rz-ghidra] Detected overlap for variable var_56h
// WARNING: [rz-ghidra] Detected overlap for variable var_6fh
// WARNING: [rz-ghidra] Detected overlap for variable var_6eh
// WARNING: [rz-ghidra] Detected overlap for variable var_6ch
// WARNING: [rz-ghidra] Detected overlap for variable var_68h
// WARNING: [rz-ghidra] Detected overlap for variable var_66h
// WARNING: [rz-ghidra] Detected overlap for variable var_50h
// WARNING: [rz-ghidra] Detected overlap for variable var_62h
// WARNING: [rz-ghidra] Removing arg arg_4ah because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_52h

void __stdcall biz_controller_PauseNavigationHandler_func1(int64_t arg_8h, int64_t arg_10h)
{
    int64_t unaff_R14;
    int64_t in_stack_00000060;
    int64_t in_stack_ffffffffffffffe8;
    int64_t in_stack_fffffffffffffff0;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    pkg_agvcontrol_SendPauseNavigation(in_stack_ffffffffffffffe8, in_stack_fffffffffffffff0, in_stack_00000060);
    return;
}

/* CAS-Backend/biz/controller.ResumeNavigationHandler | VA 0xe8c1e0 | task_controller.go:830
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ta *CAS-Backend/biz/controller.TaskRequest, suc bool, err error, taskListResponse *CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes, ~r0.data *uint8, ~r0.itab uintptr */
void __stdcall biz_controller_ResumeNavigationHandler(int64_t arg_8h, int64_t arg_a0h)
{
    char cVar1;
    int64_t in_RAX;
    undefined8 *puVar2;
    undefined8 uVar3;
    uint64_t uVar4;
    int64_t iVar5;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    undefined8 extraout_RCX_01;
    uint64_t uVar6;
    undefined8 *extraout_R11;
    undefined8 *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    undefined auVar7 [16];
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
    var_10h = runtime_newobject(0x113c760);
    uVar4 = 0;
    iVar5 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar4 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar6 = uVar4 & **(uint64_t **)0xfbb450;
            if ((*(uint64_t **)0xfbb450)[uVar6 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar4 = (*(uint64_t **)0xfbb450)[uVar6 * 2 + 2];
                goto code_r0x00e8c245;
            }
            uVar4 = uVar4 + 1;
        } while ((*(uint64_t **)0xfbb450)[uVar6 * 2 + 1] != 0);
        var_b8h = *(int64_t *)0xfb77e8;
        uVar4 = runtime_typeAssert(0xfbb450);
        iVar5 = var_b8h;
    }
code_r0x00e8c245:
    auVar7 = (**(code **)(uVar4 + 0x18))(iVar5, *(undefined8 *)(in_RAX + 0x20), 0x10266a0, var_10h);
    if (auVar7._0_8_ != 0) {
        var_60h = 0x1042920;
        var_58h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_60h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar7._0_8_, auVar7._8_8_);
        return;
    }
    var_68h = runtime_convTstring(*(undefined8 *)(var_10h + 0xd8), *(undefined8 *)(var_10h + 0xe0));
    var_70h = 0x1042920;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_70h, 1, 1);
    var_c0h = 0;
    iVar5 = *(int64_t *)0x3516458;
    uVar3 = *(undefined8 *)0x3516450;
    if ((*(int64_t *)0x3516458 == 0) &&
       (iVar5 = *(int64_t *)0xfb5e08, uVar3 = *(undefined8 *)0xfb5e00, *(int64_t *)0xfb5e08 == 0)) {
        iVar5 = 9;
        uVar3 = 0x1175303;
    }
    var_40h = 0xe8c7e0;
    var_38h = var_10h;
    var_30h = (int64_t)&var_c0h;
    auVar7 = pkg_agvcontrol_DoWithConn(uVar3, iVar5, 0x4b06, &var_40h);
    var_78h = auVar7._8_8_;
    if (auVar7._0_8_ != 0) {
        var_80h = *(int64_t *)(auVar7._0_8_ + 8);
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183be0 /* "继续导航失败: %v\n" */, 0x17, &var_80h, 1, 1);
        var_28h = runtime_makemap_small();
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172d0d /* "success" */, 7);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11 = extraout_RCX;
        }
        puVar2[1] = 0xf7a720;
        var_50h = 0x10a4880;
        var_48h = var_28h;
        uVar3 = runtime_convT(0x10cbee0, &var_50h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
        return;
    }
    var_90h = 0x1042920;
    var_88h = 0x2e68e30 /* "继续导航成功" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_90h, 1, 1);
    *(undefined8 *)0x355d3f0 = *(undefined8 *)(var_c0h + 0x58);
    var_98h = runtime_convT64(*(undefined8 *)0x355d3f0);
    var_a0h = 0x1042b60;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117713f /* "状态：%v" */, 0xb, &var_a0h, 1, 1);
    cVar1 = biz_dao_UpdateTaskStatusByID(*(undefined8 *)var_10h, *(undefined8 *)0x355d3f0);
    if (cVar1 == '\0') {
        var_20h = 0x1042920;
        var_18h = 0x2e68e50 /* "状态更新失败成功" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_20h, 1, 1);
        var_28h = runtime_makemap_small();
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172d0d /* "success" */, 7);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11_01 = extraout_RCX_01;
        }
        puVar2[1] = 0xf7a720;
        var_50h = 0x10a4880;
        var_48h = var_28h;
        uVar3 = runtime_convT(0x10cbee0, &var_50h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    } else {
        var_b0h = 0x1042920;
        var_a8h = 0x2e68e40 /* "状态更新成功" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_b0h, 1, 1);
        var_28h = runtime_makemap_small();
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_28h, 0x1172d0d /* "success" */, 7);
        puVar2 = auVar7._0_8_;
        *puVar2 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar2 = (undefined8 *)runtime_gcWriteBarrier1(puVar2, auVar7._8_8_, puVar2[1]);
            *extraout_R11_00 = extraout_RCX_00;
        }
        puVar2[1] = 0xf7a728;
        var_50h = 0x10a4880;
        var_48h = var_28h;
        uVar3 = runtime_convT(0x10cbee0, &var_50h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar3);
    }
    return;
}

/* CAS-Backend/biz/controller.ResumeNavigationHandler.func1 | VA 0xe8c7e0 | task_controller.go:841
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: res *CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes, &ta *CAS-Backend/biz/controller.TaskRequest, &taskListResponse **CAS-Backend/pkg/agvcontrol.RobotTaskListStatusRes, e error, err error */
int64_t __stdcall
biz_controller_ResumeNavigationHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_30h, int64_t arg_38h)
{
    undefined8 *puVar1;
    int64_t iVar2;
    undefined8 in_RAX;
    int64_t iVar3;
    undefined8 uVar4;
    undefined8 unaff_RBX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar5 [16];
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0();
    }
    puVar1 = *(undefined8 **)(arg3 + 0x10);
    iVar2 = *(int64_t *)(arg3 + 8);
    iVar3 = pkg_agvcontrol_SendResumeNavigation();
    if (iVar3 != 0) {
        return iVar3;
    }
    auVar5 = pkg_agvcontrol_SendRobotTaskListStatusReq(in_RAX, unaff_RBX, *(undefined8 *)(iVar2 + 0xd8), *(undefined8 *)(iVar2 + 0xe0), 1);
    uVar4 = auVar5._0_8_;
    if (auVar5._8_8_ != 0) {
        return auVar5._8_8_;
    }
    if (*(int32_t *)0x355db50 != 0) {
        uVar4 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar4;
        extraout_R11[1] = *puVar1;
    }
    *puVar1 = uVar4;
    return 0;
}

/* CAS-Backend/biz/controller.CancelNavigationHandler | VA 0xe8c8c0 | task_controller.go:870
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ta *CAS-Backend/biz/controller.TaskRequest, err error, ~r0.data *uint8, ~r0.itab uintptr */
// WARNING: Removing unreachable block (ram,0x00e8ca22)

void __stdcall biz_controller_CancelNavigationHandler(int64_t arg_8h, int64_t arg_48h, int64_t arg_88h, int64_t arg_b8h)
{
    int64_t in_RAX;
    undefined8 *puVar1;
    undefined8 uVar2;
    uint64_t uVar3;
    int64_t iVar4;
    undefined8 extraout_RCX;
    undefined8 extraout_RCX_00;
    uint64_t uVar5;
    undefined8 *extraout_R11;
    int64_t *extraout_R11_00;
    undefined8 *extraout_R11_01;
    int64_t unaff_R14;
    undefined auVar6 [16];
    undefined auVar7 [16];
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
    
    while (&var_50h <= *(int64_t **)(unaff_R14 + 0x10)) {
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x113c760);
    uVar2 = *(undefined8 *)0xfb77e8;
    uVar3 = 0;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar3 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar5 = uVar3 & **(uint64_t **)0xfbb470;
            if ((*(uint64_t **)0xfbb470)[uVar5 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar3 = (*(uint64_t **)0xfbb470)[uVar5 * 2 + 2];
                goto code_r0x00e8c925;
            }
            uVar3 = uVar3 + 1;
        } while ((*(uint64_t **)0xfbb470)[uVar5 * 2 + 1] != 0);
        uVar3 = runtime_typeAssert(0xfbb470);
    }
code_r0x00e8c925:
    auVar6 = (**(code **)(uVar3 + 0x18))(uVar2, *(undefined8 *)(in_RAX + 0x20), 0x10266a0, var_10h);
    if (auVar6._0_8_ != 0) {
        var_40h = 0x1042920;
        var_38h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_40h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, auVar6._0_8_, auVar6._8_8_);
        return;
    }
    var_48h = runtime_convTstring(*(undefined8 *)(var_10h + 0xd8), *(undefined8 *)(var_10h + 0xe0));
    var_50h = 0x1042920;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_50h, 1, 1);
    iVar4 = *(int64_t *)0x3516458;
    uVar2 = *(undefined8 *)0x3516450;
    if ((*(int64_t *)0x3516458 == 0) &&
       (iVar4 = *(int64_t *)0xfb5e08, uVar2 = *(undefined8 *)0xfb5e00, *(int64_t *)0xfb5e08 == 0)) {
        iVar4 = 9;
        uVar2 = 0x1175303;
    }
    auVar6 = pkg_agvcontrol_DoWithConn(uVar2, iVar4, 0x4b06, 0x2cd7790);
    iVar4 = auVar6._0_8_;
    if (iVar4 != 0) {
        var_60h = *(int64_t *)(iVar4 + 8);
        var_58h = auVar6._8_8_;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1183bf7 /* "取消导航失败: %v\n" */, 0x17, &var_60h, 1, 1);
        var_18h = runtime_makemap_small();
        auVar7 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
        puVar1 = auVar7._0_8_;
        *puVar1 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar7._8_8_, puVar1[1]);
            *extraout_R11 = extraout_RCX;
        }
        puVar1[1] = 0xf7a720;
        (**(code **)(iVar4 + 0x18))(auVar6._8_8_);
        var_20h = runtime_convTstring();
        puVar1 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172cf1 /* "message" */, 7);
        *puVar1 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar1 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_00 = var_20h;
            extraout_R11_00[1] = puVar1[1];
        }
        puVar1[1] = var_20h;
        var_30h = 0x10a4880;
        var_28h = var_18h;
        uVar2 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
        return;
    }
    var_70h = 0x1042920;
    var_68h = 0x2e68e60 /* "取消导航指令已下发，等待状态轮询确认" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_70h, 1, 1);
    var_18h = runtime_makemap_small();
    auVar6 = runtime_mapassign_faststr(0x10a4880, var_18h, 0x1172d0d /* "success" */, 7);
    puVar1 = auVar6._0_8_;
    *puVar1 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        puVar1 = (undefined8 *)runtime_gcWriteBarrier1(puVar1, auVar6._8_8_, puVar1[1]);
        *extraout_R11_01 = extraout_RCX_00;
    }
    puVar1[1] = 0xf7a728;
    var_30h = 0x10a4880;
    var_28h = var_18h;
    uVar2 = runtime_convT(0x10cbee0, &var_30h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar2);
    return;
}

/* CAS-Backend/biz/controller.CancelNavigationHandler.func1 | VA 0xe91600 | task_controller.go:880
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

void __stdcall biz_controller_CancelNavigationHandler_func1(int64_t arg_8h, int64_t arg_10h)
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

/* CAS-Backend/biz/controller.ExcTaskHandler | VA 0xe8cd60 | task_controller.go:897
   DWARF parameters and results: c *github.com/gin-gonic/gin.Context
   DWARF locals: &ta *CAS-Backend/biz/controller.TaskRequest, suc_slt bool, runHeight float64, ip string, taskids []string, err error, timestamp string, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, weizhiresponse *CAS-Backend/pkg/agvcontrol.VechileLocation, build CAS-Backend/pkg/diapdu.ExcNavBuildResult, ~r0.data *uint8, ~r0.ptr *uint8, ~r0.itab uintptr, ~r0.len int, success bool, ok bool, dbTask CAS-Backend/biz/dao.Task */
// WARNING: Variable defined which should be unmapped: var_8h
// WARNING: Removing unreachable block (ram,0x00e8d7f5)
// WARNING: [rz-ghidra] Removing arg arg_330h because it doesn't fit into ProtoModel
// WARNING: [rz-ghidra] Detected overlap for variable var_391h
// WARNING: [rz-ghidra] Removing arg arg_280h because it doesn't fit into ProtoModel

void __stdcall biz_controller_ExcTaskHandler(int64_t arg_8h)
{
    double dVar1;
    undefined auVar2 [16];
    int64_t iVar3;
    char cVar4;
    int64_t in_RAX;
    undefined8 *puVar5;
    undefined8 uVar6;
    int64_t extraout_RAX;
    uint64_t uVar7;
    undefined8 extraout_RCX;
    undefined8 *extraout_RCX_00;
    int64_t extraout_RCX_01;
    int64_t extraout_RCX_02;
    undefined8 extraout_RCX_03;
    undefined8 extraout_RCX_04;
    undefined8 extraout_RCX_05;
    int64_t iVar8;
    int64_t extraout_RBX;
    int64_t extraout_RSI;
    int64_t extraout_RDI;
    int64_t extraout_R8;
    char extraout_R9B;
    uint64_t uVar9;
    undefined8 *extraout_R11;
    int64_t *extraout_R11_00;
    int64_t *extraout_R11_01;
    undefined8 *extraout_R11_02;
    int64_t *extraout_R11_03;
    undefined8 *extraout_R11_04;
    undefined8 *extraout_R11_05;
    int64_t *extraout_R11_06;
    int64_t *extraout_R11_07;
    undefined8 *extraout_R11_08;
    int64_t *extraout_R11_09;
    int64_t *extraout_R11_10;
    undefined8 *extraout_R11_11;
    int64_t *extraout_R11_12;
    undefined8 *extraout_R11_13;
    undefined8 *extraout_R11_14;
    int64_t *extraout_R11_15;
    undefined8 *extraout_R11_16;
    undefined8 *extraout_R11_17;
    undefined8 *extraout_R11_18;
    int64_t unaff_R14;
    undefined4 uVar10;
    undefined auVar11 [16];
    int64_t var_4a0h;
    int64_t var_488h;
    undefined auStack_410 [127];
    char var_391h;
    int64_t var_390h;
    int64_t var_388h;
    int64_t var_380h;
    int64_t var_378h;
    int64_t var_370h;
    int64_t var_368h;
    int64_t var_360h;
    int64_t var_358h;
    int64_t var_350h;
    int64_t var_348h;
    int64_t var_340h;
    int64_t var_338h;
    int64_t var_330h;
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
    int64_t var_30h;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    int64_t var_8h;
    
    while (auStack_410 <= *(undefined **)(unaff_R14 + 0x10)) {
        var_8h = 0xe8e151;
        runtime_morestack_noctxt_abi0();
    }
    var_10h = runtime_newobject(0x113c760);
    uVar7 = 0;
    iVar8 = *(int64_t *)0xfb77e8;
    if (*(int64_t *)0xfb77e0 != 0) {
        uVar7 = (uint64_t)*(uint32_t *)(*(int64_t *)0xfb77e0 + 0x10);
        do {
            uVar9 = uVar7 & **(uint64_t **)0xfbb490;
            if ((*(uint64_t **)0xfbb490)[uVar9 * 2 + 1] == *(uint64_t *)(*(int64_t *)0xfb77e0 + 8)) {
                uVar7 = (*(uint64_t **)0xfbb490)[uVar9 * 2 + 2];
                goto code_r0x00e8cdc5;
            }
            uVar7 = uVar7 + 1;
        } while ((*(uint64_t **)0xfbb490)[uVar9 * 2 + 1] != 0);
        var_220h = *(int64_t *)0xfb77e8;
        uVar7 = runtime_typeAssert(0xfbb490);
        iVar8 = var_220h;
    }
code_r0x00e8cdc5:
    auVar11 = (**(code **)(uVar7 + 0x18))(iVar8, *(undefined8 *)(in_RAX + 0x20), 0x10266a0, var_10h);
    var_340h = auVar11._8_8_;
    var_388h = auVar11._0_8_;
    if (var_388h != 0) {
        var_158h = 0x1042920;
        var_150h = 0x2e687d0 /* "注册解析错误" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_158h, 1, 1);
        gin_gonic_gin___Context__AbortWithError(in_RAX, 400, var_388h, var_340h);
        return;
    }
    var_160h = runtime_convTstring(*(undefined8 *)(var_10h + 0xc0), *(undefined8 *)(var_10h + 200));
    var_168h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x11817b9, 0x15, &var_168h, 1, 1);
    var_390h = *(int64_t *)0x3516458;
    var_348h = *(int64_t *)0x3516450;
    if ((*(int64_t *)0x3516458 == 0) &&
       (var_390h = *(int64_t *)0xfb5e08, var_348h = *(int64_t *)0xfb5e00, *(int64_t *)0xfb5e08 == 0)) {
        var_390h = 9;
        var_348h = 0x1175303;
    }
    var_170h = runtime_convTstring(var_348h, var_390h);
    var_178h = 0x1042920;
    fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x1179b93, 0xe, &var_178h, 1, 1);
    var_338h = 0;
    var_20h = 0xe8e1e0;
    var_18h = (int64_t)&var_338h;
    auVar11 = pkg_agvcontrol_DoWithConn(var_348h, var_390h, 0x4b04, &var_20h);
    var_318h = auVar11._8_8_;
    var_350h = auVar11._0_8_;
    if (var_350h != 0) {
        cVar4 = errors_Is(var_350h, var_318h, *(undefined8 *)0xfb6b50, *(undefined8 *)0xfb6b58);
        if (cVar4 == '\0') {
            if (var_350h == 0) {
                var_188h = 0;
            } else {
                var_188h = *(int64_t *)(var_350h + 8);
            }
            var_180h = var_318h;
            fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x118fee9 /* "查询控制权或位置失败: %v" */, 0x22, &var_188h, 1, 1);
            var_210h = runtime_makemap_small();
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d0d /* "success" */, 7);
            *puVar5 = 0x1042d20;
            if (*(int32_t *)0x355db50 != 0) {
                uVar6 = puVar5[1];
                puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11 = uVar6;
            }
            puVar5[1] = 0xf7a720;
            var_218h = runtime_convTslice(0x355d2a0, 0, 0);
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d1b /* "taskids" */, 7);
            *puVar5 = 0x1038980;
            if (*(int32_t *)0x355db50 != 0) {
                puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_00 = var_218h;
                extraout_R11_00[1] = puVar5[1];
            }
            puVar5[1] = var_218h;
            (**(code **)(var_350h + 0x18))(var_318h);
            var_218h = runtime_convTstring();
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172cf1 /* "message" */, 7);
            *puVar5 = 0x1042920;
            if (*(int32_t *)0x355db50 != 0) {
                puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_01 = var_218h;
                extraout_R11_01[1] = puVar5[1];
            }
            puVar5[1] = var_218h;
            var_30h = 0x10a4880;
            var_28h = var_210h;
            uVar6 = runtime_convT(0x10cbee0, &var_30h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
            return;
        }
        var_210h = runtime_makemap_small();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d0d /* "success" */, 7);
        *puVar5 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar6 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_02 = uVar6;
        }
        puVar5[1] = 0xf7a720;
        var_218h = runtime_convTslice(0x355d2a0, 0, 0);
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d1b /* "taskids" */, 7);
        *puVar5 = 0x1038980;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_03 = var_218h;
            extraout_R11_03[1] = puVar5[1];
        }
        puVar5[1] = var_218h;
        auVar11 = runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172cf1 /* "message" */, 7);
        puVar5 = auVar11._0_8_;
        *puVar5 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar11._8_8_, puVar5[1]);
            *extraout_R11_04 = extraout_RCX;
        }
        puVar5[1] = 0x2e68e70 /* "没有控制权" */;
        var_30h = 0x10a4880;
        var_28h = var_210h;
        uVar6 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
        return;
    }
    var_190h = runtime_convTstring(*(undefined8 *)(var_338h + 0x48), *(undefined8 *)(var_338h + 0x50));
    var_198h = 0x1042920;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_198h, 1, 1);
    time_Now();
    auVar11 = time_Time_Format();
    dVar1 = *(double *)(var_10h + 0xf8);
    uVar10 = SUB84(dVar1, 0);
    if (((dVar1 == 0.0) && (!NAN(dVar1))) && (0 < *(int64_t *)var_10h)) {
        var_380h = auVar11._8_8_;
        var_358h = (int64_t)dVar1;
        var_330h = auVar11._0_8_;
        runtime_duffzero_offset_280();
        biz_dao_Select1_task(*extraout_RCX_00);
        runtime_duffcopy_offset_686();
        cVar4 = runtime_duffcopy_offset_686();
        auVar11._8_8_ = var_380h;
        auVar11._0_8_ = var_330h;
        auVar2._8_8_ = var_380h;
        auVar2._0_8_ = var_330h;
        uVar10 = (undefined4)var_228h;
        if (cVar4 == '\0') {
            uVar10 = (int32_t)var_358h;
            auVar11 = auVar2;
        }
    }
    var_d0h = runtime_duffzero_offset_336(uVar10, auVar11._0_8_, auVar11._8_8_, var_10h, &var_148h);
    var_120h = *(int64_t *)(var_338h + 0x48);
    var_118h = *(int64_t *)(var_338h + 0x50);
    var_110h = *(int64_t *)(extraout_RCX_01 + 0x90);
    var_108h = *(int64_t *)(extraout_RCX_01 + 0x98);
    var_100h = *(int64_t *)(extraout_RCX_01 + 0xa0);
    var_f8h = *(int64_t *)(extraout_RCX_01 + 0xa8);
    var_f0h = *(int64_t *)(extraout_RCX_01 + 0xb0);
    var_e8h = *(int64_t *)(extraout_RCX_01 + 0xb8);
    var_e0h = *(int64_t *)(extraout_RCX_01 + 0xc0);
    var_d8h = *(int64_t *)(extraout_RCX_01 + 200);
    runtime_duffcopy_offset_826();
    pkg_diapdu_BuildExcNavigationTasks();
    iVar8 = var_f0h;
    var_f0h = CONCAT71(var_f0h._1_7_, extraout_R9B);
    iVar3 = var_f0h;
    var_f8h._0_4_ = (undefined4)extraout_R8;
    var_f8h._4_4_ = (undefined4)((uint64_t)extraout_R8 >> 0x20);
    var_f0h._4_4_ = SUB84(iVar8, 4);
    var_2e8h._0_4_ = (undefined4)var_f8h;
    var_2e8h._4_4_ = var_f8h._4_4_;
    var_2e0h._0_4_ = (undefined4)var_f0h;
    var_2e0h._4_4_ = var_f0h._4_4_;
    var_310h = extraout_RAX;
    var_308h = extraout_RBX;
    var_300h = extraout_RCX_02;
    var_2f8h = extraout_RDI;
    var_2f0h = extraout_RSI;
    var_120h = extraout_RAX;
    var_118h = extraout_RBX;
    var_110h = extraout_RCX_02;
    var_108h = extraout_RDI;
    var_100h = extraout_RSI;
    var_f8h = extraout_R8;
    var_f0h = iVar3;
    if (extraout_R9B == '\0') {
        var_210h = runtime_makemap_small();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d0d /* "success" */, 7);
        *puVar5 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar6 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_17 = uVar6;
        }
        puVar5[1] = 0xf7a720;
        auVar11 = runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172cf1 /* "message" */, 7);
        puVar5 = auVar11._0_8_;
        *puVar5 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar11._8_8_, puVar5[1]);
            *extraout_R11_18 = extraout_RCX_05;
        }
        puVar5[1] = 0x2e68e80 /* "路径点不足或任务链构建失败" */;
        var_30h = 0x10a4880;
        var_28h = var_210h;
        uVar6 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
        return;
    }
    var_1a8h = 0x1042920;
    var_1a0h = 0x2e68e90 /* "路径添加成功" */;
    var_378h = extraout_RBX;
    var_370h = extraout_RCX_02;
    var_368h = extraout_RSI;
    var_360h = extraout_R8;
    var_328h = extraout_RAX;
    var_320h = extraout_RDI;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_1a8h, 1, 1);
    var_1b0h = runtime_convTslice(var_328h, var_378h, var_370h);
    var_1b8h = 0x10350a0;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_1b8h, 1, 1);
    var_1c0h = runtime_convTslice(var_320h, var_368h, var_360h);
    var_1c8h = 0x1038980;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_1c8h, 1, 1);
    var_391h = '\0';
    var_148h = 0xe8e160;
    var_138h = var_378h;
    var_130h = var_370h;
    var_140h = var_328h;
    var_128h = (int64_t)&var_391h;
    auVar11 = pkg_agvcontrol_DoWithConn(var_348h, var_390h, 0x4b06, &var_148h);
    var_318h = auVar11._8_8_;
    var_350h = auVar11._0_8_;
    if (var_350h != 0) {
        var_1d8h = *(int64_t *)(var_350h + 8);
        var_1d0h = var_318h;
        fmt_Fprintf(0x2e6bae0, *(undefined8 *)0x3512080, 0x117df10 /* "执行错误：%v\n" */, 0x12, &var_1d8h, 1, 1);
        var_210h = runtime_makemap_small();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d0d /* "success" */, 7);
        *puVar5 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar6 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_05 = uVar6;
        }
        puVar5[1] = 0xf7a720;
        var_218h = runtime_convTslice(var_320h, var_368h, var_360h);
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d1b /* "taskids" */, 7);
        *puVar5 = 0x1038980;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_06 = var_218h;
            extraout_R11_06[1] = puVar5[1];
        }
        puVar5[1] = var_218h;
        (**(code **)(var_350h + 0x18))(var_318h);
        var_218h = runtime_convTstring();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172cf1 /* "message" */, 7);
        *puVar5 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_07 = var_218h;
            extraout_R11_07[1] = puVar5[1];
        }
        puVar5[1] = var_218h;
        var_30h = 0x10a4880;
        var_28h = var_210h;
        uVar6 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
        return;
    }
    if (var_391h != '\0') {
        *(undefined8 *)0x355d3f0 = 2;
        cVar4 = biz_dao_UpdateTaskStatusByID(*(undefined8 *)var_10h, 2);
        if (cVar4 != '\0') {
            var_208h = 0x1042920;
            var_200h = 0x2e68ee0 /* "执行成功" */;
            fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_208h, 1, 1);
            var_210h = runtime_makemap_small();
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d0d /* "success" */, 7);
            *puVar5 = 0x1042d20;
            if (*(int32_t *)0x355db50 != 0) {
                uVar6 = puVar5[1];
                puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
                *extraout_R11_08 = uVar6;
            }
            puVar5[1] = 0xf7a728;
            var_218h = runtime_convTslice(var_320h, var_368h, var_360h);
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d1b /* "taskids" */, 7);
            *puVar5 = 0x1038980;
            if (*(int32_t *)0x355db50 != 0) {
                puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_09 = var_218h;
                extraout_R11_09[1] = puVar5[1];
            }
            puVar5[1] = var_218h;
            var_218h = runtime_convT64(*(undefined8 *)var_10h);
            puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x116859a /* "id" */, 2);
            *puVar5 = 0x1042b60;
            if (*(int32_t *)0x355db50 != 0) {
                puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
                *extraout_R11_10 = var_218h;
                extraout_R11_10[1] = puVar5[1];
            }
            puVar5[1] = var_218h;
            var_30h = 0x10a4880;
            var_28h = var_210h;
            uVar6 = runtime_convT(0x10cbee0, &var_30h);
            gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
            return;
        }
        var_1f8h = 0x1042920;
        var_1f0h = 0x2e68ec0 /* "更新状态失败" */;
        fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_1f8h, 1, 1);
        var_210h = runtime_makemap_small();
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d0d /* "success" */, 7);
        *puVar5 = 0x1042d20;
        if (*(int32_t *)0x355db50 != 0) {
            uVar6 = puVar5[1];
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
            *extraout_R11_11 = uVar6;
        }
        puVar5[1] = 0xf7a720;
        var_218h = runtime_convTslice(var_320h, var_368h, var_360h);
        puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d1b /* "taskids" */, 7);
        *puVar5 = 0x1038980;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
            *extraout_R11_12 = var_218h;
            extraout_R11_12[1] = puVar5[1];
        }
        puVar5[1] = var_218h;
        auVar11 = runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172cf1 /* "message" */, 7);
        puVar5 = auVar11._0_8_;
        *puVar5 = 0x1042920;
        if (*(int32_t *)0x355db50 != 0) {
            puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar11._8_8_, puVar5[1]);
            *extraout_R11_13 = extraout_RCX_03;
        }
        puVar5[1] = 0x2e68ed0 /* "更新任务状态失败" */;
        var_30h = 0x10a4880;
        var_28h = var_210h;
        uVar6 = runtime_convT(0x10cbee0, &var_30h);
        gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
        return;
    }
    var_1e8h = 0x1042920;
    var_1e0h = 0x2e68ea0 /* "执行失败：导航接口返回失败" */;
    fmt_Fprintln(0x2e6bae0, *(undefined8 *)0x3512080, &var_1e8h, 1, 1);
    var_210h = runtime_makemap_small();
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d0d /* "success" */, 7);
    *puVar5 = 0x1042d20;
    if (*(int32_t *)0x355db50 != 0) {
        uVar6 = puVar5[1];
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1();
        *extraout_R11_14 = uVar6;
    }
    puVar5[1] = 0xf7a720;
    var_218h = runtime_convTslice(var_320h, var_368h, var_360h);
    puVar5 = (undefined8 *)runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172d1b /* "taskids" */, 7);
    *puVar5 = 0x1038980;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier2();
        *extraout_R11_15 = var_218h;
        extraout_R11_15[1] = puVar5[1];
    }
    puVar5[1] = var_218h;
    auVar11 = runtime_mapassign_faststr(0x10a4880, var_210h, 0x1172cf1 /* "message" */, 7);
    puVar5 = auVar11._0_8_;
    *puVar5 = 0x1042920;
    if (*(int32_t *)0x355db50 != 0) {
        puVar5 = (undefined8 *)runtime_gcWriteBarrier1(puVar5, auVar11._8_8_, puVar5[1]);
        *extraout_R11_16 = extraout_RCX_04;
    }
    puVar5[1] = 0x2e68eb0 /* "导航下发失败" */;
    var_30h = 0x10a4880;
    var_28h = var_210h;
    uVar6 = runtime_convT(0x10cbee0, &var_30h);
    gin_gonic_gin___Context__Render(in_RAX, 200, 0x2e6f230, uVar6);
    return;
}

/* CAS-Backend/biz/controller.ExcTaskHandler.func1 | VA 0xe8e1e0 | task_controller.go:927
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: res *CAS-Backend/pkg/agvcontrol.VechileLocation, &weizhiresponse **CAS-Backend/pkg/agvcontrol.VechileLocation, owner *CAS-Backend/pkg/agvcontrol.ControlOwnerResponse, lock int, e error */
int64_t __stdcall
biz_controller_ExcTaskHandler_func1
          (undefined8 placeholder_0, undefined8 placeholder_1, int64_t arg3, int64_t arg_8h, int64_t arg_10h,
          int64_t arg_30h, int64_t arg_48h)
{
    undefined8 *puVar1;
    char cVar2;
    int64_t in_RAX;
    int64_t iVar3;
    undefined8 uVar4;
    int64_t extraout_RDX;
    undefined8 unaff_RBX;
    undefined8 *extraout_R11;
    int64_t unaff_R14;
    undefined auVar5 [16];
    int64_t unaff_retaddr;
    int64_t in_stack_ffffffffffffffb0;
    int64_t in_stack_ffffffffffffffb8;
    int64_t in_stack_ffffffffffffffc0;
    int64_t in_stack_ffffffffffffffc8;
    int64_t in_stack_ffffffffffffffd0;
    int64_t var_28h;
    int64_t var_20h;
    int64_t var_18h;
    int64_t var_10h;
    
    while (&stack0x00000000 <= *(undefined **)(unaff_R14 + 0x10)) {
        runtime_morestack_abi0(unaff_retaddr, in_RAX);
        arg3 = extraout_RDX;
    }
    puVar1 = *(undefined8 **)(arg3 + 8);
    auVar5 = pkg_agvcontrol_QueryControlOwner();
    iVar3 = auVar5._0_8_;
    if (auVar5._8_8_ != 0) {
        return auVar5._8_8_;
    }
    pkg_agvcontrol_ParseCurrentLock(*(undefined8 *)(iVar3 + 0x28), *(undefined8 *)(iVar3 + 0x30));
    runtime_convT64(in_stack_ffffffffffffffb0);
    uVar4 = *(undefined8 *)0x3512080;
    fmt_Fprintln(in_stack_ffffffffffffffb0, in_stack_ffffffffffffffb8, in_stack_ffffffffffffffc0, 
                 in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0);
    cVar2 = pkg_agvcontrol_ControlOwnerAllowsManualDispatch(iVar3, uVar4);
    if (cVar2 == '\0') {
        return *(int64_t *)0xfb6b50;
    }
    auVar5 = pkg_agvcontrol_queryAMRLocation(in_RAX, unaff_RBX, 0);
    uVar4 = auVar5._0_8_;
    if (auVar5._8_8_ != 0) {
        return auVar5._8_8_;
    }
    if (*(int32_t *)0x355db50 != 0) {
        uVar4 = runtime_gcWriteBarrier2();
        *extraout_R11 = uVar4;
        extraout_R11[1] = *puVar1;
    }
    *puVar1 = uVar4;
    return 0;
}

/* CAS-Backend/biz/controller.ExcTaskHandler.func2 | VA 0xe8e160 | task_controller.go:1028
   DWARF parameters and results: conn net.Conn, ~r0 error
   DWARF locals: &success *bool, ok bool, tasks []CAS-Backend/pkg/agvcontrol.ForkliftTask, e error */
// WARNING: [rz-ghidra] Detected overlap for variable var_10eh
// WARNING: [rz-ghidra] Detected overlap for variable var_f8h
// WARNING: [rz-ghidra] Detected overlap for variable var_10ch
// WARNING: [rz-ghidra] Detected overlap for variable var_108h
// WARNING: [rz-ghidra] Detected overlap for variable var_d8h

undefined8 __stdcall
biz_controller_ExcTaskHandler_func2
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
    puVar1 = *(undefined **)(arg3 + 0x20);
    uVar2 = pkg_agvcontrol_SendForkliftSpecifiedPathNavigation(in_stack_ffffffffffffffc8, in_stack_ffffffffffffffd0, in_stack_ffffffffffffffd8, 
                         in_stack_ffffffffffffffe0, in_stack_ffffffffffffffe8, in_stack_00000030, in_stack_000000d0, 
                         in_stack_000000e0, in_stack_00000110);
    *puVar1 = uVar2;
    return unaff_RBX;
}
